; ModuleID = './[inter]pstcache.o.i'
source_filename = "./[inter]pstcache.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._PSTCACHE_CELLHEADER = type { [8 x i8], i8, i8, i16, i32 }

@g_pstcache_enumerated = global i32 0, align 4
@zero_key = global [8 x i8] zeroinitializer, align 1
@g_pstcache_fd = common global [8 x i32] zeroinitializer, align 16
@g_pstcache_Bpp = common global i32 0, align 4
@g_bitmap_cache_persist_enable = external global i32, align 4
@.str = private unnamed_addr constant [70 x i8] c"pstcache_load_bitmap(), load bitmap from disk: id=%d, idx=%d, bmp=%p)\00", align 1
@g_bitmap_cache = external global i32, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"pstcache_enumerate(), start enumeration\00", align 1
@g_bitmap_cache_precache = external global i32, align 4
@g_server_depth = external global i32, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"pstcache_enumerate(), %d cached bitmaps\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"pstcache_init(), failed to get/make cache directory, disabling feature\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"cache/pstcache_%d_%d\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"pstcache_init(), bitmap cache file %s\00", align 1
@.str.6 = private unnamed_addr constant [73 x i8] c"pstcache_init(), failed to lock persistent cache file, disabling feature\00", align 1

; Function Attrs: nounwind uwtable
define void @pstcache_touch_bitmap(i8 zeroext, i16 zeroext, i32) #0 !dbg !42 {
  %4 = alloca i8, align 1
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !50, metadata !51), !dbg !52
  store i16 %1, i16* %5, align 2
  call void @llvm.dbg.declare(metadata i16* %5, metadata !53, metadata !51), !dbg !54
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !55, metadata !51), !dbg !56
  call void @llvm.dbg.declare(metadata i32* %7, metadata !57, metadata !51), !dbg !58
  %8 = load i8, i8* %4, align 1, !dbg !59
  %9 = zext i8 %8 to i32, !dbg !59
  %10 = icmp slt i32 %9, 8, !dbg !61
  br i1 %10, label %11, label %21, !dbg !62

; <label>:11:                                     ; preds = %3
  %12 = load i8, i8* %4, align 1, !dbg !63
  %13 = zext i8 %12 to i64, !dbg !65
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* @g_pstcache_fd, i64 0, i64 %13, !dbg !65
  %15 = load i32, i32* %14, align 4, !dbg !65
  %16 = icmp sgt i32 %15, 0, !dbg !66
  br i1 %16, label %17, label %21, !dbg !67

; <label>:17:                                     ; preds = %11
  %18 = load i16, i16* %5, align 2, !dbg !68
  %19 = zext i16 %18 to i32, !dbg !68
  %20 = icmp sge i32 %19, 2550, !dbg !70
  br i1 %20, label %21, label %22, !dbg !71

; <label>:21:                                     ; preds = %17, %11, %3
  br label %41, !dbg !72

; <label>:22:                                     ; preds = %17
  %23 = load i8, i8* %4, align 1, !dbg !73
  %24 = zext i8 %23 to i64, !dbg !74
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* @g_pstcache_fd, i64 0, i64 %24, !dbg !74
  %26 = load i32, i32* %25, align 4, !dbg !74
  store i32 %26, i32* %7, align 4, !dbg !75
  %27 = load i32, i32* %7, align 4, !dbg !76
  %28 = load i16, i16* %5, align 2, !dbg !77
  %29 = zext i16 %28 to i64, !dbg !77
  %30 = load i32, i32* @g_pstcache_Bpp, align 4, !dbg !78
  %31 = mul nsw i32 %30, 4096, !dbg !79
  %32 = sext i32 %31 to i64, !dbg !78
  %33 = add i64 %32, 16, !dbg !80
  %34 = mul i64 %29, %33, !dbg !81
  %35 = add i64 12, %34, !dbg !82
  %36 = trunc i64 %35 to i32, !dbg !83
  %37 = call i32 @rd_lseek_file(i32 %27, i32 %36), !dbg !84
  %38 = load i32, i32* %7, align 4, !dbg !85
  %39 = bitcast i32* %6 to i8*, !dbg !86
  %40 = call i32 @rd_write_file(i32 %38, i8* %39, i32 4), !dbg !87
  br label %41, !dbg !88

; <label>:41:                                     ; preds = %22, %21
  ret void, !dbg !89
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @rd_lseek_file(i32, i32) #2

declare i32 @rd_write_file(i32, i8*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @pstcache_load_bitmap(i8 zeroext, i16 zeroext) #0 !dbg !91 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._PSTCACHE_CELLHEADER, align 4
  %9 = alloca i8*, align 8
  store i8 %0, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !94, metadata !51), !dbg !95
  store i16 %1, i16* %5, align 2
  call void @llvm.dbg.declare(metadata i16* %5, metadata !96, metadata !51), !dbg !97
  call void @llvm.dbg.declare(metadata i8** %6, metadata !98, metadata !51), !dbg !99
  call void @llvm.dbg.declare(metadata i32* %7, metadata !100, metadata !51), !dbg !101
  call void @llvm.dbg.declare(metadata %struct._PSTCACHE_CELLHEADER* %8, metadata !102, metadata !51), !dbg !112
  call void @llvm.dbg.declare(metadata i8** %9, metadata !113, metadata !51), !dbg !116
  %10 = load i32, i32* @g_bitmap_cache_persist_enable, align 4, !dbg !117
  %11 = icmp ne i32 %10, 0, !dbg !117
  br i1 %11, label %13, label %12, !dbg !119

; <label>:12:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !120
  br label %73, !dbg !120

; <label>:13:                                     ; preds = %2
  %14 = load i8, i8* %4, align 1, !dbg !121
  %15 = zext i8 %14 to i32, !dbg !121
  %16 = icmp slt i32 %15, 8, !dbg !123
  br i1 %16, label %17, label %27, !dbg !124

; <label>:17:                                     ; preds = %13
  %18 = load i8, i8* %4, align 1, !dbg !125
  %19 = zext i8 %18 to i64, !dbg !127
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* @g_pstcache_fd, i64 0, i64 %19, !dbg !127
  %21 = load i32, i32* %20, align 4, !dbg !127
  %22 = icmp sgt i32 %21, 0, !dbg !128
  br i1 %22, label %23, label %27, !dbg !129

; <label>:23:                                     ; preds = %17
  %24 = load i16, i16* %5, align 2, !dbg !130
  %25 = zext i16 %24 to i32, !dbg !130
  %26 = icmp sge i32 %25, 2550, !dbg !132
  br i1 %26, label %27, label %28, !dbg !133

; <label>:27:                                     ; preds = %23, %17, %13
  store i32 0, i32* %3, align 4, !dbg !134
  br label %73, !dbg !134

