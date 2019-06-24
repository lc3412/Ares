; ModuleID = './libSyncDriver_la-syncDriverPosix.o.i'
source_filename = "./libSyncDriver_la-syncDriverPosix.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
%struct.SyncHandle = type { i32 (%struct.SyncHandle*)*, void (%struct.SyncHandle*)*, void (%struct.SyncHandle*, i8**, i8*)* }
%struct._GPtrArray = type { i8**, i32 }
%struct.RemoteDevPrefix = type { i8*, i64 }
%struct._GPatternSpec = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.mntent = type { i8*, i8*, i8*, i8*, i32, i32 }

@gExcludedFileSystems = internal global i8* null, align 8
@.str = private unnamed_addr constant [58 x i8] c"SyncDriver: Leave the excluded file system list as \22%s\22.\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"SyncDriver: Excluding file system, name=%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"SyncDriver: No file systems to freeze.\0A\00", align 1
@gBackends = internal global [3 x i32 (%struct._GSList*, %struct.SyncHandle**)*] [i32 (%struct._GSList*, %struct.SyncHandle**)* @LinuxDriver_Freeze, i32 (%struct._GSList*, %struct.SyncHandle**)* @VmSync_Freeze, i32 (%struct._GSList*, %struct.SyncHandle**)* @NullDriver_Freeze], align 16
@.str.5 = private unnamed_addr constant [33 x i8] c"SyncDriver: Calling backend %d.\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"SyncDriver: Skipping nullDriver backend.\0A\00", align 1
@gExcludedPathPatterns = internal global %struct._GPtrArray* null, align 8
@.str.7 = private unnamed_addr constant [58 x i8] c"SyncDriver: Set the excluded file system list to (null).\0A\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"SyncDriver: Set the excluded file system list to \22%s\22.\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"/etc/mtab\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"SyncDriver: Failed to open mount point table.\0A\00", align 1
@.str.13 = private unnamed_addr constant [61 x i8] c"SyncDriver: Skipping remote file system, name=%s, mntpt=%s.\0A\00", align 1
@gRemoteFSTypes = internal global [6 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0)], align 16
@gRemoteDevPrefixes = internal global [2 x %struct.RemoteDevPrefix] [%struct.RemoteDevPrefix { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i64 8 }, %struct.RemoteDevPrefix { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i64 7 }], align 16
@.str.14 = private unnamed_addr constant [7 x i8] c"autofs\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"cifs\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"nfs\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"nfs4\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"smbfs\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"vmhgfs\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"https://\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"http://\00", align 1

; Function Attrs: nounwind uwtable
define signext i8 @SyncDriver_Init() #0 !dbg !101 {
  ret i8 1, !dbg !105
}

; Function Attrs: nounwind uwtable
define %struct._GSList* @SyncDriverFilterFS(%struct._GSList*, i8*) #0 !dbg !106 {
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca %struct._GSList*, align 8
  %8 = alloca i8*, align 8
  store %struct._GSList* %0, %struct._GSList** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !109, metadata !110), !dbg !111
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !112, metadata !110), !dbg !113
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !114, metadata !110), !dbg !115
  %9 = load i8*, i8** %5, align 8, !dbg !116
  %10 = load i8*, i8** @gExcludedFileSystems, align 8, !dbg !118
  %11 = call i32 @g_strcmp0(i8* %9, i8* %10), !dbg !119
  %12 = icmp ne i32 %11, 0, !dbg !120
  br i1 %12, label %13, label %15, !dbg !121

; <label>:13:                                     ; preds = %2
  %14 = load i8*, i8** %5, align 8, !dbg !122
  call void @SyncDriverUpdateExcludedFS(i8* %14), !dbg !124
  br label %23, !dbg !125

; <label>:15:                                     ; preds = %2
  %16 = load i8*, i8** %5, align 8, !dbg !126
  %17 = icmp ne i8* %16, null, !dbg !128
  br i1 %17, label %18, label %20, !dbg !129

; <label>:18:                                     ; preds = %15
  %19 = load i8*, i8** %5, align 8, !dbg !130
  br label %21, !dbg !132

; <label>:20:                                     ; preds = %15
  br label %21, !dbg !133

; <label>:21:                                     ; preds = %20, %18
  %22 = phi i8* [ %19, %18 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), %20 ], !dbg !135
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i32 0, i32 0), i8* %22), !dbg !137
  br label %23

; <label>:23:                                     ; preds = %21, %13
  %24 = load i8*, i8** @gExcludedFileSystems, align 8, !dbg !138
  %25 = icmp eq i8* %24, null, !dbg !140
  br i1 %25, label %26, label %28, !dbg !141

; <label>:26:                                     ; preds = %23
  %27 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !142
  store %struct._GSList* %27, %struct._GSList** %3, align 8, !dbg !144
  br label %59, !dbg !144

; <label>:28:                                     ; preds = %23
  %29 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !145
  store %struct._GSList* %29, %struct._GSList** %6, align 8, !dbg !146
  br label %30, !dbg !147

; <label>:30:                                     ; preds = %55, %28
  %31 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !148
  %32 = icmp ne %struct._GSList* %31, null, !dbg !150
  br i1 %32, label %33, label %57, !dbg !151

; <label>:33:                                     ; preds = %30
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !152, metadata !110), !dbg !154
  %34 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !155
  %35 = icmp ne %struct._GSList* %34, null, !dbg !156
  br i1 %35, label %36, label %40, !dbg !156

; <label>:36:                                     ; preds = %33
  %37 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !157
  %38 = getelementptr inbounds %struct._GSList, %struct._GSList* %37, i32 0, i32 1, !dbg !159
  %39 = load %struct._GSList*, %struct._GSList** %38, align 8, !dbg !159
  br label %41, !dbg !160

; <label>:40:                                     ; preds = %33
  br label %41, !dbg !161

; <label>:41:                                     ; preds = %40, %36
  %42 = phi %struct._GSList* [ %39, %36 ], [ null, %40 ], !dbg !163
  store %struct._GSList* %42, %struct._GSList** %7, align 8, !dbg !165
  call void @llvm.dbg.declare(metadata i8** %8, metadata !166, metadata !110), !dbg !167
  %43 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !168
  %44 = getelementptr inbounds %struct._GSList, %struct._GSList* %43, i32 0, i32 0, !dbg !169
  %45 = load i8*, i8** %44, align 8, !dbg !169
  store i8* %45, i8** %8, align 8, !dbg !167
  %46 = load i8*, i8** %8, align 8, !dbg !170
  %47 = call signext i8 @SyncDriverIsExcludedFS(i8* %46), !dbg !172
  %48 = icmp ne i8 %47, 0, !dbg !172
  br i1 %48, label %49, label %55, !dbg !173

; <label>:49:                                     ; preds = %41
  %50 = load i8*, i8** %8, align 8, !dbg !174
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i32 0, i32 0), i8* %50), !dbg !176
  %51 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !177
  %52 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !178
  %53 = call %struct._GSList* @g_slist_delete_link(%struct._GSList* %51, %struct._GSList* %52), !dbg !179
  store %struct._GSList* %53, %struct._GSList** %4, align 8, !dbg !180
  %54 = load i8*, i8** %8, align 8, !dbg !181
  call void @free(i8* %54) #5, !dbg !182
  br label %55, !dbg !183

; <label>:55:                                     ; preds = %49, %41
  %56 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !184
  store %struct._GSList* %56, %struct._GSList** %6, align 8, !dbg !185
  br label %30, !dbg !186, !llvm.loop !188

; <label>:57:                                     ; preds = %30
  %58 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !189
  store %struct._GSList* %58, %struct._GSList** %3, align 8, !dbg !190
  br label %59, !dbg !190

; <label>:59:                                     ; preds = %57, %26
  %60 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !191
  ret %struct._GSList* %60, !dbg !191
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @g_strcmp0(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @SyncDriverUpdateExcludedFS(i8*) #0 !dbg !192 {
  %2 = alloca i8*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !195, metadata !110), !dbg !196
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !197, metadata !110), !dbg !201
  store i8** null, i8*** %3, align 8, !dbg !201
  call void @llvm.dbg.declare(metadata i32* %4, metadata !202, metadata !110), !dbg !203
  %5 = load %struct._GPtrArray*, %struct._GPtrArray** @gExcludedPathPatterns, align 8, !dbg !204
  %6 = icmp ne %struct._GPtrArray* %5, null, !dbg !206
  br i1 %6, label %7, label %11, !dbg !207

; <label>:7:                                      ; preds = %1
  %8 = load i8*, i8** @gExcludedFileSystems, align 8, !dbg !208
  call void @g_free(i8* %8), !dbg !210
  %9 = load %struct._GPtrArray*, %struct._GPtrArray** @gExcludedPathPatterns, align 8, !dbg !211
  %10 = call i8** @g_ptr_array_free(%struct._GPtrArray* %9, i32 1), !dbg !212
  br label %11, !dbg !213

; <label>:11:                                     ; preds = %7, %1
  %12 = load i8*, i8** %2, align 8, !dbg !214
  %13 = icmp eq i8* %12, null, !dbg !216
  br i1 %13, label %14, label %15, !dbg !217

; <label>:14:                                     ; preds = %11
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i32 0, i32 0)), !dbg !218
  store i8* null, i8** @gExcludedFileSystems, align 8, !dbg !220
  store %struct._GPtrArray* null, %struct._GPtrArray** @gExcludedPathPatterns, align 8, !dbg !221
  br label %54, !dbg !222

; <label>:15:                                     ; preds = %11
  %16 = load i8*, i8** %2, align 8, !dbg !223
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i32 0, i32 0), i8* %16), !dbg !224
  %17 = load i8*, i8** %2, align 8, !dbg !225
  %18 = call noalias i8* @g_strdup(i8* %17), !dbg !226
  store i8* %18, i8** @gExcludedFileSystems, align 8, !dbg !227
  %19 = call %struct._GPtrArray* @g_ptr_array_new_with_free_func(void (i8*)* bitcast (void (%struct._GPatternSpec*)* @g_pattern_spec_free to void (i8*)*)), !dbg !228
  store %struct._GPtrArray* %19, %struct._GPtrArray** @gExcludedPathPatterns, align 8, !dbg !229
  %20 = load i8*, i8** @gExcludedFileSystems, align 8, !dbg !230
  %21 = call noalias i8** @g_strsplit(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i32 0), !dbg !231
  store i8** %21, i8*** %3, align 8, !dbg !232
  store i32 0, i32* %4, align 4, !dbg !233
  br label %22, !dbg !235

; <label>:22:                                     ; preds = %49, %15
  %23 = load i32, i32* %4, align 4, !dbg !236
  %24 = sext i32 %23 to i64, !dbg !239
  %25 = load i8**, i8*** %3, align 8, !dbg !239
  %26 = getelementptr inbounds i8*, i8** %25, i64 %24, !dbg !239
  %27 = load i8*, i8** %26, align 8, !dbg !239
  %28 = icmp ne i8* %27, null, !dbg !240
  br i1 %28, label %29, label %52, !dbg !241

; <label>:29:                                     ; preds = %22
  %30 = load i32, i32* %4, align 4, !dbg !242
  %31 = sext i32 %30 to i64, !dbg !245
  %32 = load i8**, i8*** %3, align 8, !dbg !245
  %33 = getelementptr inbounds i8*, i8** %32, i64 %31, !dbg !245
  %34 = load i8*, i8** %33, align 8, !dbg !245
  %35 = getelementptr inbounds i8, i8* %34, i64 0, !dbg !245
  %36 = load i8, i8* %35, align 1, !dbg !245
  %37 = sext i8 %36 to i32, !dbg !245
  %38 = icmp ne i32 %37, 0, !dbg !246
  br i1 %38, label %39, label %48, !dbg !247

