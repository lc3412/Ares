; ModuleID = './[inter]printercache.o.i'
source_filename = "./[inter]printercache.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stream = type { i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"%s/.rdesktop/rdpdr/%s/AutoPrinterCacheData\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"printercache_process(), unhandled packet type %d\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"%s/.rdesktop/rdpdr/%s\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"printercache_rename_blob(), printer_path=%s, new_printer_path=%s\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"printercache_rename_blob(), rename() failed: %s\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"printercache_save_blob(), open() failed: %s\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"printercache_save_blob(), write() failed: %s\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"%s/.rdesktop\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"printercache_mkdir(), mkdir() failed: %s\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"/rdpdr\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: nounwind uwtable
define i32 @printercache_load_blob(i8*, i8**) #0 !dbg !36 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stat, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !43, metadata !44), !dbg !45
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !46, metadata !44), !dbg !47
  call void @llvm.dbg.declare(metadata i8** %6, metadata !48, metadata !44), !dbg !49
  call void @llvm.dbg.declare(metadata i8** %7, metadata !50, metadata !44), !dbg !51
  call void @llvm.dbg.declare(metadata %struct.stat* %8, metadata !52, metadata !44), !dbg !93
  call void @llvm.dbg.declare(metadata i32* %9, metadata !94, metadata !44), !dbg !95
  call void @llvm.dbg.declare(metadata i32* %10, metadata !96, metadata !44), !dbg !97
  %11 = load i8*, i8** %4, align 8, !dbg !98
  %12 = icmp eq i8* %11, null, !dbg !100
  br i1 %12, label %13, label %14, !dbg !101

; <label>:13:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !102
  br label %64, !dbg !102

; <label>:14:                                     ; preds = %2
  %15 = load i8**, i8*** %5, align 8, !dbg !103
  store i8* null, i8** %15, align 8, !dbg !104
  %16 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #7, !dbg !105
  store i8* %16, i8** %6, align 8, !dbg !106
  %17 = load i8*, i8** %6, align 8, !dbg !107
  %18 = icmp eq i8* %17, null, !dbg !109
  br i1 %18, label %19, label %20, !dbg !110

; <label>:19:                                     ; preds = %14
  store i32 0, i32* %3, align 4, !dbg !111
  br label %64, !dbg !111

; <label>:20:                                     ; preds = %14
  %21 = load i8*, i8** %6, align 8, !dbg !112
  %22 = call i64 @strlen(i8* %21) #8, !dbg !113
  %23 = add i64 %22, 18, !dbg !114
  %24 = load i8*, i8** %4, align 8, !dbg !115
  %25 = call i64 @strlen(i8* %24) #8, !dbg !116
  %26 = add i64 %23, %25, !dbg !118
  %27 = add i64 %26, 22, !dbg !119
  %28 = add i64 %27, 1, !dbg !120
  %29 = trunc i64 %28 to i32, !dbg !113
  %30 = call i8* @xmalloc(i32 %29), !dbg !121
  store i8* %30, i8** %7, align 8, !dbg !123
  %31 = load i8*, i8** %7, align 8, !dbg !124
  %32 = load i8*, i8** %6, align 8, !dbg !125
  %33 = load i8*, i8** %4, align 8, !dbg !126
  %34 = call i32 (i8*, i8*, ...) @sprintf(i8* %31, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i8* %32, i8* %33) #7, !dbg !127
  %35 = load i8*, i8** %7, align 8, !dbg !128
  %36 = call i32 (i8*, i32, ...) @open(i8* %35, i32 0), !dbg !129
  store i32 %36, i32* %9, align 4, !dbg !130
  %37 = load i32, i32* %9, align 4, !dbg !131
  %38 = icmp eq i32 %37, -1, !dbg !133
  br i1 %38, label %39, label %41, !dbg !134

; <label>:39:                                     ; preds = %20
  %40 = load i8*, i8** %7, align 8, !dbg !135
  call void @xfree(i8* %40), !dbg !137
  store i32 0, i32* %3, align 4, !dbg !138
  br label %64, !dbg !138

; <label>:41:                                     ; preds = %20
  %42 = load i32, i32* %9, align 4, !dbg !139
  %43 = call i32 @fstat(i32 %42, %struct.stat* %8) #7, !dbg !141
  %44 = icmp ne i32 %43, 0, !dbg !141
  br i1 %44, label %45, label %47, !dbg !142

; <label>:45:                                     ; preds = %41
  %46 = load i8*, i8** %7, align 8, !dbg !143
  call void @xfree(i8* %46), !dbg !145
  store i32 0, i32* %3, align 4, !dbg !146
  br label %64, !dbg !146

; <label>:47:                                     ; preds = %41
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 8, !dbg !147
  %49 = load i64, i64* %48, align 8, !dbg !147
  %50 = trunc i64 %49 to i32, !dbg !148
  %51 = call i8* @xmalloc(i32 %50), !dbg !149
  %52 = load i8**, i8*** %5, align 8, !dbg !150
  store i8* %51, i8** %52, align 8, !dbg !151
  %53 = load i32, i32* %9, align 4, !dbg !152
  %54 = load i8**, i8*** %5, align 8, !dbg !153
  %55 = load i8*, i8** %54, align 8, !dbg !154
  %56 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 8, !dbg !155
  %57 = load i64, i64* %56, align 8, !dbg !155
  %58 = call i64 @read(i32 %53, i8* %55, i64 %57), !dbg !156
  %59 = trunc i64 %58 to i32, !dbg !156
  store i32 %59, i32* %10, align 4, !dbg !157
  %60 = load i32, i32* %9, align 4, !dbg !158
  %61 = call i32 @close(i32 %60), !dbg !159
  %62 = load i8*, i8** %7, align 8, !dbg !160
  call void @xfree(i8* %62), !dbg !161
  %63 = load i32, i32* %10, align 4, !dbg !162
  store i32 %63, i32* %3, align 4, !dbg !163
  br label %64, !dbg !163

; <label>:64:                                     ; preds = %47, %45, %39, %19, %13
  %65 = load i32, i32* %3, align 4, !dbg !164
  ret i32 %65, !dbg !164
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @getenv(i8*) #2

declare i8* @xmalloc(i32) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare i32 @open(i8*, i32, ...) #3

declare void @xfree(i8*) #3

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #2

declare i64 @read(i32, i8*, i64) #3

declare i32 @close(i32) #3

; Function Attrs: nounwind uwtable
define void @printercache_process(%struct.stream*) #0 !dbg !165 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [9 x i8], align 1
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !183, metadata !44), !dbg !184
  call void @llvm.dbg.declare(metadata i32* %3, metadata !185, metadata !44), !dbg !186
  call void @llvm.dbg.declare(metadata i32* %4, metadata !187, metadata !44), !dbg !188
  call void @llvm.dbg.declare(metadata i32* %5, metadata !189, metadata !44), !dbg !190
  call void @llvm.dbg.declare(metadata i32* %6, metadata !191, metadata !44), !dbg !192
  call void @llvm.dbg.declare(metadata i32* %7, metadata !193, metadata !44), !dbg !194
  call void @llvm.dbg.declare(metadata [9 x i8]* %8, metadata !195, metadata !44), !dbg !199
  call void @llvm.dbg.declare(metadata i8** %9, metadata !200, metadata !44), !dbg !201
  call void @llvm.dbg.declare(metadata i8** %10, metadata !202, metadata !44), !dbg !203
  store i8* null, i8** %10, align 8, !dbg !204
  store i8* null, i8** %9, align 8, !dbg !205
  %11 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !206
  %12 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 0, !dbg !208
  %13 = load i8*, i8** %12, align 8, !dbg !208
  %14 = bitcast i8* %13 to i32*, !dbg !209
  %15 = load i32, i32* %14, align 4, !dbg !209
  store i32 %15, i32* %3, align 4, !dbg !210
  %16 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !211
  %17 = getelementptr inbounds %struct.stream, %struct.stream* %16, i32 0, i32 0, !dbg !212
  %18 = load i8*, i8** %17, align 8, !dbg !213
  %19 = getelementptr inbounds i8, i8* %18, i64 4, !dbg !213
  store i8* %19, i8** %17, align 8, !dbg !213
  %20 = load i32, i32* %3, align 4, !dbg !214
  switch i32 %20, label %214 [
    i32 4, label %21
    i32 3, label %58
    i32 2, label %78
    i32 1, label %113
  ], !dbg !215

; <label>:21:                                     ; preds = %1
  %22 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !216
  %23 = getelementptr inbounds %struct.stream, %struct.stream* %22, i32 0, i32 0, !dbg !218
  %24 = load i8*, i8** %23, align 8, !dbg !219
  %25 = getelementptr inbounds i8, i8* %24, i32 1, !dbg !219
  store i8* %25, i8** %23, align 8, !dbg !219
  %26 = load i8, i8* %24, align 1, !dbg !220
  %27 = zext i8 %26 to i32, !dbg !220
  store i32 %27, i32* %4, align 4, !dbg !221
  %28 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !222
  %29 = getelementptr inbounds %struct.stream, %struct.stream* %28, i32 0, i32 0, !dbg !223
  %30 = load i8*, i8** %29, align 8, !dbg !224
  %31 = getelementptr inbounds i8, i8* %30, i64 3, !dbg !224
  store i8* %31, i8** %29, align 8, !dbg !224
  %32 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !225
  %33 = getelementptr inbounds %struct.stream, %struct.stream* %32, i32 0, i32 0, !dbg !226
  %34 = load i8*, i8** %33, align 8, !dbg !227
  %35 = getelementptr inbounds i8, i8* %34, i32 1, !dbg !227
  store i8* %35, i8** %33, align 8, !dbg !227
  %36 = load i8, i8* %34, align 1, !dbg !228
  %37 = zext i8 %36 to i32, !dbg !228
  store i32 %37, i32* %5, align 4, !dbg !229
  %38 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !230
  %39 = getelementptr inbounds %struct.stream, %struct.stream* %38, i32 0, i32 0, !dbg !231
  %40 = load i8*, i8** %39, align 8, !dbg !232
  %41 = getelementptr inbounds i8, i8* %40, i64 3, !dbg !232
  store i8* %41, i8** %39, align 8, !dbg !232
  %42 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !233
  %43 = load i32, i32* %4, align 4, !dbg !234
  call void @rdp_in_unistr(%struct.stream* %42, i32 %43, i8** %9, i32* %4), !dbg !235
  %44 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !236
  %45 = load i32, i32* %5, align 4, !dbg !237
  call void @rdp_in_unistr(%struct.stream* %44, i32 %45, i8** %10, i32* %5), !dbg !238
  %46 = load i8*, i8** %9, align 8, !dbg !239
  %47 = icmp ne i8* %46, null, !dbg !241
  br i1 %47, label %48, label %55, !dbg !242

; <label>:48:                                     ; preds = %21
  %49 = load i8*, i8** %10, align 8, !dbg !243
  %50 = icmp ne i8* %49, null, !dbg !245
  br i1 %50, label %51, label %55, !dbg !246

; <label>:51:                                     ; preds = %48
  %52 = load i8*, i8** %9, align 8, !dbg !247
  %53 = load i8*, i8** %10, align 8, !dbg !248
  %54 = call i32 @printercache_rename_blob(i8* %52, i8* %53), !dbg !249
  br label %55, !dbg !249

; <label>:55:                                     ; preds = %51, %48, %21
  %56 = load i8*, i8** %9, align 8, !dbg !250
  call void @free(i8* %56) #7, !dbg !251
  %57 = load i8*, i8** %10, align 8, !dbg !252
  call void @free(i8* %57) #7, !dbg !253
  br label %216, !dbg !254

