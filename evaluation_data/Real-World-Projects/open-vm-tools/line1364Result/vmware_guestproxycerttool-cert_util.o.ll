; ModuleID = './vmware_guestproxycerttool-cert_util.o.i'
source_filename = "./vmware_guestproxycerttool-cert_util.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GRegex = type opaque
%struct._GDir = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GMappedFile = type opaque
%struct._GMatchInfo = type opaque

@.str = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@CertUtil_GetToolDir.path = internal global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"etc\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"vmware-tools\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"%s: Unable to map %s: %s.\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"%s: Failed to open %s: %s.\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"%s: Failed to copy %s to %s: %s.\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"%s: Couldn't remove the directory '%s'.\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"%s: Couldn't remove the file '%s'.\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"%s.[0-9]+\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"%s: Failed to compile %s: %s.\0A\00", align 1

; Function Attrs: nounwind uwtable
define i8* @CertUtil_CreateCertFileName(i8*, i8*, i32) #0 !dbg !42 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !45, metadata !46), !dbg !47
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !48, metadata !46), !dbg !49
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !50, metadata !46), !dbg !51
  call void @llvm.dbg.declare(metadata i8** %7, metadata !52, metadata !46), !dbg !53
  call void @llvm.dbg.declare(metadata i8** %8, metadata !54, metadata !46), !dbg !55
  %9 = load i8*, i8** %5, align 8, !dbg !56
  %10 = load i32, i32* %6, align 4, !dbg !57
  %11 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* %9, i32 %10), !dbg !58
  store i8* %11, i8** %8, align 8, !dbg !59
  %12 = load i8*, i8** %4, align 8, !dbg !60
  %13 = load i8*, i8** %8, align 8, !dbg !61
  %14 = call noalias i8* (i8*, ...) @g_build_filename(i8* %12, i8* %13, i8* null), !dbg !62
  store i8* %14, i8** %7, align 8, !dbg !63
  %15 = load i8*, i8** %8, align 8, !dbg !64
  call void @g_free(i8* %15), !dbg !65
  %16 = load i8*, i8** %7, align 8, !dbg !66
  ret i8* %16, !dbg !67
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #2

declare noalias i8* @g_build_filename(i8*, ...) #2

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @CertUtil_FindCert(i8*, i8*, i8*, i32*, i32*) #0 !dbg !68 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct._GList*, align 8
  %13 = alloca %struct._GList*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !73, metadata !46), !dbg !74
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !75, metadata !46), !dbg !76
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !77, metadata !46), !dbg !78
  store i32* %3, i32** %9, align 8
  call void @llvm.dbg.declare(metadata i32** %9, metadata !79, metadata !46), !dbg !80
  store i32* %4, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !81, metadata !46), !dbg !82
  call void @llvm.dbg.declare(metadata i32* %11, metadata !83, metadata !46), !dbg !84
  store i32 0, i32* %11, align 4, !dbg !84
  call void @llvm.dbg.declare(metadata %struct._GList** %12, metadata !85, metadata !46), !dbg !88
  call void @llvm.dbg.declare(metadata %struct._GList** %13, metadata !89, metadata !46), !dbg !90
  store %struct._GList* null, %struct._GList** %13, align 8, !dbg !90
  call void @llvm.dbg.declare(metadata i8** %14, metadata !91, metadata !46), !dbg !92
  store i8* null, i8** %14, align 8, !dbg !92
  %17 = load i32*, i32** %9, align 8, !dbg !93
  store i32 -1, i32* %17, align 4, !dbg !94
  %18 = load i32*, i32** %10, align 8, !dbg !95
  store i32 -1, i32* %18, align 4, !dbg !96
  %19 = load i8*, i8** %7, align 8, !dbg !97
  %20 = load i8*, i8** %8, align 8, !dbg !99
  %21 = call i32 @SearchFile(i8* %19, i8* %20, %struct._GList** %13), !dbg !100
  %22 = icmp ne i32 %21, 0, !dbg !100
  br i1 %22, label %24, label %23, !dbg !101

; <label>:23:                                     ; preds = %5
  br label %76, !dbg !102

; <label>:24:                                     ; preds = %5
  store i32 1, i32* %11, align 4, !dbg !104
  %25 = load %struct._GList*, %struct._GList** %13, align 8, !dbg !105
  %26 = icmp ne %struct._GList* %25, null, !dbg !105
  br i1 %26, label %28, label %27, !dbg !107

; <label>:27:                                     ; preds = %24
  br label %76, !dbg !108

; <label>:28:                                     ; preds = %24
  %29 = load %struct._GList*, %struct._GList** %13, align 8, !dbg !110
  %30 = call %struct._GList* @g_list_last(%struct._GList* %29), !dbg !111
  store %struct._GList* %30, %struct._GList** %12, align 8, !dbg !112
  %31 = load %struct._GList*, %struct._GList** %12, align 8, !dbg !113
  %32 = getelementptr inbounds %struct._GList, %struct._GList* %31, i32 0, i32 0, !dbg !114
  %33 = load i8*, i8** %32, align 8, !dbg !114
  %34 = ptrtoint i8* %33 to i64, !dbg !115
  %35 = trunc i64 %34 to i32, !dbg !116
  %36 = load i32*, i32** %10, align 8, !dbg !117
  store i32 %35, i32* %36, align 4, !dbg !118
  %37 = load %struct._GList*, %struct._GList** %13, align 8, !dbg !119
  %38 = call %struct._GList* @g_list_first(%struct._GList* %37), !dbg !121
  store %struct._GList* %38, %struct._GList** %12, align 8, !dbg !122
  br label %39, !dbg !123

; <label>:39:                                     ; preds = %73, %28
  %40 = load %struct._GList*, %struct._GList** %12, align 8, !dbg !124
  %41 = icmp ne %struct._GList* %40, null, !dbg !127
  br i1 %41, label %42, label %75, !dbg !127

; <label>:42:                                     ; preds = %39
  call void @llvm.dbg.declare(metadata i32* %15, metadata !128, metadata !46), !dbg !130
  store i32 0, i32* %15, align 4, !dbg !130
  call void @llvm.dbg.declare(metadata i32* %16, metadata !131, metadata !46), !dbg !132
  %43 = load %struct._GList*, %struct._GList** %12, align 8, !dbg !133
  %44 = getelementptr inbounds %struct._GList, %struct._GList* %43, i32 0, i32 0, !dbg !134
  %45 = load i8*, i8** %44, align 8, !dbg !134
  %46 = ptrtoint i8* %45 to i64, !dbg !135
  %47 = trunc i64 %46 to i32, !dbg !136
  store i32 %47, i32* %16, align 4, !dbg !132
  %48 = load i8*, i8** %14, align 8, !dbg !137
  call void @g_free(i8* %48), !dbg !138
  %49 = load i8*, i8** %7, align 8, !dbg !139
  %50 = load i8*, i8** %8, align 8, !dbg !140
  %51 = load i32, i32* %16, align 4, !dbg !141
  %52 = call i8* @CertUtil_CreateCertFileName(i8* %49, i8* %50, i32 %51), !dbg !142
  store i8* %52, i8** %14, align 8, !dbg !143
  %53 = load i8*, i8** %6, align 8, !dbg !144
  %54 = load i8*, i8** %14, align 8, !dbg !146
  %55 = call i32 @CompareFile(i8* %53, i8* %54, i32* %15), !dbg !147
  %56 = icmp ne i32 %55, 0, !dbg !147
  br i1 %56, label %58, label %57, !dbg !148

; <label>:57:                                     ; preds = %42
  store i32 0, i32* %11, align 4, !dbg !149
  br label %76, !dbg !151

; <label>:58:                                     ; preds = %42
  %59 = load i32, i32* %15, align 4, !dbg !152
  %60 = icmp ne i32 %59, 0, !dbg !152
  br i1 %60, label %61, label %64, !dbg !154

; <label>:61:                                     ; preds = %58
  %62 = load i32, i32* %16, align 4, !dbg !155
  %63 = load i32*, i32** %9, align 8, !dbg !157
  store i32 %62, i32* %63, align 4, !dbg !158
  br label %75, !dbg !159

; <label>:64:                                     ; preds = %58
  br label %65, !dbg !160

; <label>:65:                                     ; preds = %64
  %66 = load %struct._GList*, %struct._GList** %12, align 8, !dbg !161
  %67 = icmp ne %struct._GList* %66, null, !dbg !163
  br i1 %67, label %68, label %72, !dbg !163

; <label>:68:                                     ; preds = %65
  %69 = load %struct._GList*, %struct._GList** %12, align 8, !dbg !164
  %70 = getelementptr inbounds %struct._GList, %struct._GList* %69, i32 0, i32 1, !dbg !166
  %71 = load %struct._GList*, %struct._GList** %70, align 8, !dbg !166
  br label %73, !dbg !167

; <label>:72:                                     ; preds = %65
  br label %73, !dbg !168

; <label>:73:                                     ; preds = %72, %68
  %74 = phi %struct._GList* [ %71, %68 ], [ null, %72 ], !dbg !170
  store %struct._GList* %74, %struct._GList** %12, align 8, !dbg !172
  br label %39, !dbg !173, !llvm.loop !174

; <label>:75:                                     ; preds = %61, %39
  br label %76, !dbg !176

; <label>:76:                                     ; preds = %75, %57, %27, %23
  %77 = load i8*, i8** %14, align 8, !dbg !178
  call void @g_free(i8* %77), !dbg !179
  %78 = load %struct._GList*, %struct._GList** %13, align 8, !dbg !180
  %79 = icmp ne %struct._GList* %78, null, !dbg !180
  br i1 %79, label %80, label %82, !dbg !182

; <label>:80:                                     ; preds = %76
  %81 = load %struct._GList*, %struct._GList** %13, align 8, !dbg !183
  call void @g_list_free(%struct._GList* %81), !dbg !185
  br label %82, !dbg !186

; <label>:82:                                     ; preds = %80, %76
  %83 = load i32, i32* %11, align 4, !dbg !187
  ret i32 %83, !dbg !188
}

; Function Attrs: nounwind uwtable
define internal i32 @SearchFile(i8*, i8*, %struct._GList**) #0 !dbg !189 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._GList**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct._GRegex*, align 8
  %10 = alloca %struct._GDir*, align 8
  %11 = alloca %struct._GError*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !193, metadata !46), !dbg !194
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !195, metadata !46), !dbg !196
  store %struct._GList** %2, %struct._GList*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GList*** %6, metadata !197, metadata !46), !dbg !198
  call void @llvm.dbg.declare(metadata i32* %7, metadata !199, metadata !46), !dbg !200
  store i32 0, i32* %7, align 4, !dbg !200
  call void @llvm.dbg.declare(metadata i8** %8, metadata !201, metadata !46), !dbg !202
  call void @llvm.dbg.declare(metadata %struct._GRegex** %9, metadata !203, metadata !46), !dbg !208
  call void @llvm.dbg.declare(metadata %struct._GDir** %10, metadata !209, metadata !46), !dbg !214
  store %struct._GDir* null, %struct._GDir** %10, align 8, !dbg !214
  call void @llvm.dbg.declare(metadata %struct._GError** %11, metadata !215, metadata !46), !dbg !229
  store %struct._GError* null, %struct._GError** %11, align 8, !dbg !229
  %12 = load i8*, i8** %5, align 8, !dbg !230
  %13 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* %12), !dbg !231
  store i8* %13, i8** %8, align 8, !dbg !232
  %14 = load i8*, i8** %8, align 8, !dbg !233
  %15 = call %struct._GRegex* @g_regex_new(i8* %14, i32 0, i32 0, %struct._GError** %11), !dbg !234
  store %struct._GRegex* %15, %struct._GRegex** %9, align 8, !dbg !235
  %16 = load %struct._GRegex*, %struct._GRegex** %9, align 8, !dbg !236
  %17 = icmp ne %struct._GRegex* %16, null, !dbg !236
  br i1 %17, label %26, label %18, !dbg !238