; <label>:39:                                     ; preds = %29
  %40 = load %struct._GPtrArray*, %struct._GPtrArray** @gExcludedPathPatterns, align 8, !dbg !248
  %41 = load i32, i32* %4, align 4, !dbg !250
  %42 = sext i32 %41 to i64, !dbg !251
  %43 = load i8**, i8*** %3, align 8, !dbg !251
  %44 = getelementptr inbounds i8*, i8** %43, i64 %42, !dbg !251
  %45 = load i8*, i8** %44, align 8, !dbg !251
  %46 = call %struct._GPatternSpec* @g_pattern_spec_new(i8* %45), !dbg !252
  %47 = bitcast %struct._GPatternSpec* %46 to i8*, !dbg !252
  call void @g_ptr_array_add(%struct._GPtrArray* %40, i8* %47), !dbg !253
  br label %48, !dbg !254

; <label>:48:                                     ; preds = %39, %29
  br label %49, !dbg !255

; <label>:49:                                     ; preds = %48
  %50 = load i32, i32* %4, align 4, !dbg !256
  %51 = add nsw i32 %50, 1, !dbg !256
  store i32 %51, i32* %4, align 4, !dbg !256
  br label %22, !dbg !258, !llvm.loop !259

; <label>:52:                                     ; preds = %22
  %53 = load i8**, i8*** %3, align 8, !dbg !261
  call void @g_strfreev(i8** %53), !dbg !262
  br label %54, !dbg !263

; <label>:54:                                     ; preds = %52, %14
  ret void, !dbg !264
}

declare void @Debug(i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal signext i8 @SyncDriverIsExcludedFS(i8*) #0 !dbg !266 {
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !269, metadata !110), !dbg !270
  call void @llvm.dbg.declare(metadata i32* %4, metadata !271, metadata !110), !dbg !272
  store i32 0, i32* %4, align 4, !dbg !273
  br label %5, !dbg !275

; <label>:5:                                      ; preds = %25, %1
  %6 = load i32, i32* %4, align 4, !dbg !276
  %7 = load %struct._GPtrArray*, %struct._GPtrArray** @gExcludedPathPatterns, align 8, !dbg !279
  %8 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %7, i32 0, i32 1, !dbg !280
  %9 = load i32, i32* %8, align 8, !dbg !280
  %10 = icmp ult i32 %6, %9, !dbg !281
  br i1 %10, label %11, label %28, !dbg !282

; <label>:11:                                     ; preds = %5
  %12 = load i32, i32* %4, align 4, !dbg !283
  %13 = sext i32 %12 to i64, !dbg !286
  %14 = load %struct._GPtrArray*, %struct._GPtrArray** @gExcludedPathPatterns, align 8, !dbg !287
  %15 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %14, i32 0, i32 0, !dbg !288
  %16 = load i8**, i8*** %15, align 8, !dbg !288
  %17 = getelementptr inbounds i8*, i8** %16, i64 %13, !dbg !286
  %18 = load i8*, i8** %17, align 8, !dbg !286
  %19 = bitcast i8* %18 to %struct._GPatternSpec*, !dbg !286
  %20 = load i8*, i8** %3, align 8, !dbg !289
  %21 = call i32 @g_pattern_match_string(%struct._GPatternSpec* %19, i8* %20), !dbg !290
  %22 = icmp ne i32 %21, 0, !dbg !290
  br i1 %22, label %23, label %24, !dbg !291

; <label>:23:                                     ; preds = %11
  store i8 1, i8* %2, align 1, !dbg !292
  br label %29, !dbg !292

; <label>:24:                                     ; preds = %11
  br label %25, !dbg !294

; <label>:25:                                     ; preds = %24
  %26 = load i32, i32* %4, align 4, !dbg !295
  %27 = add nsw i32 %26, 1, !dbg !295
  store i32 %27, i32* %4, align 4, !dbg !295
  br label %5, !dbg !297, !llvm.loop !298

; <label>:28:                                     ; preds = %5
  store i8 0, i8* %2, align 1, !dbg !300
  br label %29, !dbg !300

; <label>:29:                                     ; preds = %28, %23
  %30 = load i8, i8* %2, align 1, !dbg !301
  ret i8 %30, !dbg !301
}

declare %struct._GSList* @g_slist_delete_link(%struct._GSList*, %struct._GSList*) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define signext i8 @SyncDriver_Freeze(i8*, i8 signext, %struct.SyncHandle**, i8*) #0 !dbg !302 {
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.SyncHandle**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct._GSList*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32 (%struct._GSList*, %struct.SyncHandle**)*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !305, metadata !110), !dbg !306
  store i8 %1, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !307, metadata !110), !dbg !308
  store %struct.SyncHandle** %2, %struct.SyncHandle*** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.SyncHandle*** %8, metadata !309, metadata !110), !dbg !310
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !311, metadata !110), !dbg !312
  call void @llvm.dbg.declare(metadata %struct._GSList** %10, metadata !313, metadata !110), !dbg !314
  store %struct._GSList* null, %struct._GSList** %10, align 8, !dbg !314
  call void @llvm.dbg.declare(metadata i32* %11, metadata !315, metadata !110), !dbg !316
  store i32 2, i32* %11, align 4, !dbg !316
  call void @llvm.dbg.declare(metadata i64* %12, metadata !317, metadata !110), !dbg !318
  store i64 0, i64* %12, align 8, !dbg !318
  %16 = load i8*, i8** %6, align 8, !dbg !319
  %17 = icmp eq i8* %16, null, !dbg !321
  br i1 %17, label %28, label %18, !dbg !322

; <label>:18:                                     ; preds = %4
  %19 = load i8*, i8** %6, align 8, !dbg !323
  %20 = call i32 @strncmp(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i64 4) #6, !dbg !324
  %21 = icmp eq i32 %20, 0, !dbg !325
  br i1 %21, label %28, label %22, !dbg !326

; <label>:22:                                     ; preds = %18
  %23 = load i8*, i8** %6, align 8, !dbg !327
  %24 = getelementptr inbounds i8, i8* %23, i64 0, !dbg !327
  %25 = load i8, i8* %24, align 1, !dbg !327
  %26 = sext i8 %25 to i32, !dbg !327
  %27 = icmp ne i32 %26, 47, !dbg !328
  br i1 %27, label %28, label %30, !dbg !329

; <label>:28:                                     ; preds = %22, %18, %4
  %29 = call %struct._GSList* @SyncDriverLocalMounts(), !dbg !331
  store %struct._GSList* %29, %struct._GSList** %10, align 8, !dbg !333
  br label %69, !dbg !334

; <label>:30:                                     ; preds = %22
  br label %31, !dbg !335

; <label>:31:                                     ; preds = %67, %41, %30
  %32 = load i8*, i8** %6, align 8, !dbg !337
  %33 = load i8, i8* %32, align 1, !dbg !339
  %34 = sext i8 %33 to i32, !dbg !339
  %35 = icmp ne i32 %34, 0, !dbg !340
  br i1 %35, label %36, label %68, !dbg !341

; <label>:36:                                     ; preds = %31
  call void @llvm.dbg.declare(metadata i8** %13, metadata !342, metadata !110), !dbg !344
  call void @llvm.dbg.declare(metadata i8** %14, metadata !345, metadata !110), !dbg !346
  %37 = load i8*, i8** %6, align 8, !dbg !347
  %38 = load i8, i8* %37, align 1, !dbg !349
  %39 = sext i8 %38 to i32, !dbg !349
  %40 = icmp eq i32 %39, 32, !dbg !350
  br i1 %40, label %41, label %44, !dbg !351

; <label>:41:                                     ; preds = %36
  %42 = load i8*, i8** %6, align 8, !dbg !352
  %43 = getelementptr inbounds i8, i8* %42, i32 1, !dbg !352
  store i8* %43, i8** %6, align 8, !dbg !352
  br label %31, !dbg !354, !llvm.loop !355

; <label>:44:                                     ; preds = %36
  %45 = load i8*, i8** %6, align 8, !dbg !356
  %46 = call i8* @strchr(i8* %45, i32 32) #6, !dbg !357
  store i8* %46, i8** %13, align 8, !dbg !358
  %47 = load i8*, i8** %13, align 8, !dbg !359
  %48 = icmp eq i8* %47, null, !dbg !361
  br i1 %48, label %49, label %55, !dbg !362

; <label>:49:                                     ; preds = %44
  %50 = load i8*, i8** %6, align 8, !dbg !363
  %51 = call i8* @UtilSafeStrdup0(i8* %50), !dbg !365
  store i8* %51, i8** %14, align 8, !dbg !366
  %52 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !367
  %53 = load i8*, i8** %14, align 8, !dbg !368
  %54 = call %struct._GSList* @g_slist_append(%struct._GSList* %52, i8* %53), !dbg !369
  store %struct._GSList* %54, %struct._GSList** %10, align 8, !dbg !370
  br label %68, !dbg !371

; <label>:55:                                     ; preds = %44
  %56 = load i8*, i8** %6, align 8, !dbg !372
  %57 = load i8*, i8** %13, align 8, !dbg !374
  %58 = load i8*, i8** %6, align 8, !dbg !375
  %59 = ptrtoint i8* %57 to i64, !dbg !376
  %60 = ptrtoint i8* %58 to i64, !dbg !376
  %61 = sub i64 %59, %60, !dbg !376
  %62 = call i8* @UtilSafeStrndup0(i8* %56, i64 %61), !dbg !377
  store i8* %62, i8** %14, align 8, !dbg !378
  %63 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !379
  %64 = load i8*, i8** %14, align 8, !dbg !380
  %65 = call %struct._GSList* @g_slist_append(%struct._GSList* %63, i8* %64), !dbg !381
  store %struct._GSList* %65, %struct._GSList** %10, align 8, !dbg !382
  %66 = load i8*, i8** %13, align 8, !dbg !383
  store i8* %66, i8** %6, align 8, !dbg !384
  br label %67

; <label>:67:                                     ; preds = %55
  br label %31, !dbg !385, !llvm.loop !355

; <label>:68:                                     ; preds = %49, %31
  br label %69

; <label>:69:                                     ; preds = %68, %28
  %70 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !387
  %71 = load i8*, i8** %9, align 8, !dbg !388
  %72 = call %struct._GSList* @SyncDriverFilterFS(%struct._GSList* %70, i8* %71), !dbg !389
  store %struct._GSList* %72, %struct._GSList** %10, align 8, !dbg !390
  %73 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !391
  %74 = icmp eq %struct._GSList* %73, null, !dbg !393
  br i1 %74, label %75, label %76, !dbg !394

; <label>:75:                                     ; preds = %69
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i32 0, i32 0)), !dbg !395
  store i8 0, i8* %5, align 1, !dbg !397
  br label %111, !dbg !397

; <label>:76:                                     ; preds = %69
  br label %77, !dbg !398

; <label>:77:                                     ; preds = %99, %98, %76
  %78 = load i32, i32* %11, align 4, !dbg !399
  %79 = icmp eq i32 %78, 2, !dbg !400
  br i1 %79, label %80, label %83, !dbg !401

; <label>:80:                                     ; preds = %77
  %81 = load i64, i64* %12, align 8, !dbg !402
  %82 = icmp ult i64 %81, 3, !dbg !404
  br label %83

; <label>:83:                                     ; preds = %80, %77
  %84 = phi i1 [ false, %77 ], [ %82, %80 ]
  br i1 %84, label %85, label %104, !dbg !405

; <label>:85:                                     ; preds = %83
  call void @llvm.dbg.declare(metadata i32 (%struct._GSList*, %struct.SyncHandle**)** %15, metadata !407, metadata !110), !dbg !409
  %86 = load i64, i64* %12, align 8, !dbg !410
  %87 = getelementptr inbounds [3 x i32 (%struct._GSList*, %struct.SyncHandle**)*], [3 x i32 (%struct._GSList*, %struct.SyncHandle**)*]* @gBackends, i64 0, i64 %86, !dbg !411
  %88 = load i32 (%struct._GSList*, %struct.SyncHandle**)*, i32 (%struct._GSList*, %struct.SyncHandle**)** %87, align 8, !dbg !411
  store i32 (%struct._GSList*, %struct.SyncHandle**)* %88, i32 (%struct._GSList*, %struct.SyncHandle**)** %15, align 8, !dbg !409
  %89 = load i64, i64* %12, align 8, !dbg !412
  %90 = trunc i64 %89 to i32, !dbg !413
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i32 0, i32 0), i32 %90), !dbg !414
  %91 = load i64, i64* %12, align 8, !dbg !415
  %92 = add i64 %91, 1, !dbg !415
  store i64 %92, i64* %12, align 8, !dbg !415
  %93 = load i8, i8* %7, align 1, !dbg !416
  %94 = icmp ne i8 %93, 0, !dbg !416
  br i1 %94, label %99, label %95, !dbg !418