; <label>:58:                                     ; preds = %1
  %59 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !255
  %60 = getelementptr inbounds %struct.stream, %struct.stream* %59, i32 0, i32 0, !dbg !256
  %61 = load i8*, i8** %60, align 8, !dbg !257
  %62 = getelementptr inbounds i8, i8* %61, i32 1, !dbg !257
  store i8* %62, i8** %60, align 8, !dbg !257
  %63 = load i8, i8* %61, align 1, !dbg !258
  %64 = zext i8 %63 to i32, !dbg !258
  store i32 %64, i32* %6, align 4, !dbg !259
  %65 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !260
  %66 = getelementptr inbounds %struct.stream, %struct.stream* %65, i32 0, i32 0, !dbg !261
  %67 = load i8*, i8** %66, align 8, !dbg !262
  %68 = getelementptr inbounds i8, i8* %67, i64 3, !dbg !262
  store i8* %68, i8** %66, align 8, !dbg !262
  %69 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !263
  %70 = load i32, i32* %6, align 4, !dbg !264
  call void @rdp_in_unistr(%struct.stream* %69, i32 %70, i8** %9, i32* %6), !dbg !265
  %71 = load i8*, i8** %9, align 8, !dbg !266
  %72 = icmp ne i8* %71, null, !dbg !266
  br i1 %72, label %73, label %76, !dbg !268

; <label>:73:                                     ; preds = %58
  %74 = load i8*, i8** %9, align 8, !dbg !269
  %75 = call i32 @printercache_unlink_blob(i8* %74), !dbg !270
  br label %76, !dbg !270

; <label>:76:                                     ; preds = %73, %58
  %77 = load i8*, i8** %9, align 8, !dbg !271
  call void @free(i8* %77) #7, !dbg !272
  br label %216, !dbg !273

; <label>:78:                                     ; preds = %1
  %79 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !274
  %80 = getelementptr inbounds %struct.stream, %struct.stream* %79, i32 0, i32 0, !dbg !276
  %81 = load i8*, i8** %80, align 8, !dbg !276
  %82 = bitcast i8* %81 to i32*, !dbg !277
  %83 = load i32, i32* %82, align 4, !dbg !277
  store i32 %83, i32* %6, align 4, !dbg !278
  %84 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !279
  %85 = getelementptr inbounds %struct.stream, %struct.stream* %84, i32 0, i32 0, !dbg !280
  %86 = load i8*, i8** %85, align 8, !dbg !281
  %87 = getelementptr inbounds i8, i8* %86, i64 4, !dbg !281
  store i8* %87, i8** %85, align 8, !dbg !281
  %88 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !282
  %89 = getelementptr inbounds %struct.stream, %struct.stream* %88, i32 0, i32 0, !dbg !284
  %90 = load i8*, i8** %89, align 8, !dbg !284
  %91 = bitcast i8* %90 to i32*, !dbg !285
  %92 = load i32, i32* %91, align 4, !dbg !285
  store i32 %92, i32* %7, align 4, !dbg !286
  %93 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !287
  %94 = getelementptr inbounds %struct.stream, %struct.stream* %93, i32 0, i32 0, !dbg !288
  %95 = load i8*, i8** %94, align 8, !dbg !289
  %96 = getelementptr inbounds i8, i8* %95, i64 4, !dbg !289
  store i8* %96, i8** %94, align 8, !dbg !289
  %97 = load i32, i32* %6, align 4, !dbg !290
  %98 = icmp ult i32 %97, 510, !dbg !292
  br i1 %98, label %99, label %112, !dbg !293

; <label>:99:                                     ; preds = %78
  %100 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !294
  %101 = load i32, i32* %6, align 4, !dbg !296
  call void @rdp_in_unistr(%struct.stream* %100, i32 %101, i8** %9, i32* %6), !dbg !297
  %102 = load i8*, i8** %9, align 8, !dbg !298
  %103 = icmp ne i8* %102, null, !dbg !298
  br i1 %103, label %104, label %110, !dbg !300

; <label>:104:                                    ; preds = %99
  %105 = load i8*, i8** %9, align 8, !dbg !301
  %106 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !302
  %107 = getelementptr inbounds %struct.stream, %struct.stream* %106, i32 0, i32 0, !dbg !303
  %108 = load i8*, i8** %107, align 8, !dbg !303
  %109 = load i32, i32* %7, align 4, !dbg !304
  call void @printercache_save_blob(i8* %105, i8* %108, i32 %109), !dbg !305
  br label %110, !dbg !305

; <label>:110:                                    ; preds = %104, %99
  %111 = load i8*, i8** %9, align 8, !dbg !306
  call void @free(i8* %111) #7, !dbg !307
  br label %112, !dbg !308

; <label>:112:                                    ; preds = %110, %78
  br label %216, !dbg !309

; <label>:113:                                    ; preds = %1
  %114 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i32 0, i32 0, !dbg !310
  %115 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !312
  %116 = getelementptr inbounds %struct.stream, %struct.stream* %115, i32 0, i32 0, !dbg !313
  %117 = load i8*, i8** %116, align 8, !dbg !313
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %114, i8* %117, i64 5, i32 1, i1 false), !dbg !310
  %118 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !314
  %119 = getelementptr inbounds %struct.stream, %struct.stream* %118, i32 0, i32 0, !dbg !315
  %120 = load i8*, i8** %119, align 8, !dbg !316
  %121 = getelementptr inbounds i8, i8* %120, i64 5, !dbg !316
  store i8* %121, i8** %119, align 8, !dbg !316
  %122 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !317
  %123 = getelementptr inbounds %struct.stream, %struct.stream* %122, i32 0, i32 0, !dbg !318
  %124 = load i8*, i8** %123, align 8, !dbg !319
  %125 = getelementptr inbounds i8, i8* %124, i64 2, !dbg !319
  store i8* %125, i8** %123, align 8, !dbg !319
  %126 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !320
  %127 = getelementptr inbounds %struct.stream, %struct.stream* %126, i32 0, i32 0, !dbg !321
  %128 = load i8*, i8** %127, align 8, !dbg !322
  %129 = getelementptr inbounds i8, i8* %128, i64 2, !dbg !322
  store i8* %129, i8** %127, align 8, !dbg !322
  %130 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !323
  %131 = getelementptr inbounds %struct.stream, %struct.stream* %130, i32 0, i32 0, !dbg !326
  %132 = load i8*, i8** %131, align 8, !dbg !327
  %133 = getelementptr inbounds i8, i8* %132, i32 1, !dbg !327
  store i8* %133, i8** %131, align 8, !dbg !327
  %134 = load i8, i8* %132, align 1, !dbg !328
  %135 = zext i8 %134 to i32, !dbg !328
  store i32 %135, i32* %5, align 4, !dbg !329
  %136 = load i32, i32* %5, align 4, !dbg !330
  %137 = shl i32 %136, 8, !dbg !331
  %138 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !332
  %139 = getelementptr inbounds %struct.stream, %struct.stream* %138, i32 0, i32 0, !dbg !333
  %140 = load i8*, i8** %139, align 8, !dbg !334
  %141 = getelementptr inbounds i8, i8* %140, i32 1, !dbg !334
  store i8* %141, i8** %139, align 8, !dbg !334
  %142 = load i8, i8* %140, align 1, !dbg !335
  %143 = zext i8 %142 to i32, !dbg !335
  %144 = add i32 %137, %143, !dbg !336
  store i32 %144, i32* %5, align 4, !dbg !337
  %145 = load i32, i32* %5, align 4, !dbg !338
  %146 = shl i32 %145, 8, !dbg !339
  %147 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !340
  %148 = getelementptr inbounds %struct.stream, %struct.stream* %147, i32 0, i32 0, !dbg !341
  %149 = load i8*, i8** %148, align 8, !dbg !342
  %150 = getelementptr inbounds i8, i8* %149, i32 1, !dbg !342
  store i8* %150, i8** %148, align 8, !dbg !342
  %151 = load i8, i8* %149, align 1, !dbg !343
  %152 = zext i8 %151 to i32, !dbg !343
  %153 = add i32 %146, %152, !dbg !344
  store i32 %153, i32* %5, align 4, !dbg !345
  %154 = load i32, i32* %5, align 4, !dbg !346
  %155 = shl i32 %154, 8, !dbg !347
  %156 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !348
  %157 = getelementptr inbounds %struct.stream, %struct.stream* %156, i32 0, i32 0, !dbg !349
  %158 = load i8*, i8** %157, align 8, !dbg !350
  %159 = getelementptr inbounds i8, i8* %158, i32 1, !dbg !350
  store i8* %159, i8** %157, align 8, !dbg !350
  %160 = load i8, i8* %158, align 1, !dbg !351
  %161 = zext i8 %160 to i32, !dbg !351
  %162 = add i32 %155, %161, !dbg !352
  store i32 %162, i32* %5, align 4, !dbg !353
  %163 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !354
  %164 = getelementptr inbounds %struct.stream, %struct.stream* %163, i32 0, i32 0, !dbg !357
  %165 = load i8*, i8** %164, align 8, !dbg !358
  %166 = getelementptr inbounds i8, i8* %165, i32 1, !dbg !358
  store i8* %166, i8** %164, align 8, !dbg !358
  %167 = load i8, i8* %165, align 1, !dbg !359
  %168 = zext i8 %167 to i32, !dbg !359
  store i32 %168, i32* %4, align 4, !dbg !360
  %169 = load i32, i32* %4, align 4, !dbg !361
  %170 = shl i32 %169, 8, !dbg !362
  %171 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !363
  %172 = getelementptr inbounds %struct.stream, %struct.stream* %171, i32 0, i32 0, !dbg !364
  %173 = load i8*, i8** %172, align 8, !dbg !365
  %174 = getelementptr inbounds i8, i8* %173, i32 1, !dbg !365
  store i8* %174, i8** %172, align 8, !dbg !365
  %175 = load i8, i8* %173, align 1, !dbg !366
  %176 = zext i8 %175 to i32, !dbg !366
  %177 = add i32 %170, %176, !dbg !367
  store i32 %177, i32* %4, align 4, !dbg !368
  %178 = load i32, i32* %4, align 4, !dbg !369
  %179 = shl i32 %178, 8, !dbg !370
  %180 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !371
  %181 = getelementptr inbounds %struct.stream, %struct.stream* %180, i32 0, i32 0, !dbg !372
  %182 = load i8*, i8** %181, align 8, !dbg !373
  %183 = getelementptr inbounds i8, i8* %182, i32 1, !dbg !373
  store i8* %183, i8** %181, align 8, !dbg !373
  %184 = load i8, i8* %182, align 1, !dbg !374
  %185 = zext i8 %184 to i32, !dbg !374
  %186 = add i32 %179, %185, !dbg !375
  store i32 %186, i32* %4, align 4, !dbg !376
  %187 = load i32, i32* %4, align 4, !dbg !377
  %188 = shl i32 %187, 8, !dbg !378
  %189 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !379
  %190 = getelementptr inbounds %struct.stream, %struct.stream* %189, i32 0, i32 0, !dbg !380
  %191 = load i8*, i8** %190, align 8, !dbg !381
  %192 = getelementptr inbounds i8, i8* %191, i32 1, !dbg !381
  store i8* %192, i8** %190, align 8, !dbg !381
  %193 = load i8, i8* %191, align 1, !dbg !382
  %194 = zext i8 %193 to i32, !dbg !382
  %195 = add i32 %188, %194, !dbg !383
  store i32 %195, i32* %4, align 4, !dbg !384
  %196 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !385
  %197 = getelementptr inbounds %struct.stream, %struct.stream* %196, i32 0, i32 0, !dbg !386
  %198 = load i8*, i8** %197, align 8, !dbg !387
  %199 = getelementptr inbounds i8, i8* %198, i64 7, !dbg !387
  store i8* %199, i8** %197, align 8, !dbg !387
  %200 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !388
  %201 = getelementptr inbounds %struct.stream, %struct.stream* %200, i32 0, i32 0, !dbg !389
  %202 = load i8*, i8** %201, align 8, !dbg !389
  %203 = getelementptr inbounds i8, i8* %202, i64 -19, !dbg !390
  %204 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !391
  %205 = getelementptr inbounds %struct.stream, %struct.stream* %204, i32 0, i32 0, !dbg !392
  store i8* %203, i8** %205, align 8, !dbg !393
  %206 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i32 0, i32 0, !dbg !394
  %207 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !395
  %208 = getelementptr inbounds %struct.stream, %struct.stream* %207, i32 0, i32 0, !dbg !396
  %209 = load i8*, i8** %208, align 8, !dbg !396
  %210 = load i32, i32* %5, align 4, !dbg !397
  %211 = load i32, i32* %4, align 4, !dbg !398
  %212 = add i32 %210, %211, !dbg !399
  %213 = add i32 %212, 19, !dbg !400
  call void @printercache_save_blob(i8* %206, i8* %209, i32 %213), !dbg !401
  br label %216, !dbg !402

