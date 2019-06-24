; ModuleID = './libvmtools_la-vmtoolsConfig.o.i'
source_filename = "./libvmtools_la-vmtoolsConfig.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ConfigEntry = type { i8*, i8*, i8*, i32, i8* }
%struct._GKeyFile = type opaque
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct._GHashTable = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@VMTools_LoadConfig.hadConfFile = internal global i32 1, align 4
@__func__.VMTools_LoadConfig = private unnamed_addr constant [19 x i8] c"VMTools_LoadConfig\00", align 1
@.str = private unnamed_addr constant [15 x i8] c"config != NULL\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Error converting to local encoding: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to stat conf file: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Cannot load config file: %s\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"Error loading old tools config data, bailing out.\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%s.old\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Error creating backup of old config file.\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Backup config exists, skipping backup.\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Error serializing conf data: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"Error opening conf file for writing: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Error writing conf file: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"%s: Returning default value for '[%s] %s'=%s.\0A\00", align 1
@__FUNCTION__.VMTools_ConfigGetBoolean = private unnamed_addr constant [25 x i8] c"VMTools_ConfigGetBoolean\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str.17 = private unnamed_addr constant [53 x i8] c"%s: Failed to get value for '[%s] %s': %s (err=%d).\0A\00", align 1
@__FUNCTION__.VMTools_ConfigGetInteger = private unnamed_addr constant [25 x i8] c"VMTools_ConfigGetInteger\00", align 1
@.str.18 = private unnamed_addr constant [47 x i8] c"%s: Returning default value for '[%s] %s'=%d.\0A\00", align 1
@__FUNCTION__.VMTools_ConfigGetString = private unnamed_addr constant [24 x i8] c"VMTools_ConfigGetString\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"tools.conf\00", align 1
@.str.20 = private unnamed_addr constant [49 x i8] c"Could not get path to Tools configuration file.\0A\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"%s%c%s\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"Error converting path to local encoding.\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"Unable to read a line from \22%s\22: %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"NOT_IMPLEMENTED %s:%d\0A\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"vmtoolsConfig.c\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"Unable to close \22%s\22: %s\0A\00", align 1
@VMToolsConfigUpgrade.entries = internal constant [11 x %struct.ConfigEntry] [%struct.ConfigEntry { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), i8* null, i32 3, i8* bitcast (void (%struct._GKeyFile*, %struct.ConfigEntry*, i8*)* @VMToolsConfigUpgradeLog to i8*) }, %struct.ConfigEntry { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), i32 0, i8* null }, %struct.ConfigEntry { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i32 0, i32 0), i32 2, i8* null }, %struct.ConfigEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0), i32 2, i8* null }, %struct.ConfigEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0), i32 2, i8* null }, %struct.ConfigEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0), i32 2, i8* null }, %struct.ConfigEntry { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i32 0, i32 0), i32 0, i8* null }, %struct.ConfigEntry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i32 0, i32 0), i32 0, i8* null }, %struct.ConfigEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), i32 0, i8* null }, %struct.ConfigEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.44, i32 0, i32 0), i32 1, i8* null }, %struct.ConfigEntry zeroinitializer], align 16
@.str.28 = private unnamed_addr constant [9 x i8] c"log.file\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"logging\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"poweroff-script\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"powerops\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"poweron-script\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"resume-script\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"suspend-script\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"disable-query-diskinfo\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"guestinfo\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"disable-tools-version\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"vmsvc\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"unity.forceEnable\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"unity\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"forceEnable\00", align 1
@.str.43 = private unnamed_addr constant [30 x i8] c"unity.desktop.backgroundColor\00", align 1
@.str.44 = private unnamed_addr constant [24 x i8] c"desktop.backgroundColor\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"NOT_REACHED %s:%d\0A\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"vmsvc.handler\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"vmsvc.level\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"vmsvc.data\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"%s.user.${PID}\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"vmusr.handler\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"vmusr.level\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"vmusr.data\00", align 1

; Function Attrs: nounwind uwtable
define i32 @VMTools_LoadConfig(i8*, i32, %struct._GKeyFile**, i64*) #0 !dbg !104 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._GKeyFile**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.stat, align 8
  %14 = alloca %struct._GHashTable*, align 8
  %15 = alloca %struct._GError*, align 8
  %16 = alloca %struct._GKeyFile*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !133, metadata !134), !dbg !135
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !136, metadata !134), !dbg !137
  store %struct._GKeyFile** %2, %struct._GKeyFile*** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._GKeyFile*** %8, metadata !138, metadata !134), !dbg !139
  store i64* %3, i64** %9, align 8
  call void @llvm.dbg.declare(metadata i64** %9, metadata !140, metadata !134), !dbg !141
  call void @llvm.dbg.declare(metadata i8** %10, metadata !142, metadata !134), !dbg !143
  store i8* null, i8** %10, align 8, !dbg !143
  call void @llvm.dbg.declare(metadata i8** %11, metadata !144, metadata !134), !dbg !145
  store i8* null, i8** %11, align 8, !dbg !145
  call void @llvm.dbg.declare(metadata i8** %12, metadata !146, metadata !134), !dbg !147
  store i8* null, i8** %12, align 8, !dbg !147
  call void @llvm.dbg.declare(metadata %struct.stat* %13, metadata !148, metadata !134), !dbg !188
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %14, metadata !189, metadata !134), !dbg !190
  store %struct._GHashTable* null, %struct._GHashTable** %14, align 8, !dbg !190
  call void @llvm.dbg.declare(metadata %struct._GError** %15, metadata !191, metadata !134), !dbg !204
  store %struct._GError* null, %struct._GError** %15, align 8, !dbg !204
  call void @llvm.dbg.declare(metadata %struct._GKeyFile** %16, metadata !205, metadata !134), !dbg !206
  store %struct._GKeyFile* null, %struct._GKeyFile** %16, align 8, !dbg !206
  br label %17, !dbg !207, !llvm.loop !208

; <label>:17:                                     ; preds = %4
  %18 = load %struct._GKeyFile**, %struct._GKeyFile*** %8, align 8, !dbg !209
  %19 = icmp ne %struct._GKeyFile** %18, null, !dbg !213
  br i1 %19, label %20, label %21, !dbg !209

; <label>:20:                                     ; preds = %17
  br label %22, !dbg !214

; <label>:21:                                     ; preds = %17
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.VMTools_LoadConfig, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !217
  store i32 0, i32* %5, align 4, !dbg !220
  br label %175, !dbg !220

; <label>:22:                                     ; preds = %20
  br label %23, !dbg !221

; <label>:23:                                     ; preds = %22
  %24 = load i8*, i8** %6, align 8, !dbg !223
  %25 = icmp eq i8* %24, null, !dbg !225
  br i1 %25, label %26, label %28, !dbg !226

; <label>:26:                                     ; preds = %23
  %27 = call i8* @VMToolsGetToolsConfFile(), !dbg !227
  store i8* %27, i8** %11, align 8, !dbg !229
  br label %28, !dbg !230

; <label>:28:                                     ; preds = %26, %23
  %29 = load i8*, i8** %6, align 8, !dbg !231
  %30 = icmp ne i8* %29, null, !dbg !232
  br i1 %30, label %31, label %33, !dbg !233

; <label>:31:                                     ; preds = %28
  %32 = load i8*, i8** %6, align 8, !dbg !234
  br label %35, !dbg !236

; <label>:33:                                     ; preds = %28
  %34 = load i8*, i8** %11, align 8, !dbg !237
  br label %35, !dbg !239

; <label>:35:                                     ; preds = %33, %31
  %36 = phi i8* [ %32, %31 ], [ %34, %33 ], !dbg !240
  %37 = call noalias i8* @g_filename_from_utf8(i8* %36, i64 -1, i64* null, i64* null, %struct._GError** %15), !dbg !242
  store i8* %37, i8** %12, align 8, !dbg !243
  %38 = load %struct._GError*, %struct._GError** %15, align 8, !dbg !244
  %39 = icmp ne %struct._GError* %38, null, !dbg !246
  br i1 %39, label %40, label %44, !dbg !247

; <label>:40:                                     ; preds = %35
  %41 = load %struct._GError*, %struct._GError** %15, align 8, !dbg !248
  %42 = getelementptr inbounds %struct._GError, %struct._GError* %41, i32 0, i32 2, !dbg !250
  %43 = load i8*, i8** %42, align 8, !dbg !250
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i32 0, i32 0), i8* %43), !dbg !251
  br label %142, !dbg !252

; <label>:44:                                     ; preds = %35
  %45 = load i8*, i8** %12, align 8, !dbg !253
  %46 = call i32 @stat64(i8* %45, %struct.stat* %13) #8, !dbg !255
  %47 = icmp eq i32 %46, -1, !dbg !256
  br i1 %47, label %48, label %63, !dbg !257

; <label>:48:                                     ; preds = %44
  %49 = bitcast %struct.stat* %13 to i8*, !dbg !258
  call void @llvm.memset.p0i8.i64(i8* %49, i8 0, i64 144, i32 8, i1 false), !dbg !258
  %50 = call i32* @__errno_location() #1, !dbg !260
  %51 = load i32, i32* %50, align 4, !dbg !262
  %52 = icmp ne i32 %51, 2, !dbg !263
  br i1 %52, label %53, label %57, !dbg !264

; <label>:53:                                     ; preds = %48
  %54 = call i32* @__errno_location() #1, !dbg !265
  %55 = load i32, i32* %54, align 4, !dbg !267
  %56 = call i8* @strerror(i32 %55) #8, !dbg !268
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0), i8* %56), !dbg !270
  br label %142, !dbg !272

; <label>:57:                                     ; preds = %48
  %58 = load i32, i32* @VMTools_LoadConfig.hadConfFile, align 4, !dbg !273
  %59 = icmp ne i32 %58, 0, !dbg !273
  br i1 %59, label %60, label %62, !dbg !276

; <label>:60:                                     ; preds = %57
  %61 = call %struct._GKeyFile* @g_key_file_new(), !dbg !277
  store %struct._GKeyFile* %61, %struct._GKeyFile** %16, align 8, !dbg !279
  br label %62, !dbg !280

; <label>:62:                                     ; preds = %60, %57
  store i32 0, i32* @VMTools_LoadConfig.hadConfFile, align 4, !dbg !281
  br label %142, !dbg !282

; <label>:63:                                     ; preds = %44
  store i32 1, i32* @VMTools_LoadConfig.hadConfFile, align 4, !dbg !283
  %64 = load i64*, i64** %9, align 8, !dbg !284
  %65 = icmp ne i64* %64, null, !dbg !286
  br i1 %65, label %66, label %74, !dbg !287

; <label>:66:                                     ; preds = %63
  %67 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 12, !dbg !288
  %68 = getelementptr inbounds %struct.timespec, %struct.timespec* %67, i32 0, i32 0, !dbg !290
  %69 = load i64, i64* %68, align 8, !dbg !290
  %70 = load i64*, i64** %9, align 8, !dbg !291
  %71 = load i64, i64* %70, align 8, !dbg !292
  %72 = icmp sle i64 %69, %71, !dbg !293
  br i1 %72, label %73, label %74, !dbg !294

; <label>:73:                                     ; preds = %66
  br label %142, !dbg !295

; <label>:74:                                     ; preds = %66, %63
  %75 = call %struct._GKeyFile* @g_key_file_new(), !dbg !297
  store %struct._GKeyFile* %75, %struct._GKeyFile** %16, align 8, !dbg !298
  %76 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 8, !dbg !299
  %77 = load i64, i64* %76, align 8, !dbg !299
  %78 = icmp eq i64 %77, 0, !dbg !301
  br i1 %78, label %79, label %80, !dbg !302

; <label>:79:                                     ; preds = %74
  br label %142, !dbg !303

; <label>:80:                                     ; preds = %74
  %81 = load %struct._GKeyFile*, %struct._GKeyFile** %16, align 8, !dbg !305
  %82 = load i8*, i8** %12, align 8, !dbg !306
  %83 = load i32, i32* %7, align 4, !dbg !307
  %84 = call i32 @g_key_file_load_from_file(%struct._GKeyFile* %81, i8* %82, i32 %83, %struct._GError** %15), !dbg !308
  %85 = load %struct._GError*, %struct._GError** %15, align 8, !dbg !309
  %86 = icmp eq %struct._GError* %85, null, !dbg !311
  br i1 %86, label %87, label %88, !dbg !312

; <label>:87:                                     ; preds = %80
  br label %142, !dbg !313

; <label>:88:                                     ; preds = %80
  %89 = load %struct._GError*, %struct._GError** %15, align 8, !dbg !315
  %90 = getelementptr inbounds %struct._GError, %struct._GError* %89, i32 0, i32 1, !dbg !317
  %91 = load i32, i32* %90, align 4, !dbg !317
  %92 = icmp ne i32 %91, 4, !dbg !318
  br i1 %92, label %93, label %98, !dbg !319

; <label>:93:                                     ; preds = %88
  %94 = load %struct._GError*, %struct._GError** %15, align 8, !dbg !320
  %95 = getelementptr inbounds %struct._GError, %struct._GError* %94, i32 0, i32 2, !dbg !322
  %96 = load i8*, i8** %95, align 8, !dbg !322
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0), i8* %96), !dbg !323
  %97 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !324
  br label %140, !dbg !325

; <label>:98:                                     ; preds = %88
  %99 = load i8*, i8** %6, align 8, !dbg !326
  %100 = icmp eq i8* %99, null, !dbg !328
  br i1 %100, label %101, label %139, !dbg !329

; <label>:101:                                    ; preds = %98
  %102 = call %struct._GHashTable* @VMToolsConfigLoadLegacy(), !dbg !330
  store %struct._GHashTable* %102, %struct._GHashTable** %14, align 8, !dbg !333
  %103 = load %struct._GHashTable*, %struct._GHashTable** %14, align 8, !dbg !334
  %104 = icmp eq %struct._GHashTable* %103, null, !dbg !336
  br i1 %104, label %105, label %107, !dbg !337

; <label>:105:                                    ; preds = %101
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i32 0, i32 0)), !dbg !338
  %106 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !340
  br label %140, !dbg !341

; <label>:107:                                    ; preds = %101
  %108 = load %struct._GHashTable*, %struct._GHashTable** %14, align 8, !dbg !342
  %109 = load %struct._GKeyFile*, %struct._GKeyFile** %16, align 8, !dbg !343
  call void @VMToolsConfigUpgrade(%struct._GHashTable* %108, %struct._GKeyFile* %109), !dbg !344
  %110 = load i8*, i8** %12, align 8, !dbg !345
  %111 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* %110), !dbg !346
  store i8* %111, i8** %10, align 8, !dbg !347
  %112 = load i8*, i8** %10, align 8, !dbg !348
  %113 = call i32 @g_file_test(i8* %112, i32 1), !dbg !350
  %114 = icmp ne i32 %113, 0, !dbg !350
  br i1 %114, label %123, label %115, !dbg !351

; <label>:115:                                    ; preds = %107
  %116 = load i8*, i8** %12, align 8, !dbg !352
  %117 = load i8*, i8** %10, align 8, !dbg !355
  %118 = call i32 @rename(i8* %116, i8* %117) #8, !dbg !356
  %119 = icmp eq i32 %118, -1, !dbg !357
  br i1 %119, label %120, label %122, !dbg !358

; <label>:120:                                    ; preds = %115
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i32 0, i32 0)), !dbg !359
  %121 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !361
  br label %140, !dbg !362

; <label>:122:                                    ; preds = %115
  br label %124, !dbg !363

; <label>:123:                                    ; preds = %107
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0)), !dbg !364
  br label %124

; <label>:124:                                    ; preds = %123, %122
  call void @g_clear_error(%struct._GError** %15), !dbg !366
  %125 = load i8*, i8** %6, align 8, !dbg !367
  %126 = icmp ne i8* %125, null, !dbg !369
  br i1 %126, label %127, label %129, !dbg !370

; <label>:127:                                    ; preds = %124
  %128 = load i8*, i8** %6, align 8, !dbg !371
  br label %131, !dbg !373

; <label>:129:                                    ; preds = %124
  %130 = load i8*, i8** %11, align 8, !dbg !374
  br label %131, !dbg !376

; <label>:131:                                    ; preds = %129, %127
  %132 = phi i8* [ %128, %127 ], [ %130, %129 ], !dbg !377
  %133 = load %struct._GKeyFile*, %struct._GKeyFile** %16, align 8, !dbg !379
  %134 = call i32 @VMTools_WriteConfig(i8* %132, %struct._GKeyFile* %133, %struct._GError** null), !dbg !380
  %135 = icmp ne i32 %134, 0, !dbg !380
  br i1 %135, label %138, label %136, !dbg !381

; <label>:136:                                    ; preds = %131
  %137 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !382
  br label %140, !dbg !384

; <label>:138:                                    ; preds = %131
  br label %139, !dbg !386

; <label>:139:                                    ; preds = %138, %98
  br label %142, !dbg !387

; <label>:140:                                    ; preds = %136, %120, %105, %93
  %141 = load %struct._GKeyFile*, %struct._GKeyFile** %16, align 8, !dbg !388
  call void @g_key_file_free(%struct._GKeyFile* %141), !dbg !389
  store %struct._GKeyFile* null, %struct._GKeyFile** %16, align 8, !dbg !390
  br label %142, !dbg !391

; <label>:142:                                    ; preds = %140, %139, %87, %79, %73, %62, %53, %40
  call void @g_clear_error(%struct._GError** %15), !dbg !392
  %143 = load %struct._GHashTable*, %struct._GHashTable** %14, align 8, !dbg !393
  %144 = icmp ne %struct._GHashTable* %143, null, !dbg !395
  br i1 %144, label %145, label %147, !dbg !396

; <label>:145:                                    ; preds = %142
  %146 = load %struct._GHashTable*, %struct._GHashTable** %14, align 8, !dbg !397
  call void @g_hash_table_destroy(%struct._GHashTable* %146), !dbg !399
  br label %147, !dbg !400

; <label>:147:                                    ; preds = %145, %142
  %148 = load %struct._GKeyFile*, %struct._GKeyFile** %16, align 8, !dbg !401
  %149 = icmp ne %struct._GKeyFile* %148, null, !dbg !403
  br i1 %149, label %150, label %168, !dbg !404

; <label>:150:                                    ; preds = %147
  %151 = load %struct._GKeyFile**, %struct._GKeyFile*** %8, align 8, !dbg !405
  %152 = load %struct._GKeyFile*, %struct._GKeyFile** %151, align 8, !dbg !408
  %153 = icmp ne %struct._GKeyFile* %152, null, !dbg !409
  br i1 %153, label %154, label %157, !dbg !410

; <label>:154:                                    ; preds = %150
  %155 = load %struct._GKeyFile**, %struct._GKeyFile*** %8, align 8, !dbg !411
  %156 = load %struct._GKeyFile*, %struct._GKeyFile** %155, align 8, !dbg !413
  call void @g_key_file_free(%struct._GKeyFile* %156), !dbg !414
  br label %157, !dbg !415