; <label>:28:                                     ; preds = %23
  %29 = load i8, i8* %4, align 1, !dbg !135
  %30 = zext i8 %29 to i64, !dbg !136
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* @g_pstcache_fd, i64 0, i64 %30, !dbg !136
  %32 = load i32, i32* %31, align 4, !dbg !136
  store i32 %32, i32* %7, align 4, !dbg !137
  %33 = load i32, i32* %7, align 4, !dbg !138
  %34 = load i16, i16* %5, align 2, !dbg !139
  %35 = zext i16 %34 to i64, !dbg !139
  %36 = load i32, i32* @g_pstcache_Bpp, align 4, !dbg !140
  %37 = mul nsw i32 %36, 4096, !dbg !141
  %38 = sext i32 %37 to i64, !dbg !140
  %39 = add i64 %38, 16, !dbg !142
  %40 = mul i64 %35, %39, !dbg !143
  %41 = trunc i64 %40 to i32, !dbg !139
  %42 = call i32 @rd_lseek_file(i32 %33, i32 %41), !dbg !144
  %43 = load i32, i32* %7, align 4, !dbg !145
  %44 = bitcast %struct._PSTCACHE_CELLHEADER* %8 to i8*, !dbg !146
  %45 = call i32 @rd_read_file(i32 %43, i8* %44, i32 16), !dbg !147
  %46 = getelementptr inbounds %struct._PSTCACHE_CELLHEADER, %struct._PSTCACHE_CELLHEADER* %8, i32 0, i32 3, !dbg !148
  %47 = load i16, i16* %46, align 2, !dbg !148
  %48 = zext i16 %47 to i32, !dbg !149
  %49 = call i8* @xmalloc(i32 %48), !dbg !150
  store i8* %49, i8** %6, align 8, !dbg !151
  %50 = load i32, i32* %7, align 4, !dbg !152
  %51 = load i8*, i8** %6, align 8, !dbg !153
  %52 = getelementptr inbounds %struct._PSTCACHE_CELLHEADER, %struct._PSTCACHE_CELLHEADER* %8, i32 0, i32 3, !dbg !154
  %53 = load i16, i16* %52, align 2, !dbg !154
  %54 = zext i16 %53 to i32, !dbg !155
  %55 = call i32 @rd_read_file(i32 %50, i8* %51, i32 %54), !dbg !156
  %56 = getelementptr inbounds %struct._PSTCACHE_CELLHEADER, %struct._PSTCACHE_CELLHEADER* %8, i32 0, i32 1, !dbg !157
  %57 = load i8, i8* %56, align 4, !dbg !157
  %58 = zext i8 %57 to i32, !dbg !158
  %59 = getelementptr inbounds %struct._PSTCACHE_CELLHEADER, %struct._PSTCACHE_CELLHEADER* %8, i32 0, i32 2, !dbg !159
  %60 = load i8, i8* %59, align 1, !dbg !159
  %61 = zext i8 %60 to i32, !dbg !160
  %62 = load i8*, i8** %6, align 8, !dbg !161
  %63 = call i8* @ui_create_bitmap(i32 %58, i32 %61, i8* %62), !dbg !162
  store i8* %63, i8** %9, align 8, !dbg !163
  %64 = load i8, i8* %4, align 1, !dbg !164
  %65 = zext i8 %64 to i32, !dbg !164
  %66 = load i16, i16* %5, align 2, !dbg !165
  %67 = zext i16 %66 to i32, !dbg !165
  %68 = load i8*, i8** %9, align 8, !dbg !166
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 0, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i32 0, i32 0), i32 %65, i32 %67, i8* %68), !dbg !167
  %69 = load i8, i8* %4, align 1, !dbg !168
  %70 = load i16, i16* %5, align 2, !dbg !169
  %71 = load i8*, i8** %9, align 8, !dbg !170
  call void @cache_put_bitmap(i8 zeroext %69, i16 zeroext %70, i8* %71), !dbg !171
  %72 = load i8*, i8** %6, align 8, !dbg !172
  call void @xfree(i8* %72), !dbg !173
  store i32 1, i32* %3, align 4, !dbg !174
  br label %73, !dbg !174

; <label>:73:                                     ; preds = %28, %27, %12
  %74 = load i32, i32* %3, align 4, !dbg !175
  ret i32 %74, !dbg !175
}

declare i32 @rd_read_file(i32, i8*, i32) #2

declare i8* @xmalloc(i32) #2

declare i8* @ui_create_bitmap(i32, i32, i8*) #2

declare void @logger(i32, i32, i8*, ...) #2

declare void @cache_put_bitmap(i8 zeroext, i16 zeroext, i8*) #2

declare void @xfree(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @pstcache_save_bitmap(i8 zeroext, i16 zeroext, i8*, i8 zeroext, i8 zeroext, i16 zeroext, i8*) #0 !dbg !176 {
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i16, align 2
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i16, align 2
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct._PSTCACHE_CELLHEADER, align 4
  store i8 %0, i8* %9, align 1
  call void @llvm.dbg.declare(metadata i8* %9, metadata !179, metadata !51), !dbg !180
  store i16 %1, i16* %10, align 2
  call void @llvm.dbg.declare(metadata i16* %10, metadata !181, metadata !51), !dbg !182
  store i8* %2, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !183, metadata !51), !dbg !184
  store i8 %3, i8* %12, align 1
  call void @llvm.dbg.declare(metadata i8* %12, metadata !185, metadata !51), !dbg !186
  store i8 %4, i8* %13, align 1
  call void @llvm.dbg.declare(metadata i8* %13, metadata !187, metadata !51), !dbg !188
  store i16 %5, i16* %14, align 2
  call void @llvm.dbg.declare(metadata i16* %14, metadata !189, metadata !51), !dbg !190
  store i8* %6, i8** %15, align 8
  call void @llvm.dbg.declare(metadata i8** %15, metadata !191, metadata !51), !dbg !192
  call void @llvm.dbg.declare(metadata i32* %16, metadata !193, metadata !51), !dbg !194
  call void @llvm.dbg.declare(metadata %struct._PSTCACHE_CELLHEADER* %17, metadata !195, metadata !51), !dbg !196
  %18 = load i8, i8* %9, align 1, !dbg !197
  %19 = zext i8 %18 to i32, !dbg !197
  %20 = icmp slt i32 %19, 8, !dbg !199
  br i1 %20, label %21, label %31, !dbg !200

; <label>:21:                                     ; preds = %7
  %22 = load i8, i8* %9, align 1, !dbg !201
  %23 = zext i8 %22 to i64, !dbg !203
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* @g_pstcache_fd, i64 0, i64 %23, !dbg !203
  %25 = load i32, i32* %24, align 4, !dbg !203
  %26 = icmp sgt i32 %25, 0, !dbg !204
  br i1 %26, label %27, label %31, !dbg !205

; <label>:27:                                     ; preds = %21
  %28 = load i16, i16* %10, align 2, !dbg !206
  %29 = zext i16 %28 to i32, !dbg !206
  %30 = icmp sge i32 %29, 2550, !dbg !208
  br i1 %30, label %31, label %32, !dbg !209

; <label>:31:                                     ; preds = %27, %21, %7
  store i32 0, i32* %8, align 4, !dbg !210
  br label %65, !dbg !210

; <label>:32:                                     ; preds = %27
  %33 = getelementptr inbounds %struct._PSTCACHE_CELLHEADER, %struct._PSTCACHE_CELLHEADER* %17, i32 0, i32 0, !dbg !211
  %34 = getelementptr inbounds [8 x i8], [8 x i8]* %33, i32 0, i32 0, !dbg !212
  %35 = load i8*, i8** %11, align 8, !dbg !213
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 8, i32 1, i1 false), !dbg !212
  %36 = load i8, i8* %12, align 1, !dbg !214
  %37 = getelementptr inbounds %struct._PSTCACHE_CELLHEADER, %struct._PSTCACHE_CELLHEADER* %17, i32 0, i32 1, !dbg !215
  store i8 %36, i8* %37, align 4, !dbg !216
  %38 = load i8, i8* %13, align 1, !dbg !217
  %39 = getelementptr inbounds %struct._PSTCACHE_CELLHEADER, %struct._PSTCACHE_CELLHEADER* %17, i32 0, i32 2, !dbg !218
  store i8 %38, i8* %39, align 1, !dbg !219
  %40 = load i16, i16* %14, align 2, !dbg !220
  %41 = getelementptr inbounds %struct._PSTCACHE_CELLHEADER, %struct._PSTCACHE_CELLHEADER* %17, i32 0, i32 3, !dbg !221
  store i16 %40, i16* %41, align 2, !dbg !222
  %42 = getelementptr inbounds %struct._PSTCACHE_CELLHEADER, %struct._PSTCACHE_CELLHEADER* %17, i32 0, i32 4, !dbg !223
  store i32 0, i32* %42, align 4, !dbg !224
  %43 = load i8, i8* %9, align 1, !dbg !225
  %44 = zext i8 %43 to i64, !dbg !226
  %45 = getelementptr inbounds [8 x i32], [8 x i32]* @g_pstcache_fd, i64 0, i64 %44, !dbg !226
  %46 = load i32, i32* %45, align 4, !dbg !226
  store i32 %46, i32* %16, align 4, !dbg !227
  %47 = load i32, i32* %16, align 4, !dbg !228
  %48 = load i16, i16* %10, align 2, !dbg !229
  %49 = zext i16 %48 to i64, !dbg !229
  %50 = load i32, i32* @g_pstcache_Bpp, align 4, !dbg !230
  %51 = mul nsw i32 %50, 4096, !dbg !231
  %52 = sext i32 %51 to i64, !dbg !230
  %53 = add i64 %52, 16, !dbg !232
  %54 = mul i64 %49, %53, !dbg !233
  %55 = trunc i64 %54 to i32, !dbg !229
  %56 = call i32 @rd_lseek_file(i32 %47, i32 %55), !dbg !234
  %57 = load i32, i32* %16, align 4, !dbg !235
  %58 = bitcast %struct._PSTCACHE_CELLHEADER* %17 to i8*, !dbg !236
  %59 = call i32 @rd_write_file(i32 %57, i8* %58, i32 16), !dbg !237
  %60 = load i32, i32* %16, align 4, !dbg !238
  %61 = load i8*, i8** %15, align 8, !dbg !239
  %62 = load i16, i16* %14, align 2, !dbg !240
  %63 = zext i16 %62 to i32, !dbg !240
  %64 = call i32 @rd_write_file(i32 %60, i8* %61, i32 %63), !dbg !241
  store i32 1, i32* %8, align 4, !dbg !242
  br label %65, !dbg !242