; <label>:18:                                     ; preds = %3
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !239
  %20 = call i8* @g_get_prgname(), !dbg !241
  %21 = load i8*, i8** %8, align 8, !dbg !242
  %22 = load %struct._GError*, %struct._GError** %11, align 8, !dbg !243
  %23 = getelementptr inbounds %struct._GError, %struct._GError* %22, i32 0, i32 2, !dbg !244
  %24 = load i8*, i8** %23, align 8, !dbg !244
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0), i8* %20, i8* %21, i8* %24), !dbg !245
  br label %44, !dbg !247

; <label>:26:                                     ; preds = %3
  %27 = load i8*, i8** %4, align 8, !dbg !248
  %28 = call %struct._GDir* @g_dir_open(i8* %27, i32 0, %struct._GError** %11), !dbg !249
  store %struct._GDir* %28, %struct._GDir** %10, align 8, !dbg !250
  %29 = load %struct._GDir*, %struct._GDir** %10, align 8, !dbg !251
  %30 = icmp ne %struct._GDir* %29, null, !dbg !251
  br i1 %30, label %39, label %31, !dbg !253

; <label>:31:                                     ; preds = %26
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !254
  %33 = call i8* @g_get_prgname(), !dbg !256
  %34 = load i8*, i8** %4, align 8, !dbg !257
  %35 = load %struct._GError*, %struct._GError** %11, align 8, !dbg !258
  %36 = getelementptr inbounds %struct._GError, %struct._GError* %35, i32 0, i32 2, !dbg !259
  %37 = load i8*, i8** %36, align 8, !dbg !259
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0), i8* %33, i8* %34, i8* %37), !dbg !260
  br label %44, !dbg !262

; <label>:39:                                     ; preds = %26
  %40 = load %struct._GDir*, %struct._GDir** %10, align 8, !dbg !263
  %41 = load %struct._GRegex*, %struct._GRegex** %9, align 8, !dbg !264
  %42 = call %struct._GList* @MatchFile(%struct._GDir* %40, %struct._GRegex* %41), !dbg !265
  %43 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !266
  store %struct._GList* %42, %struct._GList** %43, align 8, !dbg !267
  store i32 1, i32* %7, align 4, !dbg !268
  br label %44, !dbg !269

; <label>:44:                                     ; preds = %39, %31, %18
  %45 = load i8*, i8** %8, align 8, !dbg !270
  call void @g_free(i8* %45), !dbg !271
  call void @g_clear_error(%struct._GError** %11), !dbg !272
  %46 = load %struct._GDir*, %struct._GDir** %10, align 8, !dbg !273
  %47 = icmp ne %struct._GDir* %46, null, !dbg !273
  br i1 %47, label %48, label %50, !dbg !275

; <label>:48:                                     ; preds = %44
  %49 = load %struct._GDir*, %struct._GDir** %10, align 8, !dbg !276
  call void @g_dir_close(%struct._GDir* %49), !dbg !278
  br label %50, !dbg !279

; <label>:50:                                     ; preds = %48, %44
  %51 = load %struct._GRegex*, %struct._GRegex** %9, align 8, !dbg !280
  %52 = icmp ne %struct._GRegex* %51, null, !dbg !280
  br i1 %52, label %53, label %55, !dbg !282

; <label>:53:                                     ; preds = %50
  %54 = load %struct._GRegex*, %struct._GRegex** %9, align 8, !dbg !283
  call void @g_regex_unref(%struct._GRegex* %54), !dbg !285
  br label %55, !dbg !286

; <label>:55:                                     ; preds = %53, %50
  %56 = load i32, i32* %7, align 4, !dbg !287
  ret i32 %56, !dbg !288
}

declare %struct._GList* @g_list_last(%struct._GList*) #2

declare %struct._GList* @g_list_first(%struct._GList*) #2

; Function Attrs: nounwind uwtable
define internal i32 @CompareFile(i8*, i8*, i32*) #0 !dbg !289 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct._GMappedFile*, align 8
  %10 = alloca %struct._GMappedFile*, align 8
  %11 = alloca %struct._GError*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !293, metadata !46), !dbg !294
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !295, metadata !46), !dbg !296
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !297, metadata !46), !dbg !298
  call void @llvm.dbg.declare(metadata i64* %7, metadata !299, metadata !46), !dbg !302
  call void @llvm.dbg.declare(metadata i32* %8, metadata !303, metadata !46), !dbg !304
  store i32 0, i32* %8, align 4, !dbg !304
  call void @llvm.dbg.declare(metadata %struct._GMappedFile** %9, metadata !305, metadata !46), !dbg !310
  call void @llvm.dbg.declare(metadata %struct._GMappedFile** %10, metadata !311, metadata !46), !dbg !312
  store %struct._GMappedFile* null, %struct._GMappedFile** %10, align 8, !dbg !312
  call void @llvm.dbg.declare(metadata %struct._GError** %11, metadata !313, metadata !46), !dbg !314
  store %struct._GError* null, %struct._GError** %11, align 8, !dbg !314
  %12 = load i8*, i8** %4, align 8, !dbg !315
  %13 = call noalias %struct._GMappedFile* @g_mapped_file_new(i8* %12, i32 0, %struct._GError** %11), !dbg !316
  store %struct._GMappedFile* %13, %struct._GMappedFile** %9, align 8, !dbg !317
  %14 = load %struct._GMappedFile*, %struct._GMappedFile** %9, align 8, !dbg !318
  %15 = icmp eq %struct._GMappedFile* %14, null, !dbg !320
  br i1 %15, label %16, label %24, !dbg !321

; <label>:16:                                     ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !322
  %18 = call i8* @g_get_prgname(), !dbg !324
  %19 = load i8*, i8** %4, align 8, !dbg !325
  %20 = load %struct._GError*, %struct._GError** %11, align 8, !dbg !326
  %21 = getelementptr inbounds %struct._GError, %struct._GError* %20, i32 0, i32 2, !dbg !327
  %22 = load i8*, i8** %21, align 8, !dbg !327
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0), i8* %18, i8* %19, i8* %22), !dbg !328
  br label %63, !dbg !330

; <label>:24:                                     ; preds = %3
  %25 = load i8*, i8** %5, align 8, !dbg !331
  %26 = call noalias %struct._GMappedFile* @g_mapped_file_new(i8* %25, i32 0, %struct._GError** %11), !dbg !332
  store %struct._GMappedFile* %26, %struct._GMappedFile** %10, align 8, !dbg !333
  %27 = load %struct._GMappedFile*, %struct._GMappedFile** %10, align 8, !dbg !334
  %28 = icmp eq %struct._GMappedFile* %27, null, !dbg !336
  br i1 %28, label %29, label %37, !dbg !337

; <label>:29:                                     ; preds = %24
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !338
  %31 = call i8* @g_get_prgname(), !dbg !340
  %32 = load i8*, i8** %5, align 8, !dbg !341
  %33 = load %struct._GError*, %struct._GError** %11, align 8, !dbg !342
  %34 = getelementptr inbounds %struct._GError, %struct._GError* %33, i32 0, i32 2, !dbg !343
  %35 = load i8*, i8** %34, align 8, !dbg !343
  %36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0), i8* %31, i8* %32, i8* %35), !dbg !344
  br label %63, !dbg !346

; <label>:37:                                     ; preds = %24
  store i32 1, i32* %8, align 4, !dbg !347
  %38 = load i32*, i32** %6, align 8, !dbg !348
  store i32 0, i32* %38, align 4, !dbg !349
  %39 = load %struct._GMappedFile*, %struct._GMappedFile** %9, align 8, !dbg !350
  %40 = call i64 @g_mapped_file_get_length(%struct._GMappedFile* %39), !dbg !351
  store i64 %40, i64* %7, align 8, !dbg !352
  %41 = load %struct._GMappedFile*, %struct._GMappedFile** %10, align 8, !dbg !353
  %42 = call i64 @g_mapped_file_get_length(%struct._GMappedFile* %41), !dbg !355
  %43 = load i64, i64* %7, align 8, !dbg !356
  %44 = icmp eq i64 %42, %43, !dbg !357
  br i1 %44, label %45, label %62, !dbg !358

; <label>:45:                                     ; preds = %37
  %46 = load i64, i64* %7, align 8, !dbg !359
  %47 = icmp ne i64 %46, 0, !dbg !359
  br i1 %47, label %48, label %59, !dbg !362

; <label>:48:                                     ; preds = %45
  %49 = load %struct._GMappedFile*, %struct._GMappedFile** %9, align 8, !dbg !363
  %50 = call i8* @g_mapped_file_get_contents(%struct._GMappedFile* %49), !dbg !366
  %51 = load %struct._GMappedFile*, %struct._GMappedFile** %10, align 8, !dbg !367
  %52 = call i8* @g_mapped_file_get_contents(%struct._GMappedFile* %51), !dbg !368
  %53 = load i64, i64* %7, align 8, !dbg !369
  %54 = call i32 @memcmp(i8* %50, i8* %52, i64 %53) #6, !dbg !370
  %55 = icmp eq i32 %54, 0, !dbg !372
  br i1 %55, label %56, label %58, !dbg !373

; <label>:56:                                     ; preds = %48
  %57 = load i32*, i32** %6, align 8, !dbg !374
  store i32 1, i32* %57, align 4, !dbg !376
  br label %58, !dbg !377

; <label>:58:                                     ; preds = %56, %48
  br label %61, !dbg !378

; <label>:59:                                     ; preds = %45
  %60 = load i32*, i32** %6, align 8, !dbg !379
  store i32 1, i32* %60, align 4, !dbg !381
  br label %61

; <label>:61:                                     ; preds = %59, %58
  br label %62, !dbg !382

; <label>:62:                                     ; preds = %61, %37
  br label %63, !dbg !383

; <label>:63:                                     ; preds = %62, %29, %16
  call void @g_clear_error(%struct._GError** %11), !dbg !385
  %64 = load %struct._GMappedFile*, %struct._GMappedFile** %9, align 8, !dbg !386
  %65 = icmp ne %struct._GMappedFile* %64, null, !dbg !386
  br i1 %65, label %66, label %68, !dbg !388

; <label>:66:                                     ; preds = %63
  %67 = load %struct._GMappedFile*, %struct._GMappedFile** %9, align 8, !dbg !389
  call void @g_mapped_file_unref(%struct._GMappedFile* %67), !dbg !391
  br label %68, !dbg !392

; <label>:68:                                     ; preds = %66, %63
  %69 = load %struct._GMappedFile*, %struct._GMappedFile** %10, align 8, !dbg !393
  %70 = icmp ne %struct._GMappedFile* %69, null, !dbg !393
  br i1 %70, label %71, label %73, !dbg !395

; <label>:71:                                     ; preds = %68
  %72 = load %struct._GMappedFile*, %struct._GMappedFile** %10, align 8, !dbg !396
  call void @g_mapped_file_unref(%struct._GMappedFile* %72), !dbg !398
  br label %73, !dbg !399

; <label>:73:                                     ; preds = %71, %68
  %74 = load i32, i32* %8, align 4, !dbg !400
  ret i32 %74, !dbg !401
}

declare void @g_list_free(%struct._GList*) #2

; Function Attrs: nounwind uwtable
define i8* @CertUtil_GetToolDir() #0 !dbg !29 {
  %1 = load i8*, i8** @CertUtil_GetToolDir.path, align 8, !dbg !402
  %2 = icmp ne i8* %1, null, !dbg !402
  br i1 %2, label %5, label %3, !dbg !404

; <label>:3:                                      ; preds = %0
  %4 = call noalias i8* (i8*, ...) @g_build_filename(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* null), !dbg !405
  store i8* %4, i8** @CertUtil_GetToolDir.path, align 8, !dbg !407
  br label %5, !dbg !408

; <label>:5:                                      ; preds = %3, %0
  %6 = load i8*, i8** @CertUtil_GetToolDir.path, align 8, !dbg !409
  ret i8* %6, !dbg !410
}

