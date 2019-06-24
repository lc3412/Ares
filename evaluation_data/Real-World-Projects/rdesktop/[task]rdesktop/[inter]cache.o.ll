; ModuleID = './[inter]cache.o.i'
source_filename = "./[inter]cache.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bmpcache_entry = type { i8*, i16, i16 }
%struct._FONTGLYPH = type { i16, i16, i16, i16, i8* }
%struct._DATABLOB = type { i8*, i32 }
%struct._BRUSHDATA = type { i32, i32, i8* }

@g_bmpcache = internal global [3 x [2560 x %struct.bmpcache_entry]] zeroinitializer, align 16
@g_bmpcache_lru = internal global [3 x i32] [i32 -1, i32 -1, i32 -1], align 4
@g_bmpcache_mru = internal global [3 x i32] [i32 -1, i32 -1, i32 -1], align 4
@g_bmpcache_count = internal global [3 x i32] zeroinitializer, align 4
@.str = private unnamed_addr constant [88 x i8] c"cache_rebuild_bmpcache_linked_list(), %d in bitmap cache linked list, %d in ui cache...\00", align 1
@g_pstcache_fd = external global [0 x i32], align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"cache_bump_bitmap(), id=%d, idx=%d, bump=%d\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"cache_evict_bitmap(), id=%d idx=%d n_idx=%d bmp=%p\00", align 1
@g_volatile_bc = internal global [3 x i8*] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [34 x i8] c"cache_get_bitmap(), id=%d, idx=%d\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"cache_put_bitmap(), failed, id=%d, idx=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"cache_save_state(), saving cache state for bitmap cache %d\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"cache_save_state(), %d stamps written\00", align 1
@g_fontcache = internal global [12 x [256 x %struct._FONTGLYPH]] zeroinitializer, align 16
@.str.7 = private unnamed_addr constant [35 x i8] c"cache_get_font(), font=%d, char=%d\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"cache_put_font(), failed, font=%d, char=%d\00", align 1
@g_textcache = internal global [256 x %struct._DATABLOB] zeroinitializer, align 16
@g_deskcache = internal global [921600 x i8] zeroinitializer, align 16
@.str.9 = private unnamed_addr constant [42 x i8] c"cache_get_desktop(), offset=%d, length=%d\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"cache_put_desktop(), offset=%d, length=%d\00", align 1
@g_cursorcache = internal global [32 x i8*] zeroinitializer, align 16
@.str.11 = private unnamed_addr constant [27 x i8] c"cache_get_cursor(), idx=%d\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"cache_put_cursor(), failed, idx=%d\00", align 1
@g_brushcache = internal global [2 x [64 x %struct._BRUSHDATA]] zeroinitializer, align 16
@.str.13 = private unnamed_addr constant [42 x i8] c"cache_get_brush_data(), colour=%d, idx=%d\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"cache_put_brush_data(), colour=%d, idx=%d\00", align 1

; Function Attrs: nounwind uwtable
define void @cache_rebuild_bmpcache_linked_list(i8 zeroext, i16*, i32) #0 !dbg !99 {
  %4 = alloca i8, align 1
  %5 = alloca i16*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  store i8 %0, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !104, metadata !105), !dbg !106
  store i16* %1, i16** %5, align 8
  call void @llvm.dbg.declare(metadata i16** %5, metadata !107, metadata !105), !dbg !108
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !109, metadata !105), !dbg !110
  call void @llvm.dbg.declare(metadata i32* %7, metadata !111, metadata !105), !dbg !112
  %10 = load i32, i32* %6, align 4, !dbg !113
  store i32 %10, i32* %7, align 4, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %8, metadata !114, metadata !105), !dbg !115
  store i32 0, i32* %8, align 4, !dbg !115
  call void @llvm.dbg.declare(metadata i16* %9, metadata !116, metadata !105), !dbg !117
  br label %11, !dbg !118

; <label>:11:                                     ; preds = %31, %3
  %12 = load i32, i32* %7, align 4, !dbg !119
  %13 = add nsw i32 %12, -1, !dbg !119
  store i32 %13, i32* %7, align 4, !dbg !119
  %14 = icmp sge i32 %13, 0, !dbg !121
  br i1 %14, label %15, label %29, !dbg !122

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* %7, align 4, !dbg !123
  %17 = sext i32 %16 to i64, !dbg !125
  %18 = load i16*, i16** %5, align 8, !dbg !125
  %19 = getelementptr inbounds i16, i16* %18, i64 %17, !dbg !125
  %20 = load i16, i16* %19, align 2, !dbg !125
  %21 = sext i16 %20 to i64, !dbg !126
  %22 = load i8, i8* %4, align 1, !dbg !127
  %23 = zext i8 %22 to i64, !dbg !126
  %24 = getelementptr inbounds [3 x [2560 x %struct.bmpcache_entry]], [3 x [2560 x %struct.bmpcache_entry]]* @g_bmpcache, i64 0, i64 %23, !dbg !126
  %25 = getelementptr inbounds [2560 x %struct.bmpcache_entry], [2560 x %struct.bmpcache_entry]* %24, i64 0, i64 %21, !dbg !126
  %26 = getelementptr inbounds %struct.bmpcache_entry, %struct.bmpcache_entry* %25, i32 0, i32 0, !dbg !128
  %27 = load i8*, i8** %26, align 16, !dbg !128
  %28 = icmp eq i8* %27, null, !dbg !129
  br label %29

; <label>:29:                                     ; preds = %15, %11
  %30 = phi i1 [ false, %11 ], [ %28, %15 ]
  br i1 %30, label %31, label %32, !dbg !130

; <label>:31:                                     ; preds = %29
  br label %11, !dbg !132, !llvm.loop !134

; <label>:32:                                     ; preds = %29
  %33 = load i32, i32* %7, align 4, !dbg !135
  %34 = icmp slt i32 %33, 0, !dbg !137
  br i1 %34, label %35, label %42, !dbg !138

; <label>:35:                                     ; preds = %32
  %36 = load i8, i8* %4, align 1, !dbg !139
  %37 = zext i8 %36 to i64, !dbg !141
  %38 = getelementptr inbounds [3 x i32], [3 x i32]* @g_bmpcache_lru, i64 0, i64 %37, !dbg !141
  store i32 -1, i32* %38, align 4, !dbg !142
  %39 = load i8, i8* %4, align 1, !dbg !143
  %40 = zext i8 %39 to i64, !dbg !144
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* @g_bmpcache_mru, i64 0, i64 %40, !dbg !144
  store i32 -1, i32* %41, align 4, !dbg !145
  br label %156, !dbg !146

; <label>:42:                                     ; preds = %32
  %43 = load i32, i32* %7, align 4, !dbg !147
  %44 = sext i32 %43 to i64, !dbg !148
  %45 = load i16*, i16** %5, align 8, !dbg !148
  %46 = getelementptr inbounds i16, i16* %45, i64 %44, !dbg !148
  %47 = load i16, i16* %46, align 2, !dbg !148
  %48 = sext i16 %47 to i32, !dbg !148
  %49 = load i8, i8* %4, align 1, !dbg !149
  %50 = zext i8 %49 to i64, !dbg !150
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* @g_bmpcache_mru, i64 0, i64 %50, !dbg !150
  store i32 %48, i32* %51, align 4, !dbg !151
  %52 = load i32, i32* %7, align 4, !dbg !152
  %53 = sext i32 %52 to i64, !dbg !153
  %54 = load i16*, i16** %5, align 8, !dbg !153
  %55 = getelementptr inbounds i16, i16* %54, i64 %53, !dbg !153
  %56 = load i16, i16* %55, align 2, !dbg !153
  %57 = sext i16 %56 to i64, !dbg !154
  %58 = load i8, i8* %4, align 1, !dbg !155
  %59 = zext i8 %58 to i64, !dbg !154
  %60 = getelementptr inbounds [3 x [2560 x %struct.bmpcache_entry]], [3 x [2560 x %struct.bmpcache_entry]]* @g_bmpcache, i64 0, i64 %59, !dbg !154
  %61 = getelementptr inbounds [2560 x %struct.bmpcache_entry], [2560 x %struct.bmpcache_entry]* %60, i64 0, i64 %57, !dbg !154
  %62 = getelementptr inbounds %struct.bmpcache_entry, %struct.bmpcache_entry* %61, i32 0, i32 2, !dbg !156
  store i16 -1, i16* %62, align 2, !dbg !157
  %63 = load i32, i32* %7, align 4, !dbg !158
  %64 = sext i32 %63 to i64, !dbg !159
  %65 = load i16*, i16** %5, align 8, !dbg !159
  %66 = getelementptr inbounds i16, i16* %65, i64 %64, !dbg !159
  %67 = load i16, i16* %66, align 2, !dbg !159
  store i16 %67, i16* %9, align 2, !dbg !160
  %68 = load i32, i32* %8, align 4, !dbg !161
  %69 = add nsw i32 %68, 1, !dbg !161
  store i32 %69, i32* %8, align 4, !dbg !161
  br label %70, !dbg !162

; <label>:70:                                     ; preds = %99, %42
  %71 = load i32, i32* %7, align 4, !dbg !163
  %72 = icmp sge i32 %71, 0, !dbg !164
  br i1 %72, label %73, label %131, !dbg !165

; <label>:73:                                     ; preds = %70
  br label %74, !dbg !166

; <label>:74:                                     ; preds = %94, %73
  %75 = load i32, i32* %7, align 4, !dbg !168
  %76 = add nsw i32 %75, -1, !dbg !168
  store i32 %76, i32* %7, align 4, !dbg !168
  %77 = icmp sge i32 %76, 0, !dbg !170
  br i1 %77, label %78, label %92, !dbg !171

; <label>:78:                                     ; preds = %74
  %79 = load i32, i32* %7, align 4, !dbg !172
  %80 = sext i32 %79 to i64, !dbg !174
  %81 = load i16*, i16** %5, align 8, !dbg !174
  %82 = getelementptr inbounds i16, i16* %81, i64 %80, !dbg !174
  %83 = load i16, i16* %82, align 2, !dbg !174
  %84 = sext i16 %83 to i64, !dbg !175
  %85 = load i8, i8* %4, align 1, !dbg !176
  %86 = zext i8 %85 to i64, !dbg !175
  %87 = getelementptr inbounds [3 x [2560 x %struct.bmpcache_entry]], [3 x [2560 x %struct.bmpcache_entry]]* @g_bmpcache, i64 0, i64 %86, !dbg !175
  %88 = getelementptr inbounds [2560 x %struct.bmpcache_entry], [2560 x %struct.bmpcache_entry]* %87, i64 0, i64 %84, !dbg !175
  %89 = getelementptr inbounds %struct.bmpcache_entry, %struct.bmpcache_entry* %88, i32 0, i32 0, !dbg !177
  %90 = load i8*, i8** %89, align 16, !dbg !177
  %91 = icmp eq i8* %90, null, !dbg !178
  br label %92

; <label>:92:                                     ; preds = %78, %74
  %93 = phi i1 [ false, %74 ], [ %91, %78 ]
  br i1 %93, label %94, label %95, !dbg !179

; <label>:94:                                     ; preds = %92
  br label %74, !dbg !181, !llvm.loop !183

; <label>:95:                                     ; preds = %92
  %96 = load i32, i32* %7, align 4, !dbg !184
  %97 = icmp slt i32 %96, 0, !dbg !186
  br i1 %97, label %98, label %99, !dbg !187

; <label>:98:                                     ; preds = %95
  br label %131, !dbg !188

; <label>:99:                                     ; preds = %95
  %100 = load i32, i32* %7, align 4, !dbg !189
  %101 = sext i32 %100 to i64, !dbg !190
  %102 = load i16*, i16** %5, align 8, !dbg !190
  %103 = getelementptr inbounds i16, i16* %102, i64 %101, !dbg !190
  %104 = load i16, i16* %103, align 2, !dbg !190
  %105 = load i16, i16* %9, align 2, !dbg !191
  %106 = sext i16 %105 to i64, !dbg !192
  %107 = load i8, i8* %4, align 1, !dbg !193
  %108 = zext i8 %107 to i64, !dbg !192
  %109 = getelementptr inbounds [3 x [2560 x %struct.bmpcache_entry]], [3 x [2560 x %struct.bmpcache_entry]]* @g_bmpcache, i64 0, i64 %108, !dbg !192
  %110 = getelementptr inbounds [2560 x %struct.bmpcache_entry], [2560 x %struct.bmpcache_entry]* %109, i64 0, i64 %106, !dbg !192
  %111 = getelementptr inbounds %struct.bmpcache_entry, %struct.bmpcache_entry* %110, i32 0, i32 1, !dbg !194
  store i16 %104, i16* %111, align 8, !dbg !195
  %112 = load i16, i16* %9, align 2, !dbg !196
  %113 = load i32, i32* %7, align 4, !dbg !197
  %114 = sext i32 %113 to i64, !dbg !198
  %115 = load i16*, i16** %5, align 8, !dbg !198
  %116 = getelementptr inbounds i16, i16* %115, i64 %114, !dbg !198
  %117 = load i16, i16* %116, align 2, !dbg !198
  %118 = sext i16 %117 to i64, !dbg !199
  %119 = load i8, i8* %4, align 1, !dbg !200
  %120 = zext i8 %119 to i64, !dbg !199
  %121 = getelementptr inbounds [3 x [2560 x %struct.bmpcache_entry]], [3 x [2560 x %struct.bmpcache_entry]]* @g_bmpcache, i64 0, i64 %120, !dbg !199
  %122 = getelementptr inbounds [2560 x %struct.bmpcache_entry], [2560 x %struct.bmpcache_entry]* %121, i64 0, i64 %118, !dbg !199
  %123 = getelementptr inbounds %struct.bmpcache_entry, %struct.bmpcache_entry* %122, i32 0, i32 2, !dbg !201
  store i16 %112, i16* %123, align 2, !dbg !202
  %124 = load i32, i32* %7, align 4, !dbg !203
  %125 = sext i32 %124 to i64, !dbg !204
  %126 = load i16*, i16** %5, align 8, !dbg !204
  %127 = getelementptr inbounds i16, i16* %126, i64 %125, !dbg !204
  %128 = load i16, i16* %127, align 2, !dbg !204
  store i16 %128, i16* %9, align 2, !dbg !205
  %129 = load i32, i32* %8, align 4, !dbg !206
  %130 = add nsw i32 %129, 1, !dbg !206
  store i32 %130, i32* %8, align 4, !dbg !206
  br label %70, !dbg !207, !llvm.loop !208

; <label>:131:                                    ; preds = %98, %70
  %132 = load i16, i16* %9, align 2, !dbg !209
  %133 = sext i16 %132 to i64, !dbg !210
  %134 = load i8, i8* %4, align 1, !dbg !211
  %135 = zext i8 %134 to i64, !dbg !210
  %136 = getelementptr inbounds [3 x [2560 x %struct.bmpcache_entry]], [3 x [2560 x %struct.bmpcache_entry]]* @g_bmpcache, i64 0, i64 %135, !dbg !210
  %137 = getelementptr inbounds [2560 x %struct.bmpcache_entry], [2560 x %struct.bmpcache_entry]* %136, i64 0, i64 %133, !dbg !210
  %138 = getelementptr inbounds %struct.bmpcache_entry, %struct.bmpcache_entry* %137, i32 0, i32 1, !dbg !212
  store i16 -1, i16* %138, align 8, !dbg !213
  %139 = load i16, i16* %9, align 2, !dbg !214
  %140 = sext i16 %139 to i32, !dbg !214
  %141 = load i8, i8* %4, align 1, !dbg !215
  %142 = zext i8 %141 to i64, !dbg !216
  %143 = getelementptr inbounds [3 x i32], [3 x i32]* @g_bmpcache_lru, i64 0, i64 %142, !dbg !216
  store i32 %140, i32* %143, align 4, !dbg !217
  %144 = load i32, i32* %8, align 4, !dbg !218
  %145 = load i8, i8* %4, align 1, !dbg !220
  %146 = zext i8 %145 to i64, !dbg !221
  %147 = getelementptr inbounds [3 x i32], [3 x i32]* @g_bmpcache_count, i64 0, i64 %146, !dbg !221
  %148 = load i32, i32* %147, align 4, !dbg !221
  %149 = icmp ne i32 %144, %148, !dbg !222
  br i1 %149, label %150, label %156, !dbg !223

; <label>:150:                                    ; preds = %131
  %151 = load i32, i32* %8, align 4, !dbg !224
  %152 = load i8, i8* %4, align 1, !dbg !226
  %153 = zext i8 %152 to i64, !dbg !227
  %154 = getelementptr inbounds [3 x i32], [3 x i32]* @g_bmpcache_count, i64 0, i64 %153, !dbg !227
  %155 = load i32, i32* %154, align 4, !dbg !227
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i32 0, i32 0), i32 %151, i32 %155), !dbg !228
  call void @exit(i32 70) #5, !dbg !229
  unreachable, !dbg !229

; <label>:156:                                    ; preds = %35, %131
  ret void, !dbg !230
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @logger(i32, i32, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define void @cache_bump_bitmap(i8 zeroext, i16 zeroext, i32) #0 !dbg !231 {
  %4 = alloca i8, align 1
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !234, metadata !105), !dbg !235
  store i16 %1, i16* %5, align 2
  call void @llvm.dbg.declare(metadata i16* %5, metadata !236, metadata !105), !dbg !237
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !238, metadata !105), !dbg !239
  call void @llvm.dbg.declare(metadata i32* %7, metadata !240, metadata !105), !dbg !241
  call void @llvm.dbg.declare(metadata i32* %8, metadata !242, metadata !105), !dbg !243
  call void @llvm.dbg.declare(metadata i32* %9, metadata !244, metadata !105), !dbg !245
  %10 = load i8, i8* %4, align 1, !dbg !246
  %11 = zext i8 %10 to i64, !dbg !248
  %12 = getelementptr inbounds [0 x i32], [0 x i32]* @g_pstcache_fd, i64 0, i64 %11, !dbg !248
  %13 = load i32, i32* %12, align 4, !dbg !248
  %14 = icmp sgt i32 %13, 0, !dbg !249
  br i1 %14, label %16, label %15, !dbg !250

; <label>:15:                                     ; preds = %3
  br label %190, !dbg !251

; <label>:16:                                     ; preds = %3
  %17 = load i8, i8* %4, align 1, !dbg !252
  %18 = zext i8 %17 to i64, !dbg !254
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* @g_bmpcache_mru, i64 0, i64 %18, !dbg !254
  %20 = load i32, i32* %19, align 4, !dbg !254
  %21 = load i16, i16* %5, align 2, !dbg !255
  %22 = zext i16 %21 to i32, !dbg !255
  %23 = icmp eq i32 %20, %22, !dbg !256
  br i1 %23, label %24, label %25, !dbg !257

; <label>:24:                                     ; preds = %16
  br label %190, !dbg !258

; <label>:25:                                     ; preds = %16
  %26 = load i8, i8* %4, align 1, !dbg !259
  %27 = zext i8 %26 to i32, !dbg !259
  %28 = load i16, i16* %5, align 2, !dbg !260
  %29 = zext i16 %28 to i32, !dbg !260
  %30 = load i32, i32* %6, align 4, !dbg !261
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i32 0, i32 0), i32 %27, i32 %29, i32 %30), !dbg !262
  %31 = load i16, i16* %5, align 2, !dbg !263
  %32 = zext i16 %31 to i64, !dbg !264
  %33 = load i8, i8* %4, align 1, !dbg !265
  %34 = zext i8 %33 to i64, !dbg !264
  %35 = getelementptr inbounds [3 x [2560 x %struct.bmpcache_entry]], [3 x [2560 x %struct.bmpcache_entry]]* @g_bmpcache, i64 0, i64 %34, !dbg !264
  %36 = getelementptr inbounds [2560 x %struct.bmpcache_entry], [2560 x %struct.bmpcache_entry]* %35, i64 0, i64 %32, !dbg !264
  %37 = getelementptr inbounds %struct.bmpcache_entry, %struct.bmpcache_entry* %36, i32 0, i32 2, !dbg !266
  %38 = load i16, i16* %37, align 2, !dbg !266
  %39 = sext i16 %38 to i32, !dbg !264
  store i32 %39, i32* %8, align 4, !dbg !267
  %40 = load i16, i16* %5, align 2, !dbg !268
  %41 = zext i16 %40 to i64, !dbg !269
  %42 = load i8, i8* %4, align 1, !dbg !270
  %43 = zext i8 %42 to i64, !dbg !269
  %44 = getelementptr inbounds [3 x [2560 x %struct.bmpcache_entry]], [3 x [2560 x %struct.bmpcache_entry]]* @g_bmpcache, i64 0, i64 %43, !dbg !269
  %45 = getelementptr inbounds [2560 x %struct.bmpcache_entry], [2560 x %struct.bmpcache_entry]* %44, i64 0, i64 %41, !dbg !269
  %46 = getelementptr inbounds %struct.bmpcache_entry, %struct.bmpcache_entry* %45, i32 0, i32 1, !dbg !271
  %47 = load i16, i16* %46, align 8, !dbg !271
  %48 = sext i16 %47 to i32, !dbg !269
  store i32 %48, i32* %7, align 4, !dbg !272
  %49 = load i32, i32* %8, align 4, !dbg !273
  %50 = icmp sge i32 %49, 0, !dbg !275
  br i1 %50, label %51, label %93, !dbg !276