; <label>:157:                                    ; preds = %154, %150
  %158 = load %struct._GKeyFile*, %struct._GKeyFile** %16, align 8, !dbg !416
  %159 = load %struct._GKeyFile**, %struct._GKeyFile*** %8, align 8, !dbg !417
  store %struct._GKeyFile* %158, %struct._GKeyFile** %159, align 8, !dbg !418
  %160 = load i64*, i64** %9, align 8, !dbg !419
  %161 = icmp ne i64* %160, null, !dbg !421
  br i1 %161, label %162, label %167, !dbg !422

; <label>:162:                                    ; preds = %157
  %163 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 12, !dbg !423
  %164 = getelementptr inbounds %struct.timespec, %struct.timespec* %163, i32 0, i32 0, !dbg !425
  %165 = load i64, i64* %164, align 8, !dbg !425
  %166 = load i64*, i64** %9, align 8, !dbg !426
  store i64 %165, i64* %166, align 8, !dbg !427
  br label %167, !dbg !428

; <label>:167:                                    ; preds = %162, %157
  br label %168, !dbg !429

; <label>:168:                                    ; preds = %167, %147
  %169 = load i8*, i8** %10, align 8, !dbg !430
  call void @g_free(i8* %169), !dbg !431
  %170 = load i8*, i8** %11, align 8, !dbg !432
  call void @g_free(i8* %170), !dbg !433
  %171 = load i8*, i8** %12, align 8, !dbg !434
  call void @g_free(i8* %171), !dbg !435
  %172 = load %struct._GKeyFile*, %struct._GKeyFile** %16, align 8, !dbg !436
  %173 = icmp ne %struct._GKeyFile* %172, null, !dbg !437
  %174 = zext i1 %173 to i32, !dbg !437
  store i32 %174, i32* %5, align 4, !dbg !438
  br label %175, !dbg !438

; <label>:175:                                    ; preds = %168, %21
  %176 = load i32, i32* %5, align 4, !dbg !439
  ret i32 %176, !dbg !439
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i8* @VMToolsGetToolsConfFile() #0 !dbg !440 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !443, metadata !134), !dbg !445
  %3 = call i8* @GuestApp_GetConfPath(), !dbg !446
  store i8* %3, i8** %1, align 8, !dbg !445
  call void @llvm.dbg.declare(metadata i8** %2, metadata !447, metadata !134), !dbg !448
  %4 = load i8*, i8** %1, align 8, !dbg !449
  %5 = icmp eq i8* %4, null, !dbg !451
  br i1 %5, label %6, label %8, !dbg !452

; <label>:6:                                      ; preds = %0
  %7 = call i8* @GuestApp_GetConfPath(), !dbg !453
  store i8* %7, i8** %1, align 8, !dbg !455
  br label %8, !dbg !456

; <label>:8:                                      ; preds = %6, %0
  %9 = load i8*, i8** %1, align 8, !dbg !457
  %10 = call noalias i8* (i8*, ...) @g_build_filename(i8* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i8* null), !dbg !458
  store i8* %10, i8** %2, align 8, !dbg !459
  %11 = load i8*, i8** %1, align 8, !dbg !460
  call void @free(i8* %11) #8, !dbg !461
  %12 = load i8*, i8** %2, align 8, !dbg !462
  ret i8* %12, !dbg !463
}

declare noalias i8* @g_filename_from_utf8(i8*, i64, i64*, i64*, %struct._GError**) #2

declare void @g_log(i8*, i32, i8*, ...) #2

; Function Attrs: nounwind
declare i32 @stat64(i8*, %struct.stat*) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: nounwind
declare i8* @strerror(i32) #3

declare %struct._GKeyFile* @g_key_file_new() #2

declare i32 @g_key_file_load_from_file(%struct._GKeyFile*, i8*, i32, %struct._GError**) #2

declare i32 @assert(...) #2

; Function Attrs: nounwind uwtable
define internal %struct._GHashTable* @VMToolsConfigLoadLegacy() #0 !dbg !464 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca %struct._GHashTable*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %1, metadata !467, metadata !134), !dbg !468
  call void @llvm.dbg.declare(metadata i8** %2, metadata !469, metadata !134), !dbg !470
  call void @llvm.dbg.declare(metadata i8** %3, metadata !471, metadata !134), !dbg !472
  %11 = call i8* @GuestApp_GetConfPath(), !dbg !473
  store i8* %11, i8** %3, align 8, !dbg !472
  call void @llvm.dbg.declare(metadata i32* %4, metadata !474, metadata !134), !dbg !475
  store i32 0, i32* %4, align 4, !dbg !475
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !476, metadata !134), !dbg !532
  store %struct._IO_FILE* null, %struct._IO_FILE** %5, align 8, !dbg !532
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %6, metadata !533, metadata !134), !dbg !534
  store %struct._GHashTable* null, %struct._GHashTable** %6, align 8, !dbg !534
  %12 = load i8*, i8** %3, align 8, !dbg !535
  %13 = icmp eq i8* %12, null, !dbg !537
  br i1 %13, label %14, label %15, !dbg !538

; <label>:14:                                     ; preds = %0
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.20, i32 0, i32 0)) #9, !dbg !539
  unreachable, !dbg !539

; <label>:15:                                     ; preds = %0
  %16 = load i8*, i8** %3, align 8, !dbg !541
  %17 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i8* %16, i32 47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0)), !dbg !542
  store i8* %17, i8** %1, align 8, !dbg !543
  %18 = load i8*, i8** %1, align 8, !dbg !544
  %19 = call noalias i8* @g_filename_from_utf8(i8* %18, i64 -1, i64* null, i64* null, %struct._GError** null), !dbg !545
  store i8* %19, i8** %2, align 8, !dbg !546
  %20 = load i8*, i8** %2, align 8, !dbg !547
  %21 = icmp eq i8* %20, null, !dbg !549
  br i1 %21, label %22, label %23, !dbg !550

; <label>:22:                                     ; preds = %15
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.22, i32 0, i32 0)), !dbg !551
  br label %66, !dbg !553

; <label>:23:                                     ; preds = %15
  %24 = load i8*, i8** %2, align 8, !dbg !554
  %25 = call %struct._IO_FILE* @fopen64(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0)), !dbg !555
  store %struct._IO_FILE* %25, %struct._IO_FILE** %5, align 8, !dbg !556
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !557
  %27 = icmp eq %struct._IO_FILE* %26, null, !dbg !559
  br i1 %27, label %28, label %29, !dbg !560

; <label>:28:                                     ; preds = %23
  br label %66, !dbg !561

; <label>:29:                                     ; preds = %23
  %30 = call %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal, void (i8*)* @free, void (i8*)* @free), !dbg !563
  store %struct._GHashTable* %30, %struct._GHashTable** %6, align 8, !dbg !564
  br label %31, !dbg !565

; <label>:31:                                     ; preds = %63, %29
  call void @llvm.dbg.declare(metadata i8** %7, metadata !566, metadata !134), !dbg !570
  call void @llvm.dbg.declare(metadata i8** %8, metadata !571, metadata !134), !dbg !572
  call void @llvm.dbg.declare(metadata i8** %9, metadata !573, metadata !134), !dbg !574
  call void @llvm.dbg.declare(metadata i32* %10, metadata !575, metadata !134), !dbg !576
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !577
  %33 = call i32 @DictLL_ReadLine(%struct._IO_FILE* %32, i8** %9, i8** %7, i8** %8), !dbg !578
  store i32 %33, i32* %10, align 4, !dbg !579
  %34 = load i32, i32* %10, align 4, !dbg !580
  %35 = icmp eq i32 %34, 0, !dbg !582
  br i1 %35, label %36, label %39, !dbg !583

; <label>:36:                                     ; preds = %31
  %37 = load i8*, i8** %1, align 8, !dbg !584
  %38 = call i8* @Err_ErrString(), !dbg !586
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.24, i32 0, i32 0), i8* %37, i8* %38), !dbg !587
  br label %66, !dbg !589

; <label>:39:                                     ; preds = %31
  %40 = load i32, i32* %10, align 4, !dbg !590
  %41 = icmp eq i32 %40, 1, !dbg !592
  br i1 %41, label %42, label %43, !dbg !593

; <label>:42:                                     ; preds = %39
  br label %65, !dbg !594

; <label>:43:                                     ; preds = %39
  %44 = load i32, i32* %10, align 4, !dbg !596
  %45 = icmp ne i32 %44, 2, !dbg !598
  br i1 %45, label %46, label %47, !dbg !599

; <label>:46:                                     ; preds = %43
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0), i32 111) #9, !dbg !600
  unreachable, !dbg !600

; <label>:47:                                     ; preds = %43
  br label %48

; <label>:48:                                     ; preds = %47
  br label %49

; <label>:49:                                     ; preds = %48
  %50 = load i8*, i8** %7, align 8, !dbg !602
  %51 = icmp ne i8* %50, null, !dbg !602
  br i1 %51, label %52, label %60, !dbg !604

; <label>:52:                                     ; preds = %49
  %53 = load i8*, i8** %8, align 8, !dbg !605
  %54 = icmp ne i8* %53, null, !dbg !605
  br i1 %54, label %55, label %60, !dbg !607

; <label>:55:                                     ; preds = %52
  %56 = load %struct._GHashTable*, %struct._GHashTable** %6, align 8, !dbg !608
  %57 = load i8*, i8** %7, align 8, !dbg !610
  %58 = load i8*, i8** %8, align 8, !dbg !611
  %59 = call i32 @g_hash_table_insert(%struct._GHashTable* %56, i8* %57, i8* %58), !dbg !612
  br label %63, !dbg !613

; <label>:60:                                     ; preds = %52, %49
  %61 = load i8*, i8** %7, align 8, !dbg !614
  call void @free(i8* %61) #8, !dbg !616
  %62 = load i8*, i8** %8, align 8, !dbg !617
  call void @free(i8* %62) #8, !dbg !618
  br label %63

; <label>:63:                                     ; preds = %60, %55
  %64 = load i8*, i8** %9, align 8, !dbg !619
  call void @free(i8* %64) #8, !dbg !620
  br label %31, !dbg !621, !llvm.loop !623

; <label>:65:                                     ; preds = %42
  store i32 1, i32* %4, align 4, !dbg !624
  br label %66, !dbg !625

; <label>:66:                                     ; preds = %65, %36, %28, %22
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !626
  %68 = icmp ne %struct._IO_FILE* %67, null, !dbg !628
  br i1 %68, label %69, label %76, !dbg !629

; <label>:69:                                     ; preds = %66
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !630
  %71 = call i32 @fclose(%struct._IO_FILE* %70), !dbg !632
  %72 = icmp ne i32 %71, 0, !dbg !632
  br i1 %72, label %73, label %76, !dbg !633

; <label>:73:                                     ; preds = %69
  %74 = load i8*, i8** %1, align 8, !dbg !634
  %75 = call i8* @Err_ErrString(), !dbg !636
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i32 0, i32 0), i8* %74, i8* %75), !dbg !637
  store i32 0, i32* %4, align 4, !dbg !639
  br label %76, !dbg !640

; <label>:76:                                     ; preds = %73, %69, %66
  %77 = load i8*, i8** %2, align 8, !dbg !641
  call void @g_free(i8* %77), !dbg !642
  %78 = load i8*, i8** %1, align 8, !dbg !643
  call void @g_free(i8* %78), !dbg !644
  %79 = load i8*, i8** %3, align 8, !dbg !645
  call void @free(i8* %79) #8, !dbg !646
  %80 = load i32, i32* %4, align 4, !dbg !647
  %81 = icmp ne i32 %80, 0, !dbg !647
  br i1 %81, label %88, label %82, !dbg !649

; <label>:82:                                     ; preds = %76
  %83 = load %struct._GHashTable*, %struct._GHashTable** %6, align 8, !dbg !650
  %84 = icmp ne %struct._GHashTable* %83, null, !dbg !653
  br i1 %84, label %85, label %87, !dbg !654

; <label>:85:                                     ; preds = %82
  %86 = load %struct._GHashTable*, %struct._GHashTable** %6, align 8, !dbg !655
  call void @g_hash_table_destroy(%struct._GHashTable* %86), !dbg !657
  store %struct._GHashTable* null, %struct._GHashTable** %6, align 8, !dbg !658
  br label %87, !dbg !659

; <label>:87:                                     ; preds = %85, %82
  br label %88, !dbg !660

; <label>:88:                                     ; preds = %87, %76
  %89 = load %struct._GHashTable*, %struct._GHashTable** %6, align 8, !dbg !661
  ret %struct._GHashTable* %89, !dbg !662
}

; Function Attrs: nounwind uwtable
define internal void @VMToolsConfigUpgrade(%struct._GHashTable*, %struct._GKeyFile*) #0 !dbg !120 {
  %3 = alloca %struct._GHashTable*, align 8
  %4 = alloca %struct._GKeyFile*, align 8
  %5 = alloca %struct.ConfigEntry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct._GHashTable* %0, %struct._GHashTable** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %3, metadata !663, metadata !134), !dbg !664
  store %struct._GKeyFile* %1, %struct._GKeyFile** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GKeyFile** %4, metadata !665, metadata !134), !dbg !666
  call void @llvm.dbg.declare(metadata %struct.ConfigEntry** %5, metadata !667, metadata !134), !dbg !668
  store %struct.ConfigEntry* getelementptr inbounds ([11 x %struct.ConfigEntry], [11 x %struct.ConfigEntry]* @VMToolsConfigUpgrade.entries, i32 0, i32 0), %struct.ConfigEntry** %5, align 8, !dbg !669
  br label %9, !dbg !671

; <label>:9:                                      ; preds = %73, %2
  %10 = load %struct.ConfigEntry*, %struct.ConfigEntry** %5, align 8, !dbg !672
  %11 = getelementptr inbounds %struct.ConfigEntry, %struct.ConfigEntry* %10, i32 0, i32 0, !dbg !675
  %12 = load i8*, i8** %11, align 8, !dbg !675
  %13 = icmp ne i8* %12, null, !dbg !676
  br i1 %13, label %14, label %76, !dbg !677

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.declare(metadata i8** %6, metadata !678, metadata !134), !dbg !680
  %15 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !681
  %16 = load %struct.ConfigEntry*, %struct.ConfigEntry** %5, align 8, !dbg !682
  %17 = getelementptr inbounds %struct.ConfigEntry, %struct.ConfigEntry* %16, i32 0, i32 0, !dbg !683
  %18 = load i8*, i8** %17, align 8, !dbg !683
  %19 = call i8* @g_hash_table_lookup(%struct._GHashTable* %15, i8* %18), !dbg !684
  store i8* %19, i8** %6, align 8, !dbg !680
  %20 = load i8*, i8** %6, align 8, !dbg !685
  %21 = icmp eq i8* %20, null, !dbg !687
  br i1 %21, label %22, label %23, !dbg !688

; <label>:22:                                     ; preds = %14
  br label %73, !dbg !689

; <label>:23:                                     ; preds = %14
  %24 = load %struct.ConfigEntry*, %struct.ConfigEntry** %5, align 8, !dbg !691
  %25 = getelementptr inbounds %struct.ConfigEntry, %struct.ConfigEntry* %24, i32 0, i32 3, !dbg !692
  %26 = load i32, i32* %25, align 8, !dbg !692
  switch i32 %26, label %71 [
    i32 0, label %27
    i32 1, label %40
    i32 2, label %54
    i32 3, label %63
  ], !dbg !693

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.declare(metadata i32* %7, metadata !694, metadata !134), !dbg !697
  %28 = load i8*, i8** %6, align 8, !dbg !698
  %29 = call i32 @strcasecmp(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0)) #10, !dbg !699
  %30 = icmp eq i32 %29, 0, !dbg !700
  %31 = zext i1 %30 to i32, !dbg !700
  store i32 %31, i32* %7, align 4, !dbg !697
  %32 = load %struct._GKeyFile*, %struct._GKeyFile** %4, align 8, !dbg !701
  %33 = load %struct.ConfigEntry*, %struct.ConfigEntry** %5, align 8, !dbg !702
  %34 = getelementptr inbounds %struct.ConfigEntry, %struct.ConfigEntry* %33, i32 0, i32 1, !dbg !703
  %35 = load i8*, i8** %34, align 8, !dbg !703
  %36 = load %struct.ConfigEntry*, %struct.ConfigEntry** %5, align 8, !dbg !704
  %37 = getelementptr inbounds %struct.ConfigEntry, %struct.ConfigEntry* %36, i32 0, i32 2, !dbg !705
  %38 = load i8*, i8** %37, align 8, !dbg !705
  %39 = load i32, i32* %7, align 4, !dbg !706
  call void @g_key_file_set_boolean(%struct._GKeyFile* %32, i8* %35, i8* %38, i32 %39), !dbg !707
  br label %72, !dbg !708

; <label>:40:                                     ; preds = %23
  call void @llvm.dbg.declare(metadata i32* %8, metadata !709, metadata !134), !dbg !711
  %41 = load i8*, i8** %6, align 8, !dbg !712
  %42 = call signext i8 @StrUtil_StrToInt(i32* %8, i8* %41), !dbg !714
  %43 = icmp ne i8 %42, 0, !dbg !714
  br i1 %43, label %44, label %53, !dbg !715

; <label>:44:                                     ; preds = %40
  %45 = load %struct._GKeyFile*, %struct._GKeyFile** %4, align 8, !dbg !716
  %46 = load %struct.ConfigEntry*, %struct.ConfigEntry** %5, align 8, !dbg !718
  %47 = getelementptr inbounds %struct.ConfigEntry, %struct.ConfigEntry* %46, i32 0, i32 1, !dbg !719
  %48 = load i8*, i8** %47, align 8, !dbg !719
  %49 = load %struct.ConfigEntry*, %struct.ConfigEntry** %5, align 8, !dbg !720
  %50 = getelementptr inbounds %struct.ConfigEntry, %struct.ConfigEntry* %49, i32 0, i32 2, !dbg !721
  %51 = load i8*, i8** %50, align 8, !dbg !721
  %52 = load i32, i32* %8, align 4, !dbg !722
  call void @g_key_file_set_integer(%struct._GKeyFile* %45, i8* %48, i8* %51, i32 %52), !dbg !723
  br label %53, !dbg !724

; <label>:53:                                     ; preds = %44, %40
  br label %72, !dbg !725

; <label>:54:                                     ; preds = %23
  %55 = load %struct._GKeyFile*, %struct._GKeyFile** %4, align 8, !dbg !726
  %56 = load %struct.ConfigEntry*, %struct.ConfigEntry** %5, align 8, !dbg !727
  %57 = getelementptr inbounds %struct.ConfigEntry, %struct.ConfigEntry* %56, i32 0, i32 1, !dbg !728
  %58 = load i8*, i8** %57, align 8, !dbg !728
  %59 = load %struct.ConfigEntry*, %struct.ConfigEntry** %5, align 8, !dbg !729
  %60 = getelementptr inbounds %struct.ConfigEntry, %struct.ConfigEntry* %59, i32 0, i32 2, !dbg !730
  %61 = load i8*, i8** %60, align 8, !dbg !730
  %62 = load i8*, i8** %6, align 8, !dbg !731
  call void @g_key_file_set_string(%struct._GKeyFile* %55, i8* %58, i8* %61, i8* %62), !dbg !732
  br label %72, !dbg !733