; Function Attrs: nounwind uwtable
define i32 @CertUtil_CopyFile(i8*, i8*) #0 !dbg !411 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._GMappedFile*, align 8
  %8 = alloca %struct._GError*, align 8
  %9 = alloca %struct._IO_FILE*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !414, metadata !46), !dbg !415
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !416, metadata !46), !dbg !417
  call void @llvm.dbg.declare(metadata i64* %5, metadata !418, metadata !46), !dbg !419
  call void @llvm.dbg.declare(metadata i32* %6, metadata !420, metadata !46), !dbg !421
  store i32 0, i32* %6, align 4, !dbg !421
  call void @llvm.dbg.declare(metadata %struct._GMappedFile** %7, metadata !422, metadata !46), !dbg !423
  call void @llvm.dbg.declare(metadata %struct._GError** %8, metadata !424, metadata !46), !dbg !425
  store %struct._GError* null, %struct._GError** %8, align 8, !dbg !425
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %9, metadata !426, metadata !46), !dbg !485
  store %struct._IO_FILE* null, %struct._IO_FILE** %9, align 8, !dbg !485
  call void @llvm.dbg.declare(metadata i8** %10, metadata !486, metadata !46), !dbg !487
  %11 = load i8*, i8** %3, align 8, !dbg !488
  %12 = call noalias %struct._GMappedFile* @g_mapped_file_new(i8* %11, i32 0, %struct._GError** %8), !dbg !489
  store %struct._GMappedFile* %12, %struct._GMappedFile** %7, align 8, !dbg !490
  %13 = load %struct._GMappedFile*, %struct._GMappedFile** %7, align 8, !dbg !491
  %14 = icmp ne %struct._GMappedFile* %13, null, !dbg !491
  br i1 %14, label %23, label %15, !dbg !493

; <label>:15:                                     ; preds = %2
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !494
  %17 = call i8* @g_get_prgname(), !dbg !496
  %18 = load i8*, i8** %3, align 8, !dbg !497
  %19 = load %struct._GError*, %struct._GError** %8, align 8, !dbg !498
  %20 = getelementptr inbounds %struct._GError, %struct._GError* %19, i32 0, i32 2, !dbg !499
  %21 = load i8*, i8** %20, align 8, !dbg !499
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0), i8* %17, i8* %18, i8* %21), !dbg !500
  br label %57, !dbg !502

; <label>:23:                                     ; preds = %2
  %24 = load i8*, i8** %4, align 8, !dbg !503
  %25 = call %struct._IO_FILE* @fopen64(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)), !dbg !504
  store %struct._IO_FILE* %25, %struct._IO_FILE** %9, align 8, !dbg !505
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !506
  %27 = icmp ne %struct._IO_FILE* %26, null, !dbg !506
  br i1 %27, label %36, label %28, !dbg !508

; <label>:28:                                     ; preds = %23
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !509
  %30 = call i8* @g_get_prgname(), !dbg !511
  %31 = load i8*, i8** %4, align 8, !dbg !512
  %32 = call i32* @__errno_location() #1, !dbg !513
  %33 = load i32, i32* %32, align 4, !dbg !515
  %34 = call i8* @strerror(i32 %33) #7, !dbg !516
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0), i8* %30, i8* %31, i8* %34), !dbg !518
  br label %57, !dbg !520

; <label>:36:                                     ; preds = %23
  %37 = load %struct._GMappedFile*, %struct._GMappedFile** %7, align 8, !dbg !521
  %38 = call i64 @g_mapped_file_get_length(%struct._GMappedFile* %37), !dbg !522
  store i64 %38, i64* %5, align 8, !dbg !523
  %39 = load %struct._GMappedFile*, %struct._GMappedFile** %7, align 8, !dbg !524
  %40 = call i8* @g_mapped_file_get_contents(%struct._GMappedFile* %39), !dbg !525
  store i8* %40, i8** %10, align 8, !dbg !526
  %41 = load i8*, i8** %10, align 8, !dbg !527
  %42 = load i64, i64* %5, align 8, !dbg !529
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !530
  %44 = call i64 @fwrite(i8* %41, i64 1, i64 %42, %struct._IO_FILE* %43), !dbg !531
  %45 = load i64, i64* %5, align 8, !dbg !532
  %46 = icmp ult i64 %44, %45, !dbg !533
  br i1 %46, label %47, label %56, !dbg !534

; <label>:47:                                     ; preds = %36
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !535
  %49 = call i8* @g_get_prgname(), !dbg !537
  %50 = load i8*, i8** %3, align 8, !dbg !538
  %51 = load i8*, i8** %4, align 8, !dbg !539
  %52 = call i32* @__errno_location() #1, !dbg !540
  %53 = load i32, i32* %52, align 4, !dbg !542
  %54 = call i8* @strerror(i32 %53) #7, !dbg !543
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i32 0, i32 0), i8* %49, i8* %50, i8* %51, i8* %54), !dbg !545
  br label %57, !dbg !547

; <label>:56:                                     ; preds = %36
  store i32 1, i32* %6, align 4, !dbg !548
  br label %57, !dbg !549

; <label>:57:                                     ; preds = %56, %47, %28, %15
  call void @g_clear_error(%struct._GError** %8), !dbg !550
  %58 = load %struct._GMappedFile*, %struct._GMappedFile** %7, align 8, !dbg !551
  %59 = icmp ne %struct._GMappedFile* %58, null, !dbg !551
  br i1 %59, label %60, label %62, !dbg !553

; <label>:60:                                     ; preds = %57
  %61 = load %struct._GMappedFile*, %struct._GMappedFile** %7, align 8, !dbg !554
  call void @g_mapped_file_unref(%struct._GMappedFile* %61), !dbg !556
  br label %62, !dbg !557

; <label>:62:                                     ; preds = %60, %57
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !558
  %64 = icmp ne %struct._IO_FILE* %63, null, !dbg !558
  br i1 %64, label %65, label %68, !dbg !560

; <label>:65:                                     ; preds = %62
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !561
  %67 = call i32 @fclose(%struct._IO_FILE* %66), !dbg !563
  br label %68, !dbg !564

; <label>:68:                                     ; preds = %65, %62
  %69 = load i32, i32* %6, align 4, !dbg !565
  ret i32 %69, !dbg !566
}

declare noalias %struct._GMappedFile* @g_mapped_file_new(i8*, i32, %struct._GError**) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i8* @g_get_prgname() #2

declare %struct._IO_FILE* @fopen64(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @strerror(i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

declare i64 @g_mapped_file_get_length(%struct._GMappedFile*) #2

declare i8* @g_mapped_file_get_contents(%struct._GMappedFile*) #2

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #2

declare void @g_clear_error(%struct._GError**) #2

declare void @g_mapped_file_unref(%struct._GMappedFile*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define i32 @CertUtil_RemoveDir(i8*) #0 !dbg !567 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._GDir*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._GError*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !570, metadata !46), !dbg !571
  call void @llvm.dbg.declare(metadata i32* %3, metadata !572, metadata !46), !dbg !573
  store i32 0, i32* %3, align 4, !dbg !573
  call void @llvm.dbg.declare(metadata %struct._GDir** %4, metadata !574, metadata !46), !dbg !575
  store %struct._GDir* null, %struct._GDir** %4, align 8, !dbg !575
  call void @llvm.dbg.declare(metadata i8** %5, metadata !576, metadata !46), !dbg !577
  call void @llvm.dbg.declare(metadata %struct._GError** %6, metadata !578, metadata !46), !dbg !579
  store %struct._GError* null, %struct._GError** %6, align 8, !dbg !579
  call void @llvm.dbg.declare(metadata i8** %7, metadata !580, metadata !46), !dbg !581
  store i8* null, i8** %7, align 8, !dbg !581
  %8 = load i8*, i8** %2, align 8, !dbg !582
  %9 = call %struct._GDir* @g_dir_open(i8* %8, i32 0, %struct._GError** %6), !dbg !584
  store %struct._GDir* %9, %struct._GDir** %4, align 8, !dbg !585
  %10 = icmp eq %struct._GDir* %9, null, !dbg !586
  br i1 %10, label %11, label %19, !dbg !587

; <label>:11:                                     ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !588
  %13 = call i8* @g_get_prgname(), !dbg !590
  %14 = load i8*, i8** %2, align 8, !dbg !591
  %15 = load %struct._GError*, %struct._GError** %6, align 8, !dbg !592
  %16 = getelementptr inbounds %struct._GError, %struct._GError* %15, i32 0, i32 2, !dbg !593
  %17 = load i8*, i8** %16, align 8, !dbg !593
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0), i8* %13, i8* %14, i8* %17), !dbg !594
  br label %64, !dbg !596

; <label>:19:                                     ; preds = %1
  br label %20, !dbg !597

; <label>:20:                                     ; preds = %52, %19
  %21 = load %struct._GDir*, %struct._GDir** %4, align 8, !dbg !598
  %22 = call i8* @g_dir_read_name(%struct._GDir* %21), !dbg !600
  store i8* %22, i8** %5, align 8, !dbg !601
  %23 = icmp ne i8* %22, null, !dbg !602
  br i1 %23, label %24, label %53, !dbg !603

; <label>:24:                                     ; preds = %20
  %25 = load i8*, i8** %7, align 8, !dbg !604
  call void @g_free(i8* %25), !dbg !606
  %26 = load i8*, i8** %2, align 8, !dbg !607
  %27 = load i8*, i8** %5, align 8, !dbg !608
  %28 = call noalias i8* (i8*, ...) @g_build_filename(i8* %26, i8* %27, i8* null), !dbg !609
  store i8* %28, i8** %7, align 8, !dbg !610
  %29 = load i8*, i8** %7, align 8, !dbg !611
  %30 = call i32 @g_file_test(i8* %29, i32 4), !dbg !613
  %31 = icmp ne i32 %30, 0, !dbg !613
  br i1 %31, label %32, label %42, !dbg !614

; <label>:32:                                     ; preds = %24
  %33 = load i8*, i8** %7, align 8, !dbg !615
  %34 = call i32 @CertUtil_RemoveDir(i8* %33), !dbg !618
  %35 = icmp ne i32 %34, 0, !dbg !618
  br i1 %35, label %41, label %36, !dbg !619

; <label>:36:                                     ; preds = %32
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !620
  %38 = call i8* @g_get_prgname(), !dbg !622
  %39 = load i8*, i8** %7, align 8, !dbg !623
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i32 0, i32 0), i8* %38, i8* %39), !dbg !624
  br label %64, !dbg !626

; <label>:41:                                     ; preds = %32
  br label %52, !dbg !627

; <label>:42:                                     ; preds = %24
  %43 = load i8*, i8** %7, align 8, !dbg !628
  %44 = call i32 @remove(i8* %43) #7, !dbg !631
  %45 = icmp slt i32 %44, 0, !dbg !632
  br i1 %45, label %46, label %51, !dbg !631

; <label>:46:                                     ; preds = %42
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !633
  %48 = call i8* @g_get_prgname(), !dbg !635
  %49 = load i8*, i8** %7, align 8, !dbg !636
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i32 0, i32 0), i8* %48, i8* %49), !dbg !637
  br label %64, !dbg !639

; <label>:51:                                     ; preds = %42
  br label %52

; <label>:52:                                     ; preds = %51, %41
  br label %20, !dbg !640, !llvm.loop !642

; <label>:53:                                     ; preds = %20
  %54 = load %struct._GDir*, %struct._GDir** %4, align 8, !dbg !643
  call void @g_dir_close(%struct._GDir* %54), !dbg !644
  store %struct._GDir* null, %struct._GDir** %4, align 8, !dbg !645
  %55 = load i8*, i8** %2, align 8, !dbg !646
  %56 = call i32 @g_rmdir(i8* %55), !dbg !648
  %57 = icmp slt i32 %56, 0, !dbg !649
  br i1 %57, label %58, label %63, !dbg !650

