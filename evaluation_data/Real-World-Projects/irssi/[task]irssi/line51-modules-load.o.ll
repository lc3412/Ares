; ModuleID = './line51-modules-load.o.i'
source_filename = "./line51-modules-load.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
%struct._MODULE_REC = type { i8*, %struct._GSList* }
%struct.MODULE_FILE_REC = type { %struct._MODULE_REC*, i8*, i8*, void ()*, %struct._GModule*, i8 }
%struct._GModule = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@__func__.module_load = private unnamed_addr constant [12 x i8] c"module_load\00", align 1
@.str = private unnamed_addr constant [13 x i8] c"path != NULL\00", align 1
@__func__.module_load_sub = private unnamed_addr constant [16 x i8] c"module_load_sub\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"submodule != NULL\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"_core\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"module unloaded\00", align 1
@modules = external global %struct._GSList*, align 8
@__func__.module_unload = private unnamed_addr constant [14 x i8] c"module_unload\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"module != NULL\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"lib\00", align 1
@__func__.module_get_sub = private unnamed_addr constant [15 x i8] c"module_get_sub\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"namelen >= rootlen\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"module error\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"abicheck\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"deinit\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"module loaded\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"%s/modules\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"/usr/local/lib/irssi/modules\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"_core_\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"_\00", align 1

; Function Attrs: nounwind uwtable
define i32 @module_load(i8*, i8**) #0 !dbg !32 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !39, metadata !40), !dbg !41
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !42, metadata !40), !dbg !43
  call void @llvm.dbg.declare(metadata i8** %6, metadata !44, metadata !40), !dbg !45
  call void @llvm.dbg.declare(metadata i8** %7, metadata !46, metadata !40), !dbg !47
  call void @llvm.dbg.declare(metadata i8** %8, metadata !48, metadata !40), !dbg !49
  call void @llvm.dbg.declare(metadata i8** %9, metadata !50, metadata !40), !dbg !51
  call void @llvm.dbg.declare(metadata i32* %10, metadata !52, metadata !40), !dbg !53
  call void @llvm.dbg.declare(metadata i32* %11, metadata !54, metadata !40), !dbg !55
  call void @llvm.dbg.declare(metadata i32* %12, metadata !56, metadata !40), !dbg !57
  br label %13, !dbg !58, !llvm.loop !59

; <label>:13:                                     ; preds = %2
  %14 = load i8*, i8** %4, align 8, !dbg !60
  %15 = icmp ne i8* %14, null, !dbg !64
  br i1 %15, label %16, label %17, !dbg !60

; <label>:16:                                     ; preds = %13
  br label %18, !dbg !65

; <label>:17:                                     ; preds = %13
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.module_load, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)), !dbg !68
  store i32 0, i32* %3, align 4, !dbg !71
  br label %42, !dbg !71

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !72

; <label>:19:                                     ; preds = %18
  %20 = load i8*, i8** %4, align 8, !dbg !74
  %21 = call i8* @convert_home(i8* %20), !dbg !75
  store i8* %21, i8** %6, align 8, !dbg !76
  %22 = load i8*, i8** %6, align 8, !dbg !77
  %23 = call i8* @module_get_name(i8* %22, i32* %10, i32* %11), !dbg !78
  store i8* %23, i8** %7, align 8, !dbg !79
  %24 = load i8*, i8** %7, align 8, !dbg !80
  %25 = load i8**, i8*** %5, align 8, !dbg !81
  %26 = call i8* @module_get_root(i8* %24, i8** %25), !dbg !82
  store i8* %26, i8** %9, align 8, !dbg !83
  %27 = load i8*, i8** %7, align 8, !dbg !84
  %28 = load i8*, i8** %9, align 8, !dbg !85
  %29 = call i8* @module_get_sub(i8* %27, i8* %28), !dbg !86
  store i8* %29, i8** %8, align 8, !dbg !87
  %30 = load i8*, i8** %7, align 8, !dbg !88
  call void @g_free(i8* %30), !dbg !89
  %31 = load i8*, i8** %6, align 8, !dbg !90
  %32 = load i8*, i8** %9, align 8, !dbg !91
  %33 = load i8*, i8** %8, align 8, !dbg !92
  %34 = load i32, i32* %10, align 4, !dbg !93
  %35 = load i32, i32* %11, align 4, !dbg !94
  %36 = load i8**, i8*** %5, align 8, !dbg !95
  %37 = call i32 @module_load_full(i8* %31, i8* %32, i8* %33, i32 %34, i32 %35, i8** %36), !dbg !96
  store i32 %37, i32* %12, align 4, !dbg !97
  %38 = load i8*, i8** %9, align 8, !dbg !98
  call void @g_free(i8* %38), !dbg !99
  %39 = load i8*, i8** %8, align 8, !dbg !100
  call void @g_free(i8* %39), !dbg !101
  %40 = load i8*, i8** %6, align 8, !dbg !102
  call void @g_free(i8* %40), !dbg !103
  %41 = load i32, i32* %12, align 4, !dbg !104
  store i32 %41, i32* %3, align 4, !dbg !105
  br label %42, !dbg !105

; <label>:42:                                     ; preds = %19, %17
  %43 = load i32, i32* %3, align 4, !dbg !106
  ret i32 %43, !dbg !106
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare i8* @convert_home(i8*) #2

; Function Attrs: nounwind uwtable
define internal i8* @module_get_name(i8*, i32*, i32*) #0 !dbg !107 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !111, metadata !40), !dbg !112
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !113, metadata !40), !dbg !114
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !115, metadata !40), !dbg !116
  call void @llvm.dbg.declare(metadata i8** %7, metadata !117, metadata !40), !dbg !118
  call void @llvm.dbg.declare(metadata i8** %8, metadata !119, metadata !40), !dbg !120
  call void @llvm.dbg.declare(metadata i8** %9, metadata !121, metadata !40), !dbg !122
  store i8* null, i8** %7, align 8, !dbg !123
  %10 = load i8*, i8** %4, align 8, !dbg !124
  %11 = load i8, i8* %10, align 1, !dbg !126
  %12 = sext i8 %11 to i32, !dbg !126
  %13 = icmp eq i32 %12, 126, !dbg !127
  br i1 %13, label %18, label %14, !dbg !128

; <label>:14:                                     ; preds = %3
  %15 = load i8*, i8** %4, align 8, !dbg !129
  %16 = call i32 @g_path_is_absolute(i8* %15), !dbg !131
  %17 = icmp ne i32 %16, 0, !dbg !131
  br i1 %17, label %18, label %27, !dbg !132

; <label>:18:                                     ; preds = %14, %3
  %19 = load i8*, i8** %4, align 8, !dbg !133
  %20 = call i8* @strrchr(i8* %19, i32 47) #6, !dbg !135
  store i8* %20, i8** %7, align 8, !dbg !136
  %21 = load i8*, i8** %7, align 8, !dbg !137
  %22 = icmp ne i8* %21, null, !dbg !139
  br i1 %22, label %23, label %26, !dbg !140

; <label>:23:                                     ; preds = %18
  %24 = load i8*, i8** %7, align 8, !dbg !141
  %25 = getelementptr inbounds i8, i8* %24, i32 1, !dbg !141
  store i8* %25, i8** %7, align 8, !dbg !141
  br label %26, !dbg !143

; <label>:26:                                     ; preds = %23, %18
  br label %27, !dbg !144

; <label>:27:                                     ; preds = %26, %14
  %28 = load i8*, i8** %7, align 8, !dbg !145
  %29 = icmp eq i8* %28, null, !dbg !147
  br i1 %29, label %30, label %32, !dbg !148

; <label>:30:                                     ; preds = %27
  %31 = load i8*, i8** %4, align 8, !dbg !149
  store i8* %31, i8** %7, align 8, !dbg !150
  br label %32, !dbg !151

; <label>:32:                                     ; preds = %30, %27
  %33 = load i8*, i8** %7, align 8, !dbg !152
  %34 = call i32 @strncmp(i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i64 3) #6, !dbg !154
  %35 = icmp eq i32 %34, 0, !dbg !155
  br i1 %35, label %36, label %39, !dbg !156

; <label>:36:                                     ; preds = %32
  %37 = load i8*, i8** %7, align 8, !dbg !157
  %38 = getelementptr inbounds i8, i8* %37, i64 3, !dbg !157
  store i8* %38, i8** %7, align 8, !dbg !157
  br label %39, !dbg !158

; <label>:39:                                     ; preds = %36, %32
  %40 = load i8*, i8** %7, align 8, !dbg !159
  %41 = call noalias i8* @g_strdup(i8* %40), !dbg !160
  store i8* %41, i8** %8, align 8, !dbg !161
  %42 = load i8*, i8** %8, align 8, !dbg !162
  %43 = call i8* @strchr(i8* %42, i32 46) #6, !dbg !163
  store i8* %43, i8** %9, align 8, !dbg !164
  %44 = load i8*, i8** %9, align 8, !dbg !165
  %45 = icmp ne i8* %44, null, !dbg !167
  br i1 %45, label %46, label %48, !dbg !168

; <label>:46:                                     ; preds = %39
  %47 = load i8*, i8** %9, align 8, !dbg !169
  store i8 0, i8* %47, align 1, !dbg !171
  br label %48, !dbg !172

; <label>:48:                                     ; preds = %46, %39
  %49 = load i8*, i8** %7, align 8, !dbg !173
  %50 = load i8*, i8** %4, align 8, !dbg !174
  %51 = ptrtoint i8* %49 to i64, !dbg !175
  %52 = ptrtoint i8* %50 to i64, !dbg !175
  %53 = sub i64 %51, %52, !dbg !175
  %54 = trunc i64 %53 to i32, !dbg !176
  %55 = load i32*, i32** %5, align 8, !dbg !177
  store i32 %54, i32* %55, align 4, !dbg !178
  %56 = load i32*, i32** %5, align 8, !dbg !179
  %57 = load i32, i32* %56, align 4, !dbg !180
  %58 = sext i32 %57 to i64, !dbg !180
  %59 = load i8*, i8** %9, align 8, !dbg !181
  %60 = icmp eq i8* %59, null, !dbg !182
  br i1 %60, label %61, label %64, !dbg !181

; <label>:61:                                     ; preds = %48
  %62 = load i8*, i8** %7, align 8, !dbg !183
  %63 = call i64 @strlen(i8* %62) #6, !dbg !185
  br label %72, !dbg !186

; <label>:64:                                     ; preds = %48
  %65 = load i8*, i8** %9, align 8, !dbg !187
  %66 = load i8*, i8** %8, align 8, !dbg !188
  %67 = ptrtoint i8* %65 to i64, !dbg !189
  %68 = ptrtoint i8* %66 to i64, !dbg !189
  %69 = sub i64 %67, %68, !dbg !189
  %70 = trunc i64 %69 to i32, !dbg !190
  %71 = sext i32 %70 to i64, !dbg !190
  br label %72, !dbg !191

; <label>:72:                                     ; preds = %64, %61
  %73 = phi i64 [ %63, %61 ], [ %71, %64 ], !dbg !193
  %74 = add i64 %58, %73, !dbg !195
  %75 = trunc i64 %74 to i32, !dbg !196
  %76 = load i32*, i32** %6, align 8, !dbg !197
  store i32 %75, i32* %76, align 4, !dbg !198
  %77 = load i8*, i8** %8, align 8, !dbg !199
  ret i8* %77, !dbg !200
}

; Function Attrs: nounwind uwtable
define internal i8* @module_get_root(i8*, i8**) #0 !dbg !201 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !204, metadata !40), !dbg !205
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !206, metadata !40), !dbg !207
  call void @llvm.dbg.declare(metadata i32* %6, metadata !208, metadata !40), !dbg !209
  %7 = load i8**, i8*** %5, align 8, !dbg !210
  %8 = icmp ne i8** %7, null, !dbg !212
  br i1 %8, label %9, label %44, !dbg !213

; <label>:9:                                      ; preds = %2
  br label %10, !dbg !214

; <label>:10:                                     ; preds = %40, %9
  %11 = load i8**, i8*** %5, align 8, !dbg !216
  %12 = load i8*, i8** %11, align 8, !dbg !218
  %13 = icmp ne i8* %12, null, !dbg !219
  br i1 %13, label %14, label %43, !dbg !220

; <label>:14:                                     ; preds = %10
  %15 = load i8**, i8*** %5, align 8, !dbg !221
  %16 = load i8*, i8** %15, align 8, !dbg !223
  %17 = call i64 @strlen(i8* %16) #6, !dbg !224
  %18 = trunc i64 %17 to i32, !dbg !224
  store i32 %18, i32* %6, align 4, !dbg !225
  %19 = load i8*, i8** %4, align 8, !dbg !226
  %20 = load i8**, i8*** %5, align 8, !dbg !228
  %21 = load i8*, i8** %20, align 8, !dbg !229
  %22 = load i32, i32* %6, align 4, !dbg !230
  %23 = sext i32 %22 to i64, !dbg !230
  %24 = call i32 @strncmp(i8* %19, i8* %21, i64 %23) #6, !dbg !231
  %25 = icmp eq i32 %24, 0, !dbg !232
  br i1 %25, label %26, label %40, !dbg !233

; <label>:26:                                     ; preds = %14
  %27 = load i32, i32* %6, align 4, !dbg !234
  %28 = sext i32 %27 to i64, !dbg !235
  %29 = load i8*, i8** %4, align 8, !dbg !235
  %30 = getelementptr inbounds i8, i8* %29, i64 %28, !dbg !235
  %31 = load i8, i8* %30, align 1, !dbg !235
  %32 = sext i8 %31 to i32, !dbg !235
  %33 = icmp eq i32 %32, 95, !dbg !236
  br i1 %33, label %34, label %40, !dbg !237

; <label>:34:                                     ; preds = %26
  %35 = load i32, i32* %6, align 4, !dbg !239
  %36 = add nsw i32 %35, 1, !dbg !241
  %37 = load i8*, i8** %4, align 8, !dbg !242
  %38 = sext i32 %36 to i64, !dbg !242
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !242
  store i8* %39, i8** %4, align 8, !dbg !242
  br label %43, !dbg !243

; <label>:40:                                     ; preds = %26, %14
  %41 = load i8**, i8*** %5, align 8, !dbg !244
  %42 = getelementptr inbounds i8*, i8** %41, i32 1, !dbg !244
  store i8** %42, i8*** %5, align 8, !dbg !244
  br label %10, !dbg !245, !llvm.loop !247

; <label>:43:                                     ; preds = %34, %10
  br label %44, !dbg !248

; <label>:44:                                     ; preds = %43, %2
  %45 = load i8*, i8** %4, align 8, !dbg !249
  %46 = call i64 @strlen(i8* %45) #6, !dbg !250
  %47 = trunc i64 %46 to i32, !dbg !250
  store i32 %47, i32* %6, align 4, !dbg !251
  %48 = load i32, i32* %6, align 4, !dbg !252
  %49 = icmp sgt i32 %48, 5, !dbg !254
  br i1 %49, label %50, label %64, !dbg !255

; <label>:50:                                     ; preds = %44
  %51 = load i8*, i8** %4, align 8, !dbg !256
  %52 = load i32, i32* %6, align 4, !dbg !258
  %53 = sext i32 %52 to i64, !dbg !259
  %54 = getelementptr inbounds i8, i8* %51, i64 %53, !dbg !259
  %55 = getelementptr inbounds i8, i8* %54, i64 -5, !dbg !260
  %56 = call i32 @g_strcmp0(i8* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)), !dbg !261
  %57 = icmp eq i32 %56, 0, !dbg !262
  br i1 %57, label %58, label %64, !dbg !263

; <label>:58:                                     ; preds = %50
  %59 = load i8*, i8** %4, align 8, !dbg !264
  %60 = load i32, i32* %6, align 4, !dbg !265
  %61 = sub nsw i32 %60, 5, !dbg !266
  %62 = sext i32 %61 to i64, !dbg !265
  %63 = call noalias i8* @g_strndup(i8* %59, i64 %62), !dbg !267
  store i8* %63, i8** %3, align 8, !dbg !268
  br label %67, !dbg !268

; <label>:64:                                     ; preds = %50, %44
  %65 = load i8*, i8** %4, align 8, !dbg !269
  %66 = call noalias i8* @g_strdup(i8* %65), !dbg !270
  store i8* %66, i8** %3, align 8, !dbg !271
  br label %67, !dbg !271

; <label>:67:                                     ; preds = %64, %58
  %68 = load i8*, i8** %3, align 8, !dbg !272
  ret i8* %68, !dbg !272
}

; Function Attrs: nounwind uwtable
define internal i8* @module_get_sub(i8*, i8*) #0 !dbg !273 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !276, metadata !40), !dbg !277
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !278, metadata !40), !dbg !279
  call void @llvm.dbg.declare(metadata i32* %6, metadata !280, metadata !40), !dbg !281
  call void @llvm.dbg.declare(metadata i32* %7, metadata !282, metadata !40), !dbg !283
  %8 = load i8*, i8** %4, align 8, !dbg !284
  %9 = call i64 @strlen(i8* %8) #6, !dbg !285
  %10 = trunc i64 %9 to i32, !dbg !285
  store i32 %10, i32* %7, align 4, !dbg !286
  %11 = load i8*, i8** %5, align 8, !dbg !287
  %12 = call i64 @strlen(i8* %11) #6, !dbg !288
  %13 = trunc i64 %12 to i32, !dbg !288
  store i32 %13, i32* %6, align 4, !dbg !289
  br label %14, !dbg !290, !llvm.loop !291

; <label>:14:                                     ; preds = %2
  %15 = load i32, i32* %7, align 4, !dbg !292
  %16 = load i32, i32* %6, align 4, !dbg !296
  %17 = icmp sge i32 %15, %16, !dbg !297
  br i1 %17, label %18, label %19, !dbg !292

; <label>:18:                                     ; preds = %14
  br label %22, !dbg !298

; <label>:19:                                     ; preds = %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.module_get_sub, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0)), !dbg !301
  %20 = load i8*, i8** %4, align 8, !dbg !304
  %21 = call noalias i8* @g_strdup(i8* %20), !dbg !305
  store i8* %21, i8** %3, align 8, !dbg !307
  br label %77, !dbg !307

; <label>:22:                                     ; preds = %18
  br label %23, !dbg !308

; <label>:23:                                     ; preds = %22
  %24 = load i8*, i8** %4, align 8, !dbg !310
  %25 = load i8*, i8** %5, align 8, !dbg !312
  %26 = load i32, i32* %6, align 4, !dbg !313
  %27 = sext i32 %26 to i64, !dbg !313
  %28 = call i32 @strncmp(i8* %24, i8* %25, i64 %27) #6, !dbg !314
  %29 = icmp eq i32 %28, 0, !dbg !315
  br i1 %29, label %30, label %39, !dbg !316

; <label>:30:                                     ; preds = %23
  %31 = load i8*, i8** %4, align 8, !dbg !317
  %32 = load i32, i32* %6, align 4, !dbg !318
  %33 = sext i32 %32 to i64, !dbg !319
  %34 = getelementptr inbounds i8, i8* %31, i64 %33, !dbg !319
  %35 = call i32 @g_strcmp0(i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)), !dbg !320
  %36 = icmp eq i32 %35, 0, !dbg !321
  br i1 %36, label %37, label %39, !dbg !322

; <label>:37:                                     ; preds = %30
  %38 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)), !dbg !324
  store i8* %38, i8** %3, align 8, !dbg !325
  br label %77, !dbg !325

; <label>:39:                                     ; preds = %30, %23
  %40 = load i32, i32* %7, align 4, !dbg !326
  %41 = load i32, i32* %6, align 4, !dbg !328
  %42 = icmp sgt i32 %40, %41, !dbg !329
  br i1 %42, label %43, label %74, !dbg !330

; <label>:43:                                     ; preds = %39
  %44 = load i32, i32* %7, align 4, !dbg !331
  %45 = load i32, i32* %6, align 4, !dbg !333
  %46 = sub nsw i32 %44, %45, !dbg !334
  %47 = sub nsw i32 %46, 1, !dbg !335
  %48 = sext i32 %47 to i64, !dbg !336
  %49 = load i8*, i8** %4, align 8, !dbg !336
  %50 = getelementptr inbounds i8, i8* %49, i64 %48, !dbg !336
  %51 = load i8, i8* %50, align 1, !dbg !336
  %52 = sext i8 %51 to i32, !dbg !336
  %53 = icmp eq i32 %52, 95, !dbg !337
  br i1 %53, label %54, label %74, !dbg !338