; <label>:95:                                     ; preds = %85
  %96 = load i32 (%struct._GSList*, %struct.SyncHandle**)*, i32 (%struct._GSList*, %struct.SyncHandle**)** %15, align 8, !dbg !419
  %97 = icmp eq i32 (%struct._GSList*, %struct.SyncHandle**)* %96, @NullDriver_Freeze, !dbg !421
  br i1 %97, label %98, label %99, !dbg !422

; <label>:98:                                     ; preds = %95
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i32 0, i32 0)), !dbg !423
  br label %77, !dbg !425, !llvm.loop !426

; <label>:99:                                     ; preds = %95, %85
  %100 = load i32 (%struct._GSList*, %struct.SyncHandle**)*, i32 (%struct._GSList*, %struct.SyncHandle**)** %15, align 8, !dbg !427
  %101 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !428
  %102 = load %struct.SyncHandle**, %struct.SyncHandle*** %8, align 8, !dbg !429
  %103 = call i32 %100(%struct._GSList* %101, %struct.SyncHandle** %102), !dbg !427
  store i32 %103, i32* %11, align 4, !dbg !430
  br label %77, !dbg !431, !llvm.loop !426

; <label>:104:                                    ; preds = %83
  %105 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !433
  call void @g_slist_foreach(%struct._GSList* %105, void (i8*, i8*)* @SyncDriverFreePath, i8* null), !dbg !434
  %106 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !435
  call void @g_slist_free(%struct._GSList* %106), !dbg !436
  %107 = load i32, i32* %11, align 4, !dbg !437
  %108 = icmp eq i32 %107, 0, !dbg !438
  %109 = zext i1 %108 to i32, !dbg !438
  %110 = trunc i32 %109 to i8, !dbg !437
  store i8 %110, i8* %5, align 1, !dbg !439
  br label %111, !dbg !439

; <label>:111:                                    ; preds = %104, %75
  %112 = load i8, i8* %5, align 1, !dbg !440
  ret i8 %112, !dbg !440
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define internal %struct._GSList* @SyncDriverLocalMounts() #0 !dbg !441 {
  %1 = alloca %struct._GSList*, align 8
  %2 = alloca %struct._GSList*, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct.mntent*, align 8
  %5 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %2, metadata !444, metadata !110), !dbg !445
  store %struct._GSList* null, %struct._GSList** %2, align 8, !dbg !445
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !446, metadata !110), !dbg !503
  call void @llvm.dbg.declare(metadata %struct.mntent** %4, metadata !504, metadata !110), !dbg !515
  %6 = call %struct._IO_FILE* @Posix_Setmntent(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)), !dbg !516
  store %struct._IO_FILE* %6, %struct._IO_FILE** %3, align 8, !dbg !518
  %7 = icmp eq %struct._IO_FILE* %6, null, !dbg !519
  br i1 %7, label %8, label %9, !dbg !520

; <label>:8:                                      ; preds = %0
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i32 0, i32 0)), !dbg !521
  store %struct._GSList* null, %struct._GSList** %1, align 8, !dbg !523
  br label %39, !dbg !523

; <label>:9:                                      ; preds = %0
  br label %10, !dbg !524

; <label>:10:                                     ; preds = %25, %18, %9
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !525
  %12 = call %struct.mntent* @Posix_Getmntent(%struct._IO_FILE* %11), !dbg !527
  store %struct.mntent* %12, %struct.mntent** %4, align 8, !dbg !528
  %13 = icmp ne %struct.mntent* %12, null, !dbg !529
  br i1 %13, label %14, label %33, !dbg !530

; <label>:14:                                     ; preds = %10
  call void @llvm.dbg.declare(metadata i8** %5, metadata !531, metadata !110), !dbg !533
  %15 = load %struct.mntent*, %struct.mntent** %4, align 8, !dbg !534
  %16 = call signext i8 @SyncDriverIsRemoteFS(%struct.mntent* %15), !dbg !536
  %17 = icmp ne i8 %16, 0, !dbg !536
  br i1 %17, label %18, label %25, !dbg !537

; <label>:18:                                     ; preds = %14
  %19 = load %struct.mntent*, %struct.mntent** %4, align 8, !dbg !538
  %20 = getelementptr inbounds %struct.mntent, %struct.mntent* %19, i32 0, i32 0, !dbg !540
  %21 = load i8*, i8** %20, align 8, !dbg !540
  %22 = load %struct.mntent*, %struct.mntent** %4, align 8, !dbg !541
  %23 = getelementptr inbounds %struct.mntent, %struct.mntent* %22, i32 0, i32 1, !dbg !542
  %24 = load i8*, i8** %23, align 8, !dbg !542
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.13, i32 0, i32 0), i8* %21, i8* %24), !dbg !543
  br label %10, !dbg !544, !llvm.loop !545

; <label>:25:                                     ; preds = %14
  %26 = load %struct.mntent*, %struct.mntent** %4, align 8, !dbg !546
  %27 = getelementptr inbounds %struct.mntent, %struct.mntent* %26, i32 0, i32 1, !dbg !547
  %28 = load i8*, i8** %27, align 8, !dbg !547
  %29 = call i8* @UtilSafeStrdup0(i8* %28), !dbg !548
  store i8* %29, i8** %5, align 8, !dbg !549
  %30 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !550
  %31 = load i8*, i8** %5, align 8, !dbg !551
  %32 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %30, i8* %31), !dbg !552
  store %struct._GSList* %32, %struct._GSList** %2, align 8, !dbg !553
  br label %10, !dbg !554, !llvm.loop !545

; <label>:33:                                     ; preds = %10
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !556
  %35 = call i32 @endmntent(%struct._IO_FILE* %34) #5, !dbg !557
  %36 = icmp eq i32 %35, 1, !dbg !558
  %37 = zext i1 %36 to i32, !dbg !558
  %38 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !559
  store %struct._GSList* %38, %struct._GSList** %1, align 8, !dbg !560
  br label %39, !dbg !560

; <label>:39:                                     ; preds = %33, %8
  %40 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !561
  ret %struct._GSList* %40, !dbg !561
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

declare i8* @UtilSafeStrdup0(i8*) #2

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

declare i8* @UtilSafeStrndup0(i8*, i64) #2

declare void @Warning(i8*, ...) #2

declare i32 @NullDriver_Freeze(%struct._GSList*, %struct.SyncHandle**) #2

declare void @g_slist_foreach(%struct._GSList*, void (i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @SyncDriverFreePath(i8*, i8*) #0 !dbg !562 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !565, metadata !110), !dbg !566
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !567, metadata !110), !dbg !568
  %5 = load i8*, i8** %3, align 8, !dbg !569
  call void @free(i8* %5) #5, !dbg !570
  ret void, !dbg !571
}

declare void @g_slist_free(%struct._GSList*) #2

; Function Attrs: nounwind uwtable
define signext i8 @SyncDriver_Thaw(%struct.SyncHandle*) #0 !dbg !572 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.SyncHandle*, align 8
  store %struct.SyncHandle* %0, %struct.SyncHandle** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.SyncHandle** %3, metadata !575, metadata !110), !dbg !576
  %4 = load %struct.SyncHandle*, %struct.SyncHandle** %3, align 8, !dbg !577
  %5 = getelementptr inbounds %struct.SyncHandle, %struct.SyncHandle* %4, i32 0, i32 0, !dbg !579
  %6 = load i32 (%struct.SyncHandle*)*, i32 (%struct.SyncHandle*)** %5, align 8, !dbg !579
  %7 = icmp ne i32 (%struct.SyncHandle*)* %6, null, !dbg !580
  br i1 %7, label %8, label %17, !dbg !581

; <label>:8:                                      ; preds = %1
  %9 = load %struct.SyncHandle*, %struct.SyncHandle** %3, align 8, !dbg !582
  %10 = getelementptr inbounds %struct.SyncHandle, %struct.SyncHandle* %9, i32 0, i32 0, !dbg !584
  %11 = load i32 (%struct.SyncHandle*)*, i32 (%struct.SyncHandle*)** %10, align 8, !dbg !584
  %12 = load %struct.SyncHandle*, %struct.SyncHandle** %3, align 8, !dbg !585
  %13 = call i32 %11(%struct.SyncHandle* %12), !dbg !582
  %14 = icmp eq i32 %13, 0, !dbg !586
  %15 = zext i1 %14 to i32, !dbg !586
  %16 = trunc i32 %15 to i8, !dbg !582
  store i8 %16, i8* %2, align 1, !dbg !587
  br label %18, !dbg !587

; <label>:17:                                     ; preds = %1
  store i8 1, i8* %2, align 1, !dbg !588
  br label %18, !dbg !588

; <label>:18:                                     ; preds = %17, %8
  %19 = load i8, i8* %2, align 1, !dbg !589
  ret i8 %19, !dbg !589
}

; Function Attrs: nounwind uwtable
define i32 @SyncDriver_QueryStatus(%struct.SyncHandle*, i32) #0 !dbg !590 {
  %3 = alloca %struct.SyncHandle*, align 8
  %4 = alloca i32, align 4
  store %struct.SyncHandle* %0, %struct.SyncHandle** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.SyncHandle** %3, metadata !597, metadata !110), !dbg !598
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !599, metadata !110), !dbg !600
  ret i32 0, !dbg !601
}

; Function Attrs: nounwind uwtable
define void @SyncDriver_CloseHandle(%struct.SyncHandle**) #0 !dbg !602 {
  %2 = alloca %struct.SyncHandle**, align 8
  store %struct.SyncHandle** %0, %struct.SyncHandle*** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.SyncHandle*** %2, metadata !605, metadata !110), !dbg !606
  %3 = load %struct.SyncHandle**, %struct.SyncHandle*** %2, align 8, !dbg !607
  %4 = load %struct.SyncHandle*, %struct.SyncHandle** %3, align 8, !dbg !609
  %5 = icmp ne %struct.SyncHandle* %4, null, !dbg !610
  br i1 %5, label %6, label %21, !dbg !611

; <label>:6:                                      ; preds = %1
  %7 = load %struct.SyncHandle**, %struct.SyncHandle*** %2, align 8, !dbg !612
  %8 = load %struct.SyncHandle*, %struct.SyncHandle** %7, align 8, !dbg !615
  %9 = getelementptr inbounds %struct.SyncHandle, %struct.SyncHandle* %8, i32 0, i32 1, !dbg !616
  %10 = load void (%struct.SyncHandle*)*, void (%struct.SyncHandle*)** %9, align 8, !dbg !616
  %11 = icmp ne void (%struct.SyncHandle*)* %10, null, !dbg !617
  br i1 %11, label %12, label %19, !dbg !618

; <label>:12:                                     ; preds = %6
  %13 = load %struct.SyncHandle**, %struct.SyncHandle*** %2, align 8, !dbg !619
  %14 = load %struct.SyncHandle*, %struct.SyncHandle** %13, align 8, !dbg !621
  %15 = getelementptr inbounds %struct.SyncHandle, %struct.SyncHandle* %14, i32 0, i32 1, !dbg !622
  %16 = load void (%struct.SyncHandle*)*, void (%struct.SyncHandle*)** %15, align 8, !dbg !622
  %17 = load %struct.SyncHandle**, %struct.SyncHandle*** %2, align 8, !dbg !623
  %18 = load %struct.SyncHandle*, %struct.SyncHandle** %17, align 8, !dbg !624
  call void %16(%struct.SyncHandle* %18), !dbg !625
  br label %19, !dbg !626