; <label>:214:                                    ; preds = %1
  %215 = load i32, i32* %3, align 4, !dbg !403
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 2, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i32 0, i32 0), i32 %215), !dbg !404
  br label %216, !dbg !405

; <label>:216:                                    ; preds = %214, %113, %112, %76, %55
  ret void, !dbg !406
}

declare void @rdp_in_unistr(%struct.stream*, i32, i8**, i32*) #3

; Function Attrs: nounwind uwtable
define internal i32 @printercache_rename_blob(i8*, i8*) #0 !dbg !407 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !411, metadata !44), !dbg !412
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !413, metadata !44), !dbg !414
  call void @llvm.dbg.declare(metadata i8** %6, metadata !415, metadata !44), !dbg !416
  call void @llvm.dbg.declare(metadata i8** %7, metadata !417, metadata !44), !dbg !418
  call void @llvm.dbg.declare(metadata i32* %8, metadata !419, metadata !44), !dbg !420
  call void @llvm.dbg.declare(metadata i8** %9, metadata !421, metadata !44), !dbg !422
  %10 = load i8*, i8** %4, align 8, !dbg !423
  %11 = icmp eq i8* %10, null, !dbg !425
  br i1 %11, label %12, label %13, !dbg !426

; <label>:12:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !427
  br label %65, !dbg !427

; <label>:13:                                     ; preds = %2
  %14 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #7, !dbg !428
  store i8* %14, i8** %9, align 8, !dbg !429
  %15 = load i8*, i8** %9, align 8, !dbg !430
  %16 = icmp eq i8* %15, null, !dbg !432
  br i1 %16, label %17, label %18, !dbg !433

; <label>:17:                                     ; preds = %13
  store i32 0, i32* %3, align 4, !dbg !434
  br label %65, !dbg !434

; <label>:18:                                     ; preds = %13
  %19 = load i8*, i8** %4, align 8, !dbg !435
  %20 = call i64 @strlen(i8* %19) #8, !dbg !436
  %21 = load i8*, i8** %5, align 8, !dbg !437
  %22 = call i64 @strlen(i8* %21) #8, !dbg !438
  %23 = icmp ugt i64 %20, %22, !dbg !439
  br i1 %23, label %24, label %27, !dbg !436

; <label>:24:                                     ; preds = %18
  %25 = load i8*, i8** %4, align 8, !dbg !440
  %26 = call i64 @strlen(i8* %25) #8, !dbg !442
  br label %30, !dbg !443

; <label>:27:                                     ; preds = %18
  %28 = load i8*, i8** %5, align 8, !dbg !444
  %29 = call i64 @strlen(i8* %28) #8, !dbg !446
  br label %30, !dbg !447

; <label>:30:                                     ; preds = %27, %24
  %31 = phi i64 [ %26, %24 ], [ %29, %27 ], !dbg !448
  %32 = load i8*, i8** %9, align 8, !dbg !450
  %33 = call i64 @strlen(i8* %32) #8, !dbg !451
  %34 = add i64 %31, %33, !dbg !452
  %35 = add i64 %34, 18, !dbg !453
  %36 = add i64 %35, 1, !dbg !454
  %37 = trunc i64 %36 to i32, !dbg !455
  store i32 %37, i32* %8, align 4, !dbg !456
  %38 = load i32, i32* %8, align 4, !dbg !457
  %39 = call i8* @xmalloc(i32 %38), !dbg !458
  store i8* %39, i8** %6, align 8, !dbg !459
  %40 = load i32, i32* %8, align 4, !dbg !460
  %41 = call i8* @xmalloc(i32 %40), !dbg !461
  store i8* %41, i8** %7, align 8, !dbg !462
  %42 = load i8*, i8** %6, align 8, !dbg !463
  %43 = load i8*, i8** %9, align 8, !dbg !464
  %44 = load i8*, i8** %4, align 8, !dbg !465
  %45 = call i32 (i8*, i8*, ...) @sprintf(i8* %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i8* %43, i8* %44) #7, !dbg !466
  %46 = load i8*, i8** %7, align 8, !dbg !467
  %47 = load i8*, i8** %9, align 8, !dbg !468
  %48 = load i8*, i8** %5, align 8, !dbg !469
  %49 = call i32 (i8*, i8*, ...) @sprintf(i8* %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i8* %47, i8* %48) #7, !dbg !470
  %50 = load i8*, i8** %6, align 8, !dbg !471
  %51 = load i8*, i8** %7, align 8, !dbg !472
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 0, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i32 0, i32 0), i8* %50, i8* %51), !dbg !473
  %52 = load i8*, i8** %6, align 8, !dbg !474
  %53 = load i8*, i8** %7, align 8, !dbg !476
  %54 = call i32 @rename(i8* %52, i8* %53) #7, !dbg !477
  %55 = icmp slt i32 %54, 0, !dbg !478
  br i1 %55, label %56, label %62, !dbg !479

; <label>:56:                                     ; preds = %30
  %57 = call i32* @__errno_location() #1, !dbg !480
  %58 = load i32, i32* %57, align 4, !dbg !482
  %59 = call i8* @strerror(i32 %58) #7, !dbg !483
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i32 0, i32 0), i8* %59), !dbg !485
  %60 = load i8*, i8** %6, align 8, !dbg !486
  call void @xfree(i8* %60), !dbg !487
  %61 = load i8*, i8** %7, align 8, !dbg !488
  call void @xfree(i8* %61), !dbg !489
  store i32 0, i32* %3, align 4, !dbg !490
  br label %65, !dbg !490

; <label>:62:                                     ; preds = %30
  %63 = load i8*, i8** %6, align 8, !dbg !491
  call void @xfree(i8* %63), !dbg !492
  %64 = load i8*, i8** %7, align 8, !dbg !493
  call void @xfree(i8* %64), !dbg !494
  store i32 1, i32* %3, align 4, !dbg !495
  br label %65, !dbg !495

; <label>:65:                                     ; preds = %62, %56, %17, %12
  %66 = load i32, i32* %3, align 4, !dbg !496
  ret i32 %66, !dbg !496
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @printercache_unlink_blob(i8*) #0 !dbg !497 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !500, metadata !44), !dbg !501
  call void @llvm.dbg.declare(metadata i8** %4, metadata !502, metadata !44), !dbg !503
  call void @llvm.dbg.declare(metadata i8** %5, metadata !504, metadata !44), !dbg !505
  %6 = load i8*, i8** %3, align 8, !dbg !506
  %7 = icmp eq i8* %6, null, !dbg !508
  br i1 %7, label %8, label %9, !dbg !509

; <label>:8:                                      ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !510
  br label %46, !dbg !510

; <label>:9:                                      ; preds = %1
  %10 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #7, !dbg !511
  store i8* %10, i8** %5, align 8, !dbg !512
  %11 = load i8*, i8** %5, align 8, !dbg !513
  %12 = icmp eq i8* %11, null, !dbg !515
  br i1 %12, label %13, label %14, !dbg !516

; <label>:13:                                     ; preds = %9
  store i32 0, i32* %2, align 4, !dbg !517
  br label %46, !dbg !517

; <label>:14:                                     ; preds = %9
  %15 = load i8*, i8** %5, align 8, !dbg !518
  %16 = call i64 @strlen(i8* %15) #8, !dbg !519
  %17 = add i64 %16, 18, !dbg !520
  %18 = load i8*, i8** %3, align 8, !dbg !521
  %19 = call i64 @strlen(i8* %18) #8, !dbg !522
  %20 = add i64 %17, %19, !dbg !524
  %21 = add i64 %20, 22, !dbg !525
  %22 = add i64 %21, 1, !dbg !526
  %23 = trunc i64 %22 to i32, !dbg !519
  %24 = call i8* @xmalloc(i32 %23), !dbg !527
  store i8* %24, i8** %4, align 8, !dbg !529
  %25 = load i8*, i8** %4, align 8, !dbg !530
  %26 = load i8*, i8** %5, align 8, !dbg !531
  %27 = load i8*, i8** %3, align 8, !dbg !532
  %28 = call i32 (i8*, i8*, ...) @sprintf(i8* %25, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i8* %26, i8* %27) #7, !dbg !533
  %29 = load i8*, i8** %4, align 8, !dbg !534
  %30 = call i32 @unlink(i8* %29) #7, !dbg !536
  %31 = icmp slt i32 %30, 0, !dbg !537
  br i1 %31, label %32, label %34, !dbg !538

; <label>:32:                                     ; preds = %14
  %33 = load i8*, i8** %4, align 8, !dbg !539
  call void @xfree(i8* %33), !dbg !541
  store i32 0, i32* %2, align 4, !dbg !542
  br label %46, !dbg !542

; <label>:34:                                     ; preds = %14
  %35 = load i8*, i8** %4, align 8, !dbg !543
  %36 = load i8*, i8** %5, align 8, !dbg !544
  %37 = load i8*, i8** %3, align 8, !dbg !545
  %38 = call i32 (i8*, i8*, ...) @sprintf(i8* %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i8* %36, i8* %37) #7, !dbg !546
  %39 = load i8*, i8** %4, align 8, !dbg !547
  %40 = call i32 @rmdir(i8* %39) #7, !dbg !549
  %41 = icmp slt i32 %40, 0, !dbg !550
  br i1 %41, label %42, label %44, !dbg !551

; <label>:42:                                     ; preds = %34
  %43 = load i8*, i8** %4, align 8, !dbg !552
  call void @xfree(i8* %43), !dbg !554
  store i32 0, i32* %2, align 4, !dbg !555
  br label %46, !dbg !555

; <label>:44:                                     ; preds = %34
  %45 = load i8*, i8** %4, align 8, !dbg !556
  call void @xfree(i8* %45), !dbg !557
  store i32 1, i32* %2, align 4, !dbg !558
  br label %46, !dbg !558

; <label>:46:                                     ; preds = %44, %42, %32, %13, %8
  %47 = load i32, i32* %2, align 4, !dbg !559
  ret i32 %47, !dbg !559
}

; Function Attrs: nounwind uwtable
define internal void @printercache_save_blob(i8*, i8*, i32) #0 !dbg !560 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !563, metadata !44), !dbg !564
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !565, metadata !44), !dbg !566
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !567, metadata !44), !dbg !568
  call void @llvm.dbg.declare(metadata i8** %7, metadata !569, metadata !44), !dbg !570
  call void @llvm.dbg.declare(metadata i8** %8, metadata !571, metadata !44), !dbg !572
  call void @llvm.dbg.declare(metadata i32* %9, metadata !573, metadata !44), !dbg !574
  %10 = load i8*, i8** %4, align 8, !dbg !575
  %11 = icmp eq i8* %10, null, !dbg !577
  br i1 %11, label %12, label %13, !dbg !578

; <label>:12:                                     ; preds = %3
  br label %67, !dbg !579

; <label>:13:                                     ; preds = %3
  %14 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #7, !dbg !580
  store i8* %14, i8** %7, align 8, !dbg !581
  %15 = load i8*, i8** %7, align 8, !dbg !582
  %16 = icmp eq i8* %15, null, !dbg !584
  br i1 %16, label %17, label %18, !dbg !585

; <label>:17:                                     ; preds = %13
  br label %67, !dbg !586