; <label>:65:                                     ; preds = %32, %31
  %66 = load i32, i32* %8, align 4, !dbg !243
  ret i32 %66, !dbg !243
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define i32 @pstcache_enumerate(i8 zeroext, [8 x i8]*) #0 !dbg !244 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca [8 x i8]*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca [2560 x i16], align 16
  %10 = alloca [2560 x i32], align 16
  %11 = alloca %struct._PSTCACHE_CELLHEADER, align 4
  store i8 %0, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !248, metadata !51), !dbg !249
  store [8 x i8]* %1, [8 x i8]** %5, align 8
  call void @llvm.dbg.declare(metadata [8 x i8]** %5, metadata !250, metadata !51), !dbg !251
  call void @llvm.dbg.declare(metadata i32* %6, metadata !252, metadata !51), !dbg !253
  call void @llvm.dbg.declare(metadata i32* %7, metadata !254, metadata !51), !dbg !255
  call void @llvm.dbg.declare(metadata i16* %8, metadata !256, metadata !51), !dbg !257
  call void @llvm.dbg.declare(metadata [2560 x i16]* %9, metadata !258, metadata !51), !dbg !264
  call void @llvm.dbg.declare(metadata [2560 x i32]* %10, metadata !265, metadata !51), !dbg !267
  call void @llvm.dbg.declare(metadata %struct._PSTCACHE_CELLHEADER* %11, metadata !268, metadata !51), !dbg !269
  %12 = load i32, i32* @g_bitmap_cache, align 4, !dbg !270
  %13 = icmp ne i32 %12, 0, !dbg !270
  br i1 %13, label %14, label %27, !dbg !272

; <label>:14:                                     ; preds = %2
  %15 = load i32, i32* @g_bitmap_cache_persist_enable, align 4, !dbg !273
  %16 = icmp ne i32 %15, 0, !dbg !273
  br i1 %16, label %17, label %27, !dbg !275

; <label>:17:                                     ; preds = %14
  %18 = load i8, i8* %4, align 1, !dbg !276
  %19 = zext i8 %18 to i32, !dbg !276
  %20 = icmp slt i32 %19, 8, !dbg !278
  br i1 %20, label %21, label %27, !dbg !279

; <label>:21:                                     ; preds = %17
  %22 = load i8, i8* %4, align 1, !dbg !280
  %23 = zext i8 %22 to i64, !dbg !282
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* @g_pstcache_fd, i64 0, i64 %23, !dbg !282
  %25 = load i32, i32* %24, align 4, !dbg !282
  %26 = icmp sgt i32 %25, 0, !dbg !283
  br i1 %26, label %28, label %27, !dbg !284

; <label>:27:                                     ; preds = %21, %17, %14, %2
  store i32 0, i32* %3, align 4, !dbg !285
  br label %144, !dbg !285

; <label>:28:                                     ; preds = %21
  %29 = load i32, i32* @g_pstcache_enumerated, align 4, !dbg !286
  %30 = icmp ne i32 %29, 0, !dbg !286
  br i1 %30, label %31, label %32, !dbg !288

; <label>:31:                                     ; preds = %28
  store i32 0, i32* %3, align 4, !dbg !289
  br label %144, !dbg !289

; <label>:32:                                     ; preds = %28
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i32 0, i32 0)), !dbg !290
  store i16 0, i16* %8, align 2, !dbg !291
  br label %33, !dbg !293

; <label>:33:                                     ; preds = %132, %32
  %34 = load i16, i16* %8, align 2, !dbg !294
  %35 = zext i16 %34 to i32, !dbg !294
  %36 = icmp slt i32 %35, 2550, !dbg !297
  br i1 %36, label %37, label %135, !dbg !298

; <label>:37:                                     ; preds = %33
  %38 = load i8, i8* %4, align 1, !dbg !299
  %39 = zext i8 %38 to i64, !dbg !301
  %40 = getelementptr inbounds [8 x i32], [8 x i32]* @g_pstcache_fd, i64 0, i64 %39, !dbg !301
  %41 = load i32, i32* %40, align 4, !dbg !301
  store i32 %41, i32* %6, align 4, !dbg !302
  %42 = load i32, i32* %6, align 4, !dbg !303
  %43 = load i16, i16* %8, align 2, !dbg !304
  %44 = zext i16 %43 to i64, !dbg !304
  %45 = load i32, i32* @g_pstcache_Bpp, align 4, !dbg !305
  %46 = mul nsw i32 %45, 4096, !dbg !306
  %47 = sext i32 %46 to i64, !dbg !305
  %48 = add i64 %47, 16, !dbg !307
  %49 = mul i64 %44, %48, !dbg !308
  %50 = trunc i64 %49 to i32, !dbg !304
  %51 = call i32 @rd_lseek_file(i32 %42, i32 %50), !dbg !309
  %52 = load i32, i32* %6, align 4, !dbg !310
  %53 = bitcast %struct._PSTCACHE_CELLHEADER* %11 to i8*, !dbg !312
  %54 = call i32 @rd_read_file(i32 %52, i8* %53, i32 16), !dbg !313
  %55 = icmp sle i32 %54, 0, !dbg !314
  br i1 %55, label %56, label %57, !dbg !315

; <label>:56:                                     ; preds = %37
  br label %135, !dbg !316

; <label>:57:                                     ; preds = %37
  %58 = getelementptr inbounds %struct._PSTCACHE_CELLHEADER, %struct._PSTCACHE_CELLHEADER* %11, i32 0, i32 0, !dbg !317
  %59 = getelementptr inbounds [8 x i8], [8 x i8]* %58, i32 0, i32 0, !dbg !319
  %60 = call i32 @memcmp(i8* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @zero_key, i32 0, i32 0), i64 8) #6, !dbg !320
  %61 = icmp ne i32 %60, 0, !dbg !321
  br i1 %61, label %62, label %130, !dbg !322

; <label>:62:                                     ; preds = %57
  %63 = load i16, i16* %8, align 2, !dbg !323
  %64 = zext i16 %63 to i64, !dbg !325
  %65 = load [8 x i8]*, [8 x i8]** %5, align 8, !dbg !325
  %66 = getelementptr inbounds [8 x i8], [8 x i8]* %65, i64 %64, !dbg !325
  %67 = getelementptr inbounds [8 x i8], [8 x i8]* %66, i32 0, i32 0, !dbg !326
  %68 = getelementptr inbounds %struct._PSTCACHE_CELLHEADER, %struct._PSTCACHE_CELLHEADER* %11, i32 0, i32 0, !dbg !327
  %69 = getelementptr inbounds [8 x i8], [8 x i8]* %68, i32 0, i32 0, !dbg !326
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* %69, i64 8, i32 1, i1 false), !dbg !326
  %70 = load i32, i32* @g_bitmap_cache_precache, align 4, !dbg !328
  %71 = icmp ne i32 %70, 0, !dbg !328
  br i1 %71, label %72, label %83, !dbg !330

; <label>:72:                                     ; preds = %62
  %73 = getelementptr inbounds %struct._PSTCACHE_CELLHEADER, %struct._PSTCACHE_CELLHEADER* %11, i32 0, i32 4, !dbg !331
  %74 = load i32, i32* %73, align 4, !dbg !331
  %75 = icmp ne i32 %74, 0, !dbg !333
  br i1 %75, label %76, label %83, !dbg !334

; <label>:76:                                     ; preds = %72
  %77 = load i32, i32* @g_server_depth, align 4, !dbg !335
  %78 = icmp sgt i32 %77, 8, !dbg !337
  br i1 %78, label %79, label %83, !dbg !338

; <label>:79:                                     ; preds = %76
  %80 = load i8, i8* %4, align 1, !dbg !339
  %81 = load i16, i16* %8, align 2, !dbg !340
  %82 = call i32 @pstcache_load_bitmap(i8 zeroext %80, i16 zeroext %81), !dbg !341
  br label %83, !dbg !341

; <label>:83:                                     ; preds = %79, %76, %72, %62
  %84 = load i16, i16* %8, align 2, !dbg !342
  %85 = zext i16 %84 to i32, !dbg !342
  store i32 %85, i32* %7, align 4, !dbg !344
  br label %86, !dbg !345

; <label>:86:                                     ; preds = %117, %83
  %87 = load i32, i32* %7, align 4, !dbg !346
  %88 = icmp sgt i32 %87, 0, !dbg !349
  br i1 %88, label %89, label %98, !dbg !350