; <label>:51:                                     ; preds = %25
  %52 = load i8, i8* %4, align 1, !dbg !277
  %53 = zext i8 %52 to i64, !dbg !279
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* @g_bmpcache_count, i64 0, i64 %53, !dbg !279
  %55 = load i32, i32* %54, align 4, !dbg !280
  %56 = add nsw i32 %55, -1, !dbg !280
  store i32 %56, i32* %54, align 4, !dbg !280
  %57 = load i32, i32* %7, align 4, !dbg !281
  %58 = icmp sge i32 %57, 0, !dbg !283
  br i1 %58, label %59, label %69, !dbg !284

; <label>:59:                                     ; preds = %51
  %60 = load i32, i32* %8, align 4, !dbg !285
  %61 = trunc i32 %60 to i16, !dbg !285
  %62 = load i32, i32* %7, align 4, !dbg !286
  %63 = sext i32 %62 to i64, !dbg !287
  %64 = load i8, i8* %4, align 1, !dbg !288
  %65 = zext i8 %64 to i64, !dbg !287
  %66 = getelementptr inbounds [3 x [2560 x %struct.bmpcache_entry]], [3 x [2560 x %struct.bmpcache_entry]]* @g_bmpcache, i64 0, i64 %65, !dbg !287
  %67 = getelementptr inbounds [2560 x %struct.bmpcache_entry], [2560 x %struct.bmpcache_entry]* %66, i64 0, i64 %63, !dbg !287
  %68 = getelementptr inbounds %struct.bmpcache_entry, %struct.bmpcache_entry* %67, i32 0, i32 2, !dbg !289
  store i16 %61, i16* %68, align 2, !dbg !290
  br label %74, !dbg !287

; <label>:69:                                     ; preds = %51
  %70 = load i32, i32* %8, align 4, !dbg !291
  %71 = load i8, i8* %4, align 1, !dbg !292
  %72 = zext i8 %71 to i64, !dbg !293
  %73 = getelementptr inbounds [3 x i32], [3 x i32]* @g_bmpcache_lru, i64 0, i64 %72, !dbg !293
  store i32 %70, i32* %73, align 4, !dbg !294
  br label %74

; <label>:74:                                     ; preds = %69, %59
  %75 = load i32, i32* %8, align 4, !dbg !295
  %76 = icmp sge i32 %75, 0, !dbg !297
  br i1 %76, label %77, label %87, !dbg !298

; <label>:77:                                     ; preds = %74
  %78 = load i32, i32* %7, align 4, !dbg !299
  %79 = trunc i32 %78 to i16, !dbg !299
  %80 = load i32, i32* %8, align 4, !dbg !300
  %81 = sext i32 %80 to i64, !dbg !301
  %82 = load i8, i8* %4, align 1, !dbg !302
  %83 = zext i8 %82 to i64, !dbg !301
  %84 = getelementptr inbounds [3 x [2560 x %struct.bmpcache_entry]], [3 x [2560 x %struct.bmpcache_entry]]* @g_bmpcache, i64 0, i64 %83, !dbg !301
  %85 = getelementptr inbounds [2560 x %struct.bmpcache_entry], [2560 x %struct.bmpcache_entry]* %84, i64 0, i64 %81, !dbg !301
  %86 = getelementptr inbounds %struct.bmpcache_entry, %struct.bmpcache_entry* %85, i32 0, i32 1, !dbg !303
  store i16 %79, i16* %86, align 8, !dbg !304
  br label %92, !dbg !301

; <label>:87:                                     ; preds = %74
  %88 = load i32, i32* %7, align 4, !dbg !305
  %89 = load i8, i8* %4, align 1, !dbg !306
  %90 = zext i8 %89 to i64, !dbg !307
  %91 = getelementptr inbounds [3 x i32], [3 x i32]* @g_bmpcache_mru, i64 0, i64 %90, !dbg !307
  store i32 %88, i32* %91, align 4, !dbg !308
  br label %92

; <label>:92:                                     ; preds = %87, %77
  br label %98, !dbg !309

; <label>:93:                                     ; preds = %25
  store i32 -1, i32* %7, align 4, !dbg !310
  %94 = load i8, i8* %4, align 1, !dbg !312
  %95 = zext i8 %94 to i64, !dbg !313
  %96 = getelementptr inbounds [3 x i32], [3 x i32]* @g_bmpcache_lru, i64 0, i64 %95, !dbg !313
  %97 = load i32, i32* %96, align 4, !dbg !313
  store i32 %97, i32* %8, align 4, !dbg !314
  br label %98

; <label>:98:                                     ; preds = %93, %92
  %99 = load i32, i32* %6, align 4, !dbg !315
  %100 = icmp sge i32 %99, 0, !dbg !317
  br i1 %100, label %101, label %126, !dbg !318

; <label>:101:                                    ; preds = %98
  store i32 0, i32* %9, align 4, !dbg !319
  br label %102, !dbg !322

; <label>:102:                                    ; preds = %122, %101
  %103 = load i32, i32* %9, align 4, !dbg !323
  %104 = load i32, i32* %6, align 4, !dbg !326
  %105 = icmp slt i32 %103, %104, !dbg !327
  br i1 %105, label %106, label %109, !dbg !328

; <label>:106:                                    ; preds = %102
  %107 = load i32, i32* %8, align 4, !dbg !329
  %108 = icmp sge i32 %107, 0, !dbg !331
  br label %109

; <label>:109:                                    ; preds = %106, %102
  %110 = phi i1 [ false, %102 ], [ %108, %106 ]
  br i1 %110, label %111, label %125, !dbg !332

; <label>:111:                                    ; preds = %109
  %112 = load i32, i32* %8, align 4, !dbg !334
  store i32 %112, i32* %7, align 4, !dbg !336
  %113 = load i32, i32* %7, align 4, !dbg !337
  %114 = sext i32 %113 to i64, !dbg !338
  %115 = load i8, i8* %4, align 1, !dbg !339
  %116 = zext i8 %115 to i64, !dbg !338
  %117 = getelementptr inbounds [3 x [2560 x %struct.bmpcache_entry]], [3 x [2560 x %struct.bmpcache_entry]]* @g_bmpcache, i64 0, i64 %116, !dbg !338
  %118 = getelementptr inbounds [2560 x %struct.bmpcache_entry], [2560 x %struct.bmpcache_entry]* %117, i64 0, i64 %114, !dbg !338
  %119 = getelementptr inbounds %struct.bmpcache_entry, %struct.bmpcache_entry* %118, i32 0, i32 2, !dbg !340
  %120 = load i16, i16* %119, align 2, !dbg !340
  %121 = sext i16 %120 to i32, !dbg !338
  store i32 %121, i32* %8, align 4, !dbg !341
  br label %122, !dbg !342

; <label>:122:                                    ; preds = %111
  %123 = load i32, i32* %9, align 4, !dbg !343
  %124 = add nsw i32 %123, 1, !dbg !343
  store i32 %124, i32* %9, align 4, !dbg !343
  br label %102, !dbg !345, !llvm.loop !346

; <label>:125:                                    ; preds = %109
  br label %131, !dbg !348

; <label>:126:                                    ; preds = %98
  %127 = load i8, i8* %4, align 1, !dbg !349
  %128 = zext i8 %127 to i64, !dbg !351
  %129 = getelementptr inbounds [3 x i32], [3 x i32]* @g_bmpcache_mru, i64 0, i64 %128, !dbg !351
  %130 = load i32, i32* %129, align 4, !dbg !351
  store i32 %130, i32* %7, align 4, !dbg !352
  store i32 -1, i32* %8, align 4, !dbg !353
  br label %131

; <label>:131:                                    ; preds = %126, %125
  %132 = load i8, i8* %4, align 1, !dbg !354
  %133 = zext i8 %132 to i64, !dbg !355
  %134 = getelementptr inbounds [3 x i32], [3 x i32]* @g_bmpcache_count, i64 0, i64 %133, !dbg !355
  %135 = load i32, i32* %134, align 4, !dbg !356
  %136 = add nsw i32 %135, 1, !dbg !356
  store i32 %136, i32* %134, align 4, !dbg !356
  %137 = load i32, i32* %7, align 4, !dbg !357
  %138 = trunc i32 %137 to i16, !dbg !357
  %139 = load i16, i16* %5, align 2, !dbg !358
  %140 = zext i16 %139 to i64, !dbg !359
  %141 = load i8, i8* %4, align 1, !dbg !360
  %142 = zext i8 %141 to i64, !dbg !359
  %143 = getelementptr inbounds [3 x [2560 x %struct.bmpcache_entry]], [3 x [2560 x %struct.bmpcache_entry]]* @g_bmpcache, i64 0, i64 %142, !dbg !359
  %144 = getelementptr inbounds [2560 x %struct.bmpcache_entry], [2560 x %struct.bmpcache_entry]* %143, i64 0, i64 %140, !dbg !359
  %145 = getelementptr inbounds %struct.bmpcache_entry, %struct.bmpcache_entry* %144, i32 0, i32 1, !dbg !361
  store i16 %138, i16* %145, align 8, !dbg !362
  %146 = load i32, i32* %8, align 4, !dbg !363
  %147 = trunc i32 %146 to i16, !dbg !363
  %148 = load i16, i16* %5, align 2, !dbg !364
  %149 = zext i16 %148 to i64, !dbg !365
  %150 = load i8, i8* %4, align 1, !dbg !366
  %151 = zext i8 %150 to i64, !dbg !365
  %152 = getelementptr inbounds [3 x [2560 x %struct.bmpcache_entry]], [3 x [2560 x %struct.bmpcache_entry]]* @g_bmpcache, i64 0, i64 %151, !dbg !365
  %153 = getelementptr inbounds [2560 x %struct.bmpcache_entry], [2560 x %struct.bmpcache_entry]* %152, i64 0, i64 %149, !dbg !365
  %154 = getelementptr inbounds %struct.bmpcache_entry, %struct.bmpcache_entry* %153, i32 0, i32 2, !dbg !367
  store i16 %147, i16* %154, align 2, !dbg !368
  %155 = load i32, i32* %7, align 4, !dbg !369
  %156 = icmp sge i32 %155, 0, !dbg !371
  br i1 %156, label %157, label %166, !dbg !372

; <label>:157:                                    ; preds = %131
  %158 = load i16, i16* %5, align 2, !dbg !373
  %159 = load i32, i32* %7, align 4, !dbg !374
  %160 = sext i32 %159 to i64, !dbg !375
  %161 = load i8, i8* %4, align 1, !dbg !376
  %162 = zext i8 %161 to i64, !dbg !375
  %163 = getelementptr inbounds [3 x [2560 x %struct.bmpcache_entry]], [3 x [2560 x %struct.bmpcache_entry]]* @g_bmpcache, i64 0, i64 %162, !dbg !375
  %164 = getelementptr inbounds [2560 x %struct.bmpcache_entry], [2560 x %struct.bmpcache_entry]* %163, i64 0, i64 %160, !dbg !375
  %165 = getelementptr inbounds %struct.bmpcache_entry, %struct.bmpcache_entry* %164, i32 0, i32 2, !dbg !377
  store i16 %158, i16* %165, align 2, !dbg !378
  br label %172, !dbg !375

; <label>:166:                                    ; preds = %131
  %167 = load i16, i16* %5, align 2, !dbg !379
  %168 = zext i16 %167 to i32, !dbg !379
  %169 = load i8, i8* %4, align 1, !dbg !380
  %170 = zext i8 %169 to i64, !dbg !381
  %171 = getelementptr inbounds [3 x i32], [3 x i32]* @g_bmpcache_lru, i64 0, i64 %170, !dbg !381
  store i32 %168, i32* %171, align 4, !dbg !382
  br label %172

; <label>:172:                                    ; preds = %166, %157
  %173 = load i32, i32* %8, align 4, !dbg !383
  %174 = icmp sge i32 %173, 0, !dbg !385
  br i1 %174, label %175, label %184, !dbg !386

; <label>:175:                                    ; preds = %172
  %176 = load i16, i16* %5, align 2, !dbg !387
  %177 = load i32, i32* %8, align 4, !dbg !388
  %178 = sext i32 %177 to i64, !dbg !389
  %179 = load i8, i8* %4, align 1, !dbg !390
  %180 = zext i8 %179 to i64, !dbg !389
  %181 = getelementptr inbounds [3 x [2560 x %struct.bmpcache_entry]], [3 x [2560 x %struct.bmpcache_entry]]* @g_bmpcache, i64 0, i64 %180, !dbg !389
  %182 = getelementptr inbounds [2560 x %struct.bmpcache_entry], [2560 x %struct.bmpcache_entry]* %181, i64 0, i64 %178, !dbg !389
  %183 = getelementptr inbounds %struct.bmpcache_entry, %struct.bmpcache_entry* %182, i32 0, i32 1, !dbg !391
  store i16 %176, i16* %183, align 8, !dbg !392
  br label %190, !dbg !389

; <label>:184:                                    ; preds = %172
  %185 = load i16, i16* %5, align 2, !dbg !393
  %186 = zext i16 %185 to i32, !dbg !393
  %187 = load i8, i8* %4, align 1, !dbg !394
  %188 = zext i8 %187 to i64, !dbg !395
  %189 = getelementptr inbounds [3 x i32], [3 x i32]* @g_bmpcache_mru, i64 0, i64 %188, !dbg !395
  store i32 %186, i32* %189, align 4, !dbg !396
  br label %190

; <label>:190:                                    ; preds = %15, %24, %184, %175
  ret void, !dbg !397
}

; Function Attrs: nounwind uwtable
define void @cache_evict_bitmap(i8 zeroext) #0 !dbg !398 {
  %2 = alloca i8, align 1
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  store i8 %0, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !401, metadata !105), !dbg !402
  call void @llvm.dbg.declare(metadata i16* %3, metadata !403, metadata !105), !dbg !404
  call void @llvm.dbg.declare(metadata i32* %4, metadata !405, metadata !105), !dbg !406
  %5 = load i8, i8* %2, align 1, !dbg !407
  %6 = zext i8 %5 to i64, !dbg !409
  %7 = getelementptr inbounds [0 x i32], [0 x i32]* @g_pstcache_fd, i64 0, i64 %6, !dbg !409
  %8 = load i32, i32* %7, align 4, !dbg !409
  %9 = icmp sgt i32 %8, 0, !dbg !410
  br i1 %9, label %11, label %10, !dbg !411

; <label>:10:                                     ; preds = %1
  br label %72, !dbg !412

; <label>:11:                                     ; preds = %1
  %12 = load i8, i8* %2, align 1, !dbg !413
  %13 = zext i8 %12 to i64, !dbg !414
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* @g_bmpcache_lru, i64 0, i64 %13, !dbg !414
  %15 = load i32, i32* %14, align 4, !dbg !414
  %16 = trunc i32 %15 to i16, !dbg !414
  store i16 %16, i16* %3, align 2, !dbg !415
  %17 = load i16, i16* %3, align 2, !dbg !416
  %18 = zext i16 %17 to i64, !dbg !417
  %19 = load i8, i8* %2, align 1, !dbg !418
  %20 = zext i8 %19 to i64, !dbg !417
  %21 = getelementptr inbounds [3 x [2560 x %struct.bmpcache_entry]], [3 x [2560 x %struct.bmpcache_entry]]* @g_bmpcache, i64 0, i64 %20, !dbg !417
  %22 = getelementptr inbounds [2560 x %struct.bmpcache_entry], [2560 x %struct.bmpcache_entry]* %21, i64 0, i64 %18, !dbg !417
  %23 = getelementptr inbounds %struct.bmpcache_entry, %struct.bmpcache_entry* %22, i32 0, i32 2, !dbg !419
  %24 = load i16, i16* %23, align 2, !dbg !419
  %25 = sext i16 %24 to i32, !dbg !417
  store i32 %25, i32* %4, align 4, !dbg !420
  %26 = load i8, i8* %2, align 1, !dbg !421
  %27 = zext i8 %26 to i32, !dbg !421
  %28 = load i16, i16* %3, align 2, !dbg !422
  %29 = zext i16 %28 to i32, !dbg !422
  %30 = load i32, i32* %4, align 4, !dbg !423
  %31 = load i16, i16* %3, align 2, !dbg !424
  %32 = zext i16 %31 to i64, !dbg !425
  %33 = load i8, i8* %2, align 1, !dbg !426
  %34 = zext i8 %33 to i64, !dbg !425
  %35 = getelementptr inbounds [3 x [2560 x %struct.bmpcache_entry]], [3 x [2560 x %struct.bmpcache_entry]]* @g_bmpcache, i64 0, i64 %34, !dbg !425
  %36 = getelementptr inbounds [2560 x %struct.bmpcache_entry], [2560 x %struct.bmpcache_entry]* %35, i64 0, i64 %32, !dbg !425
  %37 = getelementptr inbounds %struct.bmpcache_entry, %struct.bmpcache_entry* %36, i32 0, i32 0, !dbg !427
  %38 = load i8*, i8** %37, align 16, !dbg !427
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i32 0, i32 0), i32 %27, i32 %29, i32 %30, i8* %38), !dbg !428
  %39 = load i16, i16* %3, align 2, !dbg !429
  %40 = zext i16 %39 to i64, !dbg !430
  %41 = load i8, i8* %2, align 1, !dbg !431
  %42 = zext i8 %41 to i64, !dbg !430
  %43 = getelementptr inbounds [3 x [2560 x %struct.bmpcache_entry]], [3 x [2560 x %struct.bmpcache_entry]]* @g_bmpcache, i64 0, i64 %42, !dbg !430
  %44 = getelementptr inbounds [2560 x %struct.bmpcache_entry], [2560 x %struct.bmpcache_entry]* %43, i64 0, i64 %40, !dbg !430
  %45 = getelementptr inbounds %struct.bmpcache_entry, %struct.bmpcache_entry* %44, i32 0, i32 0, !dbg !432
  %46 = load i8*, i8** %45, align 16, !dbg !432
  call void @ui_destroy_bitmap(i8* %46), !dbg !433
  %47 = load i8, i8* %2, align 1, !dbg !434
  %48 = zext i8 %47 to i64, !dbg !435
  %49 = getelementptr inbounds [3 x i32], [3 x i32]* @g_bmpcache_count, i64 0, i64 %48, !dbg !435
  %50 = load i32, i32* %49, align 4, !dbg !436
  %51 = add nsw i32 %50, -1, !dbg !436
  store i32 %51, i32* %49, align 4, !dbg !436
  %52 = load i16, i16* %3, align 2, !dbg !437
  %53 = zext i16 %52 to i64, !dbg !438
  %54 = load i8, i8* %2, align 1, !dbg !439
  %55 = zext i8 %54 to i64, !dbg !438
  %56 = getelementptr inbounds [3 x [2560 x %struct.bmpcache_entry]], [3 x [2560 x %struct.bmpcache_entry]]* @g_bmpcache, i64 0, i64 %55, !dbg !438
  %57 = getelementptr inbounds [2560 x %struct.bmpcache_entry], [2560 x %struct.bmpcache_entry]* %56, i64 0, i64 %53, !dbg !438
  %58 = getelementptr inbounds %struct.bmpcache_entry, %struct.bmpcache_entry* %57, i32 0, i32 0, !dbg !440
  store i8* null, i8** %58, align 16, !dbg !441
  %59 = load i32, i32* %4, align 4, !dbg !442
  %60 = load i8, i8* %2, align 1, !dbg !443
  %61 = zext i8 %60 to i64, !dbg !444
  %62 = getelementptr inbounds [3 x i32], [3 x i32]* @g_bmpcache_lru, i64 0, i64 %61, !dbg !444
  store i32 %59, i32* %62, align 4, !dbg !445
  %63 = load i32, i32* %4, align 4, !dbg !446
  %64 = sext i32 %63 to i64, !dbg !447
  %65 = load i8, i8* %2, align 1, !dbg !448
  %66 = zext i8 %65 to i64, !dbg !447
  %67 = getelementptr inbounds [3 x [2560 x %struct.bmpcache_entry]], [3 x [2560 x %struct.bmpcache_entry]]* @g_bmpcache, i64 0, i64 %66, !dbg !447
  %68 = getelementptr inbounds [2560 x %struct.bmpcache_entry], [2560 x %struct.bmpcache_entry]* %67, i64 0, i64 %64, !dbg !447
  %69 = getelementptr inbounds %struct.bmpcache_entry, %struct.bmpcache_entry* %68, i32 0, i32 1, !dbg !449
  store i16 -1, i16* %69, align 8, !dbg !450
  %70 = load i8, i8* %2, align 1, !dbg !451
  %71 = load i16, i16* %3, align 2, !dbg !452
  call void @pstcache_touch_bitmap(i8 zeroext %70, i16 zeroext %71, i32 0), !dbg !453
  br label %72, !dbg !454