; <label>:63:                                     ; preds = %23
  %64 = load %struct.ConfigEntry*, %struct.ConfigEntry** %5, align 8, !dbg !734
  %65 = getelementptr inbounds %struct.ConfigEntry, %struct.ConfigEntry* %64, i32 0, i32 4, !dbg !735
  %66 = load i8*, i8** %65, align 8, !dbg !735
  %67 = bitcast i8* %66 to void (%struct._GKeyFile*, %struct.ConfigEntry*, i8*)*, !dbg !736
  %68 = load %struct._GKeyFile*, %struct._GKeyFile** %4, align 8, !dbg !737
  %69 = load %struct.ConfigEntry*, %struct.ConfigEntry** %5, align 8, !dbg !738
  %70 = load i8*, i8** %6, align 8, !dbg !739
  call void %67(%struct._GKeyFile* %68, %struct.ConfigEntry* %69, i8* %70), !dbg !740
  br label %72, !dbg !741

; <label>:71:                                     ; preds = %23
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0), i32 265) #9, !dbg !742
  unreachable, !dbg !742

; <label>:72:                                     ; preds = %63, %54, %53, %27
  br label %73, !dbg !743

; <label>:73:                                     ; preds = %72, %22
  %74 = load %struct.ConfigEntry*, %struct.ConfigEntry** %5, align 8, !dbg !744
  %75 = getelementptr inbounds %struct.ConfigEntry, %struct.ConfigEntry* %74, i32 1, !dbg !744
  store %struct.ConfigEntry* %75, %struct.ConfigEntry** %5, align 8, !dbg !744
  br label %9, !dbg !746, !llvm.loop !747

; <label>:76:                                     ; preds = %9
  ret void, !dbg !749
}

declare noalias i8* @g_strdup_printf(i8*, ...) #2

declare i32 @g_file_test(i8*, i32) #2

; Function Attrs: nounwind
declare i32 @rename(i8*, i8*) #3

declare void @g_clear_error(%struct._GError**) #2

; Function Attrs: nounwind uwtable
define i32 @VMTools_WriteConfig(i8*, %struct._GKeyFile*, %struct._GError**) #0 !dbg !750 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._GKeyFile*, align 8
  %6 = alloca %struct._GError**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct._IO_FILE*, align 8
  %12 = alloca %struct._GError*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !754, metadata !134), !dbg !755
  store %struct._GKeyFile* %1, %struct._GKeyFile** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._GKeyFile** %5, metadata !756, metadata !134), !dbg !757
  store %struct._GError** %2, %struct._GError*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GError*** %6, metadata !758, metadata !134), !dbg !759
  call void @llvm.dbg.declare(metadata i32* %7, metadata !760, metadata !134), !dbg !761
  store i32 0, i32* %7, align 4, !dbg !761
  call void @llvm.dbg.declare(metadata i8** %8, metadata !762, metadata !134), !dbg !763
  store i8* null, i8** %8, align 8, !dbg !763
  call void @llvm.dbg.declare(metadata i8** %9, metadata !764, metadata !134), !dbg !765
  store i8* null, i8** %9, align 8, !dbg !765
  call void @llvm.dbg.declare(metadata i8** %10, metadata !766, metadata !134), !dbg !767
  store i8* null, i8** %10, align 8, !dbg !767
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %11, metadata !768, metadata !134), !dbg !769
  store %struct._IO_FILE* null, %struct._IO_FILE** %11, align 8, !dbg !769
  call void @llvm.dbg.declare(metadata %struct._GError** %12, metadata !770, metadata !134), !dbg !771
  store %struct._GError* null, %struct._GError** %12, align 8, !dbg !771
  %15 = load i8*, i8** %4, align 8, !dbg !772
  %16 = icmp eq i8* %15, null, !dbg !774
  br i1 %16, label %17, label %19, !dbg !775

; <label>:17:                                     ; preds = %3
  %18 = call i8* @VMToolsGetToolsConfFile(), !dbg !776
  store i8* %18, i8** %9, align 8, !dbg !778
  br label %19, !dbg !779

; <label>:19:                                     ; preds = %17, %3
  %20 = load i8*, i8** %4, align 8, !dbg !780
  %21 = icmp ne i8* %20, null, !dbg !781
  br i1 %21, label %22, label %24, !dbg !782

; <label>:22:                                     ; preds = %19
  %23 = load i8*, i8** %4, align 8, !dbg !783
  br label %26, !dbg !785

; <label>:24:                                     ; preds = %19
  %25 = load i8*, i8** %9, align 8, !dbg !786
  br label %26, !dbg !788

; <label>:26:                                     ; preds = %24, %22
  %27 = phi i8* [ %23, %22 ], [ %25, %24 ], !dbg !789
  %28 = call noalias i8* @g_filename_from_utf8(i8* %27, i64 -1, i64* null, i64* null, %struct._GError** %12), !dbg !791
  store i8* %28, i8** %10, align 8, !dbg !792
  %29 = load %struct._GError*, %struct._GError** %12, align 8, !dbg !793
  %30 = icmp ne %struct._GError* %29, null, !dbg !795
  br i1 %30, label %31, label %35, !dbg !796

; <label>:31:                                     ; preds = %26
  %32 = load %struct._GError*, %struct._GError** %12, align 8, !dbg !797
  %33 = getelementptr inbounds %struct._GError, %struct._GError* %32, i32 0, i32 2, !dbg !799
  %34 = load i8*, i8** %33, align 8, !dbg !799
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i32 0, i32 0), i8* %34), !dbg !800
  br label %69, !dbg !801

; <label>:35:                                     ; preds = %26
  %36 = load %struct._GKeyFile*, %struct._GKeyFile** %5, align 8, !dbg !802
  %37 = call noalias i8* @g_key_file_to_data(%struct._GKeyFile* %36, i64* null, %struct._GError** %12), !dbg !803
  store i8* %37, i8** %8, align 8, !dbg !804
  %38 = load %struct._GError*, %struct._GError** %12, align 8, !dbg !805
  %39 = icmp ne %struct._GError* %38, null, !dbg !807
  br i1 %39, label %40, label %44, !dbg !808

; <label>:40:                                     ; preds = %35
  %41 = load %struct._GError*, %struct._GError** %12, align 8, !dbg !809
  %42 = getelementptr inbounds %struct._GError, %struct._GError* %41, i32 0, i32 2, !dbg !811
  %43 = load i8*, i8** %42, align 8, !dbg !811
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0), i8* %43), !dbg !812
  br label %69, !dbg !813

; <label>:44:                                     ; preds = %35
  %45 = load i8*, i8** %10, align 8, !dbg !814
  %46 = call %struct._IO_FILE* @fopen64(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)), !dbg !815
  store %struct._IO_FILE* %46, %struct._IO_FILE** %11, align 8, !dbg !816
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8, !dbg !817
  %48 = icmp eq %struct._IO_FILE* %47, null, !dbg !819
  br i1 %48, label %49, label %56, !dbg !820

; <label>:49:                                     ; preds = %44
  call void @llvm.dbg.declare(metadata i8** %13, metadata !821, metadata !134), !dbg !823
  %50 = call i32* @__errno_location() #1, !dbg !824
  %51 = load i32, i32* %50, align 4, !dbg !825
  %52 = call i8* @strerror(i32 %51) #8, !dbg !826
  store i8* %52, i8** %13, align 8, !dbg !823
  %53 = load i8*, i8** %13, align 8, !dbg !828
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i32 0, i32 0), i8* %53), !dbg !829
  %54 = call i32 @g_file_error_quark(), !dbg !830
  %55 = load i8*, i8** %13, align 8, !dbg !831
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %12, i32 %54, i32 24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8* %55), !dbg !832
  br label %69, !dbg !833

; <label>:56:                                     ; preds = %44
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8, !dbg !834
  %58 = load i8*, i8** %8, align 8, !dbg !836
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @g_fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8* %58), !dbg !837
  %60 = icmp slt i32 %59, 0, !dbg !838
  br i1 %60, label %61, label %68, !dbg !839

; <label>:61:                                     ; preds = %56
  call void @llvm.dbg.declare(metadata i8** %14, metadata !840, metadata !134), !dbg !842
  %62 = call i32* @__errno_location() #1, !dbg !843
  %63 = load i32, i32* %62, align 4, !dbg !844
  %64 = call i8* @strerror(i32 %63) #8, !dbg !845
  store i8* %64, i8** %14, align 8, !dbg !842
  %65 = load i8*, i8** %14, align 8, !dbg !847
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i32 0, i32 0), i8* %65), !dbg !848
  %66 = call i32 @g_file_error_quark(), !dbg !849
  %67 = load i8*, i8** %14, align 8, !dbg !850
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %12, i32 %66, i32 24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8* %67), !dbg !851
  br label %69, !dbg !852

; <label>:68:                                     ; preds = %56
  store i32 1, i32* %7, align 4, !dbg !853
  br label %69, !dbg !854

; <label>:69:                                     ; preds = %68, %61, %49, %40, %31
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8, !dbg !855
  %71 = icmp ne %struct._IO_FILE* %70, null, !dbg !857
  br i1 %71, label %72, label %75, !dbg !858

; <label>:72:                                     ; preds = %69
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8, !dbg !859
  %74 = call i32 @fclose(%struct._IO_FILE* %73), !dbg !861
  br label %75, !dbg !862

; <label>:75:                                     ; preds = %72, %69
  %76 = load %struct._GError**, %struct._GError*** %6, align 8, !dbg !863
  %77 = icmp ne %struct._GError** %76, null, !dbg !865
  br i1 %77, label %78, label %84, !dbg !866

; <label>:78:                                     ; preds = %75
  %79 = load %struct._GError*, %struct._GError** %12, align 8, !dbg !867
  %80 = icmp ne %struct._GError* %79, null, !dbg !869
  br i1 %80, label %81, label %84, !dbg !870

; <label>:81:                                     ; preds = %78
  %82 = load %struct._GError*, %struct._GError** %12, align 8, !dbg !871
  %83 = load %struct._GError**, %struct._GError*** %6, align 8, !dbg !873
  store %struct._GError* %82, %struct._GError** %83, align 8, !dbg !874
  br label %85, !dbg !875

; <label>:84:                                     ; preds = %78, %75
  call void @g_clear_error(%struct._GError** %12), !dbg !876
  br label %85

; <label>:85:                                     ; preds = %84, %81
  %86 = load i8*, i8** %8, align 8, !dbg !878
  call void @g_free(i8* %86), !dbg !879
  %87 = load i8*, i8** %9, align 8, !dbg !880
  call void @g_free(i8* %87), !dbg !881
  %88 = load i8*, i8** %10, align 8, !dbg !882
  call void @g_free(i8* %88), !dbg !883
  %89 = load i32, i32* %7, align 4, !dbg !884
  ret i32 %89, !dbg !885
}

declare void @g_key_file_free(%struct._GKeyFile*) #2

declare void @g_hash_table_destroy(%struct._GHashTable*) #2

declare void @g_free(i8*) #2

declare noalias i8* @g_key_file_to_data(%struct._GKeyFile*, i64*, %struct._GError**) #2

declare %struct._IO_FILE* @fopen64(i8*, i8*) #2

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #2

declare i32 @g_file_error_quark() #2

declare i32 @g_fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define i32 @VMTools_ConfigGetBoolean(%struct._GKeyFile*, i8*, i8*, i32) #0 !dbg !886 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._GKeyFile*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct._GError*, align 8
  %11 = alloca i32, align 4
  store %struct._GKeyFile* %0, %struct._GKeyFile** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GKeyFile** %6, metadata !890, metadata !134), !dbg !891
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !892, metadata !134), !dbg !893
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !894, metadata !134), !dbg !895
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !896, metadata !134), !dbg !897
  call void @llvm.dbg.declare(metadata %struct._GError** %10, metadata !898, metadata !134), !dbg !899
  store %struct._GError* null, %struct._GError** %10, align 8, !dbg !899
  call void @llvm.dbg.declare(metadata i32* %11, metadata !900, metadata !134), !dbg !901
  %12 = load %struct._GKeyFile*, %struct._GKeyFile** %6, align 8, !dbg !902
  %13 = icmp eq %struct._GKeyFile* %12, null, !dbg !904
  br i1 %13, label %20, label %14, !dbg !905

; <label>:14:                                     ; preds = %4
  %15 = load i8*, i8** %7, align 8, !dbg !906
  %16 = icmp eq i8* %15, null, !dbg !908
  br i1 %16, label %20, label %17, !dbg !909

; <label>:17:                                     ; preds = %14
  %18 = load i8*, i8** %8, align 8, !dbg !910
  %19 = icmp eq i8* %18, null, !dbg !912
  br i1 %19, label %20, label %39, !dbg !913

; <label>:20:                                     ; preds = %17, %14, %4
  %21 = load i8*, i8** %7, align 8, !dbg !914
  %22 = icmp ne i8* %21, null, !dbg !914
  br i1 %22, label %23, label %25, !dbg !914

; <label>:23:                                     ; preds = %20
  %24 = load i8*, i8** %7, align 8, !dbg !916
  br label %26, !dbg !918

; <label>:25:                                     ; preds = %20
  br label %26, !dbg !919

; <label>:26:                                     ; preds = %25, %23
  %27 = phi i8* [ %24, %23 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), %25 ], !dbg !921
  %28 = load i8*, i8** %8, align 8, !dbg !923
  %29 = icmp ne i8* %28, null, !dbg !923
  br i1 %29, label %30, label %32, !dbg !923

; <label>:30:                                     ; preds = %26
  %31 = load i8*, i8** %8, align 8, !dbg !924
  br label %33, !dbg !926

; <label>:32:                                     ; preds = %26
  br label %33, !dbg !927

; <label>:33:                                     ; preds = %32, %30
  %34 = phi i8* [ %31, %30 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), %32 ], !dbg !929
  %35 = load i32, i32* %9, align 4, !dbg !931
  %36 = icmp ne i32 %35, 0, !dbg !931
  %37 = select i1 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), !dbg !931
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 128, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.VMTools_ConfigGetBoolean, i32 0, i32 0), i8* %27, i8* %34, i8* %37), !dbg !932
  %38 = load i32, i32* %9, align 4, !dbg !933
  store i32 %38, i32* %5, align 4, !dbg !934
  br label %74, !dbg !934

; <label>:39:                                     ; preds = %17
  %40 = load %struct._GKeyFile*, %struct._GKeyFile** %6, align 8, !dbg !935
  %41 = load i8*, i8** %7, align 8, !dbg !936
  %42 = load i8*, i8** %8, align 8, !dbg !937
  %43 = call i32 @g_key_file_get_boolean(%struct._GKeyFile* %40, i8* %41, i8* %42, %struct._GError** %10), !dbg !938
  store i32 %43, i32* %11, align 4, !dbg !939
  %44 = load %struct._GError*, %struct._GError** %10, align 8, !dbg !940
  %45 = icmp ne %struct._GError* %44, null, !dbg !942
  br i1 %45, label %46, label %72, !dbg !943

; <label>:46:                                     ; preds = %39
  %47 = load %struct._GError*, %struct._GError** %10, align 8, !dbg !944
  %48 = getelementptr inbounds %struct._GError, %struct._GError* %47, i32 0, i32 1, !dbg !947
  %49 = load i32, i32* %48, align 4, !dbg !947
  %50 = icmp ne i32 %49, 3, !dbg !948
  br i1 %50, label %51, label %65, !dbg !949

; <label>:51:                                     ; preds = %46
  %52 = load %struct._GError*, %struct._GError** %10, align 8, !dbg !950
  %53 = getelementptr inbounds %struct._GError, %struct._GError* %52, i32 0, i32 1, !dbg !951
  %54 = load i32, i32* %53, align 4, !dbg !951
  %55 = icmp ne i32 %54, 4, !dbg !952
  br i1 %55, label %56, label %65, !dbg !953

; <label>:56:                                     ; preds = %51
  %57 = load i8*, i8** %7, align 8, !dbg !955
  %58 = load i8*, i8** %8, align 8, !dbg !957
  %59 = load %struct._GError*, %struct._GError** %10, align 8, !dbg !958
  %60 = getelementptr inbounds %struct._GError, %struct._GError* %59, i32 0, i32 2, !dbg !959
  %61 = load i8*, i8** %60, align 8, !dbg !959
  %62 = load %struct._GError*, %struct._GError** %10, align 8, !dbg !960
  %63 = getelementptr inbounds %struct._GError, %struct._GError* %62, i32 0, i32 1, !dbg !961
  %64 = load i32, i32* %63, align 4, !dbg !961
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.VMTools_ConfigGetBoolean, i32 0, i32 0), i8* %57, i8* %58, i8* %61, i32 %64), !dbg !962
  br label %65, !dbg !963

; <label>:65:                                     ; preds = %56, %51, %46
  %66 = load i8*, i8** %7, align 8, !dbg !964
  %67 = load i8*, i8** %8, align 8, !dbg !965
  %68 = load i32, i32* %9, align 4, !dbg !966
  %69 = icmp ne i32 %68, 0, !dbg !966
  %70 = select i1 %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), !dbg !966
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 128, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.VMTools_ConfigGetBoolean, i32 0, i32 0), i8* %66, i8* %67, i8* %70), !dbg !967
  %71 = load i32, i32* %9, align 4, !dbg !968
  store i32 %71, i32* %11, align 4, !dbg !969
  call void @g_clear_error(%struct._GError** %10), !dbg !970
  br label %72, !dbg !971

; <label>:72:                                     ; preds = %65, %39
  %73 = load i32, i32* %11, align 4, !dbg !972
  store i32 %73, i32* %5, align 4, !dbg !973
  br label %74, !dbg !973

; <label>:74:                                     ; preds = %72, %33
  %75 = load i32, i32* %5, align 4, !dbg !974
  ret i32 %75, !dbg !974
}

declare i32 @g_key_file_get_boolean(%struct._GKeyFile*, i8*, i8*, %struct._GError**) #2

; Function Attrs: nounwind uwtable
define i32 @VMTools_ConfigGetInteger(%struct._GKeyFile*, i8*, i8*, i32) #0 !dbg !975 {
  %5 = alloca %struct._GKeyFile*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct._GError*, align 8
  %10 = alloca i32, align 4
  store %struct._GKeyFile* %0, %struct._GKeyFile** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._GKeyFile** %5, metadata !979, metadata !134), !dbg !980
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !981, metadata !134), !dbg !982
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !983, metadata !134), !dbg !984
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !985, metadata !134), !dbg !986
  call void @llvm.dbg.declare(metadata %struct._GError** %9, metadata !987, metadata !134), !dbg !988
  store %struct._GError* null, %struct._GError** %9, align 8, !dbg !988
  call void @llvm.dbg.declare(metadata i32* %10, metadata !989, metadata !134), !dbg !990
  %11 = load %struct._GKeyFile*, %struct._GKeyFile** %5, align 8, !dbg !991
  %12 = load i8*, i8** %6, align 8, !dbg !992
  %13 = load i8*, i8** %7, align 8, !dbg !993
  %14 = call i32 @g_key_file_get_integer(%struct._GKeyFile* %11, i8* %12, i8* %13, %struct._GError** %9), !dbg !994
  store i32 %14, i32* %10, align 4, !dbg !995
  %15 = load %struct._GError*, %struct._GError** %9, align 8, !dbg !996
  %16 = icmp ne %struct._GError* %15, null, !dbg !998
  br i1 %16, label %17, label %41, !dbg !999