; <label>:89:                                     ; preds = %86
  %90 = getelementptr inbounds %struct._PSTCACHE_CELLHEADER, %struct._PSTCACHE_CELLHEADER* %11, i32 0, i32 4, !dbg !351
  %91 = load i32, i32* %90, align 4, !dbg !351
  %92 = load i32, i32* %7, align 4, !dbg !353
  %93 = sub nsw i32 %92, 1, !dbg !354
  %94 = sext i32 %93 to i64, !dbg !355
  %95 = getelementptr inbounds [2560 x i32], [2560 x i32]* %10, i64 0, i64 %94, !dbg !355
  %96 = load i32, i32* %95, align 4, !dbg !355
  %97 = icmp ult i32 %91, %96, !dbg !356
  br label %98

; <label>:98:                                     ; preds = %89, %86
  %99 = phi i1 [ false, %86 ], [ %97, %89 ]
  br i1 %99, label %100, label %120, !dbg !357

; <label>:100:                                    ; preds = %98
  %101 = load i32, i32* %7, align 4, !dbg !359
  %102 = sub nsw i32 %101, 1, !dbg !361
  %103 = sext i32 %102 to i64, !dbg !362
  %104 = getelementptr inbounds [2560 x i16], [2560 x i16]* %9, i64 0, i64 %103, !dbg !362
  %105 = load i16, i16* %104, align 2, !dbg !362
  %106 = load i32, i32* %7, align 4, !dbg !363
  %107 = sext i32 %106 to i64, !dbg !364
  %108 = getelementptr inbounds [2560 x i16], [2560 x i16]* %9, i64 0, i64 %107, !dbg !364
  store i16 %105, i16* %108, align 2, !dbg !365
  %109 = load i32, i32* %7, align 4, !dbg !366
  %110 = sub nsw i32 %109, 1, !dbg !367
  %111 = sext i32 %110 to i64, !dbg !368
  %112 = getelementptr inbounds [2560 x i32], [2560 x i32]* %10, i64 0, i64 %111, !dbg !368
  %113 = load i32, i32* %112, align 4, !dbg !368
  %114 = load i32, i32* %7, align 4, !dbg !369
  %115 = sext i32 %114 to i64, !dbg !370
  %116 = getelementptr inbounds [2560 x i32], [2560 x i32]* %10, i64 0, i64 %115, !dbg !370
  store i32 %113, i32* %116, align 4, !dbg !371
  br label %117, !dbg !372

; <label>:117:                                    ; preds = %100
  %118 = load i32, i32* %7, align 4, !dbg !373
  %119 = add nsw i32 %118, -1, !dbg !373
  store i32 %119, i32* %7, align 4, !dbg !373
  br label %86, !dbg !375, !llvm.loop !376

; <label>:120:                                    ; preds = %98
  %121 = load i16, i16* %8, align 2, !dbg !378
  %122 = load i32, i32* %7, align 4, !dbg !379
  %123 = sext i32 %122 to i64, !dbg !380
  %124 = getelementptr inbounds [2560 x i16], [2560 x i16]* %9, i64 0, i64 %123, !dbg !380
  store i16 %121, i16* %124, align 2, !dbg !381
  %125 = getelementptr inbounds %struct._PSTCACHE_CELLHEADER, %struct._PSTCACHE_CELLHEADER* %11, i32 0, i32 4, !dbg !382
  %126 = load i32, i32* %125, align 4, !dbg !382
  %127 = load i32, i32* %7, align 4, !dbg !383
  %128 = sext i32 %127 to i64, !dbg !384
  %129 = getelementptr inbounds [2560 x i32], [2560 x i32]* %10, i64 0, i64 %128, !dbg !384
  store i32 %126, i32* %129, align 4, !dbg !385
  br label %131, !dbg !386

; <label>:130:                                    ; preds = %57
  br label %135, !dbg !387

; <label>:131:                                    ; preds = %120
  br label %132, !dbg !389

; <label>:132:                                    ; preds = %131
  %133 = load i16, i16* %8, align 2, !dbg !390
  %134 = add i16 %133, 1, !dbg !390
  store i16 %134, i16* %8, align 2, !dbg !390
  br label %33, !dbg !392, !llvm.loop !393

; <label>:135:                                    ; preds = %130, %56, %33
  %136 = load i16, i16* %8, align 2, !dbg !395
  %137 = zext i16 %136 to i32, !dbg !395
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0), i32 %137), !dbg !396
  %138 = load i8, i8* %4, align 1, !dbg !397
  %139 = getelementptr inbounds [2560 x i16], [2560 x i16]* %9, i32 0, i32 0, !dbg !398
  %140 = load i16, i16* %8, align 2, !dbg !399
  %141 = zext i16 %140 to i32, !dbg !399
  call void @cache_rebuild_bmpcache_linked_list(i8 zeroext %138, i16* %139, i32 %141), !dbg !400
  store i32 1, i32* @g_pstcache_enumerated, align 4, !dbg !401
  %142 = load i16, i16* %8, align 2, !dbg !402
  %143 = zext i16 %142 to i32, !dbg !402
  store i32 %143, i32* %3, align 4, !dbg !403
  br label %144, !dbg !403

; <label>:144:                                    ; preds = %135, %31, %27
  %145 = load i32, i32* %3, align 4, !dbg !404
  ret i32 %145, !dbg !404
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

declare void @cache_rebuild_bmpcache_linked_list(i8 zeroext, i16*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @pstcache_init(i8 zeroext) #0 !dbg !405 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca [256 x i8], align 16
  store i8 %0, i8* %3, align 1
  call void @llvm.dbg.declare(metadata i8* %3, metadata !408, metadata !51), !dbg !409
  call void @llvm.dbg.declare(metadata i32* %4, metadata !410, metadata !51), !dbg !411
  call void @llvm.dbg.declare(metadata [256 x i8]* %5, metadata !412, metadata !51), !dbg !417
  %6 = load i32, i32* @g_pstcache_enumerated, align 4, !dbg !418
  %7 = icmp ne i32 %6, 0, !dbg !418
  br i1 %7, label %8, label %9, !dbg !420

; <label>:8:                                      ; preds = %1
  store i32 1, i32* %2, align 4, !dbg !421
  br label %49, !dbg !421

; <label>:9:                                      ; preds = %1
  %10 = load i8, i8* %3, align 1, !dbg !422
  %11 = zext i8 %10 to i64, !dbg !423
  %12 = getelementptr inbounds [8 x i32], [8 x i32]* @g_pstcache_fd, i64 0, i64 %11, !dbg !423
  store i32 0, i32* %12, align 4, !dbg !424
  %13 = load i32, i32* @g_bitmap_cache, align 4, !dbg !425
  %14 = icmp ne i32 %13, 0, !dbg !425
  br i1 %14, label %15, label %18, !dbg !427

; <label>:15:                                     ; preds = %9
  %16 = load i32, i32* @g_bitmap_cache_persist_enable, align 4, !dbg !428
  %17 = icmp ne i32 %16, 0, !dbg !428
  br i1 %17, label %19, label %18, !dbg !430

; <label>:18:                                     ; preds = %15, %9
  store i32 0, i32* %2, align 4, !dbg !431
  br label %49, !dbg !431

; <label>:19:                                     ; preds = %15
  %20 = call i32 @rd_pstcache_mkdir(), !dbg !432
  %21 = icmp ne i32 %20, 0, !dbg !432
  br i1 %21, label %23, label %22, !dbg !434

; <label>:22:                                     ; preds = %19
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i32 0, i32 0)), !dbg !435
  store i32 0, i32* %2, align 4, !dbg !437
  br label %49, !dbg !437

; <label>:23:                                     ; preds = %19
  %24 = load i32, i32* @g_server_depth, align 4, !dbg !438
  %25 = add nsw i32 %24, 7, !dbg !439
  %26 = sdiv i32 %25, 8, !dbg !440
  store i32 %26, i32* @g_pstcache_Bpp, align 4, !dbg !441
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i32 0, i32 0, !dbg !442
  %28 = load i8, i8* %3, align 1, !dbg !443
  %29 = zext i8 %28 to i32, !dbg !443
  %30 = load i32, i32* @g_pstcache_Bpp, align 4, !dbg !444
  %31 = call i32 (i8*, i8*, ...) @sprintf(i8* %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i32 %29, i32 %30) #7, !dbg !445
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i32 0, i32 0, !dbg !446
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0), i8* %32), !dbg !447
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i32 0, i32 0, !dbg !448
  %34 = call i32 @rd_open_file(i8* %33), !dbg !449
  store i32 %34, i32* %4, align 4, !dbg !450
  %35 = load i32, i32* %4, align 4, !dbg !451
  %36 = icmp eq i32 %35, -1, !dbg !453
  br i1 %36, label %37, label %38, !dbg !454