; <label>:58:                                     ; preds = %53
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !651
  %60 = call i8* @g_get_prgname(), !dbg !653
  %61 = load i8*, i8** %2, align 8, !dbg !654
  %62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i32 0, i32 0), i8* %60, i8* %61), !dbg !655
  br label %64, !dbg !657

; <label>:63:                                     ; preds = %53
  store i32 1, i32* %3, align 4, !dbg !658
  br label %64, !dbg !659

; <label>:64:                                     ; preds = %63, %58, %46, %36, %11
  %65 = load i8*, i8** %7, align 8, !dbg !660
  call void @g_free(i8* %65), !dbg !661
  call void @g_clear_error(%struct._GError** %6), !dbg !662
  %66 = load %struct._GDir*, %struct._GDir** %4, align 8, !dbg !663
  %67 = icmp ne %struct._GDir* %66, null, !dbg !663
  br i1 %67, label %68, label %70, !dbg !665

; <label>:68:                                     ; preds = %64
  %69 = load %struct._GDir*, %struct._GDir** %4, align 8, !dbg !666
  call void @g_dir_close(%struct._GDir* %69), !dbg !668
  br label %70, !dbg !669

; <label>:70:                                     ; preds = %68, %64
  %71 = load i32, i32* %3, align 4, !dbg !670
  ret i32 %71, !dbg !671
}

declare %struct._GDir* @g_dir_open(i8*, i32, %struct._GError**) #2

declare i8* @g_dir_read_name(%struct._GDir*) #2

declare i32 @g_file_test(i8*, i32) #2

; Function Attrs: nounwind
declare i32 @remove(i8*) #3

declare void @g_dir_close(%struct._GDir*) #2

declare i32 @g_rmdir(i8*) #2

declare %struct._GRegex* @g_regex_new(i8*, i32, i32, %struct._GError**) #2

; Function Attrs: nounwind uwtable
define internal %struct._GList* @MatchFile(%struct._GDir*, %struct._GRegex*) #0 !dbg !672 {
  %3 = alloca %struct._GDir*, align 8
  %4 = alloca %struct._GRegex*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._GList*, align 8
  store %struct._GDir* %0, %struct._GDir** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GDir** %3, metadata !675, metadata !46), !dbg !676
  store %struct._GRegex* %1, %struct._GRegex** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GRegex** %4, metadata !677, metadata !46), !dbg !678
  call void @llvm.dbg.declare(metadata i8** %5, metadata !679, metadata !46), !dbg !680
  call void @llvm.dbg.declare(metadata i8** %6, metadata !681, metadata !46), !dbg !682
  call void @llvm.dbg.declare(metadata %struct._GList** %7, metadata !683, metadata !46), !dbg !684
  store %struct._GList* null, %struct._GList** %7, align 8, !dbg !684
  br label %8, !dbg !685

; <label>:8:                                      ; preds = %27, %2
  %9 = load %struct._GDir*, %struct._GDir** %3, align 8, !dbg !686
  %10 = call i8* @g_dir_read_name(%struct._GDir* %9), !dbg !688
  store i8* %10, i8** %5, align 8, !dbg !689
  %11 = icmp ne i8* %10, null, !dbg !690
  br i1 %11, label %12, label %28, !dbg !691

; <label>:12:                                     ; preds = %8
  %13 = load %struct._GRegex*, %struct._GRegex** %4, align 8, !dbg !692
  %14 = load i8*, i8** %5, align 8, !dbg !695
  %15 = call i32 @g_regex_match(%struct._GRegex* %13, i8* %14, i32 0, %struct._GMatchInfo** null), !dbg !696
  %16 = icmp ne i32 %15, 0, !dbg !696
  br i1 %16, label %17, label %27, !dbg !697

; <label>:17:                                     ; preds = %12
  %18 = load i8*, i8** %5, align 8, !dbg !698
  %19 = call i8* @strrchr(i8* %18, i32 46) #6, !dbg !700
  store i8* %19, i8** %6, align 8, !dbg !701
  %20 = load %struct._GList*, %struct._GList** %7, align 8, !dbg !702
  %21 = load i8*, i8** %6, align 8, !dbg !703
  %22 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !704
  %23 = call i32 @atoi(i8* %22) #6, !dbg !705
  %24 = sext i32 %23 to i64, !dbg !706
  %25 = inttoptr i64 %24 to i8*, !dbg !707
  %26 = call %struct._GList* @g_list_prepend(%struct._GList* %20, i8* %25), !dbg !708
  store %struct._GList* %26, %struct._GList** %7, align 8, !dbg !710
  br label %27, !dbg !711

; <label>:27:                                     ; preds = %17, %12
  br label %8, !dbg !712, !llvm.loop !714

; <label>:28:                                     ; preds = %8
  %29 = load %struct._GList*, %struct._GList** %7, align 8, !dbg !715
  %30 = call %struct._GList* @g_list_sort(%struct._GList* %29, i32 (i8*, i8*)* @IntCmp), !dbg !716
  store %struct._GList* %30, %struct._GList** %7, align 8, !dbg !717
  %31 = load %struct._GList*, %struct._GList** %7, align 8, !dbg !718
  ret %struct._GList* %31, !dbg !719
}

declare void @g_regex_unref(%struct._GRegex*) #2

declare i32 @g_regex_match(%struct._GRegex*, i8*, i32, %struct._GMatchInfo**) #2

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #5

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #5