; <label>:72:                                     ; preds = %11, %10
  ret void, !dbg !455
}

declare void @ui_destroy_bitmap(i8*) #2

declare void @pstcache_touch_bitmap(i8 zeroext, i16 zeroext, i32) #2

; Function Attrs: nounwind uwtable
define i8* @cache_get_bitmap(i8 zeroext, i16 zeroext) #0 !dbg !457 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i16, align 2
  store i8 %0, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !460, metadata !105), !dbg !461
  store i16 %1, i16* %5, align 2
  call void @llvm.dbg.declare(metadata i16* %5, metadata !462, metadata !105), !dbg !463
  %6 = load i8, i8* %4, align 1, !dbg !464
  %7 = zext i8 %6 to i64, !dbg !464
  %8 = icmp ult i64 %7, 3, !dbg !466
  br i1 %8, label %9, label %47, !dbg !467

; <label>:9:                                      ; preds = %2
  %10 = load i16, i16* %5, align 2, !dbg !468
  %11 = zext i16 %10 to i64, !dbg !468
  %12 = icmp ult i64 %11, 2560, !dbg !470
  br i1 %12, label %13, label %47, !dbg !471

; <label>:13:                                     ; preds = %9
  %14 = load i16, i16* %5, align 2, !dbg !472
  %15 = zext i16 %14 to i64, !dbg !475
  %16 = load i8, i8* %4, align 1, !dbg !476
  %17 = zext i8 %16 to i64, !dbg !475
  %18 = getelementptr inbounds [3 x [2560 x %struct.bmpcache_entry]], [3 x [2560 x %struct.bmpcache_entry]]* @g_bmpcache, i64 0, i64 %17, !dbg !475
  %19 = getelementptr inbounds [2560 x %struct.bmpcache_entry], [2560 x %struct.bmpcache_entry]* %18, i64 0, i64 %15, !dbg !475
  %20 = getelementptr inbounds %struct.bmpcache_entry, %struct.bmpcache_entry* %19, i32 0, i32 0, !dbg !477
  %21 = load i8*, i8** %20, align 16, !dbg !477
  %22 = icmp ne i8* %21, null, !dbg !475
  br i1 %22, label %28, label %23, !dbg !478

; <label>:23:                                     ; preds = %13
  %24 = load i8, i8* %4, align 1, !dbg !479
  %25 = load i16, i16* %5, align 2, !dbg !481
  %26 = call i32 @pstcache_load_bitmap(i8 zeroext %24, i16 zeroext %25), !dbg !482
  %27 = icmp ne i32 %26, 0, !dbg !482
  br i1 %27, label %28, label %46, !dbg !483

; <label>:28:                                     ; preds = %23, %13
  %29 = load i8, i8* %4, align 1, !dbg !484
  %30 = zext i8 %29 to i64, !dbg !487
  %31 = getelementptr inbounds [0 x i32], [0 x i32]* @g_pstcache_fd, i64 0, i64 %30, !dbg !487
  %32 = load i32, i32* %31, align 4, !dbg !487
  %33 = icmp sgt i32 %32, 0, !dbg !488
  br i1 %33, label %34, label %37, !dbg !489

; <label>:34:                                     ; preds = %28
  %35 = load i8, i8* %4, align 1, !dbg !490
  %36 = load i16, i16* %5, align 2, !dbg !491
  call void @cache_bump_bitmap(i8 zeroext %35, i16 zeroext %36, i32 40), !dbg !492
  br label %37, !dbg !492

; <label>:37:                                     ; preds = %34, %28
  %38 = load i16, i16* %5, align 2, !dbg !493
  %39 = zext i16 %38 to i64, !dbg !494
  %40 = load i8, i8* %4, align 1, !dbg !495
  %41 = zext i8 %40 to i64, !dbg !494
  %42 = getelementptr inbounds [3 x [2560 x %struct.bmpcache_entry]], [3 x [2560 x %struct.bmpcache_entry]]* @g_bmpcache, i64 0, i64 %41, !dbg !494
  %43 = getelementptr inbounds [2560 x %struct.bmpcache_entry], [2560 x %struct.bmpcache_entry]* %42, i64 0, i64 %39, !dbg !494
  %44 = getelementptr inbounds %struct.bmpcache_entry, %struct.bmpcache_entry* %43, i32 0, i32 0, !dbg !496
  %45 = load i8*, i8** %44, align 16, !dbg !496
  store i8* %45, i8** %3, align 8, !dbg !497
  br label %66, !dbg !497

; <label>:46:                                     ; preds = %23
  br label %61, !dbg !498

; <label>:47:                                     ; preds = %9, %2
  %48 = load i8, i8* %4, align 1, !dbg !499
  %49 = zext i8 %48 to i64, !dbg !499
  %50 = icmp ult i64 %49, 3, !dbg !501
  br i1 %50, label %51, label %60, !dbg !502

; <label>:51:                                     ; preds = %47
  %52 = load i16, i16* %5, align 2, !dbg !503
  %53 = zext i16 %52 to i32, !dbg !503
  %54 = icmp eq i32 %53, 32767, !dbg !505
  br i1 %54, label %55, label %60, !dbg !506

; <label>:55:                                     ; preds = %51
  %56 = load i8, i8* %4, align 1, !dbg !507
  %57 = zext i8 %56 to i64, !dbg !509
  %58 = getelementptr inbounds [3 x i8*], [3 x i8*]* @g_volatile_bc, i64 0, i64 %57, !dbg !509
  %59 = load i8*, i8** %58, align 8, !dbg !509
  store i8* %59, i8** %3, align 8, !dbg !510
  br label %66, !dbg !510

; <label>:60:                                     ; preds = %51, %47
  br label %61

; <label>:61:                                     ; preds = %60, %46
  %62 = load i8, i8* %4, align 1, !dbg !511
  %63 = zext i8 %62 to i32, !dbg !511
  %64 = load i16, i16* %5, align 2, !dbg !512
  %65 = zext i16 %64 to i32, !dbg !512
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i32 %63, i32 %65), !dbg !513
  store i8* null, i8** %3, align 8, !dbg !514
  br label %66, !dbg !514

; <label>:66:                                     ; preds = %61, %55, %37
  %67 = load i8*, i8** %3, align 8, !dbg !515
  ret i8* %67, !dbg !515
}

declare i32 @pstcache_load_bitmap(i8 zeroext, i16 zeroext) #2

; Function Attrs: nounwind uwtable
define void @cache_put_bitmap(i8 zeroext, i16 zeroext, i8*) #0 !dbg !516 {
  %4 = alloca i8, align 1
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8 %0, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !519, metadata !105), !dbg !520
  store i16 %1, i16* %5, align 2
  call void @llvm.dbg.declare(metadata i16* %5, metadata !521, metadata !105), !dbg !522
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !523, metadata !105), !dbg !524
  call void @llvm.dbg.declare(metadata i8** %7, metadata !525, metadata !105), !dbg !526
  %8 = load i8, i8* %4, align 1, !dbg !527
  %9 = zext i8 %8 to i64, !dbg !527
  %10 = icmp ult i64 %9, 3, !dbg !529
  br i1 %10, label %11, label %72, !dbg !530

; <label>:11:                                     ; preds = %3
  %12 = load i16, i16* %5, align 2, !dbg !531
  %13 = zext i16 %12 to i64, !dbg !531
  %14 = icmp ult i64 %13, 2560, !dbg !533
  br i1 %14, label %15, label %72, !dbg !534

; <label>:15:                                     ; preds = %11
  %16 = load i16, i16* %5, align 2, !dbg !535
  %17 = zext i16 %16 to i64, !dbg !537
  %18 = load i8, i8* %4, align 1, !dbg !538
  %19 = zext i8 %18 to i64, !dbg !537
  %20 = getelementptr inbounds [3 x [2560 x %struct.bmpcache_entry]], [3 x [2560 x %struct.bmpcache_entry]]* @g_bmpcache, i64 0, i64 %19, !dbg !537
  %21 = getelementptr inbounds [2560 x %struct.bmpcache_entry], [2560 x %struct.bmpcache_entry]* %20, i64 0, i64 %17, !dbg !537
  %22 = getelementptr inbounds %struct.bmpcache_entry, %struct.bmpcache_entry* %21, i32 0, i32 0, !dbg !539
  %23 = load i8*, i8** %22, align 16, !dbg !539
  store i8* %23, i8** %7, align 8, !dbg !540
  %24 = load i8*, i8** %7, align 8, !dbg !541
  %25 = icmp ne i8* %24, null, !dbg !543
  br i1 %25, label %26, label %28, !dbg !544

; <label>:26:                                     ; preds = %15
  %27 = load i8*, i8** %7, align 8, !dbg !545
  call void @ui_destroy_bitmap(i8* %27), !dbg !546
  br label %28, !dbg !546

; <label>:28:                                     ; preds = %26, %15
  %29 = load i8*, i8** %6, align 8, !dbg !547
  %30 = load i16, i16* %5, align 2, !dbg !548
  %31 = zext i16 %30 to i64, !dbg !549
  %32 = load i8, i8* %4, align 1, !dbg !550
  %33 = zext i8 %32 to i64, !dbg !549
  %34 = getelementptr inbounds [3 x [2560 x %struct.bmpcache_entry]], [3 x [2560 x %struct.bmpcache_entry]]* @g_bmpcache, i64 0, i64 %33, !dbg !549
  %35 = getelementptr inbounds [2560 x %struct.bmpcache_entry], [2560 x %struct.bmpcache_entry]* %34, i64 0, i64 %31, !dbg !549
  %36 = getelementptr inbounds %struct.bmpcache_entry, %struct.bmpcache_entry* %35, i32 0, i32 0, !dbg !551
  store i8* %29, i8** %36, align 16, !dbg !552
  %37 = load i8, i8* %4, align 1, !dbg !553
  %38 = zext i8 %37 to i64, !dbg !555
  %39 = getelementptr inbounds [0 x i32], [0 x i32]* @g_pstcache_fd, i64 0, i64 %38, !dbg !555
  %40 = load i32, i32* %39, align 4, !dbg !555
  %41 = icmp sgt i32 %40, 0, !dbg !556
  br i1 %41, label %42, label %71, !dbg !557

; <label>:42:                                     ; preds = %28
  %43 = load i8*, i8** %7, align 8, !dbg !558
  %44 = icmp eq i8* %43, null, !dbg !561
  br i1 %44, label %45, label %60, !dbg !562

; <label>:45:                                     ; preds = %42
  %46 = load i16, i16* %5, align 2, !dbg !563
  %47 = zext i16 %46 to i64, !dbg !564
  %48 = load i8, i8* %4, align 1, !dbg !565
  %49 = zext i8 %48 to i64, !dbg !564
  %50 = getelementptr inbounds [3 x [2560 x %struct.bmpcache_entry]], [3 x [2560 x %struct.bmpcache_entry]]* @g_bmpcache, i64 0, i64 %49, !dbg !564
  %51 = getelementptr inbounds [2560 x %struct.bmpcache_entry], [2560 x %struct.bmpcache_entry]* %50, i64 0, i64 %47, !dbg !564
  %52 = getelementptr inbounds %struct.bmpcache_entry, %struct.bmpcache_entry* %51, i32 0, i32 2, !dbg !566
  store i16 -1, i16* %52, align 2, !dbg !567
  %53 = load i16, i16* %5, align 2, !dbg !568
  %54 = zext i16 %53 to i64, !dbg !569
  %55 = load i8, i8* %4, align 1, !dbg !570
  %56 = zext i8 %55 to i64, !dbg !569
  %57 = getelementptr inbounds [3 x [2560 x %struct.bmpcache_entry]], [3 x [2560 x %struct.bmpcache_entry]]* @g_bmpcache, i64 0, i64 %56, !dbg !569
  %58 = getelementptr inbounds [2560 x %struct.bmpcache_entry], [2560 x %struct.bmpcache_entry]* %57, i64 0, i64 %54, !dbg !569
  %59 = getelementptr inbounds %struct.bmpcache_entry, %struct.bmpcache_entry* %58, i32 0, i32 1, !dbg !571
  store i16 -1, i16* %59, align 8, !dbg !572
  br label %60, !dbg !569

; <label>:60:                                     ; preds = %45, %42
  %61 = load i8, i8* %4, align 1, !dbg !573
  %62 = load i16, i16* %5, align 2, !dbg !574
  call void @cache_bump_bitmap(i8 zeroext %61, i16 zeroext %62, i32 -1), !dbg !575
  %63 = load i8, i8* %4, align 1, !dbg !576
  %64 = zext i8 %63 to i64, !dbg !578
  %65 = getelementptr inbounds [3 x i32], [3 x i32]* @g_bmpcache_count, i64 0, i64 %64, !dbg !578
  %66 = load i32, i32* %65, align 4, !dbg !578
  %67 = icmp sgt i32 %66, 336, !dbg !579
  br i1 %67, label %68, label %70, !dbg !580

; <label>:68:                                     ; preds = %60
  %69 = load i8, i8* %4, align 1, !dbg !581
  call void @cache_evict_bitmap(i8 zeroext %69), !dbg !582
  br label %70, !dbg !582

; <label>:70:                                     ; preds = %68, %60
  br label %71, !dbg !583

; <label>:71:                                     ; preds = %70, %28
  br label %100, !dbg !584

; <label>:72:                                     ; preds = %11, %3
  %73 = load i8, i8* %4, align 1, !dbg !585
  %74 = zext i8 %73 to i64, !dbg !585
  %75 = icmp ult i64 %74, 3, !dbg !587
  br i1 %75, label %76, label %94, !dbg !588

; <label>:76:                                     ; preds = %72
  %77 = load i16, i16* %5, align 2, !dbg !589
  %78 = zext i16 %77 to i32, !dbg !589
  %79 = icmp eq i32 %78, 32767, !dbg !591
  br i1 %79, label %80, label %94, !dbg !592

; <label>:80:                                     ; preds = %76
  %81 = load i8, i8* %4, align 1, !dbg !593
  %82 = zext i8 %81 to i64, !dbg !595
  %83 = getelementptr inbounds [3 x i8*], [3 x i8*]* @g_volatile_bc, i64 0, i64 %82, !dbg !595
  %84 = load i8*, i8** %83, align 8, !dbg !595
  store i8* %84, i8** %7, align 8, !dbg !596
  %85 = load i8*, i8** %7, align 8, !dbg !597
  %86 = icmp ne i8* %85, null, !dbg !599
  br i1 %86, label %87, label %89, !dbg !600

; <label>:87:                                     ; preds = %80
  %88 = load i8*, i8** %7, align 8, !dbg !601
  call void @ui_destroy_bitmap(i8* %88), !dbg !602
  br label %89, !dbg !602

; <label>:89:                                     ; preds = %87, %80
  %90 = load i8*, i8** %6, align 8, !dbg !603
  %91 = load i8, i8* %4, align 1, !dbg !604
  %92 = zext i8 %91 to i64, !dbg !605
  %93 = getelementptr inbounds [3 x i8*], [3 x i8*]* @g_volatile_bc, i64 0, i64 %92, !dbg !605
  store i8* %90, i8** %93, align 8, !dbg !606
  br label %99, !dbg !607

; <label>:94:                                     ; preds = %76, %72
  %95 = load i8, i8* %4, align 1, !dbg !608
  %96 = zext i8 %95 to i32, !dbg !608
  %97 = load i16, i16* %5, align 2, !dbg !610
  %98 = zext i16 %97 to i32, !dbg !610
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i32 0, i32 0), i32 %96, i32 %98), !dbg !611
  br label %99

; <label>:99:                                     ; preds = %94, %89
  br label %100

; <label>:100:                                    ; preds = %99, %71
  ret void, !dbg !612
}

; Function Attrs: nounwind uwtable
define void @cache_save_state() #0 !dbg !613 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !616, metadata !105), !dbg !617
  store i32 0, i32* %1, align 4, !dbg !617
  call void @llvm.dbg.declare(metadata i32* %2, metadata !618, metadata !105), !dbg !619
  store i32 0, i32* %2, align 4, !dbg !619
  call void @llvm.dbg.declare(metadata i32* %3, metadata !620, metadata !105), !dbg !621
  store i32 0, i32* %1, align 4, !dbg !622
  br label %4, !dbg !624

; <label>:4:                                      ; preds = %42, %0
  %5 = load i32, i32* %1, align 4, !dbg !625
  %6 = zext i32 %5 to i64, !dbg !625
  %7 = icmp ult i64 %6, 3, !dbg !628
  br i1 %7, label %8, label %45, !dbg !629

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %1, align 4, !dbg !630
  %10 = zext i32 %9 to i64, !dbg !632
  %11 = getelementptr inbounds [0 x i32], [0 x i32]* @g_pstcache_fd, i64 0, i64 %10, !dbg !632
  %12 = load i32, i32* %11, align 4, !dbg !632
  %13 = icmp sgt i32 %12, 0, !dbg !633
  br i1 %13, label %14, label %41, !dbg !634

; <label>:14:                                     ; preds = %8
  %15 = load i32, i32* %1, align 4, !dbg !635
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i32 0, i32 0), i32 %15), !dbg !637
  %16 = load i32, i32* %1, align 4, !dbg !638
  %17 = zext i32 %16 to i64, !dbg !639
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* @g_bmpcache_lru, i64 0, i64 %17, !dbg !639
  %19 = load i32, i32* %18, align 4, !dbg !639
  store i32 %19, i32* %3, align 4, !dbg !640
  br label %20, !dbg !641

; <label>:20:                                     ; preds = %23, %14
  %21 = load i32, i32* %3, align 4, !dbg !642
  %22 = icmp sge i32 %21, 0, !dbg !644
  br i1 %22, label %23, label %39, !dbg !645

; <label>:23:                                     ; preds = %20
  %24 = load i32, i32* %1, align 4, !dbg !646
  %25 = trunc i32 %24 to i8, !dbg !646
  %26 = load i32, i32* %3, align 4, !dbg !648
  %27 = trunc i32 %26 to i16, !dbg !648
  %28 = load i32, i32* %2, align 4, !dbg !649
  %29 = add i32 %28, 1, !dbg !649
  store i32 %29, i32* %2, align 4, !dbg !649
  call void @pstcache_touch_bitmap(i8 zeroext %25, i16 zeroext %27, i32 %29), !dbg !650
  %30 = load i32, i32* %3, align 4, !dbg !651
  %31 = sext i32 %30 to i64, !dbg !652
  %32 = load i32, i32* %1, align 4, !dbg !653
  %33 = zext i32 %32 to i64, !dbg !652
  %34 = getelementptr inbounds [3 x [2560 x %struct.bmpcache_entry]], [3 x [2560 x %struct.bmpcache_entry]]* @g_bmpcache, i64 0, i64 %33, !dbg !652
  %35 = getelementptr inbounds [2560 x %struct.bmpcache_entry], [2560 x %struct.bmpcache_entry]* %34, i64 0, i64 %31, !dbg !652
  %36 = getelementptr inbounds %struct.bmpcache_entry, %struct.bmpcache_entry* %35, i32 0, i32 2, !dbg !654
  %37 = load i16, i16* %36, align 2, !dbg !654
  %38 = sext i16 %37 to i32, !dbg !652
  store i32 %38, i32* %3, align 4, !dbg !655
  br label %20, !dbg !656, !llvm.loop !658

; <label>:39:                                     ; preds = %20
  %40 = load i32, i32* %2, align 4, !dbg !659
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i32 0, i32 0), i32 %40), !dbg !660
  br label %41, !dbg !661

; <label>:41:                                     ; preds = %39, %8
  br label %42, !dbg !662

; <label>:42:                                     ; preds = %41
  %43 = load i32, i32* %1, align 4, !dbg !664
  %44 = add i32 %43, 1, !dbg !664
  store i32 %44, i32* %1, align 4, !dbg !664
  br label %4, !dbg !666, !llvm.loop !667

; <label>:45:                                     ; preds = %4
  ret void, !dbg !669
}

; Function Attrs: nounwind uwtable
define %struct._FONTGLYPH* @cache_get_font(i8 zeroext, i16 zeroext) #0 !dbg !670 {
  %3 = alloca %struct._FONTGLYPH*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i16, align 2
  %6 = alloca %struct._FONTGLYPH*, align 8
  store i8 %0, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !674, metadata !105), !dbg !675
  store i16 %1, i16* %5, align 2
  call void @llvm.dbg.declare(metadata i16* %5, metadata !676, metadata !105), !dbg !677
  call void @llvm.dbg.declare(metadata %struct._FONTGLYPH** %6, metadata !678, metadata !105), !dbg !679
  %7 = load i8, i8* %4, align 1, !dbg !680
  %8 = zext i8 %7 to i64, !dbg !680
  %9 = icmp ult i64 %8, 12, !dbg !682
  br i1 %9, label %10, label %28, !dbg !683