; <label>:54:                                     ; preds = %43
  %55 = load i8*, i8** %4, align 8, !dbg !339
  %56 = load i32, i32* %7, align 4, !dbg !340
  %57 = sext i32 %56 to i64, !dbg !341
  %58 = getelementptr inbounds i8, i8* %55, i64 %57, !dbg !341
  %59 = load i32, i32* %6, align 4, !dbg !342
  %60 = sext i32 %59 to i64, !dbg !343
  %61 = sub i64 0, %60, !dbg !343
  %62 = getelementptr inbounds i8, i8* %58, i64 %61, !dbg !343
  %63 = load i8*, i8** %5, align 8, !dbg !344
  %64 = call i32 @g_strcmp0(i8* %62, i8* %63), !dbg !345
  %65 = icmp eq i32 %64, 0, !dbg !346
  br i1 %65, label %66, label %74, !dbg !347

; <label>:66:                                     ; preds = %54
  %67 = load i8*, i8** %4, align 8, !dbg !349
  %68 = load i32, i32* %7, align 4, !dbg !350
  %69 = load i32, i32* %6, align 4, !dbg !351
  %70 = sub nsw i32 %68, %69, !dbg !352
  %71 = sub nsw i32 %70, 1, !dbg !353
  %72 = sext i32 %71 to i64, !dbg !350
  %73 = call noalias i8* @g_strndup(i8* %67, i64 %72), !dbg !354
  store i8* %73, i8** %3, align 8, !dbg !355
  br label %77, !dbg !355

; <label>:74:                                     ; preds = %54, %43, %39
  %75 = load i8*, i8** %4, align 8, !dbg !356
  %76 = call noalias i8* @g_strdup(i8* %75), !dbg !357
  store i8* %76, i8** %3, align 8, !dbg !358
  br label %77, !dbg !358

; <label>:77:                                     ; preds = %74, %66, %37, %19
  %78 = load i8*, i8** %3, align 8, !dbg !359
  ret i8* %78, !dbg !359
}

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @module_load_full(i8*, i8*, i8*, i32, i32, i8**) #0 !dbg !360 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca %struct._MODULE_REC*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !363, metadata !40), !dbg !364
  store i8* %1, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !365, metadata !40), !dbg !366
  store i8* %2, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !367, metadata !40), !dbg !368
  store i32 %3, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !369, metadata !40), !dbg !370
  store i32 %4, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !371, metadata !40), !dbg !372
  store i8** %5, i8*** %13, align 8
  call void @llvm.dbg.declare(metadata i8*** %13, metadata !373, metadata !40), !dbg !374
  call void @llvm.dbg.declare(metadata %struct._MODULE_REC** %14, metadata !375, metadata !40), !dbg !389
  call void @llvm.dbg.declare(metadata i32* %15, metadata !390, metadata !40), !dbg !391
  call void @llvm.dbg.declare(metadata i32* %16, metadata !392, metadata !40), !dbg !393
  %17 = call i32 @g_module_supported() #1, !dbg !394
  %18 = icmp ne i32 %17, 0, !dbg !394
  br i1 %18, label %20, label %19, !dbg !396

; <label>:19:                                     ; preds = %6
  store i32 0, i32* %7, align 4, !dbg !397
  br label %66, !dbg !397

; <label>:20:                                     ; preds = %6
  %21 = load i8*, i8** %9, align 8, !dbg !398
  %22 = call %struct._MODULE_REC* @module_find(i8* %21), !dbg !399
  store %struct._MODULE_REC* %22, %struct._MODULE_REC** %14, align 8, !dbg !400
  %23 = load %struct._MODULE_REC*, %struct._MODULE_REC** %14, align 8, !dbg !401
  %24 = icmp ne %struct._MODULE_REC* %23, null, !dbg !403
  br i1 %24, label %25, label %39, !dbg !404

; <label>:25:                                     ; preds = %20
  %26 = load i8*, i8** %10, align 8, !dbg !405
  %27 = load i8*, i8** %9, align 8, !dbg !407
  %28 = call i32 @g_strcmp0(i8* %26, i8* %27), !dbg !408
  %29 = icmp eq i32 %28, 0, !dbg !409
  br i1 %29, label %35, label %30, !dbg !410

; <label>:30:                                     ; preds = %25
  %31 = load %struct._MODULE_REC*, %struct._MODULE_REC** %14, align 8, !dbg !411
  %32 = load i8*, i8** %10, align 8, !dbg !412
  %33 = call %struct.MODULE_FILE_REC* @module_file_find(%struct._MODULE_REC* %31, i8* %32), !dbg !413
  %34 = icmp ne %struct.MODULE_FILE_REC* %33, null, !dbg !414
  br i1 %34, label %35, label %39, !dbg !415

; <label>:35:                                     ; preds = %30, %25
  %36 = load i8*, i8** %9, align 8, !dbg !417
  %37 = load i8*, i8** %10, align 8, !dbg !419
  %38 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 4, i8* null, i8* null, i8* %36, i8* %37), !dbg !420
  store i32 0, i32* %7, align 4, !dbg !421
  br label %66, !dbg !421

; <label>:39:                                     ; preds = %30, %20
  %40 = load i8*, i8** %9, align 8, !dbg !422
  %41 = load i8*, i8** %10, align 8, !dbg !423
  %42 = call i32 @g_strcmp0(i8* %40, i8* %41), !dbg !424
  %43 = icmp eq i32 %42, 0, !dbg !425
  %44 = zext i1 %43 to i32, !dbg !425
  store i32 %44, i32* %16, align 4, !dbg !426
  %45 = load i8*, i8** %8, align 8, !dbg !427
  %46 = load i8*, i8** %9, align 8, !dbg !428
  %47 = load i8*, i8** %10, align 8, !dbg !429
  %48 = load i32, i32* %16, align 4, !dbg !430
  %49 = call i32 @module_load_name(i8* %45, i8* %46, i8* %47, i32 %48), !dbg !431
  store i32 %49, i32* %15, align 4, !dbg !432
  %50 = load i32, i32* %15, align 4, !dbg !433
  %51 = icmp eq i32 %50, -1, !dbg !435
  br i1 %51, label %52, label %62, !dbg !436

; <label>:52:                                     ; preds = %39
  %53 = load i32, i32* %16, align 4, !dbg !437
  %54 = icmp ne i32 %53, 0, !dbg !437
  br i1 %54, label %55, label %62, !dbg !439

; <label>:55:                                     ; preds = %52
  %56 = load i8*, i8** %8, align 8, !dbg !440
  %57 = load i8*, i8** %9, align 8, !dbg !442
  %58 = load i32, i32* %11, align 4, !dbg !443
  %59 = load i32, i32* %12, align 4, !dbg !444
  %60 = load i8**, i8*** %13, align 8, !dbg !445
  %61 = call i32 @module_load_prefixes(i8* %56, i8* %57, i32 %58, i32 %59, i8** %60), !dbg !446
  store i32 %61, i32* %15, align 4, !dbg !447
  br label %62, !dbg !448

; <label>:62:                                     ; preds = %55, %52, %39
  %63 = load i32, i32* %15, align 4, !dbg !449
  %64 = icmp sgt i32 %63, 0, !dbg !450
  %65 = zext i1 %64 to i32, !dbg !450
  store i32 %65, i32* %7, align 4, !dbg !451
  br label %66, !dbg !451

; <label>:66:                                     ; preds = %62, %35, %19
  %67 = load i32, i32* %7, align 4, !dbg !452
  ret i32 %67, !dbg !452
}

; Function Attrs: nounwind uwtable
define i32 @module_load_sub(i8*, i8*, i8**) #0 !dbg !453 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct._GString*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !456, metadata !40), !dbg !457
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !458, metadata !40), !dbg !459
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !460, metadata !40), !dbg !461
  call void @llvm.dbg.declare(metadata %struct._GString** %8, metadata !462, metadata !40), !dbg !474
  call void @llvm.dbg.declare(metadata i8** %9, metadata !475, metadata !40), !dbg !476
  call void @llvm.dbg.declare(metadata i8** %10, metadata !477, metadata !40), !dbg !478
  call void @llvm.dbg.declare(metadata i8** %11, metadata !479, metadata !40), !dbg !480
  call void @llvm.dbg.declare(metadata i32* %12, metadata !481, metadata !40), !dbg !482
  call void @llvm.dbg.declare(metadata i32* %13, metadata !483, metadata !40), !dbg !484
  call void @llvm.dbg.declare(metadata i32* %14, metadata !485, metadata !40), !dbg !486
  br label %15, !dbg !487, !llvm.loop !488

; <label>:15:                                     ; preds = %3
  %16 = load i8*, i8** %5, align 8, !dbg !489
  %17 = icmp ne i8* %16, null, !dbg !493
  br i1 %17, label %18, label %19, !dbg !489

; <label>:18:                                     ; preds = %15
  br label %20, !dbg !494

; <label>:19:                                     ; preds = %15
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.module_load_sub, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)), !dbg !497
  store i32 0, i32* %4, align 4, !dbg !500
  br label %71, !dbg !500

; <label>:20:                                     ; preds = %18
  br label %21, !dbg !501

; <label>:21:                                     ; preds = %20
  br label %22, !dbg !503, !llvm.loop !504

; <label>:22:                                     ; preds = %21
  %23 = load i8*, i8** %6, align 8, !dbg !505
  %24 = icmp ne i8* %23, null, !dbg !509
  br i1 %24, label %25, label %26, !dbg !505

; <label>:25:                                     ; preds = %22
  br label %27, !dbg !510

; <label>:26:                                     ; preds = %22
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.module_load_sub, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0)), !dbg !513
  store i32 0, i32* %4, align 4, !dbg !516
  br label %71, !dbg !516

; <label>:27:                                     ; preds = %25
  br label %28, !dbg !517

; <label>:28:                                     ; preds = %27
  %29 = load i8*, i8** %5, align 8, !dbg !519
  %30 = call i8* @convert_home(i8* %29), !dbg !520
  store i8* %30, i8** %9, align 8, !dbg !521
  %31 = load i8*, i8** %9, align 8, !dbg !522
  %32 = call i8* @module_get_name(i8* %31, i32* %12, i32* %13), !dbg !523
  store i8* %32, i8** %10, align 8, !dbg !524
  %33 = load i8*, i8** %10, align 8, !dbg !525
  %34 = load i8**, i8*** %7, align 8, !dbg !526
  %35 = call i8* @module_get_root(i8* %33, i8** %34), !dbg !527
  store i8* %35, i8** %11, align 8, !dbg !528
  %36 = load i8*, i8** %10, align 8, !dbg !529
  call void @g_free(i8* %36), !dbg !530
  %37 = load i8*, i8** %9, align 8, !dbg !531
  %38 = call %struct._GString* @g_string_new(i8* %37), !dbg !532
  store %struct._GString* %38, %struct._GString** %8, align 8, !dbg !533
  %39 = load i8*, i8** %6, align 8, !dbg !534
  %40 = call i32 @g_strcmp0(i8* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)), !dbg !536
  %41 = icmp eq i32 %40, 0, !dbg !537
  br i1 %41, label %42, label %47, !dbg !538

; <label>:42:                                     ; preds = %28
  %43 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !539
  %44 = load i32, i32* %13, align 4, !dbg !540
  %45 = sext i32 %44 to i64, !dbg !540
  %46 = call %struct._GString* @g_string_insert(%struct._GString* %43, i64 %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)), !dbg !541
  br label %57, !dbg !541

; <label>:47:                                     ; preds = %28
  %48 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !542
  %49 = load i32, i32* %12, align 4, !dbg !544
  %50 = sext i32 %49 to i64, !dbg !544
  %51 = call %struct._GString* @g_string_insert_c(%struct._GString* %48, i64 %50, i8 signext 95), !dbg !545
  %52 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !546
  %53 = load i32, i32* %12, align 4, !dbg !547
  %54 = sext i32 %53 to i64, !dbg !547
  %55 = load i8*, i8** %6, align 8, !dbg !548
  %56 = call %struct._GString* @g_string_insert(%struct._GString* %52, i64 %54, i8* %55), !dbg !549
  br label %57

; <label>:57:                                     ; preds = %47, %42
  %58 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !550
  %59 = getelementptr inbounds %struct._GString, %struct._GString* %58, i32 0, i32 0, !dbg !551
  %60 = load i8*, i8** %59, align 8, !dbg !551
  %61 = load i8*, i8** %11, align 8, !dbg !552
  %62 = load i8*, i8** %6, align 8, !dbg !553
  %63 = load i32, i32* %12, align 4, !dbg !554
  %64 = load i32, i32* %13, align 4, !dbg !555
  %65 = call i32 @module_load_full(i8* %60, i8* %61, i8* %62, i32 %63, i32 %64, i8** null), !dbg !556
  store i32 %65, i32* %14, align 4, !dbg !557
  %66 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !558
  %67 = call i8* @g_string_free(%struct._GString* %66, i32 1), !dbg !559
  %68 = load i8*, i8** %11, align 8, !dbg !560
  call void @g_free(i8* %68), !dbg !561
  %69 = load i8*, i8** %9, align 8, !dbg !562
  call void @g_free(i8* %69), !dbg !563
  %70 = load i32, i32* %14, align 4, !dbg !564
  store i32 %70, i32* %4, align 4, !dbg !565
  br label %71, !dbg !565

; <label>:71:                                     ; preds = %57, %26, %19
  %72 = load i32, i32* %4, align 4, !dbg !566
  ret i32 %72, !dbg !566
}

declare %struct._GString* @g_string_new(i8*) #2

declare i32 @g_strcmp0(i8*, i8*) #2

declare %struct._GString* @g_string_insert(%struct._GString*, i64, i8*) #2

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #2

declare i8* @g_string_free(%struct._GString*, i32) #2

; Function Attrs: nounwind uwtable
define void @module_file_unload(%struct.MODULE_FILE_REC*) #0 !dbg !567 {
  %2 = alloca %struct.MODULE_FILE_REC*, align 8
  %3 = alloca %struct._MODULE_REC*, align 8
  store %struct.MODULE_FILE_REC* %0, %struct.MODULE_FILE_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MODULE_FILE_REC** %2, metadata !587, metadata !40), !dbg !588
  call void @llvm.dbg.declare(metadata %struct._MODULE_REC** %3, metadata !589, metadata !40), !dbg !590
  %4 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %2, align 8, !dbg !591
  %5 = getelementptr inbounds %struct.MODULE_FILE_REC, %struct.MODULE_FILE_REC* %4, i32 0, i32 0, !dbg !592
  %6 = load %struct._MODULE_REC*, %struct._MODULE_REC** %5, align 8, !dbg !592
  store %struct._MODULE_REC* %6, %struct._MODULE_REC** %3, align 8, !dbg !593
  %7 = load %struct._MODULE_REC*, %struct._MODULE_REC** %3, align 8, !dbg !594
  %8 = getelementptr inbounds %struct._MODULE_REC, %struct._MODULE_REC* %7, i32 0, i32 1, !dbg !595
  %9 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !595
  %10 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %2, align 8, !dbg !596
  %11 = bitcast %struct.MODULE_FILE_REC* %10 to i8*, !dbg !596
  %12 = call %struct._GSList* @g_slist_remove(%struct._GSList* %9, i8* %11), !dbg !597
  %13 = load %struct._MODULE_REC*, %struct._MODULE_REC** %3, align 8, !dbg !598
  %14 = getelementptr inbounds %struct._MODULE_REC, %struct._MODULE_REC* %13, i32 0, i32 1, !dbg !599
  store %struct._GSList* %12, %struct._GSList** %14, align 8, !dbg !600
  %15 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %2, align 8, !dbg !601
  %16 = getelementptr inbounds %struct.MODULE_FILE_REC, %struct.MODULE_FILE_REC* %15, i32 0, i32 5, !dbg !603
  %17 = load i8, i8* %16, align 8, !dbg !603
  %18 = and i8 %17, 1, !dbg !603
  %19 = zext i8 %18 to i32, !dbg !603
  %20 = icmp ne i32 %19, 0, !dbg !601
  br i1 %20, label %21, label %27, !dbg !604

; <label>:21:                                     ; preds = %1
  %22 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %2, align 8, !dbg !605
  %23 = getelementptr inbounds %struct.MODULE_FILE_REC, %struct.MODULE_FILE_REC* %22, i32 0, i32 0, !dbg !606
  %24 = load %struct._MODULE_REC*, %struct._MODULE_REC** %23, align 8, !dbg !606
  %25 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %2, align 8, !dbg !607
  %26 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i32 2, %struct._MODULE_REC* %24, %struct.MODULE_FILE_REC* %25), !dbg !608
  br label %27, !dbg !608

; <label>:27:                                     ; preds = %21, %1
  %28 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %2, align 8, !dbg !609
  %29 = getelementptr inbounds %struct.MODULE_FILE_REC, %struct.MODULE_FILE_REC* %28, i32 0, i32 4, !dbg !611
  %30 = load %struct._GModule*, %struct._GModule** %29, align 8, !dbg !611
  %31 = icmp ne %struct._GModule* %30, null, !dbg !612
  br i1 %31, label %32, label %34, !dbg !613

; <label>:32:                                     ; preds = %27
  %33 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %2, align 8, !dbg !614
  call void @module_file_deinit_gmodule(%struct.MODULE_FILE_REC* %33), !dbg !615
  br label %34, !dbg !615

; <label>:34:                                     ; preds = %32, %27
  %35 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %2, align 8, !dbg !616
  %36 = getelementptr inbounds %struct.MODULE_FILE_REC, %struct.MODULE_FILE_REC* %35, i32 0, i32 1, !dbg !617
  %37 = load i8*, i8** %36, align 8, !dbg !617
  call void @g_free(i8* %37), !dbg !618
  %38 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %2, align 8, !dbg !619
  %39 = getelementptr inbounds %struct.MODULE_FILE_REC, %struct.MODULE_FILE_REC* %38, i32 0, i32 2, !dbg !620
  %40 = load i8*, i8** %39, align 8, !dbg !620
  call void @g_free(i8* %40), !dbg !621
  %41 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %2, align 8, !dbg !622
  %42 = bitcast %struct.MODULE_FILE_REC* %41 to i8*, !dbg !622
  call void @g_free(i8* %42), !dbg !623
  %43 = load %struct._MODULE_REC*, %struct._MODULE_REC** %3, align 8, !dbg !624
  %44 = getelementptr inbounds %struct._MODULE_REC, %struct._MODULE_REC* %43, i32 0, i32 1, !dbg !626
  %45 = load %struct._GSList*, %struct._GSList** %44, align 8, !dbg !626
  %46 = icmp eq %struct._GSList* %45, null, !dbg !627
  br i1 %46, label %47, label %55, !dbg !628

; <label>:47:                                     ; preds = %34
  %48 = load %struct._GSList*, %struct._GSList** @modules, align 8, !dbg !629
  %49 = load %struct._MODULE_REC*, %struct._MODULE_REC** %3, align 8, !dbg !631
  %50 = bitcast %struct._MODULE_REC* %49 to i8*, !dbg !631
  %51 = call %struct._GSList* @g_slist_find(%struct._GSList* %48, i8* %50), !dbg !632
  %52 = icmp ne %struct._GSList* %51, null, !dbg !633
  br i1 %52, label %53, label %55, !dbg !634

; <label>:53:                                     ; preds = %47
  %54 = load %struct._MODULE_REC*, %struct._MODULE_REC** %3, align 8, !dbg !635
  call void @module_unload(%struct._MODULE_REC* %54), !dbg !636
  br label %55, !dbg !636

; <label>:55:                                     ; preds = %53, %47, %34
  ret void, !dbg !637
}

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #2

declare i32 @signal_emit(i8*, i32, ...) #2