; <label>:19:                                     ; preds = %12, %6
  %20 = load %struct.SyncHandle**, %struct.SyncHandle*** %2, align 8, !dbg !627
  store %struct.SyncHandle* null, %struct.SyncHandle** %20, align 8, !dbg !628
  br label %21, !dbg !629

; <label>:21:                                     ; preds = %19, %1
  ret void, !dbg !630
}

; Function Attrs: nounwind uwtable
define void @SyncDriver_GetAttr(%struct.SyncHandle*, i8**, i8*) #0 !dbg !631 {
  %4 = alloca %struct.SyncHandle*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  store %struct.SyncHandle* %0, %struct.SyncHandle** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.SyncHandle** %4, metadata !632, metadata !110), !dbg !633
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !634, metadata !110), !dbg !635
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !636, metadata !110), !dbg !637
  %7 = load %struct.SyncHandle*, %struct.SyncHandle** %4, align 8, !dbg !638
  %8 = icmp ne %struct.SyncHandle* %7, null, !dbg !640
  br i1 %8, label %9, label %21, !dbg !641

; <label>:9:                                      ; preds = %3
  %10 = load %struct.SyncHandle*, %struct.SyncHandle** %4, align 8, !dbg !642
  %11 = getelementptr inbounds %struct.SyncHandle, %struct.SyncHandle* %10, i32 0, i32 2, !dbg !644
  %12 = load void (%struct.SyncHandle*, i8**, i8*)*, void (%struct.SyncHandle*, i8**, i8*)** %11, align 8, !dbg !644
  %13 = icmp ne void (%struct.SyncHandle*, i8**, i8*)* %12, null, !dbg !645
  br i1 %13, label %14, label %21, !dbg !646

; <label>:14:                                     ; preds = %9
  %15 = load %struct.SyncHandle*, %struct.SyncHandle** %4, align 8, !dbg !647
  %16 = getelementptr inbounds %struct.SyncHandle, %struct.SyncHandle* %15, i32 0, i32 2, !dbg !649
  %17 = load void (%struct.SyncHandle*, i8**, i8*)*, void (%struct.SyncHandle*, i8**, i8*)** %16, align 8, !dbg !649
  %18 = load %struct.SyncHandle*, %struct.SyncHandle** %4, align 8, !dbg !650
  %19 = load i8**, i8*** %5, align 8, !dbg !651
  %20 = load i8*, i8** %6, align 8, !dbg !652
  call void %17(%struct.SyncHandle* %18, i8** %19, i8* %20), !dbg !647
  br label %24, !dbg !653

; <label>:21:                                     ; preds = %9, %3
  %22 = load i8**, i8*** %5, align 8, !dbg !654
  store i8* null, i8** %22, align 8, !dbg !656
  %23 = load i8*, i8** %6, align 8, !dbg !657
  store i8 0, i8* %23, align 1, !dbg !658
  br label %24

; <label>:24:                                     ; preds = %21, %14
  ret void, !dbg !659
}

declare void @g_free(i8*) #2

declare i8** @g_ptr_array_free(%struct._GPtrArray*, i32) #2

declare noalias i8* @g_strdup(i8*) #2

declare %struct._GPtrArray* @g_ptr_array_new_with_free_func(void (i8*)*) #2

declare void @g_pattern_spec_free(%struct._GPatternSpec*) #2

declare noalias i8** @g_strsplit(i8*, i8*, i32) #2

declare void @g_ptr_array_add(%struct._GPtrArray*, i8*) #2

declare %struct._GPatternSpec* @g_pattern_spec_new(i8*) #2

declare void @g_strfreev(i8**) #2

declare i32 @g_pattern_match_string(%struct._GPatternSpec*, i8*) #2

declare %struct._IO_FILE* @Posix_Setmntent(i8*, i8*) #2

declare %struct.mntent* @Posix_Getmntent(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define internal signext i8 @SyncDriverIsRemoteFS(%struct.mntent*) #0 !dbg !660 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.mntent*, align 8
  %4 = alloca i64, align 8
  store %struct.mntent* %0, %struct.mntent** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.mntent** %3, metadata !665, metadata !110), !dbg !666
  call void @llvm.dbg.declare(metadata i64* %4, metadata !667, metadata !110), !dbg !668
  store i64 0, i64* %4, align 8, !dbg !669
  br label %5, !dbg !671

; <label>:5:                                      ; preds = %19, %1
  %6 = load i64, i64* %4, align 8, !dbg !672
  %7 = icmp ult i64 %6, 6, !dbg !675
  br i1 %7, label %8, label %22, !dbg !676

; <label>:8:                                      ; preds = %5
  %9 = load i64, i64* %4, align 8, !dbg !677
  %10 = getelementptr inbounds [6 x i8*], [6 x i8*]* @gRemoteFSTypes, i64 0, i64 %9, !dbg !680
  %11 = load i8*, i8** %10, align 8, !dbg !680
  %12 = load %struct.mntent*, %struct.mntent** %3, align 8, !dbg !681
  %13 = getelementptr inbounds %struct.mntent, %struct.mntent* %12, i32 0, i32 2, !dbg !682
  %14 = load i8*, i8** %13, align 8, !dbg !682
  %15 = call i32 @strcmp(i8* %11, i8* %14) #6, !dbg !683
  %16 = icmp eq i32 %15, 0, !dbg !684
  br i1 %16, label %17, label %18, !dbg !685

; <label>:17:                                     ; preds = %8
  store i8 1, i8* %2, align 1, !dbg !686
  br label %46, !dbg !686

; <label>:18:                                     ; preds = %8
  br label %19, !dbg !688

; <label>:19:                                     ; preds = %18
  %20 = load i64, i64* %4, align 8, !dbg !689
  %21 = add i64 %20, 1, !dbg !689
  store i64 %21, i64* %4, align 8, !dbg !689
  br label %5, !dbg !691, !llvm.loop !692

; <label>:22:                                     ; preds = %5
  store i64 0, i64* %4, align 8, !dbg !694
  br label %23, !dbg !696

; <label>:23:                                     ; preds = %42, %22
  %24 = load i64, i64* %4, align 8, !dbg !697
  %25 = icmp ult i64 %24, 2, !dbg !700
  br i1 %25, label %26, label %45, !dbg !701

; <label>:26:                                     ; preds = %23
  %27 = load i64, i64* %4, align 8, !dbg !702
  %28 = getelementptr inbounds [2 x %struct.RemoteDevPrefix], [2 x %struct.RemoteDevPrefix]* @gRemoteDevPrefixes, i64 0, i64 %27, !dbg !705
  %29 = getelementptr inbounds %struct.RemoteDevPrefix, %struct.RemoteDevPrefix* %28, i32 0, i32 0, !dbg !706
  %30 = load i8*, i8** %29, align 16, !dbg !706
  %31 = load %struct.mntent*, %struct.mntent** %3, align 8, !dbg !707
  %32 = getelementptr inbounds %struct.mntent, %struct.mntent* %31, i32 0, i32 0, !dbg !708
  %33 = load i8*, i8** %32, align 8, !dbg !708
  %34 = load i64, i64* %4, align 8, !dbg !709
  %35 = getelementptr inbounds [2 x %struct.RemoteDevPrefix], [2 x %struct.RemoteDevPrefix]* @gRemoteDevPrefixes, i64 0, i64 %34, !dbg !710
  %36 = getelementptr inbounds %struct.RemoteDevPrefix, %struct.RemoteDevPrefix* %35, i32 0, i32 1, !dbg !711
  %37 = load i64, i64* %36, align 8, !dbg !711
  %38 = call i32 @strncasecmp(i8* %30, i8* %33, i64 %37) #6, !dbg !712
  %39 = icmp eq i32 %38, 0, !dbg !713
  br i1 %39, label %40, label %41, !dbg !714

; <label>:40:                                     ; preds = %26
  store i8 1, i8* %2, align 1, !dbg !715
  br label %46, !dbg !715

; <label>:41:                                     ; preds = %26
  br label %42, !dbg !717

; <label>:42:                                     ; preds = %41
  %43 = load i64, i64* %4, align 8, !dbg !718
  %44 = add i64 %43, 1, !dbg !718
  store i64 %44, i64* %4, align 8, !dbg !718
  br label %23, !dbg !720, !llvm.loop !721

; <label>:45:                                     ; preds = %23
  store i8 0, i8* %2, align 1, !dbg !723
  br label %46, !dbg !723

; <label>:46:                                     ; preds = %45, %40, %17
  %47 = load i8, i8* %2, align 1, !dbg !724
  ret i8 %47, !dbg !724
}

declare %struct._GSList* @g_slist_prepend(%struct._GSList*, i8*) #2

; Function Attrs: nounwind
declare i32 @endmntent(%struct._IO_FILE*) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind readonly
declare i32 @strncasecmp(i8*, i8*, i64) #4

declare i32 @LinuxDriver_Freeze(%struct._GSList*, %struct.SyncHandle**) #2