; <label>:17:                                     ; preds = %4
  %18 = load %struct._GError*, %struct._GError** %9, align 8, !dbg !1000
  %19 = getelementptr inbounds %struct._GError, %struct._GError* %18, i32 0, i32 1, !dbg !1003
  %20 = load i32, i32* %19, align 4, !dbg !1003
  %21 = icmp ne i32 %20, 3, !dbg !1004
  br i1 %21, label %22, label %36, !dbg !1005

; <label>:22:                                     ; preds = %17
  %23 = load %struct._GError*, %struct._GError** %9, align 8, !dbg !1006
  %24 = getelementptr inbounds %struct._GError, %struct._GError* %23, i32 0, i32 1, !dbg !1007
  %25 = load i32, i32* %24, align 4, !dbg !1007
  %26 = icmp ne i32 %25, 4, !dbg !1008
  br i1 %26, label %27, label %36, !dbg !1009

; <label>:27:                                     ; preds = %22
  %28 = load i8*, i8** %6, align 8, !dbg !1011
  %29 = load i8*, i8** %7, align 8, !dbg !1013
  %30 = load %struct._GError*, %struct._GError** %9, align 8, !dbg !1014
  %31 = getelementptr inbounds %struct._GError, %struct._GError* %30, i32 0, i32 2, !dbg !1015
  %32 = load i8*, i8** %31, align 8, !dbg !1015
  %33 = load %struct._GError*, %struct._GError** %9, align 8, !dbg !1016
  %34 = getelementptr inbounds %struct._GError, %struct._GError* %33, i32 0, i32 1, !dbg !1017
  %35 = load i32, i32* %34, align 4, !dbg !1017
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.VMTools_ConfigGetInteger, i32 0, i32 0), i8* %28, i8* %29, i8* %32, i32 %35), !dbg !1018
  br label %36, !dbg !1019

; <label>:36:                                     ; preds = %27, %22, %17
  %37 = load i8*, i8** %6, align 8, !dbg !1020
  %38 = load i8*, i8** %7, align 8, !dbg !1021
  %39 = load i32, i32* %8, align 4, !dbg !1022
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 128, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.VMTools_ConfigGetInteger, i32 0, i32 0), i8* %37, i8* %38, i32 %39), !dbg !1023
  %40 = load i32, i32* %8, align 4, !dbg !1024
  store i32 %40, i32* %10, align 4, !dbg !1025
  call void @g_clear_error(%struct._GError** %9), !dbg !1026
  br label %41, !dbg !1027

; <label>:41:                                     ; preds = %36, %4
  %42 = load i32, i32* %10, align 4, !dbg !1028
  ret i32 %42, !dbg !1029
}

declare i32 @g_key_file_get_integer(%struct._GKeyFile*, i8*, i8*, %struct._GError**) #2

; Function Attrs: nounwind uwtable
define i8* @VMTools_ConfigGetString(%struct._GKeyFile*, i8*, i8*, i8*) #0 !dbg !1030 {
  %5 = alloca %struct._GKeyFile*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._GError*, align 8
  %10 = alloca i8*, align 8
  store %struct._GKeyFile* %0, %struct._GKeyFile** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._GKeyFile** %5, metadata !1033, metadata !134), !dbg !1034
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1035, metadata !134), !dbg !1036
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1037, metadata !134), !dbg !1038
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1039, metadata !134), !dbg !1040
  call void @llvm.dbg.declare(metadata %struct._GError** %9, metadata !1041, metadata !134), !dbg !1042
  store %struct._GError* null, %struct._GError** %9, align 8, !dbg !1042
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1043, metadata !134), !dbg !1044
  %11 = load %struct._GKeyFile*, %struct._GKeyFile** %5, align 8, !dbg !1045
  %12 = load i8*, i8** %6, align 8, !dbg !1046
  %13 = load i8*, i8** %7, align 8, !dbg !1047
  %14 = call noalias i8* @g_key_file_get_string(%struct._GKeyFile* %11, i8* %12, i8* %13, %struct._GError** %9), !dbg !1048
  store i8* %14, i8** %10, align 8, !dbg !1049
  %15 = load %struct._GError*, %struct._GError** %9, align 8, !dbg !1050
  %16 = icmp ne %struct._GError* %15, null, !dbg !1052
  br i1 %16, label %17, label %48, !dbg !1053

; <label>:17:                                     ; preds = %4
  %18 = load %struct._GError*, %struct._GError** %9, align 8, !dbg !1054
  %19 = getelementptr inbounds %struct._GError, %struct._GError* %18, i32 0, i32 1, !dbg !1057
  %20 = load i32, i32* %19, align 4, !dbg !1057
  %21 = icmp ne i32 %20, 3, !dbg !1058
  br i1 %21, label %22, label %36, !dbg !1059

; <label>:22:                                     ; preds = %17
  %23 = load %struct._GError*, %struct._GError** %9, align 8, !dbg !1060
  %24 = getelementptr inbounds %struct._GError, %struct._GError* %23, i32 0, i32 1, !dbg !1061
  %25 = load i32, i32* %24, align 4, !dbg !1061
  %26 = icmp ne i32 %25, 4, !dbg !1062
  br i1 %26, label %27, label %36, !dbg !1063

; <label>:27:                                     ; preds = %22
  %28 = load i8*, i8** %6, align 8, !dbg !1065
  %29 = load i8*, i8** %7, align 8, !dbg !1067
  %30 = load %struct._GError*, %struct._GError** %9, align 8, !dbg !1068
  %31 = getelementptr inbounds %struct._GError, %struct._GError* %30, i32 0, i32 2, !dbg !1069
  %32 = load i8*, i8** %31, align 8, !dbg !1069
  %33 = load %struct._GError*, %struct._GError** %9, align 8, !dbg !1070
  %34 = getelementptr inbounds %struct._GError, %struct._GError* %33, i32 0, i32 1, !dbg !1071
  %35 = load i32, i32* %34, align 4, !dbg !1071
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.VMTools_ConfigGetString, i32 0, i32 0), i8* %28, i8* %29, i8* %32, i32 %35), !dbg !1072
  br label %36, !dbg !1073

; <label>:36:                                     ; preds = %27, %22, %17
  %37 = load i8*, i8** %6, align 8, !dbg !1074
  %38 = load i8*, i8** %7, align 8, !dbg !1075
  %39 = load i8*, i8** %8, align 8, !dbg !1076
  %40 = icmp ne i8* %39, null, !dbg !1076
  br i1 %40, label %41, label %43, !dbg !1076

; <label>:41:                                     ; preds = %36
  %42 = load i8*, i8** %8, align 8, !dbg !1077
  br label %44, !dbg !1078

; <label>:43:                                     ; preds = %36
  br label %44, !dbg !1079

; <label>:44:                                     ; preds = %43, %41
  %45 = phi i8* [ %42, %41 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), %43 ], !dbg !1081
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 128, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.VMTools_ConfigGetString, i32 0, i32 0), i8* %37, i8* %38, i8* %45), !dbg !1083
  %46 = load i8*, i8** %8, align 8, !dbg !1084
  %47 = call noalias i8* @g_strdup(i8* %46), !dbg !1085
  store i8* %47, i8** %10, align 8, !dbg !1086
  call void @g_clear_error(%struct._GError** %9), !dbg !1087
  br label %48, !dbg !1088

; <label>:48:                                     ; preds = %44, %4
  %49 = load i8*, i8** %10, align 8, !dbg !1089
  ret i8* %49, !dbg !1090
}

declare noalias i8* @g_key_file_get_string(%struct._GKeyFile*, i8*, i8*, %struct._GError**) #2

declare noalias i8* @g_strdup(i8*) #2

declare i8* @GuestApp_GetConfPath() #2

declare noalias i8* @g_build_filename(i8*, ...) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #6

declare %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, void (i8*)*) #2

declare i32 @g_str_hash(i8*) #2

declare i32 @g_str_equal(i8*, i8*) #2

declare i32 @DictLL_ReadLine(%struct._IO_FILE*, i8**, i8**, i8**) #2

declare i8* @Err_ErrString() #2

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @VMToolsConfigUpgradeLog(%struct._GKeyFile*, %struct.ConfigEntry*, i8*) #0 !dbg !1091 {
  %4 = alloca %struct._GKeyFile*, align 8
  %5 = alloca %struct.ConfigEntry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct._GKeyFile* %0, %struct._GKeyFile** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GKeyFile** %4, metadata !1092, metadata !134), !dbg !1093
  store %struct.ConfigEntry* %1, %struct.ConfigEntry** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.ConfigEntry** %5, metadata !1094, metadata !134), !dbg !1095
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1096, metadata !134), !dbg !1097
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1098, metadata !134), !dbg !1099
  %8 = load %struct._GKeyFile*, %struct._GKeyFile** %4, align 8, !dbg !1100
  %9 = load %struct.ConfigEntry*, %struct.ConfigEntry** %5, align 8, !dbg !1101
  %10 = getelementptr inbounds %struct.ConfigEntry, %struct.ConfigEntry* %9, i32 0, i32 1, !dbg !1102
  %11 = load i8*, i8** %10, align 8, !dbg !1102
  call void @g_key_file_set_string(%struct._GKeyFile* %8, i8* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0)), !dbg !1103
  %12 = load %struct._GKeyFile*, %struct._GKeyFile** %4, align 8, !dbg !1104
  %13 = load %struct.ConfigEntry*, %struct.ConfigEntry** %5, align 8, !dbg !1105
  %14 = getelementptr inbounds %struct.ConfigEntry, %struct.ConfigEntry* %13, i32 0, i32 1, !dbg !1106
  %15 = load i8*, i8** %14, align 8, !dbg !1106
  call void @g_key_file_set_string(%struct._GKeyFile* %12, i8* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0)), !dbg !1107
  %16 = load %struct._GKeyFile*, %struct._GKeyFile** %4, align 8, !dbg !1108
  %17 = load %struct.ConfigEntry*, %struct.ConfigEntry** %5, align 8, !dbg !1109
  %18 = getelementptr inbounds %struct.ConfigEntry, %struct.ConfigEntry* %17, i32 0, i32 1, !dbg !1110
  %19 = load i8*, i8** %18, align 8, !dbg !1110
  %20 = load i8*, i8** %6, align 8, !dbg !1111
  call void @g_key_file_set_string(%struct._GKeyFile* %16, i8* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), i8* %20), !dbg !1112
  %21 = load i8*, i8** %6, align 8, !dbg !1113
  %22 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0), i8* %21), !dbg !1114
  store i8* %22, i8** %7, align 8, !dbg !1115
  %23 = load %struct._GKeyFile*, %struct._GKeyFile** %4, align 8, !dbg !1116
  %24 = load %struct.ConfigEntry*, %struct.ConfigEntry** %5, align 8, !dbg !1117
  %25 = getelementptr inbounds %struct.ConfigEntry, %struct.ConfigEntry* %24, i32 0, i32 1, !dbg !1118
  %26 = load i8*, i8** %25, align 8, !dbg !1118
  call void @g_key_file_set_string(%struct._GKeyFile* %23, i8* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0)), !dbg !1119
  %27 = load %struct._GKeyFile*, %struct._GKeyFile** %4, align 8, !dbg !1120
  %28 = load %struct.ConfigEntry*, %struct.ConfigEntry** %5, align 8, !dbg !1121
  %29 = getelementptr inbounds %struct.ConfigEntry, %struct.ConfigEntry* %28, i32 0, i32 1, !dbg !1122
  %30 = load i8*, i8** %29, align 8, !dbg !1122
  call void @g_key_file_set_string(%struct._GKeyFile* %27, i8* %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0)), !dbg !1123
  %31 = load %struct._GKeyFile*, %struct._GKeyFile** %4, align 8, !dbg !1124
  %32 = load %struct.ConfigEntry*, %struct.ConfigEntry** %5, align 8, !dbg !1125
  %33 = getelementptr inbounds %struct.ConfigEntry, %struct.ConfigEntry* %32, i32 0, i32 1, !dbg !1126
  %34 = load i8*, i8** %33, align 8, !dbg !1126
  %35 = load i8*, i8** %7, align 8, !dbg !1127
  call void @g_key_file_set_string(%struct._GKeyFile* %31, i8* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0), i8* %35), !dbg !1128
  %36 = load %struct._GKeyFile*, %struct._GKeyFile** %4, align 8, !dbg !1129
  %37 = load %struct.ConfigEntry*, %struct.ConfigEntry** %5, align 8, !dbg !1130
  %38 = getelementptr inbounds %struct.ConfigEntry, %struct.ConfigEntry* %37, i32 0, i32 1, !dbg !1131
  %39 = load i8*, i8** %38, align 8, !dbg !1131
  %40 = load i8*, i8** %6, align 8, !dbg !1132
  call void @g_key_file_set_string(%struct._GKeyFile* %36, i8* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i8* %40), !dbg !1133
  %41 = load i8*, i8** %7, align 8, !dbg !1134
  call void @g_free(i8* %41), !dbg !1135
  ret void, !dbg !1136
}

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strcasecmp(i8*, i8*) #7

declare void @g_key_file_set_boolean(%struct._GKeyFile*, i8*, i8*, i32) #2

declare signext i8 @StrUtil_StrToInt(i32*, i8*) #2

declare void @g_key_file_set_integer(%struct._GKeyFile*, i8*, i8*, i32) #2