declare %struct._GList* @g_list_sort(%struct._GList*, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @IntCmp(i8*, i8*) #0 !dbg !720 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !726, metadata !46), !dbg !727
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !728, metadata !46), !dbg !729
  call void @llvm.dbg.declare(metadata i32* %5, metadata !730, metadata !46), !dbg !731
  %7 = load i8*, i8** %3, align 8, !dbg !732
  %8 = ptrtoint i8* %7 to i64, !dbg !733
  %9 = trunc i64 %8 to i32, !dbg !734
  store i32 %9, i32* %5, align 4, !dbg !731
  call void @llvm.dbg.declare(metadata i32* %6, metadata !735, metadata !46), !dbg !736
  %10 = load i8*, i8** %4, align 8, !dbg !737
  %11 = ptrtoint i8* %10 to i64, !dbg !738
  %12 = trunc i64 %11 to i32, !dbg !739
  store i32 %12, i32* %6, align 4, !dbg !736
  %13 = load i32, i32* %5, align 4, !dbg !740
  %14 = load i32, i32* %6, align 4, !dbg !741
  %15 = sub nsw i32 %13, %14, !dbg !742
  ret i32 %15, !dbg !743
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!39, !40}
!llvm.ident = !{!41}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !11, globals: !27)
!1 = !DIFile(filename: "vmware_guestproxycerttool-cert_util.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1364")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 66, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/glib-2.0/glib/gfileutils.h", directory: "/home/lichi/Desktop/open-vm-tools/line1364")
!5 = !{!6, !7, !8, !9, !10}
!6 = !DIEnumerator(name: "G_FILE_TEST_IS_REGULAR", value: 1)
!7 = !DIEnumerator(name: "G_FILE_TEST_IS_SYMLINK", value: 2)
!8 = !DIEnumerator(name: "G_FILE_TEST_IS_DIR", value: 4)
!9 = !DIEnumerator(name: "G_FILE_TEST_IS_EXECUTABLE", value: 8)
!10 = !DIEnumerator(name: "G_FILE_TEST_EXISTS", value: 16)
!11 = !{!12, !13, !16, !18, !24}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !14, line: 49, baseType: !15)
!14 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1364")
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !14, line: 48, baseType: !17)
!17 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "GList", file: !20, line: 37, baseType: !21)
!20 = !DIFile(filename: "/usr/include/glib-2.0/glib/glist.h", directory: "/home/lichi/Desktop/open-vm-tools/line1364")
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GList", file: !20, line: 39, size: 192, align: 64, elements: !22)
!22 = !{!23, !25, !26}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !21, file: !20, line: 41, baseType: !24, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !14, line: 77, baseType: !12)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !21, file: !20, line: 42, baseType: !18, size: 64, align: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !21, file: !20, line: 43, baseType: !18, size: 64, align: 64, offset: 128)
!27 = !{!28}
!28 = distinct !DIGlobalVariable(name: "path", scope: !29, file: !30, line: 360, type: !38, isLocal: true, isDefinition: true, variable: i8** @CertUtil_GetToolDir.path)
!29 = distinct !DISubprogram(name: "CertUtil_GetToolDir", scope: !30, file: !30, line: 358, type: !31, isLocal: false, isDefinition: true, scopeLine: 359, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !37)
!30 = !DIFile(filename: "cert_util.c", directory: "/home/lichi/Desktop/open-vm-tools/line1364")
!31 = !DISubroutineType(types: !32)
!32 = !{!33}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !14, line: 46, baseType: !36)
!36 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!37 = !{}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!39 = !{i32 2, !"Dwarf Version", i32 4}
!40 = !{i32 2, !"Debug Info Version", i32 3}
!41 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!42 = distinct !DISubprogram(name: "CertUtil_CreateCertFileName", scope: !30, file: !30, line: 122, type: !43, isLocal: false, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !37)
!43 = !DISubroutineType(types: !44)
!44 = !{!38, !33, !33, !15}
!45 = !DILocalVariable(name: "certDir", arg: 1, scope: !42, file: !30, line: 122, type: !33)
!46 = !DIExpression()
!47 = !DILocation(line: 122, column: 42, scope: !42)
!48 = !DILocalVariable(name: "hash", arg: 2, scope: !42, file: !30, line: 123, type: !33)
!49 = !DILocation(line: 123, column: 42, scope: !42)
!50 = !DILocalVariable(name: "version", arg: 3, scope: !42, file: !30, line: 124, type: !15)
!51 = !DILocation(line: 124, column: 33, scope: !42)
!52 = !DILocalVariable(name: "ret", scope: !42, file: !30, line: 126, type: !38)
!53 = !DILocation(line: 126, column: 11, scope: !42)
!54 = !DILocalVariable(name: "tmp", scope: !42, file: !30, line: 127, type: !38)
!55 = !DILocation(line: 127, column: 11, scope: !42)
!56 = !DILocation(line: 129, column: 35, scope: !42)
!57 = !DILocation(line: 129, column: 41, scope: !42)
!58 = !DILocation(line: 129, column: 10, scope: !42)
!59 = !DILocation(line: 129, column: 8, scope: !42)
!60 = !DILocation(line: 130, column: 27, scope: !42)
!61 = !DILocation(line: 130, column: 36, scope: !42)
!62 = !DILocation(line: 130, column: 10, scope: !42)
!63 = !DILocation(line: 130, column: 8, scope: !42)
!64 = !DILocation(line: 132, column: 11, scope: !42)
!65 = !DILocation(line: 132, column: 4, scope: !42)
!66 = !DILocation(line: 133, column: 11, scope: !42)
!67 = !DILocation(line: 133, column: 4, scope: !42)
!68 = distinct !DISubprogram(name: "CertUtil_FindCert", scope: !30, file: !30, line: 286, type: !69, isLocal: false, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !37)
!69 = !DISubroutineType(types: !70)
!70 = !{!71, !33, !33, !33, !72, !72}
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !14, line: 50, baseType: !13)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!73 = !DILocalVariable(name: "certFile", arg: 1, scope: !68, file: !30, line: 286, type: !33)
!74 = !DILocation(line: 286, column: 32, scope: !68)
!75 = !DILocalVariable(name: "certDir", arg: 2, scope: !68, file: !30, line: 287, type: !33)
!76 = !DILocation(line: 287, column: 32, scope: !68)
!77 = !DILocalVariable(name: "hash", arg: 3, scope: !68, file: !30, line: 288, type: !33)
!78 = !DILocation(line: 288, column: 32, scope: !68)
!79 = !DILocalVariable(name: "num", arg: 4, scope: !68, file: !30, line: 289, type: !72)
!80 = !DILocation(line: 289, column: 24, scope: !68)
!81 = !DILocalVariable(name: "last", arg: 5, scope: !68, file: !30, line: 290, type: !72)
!82 = !DILocation(line: 290, column: 24, scope: !68)
!83 = !DILocalVariable(name: "ret", scope: !68, file: !30, line: 292, type: !71)
!84 = !DILocation(line: 292, column: 13, scope: !68)
!85 = !DILocalVariable(name: "node", scope: !68, file: !30, line: 293, type: !86)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!88 = !DILocation(line: 293, column: 17, scope: !68)
!89 = !DILocalVariable(name: "list", scope: !68, file: !30, line: 294, type: !18)
!90 = !DILocation(line: 294, column: 11, scope: !68)
!91 = !DILocalVariable(name: "path", scope: !68, file: !30, line: 295, type: !38)
!92 = !DILocation(line: 295, column: 11, scope: !68)
!93 = !DILocation(line: 297, column: 13, scope: !68)
!94 = !DILocation(line: 297, column: 17, scope: !68)
!95 = !DILocation(line: 297, column: 5, scope: !68)
!96 = !DILocation(line: 297, column: 10, scope: !68)
!97 = !DILocation(line: 298, column: 20, scope: !98)
!98 = distinct !DILexicalBlock(scope: !68, file: !30, line: 298, column: 8)
!99 = !DILocation(line: 298, column: 29, scope: !98)
!100 = !DILocation(line: 298, column: 9, scope: !98)
!101 = !DILocation(line: 298, column: 8, scope: !68)
!102 = !DILocation(line: 299, column: 7, scope: !103)
!103 = distinct !DILexicalBlock(scope: !98, file: !30, line: 298, column: 43)
!104 = !DILocation(line: 302, column: 8, scope: !68)
!105 = !DILocation(line: 303, column: 9, scope: !106)
!106 = distinct !DILexicalBlock(scope: !68, file: !30, line: 303, column: 8)
!107 = !DILocation(line: 303, column: 8, scope: !68)
!108 = !DILocation(line: 304, column: 7, scope: !109)
!109 = distinct !DILexicalBlock(scope: !106, file: !30, line: 303, column: 15)
!110 = !DILocation(line: 308, column: 23, scope: !68)
!111 = !DILocation(line: 308, column: 11, scope: !68)
!112 = !DILocation(line: 308, column: 9, scope: !68)
!113 = !DILocation(line: 309, column: 29, scope: !68)
!114 = !DILocation(line: 309, column: 35, scope: !68)
!115 = !DILocation(line: 309, column: 20, scope: !68)
!116 = !DILocation(line: 309, column: 13, scope: !68)
!117 = !DILocation(line: 309, column: 5, scope: !68)
!118 = !DILocation(line: 309, column: 10, scope: !68)
!119 = !DILocation(line: 311, column: 29, scope: !120)
!120 = distinct !DILexicalBlock(scope: !68, file: !30, line: 311, column: 4)
!121 = !DILocation(line: 311, column: 16, scope: !120)
!122 = !DILocation(line: 311, column: 14, scope: !120)
!123 = !DILocation(line: 311, column: 9, scope: !120)
!124 = !DILocation(line: 311, column: 36, scope: !125)
!125 = !DILexicalBlockFile(scope: !126, file: !30, discriminator: 1)
!126 = distinct !DILexicalBlock(scope: !120, file: !30, line: 311, column: 4)
!127 = !DILocation(line: 311, column: 4, scope: !125)
!128 = !DILocalVariable(name: "same", scope: !129, file: !30, line: 312, type: !71)
!129 = distinct !DILexicalBlock(scope: !126, file: !30, line: 311, column: 51)
!130 = !DILocation(line: 312, column: 16, scope: !129)
!131 = !DILocalVariable(name: "ext", scope: !129, file: !30, line: 313, type: !15)
!132 = !DILocation(line: 313, column: 11, scope: !129)
!133 = !DILocation(line: 313, column: 34, scope: !129)
!134 = !DILocation(line: 313, column: 40, scope: !129)
!135 = !DILocation(line: 313, column: 25, scope: !129)
!136 = !DILocation(line: 313, column: 18, scope: !129)
!137 = !DILocation(line: 315, column: 14, scope: !129)
!138 = !DILocation(line: 315, column: 7, scope: !129)
!139 = !DILocation(line: 316, column: 42, scope: !129)
!140 = !DILocation(line: 316, column: 51, scope: !129)
!141 = !DILocation(line: 316, column: 57, scope: !129)
!142 = !DILocation(line: 316, column: 14, scope: !129)
!143 = !DILocation(line: 316, column: 12, scope: !129)
!144 = !DILocation(line: 318, column: 24, scope: !145)
!145 = distinct !DILexicalBlock(scope: !129, file: !30, line: 318, column: 11)
!146 = !DILocation(line: 318, column: 34, scope: !145)
!147 = !DILocation(line: 318, column: 12, scope: !145)
!148 = !DILocation(line: 318, column: 11, scope: !129)
!149 = !DILocation(line: 319, column: 14, scope: !150)
!150 = distinct !DILexicalBlock(scope: !145, file: !30, line: 318, column: 48)
!151 = !DILocation(line: 320, column: 10, scope: !150)
!152 = !DILocation(line: 323, column: 11, scope: !153)
!153 = distinct !DILexicalBlock(scope: !129, file: !30, line: 323, column: 11)
!154 = !DILocation(line: 323, column: 11, scope: !129)
!155 = !DILocation(line: 324, column: 17, scope: !156)
!156 = distinct !DILexicalBlock(scope: !153, file: !30, line: 323, column: 17)
!157 = !DILocation(line: 324, column: 11, scope: !156)
!158 = !DILocation(line: 324, column: 15, scope: !156)
!159 = !DILocation(line: 325, column: 10, scope: !156)
!160 = !DILocation(line: 327, column: 4, scope: !129)
!161 = !DILocation(line: 311, column: 51, scope: !162)
!162 = !DILexicalBlockFile(scope: !126, file: !30, discriminator: 2)
!163 = !DILocation(line: 311, column: 50, scope: !162)
!164 = !DILocation(line: 311, column: 71, scope: !165)
!165 = !DILexicalBlockFile(scope: !126, file: !30, discriminator: 3)
!166 = !DILocation(line: 311, column: 79, scope: !165)
!167 = !DILocation(line: 311, column: 50, scope: !165)
!168 = !DILocation(line: 311, column: 50, scope: !169)
!169 = !DILexicalBlockFile(scope: !126, file: !30, discriminator: 4)
!170 = !DILocation(line: 311, column: 50, scope: !171)
!171 = !DILexicalBlockFile(scope: !126, file: !30, discriminator: 5)
!172 = !DILocation(line: 311, column: 47, scope: !171)
!173 = !DILocation(line: 311, column: 4, scope: !171)
!174 = distinct !{!174, !175}
!175 = !DILocation(line: 311, column: 4, scope: !68)
!176 = !DILocation(line: 327, column: 4, scope: !177)
!177 = !DILexicalBlockFile(scope: !120, file: !30, discriminator: 1)
!178 = !DILocation(line: 330, column: 11, scope: !68)
!179 = !DILocation(line: 330, column: 4, scope: !68)
!180 = !DILocation(line: 331, column: 8, scope: !181)
!181 = distinct !DILexicalBlock(scope: !68, file: !30, line: 331, column: 8)
!182 = !DILocation(line: 331, column: 8, scope: !68)
!183 = !DILocation(line: 332, column: 19, scope: !184)
!184 = distinct !DILexicalBlock(scope: !181, file: !30, line: 331, column: 14)
!185 = !DILocation(line: 332, column: 7, scope: !184)
!186 = !DILocation(line: 333, column: 4, scope: !184)
!187 = !DILocation(line: 335, column: 11, scope: !68)
!188 = !DILocation(line: 335, column: 4, scope: !68)
!189 = distinct !DISubprogram(name: "SearchFile", scope: !30, file: !30, line: 223, type: !190, isLocal: true, isDefinition: true, scopeLine: 226, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !37)
!190 = !DISubroutineType(types: !191)
!191 = !{!71, !33, !33, !192}
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!193 = !DILocalVariable(name: "path", arg: 1, scope: !189, file: !30, line: 223, type: !33)
!194 = !DILocation(line: 223, column: 25, scope: !189)
!195 = !DILocalVariable(name: "fname", arg: 2, scope: !189, file: !30, line: 224, type: !33)
!196 = !DILocation(line: 224, column: 25, scope: !189)
!197 = !DILocalVariable(name: "list", arg: 3, scope: !189, file: !30, line: 225, type: !192)
!198 = !DILocation(line: 225, column: 20, scope: !189)
!199 = !DILocalVariable(name: "ret", scope: !189, file: !30, line: 227, type: !71)
!200 = !DILocation(line: 227, column: 13, scope: !189)
!201 = !DILocalVariable(name: "pattern", scope: !189, file: !30, line: 228, type: !38)
!202 = !DILocation(line: 228, column: 11, scope: !189)
!203 = !DILocalVariable(name: "regExpr", scope: !189, file: !30, line: 229, type: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "GRegex", file: !206, line: 414, baseType: !207)
!206 = !DIFile(filename: "/usr/include/glib-2.0/glib/gregex.h", directory: "/home/lichi/Desktop/open-vm-tools/line1364")
!207 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GRegex", file: !206, line: 414, flags: DIFlagFwdDecl)
!208 = !DILocation(line: 229, column: 12, scope: !189)
!209 = !DILocalVariable(name: "dir", scope: !189, file: !30, line: 230, type: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "GDir", file: !212, line: 37, baseType: !213)
!212 = !DIFile(filename: "/usr/include/glib-2.0/glib/gdir.h", directory: "/home/lichi/Desktop/open-vm-tools/line1364")
!213 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GDir", file: !212, line: 37, flags: DIFlagFwdDecl)
!214 = !DILocation(line: 230, column: 10, scope: !189)
!215 = !DILocalVariable(name: "error", scope: !189, file: !30, line: 231, type: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !218, line: 42, baseType: !219)
!218 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/open-vm-tools/line1364")
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !218, line: 44, size: 128, align: 64, elements: !220)
!220 = !{!221, !227, !228}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !219, file: !218, line: 46, baseType: !222, size: 32, align: 32)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !223, line: 36, baseType: !224)
!223 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/open-vm-tools/line1364")
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !225, line: 45, baseType: !226)
!225 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/open-vm-tools/line1364")
!226 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !219, file: !218, line: 47, baseType: !13, size: 32, align: 32, offset: 32)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !219, file: !218, line: 48, baseType: !38, size: 64, align: 64, offset: 64)
!229 = !DILocation(line: 231, column: 12, scope: !189)
!230 = !DILocation(line: 233, column: 43, scope: !189)
!231 = !DILocation(line: 233, column: 14, scope: !189)
!232 = !DILocation(line: 233, column: 12, scope: !189)
!233 = !DILocation(line: 234, column: 26, scope: !189)
!234 = !DILocation(line: 234, column: 14, scope: !189)
!235 = !DILocation(line: 234, column: 12, scope: !189)
!236 = !DILocation(line: 235, column: 9, scope: !237)
!237 = distinct !DILexicalBlock(scope: !189, file: !30, line: 235, column: 8)
!238 = !DILocation(line: 235, column: 8, scope: !189)
!239 = !DILocation(line: 236, column: 6, scope: !240)
!240 = distinct !DILexicalBlock(scope: !237, file: !30, line: 235, column: 18)
!241 = !DILocation(line: 236, column: 46, scope: !240)
!242 = !DILocation(line: 236, column: 63, scope: !240)
!243 = !DILocation(line: 236, column: 72, scope: !240)
!244 = !DILocation(line: 236, column: 79, scope: !240)
!245 = !DILocation(line: 236, column: 7, scope: !246)
!246 = !DILexicalBlockFile(scope: !240, file: !30, discriminator: 1)
!247 = !DILocation(line: 237, column: 7, scope: !240)
!248 = !DILocation(line: 240, column: 21, scope: !189)
!249 = !DILocation(line: 240, column: 10, scope: !189)
!250 = !DILocation(line: 240, column: 8, scope: !189)
!251 = !DILocation(line: 241, column: 9, scope: !252)
!252 = distinct !DILexicalBlock(scope: !189, file: !30, line: 241, column: 8)
!253 = !DILocation(line: 241, column: 8, scope: !189)
!254 = !DILocation(line: 242, column: 6, scope: !255)
!255 = distinct !DILexicalBlock(scope: !252, file: !30, line: 241, column: 14)
!256 = !DILocation(line: 242, column: 43, scope: !255)
!257 = !DILocation(line: 242, column: 60, scope: !255)
!258 = !DILocation(line: 242, column: 66, scope: !255)
!259 = !DILocation(line: 242, column: 73, scope: !255)
!260 = !DILocation(line: 242, column: 7, scope: !261)
!261 = !DILexicalBlockFile(scope: !255, file: !30, discriminator: 1)
!262 = !DILocation(line: 243, column: 7, scope: !255)
!263 = !DILocation(line: 246, column: 22, scope: !189)
!264 = !DILocation(line: 246, column: 27, scope: !189)
!265 = !DILocation(line: 246, column: 12, scope: !189)
!266 = !DILocation(line: 246, column: 5, scope: !189)
!267 = !DILocation(line: 246, column: 10, scope: !189)
!268 = !DILocation(line: 247, column: 8, scope: !189)
!269 = !DILocation(line: 247, column: 4, scope: !189)
!270 = !DILocation(line: 250, column: 11, scope: !189)
!271 = !DILocation(line: 250, column: 4, scope: !189)
!272 = !DILocation(line: 251, column: 4, scope: !189)
!273 = !DILocation(line: 252, column: 8, scope: !274)
!274 = distinct !DILexicalBlock(scope: !189, file: !30, line: 252, column: 8)
!275 = !DILocation(line: 252, column: 8, scope: !189)
!276 = !DILocation(line: 253, column: 19, scope: !277)
!277 = distinct !DILexicalBlock(scope: !274, file: !30, line: 252, column: 13)
!278 = !DILocation(line: 253, column: 7, scope: !277)
!279 = !DILocation(line: 254, column: 4, scope: !277)
!280 = !DILocation(line: 255, column: 8, scope: !281)
!281 = distinct !DILexicalBlock(scope: !189, file: !30, line: 255, column: 8)
!282 = !DILocation(line: 255, column: 8, scope: !189)
!283 = !DILocation(line: 256, column: 21, scope: !284)
!284 = distinct !DILexicalBlock(scope: !281, file: !30, line: 255, column: 17)
!285 = !DILocation(line: 256, column: 7, scope: !284)
!286 = !DILocation(line: 257, column: 4, scope: !284)
!287 = !DILocation(line: 259, column: 11, scope: !189)
!288 = !DILocation(line: 259, column: 4, scope: !189)
!289 = distinct !DISubprogram(name: "CompareFile", scope: !30, file: !30, line: 51, type: !290, isLocal: true, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !37)
!290 = !DISubroutineType(types: !291)
!291 = !{!71, !33, !33, !292}
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!293 = !DILocalVariable(name: "fname1", arg: 1, scope: !289, file: !30, line: 51, type: !33)
!294 = !DILocation(line: 51, column: 26, scope: !289)
!295 = !DILocalVariable(name: "fname2", arg: 2, scope: !289, file: !30, line: 52, type: !33)
!296 = !DILocation(line: 52, column: 26, scope: !289)
!297 = !DILocalVariable(name: "same", arg: 3, scope: !289, file: !30, line: 53, type: !292)
!298 = !DILocation(line: 53, column: 23, scope: !289)
!299 = !DILocalVariable(name: "num", scope: !289, file: !30, line: 55, type: !300)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !225, line: 66, baseType: !301)
!301 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!302 = !DILocation(line: 55, column: 10, scope: !289)
!303 = !DILocalVariable(name: "ret", scope: !289, file: !30, line: 56, type: !71)
!304 = !DILocation(line: 56, column: 13, scope: !289)
!305 = !DILocalVariable(name: "m1", scope: !289, file: !30, line: 57, type: !306)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMappedFile", file: !308, line: 32, baseType: !309)
!308 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmappedfile.h", directory: "/home/lichi/Desktop/open-vm-tools/line1364")
!309 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMappedFile", file: !308, line: 32, flags: DIFlagFwdDecl)
!310 = !DILocation(line: 57, column: 17, scope: !289)
!311 = !DILocalVariable(name: "m2", scope: !289, file: !30, line: 58, type: !306)
!312 = !DILocation(line: 58, column: 17, scope: !289)
!313 = !DILocalVariable(name: "error", scope: !289, file: !30, line: 59, type: !216)
!314 = !DILocation(line: 59, column: 12, scope: !289)
!315 = !DILocation(line: 61, column: 27, scope: !289)
!316 = !DILocation(line: 61, column: 9, scope: !289)
!317 = !DILocation(line: 61, column: 7, scope: !289)
!318 = !DILocation(line: 62, column: 8, scope: !319)
!319 = distinct !DILexicalBlock(scope: !289, file: !30, line: 62, column: 8)
!320 = !DILocation(line: 62, column: 11, scope: !319)
!321 = !DILocation(line: 62, column: 8, scope: !289)
!322 = !DILocation(line: 63, column: 6, scope: !323)
!323 = distinct !DILexicalBlock(scope: !319, file: !30, line: 62, column: 19)
!324 = !DILocation(line: 63, column: 42, scope: !323)
!325 = !DILocation(line: 63, column: 59, scope: !323)
!326 = !DILocation(line: 63, column: 67, scope: !323)
!327 = !DILocation(line: 63, column: 74, scope: !323)
!328 = !DILocation(line: 63, column: 7, scope: !329)
!329 = !DILexicalBlockFile(scope: !323, file: !30, discriminator: 1)
!330 = !DILocation(line: 64, column: 7, scope: !323)
!331 = !DILocation(line: 67, column: 27, scope: !289)
!332 = !DILocation(line: 67, column: 9, scope: !289)
!333 = !DILocation(line: 67, column: 7, scope: !289)
!334 = !DILocation(line: 68, column: 8, scope: !335)
!335 = distinct !DILexicalBlock(scope: !289, file: !30, line: 68, column: 8)
!336 = !DILocation(line: 68, column: 11, scope: !335)
!337 = !DILocation(line: 68, column: 8, scope: !289)
!338 = !DILocation(line: 69, column: 6, scope: !339)
!339 = distinct !DILexicalBlock(scope: !335, file: !30, line: 68, column: 19)
!340 = !DILocation(line: 69, column: 42, scope: !339)
!341 = !DILocation(line: 69, column: 59, scope: !339)
!342 = !DILocation(line: 69, column: 67, scope: !339)
!343 = !DILocation(line: 69, column: 74, scope: !339)
!344 = !DILocation(line: 69, column: 7, scope: !345)
!345 = !DILexicalBlockFile(scope: !339, file: !30, discriminator: 1)
!346 = !DILocation(line: 70, column: 7, scope: !339)
!347 = !DILocation(line: 73, column: 8, scope: !289)
!348 = !DILocation(line: 74, column: 5, scope: !289)
!349 = !DILocation(line: 74, column: 10, scope: !289)
!350 = !DILocation(line: 76, column: 35, scope: !289)
!351 = !DILocation(line: 76, column: 10, scope: !289)
!352 = !DILocation(line: 76, column: 8, scope: !289)
!353 = !DILocation(line: 77, column: 33, scope: !354)
!354 = distinct !DILexicalBlock(scope: !289, file: !30, line: 77, column: 8)
!355 = !DILocation(line: 77, column: 8, scope: !354)
!356 = !DILocation(line: 77, column: 40, scope: !354)
!357 = !DILocation(line: 77, column: 37, scope: !354)
!358 = !DILocation(line: 77, column: 8, scope: !289)
!359 = !DILocation(line: 78, column: 11, scope: !360)
!360 = distinct !DILexicalBlock(scope: !361, file: !30, line: 78, column: 11)
!361 = distinct !DILexicalBlock(scope: !354, file: !30, line: 77, column: 45)
!362 = !DILocation(line: 78, column: 11, scope: !361)
!363 = !DILocation(line: 79, column: 48, scope: !364)
!364 = distinct !DILexicalBlock(scope: !365, file: !30, line: 79, column: 14)
!365 = distinct !DILexicalBlock(scope: !360, file: !30, line: 78, column: 16)
!366 = !DILocation(line: 79, column: 21, scope: !364)
!367 = !DILocation(line: 80, column: 48, scope: !364)
!368 = !DILocation(line: 80, column: 21, scope: !364)
!369 = !DILocation(line: 80, column: 53, scope: !364)
!370 = !DILocation(line: 79, column: 14, scope: !371)
!371 = !DILexicalBlockFile(scope: !364, file: !30, discriminator: 1)
!372 = !DILocation(line: 80, column: 58, scope: !364)
!373 = !DILocation(line: 79, column: 14, scope: !365)
!374 = !DILocation(line: 81, column: 14, scope: !375)
!375 = distinct !DILexicalBlock(scope: !364, file: !30, line: 80, column: 64)
!376 = !DILocation(line: 81, column: 19, scope: !375)
!377 = !DILocation(line: 82, column: 10, scope: !375)
!378 = !DILocation(line: 83, column: 7, scope: !365)
!379 = !DILocation(line: 85, column: 11, scope: !380)
!380 = distinct !DILexicalBlock(scope: !360, file: !30, line: 83, column: 14)
!381 = !DILocation(line: 85, column: 16, scope: !380)
!382 = !DILocation(line: 87, column: 4, scope: !361)
!383 = !DILocation(line: 77, column: 40, scope: !384)
!384 = !DILexicalBlockFile(scope: !354, file: !30, discriminator: 1)
!385 = !DILocation(line: 90, column: 4, scope: !289)
!386 = !DILocation(line: 91, column: 8, scope: !387)
!387 = distinct !DILexicalBlock(scope: !289, file: !30, line: 91, column: 8)
!388 = !DILocation(line: 91, column: 8, scope: !289)
!389 = !DILocation(line: 92, column: 27, scope: !390)
!390 = distinct !DILexicalBlock(scope: !387, file: !30, line: 91, column: 12)
!391 = !DILocation(line: 92, column: 7, scope: !390)
!392 = !DILocation(line: 93, column: 4, scope: !390)
!393 = !DILocation(line: 94, column: 8, scope: !394)
!394 = distinct !DILexicalBlock(scope: !289, file: !30, line: 94, column: 8)
!395 = !DILocation(line: 94, column: 8, scope: !289)
!396 = !DILocation(line: 95, column: 27, scope: !397)
!397 = distinct !DILexicalBlock(scope: !394, file: !30, line: 94, column: 12)
!398 = !DILocation(line: 95, column: 7, scope: !397)
!399 = !DILocation(line: 96, column: 4, scope: !397)
!400 = !DILocation(line: 98, column: 11, scope: !289)
!401 = !DILocation(line: 98, column: 4, scope: !289)
!402 = !DILocation(line: 362, column: 9, scope: !403)
!403 = distinct !DILexicalBlock(scope: !29, file: !30, line: 362, column: 8)
!404 = !DILocation(line: 362, column: 8, scope: !29)
!405 = !DILocation(line: 363, column: 14, scope: !406)
!406 = distinct !DILexicalBlock(scope: !403, file: !30, line: 362, column: 15)
!407 = !DILocation(line: 363, column: 12, scope: !406)
!408 = !DILocation(line: 364, column: 4, scope: !406)
!409 = !DILocation(line: 366, column: 11, scope: !29)
!410 = !DILocation(line: 366, column: 4, scope: !29)
!411 = distinct !DISubprogram(name: "CertUtil_CopyFile", scope: !30, file: !30, line: 388, type: !412, isLocal: false, isDefinition: true, scopeLine: 390, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !37)
!412 = !DISubroutineType(types: !413)
!413 = !{!71, !33, !33}
!414 = !DILocalVariable(name: "src", arg: 1, scope: !411, file: !30, line: 388, type: !33)
!415 = !DILocation(line: 388, column: 32, scope: !411)
!416 = !DILocalVariable(name: "dst", arg: 2, scope: !411, file: !30, line: 389, type: !33)
!417 = !DILocation(line: 389, column: 32, scope: !411)
!418 = !DILocalVariable(name: "length", scope: !411, file: !30, line: 391, type: !300)
!419 = !DILocation(line: 391, column: 10, scope: !411)
!420 = !DILocalVariable(name: "ret", scope: !411, file: !30, line: 392, type: !71)
!421 = !DILocation(line: 392, column: 13, scope: !411)
!422 = !DILocalVariable(name: "smap", scope: !411, file: !30, line: 393, type: !306)
!423 = !DILocation(line: 393, column: 17, scope: !411)
!424 = !DILocalVariable(name: "error", scope: !411, file: !30, line: 394, type: !216)
!425 = !DILocation(line: 394, column: 12, scope: !411)
!426 = !DILocalVariable(name: "file", scope: !411, file: !30, line: 395, type: !427)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64, align: 64)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !429, line: 48, baseType: !430)
!429 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/open-vm-tools/line1364")
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !431, line: 241, size: 1728, align: 64, elements: !432)
!431 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/open-vm-tools/line1364")
!432 = !{!433, !434, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !454, !455, !456, !457, !460, !462, !464, !468, !471, !473, !474, !475, !476, !477, !480, !481}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !430, file: !431, line: 242, baseType: !15, size: 32, align: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !430, file: !431, line: 247, baseType: !435, size: 64, align: 64, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !430, file: !431, line: 248, baseType: !435, size: 64, align: 64, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !430, file: !431, line: 249, baseType: !435, size: 64, align: 64, offset: 192)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !430, file: !431, line: 250, baseType: !435, size: 64, align: 64, offset: 256)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !430, file: !431, line: 251, baseType: !435, size: 64, align: 64, offset: 320)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !430, file: !431, line: 252, baseType: !435, size: 64, align: 64, offset: 384)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !430, file: !431, line: 253, baseType: !435, size: 64, align: 64, offset: 448)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !430, file: !431, line: 254, baseType: !435, size: 64, align: 64, offset: 512)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !430, file: !431, line: 256, baseType: !435, size: 64, align: 64, offset: 576)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !430, file: !431, line: 257, baseType: !435, size: 64, align: 64, offset: 640)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !430, file: !431, line: 258, baseType: !435, size: 64, align: 64, offset: 704)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !430, file: !431, line: 260, baseType: !447, size: 64, align: 64, offset: 768)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64, align: 64)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !431, line: 156, size: 192, align: 64, elements: !449)
!449 = !{!450, !451, !453}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !448, file: !431, line: 157, baseType: !447, size: 64, align: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !448, file: !431, line: 158, baseType: !452, size: 64, align: 64, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64, align: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !448, file: !431, line: 162, baseType: !15, size: 32, align: 32, offset: 128)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !430, file: !431, line: 262, baseType: !452, size: 64, align: 64, offset: 832)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !430, file: !431, line: 264, baseType: !15, size: 32, align: 32, offset: 896)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !430, file: !431, line: 268, baseType: !15, size: 32, align: 32, offset: 928)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !430, file: !431, line: 270, baseType: !458, size: 64, align: 64, offset: 960)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !459, line: 131, baseType: !17)
!459 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1364")
!460 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !430, file: !431, line: 274, baseType: !461, size: 16, align: 16, offset: 1024)
!461 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !430, file: !431, line: 275, baseType: !463, size: 8, align: 8, offset: 1040)
!463 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !430, file: !431, line: 276, baseType: !465, size: 8, align: 8, offset: 1048)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 8, align: 8, elements: !466)
!466 = !{!467}
!467 = !DISubrange(count: 1)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !430, file: !431, line: 280, baseType: !469, size: 64, align: 64, offset: 1088)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64, align: 64)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !431, line: 150, baseType: null)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !430, file: !431, line: 289, baseType: !472, size: 64, align: 64, offset: 1152)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !459, line: 132, baseType: !17)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !430, file: !431, line: 297, baseType: !12, size: 64, align: 64, offset: 1216)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !430, file: !431, line: 298, baseType: !12, size: 64, align: 64, offset: 1280)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !430, file: !431, line: 299, baseType: !12, size: 64, align: 64, offset: 1344)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !430, file: !431, line: 300, baseType: !12, size: 64, align: 64, offset: 1408)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !430, file: !431, line: 302, baseType: !478, size: 64, align: 64, offset: 1472)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !479, line: 216, baseType: !301)
!479 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line1364")
!480 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !430, file: !431, line: 303, baseType: !15, size: 32, align: 32, offset: 1536)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !430, file: !431, line: 305, baseType: !482, size: 160, align: 8, offset: 1568)
!482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 160, align: 8, elements: !483)
!483 = !{!484}
!484 = !DISubrange(count: 20)
!485 = !DILocation(line: 395, column: 10, scope: !411)
!486 = !DILocalVariable(name: "content", scope: !411, file: !30, line: 396, type: !33)
!487 = !DILocation(line: 396, column: 17, scope: !411)
!488 = !DILocation(line: 398, column: 29, scope: !411)
!489 = !DILocation(line: 398, column: 11, scope: !411)
!490 = !DILocation(line: 398, column: 9, scope: !411)
!491 = !DILocation(line: 399, column: 9, scope: !492)
!492 = distinct !DILexicalBlock(scope: !411, file: !30, line: 399, column: 8)
!493 = !DILocation(line: 399, column: 8, scope: !411)
!494 = !DILocation(line: 400, column: 6, scope: !495)
!495 = distinct !DILexicalBlock(scope: !492, file: !30, line: 399, column: 15)
!496 = !DILocation(line: 400, column: 42, scope: !495)
!497 = !DILocation(line: 400, column: 59, scope: !495)
!498 = !DILocation(line: 400, column: 64, scope: !495)
!499 = !DILocation(line: 400, column: 71, scope: !495)
!500 = !DILocation(line: 400, column: 7, scope: !501)
!501 = !DILexicalBlockFile(scope: !495, file: !30, discriminator: 1)
!502 = !DILocation(line: 401, column: 7, scope: !495)
!503 = !DILocation(line: 404, column: 17, scope: !411)
!504 = !DILocation(line: 404, column: 11, scope: !411)
!505 = !DILocation(line: 404, column: 9, scope: !411)
!506 = !DILocation(line: 405, column: 9, scope: !507)
!507 = distinct !DILexicalBlock(scope: !411, file: !30, line: 405, column: 8)
!508 = !DILocation(line: 405, column: 8, scope: !411)
!509 = !DILocation(line: 406, column: 6, scope: !510)
!510 = distinct !DILexicalBlock(scope: !507, file: !30, line: 405, column: 15)
!511 = !DILocation(line: 406, column: 43, scope: !510)
!512 = !DILocation(line: 406, column: 60, scope: !510)
!513 = !DILocation(line: 406, column: 8, scope: !514)
!514 = !DILexicalBlockFile(scope: !510, file: !30, discriminator: 1)
!515 = !DILocation(line: 406, column: 7, scope: !510)
!516 = !DILocation(line: 406, column: 65, scope: !517)
!517 = !DILexicalBlockFile(scope: !510, file: !30, discriminator: 2)
!518 = !DILocation(line: 406, column: 7, scope: !519)
!519 = !DILexicalBlockFile(scope: !510, file: !30, discriminator: 3)
!520 = !DILocation(line: 407, column: 7, scope: !510)
!521 = !DILocation(line: 410, column: 38, scope: !411)
!522 = !DILocation(line: 410, column: 13, scope: !411)
!523 = !DILocation(line: 410, column: 11, scope: !411)
!524 = !DILocation(line: 411, column: 41, scope: !411)
!525 = !DILocation(line: 411, column: 14, scope: !411)
!526 = !DILocation(line: 411, column: 12, scope: !411)
!527 = !DILocation(line: 412, column: 15, scope: !528)
!528 = distinct !DILexicalBlock(scope: !411, file: !30, line: 412, column: 8)
!529 = !DILocation(line: 412, column: 27, scope: !528)
!530 = !DILocation(line: 412, column: 35, scope: !528)
!531 = !DILocation(line: 412, column: 8, scope: !528)
!532 = !DILocation(line: 412, column: 43, scope: !528)
!533 = !DILocation(line: 412, column: 41, scope: !528)
!534 = !DILocation(line: 412, column: 8, scope: !411)
!535 = !DILocation(line: 413, column: 6, scope: !536)
!536 = distinct !DILexicalBlock(scope: !528, file: !30, line: 412, column: 51)
!537 = !DILocation(line: 413, column: 49, scope: !536)
!538 = !DILocation(line: 413, column: 66, scope: !536)
!539 = !DILocation(line: 413, column: 71, scope: !536)
!540 = !DILocation(line: 413, column: 8, scope: !541)
!541 = !DILexicalBlockFile(scope: !536, file: !30, discriminator: 1)
!542 = !DILocation(line: 413, column: 7, scope: !536)
!543 = !DILocation(line: 413, column: 76, scope: !544)
!544 = !DILexicalBlockFile(scope: !536, file: !30, discriminator: 2)
!545 = !DILocation(line: 413, column: 7, scope: !546)
!546 = !DILexicalBlockFile(scope: !536, file: !30, discriminator: 3)
!547 = !DILocation(line: 414, column: 7, scope: !536)
!548 = !DILocation(line: 417, column: 8, scope: !411)
!549 = !DILocation(line: 417, column: 4, scope: !411)
!550 = !DILocation(line: 420, column: 4, scope: !411)
!551 = !DILocation(line: 421, column: 8, scope: !552)
!552 = distinct !DILexicalBlock(scope: !411, file: !30, line: 421, column: 8)
!553 = !DILocation(line: 421, column: 8, scope: !411)
!554 = !DILocation(line: 422, column: 27, scope: !555)
!555 = distinct !DILexicalBlock(scope: !552, file: !30, line: 421, column: 14)
!556 = !DILocation(line: 422, column: 7, scope: !555)
!557 = !DILocation(line: 423, column: 4, scope: !555)
!558 = !DILocation(line: 424, column: 8, scope: !559)
!559 = distinct !DILexicalBlock(scope: !411, file: !30, line: 424, column: 8)
!560 = !DILocation(line: 424, column: 8, scope: !411)
!561 = !DILocation(line: 425, column: 14, scope: !562)
!562 = distinct !DILexicalBlock(scope: !559, file: !30, line: 424, column: 14)
!563 = !DILocation(line: 425, column: 7, scope: !562)
!564 = !DILocation(line: 426, column: 4, scope: !562)
!565 = !DILocation(line: 428, column: 11, scope: !411)
!566 = !DILocation(line: 428, column: 4, scope: !411)
!567 = distinct !DISubprogram(name: "CertUtil_RemoveDir", scope: !30, file: !30, line: 450, type: !568, isLocal: false, isDefinition: true, scopeLine: 451, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !37)
!568 = !DISubroutineType(types: !569)
!569 = !{!71, !33}
!570 = !DILocalVariable(name: "dirToRemove", arg: 1, scope: !567, file: !30, line: 450, type: !33)
!571 = !DILocation(line: 450, column: 33, scope: !567)
!572 = !DILocalVariable(name: "ret", scope: !567, file: !30, line: 452, type: !71)
!573 = !DILocation(line: 452, column: 13, scope: !567)
!574 = !DILocalVariable(name: "dir", scope: !567, file: !30, line: 453, type: !210)
!575 = !DILocation(line: 453, column: 10, scope: !567)
!576 = !DILocalVariable(name: "file", scope: !567, file: !30, line: 454, type: !33)
!577 = !DILocation(line: 454, column: 17, scope: !567)
!578 = !DILocalVariable(name: "error", scope: !567, file: !30, line: 455, type: !216)
!579 = !DILocation(line: 455, column: 12, scope: !567)
!580 = !DILocalVariable(name: "fname", scope: !567, file: !30, line: 456, type: !38)
!581 = !DILocation(line: 456, column: 11, scope: !567)
!582 = !DILocation(line: 458, column: 26, scope: !583)
!583 = distinct !DILexicalBlock(scope: !567, file: !30, line: 458, column: 8)
!584 = !DILocation(line: 458, column: 15, scope: !583)
!585 = !DILocation(line: 458, column: 13, scope: !583)
!586 = !DILocation(line: 458, column: 51, scope: !583)
!587 = !DILocation(line: 458, column: 8, scope: !567)
!588 = !DILocation(line: 459, column: 6, scope: !589)
!589 = distinct !DILexicalBlock(scope: !583, file: !30, line: 458, column: 59)
!590 = !DILocation(line: 459, column: 43, scope: !589)
!591 = !DILocation(line: 459, column: 60, scope: !589)
!592 = !DILocation(line: 459, column: 73, scope: !589)
!593 = !DILocation(line: 459, column: 80, scope: !589)
!594 = !DILocation(line: 459, column: 7, scope: !595)
!595 = !DILexicalBlockFile(scope: !589, file: !30, discriminator: 1)
!596 = !DILocation(line: 460, column: 7, scope: !589)
!597 = !DILocation(line: 463, column: 4, scope: !567)
!598 = !DILocation(line: 463, column: 35, scope: !599)
!599 = !DILexicalBlockFile(scope: !567, file: !30, discriminator: 1)
!600 = !DILocation(line: 463, column: 19, scope: !599)
!601 = !DILocation(line: 463, column: 17, scope: !599)
!602 = !DILocation(line: 463, column: 41, scope: !599)
!603 = !DILocation(line: 463, column: 4, scope: !599)
!604 = !DILocation(line: 464, column: 14, scope: !605)
!605 = distinct !DILexicalBlock(scope: !567, file: !30, line: 463, column: 49)
!606 = !DILocation(line: 464, column: 7, scope: !605)
!607 = !DILocation(line: 465, column: 32, scope: !605)
!608 = !DILocation(line: 465, column: 45, scope: !605)
!609 = !DILocation(line: 465, column: 15, scope: !605)
!610 = !DILocation(line: 465, column: 13, scope: !605)
!611 = !DILocation(line: 467, column: 23, scope: !612)
!612 = distinct !DILexicalBlock(scope: !605, file: !30, line: 467, column: 11)
!613 = !DILocation(line: 467, column: 11, scope: !612)
!614 = !DILocation(line: 467, column: 11, scope: !605)
!615 = !DILocation(line: 468, column: 34, scope: !616)
!616 = distinct !DILexicalBlock(scope: !617, file: !30, line: 468, column: 14)
!617 = distinct !DILexicalBlock(scope: !612, file: !30, line: 467, column: 51)
!618 = !DILocation(line: 468, column: 15, scope: !616)
!619 = !DILocation(line: 468, column: 14, scope: !617)
!620 = !DILocation(line: 469, column: 12, scope: !621)
!621 = distinct !DILexicalBlock(scope: !616, file: !30, line: 468, column: 42)
!622 = !DILocation(line: 469, column: 62, scope: !621)
!623 = !DILocation(line: 469, column: 79, scope: !621)
!624 = !DILocation(line: 469, column: 13, scope: !625)
!625 = !DILexicalBlockFile(scope: !621, file: !30, discriminator: 1)
!626 = !DILocation(line: 470, column: 13, scope: !621)
!627 = !DILocation(line: 472, column: 7, scope: !617)
!628 = !DILocation(line: 472, column: 25, scope: !629)
!629 = !DILexicalBlockFile(scope: !630, file: !30, discriminator: 1)
!630 = distinct !DILexicalBlock(scope: !612, file: !30, line: 472, column: 18)
!631 = !DILocation(line: 472, column: 18, scope: !629)
!632 = !DILocation(line: 472, column: 32, scope: !629)
!633 = !DILocation(line: 473, column: 9, scope: !634)
!634 = distinct !DILexicalBlock(scope: !630, file: !30, line: 472, column: 37)
!635 = !DILocation(line: 473, column: 54, scope: !634)
!636 = !DILocation(line: 473, column: 71, scope: !634)
!637 = !DILocation(line: 473, column: 10, scope: !638)
!638 = !DILexicalBlockFile(scope: !634, file: !30, discriminator: 1)
!639 = !DILocation(line: 474, column: 10, scope: !634)
!640 = !DILocation(line: 463, column: 4, scope: !641)
!641 = !DILexicalBlockFile(scope: !567, file: !30, discriminator: 2)
!642 = distinct !{!642, !597}
!643 = !DILocation(line: 478, column: 16, scope: !567)
!644 = !DILocation(line: 478, column: 4, scope: !567)
!645 = !DILocation(line: 479, column: 8, scope: !567)
!646 = !DILocation(line: 481, column: 16, scope: !647)
!647 = distinct !DILexicalBlock(scope: !567, file: !30, line: 481, column: 8)
!648 = !DILocation(line: 481, column: 8, scope: !647)
!649 = !DILocation(line: 481, column: 29, scope: !647)
!650 = !DILocation(line: 481, column: 8, scope: !567)
!651 = !DILocation(line: 482, column: 6, scope: !652)
!652 = distinct !DILexicalBlock(scope: !647, file: !30, line: 481, column: 34)
!653 = !DILocation(line: 482, column: 56, scope: !652)
!654 = !DILocation(line: 482, column: 73, scope: !652)
!655 = !DILocation(line: 482, column: 7, scope: !656)
!656 = !DILexicalBlockFile(scope: !652, file: !30, discriminator: 1)
!657 = !DILocation(line: 483, column: 7, scope: !652)
!658 = !DILocation(line: 486, column: 8, scope: !567)
!659 = !DILocation(line: 486, column: 4, scope: !567)
!660 = !DILocation(line: 489, column: 11, scope: !567)
!661 = !DILocation(line: 489, column: 4, scope: !567)
!662 = !DILocation(line: 490, column: 4, scope: !567)
!663 = !DILocation(line: 491, column: 8, scope: !664)
!664 = distinct !DILexicalBlock(scope: !567, file: !30, line: 491, column: 8)
!665 = !DILocation(line: 491, column: 8, scope: !567)
!666 = !DILocation(line: 492, column: 19, scope: !667)
!667 = distinct !DILexicalBlock(scope: !664, file: !30, line: 491, column: 13)
!668 = !DILocation(line: 492, column: 7, scope: !667)
!669 = !DILocation(line: 493, column: 4, scope: !667)
!670 = !DILocation(line: 495, column: 11, scope: !567)
!671 = !DILocation(line: 495, column: 4, scope: !567)
!672 = distinct !DISubprogram(name: "MatchFile", scope: !30, file: !30, line: 184, type: !673, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !37)
!673 = !DISubroutineType(types: !674)
!674 = !{!18, !210, !204}
!675 = !DILocalVariable(name: "dir", arg: 1, scope: !672, file: !30, line: 184, type: !210)
!676 = !DILocation(line: 184, column: 17, scope: !672)
!677 = !DILocalVariable(name: "regExpr", arg: 2, scope: !672, file: !30, line: 185, type: !204)
!678 = !DILocation(line: 185, column: 19, scope: !672)
!679 = !DILocalVariable(name: "fn", scope: !672, file: !30, line: 187, type: !33)
!680 = !DILocation(line: 187, column: 17, scope: !672)
!681 = !DILocalVariable(name: "cp", scope: !672, file: !30, line: 187, type: !33)
!682 = !DILocation(line: 187, column: 22, scope: !672)
!683 = !DILocalVariable(name: "list", scope: !672, file: !30, line: 188, type: !18)
!684 = !DILocation(line: 188, column: 11, scope: !672)
!685 = !DILocation(line: 190, column: 4, scope: !672)
!686 = !DILocation(line: 190, column: 33, scope: !687)
!687 = !DILexicalBlockFile(scope: !672, file: !30, discriminator: 1)
!688 = !DILocation(line: 190, column: 17, scope: !687)
!689 = !DILocation(line: 190, column: 15, scope: !687)
!690 = !DILocation(line: 190, column: 39, scope: !687)
!691 = !DILocation(line: 190, column: 4, scope: !687)
!692 = !DILocation(line: 191, column: 25, scope: !693)
!693 = distinct !DILexicalBlock(scope: !694, file: !30, line: 191, column: 11)
!694 = distinct !DILexicalBlock(scope: !672, file: !30, line: 190, column: 47)
!695 = !DILocation(line: 191, column: 34, scope: !693)
!696 = !DILocation(line: 191, column: 11, scope: !693)
!697 = !DILocation(line: 191, column: 11, scope: !694)
!698 = !DILocation(line: 193, column: 23, scope: !699)
!699 = distinct !DILexicalBlock(scope: !693, file: !30, line: 191, column: 47)
!700 = !DILocation(line: 193, column: 15, scope: !699)
!701 = !DILocation(line: 193, column: 13, scope: !699)
!702 = !DILocation(line: 194, column: 32, scope: !699)
!703 = !DILocation(line: 194, column: 64, scope: !699)
!704 = !DILocation(line: 194, column: 67, scope: !699)
!705 = !DILocation(line: 194, column: 59, scope: !699)
!706 = !DILocation(line: 194, column: 50, scope: !699)
!707 = !DILocation(line: 194, column: 39, scope: !699)
!708 = !DILocation(line: 194, column: 17, scope: !709)
!709 = !DILexicalBlockFile(scope: !699, file: !30, discriminator: 1)
!710 = !DILocation(line: 194, column: 15, scope: !699)
!711 = !DILocation(line: 195, column: 7, scope: !699)
!712 = !DILocation(line: 190, column: 4, scope: !713)
!713 = !DILexicalBlockFile(scope: !672, file: !30, discriminator: 2)
!714 = distinct !{!714, !685}
!715 = !DILocation(line: 198, column: 23, scope: !672)
!716 = !DILocation(line: 198, column: 11, scope: !672)
!717 = !DILocation(line: 198, column: 9, scope: !672)
!718 = !DILocation(line: 200, column: 11, scope: !672)
!719 = !DILocation(line: 200, column: 4, scope: !672)
!720 = distinct !DISubprogram(name: "IntCmp", scope: !30, file: !30, line: 155, type: !721, isLocal: true, isDefinition: true, scopeLine: 157, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !37)
!721 = !DISubroutineType(types: !722)
!722 = !{!13, !723, !723}
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "gconstpointer", file: !14, line: 78, baseType: !724)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64, align: 64)
!725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!726 = !DILocalVariable(name: "ga", arg: 1, scope: !720, file: !30, line: 155, type: !723)
!727 = !DILocation(line: 155, column: 22, scope: !720)
!728 = !DILocalVariable(name: "gb", arg: 2, scope: !720, file: !30, line: 156, type: !723)
!729 = !DILocation(line: 156, column: 22, scope: !720)
!730 = !DILocalVariable(name: "a", scope: !720, file: !30, line: 158, type: !13)
!731 = !DILocation(line: 158, column: 9, scope: !720)
!732 = !DILocation(line: 158, column: 30, scope: !720)
!733 = !DILocation(line: 158, column: 21, scope: !720)
!734 = !DILocation(line: 158, column: 14, scope: !720)
!735 = !DILocalVariable(name: "b", scope: !720, file: !30, line: 159, type: !13)
!736 = !DILocation(line: 159, column: 9, scope: !720)
!737 = !DILocation(line: 159, column: 30, scope: !720)
!738 = !DILocation(line: 159, column: 21, scope: !720)
!739 = !DILocation(line: 159, column: 14, scope: !720)
!740 = !DILocation(line: 161, column: 12, scope: !720)
!741 = !DILocation(line: 161, column: 16, scope: !720)
!742 = !DILocation(line: 161, column: 14, scope: !720)
!743 = !DILocation(line: 161, column: 4, scope: !720)