; Function Attrs: nounwind uwtable
define internal void @module_file_deinit_gmodule(%struct.MODULE_FILE_REC*) #0 !dbg !638 {
  %2 = alloca %struct.MODULE_FILE_REC*, align 8
  store %struct.MODULE_FILE_REC* %0, %struct.MODULE_FILE_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MODULE_FILE_REC** %2, metadata !639, metadata !40), !dbg !640
  %3 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %2, align 8, !dbg !641
  %4 = getelementptr inbounds %struct.MODULE_FILE_REC, %struct.MODULE_FILE_REC* %3, i32 0, i32 3, !dbg !643
  %5 = load void ()*, void ()** %4, align 8, !dbg !643
  %6 = icmp ne void ()* %5, null, !dbg !644
  br i1 %6, label %7, label %11, !dbg !645

; <label>:7:                                      ; preds = %1
  %8 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %2, align 8, !dbg !646
  %9 = getelementptr inbounds %struct.MODULE_FILE_REC, %struct.MODULE_FILE_REC* %8, i32 0, i32 3, !dbg !647
  %10 = load void ()*, void ()** %9, align 8, !dbg !647
  call void %10(), !dbg !646
  br label %11, !dbg !646

; <label>:11:                                     ; preds = %7, %1
  %12 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %2, align 8, !dbg !648
  %13 = getelementptr inbounds %struct.MODULE_FILE_REC, %struct.MODULE_FILE_REC* %12, i32 0, i32 2, !dbg !650
  %14 = load i8*, i8** %13, align 8, !dbg !650
  %15 = icmp ne i8* %14, null, !dbg !651
  br i1 %15, label %16, label %26, !dbg !652

; <label>:16:                                     ; preds = %11
  %17 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %2, align 8, !dbg !653
  %18 = getelementptr inbounds %struct.MODULE_FILE_REC, %struct.MODULE_FILE_REC* %17, i32 0, i32 2, !dbg !655
  %19 = load i8*, i8** %18, align 8, !dbg !655
  call void @settings_remove_module(i8* %19), !dbg !656
  %20 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %2, align 8, !dbg !657
  %21 = getelementptr inbounds %struct.MODULE_FILE_REC, %struct.MODULE_FILE_REC* %20, i32 0, i32 2, !dbg !658
  %22 = load i8*, i8** %21, align 8, !dbg !658
  call void @commands_remove_module(i8* %22), !dbg !659
  %23 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %2, align 8, !dbg !660
  %24 = getelementptr inbounds %struct.MODULE_FILE_REC, %struct.MODULE_FILE_REC* %23, i32 0, i32 2, !dbg !661
  %25 = load i8*, i8** %24, align 8, !dbg !661
  call void @signals_remove_module(i8* %25), !dbg !662
  br label %26, !dbg !663

; <label>:26:                                     ; preds = %16, %11
  %27 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %2, align 8, !dbg !664
  %28 = getelementptr inbounds %struct.MODULE_FILE_REC, %struct.MODULE_FILE_REC* %27, i32 0, i32 4, !dbg !665
  %29 = load %struct._GModule*, %struct._GModule** %28, align 8, !dbg !665
  %30 = call i32 @g_module_close(%struct._GModule* %29), !dbg !666
  ret void, !dbg !667
}

declare %struct._GSList* @g_slist_find(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define void @module_unload(%struct._MODULE_REC*) #0 !dbg !668 {
  %2 = alloca %struct._MODULE_REC*, align 8
  store %struct._MODULE_REC* %0, %struct._MODULE_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._MODULE_REC** %2, metadata !671, metadata !40), !dbg !672
  br label %3, !dbg !673, !llvm.loop !674

; <label>:3:                                      ; preds = %1
  %4 = load %struct._MODULE_REC*, %struct._MODULE_REC** %2, align 8, !dbg !675
  %5 = icmp ne %struct._MODULE_REC* %4, null, !dbg !679
  br i1 %5, label %6, label %7, !dbg !675

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !680

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.module_unload, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0)), !dbg !683
  br label %34, !dbg !686

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !687

; <label>:9:                                      ; preds = %8
  %10 = load %struct._GSList*, %struct._GSList** @modules, align 8, !dbg !689
  %11 = load %struct._MODULE_REC*, %struct._MODULE_REC** %2, align 8, !dbg !690
  %12 = bitcast %struct._MODULE_REC* %11 to i8*, !dbg !690
  %13 = call %struct._GSList* @g_slist_remove(%struct._GSList* %10, i8* %12), !dbg !691
  store %struct._GSList* %13, %struct._GSList** @modules, align 8, !dbg !692
  %14 = load %struct._MODULE_REC*, %struct._MODULE_REC** %2, align 8, !dbg !693
  %15 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i32 1, %struct._MODULE_REC* %14), !dbg !694
  br label %16, !dbg !695

; <label>:16:                                     ; preds = %21, %9
  %17 = load %struct._MODULE_REC*, %struct._MODULE_REC** %2, align 8, !dbg !696
  %18 = getelementptr inbounds %struct._MODULE_REC, %struct._MODULE_REC* %17, i32 0, i32 1, !dbg !698
  %19 = load %struct._GSList*, %struct._GSList** %18, align 8, !dbg !698
  %20 = icmp ne %struct._GSList* %19, null, !dbg !699
  br i1 %20, label %21, label %28, !dbg !700

; <label>:21:                                     ; preds = %16
  %22 = load %struct._MODULE_REC*, %struct._MODULE_REC** %2, align 8, !dbg !701
  %23 = getelementptr inbounds %struct._MODULE_REC, %struct._MODULE_REC* %22, i32 0, i32 1, !dbg !702
  %24 = load %struct._GSList*, %struct._GSList** %23, align 8, !dbg !702
  %25 = getelementptr inbounds %struct._GSList, %struct._GSList* %24, i32 0, i32 0, !dbg !703
  %26 = load i8*, i8** %25, align 8, !dbg !703
  %27 = bitcast i8* %26 to %struct.MODULE_FILE_REC*, !dbg !701
  call void @module_file_unload(%struct.MODULE_FILE_REC* %27), !dbg !704
  br label %16, !dbg !705, !llvm.loop !707

; <label>:28:                                     ; preds = %16
  %29 = load %struct._MODULE_REC*, %struct._MODULE_REC** %2, align 8, !dbg !708
  %30 = getelementptr inbounds %struct._MODULE_REC, %struct._MODULE_REC* %29, i32 0, i32 0, !dbg !709
  %31 = load i8*, i8** %30, align 8, !dbg !709
  call void @g_free(i8* %31), !dbg !710
  %32 = load %struct._MODULE_REC*, %struct._MODULE_REC** %2, align 8, !dbg !711
  %33 = bitcast %struct._MODULE_REC* %32 to i8*, !dbg !711
  call void @g_free(i8* %33), !dbg !712
  br label %34, !dbg !713

; <label>:34:                                     ; preds = %28, %7
  ret void, !dbg !714
}

declare i32 @g_path_is_absolute(i8*) #2

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #3

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

declare noalias i8* @g_strdup(i8*) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare noalias i8* @g_strndup(i8*, i64) #2

; Function Attrs: nounwind readnone
declare i32 @g_module_supported() #4

declare %struct._MODULE_REC* @module_find(i8*) #2

declare %struct.MODULE_FILE_REC* @module_file_find(%struct._MODULE_REC*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @module_load_name(i8*, i8*, i8*, i32) #0 !dbg !715 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca void ()*, align 8
  %11 = alloca void ()*, align 8
  %12 = alloca void (i32*)*, align 8
  %13 = alloca %struct._GModule*, align 8
  %14 = alloca %struct._MODULE_REC*, align 8
  %15 = alloca %struct.MODULE_FILE_REC*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !718, metadata !40), !dbg !719
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !720, metadata !40), !dbg !721
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !722, metadata !40), !dbg !723
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !724, metadata !40), !dbg !725
  call void @llvm.dbg.declare(metadata void ()** %10, metadata !726, metadata !40), !dbg !727
  call void @llvm.dbg.declare(metadata void ()** %11, metadata !728, metadata !40), !dbg !729
  call void @llvm.dbg.declare(metadata void (i32*)** %12, metadata !730, metadata !40), !dbg !734
  call void @llvm.dbg.declare(metadata %struct._GModule** %13, metadata !735, metadata !40), !dbg !736
  call void @llvm.dbg.declare(metadata %struct._MODULE_REC** %14, metadata !737, metadata !40), !dbg !738
  call void @llvm.dbg.declare(metadata %struct.MODULE_FILE_REC** %15, metadata !739, metadata !40), !dbg !740
  call void @llvm.dbg.declare(metadata i8** %16, metadata !741, metadata !40), !dbg !742
  store i8* null, i8** %16, align 8, !dbg !742
  call void @llvm.dbg.declare(metadata i8** %17, metadata !743, metadata !40), !dbg !744
  call void @llvm.dbg.declare(metadata i8** %18, metadata !745, metadata !40), !dbg !746
  store i8* null, i8** %18, align 8, !dbg !746
  call void @llvm.dbg.declare(metadata i8** %19, metadata !747, metadata !40), !dbg !748
  call void @llvm.dbg.declare(metadata i8** %20, metadata !749, metadata !40), !dbg !750
  call void @llvm.dbg.declare(metadata i8** %21, metadata !751, metadata !40), !dbg !752
  call void @llvm.dbg.declare(metadata i32* %22, metadata !753, metadata !40), !dbg !754
  store i32 0, i32* %22, align 4, !dbg !754
  call void @llvm.dbg.declare(metadata i32* %23, metadata !755, metadata !40), !dbg !756
  %25 = load i8*, i8** %6, align 8, !dbg !757
  %26 = call %struct._GModule* @module_open(i8* %25, i32* %23), !dbg !758
  store %struct._GModule* %26, %struct._GModule** %13, align 8, !dbg !759
  %27 = load %struct._GModule*, %struct._GModule** %13, align 8, !dbg !760
  %28 = icmp eq %struct._GModule* %27, null, !dbg !762
  br i1 %28, label %29, label %44, !dbg !763

; <label>:29:                                     ; preds = %4
  %30 = load i32, i32* %9, align 4, !dbg !764
  %31 = icmp ne i32 %30, 0, !dbg !764
  br i1 %31, label %32, label %35, !dbg !767

; <label>:32:                                     ; preds = %29
  %33 = load i32, i32* %23, align 4, !dbg !768
  %34 = icmp ne i32 %33, 0, !dbg !768
  br i1 %34, label %35, label %40, !dbg !770

; <label>:35:                                     ; preds = %32, %29
  %36 = call i8* @g_module_error(), !dbg !771
  %37 = load i8*, i8** %7, align 8, !dbg !773
  %38 = load i8*, i8** %8, align 8, !dbg !774
  %39 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 4, i8* inttoptr (i64 1 to i8*), i8* %36, i8* %37, i8* %38), !dbg !775
  br label %40, !dbg !777

; <label>:40:                                     ; preds = %35, %32
  %41 = load i32, i32* %23, align 4, !dbg !778
  %42 = icmp ne i32 %41, 0, !dbg !778
  %43 = select i1 %42, i32 0, i32 -1, !dbg !778
  store i32 %43, i32* %5, align 4, !dbg !779
  br label %165, !dbg !779

; <label>:44:                                     ; preds = %4
  %45 = load i8*, i8** %7, align 8, !dbg !780
  %46 = load i8*, i8** %8, align 8, !dbg !781
  %47 = call i8* @module_get_func(i8* %45, i8* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0)), !dbg !782
  store i8* %47, i8** %19, align 8, !dbg !783
  %48 = load %struct._GModule*, %struct._GModule** %13, align 8, !dbg !784
  %49 = load i8*, i8** %19, align 8, !dbg !786
  %50 = call i32 @g_module_symbol(%struct._GModule* %48, i8* %49, i8** %16), !dbg !787
  %51 = icmp ne i32 %50, 0, !dbg !787
  br i1 %51, label %59, label %52, !dbg !788

; <label>:52:                                     ; preds = %44
  %53 = load i8*, i8** %19, align 8, !dbg !789
  call void @g_free(i8* %53), !dbg !791
  %54 = load i8*, i8** %7, align 8, !dbg !792
  %55 = load i8*, i8** %8, align 8, !dbg !793
  %56 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 4, i8* inttoptr (i64 2 to i8*), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* %54, i8* %55), !dbg !794
  %57 = load %struct._GModule*, %struct._GModule** %13, align 8, !dbg !795
  %58 = call i32 @g_module_close(%struct._GModule* %57), !dbg !796
  store i32 0, i32* %5, align 4, !dbg !797
  br label %165, !dbg !797

; <label>:59:                                     ; preds = %44
  %60 = load i8*, i8** %19, align 8, !dbg !798
  call void @g_free(i8* %60), !dbg !799
  %61 = load i8*, i8** %16, align 8, !dbg !800
  %62 = bitcast i8* %61 to void (i32*)*, !dbg !800
  store void (i32*)* %62, void (i32*)** %12, align 8, !dbg !801
  %63 = load void (i32*)*, void (i32*)** %12, align 8, !dbg !802
  call void %63(i32* %22), !dbg !802
  %64 = load i32, i32* %22, align 4, !dbg !803
  %65 = icmp ne i32 %64, 17, !dbg !805
  br i1 %65, label %66, label %76, !dbg !806

; <label>:66:                                     ; preds = %59
  call void @llvm.dbg.declare(metadata i8** %24, metadata !807, metadata !40), !dbg !809
  %67 = load i32, i32* %22, align 4, !dbg !810
  %68 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i32 %67), !dbg !811
  store i8* %68, i8** %24, align 8, !dbg !809
  %69 = load i8*, i8** %24, align 8, !dbg !812
  %70 = load i8*, i8** %7, align 8, !dbg !813
  %71 = load i8*, i8** %8, align 8, !dbg !814
  %72 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 4, i8* inttoptr (i64 2 to i8*), i8* %69, i8* %70, i8* %71), !dbg !815
  %73 = load i8*, i8** %24, align 8, !dbg !816
  call void @g_free(i8* %73), !dbg !817
  %74 = load %struct._GModule*, %struct._GModule** %13, align 8, !dbg !818
  %75 = call i32 @g_module_close(%struct._GModule* %74), !dbg !819
  store i32 0, i32* %5, align 4, !dbg !820
  br label %165, !dbg !820

; <label>:76:                                     ; preds = %59
  %77 = load i8*, i8** %7, align 8, !dbg !821
  %78 = load i8*, i8** %8, align 8, !dbg !822
  %79 = call i8* @module_get_func(i8* %77, i8* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0)), !dbg !823
  store i8* %79, i8** %20, align 8, !dbg !824
  %80 = load i8*, i8** %7, align 8, !dbg !825
  %81 = load i8*, i8** %8, align 8, !dbg !826
  %82 = call i8* @module_get_func(i8* %80, i8* %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0)), !dbg !827
  store i8* %82, i8** %21, align 8, !dbg !828
  %83 = load %struct._GModule*, %struct._GModule** %13, align 8, !dbg !829
  %84 = load i8*, i8** %20, align 8, !dbg !830
  %85 = call i32 @g_module_symbol(%struct._GModule* %83, i8* %84, i8** %17), !dbg !831
  %86 = icmp ne i32 %85, 0, !dbg !831
  br i1 %86, label %87, label %92, !dbg !832

; <label>:87:                                     ; preds = %76
  %88 = load %struct._GModule*, %struct._GModule** %13, align 8, !dbg !833
  %89 = load i8*, i8** %21, align 8, !dbg !834
  %90 = call i32 @g_module_symbol(%struct._GModule* %88, i8* %89, i8** %18), !dbg !835
  %91 = icmp ne i32 %90, 0, !dbg !836
  br label %92

; <label>:92:                                     ; preds = %87, %76
  %93 = phi i1 [ false, %76 ], [ %91, %87 ]
  %94 = zext i1 %93 to i32, !dbg !838
  store i32 %94, i32* %23, align 4, !dbg !840
  %95 = load i8*, i8** %20, align 8, !dbg !841
  call void @g_free(i8* %95), !dbg !842
  %96 = load i8*, i8** %21, align 8, !dbg !843
  call void @g_free(i8* %96), !dbg !844
  %97 = load i32, i32* %23, align 4, !dbg !845
  %98 = icmp ne i32 %97, 0, !dbg !845
  br i1 %98, label %105, label %99, !dbg !847

; <label>:99:                                     ; preds = %92
  %100 = load i8*, i8** %7, align 8, !dbg !848
  %101 = load i8*, i8** %8, align 8, !dbg !850
  %102 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 4, i8* inttoptr (i64 3 to i8*), i8* null, i8* %100, i8* %101), !dbg !851
  %103 = load %struct._GModule*, %struct._GModule** %13, align 8, !dbg !852
  %104 = call i32 @g_module_close(%struct._GModule* %103), !dbg !853
  store i32 0, i32* %5, align 4, !dbg !854
  br label %165, !dbg !854

; <label>:105:                                    ; preds = %92
  %106 = load i8*, i8** %17, align 8, !dbg !855
  %107 = bitcast i8* %106 to void ()*, !dbg !855
  store void ()* %107, void ()** %10, align 8, !dbg !856
  %108 = load i8*, i8** %18, align 8, !dbg !857
  %109 = bitcast i8* %108 to void ()*, !dbg !857
  store void ()* %109, void ()** %11, align 8, !dbg !858
  %110 = load void ()*, void ()** %10, align 8, !dbg !859
  call void %110(), !dbg !859
  %111 = load i8*, i8** %7, align 8, !dbg !860
  %112 = call %struct._MODULE_REC* @module_find(i8* %111), !dbg !861
  store %struct._MODULE_REC* %112, %struct._MODULE_REC** %14, align 8, !dbg !862
  %113 = load %struct._MODULE_REC*, %struct._MODULE_REC** %14, align 8, !dbg !863
  %114 = icmp eq %struct._MODULE_REC* %113, null, !dbg !864
  br i1 %114, label %115, label %116, !dbg !863

; <label>:115:                                    ; preds = %105
  br label %130, !dbg !865

; <label>:116:                                    ; preds = %105
  %117 = load i8*, i8** %7, align 8, !dbg !866
  %118 = load i8*, i8** %8, align 8, !dbg !867
  %119 = call i32 @g_strcmp0(i8* %117, i8* %118), !dbg !868
  %120 = icmp eq i32 %119, 0, !dbg !869
  br i1 %120, label %121, label %124, !dbg !868

; <label>:121:                                    ; preds = %116
  %122 = load %struct._MODULE_REC*, %struct._MODULE_REC** %14, align 8, !dbg !870
  %123 = call %struct.MODULE_FILE_REC* @module_file_find(%struct._MODULE_REC* %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)), !dbg !871
  br label %128, !dbg !872

; <label>:124:                                    ; preds = %116
  %125 = load %struct._MODULE_REC*, %struct._MODULE_REC** %14, align 8, !dbg !873
  %126 = load i8*, i8** %8, align 8, !dbg !874
  %127 = call %struct.MODULE_FILE_REC* @module_file_find(%struct._MODULE_REC* %125, i8* %126), !dbg !875
  br label %128, !dbg !876

; <label>:128:                                    ; preds = %124, %121
  %129 = phi %struct.MODULE_FILE_REC* [ %123, %121 ], [ %127, %124 ], !dbg !877
  br label %130, !dbg !879

; <label>:130:                                    ; preds = %128, %115
  %131 = phi %struct.MODULE_FILE_REC* [ null, %115 ], [ %129, %128 ], !dbg !880
  store %struct.MODULE_FILE_REC* %131, %struct.MODULE_FILE_REC** %15, align 8, !dbg !881
  %132 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %15, align 8, !dbg !882
  %133 = icmp eq %struct.MODULE_FILE_REC* %132, null, !dbg !884
  br i1 %133, label %134, label %145, !dbg !885