; <label>:37:                                     ; preds = %23
  store i32 0, i32* %2, align 4, !dbg !455
  br label %49, !dbg !455

; <label>:38:                                     ; preds = %23
  %39 = load i32, i32* %4, align 4, !dbg !456
  %40 = call i32 @rd_lock_file(i32 %39, i32 0, i32 0), !dbg !458
  %41 = icmp ne i32 %40, 0, !dbg !458
  br i1 %41, label %44, label %42, !dbg !459

; <label>:42:                                     ; preds = %38
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.6, i32 0, i32 0)), !dbg !460
  %43 = load i32, i32* %4, align 4, !dbg !462
  call void @rd_close_file(i32 %43), !dbg !463
  store i32 0, i32* %2, align 4, !dbg !464
  br label %49, !dbg !464

; <label>:44:                                     ; preds = %38
  %45 = load i32, i32* %4, align 4, !dbg !465
  %46 = load i8, i8* %3, align 1, !dbg !466
  %47 = zext i8 %46 to i64, !dbg !467
  %48 = getelementptr inbounds [8 x i32], [8 x i32]* @g_pstcache_fd, i64 0, i64 %47, !dbg !467
  store i32 %45, i32* %48, align 4, !dbg !468
  store i32 1, i32* %2, align 4, !dbg !469
  br label %49, !dbg !469

; <label>:49:                                     ; preds = %44, %42, %37, %22, %18, %8
  %50 = load i32, i32* %2, align 4, !dbg !470
  ret i32 %50, !dbg !470
}

declare i32 @rd_pstcache_mkdir() #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #5

declare i32 @rd_open_file(i8*) #2

declare i32 @rd_lock_file(i32, i32, i32) #2