; <label>:10:                                     ; preds = %2
  %11 = load i16, i16* %5, align 2, !dbg !684
  %12 = zext i16 %11 to i64, !dbg !684
  %13 = icmp ult i64 %12, 256, !dbg !686
  br i1 %13, label %14, label %28, !dbg !687

; <label>:14:                                     ; preds = %10
  %15 = load i16, i16* %5, align 2, !dbg !688
  %16 = zext i16 %15 to i64, !dbg !690
  %17 = load i8, i8* %4, align 1, !dbg !691
  %18 = zext i8 %17 to i64, !dbg !690
  %19 = getelementptr inbounds [12 x [256 x %struct._FONTGLYPH]], [12 x [256 x %struct._FONTGLYPH]]* @g_fontcache, i64 0, i64 %18, !dbg !690
  %20 = getelementptr inbounds [256 x %struct._FONTGLYPH], [256 x %struct._FONTGLYPH]* %19, i64 0, i64 %16, !dbg !690
  store %struct._FONTGLYPH* %20, %struct._FONTGLYPH** %6, align 8, !dbg !692
  %21 = load %struct._FONTGLYPH*, %struct._FONTGLYPH** %6, align 8, !dbg !693
  %22 = getelementptr inbounds %struct._FONTGLYPH, %struct._FONTGLYPH* %21, i32 0, i32 4, !dbg !695
  %23 = load i8*, i8** %22, align 8, !dbg !695
  %24 = icmp ne i8* %23, null, !dbg !696
  br i1 %24, label %25, label %27, !dbg !697

; <label>:25:                                     ; preds = %14
  %26 = load %struct._FONTGLYPH*, %struct._FONTGLYPH** %6, align 8, !dbg !698
  store %struct._FONTGLYPH* %26, %struct._FONTGLYPH** %3, align 8, !dbg !699
  br label %33, !dbg !699

; <label>:27:                                     ; preds = %14
  br label %28, !dbg !700

; <label>:28:                                     ; preds = %27, %10, %2
  %29 = load i8, i8* %4, align 1, !dbg !701
  %30 = zext i8 %29 to i32, !dbg !701
  %31 = load i16, i16* %5, align 2, !dbg !702
  %32 = zext i16 %31 to i32, !dbg !702
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0), i32 %30, i32 %32), !dbg !703
  store %struct._FONTGLYPH* null, %struct._FONTGLYPH** %3, align 8, !dbg !704
  br label %33, !dbg !704

; <label>:33:                                     ; preds = %28, %25
  %34 = load %struct._FONTGLYPH*, %struct._FONTGLYPH** %3, align 8, !dbg !705
  ret %struct._FONTGLYPH* %34, !dbg !705
}

; Function Attrs: nounwind uwtable
define void @cache_put_font(i8 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i8*) #0 !dbg !706 {
  %8 = alloca i8, align 1
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i8*, align 8
  %15 = alloca %struct._FONTGLYPH*, align 8
  store i8 %0, i8* %8, align 1
  call void @llvm.dbg.declare(metadata i8* %8, metadata !710, metadata !105), !dbg !711
  store i16 %1, i16* %9, align 2
  call void @llvm.dbg.declare(metadata i16* %9, metadata !712, metadata !105), !dbg !713
  store i16 %2, i16* %10, align 2
  call void @llvm.dbg.declare(metadata i16* %10, metadata !714, metadata !105), !dbg !715
  store i16 %3, i16* %11, align 2
  call void @llvm.dbg.declare(metadata i16* %11, metadata !716, metadata !105), !dbg !717
  store i16 %4, i16* %12, align 2
  call void @llvm.dbg.declare(metadata i16* %12, metadata !718, metadata !105), !dbg !719
  store i16 %5, i16* %13, align 2
  call void @llvm.dbg.declare(metadata i16* %13, metadata !720, metadata !105), !dbg !721
  store i8* %6, i8** %14, align 8
  call void @llvm.dbg.declare(metadata i8** %14, metadata !722, metadata !105), !dbg !723
  call void @llvm.dbg.declare(metadata %struct._FONTGLYPH** %15, metadata !724, metadata !105), !dbg !725
  %16 = load i8, i8* %8, align 1, !dbg !726
  %17 = zext i8 %16 to i64, !dbg !726
  %18 = icmp ult i64 %17, 12, !dbg !728
  br i1 %18, label %19, label %54, !dbg !729

; <label>:19:                                     ; preds = %7
  %20 = load i16, i16* %9, align 2, !dbg !730
  %21 = zext i16 %20 to i64, !dbg !730
  %22 = icmp ult i64 %21, 256, !dbg !732
  br i1 %22, label %23, label %54, !dbg !733

; <label>:23:                                     ; preds = %19
  %24 = load i16, i16* %9, align 2, !dbg !734
  %25 = zext i16 %24 to i64, !dbg !736
  %26 = load i8, i8* %8, align 1, !dbg !737
  %27 = zext i8 %26 to i64, !dbg !736
  %28 = getelementptr inbounds [12 x [256 x %struct._FONTGLYPH]], [12 x [256 x %struct._FONTGLYPH]]* @g_fontcache, i64 0, i64 %27, !dbg !736
  %29 = getelementptr inbounds [256 x %struct._FONTGLYPH], [256 x %struct._FONTGLYPH]* %28, i64 0, i64 %25, !dbg !736
  store %struct._FONTGLYPH* %29, %struct._FONTGLYPH** %15, align 8, !dbg !738
  %30 = load %struct._FONTGLYPH*, %struct._FONTGLYPH** %15, align 8, !dbg !739
  %31 = getelementptr inbounds %struct._FONTGLYPH, %struct._FONTGLYPH* %30, i32 0, i32 4, !dbg !741
  %32 = load i8*, i8** %31, align 8, !dbg !741
  %33 = icmp ne i8* %32, null, !dbg !742
  br i1 %33, label %34, label %38, !dbg !743

; <label>:34:                                     ; preds = %23
  %35 = load %struct._FONTGLYPH*, %struct._FONTGLYPH** %15, align 8, !dbg !744
  %36 = getelementptr inbounds %struct._FONTGLYPH, %struct._FONTGLYPH* %35, i32 0, i32 4, !dbg !745
  %37 = load i8*, i8** %36, align 8, !dbg !745
  call void @ui_destroy_glyph(i8* %37), !dbg !746
  br label %38, !dbg !746

; <label>:38:                                     ; preds = %34, %23
  %39 = load i16, i16* %10, align 2, !dbg !747
  %40 = load %struct._FONTGLYPH*, %struct._FONTGLYPH** %15, align 8, !dbg !748
  %41 = getelementptr inbounds %struct._FONTGLYPH, %struct._FONTGLYPH* %40, i32 0, i32 0, !dbg !749
  store i16 %39, i16* %41, align 8, !dbg !750
  %42 = load i16, i16* %11, align 2, !dbg !751
  %43 = load %struct._FONTGLYPH*, %struct._FONTGLYPH** %15, align 8, !dbg !752
  %44 = getelementptr inbounds %struct._FONTGLYPH, %struct._FONTGLYPH* %43, i32 0, i32 1, !dbg !753
  store i16 %42, i16* %44, align 2, !dbg !754
  %45 = load i16, i16* %12, align 2, !dbg !755
  %46 = load %struct._FONTGLYPH*, %struct._FONTGLYPH** %15, align 8, !dbg !756
  %47 = getelementptr inbounds %struct._FONTGLYPH, %struct._FONTGLYPH* %46, i32 0, i32 2, !dbg !757
  store i16 %45, i16* %47, align 4, !dbg !758
  %48 = load i16, i16* %13, align 2, !dbg !759
  %49 = load %struct._FONTGLYPH*, %struct._FONTGLYPH** %15, align 8, !dbg !760
  %50 = getelementptr inbounds %struct._FONTGLYPH, %struct._FONTGLYPH* %49, i32 0, i32 3, !dbg !761
  store i16 %48, i16* %50, align 2, !dbg !762
  %51 = load i8*, i8** %14, align 8, !dbg !763
  %52 = load %struct._FONTGLYPH*, %struct._FONTGLYPH** %15, align 8, !dbg !764
  %53 = getelementptr inbounds %struct._FONTGLYPH, %struct._FONTGLYPH* %52, i32 0, i32 4, !dbg !765
  store i8* %51, i8** %53, align 8, !dbg !766
  br label %59, !dbg !767

; <label>:54:                                     ; preds = %19, %7
  %55 = load i8, i8* %8, align 1, !dbg !768
  %56 = zext i8 %55 to i32, !dbg !768
  %57 = load i16, i16* %9, align 2, !dbg !770
  %58 = zext i16 %57 to i32, !dbg !770
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i32 0, i32 0), i32 %56, i32 %58), !dbg !771
  br label %59

; <label>:59:                                     ; preds = %54, %38
  ret void, !dbg !772
}

declare void @ui_destroy_glyph(i8*) #2

; Function Attrs: nounwind uwtable
define %struct._DATABLOB* @cache_get_text(i8 zeroext) #0 !dbg !773 {
  %2 = alloca i8, align 1
  %3 = alloca %struct._DATABLOB*, align 8
  store i8 %0, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !777, metadata !105), !dbg !778
  call void @llvm.dbg.declare(metadata %struct._DATABLOB** %3, metadata !779, metadata !105), !dbg !780
  %4 = load i8, i8* %2, align 1, !dbg !781
  %5 = zext i8 %4 to i64, !dbg !782
  %6 = getelementptr inbounds [256 x %struct._DATABLOB], [256 x %struct._DATABLOB]* @g_textcache, i64 0, i64 %5, !dbg !782
  store %struct._DATABLOB* %6, %struct._DATABLOB** %3, align 8, !dbg !783
  %7 = load %struct._DATABLOB*, %struct._DATABLOB** %3, align 8, !dbg !784
  ret %struct._DATABLOB* %7, !dbg !785
}

; Function Attrs: nounwind uwtable
define void @cache_put_text(i8 zeroext, i8*, i32) #0 !dbg !786 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._DATABLOB*, align 8
  store i8 %0, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !789, metadata !105), !dbg !790
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !791, metadata !105), !dbg !792
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !793, metadata !105), !dbg !794
  call void @llvm.dbg.declare(metadata %struct._DATABLOB** %7, metadata !795, metadata !105), !dbg !796
  %8 = load i8, i8* %4, align 1, !dbg !797
  %9 = zext i8 %8 to i64, !dbg !798
  %10 = getelementptr inbounds [256 x %struct._DATABLOB], [256 x %struct._DATABLOB]* @g_textcache, i64 0, i64 %9, !dbg !798
  store %struct._DATABLOB* %10, %struct._DATABLOB** %7, align 8, !dbg !799
  %11 = load %struct._DATABLOB*, %struct._DATABLOB** %7, align 8, !dbg !800
  %12 = getelementptr inbounds %struct._DATABLOB, %struct._DATABLOB* %11, i32 0, i32 0, !dbg !802
  %13 = load i8*, i8** %12, align 8, !dbg !802
  %14 = icmp ne i8* %13, null, !dbg !803
  br i1 %14, label %15, label %19, !dbg !804

; <label>:15:                                     ; preds = %3
  %16 = load %struct._DATABLOB*, %struct._DATABLOB** %7, align 8, !dbg !805
  %17 = getelementptr inbounds %struct._DATABLOB, %struct._DATABLOB* %16, i32 0, i32 0, !dbg !806
  %18 = load i8*, i8** %17, align 8, !dbg !806
  call void @xfree(i8* %18), !dbg !807
  br label %19, !dbg !807

; <label>:19:                                     ; preds = %15, %3
  %20 = load i32, i32* %6, align 4, !dbg !808
  %21 = call i8* @xmalloc(i32 %20), !dbg !809
  %22 = load %struct._DATABLOB*, %struct._DATABLOB** %7, align 8, !dbg !810
  %23 = getelementptr inbounds %struct._DATABLOB, %struct._DATABLOB* %22, i32 0, i32 0, !dbg !811
  store i8* %21, i8** %23, align 8, !dbg !812
  %24 = load i32, i32* %6, align 4, !dbg !813
  %25 = load %struct._DATABLOB*, %struct._DATABLOB** %7, align 8, !dbg !814
  %26 = getelementptr inbounds %struct._DATABLOB, %struct._DATABLOB* %25, i32 0, i32 1, !dbg !815
  store i32 %24, i32* %26, align 8, !dbg !816
  %27 = load %struct._DATABLOB*, %struct._DATABLOB** %7, align 8, !dbg !817
  %28 = getelementptr inbounds %struct._DATABLOB, %struct._DATABLOB* %27, i32 0, i32 0, !dbg !818
  %29 = load i8*, i8** %28, align 8, !dbg !818
  %30 = load i8*, i8** %5, align 8, !dbg !819
  %31 = load i32, i32* %6, align 4, !dbg !820
  %32 = sext i32 %31 to i64, !dbg !820
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 %32, i32 1, i1 false), !dbg !821
  ret void, !dbg !822
}

declare void @xfree(i8*) #2

declare i8* @xmalloc(i32) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define i8* @cache_get_desktop(i32, i32, i32, i32) #0 !dbg !823 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !826, metadata !105), !dbg !827
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !828, metadata !105), !dbg !829
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !830, metadata !105), !dbg !831
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !832, metadata !105), !dbg !833
  call void @llvm.dbg.declare(metadata i32* %10, metadata !834, metadata !105), !dbg !835
  %11 = load i32, i32* %7, align 4, !dbg !836
  %12 = load i32, i32* %8, align 4, !dbg !837
  %13 = mul nsw i32 %11, %12, !dbg !838
  %14 = load i32, i32* %9, align 4, !dbg !839
  %15 = mul nsw i32 %13, %14, !dbg !840
  store i32 %15, i32* %10, align 4, !dbg !835
  %16 = load i32, i32* %6, align 4, !dbg !841
  %17 = zext i32 %16 to i64, !dbg !841
  %18 = icmp ugt i64 %17, 921600, !dbg !843
  br i1 %18, label %19, label %20, !dbg !844

; <label>:19:                                     ; preds = %4
  store i32 0, i32* %6, align 4, !dbg !845
  br label %20, !dbg !846

; <label>:20:                                     ; preds = %19, %4
  %21 = load i32, i32* %6, align 4, !dbg !847
  %22 = load i32, i32* %10, align 4, !dbg !849
  %23 = add i32 %21, %22, !dbg !850
  %24 = zext i32 %23 to i64, !dbg !851
  %25 = icmp ule i64 %24, 921600, !dbg !852
  br i1 %25, label %26, label %30, !dbg !853

; <label>:26:                                     ; preds = %20
  %27 = load i32, i32* %6, align 4, !dbg !854
  %28 = zext i32 %27 to i64, !dbg !856
  %29 = getelementptr inbounds [921600 x i8], [921600 x i8]* @g_deskcache, i64 0, i64 %28, !dbg !856
  store i8* %29, i8** %5, align 8, !dbg !857
  br label %33, !dbg !857

; <label>:30:                                     ; preds = %20
  %31 = load i32, i32* %6, align 4, !dbg !858
  %32 = load i32, i32* %10, align 4, !dbg !859
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i32 0, i32 0), i32 %31, i32 %32), !dbg !860
  store i8* null, i8** %5, align 8, !dbg !861
  br label %33, !dbg !861

; <label>:33:                                     ; preds = %30, %26
  %34 = load i8*, i8** %5, align 8, !dbg !862
  ret i8* %34, !dbg !862
}

; Function Attrs: nounwind uwtable
define void @cache_put_desktop(i32, i32, i32, i32, i32, i8*) #0 !dbg !863 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !866, metadata !105), !dbg !867
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !868, metadata !105), !dbg !869
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !870, metadata !105), !dbg !871
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !872, metadata !105), !dbg !873
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !874, metadata !105), !dbg !875
  store i8* %5, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !876, metadata !105), !dbg !877
  call void @llvm.dbg.declare(metadata i32* %13, metadata !878, metadata !105), !dbg !879
  %14 = load i32, i32* %8, align 4, !dbg !880
  %15 = load i32, i32* %9, align 4, !dbg !881
  %16 = mul nsw i32 %14, %15, !dbg !882
  %17 = load i32, i32* %11, align 4, !dbg !883
  %18 = mul nsw i32 %16, %17, !dbg !884
  store i32 %18, i32* %13, align 4, !dbg !879
  %19 = load i32, i32* %7, align 4, !dbg !885
  %20 = zext i32 %19 to i64, !dbg !885
  %21 = icmp ugt i64 %20, 921600, !dbg !887
  br i1 %21, label %22, label %23, !dbg !888

; <label>:22:                                     ; preds = %6
  store i32 0, i32* %7, align 4, !dbg !889
  br label %23, !dbg !890

; <label>:23:                                     ; preds = %22, %6
  %24 = load i32, i32* %7, align 4, !dbg !891
  %25 = load i32, i32* %13, align 4, !dbg !893
  %26 = add i32 %24, %25, !dbg !894
  %27 = zext i32 %26 to i64, !dbg !895
  %28 = icmp ule i64 %27, 921600, !dbg !896
  br i1 %28, label %29, label %52, !dbg !897

; <label>:29:                                     ; preds = %23
  %30 = load i32, i32* %11, align 4, !dbg !898
  %31 = load i32, i32* %8, align 4, !dbg !900
  %32 = mul nsw i32 %31, %30, !dbg !900
  store i32 %32, i32* %8, align 4, !dbg !900
  br label %33, !dbg !901

; <label>:33:                                     ; preds = %37, %29
  %34 = load i32, i32* %9, align 4, !dbg !902
  %35 = add nsw i32 %34, -1, !dbg !902
  store i32 %35, i32* %9, align 4, !dbg !902
  %36 = icmp ne i32 %34, 0, !dbg !904
  br i1 %36, label %37, label %51, !dbg !904

; <label>:37:                                     ; preds = %33
  %38 = load i32, i32* %7, align 4, !dbg !905
  %39 = zext i32 %38 to i64, !dbg !907
  %40 = getelementptr inbounds [921600 x i8], [921600 x i8]* @g_deskcache, i64 0, i64 %39, !dbg !907
  %41 = load i8*, i8** %12, align 8, !dbg !908
  %42 = load i32, i32* %8, align 4, !dbg !909
  %43 = sext i32 %42 to i64, !dbg !909
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 %43, i32 1, i1 false), !dbg !910
  %44 = load i32, i32* %10, align 4, !dbg !911
  %45 = load i8*, i8** %12, align 8, !dbg !912
  %46 = sext i32 %44 to i64, !dbg !912
  %47 = getelementptr inbounds i8, i8* %45, i64 %46, !dbg !912
  store i8* %47, i8** %12, align 8, !dbg !912
  %48 = load i32, i32* %8, align 4, !dbg !913
  %49 = load i32, i32* %7, align 4, !dbg !914
  %50 = add i32 %49, %48, !dbg !914
  store i32 %50, i32* %7, align 4, !dbg !914
  br label %33, !dbg !915, !llvm.loop !917

; <label>:51:                                     ; preds = %33
  br label %55, !dbg !918

; <label>:52:                                     ; preds = %23
  %53 = load i32, i32* %7, align 4, !dbg !919
  %54 = load i32, i32* %13, align 4, !dbg !921
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i32 0, i32 0), i32 %53, i32 %54), !dbg !922
  br label %55

; <label>:55:                                     ; preds = %52, %51
  ret void, !dbg !923
}

; Function Attrs: nounwind uwtable
define i8* @cache_get_cursor(i16 zeroext) #0 !dbg !924 {
  %2 = alloca i8*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i8*, align 8
  store i16 %0, i16* %3, align 2
  call void @llvm.dbg.declare(metadata i16* %3, metadata !927, metadata !105), !dbg !928
  call void @llvm.dbg.declare(metadata i8** %4, metadata !929, metadata !105), !dbg !930
  %5 = load i16, i16* %3, align 2, !dbg !931
  %6 = zext i16 %5 to i64, !dbg !931
  %7 = icmp ult i64 %6, 32, !dbg !933
  br i1 %7, label %8, label %18, !dbg !934

; <label>:8:                                      ; preds = %1
  %9 = load i16, i16* %3, align 2, !dbg !935
  %10 = zext i16 %9 to i64, !dbg !937
  %11 = getelementptr inbounds [32 x i8*], [32 x i8*]* @g_cursorcache, i64 0, i64 %10, !dbg !937
  %12 = load i8*, i8** %11, align 8, !dbg !937
  store i8* %12, i8** %4, align 8, !dbg !938
  %13 = load i8*, i8** %4, align 8, !dbg !939
  %14 = icmp ne i8* %13, null, !dbg !941
  br i1 %14, label %15, label %17, !dbg !942

; <label>:15:                                     ; preds = %8
  %16 = load i8*, i8** %4, align 8, !dbg !943
  store i8* %16, i8** %2, align 8, !dbg !944
  br label %21, !dbg !944