; <label>:134:                                    ; preds = %130
  %135 = load i8*, i8** %7, align 8, !dbg !886
  %136 = load i8*, i8** %8, align 8, !dbg !888
  %137 = call %struct.MODULE_FILE_REC* @module_register_full(i8* %135, i8* %136, i8* null), !dbg !889
  store %struct.MODULE_FILE_REC* %137, %struct.MODULE_FILE_REC** %15, align 8, !dbg !890
  %138 = load %struct._GModule*, %struct._GModule** %13, align 8, !dbg !891
  %139 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %15, align 8, !dbg !892
  %140 = getelementptr inbounds %struct.MODULE_FILE_REC, %struct.MODULE_FILE_REC* %139, i32 0, i32 4, !dbg !893
  store %struct._GModule* %138, %struct._GModule** %140, align 8, !dbg !894
  %141 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %15, align 8, !dbg !895
  call void @module_file_unload(%struct.MODULE_FILE_REC* %141), !dbg !896
  %142 = load i8*, i8** %7, align 8, !dbg !897
  %143 = load i8*, i8** %8, align 8, !dbg !898
  %144 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 4, i8* inttoptr (i64 3 to i8*), i8* null, i8* %142, i8* %143), !dbg !899
  store i32 0, i32* %5, align 4, !dbg !900
  br label %165, !dbg !900

; <label>:145:                                    ; preds = %130
  %146 = load void ()*, void ()** %11, align 8, !dbg !901
  %147 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %15, align 8, !dbg !902
  %148 = getelementptr inbounds %struct.MODULE_FILE_REC, %struct.MODULE_FILE_REC* %147, i32 0, i32 3, !dbg !903
  store void ()* %146, void ()** %148, align 8, !dbg !904
  %149 = load %struct._GModule*, %struct._GModule** %13, align 8, !dbg !905
  %150 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %15, align 8, !dbg !906
  %151 = getelementptr inbounds %struct.MODULE_FILE_REC, %struct.MODULE_FILE_REC* %150, i32 0, i32 4, !dbg !907
  store %struct._GModule* %149, %struct._GModule** %151, align 8, !dbg !908
  %152 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %15, align 8, !dbg !909
  %153 = getelementptr inbounds %struct.MODULE_FILE_REC, %struct.MODULE_FILE_REC* %152, i32 0, i32 5, !dbg !910
  %154 = load i8, i8* %153, align 8, !dbg !911
  %155 = and i8 %154, -2, !dbg !911
  %156 = or i8 %155, 1, !dbg !911
  store i8 %156, i8* %153, align 8, !dbg !911
  %157 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %15, align 8, !dbg !912
  %158 = getelementptr inbounds %struct.MODULE_FILE_REC, %struct.MODULE_FILE_REC* %157, i32 0, i32 2, !dbg !913
  %159 = load i8*, i8** %158, align 8, !dbg !913
  call void @settings_check_module(i8* %159), !dbg !914
  %160 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %15, align 8, !dbg !915
  %161 = getelementptr inbounds %struct.MODULE_FILE_REC, %struct.MODULE_FILE_REC* %160, i32 0, i32 0, !dbg !916
  %162 = load %struct._MODULE_REC*, %struct._MODULE_REC** %161, align 8, !dbg !916
  %163 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %15, align 8, !dbg !917
  %164 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i32 2, %struct._MODULE_REC* %162, %struct.MODULE_FILE_REC* %163), !dbg !918
  store i32 1, i32* %5, align 4, !dbg !919
  br label %165, !dbg !919

; <label>:165:                                    ; preds = %145, %134, %99, %66, %52, %40
  %166 = load i32, i32* %5, align 4, !dbg !920
  ret i32 %166, !dbg !920
}

; Function Attrs: nounwind uwtable
define internal i32 @module_load_prefixes(i8*, i8*, i32, i32, i8**) #0 !dbg !921 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca %struct._GString*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !924, metadata !40), !dbg !925
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !926, metadata !40), !dbg !927
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !928, metadata !40), !dbg !929
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !930, metadata !40), !dbg !931
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !932, metadata !40), !dbg !933
  call void @llvm.dbg.declare(metadata %struct._GString** %11, metadata !934, metadata !40), !dbg !935
  call void @llvm.dbg.declare(metadata i32* %12, metadata !936, metadata !40), !dbg !937
  call void @llvm.dbg.declare(metadata i32* %13, metadata !938, metadata !40), !dbg !939
  %14 = load i8*, i8** %6, align 8, !dbg !940
  %15 = call %struct._GString* @g_string_new(i8* %14), !dbg !941
  store %struct._GString* %15, %struct._GString** %11, align 8, !dbg !942
  %16 = load %struct._GString*, %struct._GString** %11, align 8, !dbg !943
  %17 = load i32, i32* %9, align 4, !dbg !944
  %18 = sext i32 %17 to i64, !dbg !944
  %19 = call %struct._GString* @g_string_insert(%struct._GString* %16, i64 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)), !dbg !945
  %20 = load %struct._GString*, %struct._GString** %11, align 8, !dbg !946
  %21 = getelementptr inbounds %struct._GString, %struct._GString* %20, i32 0, i32 0, !dbg !947
  %22 = load i8*, i8** %21, align 8, !dbg !947
  %23 = load i8*, i8** %7, align 8, !dbg !948
  %24 = call i32 @module_load_name(i8* %22, i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 1), !dbg !949
  store i32 %24, i32* %12, align 4, !dbg !950
  %25 = load i32, i32* %12, align 4, !dbg !951
  %26 = icmp sgt i32 %25, 0, !dbg !952
  %27 = zext i1 %26 to i32, !dbg !952
  store i32 %27, i32* %13, align 4, !dbg !953
  %28 = load i8**, i8*** %10, align 8, !dbg !954
  %29 = icmp ne i8** %28, null, !dbg !956
  br i1 %29, label %30, label %63, !dbg !957

; <label>:30:                                     ; preds = %5
  br label %31, !dbg !958

; <label>:31:                                     ; preds = %59, %30
  %32 = load i8**, i8*** %10, align 8, !dbg !960
  %33 = load i8*, i8** %32, align 8, !dbg !962
  %34 = icmp ne i8* %33, null, !dbg !963
  br i1 %34, label %35, label %62, !dbg !964

; <label>:35:                                     ; preds = %31
  %36 = load %struct._GString*, %struct._GString** %11, align 8, !dbg !965
  %37 = load i8*, i8** %6, align 8, !dbg !967
  %38 = call %struct._GString* @g_string_assign(%struct._GString* %36, i8* %37), !dbg !968
  %39 = load %struct._GString*, %struct._GString** %11, align 8, !dbg !969
  %40 = load i32, i32* %8, align 4, !dbg !970
  %41 = sext i32 %40 to i64, !dbg !970
  %42 = call %struct._GString* @g_string_insert_c(%struct._GString* %39, i64 %41, i8 signext 95), !dbg !971
  %43 = load %struct._GString*, %struct._GString** %11, align 8, !dbg !972
  %44 = load i32, i32* %8, align 4, !dbg !973
  %45 = sext i32 %44 to i64, !dbg !973
  %46 = load i8**, i8*** %10, align 8, !dbg !974
  %47 = load i8*, i8** %46, align 8, !dbg !975
  %48 = call %struct._GString* @g_string_insert(%struct._GString* %43, i64 %45, i8* %47), !dbg !976
  %49 = load %struct._GString*, %struct._GString** %11, align 8, !dbg !977
  %50 = getelementptr inbounds %struct._GString, %struct._GString* %49, i32 0, i32 0, !dbg !978
  %51 = load i8*, i8** %50, align 8, !dbg !978
  %52 = load i8*, i8** %7, align 8, !dbg !979
  %53 = load i8**, i8*** %10, align 8, !dbg !980
  %54 = load i8*, i8** %53, align 8, !dbg !981
  %55 = call i32 @module_load_name(i8* %51, i8* %52, i8* %54, i32 1), !dbg !982
  store i32 %55, i32* %12, align 4, !dbg !983
  %56 = load i32, i32* %12, align 4, !dbg !984
  %57 = icmp sgt i32 %56, 0, !dbg !986
  br i1 %57, label %58, label %59, !dbg !987

; <label>:58:                                     ; preds = %35
  store i32 1, i32* %13, align 4, !dbg !988
  br label %59, !dbg !989

; <label>:59:                                     ; preds = %58, %35
  %60 = load i8**, i8*** %10, align 8, !dbg !990
  %61 = getelementptr inbounds i8*, i8** %60, i32 1, !dbg !990
  store i8** %61, i8*** %10, align 8, !dbg !990
  br label %31, !dbg !991, !llvm.loop !993

; <label>:62:                                     ; preds = %31
  br label %63, !dbg !994

; <label>:63:                                     ; preds = %62, %5
  %64 = load i32, i32* %13, align 4, !dbg !995
  %65 = icmp ne i32 %64, 0, !dbg !995
  br i1 %65, label %79, label %66, !dbg !997

; <label>:66:                                     ; preds = %63
  %67 = load %struct._GString*, %struct._GString** %11, align 8, !dbg !998
  %68 = load i8*, i8** %6, align 8, !dbg !1000
  %69 = call %struct._GString* @g_string_assign(%struct._GString* %67, i8* %68), !dbg !1001
  %70 = load %struct._GString*, %struct._GString** %11, align 8, !dbg !1002
  %71 = load i32, i32* %9, align 4, !dbg !1003
  %72 = sext i32 %71 to i64, !dbg !1003
  %73 = call %struct._GString* @g_string_insert(%struct._GString* %70, i64 %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)), !dbg !1004
  %74 = load %struct._GString*, %struct._GString** %11, align 8, !dbg !1005
  %75 = getelementptr inbounds %struct._GString, %struct._GString* %74, i32 0, i32 0, !dbg !1006
  %76 = load i8*, i8** %75, align 8, !dbg !1006
  %77 = load i8*, i8** %7, align 8, !dbg !1007
  %78 = call i32 @module_load_name(i8* %76, i8* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 0), !dbg !1008
  br label %79, !dbg !1009

; <label>:79:                                     ; preds = %66, %63
  %80 = load %struct._GString*, %struct._GString** %11, align 8, !dbg !1010
  %81 = call i8* @g_string_free(%struct._GString* %80, i32 1), !dbg !1011
  %82 = load i32, i32* %13, align 4, !dbg !1012
  ret i32 %82, !dbg !1013
}

; Function Attrs: nounwind uwtable
define internal %struct._GModule* @module_open(i8*, i32*) #0 !dbg !1014 {
  %3 = alloca %struct._GModule*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca %struct._GModule*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1017, metadata !40), !dbg !1018
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !1019, metadata !40), !dbg !1020
  call void @llvm.dbg.declare(metadata %struct.stat* %6, metadata !1021, metadata !40), !dbg !1060
  call void @llvm.dbg.declare(metadata %struct._GModule** %7, metadata !1061, metadata !40), !dbg !1062
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1063, metadata !40), !dbg !1064
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1065, metadata !40), !dbg !1066
  %10 = load i8*, i8** %4, align 8, !dbg !1067
  %11 = call i32 @g_path_is_absolute(i8* %10), !dbg !1069
  %12 = icmp ne i32 %11, 0, !dbg !1069
  br i1 %12, label %29, label %13, !dbg !1070

; <label>:13:                                     ; preds = %2
  %14 = load i8*, i8** %4, align 8, !dbg !1071
  %15 = load i8, i8* %14, align 1, !dbg !1073
  %16 = sext i8 %15 to i32, !dbg !1073
  %17 = icmp eq i32 %16, 126, !dbg !1074
  br i1 %17, label %29, label %18, !dbg !1075

; <label>:18:                                     ; preds = %13
  %19 = load i8*, i8** %4, align 8, !dbg !1076
  %20 = load i8, i8* %19, align 1, !dbg !1077
  %21 = sext i8 %20 to i32, !dbg !1077
  %22 = icmp eq i32 %21, 46, !dbg !1078
  br i1 %22, label %23, label %32, !dbg !1079

; <label>:23:                                     ; preds = %18
  %24 = load i8*, i8** %4, align 8, !dbg !1080
  %25 = getelementptr inbounds i8, i8* %24, i64 1, !dbg !1080
  %26 = load i8, i8* %25, align 1, !dbg !1080
  %27 = sext i8 %26 to i32, !dbg !1080
  %28 = icmp eq i32 %27, 47, !dbg !1081
  br i1 %28, label %29, label %32, !dbg !1082

; <label>:29:                                     ; preds = %23, %13, %2
  %30 = load i8*, i8** %4, align 8, !dbg !1084
  %31 = call noalias i8* @g_strdup(i8* %30), !dbg !1085
  store i8* %31, i8** %8, align 8, !dbg !1086
  br label %52, !dbg !1087

; <label>:32:                                     ; preds = %23, %18
  %33 = call i8* @get_irssi_dir(), !dbg !1088
  %34 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i8* %33), !dbg !1090
  store i8* %34, i8** %9, align 8, !dbg !1092
  %35 = load i8*, i8** %9, align 8, !dbg !1093
  %36 = load i8*, i8** %4, align 8, !dbg !1094
  %37 = call i8* @g_module_build_path(i8* %35, i8* %36), !dbg !1095
  store i8* %37, i8** %8, align 8, !dbg !1096
  %38 = load i8*, i8** %9, align 8, !dbg !1097
  call void @g_free(i8* %38), !dbg !1098
  %39 = load i8*, i8** %8, align 8, !dbg !1099
  %40 = call i32 @stat(i8* %39, %struct.stat* %6) #7, !dbg !1101
  %41 = icmp eq i32 %40, 0, !dbg !1102
  br i1 %41, label %42, label %48, !dbg !1103

; <label>:42:                                     ; preds = %32
  %43 = load i8*, i8** %8, align 8, !dbg !1104
  %44 = call %struct._GModule* @g_module_open(i8* %43, i32 0), !dbg !1106
  store %struct._GModule* %44, %struct._GModule** %7, align 8, !dbg !1107
  %45 = load i8*, i8** %8, align 8, !dbg !1108
  call void @g_free(i8* %45), !dbg !1109
  %46 = load i32*, i32** %5, align 8, !dbg !1110
  store i32 1, i32* %46, align 4, !dbg !1111
  %47 = load %struct._GModule*, %struct._GModule** %7, align 8, !dbg !1112
  store %struct._GModule* %47, %struct._GModule** %3, align 8, !dbg !1113
  br label %62, !dbg !1113

; <label>:48:                                     ; preds = %32
  %49 = load i8*, i8** %8, align 8, !dbg !1114
  call void @g_free(i8* %49), !dbg !1115
  %50 = load i8*, i8** %4, align 8, !dbg !1116
  %51 = call i8* @g_module_build_path(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i32 0, i32 0), i8* %50), !dbg !1117
  store i8* %51, i8** %8, align 8, !dbg !1118
  br label %52

; <label>:52:                                     ; preds = %48, %29
  %53 = load i8*, i8** %8, align 8, !dbg !1119
  %54 = call i32 @stat(i8* %53, %struct.stat* %6) #7, !dbg !1120
  %55 = icmp eq i32 %54, 0, !dbg !1121
  %56 = zext i1 %55 to i32, !dbg !1121
  %57 = load i32*, i32** %5, align 8, !dbg !1122
  store i32 %56, i32* %57, align 4, !dbg !1123
  %58 = load i8*, i8** %8, align 8, !dbg !1124
  %59 = call %struct._GModule* @g_module_open(i8* %58, i32 0), !dbg !1125
  store %struct._GModule* %59, %struct._GModule** %7, align 8, !dbg !1126
  %60 = load i8*, i8** %8, align 8, !dbg !1127
  call void @g_free(i8* %60), !dbg !1128
  %61 = load %struct._GModule*, %struct._GModule** %7, align 8, !dbg !1129
  store %struct._GModule* %61, %struct._GModule** %3, align 8, !dbg !1130
  br label %62, !dbg !1130

; <label>:62:                                     ; preds = %52, %42
  %63 = load %struct._GModule*, %struct._GModule** %3, align 8, !dbg !1131
  ret %struct._GModule* %63, !dbg !1131
}

declare i8* @g_module_error() #2

; Function Attrs: nounwind uwtable
define internal i8* @module_get_func(i8*, i8*, i8*) #0 !dbg !1132 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1135, metadata !40), !dbg !1136
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1137, metadata !40), !dbg !1138
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1139, metadata !40), !dbg !1140
  %8 = load i8*, i8** %6, align 8, !dbg !1141
  %9 = call i32 @g_strcmp0(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)), !dbg !1143
  %10 = icmp eq i32 %9, 0, !dbg !1144
  br i1 %10, label %11, label %15, !dbg !1145

; <label>:11:                                     ; preds = %3
  %12 = load i8*, i8** %5, align 8, !dbg !1146
  %13 = load i8*, i8** %7, align 8, !dbg !1147
  %14 = call noalias i8* (i8*, ...) @g_strconcat(i8* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i8* %13, i8* null), !dbg !1148
  store i8* %14, i8** %4, align 8, !dbg !1149
  br label %29, !dbg !1149

; <label>:15:                                     ; preds = %3
  %16 = load i8*, i8** %5, align 8, !dbg !1150
  %17 = load i8*, i8** %6, align 8, !dbg !1152
  %18 = call i32 @g_strcmp0(i8* %16, i8* %17), !dbg !1153
  %19 = icmp eq i32 %18, 0, !dbg !1154
  br i1 %19, label %20, label %24, !dbg !1155

; <label>:20:                                     ; preds = %15
  %21 = load i8*, i8** %5, align 8, !dbg !1156
  %22 = load i8*, i8** %7, align 8, !dbg !1157
  %23 = call noalias i8* (i8*, ...) @g_strconcat(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), i8* %22, i8* null), !dbg !1158
  store i8* %23, i8** %4, align 8, !dbg !1159
  br label %29, !dbg !1159

; <label>:24:                                     ; preds = %15
  %25 = load i8*, i8** %6, align 8, !dbg !1160
  %26 = load i8*, i8** %5, align 8, !dbg !1161
  %27 = load i8*, i8** %7, align 8, !dbg !1162
  %28 = call noalias i8* (i8*, ...) @g_strconcat(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), i8* %27, i8* null), !dbg !1163
  store i8* %28, i8** %4, align 8, !dbg !1164
  br label %29, !dbg !1164

; <label>:29:                                     ; preds = %24, %20, %11
  %30 = load i8*, i8** %4, align 8, !dbg !1165
  ret i8* %30, !dbg !1165
}

declare i32 @g_module_symbol(%struct._GModule*, i8*, i8**) #2

declare i32 @g_module_close(%struct._GModule*) #2

declare noalias i8* @g_strdup_printf(i8*, ...) #2

declare %struct.MODULE_FILE_REC* @module_register_full(i8*, i8*, i8*) #2

declare void @settings_check_module(i8*) #2

declare i8* @get_irssi_dir() #2

declare i8* @g_module_build_path(i8*, i8*) #2

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #5

declare %struct._GModule* @g_module_open(i8*, i32) #2

declare noalias i8* @g_strconcat(i8*, ...) #2

declare %struct._GString* @g_string_assign(%struct._GString*, i8*) #2

declare void @settings_remove_module(i8*) #2

declare void @commands_remove_module(i8*) #2