; <label>:18:                                     ; preds = %13
  %19 = load i8*, i8** %7, align 8, !dbg !587
  %20 = load i8*, i8** %4, align 8, !dbg !589
  %21 = call i32 @printercache_mkdir(i8* %19, i8* %20), !dbg !590
  %22 = icmp ne i32 %21, 0, !dbg !590
  br i1 %22, label %24, label %23, !dbg !591

; <label>:23:                                     ; preds = %18
  br label %67, !dbg !592

; <label>:24:                                     ; preds = %18
  %25 = load i8*, i8** %7, align 8, !dbg !593
  %26 = call i64 @strlen(i8* %25) #8, !dbg !594
  %27 = add i64 %26, 18, !dbg !595
  %28 = load i8*, i8** %4, align 8, !dbg !596
  %29 = call i64 @strlen(i8* %28) #8, !dbg !597
  %30 = add i64 %27, %29, !dbg !599
  %31 = add i64 %30, 22, !dbg !600
  %32 = add i64 %31, 1, !dbg !601
  %33 = trunc i64 %32 to i32, !dbg !594
  %34 = call i8* @xmalloc(i32 %33), !dbg !602
  store i8* %34, i8** %8, align 8, !dbg !604
  %35 = load i8*, i8** %8, align 8, !dbg !605
  %36 = load i8*, i8** %7, align 8, !dbg !606
  %37 = load i8*, i8** %4, align 8, !dbg !607
  %38 = call i32 (i8*, i8*, ...) @sprintf(i8* %35, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i8* %36, i8* %37) #7, !dbg !608
  %39 = load i8*, i8** %8, align 8, !dbg !609
  %40 = call i32 (i8*, i32, ...) @open(i8* %39, i32 577, i32 384), !dbg !610
  store i32 %40, i32* %9, align 4, !dbg !611
  %41 = load i32, i32* %9, align 4, !dbg !612
  %42 = icmp eq i32 %41, -1, !dbg !614
  br i1 %42, label %43, label %48, !dbg !615

; <label>:43:                                     ; preds = %24
  %44 = call i32* @__errno_location() #1, !dbg !616
  %45 = load i32, i32* %44, align 4, !dbg !618
  %46 = call i8* @strerror(i32 %45) #7, !dbg !619
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i32 0, i32 0), i8* %46), !dbg !621
  %47 = load i8*, i8** %8, align 8, !dbg !623
  call void @xfree(i8* %47), !dbg !624
  br label %67, !dbg !625

; <label>:48:                                     ; preds = %24
  %49 = load i32, i32* %9, align 4, !dbg !626
  %50 = load i8*, i8** %5, align 8, !dbg !628
  %51 = load i32, i32* %6, align 4, !dbg !629
  %52 = zext i32 %51 to i64, !dbg !629
  %53 = call i64 @write(i32 %49, i8* %50, i64 %52), !dbg !630
  %54 = load i32, i32* %6, align 4, !dbg !631
  %55 = zext i32 %54 to i64, !dbg !631
  %56 = icmp ne i64 %53, %55, !dbg !632
  br i1 %56, label %57, label %63, !dbg !633

; <label>:57:                                     ; preds = %48
  %58 = call i32* @__errno_location() #1, !dbg !634
  %59 = load i32, i32* %58, align 4, !dbg !636
  %60 = call i8* @strerror(i32 %59) #7, !dbg !637
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i32 0, i32 0), i8* %60), !dbg !639
  %61 = load i8*, i8** %8, align 8, !dbg !640
  %62 = call i32 @unlink(i8* %61) #7, !dbg !641
  br label %63, !dbg !642

; <label>:63:                                     ; preds = %57, %48
  %64 = load i32, i32* %9, align 4, !dbg !643
  %65 = call i32 @close(i32 %64), !dbg !644
  %66 = load i8*, i8** %8, align 8, !dbg !645
  call void @xfree(i8* %66), !dbg !646
  br label %67, !dbg !647

; <label>:67:                                     ; preds = %63, %43, %23, %17, %12
  ret void, !dbg !648
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

declare void @logger(i32, i32, i8*, ...) #3

; Function Attrs: nounwind
declare i32 @rename(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @strerror(i32) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

; Function Attrs: nounwind
declare i32 @unlink(i8*) #2

; Function Attrs: nounwind
declare i32 @rmdir(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @printercache_mkdir(i8*, i8*) #0 !dbg !649 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !650, metadata !44), !dbg !651
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !652, metadata !44), !dbg !653
  call void @llvm.dbg.declare(metadata i8** %6, metadata !654, metadata !44), !dbg !655
  %7 = load i8*, i8** %4, align 8, !dbg !656
  %8 = call i64 @strlen(i8* %7) #8, !dbg !657
  %9 = add i64 %8, 18, !dbg !658
  %10 = load i8*, i8** %5, align 8, !dbg !659
  %11 = call i64 @strlen(i8* %10) #8, !dbg !660
  %12 = add i64 %9, %11, !dbg !662
  %13 = add i64 %12, 1, !dbg !663
  %14 = trunc i64 %13 to i32, !dbg !657
  %15 = call i8* @xmalloc(i32 %14), !dbg !664
  store i8* %15, i8** %6, align 8, !dbg !666
  %16 = load i8*, i8** %6, align 8, !dbg !667
  %17 = load i8*, i8** %4, align 8, !dbg !668
  %18 = call i32 (i8*, i8*, ...) @sprintf(i8* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8* %17) #7, !dbg !669
  %19 = load i8*, i8** %6, align 8, !dbg !670
  %20 = call i32 @mkdir(i8* %19, i32 448) #7, !dbg !672
  %21 = icmp eq i32 %20, -1, !dbg !673
  br i1 %21, label %22, label %31, !dbg !674

; <label>:22:                                     ; preds = %2
  %23 = call i32* @__errno_location() #1, !dbg !675
  %24 = load i32, i32* %23, align 4, !dbg !677
  %25 = icmp ne i32 %24, 17, !dbg !678
  br i1 %25, label %26, label %31, !dbg !679

; <label>:26:                                     ; preds = %22
  %27 = call i32* @__errno_location() #1, !dbg !680
  %28 = load i32, i32* %27, align 4, !dbg !682
  %29 = call i8* @strerror(i32 %28) #7, !dbg !683
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i32 0, i32 0), i8* %29), !dbg !685
  %30 = load i8*, i8** %6, align 8, !dbg !687
  call void @xfree(i8* %30), !dbg !688
  store i32 0, i32* %3, align 4, !dbg !689
  br label %66, !dbg !689

; <label>:31:                                     ; preds = %22, %2
  %32 = load i8*, i8** %6, align 8, !dbg !690
  %33 = call i8* @strcat(i8* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)) #7, !dbg !691
  %34 = load i8*, i8** %6, align 8, !dbg !692
  %35 = call i32 @mkdir(i8* %34, i32 448) #7, !dbg !694
  %36 = icmp eq i32 %35, -1, !dbg !695
  br i1 %36, label %37, label %46, !dbg !696

; <label>:37:                                     ; preds = %31
  %38 = call i32* @__errno_location() #1, !dbg !697
  %39 = load i32, i32* %38, align 4, !dbg !699
  %40 = icmp ne i32 %39, 17, !dbg !700
  br i1 %40, label %41, label %46, !dbg !701

; <label>:41:                                     ; preds = %37
  %42 = call i32* @__errno_location() #1, !dbg !702
  %43 = load i32, i32* %42, align 4, !dbg !704
  %44 = call i8* @strerror(i32 %43) #7, !dbg !705
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i32 0, i32 0), i8* %44), !dbg !707
  %45 = load i8*, i8** %6, align 8, !dbg !709
  call void @xfree(i8* %45), !dbg !710
  store i32 0, i32* %3, align 4, !dbg !711
  br label %66, !dbg !711

; <label>:46:                                     ; preds = %37, %31
  %47 = load i8*, i8** %6, align 8, !dbg !712
  %48 = call i8* @strcat(i8* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)) #7, !dbg !713
  %49 = load i8*, i8** %6, align 8, !dbg !714
  %50 = load i8*, i8** %5, align 8, !dbg !715
  %51 = call i8* @strcat(i8* %49, i8* %50) #7, !dbg !716
  %52 = load i8*, i8** %6, align 8, !dbg !717
  %53 = call i32 @mkdir(i8* %52, i32 448) #7, !dbg !719
  %54 = icmp eq i32 %53, -1, !dbg !720
  br i1 %54, label %55, label %64, !dbg !721

; <label>:55:                                     ; preds = %46
  %56 = call i32* @__errno_location() #1, !dbg !722
  %57 = load i32, i32* %56, align 4, !dbg !724
  %58 = icmp ne i32 %57, 17, !dbg !725
  br i1 %58, label %59, label %64, !dbg !726

; <label>:59:                                     ; preds = %55
  %60 = call i32* @__errno_location() #1, !dbg !727
  %61 = load i32, i32* %60, align 4, !dbg !729
  %62 = call i8* @strerror(i32 %61) #7, !dbg !730
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i32 0, i32 0), i8* %62), !dbg !732
  %63 = load i8*, i8** %6, align 8, !dbg !734
  call void @xfree(i8* %63), !dbg !735
  store i32 0, i32* %3, align 4, !dbg !736
  br label %66, !dbg !736

; <label>:64:                                     ; preds = %55, %46
  %65 = load i8*, i8** %6, align 8, !dbg !737
  call void @xfree(i8* %65), !dbg !738
  store i32 1, i32* %3, align 4, !dbg !739
  br label %66, !dbg !739

; <label>:66:                                     ; preds = %64, %59, %41, %26
  %67 = load i32, i32* %3, align 4, !dbg !740
  ret i32 %67, !dbg !740
}

declare i64 @write(i32, i8*, i64) #3