; <label>:17:                                     ; preds = %8
  br label %18, !dbg !945

; <label>:18:                                     ; preds = %17, %1
  %19 = load i16, i16* %3, align 2, !dbg !946
  %20 = zext i16 %19 to i32, !dbg !946
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0), i32 %20), !dbg !947
  store i8* null, i8** %2, align 8, !dbg !948
  br label %21, !dbg !948

; <label>:21:                                     ; preds = %18, %15
  %22 = load i8*, i8** %2, align 8, !dbg !949
  ret i8* %22, !dbg !949
}

; Function Attrs: nounwind uwtable
define void @cache_put_cursor(i16 zeroext, i8*) #0 !dbg !950 {
  %3 = alloca i16, align 2
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i16 %0, i16* %3, align 2
  call void @llvm.dbg.declare(metadata i16* %3, metadata !953, metadata !105), !dbg !954
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !955, metadata !105), !dbg !956
  call void @llvm.dbg.declare(metadata i8** %5, metadata !957, metadata !105), !dbg !958
  %6 = load i16, i16* %3, align 2, !dbg !959
  %7 = zext i16 %6 to i64, !dbg !959
  %8 = icmp ult i64 %7, 32, !dbg !961
  br i1 %8, label %9, label %23, !dbg !962

; <label>:9:                                      ; preds = %2
  %10 = load i16, i16* %3, align 2, !dbg !963
  %11 = zext i16 %10 to i64, !dbg !965
  %12 = getelementptr inbounds [32 x i8*], [32 x i8*]* @g_cursorcache, i64 0, i64 %11, !dbg !965
  %13 = load i8*, i8** %12, align 8, !dbg !965
  store i8* %13, i8** %5, align 8, !dbg !966
  %14 = load i8*, i8** %5, align 8, !dbg !967
  %15 = icmp ne i8* %14, null, !dbg !969
  br i1 %15, label %16, label %18, !dbg !970

; <label>:16:                                     ; preds = %9
  %17 = load i8*, i8** %5, align 8, !dbg !971
  call void @ui_destroy_cursor(i8* %17), !dbg !972
  br label %18, !dbg !972

; <label>:18:                                     ; preds = %16, %9
  %19 = load i8*, i8** %4, align 8, !dbg !973
  %20 = load i16, i16* %3, align 2, !dbg !974
  %21 = zext i16 %20 to i64, !dbg !975
  %22 = getelementptr inbounds [32 x i8*], [32 x i8*]* @g_cursorcache, i64 0, i64 %21, !dbg !975
  store i8* %19, i8** %22, align 8, !dbg !976
  br label %26, !dbg !977

; <label>:23:                                     ; preds = %2
  %24 = load i16, i16* %3, align 2, !dbg !978
  %25 = zext i16 %24 to i32, !dbg !978
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i32 0, i32 0), i32 %25), !dbg !980
  br label %26

; <label>:26:                                     ; preds = %23, %18
  ret void, !dbg !981
}

declare void @ui_destroy_cursor(i8*) #2

; Function Attrs: nounwind uwtable
define %struct._BRUSHDATA* @cache_get_brush_data(i8 zeroext, i8 zeroext) #0 !dbg !982 {
  %3 = alloca %struct._BRUSHDATA*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store i8 %0, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !986, metadata !105), !dbg !987
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !988, metadata !105), !dbg !989
  %6 = load i8, i8* %4, align 1, !dbg !990
  %7 = zext i8 %6 to i32, !dbg !990
  %8 = icmp eq i32 %7, 1, !dbg !991
  %9 = select i1 %8, i32 0, i32 1, !dbg !990
  %10 = trunc i32 %9 to i8, !dbg !990
  store i8 %10, i8* %4, align 1, !dbg !992
  %11 = load i8, i8* %5, align 1, !dbg !993
  %12 = zext i8 %11 to i64, !dbg !993
  %13 = icmp ult i64 %12, 64, !dbg !995
  br i1 %13, label %14, label %21, !dbg !996

; <label>:14:                                     ; preds = %2
  %15 = load i8, i8* %5, align 1, !dbg !997
  %16 = zext i8 %15 to i64, !dbg !999
  %17 = load i8, i8* %4, align 1, !dbg !1000
  %18 = zext i8 %17 to i64, !dbg !999
  %19 = getelementptr inbounds [2 x [64 x %struct._BRUSHDATA]], [2 x [64 x %struct._BRUSHDATA]]* @g_brushcache, i64 0, i64 %18, !dbg !999
  %20 = getelementptr inbounds [64 x %struct._BRUSHDATA], [64 x %struct._BRUSHDATA]* %19, i64 0, i64 %16, !dbg !999
  store %struct._BRUSHDATA* %20, %struct._BRUSHDATA** %3, align 8, !dbg !1001
  br label %26, !dbg !1001

; <label>:21:                                     ; preds = %2
  %22 = load i8, i8* %4, align 1, !dbg !1002
  %23 = zext i8 %22 to i32, !dbg !1002
  %24 = load i8, i8* %5, align 1, !dbg !1003
  %25 = zext i8 %24 to i32, !dbg !1003
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i32 0, i32 0), i32 %23, i32 %25), !dbg !1004
  store %struct._BRUSHDATA* null, %struct._BRUSHDATA** %3, align 8, !dbg !1005
  br label %26, !dbg !1005

; <label>:26:                                     ; preds = %21, %14
  %27 = load %struct._BRUSHDATA*, %struct._BRUSHDATA** %3, align 8, !dbg !1006
  ret %struct._BRUSHDATA* %27, !dbg !1006
}

; Function Attrs: nounwind uwtable
define void @cache_put_brush_data(i8 zeroext, i8 zeroext, %struct._BRUSHDATA*) #0 !dbg !1007 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca %struct._BRUSHDATA*, align 8
  %7 = alloca %struct._BRUSHDATA*, align 8
  store i8 %0, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1010, metadata !105), !dbg !1011
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1012, metadata !105), !dbg !1013
  store %struct._BRUSHDATA* %2, %struct._BRUSHDATA** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._BRUSHDATA** %6, metadata !1014, metadata !105), !dbg !1015
  call void @llvm.dbg.declare(metadata %struct._BRUSHDATA** %7, metadata !1016, metadata !105), !dbg !1017
  %8 = load i8, i8* %4, align 1, !dbg !1018
  %9 = zext i8 %8 to i32, !dbg !1018
  %10 = icmp eq i32 %9, 1, !dbg !1019
  %11 = select i1 %10, i32 0, i32 1, !dbg !1018
  %12 = trunc i32 %11 to i8, !dbg !1018
  store i8 %12, i8* %4, align 1, !dbg !1020
  %13 = load i8, i8* %5, align 1, !dbg !1021
  %14 = zext i8 %13 to i64, !dbg !1021
  %15 = icmp ult i64 %14, 64, !dbg !1023
  br i1 %15, label %16, label %36, !dbg !1024

; <label>:16:                                     ; preds = %3
  %17 = load i8, i8* %5, align 1, !dbg !1025
  %18 = zext i8 %17 to i64, !dbg !1027
  %19 = load i8, i8* %4, align 1, !dbg !1028
  %20 = zext i8 %19 to i64, !dbg !1027
  %21 = getelementptr inbounds [2 x [64 x %struct._BRUSHDATA]], [2 x [64 x %struct._BRUSHDATA]]* @g_brushcache, i64 0, i64 %20, !dbg !1027
  %22 = getelementptr inbounds [64 x %struct._BRUSHDATA], [64 x %struct._BRUSHDATA]* %21, i64 0, i64 %18, !dbg !1027
  store %struct._BRUSHDATA* %22, %struct._BRUSHDATA** %7, align 8, !dbg !1029
  %23 = load %struct._BRUSHDATA*, %struct._BRUSHDATA** %7, align 8, !dbg !1030
  %24 = getelementptr inbounds %struct._BRUSHDATA, %struct._BRUSHDATA* %23, i32 0, i32 2, !dbg !1032
  %25 = load i8*, i8** %24, align 8, !dbg !1032
  %26 = icmp ne i8* %25, null, !dbg !1033
  br i1 %26, label %27, label %31, !dbg !1034

; <label>:27:                                     ; preds = %16
  %28 = load %struct._BRUSHDATA*, %struct._BRUSHDATA** %7, align 8, !dbg !1035
  %29 = getelementptr inbounds %struct._BRUSHDATA, %struct._BRUSHDATA* %28, i32 0, i32 2, !dbg !1037
  %30 = load i8*, i8** %29, align 8, !dbg !1037
  call void @xfree(i8* %30), !dbg !1038
  br label %31, !dbg !1039

; <label>:31:                                     ; preds = %27, %16
  %32 = load %struct._BRUSHDATA*, %struct._BRUSHDATA** %7, align 8, !dbg !1040
  %33 = bitcast %struct._BRUSHDATA* %32 to i8*, !dbg !1041
  %34 = load %struct._BRUSHDATA*, %struct._BRUSHDATA** %6, align 8, !dbg !1042
  %35 = bitcast %struct._BRUSHDATA* %34 to i8*, !dbg !1041
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %35, i64 16, i32 8, i1 false), !dbg !1041
  br label %41, !dbg !1043

; <label>:36:                                     ; preds = %3
  %37 = load i8, i8* %4, align 1, !dbg !1044
  %38 = zext i8 %37 to i32, !dbg !1044
  %39 = load i8, i8* %5, align 1, !dbg !1046
  %40 = zext i8 %39 to i32, !dbg !1046
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i32 0, i32 0), i32 %38, i32 %40), !dbg !1047
  br label %41