declare void @signals_remove_module(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!29, !30}
!llvm.ident = !{!31}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !16)
!1 = !DIFile(filename: "line51-modules-load.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !10}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 27, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "modules.h", directory: "/home/lichi/Desktop/irssi/task1")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "MODULE_ERROR_ALREADY_LOADED", value: 0)
!7 = !DIEnumerator(name: "MODULE_ERROR_LOAD", value: 1)
!8 = !DIEnumerator(name: "MODULE_ERROR_VERSION_MISMATCH", value: 2)
!9 = !DIEnumerator(name: "MODULE_ERROR_INVALID", value: 3)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !11, line: 42, size: 32, align: 32, elements: !12)
!11 = !DIFile(filename: "/usr/include/glib-2.0/gmodule.h", directory: "/home/lichi/Desktop/irssi/task1")
!12 = !{!13, !14, !15}
!13 = !DIEnumerator(name: "G_MODULE_BIND_LAZY", value: 1)
!14 = !DIEnumerator(name: "G_MODULE_BIND_LOCAL", value: 2)
!15 = !DIEnumerator(name: "G_MODULE_BIND_MASK", value: 3)
!16 = !{!17, !18, !22, !24, !25, !26, !28}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !20, line: 46, baseType: !21)
!20 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!21 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!24 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !20, line: 77, baseType: !17)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !20, line: 48, baseType: !27)
!27 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "GModuleFlags", file: !11, line: 47, baseType: !10)
!29 = !{i32 2, !"Dwarf Version", i32 4}
!30 = !{i32 2, !"Debug Info Version", i32 3}
!31 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!32 = distinct !DISubprogram(name: "module_load", scope: !33, file: !33, line: 327, type: !34, isLocal: false, isDefinition: true, scopeLine: 328, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !38)
!33 = !DIFile(filename: "modules-load.c", directory: "/home/lichi/Desktop/irssi/task1")
!34 = !DISubroutineType(types: !35)
!35 = !{!24, !22, !36}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!38 = !{}
!39 = !DILocalVariable(name: "path", arg: 1, scope: !32, file: !33, line: 327, type: !22)
!40 = !DIExpression()
!41 = !DILocation(line: 327, column: 29, scope: !32)
!42 = !DILocalVariable(name: "prefixes", arg: 2, scope: !32, file: !33, line: 327, type: !36)
!43 = !DILocation(line: 327, column: 42, scope: !32)
!44 = !DILocalVariable(name: "exppath", scope: !32, file: !33, line: 329, type: !37)
!45 = !DILocation(line: 329, column: 8, scope: !32)
!46 = !DILocalVariable(name: "name", scope: !32, file: !33, line: 329, type: !37)
!47 = !DILocation(line: 329, column: 18, scope: !32)
!48 = !DILocalVariable(name: "submodule", scope: !32, file: !33, line: 329, type: !37)
!49 = !DILocation(line: 329, column: 25, scope: !32)
!50 = !DILocalVariable(name: "rootmodule", scope: !32, file: !33, line: 329, type: !37)
!51 = !DILocation(line: 329, column: 37, scope: !32)
!52 = !DILocalVariable(name: "start", scope: !32, file: !33, line: 330, type: !24)
!53 = !DILocation(line: 330, column: 13, scope: !32)
!54 = !DILocalVariable(name: "end", scope: !32, file: !33, line: 330, type: !24)
!55 = !DILocation(line: 330, column: 20, scope: !32)
!56 = !DILocalVariable(name: "ret", scope: !32, file: !33, line: 330, type: !24)
!57 = !DILocation(line: 330, column: 25, scope: !32)
!58 = !DILocation(line: 332, column: 2, scope: !32)
!59 = distinct !{!59, !58}
!60 = !DILocation(line: 332, column: 10, scope: !61)
!61 = !DILexicalBlockFile(scope: !62, file: !33, discriminator: 1)
!62 = distinct !DILexicalBlock(scope: !63, file: !33, line: 332, column: 10)
!63 = distinct !DILexicalBlock(scope: !32, file: !33, line: 332, column: 4)
!64 = !DILocation(line: 332, column: 15, scope: !61)
!65 = !DILocation(line: 332, column: 5, scope: !66)
!66 = !DILexicalBlockFile(scope: !67, file: !33, discriminator: 2)
!67 = distinct !DILexicalBlock(scope: !62, file: !33, line: 332, column: 3)
!68 = !DILocation(line: 332, column: 14, scope: !69)
!69 = !DILexicalBlockFile(scope: !70, file: !33, discriminator: 3)
!70 = distinct !DILexicalBlock(scope: !62, file: !33, line: 332, column: 12)
!71 = !DILocation(line: 332, column: 99, scope: !69)
!72 = !DILocation(line: 332, column: 116, scope: !73)
!73 = !DILexicalBlockFile(scope: !63, file: !33, discriminator: 4)
!74 = !DILocation(line: 334, column: 25, scope: !32)
!75 = !DILocation(line: 334, column: 12, scope: !32)
!76 = !DILocation(line: 334, column: 10, scope: !32)
!77 = !DILocation(line: 336, column: 25, scope: !32)
!78 = !DILocation(line: 336, column: 9, scope: !32)
!79 = !DILocation(line: 336, column: 7, scope: !32)
!80 = !DILocation(line: 337, column: 31, scope: !32)
!81 = !DILocation(line: 337, column: 37, scope: !32)
!82 = !DILocation(line: 337, column: 15, scope: !32)
!83 = !DILocation(line: 337, column: 13, scope: !32)
!84 = !DILocation(line: 338, column: 29, scope: !32)
!85 = !DILocation(line: 338, column: 35, scope: !32)
!86 = !DILocation(line: 338, column: 14, scope: !32)
!87 = !DILocation(line: 338, column: 12, scope: !32)
!88 = !DILocation(line: 339, column: 9, scope: !32)
!89 = !DILocation(line: 339, column: 2, scope: !32)
!90 = !DILocation(line: 341, column: 25, scope: !32)
!91 = !DILocation(line: 341, column: 34, scope: !32)
!92 = !DILocation(line: 341, column: 46, scope: !32)
!93 = !DILocation(line: 342, column: 11, scope: !32)
!94 = !DILocation(line: 342, column: 18, scope: !32)
!95 = !DILocation(line: 342, column: 23, scope: !32)
!96 = !DILocation(line: 341, column: 8, scope: !32)
!97 = !DILocation(line: 341, column: 6, scope: !32)
!98 = !DILocation(line: 344, column: 9, scope: !32)
!99 = !DILocation(line: 344, column: 2, scope: !32)
!100 = !DILocation(line: 345, column: 9, scope: !32)
!101 = !DILocation(line: 345, column: 2, scope: !32)
!102 = !DILocation(line: 346, column: 16, scope: !32)
!103 = !DILocation(line: 346, column: 9, scope: !32)
!104 = !DILocation(line: 347, column: 16, scope: !32)
!105 = !DILocation(line: 347, column: 9, scope: !32)
!106 = !DILocation(line: 348, column: 1, scope: !32)
!107 = distinct !DISubprogram(name: "module_get_name", scope: !33, file: !33, line: 33, type: !108, isLocal: true, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !38)
!108 = !DISubroutineType(types: !109)
!109 = !{!37, !22, !110, !110}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!111 = !DILocalVariable(name: "path", arg: 1, scope: !107, file: !33, line: 33, type: !22)
!112 = !DILocation(line: 33, column: 42, scope: !107)
!113 = !DILocalVariable(name: "start", arg: 2, scope: !107, file: !33, line: 33, type: !110)
!114 = !DILocation(line: 33, column: 53, scope: !107)
!115 = !DILocalVariable(name: "end", arg: 3, scope: !107, file: !33, line: 33, type: !110)
!116 = !DILocation(line: 33, column: 65, scope: !107)
!117 = !DILocalVariable(name: "name", scope: !107, file: !33, line: 35, type: !22)
!118 = !DILocation(line: 35, column: 14, scope: !107)
!119 = !DILocalVariable(name: "module_name", scope: !107, file: !33, line: 36, type: !37)
!120 = !DILocation(line: 36, column: 8, scope: !107)
!121 = !DILocalVariable(name: "ptr", scope: !107, file: !33, line: 36, type: !37)
!122 = !DILocation(line: 36, column: 22, scope: !107)
!123 = !DILocation(line: 38, column: 14, scope: !107)
!124 = !DILocation(line: 39, column: 7, scope: !125)
!125 = distinct !DILexicalBlock(scope: !107, file: !33, line: 39, column: 6)
!126 = !DILocation(line: 39, column: 6, scope: !125)
!127 = !DILocation(line: 39, column: 12, scope: !125)
!128 = !DILocation(line: 39, column: 19, scope: !125)
!129 = !DILocation(line: 39, column: 41, scope: !130)
!130 = !DILexicalBlockFile(scope: !125, file: !33, discriminator: 1)
!131 = !DILocation(line: 39, column: 22, scope: !130)
!132 = !DILocation(line: 39, column: 6, scope: !130)
!133 = !DILocation(line: 40, column: 18, scope: !134)
!134 = distinct !DILexicalBlock(scope: !125, file: !33, line: 39, column: 48)
!135 = !DILocation(line: 40, column: 10, scope: !134)
!136 = !DILocation(line: 40, column: 8, scope: !134)
!137 = !DILocation(line: 41, column: 21, scope: !138)
!138 = distinct !DILexicalBlock(scope: !134, file: !33, line: 41, column: 21)
!139 = !DILocation(line: 41, column: 26, scope: !138)
!140 = !DILocation(line: 41, column: 21, scope: !134)
!141 = !DILocation(line: 41, column: 38, scope: !142)
!142 = !DILexicalBlockFile(scope: !138, file: !33, discriminator: 1)
!143 = !DILocation(line: 41, column: 34, scope: !142)
!144 = !DILocation(line: 42, column: 2, scope: !134)
!145 = !DILocation(line: 44, column: 6, scope: !146)
!146 = distinct !DILexicalBlock(scope: !107, file: !33, line: 44, column: 6)
!147 = !DILocation(line: 44, column: 11, scope: !146)
!148 = !DILocation(line: 44, column: 6, scope: !107)
!149 = !DILocation(line: 45, column: 10, scope: !146)
!150 = !DILocation(line: 45, column: 8, scope: !146)
!151 = !DILocation(line: 45, column: 3, scope: !146)
!152 = !DILocation(line: 47, column: 14, scope: !153)
!153 = distinct !DILexicalBlock(scope: !107, file: !33, line: 47, column: 6)
!154 = !DILocation(line: 47, column: 6, scope: !153)
!155 = !DILocation(line: 47, column: 30, scope: !153)
!156 = !DILocation(line: 47, column: 6, scope: !107)
!157 = !DILocation(line: 48, column: 8, scope: !153)
!158 = !DILocation(line: 48, column: 3, scope: !153)
!159 = !DILocation(line: 50, column: 25, scope: !107)
!160 = !DILocation(line: 50, column: 16, scope: !107)
!161 = !DILocation(line: 50, column: 14, scope: !107)
!162 = !DILocation(line: 51, column: 15, scope: !107)
!163 = !DILocation(line: 51, column: 8, scope: !107)
!164 = !DILocation(line: 51, column: 6, scope: !107)
!165 = !DILocation(line: 52, column: 6, scope: !166)
!166 = distinct !DILexicalBlock(scope: !107, file: !33, line: 52, column: 6)
!167 = !DILocation(line: 52, column: 10, scope: !166)
!168 = !DILocation(line: 52, column: 6, scope: !107)
!169 = !DILocation(line: 52, column: 19, scope: !170)
!170 = !DILexicalBlockFile(scope: !166, file: !33, discriminator: 1)
!171 = !DILocation(line: 52, column: 23, scope: !170)
!172 = !DILocation(line: 52, column: 18, scope: !170)
!173 = !DILocation(line: 54, column: 18, scope: !107)
!174 = !DILocation(line: 54, column: 23, scope: !107)
!175 = !DILocation(line: 54, column: 22, scope: !107)
!176 = !DILocation(line: 54, column: 11, scope: !107)
!177 = !DILocation(line: 54, column: 3, scope: !107)
!178 = !DILocation(line: 54, column: 9, scope: !107)
!179 = !DILocation(line: 55, column: 10, scope: !107)
!180 = !DILocation(line: 55, column: 9, scope: !107)
!181 = !DILocation(line: 55, column: 19, scope: !107)
!182 = !DILocation(line: 55, column: 23, scope: !107)
!183 = !DILocation(line: 55, column: 39, scope: !184)
!184 = !DILexicalBlockFile(scope: !107, file: !33, discriminator: 1)
!185 = !DILocation(line: 55, column: 32, scope: !184)
!186 = !DILocation(line: 55, column: 19, scope: !184)
!187 = !DILocation(line: 56, column: 12, scope: !107)
!188 = !DILocation(line: 56, column: 16, scope: !107)
!189 = !DILocation(line: 56, column: 15, scope: !107)
!190 = !DILocation(line: 56, column: 5, scope: !107)
!191 = !DILocation(line: 55, column: 19, scope: !192)
!192 = !DILexicalBlockFile(scope: !107, file: !33, discriminator: 2)
!193 = !DILocation(line: 55, column: 19, scope: !194)
!194 = !DILexicalBlockFile(scope: !107, file: !33, discriminator: 3)
!195 = !DILocation(line: 55, column: 16, scope: !194)
!196 = !DILocation(line: 55, column: 9, scope: !194)
!197 = !DILocation(line: 55, column: 3, scope: !194)
!198 = !DILocation(line: 55, column: 7, scope: !194)
!199 = !DILocation(line: 58, column: 9, scope: !107)
!200 = !DILocation(line: 58, column: 2, scope: !107)
!201 = distinct !DISubprogram(name: "module_get_root", scope: !33, file: !33, line: 62, type: !202, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !38)
!202 = !DISubroutineType(types: !203)
!203 = !{!37, !22, !36}
!204 = !DILocalVariable(name: "name", arg: 1, scope: !201, file: !33, line: 62, type: !22)
!205 = !DILocation(line: 62, column: 42, scope: !201)
!206 = !DILocalVariable(name: "prefixes", arg: 2, scope: !201, file: !33, line: 62, type: !36)
!207 = !DILocation(line: 62, column: 55, scope: !201)
!208 = !DILocalVariable(name: "len", scope: !201, file: !33, line: 64, type: !24)
!209 = !DILocation(line: 64, column: 6, scope: !201)
!210 = !DILocation(line: 67, column: 6, scope: !211)
!211 = distinct !DILexicalBlock(scope: !201, file: !33, line: 67, column: 6)
!212 = !DILocation(line: 67, column: 15, scope: !211)
!213 = !DILocation(line: 67, column: 6, scope: !201)
!214 = !DILocation(line: 68, column: 3, scope: !215)
!215 = distinct !DILexicalBlock(scope: !211, file: !33, line: 67, column: 23)
!216 = !DILocation(line: 68, column: 11, scope: !217)
!217 = !DILexicalBlockFile(scope: !215, file: !33, discriminator: 1)
!218 = !DILocation(line: 68, column: 10, scope: !217)
!219 = !DILocation(line: 68, column: 20, scope: !217)
!220 = !DILocation(line: 68, column: 3, scope: !217)
!221 = !DILocation(line: 69, column: 18, scope: !222)
!222 = distinct !DILexicalBlock(scope: !215, file: !33, line: 68, column: 28)
!223 = !DILocation(line: 69, column: 17, scope: !222)
!224 = !DILocation(line: 69, column: 10, scope: !222)
!225 = !DILocation(line: 69, column: 8, scope: !222)
!226 = !DILocation(line: 70, column: 16, scope: !227)
!227 = distinct !DILexicalBlock(scope: !222, file: !33, line: 70, column: 8)
!228 = !DILocation(line: 70, column: 23, scope: !227)
!229 = !DILocation(line: 70, column: 22, scope: !227)
!230 = !DILocation(line: 70, column: 33, scope: !227)
!231 = !DILocation(line: 70, column: 8, scope: !227)
!232 = !DILocation(line: 70, column: 38, scope: !227)
!233 = !DILocation(line: 70, column: 43, scope: !227)
!234 = !DILocation(line: 71, column: 13, scope: !227)
!235 = !DILocation(line: 71, column: 8, scope: !227)
!236 = !DILocation(line: 71, column: 18, scope: !227)
!237 = !DILocation(line: 70, column: 8, scope: !238)
!238 = !DILexicalBlockFile(scope: !222, file: !33, discriminator: 1)
!239 = !DILocation(line: 72, column: 13, scope: !240)
!240 = distinct !DILexicalBlock(scope: !227, file: !33, line: 71, column: 26)
!241 = !DILocation(line: 72, column: 16, scope: !240)
!242 = !DILocation(line: 72, column: 10, scope: !240)
!243 = !DILocation(line: 73, column: 5, scope: !240)
!244 = !DILocation(line: 75, column: 12, scope: !222)
!245 = !DILocation(line: 68, column: 3, scope: !246)
!246 = !DILexicalBlockFile(scope: !215, file: !33, discriminator: 2)
!247 = distinct !{!247, !214}
!248 = !DILocation(line: 77, column: 2, scope: !215)
!249 = !DILocation(line: 80, column: 22, scope: !201)
!250 = !DILocation(line: 80, column: 15, scope: !201)
!251 = !DILocation(line: 80, column: 13, scope: !201)
!252 = !DILocation(line: 81, column: 6, scope: !253)
!253 = distinct !DILexicalBlock(scope: !201, file: !33, line: 81, column: 6)
!254 = !DILocation(line: 81, column: 10, scope: !253)
!255 = !DILocation(line: 81, column: 14, scope: !253)
!256 = !DILocation(line: 81, column: 27, scope: !257)
!257 = !DILexicalBlockFile(scope: !253, file: !33, discriminator: 1)
!258 = !DILocation(line: 81, column: 32, scope: !257)
!259 = !DILocation(line: 81, column: 31, scope: !257)
!260 = !DILocation(line: 81, column: 35, scope: !257)
!261 = !DILocation(line: 81, column: 17, scope: !257)
!262 = !DILocation(line: 81, column: 48, scope: !257)
!263 = !DILocation(line: 81, column: 6, scope: !257)
!264 = !DILocation(line: 82, column: 20, scope: !253)
!265 = !DILocation(line: 82, column: 26, scope: !253)
!266 = !DILocation(line: 82, column: 29, scope: !253)
!267 = !DILocation(line: 82, column: 10, scope: !253)
!268 = !DILocation(line: 82, column: 3, scope: !253)
!269 = !DILocation(line: 84, column: 25, scope: !201)
!270 = !DILocation(line: 84, column: 16, scope: !201)
!271 = !DILocation(line: 84, column: 9, scope: !201)
!272 = !DILocation(line: 85, column: 1, scope: !201)
!273 = distinct !DISubprogram(name: "module_get_sub", scope: !33, file: !33, line: 88, type: !274, isLocal: true, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !38)
!274 = !DISubroutineType(types: !275)
!275 = !{!37, !22, !22}
!276 = !DILocalVariable(name: "name", arg: 1, scope: !273, file: !33, line: 88, type: !22)
!277 = !DILocation(line: 88, column: 41, scope: !273)
!278 = !DILocalVariable(name: "root", arg: 2, scope: !273, file: !33, line: 88, type: !22)
!279 = !DILocation(line: 88, column: 59, scope: !273)
!280 = !DILocalVariable(name: "rootlen", scope: !273, file: !33, line: 90, type: !24)
!281 = !DILocation(line: 90, column: 6, scope: !273)
!282 = !DILocalVariable(name: "namelen", scope: !273, file: !33, line: 90, type: !24)
!283 = !DILocation(line: 90, column: 15, scope: !273)
!284 = !DILocation(line: 92, column: 26, scope: !273)
!285 = !DILocation(line: 92, column: 19, scope: !273)
!286 = !DILocation(line: 92, column: 17, scope: !273)
!287 = !DILocation(line: 93, column: 19, scope: !273)
!288 = !DILocation(line: 93, column: 12, scope: !273)
!289 = !DILocation(line: 93, column: 10, scope: !273)
!290 = !DILocation(line: 94, column: 9, scope: !273)
!291 = distinct !{!291, !290}
!292 = !DILocation(line: 94, column: 17, scope: !293)
!293 = !DILexicalBlockFile(scope: !294, file: !33, discriminator: 1)
!294 = distinct !DILexicalBlock(scope: !295, file: !33, line: 94, column: 17)
!295 = distinct !DILexicalBlock(scope: !273, file: !33, line: 94, column: 11)
!296 = !DILocation(line: 94, column: 28, scope: !293)
!297 = !DILocation(line: 94, column: 25, scope: !293)
!298 = !DILocation(line: 94, column: 39, scope: !299)
!299 = !DILexicalBlockFile(scope: !300, file: !33, discriminator: 2)
!300 = distinct !DILexicalBlock(scope: !294, file: !33, line: 94, column: 37)
!301 = !DILocation(line: 94, column: 48, scope: !302)
!302 = !DILexicalBlockFile(scope: !303, file: !33, discriminator: 3)
!303 = distinct !DILexicalBlock(scope: !294, file: !33, line: 94, column: 46)
!304 = !DILocation(line: 94, column: 156, scope: !302)
!305 = !DILocation(line: 94, column: 147, scope: !306)
!306 = !DILexicalBlockFile(scope: !302, file: !33, discriminator: 5)
!307 = !DILocation(line: 94, column: 139, scope: !302)
!308 = !DILocation(line: 94, column: 167, scope: !309)
!309 = !DILexicalBlockFile(scope: !295, file: !33, discriminator: 4)
!310 = !DILocation(line: 96, column: 14, scope: !311)
!311 = distinct !DILexicalBlock(scope: !273, file: !33, line: 96, column: 6)
!312 = !DILocation(line: 96, column: 20, scope: !311)
!313 = !DILocation(line: 96, column: 26, scope: !311)
!314 = !DILocation(line: 96, column: 6, scope: !311)
!315 = !DILocation(line: 96, column: 35, scope: !311)
!316 = !DILocation(line: 96, column: 40, scope: !311)
!317 = !DILocation(line: 97, column: 16, scope: !311)
!318 = !DILocation(line: 97, column: 21, scope: !311)
!319 = !DILocation(line: 97, column: 20, scope: !311)
!320 = !DILocation(line: 97, column: 6, scope: !311)
!321 = !DILocation(line: 97, column: 39, scope: !311)
!322 = !DILocation(line: 96, column: 6, scope: !323)
!323 = !DILexicalBlockFile(scope: !273, file: !33, discriminator: 1)
!324 = !DILocation(line: 98, column: 24, scope: !311)
!325 = !DILocation(line: 98, column: 17, scope: !311)
!326 = !DILocation(line: 100, column: 6, scope: !327)
!327 = distinct !DILexicalBlock(scope: !273, file: !33, line: 100, column: 6)
!328 = !DILocation(line: 100, column: 16, scope: !327)
!329 = !DILocation(line: 100, column: 14, scope: !327)
!330 = !DILocation(line: 100, column: 24, scope: !327)
!331 = !DILocation(line: 100, column: 32, scope: !332)
!332 = !DILexicalBlockFile(scope: !327, file: !33, discriminator: 1)
!333 = !DILocation(line: 100, column: 40, scope: !332)
!334 = !DILocation(line: 100, column: 39, scope: !332)
!335 = !DILocation(line: 100, column: 47, scope: !332)
!336 = !DILocation(line: 100, column: 27, scope: !332)
!337 = !DILocation(line: 100, column: 51, scope: !332)
!338 = !DILocation(line: 100, column: 58, scope: !332)
!339 = !DILocation(line: 101, column: 16, scope: !327)
!340 = !DILocation(line: 101, column: 21, scope: !327)
!341 = !DILocation(line: 101, column: 20, scope: !327)
!342 = !DILocation(line: 101, column: 29, scope: !327)
!343 = !DILocation(line: 101, column: 28, scope: !327)
!344 = !DILocation(line: 101, column: 38, scope: !327)
!345 = !DILocation(line: 101, column: 6, scope: !327)
!346 = !DILocation(line: 101, column: 44, scope: !327)
!347 = !DILocation(line: 100, column: 6, scope: !348)
!348 = !DILexicalBlockFile(scope: !273, file: !33, discriminator: 2)
!349 = !DILocation(line: 102, column: 34, scope: !327)
!350 = !DILocation(line: 102, column: 40, scope: !327)
!351 = !DILocation(line: 102, column: 48, scope: !327)
!352 = !DILocation(line: 102, column: 47, scope: !327)
!353 = !DILocation(line: 102, column: 55, scope: !327)
!354 = !DILocation(line: 102, column: 24, scope: !327)
!355 = !DILocation(line: 102, column: 17, scope: !327)
!356 = !DILocation(line: 104, column: 25, scope: !273)
!357 = !DILocation(line: 104, column: 16, scope: !273)
!358 = !DILocation(line: 104, column: 9, scope: !273)
!359 = !DILocation(line: 105, column: 1, scope: !273)
!360 = distinct !DISubprogram(name: "module_load_full", scope: !33, file: !33, line: 293, type: !361, isLocal: true, isDefinition: true, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !38)
!361 = !DISubroutineType(types: !362)
!362 = !{!24, !22, !22, !22, !24, !24, !36}
!363 = !DILocalVariable(name: "path", arg: 1, scope: !360, file: !33, line: 293, type: !22)
!364 = !DILocation(line: 293, column: 41, scope: !360)
!365 = !DILocalVariable(name: "rootmodule", arg: 2, scope: !360, file: !33, line: 293, type: !22)
!366 = !DILocation(line: 293, column: 59, scope: !360)
!367 = !DILocalVariable(name: "submodule", arg: 3, scope: !360, file: !33, line: 294, type: !22)
!368 = !DILocation(line: 294, column: 20, scope: !360)
!369 = !DILocalVariable(name: "start", arg: 4, scope: !360, file: !33, line: 294, type: !24)
!370 = !DILocation(line: 294, column: 35, scope: !360)
!371 = !DILocalVariable(name: "end", arg: 5, scope: !360, file: !33, line: 294, type: !24)
!372 = !DILocation(line: 294, column: 46, scope: !360)
!373 = !DILocalVariable(name: "prefixes", arg: 6, scope: !360, file: !33, line: 295, type: !36)
!374 = !DILocation(line: 295, column: 15, scope: !360)
!375 = !DILocalVariable(name: "module", scope: !360, file: !33, line: 297, type: !376)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64, align: 64)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "MODULE_REC", file: !4, line: 34, baseType: !378)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_MODULE_REC", file: !4, line: 48, size: 128, align: 64, elements: !379)
!379 = !{!380, !381}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !378, file: !4, line: 49, baseType: !37, size: 64, align: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !378, file: !4, line: 50, baseType: !382, size: 64, align: 64, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64, align: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !384, line: 37, baseType: !385)
!384 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !384, line: 39, size: 128, align: 64, elements: !386)
!386 = !{!387, !388}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !385, file: !384, line: 41, baseType: !25, size: 64, align: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !385, file: !384, line: 42, baseType: !382, size: 64, align: 64, offset: 64)
!389 = !DILocation(line: 297, column: 14, scope: !360)
!390 = !DILocalVariable(name: "status", scope: !360, file: !33, line: 298, type: !24)
!391 = !DILocation(line: 298, column: 13, scope: !360)
!392 = !DILocalVariable(name: "try_prefixes", scope: !360, file: !33, line: 298, type: !24)
!393 = !DILocation(line: 298, column: 21, scope: !360)
!394 = !DILocation(line: 300, column: 7, scope: !395)
!395 = distinct !DILexicalBlock(scope: !360, file: !33, line: 300, column: 6)
!396 = !DILocation(line: 300, column: 6, scope: !360)
!397 = !DILocation(line: 301, column: 3, scope: !395)
!398 = !DILocation(line: 303, column: 23, scope: !360)
!399 = !DILocation(line: 303, column: 11, scope: !360)
!400 = !DILocation(line: 303, column: 9, scope: !360)
!401 = !DILocation(line: 304, column: 6, scope: !402)
!402 = distinct !DILexicalBlock(scope: !360, file: !33, line: 304, column: 6)
!403 = !DILocation(line: 304, column: 13, scope: !402)
!404 = !DILocation(line: 304, column: 20, scope: !402)
!405 = !DILocation(line: 304, column: 34, scope: !406)
!406 = !DILexicalBlockFile(scope: !402, file: !33, discriminator: 1)
!407 = !DILocation(line: 304, column: 45, scope: !406)
!408 = !DILocation(line: 304, column: 24, scope: !406)
!409 = !DILocation(line: 304, column: 57, scope: !406)
!410 = !DILocation(line: 304, column: 62, scope: !406)
!411 = !DILocation(line: 305, column: 28, scope: !402)
!412 = !DILocation(line: 305, column: 36, scope: !402)
!413 = !DILocation(line: 305, column: 11, scope: !402)
!414 = !DILocation(line: 305, column: 47, scope: !402)
!415 = !DILocation(line: 304, column: 6, scope: !416)
!416 = !DILexicalBlockFile(scope: !360, file: !33, discriminator: 2)
!417 = !DILocation(line: 307, column: 4, scope: !418)
!418 = distinct !DILexicalBlock(scope: !402, file: !33, line: 305, column: 56)
!419 = !DILocation(line: 307, column: 16, scope: !418)
!420 = !DILocation(line: 307, column: 3, scope: !418)
!421 = !DILocation(line: 309, column: 17, scope: !418)
!422 = !DILocation(line: 313, column: 27, scope: !360)
!423 = !DILocation(line: 313, column: 39, scope: !360)
!424 = !DILocation(line: 313, column: 17, scope: !360)
!425 = !DILocation(line: 313, column: 50, scope: !360)
!426 = !DILocation(line: 313, column: 15, scope: !360)
!427 = !DILocation(line: 314, column: 28, scope: !360)
!428 = !DILocation(line: 314, column: 34, scope: !360)
!429 = !DILocation(line: 314, column: 46, scope: !360)
!430 = !DILocation(line: 314, column: 57, scope: !360)
!431 = !DILocation(line: 314, column: 11, scope: !360)
!432 = !DILocation(line: 314, column: 9, scope: !360)
!433 = !DILocation(line: 315, column: 6, scope: !434)
!434 = distinct !DILexicalBlock(scope: !360, file: !33, line: 315, column: 6)
!435 = !DILocation(line: 315, column: 13, scope: !434)
!436 = !DILocation(line: 315, column: 19, scope: !434)
!437 = !DILocation(line: 315, column: 22, scope: !438)
!438 = !DILexicalBlockFile(scope: !434, file: !33, discriminator: 1)
!439 = !DILocation(line: 315, column: 6, scope: !438)
!440 = !DILocation(line: 318, column: 33, scope: !441)
!441 = distinct !DILexicalBlock(scope: !434, file: !33, line: 315, column: 36)
!442 = !DILocation(line: 318, column: 39, scope: !441)
!443 = !DILocation(line: 319, column: 12, scope: !441)
!444 = !DILocation(line: 319, column: 19, scope: !441)
!445 = !DILocation(line: 319, column: 24, scope: !441)
!446 = !DILocation(line: 318, column: 12, scope: !441)
!447 = !DILocation(line: 318, column: 10, scope: !441)
!448 = !DILocation(line: 320, column: 2, scope: !441)
!449 = !DILocation(line: 322, column: 9, scope: !360)
!450 = !DILocation(line: 322, column: 16, scope: !360)
!451 = !DILocation(line: 322, column: 2, scope: !360)
!452 = !DILocation(line: 323, column: 1, scope: !360)
!453 = distinct !DISubprogram(name: "module_load_sub", scope: !33, file: !33, line: 351, type: !454, isLocal: false, isDefinition: true, scopeLine: 352, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !38)
!454 = !DISubroutineType(types: !455)
!455 = !{!24, !22, !22, !36}
!456 = !DILocalVariable(name: "path", arg: 1, scope: !453, file: !33, line: 351, type: !22)
!457 = !DILocation(line: 351, column: 33, scope: !453)
!458 = !DILocalVariable(name: "submodule", arg: 2, scope: !453, file: !33, line: 351, type: !22)
!459 = !DILocation(line: 351, column: 51, scope: !453)
!460 = !DILocalVariable(name: "prefixes", arg: 3, scope: !453, file: !33, line: 351, type: !36)
!461 = !DILocation(line: 351, column: 69, scope: !453)
!462 = !DILocalVariable(name: "full_path", scope: !453, file: !33, line: 353, type: !463)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64, align: 64)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !465, line: 39, baseType: !466)
!465 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !465, line: 41, size: 192, align: 64, elements: !467)
!467 = !{!468, !469, !473}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !466, file: !465, line: 43, baseType: !18, size: 64, align: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !466, file: !465, line: 44, baseType: !470, size: 64, align: 64, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !471, line: 66, baseType: !472)
!471 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!472 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !466, file: !465, line: 45, baseType: !470, size: 64, align: 64, offset: 128)
!474 = !DILocation(line: 353, column: 18, scope: !453)
!475 = !DILocalVariable(name: "exppath", scope: !453, file: !33, line: 354, type: !37)
!476 = !DILocation(line: 354, column: 8, scope: !453)
!477 = !DILocalVariable(name: "name", scope: !453, file: !33, line: 354, type: !37)
!478 = !DILocation(line: 354, column: 18, scope: !453)
!479 = !DILocalVariable(name: "rootmodule", scope: !453, file: !33, line: 354, type: !37)
!480 = !DILocation(line: 354, column: 25, scope: !453)
!481 = !DILocalVariable(name: "start", scope: !453, file: !33, line: 355, type: !24)
!482 = !DILocation(line: 355, column: 13, scope: !453)
!483 = !DILocalVariable(name: "end", scope: !453, file: !33, line: 355, type: !24)
!484 = !DILocation(line: 355, column: 20, scope: !453)
!485 = !DILocalVariable(name: "ret", scope: !453, file: !33, line: 355, type: !24)
!486 = !DILocation(line: 355, column: 25, scope: !453)
!487 = !DILocation(line: 357, column: 2, scope: !453)
!488 = distinct !{!488, !487}
!489 = !DILocation(line: 357, column: 10, scope: !490)
!490 = !DILexicalBlockFile(scope: !491, file: !33, discriminator: 1)
!491 = distinct !DILexicalBlock(scope: !492, file: !33, line: 357, column: 10)
!492 = distinct !DILexicalBlock(scope: !453, file: !33, line: 357, column: 4)
!493 = !DILocation(line: 357, column: 15, scope: !490)
!494 = !DILocation(line: 357, column: 5, scope: !495)
!495 = !DILexicalBlockFile(scope: !496, file: !33, discriminator: 2)
!496 = distinct !DILexicalBlock(scope: !491, file: !33, line: 357, column: 3)
!497 = !DILocation(line: 357, column: 14, scope: !498)
!498 = !DILexicalBlockFile(scope: !499, file: !33, discriminator: 3)
!499 = distinct !DILexicalBlock(scope: !491, file: !33, line: 357, column: 12)
!500 = !DILocation(line: 357, column: 99, scope: !498)
!501 = !DILocation(line: 357, column: 116, scope: !502)
!502 = !DILexicalBlockFile(scope: !492, file: !33, discriminator: 4)
!503 = !DILocation(line: 358, column: 2, scope: !453)
!504 = distinct !{!504, !503}
!505 = !DILocation(line: 358, column: 10, scope: !506)
!506 = !DILexicalBlockFile(scope: !507, file: !33, discriminator: 1)
!507 = distinct !DILexicalBlock(scope: !508, file: !33, line: 358, column: 10)
!508 = distinct !DILexicalBlock(scope: !453, file: !33, line: 358, column: 4)
!509 = !DILocation(line: 358, column: 20, scope: !506)
!510 = !DILocation(line: 358, column: 5, scope: !511)
!511 = !DILexicalBlockFile(scope: !512, file: !33, discriminator: 2)
!512 = distinct !DILexicalBlock(scope: !507, file: !33, line: 358, column: 3)
!513 = !DILocation(line: 358, column: 14, scope: !514)
!514 = !DILexicalBlockFile(scope: !515, file: !33, discriminator: 3)
!515 = distinct !DILexicalBlock(scope: !507, file: !33, line: 358, column: 12)
!516 = !DILocation(line: 358, column: 104, scope: !514)
!517 = !DILocation(line: 358, column: 121, scope: !518)
!518 = !DILexicalBlockFile(scope: !508, file: !33, discriminator: 4)
!519 = !DILocation(line: 360, column: 32, scope: !453)
!520 = !DILocation(line: 360, column: 19, scope: !453)
!521 = !DILocation(line: 360, column: 17, scope: !453)
!522 = !DILocation(line: 362, column: 25, scope: !453)
!523 = !DILocation(line: 362, column: 9, scope: !453)
!524 = !DILocation(line: 362, column: 7, scope: !453)
!525 = !DILocation(line: 363, column: 31, scope: !453)
!526 = !DILocation(line: 363, column: 37, scope: !453)
!527 = !DILocation(line: 363, column: 15, scope: !453)
!528 = !DILocation(line: 363, column: 13, scope: !453)
!529 = !DILocation(line: 364, column: 9, scope: !453)
!530 = !DILocation(line: 364, column: 2, scope: !453)
!531 = !DILocation(line: 366, column: 34, scope: !453)
!532 = !DILocation(line: 366, column: 21, scope: !453)
!533 = !DILocation(line: 366, column: 19, scope: !453)
!534 = !DILocation(line: 367, column: 16, scope: !535)
!535 = distinct !DILexicalBlock(scope: !453, file: !33, line: 367, column: 6)
!536 = !DILocation(line: 367, column: 6, scope: !535)
!537 = !DILocation(line: 367, column: 35, scope: !535)
!538 = !DILocation(line: 367, column: 6, scope: !453)
!539 = !DILocation(line: 368, column: 19, scope: !535)
!540 = !DILocation(line: 368, column: 30, scope: !535)
!541 = !DILocation(line: 368, column: 3, scope: !535)
!542 = !DILocation(line: 370, column: 21, scope: !543)
!543 = distinct !DILexicalBlock(scope: !535, file: !33, line: 369, column: 7)
!544 = !DILocation(line: 370, column: 32, scope: !543)
!545 = !DILocation(line: 370, column: 3, scope: !543)
!546 = !DILocation(line: 371, column: 19, scope: !543)
!547 = !DILocation(line: 371, column: 30, scope: !543)
!548 = !DILocation(line: 371, column: 37, scope: !543)
!549 = !DILocation(line: 371, column: 3, scope: !543)
!550 = !DILocation(line: 374, column: 25, scope: !453)
!551 = !DILocation(line: 374, column: 36, scope: !453)
!552 = !DILocation(line: 374, column: 41, scope: !453)
!553 = !DILocation(line: 374, column: 53, scope: !453)
!554 = !DILocation(line: 375, column: 11, scope: !453)
!555 = !DILocation(line: 375, column: 18, scope: !453)
!556 = !DILocation(line: 374, column: 8, scope: !453)
!557 = !DILocation(line: 374, column: 6, scope: !453)
!558 = !DILocation(line: 377, column: 16, scope: !453)
!559 = !DILocation(line: 377, column: 2, scope: !453)
!560 = !DILocation(line: 378, column: 9, scope: !453)
!561 = !DILocation(line: 378, column: 2, scope: !453)
!562 = !DILocation(line: 379, column: 9, scope: !453)
!563 = !DILocation(line: 379, column: 2, scope: !453)
!564 = !DILocation(line: 380, column: 16, scope: !453)
!565 = !DILocation(line: 380, column: 9, scope: !453)
!566 = !DILocation(line: 381, column: 1, scope: !453)
!567 = distinct !DISubprogram(name: "module_file_unload", scope: !33, file: !33, line: 407, type: !568, isLocal: false, isDefinition: true, scopeLine: 408, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !38)
!568 = !DISubroutineType(types: !569)
!569 = !{null, !570}
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64, align: 64)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "MODULE_FILE_REC", file: !4, line: 46, baseType: !572)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 36, size: 384, align: 64, elements: !573)
!573 = !{!574, !575, !576, !577, !581, !585}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !572, file: !4, line: 37, baseType: !376, size: 64, align: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !572, file: !4, line: 38, baseType: !37, size: 64, align: 64, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "defined_module_name", scope: !572, file: !4, line: 39, baseType: !37, size: 64, align: 64, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "module_deinit", scope: !572, file: !4, line: 40, baseType: !578, size: 64, align: 64, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64, align: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{null}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "gmodule", scope: !572, file: !4, line: 43, baseType: !582, size: 64, align: 64, offset: 256)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64, align: 64)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "GModule", file: !11, line: 49, baseType: !584)
!584 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GModule", file: !11, line: 49, flags: DIFlagFwdDecl)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !572, file: !4, line: 45, baseType: !586, size: 1, align: 32, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!586 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!587 = !DILocalVariable(name: "file", arg: 1, scope: !567, file: !33, line: 407, type: !570)
!588 = !DILocation(line: 407, column: 42, scope: !567)
!589 = !DILocalVariable(name: "root", scope: !567, file: !33, line: 409, type: !376)
!590 = !DILocation(line: 409, column: 14, scope: !567)
!591 = !DILocation(line: 411, column: 16, scope: !567)
!592 = !DILocation(line: 411, column: 22, scope: !567)
!593 = !DILocation(line: 411, column: 14, scope: !567)
!594 = !DILocation(line: 412, column: 31, scope: !567)
!595 = !DILocation(line: 412, column: 37, scope: !567)
!596 = !DILocation(line: 412, column: 44, scope: !567)
!597 = !DILocation(line: 412, column: 16, scope: !567)
!598 = !DILocation(line: 412, column: 2, scope: !567)
!599 = !DILocation(line: 412, column: 8, scope: !567)
!600 = !DILocation(line: 412, column: 14, scope: !567)
!601 = !DILocation(line: 414, column: 13, scope: !602)
!602 = distinct !DILexicalBlock(scope: !567, file: !33, line: 414, column: 13)
!603 = !DILocation(line: 414, column: 19, scope: !602)
!604 = !DILocation(line: 414, column: 13, scope: !567)
!605 = !DILocation(line: 415, column: 37, scope: !602)
!606 = !DILocation(line: 415, column: 43, scope: !602)
!607 = !DILocation(line: 415, column: 49, scope: !602)
!608 = !DILocation(line: 415, column: 3, scope: !602)
!609 = !DILocation(line: 418, column: 6, scope: !610)
!610 = distinct !DILexicalBlock(scope: !567, file: !33, line: 418, column: 6)
!611 = !DILocation(line: 418, column: 12, scope: !610)
!612 = !DILocation(line: 418, column: 20, scope: !610)
!613 = !DILocation(line: 418, column: 6, scope: !567)
!614 = !DILocation(line: 419, column: 44, scope: !610)
!615 = !DILocation(line: 419, column: 17, scope: !610)
!616 = !DILocation(line: 422, column: 9, scope: !567)
!617 = !DILocation(line: 422, column: 15, scope: !567)
!618 = !DILocation(line: 422, column: 2, scope: !567)
!619 = !DILocation(line: 423, column: 9, scope: !567)
!620 = !DILocation(line: 423, column: 15, scope: !567)
!621 = !DILocation(line: 423, column: 2, scope: !567)
!622 = !DILocation(line: 424, column: 9, scope: !567)
!623 = !DILocation(line: 424, column: 2, scope: !567)
!624 = !DILocation(line: 426, column: 6, scope: !625)
!625 = distinct !DILexicalBlock(scope: !567, file: !33, line: 426, column: 6)
!626 = !DILocation(line: 426, column: 12, scope: !625)
!627 = !DILocation(line: 426, column: 18, scope: !625)
!628 = !DILocation(line: 426, column: 25, scope: !625)
!629 = !DILocation(line: 426, column: 41, scope: !630)
!630 = !DILexicalBlockFile(scope: !625, file: !33, discriminator: 1)
!631 = !DILocation(line: 426, column: 50, scope: !630)
!632 = !DILocation(line: 426, column: 28, scope: !630)
!633 = !DILocation(line: 426, column: 56, scope: !630)
!634 = !DILocation(line: 426, column: 6, scope: !630)
!635 = !DILocation(line: 427, column: 31, scope: !625)
!636 = !DILocation(line: 427, column: 17, scope: !625)
!637 = !DILocation(line: 428, column: 1, scope: !567)
!638 = distinct !DISubprogram(name: "module_file_deinit_gmodule", scope: !33, file: !33, line: 383, type: !568, isLocal: true, isDefinition: true, scopeLine: 384, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !38)
!639 = !DILocalVariable(name: "file", arg: 1, scope: !638, file: !33, line: 383, type: !570)
!640 = !DILocation(line: 383, column: 57, scope: !638)
!641 = !DILocation(line: 386, column: 13, scope: !642)
!642 = distinct !DILexicalBlock(scope: !638, file: !33, line: 386, column: 13)
!643 = !DILocation(line: 386, column: 19, scope: !642)
!644 = !DILocation(line: 386, column: 33, scope: !642)
!645 = !DILocation(line: 386, column: 13, scope: !638)
!646 = !DILocation(line: 387, column: 3, scope: !642)
!647 = !DILocation(line: 387, column: 9, scope: !642)
!648 = !DILocation(line: 389, column: 6, scope: !649)
!649 = distinct !DILexicalBlock(scope: !638, file: !33, line: 389, column: 6)
!650 = !DILocation(line: 389, column: 12, scope: !649)
!651 = !DILocation(line: 389, column: 32, scope: !649)
!652 = !DILocation(line: 389, column: 6, scope: !638)
!653 = !DILocation(line: 390, column: 26, scope: !654)
!654 = distinct !DILexicalBlock(scope: !649, file: !33, line: 389, column: 40)
!655 = !DILocation(line: 390, column: 32, scope: !654)
!656 = !DILocation(line: 390, column: 3, scope: !654)
!657 = !DILocation(line: 391, column: 26, scope: !654)
!658 = !DILocation(line: 391, column: 32, scope: !654)
!659 = !DILocation(line: 391, column: 3, scope: !654)
!660 = !DILocation(line: 392, column: 25, scope: !654)
!661 = !DILocation(line: 392, column: 31, scope: !654)
!662 = !DILocation(line: 392, column: 3, scope: !654)
!663 = !DILocation(line: 393, column: 2, scope: !654)
!664 = !DILocation(line: 395, column: 17, scope: !638)
!665 = !DILocation(line: 395, column: 23, scope: !638)
!666 = !DILocation(line: 395, column: 2, scope: !638)
!667 = !DILocation(line: 396, column: 1, scope: !638)
!668 = distinct !DISubprogram(name: "module_unload", scope: !33, file: !33, line: 430, type: !669, isLocal: false, isDefinition: true, scopeLine: 431, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !38)
!669 = !DISubroutineType(types: !670)
!670 = !{null, !376}
!671 = !DILocalVariable(name: "module", arg: 1, scope: !668, file: !33, line: 430, type: !376)
!672 = !DILocation(line: 430, column: 32, scope: !668)
!673 = !DILocation(line: 432, column: 2, scope: !668)
!674 = distinct !{!674, !673}
!675 = !DILocation(line: 432, column: 10, scope: !676)
!676 = !DILexicalBlockFile(scope: !677, file: !33, discriminator: 1)
!677 = distinct !DILexicalBlock(scope: !678, file: !33, line: 432, column: 10)
!678 = distinct !DILexicalBlock(scope: !668, file: !33, line: 432, column: 4)
!679 = !DILocation(line: 432, column: 17, scope: !676)
!680 = !DILocation(line: 432, column: 5, scope: !681)
!681 = !DILexicalBlockFile(scope: !682, file: !33, discriminator: 2)
!682 = distinct !DILexicalBlock(scope: !677, file: !33, line: 432, column: 3)
!683 = !DILocation(line: 432, column: 14, scope: !684)
!684 = !DILexicalBlockFile(scope: !685, file: !33, discriminator: 3)
!685 = distinct !DILexicalBlock(scope: !677, file: !33, line: 432, column: 12)
!686 = !DILocation(line: 432, column: 101, scope: !684)
!687 = !DILocation(line: 432, column: 112, scope: !688)
!688 = !DILexicalBlockFile(scope: !678, file: !33, discriminator: 4)
!689 = !DILocation(line: 434, column: 27, scope: !668)
!690 = !DILocation(line: 434, column: 36, scope: !668)
!691 = !DILocation(line: 434, column: 12, scope: !668)
!692 = !DILocation(line: 434, column: 10, scope: !668)
!693 = !DILocation(line: 436, column: 36, scope: !668)
!694 = !DILocation(line: 436, column: 2, scope: !668)
!695 = !DILocation(line: 438, column: 2, scope: !668)
!696 = !DILocation(line: 438, column: 9, scope: !697)
!697 = !DILexicalBlockFile(scope: !668, file: !33, discriminator: 1)
!698 = !DILocation(line: 438, column: 17, scope: !697)
!699 = !DILocation(line: 438, column: 23, scope: !697)
!700 = !DILocation(line: 438, column: 2, scope: !697)
!701 = !DILocation(line: 439, column: 36, scope: !668)
!702 = !DILocation(line: 439, column: 44, scope: !668)
!703 = !DILocation(line: 439, column: 51, scope: !668)
!704 = !DILocation(line: 439, column: 17, scope: !668)
!705 = !DILocation(line: 438, column: 2, scope: !706)
!706 = !DILexicalBlockFile(scope: !668, file: !33, discriminator: 2)
!707 = distinct !{!707, !695}
!708 = !DILocation(line: 441, column: 16, scope: !668)
!709 = !DILocation(line: 441, column: 24, scope: !668)
!710 = !DILocation(line: 441, column: 9, scope: !668)
!711 = !DILocation(line: 442, column: 9, scope: !668)
!712 = !DILocation(line: 442, column: 2, scope: !668)
!713 = !DILocation(line: 443, column: 1, scope: !668)
!714 = !DILocation(line: 443, column: 1, scope: !697)
!715 = distinct !DISubprogram(name: "module_load_name", scope: !33, file: !33, line: 158, type: !716, isLocal: true, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !38)
!716 = !DISubroutineType(types: !717)
!717 = !{!24, !22, !22, !22, !24}
!718 = !DILocalVariable(name: "path", arg: 1, scope: !715, file: !33, line: 158, type: !22)
!719 = !DILocation(line: 158, column: 41, scope: !715)
!720 = !DILocalVariable(name: "rootmodule", arg: 2, scope: !715, file: !33, line: 158, type: !22)
!721 = !DILocation(line: 158, column: 59, scope: !715)
!722 = !DILocalVariable(name: "submodule", arg: 3, scope: !715, file: !33, line: 159, type: !22)
!723 = !DILocation(line: 159, column: 20, scope: !715)
!724 = !DILocalVariable(name: "silent", arg: 4, scope: !715, file: !33, line: 159, type: !24)
!725 = !DILocation(line: 159, column: 35, scope: !715)
!726 = !DILocalVariable(name: "module_init", scope: !715, file: !33, line: 161, type: !578)
!727 = !DILocation(line: 161, column: 9, scope: !715)
!728 = !DILocalVariable(name: "module_deinit", scope: !715, file: !33, line: 162, type: !578)
!729 = !DILocation(line: 162, column: 9, scope: !715)
!730 = !DILocalVariable(name: "module_version", scope: !715, file: !33, line: 163, type: !731)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64, align: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{null, !110}
!734 = !DILocation(line: 163, column: 9, scope: !715)
!735 = !DILocalVariable(name: "gmodule", scope: !715, file: !33, line: 164, type: !582)
!736 = !DILocation(line: 164, column: 11, scope: !715)
!737 = !DILocalVariable(name: "module", scope: !715, file: !33, line: 165, type: !376)
!738 = !DILocation(line: 165, column: 21, scope: !715)
!739 = !DILocalVariable(name: "rec", scope: !715, file: !33, line: 166, type: !570)
!740 = !DILocation(line: 166, column: 19, scope: !715)
!741 = !DILocalVariable(name: "value_version", scope: !715, file: !33, line: 167, type: !25)
!742 = !DILocation(line: 167, column: 11, scope: !715)
!743 = !DILocalVariable(name: "value1", scope: !715, file: !33, line: 168, type: !25)
!744 = !DILocation(line: 168, column: 11, scope: !715)
!745 = !DILocalVariable(name: "value2", scope: !715, file: !33, line: 168, type: !25)
!746 = !DILocation(line: 168, column: 19, scope: !715)
!747 = !DILocalVariable(name: "versionfunc", scope: !715, file: !33, line: 169, type: !37)
!748 = !DILocation(line: 169, column: 8, scope: !715)
!749 = !DILocalVariable(name: "initfunc", scope: !715, file: !33, line: 169, type: !37)
!750 = !DILocation(line: 169, column: 22, scope: !715)
!751 = !DILocalVariable(name: "deinitfunc", scope: !715, file: !33, line: 169, type: !37)
!752 = !DILocation(line: 169, column: 33, scope: !715)
!753 = !DILocalVariable(name: "module_abi_version", scope: !715, file: !33, line: 170, type: !24)
!754 = !DILocation(line: 170, column: 6, scope: !715)
!755 = !DILocalVariable(name: "found", scope: !715, file: !33, line: 171, type: !24)
!756 = !DILocation(line: 171, column: 13, scope: !715)
!757 = !DILocation(line: 173, column: 24, scope: !715)
!758 = !DILocation(line: 173, column: 12, scope: !715)
!759 = !DILocation(line: 173, column: 10, scope: !715)
!760 = !DILocation(line: 174, column: 6, scope: !761)
!761 = distinct !DILexicalBlock(scope: !715, file: !33, line: 174, column: 6)
!762 = !DILocation(line: 174, column: 14, scope: !761)
!763 = !DILocation(line: 174, column: 6, scope: !715)
!764 = !DILocation(line: 175, column: 8, scope: !765)
!765 = distinct !DILexicalBlock(scope: !766, file: !33, line: 175, column: 7)
!766 = distinct !DILexicalBlock(scope: !761, file: !33, line: 174, column: 22)
!767 = !DILocation(line: 175, column: 15, scope: !765)
!768 = !DILocation(line: 175, column: 18, scope: !769)
!769 = !DILexicalBlockFile(scope: !765, file: !33, discriminator: 1)
!770 = !DILocation(line: 175, column: 7, scope: !769)
!771 = !DILocation(line: 176, column: 77, scope: !772)
!772 = distinct !DILexicalBlock(scope: !765, file: !33, line: 175, column: 25)
!773 = !DILocation(line: 176, column: 95, scope: !772)
!774 = !DILocation(line: 176, column: 107, scope: !772)
!775 = !DILocation(line: 176, column: 4, scope: !776)
!776 = !DILexicalBlockFile(scope: !772, file: !33, discriminator: 1)
!777 = !DILocation(line: 178, column: 3, scope: !772)
!778 = !DILocation(line: 179, column: 10, scope: !766)
!779 = !DILocation(line: 179, column: 3, scope: !766)
!780 = !DILocation(line: 183, column: 32, scope: !715)
!781 = !DILocation(line: 183, column: 44, scope: !715)
!782 = !DILocation(line: 183, column: 16, scope: !715)
!783 = !DILocation(line: 183, column: 14, scope: !715)
!784 = !DILocation(line: 184, column: 23, scope: !785)
!785 = distinct !DILexicalBlock(scope: !715, file: !33, line: 184, column: 6)
!786 = !DILocation(line: 184, column: 32, scope: !785)
!787 = !DILocation(line: 184, column: 7, scope: !785)
!788 = !DILocation(line: 184, column: 6, scope: !715)
!789 = !DILocation(line: 185, column: 10, scope: !790)
!790 = distinct !DILexicalBlock(scope: !785, file: !33, line: 184, column: 62)
!791 = !DILocation(line: 185, column: 3, scope: !790)
!792 = !DILocation(line: 186, column: 93, scope: !790)
!793 = !DILocation(line: 186, column: 105, scope: !790)
!794 = !DILocation(line: 186, column: 3, scope: !790)
!795 = !DILocation(line: 188, column: 18, scope: !790)
!796 = !DILocation(line: 188, column: 3, scope: !790)
!797 = !DILocation(line: 189, column: 3, scope: !790)
!798 = !DILocation(line: 191, column: 9, scope: !715)
!799 = !DILocation(line: 191, column: 2, scope: !715)
!800 = !DILocation(line: 192, column: 19, scope: !715)
!801 = !DILocation(line: 192, column: 17, scope: !715)
!802 = !DILocation(line: 193, column: 2, scope: !715)
!803 = !DILocation(line: 194, column: 6, scope: !804)
!804 = distinct !DILexicalBlock(scope: !715, file: !33, line: 194, column: 6)
!805 = !DILocation(line: 194, column: 25, scope: !804)
!806 = !DILocation(line: 194, column: 6, scope: !715)
!807 = !DILocalVariable(name: "module_abi_versionstr", scope: !808, file: !33, line: 195, type: !37)
!808 = distinct !DILexicalBlock(scope: !804, file: !33, line: 194, column: 32)
!809 = !DILocation(line: 195, column: 9, scope: !808)
!810 = !DILocation(line: 195, column: 55, scope: !808)
!811 = !DILocation(line: 195, column: 33, scope: !808)
!812 = !DILocation(line: 196, column: 88, scope: !808)
!813 = !DILocation(line: 196, column: 111, scope: !808)
!814 = !DILocation(line: 196, column: 123, scope: !808)
!815 = !DILocation(line: 196, column: 3, scope: !808)
!816 = !DILocation(line: 198, column: 10, scope: !808)
!817 = !DILocation(line: 198, column: 3, scope: !808)
!818 = !DILocation(line: 199, column: 18, scope: !808)
!819 = !DILocation(line: 199, column: 3, scope: !808)
!820 = !DILocation(line: 200, column: 3, scope: !808)
!821 = !DILocation(line: 204, column: 29, scope: !715)
!822 = !DILocation(line: 204, column: 41, scope: !715)
!823 = !DILocation(line: 204, column: 13, scope: !715)
!824 = !DILocation(line: 204, column: 11, scope: !715)
!825 = !DILocation(line: 205, column: 31, scope: !715)
!826 = !DILocation(line: 205, column: 43, scope: !715)
!827 = !DILocation(line: 205, column: 15, scope: !715)
!828 = !DILocation(line: 205, column: 13, scope: !715)
!829 = !DILocation(line: 206, column: 26, scope: !715)
!830 = !DILocation(line: 206, column: 35, scope: !715)
!831 = !DILocation(line: 206, column: 10, scope: !715)
!832 = !DILocation(line: 206, column: 54, scope: !715)
!833 = !DILocation(line: 207, column: 19, scope: !715)
!834 = !DILocation(line: 207, column: 28, scope: !715)
!835 = !DILocation(line: 207, column: 3, scope: !715)
!836 = !DILocation(line: 206, column: 54, scope: !837)
!837 = !DILexicalBlockFile(scope: !715, file: !33, discriminator: 1)
!838 = !DILocation(line: 206, column: 54, scope: !839)
!839 = !DILexicalBlockFile(scope: !715, file: !33, discriminator: 2)
!840 = !DILocation(line: 206, column: 8, scope: !839)
!841 = !DILocation(line: 208, column: 9, scope: !715)
!842 = !DILocation(line: 208, column: 2, scope: !715)
!843 = !DILocation(line: 209, column: 9, scope: !715)
!844 = !DILocation(line: 209, column: 2, scope: !715)
!845 = !DILocation(line: 211, column: 7, scope: !846)
!846 = distinct !DILexicalBlock(scope: !715, file: !33, line: 211, column: 6)
!847 = !DILocation(line: 211, column: 6, scope: !715)
!848 = !DILocation(line: 212, column: 4, scope: !849)
!849 = distinct !DILexicalBlock(scope: !846, file: !33, line: 211, column: 14)
!850 = !DILocation(line: 212, column: 16, scope: !849)
!851 = !DILocation(line: 212, column: 3, scope: !849)
!852 = !DILocation(line: 214, column: 18, scope: !849)
!853 = !DILocation(line: 214, column: 3, scope: !849)
!854 = !DILocation(line: 215, column: 3, scope: !849)
!855 = !DILocation(line: 218, column: 16, scope: !715)
!856 = !DILocation(line: 218, column: 14, scope: !715)
!857 = !DILocation(line: 219, column: 18, scope: !715)
!858 = !DILocation(line: 219, column: 16, scope: !715)
!859 = !DILocation(line: 223, column: 2, scope: !715)
!860 = !DILocation(line: 225, column: 23, scope: !715)
!861 = !DILocation(line: 225, column: 11, scope: !715)
!862 = !DILocation(line: 225, column: 9, scope: !715)
!863 = !DILocation(line: 226, column: 8, scope: !715)
!864 = !DILocation(line: 226, column: 15, scope: !715)
!865 = !DILocation(line: 226, column: 8, scope: !837)
!866 = !DILocation(line: 227, column: 27, scope: !715)
!867 = !DILocation(line: 227, column: 39, scope: !715)
!868 = !DILocation(line: 227, column: 17, scope: !715)
!869 = !DILocation(line: 227, column: 50, scope: !715)
!870 = !DILocation(line: 228, column: 20, scope: !715)
!871 = !DILocation(line: 228, column: 3, scope: !715)
!872 = !DILocation(line: 227, column: 17, scope: !837)
!873 = !DILocation(line: 229, column: 20, scope: !715)
!874 = !DILocation(line: 229, column: 28, scope: !715)
!875 = !DILocation(line: 229, column: 3, scope: !715)
!876 = !DILocation(line: 227, column: 17, scope: !839)
!877 = !DILocation(line: 227, column: 17, scope: !878)
!878 = !DILexicalBlockFile(scope: !715, file: !33, discriminator: 3)
!879 = !DILocation(line: 226, column: 8, scope: !839)
!880 = !DILocation(line: 226, column: 8, scope: !878)
!881 = !DILocation(line: 226, column: 6, scope: !878)
!882 = !DILocation(line: 230, column: 6, scope: !883)
!883 = distinct !DILexicalBlock(scope: !715, file: !33, line: 230, column: 6)
!884 = !DILocation(line: 230, column: 10, scope: !883)
!885 = !DILocation(line: 230, column: 6, scope: !715)
!886 = !DILocation(line: 231, column: 30, scope: !887)
!887 = distinct !DILexicalBlock(scope: !883, file: !33, line: 230, column: 18)
!888 = !DILocation(line: 231, column: 42, scope: !887)
!889 = !DILocation(line: 231, column: 9, scope: !887)
!890 = !DILocation(line: 231, column: 7, scope: !887)
!891 = !DILocation(line: 232, column: 18, scope: !887)
!892 = !DILocation(line: 232, column: 3, scope: !887)
!893 = !DILocation(line: 232, column: 8, scope: !887)
!894 = !DILocation(line: 232, column: 16, scope: !887)
!895 = !DILocation(line: 233, column: 22, scope: !887)
!896 = !DILocation(line: 233, column: 3, scope: !887)
!897 = !DILocation(line: 235, column: 4, scope: !887)
!898 = !DILocation(line: 235, column: 16, scope: !887)
!899 = !DILocation(line: 235, column: 3, scope: !887)
!900 = !DILocation(line: 237, column: 17, scope: !887)
!901 = !DILocation(line: 240, column: 30, scope: !715)
!902 = !DILocation(line: 240, column: 9, scope: !715)
!903 = !DILocation(line: 240, column: 14, scope: !715)
!904 = !DILocation(line: 240, column: 28, scope: !715)
!905 = !DILocation(line: 241, column: 17, scope: !715)
!906 = !DILocation(line: 241, column: 2, scope: !715)
!907 = !DILocation(line: 241, column: 7, scope: !715)
!908 = !DILocation(line: 241, column: 15, scope: !715)
!909 = !DILocation(line: 242, column: 9, scope: !715)
!910 = !DILocation(line: 242, column: 14, scope: !715)
!911 = !DILocation(line: 242, column: 26, scope: !715)
!912 = !DILocation(line: 244, column: 24, scope: !715)
!913 = !DILocation(line: 244, column: 29, scope: !715)
!914 = !DILocation(line: 244, column: 2, scope: !715)
!915 = !DILocation(line: 246, column: 34, scope: !715)
!916 = !DILocation(line: 246, column: 39, scope: !715)
!917 = !DILocation(line: 246, column: 45, scope: !715)
!918 = !DILocation(line: 246, column: 2, scope: !715)
!919 = !DILocation(line: 247, column: 2, scope: !715)
!920 = !DILocation(line: 248, column: 1, scope: !715)
!921 = distinct !DISubprogram(name: "module_load_prefixes", scope: !33, file: !33, line: 250, type: !922, isLocal: true, isDefinition: true, scopeLine: 252, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !38)
!922 = !DISubroutineType(types: !923)
!923 = !{!24, !22, !22, !24, !24, !36}
!924 = !DILocalVariable(name: "path", arg: 1, scope: !921, file: !33, line: 250, type: !22)
!925 = !DILocation(line: 250, column: 45, scope: !921)
!926 = !DILocalVariable(name: "module", arg: 2, scope: !921, file: !33, line: 250, type: !22)
!927 = !DILocation(line: 250, column: 63, scope: !921)
!928 = !DILocalVariable(name: "start", arg: 3, scope: !921, file: !33, line: 251, type: !24)
!929 = !DILocation(line: 251, column: 9, scope: !921)
!930 = !DILocalVariable(name: "end", arg: 4, scope: !921, file: !33, line: 251, type: !24)
!931 = !DILocation(line: 251, column: 20, scope: !921)
!932 = !DILocalVariable(name: "prefixes", arg: 5, scope: !921, file: !33, line: 251, type: !36)
!933 = !DILocation(line: 251, column: 32, scope: !921)
!934 = !DILocalVariable(name: "realpath", scope: !921, file: !33, line: 253, type: !463)
!935 = !DILocation(line: 253, column: 18, scope: !921)
!936 = !DILocalVariable(name: "status", scope: !921, file: !33, line: 254, type: !24)
!937 = !DILocation(line: 254, column: 13, scope: !921)
!938 = !DILocalVariable(name: "ok", scope: !921, file: !33, line: 254, type: !24)
!939 = !DILocation(line: 254, column: 21, scope: !921)
!940 = !DILocation(line: 257, column: 26, scope: !921)
!941 = !DILocation(line: 257, column: 13, scope: !921)
!942 = !DILocation(line: 257, column: 11, scope: !921)
!943 = !DILocation(line: 258, column: 18, scope: !921)
!944 = !DILocation(line: 258, column: 28, scope: !921)
!945 = !DILocation(line: 258, column: 2, scope: !921)
!946 = !DILocation(line: 262, column: 28, scope: !921)
!947 = !DILocation(line: 262, column: 38, scope: !921)
!948 = !DILocation(line: 262, column: 43, scope: !921)
!949 = !DILocation(line: 262, column: 11, scope: !921)
!950 = !DILocation(line: 262, column: 9, scope: !921)
!951 = !DILocation(line: 263, column: 14, scope: !921)
!952 = !DILocation(line: 263, column: 21, scope: !921)
!953 = !DILocation(line: 263, column: 12, scope: !921)
!954 = !DILocation(line: 265, column: 6, scope: !955)
!955 = distinct !DILexicalBlock(scope: !921, file: !33, line: 265, column: 6)
!956 = !DILocation(line: 265, column: 15, scope: !955)
!957 = !DILocation(line: 265, column: 6, scope: !921)
!958 = !DILocation(line: 268, column: 3, scope: !959)
!959 = distinct !DILexicalBlock(scope: !955, file: !33, line: 265, column: 23)
!960 = !DILocation(line: 268, column: 11, scope: !961)
!961 = !DILexicalBlockFile(scope: !959, file: !33, discriminator: 1)
!962 = !DILocation(line: 268, column: 10, scope: !961)
!963 = !DILocation(line: 268, column: 20, scope: !961)
!964 = !DILocation(line: 268, column: 3, scope: !961)
!965 = !DILocation(line: 269, column: 41, scope: !966)
!966 = distinct !DILexicalBlock(scope: !959, file: !33, line: 268, column: 28)
!967 = !DILocation(line: 269, column: 51, scope: !966)
!968 = !DILocation(line: 269, column: 25, scope: !966)
!969 = !DILocation(line: 270, column: 22, scope: !966)
!970 = !DILocation(line: 270, column: 32, scope: !966)
!971 = !DILocation(line: 270, column: 4, scope: !966)
!972 = !DILocation(line: 271, column: 20, scope: !966)
!973 = !DILocation(line: 271, column: 30, scope: !966)
!974 = !DILocation(line: 271, column: 38, scope: !966)
!975 = !DILocation(line: 271, column: 37, scope: !966)
!976 = !DILocation(line: 271, column: 4, scope: !966)
!977 = !DILocation(line: 273, column: 30, scope: !966)
!978 = !DILocation(line: 273, column: 40, scope: !966)
!979 = !DILocation(line: 273, column: 45, scope: !966)
!980 = !DILocation(line: 274, column: 10, scope: !966)
!981 = !DILocation(line: 274, column: 9, scope: !966)
!982 = !DILocation(line: 273, column: 13, scope: !966)
!983 = !DILocation(line: 273, column: 11, scope: !966)
!984 = !DILocation(line: 275, column: 8, scope: !985)
!985 = distinct !DILexicalBlock(scope: !966, file: !33, line: 275, column: 8)
!986 = !DILocation(line: 275, column: 15, scope: !985)
!987 = !DILocation(line: 275, column: 8, scope: !966)
!988 = !DILocation(line: 276, column: 8, scope: !985)
!989 = !DILocation(line: 276, column: 5, scope: !985)
!990 = !DILocation(line: 278, column: 33, scope: !966)
!991 = !DILocation(line: 268, column: 3, scope: !992)
!992 = !DILexicalBlockFile(scope: !959, file: !33, discriminator: 2)
!993 = distinct !{!993, !958}
!994 = !DILocation(line: 280, column: 2, scope: !959)
!995 = !DILocation(line: 282, column: 7, scope: !996)
!996 = distinct !DILexicalBlock(scope: !921, file: !33, line: 282, column: 6)
!997 = !DILocation(line: 282, column: 6, scope: !921)
!998 = !DILocation(line: 284, column: 19, scope: !999)
!999 = distinct !DILexicalBlock(scope: !996, file: !33, line: 282, column: 11)
!1000 = !DILocation(line: 284, column: 29, scope: !999)
!1001 = !DILocation(line: 284, column: 3, scope: !999)
!1002 = !DILocation(line: 285, column: 19, scope: !999)
!1003 = !DILocation(line: 285, column: 29, scope: !999)
!1004 = !DILocation(line: 285, column: 3, scope: !999)
!1005 = !DILocation(line: 286, column: 20, scope: !999)
!1006 = !DILocation(line: 286, column: 30, scope: !999)
!1007 = !DILocation(line: 286, column: 35, scope: !999)
!1008 = !DILocation(line: 286, column: 3, scope: !999)
!1009 = !DILocation(line: 287, column: 2, scope: !999)
!1010 = !DILocation(line: 289, column: 16, scope: !921)
!1011 = !DILocation(line: 289, column: 2, scope: !921)
!1012 = !DILocation(line: 290, column: 16, scope: !921)
!1013 = !DILocation(line: 290, column: 9, scope: !921)
!1014 = distinct !DISubprogram(name: "module_open", scope: !33, file: !33, line: 107, type: !1015, isLocal: true, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !38)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!582, !22, !110}
!1017 = !DILocalVariable(name: "name", arg: 1, scope: !1014, file: !33, line: 107, type: !22)
!1018 = !DILocation(line: 107, column: 41, scope: !1014)
!1019 = !DILocalVariable(name: "found", arg: 2, scope: !1014, file: !33, line: 107, type: !110)
!1020 = !DILocation(line: 107, column: 52, scope: !1014)
!1021 = !DILocalVariable(name: "statbuf", scope: !1014, file: !33, line: 109, type: !1022)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1023, line: 46, size: 1152, align: 64, elements: !1024)
!1023 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/irssi/task1")
!1024 = !{!1025, !1028, !1030, !1032, !1034, !1036, !1038, !1039, !1040, !1042, !1044, !1046, !1054, !1055, !1056}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1022, file: !1023, line: 48, baseType: !1026, size: 64, align: 64)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1027, line: 124, baseType: !472)
!1027 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1022, file: !1023, line: 53, baseType: !1029, size: 64, align: 64, offset: 64)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1027, line: 127, baseType: !472)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1022, file: !1023, line: 61, baseType: !1031, size: 64, align: 64, offset: 128)
!1031 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1027, line: 130, baseType: !472)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1022, file: !1023, line: 62, baseType: !1033, size: 32, align: 32, offset: 192)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1027, line: 129, baseType: !586)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1022, file: !1023, line: 64, baseType: !1035, size: 32, align: 32, offset: 224)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1027, line: 125, baseType: !586)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1022, file: !1023, line: 65, baseType: !1037, size: 32, align: 32, offset: 256)
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1027, line: 126, baseType: !586)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1022, file: !1023, line: 67, baseType: !24, size: 32, align: 32, offset: 288)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1022, file: !1023, line: 69, baseType: !1026, size: 64, align: 64, offset: 320)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1022, file: !1023, line: 74, baseType: !1041, size: 64, align: 64, offset: 384)
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1027, line: 131, baseType: !27)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1022, file: !1023, line: 78, baseType: !1043, size: 64, align: 64, offset: 448)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1027, line: 153, baseType: !27)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1022, file: !1023, line: 80, baseType: !1045, size: 64, align: 64, offset: 512)
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1027, line: 158, baseType: !27)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1022, file: !1023, line: 91, baseType: !1047, size: 128, align: 64, offset: 576)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1048, line: 120, size: 128, align: 64, elements: !1049)
!1048 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!1049 = !{!1050, !1052}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1047, file: !1048, line: 122, baseType: !1051, size: 64, align: 64)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1027, line: 139, baseType: !27)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1047, file: !1048, line: 123, baseType: !1053, size: 64, align: 64, offset: 64)
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1027, line: 175, baseType: !27)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1022, file: !1023, line: 92, baseType: !1047, size: 128, align: 64, offset: 704)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1022, file: !1023, line: 93, baseType: !1047, size: 128, align: 64, offset: 832)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1022, file: !1023, line: 106, baseType: !1057, size: 192, align: 64, offset: 960)
!1057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1053, size: 192, align: 64, elements: !1058)
!1058 = !{!1059}
!1059 = !DISubrange(count: 3)
!1060 = !DILocation(line: 109, column: 14, scope: !1014)
!1061 = !DILocalVariable(name: "module", scope: !1014, file: !33, line: 110, type: !582)
!1062 = !DILocation(line: 110, column: 11, scope: !1014)
!1063 = !DILocalVariable(name: "path", scope: !1014, file: !33, line: 111, type: !37)
!1064 = !DILocation(line: 111, column: 8, scope: !1014)
!1065 = !DILocalVariable(name: "str", scope: !1014, file: !33, line: 111, type: !37)
!1066 = !DILocation(line: 111, column: 15, scope: !1014)
!1067 = !DILocation(line: 113, column: 25, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1014, file: !33, line: 113, column: 6)
!1069 = !DILocation(line: 113, column: 6, scope: !1068)
!1070 = !DILocation(line: 113, column: 31, scope: !1068)
!1071 = !DILocation(line: 113, column: 35, scope: !1072)
!1072 = !DILexicalBlockFile(scope: !1068, file: !33, discriminator: 1)
!1073 = !DILocation(line: 113, column: 34, scope: !1072)
!1074 = !DILocation(line: 113, column: 40, scope: !1072)
!1075 = !DILocation(line: 113, column: 47, scope: !1072)
!1076 = !DILocation(line: 114, column: 8, scope: !1068)
!1077 = !DILocation(line: 114, column: 7, scope: !1068)
!1078 = !DILocation(line: 114, column: 13, scope: !1068)
!1079 = !DILocation(line: 114, column: 20, scope: !1068)
!1080 = !DILocation(line: 114, column: 23, scope: !1072)
!1081 = !DILocation(line: 114, column: 31, scope: !1072)
!1082 = !DILocation(line: 113, column: 6, scope: !1083)
!1083 = !DILexicalBlockFile(scope: !1014, file: !33, discriminator: 2)
!1084 = !DILocation(line: 115, column: 19, scope: !1068)
!1085 = !DILocation(line: 115, column: 10, scope: !1068)
!1086 = !DILocation(line: 115, column: 8, scope: !1068)
!1087 = !DILocation(line: 115, column: 3, scope: !1068)
!1088 = !DILocation(line: 118, column: 39, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1068, file: !33, line: 116, column: 7)
!1090 = !DILocation(line: 118, column: 9, scope: !1091)
!1091 = !DILexicalBlockFile(scope: !1089, file: !33, discriminator: 1)
!1092 = !DILocation(line: 118, column: 7, scope: !1089)
!1093 = !DILocation(line: 119, column: 30, scope: !1089)
!1094 = !DILocation(line: 119, column: 35, scope: !1089)
!1095 = !DILocation(line: 119, column: 10, scope: !1089)
!1096 = !DILocation(line: 119, column: 8, scope: !1089)
!1097 = !DILocation(line: 120, column: 10, scope: !1089)
!1098 = !DILocation(line: 120, column: 3, scope: !1089)
!1099 = !DILocation(line: 122, column: 12, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1089, file: !33, line: 122, column: 7)
!1101 = !DILocation(line: 122, column: 7, scope: !1100)
!1102 = !DILocation(line: 122, column: 28, scope: !1100)
!1103 = !DILocation(line: 122, column: 7, scope: !1089)
!1104 = !DILocation(line: 123, column: 27, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1100, file: !33, line: 122, column: 34)
!1106 = !DILocation(line: 123, column: 13, scope: !1105)
!1107 = !DILocation(line: 123, column: 11, scope: !1105)
!1108 = !DILocation(line: 124, column: 11, scope: !1105)
!1109 = !DILocation(line: 124, column: 4, scope: !1105)
!1110 = !DILocation(line: 125, column: 5, scope: !1105)
!1111 = !DILocation(line: 125, column: 11, scope: !1105)
!1112 = !DILocation(line: 126, column: 11, scope: !1105)
!1113 = !DILocation(line: 126, column: 4, scope: !1105)
!1114 = !DILocation(line: 130, column: 10, scope: !1089)
!1115 = !DILocation(line: 130, column: 3, scope: !1089)
!1116 = !DILocation(line: 131, column: 62, scope: !1089)
!1117 = !DILocation(line: 131, column: 10, scope: !1089)
!1118 = !DILocation(line: 131, column: 8, scope: !1089)
!1119 = !DILocation(line: 134, column: 16, scope: !1014)
!1120 = !DILocation(line: 134, column: 11, scope: !1014)
!1121 = !DILocation(line: 134, column: 32, scope: !1014)
!1122 = !DILocation(line: 134, column: 3, scope: !1014)
!1123 = !DILocation(line: 134, column: 9, scope: !1014)
!1124 = !DILocation(line: 135, column: 25, scope: !1014)
!1125 = !DILocation(line: 135, column: 11, scope: !1014)
!1126 = !DILocation(line: 135, column: 9, scope: !1014)
!1127 = !DILocation(line: 136, column: 9, scope: !1014)
!1128 = !DILocation(line: 136, column: 2, scope: !1014)
!1129 = !DILocation(line: 137, column: 9, scope: !1014)
!1130 = !DILocation(line: 137, column: 2, scope: !1014)
!1131 = !DILocation(line: 138, column: 1, scope: !1014)
!1132 = distinct !DISubprogram(name: "module_get_func", scope: !33, file: !33, line: 140, type: !1133, isLocal: true, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !38)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!37, !22, !22, !22}
!1135 = !DILocalVariable(name: "rootmodule", arg: 1, scope: !1132, file: !33, line: 140, type: !22)
!1136 = !DILocation(line: 140, column: 42, scope: !1132)
!1137 = !DILocalVariable(name: "submodule", arg: 2, scope: !1132, file: !33, line: 140, type: !22)
!1138 = !DILocation(line: 140, column: 66, scope: !1132)
!1139 = !DILocalVariable(name: "function", arg: 3, scope: !1132, file: !33, line: 141, type: !22)
!1140 = !DILocation(line: 141, column: 21, scope: !1132)
!1141 = !DILocation(line: 143, column: 16, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1132, file: !33, line: 143, column: 6)
!1143 = !DILocation(line: 143, column: 6, scope: !1142)
!1144 = !DILocation(line: 143, column: 35, scope: !1142)
!1145 = !DILocation(line: 143, column: 6, scope: !1132)
!1146 = !DILocation(line: 144, column: 22, scope: !1142)
!1147 = !DILocation(line: 144, column: 44, scope: !1142)
!1148 = !DILocation(line: 144, column: 10, scope: !1142)
!1149 = !DILocation(line: 144, column: 3, scope: !1142)
!1150 = !DILocation(line: 146, column: 16, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1132, file: !33, line: 146, column: 6)
!1152 = !DILocation(line: 146, column: 28, scope: !1151)
!1153 = !DILocation(line: 146, column: 6, scope: !1151)
!1154 = !DILocation(line: 146, column: 39, scope: !1151)
!1155 = !DILocation(line: 146, column: 6, scope: !1132)
!1156 = !DILocation(line: 147, column: 22, scope: !1151)
!1157 = !DILocation(line: 147, column: 39, scope: !1151)
!1158 = !DILocation(line: 147, column: 10, scope: !1151)
!1159 = !DILocation(line: 147, column: 3, scope: !1151)
!1160 = !DILocation(line: 149, column: 21, scope: !1132)
!1161 = !DILocation(line: 149, column: 37, scope: !1132)
!1162 = !DILocation(line: 149, column: 54, scope: !1132)
!1163 = !DILocation(line: 149, column: 9, scope: !1132)
!1164 = !DILocation(line: 149, column: 2, scope: !1132)
!1165 = !DILocation(line: 150, column: 1, scope: !1132)