declare void @g_key_file_set_string(%struct._GKeyFile*, i8*, i8*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { noreturn }
attributes #10 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!130, !131}
!llvm.ident = !{!132}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !71, globals: !102)
!1 = !DIFile(filename: "libvmtools_la-vmtoolsConfig.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1151")
!2 = !{!3, !9, !21, !29, !37, !64}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 50, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/glib-2.0/glib/gkeyfile.h", directory: "/home/lichi/Desktop/open-vm-tools/line1151")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "G_KEY_FILE_NONE", value: 0)
!7 = !DIEnumerator(name: "G_KEY_FILE_KEEP_COMMENTS", value: 1)
!8 = !DIEnumerator(name: "G_KEY_FILE_KEEP_TRANSLATIONS", value: 2)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 51, size: 32, align: 32, elements: !11)
!10 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/open-vm-tools/line1151")
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19, !20}
!12 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!13 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!14 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!15 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!16 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!17 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!18 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!19 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!20 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 33, size: 32, align: 32, elements: !22)
!22 = !{!23, !24, !25, !26, !27, !28}
!23 = !DIEnumerator(name: "G_KEY_FILE_ERROR_UNKNOWN_ENCODING", value: 0)
!24 = !DIEnumerator(name: "G_KEY_FILE_ERROR_PARSE", value: 1)
!25 = !DIEnumerator(name: "G_KEY_FILE_ERROR_NOT_FOUND", value: 2)
!26 = !DIEnumerator(name: "G_KEY_FILE_ERROR_KEY_NOT_FOUND", value: 3)
!27 = !DIEnumerator(name: "G_KEY_FILE_ERROR_GROUP_NOT_FOUND", value: 4)
!28 = !DIEnumerator(name: "G_KEY_FILE_ERROR_INVALID_VALUE", value: 5)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 66, size: 32, align: 32, elements: !31)
!30 = !DIFile(filename: "/usr/include/glib-2.0/glib/gfileutils.h", directory: "/home/lichi/Desktop/open-vm-tools/line1151")
!31 = !{!32, !33, !34, !35, !36}
!32 = !DIEnumerator(name: "G_FILE_TEST_IS_REGULAR", value: 1)
!33 = !DIEnumerator(name: "G_FILE_TEST_IS_SYMLINK", value: 2)
!34 = !DIEnumerator(name: "G_FILE_TEST_IS_DIR", value: 4)
!35 = !DIEnumerator(name: "G_FILE_TEST_IS_EXECUTABLE", value: 8)
!36 = !DIEnumerator(name: "G_FILE_TEST_EXISTS", value: 16)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 33, size: 32, align: 32, elements: !38)
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63}
!39 = !DIEnumerator(name: "G_FILE_ERROR_EXIST", value: 0)
!40 = !DIEnumerator(name: "G_FILE_ERROR_ISDIR", value: 1)
!41 = !DIEnumerator(name: "G_FILE_ERROR_ACCES", value: 2)
!42 = !DIEnumerator(name: "G_FILE_ERROR_NAMETOOLONG", value: 3)
!43 = !DIEnumerator(name: "G_FILE_ERROR_NOENT", value: 4)
!44 = !DIEnumerator(name: "G_FILE_ERROR_NOTDIR", value: 5)
!45 = !DIEnumerator(name: "G_FILE_ERROR_NXIO", value: 6)
!46 = !DIEnumerator(name: "G_FILE_ERROR_NODEV", value: 7)
!47 = !DIEnumerator(name: "G_FILE_ERROR_ROFS", value: 8)
!48 = !DIEnumerator(name: "G_FILE_ERROR_TXTBSY", value: 9)
!49 = !DIEnumerator(name: "G_FILE_ERROR_FAULT", value: 10)
!50 = !DIEnumerator(name: "G_FILE_ERROR_LOOP", value: 11)
!51 = !DIEnumerator(name: "G_FILE_ERROR_NOSPC", value: 12)
!52 = !DIEnumerator(name: "G_FILE_ERROR_NOMEM", value: 13)
!53 = !DIEnumerator(name: "G_FILE_ERROR_MFILE", value: 14)
!54 = !DIEnumerator(name: "G_FILE_ERROR_NFILE", value: 15)
!55 = !DIEnumerator(name: "G_FILE_ERROR_BADF", value: 16)
!56 = !DIEnumerator(name: "G_FILE_ERROR_INVAL", value: 17)
!57 = !DIEnumerator(name: "G_FILE_ERROR_PIPE", value: 18)
!58 = !DIEnumerator(name: "G_FILE_ERROR_AGAIN", value: 19)
!59 = !DIEnumerator(name: "G_FILE_ERROR_INTR", value: 20)
!60 = !DIEnumerator(name: "G_FILE_ERROR_IO", value: 21)
!61 = !DIEnumerator(name: "G_FILE_ERROR_PERM", value: 22)
!62 = !DIEnumerator(name: "G_FILE_ERROR_NOSYS", value: 23)
!63 = !DIEnumerator(name: "G_FILE_ERROR_FAILED", value: 24)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !65, line: 43, size: 32, align: 32, elements: !66)
!65 = !DIFile(filename: "vmtoolsConfig.c", directory: "/home/lichi/Desktop/open-vm-tools/line1151")
!66 = !{!67, !68, !69, !70}
!67 = !DIEnumerator(name: "CFG_BOOLEAN", value: 0)
!68 = !DIEnumerator(name: "CFG_INTEGER", value: 1)
!69 = !DIEnumerator(name: "CFG_STRING", value: 2)
!70 = !DIEnumerator(name: "CFG_CALLBACK", value: 3)
!71 = !{!72, !73, !77, !79}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !75, line: 46, baseType: !76)
!75 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1151")
!76 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "CfgCallback", file: !65, line: 59, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!81 = !DISubroutineType(types: !82)
!82 = !{null, !83, !86, !77}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "GKeyFile", file: !4, line: 48, baseType: !85)
!85 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GKeyFile", file: !4, line: 48, flags: DIFlagFwdDecl)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConfigEntry", file: !65, line: 57, baseType: !89)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ConfigEntry", file: !65, line: 51, size: 320, align: 64, elements: !90)
!90 = !{!91, !94, !95, !96, !99}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !89, file: !65, line: 52, baseType: !92, size: 64, align: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, align: 64)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "destGroup", scope: !89, file: !65, line: 53, baseType: !92, size: 64, align: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "destKey", scope: !89, file: !65, line: 54, baseType: !92, size: 64, align: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !89, file: !65, line: 55, baseType: !97, size: 32, align: 32, offset: 192)
!97 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConfigType", file: !65, line: 48, baseType: !64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !89, file: !65, line: 56, baseType: !100, size: 64, align: 64, offset: 256)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !75, line: 77, baseType: !72)
!102 = !{!103, !119}
!103 = distinct !DIGlobalVariable(name: "hadConfFile", scope: !104, file: !65, line: 341, type: !107, isLocal: true, isDefinition: true, variable: i32* @VMTools_LoadConfig.hadConfFile)
!104 = distinct !DISubprogram(name: "VMTools_LoadConfig", scope: !65, file: !65, line: 324, type: !105, isLocal: false, isDefinition: true, scopeLine: 328, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !118)
!105 = !DISubroutineType(types: !106)
!106 = !{!107, !92, !110, !111, !112}
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !75, line: 50, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !75, line: 49, baseType: !109)
!109 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "GKeyFileFlags", file: !4, line: 55, baseType: !3)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, align: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !114, line: 75, baseType: !115)
!114 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/open-vm-tools/line1151")
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !116, line: 139, baseType: !117)
!116 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1151")
!117 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!118 = !{}
!119 = distinct !DIGlobalVariable(name: "entries", scope: !120, file: !65, line: 208, type: !127, isLocal: true, isDefinition: true, variable: [11 x %struct.ConfigEntry]* @VMToolsConfigUpgrade.entries)
!120 = distinct !DISubprogram(name: "VMToolsConfigUpgrade", scope: !65, file: !65, line: 205, type: !121, isLocal: true, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !118)
!121 = !DISubroutineType(types: !122)
!122 = !{null, !123, !83}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !125, line: 37, baseType: !126)
!125 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/open-vm-tools/line1151")
!126 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !125, line: 37, flags: DIFlagFwdDecl)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 3520, align: 64, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 11)
!130 = !{i32 2, !"Dwarf Version", i32 4}
!131 = !{i32 2, !"Debug Info Version", i32 3}
!132 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!133 = !DILocalVariable(name: "path", arg: 1, scope: !104, file: !65, line: 324, type: !92)
!134 = !DIExpression()
!135 = !DILocation(line: 324, column: 33, scope: !104)
!136 = !DILocalVariable(name: "flags", arg: 2, scope: !104, file: !65, line: 325, type: !110)
!137 = !DILocation(line: 325, column: 34, scope: !104)
!138 = !DILocalVariable(name: "config", arg: 3, scope: !104, file: !65, line: 326, type: !111)
!139 = !DILocation(line: 326, column: 31, scope: !104)
!140 = !DILocalVariable(name: "mtime", arg: 4, scope: !104, file: !65, line: 327, type: !112)
!141 = !DILocation(line: 327, column: 28, scope: !104)
!142 = !DILocalVariable(name: "backup", scope: !104, file: !65, line: 329, type: !73)
!143 = !DILocation(line: 329, column: 11, scope: !104)
!144 = !DILocalVariable(name: "defaultPath", scope: !104, file: !65, line: 330, type: !73)
!145 = !DILocation(line: 330, column: 11, scope: !104)
!146 = !DILocalVariable(name: "localPath", scope: !104, file: !65, line: 331, type: !73)
!147 = !DILocation(line: 331, column: 11, scope: !104)
!148 = !DILocalVariable(name: "confStat", scope: !104, file: !65, line: 334, type: !149)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "GStatBuf", file: !150, line: 50, baseType: !151)
!150 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstdio.h", directory: "/home/lichi/Desktop/open-vm-tools/line1151")
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !152, line: 46, size: 1152, align: 64, elements: !153)
!152 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/open-vm-tools/line1151")
!153 = !{!154, !157, !159, !161, !164, !166, !168, !169, !170, !172, !174, !176, !182, !183, !184}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !151, file: !152, line: 48, baseType: !155, size: 64, align: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !116, line: 124, baseType: !156)
!156 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !151, file: !152, line: 53, baseType: !158, size: 64, align: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !116, line: 127, baseType: !156)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !151, file: !152, line: 61, baseType: !160, size: 64, align: 64, offset: 128)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !116, line: 130, baseType: !156)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !151, file: !152, line: 62, baseType: !162, size: 32, align: 32, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !116, line: 129, baseType: !163)
!163 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !151, file: !152, line: 64, baseType: !165, size: 32, align: 32, offset: 224)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !116, line: 125, baseType: !163)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !151, file: !152, line: 65, baseType: !167, size: 32, align: 32, offset: 256)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !116, line: 126, baseType: !163)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !151, file: !152, line: 67, baseType: !109, size: 32, align: 32, offset: 288)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !151, file: !152, line: 69, baseType: !155, size: 64, align: 64, offset: 320)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !151, file: !152, line: 74, baseType: !171, size: 64, align: 64, offset: 384)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !116, line: 131, baseType: !117)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !151, file: !152, line: 78, baseType: !173, size: 64, align: 64, offset: 448)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !116, line: 153, baseType: !117)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !151, file: !152, line: 80, baseType: !175, size: 64, align: 64, offset: 512)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !116, line: 158, baseType: !117)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !151, file: !152, line: 91, baseType: !177, size: 128, align: 64, offset: 576)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !114, line: 120, size: 128, align: 64, elements: !178)
!178 = !{!179, !180}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !177, file: !114, line: 122, baseType: !115, size: 64, align: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !177, file: !114, line: 123, baseType: !181, size: 64, align: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !116, line: 175, baseType: !117)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !151, file: !152, line: 92, baseType: !177, size: 128, align: 64, offset: 704)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !151, file: !152, line: 93, baseType: !177, size: 128, align: 64, offset: 832)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !151, file: !152, line: 106, baseType: !185, size: 192, align: 64, offset: 960)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 192, align: 64, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 3)
!188 = !DILocation(line: 334, column: 13, scope: !104)
!189 = !DILocalVariable(name: "old", scope: !104, file: !65, line: 338, type: !123)
!190 = !DILocation(line: 338, column: 16, scope: !104)
!191 = !DILocalVariable(name: "err", scope: !104, file: !65, line: 339, type: !192)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, align: 64)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !194, line: 42, baseType: !195)
!194 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/open-vm-tools/line1151")
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !194, line: 44, size: 128, align: 64, elements: !196)
!196 = !{!197, !202, !203}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !195, file: !194, line: 46, baseType: !198, size: 32, align: 32)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !199, line: 36, baseType: !200)
!199 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/open-vm-tools/line1151")
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !201, line: 45, baseType: !163)
!201 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/open-vm-tools/line1151")
!202 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !195, file: !194, line: 47, baseType: !108, size: 32, align: 32, offset: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !195, file: !194, line: 48, baseType: !73, size: 64, align: 64, offset: 64)
!204 = !DILocation(line: 339, column: 12, scope: !104)
!205 = !DILocalVariable(name: "cfg", scope: !104, file: !65, line: 340, type: !83)
!206 = !DILocation(line: 340, column: 14, scope: !104)
!207 = !DILocation(line: 343, column: 4, scope: !104)
!208 = distinct !{!208, !207}
!209 = !DILocation(line: 343, column: 12, scope: !210)
!210 = !DILexicalBlockFile(scope: !211, file: !65, discriminator: 1)
!211 = distinct !DILexicalBlock(scope: !212, file: !65, line: 343, column: 12)
!212 = distinct !DILexicalBlock(scope: !104, file: !65, line: 343, column: 6)
!213 = !DILocation(line: 343, column: 19, scope: !210)
!214 = !DILocation(line: 343, column: 7, scope: !215)
!215 = !DILexicalBlockFile(scope: !216, file: !65, discriminator: 2)
!216 = distinct !DILexicalBlock(scope: !211, file: !65, line: 343, column: 5)
!217 = !DILocation(line: 343, column: 16, scope: !218)
!218 = !DILexicalBlockFile(scope: !219, file: !65, discriminator: 3)
!219 = distinct !DILexicalBlock(scope: !211, file: !65, line: 343, column: 14)
!220 = !DILocation(line: 343, column: 103, scope: !218)
!221 = !DILocation(line: 343, column: 120, scope: !222)
!222 = !DILexicalBlockFile(scope: !212, file: !65, discriminator: 4)
!223 = !DILocation(line: 345, column: 8, scope: !224)
!224 = distinct !DILexicalBlock(scope: !104, file: !65, line: 345, column: 8)
!225 = !DILocation(line: 345, column: 13, scope: !224)
!226 = !DILocation(line: 345, column: 8, scope: !104)
!227 = !DILocation(line: 346, column: 21, scope: !228)
!228 = distinct !DILexicalBlock(scope: !224, file: !65, line: 345, column: 21)
!229 = !DILocation(line: 346, column: 19, scope: !228)
!230 = !DILocation(line: 347, column: 4, scope: !228)
!231 = !DILocation(line: 349, column: 39, scope: !104)
!232 = !DILocation(line: 349, column: 44, scope: !104)
!233 = !DILocation(line: 349, column: 38, scope: !104)
!234 = !DILocation(line: 349, column: 19, scope: !235)
!235 = !DILexicalBlockFile(scope: !104, file: !65, discriminator: 1)
!236 = !DILocation(line: 349, column: 38, scope: !235)
!237 = !DILocation(line: 349, column: 26, scope: !238)
!238 = !DILexicalBlockFile(scope: !104, file: !65, discriminator: 2)
!239 = !DILocation(line: 349, column: 38, scope: !238)
!240 = !DILocation(line: 349, column: 38, scope: !241)
!241 = !DILexicalBlockFile(scope: !104, file: !65, discriminator: 3)
!242 = !DILocation(line: 349, column: 16, scope: !241)
!243 = !DILocation(line: 349, column: 14, scope: !241)
!244 = !DILocation(line: 350, column: 8, scope: !245)
!245 = distinct !DILexicalBlock(scope: !104, file: !65, line: 350, column: 8)
!246 = !DILocation(line: 350, column: 12, scope: !245)
!247 = !DILocation(line: 350, column: 8, scope: !104)
!248 = !DILocation(line: 351, column: 93, scope: !249)
!249 = distinct !DILexicalBlock(scope: !245, file: !65, line: 350, column: 20)
!250 = !DILocation(line: 351, column: 98, scope: !249)
!251 = !DILocation(line: 351, column: 7, scope: !249)
!252 = !DILocation(line: 352, column: 7, scope: !249)
!253 = !DILocation(line: 355, column: 13, scope: !254)
!254 = distinct !DILexicalBlock(scope: !104, file: !65, line: 355, column: 8)
!255 = !DILocation(line: 355, column: 8, scope: !254)
!256 = !DILocation(line: 355, column: 35, scope: !254)
!257 = !DILocation(line: 355, column: 8, scope: !104)
!258 = !DILocation(line: 361, column: 7, scope: !259)
!259 = distinct !DILexicalBlock(scope: !254, file: !65, line: 355, column: 42)
!260 = !DILocation(line: 362, column: 12, scope: !261)
!261 = distinct !DILexicalBlock(scope: !259, file: !65, line: 362, column: 10)
!262 = !DILocation(line: 362, column: 11, scope: !261)
!263 = !DILocation(line: 362, column: 16, scope: !261)
!264 = !DILocation(line: 362, column: 10, scope: !259)
!265 = !DILocation(line: 363, column: 11, scope: !266)
!266 = distinct !DILexicalBlock(scope: !261, file: !65, line: 362, column: 27)
!267 = !DILocation(line: 363, column: 10, scope: !266)
!268 = !DILocation(line: 363, column: 86, scope: !269)
!269 = !DILexicalBlockFile(scope: !266, file: !65, discriminator: 1)
!270 = !DILocation(line: 363, column: 10, scope: !271)
!271 = !DILexicalBlockFile(scope: !266, file: !65, discriminator: 2)
!272 = !DILocation(line: 364, column: 10, scope: !266)
!273 = !DILocation(line: 370, column: 14, scope: !274)
!274 = distinct !DILexicalBlock(scope: !275, file: !65, line: 370, column: 14)
!275 = distinct !DILexicalBlock(scope: !261, file: !65, line: 365, column: 14)
!276 = !DILocation(line: 370, column: 14, scope: !275)
!277 = !DILocation(line: 371, column: 19, scope: !278)
!278 = distinct !DILexicalBlock(scope: !274, file: !65, line: 370, column: 27)
!279 = !DILocation(line: 371, column: 17, scope: !278)
!280 = !DILocation(line: 372, column: 10, scope: !278)
!281 = !DILocation(line: 373, column: 22, scope: !275)
!282 = !DILocation(line: 374, column: 10, scope: !275)
!283 = !DILocation(line: 378, column: 16, scope: !104)
!284 = !DILocation(line: 381, column: 8, scope: !285)
!285 = distinct !DILexicalBlock(scope: !104, file: !65, line: 381, column: 8)
!286 = !DILocation(line: 381, column: 14, scope: !285)
!287 = !DILocation(line: 381, column: 21, scope: !285)
!288 = !DILocation(line: 381, column: 33, scope: !289)
!289 = !DILexicalBlockFile(scope: !285, file: !65, discriminator: 1)
!290 = !DILocation(line: 381, column: 41, scope: !289)
!291 = !DILocation(line: 381, column: 46, scope: !289)
!292 = !DILocation(line: 381, column: 45, scope: !289)
!293 = !DILocation(line: 381, column: 42, scope: !289)
!294 = !DILocation(line: 381, column: 8, scope: !289)
!295 = !DILocation(line: 382, column: 7, scope: !296)
!296 = distinct !DILexicalBlock(scope: !285, file: !65, line: 381, column: 53)
!297 = !DILocation(line: 387, column: 10, scope: !104)
!298 = !DILocation(line: 387, column: 8, scope: !104)
!299 = !DILocation(line: 390, column: 17, scope: !300)
!300 = distinct !DILexicalBlock(scope: !104, file: !65, line: 390, column: 8)
!301 = !DILocation(line: 390, column: 25, scope: !300)
!302 = !DILocation(line: 390, column: 8, scope: !104)
!303 = !DILocation(line: 391, column: 7, scope: !304)
!304 = distinct !DILexicalBlock(scope: !300, file: !65, line: 390, column: 31)
!305 = !DILocation(line: 394, column: 30, scope: !104)
!306 = !DILocation(line: 394, column: 35, scope: !104)
!307 = !DILocation(line: 394, column: 46, scope: !104)
!308 = !DILocation(line: 394, column: 4, scope: !104)
!309 = !DILocation(line: 395, column: 8, scope: !310)
!310 = distinct !DILexicalBlock(scope: !104, file: !65, line: 395, column: 8)
!311 = !DILocation(line: 395, column: 12, scope: !310)
!312 = !DILocation(line: 395, column: 8, scope: !104)
!313 = !DILocation(line: 396, column: 7, scope: !314)
!314 = distinct !DILexicalBlock(scope: !310, file: !65, line: 395, column: 20)
!315 = !DILocation(line: 399, column: 8, scope: !316)
!316 = distinct !DILexicalBlock(scope: !104, file: !65, line: 399, column: 8)
!317 = !DILocation(line: 399, column: 13, scope: !316)
!318 = !DILocation(line: 399, column: 18, scope: !316)
!319 = !DILocation(line: 399, column: 8, scope: !104)
!320 = !DILocation(line: 400, column: 80, scope: !321)
!321 = distinct !DILexicalBlock(scope: !316, file: !65, line: 399, column: 55)
!322 = !DILocation(line: 400, column: 85, scope: !321)
!323 = !DILocation(line: 400, column: 7, scope: !321)
!324 = !DILocation(line: 401, column: 1, scope: !321)
!325 = !DILocation(line: 402, column: 7, scope: !321)
!326 = !DILocation(line: 410, column: 8, scope: !327)
!327 = distinct !DILexicalBlock(scope: !104, file: !65, line: 410, column: 8)
!328 = !DILocation(line: 410, column: 13, scope: !327)
!329 = !DILocation(line: 410, column: 8, scope: !104)
!330 = !DILocation(line: 410, column: 13, scope: !331)
!331 = !DILexicalBlockFile(scope: !332, file: !65, discriminator: 1)
!332 = distinct !DILexicalBlock(scope: !327, file: !65, line: 409, column: 21)
!333 = !DILocation(line: 410, column: 11, scope: !331)
!334 = !DILocation(line: 411, column: 11, scope: !335)
!335 = distinct !DILexicalBlock(scope: !332, file: !65, line: 411, column: 11)
!336 = !DILocation(line: 411, column: 15, scope: !335)
!337 = !DILocation(line: 411, column: 11, scope: !332)
!338 = !DILocation(line: 412, column: 10, scope: !339)
!339 = distinct !DILexicalBlock(scope: !335, file: !65, line: 411, column: 23)
!340 = !DILocation(line: 413, column: 1, scope: !339)
!341 = !DILocation(line: 414, column: 10, scope: !339)
!342 = !DILocation(line: 417, column: 28, scope: !332)
!343 = !DILocation(line: 417, column: 33, scope: !332)
!344 = !DILocation(line: 417, column: 7, scope: !332)
!345 = !DILocation(line: 418, column: 42, scope: !332)
!346 = !DILocation(line: 418, column: 16, scope: !332)
!347 = !DILocation(line: 418, column: 14, scope: !332)
!348 = !DILocation(line: 420, column: 24, scope: !349)
!349 = distinct !DILexicalBlock(scope: !332, file: !65, line: 420, column: 11)
!350 = !DILocation(line: 420, column: 12, scope: !349)
!351 = !DILocation(line: 420, column: 11, scope: !332)
!352 = !DILocation(line: 421, column: 21, scope: !353)
!353 = distinct !DILexicalBlock(scope: !354, file: !65, line: 421, column: 14)
!354 = distinct !DILexicalBlock(scope: !349, file: !65, line: 420, column: 57)
!355 = !DILocation(line: 421, column: 32, scope: !353)
!356 = !DILocation(line: 421, column: 14, scope: !353)
!357 = !DILocation(line: 421, column: 40, scope: !353)
!358 = !DILocation(line: 421, column: 14, scope: !354)
!359 = !DILocation(line: 422, column: 13, scope: !360)
!360 = distinct !DILexicalBlock(scope: !353, file: !65, line: 421, column: 47)
!361 = !DILocation(line: 423, column: 1, scope: !360)
!362 = !DILocation(line: 424, column: 13, scope: !360)
!363 = !DILocation(line: 426, column: 7, scope: !354)
!364 = !DILocation(line: 427, column: 10, scope: !365)
!365 = distinct !DILexicalBlock(scope: !349, file: !65, line: 426, column: 14)
!366 = !DILocation(line: 430, column: 7, scope: !332)
!367 = !DILocation(line: 432, column: 33, scope: !368)
!368 = distinct !DILexicalBlock(scope: !332, file: !65, line: 432, column: 11)
!369 = !DILocation(line: 432, column: 38, scope: !368)
!370 = !DILocation(line: 432, column: 32, scope: !368)
!371 = !DILocation(line: 430, column: 48, scope: !372)
!372 = !DILexicalBlockFile(scope: !368, file: !65, discriminator: 1)
!373 = !DILocation(line: 432, column: 32, scope: !372)
!374 = !DILocation(line: 430, column: 55, scope: !375)
!375 = !DILexicalBlockFile(scope: !368, file: !65, discriminator: 2)
!376 = !DILocation(line: 432, column: 32, scope: !375)
!377 = !DILocation(line: 432, column: 32, scope: !378)
!378 = !DILexicalBlockFile(scope: !368, file: !65, discriminator: 3)
!379 = !DILocation(line: 430, column: 68, scope: !378)
!380 = !DILocation(line: 432, column: 12, scope: !378)
!381 = !DILocation(line: 432, column: 11, scope: !378)
!382 = !DILocation(line: 431, column: 1, scope: !383)
!383 = distinct !DILexicalBlock(scope: !368, file: !65, line: 430, column: 80)
!384 = !DILocation(line: 432, column: 10, scope: !385)
!385 = !DILexicalBlockFile(scope: !383, file: !65, discriminator: 4)
!386 = !DILocation(line: 434, column: 4, scope: !332)
!387 = !DILocation(line: 436, column: 4, scope: !104)
!388 = !DILocation(line: 439, column: 20, scope: !104)
!389 = !DILocation(line: 439, column: 4, scope: !104)
!390 = !DILocation(line: 440, column: 8, scope: !104)
!391 = !DILocation(line: 440, column: 4, scope: !104)
!392 = !DILocation(line: 442, column: 4, scope: !104)
!393 = !DILocation(line: 443, column: 8, scope: !394)
!394 = distinct !DILexicalBlock(scope: !104, file: !65, line: 443, column: 8)
!395 = !DILocation(line: 443, column: 12, scope: !394)
!396 = !DILocation(line: 443, column: 8, scope: !104)
!397 = !DILocation(line: 444, column: 28, scope: !398)
!398 = distinct !DILexicalBlock(scope: !394, file: !65, line: 443, column: 20)
!399 = !DILocation(line: 444, column: 7, scope: !398)
!400 = !DILocation(line: 445, column: 4, scope: !398)
!401 = !DILocation(line: 446, column: 8, scope: !402)
!402 = distinct !DILexicalBlock(scope: !104, file: !65, line: 446, column: 8)
!403 = !DILocation(line: 446, column: 12, scope: !402)
!404 = !DILocation(line: 446, column: 8, scope: !104)
!405 = !DILocation(line: 447, column: 12, scope: !406)
!406 = distinct !DILexicalBlock(scope: !407, file: !65, line: 447, column: 11)
!407 = distinct !DILexicalBlock(scope: !402, file: !65, line: 446, column: 20)
!408 = !DILocation(line: 447, column: 11, scope: !406)
!409 = !DILocation(line: 447, column: 19, scope: !406)
!410 = !DILocation(line: 447, column: 11, scope: !407)
!411 = !DILocation(line: 448, column: 27, scope: !412)
!412 = distinct !DILexicalBlock(scope: !406, file: !65, line: 447, column: 27)
!413 = !DILocation(line: 448, column: 26, scope: !412)
!414 = !DILocation(line: 448, column: 10, scope: !412)
!415 = !DILocation(line: 449, column: 7, scope: !412)
!416 = !DILocation(line: 450, column: 17, scope: !407)
!417 = !DILocation(line: 450, column: 8, scope: !407)
!418 = !DILocation(line: 450, column: 15, scope: !407)
!419 = !DILocation(line: 451, column: 11, scope: !420)
!420 = distinct !DILexicalBlock(scope: !407, file: !65, line: 451, column: 11)
!421 = !DILocation(line: 451, column: 17, scope: !420)
!422 = !DILocation(line: 451, column: 11, scope: !407)
!423 = !DILocation(line: 452, column: 27, scope: !424)
!424 = distinct !DILexicalBlock(scope: !420, file: !65, line: 451, column: 25)
!425 = !DILocation(line: 452, column: 35, scope: !424)
!426 = !DILocation(line: 452, column: 11, scope: !424)
!427 = !DILocation(line: 452, column: 17, scope: !424)
!428 = !DILocation(line: 453, column: 7, scope: !424)
!429 = !DILocation(line: 454, column: 4, scope: !407)
!430 = !DILocation(line: 455, column: 11, scope: !104)
!431 = !DILocation(line: 455, column: 4, scope: !104)
!432 = !DILocation(line: 456, column: 11, scope: !104)
!433 = !DILocation(line: 456, column: 4, scope: !104)
!434 = !DILocation(line: 457, column: 11, scope: !104)
!435 = !DILocation(line: 457, column: 4, scope: !104)
!436 = !DILocation(line: 458, column: 12, scope: !104)
!437 = !DILocation(line: 458, column: 16, scope: !104)
!438 = !DILocation(line: 458, column: 4, scope: !104)
!439 = !DILocation(line: 459, column: 1, scope: !104)
!440 = distinct !DISubprogram(name: "VMToolsGetToolsConfFile", scope: !65, file: !65, line: 278, type: !441, isLocal: true, isDefinition: true, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !118)
!441 = !DISubroutineType(types: !442)
!442 = !{!73}
!443 = !DILocalVariable(name: "confPath", scope: !440, file: !65, line: 280, type: !444)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!445 = !DILocation(line: 280, column: 10, scope: !440)
!446 = !DILocation(line: 280, column: 21, scope: !440)
!447 = !DILocalVariable(name: "confFilePath", scope: !440, file: !65, line: 281, type: !73)
!448 = !DILocation(line: 281, column: 11, scope: !440)
!449 = !DILocation(line: 291, column: 8, scope: !450)
!450 = distinct !DILexicalBlock(scope: !440, file: !65, line: 291, column: 8)
!451 = !DILocation(line: 291, column: 17, scope: !450)
!452 = !DILocation(line: 291, column: 8, scope: !440)
!453 = !DILocation(line: 292, column: 18, scope: !454)
!454 = distinct !DILexicalBlock(scope: !450, file: !65, line: 291, column: 25)
!455 = !DILocation(line: 292, column: 16, scope: !454)
!456 = !DILocation(line: 294, column: 4, scope: !454)
!457 = !DILocation(line: 295, column: 36, scope: !440)
!458 = !DILocation(line: 295, column: 19, scope: !440)
!459 = !DILocation(line: 295, column: 17, scope: !440)
!460 = !DILocation(line: 296, column: 9, scope: !440)
!461 = !DILocation(line: 296, column: 4, scope: !440)
!462 = !DILocation(line: 298, column: 11, scope: !440)
!463 = !DILocation(line: 298, column: 4, scope: !440)
!464 = distinct !DISubprogram(name: "VMToolsConfigLoadLegacy", scope: !65, file: !65, line: 69, type: !465, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !118)
!465 = !DISubroutineType(types: !466)
!466 = !{!123}
!467 = !DILocalVariable(name: "path", scope: !464, file: !65, line: 71, type: !73)
!468 = !DILocation(line: 71, column: 11, scope: !464)
!469 = !DILocalVariable(name: "localPath", scope: !464, file: !65, line: 72, type: !73)
!470 = !DILocation(line: 72, column: 11, scope: !464)
!471 = !DILocalVariable(name: "confPath", scope: !464, file: !65, line: 73, type: !444)
!472 = !DILocation(line: 73, column: 10, scope: !464)
!473 = !DILocation(line: 73, column: 21, scope: !464)
!474 = !DILocalVariable(name: "success", scope: !464, file: !65, line: 74, type: !107)
!475 = !DILocation(line: 74, column: 13, scope: !464)
!476 = !DILocalVariable(name: "stream", scope: !464, file: !65, line: 75, type: !477)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64, align: 64)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !479, line: 48, baseType: !480)
!479 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/open-vm-tools/line1151")
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !481, line: 241, size: 1728, align: 64, elements: !482)
!481 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/open-vm-tools/line1151")
!482 = !{!483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !503, !504, !505, !506, !507, !509, !511, !515, !518, !520, !521, !522, !523, !524, !527, !528}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !480, file: !481, line: 242, baseType: !109, size: 32, align: 32)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !480, file: !481, line: 247, baseType: !444, size: 64, align: 64, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !480, file: !481, line: 248, baseType: !444, size: 64, align: 64, offset: 128)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !480, file: !481, line: 249, baseType: !444, size: 64, align: 64, offset: 192)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !480, file: !481, line: 250, baseType: !444, size: 64, align: 64, offset: 256)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !480, file: !481, line: 251, baseType: !444, size: 64, align: 64, offset: 320)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !480, file: !481, line: 252, baseType: !444, size: 64, align: 64, offset: 384)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !480, file: !481, line: 253, baseType: !444, size: 64, align: 64, offset: 448)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !480, file: !481, line: 254, baseType: !444, size: 64, align: 64, offset: 512)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !480, file: !481, line: 256, baseType: !444, size: 64, align: 64, offset: 576)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !480, file: !481, line: 257, baseType: !444, size: 64, align: 64, offset: 640)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !480, file: !481, line: 258, baseType: !444, size: 64, align: 64, offset: 704)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !480, file: !481, line: 260, baseType: !496, size: 64, align: 64, offset: 768)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64, align: 64)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !481, line: 156, size: 192, align: 64, elements: !498)
!498 = !{!499, !500, !502}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !497, file: !481, line: 157, baseType: !496, size: 64, align: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !497, file: !481, line: 158, baseType: !501, size: 64, align: 64, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64, align: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !497, file: !481, line: 162, baseType: !109, size: 32, align: 32, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !480, file: !481, line: 262, baseType: !501, size: 64, align: 64, offset: 832)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !480, file: !481, line: 264, baseType: !109, size: 32, align: 32, offset: 896)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !480, file: !481, line: 268, baseType: !109, size: 32, align: 32, offset: 928)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !480, file: !481, line: 270, baseType: !171, size: 64, align: 64, offset: 960)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !480, file: !481, line: 274, baseType: !508, size: 16, align: 16, offset: 1024)
!508 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !480, file: !481, line: 275, baseType: !510, size: 8, align: 8, offset: 1040)
!510 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !480, file: !481, line: 276, baseType: !512, size: 8, align: 8, offset: 1048)
!512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 8, align: 8, elements: !513)
!513 = !{!514}
!514 = !DISubrange(count: 1)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !480, file: !481, line: 280, baseType: !516, size: 64, align: 64, offset: 1088)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64, align: 64)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !481, line: 150, baseType: null)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !480, file: !481, line: 289, baseType: !519, size: 64, align: 64, offset: 1152)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !116, line: 132, baseType: !117)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !480, file: !481, line: 297, baseType: !72, size: 64, align: 64, offset: 1216)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !480, file: !481, line: 298, baseType: !72, size: 64, align: 64, offset: 1280)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !480, file: !481, line: 299, baseType: !72, size: 64, align: 64, offset: 1344)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !480, file: !481, line: 300, baseType: !72, size: 64, align: 64, offset: 1408)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !480, file: !481, line: 302, baseType: !525, size: 64, align: 64, offset: 1472)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !526, line: 216, baseType: !156)
!526 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line1151")
!527 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !480, file: !481, line: 303, baseType: !109, size: 32, align: 32, offset: 1536)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !480, file: !481, line: 305, baseType: !529, size: 160, align: 8, offset: 1568)
!529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 160, align: 8, elements: !530)
!530 = !{!531}
!531 = !DISubrange(count: 20)
!532 = !DILocation(line: 75, column: 10, scope: !464)
!533 = !DILocalVariable(name: "dict", scope: !464, file: !65, line: 76, type: !123)
!534 = !DILocation(line: 76, column: 16, scope: !464)
!535 = !DILocation(line: 78, column: 8, scope: !536)
!536 = distinct !DILexicalBlock(scope: !464, file: !65, line: 78, column: 8)
!537 = !DILocation(line: 78, column: 17, scope: !536)
!538 = !DILocation(line: 78, column: 8, scope: !464)
!539 = !DILocation(line: 79, column: 7, scope: !540)
!540 = distinct !DILexicalBlock(scope: !536, file: !65, line: 78, column: 25)
!541 = !DILocation(line: 83, column: 37, scope: !464)
!542 = !DILocation(line: 83, column: 11, scope: !464)
!543 = !DILocation(line: 83, column: 9, scope: !464)
!544 = !DILocation(line: 84, column: 38, scope: !464)
!545 = !DILocation(line: 84, column: 16, scope: !464)
!546 = !DILocation(line: 84, column: 14, scope: !464)
!547 = !DILocation(line: 85, column: 8, scope: !548)
!548 = distinct !DILexicalBlock(scope: !464, file: !65, line: 85, column: 8)
!549 = !DILocation(line: 85, column: 18, scope: !548)
!550 = !DILocation(line: 85, column: 8, scope: !464)
!551 = !DILocation(line: 86, column: 7, scope: !552)
!552 = distinct !DILexicalBlock(scope: !548, file: !65, line: 85, column: 26)
!553 = !DILocation(line: 87, column: 7, scope: !552)
!554 = !DILocation(line: 90, column: 19, scope: !464)
!555 = !DILocation(line: 90, column: 13, scope: !464)
!556 = !DILocation(line: 90, column: 11, scope: !464)
!557 = !DILocation(line: 91, column: 8, scope: !558)
!558 = distinct !DILexicalBlock(scope: !464, file: !65, line: 91, column: 8)
!559 = !DILocation(line: 91, column: 15, scope: !558)
!560 = !DILocation(line: 91, column: 8, scope: !464)
!561 = !DILocation(line: 92, column: 7, scope: !562)
!562 = distinct !DILexicalBlock(scope: !558, file: !65, line: 91, column: 23)
!563 = !DILocation(line: 95, column: 11, scope: !464)
!564 = !DILocation(line: 95, column: 9, scope: !464)
!565 = !DILocation(line: 97, column: 4, scope: !464)
!566 = !DILocalVariable(name: "name", scope: !567, file: !65, line: 98, type: !444)
!567 = distinct !DILexicalBlock(scope: !568, file: !65, line: 97, column: 13)
!568 = distinct !DILexicalBlock(scope: !569, file: !65, line: 97, column: 4)
!569 = distinct !DILexicalBlock(scope: !464, file: !65, line: 97, column: 4)
!570 = !DILocation(line: 98, column: 13, scope: !567)
!571 = !DILocalVariable(name: "value", scope: !567, file: !65, line: 99, type: !444)
!572 = !DILocation(line: 99, column: 13, scope: !567)
!573 = !DILocalVariable(name: "line", scope: !567, file: !65, line: 100, type: !444)
!574 = !DILocation(line: 100, column: 13, scope: !567)
!575 = !DILocalVariable(name: "status", scope: !567, file: !65, line: 101, type: !109)
!576 = !DILocation(line: 101, column: 11, scope: !567)
!577 = !DILocation(line: 103, column: 32, scope: !567)
!578 = !DILocation(line: 103, column: 16, scope: !567)
!579 = !DILocation(line: 103, column: 14, scope: !567)
!580 = !DILocation(line: 104, column: 11, scope: !581)
!581 = distinct !DILexicalBlock(scope: !567, file: !65, line: 104, column: 11)
!582 = !DILocation(line: 104, column: 18, scope: !581)
!583 = !DILocation(line: 104, column: 11, scope: !567)
!584 = !DILocation(line: 105, column: 95, scope: !585)
!585 = distinct !DILexicalBlock(scope: !581, file: !65, line: 104, column: 24)
!586 = !DILocation(line: 105, column: 101, scope: !585)
!587 = !DILocation(line: 105, column: 10, scope: !588)
!588 = !DILexicalBlockFile(scope: !585, file: !65, discriminator: 1)
!589 = !DILocation(line: 107, column: 10, scope: !585)
!590 = !DILocation(line: 108, column: 18, scope: !591)
!591 = distinct !DILexicalBlock(scope: !581, file: !65, line: 108, column: 18)
!592 = !DILocation(line: 108, column: 25, scope: !591)
!593 = !DILocation(line: 108, column: 18, scope: !581)
!594 = !DILocation(line: 109, column: 10, scope: !595)
!595 = distinct !DILexicalBlock(scope: !591, file: !65, line: 108, column: 31)
!596 = !DILocation(line: 110, column: 18, scope: !597)
!597 = distinct !DILexicalBlock(scope: !591, file: !65, line: 110, column: 18)
!598 = !DILocation(line: 110, column: 25, scope: !597)
!599 = !DILocation(line: 110, column: 18, scope: !591)
!600 = !DILocation(line: 111, column: 10, scope: !601)
!601 = distinct !DILexicalBlock(scope: !597, file: !65, line: 110, column: 31)
!602 = !DILocation(line: 114, column: 11, scope: !603)
!603 = distinct !DILexicalBlock(scope: !567, file: !65, line: 114, column: 11)
!604 = !DILocation(line: 114, column: 16, scope: !603)
!605 = !DILocation(line: 114, column: 19, scope: !606)
!606 = !DILexicalBlockFile(scope: !603, file: !65, discriminator: 1)
!607 = !DILocation(line: 114, column: 11, scope: !606)
!608 = !DILocation(line: 115, column: 30, scope: !609)
!609 = distinct !DILexicalBlock(scope: !603, file: !65, line: 114, column: 26)
!610 = !DILocation(line: 115, column: 36, scope: !609)
!611 = !DILocation(line: 115, column: 42, scope: !609)
!612 = !DILocation(line: 115, column: 10, scope: !609)
!613 = !DILocation(line: 116, column: 7, scope: !609)
!614 = !DILocation(line: 117, column: 15, scope: !615)
!615 = distinct !DILexicalBlock(scope: !603, file: !65, line: 116, column: 14)
!616 = !DILocation(line: 117, column: 10, scope: !615)
!617 = !DILocation(line: 118, column: 15, scope: !615)
!618 = !DILocation(line: 118, column: 10, scope: !615)
!619 = !DILocation(line: 121, column: 12, scope: !567)
!620 = !DILocation(line: 121, column: 7, scope: !567)
!621 = !DILocation(line: 97, column: 4, scope: !622)
!622 = !DILexicalBlockFile(scope: !568, file: !65, discriminator: 1)
!623 = distinct !{!623, !565}
!624 = !DILocation(line: 124, column: 12, scope: !464)
!625 = !DILocation(line: 124, column: 4, scope: !464)
!626 = !DILocation(line: 127, column: 8, scope: !627)
!627 = distinct !DILexicalBlock(scope: !464, file: !65, line: 127, column: 8)
!628 = !DILocation(line: 127, column: 15, scope: !627)
!629 = !DILocation(line: 127, column: 22, scope: !627)
!630 = !DILocation(line: 127, column: 32, scope: !631)
!631 = !DILexicalBlockFile(scope: !627, file: !65, discriminator: 1)
!632 = !DILocation(line: 127, column: 25, scope: !631)
!633 = !DILocation(line: 127, column: 8, scope: !631)
!634 = !DILocation(line: 128, column: 81, scope: !635)
!635 = distinct !DILexicalBlock(scope: !627, file: !65, line: 127, column: 41)
!636 = !DILocation(line: 128, column: 87, scope: !635)
!637 = !DILocation(line: 128, column: 7, scope: !638)
!638 = !DILexicalBlockFile(scope: !635, file: !65, discriminator: 1)
!639 = !DILocation(line: 129, column: 15, scope: !635)
!640 = !DILocation(line: 130, column: 4, scope: !635)
!641 = !DILocation(line: 132, column: 11, scope: !464)
!642 = !DILocation(line: 132, column: 4, scope: !464)
!643 = !DILocation(line: 133, column: 11, scope: !464)
!644 = !DILocation(line: 133, column: 4, scope: !464)
!645 = !DILocation(line: 134, column: 9, scope: !464)
!646 = !DILocation(line: 134, column: 4, scope: !464)
!647 = !DILocation(line: 136, column: 9, scope: !648)
!648 = distinct !DILexicalBlock(scope: !464, file: !65, line: 136, column: 8)
!649 = !DILocation(line: 136, column: 8, scope: !464)
!650 = !DILocation(line: 137, column: 11, scope: !651)
!651 = distinct !DILexicalBlock(scope: !652, file: !65, line: 137, column: 11)
!652 = distinct !DILexicalBlock(scope: !648, file: !65, line: 136, column: 18)
!653 = !DILocation(line: 137, column: 16, scope: !651)
!654 = !DILocation(line: 137, column: 11, scope: !652)
!655 = !DILocation(line: 138, column: 31, scope: !656)
!656 = distinct !DILexicalBlock(scope: !651, file: !65, line: 137, column: 24)
!657 = !DILocation(line: 138, column: 10, scope: !656)
!658 = !DILocation(line: 139, column: 15, scope: !656)
!659 = !DILocation(line: 140, column: 7, scope: !656)
!660 = !DILocation(line: 141, column: 4, scope: !652)
!661 = !DILocation(line: 143, column: 11, scope: !464)
!662 = !DILocation(line: 143, column: 4, scope: !464)
!663 = !DILocalVariable(name: "old", arg: 1, scope: !120, file: !65, line: 205, type: !123)
!664 = !DILocation(line: 205, column: 34, scope: !120)
!665 = !DILocalVariable(name: "dst", arg: 2, scope: !120, file: !65, line: 206, type: !83)
!666 = !DILocation(line: 206, column: 32, scope: !120)
!667 = !DILocalVariable(name: "entry", scope: !120, file: !65, line: 229, type: !86)
!668 = !DILocation(line: 229, column: 23, scope: !120)
!669 = !DILocation(line: 231, column: 15, scope: !670)
!670 = distinct !DILexicalBlock(scope: !120, file: !65, line: 231, column: 4)
!671 = !DILocation(line: 231, column: 9, scope: !670)
!672 = !DILocation(line: 231, column: 26, scope: !673)
!673 = !DILexicalBlockFile(scope: !674, file: !65, discriminator: 1)
!674 = distinct !DILexicalBlock(scope: !670, file: !65, line: 231, column: 4)
!675 = !DILocation(line: 231, column: 33, scope: !673)
!676 = !DILocation(line: 231, column: 37, scope: !673)
!677 = !DILocation(line: 231, column: 4, scope: !673)
!678 = !DILocalVariable(name: "value", scope: !679, file: !65, line: 232, type: !77)
!679 = distinct !DILexicalBlock(scope: !674, file: !65, line: 231, column: 54)
!680 = !DILocation(line: 232, column: 19, scope: !679)
!681 = !DILocation(line: 232, column: 47, scope: !679)
!682 = !DILocation(line: 232, column: 52, scope: !679)
!683 = !DILocation(line: 232, column: 59, scope: !679)
!684 = !DILocation(line: 232, column: 27, scope: !679)
!685 = !DILocation(line: 234, column: 11, scope: !686)
!686 = distinct !DILexicalBlock(scope: !679, file: !65, line: 234, column: 11)
!687 = !DILocation(line: 234, column: 17, scope: !686)
!688 = !DILocation(line: 234, column: 11, scope: !679)
!689 = !DILocation(line: 235, column: 10, scope: !690)
!690 = distinct !DILexicalBlock(scope: !686, file: !65, line: 234, column: 25)
!691 = !DILocation(line: 238, column: 15, scope: !679)
!692 = !DILocation(line: 238, column: 22, scope: !679)
!693 = !DILocation(line: 238, column: 7, scope: !679)
!694 = !DILocalVariable(name: "val", scope: !695, file: !65, line: 241, type: !107)
!695 = distinct !DILexicalBlock(scope: !696, file: !65, line: 240, column: 10)
!696 = distinct !DILexicalBlock(scope: !679, file: !65, line: 238, column: 28)
!697 = !DILocation(line: 241, column: 22, scope: !695)
!698 = !DILocation(line: 241, column: 39, scope: !695)
!699 = !DILocation(line: 241, column: 28, scope: !695)
!700 = !DILocation(line: 241, column: 54, scope: !695)
!701 = !DILocation(line: 242, column: 36, scope: !695)
!702 = !DILocation(line: 242, column: 41, scope: !695)
!703 = !DILocation(line: 242, column: 48, scope: !695)
!704 = !DILocation(line: 242, column: 59, scope: !695)
!705 = !DILocation(line: 242, column: 66, scope: !695)
!706 = !DILocation(line: 242, column: 75, scope: !695)
!707 = !DILocation(line: 242, column: 13, scope: !695)
!708 = !DILocation(line: 243, column: 13, scope: !695)
!709 = !DILocalVariable(name: "val", scope: !710, file: !65, line: 248, type: !108)
!710 = distinct !DILexicalBlock(scope: !696, file: !65, line: 247, column: 10)
!711 = !DILocation(line: 248, column: 18, scope: !710)
!712 = !DILocation(line: 249, column: 40, scope: !713)
!713 = distinct !DILexicalBlock(scope: !710, file: !65, line: 249, column: 17)
!714 = !DILocation(line: 249, column: 17, scope: !713)
!715 = !DILocation(line: 249, column: 17, scope: !710)
!716 = !DILocation(line: 250, column: 39, scope: !717)
!717 = distinct !DILexicalBlock(scope: !713, file: !65, line: 249, column: 48)
!718 = !DILocation(line: 250, column: 44, scope: !717)
!719 = !DILocation(line: 250, column: 51, scope: !717)
!720 = !DILocation(line: 250, column: 62, scope: !717)
!721 = !DILocation(line: 250, column: 69, scope: !717)
!722 = !DILocation(line: 250, column: 78, scope: !717)
!723 = !DILocation(line: 250, column: 16, scope: !717)
!724 = !DILocation(line: 251, column: 13, scope: !717)
!725 = !DILocation(line: 252, column: 13, scope: !710)
!726 = !DILocation(line: 256, column: 32, scope: !696)
!727 = !DILocation(line: 256, column: 37, scope: !696)
!728 = !DILocation(line: 256, column: 44, scope: !696)
!729 = !DILocation(line: 256, column: 55, scope: !696)
!730 = !DILocation(line: 256, column: 62, scope: !696)
!731 = !DILocation(line: 256, column: 71, scope: !696)
!732 = !DILocation(line: 256, column: 10, scope: !696)
!733 = !DILocation(line: 257, column: 10, scope: !696)
!734 = !DILocation(line: 261, column: 24, scope: !696)
!735 = !DILocation(line: 261, column: 31, scope: !696)
!736 = !DILocation(line: 261, column: 11, scope: !696)
!737 = !DILocation(line: 261, column: 37, scope: !696)
!738 = !DILocation(line: 261, column: 42, scope: !696)
!739 = !DILocation(line: 261, column: 49, scope: !696)
!740 = !DILocation(line: 261, column: 10, scope: !696)
!741 = !DILocation(line: 262, column: 10, scope: !696)
!742 = !DILocation(line: 265, column: 10, scope: !696)
!743 = !DILocation(line: 267, column: 4, scope: !679)
!744 = !DILocation(line: 231, column: 50, scope: !745)
!745 = !DILexicalBlockFile(scope: !674, file: !65, discriminator: 2)
!746 = !DILocation(line: 231, column: 4, scope: !745)
!747 = distinct !{!747, !748}
!748 = !DILocation(line: 231, column: 4, scope: !120)
!749 = !DILocation(line: 268, column: 1, scope: !120)
!750 = distinct !DISubprogram(name: "VMTools_WriteConfig", scope: !65, file: !65, line: 473, type: !751, isLocal: false, isDefinition: true, scopeLine: 476, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !118)
!751 = !DISubroutineType(types: !752)
!752 = !{!107, !92, !83, !753}
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, align: 64)
!754 = !DILocalVariable(name: "path", arg: 1, scope: !750, file: !65, line: 473, type: !92)
!755 = !DILocation(line: 473, column: 34, scope: !750)
!756 = !DILocalVariable(name: "config", arg: 2, scope: !750, file: !65, line: 474, type: !83)
!757 = !DILocation(line: 474, column: 31, scope: !750)
!758 = !DILocalVariable(name: "err", arg: 3, scope: !750, file: !65, line: 475, type: !753)
!759 = !DILocation(line: 475, column: 30, scope: !750)
!760 = !DILocalVariable(name: "ret", scope: !750, file: !65, line: 477, type: !107)
!761 = !DILocation(line: 477, column: 13, scope: !750)
!762 = !DILocalVariable(name: "data", scope: !750, file: !65, line: 478, type: !73)
!763 = !DILocation(line: 478, column: 11, scope: !750)
!764 = !DILocalVariable(name: "defaultPath", scope: !750, file: !65, line: 479, type: !73)
!765 = !DILocation(line: 479, column: 11, scope: !750)
!766 = !DILocalVariable(name: "localPath", scope: !750, file: !65, line: 480, type: !73)
!767 = !DILocation(line: 480, column: 11, scope: !750)
!768 = !DILocalVariable(name: "out", scope: !750, file: !65, line: 481, type: !477)
!769 = !DILocation(line: 481, column: 10, scope: !750)
!770 = !DILocalVariable(name: "lerr", scope: !750, file: !65, line: 482, type: !192)
!771 = !DILocation(line: 482, column: 12, scope: !750)
!772 = !DILocation(line: 486, column: 8, scope: !773)
!773 = distinct !DILexicalBlock(scope: !750, file: !65, line: 486, column: 8)
!774 = !DILocation(line: 486, column: 13, scope: !773)
!775 = !DILocation(line: 486, column: 8, scope: !750)
!776 = !DILocation(line: 487, column: 21, scope: !777)
!777 = distinct !DILexicalBlock(scope: !773, file: !65, line: 486, column: 21)
!778 = !DILocation(line: 487, column: 19, scope: !777)
!779 = !DILocation(line: 488, column: 4, scope: !777)
!780 = !DILocation(line: 490, column: 39, scope: !750)
!781 = !DILocation(line: 490, column: 44, scope: !750)
!782 = !DILocation(line: 490, column: 38, scope: !750)
!783 = !DILocation(line: 490, column: 19, scope: !784)
!784 = !DILexicalBlockFile(scope: !750, file: !65, discriminator: 1)
!785 = !DILocation(line: 490, column: 38, scope: !784)
!786 = !DILocation(line: 490, column: 26, scope: !787)
!787 = !DILexicalBlockFile(scope: !750, file: !65, discriminator: 2)
!788 = !DILocation(line: 490, column: 38, scope: !787)
!789 = !DILocation(line: 490, column: 38, scope: !790)
!790 = !DILexicalBlockFile(scope: !750, file: !65, discriminator: 3)
!791 = !DILocation(line: 490, column: 16, scope: !790)
!792 = !DILocation(line: 490, column: 14, scope: !790)
!793 = !DILocation(line: 491, column: 8, scope: !794)
!794 = distinct !DILexicalBlock(scope: !750, file: !65, line: 491, column: 8)
!795 = !DILocation(line: 491, column: 13, scope: !794)
!796 = !DILocation(line: 491, column: 8, scope: !750)
!797 = !DILocation(line: 492, column: 93, scope: !798)
!798 = distinct !DILexicalBlock(scope: !794, file: !65, line: 491, column: 21)
!799 = !DILocation(line: 492, column: 99, scope: !798)
!800 = !DILocation(line: 492, column: 7, scope: !798)
!801 = !DILocation(line: 493, column: 7, scope: !798)
!802 = !DILocation(line: 496, column: 30, scope: !750)
!803 = !DILocation(line: 496, column: 11, scope: !750)
!804 = !DILocation(line: 496, column: 9, scope: !750)
!805 = !DILocation(line: 497, column: 8, scope: !806)
!806 = distinct !DILexicalBlock(scope: !750, file: !65, line: 497, column: 8)
!807 = !DILocation(line: 497, column: 13, scope: !806)
!808 = !DILocation(line: 497, column: 8, scope: !750)
!809 = !DILocation(line: 498, column: 86, scope: !810)
!810 = distinct !DILexicalBlock(scope: !806, file: !65, line: 497, column: 21)
!811 = !DILocation(line: 498, column: 92, scope: !810)
!812 = !DILocation(line: 498, column: 7, scope: !810)
!813 = !DILocation(line: 499, column: 7, scope: !810)
!814 = !DILocation(line: 502, column: 16, scope: !750)
!815 = !DILocation(line: 502, column: 10, scope: !750)
!816 = !DILocation(line: 502, column: 8, scope: !750)
!817 = !DILocation(line: 504, column: 8, scope: !818)
!818 = distinct !DILexicalBlock(scope: !750, file: !65, line: 504, column: 8)
!819 = !DILocation(line: 504, column: 12, scope: !818)
!820 = !DILocation(line: 504, column: 8, scope: !750)
!821 = !DILocalVariable(name: "errstr", scope: !822, file: !65, line: 505, type: !77)
!822 = distinct !DILexicalBlock(scope: !818, file: !65, line: 504, column: 20)
!823 = !DILocation(line: 505, column: 19, scope: !822)
!824 = !DILocation(line: 505, column: 38, scope: !822)
!825 = !DILocation(line: 505, column: 37, scope: !822)
!826 = !DILocation(line: 505, column: 28, scope: !827)
!827 = !DILexicalBlockFile(scope: !822, file: !65, discriminator: 1)
!828 = !DILocation(line: 506, column: 94, scope: !822)
!829 = !DILocation(line: 506, column: 7, scope: !822)
!830 = !DILocation(line: 507, column: 26, scope: !822)
!831 = !DILocation(line: 507, column: 76, scope: !822)
!832 = !DILocation(line: 507, column: 7, scope: !827)
!833 = !DILocation(line: 508, column: 7, scope: !822)
!834 = !DILocation(line: 511, column: 18, scope: !835)
!835 = distinct !DILexicalBlock(scope: !750, file: !65, line: 511, column: 8)
!836 = !DILocation(line: 511, column: 29, scope: !835)
!837 = !DILocation(line: 511, column: 8, scope: !835)
!838 = !DILocation(line: 511, column: 35, scope: !835)
!839 = !DILocation(line: 511, column: 8, scope: !750)
!840 = !DILocalVariable(name: "errstr", scope: !841, file: !65, line: 512, type: !77)
!841 = distinct !DILexicalBlock(scope: !835, file: !65, line: 511, column: 40)
!842 = !DILocation(line: 512, column: 19, scope: !841)
!843 = !DILocation(line: 512, column: 38, scope: !841)
!844 = !DILocation(line: 512, column: 37, scope: !841)
!845 = !DILocation(line: 512, column: 28, scope: !846)
!846 = !DILexicalBlockFile(scope: !841, file: !65, discriminator: 1)
!847 = !DILocation(line: 513, column: 82, scope: !841)
!848 = !DILocation(line: 513, column: 7, scope: !841)
!849 = !DILocation(line: 514, column: 26, scope: !841)
!850 = !DILocation(line: 514, column: 76, scope: !841)
!851 = !DILocation(line: 514, column: 7, scope: !846)
!852 = !DILocation(line: 515, column: 7, scope: !841)
!853 = !DILocation(line: 518, column: 8, scope: !750)
!854 = !DILocation(line: 518, column: 4, scope: !750)
!855 = !DILocation(line: 521, column: 8, scope: !856)
!856 = distinct !DILexicalBlock(scope: !750, file: !65, line: 521, column: 8)
!857 = !DILocation(line: 521, column: 12, scope: !856)
!858 = !DILocation(line: 521, column: 8, scope: !750)
!859 = !DILocation(line: 522, column: 14, scope: !860)
!860 = distinct !DILexicalBlock(scope: !856, file: !65, line: 521, column: 20)
!861 = !DILocation(line: 522, column: 7, scope: !860)
!862 = !DILocation(line: 523, column: 4, scope: !860)
!863 = !DILocation(line: 524, column: 8, scope: !864)
!864 = distinct !DILexicalBlock(scope: !750, file: !65, line: 524, column: 8)
!865 = !DILocation(line: 524, column: 12, scope: !864)
!866 = !DILocation(line: 524, column: 19, scope: !864)
!867 = !DILocation(line: 524, column: 22, scope: !868)
!868 = !DILexicalBlockFile(scope: !864, file: !65, discriminator: 1)
!869 = !DILocation(line: 524, column: 27, scope: !868)
!870 = !DILocation(line: 524, column: 8, scope: !868)
!871 = !DILocation(line: 525, column: 14, scope: !872)
!872 = distinct !DILexicalBlock(scope: !864, file: !65, line: 524, column: 36)
!873 = !DILocation(line: 525, column: 8, scope: !872)
!874 = !DILocation(line: 525, column: 12, scope: !872)
!875 = !DILocation(line: 526, column: 4, scope: !872)
!876 = !DILocation(line: 527, column: 7, scope: !877)
!877 = distinct !DILexicalBlock(scope: !864, file: !65, line: 526, column: 11)
!878 = !DILocation(line: 529, column: 11, scope: !750)
!879 = !DILocation(line: 529, column: 4, scope: !750)
!880 = !DILocation(line: 530, column: 11, scope: !750)
!881 = !DILocation(line: 530, column: 4, scope: !750)
!882 = !DILocation(line: 531, column: 11, scope: !750)
!883 = !DILocation(line: 531, column: 4, scope: !750)
!884 = !DILocation(line: 532, column: 11, scope: !750)
!885 = !DILocation(line: 532, column: 4, scope: !750)
!886 = distinct !DISubprogram(name: "VMTools_ConfigGetBoolean", scope: !65, file: !65, line: 548, type: !887, isLocal: false, isDefinition: true, scopeLine: 552, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !118)
!887 = !DISubroutineType(types: !888)
!888 = !{!107, !83, !92, !92, !889}
!889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!890 = !DILocalVariable(name: "config", arg: 1, scope: !886, file: !65, line: 548, type: !83)
!891 = !DILocation(line: 548, column: 36, scope: !886)
!892 = !DILocalVariable(name: "section", arg: 2, scope: !886, file: !65, line: 549, type: !92)
!893 = !DILocation(line: 549, column: 39, scope: !886)
!894 = !DILocalVariable(name: "key", arg: 3, scope: !886, file: !65, line: 550, type: !92)
!895 = !DILocation(line: 550, column: 39, scope: !886)
!896 = !DILocalVariable(name: "defValue", arg: 4, scope: !886, file: !65, line: 551, type: !889)
!897 = !DILocation(line: 551, column: 41, scope: !886)
!898 = !DILocalVariable(name: "err", scope: !886, file: !65, line: 553, type: !192)
!899 = !DILocation(line: 553, column: 12, scope: !886)
!900 = !DILocalVariable(name: "value", scope: !886, file: !65, line: 554, type: !107)
!901 = !DILocation(line: 554, column: 13, scope: !886)
!902 = !DILocation(line: 556, column: 8, scope: !903)
!903 = distinct !DILexicalBlock(scope: !886, file: !65, line: 556, column: 8)
!904 = !DILocation(line: 556, column: 15, scope: !903)
!905 = !DILocation(line: 556, column: 22, scope: !903)
!906 = !DILocation(line: 556, column: 25, scope: !907)
!907 = !DILexicalBlockFile(scope: !903, file: !65, discriminator: 1)
!908 = !DILocation(line: 556, column: 33, scope: !907)
!909 = !DILocation(line: 556, column: 41, scope: !907)
!910 = !DILocation(line: 556, column: 44, scope: !911)
!911 = !DILexicalBlockFile(scope: !903, file: !65, discriminator: 2)
!912 = !DILocation(line: 556, column: 48, scope: !911)
!913 = !DILocation(line: 556, column: 8, scope: !911)
!914 = !DILocation(line: 557, column: 112, scope: !915)
!915 = distinct !DILexicalBlock(scope: !903, file: !65, line: 556, column: 57)
!916 = !DILocation(line: 557, column: 122, scope: !917)
!917 = !DILexicalBlockFile(scope: !915, file: !65, discriminator: 1)
!918 = !DILocation(line: 557, column: 112, scope: !917)
!919 = !DILocation(line: 557, column: 112, scope: !920)
!920 = !DILexicalBlockFile(scope: !915, file: !65, discriminator: 2)
!921 = !DILocation(line: 557, column: 112, scope: !922)
!922 = !DILexicalBlockFile(scope: !915, file: !65, discriminator: 3)
!923 = !DILocation(line: 557, column: 142, scope: !922)
!924 = !DILocation(line: 557, column: 148, scope: !925)
!925 = !DILexicalBlockFile(scope: !915, file: !65, discriminator: 4)
!926 = !DILocation(line: 557, column: 142, scope: !925)
!927 = !DILocation(line: 557, column: 142, scope: !928)
!928 = !DILexicalBlockFile(scope: !915, file: !65, discriminator: 5)
!929 = !DILocation(line: 557, column: 142, scope: !930)
!930 = !DILexicalBlockFile(scope: !915, file: !65, discriminator: 6)
!931 = !DILocation(line: 557, column: 164, scope: !930)
!932 = !DILocation(line: 557, column: 7, scope: !930)
!933 = !DILocation(line: 560, column: 14, scope: !915)
!934 = !DILocation(line: 560, column: 7, scope: !915)
!935 = !DILocation(line: 563, column: 35, scope: !886)
!936 = !DILocation(line: 563, column: 43, scope: !886)
!937 = !DILocation(line: 563, column: 52, scope: !886)
!938 = !DILocation(line: 563, column: 12, scope: !886)
!939 = !DILocation(line: 563, column: 10, scope: !886)
!940 = !DILocation(line: 564, column: 8, scope: !941)
!941 = distinct !DILexicalBlock(scope: !886, file: !65, line: 564, column: 8)
!942 = !DILocation(line: 564, column: 12, scope: !941)
!943 = !DILocation(line: 564, column: 8, scope: !886)
!944 = !DILocation(line: 565, column: 11, scope: !945)
!945 = distinct !DILexicalBlock(scope: !946, file: !65, line: 565, column: 11)
!946 = distinct !DILexicalBlock(scope: !941, file: !65, line: 564, column: 20)
!947 = !DILocation(line: 565, column: 16, scope: !945)
!948 = !DILocation(line: 565, column: 21, scope: !945)
!949 = !DILocation(line: 565, column: 55, scope: !945)
!950 = !DILocation(line: 566, column: 11, scope: !945)
!951 = !DILocation(line: 566, column: 16, scope: !945)
!952 = !DILocation(line: 566, column: 21, scope: !945)
!953 = !DILocation(line: 565, column: 11, scope: !954)
!954 = !DILexicalBlockFile(scope: !946, file: !65, discriminator: 1)
!955 = !DILocation(line: 567, column: 123, scope: !956)
!956 = distinct !DILexicalBlock(scope: !945, file: !65, line: 566, column: 58)
!957 = !DILocation(line: 567, column: 132, scope: !956)
!958 = !DILocation(line: 567, column: 137, scope: !956)
!959 = !DILocation(line: 567, column: 142, scope: !956)
!960 = !DILocation(line: 567, column: 151, scope: !956)
!961 = !DILocation(line: 567, column: 156, scope: !956)
!962 = !DILocation(line: 567, column: 10, scope: !956)
!963 = !DILocation(line: 569, column: 7, scope: !956)
!964 = !DILocation(line: 570, column: 112, scope: !946)
!965 = !DILocation(line: 570, column: 121, scope: !946)
!966 = !DILocation(line: 570, column: 126, scope: !946)
!967 = !DILocation(line: 570, column: 7, scope: !946)
!968 = !DILocation(line: 572, column: 15, scope: !946)
!969 = !DILocation(line: 572, column: 13, scope: !946)
!970 = !DILocation(line: 573, column: 7, scope: !946)
!971 = !DILocation(line: 574, column: 4, scope: !946)
!972 = !DILocation(line: 575, column: 11, scope: !886)
!973 = !DILocation(line: 575, column: 4, scope: !886)
!974 = !DILocation(line: 576, column: 1, scope: !886)
!975 = distinct !DISubprogram(name: "VMTools_ConfigGetInteger", scope: !65, file: !65, line: 591, type: !976, isLocal: false, isDefinition: true, scopeLine: 595, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !118)
!976 = !DISubroutineType(types: !977)
!977 = !{!108, !83, !92, !92, !978}
!978 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!979 = !DILocalVariable(name: "config", arg: 1, scope: !975, file: !65, line: 591, type: !83)
!980 = !DILocation(line: 591, column: 36, scope: !975)
!981 = !DILocalVariable(name: "section", arg: 2, scope: !975, file: !65, line: 592, type: !92)
!982 = !DILocation(line: 592, column: 39, scope: !975)
!983 = !DILocalVariable(name: "key", arg: 3, scope: !975, file: !65, line: 593, type: !92)
!984 = !DILocation(line: 593, column: 39, scope: !975)
!985 = !DILocalVariable(name: "defValue", arg: 4, scope: !975, file: !65, line: 594, type: !978)
!986 = !DILocation(line: 594, column: 37, scope: !975)
!987 = !DILocalVariable(name: "err", scope: !975, file: !65, line: 596, type: !192)
!988 = !DILocation(line: 596, column: 12, scope: !975)
!989 = !DILocalVariable(name: "value", scope: !975, file: !65, line: 597, type: !108)
!990 = !DILocation(line: 597, column: 9, scope: !975)
!991 = !DILocation(line: 603, column: 35, scope: !975)
!992 = !DILocation(line: 603, column: 43, scope: !975)
!993 = !DILocation(line: 603, column: 52, scope: !975)
!994 = !DILocation(line: 603, column: 12, scope: !975)
!995 = !DILocation(line: 603, column: 10, scope: !975)
!996 = !DILocation(line: 604, column: 8, scope: !997)
!997 = distinct !DILexicalBlock(scope: !975, file: !65, line: 604, column: 8)
!998 = !DILocation(line: 604, column: 12, scope: !997)
!999 = !DILocation(line: 604, column: 8, scope: !975)
!1000 = !DILocation(line: 605, column: 11, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !65, line: 605, column: 11)
!1002 = distinct !DILexicalBlock(scope: !997, file: !65, line: 604, column: 20)
!1003 = !DILocation(line: 605, column: 16, scope: !1001)
!1004 = !DILocation(line: 605, column: 21, scope: !1001)
!1005 = !DILocation(line: 605, column: 55, scope: !1001)
!1006 = !DILocation(line: 606, column: 11, scope: !1001)
!1007 = !DILocation(line: 606, column: 16, scope: !1001)
!1008 = !DILocation(line: 606, column: 21, scope: !1001)
!1009 = !DILocation(line: 605, column: 11, scope: !1010)
!1010 = !DILexicalBlockFile(scope: !1002, file: !65, discriminator: 1)
!1011 = !DILocation(line: 607, column: 123, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1001, file: !65, line: 606, column: 58)
!1013 = !DILocation(line: 607, column: 132, scope: !1012)
!1014 = !DILocation(line: 607, column: 137, scope: !1012)
!1015 = !DILocation(line: 607, column: 142, scope: !1012)
!1016 = !DILocation(line: 607, column: 151, scope: !1012)
!1017 = !DILocation(line: 607, column: 156, scope: !1012)
!1018 = !DILocation(line: 607, column: 10, scope: !1012)
!1019 = !DILocation(line: 609, column: 7, scope: !1012)
!1020 = !DILocation(line: 610, column: 112, scope: !1002)
!1021 = !DILocation(line: 610, column: 121, scope: !1002)
!1022 = !DILocation(line: 610, column: 126, scope: !1002)
!1023 = !DILocation(line: 610, column: 7, scope: !1002)
!1024 = !DILocation(line: 612, column: 15, scope: !1002)
!1025 = !DILocation(line: 612, column: 13, scope: !1002)
!1026 = !DILocation(line: 613, column: 7, scope: !1002)
!1027 = !DILocation(line: 614, column: 4, scope: !1002)
!1028 = !DILocation(line: 615, column: 11, scope: !975)
!1029 = !DILocation(line: 615, column: 4, scope: !975)
!1030 = distinct !DISubprogram(name: "VMTools_ConfigGetString", scope: !65, file: !65, line: 633, type: !1031, isLocal: false, isDefinition: true, scopeLine: 637, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !118)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!73, !83, !92, !92, !92}
!1033 = !DILocalVariable(name: "config", arg: 1, scope: !1030, file: !65, line: 633, type: !83)
!1034 = !DILocation(line: 633, column: 35, scope: !1030)
!1035 = !DILocalVariable(name: "section", arg: 2, scope: !1030, file: !65, line: 634, type: !92)
!1036 = !DILocation(line: 634, column: 38, scope: !1030)
!1037 = !DILocalVariable(name: "key", arg: 3, scope: !1030, file: !65, line: 635, type: !92)
!1038 = !DILocation(line: 635, column: 38, scope: !1030)
!1039 = !DILocalVariable(name: "defValue", arg: 4, scope: !1030, file: !65, line: 636, type: !92)
!1040 = !DILocation(line: 636, column: 38, scope: !1030)
!1041 = !DILocalVariable(name: "err", scope: !1030, file: !65, line: 638, type: !192)
!1042 = !DILocation(line: 638, column: 12, scope: !1030)
!1043 = !DILocalVariable(name: "value", scope: !1030, file: !65, line: 639, type: !73)
!1044 = !DILocation(line: 639, column: 11, scope: !1030)
!1045 = !DILocation(line: 645, column: 34, scope: !1030)
!1046 = !DILocation(line: 645, column: 42, scope: !1030)
!1047 = !DILocation(line: 645, column: 51, scope: !1030)
!1048 = !DILocation(line: 645, column: 12, scope: !1030)
!1049 = !DILocation(line: 645, column: 10, scope: !1030)
!1050 = !DILocation(line: 646, column: 8, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1030, file: !65, line: 646, column: 8)
!1052 = !DILocation(line: 646, column: 12, scope: !1051)
!1053 = !DILocation(line: 646, column: 8, scope: !1030)
!1054 = !DILocation(line: 647, column: 11, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !65, line: 647, column: 11)
!1056 = distinct !DILexicalBlock(scope: !1051, file: !65, line: 646, column: 20)
!1057 = !DILocation(line: 647, column: 16, scope: !1055)
!1058 = !DILocation(line: 647, column: 21, scope: !1055)
!1059 = !DILocation(line: 647, column: 55, scope: !1055)
!1060 = !DILocation(line: 648, column: 11, scope: !1055)
!1061 = !DILocation(line: 648, column: 16, scope: !1055)
!1062 = !DILocation(line: 648, column: 21, scope: !1055)
!1063 = !DILocation(line: 647, column: 11, scope: !1064)
!1064 = !DILexicalBlockFile(scope: !1056, file: !65, discriminator: 1)
!1065 = !DILocation(line: 649, column: 123, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1055, file: !65, line: 648, column: 58)
!1067 = !DILocation(line: 649, column: 132, scope: !1066)
!1068 = !DILocation(line: 649, column: 137, scope: !1066)
!1069 = !DILocation(line: 649, column: 142, scope: !1066)
!1070 = !DILocation(line: 649, column: 151, scope: !1066)
!1071 = !DILocation(line: 649, column: 156, scope: !1066)
!1072 = !DILocation(line: 649, column: 10, scope: !1066)
!1073 = !DILocation(line: 651, column: 7, scope: !1066)
!1074 = !DILocation(line: 652, column: 112, scope: !1056)
!1075 = !DILocation(line: 652, column: 121, scope: !1056)
!1076 = !DILocation(line: 652, column: 126, scope: !1056)
!1077 = !DILocation(line: 652, column: 137, scope: !1064)
!1078 = !DILocation(line: 652, column: 126, scope: !1064)
!1079 = !DILocation(line: 652, column: 126, scope: !1080)
!1080 = !DILexicalBlockFile(scope: !1056, file: !65, discriminator: 2)
!1081 = !DILocation(line: 652, column: 126, scope: !1082)
!1082 = !DILexicalBlockFile(scope: !1056, file: !65, discriminator: 3)
!1083 = !DILocation(line: 652, column: 7, scope: !1082)
!1084 = !DILocation(line: 654, column: 24, scope: !1056)
!1085 = !DILocation(line: 654, column: 15, scope: !1056)
!1086 = !DILocation(line: 654, column: 13, scope: !1056)
!1087 = !DILocation(line: 655, column: 7, scope: !1056)
!1088 = !DILocation(line: 656, column: 4, scope: !1056)
!1089 = !DILocation(line: 657, column: 11, scope: !1030)
!1090 = !DILocation(line: 657, column: 4, scope: !1030)
!1091 = distinct !DISubprogram(name: "VMToolsConfigUpgradeLog", scope: !65, file: !65, line: 156, type: !81, isLocal: true, isDefinition: true, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !118)
!1092 = !DILocalVariable(name: "cfg", arg: 1, scope: !1091, file: !65, line: 156, type: !83)
!1093 = !DILocation(line: 156, column: 35, scope: !1091)
!1094 = !DILocalVariable(name: "entry", arg: 2, scope: !1091, file: !65, line: 157, type: !86)
!1095 = !DILocation(line: 157, column: 44, scope: !1091)
!1096 = !DILocalVariable(name: "value", arg: 3, scope: !1091, file: !65, line: 158, type: !77)
!1097 = !DILocation(line: 158, column: 37, scope: !1091)
!1098 = !DILocalVariable(name: "userlog", scope: !1091, file: !65, line: 169, type: !73)
!1099 = !DILocation(line: 169, column: 11, scope: !1091)
!1100 = !DILocation(line: 171, column: 26, scope: !1091)
!1101 = !DILocation(line: 171, column: 31, scope: !1091)
!1102 = !DILocation(line: 171, column: 38, scope: !1091)
!1103 = !DILocation(line: 171, column: 4, scope: !1091)
!1104 = !DILocation(line: 173, column: 26, scope: !1091)
!1105 = !DILocation(line: 173, column: 31, scope: !1091)
!1106 = !DILocation(line: 173, column: 38, scope: !1091)
!1107 = !DILocation(line: 173, column: 4, scope: !1091)
!1108 = !DILocation(line: 175, column: 26, scope: !1091)
!1109 = !DILocation(line: 175, column: 31, scope: !1091)
!1110 = !DILocation(line: 175, column: 38, scope: !1091)
!1111 = !DILocation(line: 176, column: 43, scope: !1091)
!1112 = !DILocation(line: 175, column: 4, scope: !1091)
!1113 = !DILocation(line: 178, column: 48, scope: !1091)
!1114 = !DILocation(line: 178, column: 14, scope: !1091)
!1115 = !DILocation(line: 178, column: 12, scope: !1091)
!1116 = !DILocation(line: 179, column: 26, scope: !1091)
!1117 = !DILocation(line: 179, column: 31, scope: !1091)
!1118 = !DILocation(line: 179, column: 38, scope: !1091)
!1119 = !DILocation(line: 179, column: 4, scope: !1091)
!1120 = !DILocation(line: 181, column: 26, scope: !1091)
!1121 = !DILocation(line: 181, column: 31, scope: !1091)
!1122 = !DILocation(line: 181, column: 38, scope: !1091)
!1123 = !DILocation(line: 181, column: 4, scope: !1091)
!1124 = !DILocation(line: 183, column: 26, scope: !1091)
!1125 = !DILocation(line: 183, column: 31, scope: !1091)
!1126 = !DILocation(line: 183, column: 38, scope: !1091)
!1127 = !DILocation(line: 184, column: 43, scope: !1091)
!1128 = !DILocation(line: 183, column: 4, scope: !1091)
!1129 = !DILocation(line: 190, column: 26, scope: !1091)
!1130 = !DILocation(line: 190, column: 31, scope: !1091)
!1131 = !DILocation(line: 190, column: 38, scope: !1091)
!1132 = !DILocation(line: 190, column: 61, scope: !1091)
!1133 = !DILocation(line: 190, column: 4, scope: !1091)
!1134 = !DILocation(line: 192, column: 11, scope: !1091)
!1135 = !DILocation(line: 192, column: 4, scope: !1091)
!1136 = !DILocation(line: 193, column: 1, scope: !1091)