; <label>:41:                                     ; preds = %36, %31
  ret void, !dbg !1048
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!96, !97}
!llvm.ident = !{!98}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !22, globals: !24)
!1 = !DIFile(filename: "[inter]cache.o.i", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
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
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!24 = !{!25, !40, !43, !46, !61, !69, !75, !80, !94, !95}
!25 = distinct !DIGlobalVariable(name: "g_bmpcache", scope: !0, file: !26, line: 48, type: !27, isLocal: true, isDefinition: true, variable: [3 x [2560 x %struct.bmpcache_entry]]* @g_bmpcache)
!26 = !DIFile(filename: "cache.c", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 983040, align: 64, elements: !37)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bmpcache_entry", file: !26, line: 41, size: 128, align: 64, elements: !29)
!29 = !{!30, !33, !36}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap", scope: !28, file: !26, line: 43, baseType: !31, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_HBITMAP", file: !32, line: 46, baseType: !23)
!32 = !DIFile(filename: "types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!33 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !28, file: !26, line: 44, baseType: !34, size: 16, align: 16, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "sint16", file: !32, line: 42, baseType: !35)
!35 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !28, file: !26, line: 45, baseType: !34, size: 16, align: 16, offset: 80)
!37 = !{!38, !39}
!38 = !DISubrange(count: 3)
!39 = !DISubrange(count: 2560)
!40 = distinct !DIGlobalVariable(name: "g_volatile_bc", scope: !0, file: !26, line: 49, type: !41, isLocal: true, isDefinition: true, variable: [3 x i8*]* @g_volatile_bc)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 192, align: 64, elements: !42)
!42 = !{!38}
!43 = distinct !DIGlobalVariable(name: "g_bmpcache_count", scope: !0, file: !26, line: 54, type: !44, isLocal: true, isDefinition: true, variable: [3 x i32]* @g_bmpcache_count)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 96, align: 32, elements: !42)
!45 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!46 = distinct !DIGlobalVariable(name: "g_fontcache", scope: !0, file: !26, line: 279, type: !47, isLocal: true, isDefinition: true, variable: [12 x [256 x %struct._FONTGLYPH]]* @g_fontcache)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 393216, align: 64, elements: !58)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "FONTGLYPH", file: !32, line: 130, baseType: !49)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_FONTGLYPH", file: !32, line: 121, size: 128, align: 64, elements: !50)
!50 = !{!51, !52, !53, !56, !57}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !49, file: !32, line: 123, baseType: !34, size: 16, align: 16)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "baseline", scope: !49, file: !32, line: 124, baseType: !34, size: 16, align: 16, offset: 16)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !49, file: !32, line: 125, baseType: !54, size: 16, align: 16, offset: 32)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !32, line: 41, baseType: !55)
!55 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !49, file: !32, line: 126, baseType: !54, size: 16, align: 16, offset: 48)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "pixmap", scope: !49, file: !32, line: 127, baseType: !31, size: 64, align: 64, offset: 64)
!58 = !{!59, !60}
!59 = !DISubrange(count: 12)
!60 = !DISubrange(count: 256)
!61 = distinct !DIGlobalVariable(name: "g_textcache", scope: !0, file: !26, line: 325, type: !62, isLocal: true, isDefinition: true, variable: [256 x %struct._DATABLOB]* @g_textcache)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 32768, align: 64, elements: !68)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "DATABLOB", file: !32, line: 138, baseType: !64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_DATABLOB", file: !32, line: 132, size: 128, align: 64, elements: !65)
!65 = !{!66, !67}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !64, file: !32, line: 134, baseType: !23, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !64, file: !32, line: 135, baseType: !45, size: 32, align: 32, offset: 64)
!68 = !{!60}
!69 = distinct !DIGlobalVariable(name: "g_deskcache", scope: !0, file: !26, line: 353, type: !70, isLocal: true, isDefinition: true, variable: [921600 x i8]* @g_deskcache)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 7372800, align: 8, elements: !73)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !32, line: 39, baseType: !72)
!72 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!73 = !{!74}
!74 = !DISubrange(count: 921600)
!75 = distinct !DIGlobalVariable(name: "g_cursorcache", scope: !0, file: !26, line: 400, type: !76, isLocal: true, isDefinition: true, variable: [32 x i8*]* @g_cursorcache)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 2048, align: 64, elements: !78)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_HCURSOR", file: !32, line: 49, baseType: !23)
!78 = !{!79}
!79 = !DISubrange(count: 32)
!80 = distinct !DIGlobalVariable(name: "g_brushcache", scope: !0, file: !26, line: 441, type: !81, isLocal: true, isDefinition: true, variable: [2 x [64 x %struct._BRUSHDATA]]* @g_brushcache)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 16384, align: 64, elements: !91)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "BRUSHDATA", file: !32, line: 109, baseType: !83)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_BRUSHDATA", file: !32, line: 103, size: 128, align: 64, elements: !84)
!84 = !{!85, !88, !89}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "colour_code", scope: !83, file: !32, line: 105, baseType: !86, size: 32, align: 32)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !32, line: 43, baseType: !87)
!87 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "data_size", scope: !83, file: !32, line: 106, baseType: !86, size: 32, align: 32, offset: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !83, file: !32, line: 107, baseType: !90, size: 64, align: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!91 = !{!92, !93}
!92 = !DISubrange(count: 2)
!93 = !DISubrange(count: 64)
!94 = distinct !DIGlobalVariable(name: "g_bmpcache_lru", scope: !0, file: !26, line: 51, type: !44, isLocal: true, isDefinition: true, variable: [3 x i32]* @g_bmpcache_lru)
!95 = distinct !DIGlobalVariable(name: "g_bmpcache_mru", scope: !0, file: !26, line: 52, type: !44, isLocal: true, isDefinition: true, variable: [3 x i32]* @g_bmpcache_mru)
!96 = !{i32 2, !"Dwarf Version", i32 4}
!97 = !{i32 2, !"Debug Info Version", i32 3}
!98 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!99 = distinct !DISubprogram(name: "cache_rebuild_bmpcache_linked_list", scope: !26, file: !26, line: 58, type: !100, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!100 = !DISubroutineType(types: !101)
!101 = !{null, !71, !102, !45}
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!103 = !{}
!104 = !DILocalVariable(name: "id", arg: 1, scope: !99, file: !26, line: 58, type: !71)
!105 = !DIExpression()
!106 = !DILocation(line: 58, column: 42, scope: !99)
!107 = !DILocalVariable(name: "idx", arg: 2, scope: !99, file: !26, line: 58, type: !102)
!108 = !DILocation(line: 58, column: 55, scope: !99)
!109 = !DILocalVariable(name: "count", arg: 3, scope: !99, file: !26, line: 58, type: !45)
!110 = !DILocation(line: 58, column: 64, scope: !99)
!111 = !DILocalVariable(name: "n", scope: !99, file: !26, line: 60, type: !45)
!112 = !DILocation(line: 60, column: 6, scope: !99)
!113 = !DILocation(line: 60, column: 10, scope: !99)
!114 = !DILocalVariable(name: "c", scope: !99, file: !26, line: 60, type: !45)
!115 = !DILocation(line: 60, column: 17, scope: !99)
!116 = !DILocalVariable(name: "n_idx", scope: !99, file: !26, line: 61, type: !34)
!117 = !DILocation(line: 61, column: 9, scope: !99)
!118 = !DILocation(line: 64, column: 2, scope: !99)
!119 = !DILocation(line: 64, column: 9, scope: !120)
!120 = !DILexicalBlockFile(scope: !99, file: !26, discriminator: 1)
!121 = !DILocation(line: 64, column: 13, scope: !120)
!122 = !DILocation(line: 64, column: 18, scope: !120)
!123 = !DILocation(line: 64, column: 40, scope: !124)
!124 = !DILexicalBlockFile(scope: !99, file: !26, discriminator: 2)
!125 = !DILocation(line: 64, column: 36, scope: !124)
!126 = !DILocation(line: 64, column: 21, scope: !124)
!127 = !DILocation(line: 64, column: 32, scope: !124)
!128 = !DILocation(line: 64, column: 44, scope: !124)
!129 = !DILocation(line: 64, column: 51, scope: !124)
!130 = !DILocation(line: 64, column: 2, scope: !131)
!131 = !DILexicalBlockFile(scope: !99, file: !26, discriminator: 3)
!132 = !DILocation(line: 64, column: 2, scope: !133)
!133 = !DILexicalBlockFile(scope: !99, file: !26, discriminator: 4)
!134 = distinct !{!134, !118}
!135 = !DILocation(line: 65, column: 6, scope: !136)
!136 = distinct !DILexicalBlock(scope: !99, file: !26, line: 65, column: 6)
!137 = !DILocation(line: 65, column: 8, scope: !136)
!138 = !DILocation(line: 65, column: 6, scope: !99)
!139 = !DILocation(line: 67, column: 39, scope: !140)
!140 = distinct !DILexicalBlock(scope: !136, file: !26, line: 66, column: 2)
!141 = !DILocation(line: 67, column: 24, scope: !140)
!142 = !DILocation(line: 67, column: 43, scope: !140)
!143 = !DILocation(line: 67, column: 18, scope: !140)
!144 = !DILocation(line: 67, column: 3, scope: !140)
!145 = !DILocation(line: 67, column: 22, scope: !140)
!146 = !DILocation(line: 68, column: 3, scope: !140)
!147 = !DILocation(line: 71, column: 27, scope: !99)
!148 = !DILocation(line: 71, column: 23, scope: !99)
!149 = !DILocation(line: 71, column: 17, scope: !99)
!150 = !DILocation(line: 71, column: 2, scope: !99)
!151 = !DILocation(line: 71, column: 21, scope: !99)
!152 = !DILocation(line: 72, column: 21, scope: !99)
!153 = !DILocation(line: 72, column: 17, scope: !99)
!154 = !DILocation(line: 72, column: 2, scope: !99)
!155 = !DILocation(line: 72, column: 13, scope: !99)
!156 = !DILocation(line: 72, column: 25, scope: !99)
!157 = !DILocation(line: 72, column: 30, scope: !99)
!158 = !DILocation(line: 73, column: 14, scope: !99)
!159 = !DILocation(line: 73, column: 10, scope: !99)
!160 = !DILocation(line: 73, column: 8, scope: !99)
!161 = !DILocation(line: 74, column: 3, scope: !99)
!162 = !DILocation(line: 77, column: 2, scope: !99)
!163 = !DILocation(line: 77, column: 9, scope: !120)
!164 = !DILocation(line: 77, column: 11, scope: !120)
!165 = !DILocation(line: 77, column: 2, scope: !120)
!166 = !DILocation(line: 80, column: 3, scope: !167)
!167 = distinct !DILexicalBlock(scope: !99, file: !26, line: 78, column: 2)
!168 = !DILocation(line: 80, column: 10, scope: !169)
!169 = !DILexicalBlockFile(scope: !167, file: !26, discriminator: 1)
!170 = !DILocation(line: 80, column: 14, scope: !169)
!171 = !DILocation(line: 80, column: 19, scope: !169)
!172 = !DILocation(line: 80, column: 41, scope: !173)
!173 = !DILexicalBlockFile(scope: !167, file: !26, discriminator: 2)
!174 = !DILocation(line: 80, column: 37, scope: !173)
!175 = !DILocation(line: 80, column: 22, scope: !173)
!176 = !DILocation(line: 80, column: 33, scope: !173)
!177 = !DILocation(line: 80, column: 45, scope: !173)
!178 = !DILocation(line: 80, column: 52, scope: !173)
!179 = !DILocation(line: 80, column: 3, scope: !180)
!180 = !DILexicalBlockFile(scope: !167, file: !26, discriminator: 3)
!181 = !DILocation(line: 80, column: 3, scope: !182)
!182 = !DILexicalBlockFile(scope: !167, file: !26, discriminator: 4)
!183 = distinct !{!183, !166}
!184 = !DILocation(line: 82, column: 7, scope: !185)
!185 = distinct !DILexicalBlock(scope: !167, file: !26, line: 82, column: 7)
!186 = !DILocation(line: 82, column: 9, scope: !185)
!187 = !DILocation(line: 82, column: 7, scope: !167)
!188 = !DILocation(line: 83, column: 4, scope: !185)
!189 = !DILocation(line: 85, column: 40, scope: !167)
!190 = !DILocation(line: 85, column: 36, scope: !167)
!191 = !DILocation(line: 85, column: 18, scope: !167)
!192 = !DILocation(line: 85, column: 3, scope: !167)
!193 = !DILocation(line: 85, column: 14, scope: !167)
!194 = !DILocation(line: 85, column: 25, scope: !167)
!195 = !DILocation(line: 85, column: 34, scope: !167)
!196 = !DILocation(line: 86, column: 33, scope: !167)
!197 = !DILocation(line: 86, column: 22, scope: !167)
!198 = !DILocation(line: 86, column: 18, scope: !167)
!199 = !DILocation(line: 86, column: 3, scope: !167)
!200 = !DILocation(line: 86, column: 14, scope: !167)
!201 = !DILocation(line: 86, column: 26, scope: !167)
!202 = !DILocation(line: 86, column: 31, scope: !167)
!203 = !DILocation(line: 87, column: 15, scope: !167)
!204 = !DILocation(line: 87, column: 11, scope: !167)
!205 = !DILocation(line: 87, column: 9, scope: !167)
!206 = !DILocation(line: 88, column: 4, scope: !167)
!207 = !DILocation(line: 77, column: 2, scope: !124)
!208 = distinct !{!208, !162}
!209 = !DILocation(line: 91, column: 17, scope: !99)
!210 = !DILocation(line: 91, column: 2, scope: !99)
!211 = !DILocation(line: 91, column: 13, scope: !99)
!212 = !DILocation(line: 91, column: 24, scope: !99)
!213 = !DILocation(line: 91, column: 33, scope: !99)
!214 = !DILocation(line: 92, column: 23, scope: !99)
!215 = !DILocation(line: 92, column: 17, scope: !99)
!216 = !DILocation(line: 92, column: 2, scope: !99)
!217 = !DILocation(line: 92, column: 21, scope: !99)
!218 = !DILocation(line: 94, column: 6, scope: !219)
!219 = distinct !DILexicalBlock(scope: !99, file: !26, line: 94, column: 6)
!220 = !DILocation(line: 94, column: 28, scope: !219)
!221 = !DILocation(line: 94, column: 11, scope: !219)
!222 = !DILocation(line: 94, column: 8, scope: !219)
!223 = !DILocation(line: 94, column: 6, scope: !99)
!224 = !DILocation(line: 98, column: 10, scope: !225)
!225 = distinct !DILexicalBlock(scope: !219, file: !26, line: 95, column: 2)
!226 = !DILocation(line: 98, column: 30, scope: !225)
!227 = !DILocation(line: 98, column: 13, scope: !225)
!228 = !DILocation(line: 96, column: 3, scope: !225)
!229 = !DILocation(line: 99, column: 3, scope: !225)
!230 = !DILocation(line: 101, column: 1, scope: !99)
!231 = distinct !DISubprogram(name: "cache_bump_bitmap", scope: !26, file: !26, line: 105, type: !232, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!232 = !DISubroutineType(types: !233)
!233 = !{null, !71, !54, !45}
!234 = !DILocalVariable(name: "id", arg: 1, scope: !231, file: !26, line: 105, type: !71)
!235 = !DILocation(line: 105, column: 25, scope: !231)
!236 = !DILocalVariable(name: "idx", arg: 2, scope: !231, file: !26, line: 105, type: !54)
!237 = !DILocation(line: 105, column: 36, scope: !231)
!238 = !DILocalVariable(name: "bump", arg: 3, scope: !231, file: !26, line: 105, type: !45)
!239 = !DILocation(line: 105, column: 45, scope: !231)
!240 = !DILocalVariable(name: "p_idx", scope: !231, file: !26, line: 107, type: !45)
!241 = !DILocation(line: 107, column: 6, scope: !231)
!242 = !DILocalVariable(name: "n_idx", scope: !231, file: !26, line: 107, type: !45)
!243 = !DILocation(line: 107, column: 13, scope: !231)
!244 = !DILocalVariable(name: "n", scope: !231, file: !26, line: 107, type: !45)
!245 = !DILocation(line: 107, column: 20, scope: !231)
!246 = !DILocation(line: 109, column: 22, scope: !247)
!247 = distinct !DILexicalBlock(scope: !231, file: !26, line: 109, column: 6)
!248 = !DILocation(line: 109, column: 8, scope: !247)
!249 = !DILocation(line: 109, column: 26, scope: !247)
!250 = !DILocation(line: 109, column: 6, scope: !231)
!251 = !DILocation(line: 110, column: 3, scope: !247)
!252 = !DILocation(line: 112, column: 21, scope: !253)
!253 = distinct !DILexicalBlock(scope: !231, file: !26, line: 112, column: 6)
!254 = !DILocation(line: 112, column: 6, scope: !253)
!255 = !DILocation(line: 112, column: 28, scope: !253)
!256 = !DILocation(line: 112, column: 25, scope: !253)
!257 = !DILocation(line: 112, column: 6, scope: !231)
!258 = !DILocation(line: 113, column: 3, scope: !253)
!259 = !DILocation(line: 115, column: 69, scope: !231)
!260 = !DILocation(line: 115, column: 73, scope: !231)
!261 = !DILocation(line: 115, column: 78, scope: !231)
!262 = !DILocation(line: 115, column: 2, scope: !231)
!263 = !DILocation(line: 117, column: 25, scope: !231)
!264 = !DILocation(line: 117, column: 10, scope: !231)
!265 = !DILocation(line: 117, column: 21, scope: !231)
!266 = !DILocation(line: 117, column: 30, scope: !231)
!267 = !DILocation(line: 117, column: 8, scope: !231)
!268 = !DILocation(line: 118, column: 25, scope: !231)
!269 = !DILocation(line: 118, column: 10, scope: !231)
!270 = !DILocation(line: 118, column: 21, scope: !231)
!271 = !DILocation(line: 118, column: 30, scope: !231)
!272 = !DILocation(line: 118, column: 8, scope: !231)
!273 = !DILocation(line: 120, column: 7, scope: !274)
!274 = distinct !DILexicalBlock(scope: !231, file: !26, line: 120, column: 6)
!275 = !DILocation(line: 120, column: 13, scope: !274)
!276 = !DILocation(line: 120, column: 6, scope: !231)
!277 = !DILocation(line: 123, column: 22, scope: !278)
!278 = distinct !DILexicalBlock(scope: !274, file: !26, line: 121, column: 2)
!279 = !DILocation(line: 123, column: 5, scope: !278)
!280 = !DILocation(line: 123, column: 3, scope: !278)
!281 = !DILocation(line: 124, column: 8, scope: !282)
!282 = distinct !DILexicalBlock(scope: !278, file: !26, line: 124, column: 7)
!283 = !DILocation(line: 124, column: 14, scope: !282)
!284 = !DILocation(line: 124, column: 7, scope: !278)
!285 = !DILocation(line: 125, column: 33, scope: !282)
!286 = !DILocation(line: 125, column: 19, scope: !282)
!287 = !DILocation(line: 125, column: 4, scope: !282)
!288 = !DILocation(line: 125, column: 15, scope: !282)
!289 = !DILocation(line: 125, column: 26, scope: !282)
!290 = !DILocation(line: 125, column: 31, scope: !282)
!291 = !DILocation(line: 127, column: 25, scope: !282)
!292 = !DILocation(line: 127, column: 19, scope: !282)
!293 = !DILocation(line: 127, column: 4, scope: !282)
!294 = !DILocation(line: 127, column: 23, scope: !282)
!295 = !DILocation(line: 128, column: 8, scope: !296)
!296 = distinct !DILexicalBlock(scope: !278, file: !26, line: 128, column: 7)
!297 = !DILocation(line: 128, column: 14, scope: !296)
!298 = !DILocation(line: 128, column: 7, scope: !278)
!299 = !DILocation(line: 129, column: 37, scope: !296)
!300 = !DILocation(line: 129, column: 19, scope: !296)
!301 = !DILocation(line: 129, column: 4, scope: !296)
!302 = !DILocation(line: 129, column: 15, scope: !296)
!303 = !DILocation(line: 129, column: 26, scope: !296)
!304 = !DILocation(line: 129, column: 35, scope: !296)
!305 = !DILocation(line: 131, column: 25, scope: !296)
!306 = !DILocation(line: 131, column: 19, scope: !296)
!307 = !DILocation(line: 131, column: 4, scope: !296)
!308 = !DILocation(line: 131, column: 23, scope: !296)
!309 = !DILocation(line: 132, column: 2, scope: !278)
!310 = !DILocation(line: 135, column: 9, scope: !311)
!311 = distinct !DILexicalBlock(scope: !274, file: !26, line: 134, column: 2)
!312 = !DILocation(line: 136, column: 26, scope: !311)
!313 = !DILocation(line: 136, column: 11, scope: !311)
!314 = !DILocation(line: 136, column: 9, scope: !311)
!315 = !DILocation(line: 139, column: 6, scope: !316)
!316 = distinct !DILexicalBlock(scope: !231, file: !26, line: 139, column: 6)
!317 = !DILocation(line: 139, column: 11, scope: !316)
!318 = !DILocation(line: 139, column: 6, scope: !231)
!319 = !DILocation(line: 141, column: 10, scope: !320)
!320 = distinct !DILexicalBlock(scope: !321, file: !26, line: 141, column: 3)
!321 = distinct !DILexicalBlock(scope: !316, file: !26, line: 140, column: 2)
!322 = !DILocation(line: 141, column: 8, scope: !320)
!323 = !DILocation(line: 141, column: 15, scope: !324)
!324 = !DILexicalBlockFile(scope: !325, file: !26, discriminator: 1)
!325 = distinct !DILexicalBlock(scope: !320, file: !26, line: 141, column: 3)
!326 = !DILocation(line: 141, column: 19, scope: !324)
!327 = !DILocation(line: 141, column: 17, scope: !324)
!328 = !DILocation(line: 141, column: 24, scope: !324)
!329 = !DILocation(line: 141, column: 28, scope: !330)
!330 = !DILexicalBlockFile(scope: !325, file: !26, discriminator: 2)
!331 = !DILocation(line: 141, column: 34, scope: !330)
!332 = !DILocation(line: 141, column: 3, scope: !333)
!333 = !DILexicalBlockFile(scope: !320, file: !26, discriminator: 3)
!334 = !DILocation(line: 143, column: 12, scope: !335)
!335 = distinct !DILexicalBlock(scope: !325, file: !26, line: 142, column: 3)
!336 = !DILocation(line: 143, column: 10, scope: !335)
!337 = !DILocation(line: 144, column: 27, scope: !335)
!338 = !DILocation(line: 144, column: 12, scope: !335)
!339 = !DILocation(line: 144, column: 23, scope: !335)
!340 = !DILocation(line: 144, column: 34, scope: !335)
!341 = !DILocation(line: 144, column: 10, scope: !335)
!342 = !DILocation(line: 145, column: 3, scope: !335)
!343 = !DILocation(line: 141, column: 42, scope: !344)
!344 = !DILexicalBlockFile(scope: !325, file: !26, discriminator: 4)
!345 = !DILocation(line: 141, column: 3, scope: !344)
!346 = distinct !{!346, !347}
!347 = !DILocation(line: 141, column: 3, scope: !321)
!348 = !DILocation(line: 146, column: 2, scope: !321)
!349 = !DILocation(line: 149, column: 26, scope: !350)
!350 = distinct !DILexicalBlock(scope: !316, file: !26, line: 148, column: 2)
!351 = !DILocation(line: 149, column: 11, scope: !350)
!352 = !DILocation(line: 149, column: 9, scope: !350)
!353 = !DILocation(line: 150, column: 9, scope: !350)
!354 = !DILocation(line: 154, column: 21, scope: !231)
!355 = !DILocation(line: 154, column: 4, scope: !231)
!356 = !DILocation(line: 154, column: 2, scope: !231)
!357 = !DILocation(line: 155, column: 33, scope: !231)
!358 = !DILocation(line: 155, column: 17, scope: !231)
!359 = !DILocation(line: 155, column: 2, scope: !231)
!360 = !DILocation(line: 155, column: 13, scope: !231)
!361 = !DILocation(line: 155, column: 22, scope: !231)
!362 = !DILocation(line: 155, column: 31, scope: !231)
!363 = !DILocation(line: 156, column: 29, scope: !231)
!364 = !DILocation(line: 156, column: 17, scope: !231)
!365 = !DILocation(line: 156, column: 2, scope: !231)
!366 = !DILocation(line: 156, column: 13, scope: !231)
!367 = !DILocation(line: 156, column: 22, scope: !231)
!368 = !DILocation(line: 156, column: 27, scope: !231)
!369 = !DILocation(line: 158, column: 6, scope: !370)
!370 = distinct !DILexicalBlock(scope: !231, file: !26, line: 158, column: 6)
!371 = !DILocation(line: 158, column: 12, scope: !370)
!372 = !DILocation(line: 158, column: 6, scope: !231)
!373 = !DILocation(line: 159, column: 32, scope: !370)
!374 = !DILocation(line: 159, column: 18, scope: !370)
!375 = !DILocation(line: 159, column: 3, scope: !370)
!376 = !DILocation(line: 159, column: 14, scope: !370)
!377 = !DILocation(line: 159, column: 25, scope: !370)
!378 = !DILocation(line: 159, column: 30, scope: !370)
!379 = !DILocation(line: 161, column: 24, scope: !370)
!380 = !DILocation(line: 161, column: 18, scope: !370)
!381 = !DILocation(line: 161, column: 3, scope: !370)
!382 = !DILocation(line: 161, column: 22, scope: !370)
!383 = !DILocation(line: 163, column: 6, scope: !384)
!384 = distinct !DILexicalBlock(scope: !231, file: !26, line: 163, column: 6)
!385 = !DILocation(line: 163, column: 12, scope: !384)
!386 = !DILocation(line: 163, column: 6, scope: !231)
!387 = !DILocation(line: 164, column: 36, scope: !384)
!388 = !DILocation(line: 164, column: 18, scope: !384)
!389 = !DILocation(line: 164, column: 3, scope: !384)
!390 = !DILocation(line: 164, column: 14, scope: !384)
!391 = !DILocation(line: 164, column: 25, scope: !384)
!392 = !DILocation(line: 164, column: 34, scope: !384)
!393 = !DILocation(line: 166, column: 24, scope: !384)
!394 = !DILocation(line: 166, column: 18, scope: !384)
!395 = !DILocation(line: 166, column: 3, scope: !384)
!396 = !DILocation(line: 166, column: 22, scope: !384)
!397 = !DILocation(line: 167, column: 1, scope: !231)
!398 = distinct !DISubprogram(name: "cache_evict_bitmap", scope: !26, file: !26, line: 171, type: !399, isLocal: false, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!399 = !DISubroutineType(types: !400)
!400 = !{null, !71}
!401 = !DILocalVariable(name: "id", arg: 1, scope: !398, file: !26, line: 171, type: !71)
!402 = !DILocation(line: 171, column: 26, scope: !398)
!403 = !DILocalVariable(name: "idx", scope: !398, file: !26, line: 173, type: !54)
!404 = !DILocation(line: 173, column: 9, scope: !398)
!405 = !DILocalVariable(name: "n_idx", scope: !398, file: !26, line: 174, type: !45)
!406 = !DILocation(line: 174, column: 6, scope: !398)
!407 = !DILocation(line: 176, column: 22, scope: !408)
!408 = distinct !DILexicalBlock(scope: !398, file: !26, line: 176, column: 6)
!409 = !DILocation(line: 176, column: 8, scope: !408)
!410 = !DILocation(line: 176, column: 26, scope: !408)
!411 = !DILocation(line: 176, column: 6, scope: !398)
!412 = !DILocation(line: 177, column: 3, scope: !408)
!413 = !DILocation(line: 179, column: 23, scope: !398)
!414 = !DILocation(line: 179, column: 8, scope: !398)
!415 = !DILocation(line: 179, column: 6, scope: !398)
!416 = !DILocation(line: 180, column: 25, scope: !398)
!417 = !DILocation(line: 180, column: 10, scope: !398)
!418 = !DILocation(line: 180, column: 21, scope: !398)
!419 = !DILocation(line: 180, column: 30, scope: !398)
!420 = !DILocation(line: 180, column: 8, scope: !398)
!421 = !DILocation(line: 182, column: 76, scope: !398)
!422 = !DILocation(line: 182, column: 80, scope: !398)
!423 = !DILocation(line: 182, column: 85, scope: !398)
!424 = !DILocation(line: 183, column: 24, scope: !398)
!425 = !DILocation(line: 183, column: 9, scope: !398)
!426 = !DILocation(line: 183, column: 20, scope: !398)
!427 = !DILocation(line: 183, column: 29, scope: !398)
!428 = !DILocation(line: 182, column: 2, scope: !398)
!429 = !DILocation(line: 185, column: 35, scope: !398)
!430 = !DILocation(line: 185, column: 20, scope: !398)
!431 = !DILocation(line: 185, column: 31, scope: !398)
!432 = !DILocation(line: 185, column: 40, scope: !398)
!433 = !DILocation(line: 185, column: 2, scope: !398)
!434 = !DILocation(line: 186, column: 21, scope: !398)
!435 = !DILocation(line: 186, column: 4, scope: !398)
!436 = !DILocation(line: 186, column: 2, scope: !398)
!437 = !DILocation(line: 187, column: 17, scope: !398)
!438 = !DILocation(line: 187, column: 2, scope: !398)
!439 = !DILocation(line: 187, column: 13, scope: !398)
!440 = !DILocation(line: 187, column: 22, scope: !398)
!441 = !DILocation(line: 187, column: 29, scope: !398)
!442 = !DILocation(line: 189, column: 23, scope: !398)
!443 = !DILocation(line: 189, column: 17, scope: !398)
!444 = !DILocation(line: 189, column: 2, scope: !398)
!445 = !DILocation(line: 189, column: 21, scope: !398)
!446 = !DILocation(line: 190, column: 17, scope: !398)
!447 = !DILocation(line: 190, column: 2, scope: !398)
!448 = !DILocation(line: 190, column: 13, scope: !398)
!449 = !DILocation(line: 190, column: 24, scope: !398)
!450 = !DILocation(line: 190, column: 33, scope: !398)
!451 = !DILocation(line: 192, column: 24, scope: !398)
!452 = !DILocation(line: 192, column: 28, scope: !398)
!453 = !DILocation(line: 192, column: 2, scope: !398)
!454 = !DILocation(line: 193, column: 1, scope: !398)
!455 = !DILocation(line: 193, column: 1, scope: !456)
!456 = !DILexicalBlockFile(scope: !398, file: !26, discriminator: 1)
!457 = distinct !DISubprogram(name: "cache_get_bitmap", scope: !26, file: !26, line: 197, type: !458, isLocal: false, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!458 = !DISubroutineType(types: !459)
!459 = !{!31, !71, !54}
!460 = !DILocalVariable(name: "id", arg: 1, scope: !457, file: !26, line: 197, type: !71)
!461 = !DILocation(line: 197, column: 24, scope: !457)
!462 = !DILocalVariable(name: "idx", arg: 2, scope: !457, file: !26, line: 197, type: !54)
!463 = !DILocation(line: 197, column: 35, scope: !457)
!464 = !DILocation(line: 199, column: 7, scope: !465)
!465 = distinct !DILexicalBlock(scope: !457, file: !26, line: 199, column: 6)
!466 = !DILocation(line: 199, column: 10, scope: !465)
!467 = !DILocation(line: 199, column: 58, scope: !465)
!468 = !DILocation(line: 199, column: 62, scope: !469)
!469 = !DILexicalBlockFile(scope: !465, file: !26, discriminator: 1)
!470 = !DILocation(line: 199, column: 66, scope: !469)
!471 = !DILocation(line: 199, column: 6, scope: !469)
!472 = !DILocation(line: 201, column: 22, scope: !473)
!473 = distinct !DILexicalBlock(scope: !474, file: !26, line: 201, column: 7)
!474 = distinct !DILexicalBlock(scope: !465, file: !26, line: 200, column: 2)
!475 = !DILocation(line: 201, column: 7, scope: !473)
!476 = !DILocation(line: 201, column: 18, scope: !473)
!477 = !DILocation(line: 201, column: 27, scope: !473)
!478 = !DILocation(line: 201, column: 34, scope: !473)
!479 = !DILocation(line: 201, column: 58, scope: !480)
!480 = !DILexicalBlockFile(scope: !473, file: !26, discriminator: 1)
!481 = !DILocation(line: 201, column: 62, scope: !480)
!482 = !DILocation(line: 201, column: 37, scope: !480)
!483 = !DILocation(line: 201, column: 7, scope: !480)
!484 = !DILocation(line: 203, column: 23, scope: !485)
!485 = distinct !DILexicalBlock(scope: !486, file: !26, line: 203, column: 8)
!486 = distinct !DILexicalBlock(scope: !473, file: !26, line: 202, column: 3)
!487 = !DILocation(line: 203, column: 9, scope: !485)
!488 = !DILocation(line: 203, column: 27, scope: !485)
!489 = !DILocation(line: 203, column: 8, scope: !486)
!490 = !DILocation(line: 204, column: 23, scope: !485)
!491 = !DILocation(line: 204, column: 27, scope: !485)
!492 = !DILocation(line: 204, column: 5, scope: !485)
!493 = !DILocation(line: 206, column: 26, scope: !486)
!494 = !DILocation(line: 206, column: 11, scope: !486)
!495 = !DILocation(line: 206, column: 22, scope: !486)
!496 = !DILocation(line: 206, column: 31, scope: !486)
!497 = !DILocation(line: 206, column: 4, scope: !486)
!498 = !DILocation(line: 208, column: 2, scope: !474)
!499 = !DILocation(line: 209, column: 12, scope: !500)
!500 = distinct !DILexicalBlock(scope: !465, file: !26, line: 209, column: 11)
!501 = !DILocation(line: 209, column: 15, scope: !500)
!502 = !DILocation(line: 209, column: 69, scope: !500)
!503 = !DILocation(line: 209, column: 73, scope: !504)
!504 = !DILexicalBlockFile(scope: !500, file: !26, discriminator: 1)
!505 = !DILocation(line: 209, column: 77, scope: !504)
!506 = !DILocation(line: 209, column: 11, scope: !504)
!507 = !DILocation(line: 211, column: 24, scope: !508)
!508 = distinct !DILexicalBlock(scope: !500, file: !26, line: 210, column: 2)
!509 = !DILocation(line: 211, column: 10, scope: !508)
!510 = !DILocation(line: 211, column: 3, scope: !508)
!511 = !DILocation(line: 214, column: 59, scope: !457)
!512 = !DILocation(line: 214, column: 63, scope: !457)
!513 = !DILocation(line: 214, column: 2, scope: !457)
!514 = !DILocation(line: 216, column: 2, scope: !457)
!515 = !DILocation(line: 217, column: 1, scope: !457)
!516 = distinct !DISubprogram(name: "cache_put_bitmap", scope: !26, file: !26, line: 221, type: !517, isLocal: false, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!517 = !DISubroutineType(types: !518)
!518 = !{null, !71, !54, !31}
!519 = !DILocalVariable(name: "id", arg: 1, scope: !516, file: !26, line: 221, type: !71)
!520 = !DILocation(line: 221, column: 24, scope: !516)
!521 = !DILocalVariable(name: "idx", arg: 2, scope: !516, file: !26, line: 221, type: !54)
!522 = !DILocation(line: 221, column: 35, scope: !516)
!523 = !DILocalVariable(name: "bitmap", arg: 3, scope: !516, file: !26, line: 221, type: !31)
!524 = !DILocation(line: 221, column: 51, scope: !516)
!525 = !DILocalVariable(name: "old", scope: !516, file: !26, line: 223, type: !31)
!526 = !DILocation(line: 223, column: 13, scope: !516)
!527 = !DILocation(line: 225, column: 7, scope: !528)
!528 = distinct !DILexicalBlock(scope: !516, file: !26, line: 225, column: 6)
!529 = !DILocation(line: 225, column: 10, scope: !528)
!530 = !DILocation(line: 225, column: 58, scope: !528)
!531 = !DILocation(line: 225, column: 62, scope: !532)
!532 = !DILexicalBlockFile(scope: !528, file: !26, discriminator: 1)
!533 = !DILocation(line: 225, column: 66, scope: !532)
!534 = !DILocation(line: 225, column: 6, scope: !532)
!535 = !DILocation(line: 227, column: 24, scope: !536)
!536 = distinct !DILexicalBlock(scope: !528, file: !26, line: 226, column: 2)
!537 = !DILocation(line: 227, column: 9, scope: !536)
!538 = !DILocation(line: 227, column: 20, scope: !536)
!539 = !DILocation(line: 227, column: 29, scope: !536)
!540 = !DILocation(line: 227, column: 7, scope: !536)
!541 = !DILocation(line: 228, column: 7, scope: !542)
!542 = distinct !DILexicalBlock(scope: !536, file: !26, line: 228, column: 7)
!543 = !DILocation(line: 228, column: 11, scope: !542)
!544 = !DILocation(line: 228, column: 7, scope: !536)
!545 = !DILocation(line: 229, column: 22, scope: !542)
!546 = !DILocation(line: 229, column: 4, scope: !542)
!547 = !DILocation(line: 230, column: 32, scope: !536)
!548 = !DILocation(line: 230, column: 18, scope: !536)
!549 = !DILocation(line: 230, column: 3, scope: !536)
!550 = !DILocation(line: 230, column: 14, scope: !536)
!551 = !DILocation(line: 230, column: 23, scope: !536)
!552 = !DILocation(line: 230, column: 30, scope: !536)
!553 = !DILocation(line: 232, column: 22, scope: !554)
!554 = distinct !DILexicalBlock(scope: !536, file: !26, line: 232, column: 7)
!555 = !DILocation(line: 232, column: 8, scope: !554)
!556 = !DILocation(line: 232, column: 26, scope: !554)
!557 = !DILocation(line: 232, column: 7, scope: !536)
!558 = !DILocation(line: 234, column: 8, scope: !559)
!559 = distinct !DILexicalBlock(scope: !560, file: !26, line: 234, column: 8)
!560 = distinct !DILexicalBlock(scope: !554, file: !26, line: 233, column: 3)
!561 = !DILocation(line: 234, column: 12, scope: !559)
!562 = !DILocation(line: 234, column: 8, scope: !560)
!563 = !DILocation(line: 235, column: 51, scope: !559)
!564 = !DILocation(line: 235, column: 36, scope: !559)
!565 = !DILocation(line: 235, column: 47, scope: !559)
!566 = !DILocation(line: 235, column: 56, scope: !559)
!567 = !DILocation(line: 235, column: 61, scope: !559)
!568 = !DILocation(line: 235, column: 20, scope: !559)
!569 = !DILocation(line: 235, column: 5, scope: !559)
!570 = !DILocation(line: 235, column: 16, scope: !559)
!571 = !DILocation(line: 235, column: 25, scope: !559)
!572 = !DILocation(line: 235, column: 34, scope: !559)
!573 = !DILocation(line: 237, column: 22, scope: !560)
!574 = !DILocation(line: 237, column: 26, scope: !560)
!575 = !DILocation(line: 237, column: 4, scope: !560)
!576 = !DILocation(line: 238, column: 25, scope: !577)
!577 = distinct !DILexicalBlock(scope: !560, file: !26, line: 238, column: 8)
!578 = !DILocation(line: 238, column: 8, scope: !577)
!579 = !DILocation(line: 238, column: 29, scope: !577)
!580 = !DILocation(line: 238, column: 8, scope: !560)
!581 = !DILocation(line: 239, column: 24, scope: !577)
!582 = !DILocation(line: 239, column: 5, scope: !577)
!583 = !DILocation(line: 240, column: 3, scope: !560)
!584 = !DILocation(line: 241, column: 2, scope: !536)
!585 = !DILocation(line: 242, column: 12, scope: !586)
!586 = distinct !DILexicalBlock(scope: !528, file: !26, line: 242, column: 11)
!587 = !DILocation(line: 242, column: 15, scope: !586)
!588 = !DILocation(line: 242, column: 69, scope: !586)
!589 = !DILocation(line: 242, column: 73, scope: !590)
!590 = !DILexicalBlockFile(scope: !586, file: !26, discriminator: 1)
!591 = !DILocation(line: 242, column: 77, scope: !590)
!592 = !DILocation(line: 242, column: 11, scope: !590)
!593 = !DILocation(line: 244, column: 23, scope: !594)
!594 = distinct !DILexicalBlock(scope: !586, file: !26, line: 243, column: 2)
!595 = !DILocation(line: 244, column: 9, scope: !594)
!596 = !DILocation(line: 244, column: 7, scope: !594)
!597 = !DILocation(line: 245, column: 7, scope: !598)
!598 = distinct !DILexicalBlock(scope: !594, file: !26, line: 245, column: 7)
!599 = !DILocation(line: 245, column: 11, scope: !598)
!600 = !DILocation(line: 245, column: 7, scope: !594)
!601 = !DILocation(line: 246, column: 22, scope: !598)
!602 = !DILocation(line: 246, column: 4, scope: !598)
!603 = !DILocation(line: 247, column: 23, scope: !594)
!604 = !DILocation(line: 247, column: 17, scope: !594)
!605 = !DILocation(line: 247, column: 3, scope: !594)
!606 = !DILocation(line: 247, column: 21, scope: !594)
!607 = !DILocation(line: 248, column: 2, scope: !594)
!608 = !DILocation(line: 251, column: 70, scope: !609)
!609 = distinct !DILexicalBlock(scope: !586, file: !26, line: 250, column: 2)
!610 = !DILocation(line: 251, column: 74, scope: !609)
!611 = !DILocation(line: 251, column: 3, scope: !609)
!612 = !DILocation(line: 253, column: 1, scope: !516)
!613 = distinct !DISubprogram(name: "cache_save_state", scope: !26, file: !26, line: 257, type: !614, isLocal: false, isDefinition: true, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!614 = !DISubroutineType(types: !615)
!615 = !{null}
!616 = !DILocalVariable(name: "id", scope: !613, file: !26, line: 259, type: !86)
!617 = !DILocation(line: 259, column: 9, scope: !613)
!618 = !DILocalVariable(name: "t", scope: !613, file: !26, line: 259, type: !86)
!619 = !DILocation(line: 259, column: 17, scope: !613)
!620 = !DILocalVariable(name: "idx", scope: !613, file: !26, line: 260, type: !45)
!621 = !DILocation(line: 260, column: 6, scope: !613)
!622 = !DILocation(line: 262, column: 10, scope: !623)
!623 = distinct !DILexicalBlock(scope: !613, file: !26, line: 262, column: 2)
!624 = !DILocation(line: 262, column: 7, scope: !623)
!625 = !DILocation(line: 262, column: 15, scope: !626)
!626 = !DILexicalBlockFile(scope: !627, file: !26, discriminator: 1)
!627 = distinct !DILexicalBlock(scope: !623, file: !26, line: 262, column: 2)
!628 = !DILocation(line: 262, column: 18, scope: !626)
!629 = !DILocation(line: 262, column: 2, scope: !626)
!630 = !DILocation(line: 263, column: 22, scope: !631)
!631 = distinct !DILexicalBlock(scope: !627, file: !26, line: 263, column: 7)
!632 = !DILocation(line: 263, column: 8, scope: !631)
!633 = !DILocation(line: 263, column: 26, scope: !631)
!634 = !DILocation(line: 263, column: 7, scope: !627)
!635 = !DILocation(line: 266, column: 73, scope: !636)
!636 = distinct !DILexicalBlock(scope: !631, file: !26, line: 264, column: 3)
!637 = !DILocation(line: 265, column: 4, scope: !636)
!638 = !DILocation(line: 267, column: 25, scope: !636)
!639 = !DILocation(line: 267, column: 10, scope: !636)
!640 = !DILocation(line: 267, column: 8, scope: !636)
!641 = !DILocation(line: 268, column: 4, scope: !636)
!642 = !DILocation(line: 268, column: 11, scope: !643)
!643 = !DILexicalBlockFile(scope: !636, file: !26, discriminator: 1)
!644 = !DILocation(line: 268, column: 15, scope: !643)
!645 = !DILocation(line: 268, column: 4, scope: !643)
!646 = !DILocation(line: 270, column: 27, scope: !647)
!647 = distinct !DILexicalBlock(scope: !636, file: !26, line: 269, column: 4)
!648 = !DILocation(line: 270, column: 31, scope: !647)
!649 = !DILocation(line: 270, column: 36, scope: !647)
!650 = !DILocation(line: 270, column: 5, scope: !647)
!651 = !DILocation(line: 271, column: 26, scope: !647)
!652 = !DILocation(line: 271, column: 11, scope: !647)
!653 = !DILocation(line: 271, column: 22, scope: !647)
!654 = !DILocation(line: 271, column: 31, scope: !647)
!655 = !DILocation(line: 271, column: 9, scope: !647)
!656 = !DILocation(line: 268, column: 4, scope: !657)
!657 = !DILexicalBlockFile(scope: !636, file: !26, discriminator: 2)
!658 = distinct !{!658, !641}
!659 = !DILocation(line: 273, column: 65, scope: !636)
!660 = !DILocation(line: 273, column: 4, scope: !636)
!661 = !DILocation(line: 274, column: 3, scope: !636)
!662 = !DILocation(line: 263, column: 29, scope: !663)
!663 = !DILexicalBlockFile(scope: !631, file: !26, discriminator: 1)
!664 = !DILocation(line: 262, column: 68, scope: !665)
!665 = !DILexicalBlockFile(scope: !627, file: !26, discriminator: 2)
!666 = !DILocation(line: 262, column: 2, scope: !665)
!667 = distinct !{!667, !668}
!668 = !DILocation(line: 262, column: 2, scope: !613)
!669 = !DILocation(line: 275, column: 1, scope: !613)
!670 = distinct !DISubprogram(name: "cache_get_font", scope: !26, file: !26, line: 283, type: !671, isLocal: false, isDefinition: true, scopeLine: 284, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!671 = !DISubroutineType(types: !672)
!672 = !{!673, !71, !54}
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!674 = !DILocalVariable(name: "font", arg: 1, scope: !670, file: !26, line: 283, type: !71)
!675 = !DILocation(line: 283, column: 22, scope: !670)
!676 = !DILocalVariable(name: "character", arg: 2, scope: !670, file: !26, line: 283, type: !54)
!677 = !DILocation(line: 283, column: 35, scope: !670)
!678 = !DILocalVariable(name: "glyph", scope: !670, file: !26, line: 285, type: !673)
!679 = !DILocation(line: 285, column: 13, scope: !670)
!680 = !DILocation(line: 287, column: 7, scope: !681)
!681 = distinct !DILexicalBlock(scope: !670, file: !26, line: 287, column: 6)
!682 = !DILocation(line: 287, column: 12, scope: !681)
!683 = !DILocation(line: 287, column: 62, scope: !681)
!684 = !DILocation(line: 287, column: 66, scope: !685)
!685 = !DILexicalBlockFile(scope: !681, file: !26, discriminator: 1)
!686 = !DILocation(line: 287, column: 76, scope: !685)
!687 = !DILocation(line: 287, column: 6, scope: !685)
!688 = !DILocation(line: 289, column: 30, scope: !689)
!689 = distinct !DILexicalBlock(scope: !681, file: !26, line: 288, column: 2)
!690 = !DILocation(line: 289, column: 12, scope: !689)
!691 = !DILocation(line: 289, column: 24, scope: !689)
!692 = !DILocation(line: 289, column: 9, scope: !689)
!693 = !DILocation(line: 290, column: 7, scope: !694)
!694 = distinct !DILexicalBlock(scope: !689, file: !26, line: 290, column: 7)
!695 = !DILocation(line: 290, column: 14, scope: !694)
!696 = !DILocation(line: 290, column: 21, scope: !694)
!697 = !DILocation(line: 290, column: 7, scope: !689)
!698 = !DILocation(line: 291, column: 11, scope: !694)
!699 = !DILocation(line: 291, column: 4, scope: !694)
!700 = !DILocation(line: 292, column: 2, scope: !689)
!701 = !DILocation(line: 294, column: 60, scope: !670)
!702 = !DILocation(line: 294, column: 66, scope: !670)
!703 = !DILocation(line: 294, column: 2, scope: !670)
!704 = !DILocation(line: 295, column: 2, scope: !670)
!705 = !DILocation(line: 296, column: 1, scope: !670)
!706 = distinct !DISubprogram(name: "cache_put_font", scope: !26, file: !26, line: 300, type: !707, isLocal: false, isDefinition: true, scopeLine: 302, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!707 = !DISubroutineType(types: !708)
!708 = !{null, !71, !54, !54, !54, !54, !54, !709}
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_HGLYPH", file: !32, line: 47, baseType: !23)
!710 = !DILocalVariable(name: "font", arg: 1, scope: !706, file: !26, line: 300, type: !71)
!711 = !DILocation(line: 300, column: 22, scope: !706)
!712 = !DILocalVariable(name: "character", arg: 2, scope: !706, file: !26, line: 300, type: !54)
!713 = !DILocation(line: 300, column: 35, scope: !706)
!714 = !DILocalVariable(name: "offset", arg: 3, scope: !706, file: !26, line: 300, type: !54)
!715 = !DILocation(line: 300, column: 53, scope: !706)
!716 = !DILocalVariable(name: "baseline", arg: 4, scope: !706, file: !26, line: 301, type: !54)
!717 = !DILocation(line: 301, column: 16, scope: !706)
!718 = !DILocalVariable(name: "width", arg: 5, scope: !706, file: !26, line: 301, type: !54)
!719 = !DILocation(line: 301, column: 33, scope: !706)
!720 = !DILocalVariable(name: "height", arg: 6, scope: !706, file: !26, line: 301, type: !54)
!721 = !DILocation(line: 301, column: 47, scope: !706)
!722 = !DILocalVariable(name: "pixmap", arg: 7, scope: !706, file: !26, line: 301, type: !709)
!723 = !DILocation(line: 301, column: 65, scope: !706)
!724 = !DILocalVariable(name: "glyph", scope: !706, file: !26, line: 303, type: !673)
!725 = !DILocation(line: 303, column: 13, scope: !706)
!726 = !DILocation(line: 305, column: 7, scope: !727)
!727 = distinct !DILexicalBlock(scope: !706, file: !26, line: 305, column: 6)
!728 = !DILocation(line: 305, column: 12, scope: !727)
!729 = !DILocation(line: 305, column: 62, scope: !727)
!730 = !DILocation(line: 305, column: 66, scope: !731)
!731 = !DILexicalBlockFile(scope: !727, file: !26, discriminator: 1)
!732 = !DILocation(line: 305, column: 76, scope: !731)
!733 = !DILocation(line: 305, column: 6, scope: !731)
!734 = !DILocation(line: 307, column: 30, scope: !735)
!735 = distinct !DILexicalBlock(scope: !727, file: !26, line: 306, column: 2)
!736 = !DILocation(line: 307, column: 12, scope: !735)
!737 = !DILocation(line: 307, column: 24, scope: !735)
!738 = !DILocation(line: 307, column: 9, scope: !735)
!739 = !DILocation(line: 308, column: 7, scope: !740)
!740 = distinct !DILexicalBlock(scope: !735, file: !26, line: 308, column: 7)
!741 = !DILocation(line: 308, column: 14, scope: !740)
!742 = !DILocation(line: 308, column: 21, scope: !740)
!743 = !DILocation(line: 308, column: 7, scope: !735)
!744 = !DILocation(line: 309, column: 21, scope: !740)
!745 = !DILocation(line: 309, column: 28, scope: !740)
!746 = !DILocation(line: 309, column: 4, scope: !740)
!747 = !DILocation(line: 311, column: 19, scope: !735)
!748 = !DILocation(line: 311, column: 3, scope: !735)
!749 = !DILocation(line: 311, column: 10, scope: !735)
!750 = !DILocation(line: 311, column: 17, scope: !735)
!751 = !DILocation(line: 312, column: 21, scope: !735)
!752 = !DILocation(line: 312, column: 3, scope: !735)
!753 = !DILocation(line: 312, column: 10, scope: !735)
!754 = !DILocation(line: 312, column: 19, scope: !735)
!755 = !DILocation(line: 313, column: 18, scope: !735)
!756 = !DILocation(line: 313, column: 3, scope: !735)
!757 = !DILocation(line: 313, column: 10, scope: !735)
!758 = !DILocation(line: 313, column: 16, scope: !735)
!759 = !DILocation(line: 314, column: 19, scope: !735)
!760 = !DILocation(line: 314, column: 3, scope: !735)
!761 = !DILocation(line: 314, column: 10, scope: !735)
!762 = !DILocation(line: 314, column: 17, scope: !735)
!763 = !DILocation(line: 315, column: 19, scope: !735)
!764 = !DILocation(line: 315, column: 3, scope: !735)
!765 = !DILocation(line: 315, column: 10, scope: !735)
!766 = !DILocation(line: 315, column: 17, scope: !735)
!767 = !DILocation(line: 316, column: 2, scope: !735)
!768 = !DILocation(line: 319, column: 69, scope: !769)
!769 = distinct !DILexicalBlock(scope: !727, file: !26, line: 318, column: 2)
!770 = !DILocation(line: 319, column: 75, scope: !769)
!771 = !DILocation(line: 319, column: 3, scope: !769)
!772 = !DILocation(line: 321, column: 1, scope: !706)
!773 = distinct !DISubprogram(name: "cache_get_text", scope: !26, file: !26, line: 329, type: !774, isLocal: false, isDefinition: true, scopeLine: 330, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!774 = !DISubroutineType(types: !775)
!775 = !{!776, !71}
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!777 = !DILocalVariable(name: "cache_id", arg: 1, scope: !773, file: !26, line: 329, type: !71)
!778 = !DILocation(line: 329, column: 22, scope: !773)
!779 = !DILocalVariable(name: "text", scope: !773, file: !26, line: 331, type: !776)
!780 = !DILocation(line: 331, column: 12, scope: !773)
!781 = !DILocation(line: 333, column: 22, scope: !773)
!782 = !DILocation(line: 333, column: 10, scope: !773)
!783 = !DILocation(line: 333, column: 7, scope: !773)
!784 = !DILocation(line: 334, column: 9, scope: !773)
!785 = !DILocation(line: 334, column: 2, scope: !773)
!786 = distinct !DISubprogram(name: "cache_put_text", scope: !26, file: !26, line: 339, type: !787, isLocal: false, isDefinition: true, scopeLine: 340, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!787 = !DISubroutineType(types: !788)
!788 = !{null, !71, !23, !45}
!789 = !DILocalVariable(name: "cache_id", arg: 1, scope: !786, file: !26, line: 339, type: !71)
!790 = !DILocation(line: 339, column: 22, scope: !786)
!791 = !DILocalVariable(name: "data", arg: 2, scope: !786, file: !26, line: 339, type: !23)
!792 = !DILocation(line: 339, column: 38, scope: !786)
!793 = !DILocalVariable(name: "length", arg: 3, scope: !786, file: !26, line: 339, type: !45)
!794 = !DILocation(line: 339, column: 48, scope: !786)
!795 = !DILocalVariable(name: "text", scope: !786, file: !26, line: 341, type: !776)
!796 = !DILocation(line: 341, column: 12, scope: !786)
!797 = !DILocation(line: 343, column: 22, scope: !786)
!798 = !DILocation(line: 343, column: 10, scope: !786)
!799 = !DILocation(line: 343, column: 7, scope: !786)
!800 = !DILocation(line: 344, column: 6, scope: !801)
!801 = distinct !DILexicalBlock(scope: !786, file: !26, line: 344, column: 6)
!802 = !DILocation(line: 344, column: 12, scope: !801)
!803 = !DILocation(line: 344, column: 17, scope: !801)
!804 = !DILocation(line: 344, column: 6, scope: !786)
!805 = !DILocation(line: 345, column: 9, scope: !801)
!806 = !DILocation(line: 345, column: 15, scope: !801)
!807 = !DILocation(line: 345, column: 3, scope: !801)
!808 = !DILocation(line: 346, column: 23, scope: !786)
!809 = !DILocation(line: 346, column: 15, scope: !786)
!810 = !DILocation(line: 346, column: 2, scope: !786)
!811 = !DILocation(line: 346, column: 8, scope: !786)
!812 = !DILocation(line: 346, column: 13, scope: !786)
!813 = !DILocation(line: 347, column: 15, scope: !786)
!814 = !DILocation(line: 347, column: 2, scope: !786)
!815 = !DILocation(line: 347, column: 8, scope: !786)
!816 = !DILocation(line: 347, column: 13, scope: !786)
!817 = !DILocation(line: 348, column: 9, scope: !786)
!818 = !DILocation(line: 348, column: 15, scope: !786)
!819 = !DILocation(line: 348, column: 21, scope: !786)
!820 = !DILocation(line: 348, column: 27, scope: !786)
!821 = !DILocation(line: 348, column: 2, scope: !786)
!822 = !DILocation(line: 349, column: 1, scope: !786)
!823 = distinct !DISubprogram(name: "cache_get_desktop", scope: !26, file: !26, line: 357, type: !824, isLocal: false, isDefinition: true, scopeLine: 358, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!824 = !DISubroutineType(types: !825)
!825 = !{!90, !86, !45, !45, !45}
!826 = !DILocalVariable(name: "offset", arg: 1, scope: !823, file: !26, line: 357, type: !86)
!827 = !DILocation(line: 357, column: 26, scope: !823)
!828 = !DILocalVariable(name: "cx", arg: 2, scope: !823, file: !26, line: 357, type: !45)
!829 = !DILocation(line: 357, column: 38, scope: !823)
!830 = !DILocalVariable(name: "cy", arg: 3, scope: !823, file: !26, line: 357, type: !45)
!831 = !DILocation(line: 357, column: 46, scope: !823)
!832 = !DILocalVariable(name: "bytes_per_pixel", arg: 4, scope: !823, file: !26, line: 357, type: !45)
!833 = !DILocation(line: 357, column: 54, scope: !823)
!834 = !DILocalVariable(name: "length", scope: !823, file: !26, line: 359, type: !45)
!835 = !DILocation(line: 359, column: 6, scope: !823)
!836 = !DILocation(line: 359, column: 15, scope: !823)
!837 = !DILocation(line: 359, column: 20, scope: !823)
!838 = !DILocation(line: 359, column: 18, scope: !823)
!839 = !DILocation(line: 359, column: 25, scope: !823)
!840 = !DILocation(line: 359, column: 23, scope: !823)
!841 = !DILocation(line: 361, column: 6, scope: !842)
!842 = distinct !DILexicalBlock(scope: !823, file: !26, line: 361, column: 6)
!843 = !DILocation(line: 361, column: 13, scope: !842)
!844 = !DILocation(line: 361, column: 6, scope: !823)
!845 = !DILocation(line: 362, column: 10, scope: !842)
!846 = !DILocation(line: 362, column: 3, scope: !842)
!847 = !DILocation(line: 364, column: 7, scope: !848)
!848 = distinct !DILexicalBlock(scope: !823, file: !26, line: 364, column: 6)
!849 = !DILocation(line: 364, column: 16, scope: !848)
!850 = !DILocation(line: 364, column: 14, scope: !848)
!851 = !DILocation(line: 364, column: 6, scope: !848)
!852 = !DILocation(line: 364, column: 24, scope: !848)
!853 = !DILocation(line: 364, column: 6, scope: !823)
!854 = !DILocation(line: 366, column: 23, scope: !855)
!855 = distinct !DILexicalBlock(scope: !848, file: !26, line: 365, column: 2)
!856 = !DILocation(line: 366, column: 11, scope: !855)
!857 = !DILocation(line: 366, column: 3, scope: !855)
!858 = !DILocation(line: 369, column: 67, scope: !823)
!859 = !DILocation(line: 369, column: 75, scope: !823)
!860 = !DILocation(line: 369, column: 2, scope: !823)
!861 = !DILocation(line: 370, column: 2, scope: !823)
!862 = !DILocation(line: 371, column: 1, scope: !823)
!863 = distinct !DISubprogram(name: "cache_put_desktop", scope: !26, file: !26, line: 375, type: !864, isLocal: false, isDefinition: true, scopeLine: 376, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!864 = !DISubroutineType(types: !865)
!865 = !{null, !86, !45, !45, !45, !45, !90}
!866 = !DILocalVariable(name: "offset", arg: 1, scope: !863, file: !26, line: 375, type: !86)
!867 = !DILocation(line: 375, column: 26, scope: !863)
!868 = !DILocalVariable(name: "cx", arg: 2, scope: !863, file: !26, line: 375, type: !45)
!869 = !DILocation(line: 375, column: 38, scope: !863)
!870 = !DILocalVariable(name: "cy", arg: 3, scope: !863, file: !26, line: 375, type: !45)
!871 = !DILocation(line: 375, column: 46, scope: !863)
!872 = !DILocalVariable(name: "scanline", arg: 4, scope: !863, file: !26, line: 375, type: !45)
!873 = !DILocation(line: 375, column: 54, scope: !863)
!874 = !DILocalVariable(name: "bytes_per_pixel", arg: 5, scope: !863, file: !26, line: 375, type: !45)
!875 = !DILocation(line: 375, column: 68, scope: !863)
!876 = !DILocalVariable(name: "data", arg: 6, scope: !863, file: !26, line: 375, type: !90)
!877 = !DILocation(line: 375, column: 93, scope: !863)
!878 = !DILocalVariable(name: "length", scope: !863, file: !26, line: 377, type: !45)
!879 = !DILocation(line: 377, column: 6, scope: !863)
!880 = !DILocation(line: 377, column: 15, scope: !863)
!881 = !DILocation(line: 377, column: 20, scope: !863)
!882 = !DILocation(line: 377, column: 18, scope: !863)
!883 = !DILocation(line: 377, column: 25, scope: !863)
!884 = !DILocation(line: 377, column: 23, scope: !863)
!885 = !DILocation(line: 379, column: 6, scope: !886)
!886 = distinct !DILexicalBlock(scope: !863, file: !26, line: 379, column: 6)
!887 = !DILocation(line: 379, column: 13, scope: !886)
!888 = !DILocation(line: 379, column: 6, scope: !863)
!889 = !DILocation(line: 380, column: 10, scope: !886)
!890 = !DILocation(line: 380, column: 3, scope: !886)
!891 = !DILocation(line: 382, column: 7, scope: !892)
!892 = distinct !DILexicalBlock(scope: !863, file: !26, line: 382, column: 6)
!893 = !DILocation(line: 382, column: 16, scope: !892)
!894 = !DILocation(line: 382, column: 14, scope: !892)
!895 = !DILocation(line: 382, column: 6, scope: !892)
!896 = !DILocation(line: 382, column: 24, scope: !892)
!897 = !DILocation(line: 382, column: 6, scope: !863)
!898 = !DILocation(line: 384, column: 9, scope: !899)
!899 = distinct !DILexicalBlock(scope: !892, file: !26, line: 383, column: 2)
!900 = !DILocation(line: 384, column: 6, scope: !899)
!901 = !DILocation(line: 385, column: 3, scope: !899)
!902 = !DILocation(line: 385, column: 12, scope: !903)
!903 = !DILexicalBlockFile(scope: !899, file: !26, discriminator: 1)
!904 = !DILocation(line: 385, column: 3, scope: !903)
!905 = !DILocation(line: 387, column: 24, scope: !906)
!906 = distinct !DILexicalBlock(scope: !899, file: !26, line: 386, column: 3)
!907 = !DILocation(line: 387, column: 12, scope: !906)
!908 = !DILocation(line: 387, column: 33, scope: !906)
!909 = !DILocation(line: 387, column: 39, scope: !906)
!910 = !DILocation(line: 387, column: 4, scope: !906)
!911 = !DILocation(line: 388, column: 12, scope: !906)
!912 = !DILocation(line: 388, column: 9, scope: !906)
!913 = !DILocation(line: 389, column: 14, scope: !906)
!914 = !DILocation(line: 389, column: 11, scope: !906)
!915 = !DILocation(line: 385, column: 3, scope: !916)
!916 = !DILexicalBlockFile(scope: !899, file: !26, discriminator: 2)
!917 = distinct !{!917, !901}
!918 = !DILocation(line: 391, column: 2, scope: !899)
!919 = !DILocation(line: 394, column: 68, scope: !920)
!920 = distinct !DILexicalBlock(scope: !892, file: !26, line: 393, column: 2)
!921 = !DILocation(line: 394, column: 76, scope: !920)
!922 = !DILocation(line: 394, column: 3, scope: !920)
!923 = !DILocation(line: 396, column: 1, scope: !863)
!924 = distinct !DISubprogram(name: "cache_get_cursor", scope: !26, file: !26, line: 404, type: !925, isLocal: false, isDefinition: true, scopeLine: 405, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!925 = !DISubroutineType(types: !926)
!926 = !{!77, !54}
!927 = !DILocalVariable(name: "cache_idx", arg: 1, scope: !924, file: !26, line: 404, type: !54)
!928 = !DILocation(line: 404, column: 25, scope: !924)
!929 = !DILocalVariable(name: "cursor", scope: !924, file: !26, line: 406, type: !77)
!930 = !DILocation(line: 406, column: 13, scope: !924)
!931 = !DILocation(line: 408, column: 6, scope: !932)
!932 = distinct !DILexicalBlock(scope: !924, file: !26, line: 408, column: 6)
!933 = !DILocation(line: 408, column: 16, scope: !932)
!934 = !DILocation(line: 408, column: 6, scope: !924)
!935 = !DILocation(line: 410, column: 26, scope: !936)
!936 = distinct !DILexicalBlock(scope: !932, file: !26, line: 409, column: 2)
!937 = !DILocation(line: 410, column: 12, scope: !936)
!938 = !DILocation(line: 410, column: 10, scope: !936)
!939 = !DILocation(line: 411, column: 7, scope: !940)
!940 = distinct !DILexicalBlock(scope: !936, file: !26, line: 411, column: 7)
!941 = !DILocation(line: 411, column: 14, scope: !940)
!942 = !DILocation(line: 411, column: 7, scope: !936)
!943 = !DILocation(line: 412, column: 11, scope: !940)
!944 = !DILocation(line: 412, column: 4, scope: !940)
!945 = !DILocation(line: 413, column: 2, scope: !936)
!946 = !DILocation(line: 415, column: 52, scope: !924)
!947 = !DILocation(line: 415, column: 2, scope: !924)
!948 = !DILocation(line: 416, column: 2, scope: !924)
!949 = !DILocation(line: 417, column: 1, scope: !924)
!950 = distinct !DISubprogram(name: "cache_put_cursor", scope: !26, file: !26, line: 421, type: !951, isLocal: false, isDefinition: true, scopeLine: 422, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!951 = !DISubroutineType(types: !952)
!952 = !{null, !54, !77}
!953 = !DILocalVariable(name: "cache_idx", arg: 1, scope: !950, file: !26, line: 421, type: !54)
!954 = !DILocation(line: 421, column: 25, scope: !950)
!955 = !DILocalVariable(name: "cursor", arg: 2, scope: !950, file: !26, line: 421, type: !77)
!956 = !DILocation(line: 421, column: 47, scope: !950)
!957 = !DILocalVariable(name: "old", scope: !950, file: !26, line: 423, type: !77)
!958 = !DILocation(line: 423, column: 13, scope: !950)
!959 = !DILocation(line: 425, column: 6, scope: !960)
!960 = distinct !DILexicalBlock(scope: !950, file: !26, line: 425, column: 6)
!961 = !DILocation(line: 425, column: 16, scope: !960)
!962 = !DILocation(line: 425, column: 6, scope: !950)
!963 = !DILocation(line: 427, column: 23, scope: !964)
!964 = distinct !DILexicalBlock(scope: !960, file: !26, line: 426, column: 2)
!965 = !DILocation(line: 427, column: 9, scope: !964)
!966 = !DILocation(line: 427, column: 7, scope: !964)
!967 = !DILocation(line: 428, column: 7, scope: !968)
!968 = distinct !DILexicalBlock(scope: !964, file: !26, line: 428, column: 7)
!969 = !DILocation(line: 428, column: 11, scope: !968)
!970 = !DILocation(line: 428, column: 7, scope: !964)
!971 = !DILocation(line: 429, column: 22, scope: !968)
!972 = !DILocation(line: 429, column: 4, scope: !968)
!973 = !DILocation(line: 431, column: 30, scope: !964)
!974 = !DILocation(line: 431, column: 17, scope: !964)
!975 = !DILocation(line: 431, column: 3, scope: !964)
!976 = !DILocation(line: 431, column: 28, scope: !964)
!977 = !DILocation(line: 432, column: 2, scope: !964)
!978 = !DILocation(line: 435, column: 61, scope: !979)
!979 = distinct !DILexicalBlock(scope: !960, file: !26, line: 434, column: 2)
!980 = !DILocation(line: 435, column: 3, scope: !979)
!981 = !DILocation(line: 437, column: 1, scope: !950)
!982 = distinct !DISubprogram(name: "cache_get_brush_data", scope: !26, file: !26, line: 445, type: !983, isLocal: false, isDefinition: true, scopeLine: 446, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!983 = !DISubroutineType(types: !984)
!984 = !{!985, !71, !71}
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, align: 64)
!986 = !DILocalVariable(name: "colour_code", arg: 1, scope: !982, file: !26, line: 445, type: !71)
!987 = !DILocation(line: 445, column: 28, scope: !982)
!988 = !DILocalVariable(name: "idx", arg: 2, scope: !982, file: !26, line: 445, type: !71)
!989 = !DILocation(line: 445, column: 47, scope: !982)
!990 = !DILocation(line: 447, column: 16, scope: !982)
!991 = !DILocation(line: 447, column: 28, scope: !982)
!992 = !DILocation(line: 447, column: 14, scope: !982)
!993 = !DILocation(line: 448, column: 6, scope: !994)
!994 = distinct !DILexicalBlock(scope: !982, file: !26, line: 448, column: 6)
!995 = !DILocation(line: 448, column: 10, scope: !994)
!996 = !DILocation(line: 448, column: 6, scope: !982)
!997 = !DILocation(line: 450, column: 37, scope: !998)
!998 = distinct !DILexicalBlock(scope: !994, file: !26, line: 449, column: 2)
!999 = !DILocation(line: 450, column: 11, scope: !998)
!1000 = !DILocation(line: 450, column: 24, scope: !998)
!1001 = !DILocation(line: 450, column: 3, scope: !998)
!1002 = !DILocation(line: 452, column: 67, scope: !982)
!1003 = !DILocation(line: 452, column: 80, scope: !982)
!1004 = !DILocation(line: 452, column: 2, scope: !982)
!1005 = !DILocation(line: 453, column: 2, scope: !982)
!1006 = !DILocation(line: 454, column: 1, scope: !982)
!1007 = distinct !DISubprogram(name: "cache_put_brush_data", scope: !26, file: !26, line: 459, type: !1008, isLocal: false, isDefinition: true, scopeLine: 460, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{null, !71, !71, !985}
!1010 = !DILocalVariable(name: "colour_code", arg: 1, scope: !1007, file: !26, line: 459, type: !71)
!1011 = !DILocation(line: 459, column: 28, scope: !1007)
!1012 = !DILocalVariable(name: "idx", arg: 2, scope: !1007, file: !26, line: 459, type: !71)
!1013 = !DILocation(line: 459, column: 47, scope: !1007)
!1014 = !DILocalVariable(name: "brush_data", arg: 3, scope: !1007, file: !26, line: 459, type: !985)
!1015 = !DILocation(line: 459, column: 64, scope: !1007)
!1016 = !DILocalVariable(name: "bd", scope: !1007, file: !26, line: 461, type: !985)
!1017 = !DILocation(line: 461, column: 13, scope: !1007)
!1018 = !DILocation(line: 463, column: 16, scope: !1007)
!1019 = !DILocation(line: 463, column: 28, scope: !1007)
!1020 = !DILocation(line: 463, column: 14, scope: !1007)
!1021 = !DILocation(line: 464, column: 6, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1007, file: !26, line: 464, column: 6)
!1023 = !DILocation(line: 464, column: 10, scope: !1022)
!1024 = !DILocation(line: 464, column: 6, scope: !1007)
!1025 = !DILocation(line: 466, column: 35, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1022, file: !26, line: 465, column: 2)
!1027 = !DILocation(line: 466, column: 9, scope: !1026)
!1028 = !DILocation(line: 466, column: 22, scope: !1026)
!1029 = !DILocation(line: 466, column: 6, scope: !1026)
!1030 = !DILocation(line: 467, column: 7, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1026, file: !26, line: 467, column: 7)
!1032 = !DILocation(line: 467, column: 11, scope: !1031)
!1033 = !DILocation(line: 467, column: 16, scope: !1031)
!1034 = !DILocation(line: 467, column: 7, scope: !1026)
!1035 = !DILocation(line: 469, column: 10, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1031, file: !26, line: 468, column: 3)
!1037 = !DILocation(line: 469, column: 14, scope: !1036)
!1038 = !DILocation(line: 469, column: 4, scope: !1036)
!1039 = !DILocation(line: 470, column: 3, scope: !1036)
!1040 = !DILocation(line: 471, column: 10, scope: !1026)
!1041 = !DILocation(line: 471, column: 3, scope: !1026)
!1042 = !DILocation(line: 471, column: 14, scope: !1026)
!1043 = !DILocation(line: 472, column: 2, scope: !1026)
!1044 = !DILocation(line: 475, column: 68, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1022, file: !26, line: 474, column: 2)
!1046 = !DILocation(line: 475, column: 81, scope: !1045)
!1047 = !DILocation(line: 475, column: 3, scope: !1045)
!1048 = !DILocation(line: 477, column: 1, scope: !1007)