declare void @rd_close_file(i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!39, !40}
!llvm.ident = !{!41}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !22, globals: !27)
!1 = !DIFile(filename: "[inter]pstcache.o.i", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
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
!22 = !{!23}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !25, line: 39, baseType: !26)
!25 = !DIFile(filename: "types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!26 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!27 = !{!28, !32, !36, !38}
!28 = distinct !DIGlobalVariable(name: "g_pstcache_enumerated", scope: !0, file: !29, line: 33, type: !30, isLocal: false, isDefinition: true, variable: i32* @g_pstcache_enumerated)
!29 = !DIFile(filename: "pstcache.c", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_BOOL", file: !25, line: 28, baseType: !31)
!31 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!32 = distinct !DIGlobalVariable(name: "zero_key", scope: !0, file: !29, line: 34, type: !33, isLocal: false, isDefinition: true, variable: [8 x i8]* @zero_key)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 64, align: 8, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 8)
!36 = distinct !DIGlobalVariable(name: "g_pstcache_fd", scope: !0, file: !29, line: 31, type: !37, isLocal: false, isDefinition: true, variable: [8 x i32]* @g_pstcache_fd)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 256, align: 32, elements: !34)
!38 = distinct !DIGlobalVariable(name: "g_pstcache_Bpp", scope: !0, file: !29, line: 32, type: !31, isLocal: false, isDefinition: true, variable: i32* @g_pstcache_Bpp)
!39 = !{i32 2, !"Dwarf Version", i32 4}
!40 = !{i32 2, !"Debug Info Version", i32 3}
!41 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!42 = distinct !DISubprogram(name: "pstcache_touch_bitmap", scope: !29, file: !29, line: 39, type: !43, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !49)
!43 = !DISubroutineType(types: !44)
!44 = !{null, !24, !45, !47}
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !25, line: 41, baseType: !46)
!46 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !25, line: 43, baseType: !48)
!48 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!49 = !{}
!50 = !DILocalVariable(name: "cache_id", arg: 1, scope: !42, file: !29, line: 39, type: !24)
!51 = !DIExpression()
!52 = !DILocation(line: 39, column: 29, scope: !42)
!53 = !DILocalVariable(name: "cache_idx", arg: 2, scope: !42, file: !29, line: 39, type: !45)
!54 = !DILocation(line: 39, column: 46, scope: !42)
!55 = !DILocalVariable(name: "stamp", arg: 3, scope: !42, file: !29, line: 39, type: !47)
!56 = !DILocation(line: 39, column: 64, scope: !42)
!57 = !DILocalVariable(name: "fd", scope: !42, file: !29, line: 41, type: !31)
!58 = !DILocation(line: 41, column: 6, scope: !42)
!59 = !DILocation(line: 43, column: 8, scope: !60)
!60 = distinct !DILexicalBlock(scope: !42, file: !29, line: 43, column: 6)
!61 = !DILocation(line: 43, column: 17, scope: !60)
!62 = !DILocation(line: 43, column: 21, scope: !60)
!63 = !DILocation(line: 43, column: 38, scope: !64)
!64 = !DILexicalBlockFile(scope: !60, file: !29, discriminator: 1)
!65 = !DILocation(line: 43, column: 24, scope: !64)
!66 = !DILocation(line: 43, column: 48, scope: !64)
!67 = !DILocation(line: 43, column: 53, scope: !64)
!68 = !DILocation(line: 43, column: 56, scope: !69)
!69 = !DILexicalBlockFile(scope: !60, file: !29, discriminator: 2)
!70 = !DILocation(line: 43, column: 66, scope: !69)
!71 = !DILocation(line: 43, column: 6, scope: !69)
!72 = !DILocation(line: 44, column: 3, scope: !60)
!73 = !DILocation(line: 46, column: 21, scope: !42)
!74 = !DILocation(line: 46, column: 7, scope: !42)
!75 = !DILocation(line: 46, column: 5, scope: !42)
!76 = !DILocation(line: 47, column: 16, scope: !42)
!77 = !DILocation(line: 47, column: 25, scope: !42)
!78 = !DILocation(line: 47, column: 38, scope: !42)
!79 = !DILocation(line: 47, column: 53, scope: !42)
!80 = !DILocation(line: 47, column: 62, scope: !42)
!81 = !DILocation(line: 47, column: 35, scope: !42)
!82 = !DILocation(line: 47, column: 23, scope: !42)
!83 = !DILocation(line: 47, column: 20, scope: !42)
!84 = !DILocation(line: 47, column: 2, scope: !42)
!85 = !DILocation(line: 48, column: 16, scope: !42)
!86 = !DILocation(line: 48, column: 20, scope: !42)
!87 = !DILocation(line: 48, column: 2, scope: !42)
!88 = !DILocation(line: 49, column: 1, scope: !42)
!89 = !DILocation(line: 49, column: 1, scope: !90)
!90 = !DILexicalBlockFile(scope: !42, file: !29, discriminator: 1)
!91 = distinct !DISubprogram(name: "pstcache_load_bitmap", scope: !29, file: !29, line: 53, type: !92, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !49)
!92 = !DISubroutineType(types: !93)
!93 = !{!30, !24, !45}
!94 = !DILocalVariable(name: "cache_id", arg: 1, scope: !91, file: !29, line: 53, type: !24)
!95 = !DILocation(line: 53, column: 28, scope: !91)
!96 = !DILocalVariable(name: "cache_idx", arg: 2, scope: !91, file: !29, line: 53, type: !45)
!97 = !DILocation(line: 53, column: 45, scope: !91)
!98 = !DILocalVariable(name: "celldata", scope: !91, file: !29, line: 55, type: !23)
!99 = !DILocation(line: 55, column: 9, scope: !91)
!100 = !DILocalVariable(name: "fd", scope: !91, file: !29, line: 56, type: !31)
!101 = !DILocation(line: 56, column: 6, scope: !91)
!102 = !DILocalVariable(name: "cellhdr", scope: !91, file: !29, line: 57, type: !103)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "CELLHEADER", file: !25, line: 182, baseType: !104)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PSTCACHE_CELLHEADER", file: !25, line: 175, size: 128, align: 32, elements: !105)
!105 = !{!106, !108, !109, !110, !111}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !104, file: !25, line: 177, baseType: !107, size: 64, align: 8)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "HASH_KEY", file: !25, line: 172, baseType: !33)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !104, file: !25, line: 178, baseType: !24, size: 8, align: 8, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !104, file: !25, line: 178, baseType: !24, size: 8, align: 8, offset: 72)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !104, file: !25, line: 179, baseType: !45, size: 16, align: 16, offset: 80)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !104, file: !25, line: 180, baseType: !47, size: 32, align: 32, offset: 96)
!112 = !DILocation(line: 57, column: 13, scope: !91)
!113 = !DILocalVariable(name: "bitmap", scope: !91, file: !29, line: 58, type: !114)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_HBITMAP", file: !25, line: 46, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!116 = !DILocation(line: 58, column: 13, scope: !91)
!117 = !DILocation(line: 60, column: 7, scope: !118)
!118 = distinct !DILexicalBlock(scope: !91, file: !29, line: 60, column: 6)
!119 = !DILocation(line: 60, column: 6, scope: !91)
!120 = !DILocation(line: 61, column: 3, scope: !118)
!121 = !DILocation(line: 63, column: 8, scope: !122)
!122 = distinct !DILexicalBlock(scope: !91, file: !29, line: 63, column: 6)
!123 = !DILocation(line: 63, column: 17, scope: !122)
!124 = !DILocation(line: 63, column: 21, scope: !122)
!125 = !DILocation(line: 63, column: 38, scope: !126)
!126 = !DILexicalBlockFile(scope: !122, file: !29, discriminator: 1)
!127 = !DILocation(line: 63, column: 24, scope: !126)
!128 = !DILocation(line: 63, column: 48, scope: !126)
!129 = !DILocation(line: 63, column: 53, scope: !126)
!130 = !DILocation(line: 63, column: 56, scope: !131)
!131 = !DILexicalBlockFile(scope: !122, file: !29, discriminator: 2)
!132 = !DILocation(line: 63, column: 66, scope: !131)
!133 = !DILocation(line: 63, column: 6, scope: !131)
!134 = !DILocation(line: 64, column: 3, scope: !122)
!135 = !DILocation(line: 66, column: 21, scope: !91)
!136 = !DILocation(line: 66, column: 7, scope: !91)
!137 = !DILocation(line: 66, column: 5, scope: !91)
!138 = !DILocation(line: 67, column: 16, scope: !91)
!139 = !DILocation(line: 67, column: 20, scope: !91)
!140 = !DILocation(line: 67, column: 33, scope: !91)
!141 = !DILocation(line: 67, column: 48, scope: !91)
!142 = !DILocation(line: 67, column: 57, scope: !91)
!143 = !DILocation(line: 67, column: 30, scope: !91)
!144 = !DILocation(line: 67, column: 2, scope: !91)
!145 = !DILocation(line: 68, column: 15, scope: !91)
!146 = !DILocation(line: 68, column: 19, scope: !91)
!147 = !DILocation(line: 68, column: 2, scope: !91)
!148 = !DILocation(line: 69, column: 39, scope: !91)
!149 = !DILocation(line: 69, column: 31, scope: !91)
!150 = !DILocation(line: 69, column: 23, scope: !91)
!151 = !DILocation(line: 69, column: 11, scope: !91)
!152 = !DILocation(line: 70, column: 15, scope: !91)
!153 = !DILocation(line: 70, column: 19, scope: !91)
!154 = !DILocation(line: 70, column: 37, scope: !91)
!155 = !DILocation(line: 70, column: 29, scope: !91)
!156 = !DILocation(line: 70, column: 2, scope: !91)
!157 = !DILocation(line: 72, column: 36, scope: !91)
!158 = !DILocation(line: 72, column: 28, scope: !91)
!159 = !DILocation(line: 72, column: 51, scope: !91)
!160 = !DILocation(line: 72, column: 43, scope: !91)
!161 = !DILocation(line: 72, column: 59, scope: !91)
!162 = !DILocation(line: 72, column: 11, scope: !91)
!163 = !DILocation(line: 72, column: 9, scope: !91)
!164 = !DILocation(line: 74, column: 9, scope: !91)
!165 = !DILocation(line: 74, column: 19, scope: !91)
!166 = !DILocation(line: 74, column: 30, scope: !91)
!167 = !DILocation(line: 73, column: 2, scope: !91)
!168 = !DILocation(line: 75, column: 19, scope: !91)
!169 = !DILocation(line: 75, column: 29, scope: !91)
!170 = !DILocation(line: 75, column: 40, scope: !91)
!171 = !DILocation(line: 75, column: 2, scope: !91)
!172 = !DILocation(line: 77, column: 8, scope: !91)
!173 = !DILocation(line: 77, column: 2, scope: !91)
!174 = !DILocation(line: 78, column: 2, scope: !91)
!175 = !DILocation(line: 79, column: 1, scope: !91)
!176 = distinct !DISubprogram(name: "pstcache_save_bitmap", scope: !29, file: !29, line: 83, type: !177, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !49)
!177 = !DISubroutineType(types: !178)
!178 = !{!30, !24, !45, !23, !24, !24, !45, !23}
!179 = !DILocalVariable(name: "cache_id", arg: 1, scope: !176, file: !29, line: 83, type: !24)
!180 = !DILocation(line: 83, column: 28, scope: !176)
!181 = !DILocalVariable(name: "cache_idx", arg: 2, scope: !176, file: !29, line: 83, type: !45)
!182 = !DILocation(line: 83, column: 45, scope: !176)
!183 = !DILocalVariable(name: "key", arg: 3, scope: !176, file: !29, line: 83, type: !23)
!184 = !DILocation(line: 83, column: 64, scope: !176)
!185 = !DILocalVariable(name: "width", arg: 4, scope: !176, file: !29, line: 84, type: !24)
!186 = !DILocation(line: 84, column: 14, scope: !176)
!187 = !DILocalVariable(name: "height", arg: 5, scope: !176, file: !29, line: 84, type: !24)
!188 = !DILocation(line: 84, column: 27, scope: !176)
!189 = !DILocalVariable(name: "length", arg: 6, scope: !176, file: !29, line: 84, type: !45)
!190 = !DILocation(line: 84, column: 42, scope: !176)
!191 = !DILocalVariable(name: "data", arg: 7, scope: !176, file: !29, line: 84, type: !23)
!192 = !DILocation(line: 84, column: 58, scope: !176)
!193 = !DILocalVariable(name: "fd", scope: !176, file: !29, line: 86, type: !31)
!194 = !DILocation(line: 86, column: 6, scope: !176)
!195 = !DILocalVariable(name: "cellhdr", scope: !176, file: !29, line: 87, type: !103)
!196 = !DILocation(line: 87, column: 13, scope: !176)
!197 = !DILocation(line: 89, column: 8, scope: !198)
!198 = distinct !DILexicalBlock(scope: !176, file: !29, line: 89, column: 6)
!199 = !DILocation(line: 89, column: 17, scope: !198)
!200 = !DILocation(line: 89, column: 21, scope: !198)
!201 = !DILocation(line: 89, column: 38, scope: !202)
!202 = !DILexicalBlockFile(scope: !198, file: !29, discriminator: 1)
!203 = !DILocation(line: 89, column: 24, scope: !202)
!204 = !DILocation(line: 89, column: 48, scope: !202)
!205 = !DILocation(line: 89, column: 53, scope: !202)
!206 = !DILocation(line: 89, column: 56, scope: !207)
!207 = !DILexicalBlockFile(scope: !198, file: !29, discriminator: 2)
!208 = !DILocation(line: 89, column: 66, scope: !207)
!209 = !DILocation(line: 89, column: 6, scope: !207)
!210 = !DILocation(line: 90, column: 3, scope: !198)
!211 = !DILocation(line: 92, column: 17, scope: !176)
!212 = !DILocation(line: 92, column: 2, scope: !176)
!213 = !DILocation(line: 92, column: 22, scope: !176)
!214 = !DILocation(line: 93, column: 18, scope: !176)
!215 = !DILocation(line: 93, column: 10, scope: !176)
!216 = !DILocation(line: 93, column: 16, scope: !176)
!217 = !DILocation(line: 94, column: 19, scope: !176)
!218 = !DILocation(line: 94, column: 10, scope: !176)
!219 = !DILocation(line: 94, column: 17, scope: !176)
!220 = !DILocation(line: 95, column: 19, scope: !176)
!221 = !DILocation(line: 95, column: 10, scope: !176)
!222 = !DILocation(line: 95, column: 17, scope: !176)
!223 = !DILocation(line: 96, column: 10, scope: !176)
!224 = !DILocation(line: 96, column: 16, scope: !176)
!225 = !DILocation(line: 98, column: 21, scope: !176)
!226 = !DILocation(line: 98, column: 7, scope: !176)
!227 = !DILocation(line: 98, column: 5, scope: !176)
!228 = !DILocation(line: 99, column: 16, scope: !176)
!229 = !DILocation(line: 99, column: 20, scope: !176)
!230 = !DILocation(line: 99, column: 33, scope: !176)
!231 = !DILocation(line: 99, column: 48, scope: !176)
!232 = !DILocation(line: 99, column: 57, scope: !176)
!233 = !DILocation(line: 99, column: 30, scope: !176)
!234 = !DILocation(line: 99, column: 2, scope: !176)
!235 = !DILocation(line: 100, column: 16, scope: !176)
!236 = !DILocation(line: 100, column: 20, scope: !176)
!237 = !DILocation(line: 100, column: 2, scope: !176)
!238 = !DILocation(line: 101, column: 16, scope: !176)
!239 = !DILocation(line: 101, column: 20, scope: !176)
!240 = !DILocation(line: 101, column: 26, scope: !176)
!241 = !DILocation(line: 101, column: 2, scope: !176)
!242 = !DILocation(line: 103, column: 2, scope: !176)
!243 = !DILocation(line: 104, column: 1, scope: !176)
!244 = distinct !DISubprogram(name: "pstcache_enumerate", scope: !29, file: !29, line: 108, type: !245, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !49)
!245 = !DISubroutineType(types: !246)
!246 = !{!31, !24, !247}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64, align: 64)
!248 = !DILocalVariable(name: "id", arg: 1, scope: !244, file: !29, line: 108, type: !24)
!249 = !DILocation(line: 108, column: 26, scope: !244)
!250 = !DILocalVariable(name: "keylist", arg: 2, scope: !244, file: !29, line: 108, type: !247)
!251 = !DILocation(line: 108, column: 41, scope: !244)
!252 = !DILocalVariable(name: "fd", scope: !244, file: !29, line: 110, type: !31)
!253 = !DILocation(line: 110, column: 6, scope: !244)
!254 = !DILocalVariable(name: "n", scope: !244, file: !29, line: 110, type: !31)
!255 = !DILocation(line: 110, column: 10, scope: !244)
!256 = !DILocalVariable(name: "idx", scope: !244, file: !29, line: 111, type: !45)
!257 = !DILocation(line: 111, column: 9, scope: !244)
!258 = !DILocalVariable(name: "mru_idx", scope: !244, file: !29, line: 112, type: !259)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 40960, align: 16, elements: !262)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "sint16", file: !25, line: 42, baseType: !261)
!261 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!262 = !{!263}
!263 = !DISubrange(count: 2560)
!264 = !DILocation(line: 112, column: 9, scope: !244)
!265 = !DILocalVariable(name: "mru_stamp", scope: !244, file: !29, line: 113, type: !266)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 81920, align: 32, elements: !262)
!267 = !DILocation(line: 113, column: 9, scope: !244)
!268 = !DILocalVariable(name: "cellhdr", scope: !244, file: !29, line: 114, type: !103)
!269 = !DILocation(line: 114, column: 13, scope: !244)
!270 = !DILocation(line: 116, column: 8, scope: !271)
!271 = distinct !DILexicalBlock(scope: !244, file: !29, line: 116, column: 6)
!272 = !DILocation(line: 116, column: 23, scope: !271)
!273 = !DILocation(line: 116, column: 26, scope: !274)
!274 = !DILexicalBlockFile(scope: !271, file: !29, discriminator: 1)
!275 = !DILocation(line: 116, column: 56, scope: !274)
!276 = !DILocation(line: 116, column: 60, scope: !277)
!277 = !DILexicalBlockFile(scope: !271, file: !29, discriminator: 2)
!278 = !DILocation(line: 116, column: 63, scope: !277)
!279 = !DILocation(line: 116, column: 67, scope: !277)
!280 = !DILocation(line: 116, column: 84, scope: !281)
!281 = !DILexicalBlockFile(scope: !271, file: !29, discriminator: 3)
!282 = !DILocation(line: 116, column: 70, scope: !281)
!283 = !DILocation(line: 116, column: 88, scope: !281)
!284 = !DILocation(line: 116, column: 6, scope: !281)
!285 = !DILocation(line: 117, column: 3, scope: !271)
!286 = !DILocation(line: 120, column: 6, scope: !287)
!287 = distinct !DILexicalBlock(scope: !244, file: !29, line: 120, column: 6)
!288 = !DILocation(line: 120, column: 6, scope: !244)
!289 = !DILocation(line: 121, column: 3, scope: !287)
!290 = !DILocation(line: 123, column: 2, scope: !244)
!291 = !DILocation(line: 124, column: 11, scope: !292)
!292 = distinct !DILexicalBlock(scope: !244, file: !29, line: 124, column: 2)
!293 = !DILocation(line: 124, column: 7, scope: !292)
!294 = !DILocation(line: 124, column: 16, scope: !295)
!295 = !DILexicalBlockFile(scope: !296, file: !29, discriminator: 1)
!296 = distinct !DILexicalBlock(scope: !292, file: !29, line: 124, column: 2)
!297 = !DILocation(line: 124, column: 20, scope: !295)
!298 = !DILocation(line: 124, column: 2, scope: !295)
!299 = !DILocation(line: 126, column: 22, scope: !300)
!300 = distinct !DILexicalBlock(scope: !296, file: !29, line: 125, column: 2)
!301 = !DILocation(line: 126, column: 8, scope: !300)
!302 = !DILocation(line: 126, column: 6, scope: !300)
!303 = !DILocation(line: 127, column: 17, scope: !300)
!304 = !DILocation(line: 127, column: 21, scope: !300)
!305 = !DILocation(line: 127, column: 28, scope: !300)
!306 = !DILocation(line: 127, column: 43, scope: !300)
!307 = !DILocation(line: 127, column: 52, scope: !300)
!308 = !DILocation(line: 127, column: 25, scope: !300)
!309 = !DILocation(line: 127, column: 3, scope: !300)
!310 = !DILocation(line: 128, column: 20, scope: !311)
!311 = distinct !DILexicalBlock(scope: !300, file: !29, line: 128, column: 7)
!312 = !DILocation(line: 128, column: 24, scope: !311)
!313 = !DILocation(line: 128, column: 7, scope: !311)
!314 = !DILocation(line: 128, column: 54, scope: !311)
!315 = !DILocation(line: 128, column: 7, scope: !300)
!316 = !DILocation(line: 129, column: 4, scope: !311)
!317 = !DILocation(line: 131, column: 22, scope: !318)
!318 = distinct !DILexicalBlock(scope: !300, file: !29, line: 131, column: 7)
!319 = !DILocation(line: 131, column: 14, scope: !318)
!320 = !DILocation(line: 131, column: 7, scope: !318)
!321 = !DILocation(line: 131, column: 55, scope: !318)
!322 = !DILocation(line: 131, column: 7, scope: !300)
!323 = !DILocation(line: 133, column: 19, scope: !324)
!324 = distinct !DILexicalBlock(scope: !318, file: !29, line: 132, column: 3)
!325 = !DILocation(line: 133, column: 11, scope: !324)
!326 = !DILocation(line: 133, column: 4, scope: !324)
!327 = !DILocation(line: 133, column: 33, scope: !324)
!328 = !DILocation(line: 136, column: 8, scope: !329)
!329 = distinct !DILexicalBlock(scope: !324, file: !29, line: 136, column: 8)
!330 = !DILocation(line: 136, column: 32, scope: !329)
!331 = !DILocation(line: 136, column: 43, scope: !332)
!332 = !DILexicalBlockFile(scope: !329, file: !29, discriminator: 1)
!333 = !DILocation(line: 136, column: 35, scope: !332)
!334 = !DILocation(line: 136, column: 49, scope: !332)
!335 = !DILocation(line: 136, column: 52, scope: !336)
!336 = !DILexicalBlockFile(scope: !329, file: !29, discriminator: 2)
!337 = !DILocation(line: 136, column: 67, scope: !336)
!338 = !DILocation(line: 136, column: 8, scope: !336)
!339 = !DILocation(line: 137, column: 26, scope: !329)
!340 = !DILocation(line: 137, column: 30, scope: !329)
!341 = !DILocation(line: 137, column: 5, scope: !329)
!342 = !DILocation(line: 140, column: 13, scope: !343)
!343 = distinct !DILexicalBlock(scope: !324, file: !29, line: 140, column: 4)
!344 = !DILocation(line: 140, column: 11, scope: !343)
!345 = !DILocation(line: 140, column: 9, scope: !343)
!346 = !DILocation(line: 140, column: 18, scope: !347)
!347 = !DILexicalBlockFile(scope: !348, file: !29, discriminator: 1)
!348 = distinct !DILexicalBlock(scope: !343, file: !29, line: 140, column: 4)
!349 = !DILocation(line: 140, column: 20, scope: !347)
!350 = !DILocation(line: 140, column: 24, scope: !347)
!351 = !DILocation(line: 140, column: 35, scope: !352)
!352 = !DILexicalBlockFile(scope: !348, file: !29, discriminator: 2)
!353 = !DILocation(line: 140, column: 53, scope: !352)
!354 = !DILocation(line: 140, column: 55, scope: !352)
!355 = !DILocation(line: 140, column: 43, scope: !352)
!356 = !DILocation(line: 140, column: 41, scope: !352)
!357 = !DILocation(line: 140, column: 4, scope: !358)
!358 = !DILexicalBlockFile(scope: !343, file: !29, discriminator: 3)
!359 = !DILocation(line: 142, column: 26, scope: !360)
!360 = distinct !DILexicalBlock(scope: !348, file: !29, line: 141, column: 4)
!361 = !DILocation(line: 142, column: 28, scope: !360)
!362 = !DILocation(line: 142, column: 18, scope: !360)
!363 = !DILocation(line: 142, column: 13, scope: !360)
!364 = !DILocation(line: 142, column: 5, scope: !360)
!365 = !DILocation(line: 142, column: 16, scope: !360)
!366 = !DILocation(line: 143, column: 30, scope: !360)
!367 = !DILocation(line: 143, column: 32, scope: !360)
!368 = !DILocation(line: 143, column: 20, scope: !360)
!369 = !DILocation(line: 143, column: 15, scope: !360)
!370 = !DILocation(line: 143, column: 5, scope: !360)
!371 = !DILocation(line: 143, column: 18, scope: !360)
!372 = !DILocation(line: 144, column: 4, scope: !360)
!373 = !DILocation(line: 140, column: 62, scope: !374)
!374 = !DILexicalBlockFile(scope: !348, file: !29, discriminator: 4)
!375 = !DILocation(line: 140, column: 4, scope: !374)
!376 = distinct !{!376, !377}
!377 = !DILocation(line: 140, column: 4, scope: !324)
!378 = !DILocation(line: 146, column: 17, scope: !324)
!379 = !DILocation(line: 146, column: 12, scope: !324)
!380 = !DILocation(line: 146, column: 4, scope: !324)
!381 = !DILocation(line: 146, column: 15, scope: !324)
!382 = !DILocation(line: 147, column: 27, scope: !324)
!383 = !DILocation(line: 147, column: 14, scope: !324)
!384 = !DILocation(line: 147, column: 4, scope: !324)
!385 = !DILocation(line: 147, column: 17, scope: !324)
!386 = !DILocation(line: 148, column: 3, scope: !324)
!387 = !DILocation(line: 151, column: 4, scope: !388)
!388 = distinct !DILexicalBlock(scope: !318, file: !29, line: 150, column: 3)
!389 = !DILocation(line: 153, column: 2, scope: !300)
!390 = !DILocation(line: 124, column: 32, scope: !391)
!391 = !DILexicalBlockFile(scope: !296, file: !29, discriminator: 2)
!392 = !DILocation(line: 124, column: 2, scope: !391)
!393 = distinct !{!393, !394}
!394 = !DILocation(line: 124, column: 2, scope: !244)
!395 = !DILocation(line: 155, column: 65, scope: !244)
!396 = !DILocation(line: 155, column: 2, scope: !244)
!397 = !DILocation(line: 157, column: 37, scope: !244)
!398 = !DILocation(line: 157, column: 41, scope: !244)
!399 = !DILocation(line: 157, column: 50, scope: !244)
!400 = !DILocation(line: 157, column: 2, scope: !244)
!401 = !DILocation(line: 158, column: 24, scope: !244)
!402 = !DILocation(line: 159, column: 9, scope: !244)
!403 = !DILocation(line: 159, column: 2, scope: !244)
!404 = !DILocation(line: 160, column: 1, scope: !244)
!405 = distinct !DISubprogram(name: "pstcache_init", scope: !29, file: !29, line: 164, type: !406, isLocal: false, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !49)
!406 = !DISubroutineType(types: !407)
!407 = !{!30, !24}
!408 = !DILocalVariable(name: "cache_id", arg: 1, scope: !405, file: !29, line: 164, type: !24)
!409 = !DILocation(line: 164, column: 21, scope: !405)
!410 = !DILocalVariable(name: "fd", scope: !405, file: !29, line: 166, type: !31)
!411 = !DILocation(line: 166, column: 6, scope: !405)
!412 = !DILocalVariable(name: "filename", scope: !405, file: !29, line: 167, type: !413)
!413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 2048, align: 8, elements: !415)
!414 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!415 = !{!416}
!416 = !DISubrange(count: 256)
!417 = !DILocation(line: 167, column: 7, scope: !405)
!418 = !DILocation(line: 169, column: 6, scope: !419)
!419 = distinct !DILexicalBlock(scope: !405, file: !29, line: 169, column: 6)
!420 = !DILocation(line: 169, column: 6, scope: !405)
!421 = !DILocation(line: 170, column: 3, scope: !419)
!422 = !DILocation(line: 172, column: 16, scope: !405)
!423 = !DILocation(line: 172, column: 2, scope: !405)
!424 = !DILocation(line: 172, column: 26, scope: !405)
!425 = !DILocation(line: 174, column: 8, scope: !426)
!426 = distinct !DILexicalBlock(scope: !405, file: !29, line: 174, column: 6)
!427 = !DILocation(line: 174, column: 23, scope: !426)
!428 = !DILocation(line: 174, column: 26, scope: !429)
!429 = !DILexicalBlockFile(scope: !426, file: !29, discriminator: 1)
!430 = !DILocation(line: 174, column: 6, scope: !429)
!431 = !DILocation(line: 175, column: 3, scope: !426)
!432 = !DILocation(line: 177, column: 7, scope: !433)
!433 = distinct !DILexicalBlock(scope: !405, file: !29, line: 177, column: 6)
!434 = !DILocation(line: 177, column: 6, scope: !405)
!435 = !DILocation(line: 179, column: 3, scope: !436)
!436 = distinct !DILexicalBlock(scope: !433, file: !29, line: 178, column: 2)
!437 = !DILocation(line: 181, column: 3, scope: !436)
!438 = !DILocation(line: 184, column: 20, scope: !405)
!439 = !DILocation(line: 184, column: 35, scope: !405)
!440 = !DILocation(line: 184, column: 40, scope: !405)
!441 = !DILocation(line: 184, column: 17, scope: !405)
!442 = !DILocation(line: 185, column: 10, scope: !405)
!443 = !DILocation(line: 185, column: 44, scope: !405)
!444 = !DILocation(line: 185, column: 54, scope: !405)
!445 = !DILocation(line: 185, column: 2, scope: !405)
!446 = !DILocation(line: 186, column: 63, scope: !405)
!447 = !DILocation(line: 186, column: 2, scope: !405)
!448 = !DILocation(line: 188, column: 20, scope: !405)
!449 = !DILocation(line: 188, column: 7, scope: !405)
!450 = !DILocation(line: 188, column: 5, scope: !405)
!451 = !DILocation(line: 189, column: 6, scope: !452)
!452 = distinct !DILexicalBlock(scope: !405, file: !29, line: 189, column: 6)
!453 = !DILocation(line: 189, column: 9, scope: !452)
!454 = !DILocation(line: 189, column: 6, scope: !405)
!455 = !DILocation(line: 190, column: 3, scope: !452)
!456 = !DILocation(line: 192, column: 20, scope: !457)
!457 = distinct !DILexicalBlock(scope: !405, file: !29, line: 192, column: 6)
!458 = !DILocation(line: 192, column: 7, scope: !457)
!459 = !DILocation(line: 192, column: 6, scope: !405)
!460 = !DILocation(line: 194, column: 3, scope: !461)
!461 = distinct !DILexicalBlock(scope: !457, file: !29, line: 193, column: 2)
!462 = !DILocation(line: 196, column: 17, scope: !461)
!463 = !DILocation(line: 196, column: 3, scope: !461)
!464 = !DILocation(line: 197, column: 3, scope: !461)
!465 = !DILocation(line: 200, column: 28, scope: !405)
!466 = !DILocation(line: 200, column: 16, scope: !405)
!467 = !DILocation(line: 200, column: 2, scope: !405)
!468 = !DILocation(line: 200, column: 26, scope: !405)
!469 = !DILocation(line: 201, column: 2, scope: !405)
!470 = !DILocation(line: 202, column: 1, scope: !405)