; Function Attrs: nounwind
declare i32 @mkdir(i8*, i32) #2

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!33, !34}
!llvm.ident = !{!35}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !22)
!1 = !DIFile(filename: "[inter]printercache.o.i", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
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
!22 = !{!23, !24, !26, !30}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!25 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !28, line: 39, baseType: !29)
!28 = !DIFile(filename: "types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!29 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !28, line: 43, baseType: !32)
!32 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!33 = !{i32 2, !"Dwarf Version", i32 4}
!34 = !{i32 2, !"Debug Info Version", i32 3}
!35 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!36 = distinct !DISubprogram(name: "printercache_load_blob", scope: !37, file: !37, line: 158, type: !38, isLocal: false, isDefinition: true, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !42)
!37 = !DIFile(filename: "printercache.c", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!38 = !DISubroutineType(types: !39)
!39 = !{!40, !24, !41}
!40 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!42 = !{}
!43 = !DILocalVariable(name: "printer_name", arg: 1, scope: !36, file: !37, line: 158, type: !24)
!44 = !DIExpression()
!45 = !DILocation(line: 158, column: 30, scope: !36)
!46 = !DILocalVariable(name: "data", arg: 2, scope: !36, file: !37, line: 158, type: !41)
!47 = !DILocation(line: 158, column: 53, scope: !36)
!48 = !DILocalVariable(name: "home", scope: !36, file: !37, line: 160, type: !24)
!49 = !DILocation(line: 160, column: 8, scope: !36)
!50 = !DILocalVariable(name: "path", scope: !36, file: !37, line: 160, type: !24)
!51 = !DILocation(line: 160, column: 15, scope: !36)
!52 = !DILocalVariable(name: "st", scope: !36, file: !37, line: 161, type: !53)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !54, line: 46, size: 1152, align: 64, elements: !55)
!54 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!55 = !{!56, !60, !62, !64, !66, !68, !70, !71, !72, !75, !77, !79, !87, !88, !89}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !53, file: !54, line: 48, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !58, line: 124, baseType: !59)
!58 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!59 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !53, file: !54, line: 53, baseType: !61, size: 64, align: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !58, line: 127, baseType: !59)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !53, file: !54, line: 61, baseType: !63, size: 64, align: 64, offset: 128)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !58, line: 130, baseType: !59)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !53, file: !54, line: 62, baseType: !65, size: 32, align: 32, offset: 192)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !58, line: 129, baseType: !32)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !53, file: !54, line: 64, baseType: !67, size: 32, align: 32, offset: 224)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !58, line: 125, baseType: !32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !53, file: !54, line: 65, baseType: !69, size: 32, align: 32, offset: 256)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !58, line: 126, baseType: !32)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !53, file: !54, line: 67, baseType: !40, size: 32, align: 32, offset: 288)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !53, file: !54, line: 69, baseType: !57, size: 64, align: 64, offset: 320)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !53, file: !54, line: 74, baseType: !73, size: 64, align: 64, offset: 384)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !58, line: 131, baseType: !74)
!74 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !53, file: !54, line: 78, baseType: !76, size: 64, align: 64, offset: 448)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !58, line: 153, baseType: !74)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !53, file: !54, line: 80, baseType: !78, size: 64, align: 64, offset: 512)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !58, line: 158, baseType: !74)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !53, file: !54, line: 91, baseType: !80, size: 128, align: 64, offset: 576)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !81, line: 120, size: 128, align: 64, elements: !82)
!81 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!82 = !{!83, !85}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !80, file: !81, line: 122, baseType: !84, size: 64, align: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !58, line: 139, baseType: !74)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !80, file: !81, line: 123, baseType: !86, size: 64, align: 64, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !58, line: 175, baseType: !74)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !53, file: !54, line: 92, baseType: !80, size: 128, align: 64, offset: 704)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !53, file: !54, line: 93, baseType: !80, size: 128, align: 64, offset: 832)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !53, file: !54, line: 106, baseType: !90, size: 192, align: 64, offset: 960)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 192, align: 64, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 3)
!93 = !DILocation(line: 161, column: 14, scope: !36)
!94 = !DILocalVariable(name: "fd", scope: !36, file: !37, line: 162, type: !40)
!95 = !DILocation(line: 162, column: 6, scope: !36)
!96 = !DILocalVariable(name: "length", scope: !36, file: !37, line: 162, type: !40)
!97 = !DILocation(line: 162, column: 10, scope: !36)
!98 = !DILocation(line: 164, column: 6, scope: !99)
!99 = distinct !DILexicalBlock(scope: !36, file: !37, line: 164, column: 6)
!100 = !DILocation(line: 164, column: 19, scope: !99)
!101 = !DILocation(line: 164, column: 6, scope: !36)
!102 = !DILocation(line: 165, column: 3, scope: !99)
!103 = !DILocation(line: 167, column: 3, scope: !36)
!104 = !DILocation(line: 167, column: 8, scope: !36)
!105 = !DILocation(line: 169, column: 9, scope: !36)
!106 = !DILocation(line: 169, column: 7, scope: !36)
!107 = !DILocation(line: 170, column: 6, scope: !108)
!108 = distinct !DILexicalBlock(scope: !36, file: !37, line: 170, column: 6)
!109 = !DILocation(line: 170, column: 11, scope: !108)
!110 = !DILocation(line: 170, column: 6, scope: !36)
!111 = !DILocation(line: 171, column: 3, scope: !108)
!112 = !DILocation(line: 173, column: 33, scope: !36)
!113 = !DILocation(line: 173, column: 26, scope: !36)
!114 = !DILocation(line: 173, column: 39, scope: !36)
!115 = !DILocation(line: 173, column: 78, scope: !36)
!116 = !DILocation(line: 173, column: 71, scope: !117)
!117 = !DILexicalBlockFile(scope: !36, file: !37, discriminator: 1)
!118 = !DILocation(line: 173, column: 69, scope: !36)
!119 = !DILocation(line: 173, column: 92, scope: !36)
!120 = !DILocation(line: 174, column: 37, scope: !36)
!121 = !DILocation(line: 173, column: 18, scope: !122)
!122 = !DILexicalBlockFile(scope: !36, file: !37, discriminator: 2)
!123 = !DILocation(line: 173, column: 7, scope: !36)
!124 = !DILocation(line: 175, column: 10, scope: !36)
!125 = !DILocation(line: 175, column: 62, scope: !36)
!126 = !DILocation(line: 175, column: 68, scope: !36)
!127 = !DILocation(line: 175, column: 2, scope: !36)
!128 = !DILocation(line: 177, column: 12, scope: !36)
!129 = !DILocation(line: 177, column: 7, scope: !36)
!130 = !DILocation(line: 177, column: 5, scope: !36)
!131 = !DILocation(line: 178, column: 6, scope: !132)
!132 = distinct !DILexicalBlock(scope: !36, file: !37, line: 178, column: 6)
!133 = !DILocation(line: 178, column: 9, scope: !132)
!134 = !DILocation(line: 178, column: 6, scope: !36)
!135 = !DILocation(line: 180, column: 9, scope: !136)
!136 = distinct !DILexicalBlock(scope: !132, file: !37, line: 179, column: 2)
!137 = !DILocation(line: 180, column: 3, scope: !136)
!138 = !DILocation(line: 181, column: 3, scope: !136)
!139 = !DILocation(line: 184, column: 12, scope: !140)
!140 = distinct !DILexicalBlock(scope: !36, file: !37, line: 184, column: 6)
!141 = !DILocation(line: 184, column: 6, scope: !140)
!142 = !DILocation(line: 184, column: 6, scope: !36)
!143 = !DILocation(line: 186, column: 9, scope: !144)
!144 = distinct !DILexicalBlock(scope: !140, file: !37, line: 185, column: 2)
!145 = !DILocation(line: 186, column: 3, scope: !144)
!146 = !DILocation(line: 187, column: 3, scope: !144)
!147 = !DILocation(line: 190, column: 31, scope: !36)
!148 = !DILocation(line: 190, column: 28, scope: !36)
!149 = !DILocation(line: 190, column: 20, scope: !36)
!150 = !DILocation(line: 190, column: 3, scope: !36)
!151 = !DILocation(line: 190, column: 8, scope: !36)
!152 = !DILocation(line: 191, column: 16, scope: !36)
!153 = !DILocation(line: 191, column: 21, scope: !36)
!154 = !DILocation(line: 191, column: 20, scope: !36)
!155 = !DILocation(line: 191, column: 30, scope: !36)
!156 = !DILocation(line: 191, column: 11, scope: !36)
!157 = !DILocation(line: 191, column: 9, scope: !36)
!158 = !DILocation(line: 192, column: 8, scope: !36)
!159 = !DILocation(line: 192, column: 2, scope: !36)
!160 = !DILocation(line: 193, column: 8, scope: !36)
!161 = !DILocation(line: 193, column: 2, scope: !36)
!162 = !DILocation(line: 194, column: 9, scope: !36)
!163 = !DILocation(line: 194, column: 2, scope: !36)
!164 = !DILocation(line: 195, column: 1, scope: !36)
!165 = distinct !DISubprogram(name: "printercache_process", scope: !37, file: !37, line: 237, type: !166, isLocal: false, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !42)
!166 = !DISubroutineType(types: !167)
!167 = !{null, !168}
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "STREAM", file: !169, line: 40, baseType: !170)
!169 = !DIFile(filename: "stream.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64, align: 64)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream", file: !169, line: 25, size: 576, align: 64, elements: !172)
!172 = !{!173, !175, !176, !177, !178, !179, !180, !181, !182}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !171, file: !169, line: 27, baseType: !174, size: 64, align: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !171, file: !169, line: 28, baseType: !174, size: 64, align: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !171, file: !169, line: 29, baseType: !174, size: 64, align: 64, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !171, file: !169, line: 30, baseType: !32, size: 32, align: 32, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "iso_hdr", scope: !171, file: !169, line: 33, baseType: !174, size: 64, align: 64, offset: 256)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "mcs_hdr", scope: !171, file: !169, line: 34, baseType: !174, size: 64, align: 64, offset: 320)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "sec_hdr", scope: !171, file: !169, line: 35, baseType: !174, size: 64, align: 64, offset: 384)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "rdp_hdr", scope: !171, file: !169, line: 36, baseType: !174, size: 64, align: 64, offset: 448)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "channel_hdr", scope: !171, file: !169, line: 37, baseType: !174, size: 64, align: 64, offset: 512)
!183 = !DILocalVariable(name: "s", arg: 1, scope: !165, file: !37, line: 237, type: !168)
!184 = !DILocation(line: 237, column: 29, scope: !165)
!185 = !DILocalVariable(name: "type", scope: !165, file: !37, line: 239, type: !31)
!186 = !DILocation(line: 239, column: 9, scope: !165)
!187 = !DILocalVariable(name: "printer_length", scope: !165, file: !37, line: 239, type: !31)
!188 = !DILocation(line: 239, column: 15, scope: !165)
!189 = !DILocalVariable(name: "driver_length", scope: !165, file: !37, line: 239, type: !31)
!190 = !DILocation(line: 239, column: 31, scope: !165)
!191 = !DILocalVariable(name: "printer_unicode_length", scope: !165, file: !37, line: 239, type: !31)
!192 = !DILocation(line: 239, column: 46, scope: !165)
!193 = !DILocalVariable(name: "blob_length", scope: !165, file: !37, line: 239, type: !31)
!194 = !DILocation(line: 239, column: 70, scope: !165)
!195 = !DILocalVariable(name: "device_name", scope: !165, file: !37, line: 240, type: !196)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 72, align: 8, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 9)
!199 = !DILocation(line: 240, column: 7, scope: !165)
!200 = !DILocalVariable(name: "printer", scope: !165, file: !37, line: 240, type: !24)
!201 = !DILocation(line: 240, column: 24, scope: !165)
!202 = !DILocalVariable(name: "driver", scope: !165, file: !37, line: 240, type: !24)
!203 = !DILocation(line: 240, column: 34, scope: !165)
!204 = !DILocation(line: 242, column: 19, scope: !165)
!205 = !DILocation(line: 242, column: 10, scope: !165)
!206 = !DILocation(line: 244, column: 24, scope: !207)
!207 = distinct !DILexicalBlock(scope: !165, file: !37, line: 244, column: 2)
!208 = !DILocation(line: 244, column: 28, scope: !207)
!209 = !DILocation(line: 244, column: 11, scope: !207)
!210 = !DILocation(line: 244, column: 9, scope: !207)
!211 = !DILocation(line: 244, column: 33, scope: !207)
!212 = !DILocation(line: 244, column: 37, scope: !207)
!213 = !DILocation(line: 244, column: 39, scope: !207)
!214 = !DILocation(line: 245, column: 10, scope: !165)
!215 = !DILocation(line: 245, column: 2, scope: !165)
!216 = !DILocation(line: 248, column: 24, scope: !217)
!217 = distinct !DILexicalBlock(scope: !165, file: !37, line: 246, column: 2)
!218 = !DILocation(line: 248, column: 28, scope: !217)
!219 = !DILocation(line: 248, column: 29, scope: !217)
!220 = !DILocation(line: 248, column: 21, scope: !217)
!221 = !DILocation(line: 248, column: 19, scope: !217)
!222 = !DILocation(line: 249, column: 5, scope: !217)
!223 = !DILocation(line: 249, column: 9, scope: !217)
!224 = !DILocation(line: 249, column: 11, scope: !217)
!225 = !DILocation(line: 250, column: 23, scope: !217)
!226 = !DILocation(line: 250, column: 27, scope: !217)
!227 = !DILocation(line: 250, column: 28, scope: !217)
!228 = !DILocation(line: 250, column: 20, scope: !217)
!229 = !DILocation(line: 250, column: 18, scope: !217)
!230 = !DILocation(line: 251, column: 5, scope: !217)
!231 = !DILocation(line: 251, column: 9, scope: !217)
!232 = !DILocation(line: 251, column: 11, scope: !217)
!233 = !DILocation(line: 255, column: 18, scope: !217)
!234 = !DILocation(line: 255, column: 21, scope: !217)
!235 = !DILocation(line: 255, column: 4, scope: !217)
!236 = !DILocation(line: 256, column: 18, scope: !217)
!237 = !DILocation(line: 256, column: 21, scope: !217)
!238 = !DILocation(line: 256, column: 4, scope: !217)
!239 = !DILocation(line: 258, column: 8, scope: !240)
!240 = distinct !DILexicalBlock(scope: !217, file: !37, line: 258, column: 8)
!241 = !DILocation(line: 258, column: 16, scope: !240)
!242 = !DILocation(line: 258, column: 23, scope: !240)
!243 = !DILocation(line: 258, column: 26, scope: !244)
!244 = !DILexicalBlockFile(scope: !240, file: !37, discriminator: 1)
!245 = !DILocation(line: 258, column: 33, scope: !244)
!246 = !DILocation(line: 258, column: 8, scope: !244)
!247 = !DILocation(line: 259, column: 30, scope: !240)
!248 = !DILocation(line: 259, column: 39, scope: !240)
!249 = !DILocation(line: 259, column: 5, scope: !240)
!250 = !DILocation(line: 261, column: 9, scope: !217)
!251 = !DILocation(line: 261, column: 4, scope: !217)
!252 = !DILocation(line: 262, column: 9, scope: !217)
!253 = !DILocation(line: 262, column: 4, scope: !217)
!254 = !DILocation(line: 263, column: 4, scope: !217)
!255 = !DILocation(line: 266, column: 32, scope: !217)
!256 = !DILocation(line: 266, column: 36, scope: !217)
!257 = !DILocation(line: 266, column: 37, scope: !217)
!258 = !DILocation(line: 266, column: 29, scope: !217)
!259 = !DILocation(line: 266, column: 27, scope: !217)
!260 = !DILocation(line: 267, column: 5, scope: !217)
!261 = !DILocation(line: 267, column: 9, scope: !217)
!262 = !DILocation(line: 267, column: 11, scope: !217)
!263 = !DILocation(line: 268, column: 18, scope: !217)
!264 = !DILocation(line: 268, column: 21, scope: !217)
!265 = !DILocation(line: 268, column: 4, scope: !217)
!266 = !DILocation(line: 269, column: 8, scope: !267)
!267 = distinct !DILexicalBlock(scope: !217, file: !37, line: 269, column: 8)
!268 = !DILocation(line: 269, column: 8, scope: !217)
!269 = !DILocation(line: 270, column: 30, scope: !267)
!270 = !DILocation(line: 270, column: 5, scope: !267)
!271 = !DILocation(line: 271, column: 9, scope: !217)
!272 = !DILocation(line: 271, column: 4, scope: !217)
!273 = !DILocation(line: 272, column: 4, scope: !217)
!274 = !DILocation(line: 275, column: 44, scope: !275)
!275 = distinct !DILexicalBlock(scope: !217, file: !37, line: 275, column: 4)
!276 = !DILocation(line: 275, column: 48, scope: !275)
!277 = !DILocation(line: 275, column: 31, scope: !275)
!278 = !DILocation(line: 275, column: 29, scope: !275)
!279 = !DILocation(line: 275, column: 53, scope: !275)
!280 = !DILocation(line: 275, column: 57, scope: !275)
!281 = !DILocation(line: 275, column: 59, scope: !275)
!282 = !DILocation(line: 276, column: 33, scope: !283)
!283 = distinct !DILexicalBlock(scope: !217, file: !37, line: 276, column: 4)
!284 = !DILocation(line: 276, column: 37, scope: !283)
!285 = !DILocation(line: 276, column: 20, scope: !283)
!286 = !DILocation(line: 276, column: 18, scope: !283)
!287 = !DILocation(line: 276, column: 42, scope: !283)
!288 = !DILocation(line: 276, column: 46, scope: !283)
!289 = !DILocation(line: 276, column: 48, scope: !283)
!290 = !DILocation(line: 278, column: 8, scope: !291)
!291 = distinct !DILexicalBlock(scope: !217, file: !37, line: 278, column: 8)
!292 = !DILocation(line: 278, column: 31, scope: !291)
!293 = !DILocation(line: 278, column: 8, scope: !217)
!294 = !DILocation(line: 280, column: 19, scope: !295)
!295 = distinct !DILexicalBlock(scope: !291, file: !37, line: 279, column: 4)
!296 = !DILocation(line: 280, column: 22, scope: !295)
!297 = !DILocation(line: 280, column: 5, scope: !295)
!298 = !DILocation(line: 282, column: 9, scope: !299)
!299 = distinct !DILexicalBlock(scope: !295, file: !37, line: 282, column: 9)
!300 = !DILocation(line: 282, column: 9, scope: !295)
!301 = !DILocation(line: 283, column: 29, scope: !299)
!302 = !DILocation(line: 283, column: 38, scope: !299)
!303 = !DILocation(line: 283, column: 41, scope: !299)
!304 = !DILocation(line: 283, column: 44, scope: !299)
!305 = !DILocation(line: 283, column: 6, scope: !299)
!306 = !DILocation(line: 284, column: 10, scope: !295)
!307 = !DILocation(line: 284, column: 5, scope: !295)
!308 = !DILocation(line: 285, column: 4, scope: !295)
!309 = !DILocation(line: 286, column: 4, scope: !217)
!310 = !DILocation(line: 289, column: 6, scope: !311)
!311 = distinct !DILexicalBlock(scope: !217, file: !37, line: 289, column: 4)
!312 = !DILocation(line: 289, column: 26, scope: !311)
!313 = !DILocation(line: 289, column: 30, scope: !311)
!314 = !DILocation(line: 289, column: 37, scope: !311)
!315 = !DILocation(line: 289, column: 41, scope: !311)
!316 = !DILocation(line: 289, column: 43, scope: !311)
!317 = !DILocation(line: 292, column: 5, scope: !217)
!318 = !DILocation(line: 292, column: 9, scope: !217)
!319 = !DILocation(line: 292, column: 11, scope: !217)
!320 = !DILocation(line: 293, column: 5, scope: !217)
!321 = !DILocation(line: 293, column: 9, scope: !217)
!322 = !DILocation(line: 293, column: 11, scope: !217)
!323 = !DILocation(line: 294, column: 28, scope: !324)
!324 = distinct !DILexicalBlock(scope: !325, file: !37, line: 294, column: 7)
!325 = distinct !DILexicalBlock(scope: !217, file: !37, line: 294, column: 5)
!326 = !DILocation(line: 294, column: 32, scope: !324)
!327 = !DILocation(line: 294, column: 33, scope: !324)
!328 = !DILocation(line: 294, column: 25, scope: !324)
!329 = !DILocation(line: 294, column: 23, scope: !324)
!330 = !DILocation(line: 294, column: 56, scope: !324)
!331 = !DILocation(line: 294, column: 71, scope: !324)
!332 = !DILocation(line: 294, column: 82, scope: !324)
!333 = !DILocation(line: 294, column: 86, scope: !324)
!334 = !DILocation(line: 294, column: 87, scope: !324)
!335 = !DILocation(line: 294, column: 79, scope: !324)
!336 = !DILocation(line: 294, column: 77, scope: !324)
!337 = !DILocation(line: 294, column: 52, scope: !324)
!338 = !DILocation(line: 294, column: 114, scope: !325)
!339 = !DILocation(line: 294, column: 129, scope: !325)
!340 = !DILocation(line: 294, column: 140, scope: !325)
!341 = !DILocation(line: 294, column: 144, scope: !325)
!342 = !DILocation(line: 294, column: 145, scope: !325)
!343 = !DILocation(line: 294, column: 137, scope: !325)
!344 = !DILocation(line: 294, column: 135, scope: !325)
!345 = !DILocation(line: 294, column: 110, scope: !325)
!346 = !DILocation(line: 294, column: 169, scope: !325)
!347 = !DILocation(line: 294, column: 184, scope: !325)
!348 = !DILocation(line: 294, column: 195, scope: !325)
!349 = !DILocation(line: 294, column: 199, scope: !325)
!350 = !DILocation(line: 294, column: 200, scope: !325)
!351 = !DILocation(line: 294, column: 192, scope: !325)
!352 = !DILocation(line: 294, column: 190, scope: !325)
!353 = !DILocation(line: 294, column: 165, scope: !325)
!354 = !DILocation(line: 295, column: 28, scope: !355)
!355 = distinct !DILexicalBlock(scope: !356, file: !37, line: 295, column: 6)
!356 = distinct !DILexicalBlock(scope: !217, file: !37, line: 295, column: 4)
!357 = !DILocation(line: 295, column: 32, scope: !355)
!358 = !DILocation(line: 295, column: 33, scope: !355)
!359 = !DILocation(line: 295, column: 25, scope: !355)
!360 = !DILocation(line: 295, column: 23, scope: !355)
!361 = !DILocation(line: 295, column: 57, scope: !355)
!362 = !DILocation(line: 295, column: 73, scope: !355)
!363 = !DILocation(line: 295, column: 84, scope: !355)
!364 = !DILocation(line: 295, column: 88, scope: !355)
!365 = !DILocation(line: 295, column: 89, scope: !355)
!366 = !DILocation(line: 295, column: 81, scope: !355)
!367 = !DILocation(line: 295, column: 79, scope: !355)
!368 = !DILocation(line: 295, column: 53, scope: !355)
!369 = !DILocation(line: 295, column: 117, scope: !356)
!370 = !DILocation(line: 295, column: 133, scope: !356)
!371 = !DILocation(line: 295, column: 144, scope: !356)
!372 = !DILocation(line: 295, column: 148, scope: !356)
!373 = !DILocation(line: 295, column: 149, scope: !356)
!374 = !DILocation(line: 295, column: 141, scope: !356)
!375 = !DILocation(line: 295, column: 139, scope: !356)
!376 = !DILocation(line: 295, column: 113, scope: !356)
!377 = !DILocation(line: 295, column: 174, scope: !356)
!378 = !DILocation(line: 295, column: 190, scope: !356)
!379 = !DILocation(line: 295, column: 201, scope: !356)
!380 = !DILocation(line: 295, column: 205, scope: !356)
!381 = !DILocation(line: 295, column: 206, scope: !356)
!382 = !DILocation(line: 295, column: 198, scope: !356)
!383 = !DILocation(line: 295, column: 196, scope: !356)
!384 = !DILocation(line: 295, column: 170, scope: !356)
!385 = !DILocation(line: 296, column: 5, scope: !217)
!386 = !DILocation(line: 296, column: 9, scope: !217)
!387 = !DILocation(line: 296, column: 11, scope: !217)
!388 = !DILocation(line: 305, column: 12, scope: !217)
!389 = !DILocation(line: 305, column: 15, scope: !217)
!390 = !DILocation(line: 305, column: 17, scope: !217)
!391 = !DILocation(line: 305, column: 5, scope: !217)
!392 = !DILocation(line: 305, column: 8, scope: !217)
!393 = !DILocation(line: 305, column: 10, scope: !217)
!394 = !DILocation(line: 307, column: 27, scope: !217)
!395 = !DILocation(line: 307, column: 40, scope: !217)
!396 = !DILocation(line: 307, column: 43, scope: !217)
!397 = !DILocation(line: 308, column: 13, scope: !217)
!398 = !DILocation(line: 308, column: 29, scope: !217)
!399 = !DILocation(line: 308, column: 27, scope: !217)
!400 = !DILocation(line: 308, column: 44, scope: !217)
!401 = !DILocation(line: 307, column: 4, scope: !217)
!402 = !DILocation(line: 309, column: 4, scope: !217)
!403 = !DILocation(line: 312, column: 63, scope: !217)
!404 = !DILocation(line: 311, column: 4, scope: !217)
!405 = !DILocation(line: 313, column: 4, scope: !217)
!406 = !DILocation(line: 315, column: 1, scope: !165)
!407 = distinct !DISubprogram(name: "printercache_rename_blob", scope: !37, file: !37, line: 114, type: !408, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !42)
!408 = !DISubroutineType(types: !409)
!409 = !{!410, !24, !24}
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_BOOL", file: !28, line: 28, baseType: !40)
!411 = !DILocalVariable(name: "printer", arg: 1, scope: !407, file: !37, line: 114, type: !24)
!412 = !DILocation(line: 114, column: 32, scope: !407)
!413 = !DILocalVariable(name: "new_printer", arg: 2, scope: !407, file: !37, line: 114, type: !24)
!414 = !DILocation(line: 114, column: 47, scope: !407)
!415 = !DILocalVariable(name: "printer_path", scope: !407, file: !37, line: 116, type: !24)
!416 = !DILocation(line: 116, column: 8, scope: !407)
!417 = !DILocalVariable(name: "new_printer_path", scope: !407, file: !37, line: 117, type: !24)
!418 = !DILocation(line: 117, column: 8, scope: !407)
!419 = !DILocalVariable(name: "printer_maxlen", scope: !407, file: !37, line: 118, type: !40)
!420 = !DILocation(line: 118, column: 6, scope: !407)
!421 = !DILocalVariable(name: "home", scope: !407, file: !37, line: 120, type: !24)
!422 = !DILocation(line: 120, column: 8, scope: !407)
!423 = !DILocation(line: 122, column: 6, scope: !424)
!424 = distinct !DILexicalBlock(scope: !407, file: !37, line: 122, column: 6)
!425 = !DILocation(line: 122, column: 14, scope: !424)
!426 = !DILocation(line: 122, column: 6, scope: !407)
!427 = !DILocation(line: 123, column: 3, scope: !424)
!428 = !DILocation(line: 125, column: 9, scope: !407)
!429 = !DILocation(line: 125, column: 7, scope: !407)
!430 = !DILocation(line: 126, column: 6, scope: !431)
!431 = distinct !DILexicalBlock(scope: !407, file: !37, line: 126, column: 6)
!432 = !DILocation(line: 126, column: 11, scope: !431)
!433 = !DILocation(line: 126, column: 6, scope: !407)
!434 = !DILocation(line: 127, column: 3, scope: !431)
!435 = !DILocation(line: 130, column: 11, scope: !407)
!436 = !DILocation(line: 130, column: 4, scope: !407)
!437 = !DILocation(line: 131, column: 11, scope: !407)
!438 = !DILocation(line: 131, column: 4, scope: !407)
!439 = !DILocation(line: 130, column: 20, scope: !407)
!440 = !DILocation(line: 131, column: 33, scope: !441)
!441 = !DILexicalBlockFile(scope: !407, file: !37, discriminator: 1)
!442 = !DILocation(line: 131, column: 26, scope: !441)
!443 = !DILocation(line: 130, column: 4, scope: !441)
!444 = !DILocation(line: 131, column: 51, scope: !445)
!445 = !DILexicalBlockFile(scope: !407, file: !37, discriminator: 2)
!446 = !DILocation(line: 131, column: 44, scope: !445)
!447 = !DILocation(line: 130, column: 4, scope: !445)
!448 = !DILocation(line: 130, column: 4, scope: !449)
!449 = !DILexicalBlockFile(scope: !407, file: !37, discriminator: 3)
!450 = !DILocation(line: 131, column: 74, scope: !449)
!451 = !DILocation(line: 131, column: 67, scope: !449)
!452 = !DILocation(line: 131, column: 65, scope: !449)
!453 = !DILocation(line: 131, column: 80, scope: !449)
!454 = !DILocation(line: 132, column: 31, scope: !407)
!455 = !DILocation(line: 130, column: 3, scope: !449)
!456 = !DILocation(line: 129, column: 17, scope: !407)
!457 = !DILocation(line: 134, column: 34, scope: !407)
!458 = !DILocation(line: 134, column: 26, scope: !407)
!459 = !DILocation(line: 134, column: 15, scope: !407)
!460 = !DILocation(line: 135, column: 38, scope: !407)
!461 = !DILocation(line: 135, column: 30, scope: !407)
!462 = !DILocation(line: 135, column: 19, scope: !407)
!463 = !DILocation(line: 137, column: 10, scope: !407)
!464 = !DILocation(line: 137, column: 49, scope: !407)
!465 = !DILocation(line: 137, column: 55, scope: !407)
!466 = !DILocation(line: 137, column: 2, scope: !407)
!467 = !DILocation(line: 138, column: 10, scope: !407)
!468 = !DILocation(line: 138, column: 53, scope: !407)
!469 = !DILocation(line: 138, column: 59, scope: !407)
!470 = !DILocation(line: 138, column: 2, scope: !407)
!471 = !DILocation(line: 141, column: 9, scope: !407)
!472 = !DILocation(line: 141, column: 23, scope: !407)
!473 = !DILocation(line: 140, column: 2, scope: !407)
!474 = !DILocation(line: 142, column: 13, scope: !475)
!475 = distinct !DILexicalBlock(scope: !407, file: !37, line: 142, column: 6)
!476 = !DILocation(line: 142, column: 27, scope: !475)
!477 = !DILocation(line: 142, column: 6, scope: !475)
!478 = !DILocation(line: 142, column: 45, scope: !475)
!479 = !DILocation(line: 142, column: 6, scope: !407)
!480 = !DILocation(line: 145, column: 20, scope: !481)
!481 = distinct !DILexicalBlock(scope: !475, file: !37, line: 143, column: 2)
!482 = !DILocation(line: 145, column: 19, scope: !481)
!483 = !DILocation(line: 145, column: 10, scope: !484)
!484 = !DILexicalBlockFile(scope: !481, file: !37, discriminator: 1)
!485 = !DILocation(line: 144, column: 3, scope: !481)
!486 = !DILocation(line: 146, column: 9, scope: !481)
!487 = !DILocation(line: 146, column: 3, scope: !481)
!488 = !DILocation(line: 147, column: 9, scope: !481)
!489 = !DILocation(line: 147, column: 3, scope: !481)
!490 = !DILocation(line: 148, column: 3, scope: !481)
!491 = !DILocation(line: 151, column: 8, scope: !407)
!492 = !DILocation(line: 151, column: 2, scope: !407)
!493 = !DILocation(line: 152, column: 8, scope: !407)
!494 = !DILocation(line: 152, column: 2, scope: !407)
!495 = !DILocation(line: 153, column: 2, scope: !407)
!496 = !DILocation(line: 154, column: 1, scope: !407)
!497 = distinct !DISubprogram(name: "printercache_unlink_blob", scope: !37, file: !37, line: 77, type: !498, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !42)
!498 = !DISubroutineType(types: !499)
!499 = !{!410, !24}
!500 = !DILocalVariable(name: "printer", arg: 1, scope: !497, file: !37, line: 77, type: !24)
!501 = !DILocation(line: 77, column: 32, scope: !497)
!502 = !DILocalVariable(name: "path", scope: !497, file: !37, line: 79, type: !24)
!503 = !DILocation(line: 79, column: 8, scope: !497)
!504 = !DILocalVariable(name: "home", scope: !497, file: !37, line: 80, type: !24)
!505 = !DILocation(line: 80, column: 8, scope: !497)
!506 = !DILocation(line: 82, column: 6, scope: !507)
!507 = distinct !DILexicalBlock(scope: !497, file: !37, line: 82, column: 6)
!508 = !DILocation(line: 82, column: 14, scope: !507)
!509 = !DILocation(line: 82, column: 6, scope: !497)
!510 = !DILocation(line: 83, column: 3, scope: !507)
!511 = !DILocation(line: 85, column: 9, scope: !497)
!512 = !DILocation(line: 85, column: 7, scope: !497)
!513 = !DILocation(line: 86, column: 6, scope: !514)
!514 = distinct !DILexicalBlock(scope: !497, file: !37, line: 86, column: 6)
!515 = !DILocation(line: 86, column: 11, scope: !514)
!516 = !DILocation(line: 86, column: 6, scope: !497)
!517 = !DILocation(line: 87, column: 3, scope: !514)
!518 = !DILocation(line: 89, column: 33, scope: !497)
!519 = !DILocation(line: 89, column: 26, scope: !497)
!520 = !DILocation(line: 89, column: 39, scope: !497)
!521 = !DILocation(line: 89, column: 78, scope: !497)
!522 = !DILocation(line: 89, column: 71, scope: !523)
!523 = !DILexicalBlockFile(scope: !497, file: !37, discriminator: 1)
!524 = !DILocation(line: 89, column: 69, scope: !497)
!525 = !DILocation(line: 89, column: 87, scope: !497)
!526 = !DILocation(line: 90, column: 37, scope: !497)
!527 = !DILocation(line: 89, column: 18, scope: !528)
!528 = !DILexicalBlockFile(scope: !497, file: !37, discriminator: 2)
!529 = !DILocation(line: 89, column: 7, scope: !497)
!530 = !DILocation(line: 92, column: 10, scope: !497)
!531 = !DILocation(line: 92, column: 62, scope: !497)
!532 = !DILocation(line: 92, column: 68, scope: !497)
!533 = !DILocation(line: 92, column: 2, scope: !497)
!534 = !DILocation(line: 94, column: 13, scope: !535)
!535 = distinct !DILexicalBlock(scope: !497, file: !37, line: 94, column: 6)
!536 = !DILocation(line: 94, column: 6, scope: !535)
!537 = !DILocation(line: 94, column: 19, scope: !535)
!538 = !DILocation(line: 94, column: 6, scope: !497)
!539 = !DILocation(line: 96, column: 9, scope: !540)
!540 = distinct !DILexicalBlock(scope: !535, file: !37, line: 95, column: 2)
!541 = !DILocation(line: 96, column: 3, scope: !540)
!542 = !DILocation(line: 97, column: 3, scope: !540)
!543 = !DILocation(line: 100, column: 10, scope: !497)
!544 = !DILocation(line: 100, column: 41, scope: !497)
!545 = !DILocation(line: 100, column: 47, scope: !497)
!546 = !DILocation(line: 100, column: 2, scope: !497)
!547 = !DILocation(line: 102, column: 12, scope: !548)
!548 = distinct !DILexicalBlock(scope: !497, file: !37, line: 102, column: 6)
!549 = !DILocation(line: 102, column: 6, scope: !548)
!550 = !DILocation(line: 102, column: 18, scope: !548)
!551 = !DILocation(line: 102, column: 6, scope: !497)
!552 = !DILocation(line: 104, column: 9, scope: !553)
!553 = distinct !DILexicalBlock(scope: !548, file: !37, line: 103, column: 2)
!554 = !DILocation(line: 104, column: 3, scope: !553)
!555 = !DILocation(line: 105, column: 3, scope: !553)
!556 = !DILocation(line: 108, column: 8, scope: !497)
!557 = !DILocation(line: 108, column: 2, scope: !497)
!558 = !DILocation(line: 109, column: 2, scope: !497)
!559 = !DILocation(line: 110, column: 1, scope: !497)
!560 = distinct !DISubprogram(name: "printercache_save_blob", scope: !37, file: !37, line: 198, type: !561, isLocal: true, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !42)
!561 = !DISubroutineType(types: !562)
!562 = !{null, !24, !26, !31}
!563 = !DILocalVariable(name: "printer_name", arg: 1, scope: !560, file: !37, line: 198, type: !24)
!564 = !DILocation(line: 198, column: 30, scope: !560)
!565 = !DILocalVariable(name: "data", arg: 2, scope: !560, file: !37, line: 198, type: !26)
!566 = !DILocation(line: 198, column: 52, scope: !560)
!567 = !DILocalVariable(name: "length", arg: 3, scope: !560, file: !37, line: 198, type: !31)
!568 = !DILocation(line: 198, column: 65, scope: !560)
!569 = !DILocalVariable(name: "home", scope: !560, file: !37, line: 200, type: !24)
!570 = !DILocation(line: 200, column: 8, scope: !560)
!571 = !DILocalVariable(name: "path", scope: !560, file: !37, line: 200, type: !24)
!572 = !DILocation(line: 200, column: 15, scope: !560)
!573 = !DILocalVariable(name: "fd", scope: !560, file: !37, line: 201, type: !40)
!574 = !DILocation(line: 201, column: 6, scope: !560)
!575 = !DILocation(line: 203, column: 6, scope: !576)
!576 = distinct !DILexicalBlock(scope: !560, file: !37, line: 203, column: 6)
!577 = !DILocation(line: 203, column: 19, scope: !576)
!578 = !DILocation(line: 203, column: 6, scope: !560)
!579 = !DILocation(line: 204, column: 3, scope: !576)
!580 = !DILocation(line: 206, column: 9, scope: !560)
!581 = !DILocation(line: 206, column: 7, scope: !560)
!582 = !DILocation(line: 207, column: 6, scope: !583)
!583 = distinct !DILexicalBlock(scope: !560, file: !37, line: 207, column: 6)
!584 = !DILocation(line: 207, column: 11, scope: !583)
!585 = !DILocation(line: 207, column: 6, scope: !560)
!586 = !DILocation(line: 208, column: 3, scope: !583)
!587 = !DILocation(line: 210, column: 26, scope: !588)
!588 = distinct !DILexicalBlock(scope: !560, file: !37, line: 210, column: 6)
!589 = !DILocation(line: 210, column: 32, scope: !588)
!590 = !DILocation(line: 210, column: 7, scope: !588)
!591 = !DILocation(line: 210, column: 6, scope: !560)
!592 = !DILocation(line: 211, column: 3, scope: !588)
!593 = !DILocation(line: 213, column: 33, scope: !560)
!594 = !DILocation(line: 213, column: 26, scope: !560)
!595 = !DILocation(line: 213, column: 39, scope: !560)
!596 = !DILocation(line: 213, column: 78, scope: !560)
!597 = !DILocation(line: 213, column: 71, scope: !598)
!598 = !DILexicalBlockFile(scope: !560, file: !37, discriminator: 1)
!599 = !DILocation(line: 213, column: 69, scope: !560)
!600 = !DILocation(line: 213, column: 92, scope: !560)
!601 = !DILocation(line: 214, column: 37, scope: !560)
!602 = !DILocation(line: 213, column: 18, scope: !603)
!603 = !DILexicalBlockFile(scope: !560, file: !37, discriminator: 2)
!604 = !DILocation(line: 213, column: 7, scope: !560)
!605 = !DILocation(line: 215, column: 10, scope: !560)
!606 = !DILocation(line: 215, column: 62, scope: !560)
!607 = !DILocation(line: 215, column: 68, scope: !560)
!608 = !DILocation(line: 215, column: 2, scope: !560)
!609 = !DILocation(line: 217, column: 12, scope: !560)
!610 = !DILocation(line: 217, column: 7, scope: !560)
!611 = !DILocation(line: 217, column: 5, scope: !560)
!612 = !DILocation(line: 218, column: 6, scope: !613)
!613 = distinct !DILexicalBlock(scope: !560, file: !37, line: 218, column: 6)
!614 = !DILocation(line: 218, column: 9, scope: !613)
!615 = !DILocation(line: 218, column: 6, scope: !560)
!616 = !DILocation(line: 220, column: 80, scope: !617)
!617 = distinct !DILexicalBlock(scope: !613, file: !37, line: 219, column: 2)
!618 = !DILocation(line: 220, column: 79, scope: !617)
!619 = !DILocation(line: 220, column: 70, scope: !620)
!620 = !DILexicalBlockFile(scope: !617, file: !37, discriminator: 1)
!621 = !DILocation(line: 220, column: 3, scope: !622)
!622 = !DILexicalBlockFile(scope: !617, file: !37, discriminator: 2)
!623 = !DILocation(line: 221, column: 9, scope: !617)
!624 = !DILocation(line: 221, column: 3, scope: !617)
!625 = !DILocation(line: 222, column: 3, scope: !617)
!626 = !DILocation(line: 225, column: 12, scope: !627)
!627 = distinct !DILexicalBlock(scope: !560, file: !37, line: 225, column: 6)
!628 = !DILocation(line: 225, column: 16, scope: !627)
!629 = !DILocation(line: 225, column: 22, scope: !627)
!630 = !DILocation(line: 225, column: 6, scope: !627)
!631 = !DILocation(line: 225, column: 33, scope: !627)
!632 = !DILocation(line: 225, column: 30, scope: !627)
!633 = !DILocation(line: 225, column: 6, scope: !560)
!634 = !DILocation(line: 228, column: 20, scope: !635)
!635 = distinct !DILexicalBlock(scope: !627, file: !37, line: 226, column: 2)
!636 = !DILocation(line: 228, column: 19, scope: !635)
!637 = !DILocation(line: 228, column: 10, scope: !638)
!638 = !DILexicalBlockFile(scope: !635, file: !37, discriminator: 1)
!639 = !DILocation(line: 227, column: 3, scope: !635)
!640 = !DILocation(line: 229, column: 10, scope: !635)
!641 = !DILocation(line: 229, column: 3, scope: !635)
!642 = !DILocation(line: 230, column: 2, scope: !635)
!643 = !DILocation(line: 232, column: 8, scope: !560)
!644 = !DILocation(line: 232, column: 2, scope: !560)
!645 = !DILocation(line: 233, column: 8, scope: !560)
!646 = !DILocation(line: 233, column: 2, scope: !560)
!647 = !DILocation(line: 234, column: 1, scope: !560)
!648 = !DILocation(line: 234, column: 1, scope: !598)
!649 = distinct !DISubprogram(name: "printercache_mkdir", scope: !37, file: !37, line: 41, type: !408, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !42)
!650 = !DILocalVariable(name: "base", arg: 1, scope: !649, file: !37, line: 41, type: !24)
!651 = !DILocation(line: 41, column: 26, scope: !649)
!652 = !DILocalVariable(name: "printer", arg: 2, scope: !649, file: !37, line: 41, type: !24)
!653 = !DILocation(line: 41, column: 38, scope: !649)
!654 = !DILocalVariable(name: "path", scope: !649, file: !37, line: 43, type: !24)
!655 = !DILocation(line: 43, column: 8, scope: !649)
!656 = !DILocation(line: 45, column: 33, scope: !649)
!657 = !DILocation(line: 45, column: 26, scope: !649)
!658 = !DILocation(line: 45, column: 39, scope: !649)
!659 = !DILocation(line: 45, column: 78, scope: !649)
!660 = !DILocation(line: 45, column: 71, scope: !661)
!661 = !DILexicalBlockFile(scope: !649, file: !37, discriminator: 1)
!662 = !DILocation(line: 45, column: 69, scope: !649)
!663 = !DILocation(line: 45, column: 87, scope: !649)
!664 = !DILocation(line: 45, column: 18, scope: !665)
!665 = !DILexicalBlockFile(scope: !649, file: !37, discriminator: 2)
!666 = !DILocation(line: 45, column: 7, scope: !649)
!667 = !DILocation(line: 47, column: 10, scope: !649)
!668 = !DILocation(line: 47, column: 32, scope: !649)
!669 = !DILocation(line: 47, column: 2, scope: !649)
!670 = !DILocation(line: 48, column: 13, scope: !671)
!671 = distinct !DILexicalBlock(scope: !649, file: !37, line: 48, column: 6)
!672 = !DILocation(line: 48, column: 7, scope: !671)
!673 = !DILocation(line: 48, column: 25, scope: !671)
!674 = !DILocation(line: 48, column: 32, scope: !671)
!675 = !DILocation(line: 48, column: 36, scope: !676)
!676 = !DILexicalBlockFile(scope: !671, file: !37, discriminator: 1)
!677 = !DILocation(line: 48, column: 35, scope: !676)
!678 = !DILocation(line: 48, column: 40, scope: !676)
!679 = !DILocation(line: 48, column: 6, scope: !676)
!680 = !DILocation(line: 50, column: 77, scope: !681)
!681 = distinct !DILexicalBlock(scope: !671, file: !37, line: 49, column: 2)
!682 = !DILocation(line: 50, column: 76, scope: !681)
!683 = !DILocation(line: 50, column: 67, scope: !684)
!684 = !DILexicalBlockFile(scope: !681, file: !37, discriminator: 1)
!685 = !DILocation(line: 50, column: 3, scope: !686)
!686 = !DILexicalBlockFile(scope: !681, file: !37, discriminator: 2)
!687 = !DILocation(line: 51, column: 9, scope: !681)
!688 = !DILocation(line: 51, column: 3, scope: !681)
!689 = !DILocation(line: 52, column: 3, scope: !681)
!690 = !DILocation(line: 55, column: 9, scope: !649)
!691 = !DILocation(line: 55, column: 2, scope: !649)
!692 = !DILocation(line: 56, column: 13, scope: !693)
!693 = distinct !DILexicalBlock(scope: !649, file: !37, line: 56, column: 6)
!694 = !DILocation(line: 56, column: 7, scope: !693)
!695 = !DILocation(line: 56, column: 25, scope: !693)
!696 = !DILocation(line: 56, column: 32, scope: !693)
!697 = !DILocation(line: 56, column: 36, scope: !698)
!698 = !DILexicalBlockFile(scope: !693, file: !37, discriminator: 1)
!699 = !DILocation(line: 56, column: 35, scope: !698)
!700 = !DILocation(line: 56, column: 40, scope: !698)
!701 = !DILocation(line: 56, column: 6, scope: !698)
!702 = !DILocation(line: 58, column: 77, scope: !703)
!703 = distinct !DILexicalBlock(scope: !693, file: !37, line: 57, column: 2)
!704 = !DILocation(line: 58, column: 76, scope: !703)
!705 = !DILocation(line: 58, column: 67, scope: !706)
!706 = !DILexicalBlockFile(scope: !703, file: !37, discriminator: 1)
!707 = !DILocation(line: 58, column: 3, scope: !708)
!708 = !DILexicalBlockFile(scope: !703, file: !37, discriminator: 2)
!709 = !DILocation(line: 59, column: 9, scope: !703)
!710 = !DILocation(line: 59, column: 3, scope: !703)
!711 = !DILocation(line: 60, column: 3, scope: !703)
!712 = !DILocation(line: 63, column: 9, scope: !649)
!713 = !DILocation(line: 63, column: 2, scope: !649)
!714 = !DILocation(line: 64, column: 9, scope: !649)
!715 = !DILocation(line: 64, column: 15, scope: !649)
!716 = !DILocation(line: 64, column: 2, scope: !649)
!717 = !DILocation(line: 65, column: 13, scope: !718)
!718 = distinct !DILexicalBlock(scope: !649, file: !37, line: 65, column: 6)
!719 = !DILocation(line: 65, column: 7, scope: !718)
!720 = !DILocation(line: 65, column: 25, scope: !718)
!721 = !DILocation(line: 65, column: 32, scope: !718)
!722 = !DILocation(line: 65, column: 36, scope: !723)
!723 = !DILexicalBlockFile(scope: !718, file: !37, discriminator: 1)
!724 = !DILocation(line: 65, column: 35, scope: !723)
!725 = !DILocation(line: 65, column: 40, scope: !723)
!726 = !DILocation(line: 65, column: 6, scope: !723)
!727 = !DILocation(line: 67, column: 77, scope: !728)
!728 = distinct !DILexicalBlock(scope: !718, file: !37, line: 66, column: 2)
!729 = !DILocation(line: 67, column: 76, scope: !728)
!730 = !DILocation(line: 67, column: 67, scope: !731)
!731 = !DILexicalBlockFile(scope: !728, file: !37, discriminator: 1)
!732 = !DILocation(line: 67, column: 3, scope: !733)
!733 = !DILexicalBlockFile(scope: !728, file: !37, discriminator: 2)
!734 = !DILocation(line: 68, column: 9, scope: !728)
!735 = !DILocation(line: 68, column: 3, scope: !728)
!736 = !DILocation(line: 69, column: 3, scope: !728)
!737 = !DILocation(line: 72, column: 8, scope: !649)
!738 = !DILocation(line: 72, column: 2, scope: !649)
!739 = !DILocation(line: 73, column: 2, scope: !649)
!740 = !DILocation(line: 74, column: 1, scope: !649)