declare i32 @VmSync_Freeze(%struct._GSList*, %struct.SyncHandle**) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!98, !99}
!llvm.ident = !{!100}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !15, globals: !33)
!1 = !DIFile(filename: "libSyncDriver_la-syncDriverPosix.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line962")
!2 = !{!3, !9}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 37, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "syncDriverInt.h", directory: "/home/lichi/Desktop/open-vm-tools/line962")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "SD_SUCCESS", value: 0)
!7 = !DIEnumerator(name: "SD_ERROR", value: 1)
!8 = !DIEnumerator(name: "SD_UNAVAILABLE", value: 2)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 45, size: 32, align: 32, elements: !11)
!10 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/syncDriver.h", directory: "/home/lichi/Desktop/open-vm-tools/line962")
!11 = !{!12, !13, !14}
!12 = !DIEnumerator(name: "SYNCDRIVER_IDLE", value: 0)
!13 = !DIEnumerator(name: "SYNCDRIVER_BUSY", value: 1)
!14 = !DIEnumerator(name: "SYNCDRIVER_ERROR", value: 2)
!15 = !{!16, !17, !26, !28, !29}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !19, line: 37, baseType: !20)
!19 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/open-vm-tools/line962")
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !19, line: 39, size: 128, align: 64, elements: !21)
!21 = !{!22, !25}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !20, file: !19, line: 41, baseType: !23, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !24, line: 77, baseType: !16)
!24 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line962")
!25 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !20, file: !19, line: 42, baseType: !17, size: 64, align: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!27 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!28 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "GDestroyNotify", file: !24, line: 87, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DISubroutineType(types: !32)
!32 = !{null, !23}
!33 = !{!34, !36, !47, !53, !65}
!34 = distinct !DIGlobalVariable(name: "gExcludedFileSystems", scope: !0, file: !35, line: 68, type: !26, isLocal: true, isDefinition: true, variable: i8** @gExcludedFileSystems)
!35 = !DIFile(filename: "syncDriverPosix.c", directory: "/home/lichi/Desktop/open-vm-tools/line962")
!36 = distinct !DIGlobalVariable(name: "gExcludedPathPatterns", scope: !0, file: !35, line: 71, type: !37, isLocal: true, isDefinition: true, variable: %struct._GPtrArray** @gExcludedPathPatterns)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPtrArray", file: !39, line: 39, baseType: !40)
!39 = !DIFile(filename: "/usr/include/glib-2.0/glib/garray.h", directory: "/home/lichi/Desktop/open-vm-tools/line962")
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GPtrArray", file: !39, line: 53, size: 128, align: 64, elements: !41)
!41 = !{!42, !44}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "pdata", scope: !40, file: !39, line: 55, baseType: !43, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !40, file: !39, line: 56, baseType: !45, size: 32, align: 32, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !24, line: 55, baseType: !46)
!46 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!47 = distinct !DIGlobalVariable(name: "gRemoteFSTypes", scope: !0, file: !35, line: 44, type: !48, isLocal: true, isDefinition: true, variable: [6 x i8*]* @gRemoteFSTypes)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 384, align: 64, elements: !51)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!51 = !{!52}
!52 = !DISubrange(count: 6)
!53 = distinct !DIGlobalVariable(name: "gRemoteDevPrefixes", scope: !0, file: !35, line: 60, type: !54, isLocal: true, isDefinition: true, variable: [2 x %struct.RemoteDevPrefix]* @gRemoteDevPrefixes)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 256, align: 64, elements: !63)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "RemoteDevPrefix", file: !35, line: 56, baseType: !56)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 53, size: 128, align: 64, elements: !57)
!57 = !{!58, !59}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !56, file: !35, line: 54, baseType: !49, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !56, file: !35, line: 55, baseType: !60, size: 64, align: 64, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !61, line: 216, baseType: !62)
!61 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line962")
!62 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!63 = !{!64}
!64 = !DISubrange(count: 2)
!65 = distinct !DIGlobalVariable(name: "gBackends", scope: !0, file: !35, line: 36, type: !66, isLocal: true, isDefinition: true, variable: [3 x i32 (%struct._GSList*, %struct.SyncHandle**)*]* @gBackends)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 192, align: 64, elements: !96)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyncFreezeFn", file: !4, line: 43, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{!71, !72, !74}
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyncDriverErr", file: !4, line: 41, baseType: !3)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyncDriverHandle", file: !10, line: 41, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SyncHandle", file: !4, line: 46, size: 192, align: 64, elements: !78)
!78 = !{!79, !84, !88}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !77, file: !4, line: 47, baseType: !80, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!81 = !DISubroutineType(types: !82)
!82 = !{!71, !83}
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !77, file: !4, line: 48, baseType: !85, size: 64, align: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DISubroutineType(types: !87)
!87 = !{null, !75}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !77, file: !4, line: 50, baseType: !89, size: 64, align: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!90 = !DISubroutineType(types: !91)
!91 = !{null, !83, !92, !93}
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !95, line: 230, baseType: !27)
!95 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line962")
!96 = !{!97}
!97 = !DISubrange(count: 3)
!98 = !{i32 2, !"Dwarf Version", i32 4}
!99 = !{i32 2, !"Debug Info Version", i32 3}
!100 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!101 = distinct !DISubprogram(name: "SyncDriver_Init", scope: !35, file: !35, line: 201, type: !102, isLocal: false, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !104)
!102 = !DISubroutineType(types: !103)
!103 = !{!94}
!104 = !{}
!105 = !DILocation(line: 203, column: 4, scope: !101)
!106 = distinct !DISubprogram(name: "SyncDriverFilterFS", scope: !35, file: !35, line: 359, type: !107, isLocal: false, isDefinition: true, scopeLine: 361, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !104)
!107 = !DISubroutineType(types: !108)
!108 = !{!17, !17, !49}
!109 = !DILocalVariable(name: "pathlist", arg: 1, scope: !106, file: !35, line: 359, type: !17)
!110 = !DIExpression()
!111 = !DILocation(line: 359, column: 28, scope: !106)
!112 = !DILocalVariable(name: "excludedFS", arg: 2, scope: !106, file: !35, line: 360, type: !49)
!113 = !DILocation(line: 360, column: 32, scope: !106)
!114 = !DILocalVariable(name: "current", scope: !106, file: !35, line: 362, type: !17)
!115 = !DILocation(line: 362, column: 12, scope: !106)
!116 = !DILocation(line: 367, column: 18, scope: !117)
!117 = distinct !DILexicalBlock(scope: !106, file: !35, line: 367, column: 8)
!118 = !DILocation(line: 367, column: 30, scope: !117)
!119 = !DILocation(line: 367, column: 8, scope: !117)
!120 = !DILocation(line: 367, column: 52, scope: !117)
!121 = !DILocation(line: 367, column: 8, scope: !106)
!122 = !DILocation(line: 368, column: 34, scope: !123)
!123 = distinct !DILexicalBlock(scope: !117, file: !35, line: 367, column: 58)
!124 = !DILocation(line: 368, column: 7, scope: !123)
!125 = !DILocation(line: 369, column: 4, scope: !123)
!126 = !DILocation(line: 371, column: 11, scope: !127)
!127 = distinct !DILexicalBlock(scope: !117, file: !35, line: 369, column: 11)
!128 = !DILocation(line: 371, column: 22, scope: !127)
!129 = !DILocation(line: 371, column: 10, scope: !127)
!130 = !DILocation(line: 371, column: 32, scope: !131)
!131 = !DILexicalBlockFile(scope: !127, file: !35, discriminator: 1)
!132 = !DILocation(line: 371, column: 10, scope: !131)
!133 = !DILocation(line: 371, column: 10, scope: !134)
!134 = !DILexicalBlockFile(scope: !127, file: !35, discriminator: 2)
!135 = !DILocation(line: 371, column: 10, scope: !136)
!136 = !DILexicalBlockFile(scope: !127, file: !35, discriminator: 3)
!137 = !DILocation(line: 370, column: 7, scope: !127)
!138 = !DILocation(line: 377, column: 8, scope: !139)
!139 = distinct !DILexicalBlock(scope: !106, file: !35, line: 377, column: 8)
!140 = !DILocation(line: 377, column: 29, scope: !139)
!141 = !DILocation(line: 377, column: 8, scope: !106)
!142 = !DILocation(line: 378, column: 14, scope: !143)
!143 = distinct !DILexicalBlock(scope: !139, file: !35, line: 377, column: 37)
!144 = !DILocation(line: 378, column: 7, scope: !143)
!145 = !DILocation(line: 385, column: 14, scope: !106)
!146 = !DILocation(line: 385, column: 12, scope: !106)
!147 = !DILocation(line: 386, column: 4, scope: !106)
!148 = !DILocation(line: 386, column: 11, scope: !149)
!149 = !DILexicalBlockFile(scope: !106, file: !35, discriminator: 1)
!150 = !DILocation(line: 386, column: 19, scope: !149)
!151 = !DILocation(line: 386, column: 4, scope: !149)
!152 = !DILocalVariable(name: "next", scope: !153, file: !35, line: 387, type: !17)
!153 = distinct !DILexicalBlock(scope: !106, file: !35, line: 386, column: 27)
!154 = !DILocation(line: 387, column: 15, scope: !153)
!155 = !DILocation(line: 387, column: 24, scope: !153)
!156 = !DILocation(line: 387, column: 23, scope: !153)
!157 = !DILocation(line: 387, column: 48, scope: !158)
!158 = !DILexicalBlockFile(scope: !153, file: !35, discriminator: 1)
!159 = !DILocation(line: 387, column: 59, scope: !158)
!160 = !DILocation(line: 387, column: 23, scope: !158)
!161 = !DILocation(line: 387, column: 23, scope: !162)
!162 = !DILexicalBlockFile(scope: !153, file: !35, discriminator: 2)
!163 = !DILocation(line: 387, column: 23, scope: !164)
!164 = !DILexicalBlockFile(scope: !153, file: !35, discriminator: 3)
!165 = !DILocation(line: 387, column: 15, scope: !164)
!166 = !DILocalVariable(name: "path", scope: !153, file: !35, line: 388, type: !26)
!167 = !DILocation(line: 388, column: 13, scope: !153)
!168 = !DILocation(line: 388, column: 29, scope: !153)
!169 = !DILocation(line: 388, column: 38, scope: !153)
!170 = !DILocation(line: 390, column: 34, scope: !171)
!171 = distinct !DILexicalBlock(scope: !153, file: !35, line: 390, column: 11)
!172 = !DILocation(line: 390, column: 11, scope: !171)
!173 = !DILocation(line: 390, column: 11, scope: !153)
!174 = !DILocation(line: 391, column: 67, scope: !175)
!175 = distinct !DILexicalBlock(scope: !171, file: !35, line: 390, column: 41)
!176 = !DILocation(line: 391, column: 10, scope: !175)
!177 = !DILocation(line: 392, column: 41, scope: !175)
!178 = !DILocation(line: 392, column: 51, scope: !175)
!179 = !DILocation(line: 392, column: 21, scope: !175)
!180 = !DILocation(line: 392, column: 19, scope: !175)
!181 = !DILocation(line: 393, column: 15, scope: !175)
!182 = !DILocation(line: 393, column: 10, scope: !175)
!183 = !DILocation(line: 394, column: 7, scope: !175)
!184 = !DILocation(line: 395, column: 17, scope: !153)
!185 = !DILocation(line: 395, column: 15, scope: !153)
!186 = !DILocation(line: 386, column: 4, scope: !187)
!187 = !DILexicalBlockFile(scope: !106, file: !35, discriminator: 2)
!188 = distinct !{!188, !147}
!189 = !DILocation(line: 398, column: 11, scope: !106)
!190 = !DILocation(line: 398, column: 4, scope: !106)
!191 = !DILocation(line: 399, column: 1, scope: !106)
!192 = distinct !DISubprogram(name: "SyncDriverUpdateExcludedFS", scope: !35, file: !35, line: 247, type: !193, isLocal: true, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !104)
!193 = !DISubroutineType(types: !194)
!194 = !{null, !49}
!195 = !DILocalVariable(name: "excludedFS", arg: 1, scope: !192, file: !35, line: 247, type: !49)
!196 = !DILocation(line: 247, column: 40, scope: !192)
!197 = !DILocalVariable(name: "patterns", scope: !192, file: !35, line: 249, type: !198)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64, align: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !24, line: 46, baseType: !27)
!201 = !DILocation(line: 249, column: 12, scope: !192)
!202 = !DILocalVariable(name: "i", scope: !192, file: !35, line: 250, type: !28)
!203 = !DILocation(line: 250, column: 8, scope: !192)
!204 = !DILocation(line: 261, column: 8, scope: !205)
!205 = distinct !DILexicalBlock(scope: !192, file: !35, line: 261, column: 8)
!206 = !DILocation(line: 261, column: 30, scope: !205)
!207 = !DILocation(line: 261, column: 8, scope: !192)
!208 = !DILocation(line: 266, column: 14, scope: !209)
!209 = distinct !DILexicalBlock(scope: !205, file: !35, line: 261, column: 38)
!210 = !DILocation(line: 266, column: 7, scope: !209)
!211 = !DILocation(line: 267, column: 24, scope: !209)
!212 = !DILocation(line: 267, column: 7, scope: !209)
!213 = !DILocation(line: 268, column: 4, scope: !209)
!214 = !DILocation(line: 270, column: 8, scope: !215)
!215 = distinct !DILexicalBlock(scope: !192, file: !35, line: 270, column: 8)
!216 = !DILocation(line: 270, column: 19, scope: !215)
!217 = !DILocation(line: 270, column: 8, scope: !192)
!218 = !DILocation(line: 271, column: 7, scope: !219)
!219 = distinct !DILexicalBlock(scope: !215, file: !35, line: 270, column: 27)
!220 = !DILocation(line: 272, column: 28, scope: !219)
!221 = !DILocation(line: 273, column: 29, scope: !219)
!222 = !DILocation(line: 274, column: 7, scope: !219)
!223 = !DILocation(line: 277, column: 75, scope: !192)
!224 = !DILocation(line: 277, column: 4, scope: !192)
!225 = !DILocation(line: 279, column: 36, scope: !192)
!226 = !DILocation(line: 279, column: 27, scope: !192)
!227 = !DILocation(line: 279, column: 25, scope: !192)
!228 = !DILocation(line: 281, column: 10, scope: !192)
!229 = !DILocation(line: 280, column: 26, scope: !192)
!230 = !DILocation(line: 283, column: 26, scope: !192)
!231 = !DILocation(line: 283, column: 15, scope: !192)
!232 = !DILocation(line: 283, column: 13, scope: !192)
!233 = !DILocation(line: 285, column: 11, scope: !234)
!234 = distinct !DILexicalBlock(scope: !192, file: !35, line: 285, column: 4)
!235 = !DILocation(line: 285, column: 9, scope: !234)
!236 = !DILocation(line: 285, column: 25, scope: !237)
!237 = !DILexicalBlockFile(scope: !238, file: !35, discriminator: 1)
!238 = distinct !DILexicalBlock(scope: !234, file: !35, line: 285, column: 4)
!239 = !DILocation(line: 285, column: 16, scope: !237)
!240 = !DILocation(line: 285, column: 28, scope: !237)
!241 = !DILocation(line: 285, column: 4, scope: !237)
!242 = !DILocation(line: 286, column: 20, scope: !243)
!243 = distinct !DILexicalBlock(scope: !244, file: !35, line: 286, column: 11)
!244 = distinct !DILexicalBlock(scope: !238, file: !35, line: 285, column: 41)
!245 = !DILocation(line: 286, column: 11, scope: !243)
!246 = !DILocation(line: 286, column: 26, scope: !243)
!247 = !DILocation(line: 286, column: 11, scope: !244)
!248 = !DILocation(line: 287, column: 26, scope: !249)
!249 = distinct !DILexicalBlock(scope: !243, file: !35, line: 286, column: 35)
!250 = !DILocation(line: 288, column: 54, scope: !249)
!251 = !DILocation(line: 288, column: 45, scope: !249)
!252 = !DILocation(line: 288, column: 26, scope: !249)
!253 = !DILocation(line: 287, column: 10, scope: !249)
!254 = !DILocation(line: 289, column: 7, scope: !249)
!255 = !DILocation(line: 290, column: 4, scope: !244)
!256 = !DILocation(line: 285, column: 36, scope: !257)
!257 = !DILexicalBlockFile(scope: !238, file: !35, discriminator: 2)
!258 = !DILocation(line: 285, column: 4, scope: !257)
!259 = distinct !{!259, !260}
!260 = !DILocation(line: 285, column: 4, scope: !192)
!261 = !DILocation(line: 292, column: 15, scope: !192)
!262 = !DILocation(line: 292, column: 4, scope: !192)
!263 = !DILocation(line: 293, column: 1, scope: !192)
!264 = !DILocation(line: 293, column: 1, scope: !265)
!265 = !DILexicalBlockFile(scope: !192, file: !35, discriminator: 1)
!266 = distinct !DISubprogram(name: "SyncDriverIsExcludedFS", scope: !35, file: !35, line: 318, type: !267, isLocal: true, isDefinition: true, scopeLine: 319, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !104)
!267 = !DISubroutineType(types: !268)
!268 = !{!94, !49}
!269 = !DILocalVariable(name: "path", arg: 1, scope: !266, file: !35, line: 318, type: !49)
!270 = !DILocation(line: 318, column: 36, scope: !266)
!271 = !DILocalVariable(name: "i", scope: !266, file: !35, line: 320, type: !28)
!272 = !DILocation(line: 320, column: 8, scope: !266)
!273 = !DILocation(line: 325, column: 11, scope: !274)
!274 = distinct !DILexicalBlock(scope: !266, file: !35, line: 325, column: 4)
!275 = !DILocation(line: 325, column: 9, scope: !274)
!276 = !DILocation(line: 325, column: 16, scope: !277)
!277 = !DILexicalBlockFile(scope: !278, file: !35, discriminator: 1)
!278 = distinct !DILexicalBlock(scope: !274, file: !35, line: 325, column: 4)
!279 = !DILocation(line: 325, column: 20, scope: !277)
!280 = !DILocation(line: 325, column: 43, scope: !277)
!281 = !DILocation(line: 325, column: 18, scope: !277)
!282 = !DILocation(line: 325, column: 4, scope: !277)
!283 = !DILocation(line: 326, column: 67, scope: !284)
!284 = distinct !DILexicalBlock(scope: !285, file: !35, line: 326, column: 11)
!285 = distinct !DILexicalBlock(scope: !278, file: !35, line: 325, column: 53)
!286 = !DILocation(line: 326, column: 34, scope: !284)
!287 = !DILocation(line: 326, column: 36, scope: !284)
!288 = !DILocation(line: 326, column: 60, scope: !284)
!289 = !DILocation(line: 327, column: 34, scope: !284)
!290 = !DILocation(line: 326, column: 11, scope: !284)
!291 = !DILocation(line: 326, column: 11, scope: !285)
!292 = !DILocation(line: 328, column: 10, scope: !293)
!293 = distinct !DILexicalBlock(scope: !284, file: !35, line: 327, column: 41)
!294 = !DILocation(line: 330, column: 4, scope: !285)
!295 = !DILocation(line: 325, column: 48, scope: !296)
!296 = !DILexicalBlockFile(scope: !278, file: !35, discriminator: 2)
!297 = !DILocation(line: 325, column: 4, scope: !296)
!298 = distinct !{!298, !299}
!299 = !DILocation(line: 325, column: 4, scope: !266)
!300 = !DILocation(line: 331, column: 4, scope: !266)
!301 = !DILocation(line: 332, column: 1, scope: !266)
!302 = distinct !DISubprogram(name: "SyncDriver_Freeze", scope: !35, file: !35, line: 434, type: !303, isLocal: false, isDefinition: true, scopeLine: 438, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !104)
!303 = !DISubroutineType(types: !304)
!304 = !{!94, !49, !94, !74, !49}
!305 = !DILocalVariable(name: "userPaths", arg: 1, scope: !302, file: !35, line: 434, type: !49)
!306 = !DILocation(line: 434, column: 31, scope: !302)
!307 = !DILocalVariable(name: "enableNullDriver", arg: 2, scope: !302, file: !35, line: 435, type: !94)
!308 = !DILocation(line: 435, column: 24, scope: !302)
!309 = !DILocalVariable(name: "handle", arg: 3, scope: !302, file: !35, line: 436, type: !74)
!310 = !DILocation(line: 436, column: 37, scope: !302)
!311 = !DILocalVariable(name: "excludedFileSystems", arg: 4, scope: !302, file: !35, line: 437, type: !49)
!312 = !DILocation(line: 437, column: 31, scope: !302)
!313 = !DILocalVariable(name: "paths", scope: !302, file: !35, line: 439, type: !17)
!314 = !DILocation(line: 439, column: 12, scope: !302)
!315 = !DILocalVariable(name: "err", scope: !302, file: !35, line: 440, type: !71)
!316 = !DILocation(line: 440, column: 18, scope: !302)
!317 = !DILocalVariable(name: "i", scope: !302, file: !35, line: 441, type: !60)
!318 = !DILocation(line: 441, column: 11, scope: !302)
!319 = !DILocation(line: 449, column: 8, scope: !320)
!320 = distinct !DILexicalBlock(scope: !302, file: !35, line: 449, column: 8)
!321 = !DILocation(line: 449, column: 18, scope: !320)
!322 = !DILocation(line: 449, column: 25, scope: !320)
!323 = !DILocation(line: 450, column: 16, scope: !320)
!324 = !DILocation(line: 450, column: 8, scope: !320)
!325 = !DILocation(line: 450, column: 48, scope: !320)
!326 = !DILocation(line: 450, column: 53, scope: !320)
!327 = !DILocation(line: 451, column: 8, scope: !320)
!328 = !DILocation(line: 451, column: 21, scope: !320)
!329 = !DILocation(line: 449, column: 8, scope: !330)
!330 = !DILexicalBlockFile(scope: !302, file: !35, discriminator: 1)
!331 = !DILocation(line: 452, column: 15, scope: !332)
!332 = distinct !DILexicalBlock(scope: !320, file: !35, line: 451, column: 29)
!333 = !DILocation(line: 452, column: 13, scope: !332)
!334 = !DILocation(line: 453, column: 4, scope: !332)
!335 = !DILocation(line: 457, column: 7, scope: !336)
!336 = distinct !DILexicalBlock(scope: !320, file: !35, line: 453, column: 11)
!337 = !DILocation(line: 457, column: 15, scope: !338)
!338 = !DILexicalBlockFile(scope: !336, file: !35, discriminator: 1)
!339 = !DILocation(line: 457, column: 14, scope: !338)
!340 = !DILocation(line: 457, column: 25, scope: !338)
!341 = !DILocation(line: 457, column: 7, scope: !338)
!342 = !DILocalVariable(name: "c", scope: !343, file: !35, line: 458, type: !49)
!343 = distinct !DILexicalBlock(scope: !336, file: !35, line: 457, column: 34)
!344 = !DILocation(line: 458, column: 22, scope: !343)
!345 = !DILocalVariable(name: "path", scope: !343, file: !35, line: 459, type: !26)
!346 = !DILocation(line: 459, column: 16, scope: !343)
!347 = !DILocation(line: 461, column: 15, scope: !348)
!348 = distinct !DILexicalBlock(scope: !343, file: !35, line: 461, column: 14)
!349 = !DILocation(line: 461, column: 14, scope: !348)
!350 = !DILocation(line: 461, column: 25, scope: !348)
!351 = !DILocation(line: 461, column: 14, scope: !343)
!352 = !DILocation(line: 465, column: 22, scope: !353)
!353 = distinct !DILexicalBlock(scope: !348, file: !35, line: 461, column: 33)
!354 = !DILocation(line: 466, column: 13, scope: !353)
!355 = distinct !{!355, !335}
!356 = !DILocation(line: 469, column: 21, scope: !343)
!357 = !DILocation(line: 469, column: 14, scope: !343)
!358 = !DILocation(line: 469, column: 12, scope: !343)
!359 = !DILocation(line: 470, column: 14, scope: !360)
!360 = distinct !DILexicalBlock(scope: !343, file: !35, line: 470, column: 14)
!361 = !DILocation(line: 470, column: 16, scope: !360)
!362 = !DILocation(line: 470, column: 14, scope: !343)
!363 = !DILocation(line: 471, column: 37, scope: !364)
!364 = distinct !DILexicalBlock(scope: !360, file: !35, line: 470, column: 24)
!365 = !DILocation(line: 471, column: 20, scope: !364)
!366 = !DILocation(line: 471, column: 18, scope: !364)
!367 = !DILocation(line: 472, column: 36, scope: !364)
!368 = !DILocation(line: 472, column: 43, scope: !364)
!369 = !DILocation(line: 472, column: 21, scope: !364)
!370 = !DILocation(line: 472, column: 19, scope: !364)
!371 = !DILocation(line: 473, column: 13, scope: !364)
!372 = !DILocation(line: 475, column: 38, scope: !373)
!373 = distinct !DILexicalBlock(scope: !360, file: !35, line: 474, column: 17)
!374 = !DILocation(line: 475, column: 51, scope: !373)
!375 = !DILocation(line: 475, column: 55, scope: !373)
!376 = !DILocation(line: 475, column: 53, scope: !373)
!377 = !DILocation(line: 475, column: 20, scope: !373)
!378 = !DILocation(line: 475, column: 18, scope: !373)
!379 = !DILocation(line: 476, column: 36, scope: !373)
!380 = !DILocation(line: 476, column: 43, scope: !373)
!381 = !DILocation(line: 476, column: 21, scope: !373)
!382 = !DILocation(line: 476, column: 19, scope: !373)
!383 = !DILocation(line: 477, column: 25, scope: !373)
!384 = !DILocation(line: 477, column: 23, scope: !373)
!385 = !DILocation(line: 457, column: 7, scope: !386)
!386 = !DILexicalBlockFile(scope: !336, file: !35, discriminator: 2)
!387 = !DILocation(line: 482, column: 31, scope: !302)
!388 = !DILocation(line: 482, column: 38, scope: !302)
!389 = !DILocation(line: 482, column: 12, scope: !302)
!390 = !DILocation(line: 482, column: 10, scope: !302)
!391 = !DILocation(line: 483, column: 8, scope: !392)
!392 = distinct !DILexicalBlock(scope: !302, file: !35, line: 483, column: 8)
!393 = !DILocation(line: 483, column: 14, scope: !392)
!394 = !DILocation(line: 483, column: 8, scope: !302)
!395 = !DILocation(line: 484, column: 7, scope: !396)
!396 = distinct !DILexicalBlock(scope: !392, file: !35, line: 483, column: 22)
!397 = !DILocation(line: 485, column: 7, scope: !396)
!398 = !DILocation(line: 488, column: 4, scope: !302)
!399 = !DILocation(line: 488, column: 11, scope: !330)
!400 = !DILocation(line: 488, column: 15, scope: !330)
!401 = !DILocation(line: 488, column: 33, scope: !330)
!402 = !DILocation(line: 488, column: 36, scope: !403)
!403 = !DILexicalBlockFile(scope: !302, file: !35, discriminator: 2)
!404 = !DILocation(line: 488, column: 38, scope: !403)
!405 = !DILocation(line: 488, column: 4, scope: !406)
!406 = !DILexicalBlockFile(scope: !302, file: !35, discriminator: 3)
!407 = !DILocalVariable(name: "freezeFn", scope: !408, file: !35, line: 489, type: !67)
!408 = distinct !DILexicalBlock(scope: !302, file: !35, line: 488, column: 84)
!409 = !DILocation(line: 489, column: 20, scope: !408)
!410 = !DILocation(line: 489, column: 41, scope: !408)
!411 = !DILocation(line: 489, column: 31, scope: !408)
!412 = !DILocation(line: 490, column: 59, scope: !408)
!413 = !DILocation(line: 490, column: 53, scope: !408)
!414 = !DILocation(line: 490, column: 7, scope: !408)
!415 = !DILocation(line: 491, column: 8, scope: !408)
!416 = !DILocation(line: 493, column: 12, scope: !417)
!417 = distinct !DILexicalBlock(scope: !408, file: !35, line: 493, column: 11)
!418 = !DILocation(line: 493, column: 29, scope: !417)
!419 = !DILocation(line: 493, column: 33, scope: !420)
!420 = !DILexicalBlockFile(scope: !417, file: !35, discriminator: 1)
!421 = !DILocation(line: 493, column: 42, scope: !420)
!422 = !DILocation(line: 493, column: 11, scope: !420)
!423 = !DILocation(line: 494, column: 10, scope: !424)
!424 = distinct !DILexicalBlock(scope: !417, file: !35, line: 493, column: 65)
!425 = !DILocation(line: 495, column: 10, scope: !424)
!426 = distinct !{!426, !398}
!427 = !DILocation(line: 498, column: 13, scope: !408)
!428 = !DILocation(line: 498, column: 22, scope: !408)
!429 = !DILocation(line: 498, column: 29, scope: !408)
!430 = !DILocation(line: 498, column: 11, scope: !408)
!431 = !DILocation(line: 488, column: 4, scope: !432)
!432 = !DILexicalBlockFile(scope: !302, file: !35, discriminator: 4)
!433 = !DILocation(line: 504, column: 20, scope: !302)
!434 = !DILocation(line: 504, column: 4, scope: !302)
!435 = !DILocation(line: 505, column: 17, scope: !302)
!436 = !DILocation(line: 505, column: 4, scope: !302)
!437 = !DILocation(line: 507, column: 11, scope: !302)
!438 = !DILocation(line: 507, column: 15, scope: !302)
!439 = !DILocation(line: 507, column: 4, scope: !302)
!440 = !DILocation(line: 508, column: 1, scope: !302)
!441 = distinct !DISubprogram(name: "SyncDriverLocalMounts", scope: !35, file: !35, line: 140, type: !442, isLocal: true, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !104)
!442 = !DISubroutineType(types: !443)
!443 = !{!17}
!444 = !DILocalVariable(name: "paths", scope: !441, file: !35, line: 142, type: !17)
!445 = !DILocation(line: 142, column: 12, scope: !441)
!446 = !DILocalVariable(name: "mounts", scope: !441, file: !35, line: 143, type: !447)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64, align: 64)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !449, line: 48, baseType: !450)
!449 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/open-vm-tools/line962")
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !451, line: 241, size: 1728, align: 64, elements: !452)
!451 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/open-vm-tools/line962")
!452 = !{!453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !473, !474, !475, !476, !480, !482, !484, !488, !491, !493, !494, !495, !496, !497, !498, !499}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !450, file: !451, line: 242, baseType: !28, size: 32, align: 32)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !450, file: !451, line: 247, baseType: !26, size: 64, align: 64, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !450, file: !451, line: 248, baseType: !26, size: 64, align: 64, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !450, file: !451, line: 249, baseType: !26, size: 64, align: 64, offset: 192)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !450, file: !451, line: 250, baseType: !26, size: 64, align: 64, offset: 256)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !450, file: !451, line: 251, baseType: !26, size: 64, align: 64, offset: 320)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !450, file: !451, line: 252, baseType: !26, size: 64, align: 64, offset: 384)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !450, file: !451, line: 253, baseType: !26, size: 64, align: 64, offset: 448)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !450, file: !451, line: 254, baseType: !26, size: 64, align: 64, offset: 512)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !450, file: !451, line: 256, baseType: !26, size: 64, align: 64, offset: 576)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !450, file: !451, line: 257, baseType: !26, size: 64, align: 64, offset: 640)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !450, file: !451, line: 258, baseType: !26, size: 64, align: 64, offset: 704)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !450, file: !451, line: 260, baseType: !466, size: 64, align: 64, offset: 768)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64, align: 64)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !451, line: 156, size: 192, align: 64, elements: !468)
!468 = !{!469, !470, !472}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !467, file: !451, line: 157, baseType: !466, size: 64, align: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !467, file: !451, line: 158, baseType: !471, size: 64, align: 64, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64, align: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !467, file: !451, line: 162, baseType: !28, size: 32, align: 32, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !450, file: !451, line: 262, baseType: !471, size: 64, align: 64, offset: 832)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !450, file: !451, line: 264, baseType: !28, size: 32, align: 32, offset: 896)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !450, file: !451, line: 268, baseType: !28, size: 32, align: 32, offset: 928)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !450, file: !451, line: 270, baseType: !477, size: 64, align: 64, offset: 960)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !478, line: 131, baseType: !479)
!478 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line962")
!479 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !450, file: !451, line: 274, baseType: !481, size: 16, align: 16, offset: 1024)
!481 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !450, file: !451, line: 275, baseType: !483, size: 8, align: 8, offset: 1040)
!483 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !450, file: !451, line: 276, baseType: !485, size: 8, align: 8, offset: 1048)
!485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 8, align: 8, elements: !486)
!486 = !{!487}
!487 = !DISubrange(count: 1)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !450, file: !451, line: 280, baseType: !489, size: 64, align: 64, offset: 1088)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64, align: 64)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !451, line: 150, baseType: null)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !450, file: !451, line: 289, baseType: !492, size: 64, align: 64, offset: 1152)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !478, line: 132, baseType: !479)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !450, file: !451, line: 297, baseType: !16, size: 64, align: 64, offset: 1216)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !450, file: !451, line: 298, baseType: !16, size: 64, align: 64, offset: 1280)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !450, file: !451, line: 299, baseType: !16, size: 64, align: 64, offset: 1344)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !450, file: !451, line: 300, baseType: !16, size: 64, align: 64, offset: 1408)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !450, file: !451, line: 302, baseType: !60, size: 64, align: 64, offset: 1472)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !450, file: !451, line: 303, baseType: !28, size: 32, align: 32, offset: 1536)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !450, file: !451, line: 305, baseType: !500, size: 160, align: 8, offset: 1568)
!500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 160, align: 8, elements: !501)
!501 = !{!502}
!502 = !DISubrange(count: 20)
!503 = !DILocation(line: 143, column: 11, scope: !441)
!504 = !DILocalVariable(name: "mntinfo", scope: !441, file: !35, line: 144, type: !505)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64, align: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mntent", file: !507, line: 53, size: 320, align: 64, elements: !508)
!507 = !DIFile(filename: "/usr/include/mntent.h", directory: "/home/lichi/Desktop/open-vm-tools/line962")
!508 = !{!509, !510, !511, !512, !513, !514}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_fsname", scope: !506, file: !507, line: 55, baseType: !26, size: 64, align: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_dir", scope: !506, file: !507, line: 56, baseType: !26, size: 64, align: 64, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_type", scope: !506, file: !507, line: 57, baseType: !26, size: 64, align: 64, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_opts", scope: !506, file: !507, line: 58, baseType: !26, size: 64, align: 64, offset: 192)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_freq", scope: !506, file: !507, line: 59, baseType: !28, size: 32, align: 32, offset: 256)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_passno", scope: !506, file: !507, line: 60, baseType: !28, size: 32, align: 32, offset: 288)
!515 = !DILocation(line: 144, column: 19, scope: !441)
!516 = !DILocation(line: 146, column: 18, scope: !517)
!517 = distinct !DILexicalBlock(scope: !441, file: !35, line: 146, column: 8)
!518 = !DILocation(line: 146, column: 16, scope: !517)
!519 = !DILocation(line: 146, column: 25, scope: !517)
!520 = !DILocation(line: 146, column: 8, scope: !441)
!521 = !DILocation(line: 147, column: 7, scope: !522)
!522 = distinct !DILexicalBlock(scope: !517, file: !35, line: 146, column: 45)
!523 = !DILocation(line: 148, column: 7, scope: !522)
!524 = !DILocation(line: 151, column: 4, scope: !441)
!525 = !DILocation(line: 151, column: 39, scope: !526)
!526 = !DILexicalBlockFile(scope: !441, file: !35, discriminator: 1)
!527 = !DILocation(line: 151, column: 23, scope: !526)
!528 = !DILocation(line: 151, column: 21, scope: !526)
!529 = !DILocation(line: 151, column: 48, scope: !526)
!530 = !DILocation(line: 151, column: 4, scope: !526)
!531 = !DILocalVariable(name: "path", scope: !532, file: !35, line: 152, type: !26)
!532 = distinct !DILexicalBlock(scope: !441, file: !35, line: 151, column: 13)
!533 = !DILocation(line: 152, column: 13, scope: !532)
!534 = !DILocation(line: 157, column: 32, scope: !535)
!535 = distinct !DILexicalBlock(scope: !532, file: !35, line: 157, column: 11)
!536 = !DILocation(line: 157, column: 11, scope: !535)
!537 = !DILocation(line: 157, column: 11, scope: !532)
!538 = !DILocation(line: 159, column: 16, scope: !539)
!539 = distinct !DILexicalBlock(scope: !535, file: !35, line: 157, column: 42)
!540 = !DILocation(line: 159, column: 25, scope: !539)
!541 = !DILocation(line: 159, column: 37, scope: !539)
!542 = !DILocation(line: 159, column: 46, scope: !539)
!543 = !DILocation(line: 158, column: 10, scope: !539)
!544 = !DILocation(line: 160, column: 10, scope: !539)
!545 = distinct !{!545, !524}
!546 = !DILocation(line: 163, column: 31, scope: !532)
!547 = !DILocation(line: 163, column: 40, scope: !532)
!548 = !DILocation(line: 163, column: 14, scope: !532)
!549 = !DILocation(line: 163, column: 12, scope: !532)
!550 = !DILocation(line: 175, column: 31, scope: !532)
!551 = !DILocation(line: 175, column: 38, scope: !532)
!552 = !DILocation(line: 175, column: 15, scope: !532)
!553 = !DILocation(line: 175, column: 13, scope: !532)
!554 = !DILocation(line: 151, column: 4, scope: !555)
!555 = !DILexicalBlockFile(scope: !441, file: !35, discriminator: 2)
!556 = !DILocation(line: 178, column: 22, scope: !441)
!557 = !DILocation(line: 178, column: 12, scope: !441)
!558 = !DILocation(line: 178, column: 30, scope: !441)
!559 = !DILocation(line: 179, column: 11, scope: !441)
!560 = !DILocation(line: 179, column: 4, scope: !441)
!561 = !DILocation(line: 180, column: 1, scope: !441)
!562 = distinct !DISubprogram(name: "SyncDriverFreePath", scope: !35, file: !35, line: 224, type: !563, isLocal: true, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !104)
!563 = !DISubroutineType(types: !564)
!564 = !{null, !23, !23}
!565 = !DILocalVariable(name: "data", arg: 1, scope: !562, file: !35, line: 224, type: !23)
!566 = !DILocation(line: 224, column: 29, scope: !562)
!567 = !DILocalVariable(name: "userData", arg: 2, scope: !562, file: !35, line: 224, type: !23)
!568 = !DILocation(line: 224, column: 44, scope: !562)
!569 = !DILocation(line: 226, column: 9, scope: !562)
!570 = !DILocation(line: 226, column: 4, scope: !562)
!571 = !DILocation(line: 227, column: 1, scope: !562)
!572 = distinct !DISubprogram(name: "SyncDriver_Thaw", scope: !35, file: !35, line: 529, type: !573, isLocal: false, isDefinition: true, scopeLine: 530, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !104)
!573 = !DISubroutineType(types: !574)
!574 = !{!94, !83}
!575 = !DILocalVariable(name: "handle", arg: 1, scope: !572, file: !35, line: 529, type: !83)
!576 = !DILocation(line: 529, column: 40, scope: !572)
!577 = !DILocation(line: 531, column: 8, scope: !578)
!578 = distinct !DILexicalBlock(scope: !572, file: !35, line: 531, column: 8)
!579 = !DILocation(line: 531, column: 16, scope: !578)
!580 = !DILocation(line: 531, column: 21, scope: !578)
!581 = !DILocation(line: 531, column: 8, scope: !572)
!582 = !DILocation(line: 532, column: 14, scope: !583)
!583 = distinct !DILexicalBlock(scope: !578, file: !35, line: 531, column: 29)
!584 = !DILocation(line: 532, column: 22, scope: !583)
!585 = !DILocation(line: 532, column: 27, scope: !583)
!586 = !DILocation(line: 532, column: 35, scope: !583)
!587 = !DILocation(line: 532, column: 7, scope: !583)
!588 = !DILocation(line: 534, column: 4, scope: !572)
!589 = !DILocation(line: 535, column: 1, scope: !572)
!590 = distinct !DISubprogram(name: "SyncDriver_QueryStatus", scope: !35, file: !35, line: 555, type: !591, isLocal: false, isDefinition: true, scopeLine: 557, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !104)
!591 = !DISubroutineType(types: !592)
!592 = !{!593, !83, !594}
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyncDriverStatus", file: !10, line: 49, baseType: !9)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32", file: !95, line: 174, baseType: !595)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !596, line: 196, baseType: !28)
!596 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line962")
!597 = !DILocalVariable(name: "handle", arg: 1, scope: !590, file: !35, line: 555, type: !83)
!598 = !DILocation(line: 555, column: 47, scope: !590)
!599 = !DILocalVariable(name: "timeout", arg: 2, scope: !590, file: !35, line: 556, type: !594)
!600 = !DILocation(line: 556, column: 30, scope: !590)
!601 = !DILocation(line: 558, column: 4, scope: !590)
!602 = distinct !DISubprogram(name: "SyncDriver_CloseHandle", scope: !35, file: !35, line: 579, type: !603, isLocal: false, isDefinition: true, scopeLine: 580, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !104)
!603 = !DISubroutineType(types: !604)
!604 = !{null, !74}
!605 = !DILocalVariable(name: "handle", arg: 1, scope: !602, file: !35, line: 579, type: !74)
!606 = !DILocation(line: 579, column: 42, scope: !602)
!607 = !DILocation(line: 581, column: 9, scope: !608)
!608 = distinct !DILexicalBlock(scope: !602, file: !35, line: 581, column: 8)
!609 = !DILocation(line: 581, column: 8, scope: !608)
!610 = !DILocation(line: 581, column: 16, scope: !608)
!611 = !DILocation(line: 581, column: 8, scope: !602)
!612 = !DILocation(line: 582, column: 13, scope: !613)
!613 = distinct !DILexicalBlock(scope: !614, file: !35, line: 582, column: 11)
!614 = distinct !DILexicalBlock(scope: !608, file: !35, line: 581, column: 24)
!615 = !DILocation(line: 582, column: 12, scope: !613)
!616 = !DILocation(line: 582, column: 22, scope: !613)
!617 = !DILocation(line: 582, column: 28, scope: !613)
!618 = !DILocation(line: 582, column: 11, scope: !614)
!619 = !DILocation(line: 583, column: 12, scope: !620)
!620 = distinct !DILexicalBlock(scope: !613, file: !35, line: 582, column: 36)
!621 = !DILocation(line: 583, column: 11, scope: !620)
!622 = !DILocation(line: 583, column: 21, scope: !620)
!623 = !DILocation(line: 583, column: 28, scope: !620)
!624 = !DILocation(line: 583, column: 27, scope: !620)
!625 = !DILocation(line: 583, column: 10, scope: !620)
!626 = !DILocation(line: 584, column: 7, scope: !620)
!627 = !DILocation(line: 585, column: 8, scope: !614)
!628 = !DILocation(line: 585, column: 15, scope: !614)
!629 = !DILocation(line: 586, column: 4, scope: !614)
!630 = !DILocation(line: 587, column: 1, scope: !602)
!631 = distinct !DISubprogram(name: "SyncDriver_GetAttr", scope: !35, file: !35, line: 613, type: !90, isLocal: false, isDefinition: true, scopeLine: 616, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !104)
!632 = !DILocalVariable(name: "handle", arg: 1, scope: !631, file: !35, line: 613, type: !83)
!633 = !DILocation(line: 613, column: 43, scope: !631)
!634 = !DILocalVariable(name: "name", arg: 2, scope: !631, file: !35, line: 614, type: !92)
!635 = !DILocation(line: 614, column: 33, scope: !631)
!636 = !DILocalVariable(name: "quiesces", arg: 3, scope: !631, file: !35, line: 615, type: !93)
!637 = !DILocation(line: 615, column: 26, scope: !631)
!638 = !DILocation(line: 618, column: 8, scope: !639)
!639 = distinct !DILexicalBlock(scope: !631, file: !35, line: 618, column: 8)
!640 = !DILocation(line: 618, column: 15, scope: !639)
!641 = !DILocation(line: 618, column: 43, scope: !639)
!642 = !DILocation(line: 618, column: 46, scope: !643)
!643 = !DILexicalBlockFile(scope: !639, file: !35, discriminator: 1)
!644 = !DILocation(line: 618, column: 54, scope: !643)
!645 = !DILocation(line: 618, column: 62, scope: !643)
!646 = !DILocation(line: 618, column: 8, scope: !643)
!647 = !DILocation(line: 619, column: 7, scope: !648)
!648 = distinct !DILexicalBlock(scope: !639, file: !35, line: 618, column: 71)
!649 = !DILocation(line: 619, column: 15, scope: !648)
!650 = !DILocation(line: 619, column: 23, scope: !648)
!651 = !DILocation(line: 619, column: 31, scope: !648)
!652 = !DILocation(line: 619, column: 37, scope: !648)
!653 = !DILocation(line: 620, column: 4, scope: !648)
!654 = !DILocation(line: 621, column: 8, scope: !655)
!655 = distinct !DILexicalBlock(scope: !639, file: !35, line: 620, column: 11)
!656 = !DILocation(line: 621, column: 13, scope: !655)
!657 = !DILocation(line: 622, column: 8, scope: !655)
!658 = !DILocation(line: 622, column: 17, scope: !655)
!659 = !DILocation(line: 624, column: 1, scope: !631)
!660 = distinct !DISubprogram(name: "SyncDriverIsRemoteFS", scope: !35, file: !35, line: 92, type: !661, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !104)
!661 = !DISubroutineType(types: !662)
!662 = !{!94, !663}
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64, align: 64)
!664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !506)
!665 = !DILocalVariable(name: "mntinfo", arg: 1, scope: !660, file: !35, line: 92, type: !663)
!666 = !DILocation(line: 92, column: 43, scope: !660)
!667 = !DILocalVariable(name: "i", scope: !660, file: !35, line: 94, type: !60)
!668 = !DILocation(line: 94, column: 11, scope: !660)
!669 = !DILocation(line: 96, column: 11, scope: !670)
!670 = distinct !DILexicalBlock(scope: !660, file: !35, line: 96, column: 4)
!671 = !DILocation(line: 96, column: 9, scope: !670)
!672 = !DILocation(line: 96, column: 16, scope: !673)
!673 = !DILexicalBlockFile(scope: !674, file: !35, discriminator: 1)
!674 = distinct !DILexicalBlock(scope: !670, file: !35, line: 96, column: 4)
!675 = !DILocation(line: 96, column: 18, scope: !673)
!676 = !DILocation(line: 96, column: 4, scope: !673)
!677 = !DILocation(line: 97, column: 33, scope: !678)
!678 = distinct !DILexicalBlock(scope: !679, file: !35, line: 97, column: 11)
!679 = distinct !DILexicalBlock(scope: !674, file: !35, line: 96, column: 79)
!680 = !DILocation(line: 97, column: 18, scope: !678)
!681 = !DILocation(line: 97, column: 37, scope: !678)
!682 = !DILocation(line: 97, column: 46, scope: !678)
!683 = !DILocation(line: 97, column: 11, scope: !678)
!684 = !DILocation(line: 97, column: 56, scope: !678)
!685 = !DILocation(line: 97, column: 11, scope: !679)
!686 = !DILocation(line: 98, column: 10, scope: !687)
!687 = distinct !DILexicalBlock(scope: !678, file: !35, line: 97, column: 62)
!688 = !DILocation(line: 100, column: 4, scope: !679)
!689 = !DILocation(line: 96, column: 75, scope: !690)
!690 = !DILexicalBlockFile(scope: !674, file: !35, discriminator: 2)
!691 = !DILocation(line: 96, column: 4, scope: !690)
!692 = distinct !{!692, !693}
!693 = !DILocation(line: 96, column: 4, scope: !660)
!694 = !DILocation(line: 102, column: 11, scope: !695)
!695 = distinct !DILexicalBlock(scope: !660, file: !35, line: 102, column: 4)
!696 = !DILocation(line: 102, column: 9, scope: !695)
!697 = !DILocation(line: 102, column: 16, scope: !698)
!698 = !DILexicalBlockFile(scope: !699, file: !35, discriminator: 1)
!699 = distinct !DILexicalBlock(scope: !695, file: !35, line: 102, column: 4)
!700 = !DILocation(line: 102, column: 18, scope: !698)
!701 = !DILocation(line: 102, column: 4, scope: !698)
!702 = !DILocation(line: 103, column: 42, scope: !703)
!703 = distinct !DILexicalBlock(scope: !704, file: !35, line: 103, column: 11)
!704 = distinct !DILexicalBlock(scope: !699, file: !35, line: 102, column: 87)
!705 = !DILocation(line: 103, column: 23, scope: !703)
!706 = !DILocation(line: 103, column: 45, scope: !703)
!707 = !DILocation(line: 103, column: 53, scope: !703)
!708 = !DILocation(line: 103, column: 62, scope: !703)
!709 = !DILocation(line: 103, column: 93, scope: !703)
!710 = !DILocation(line: 103, column: 74, scope: !703)
!711 = !DILocation(line: 103, column: 96, scope: !703)
!712 = !DILocation(line: 103, column: 11, scope: !703)
!713 = !DILocation(line: 105, column: 54, scope: !703)
!714 = !DILocation(line: 103, column: 11, scope: !704)
!715 = !DILocation(line: 106, column: 10, scope: !716)
!716 = distinct !DILexicalBlock(scope: !703, file: !35, line: 105, column: 60)
!717 = !DILocation(line: 108, column: 4, scope: !704)
!718 = !DILocation(line: 102, column: 83, scope: !719)
!719 = !DILexicalBlockFile(scope: !699, file: !35, discriminator: 2)
!720 = !DILocation(line: 102, column: 4, scope: !719)
!721 = distinct !{!721, !722}
!722 = !DILocation(line: 102, column: 4, scope: !660)
!723 = !DILocation(line: 110, column: 4, scope: !660)
!724 = !DILocation(line: 111, column: 1, scope: !660)
