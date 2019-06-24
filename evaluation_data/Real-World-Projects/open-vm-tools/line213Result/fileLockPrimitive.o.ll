; ModuleID = './fileLockPrimitive.o.i'
source_filename = "./fileLockPrimitive.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lock_values = type { i8*, i8*, i8*, i8*, i8*, i32, i8, i64, i32, %struct.active_lock* }
%struct.active_lock = type { %struct.active_lock*, i32, i8, i8* }
%struct.FileData = type { i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.FileIODescriptor = type { i32, i32, i8*, %struct.FileLockToken* }
%struct.FileLockToken = type { i32, i8, i8*, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.FileIODescriptor }
%struct.parse_table = type { i32, i8*, i8* }
%struct.anon.0 = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"lc\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@__FUNCTION__.FileLockMemberValues = private unnamed_addr constant [21 x i8] c"FileLockMemberValues\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"FILE: %s open failure on '%s': %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"FILE: %s file size failure on '%s': %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"FILE: %s file '%s': size %lu, required size %zd\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"FILE: %s read failure on '%s': %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"FILE: %s read length issue on '%s': %zd and %zd\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"%s %s-%s %s %s %s %s\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"FILE: %s removing problematic lock file '%s'\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"FILE: %s '%s' contents are:\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"FILE: %s %s argv[%u]: '%s'\0A\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"MDE\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c".lck\00", align 1
@implicitReadToken = internal global i8 0, align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"FILE: %s failed for '%s': %s\0A\00", align 1
@__FUNCTION__.FileUnlockIntrinsic = private unnamed_addr constant [20 x i8] c"FileUnlockIntrinsic\00", align 1
@__FUNCTION__.FileLockIntrinsicMandatory = private unnamed_addr constant [27 x i8] c"FileLockIntrinsicMandatory\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"FILE: %s implicit %s lock succeeded on '%s'.\0A\00", align 1
@__FUNCTION__.FileLockIntrinsicPortable = private unnamed_addr constant [26 x i8] c"FileLockIntrinsicPortable\00", align 1
@.str.20 = private unnamed_addr constant [48 x i8] c"FILE: %s: '%s' exists; an old style lock file?\0A\00", align 1
@__FUNCTION__.FileLockCreateEntryDirectory = private unnamed_addr constant [29 x i8] c"FileLockCreateEntryDirectory\00", align 1
@.str.21 = private unnamed_addr constant [47 x i8] c"FILE: %s: '%s' exists and is not a directory.\0A\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"FILE: %s creation failure on '%s': %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"FILE: %s stat failure on '%s': %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"M%05u%s\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"D%05u%s\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"E%05u%s\00", align 1
@.str.27 = private unnamed_addr constant [36 x i8] c"FILE: %s unable to remove '%s': %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [35 x i8] c"FILE: %s lack of progress on '%s'\0A\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"FILE: %s discarding %s data from '%s'.\0A\00", align 1
@__FUNCTION__.FileLockScanner = private unnamed_addr constant [16 x i8] c"FileLockScanner\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.33 = private unnamed_addr constant [49 x i8] c"FILE: %s: Could not read the directory '%s': %d\0A\00", align 1
@__FUNCTION__.FileLockScanDirectory = private unnamed_addr constant [22 x i8] c"FileLockScanDirectory\00", align 1
@.str.34 = private unnamed_addr constant [53 x i8] c"FILE: %s discarding %s from %s'; invalid file name.\0A\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"lock file has been moved.\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"invalid executionID %s.\00", align 1
@.str.37 = private unnamed_addr constant [37 x i8] c"FILE: %s discarding %s from %s': %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"FILE: %s of '%s' failed: %s\0A\00", align 1
@__FUNCTION__.FileLockRemoveLockingFile = private unnamed_addr constant [26 x i8] c"FileLockRemoveLockingFile\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"%d-%lu\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"%s %s %u %s %lu lc=%s\00", align 1
@__FUNCTION__.FileLockCreateMemberFile = private unnamed_addr constant [25 x i8] c"FileLockCreateMemberFile\00", align 1
@.str.41 = private unnamed_addr constant [35 x i8] c"FILE: %s write of '%s' failed: %s\0A\00", align 1
@.str.42 = private unnamed_addr constant [35 x i8] c"FILE: %s close of '%s' failed: %s\0A\00", align 1
@.str.43 = private unnamed_addr constant [50 x i8] c"FILE: %s write length issue on '%s': %zd and %zd\0A\00", align 1
@.str.44 = private unnamed_addr constant [48 x i8] c"FILE: %s FileRename of '%s' to '%s' failed: %s\0A\00", align 1
@.str.45 = private unnamed_addr constant [53 x i8] c"FILE: %s discarding file '%s'; invalid executionID.\0A\00", align 1
@__FUNCTION__.FileLockWaitForPossession = private unnamed_addr constant [26 x i8] c"FileLockWaitForPossession\00", align 1
@.str.46 = private unnamed_addr constant [54 x i8] c"FILE: %s timeout on '%s' due to a local process '%s'\0A\00", align 1
@.str.47 = private unnamed_addr constant [54 x i8] c"FILE: %s timeout on '%s' due to another machine '%s'\0A\00", align 1
@__FUNCTION__.FileLockIsLockedMandatory = private unnamed_addr constant [26 x i8] c"FileLockIsLockedMandatory\00", align 1

; Function Attrs: nounwind uwtable
define i32 @FileLockMemberValues(i8*, i8*, i8*, i64, %struct.lock_values*) #0 !dbg !48 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.lock_values*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.FileData, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.FileIODescriptor, align 8
  %18 = alloca [16 x i8*], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca [1 x %struct.parse_table], align 16
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !88, metadata !89), !dbg !90
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !91, metadata !89), !dbg !92
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !93, metadata !89), !dbg !94
  store i64 %3, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !95, metadata !89), !dbg !96
  store %struct.lock_values* %4, %struct.lock_values** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.lock_values** %11, metadata !97, metadata !89), !dbg !98
  call void @llvm.dbg.declare(metadata i64* %12, metadata !99, metadata !89), !dbg !100
  call void @llvm.dbg.declare(metadata i32* %13, metadata !101, metadata !89), !dbg !102
  call void @llvm.dbg.declare(metadata i8** %14, metadata !103, metadata !89), !dbg !104
  call void @llvm.dbg.declare(metadata %struct.FileData* %15, metadata !105, metadata !89), !dbg !119
  call void @llvm.dbg.declare(metadata i32* %16, metadata !120, metadata !89), !dbg !122
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor* %17, metadata !123, metadata !89), !dbg !148
  call void @llvm.dbg.declare(metadata [16 x i8*]* %18, metadata !149, metadata !89), !dbg !153
  call void @llvm.dbg.declare(metadata i32* %19, metadata !154, metadata !89), !dbg !155
  store i32 0, i32* %19, align 4, !dbg !155
  call void @llvm.dbg.declare(metadata i32* %20, metadata !156, metadata !89), !dbg !157
  store i32 0, i32* %20, align 4, !dbg !157
  call void @llvm.dbg.declare(metadata i8** %21, metadata !158, metadata !89), !dbg !159
  store i8* null, i8** %21, align 8, !dbg !159
  call void @llvm.dbg.declare(metadata [1 x %struct.parse_table]* %22, metadata !160, metadata !89), !dbg !170
  %25 = getelementptr inbounds [1 x %struct.parse_table], [1 x %struct.parse_table]* %22, i64 0, i64 0, !dbg !171
  %26 = getelementptr inbounds %struct.parse_table, %struct.parse_table* %25, i32 0, i32 0, !dbg !172
  store i32 1, i32* %26, align 8, !dbg !172
  %27 = getelementptr inbounds %struct.parse_table, %struct.parse_table* %25, i32 0, i32 1, !dbg !172
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8** %27, align 8, !dbg !172
  %28 = getelementptr inbounds %struct.parse_table, %struct.parse_table* %25, i32 0, i32 2, !dbg !172
  %29 = load %struct.lock_values*, %struct.lock_values** %11, align 8, !dbg !173
  %30 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %29, i32 0, i32 3, !dbg !174
  %31 = bitcast i8** %30 to i8*, !dbg !175
  store i8* %31, i8** %28, align 8, !dbg !172
  %32 = load i8*, i8** %7, align 8, !dbg !176
  %33 = load i8*, i8** %8, align 8, !dbg !177
  %34 = call i8* (i8*, ...) @Unicode_Join(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* %33, i8* null), !dbg !178
  store i8* %34, i8** %14, align 8, !dbg !179
  call void @FileIO_Invalidate(%struct.FileIODescriptor* %17), !dbg !180
  store i32 1, i32* %13, align 4, !dbg !181
  %35 = load i8*, i8** %14, align 8, !dbg !182
  %36 = load i32, i32* %13, align 4, !dbg !183
  %37 = call i32 @FileIOCreateRetry(%struct.FileIODescriptor* %17, i8* %35, i32 %36, i32 0, i32 292, i32 2000), !dbg !184
  store i32 %37, i32* %16, align 4, !dbg !185
  %38 = load i32, i32* %16, align 4, !dbg !186
  %39 = call signext i8 @FileIO_IsSuccess(i32 %38), !dbg !188
  %40 = icmp ne i8 %39, 0, !dbg !188
  br i1 %40, label %52, label %41, !dbg !189

; <label>:41:                                     ; preds = %5
  %42 = call i32* @__errno_location() #1, !dbg !190
  %43 = load i32, i32* %42, align 4, !dbg !192
  %44 = call i32 @FileMapErrorToErrno(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.FileLockMemberValues, i32 0, i32 0), i32 %43), !dbg !193
  store i32 %44, i32* %19, align 4, !dbg !195
  %45 = load i32, i32* %19, align 4, !dbg !196
  %46 = icmp ne i32 %45, 2, !dbg !198
  br i1 %46, label %47, label %51, !dbg !199

; <label>:47:                                     ; preds = %41
  %48 = load i8*, i8** %14, align 8, !dbg !200
  %49 = load i32, i32* %19, align 4, !dbg !202
  %50 = call i8* @Err_Errno2String(i32 %49), !dbg !203
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.FileLockMemberValues, i32 0, i32 0), i8* %48, i8* %50), !dbg !204
  br label %51, !dbg !205

; <label>:51:                                     ; preds = %47, %41
  br label %262, !dbg !206

; <label>:52:                                     ; preds = %5
  %53 = load i8*, i8** %14, align 8, !dbg !207
  %54 = call i32 @FileAttributes(i8* %53, %struct.FileData* %15), !dbg !208
  store i32 %54, i32* %19, align 4, !dbg !209
  %55 = load i32, i32* %19, align 4, !dbg !210
  %56 = icmp ne i32 %55, 0, !dbg !212
  br i1 %56, label %57, label %66, !dbg !213

; <label>:57:                                     ; preds = %52
  %58 = load i32, i32* %19, align 4, !dbg !214
  %59 = icmp ne i32 %58, 2, !dbg !217
  br i1 %59, label %60, label %64, !dbg !218

; <label>:60:                                     ; preds = %57
  %61 = load i8*, i8** %14, align 8, !dbg !219
  %62 = load i32, i32* %19, align 4, !dbg !221
  %63 = call i8* @Err_Errno2String(i32 %62), !dbg !222
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.FileLockMemberValues, i32 0, i32 0), i8* %61, i8* %63), !dbg !223
  br label %64, !dbg !224

; <label>:64:                                     ; preds = %60, %57
  %65 = call i32 @FileIO_Close(%struct.FileIODescriptor* %17), !dbg !225
  br label %262, !dbg !226

; <label>:66:                                     ; preds = %52
  %67 = getelementptr inbounds %struct.FileData, %struct.FileData* %15, i32 0, i32 3, !dbg !227
  %68 = load i64, i64* %67, align 8, !dbg !227
  %69 = load i64, i64* %10, align 8, !dbg !229
  %70 = icmp ne i64 %68, %69, !dbg !230
  br i1 %70, label %71, label %77, !dbg !231

; <label>:71:                                     ; preds = %66
  %72 = load i8*, i8** %14, align 8, !dbg !232
  %73 = getelementptr inbounds %struct.FileData, %struct.FileData* %15, i32 0, i32 3, !dbg !234
  %74 = load i64, i64* %73, align 8, !dbg !234
  %75 = load i64, i64* %10, align 8, !dbg !235
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.FileLockMemberValues, i32 0, i32 0), i8* %72, i64 %74, i64 %75), !dbg !236
  %76 = call i32 @FileIO_Close(%struct.FileIODescriptor* %17), !dbg !237
  br label %234, !dbg !238

; <label>:77:                                     ; preds = %66
  %78 = load i8*, i8** %9, align 8, !dbg !239
  %79 = load i64, i64* %10, align 8, !dbg !240
  %80 = call i32 @FileIO_Read(%struct.FileIODescriptor* %17, i8* %78, i64 %79, i64* %12), !dbg !241
  store i32 %80, i32* %16, align 4, !dbg !242
  %81 = call i32 @FileIO_Close(%struct.FileIODescriptor* %17), !dbg !243
  %82 = load i32, i32* %16, align 4, !dbg !244
  %83 = call signext i8 @FileIO_IsSuccess(i32 %82), !dbg !246
  %84 = icmp ne i8 %83, 0, !dbg !246
  br i1 %84, label %92, label %85, !dbg !247

; <label>:85:                                     ; preds = %77
  %86 = call i32* @__errno_location() #1, !dbg !248
  %87 = load i32, i32* %86, align 4, !dbg !250
  %88 = call i32 @FileMapErrorToErrno(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.FileLockMemberValues, i32 0, i32 0), i32 %87), !dbg !251
  store i32 %88, i32* %19, align 4, !dbg !253
  %89 = load i8*, i8** %14, align 8, !dbg !254
  %90 = load i32, i32* %19, align 4, !dbg !255
  %91 = call i8* @Err_Errno2String(i32 %90), !dbg !256
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.FileLockMemberValues, i32 0, i32 0), i8* %89, i8* %91), !dbg !257
  br label %262, !dbg !258

; <label>:92:                                     ; preds = %77
  %93 = load i64, i64* %12, align 8, !dbg !259
  %94 = load i64, i64* %10, align 8, !dbg !261
  %95 = icmp ne i64 %93, %94, !dbg !262
  br i1 %95, label %96, label %100, !dbg !263

; <label>:96:                                     ; preds = %92
  %97 = load i8*, i8** %14, align 8, !dbg !264
  %98 = load i64, i64* %12, align 8, !dbg !266
  %99 = load i64, i64* %10, align 8, !dbg !267
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.FileLockMemberValues, i32 0, i32 0), i8* %97, i64 %98, i64 %99), !dbg !268
  store i32 5, i32* %19, align 4, !dbg !269
  br label %262, !dbg !270

; <label>:100:                                    ; preds = %92
  br label %101, !dbg !271

; <label>:101:                                    ; preds = %176, %100
  store i32 0, i32* %20, align 4, !dbg !273
  br label %102, !dbg !275

; <label>:102:                                    ; preds = %124, %101
  %103 = load i32, i32* %20, align 4, !dbg !276
  %104 = icmp ult i32 %103, 16, !dbg !279
  br i1 %104, label %105, label %127, !dbg !280

; <label>:105:                                    ; preds = %102
  %106 = load i32, i32* %20, align 4, !dbg !281
  %107 = icmp eq i32 %106, 0, !dbg !283
  br i1 %107, label %108, label %110, !dbg !284

; <label>:108:                                    ; preds = %105
  %109 = load i8*, i8** %9, align 8, !dbg !285
  br label %111, !dbg !287

; <label>:110:                                    ; preds = %105
  br label %111, !dbg !288

; <label>:111:                                    ; preds = %110, %108
  %112 = phi i8* [ %109, %108 ], [ null, %110 ], !dbg !290
  %113 = call i8* @strtok_r(i8* %112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8** %21) #8, !dbg !292
  %114 = load i32, i32* %20, align 4, !dbg !293
  %115 = zext i32 %114 to i64, !dbg !294
  %116 = getelementptr inbounds [16 x i8*], [16 x i8*]* %18, i64 0, i64 %115, !dbg !294
  store i8* %113, i8** %116, align 8, !dbg !295
  %117 = load i32, i32* %20, align 4, !dbg !296
  %118 = zext i32 %117 to i64, !dbg !298
  %119 = getelementptr inbounds [16 x i8*], [16 x i8*]* %18, i64 0, i64 %118, !dbg !298
  %120 = load i8*, i8** %119, align 8, !dbg !298
  %121 = icmp eq i8* %120, null, !dbg !299
  br i1 %121, label %122, label %123, !dbg !300

; <label>:122:                                    ; preds = %111
  br label %127, !dbg !301

; <label>:123:                                    ; preds = %111
  br label %124, !dbg !303

; <label>:124:                                    ; preds = %123
  %125 = load i32, i32* %20, align 4, !dbg !304
  %126 = add i32 %125, 1, !dbg !304
  store i32 %126, i32* %20, align 4, !dbg !304
  br label %102, !dbg !306, !llvm.loop !307

; <label>:127:                                    ; preds = %122, %102
  %128 = load %struct.lock_values*, %struct.lock_values** %11, align 8, !dbg !309
  %129 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %128, i32 0, i32 3, !dbg !310
  store i8* null, i8** %129, align 8, !dbg !311
  %130 = load i32, i32* %20, align 4, !dbg !312
  %131 = icmp ult i32 %130, 5, !dbg !314
  br i1 %131, label %138, label %132, !dbg !315

; <label>:132:                                    ; preds = %127
  %133 = load i32, i32* %20, align 4, !dbg !316
  %134 = icmp eq i32 %133, 16, !dbg !318
  br i1 %134, label %135, label %139, !dbg !319

; <label>:135:                                    ; preds = %132
  %136 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8** %21) #8, !dbg !320
  %137 = icmp ne i8* %136, null, !dbg !321
  br i1 %137, label %138, label %139, !dbg !322

; <label>:138:                                    ; preds = %135, %127
  br label %234, !dbg !324

; <label>:139:                                    ; preds = %135, %132
  %140 = load i32, i32* %20, align 4, !dbg !326
  %141 = icmp ugt i32 %140, 5, !dbg !328
  br i1 %141, label %142, label %151, !dbg !329

; <label>:142:                                    ; preds = %139
  %143 = getelementptr inbounds [16 x i8*], [16 x i8*]* %18, i32 0, i32 0, !dbg !330
  %144 = load i32, i32* %20, align 4, !dbg !332
  %145 = sub i32 %144, 5, !dbg !333
  %146 = getelementptr inbounds [1 x %struct.parse_table], [1 x %struct.parse_table]* %22, i32 0, i32 0, !dbg !334
  %147 = call signext i8 @FileLockParseArgs(i8** %143, i32 %145, %struct.parse_table* %146, i32 1), !dbg !335
  %148 = sext i8 %147 to i32, !dbg !335
  %149 = icmp ne i32 %148, 0, !dbg !335
  br i1 %149, label %150, label %151, !dbg !336

; <label>:150:                                    ; preds = %142
  br label %234, !dbg !337

; <label>:151:                                    ; preds = %142, %139
  %152 = getelementptr inbounds [16 x i8*], [16 x i8*]* %18, i64 0, i64 1, !dbg !339
  %153 = load i8*, i8** %152, align 8, !dbg !339
  %154 = call i8* @strchr(i8* %153, i32 45) #9, !dbg !341
  %155 = icmp eq i8* %154, null, !dbg !342
  br i1 %155, label %156, label %197, !dbg !343

; <label>:156:                                    ; preds = %151
  %157 = getelementptr inbounds [16 x i8*], [16 x i8*]* %18, i64 0, i64 1, !dbg !344
  %158 = load i8*, i8** %157, align 8, !dbg !344
  %159 = call i8* @strchr(i8* %158, i32 40) #9, !dbg !345
  %160 = icmp eq i8* %159, null, !dbg !346
  br i1 %160, label %161, label %197, !dbg !347

; <label>:161:                                    ; preds = %156
  %162 = getelementptr inbounds [16 x i8*], [16 x i8*]* %18, i64 0, i64 1, !dbg !348
  %163 = load i8*, i8** %162, align 8, !dbg !348
  %164 = call i8* @strchr(i8* %163, i32 41) #9, !dbg !349
  %165 = icmp eq i8* %164, null, !dbg !350
  br i1 %165, label %166, label %197, !dbg !351

; <label>:166:                                    ; preds = %161
  %167 = load i32, i32* %20, align 4, !dbg !352
  %168 = icmp eq i32 %167, 6, !dbg !353
  br i1 %168, label %169, label %197, !dbg !354

; <label>:169:                                    ; preds = %166
  %170 = getelementptr inbounds [16 x i8*], [16 x i8*]* %18, i32 0, i32 0, !dbg !355
  %171 = load i32, i32* %20, align 4, !dbg !356
  %172 = sub i32 %171, 5, !dbg !357
  %173 = getelementptr inbounds [1 x %struct.parse_table], [1 x %struct.parse_table]* %22, i32 0, i32 0, !dbg !358
  %174 = call signext i8 @FileLockParseArgs(i8** %170, i32 %172, %struct.parse_table* %173, i32 1), !dbg !359
  %175 = icmp ne i8 %174, 0, !dbg !359
  br i1 %175, label %197, label %176, !dbg !360

; <label>:176:                                    ; preds = %169
  call void @llvm.dbg.declare(metadata i8** %23, metadata !362, metadata !89), !dbg !364
  %177 = getelementptr inbounds [16 x i8*], [16 x i8*]* %18, i64 0, i64 0, !dbg !365
  %178 = load i8*, i8** %177, align 16, !dbg !365
  %179 = getelementptr inbounds [16 x i8*], [16 x i8*]* %18, i64 0, i64 1, !dbg !366
  %180 = load i8*, i8** %179, align 8, !dbg !366
  %181 = getelementptr inbounds [16 x i8*], [16 x i8*]* %18, i64 0, i64 4, !dbg !367
  %182 = load i8*, i8** %181, align 16, !dbg !367
  %183 = getelementptr inbounds [16 x i8*], [16 x i8*]* %18, i64 0, i64 2, !dbg !368
  %184 = load i8*, i8** %183, align 16, !dbg !368
  %185 = getelementptr inbounds [16 x i8*], [16 x i8*]* %18, i64 0, i64 3, !dbg !369
  %186 = load i8*, i8** %185, align 8, !dbg !369
  %187 = getelementptr inbounds [16 x i8*], [16 x i8*]* %18, i64 0, i64 4, !dbg !370
  %188 = load i8*, i8** %187, align 16, !dbg !370
  %189 = getelementptr inbounds [16 x i8*], [16 x i8*]* %18, i64 0, i64 5, !dbg !371
  %190 = load i8*, i8** %189, align 8, !dbg !371
  %191 = call i8* (i64*, i8*, ...) @Str_SafeAsprintf(i64* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i8* %178, i8* %180, i8* %182, i8* %184, i8* %186, i8* %188, i8* %190), !dbg !372
  store i8* %191, i8** %23, align 8, !dbg !373
  %192 = load i8*, i8** %9, align 8, !dbg !374
  %193 = load i8*, i8** %23, align 8, !dbg !375
  %194 = load i64, i64* %10, align 8, !dbg !376
  %195 = call i8* @Str_Strcpy(i8* %192, i8* %193, i64 %194), !dbg !377
  %196 = load i8*, i8** %23, align 8, !dbg !378
  call void @Posix_Free(i8* %196), !dbg !379
  br label %101, !dbg !380

; <label>:197:                                    ; preds = %169, %166, %161, %156, %151
  %198 = getelementptr inbounds [16 x i8*], [16 x i8*]* %18, i64 0, i64 2, !dbg !381
  %199 = load i8*, i8** %198, align 16, !dbg !381
  %200 = load %struct.lock_values*, %struct.lock_values** %11, align 8, !dbg !383
  %201 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %200, i32 0, i32 5, !dbg !384
  %202 = call i32 (i8*, i8*, ...) @sscanf(i8* %199, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32* %201) #8, !dbg !385
  %203 = icmp ne i32 %202, 1, !dbg !386
  br i1 %203, label %204, label %205, !dbg !387

; <label>:204:                                    ; preds = %197
  br label %234, !dbg !388

; <label>:205:                                    ; preds = %197
  %206 = getelementptr inbounds [16 x i8*], [16 x i8*]* %18, i64 0, i64 3, !dbg !390
  %207 = load i8*, i8** %206, align 8, !dbg !390
  %208 = call i32 @strcmp(i8* %207, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)) #9, !dbg !392
  %209 = icmp ne i32 %208, 0, !dbg !393
  br i1 %209, label %210, label %216, !dbg !394

; <label>:210:                                    ; preds = %205
  %211 = getelementptr inbounds [16 x i8*], [16 x i8*]* %18, i64 0, i64 3, !dbg !395
  %212 = load i8*, i8** %211, align 8, !dbg !395
  %213 = call i32 @strcmp(i8* %212, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)) #9, !dbg !396
  %214 = icmp ne i32 %213, 0, !dbg !397
  br i1 %214, label %215, label %216, !dbg !398

; <label>:215:                                    ; preds = %210
  br label %234, !dbg !399

; <label>:216:                                    ; preds = %210, %205
  %217 = getelementptr inbounds [16 x i8*], [16 x i8*]* %18, i64 0, i64 0, !dbg !401
  %218 = load i8*, i8** %217, align 16, !dbg !401
  %219 = load %struct.lock_values*, %struct.lock_values** %11, align 8, !dbg !402
  %220 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %219, i32 0, i32 0, !dbg !403
  store i8* %218, i8** %220, align 8, !dbg !404
  %221 = getelementptr inbounds [16 x i8*], [16 x i8*]* %18, i64 0, i64 1, !dbg !405
  %222 = load i8*, i8** %221, align 8, !dbg !405
  %223 = load %struct.lock_values*, %struct.lock_values** %11, align 8, !dbg !406
  %224 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %223, i32 0, i32 1, !dbg !407
  store i8* %222, i8** %224, align 8, !dbg !408
  %225 = getelementptr inbounds [16 x i8*], [16 x i8*]* %18, i64 0, i64 3, !dbg !409
  %226 = load i8*, i8** %225, align 8, !dbg !409
  %227 = load %struct.lock_values*, %struct.lock_values** %11, align 8, !dbg !410
  %228 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %227, i32 0, i32 2, !dbg !411
  store i8* %226, i8** %228, align 8, !dbg !412
  %229 = load i8*, i8** %8, align 8, !dbg !413
  %230 = call i8* @Unicode_Duplicate(i8* %229), !dbg !414
  %231 = load %struct.lock_values*, %struct.lock_values** %11, align 8, !dbg !415
  %232 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %231, i32 0, i32 4, !dbg !416
  store i8* %230, i8** %232, align 8, !dbg !417
  %233 = load i8*, i8** %14, align 8, !dbg !418
  call void @Posix_Free(i8* %233), !dbg !419
  store i32 0, i32* %6, align 4, !dbg !420
  br label %265, !dbg !420

; <label>:234:                                    ; preds = %215, %204, %150, %138, %71
  %235 = load i8*, i8** %14, align 8, !dbg !421
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.FileLockMemberValues, i32 0, i32 0), i8* %235), !dbg !422
  %236 = load i32, i32* %20, align 4, !dbg !423
  %237 = icmp ne i32 %236, 0, !dbg !423
  br i1 %237, label %238, label %255, !dbg !425

; <label>:238:                                    ; preds = %234
  call void @llvm.dbg.declare(metadata i32* %24, metadata !426, metadata !89), !dbg !428
  %239 = load i8*, i8** %8, align 8, !dbg !429
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.FileLockMemberValues, i32 0, i32 0), i8* %239), !dbg !430
  store i32 0, i32* %24, align 4, !dbg !431
  br label %240, !dbg !433

; <label>:240:                                    ; preds = %251, %238
  %241 = load i32, i32* %24, align 4, !dbg !434
  %242 = load i32, i32* %20, align 4, !dbg !437
  %243 = icmp ult i32 %241, %242, !dbg !438
  br i1 %243, label %244, label %254, !dbg !439

; <label>:244:                                    ; preds = %240
  %245 = load i8*, i8** %8, align 8, !dbg !440
  %246 = load i32, i32* %24, align 4, !dbg !442
  %247 = load i32, i32* %24, align 4, !dbg !443
  %248 = zext i32 %247 to i64, !dbg !444
  %249 = getelementptr inbounds [16 x i8*], [16 x i8*]* %18, i64 0, i64 %248, !dbg !444
  %250 = load i8*, i8** %249, align 8, !dbg !444
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.FileLockMemberValues, i32 0, i32 0), i8* %245, i32 %246, i8* %250), !dbg !445
  br label %251, !dbg !446

; <label>:251:                                    ; preds = %244
  %252 = load i32, i32* %24, align 4, !dbg !447
  %253 = add i32 %252, 1, !dbg !447
  store i32 %253, i32* %24, align 4, !dbg !447
  br label %240, !dbg !449, !llvm.loop !450

; <label>:254:                                    ; preds = %240
  br label %255, !dbg !452

; <label>:255:                                    ; preds = %254, %234
  %256 = load i8*, i8** %14, align 8, !dbg !453
  %257 = call i32 @FileDeletion(i8* %256, i8 signext 0), !dbg !454
  store i32 %257, i32* %19, align 4, !dbg !455
  %258 = load i32, i32* %19, align 4, !dbg !456
  %259 = icmp eq i32 %258, 0, !dbg !458
  br i1 %259, label %260, label %261, !dbg !459

; <label>:260:                                    ; preds = %255
  store i32 2, i32* %19, align 4, !dbg !460
  br label %261, !dbg !462

; <label>:261:                                    ; preds = %260, %255
  br label %262, !dbg !463

; <label>:262:                                    ; preds = %261, %96, %85, %64, %51
  %263 = load i8*, i8** %14, align 8, !dbg !465
  call void @Posix_Free(i8* %263), !dbg !466
  %264 = load i32, i32* %19, align 4, !dbg !467
  store i32 %264, i32* %6, align 4, !dbg !468
  br label %265, !dbg !468

; <label>:265:                                    ; preds = %262, %216
  %266 = load i32, i32* %6, align 4, !dbg !469
  ret i32 %266, !dbg !469
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @Unicode_Join(i8*, ...) #2

declare void @FileIO_Invalidate(%struct.FileIODescriptor*) #2

declare i32 @FileIOCreateRetry(%struct.FileIODescriptor*, i8*, i32, i32, i32, i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @FileIO_IsSuccess(i32) #3 !dbg !470 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !473, metadata !89), !dbg !474
  %3 = load i32, i32* %2, align 4, !dbg !475
  %4 = icmp eq i32 %3, 0, !dbg !476
  %5 = zext i1 %4 to i32, !dbg !476
  %6 = trunc i32 %5 to i8, !dbg !475
  ret i8 %6, !dbg !477
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @FileMapErrorToErrno(i8*, i32) #3 !dbg !478 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !483, metadata !89), !dbg !484
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !485, metadata !89), !dbg !486
  %5 = load i32, i32* %4, align 4, !dbg !487
  ret i32 %5, !dbg !488
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

declare void @Warning(i8*, ...) #2

declare i8* @Err_Errno2String(i32) #2

declare i32 @FileAttributes(i8*, %struct.FileData*) #2

declare i32 @FileIO_Close(%struct.FileIODescriptor*) #2

declare i32 @FileIO_Read(%struct.FileIODescriptor*, i8*, i64, i64*) #2

; Function Attrs: nounwind
declare i8* @strtok_r(i8*, i8*, i8**) #5

; Function Attrs: nounwind uwtable
define internal signext i8 @FileLockParseArgs(i8**, i32, %struct.parse_table*, i32) #0 !dbg !489 {
  %5 = alloca i8, align 1
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.parse_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8** %0, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !493, metadata !89), !dbg !494
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !495, metadata !89), !dbg !496
  store %struct.parse_table* %2, %struct.parse_table** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.parse_table** %8, metadata !497, metadata !89), !dbg !498
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !499, metadata !89), !dbg !500
  call void @llvm.dbg.declare(metadata i32* %10, metadata !501, metadata !89), !dbg !502
  store i32 5, i32* %10, align 4, !dbg !502
  br label %13, !dbg !503

; <label>:13:                                     ; preds = %96, %4
  %14 = load i32, i32* %7, align 4, !dbg !504
  %15 = icmp ne i32 %14, 0, !dbg !506
  br i1 %15, label %16, label %102, !dbg !506

; <label>:16:                                     ; preds = %13
  call void @llvm.dbg.declare(metadata i32* %11, metadata !507, metadata !89), !dbg !509
  call void @llvm.dbg.declare(metadata i8** %12, metadata !510, metadata !89), !dbg !511
  %17 = load i32, i32* %10, align 4, !dbg !512
  %18 = zext i32 %17 to i64, !dbg !513
  %19 = load i8**, i8*** %6, align 8, !dbg !513
  %20 = getelementptr inbounds i8*, i8** %19, i64 %18, !dbg !513
  %21 = load i8*, i8** %20, align 8, !dbg !513
  %22 = call i8* @strchr(i8* %21, i32 61) #9, !dbg !514
  store i8* %22, i8** %12, align 8, !dbg !511
  %23 = load i8*, i8** %12, align 8, !dbg !515
  %24 = icmp eq i8* %23, null, !dbg !517
  br i1 %24, label %39, label %25, !dbg !518

; <label>:25:                                     ; preds = %16
  %26 = load i8*, i8** %12, align 8, !dbg !519
  %27 = load i32, i32* %10, align 4, !dbg !521
  %28 = zext i32 %27 to i64, !dbg !522
  %29 = load i8**, i8*** %6, align 8, !dbg !522
  %30 = getelementptr inbounds i8*, i8** %29, i64 %28, !dbg !522
  %31 = load i8*, i8** %30, align 8, !dbg !522
  %32 = icmp eq i8* %26, %31, !dbg !523
  br i1 %32, label %39, label %33, !dbg !524

; <label>:33:                                     ; preds = %25
  %34 = load i8*, i8** %12, align 8, !dbg !525
  %35 = getelementptr inbounds i8, i8* %34, i64 1, !dbg !525
  %36 = load i8, i8* %35, align 1, !dbg !525
  %37 = sext i8 %36 to i32, !dbg !525
  %38 = icmp eq i32 %37, 0, !dbg !527
  br i1 %38, label %39, label %40, !dbg !528

; <label>:39:                                     ; preds = %33, %25, %16
  store i8 1, i8* %5, align 1, !dbg !529
  br label %103, !dbg !529

; <label>:40:                                     ; preds = %33
  %41 = load i8*, i8** %12, align 8, !dbg !531
  store i8 0, i8* %41, align 1, !dbg !532
  store i32 0, i32* %11, align 4, !dbg !533
  br label %42, !dbg !535

; <label>:42:                                     ; preds = %93, %40
  %43 = load i32, i32* %11, align 4, !dbg !536
  %44 = load i32, i32* %9, align 4, !dbg !539
  %45 = icmp ult i32 %43, %44, !dbg !540
  br i1 %45, label %46, label %96, !dbg !541

; <label>:46:                                     ; preds = %42
  %47 = load i32, i32* %10, align 4, !dbg !542
  %48 = zext i32 %47 to i64, !dbg !545
  %49 = load i8**, i8*** %6, align 8, !dbg !545
  %50 = getelementptr inbounds i8*, i8** %49, i64 %48, !dbg !545
  %51 = load i8*, i8** %50, align 8, !dbg !545
  %52 = load i32, i32* %11, align 4, !dbg !546
  %53 = zext i32 %52 to i64, !dbg !547
  %54 = load %struct.parse_table*, %struct.parse_table** %8, align 8, !dbg !547
  %55 = getelementptr inbounds %struct.parse_table, %struct.parse_table* %54, i64 %53, !dbg !547
  %56 = getelementptr inbounds %struct.parse_table, %struct.parse_table* %55, i32 0, i32 1, !dbg !548
  %57 = load i8*, i8** %56, align 8, !dbg !548
  %58 = call i32 @strcmp(i8* %51, i8* %57) #9, !dbg !549
  %59 = icmp eq i32 %58, 0, !dbg !550
  br i1 %59, label %60, label %92, !dbg !551

; <label>:60:                                     ; preds = %46
  %61 = load i32, i32* %11, align 4, !dbg !552
  %62 = zext i32 %61 to i64, !dbg !554
  %63 = load %struct.parse_table*, %struct.parse_table** %8, align 8, !dbg !554
  %64 = getelementptr inbounds %struct.parse_table, %struct.parse_table* %63, i64 %62, !dbg !554
  %65 = getelementptr inbounds %struct.parse_table, %struct.parse_table* %64, i32 0, i32 0, !dbg !555
  %66 = load i32, i32* %65, align 8, !dbg !555
  switch i32 %66, label %91 [
    i32 0, label %67
    i32 1, label %81
  ], !dbg !556

; <label>:67:                                     ; preds = %60
  %68 = load i8*, i8** %12, align 8, !dbg !557
  %69 = getelementptr inbounds i8, i8* %68, i64 1, !dbg !557
  %70 = load i32, i32* %11, align 4, !dbg !560
  %71 = zext i32 %70 to i64, !dbg !561
  %72 = load %struct.parse_table*, %struct.parse_table** %8, align 8, !dbg !561
  %73 = getelementptr inbounds %struct.parse_table, %struct.parse_table* %72, i64 %71, !dbg !561
  %74 = getelementptr inbounds %struct.parse_table, %struct.parse_table* %73, i32 0, i32 2, !dbg !562
  %75 = load i8*, i8** %74, align 8, !dbg !562
  %76 = bitcast i8* %75 to i32*, !dbg !563
  %77 = call i32 (i8*, i8*, ...) @sscanf(i8* %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32* %76) #8, !dbg !564
  %78 = icmp ne i32 %77, 1, !dbg !565
  br i1 %78, label %79, label %80, !dbg !566

; <label>:79:                                     ; preds = %67
  store i8 1, i8* %5, align 1, !dbg !567
  br label %103, !dbg !567

; <label>:80:                                     ; preds = %67
  br label %91, !dbg !569

; <label>:81:                                     ; preds = %60
  %82 = load i8*, i8** %12, align 8, !dbg !570
  %83 = getelementptr inbounds i8, i8* %82, i64 1, !dbg !570
  %84 = load i32, i32* %11, align 4, !dbg !571
  %85 = zext i32 %84 to i64, !dbg !572
  %86 = load %struct.parse_table*, %struct.parse_table** %8, align 8, !dbg !572
  %87 = getelementptr inbounds %struct.parse_table, %struct.parse_table* %86, i64 %85, !dbg !572
  %88 = getelementptr inbounds %struct.parse_table, %struct.parse_table* %87, i32 0, i32 2, !dbg !573
  %89 = load i8*, i8** %88, align 8, !dbg !573
  %90 = bitcast i8* %89 to i8**, !dbg !574
  store i8* %83, i8** %90, align 8, !dbg !575
  br label %91, !dbg !576

; <label>:91:                                     ; preds = %60, %81, %80
  br label %92, !dbg !577

; <label>:92:                                     ; preds = %91, %46
  br label %93, !dbg !578

; <label>:93:                                     ; preds = %92
  %94 = load i32, i32* %11, align 4, !dbg !579
  %95 = add i32 %94, 1, !dbg !579
  store i32 %95, i32* %11, align 4, !dbg !579
  br label %42, !dbg !581, !llvm.loop !582

; <label>:96:                                     ; preds = %42
  %97 = load i8*, i8** %12, align 8, !dbg !584
  store i8 61, i8* %97, align 1, !dbg !585
  %98 = load i32, i32* %10, align 4, !dbg !586
  %99 = add i32 %98, 1, !dbg !586
  store i32 %99, i32* %10, align 4, !dbg !586
  %100 = load i32, i32* %7, align 4, !dbg !587
  %101 = add i32 %100, -1, !dbg !587
  store i32 %101, i32* %7, align 4, !dbg !587
  br label %13, !dbg !588, !llvm.loop !590

; <label>:102:                                    ; preds = %13
  store i8 0, i8* %5, align 1, !dbg !591
  br label %103, !dbg !591

; <label>:103:                                    ; preds = %102, %79, %39
  %104 = load i8, i8* %5, align 1, !dbg !592
  ret i8 %104, !dbg !592
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #6

declare i8* @Str_SafeAsprintf(i64*, i8*, ...) #2

declare i8* @Str_Strcpy(i8*, i8*, i64) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @Posix_Free(i8*) #3 !dbg !593 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !597, metadata !89), !dbg !598
  call void @llvm.dbg.declare(metadata i32* %3, metadata !599, metadata !89), !dbg !600
  %4 = call i32* @__errno_location() #1, !dbg !601
  %5 = load i32, i32* %4, align 4, !dbg !602
  store i32 %5, i32* %3, align 4, !dbg !600
  %6 = load i8*, i8** %2, align 8, !dbg !603
  call void @free(i8* %6) #8, !dbg !604
  %7 = load i32, i32* %3, align 4, !dbg !605
  %8 = call i32* @__errno_location() #1, !dbg !606
  store i32 %7, i32* %8, align 4, !dbg !607
  ret void, !dbg !608
}

; Function Attrs: nounwind
declare i32 @sscanf(i8*, i8*, ...) #5

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #6

declare i8* @Unicode_Duplicate(i8*) #2

declare void @Log(i8*, ...) #2

declare i32 @FileDeletion(i8*, i8 signext) #2

; Function Attrs: nounwind uwtable
define signext i8 @FileLockValidName(i8*) #0 !dbg !609 {
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !612, metadata !89), !dbg !613
  call void @llvm.dbg.declare(metadata i32* %4, metadata !614, metadata !89), !dbg !615
  %5 = load i8*, i8** %3, align 8, !dbg !616
  %6 = call i64 @Unicode_FindSubstrInRange(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i64 0, i64 -1, i8* %5, i64 0, i64 1), !dbg !618
  %7 = icmp eq i64 %6, -1, !dbg !619
  br i1 %7, label %8, label %9, !dbg !620

; <label>:8:                                      ; preds = %1
  store i8 0, i8* %2, align 1, !dbg !621
  br label %28, !dbg !621

; <label>:9:                                      ; preds = %1
  store i32 0, i32* %4, align 4, !dbg !623
  br label %10, !dbg !625

; <label>:10:                                     ; preds = %22, %9
  %11 = load i32, i32* %4, align 4, !dbg !626
  %12 = icmp ult i32 %11, 5, !dbg !629
  br i1 %12, label %13, label %25, !dbg !630

; <label>:13:                                     ; preds = %10
  %14 = load i8*, i8** %3, align 8, !dbg !631
  %15 = load i32, i32* %4, align 4, !dbg !634
  %16 = add i32 %15, 1, !dbg !635
  %17 = zext i32 %16 to i64, !dbg !634
  %18 = call i64 @Unicode_FindSubstrInRange(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i64 0, i64 -1, i8* %14, i64 %17, i64 1), !dbg !636
  %19 = icmp eq i64 %18, -1, !dbg !637
  br i1 %19, label %20, label %21, !dbg !638

; <label>:20:                                     ; preds = %13
  store i8 0, i8* %2, align 1, !dbg !639
  br label %28, !dbg !639

; <label>:21:                                     ; preds = %13
  br label %22, !dbg !641

; <label>:22:                                     ; preds = %21
  %23 = load i32, i32* %4, align 4, !dbg !642
  %24 = add i32 %23, 1, !dbg !642
  store i32 %24, i32* %4, align 4, !dbg !642
  br label %10, !dbg !644, !llvm.loop !645

; <label>:25:                                     ; preds = %10
  %26 = load i8*, i8** %3, align 8, !dbg !647
  %27 = call signext i8 @Unicode_EndsWith(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0)), !dbg !648
  store i8 %27, i8* %2, align 1, !dbg !649
  br label %28, !dbg !649

; <label>:28:                                     ; preds = %25, %20, %8
  %29 = load i8, i8* %2, align 1, !dbg !650
  ret i8 %29, !dbg !650
}

declare i64 @Unicode_FindSubstrInRange(i8*, i64, i64, i8*, i64, i64) #2

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @Unicode_EndsWith(i8*, i8*) #3 !dbg !651 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !655, metadata !89), !dbg !656
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !657, metadata !89), !dbg !658
  %5 = load i8*, i8** %3, align 8, !dbg !659
  %6 = load i8*, i8** %4, align 8, !dbg !660
  %7 = call signext i8 @UnicodeEndsWith(i8* %5, i8* %6, i8 signext 0), !dbg !661
  ret i8 %7, !dbg !662
}

; Function Attrs: nounwind uwtable
define i32 @FileUnlockIntrinsic(%struct.FileLockToken*) #0 !dbg !663 {
  %2 = alloca %struct.FileLockToken*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store %struct.FileLockToken* %0, %struct.FileLockToken** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.FileLockToken** %2, metadata !669, metadata !89), !dbg !670
  call void @llvm.dbg.declare(metadata i32* %3, metadata !671, metadata !89), !dbg !672
  store i32 0, i32* %3, align 4, !dbg !672
  %5 = load %struct.FileLockToken*, %struct.FileLockToken** %2, align 8, !dbg !673
  %6 = getelementptr inbounds %struct.FileLockToken, %struct.FileLockToken* %5, i32 0, i32 1, !dbg !675
  %7 = load i8, i8* %6, align 4, !dbg !675
  %8 = icmp ne i8 %7, 0, !dbg !673
  br i1 %8, label %9, label %52, !dbg !676

; <label>:9:                                      ; preds = %1
  %10 = load %struct.FileLockToken*, %struct.FileLockToken** %2, align 8, !dbg !677
  %11 = getelementptr inbounds %struct.FileLockToken, %struct.FileLockToken* %10, i32 0, i32 3, !dbg !680
  %12 = bitcast %union.anon* %11 to %struct.anon.0*, !dbg !681
  %13 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %12, i32 0, i32 0, !dbg !682
  %14 = load i8*, i8** %13, align 8, !dbg !682
  %15 = icmp ne i8* %14, @implicitReadToken, !dbg !683
  br i1 %15, label %16, label %47, !dbg !684

; <label>:16:                                     ; preds = %9
  call void @llvm.dbg.declare(metadata i8** %4, metadata !685, metadata !89), !dbg !687
  %17 = load %struct.FileLockToken*, %struct.FileLockToken** %2, align 8, !dbg !688
  %18 = getelementptr inbounds %struct.FileLockToken, %struct.FileLockToken* %17, i32 0, i32 2, !dbg !689
  %19 = load i8*, i8** %18, align 8, !dbg !689
  %20 = call i8* @Unicode_Append(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0)), !dbg !690
  store i8* %20, i8** %4, align 8, !dbg !691
  %21 = load %struct.FileLockToken*, %struct.FileLockToken** %2, align 8, !dbg !692
  %22 = getelementptr inbounds %struct.FileLockToken, %struct.FileLockToken* %21, i32 0, i32 3, !dbg !693
  %23 = bitcast %union.anon* %22 to %struct.anon.0*, !dbg !694
  %24 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %23, i32 0, i32 0, !dbg !695
  %25 = load i8*, i8** %24, align 8, !dbg !695
  %26 = call i32 @FileDeletion(i8* %25, i8 signext 0), !dbg !696
  store i32 %26, i32* %3, align 4, !dbg !697
  %27 = load i8*, i8** %4, align 8, !dbg !698
  %28 = call i32 @FileRemoveDirectory(i8* %27), !dbg !699
  %29 = load i32, i32* %3, align 4, !dbg !700
  %30 = icmp ne i32 %29, 0, !dbg !700
  br i1 %30, label %31, label %40, !dbg !702

; <label>:31:                                     ; preds = %16
  br i1 false, label %32, label %40, !dbg !703

; <label>:32:                                     ; preds = %31
  %33 = load %struct.FileLockToken*, %struct.FileLockToken** %2, align 8, !dbg !705
  %34 = getelementptr inbounds %struct.FileLockToken, %struct.FileLockToken* %33, i32 0, i32 3, !dbg !707
  %35 = bitcast %union.anon* %34 to %struct.anon.0*, !dbg !708
  %36 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %35, i32 0, i32 0, !dbg !709
  %37 = load i8*, i8** %36, align 8, !dbg !709
  %38 = load i32, i32* %3, align 4, !dbg !710
  %39 = call i8* @Err_Errno2String(i32 %38), !dbg !711
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.FileUnlockIntrinsic, i32 0, i32 0), i8* %37, i8* %39), !dbg !712
  br label %40, !dbg !713

; <label>:40:                                     ; preds = %32, %31, %16
  %41 = load i8*, i8** %4, align 8, !dbg !714
  call void @Posix_Free(i8* %41), !dbg !715
  %42 = load %struct.FileLockToken*, %struct.FileLockToken** %2, align 8, !dbg !716
  %43 = getelementptr inbounds %struct.FileLockToken, %struct.FileLockToken* %42, i32 0, i32 3, !dbg !717
  %44 = bitcast %union.anon* %43 to %struct.anon.0*, !dbg !718
  %45 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %44, i32 0, i32 0, !dbg !719
  %46 = load i8*, i8** %45, align 8, !dbg !719
  call void @Posix_Free(i8* %46), !dbg !720
  br label %47, !dbg !721

; <label>:47:                                     ; preds = %40, %9
  %48 = load %struct.FileLockToken*, %struct.FileLockToken** %2, align 8, !dbg !722
  %49 = getelementptr inbounds %struct.FileLockToken, %struct.FileLockToken* %48, i32 0, i32 3, !dbg !723
  %50 = bitcast %union.anon* %49 to %struct.anon.0*, !dbg !724
  %51 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %50, i32 0, i32 0, !dbg !725
  store i8* null, i8** %51, align 8, !dbg !726
  br label %74, !dbg !727

; <label>:52:                                     ; preds = %1
  %53 = load %struct.FileLockToken*, %struct.FileLockToken** %2, align 8, !dbg !728
  %54 = getelementptr inbounds %struct.FileLockToken, %struct.FileLockToken* %53, i32 0, i32 3, !dbg !731
  %55 = bitcast %union.anon* %54 to %struct.anon*, !dbg !732
  %56 = getelementptr inbounds %struct.anon, %struct.anon* %55, i32 0, i32 0, !dbg !733
  %57 = call i32 @FileIO_CloseAndUnlink(%struct.FileIODescriptor* %56), !dbg !734
  %58 = call signext i8 @FileIO_IsSuccess(i32 %57), !dbg !735
  %59 = icmp ne i8 %58, 0, !dbg !737
  br i1 %59, label %73, label %60, !dbg !738

; <label>:60:                                     ; preds = %52
  %61 = call i32* @__errno_location() #1, !dbg !739
  %62 = load i32, i32* %61, align 4, !dbg !742
  %63 = icmp eq i32 %62, 16, !dbg !743
  br i1 %63, label %68, label %64, !dbg !744

; <label>:64:                                     ; preds = %60
  %65 = call i32* @__errno_location() #1, !dbg !745
  %66 = load i32, i32* %65, align 4, !dbg !747
  %67 = icmp eq i32 %66, 2, !dbg !748
  br i1 %67, label %68, label %69, !dbg !749

; <label>:68:                                     ; preds = %64, %60
  br label %72, !dbg !750

; <label>:69:                                     ; preds = %64
  %70 = call i32* @__errno_location() #1, !dbg !752
  %71 = load i32, i32* %70, align 4, !dbg !754
  store i32 %71, i32* %3, align 4, !dbg !755
  br label %72

; <label>:72:                                     ; preds = %69, %68
  br label %73, !dbg !756

; <label>:73:                                     ; preds = %72, %52
  br label %74

; <label>:74:                                     ; preds = %73, %47
  %75 = load %struct.FileLockToken*, %struct.FileLockToken** %2, align 8, !dbg !757
  %76 = getelementptr inbounds %struct.FileLockToken, %struct.FileLockToken* %75, i32 0, i32 2, !dbg !758
  %77 = load i8*, i8** %76, align 8, !dbg !758
  call void @Posix_Free(i8* %77), !dbg !759
  %78 = load %struct.FileLockToken*, %struct.FileLockToken** %2, align 8, !dbg !760
  %79 = getelementptr inbounds %struct.FileLockToken, %struct.FileLockToken* %78, i32 0, i32 0, !dbg !761
  store i32 0, i32* %79, align 8, !dbg !762
  %80 = load %struct.FileLockToken*, %struct.FileLockToken** %2, align 8, !dbg !763
  %81 = getelementptr inbounds %struct.FileLockToken, %struct.FileLockToken* %80, i32 0, i32 2, !dbg !764
  store i8* null, i8** %81, align 8, !dbg !765
  %82 = load %struct.FileLockToken*, %struct.FileLockToken** %2, align 8, !dbg !766
  %83 = bitcast %struct.FileLockToken* %82 to i8*, !dbg !766
  call void @Posix_Free(i8* %83), !dbg !767
  %84 = load i32, i32* %3, align 4, !dbg !768
  ret i32 %84, !dbg !769
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Unicode_Append(i8*, i8*) #3 !dbg !770 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !773, metadata !89), !dbg !774
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !775, metadata !89), !dbg !776
  %5 = load i8*, i8** %3, align 8, !dbg !777
  %6 = load i8*, i8** %4, align 8, !dbg !778
  %7 = call i8* @Unicode_ReplaceRange(i8* %5, i64 -1, i64 0, i8* %6, i64 0, i64 -1), !dbg !779
  ret i8* %7, !dbg !780
}

declare i32 @FileRemoveDirectory(i8*) #2

declare i32 @FileIO_CloseAndUnlink(%struct.FileIODescriptor*) #2

; Function Attrs: nounwind uwtable
define %struct.FileLockToken* @FileLockIntrinsic(i8*, i8 signext, i32, i32*) #0 !dbg !781 {
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.lock_values, align 8
  %11 = alloca %struct.FileLockToken*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !785, metadata !89), !dbg !786
  store i8 %1, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !787, metadata !89), !dbg !788
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !789, metadata !89), !dbg !790
  store i32* %3, i32** %8, align 8
  call void @llvm.dbg.declare(metadata i32** %8, metadata !791, metadata !89), !dbg !792
  call void @llvm.dbg.declare(metadata i8** %9, metadata !793, metadata !89), !dbg !794
  call void @llvm.dbg.declare(metadata %struct.lock_values* %10, metadata !795, metadata !89), !dbg !796
  %12 = bitcast %struct.lock_values* %10 to i8*, !dbg !796
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 72, i32 8, i1 false), !dbg !796
  call void @llvm.dbg.declare(metadata %struct.FileLockToken** %11, metadata !797, metadata !89), !dbg !798
  %13 = load i8*, i8** %5, align 8, !dbg !799
  %14 = call i8* @Unicode_Append(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0)), !dbg !800
  store i8* %14, i8** %9, align 8, !dbg !801
  %15 = load i8, i8* %6, align 1, !dbg !802
  %16 = sext i8 %15 to i32, !dbg !802
  %17 = icmp ne i32 %16, 0, !dbg !802
  %18 = select i1 %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), !dbg !802
  %19 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %10, i32 0, i32 2, !dbg !803
  store i8* %18, i8** %19, align 8, !dbg !804
  %20 = load i8, i8* %6, align 1, !dbg !805
  %21 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %10, i32 0, i32 6, !dbg !806
  store i8 %20, i8* %21, align 4, !dbg !807
  %22 = call i64 @Hostinfo_SystemTimerMS(), !dbg !808
  %23 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %10, i32 0, i32 7, !dbg !809
  store i64 %22, i64* %23, align 8, !dbg !810
  %24 = load i32, i32* %7, align 4, !dbg !811
  %25 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %10, i32 0, i32 8, !dbg !812
  store i32 %24, i32* %25, align 8, !dbg !813
  %26 = load i8*, i8** %5, align 8, !dbg !814
  %27 = call signext i8 @File_SupportsMandatoryLock(i8* %26), !dbg !816
  %28 = icmp ne i8 %27, 0, !dbg !816
  br i1 %28, label %29, label %34, !dbg !817

; <label>:29:                                     ; preds = %4
  %30 = load i8*, i8** %5, align 8, !dbg !818
  %31 = load i8*, i8** %9, align 8, !dbg !820
  %32 = load i32*, i32** %8, align 8, !dbg !821
  %33 = call %struct.FileLockToken* @FileLockIntrinsicMandatory(i8* %30, i8* %31, %struct.lock_values* %10, i32* %32), !dbg !822
  store %struct.FileLockToken* %33, %struct.FileLockToken** %11, align 8, !dbg !823
  br label %54, !dbg !824

; <label>:34:                                     ; preds = %4
  %35 = call i8* @FileLockGetMachineID(), !dbg !825
  %36 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %10, i32 0, i32 0, !dbg !827
  store i8* %35, i8** %36, align 8, !dbg !828
  %37 = call i8* @FileLockGetExecutionID(), !dbg !829
  %38 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %10, i32 0, i32 1, !dbg !830
  store i8* %37, i8** %38, align 8, !dbg !831
  %39 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %10, i32 0, i32 5, !dbg !832
  store i32 0, i32* %39, align 8, !dbg !833
  %40 = load i8*, i8** %9, align 8, !dbg !834
  %41 = call i8* @FileLockLocationChecksum(i8* %40), !dbg !835
  %42 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %10, i32 0, i32 3, !dbg !836
  store i8* %41, i8** %42, align 8, !dbg !837
  %43 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %10, i32 0, i32 4, !dbg !838
  store i8* null, i8** %43, align 8, !dbg !839
  %44 = load i8*, i8** %5, align 8, !dbg !840
  %45 = load i8*, i8** %9, align 8, !dbg !841
  %46 = load i32*, i32** %8, align 8, !dbg !842
  %47 = call %struct.FileLockToken* @FileLockIntrinsicPortable(i8* %44, i8* %45, %struct.lock_values* %10, i32* %46), !dbg !843
  store %struct.FileLockToken* %47, %struct.FileLockToken** %11, align 8, !dbg !844
  %48 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %10, i32 0, i32 4, !dbg !845
  %49 = load i8*, i8** %48, align 8, !dbg !845
  call void @Posix_Free(i8* %49), !dbg !846
  %50 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %10, i32 0, i32 3, !dbg !847
  %51 = load i8*, i8** %50, align 8, !dbg !847
  call void @Posix_Free(i8* %51), !dbg !848
  %52 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %10, i32 0, i32 1, !dbg !849
  %53 = load i8*, i8** %52, align 8, !dbg !849
  call void @Posix_Free(i8* %53), !dbg !850
  br label %54

; <label>:54:                                     ; preds = %34, %29
  %55 = load i8*, i8** %9, align 8, !dbg !851
  call void @Posix_Free(i8* %55), !dbg !852
  %56 = load %struct.FileLockToken*, %struct.FileLockToken** %11, align 8, !dbg !853
  ret %struct.FileLockToken* %56, !dbg !854
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @Hostinfo_SystemTimerMS() #3 !dbg !855 {
  %1 = call i64 @Hostinfo_SystemTimerNS(), !dbg !859
  %2 = udiv i64 %1, 1000000, !dbg !860
  ret i64 %2, !dbg !861
}

declare signext i8 @File_SupportsMandatoryLock(i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct.FileLockToken* @FileLockIntrinsicMandatory(i8*, i8*, %struct.lock_values*, i32*) #0 !dbg !862 {
  %5 = alloca %struct.FileLockToken*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.lock_values*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.FileLockToken*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !865, metadata !89), !dbg !866
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !867, metadata !89), !dbg !868
  store %struct.lock_values* %2, %struct.lock_values** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.lock_values** %8, metadata !869, metadata !89), !dbg !870
  store i32* %3, i32** %9, align 8
  call void @llvm.dbg.declare(metadata i32** %9, metadata !871, metadata !89), !dbg !872
  call void @llvm.dbg.declare(metadata i32* %10, metadata !873, metadata !89), !dbg !874
  call void @llvm.dbg.declare(metadata i32* %11, metadata !875, metadata !89), !dbg !876
  call void @llvm.dbg.declare(metadata i32* %12, metadata !877, metadata !89), !dbg !878
  call void @llvm.dbg.declare(metadata %struct.FileLockToken** %13, metadata !879, metadata !89), !dbg !880
  %14 = call i8* @UtilSafeMalloc0(i64 40), !dbg !881
  %15 = bitcast i8* %14 to %struct.FileLockToken*, !dbg !881
  store %struct.FileLockToken* %15, %struct.FileLockToken** %13, align 8, !dbg !880
  %16 = load %struct.FileLockToken*, %struct.FileLockToken** %13, align 8, !dbg !882
  %17 = getelementptr inbounds %struct.FileLockToken, %struct.FileLockToken* %16, i32 0, i32 0, !dbg !883
  store i32 1262701638, i32* %17, align 8, !dbg !884
  %18 = load %struct.FileLockToken*, %struct.FileLockToken** %13, align 8, !dbg !885
  %19 = getelementptr inbounds %struct.FileLockToken, %struct.FileLockToken* %18, i32 0, i32 1, !dbg !886
  store i8 0, i8* %19, align 4, !dbg !887
  %20 = load i8*, i8** %6, align 8, !dbg !888
  %21 = call i8* @Unicode_Duplicate(i8* %20), !dbg !889
  %22 = load %struct.FileLockToken*, %struct.FileLockToken** %13, align 8, !dbg !890
  %23 = getelementptr inbounds %struct.FileLockToken, %struct.FileLockToken* %22, i32 0, i32 2, !dbg !891
  store i8* %21, i8** %23, align 8, !dbg !892
  %24 = load %struct.FileLockToken*, %struct.FileLockToken** %13, align 8, !dbg !893
  %25 = getelementptr inbounds %struct.FileLockToken, %struct.FileLockToken* %24, i32 0, i32 3, !dbg !894
  %26 = bitcast %union.anon* %25 to %struct.anon*, !dbg !895
  %27 = getelementptr inbounds %struct.anon, %struct.anon* %26, i32 0, i32 0, !dbg !896
  call void @FileIO_Invalidate(%struct.FileIODescriptor* %27), !dbg !897
  %28 = load %struct.lock_values*, %struct.lock_values** %8, align 8, !dbg !898
  %29 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %28, i32 0, i32 6, !dbg !899
  %30 = load i8, i8* %29, align 4, !dbg !899
  %31 = sext i8 %30 to i32, !dbg !898
  %32 = icmp ne i32 %31, 0, !dbg !898
  %33 = select i1 %32, i32 2, i32 1, !dbg !898
  store i32 %33, i32* %10, align 4, !dbg !900
  %34 = load i32, i32* %10, align 4, !dbg !901
  %35 = or i32 %34, 8192, !dbg !901
  store i32 %35, i32* %10, align 4, !dbg !901
  br label %36, !dbg !902, !llvm.loop !903

; <label>:36:                                     ; preds = %50, %4
  %37 = load %struct.FileLockToken*, %struct.FileLockToken** %13, align 8, !dbg !904
  %38 = getelementptr inbounds %struct.FileLockToken, %struct.FileLockToken* %37, i32 0, i32 3, !dbg !906
  %39 = bitcast %union.anon* %38 to %struct.anon*, !dbg !907
  %40 = getelementptr inbounds %struct.anon, %struct.anon* %39, i32 0, i32 0, !dbg !908
  %41 = load i8*, i8** %7, align 8, !dbg !909
  %42 = load i32, i32* %10, align 4, !dbg !910
  %43 = call i32 @FileIOCreateRetry(%struct.FileIODescriptor* %40, i8* %41, i32 %42, i32 2, i32 384, i32 0), !dbg !911
  store i32 %43, i32* %12, align 4, !dbg !912
  %44 = call i32* @__errno_location() #1, !dbg !913
  %45 = load i32, i32* %44, align 4, !dbg !914
  store i32 %45, i32* %11, align 4, !dbg !915
  %46 = load i32, i32* %12, align 4, !dbg !916
  %47 = icmp ne i32 %46, 4, !dbg !918
  br i1 %47, label %48, label %49, !dbg !919

; <label>:48:                                     ; preds = %36
  br label %54, !dbg !920

; <label>:49:                                     ; preds = %36
  br label %50, !dbg !922

; <label>:50:                                     ; preds = %49
  %51 = load %struct.lock_values*, %struct.lock_values** %8, align 8, !dbg !923
  %52 = call i32 @FileLockSleeper(%struct.lock_values* %51), !dbg !925
  %53 = icmp eq i32 %52, 0, !dbg !926
  br i1 %53, label %36, label %54, !dbg !927, !llvm.loop !903

; <label>:54:                                     ; preds = %50, %48
  %55 = load i32, i32* %12, align 4, !dbg !928
  %56 = call signext i8 @FileIO_IsSuccess(i32 %55), !dbg !930
  %57 = icmp ne i8 %56, 0, !dbg !930
  br i1 %57, label %58, label %61, !dbg !931

; <label>:58:                                     ; preds = %54
  %59 = load i32*, i32** %9, align 8, !dbg !932
  store i32 0, i32* %59, align 4, !dbg !934
  %60 = load %struct.FileLockToken*, %struct.FileLockToken** %13, align 8, !dbg !935
  store %struct.FileLockToken* %60, %struct.FileLockToken** %5, align 8, !dbg !936
  br label %76, !dbg !936

; <label>:61:                                     ; preds = %54
  %62 = load i32, i32* %12, align 4, !dbg !937
  %63 = icmp eq i32 %62, 4, !dbg !940
  br i1 %63, label %64, label %66, !dbg !941

; <label>:64:                                     ; preds = %61
  %65 = load i32*, i32** %9, align 8, !dbg !942
  store i32 0, i32* %65, align 4, !dbg !944
  br label %70, !dbg !945

; <label>:66:                                     ; preds = %61
  %67 = load i32, i32* %11, align 4, !dbg !946
  %68 = call i32 @FileMapErrorToErrno(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.FileLockIntrinsicMandatory, i32 0, i32 0), i32 %67), !dbg !948
  %69 = load i32*, i32** %9, align 8, !dbg !949
  store i32 %68, i32* %69, align 4, !dbg !950
  br label %70

; <label>:70:                                     ; preds = %66, %64
  %71 = load %struct.FileLockToken*, %struct.FileLockToken** %13, align 8, !dbg !951
  %72 = getelementptr inbounds %struct.FileLockToken, %struct.FileLockToken* %71, i32 0, i32 2, !dbg !952
  %73 = load i8*, i8** %72, align 8, !dbg !952
  call void @Posix_Free(i8* %73), !dbg !953
  %74 = load %struct.FileLockToken*, %struct.FileLockToken** %13, align 8, !dbg !954
  %75 = bitcast %struct.FileLockToken* %74 to i8*, !dbg !954
  call void @Posix_Free(i8* %75), !dbg !955
  store %struct.FileLockToken* null, %struct.FileLockToken** %5, align 8, !dbg !956
  br label %76, !dbg !956

; <label>:76:                                     ; preds = %70, %58
  %77 = load %struct.FileLockToken*, %struct.FileLockToken** %5, align 8, !dbg !957
  ret %struct.FileLockToken* %77, !dbg !957
}

declare i8* @FileLockGetMachineID() #2

declare i8* @FileLockGetExecutionID() #2

; Function Attrs: nounwind uwtable
define internal i8* @FileLockLocationChecksum(i8*) #0 !dbg !958 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !961, metadata !89), !dbg !962
  call void @llvm.dbg.declare(metadata i32* %3, metadata !963, metadata !89), !dbg !964
  call void @llvm.dbg.declare(metadata i32* %4, metadata !965, metadata !89), !dbg !966
  store i32 5381, i32* %4, align 4, !dbg !966
  call void @llvm.dbg.declare(metadata i8** %5, metadata !967, metadata !89), !dbg !968
  %6 = load i8*, i8** %2, align 8, !dbg !969
  store i8* %6, i8** %5, align 8, !dbg !968
  br label %7, !dbg !970

; <label>:7:                                      ; preds = %13, %1
  %8 = load i8*, i8** %5, align 8, !dbg !971
  %9 = getelementptr inbounds i8, i8* %8, i32 1, !dbg !971
  store i8* %9, i8** %5, align 8, !dbg !971
  %10 = load i8, i8* %8, align 1, !dbg !973
  %11 = sext i8 %10 to i32, !dbg !973
  store i32 %11, i32* %3, align 4, !dbg !974
  %12 = icmp ne i32 %11, 0, !dbg !975
  br i1 %12, label %13, label %20, !dbg !975

; <label>:13:                                     ; preds = %7
  %14 = load i32, i32* %4, align 4, !dbg !976
  %15 = shl i32 %14, 5, !dbg !978
  %16 = load i32, i32* %4, align 4, !dbg !979
  %17 = add i32 %15, %16, !dbg !980
  %18 = load i32, i32* %3, align 4, !dbg !981
  %19 = add i32 %17, %18, !dbg !982
  store i32 %19, i32* %4, align 4, !dbg !983
  br label %7, !dbg !984, !llvm.loop !986

; <label>:20:                                     ; preds = %7
  %21 = load i32, i32* %4, align 4, !dbg !987
  %22 = call i8* (i64*, i8*, ...) @Str_SafeAsprintf(i64* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32 %21), !dbg !988
  ret i8* %22, !dbg !989
}

; Function Attrs: nounwind uwtable
define internal %struct.FileLockToken* @FileLockIntrinsicPortable(i8*, i8*, %struct.lock_values*, i32*) #0 !dbg !990 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.lock_values*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.FileIODescriptor, align 8
  %12 = alloca %struct.FileLockToken*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !991, metadata !89), !dbg !992
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !993, metadata !89), !dbg !994
  store %struct.lock_values* %2, %struct.lock_values** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.lock_values** %7, metadata !995, metadata !89), !dbg !996
  store i32* %3, i32** %8, align 8
  call void @llvm.dbg.declare(metadata i32** %8, metadata !997, metadata !89), !dbg !998
  call void @llvm.dbg.declare(metadata i32* %9, metadata !999, metadata !89), !dbg !1000
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1001, metadata !89), !dbg !1002
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor* %11, metadata !1003, metadata !89), !dbg !1004
  call void @llvm.dbg.declare(metadata %struct.FileLockToken** %12, metadata !1005, metadata !89), !dbg !1006
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1007, metadata !89), !dbg !1008
  store i8* null, i8** %13, align 8, !dbg !1008
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1009, metadata !89), !dbg !1010
  store i8* null, i8** %14, align 8, !dbg !1010
  call void @llvm.dbg.declare(metadata i8** %15, metadata !1011, metadata !89), !dbg !1012
  store i8* null, i8** %15, align 8, !dbg !1012
  %16 = load i8*, i8** %6, align 8, !dbg !1013
  %17 = load %struct.lock_values*, %struct.lock_values** %7, align 8, !dbg !1014
  %18 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %17, i32 0, i32 4, !dbg !1015
  %19 = call i32 @FileLockCreateEntryDirectory(i8* %16, i8** %15, i8** %13, i8** %14, i8** %18), !dbg !1016
  %20 = load i32*, i32** %8, align 8, !dbg !1017
  store i32 %19, i32* %20, align 4, !dbg !1018
  %21 = load i32*, i32** %8, align 8, !dbg !1019
  %22 = load i32, i32* %21, align 4, !dbg !1020
  switch i32 %22, label %33 [
    i32 0, label %23
    i32 30, label %24
    i32 13, label %24
  ], !dbg !1021

; <label>:23:                                     ; preds = %4
  br label %34, !dbg !1022

; <label>:24:                                     ; preds = %4, %4
  %25 = load %struct.lock_values*, %struct.lock_values** %7, align 8, !dbg !1024
  %26 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %25, i32 0, i32 6, !dbg !1026
  %27 = load i8, i8* %26, align 4, !dbg !1026
  %28 = icmp ne i8 %27, 0, !dbg !1024
  br i1 %28, label %32, label %29, !dbg !1027

; <label>:29:                                     ; preds = %24
  %30 = load i8*, i8** %5, align 8, !dbg !1028
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.FileLockIntrinsicPortable, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* %30), !dbg !1030
  %31 = load i32*, i32** %8, align 8, !dbg !1031
  store i32 0, i32* %31, align 4, !dbg !1032
  store i8* @implicitReadToken, i8** %14, align 8, !dbg !1033
  br label %32, !dbg !1034

; <label>:32:                                     ; preds = %29, %24
  br label %33, !dbg !1035

; <label>:33:                                     ; preds = %4, %32
  br label %111, !dbg !1037

; <label>:34:                                     ; preds = %23
  store i32 2, i32* %9, align 4, !dbg !1038
  %35 = load i32, i32* %9, align 4, !dbg !1039
  %36 = or i32 %35, 262144, !dbg !1039
  store i32 %36, i32* %9, align 4, !dbg !1039
  call void @FileIO_Invalidate(%struct.FileIODescriptor* %11), !dbg !1040
  %37 = load i8*, i8** %13, align 8, !dbg !1041
  %38 = load i32, i32* %9, align 4, !dbg !1042
  %39 = call i32 @FileIOCreateRetry(%struct.FileIODescriptor* %11, i8* %37, i32 %38, i32 3, i32 420, i32 2000), !dbg !1043
  store i32 %39, i32* %10, align 4, !dbg !1044
  %40 = load i32, i32* %10, align 4, !dbg !1045
  %41 = call signext i8 @FileIO_IsSuccess(i32 %40), !dbg !1047
  %42 = icmp ne i8 %41, 0, !dbg !1047
  br i1 %42, label %52, label %43, !dbg !1048

; <label>:43:                                     ; preds = %34
  %44 = call i32* @__errno_location() #1, !dbg !1049
  %45 = load i32, i32* %44, align 4, !dbg !1051
  %46 = call i32 @FileMapErrorToErrno(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.FileLockIntrinsicPortable, i32 0, i32 0), i32 %45), !dbg !1052
  %47 = load i32*, i32** %8, align 8, !dbg !1054
  store i32 %46, i32* %47, align 4, !dbg !1055
  %48 = load i8*, i8** %15, align 8, !dbg !1056
  %49 = call i32 @FileRemoveDirectory(i8* %48), !dbg !1057
  %50 = load i8*, i8** %6, align 8, !dbg !1058
  %51 = call i32 @FileRemoveDirectory(i8* %50), !dbg !1059
  br label %111, !dbg !1060

; <label>:52:                                     ; preds = %34
  %53 = load i8*, i8** %6, align 8, !dbg !1061
  %54 = load %struct.lock_values*, %struct.lock_values** %7, align 8, !dbg !1062
  %55 = call i32 @FileLockScanner(i8* %53, i32 (i8*, i8*, %struct.lock_values*, %struct.lock_values*)* @FileLockNumberScan, %struct.lock_values* %54, i8 signext 0), !dbg !1063
  %56 = load i32*, i32** %8, align 8, !dbg !1064
  store i32 %55, i32* %56, align 4, !dbg !1065
  %57 = load i32*, i32** %8, align 8, !dbg !1066
  %58 = load i32, i32* %57, align 4, !dbg !1068
  %59 = icmp ne i32 %58, 0, !dbg !1069
  br i1 %59, label %60, label %68, !dbg !1070

; <label>:60:                                     ; preds = %52
  %61 = call i32 @FileIO_Close(%struct.FileIODescriptor* %11), !dbg !1071
  %62 = load i8*, i8** %13, align 8, !dbg !1073
  %63 = call i32 @FileDeletion(i8* %62, i8 signext 0), !dbg !1074
  %64 = load i8*, i8** %15, align 8, !dbg !1075
  %65 = call i32 @FileRemoveDirectory(i8* %64), !dbg !1076
  %66 = load i8*, i8** %6, align 8, !dbg !1077
  %67 = call i32 @FileRemoveDirectory(i8* %66), !dbg !1078
  br label %111, !dbg !1079

; <label>:68:                                     ; preds = %52
  %69 = load %struct.lock_values*, %struct.lock_values** %7, align 8, !dbg !1080
  %70 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %69, i32 0, i32 5, !dbg !1081
  %71 = load i32, i32* %70, align 8, !dbg !1082
  %72 = add i32 %71, 1, !dbg !1082
  store i32 %72, i32* %70, align 8, !dbg !1082
  %73 = load %struct.lock_values*, %struct.lock_values** %7, align 8, !dbg !1083
  %74 = load i8*, i8** %13, align 8, !dbg !1084
  %75 = load i8*, i8** %14, align 8, !dbg !1085
  %76 = call i32 @FileLockCreateMemberFile(%struct.FileIODescriptor* %11, %struct.lock_values* %73, i8* %74, i8* %75), !dbg !1086
  %77 = load i32*, i32** %8, align 8, !dbg !1087
  store i32 %76, i32* %77, align 4, !dbg !1088
  %78 = load i32*, i32** %8, align 8, !dbg !1089
  %79 = load i32, i32* %78, align 4, !dbg !1091
  %80 = icmp eq i32 %79, 0, !dbg !1092
  br i1 %80, label %81, label %85, !dbg !1093

; <label>:81:                                     ; preds = %68
  %82 = load i8*, i8** %15, align 8, !dbg !1094
  %83 = call i32 @FileRemoveDirectory(i8* %82), !dbg !1096
  %84 = load i32*, i32** %8, align 8, !dbg !1097
  store i32 %83, i32* %84, align 4, !dbg !1098
  br label %85, !dbg !1099

; <label>:85:                                     ; preds = %81, %68
  %86 = load i32*, i32** %8, align 8, !dbg !1100
  %87 = load i32, i32* %86, align 4, !dbg !1102
  %88 = icmp ne i32 %87, 0, !dbg !1103
  br i1 %88, label %89, label %96, !dbg !1104

; <label>:89:                                     ; preds = %85
  %90 = load i8*, i8** %13, align 8, !dbg !1105
  %91 = call i32 @FileDeletion(i8* %90, i8 signext 0), !dbg !1107
  %92 = load i8*, i8** %14, align 8, !dbg !1108
  %93 = call i32 @FileDeletion(i8* %92, i8 signext 0), !dbg !1109
  %94 = load i8*, i8** %6, align 8, !dbg !1110
  %95 = call i32 @FileRemoveDirectory(i8* %94), !dbg !1111
  br label %111, !dbg !1112

; <label>:96:                                     ; preds = %85
  %97 = load i8*, i8** %6, align 8, !dbg !1113
  %98 = load %struct.lock_values*, %struct.lock_values** %7, align 8, !dbg !1114
  %99 = call i32 @FileLockScanner(i8* %97, i32 (i8*, i8*, %struct.lock_values*, %struct.lock_values*)* @FileLockWaitForPossession, %struct.lock_values* %98, i8 signext 1), !dbg !1115
  %100 = load i32*, i32** %8, align 8, !dbg !1116
  store i32 %99, i32* %100, align 4, !dbg !1117
  %101 = load i32*, i32** %8, align 8, !dbg !1118
  %102 = load i32, i32* %101, align 4, !dbg !1119
  switch i32 %102, label %109 [
    i32 0, label %103
    i32 11, label %104
  ], !dbg !1120

; <label>:103:                                    ; preds = %96
  br label %110, !dbg !1121

; <label>:104:                                    ; preds = %96
  %105 = load i8*, i8** %14, align 8, !dbg !1123
  %106 = call i32 @FileDeletion(i8* %105, i8 signext 0), !dbg !1124
  %107 = load i8*, i8** %6, align 8, !dbg !1125
  %108 = call i32 @FileRemoveDirectory(i8* %107), !dbg !1126
  br label %109, !dbg !1126

; <label>:109:                                    ; preds = %96, %104
  br label %110, !dbg !1127

; <label>:110:                                    ; preds = %109, %103
  br label %111, !dbg !1128

; <label>:111:                                    ; preds = %110, %89, %60, %43, %33
  %112 = load i8*, i8** %15, align 8, !dbg !1129
  call void @Posix_Free(i8* %112), !dbg !1130
  %113 = load i8*, i8** %13, align 8, !dbg !1131
  call void @Posix_Free(i8* %113), !dbg !1132
  %114 = load i32*, i32** %8, align 8, !dbg !1133
  %115 = load i32, i32* %114, align 4, !dbg !1135
  %116 = icmp eq i32 %115, 0, !dbg !1136
  br i1 %116, label %117, label %133, !dbg !1137

; <label>:117:                                    ; preds = %111
  %118 = call i8* @UtilSafeMalloc0(i64 40), !dbg !1138
  %119 = bitcast i8* %118 to %struct.FileLockToken*, !dbg !1138
  store %struct.FileLockToken* %119, %struct.FileLockToken** %12, align 8, !dbg !1140
  %120 = load %struct.FileLockToken*, %struct.FileLockToken** %12, align 8, !dbg !1141
  %121 = getelementptr inbounds %struct.FileLockToken, %struct.FileLockToken* %120, i32 0, i32 0, !dbg !1142
  store i32 1262701638, i32* %121, align 8, !dbg !1143
  %122 = load %struct.FileLockToken*, %struct.FileLockToken** %12, align 8, !dbg !1144
  %123 = getelementptr inbounds %struct.FileLockToken, %struct.FileLockToken* %122, i32 0, i32 1, !dbg !1145
  store i8 1, i8* %123, align 4, !dbg !1146
  %124 = load i8*, i8** %5, align 8, !dbg !1147
  %125 = call i8* @Unicode_Duplicate(i8* %124), !dbg !1148
  %126 = load %struct.FileLockToken*, %struct.FileLockToken** %12, align 8, !dbg !1149
  %127 = getelementptr inbounds %struct.FileLockToken, %struct.FileLockToken* %126, i32 0, i32 2, !dbg !1150
  store i8* %125, i8** %127, align 8, !dbg !1151
  %128 = load i8*, i8** %14, align 8, !dbg !1152
  %129 = load %struct.FileLockToken*, %struct.FileLockToken** %12, align 8, !dbg !1153
  %130 = getelementptr inbounds %struct.FileLockToken, %struct.FileLockToken* %129, i32 0, i32 3, !dbg !1154
  %131 = bitcast %union.anon* %130 to %struct.anon.0*, !dbg !1155
  %132 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %131, i32 0, i32 0, !dbg !1156
  store i8* %128, i8** %132, align 8, !dbg !1157
  br label %141, !dbg !1158

; <label>:133:                                    ; preds = %111
  %134 = load i8*, i8** %14, align 8, !dbg !1159
  call void @Posix_Free(i8* %134), !dbg !1161
  store %struct.FileLockToken* null, %struct.FileLockToken** %12, align 8, !dbg !1162
  %135 = load i32*, i32** %8, align 8, !dbg !1163
  %136 = load i32, i32* %135, align 4, !dbg !1165
  %137 = icmp eq i32 %136, 11, !dbg !1166
  br i1 %137, label %138, label %140, !dbg !1167

; <label>:138:                                    ; preds = %133
  %139 = load i32*, i32** %8, align 8, !dbg !1168
  store i32 0, i32* %139, align 4, !dbg !1170
  br label %140, !dbg !1171

; <label>:140:                                    ; preds = %138, %133
  br label %141

; <label>:141:                                    ; preds = %140, %117
  %142 = load %struct.FileLockToken*, %struct.FileLockToken** %12, align 8, !dbg !1172
  ret %struct.FileLockToken* %142, !dbg !1173
}

; Function Attrs: nounwind uwtable
define signext i8 @FileLockIsLocked(i8*, i32*) #0 !dbg !1174 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1177, metadata !89), !dbg !1178
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !1179, metadata !89), !dbg !1180
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1181, metadata !89), !dbg !1182
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1183, metadata !89), !dbg !1184
  %7 = load i8*, i8** %3, align 8, !dbg !1185
  %8 = call i8* @Unicode_Append(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0)), !dbg !1186
  store i8* %8, i8** %6, align 8, !dbg !1187
  %9 = load i8*, i8** %3, align 8, !dbg !1188
  %10 = call signext i8 @File_SupportsMandatoryLock(i8* %9), !dbg !1190
  %11 = icmp ne i8 %10, 0, !dbg !1190
  br i1 %11, label %12, label %16, !dbg !1191

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %6, align 8, !dbg !1192
  %14 = load i32*, i32** %4, align 8, !dbg !1194
  %15 = call signext i8 @FileLockIsLockedMandatory(i8* %13, i32* %14), !dbg !1195
  store i8 %15, i8* %5, align 1, !dbg !1196
  br label %20, !dbg !1197

; <label>:16:                                     ; preds = %2
  %17 = load i8*, i8** %6, align 8, !dbg !1198
  %18 = load i32*, i32** %4, align 8, !dbg !1200
  %19 = call signext i8 @FileLockIsLockedPortable(i8* %17, i32* %18), !dbg !1201
  store i8 %19, i8* %5, align 1, !dbg !1202
  br label %20

; <label>:20:                                     ; preds = %16, %12
  %21 = load i8*, i8** %6, align 8, !dbg !1203
  call void @Posix_Free(i8* %21), !dbg !1204
  %22 = load i8, i8* %5, align 1, !dbg !1205
  ret i8 %22, !dbg !1206
}

; Function Attrs: nounwind uwtable
define internal signext i8 @FileLockIsLockedMandatory(i8*, i32*) #0 !dbg !1207 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.FileIODescriptor, align 8
  %9 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1208, metadata !89), !dbg !1209
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !1210, metadata !89), !dbg !1211
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1212, metadata !89), !dbg !1213
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1214, metadata !89), !dbg !1215
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor* %8, metadata !1216, metadata !89), !dbg !1217
  call void @FileIO_Invalidate(%struct.FileIODescriptor* %8), !dbg !1218
  store i32 8195, i32* %6, align 4, !dbg !1219
  %10 = load i8*, i8** %4, align 8, !dbg !1220
  %11 = load i32, i32* %6, align 4, !dbg !1221
  %12 = call i32 @FileIOCreateRetry(%struct.FileIODescriptor* %8, i8* %10, i32 %11, i32 0, i32 420, i32 0), !dbg !1222
  store i32 %12, i32* %7, align 4, !dbg !1223
  %13 = load i32, i32* %7, align 4, !dbg !1224
  %14 = call signext i8 @FileIO_IsSuccess(i32 %13), !dbg !1226
  %15 = icmp ne i8 %14, 0, !dbg !1226
  br i1 %15, label %16, label %19, !dbg !1227

; <label>:16:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i8* %9, metadata !1228, metadata !89), !dbg !1230
  %17 = call i32 @FileIO_Close(%struct.FileIODescriptor* %8), !dbg !1231
  %18 = call signext i8 @FileIO_IsSuccess(i32 %17), !dbg !1232
  store i8 %18, i8* %9, align 1, !dbg !1234
  store i8 0, i8* %3, align 1, !dbg !1235
  br label %36, !dbg !1235

; <label>:19:                                     ; preds = %2
  %20 = load i32, i32* %7, align 4, !dbg !1236
  %21 = icmp eq i32 %20, 4, !dbg !1238
  br i1 %21, label %22, label %23, !dbg !1239

; <label>:22:                                     ; preds = %19
  store i8 1, i8* %3, align 1, !dbg !1240
  br label %36, !dbg !1240

; <label>:23:                                     ; preds = %19
  %24 = load i32, i32* %7, align 4, !dbg !1242
  %25 = icmp eq i32 %24, 6, !dbg !1244
  br i1 %25, label %26, label %27, !dbg !1245

; <label>:26:                                     ; preds = %23
  store i8 0, i8* %3, align 1, !dbg !1246
  br label %36, !dbg !1246

; <label>:27:                                     ; preds = %23
  %28 = load i32*, i32** %5, align 8, !dbg !1248
  %29 = icmp ne i32* %28, null, !dbg !1251
  br i1 %29, label %30, label %35, !dbg !1252

; <label>:30:                                     ; preds = %27
  %31 = call i32* @__errno_location() #1, !dbg !1253
  %32 = load i32, i32* %31, align 4, !dbg !1255
  %33 = call i32 @FileMapErrorToErrno(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.FileLockIsLockedMandatory, i32 0, i32 0), i32 %32), !dbg !1256
  %34 = load i32*, i32** %5, align 8, !dbg !1258
  store i32 %33, i32* %34, align 4, !dbg !1259
  br label %35, !dbg !1260

; <label>:35:                                     ; preds = %30, %27
  store i8 0, i8* %3, align 1, !dbg !1261
  br label %36, !dbg !1261

; <label>:36:                                     ; preds = %35, %26, %22, %16
  %37 = load i8, i8* %3, align 1, !dbg !1262
  ret i8 %37, !dbg !1262
}

; Function Attrs: nounwind uwtable
define internal signext i8 @FileLockIsLockedPortable(i8*, i32*) #0 !dbg !1263 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8**, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1264, metadata !89), !dbg !1265
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !1266, metadata !89), !dbg !1267
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1268, metadata !89), !dbg !1269
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1270, metadata !89), !dbg !1271
  call void @llvm.dbg.declare(metadata i8* %8, metadata !1272, metadata !89), !dbg !1273
  store i8 0, i8* %8, align 1, !dbg !1273
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !1274, metadata !89), !dbg !1275
  store i8** null, i8*** %9, align 8, !dbg !1275
  %10 = load i8*, i8** %4, align 8, !dbg !1276
  %11 = call i32 @File_ListDirectory(i8* %10, i8*** %9), !dbg !1277
  store i32 %11, i32* %7, align 4, !dbg !1278
  %12 = load i32, i32* %7, align 4, !dbg !1279
  %13 = icmp eq i32 %12, -1, !dbg !1281
  br i1 %13, label %14, label %29, !dbg !1282

; <label>:14:                                     ; preds = %2
  %15 = load i32*, i32** %5, align 8, !dbg !1283
  %16 = icmp ne i32* %15, null, !dbg !1286
  br i1 %16, label %17, label %28, !dbg !1287

; <label>:17:                                     ; preds = %14
  %18 = call i32* @__errno_location() #1, !dbg !1288
  %19 = load i32, i32* %18, align 4, !dbg !1290
  %20 = icmp eq i32 %19, 2, !dbg !1291
  br i1 %20, label %21, label %22, !dbg !1292

; <label>:21:                                     ; preds = %17
  br label %25, !dbg !1293

; <label>:22:                                     ; preds = %17
  %23 = call i32* @__errno_location() #1, !dbg !1295
  %24 = load i32, i32* %23, align 4, !dbg !1297
  br label %25, !dbg !1298

; <label>:25:                                     ; preds = %22, %21
  %26 = phi i32 [ 0, %21 ], [ %24, %22 ], !dbg !1299
  %27 = load i32*, i32** %5, align 8, !dbg !1301
  store i32 %26, i32* %27, align 4, !dbg !1302
  br label %28, !dbg !1303

; <label>:28:                                     ; preds = %25, %14
  store i8 0, i8* %3, align 1, !dbg !1304
  br label %53, !dbg !1304

; <label>:29:                                     ; preds = %2
  store i32 0, i32* %6, align 4, !dbg !1305
  br label %30, !dbg !1307

; <label>:30:                                     ; preds = %45, %29
  %31 = load i32, i32* %6, align 4, !dbg !1308
  %32 = load i32, i32* %7, align 4, !dbg !1311
  %33 = icmp ult i32 %31, %32, !dbg !1312
  br i1 %33, label %34, label %48, !dbg !1313

; <label>:34:                                     ; preds = %30
  %35 = load i32, i32* %6, align 4, !dbg !1314
  %36 = zext i32 %35 to i64, !dbg !1317
  %37 = load i8**, i8*** %9, align 8, !dbg !1317
  %38 = getelementptr inbounds i8*, i8** %37, i64 %36, !dbg !1317
  %39 = load i8*, i8** %38, align 8, !dbg !1317
  %40 = load i8, i8* %39, align 1, !dbg !1318
  %41 = sext i8 %40 to i32, !dbg !1318
  %42 = icmp eq i32 %41, 77, !dbg !1319
  br i1 %42, label %43, label %44, !dbg !1320

; <label>:43:                                     ; preds = %34
  store i8 1, i8* %8, align 1, !dbg !1321
  br label %48, !dbg !1323

; <label>:44:                                     ; preds = %34
  br label %45, !dbg !1324

; <label>:45:                                     ; preds = %44
  %46 = load i32, i32* %6, align 4, !dbg !1325
  %47 = add i32 %46, 1, !dbg !1325
  store i32 %47, i32* %6, align 4, !dbg !1325
  br label %30, !dbg !1327, !llvm.loop !1328

; <label>:48:                                     ; preds = %43, %30
  %49 = load i8**, i8*** %9, align 8, !dbg !1330
  %50 = load i32, i32* %7, align 4, !dbg !1331
  %51 = sext i32 %50 to i64, !dbg !1331
  call void @Util_FreeStringList(i8** %49, i64 %51), !dbg !1332
  %52 = load i8, i8* %8, align 1, !dbg !1333
  store i8 %52, i8* %3, align 1, !dbg !1334
  br label %53, !dbg !1334

; <label>:53:                                     ; preds = %48, %28
  %54 = load i8, i8* %3, align 1, !dbg !1335
  ret i8 %54, !dbg !1335
}

; Function Attrs: nounwind uwtable
define i8* @FileLock_TokenPathName(%struct.FileLockToken*) #0 !dbg !1336 {
  %2 = alloca %struct.FileLockToken*, align 8
  store %struct.FileLockToken* %0, %struct.FileLockToken** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.FileLockToken** %2, metadata !1341, metadata !89), !dbg !1342
  %3 = load %struct.FileLockToken*, %struct.FileLockToken** %2, align 8, !dbg !1343
  %4 = getelementptr inbounds %struct.FileLockToken, %struct.FileLockToken* %3, i32 0, i32 2, !dbg !1344
  %5 = load i8*, i8** %4, align 8, !dbg !1344
  %6 = call i8* @Unicode_Duplicate(i8* %5), !dbg !1345
  ret i8* %6, !dbg !1346
}

; Function Attrs: nounwind
declare void @free(i8*) #5

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @UnicodeEndsWith(i8*, i8*, i8 signext) #3 !dbg !1347 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1350, metadata !89), !dbg !1351
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1352, metadata !89), !dbg !1353
  store i8 %2, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1354, metadata !89), !dbg !1355
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1356, metadata !89), !dbg !1362
  %11 = load i8*, i8** %5, align 8, !dbg !1363
  %12 = call i64 @Unicode_LengthInCodePoints(i8* %11), !dbg !1364
  store i64 %12, i64* %8, align 8, !dbg !1362
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1365, metadata !89), !dbg !1366
  %13 = load i8*, i8** %6, align 8, !dbg !1367
  %14 = call i64 @Unicode_LengthInCodePoints(i8* %13), !dbg !1368
  store i64 %14, i64* %9, align 8, !dbg !1366
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1369, metadata !89), !dbg !1370
  %15 = load i64, i64* %8, align 8, !dbg !1371
  %16 = load i64, i64* %9, align 8, !dbg !1372
  %17 = sub nsw i64 %15, %16, !dbg !1373
  store i64 %17, i64* %10, align 8, !dbg !1370
  %18 = load i64, i64* %9, align 8, !dbg !1374
  %19 = load i64, i64* %8, align 8, !dbg !1376
  %20 = icmp sgt i64 %18, %19, !dbg !1377
  br i1 %20, label %21, label %22, !dbg !1378

; <label>:21:                                     ; preds = %3
  store i8 0, i8* %4, align 1, !dbg !1379
  br label %33, !dbg !1379

; <label>:22:                                     ; preds = %3
  %23 = load i8*, i8** %5, align 8, !dbg !1381
  %24 = load i64, i64* %10, align 8, !dbg !1382
  %25 = load i64, i64* %9, align 8, !dbg !1383
  %26 = load i8*, i8** %6, align 8, !dbg !1384
  %27 = load i64, i64* %9, align 8, !dbg !1385
  %28 = load i8, i8* %7, align 1, !dbg !1386
  %29 = call i32 @Unicode_CompareRange(i8* %23, i64 %24, i64 %25, i8* %26, i64 0, i64 %27, i8 signext %28), !dbg !1387
  %30 = icmp eq i32 %29, 0, !dbg !1388
  %31 = zext i1 %30 to i32, !dbg !1388
  %32 = trunc i32 %31 to i8, !dbg !1387
  store i8 %32, i8* %4, align 1, !dbg !1389
  br label %33, !dbg !1389

; <label>:33:                                     ; preds = %22, %21
  %34 = load i8, i8* %4, align 1, !dbg !1390
  ret i8 %34, !dbg !1390
}

declare i64 @Unicode_LengthInCodePoints(i8*) #2

declare i32 @Unicode_CompareRange(i8*, i64, i64, i8*, i64, i64, i8 signext) #2

declare i8* @Unicode_ReplaceRange(i8*, i64, i64, i8*, i64, i64) #2

declare i64 @Hostinfo_SystemTimerNS() #2

declare i8* @UtilSafeMalloc0(i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @FileLockSleeper(%struct.lock_values*) #0 !dbg !1391 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lock_values*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.lock_values* %0, %struct.lock_values** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.lock_values** %3, metadata !1394, metadata !89), !dbg !1395
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1396, metadata !89), !dbg !1397
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1398, metadata !89), !dbg !1399
  %6 = load %struct.lock_values*, %struct.lock_values** %3, align 8, !dbg !1400
  %7 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %6, i32 0, i32 8, !dbg !1402
  %8 = load i32, i32* %7, align 8, !dbg !1402
  %9 = icmp eq i32 %8, 0, !dbg !1403
  br i1 %9, label %10, label %11, !dbg !1404

; <label>:10:                                     ; preds = %1
  store i32 11, i32* %2, align 4, !dbg !1405
  br label %49, !dbg !1405

; <label>:11:                                     ; preds = %1
  %12 = call i64 @Hostinfo_SystemTimerMS(), !dbg !1407
  %13 = load %struct.lock_values*, %struct.lock_values** %3, align 8, !dbg !1408
  %14 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %13, i32 0, i32 7, !dbg !1409
  %15 = load i64, i64* %14, align 8, !dbg !1409
  %16 = sub nsw i64 %12, %15, !dbg !1410
  store i64 %16, i64* %4, align 8, !dbg !1411
  %17 = load %struct.lock_values*, %struct.lock_values** %3, align 8, !dbg !1412
  %18 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %17, i32 0, i32 8, !dbg !1414
  %19 = load i32, i32* %18, align 8, !dbg !1414
  %20 = icmp ne i32 %19, -1, !dbg !1415
  br i1 %20, label %21, label %29, !dbg !1416

; <label>:21:                                     ; preds = %11
  %22 = load i64, i64* %4, align 8, !dbg !1417
  %23 = load %struct.lock_values*, %struct.lock_values** %3, align 8, !dbg !1418
  %24 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %23, i32 0, i32 8, !dbg !1419
  %25 = load i32, i32* %24, align 8, !dbg !1419
  %26 = zext i32 %25 to i64, !dbg !1418
  %27 = icmp sge i64 %22, %26, !dbg !1420
  br i1 %27, label %28, label %29, !dbg !1421

; <label>:28:                                     ; preds = %21
  store i32 11, i32* %2, align 4, !dbg !1423
  br label %49, !dbg !1423

; <label>:29:                                     ; preds = %21, %11
  %30 = load i64, i64* %4, align 8, !dbg !1425
  %31 = icmp sle i64 %30, 2000, !dbg !1427
  br i1 %31, label %32, label %33, !dbg !1428

; <label>:32:                                     ; preds = %29
  store i32 100, i32* %5, align 4, !dbg !1429
  br label %44, !dbg !1431

; <label>:33:                                     ; preds = %29
  %34 = load i64, i64* %4, align 8, !dbg !1432
  %35 = sdiv i64 %34, 10, !dbg !1434
  %36 = icmp slt i64 %35, 2000, !dbg !1435
  br i1 %36, label %37, label %40, !dbg !1435

; <label>:37:                                     ; preds = %33
  %38 = load i64, i64* %4, align 8, !dbg !1436
  %39 = sdiv i64 %38, 10, !dbg !1438
  br label %41, !dbg !1439

; <label>:40:                                     ; preds = %33
  br label %41, !dbg !1440

; <label>:41:                                     ; preds = %40, %37
  %42 = phi i64 [ %39, %37 ], [ 2000, %40 ], !dbg !1442
  %43 = trunc i64 %42 to i32, !dbg !1444
  store i32 %43, i32* %5, align 4, !dbg !1445
  br label %44

; <label>:44:                                     ; preds = %41, %32
  %45 = load i32, i32* %5, align 4, !dbg !1446
  %46 = udiv i32 %45, 2, !dbg !1447
  %47 = load i32, i32* %5, align 4, !dbg !1448
  %48 = call i32 @FileSleeper(i32 %46, i32 %47), !dbg !1449
  store i32 0, i32* %2, align 4, !dbg !1450
  br label %49, !dbg !1450

; <label>:49:                                     ; preds = %44, %28, %10
  %50 = load i32, i32* %2, align 4, !dbg !1451
  ret i32 %50, !dbg !1451
}

declare i32 @FileSleeper(i32, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @FileLockCreateEntryDirectory(i8*, i8**, i8**, i8**, i8**) #0 !dbg !1452 {
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.FileData, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1455, metadata !89), !dbg !1456
  store i8** %1, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !1457, metadata !89), !dbg !1458
  store i8** %2, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !1459, metadata !89), !dbg !1460
  store i8** %3, i8*** %9, align 8
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !1461, metadata !89), !dbg !1462
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !1463, metadata !89), !dbg !1464
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1465, metadata !89), !dbg !1466
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1467, metadata !89), !dbg !1468
  %17 = load i8**, i8*** %7, align 8, !dbg !1469
  store i8* null, i8** %17, align 8, !dbg !1470
  %18 = load i8**, i8*** %8, align 8, !dbg !1471
  store i8* null, i8** %18, align 8, !dbg !1472
  %19 = load i8**, i8*** %9, align 8, !dbg !1473
  store i8* null, i8** %19, align 8, !dbg !1474
  %20 = load i8**, i8*** %10, align 8, !dbg !1475
  store i8* null, i8** %20, align 8, !dbg !1476
  %21 = call i64 @Hostinfo_SystemTimerMS(), !dbg !1477
  store i64 %21, i64* %12, align 8, !dbg !1478
  br label %22, !dbg !1479

; <label>:22:                                     ; preds = %5, %43, %152
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1480, metadata !89), !dbg !1482
  call void @llvm.dbg.declare(metadata %struct.FileData* %14, metadata !1483, metadata !89), !dbg !1484
  call void @llvm.dbg.declare(metadata i64* %15, metadata !1485, metadata !89), !dbg !1486
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1487, metadata !89), !dbg !1488
  %23 = load i8*, i8** %6, align 8, !dbg !1489
  %24 = call i32 @FileAttributes(i8* %23, %struct.FileData* %14), !dbg !1490
  store i32 %24, i32* %11, align 4, !dbg !1491
  %25 = load i32, i32* %11, align 4, !dbg !1492
  %26 = icmp eq i32 %25, 0, !dbg !1494
  br i1 %26, label %27, label %45, !dbg !1495

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.FileData, %struct.FileData* %14, i32 0, i32 4, !dbg !1496
  %29 = load i32, i32* %28, align 8, !dbg !1496
  %30 = icmp eq i32 %29, 0, !dbg !1499
  br i1 %30, label %31, label %33, !dbg !1500

; <label>:31:                                     ; preds = %27
  %32 = load i8*, i8** %6, align 8, !dbg !1501
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__FUNCTION__.FileLockCreateEntryDirectory, i32 0, i32 0), i8* %32), !dbg !1503
  store i32 16, i32* %11, align 4, !dbg !1504
  br label %153, !dbg !1505

; <label>:33:                                     ; preds = %27
  %34 = getelementptr inbounds %struct.FileData, %struct.FileData* %14, i32 0, i32 4, !dbg !1506
  %35 = load i32, i32* %34, align 8, !dbg !1506
  %36 = icmp ne i32 %35, 1, !dbg !1508
  br i1 %36, label %37, label %44, !dbg !1509

; <label>:37:                                     ; preds = %33
  %38 = load i8*, i8** %6, align 8, !dbg !1510
  %39 = call i32 @FileDeletion(i8* %38, i8 signext 0), !dbg !1513
  %40 = icmp ne i32 %39, 0, !dbg !1514
  br i1 %40, label %41, label %43, !dbg !1515

; <label>:41:                                     ; preds = %37
  %42 = load i8*, i8** %6, align 8, !dbg !1516
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__FUNCTION__.FileLockCreateEntryDirectory, i32 0, i32 0), i8* %42), !dbg !1518
  store i32 20, i32* %11, align 4, !dbg !1519
  br label %153, !dbg !1520

; <label>:43:                                     ; preds = %37
  br label %22, !dbg !1521, !llvm.loop !1522

; <label>:44:                                     ; preds = %33
  br label %66, !dbg !1523

; <label>:45:                                     ; preds = %22
  %46 = load i32, i32* %11, align 4, !dbg !1524
  %47 = icmp eq i32 %46, 2, !dbg !1527
  br i1 %47, label %48, label %61, !dbg !1528

; <label>:48:                                     ; preds = %45
  %49 = load i8*, i8** %6, align 8, !dbg !1529
  %50 = call i32 @FileLockMakeDirectory(i8* %49), !dbg !1531
  store i32 %50, i32* %11, align 4, !dbg !1532
  %51 = load i32, i32* %11, align 4, !dbg !1533
  %52 = icmp ne i32 %51, 0, !dbg !1535
  br i1 %52, label %53, label %60, !dbg !1536

; <label>:53:                                     ; preds = %48
  %54 = load i32, i32* %11, align 4, !dbg !1537
  %55 = icmp ne i32 %54, 17, !dbg !1539
  br i1 %55, label %56, label %60, !dbg !1540

; <label>:56:                                     ; preds = %53
  %57 = load i8*, i8** %6, align 8, !dbg !1541
  %58 = load i32, i32* %11, align 4, !dbg !1543
  %59 = call i8* @Err_Errno2String(i32 %58), !dbg !1544
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__FUNCTION__.FileLockCreateEntryDirectory, i32 0, i32 0), i8* %57, i8* %59), !dbg !1545
  br label %153, !dbg !1546

; <label>:60:                                     ; preds = %53, %48
  br label %65, !dbg !1547

; <label>:61:                                     ; preds = %45
  %62 = load i8*, i8** %6, align 8, !dbg !1548
  %63 = load i32, i32* %11, align 4, !dbg !1550
  %64 = call i8* @Err_Errno2String(i32 %63), !dbg !1551
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__FUNCTION__.FileLockCreateEntryDirectory, i32 0, i32 0), i8* %62, i8* %64), !dbg !1552
  br label %153, !dbg !1553

; <label>:65:                                     ; preds = %60
  br label %66

; <label>:66:                                     ; preds = %65, %44
  %67 = call i32 @FileSimpleRandom(), !dbg !1554
  %68 = lshr i32 %67, 8, !dbg !1555
  %69 = and i32 %68, 65535, !dbg !1556
  store i32 %69, i32* %16, align 4, !dbg !1557
  %70 = load i32, i32* %16, align 4, !dbg !1558
  %71 = call i8* (i8*, ...) @Unicode_Format(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i32 %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0)), !dbg !1559
  %72 = load i8**, i8*** %10, align 8, !dbg !1560
  store i8* %71, i8** %72, align 8, !dbg !1561
  %73 = load i32, i32* %16, align 4, !dbg !1562
  %74 = call i8* (i8*, ...) @Unicode_Format(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i32 %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0)), !dbg !1563
  store i8* %74, i8** %13, align 8, !dbg !1564
  %75 = load i8*, i8** %6, align 8, !dbg !1565
  %76 = load i8*, i8** %13, align 8, !dbg !1566
  %77 = call i8* (i8*, ...) @Unicode_Join(i8* %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* %76, i8* null), !dbg !1567
  %78 = load i8**, i8*** %7, align 8, !dbg !1568
  store i8* %77, i8** %78, align 8, !dbg !1569
  %79 = load i8*, i8** %13, align 8, !dbg !1570
  call void @Posix_Free(i8* %79), !dbg !1571
  %80 = load i32, i32* %16, align 4, !dbg !1572
  %81 = call i8* (i8*, ...) @Unicode_Format(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i32 %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0)), !dbg !1573
  store i8* %81, i8** %13, align 8, !dbg !1574
  %82 = load i8*, i8** %6, align 8, !dbg !1575
  %83 = load i8*, i8** %13, align 8, !dbg !1576
  %84 = call i8* (i8*, ...) @Unicode_Join(i8* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* %83, i8* null), !dbg !1577
  %85 = load i8**, i8*** %8, align 8, !dbg !1578
  store i8* %84, i8** %85, align 8, !dbg !1579
  %86 = load i8*, i8** %13, align 8, !dbg !1580
  call void @Posix_Free(i8* %86), !dbg !1581
  %87 = load i8*, i8** %6, align 8, !dbg !1582
  %88 = load i8**, i8*** %10, align 8, !dbg !1583
  %89 = load i8*, i8** %88, align 8, !dbg !1584
  %90 = call i8* (i8*, ...) @Unicode_Join(i8* %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* %89, i8* null), !dbg !1585
  %91 = load i8**, i8*** %9, align 8, !dbg !1586
  store i8* %90, i8** %91, align 8, !dbg !1587
  %92 = load i8**, i8*** %7, align 8, !dbg !1588
  %93 = load i8*, i8** %92, align 8, !dbg !1589
  %94 = call i32 @FileLockMakeDirectory(i8* %93), !dbg !1590
  store i32 %94, i32* %11, align 4, !dbg !1591
  %95 = load i32, i32* %11, align 4, !dbg !1592
  %96 = icmp eq i32 %95, 0, !dbg !1594
  br i1 %96, label %97, label %120, !dbg !1595

; <label>:97:                                     ; preds = %66
  %98 = load i8**, i8*** %9, align 8, !dbg !1596
  %99 = load i8*, i8** %98, align 8, !dbg !1598
  %100 = call i32 @FileAttributes(i8* %99, %struct.FileData* null), !dbg !1599
  store i32 %100, i32* %11, align 4, !dbg !1600
  %101 = load i32, i32* %11, align 4, !dbg !1601
  %102 = icmp ne i32 %101, 0, !dbg !1603
  br i1 %102, label %103, label %108, !dbg !1604

; <label>:103:                                    ; preds = %97
  %104 = load i32, i32* %11, align 4, !dbg !1605
  %105 = icmp eq i32 %104, 2, !dbg !1608
  br i1 %105, label %106, label %107, !dbg !1609

; <label>:106:                                    ; preds = %103
  store i32 0, i32* %11, align 4, !dbg !1610
  br label %153, !dbg !1612

; <label>:107:                                    ; preds = %103
  br label %108, !dbg !1613

; <label>:108:                                    ; preds = %107, %97
  %109 = load i8**, i8*** %7, align 8, !dbg !1614
  %110 = load i8*, i8** %109, align 8, !dbg !1615
  %111 = call i32 @FileRemoveDirectory(i8* %110), !dbg !1616
  store i32 %111, i32* %11, align 4, !dbg !1617
  %112 = load i32, i32* %11, align 4, !dbg !1618
  %113 = icmp ne i32 %112, 0, !dbg !1620
  br i1 %113, label %114, label %119, !dbg !1621

; <label>:114:                                    ; preds = %108
  %115 = load i8**, i8*** %7, align 8, !dbg !1622
  %116 = load i8*, i8** %115, align 8, !dbg !1624
  %117 = load i32, i32* %11, align 4, !dbg !1625
  %118 = call i8* @Err_Errno2String(i32 %117), !dbg !1626
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__FUNCTION__.FileLockCreateEntryDirectory, i32 0, i32 0), i8* %116, i8* %118), !dbg !1627
  br label %153, !dbg !1628

; <label>:119:                                    ; preds = %108
  br label %132, !dbg !1629

; <label>:120:                                    ; preds = %66
  %121 = load i32, i32* %11, align 4, !dbg !1630
  %122 = icmp ne i32 %121, 17, !dbg !1633
  br i1 %122, label %123, label %131, !dbg !1634

; <label>:123:                                    ; preds = %120
  %124 = load i32, i32* %11, align 4, !dbg !1635
  %125 = icmp ne i32 %124, 2, !dbg !1636
  br i1 %125, label %126, label %131, !dbg !1637

; <label>:126:                                    ; preds = %123
  %127 = load i8**, i8*** %7, align 8, !dbg !1639
  %128 = load i8*, i8** %127, align 8, !dbg !1641
  %129 = load i32, i32* %11, align 4, !dbg !1642
  %130 = call i8* @Err_Errno2String(i32 %129), !dbg !1643
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__FUNCTION__.FileLockCreateEntryDirectory, i32 0, i32 0), i8* %128, i8* %130), !dbg !1644
  br label %153, !dbg !1645

; <label>:131:                                    ; preds = %123, %120
  br label %132

; <label>:132:                                    ; preds = %131, %119
  %133 = load i8**, i8*** %7, align 8, !dbg !1646
  %134 = load i8*, i8** %133, align 8, !dbg !1647
  call void @Posix_Free(i8* %134), !dbg !1648
  %135 = load i8**, i8*** %8, align 8, !dbg !1649
  %136 = load i8*, i8** %135, align 8, !dbg !1650
  call void @Posix_Free(i8* %136), !dbg !1651
  %137 = load i8**, i8*** %9, align 8, !dbg !1652
  %138 = load i8*, i8** %137, align 8, !dbg !1653
  call void @Posix_Free(i8* %138), !dbg !1654
  %139 = load i8**, i8*** %10, align 8, !dbg !1655
  %140 = load i8*, i8** %139, align 8, !dbg !1656
  call void @Posix_Free(i8* %140), !dbg !1657
  %141 = load i8**, i8*** %7, align 8, !dbg !1658
  store i8* null, i8** %141, align 8, !dbg !1659
  %142 = load i8**, i8*** %8, align 8, !dbg !1660
  store i8* null, i8** %142, align 8, !dbg !1661
  %143 = load i8**, i8*** %9, align 8, !dbg !1662
  store i8* null, i8** %143, align 8, !dbg !1663
  %144 = load i8**, i8*** %10, align 8, !dbg !1664
  store i8* null, i8** %144, align 8, !dbg !1665
  %145 = call i64 @Hostinfo_SystemTimerMS(), !dbg !1666
  %146 = load i64, i64* %12, align 8, !dbg !1667
  %147 = sub nsw i64 %145, %146, !dbg !1668
  store i64 %147, i64* %15, align 8, !dbg !1669
  %148 = load i64, i64* %15, align 8, !dbg !1670
  %149 = icmp sgt i64 %148, 8000, !dbg !1672
  br i1 %149, label %150, label %152, !dbg !1673

; <label>:150:                                    ; preds = %132
  %151 = load i8*, i8** %6, align 8, !dbg !1674
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__FUNCTION__.FileLockCreateEntryDirectory, i32 0, i32 0), i8* %151), !dbg !1676
  store i32 16, i32* %11, align 4, !dbg !1677
  br label %153, !dbg !1678

; <label>:152:                                    ; preds = %132
  br label %22, !dbg !1679, !llvm.loop !1522

; <label>:153:                                    ; preds = %150, %126, %114, %106, %61, %56, %41, %31
  %154 = load i32, i32* %11, align 4, !dbg !1681
  %155 = icmp ne i32 %154, 0, !dbg !1683
  br i1 %155, label %156, label %169, !dbg !1684

; <label>:156:                                    ; preds = %153
  %157 = load i8**, i8*** %7, align 8, !dbg !1685
  %158 = load i8*, i8** %157, align 8, !dbg !1687
  call void @Posix_Free(i8* %158), !dbg !1688
  %159 = load i8**, i8*** %8, align 8, !dbg !1689
  %160 = load i8*, i8** %159, align 8, !dbg !1690
  call void @Posix_Free(i8* %160), !dbg !1691
  %161 = load i8**, i8*** %9, align 8, !dbg !1692
  %162 = load i8*, i8** %161, align 8, !dbg !1693
  call void @Posix_Free(i8* %162), !dbg !1694
  %163 = load i8**, i8*** %10, align 8, !dbg !1695
  %164 = load i8*, i8** %163, align 8, !dbg !1696
  call void @Posix_Free(i8* %164), !dbg !1697
  %165 = load i8**, i8*** %7, align 8, !dbg !1698
  store i8* null, i8** %165, align 8, !dbg !1699
  %166 = load i8**, i8*** %8, align 8, !dbg !1700
  store i8* null, i8** %166, align 8, !dbg !1701
  %167 = load i8**, i8*** %9, align 8, !dbg !1702
  store i8* null, i8** %167, align 8, !dbg !1703
  %168 = load i8**, i8*** %10, align 8, !dbg !1704
  store i8* null, i8** %168, align 8, !dbg !1705
  br label %169, !dbg !1706

; <label>:169:                                    ; preds = %156, %153
  %170 = load i32, i32* %11, align 4, !dbg !1707
  ret i32 %170, !dbg !1708
}

; Function Attrs: nounwind uwtable
define internal i32 @FileLockScanner(i8*, i32 (i8*, i8*, %struct.lock_values*, %struct.lock_values*)*, %struct.lock_values*, i8 signext) #0 !dbg !1709 {
  %5 = alloca i8*, align 8
  %6 = alloca i32 (i8*, i8*, %struct.lock_values*, %struct.lock_values*)*, align 8
  %7 = alloca %struct.lock_values*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca %struct.active_lock*, align 8
  %11 = alloca %struct.active_lock*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1715, metadata !89), !dbg !1716
  store i32 (i8*, i8*, %struct.lock_values*, %struct.lock_values*)* %1, i32 (i8*, i8*, %struct.lock_values*, %struct.lock_values*)** %6, align 8
  call void @llvm.dbg.declare(metadata i32 (i8*, i8*, %struct.lock_values*, %struct.lock_values*)** %6, metadata !1717, metadata !89), !dbg !1718
  store %struct.lock_values* %2, %struct.lock_values** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.lock_values** %7, metadata !1719, metadata !89), !dbg !1720
  store i8 %3, i8* %8, align 1
  call void @llvm.dbg.declare(metadata i8* %8, metadata !1721, metadata !89), !dbg !1722
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1723, metadata !89), !dbg !1724
  call void @llvm.dbg.declare(metadata %struct.active_lock** %10, metadata !1725, metadata !89), !dbg !1726
  %16 = load %struct.lock_values*, %struct.lock_values** %7, align 8, !dbg !1727
  %17 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %16, i32 0, i32 9, !dbg !1728
  store %struct.active_lock* null, %struct.active_lock** %17, align 8, !dbg !1729
  br label %18, !dbg !1730

; <label>:18:                                     ; preds = %4, %112
  call void @llvm.dbg.declare(metadata %struct.active_lock** %11, metadata !1731, metadata !89), !dbg !1733
  %19 = load i8*, i8** %5, align 8, !dbg !1734
  %20 = load i32 (i8*, i8*, %struct.lock_values*, %struct.lock_values*)*, i32 (i8*, i8*, %struct.lock_values*, %struct.lock_values*)** %6, align 8, !dbg !1735
  %21 = load %struct.lock_values*, %struct.lock_values** %7, align 8, !dbg !1736
  %22 = load i8, i8* %8, align 1, !dbg !1737
  %23 = call i32 @FileLockScanDirectory(i8* %19, i32 (i8*, i8*, %struct.lock_values*, %struct.lock_values*)* %20, %struct.lock_values* %21, i8 signext %22), !dbg !1738
  store i32 %23, i32* %9, align 4, !dbg !1739
  %24 = load i32, i32* %9, align 4, !dbg !1740
  %25 = icmp sgt i32 %24, 0, !dbg !1742
  br i1 %25, label %34, label %26, !dbg !1743

; <label>:26:                                     ; preds = %18
  %27 = load i32, i32* %9, align 4, !dbg !1744
  %28 = icmp eq i32 %27, 0, !dbg !1746
  br i1 %28, label %29, label %35, !dbg !1747

; <label>:29:                                     ; preds = %26
  %30 = load %struct.lock_values*, %struct.lock_values** %7, align 8, !dbg !1748
  %31 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %30, i32 0, i32 9, !dbg !1750
  %32 = load %struct.active_lock*, %struct.active_lock** %31, align 8, !dbg !1750
  %33 = icmp eq %struct.active_lock* %32, null, !dbg !1751
  br i1 %33, label %34, label %35, !dbg !1752

; <label>:34:                                     ; preds = %29, %18
  br label %114, !dbg !1753

; <label>:35:                                     ; preds = %29, %26
  store %struct.active_lock* null, %struct.active_lock** %11, align 8, !dbg !1755
  %36 = load %struct.lock_values*, %struct.lock_values** %7, align 8, !dbg !1756
  %37 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %36, i32 0, i32 9, !dbg !1757
  %38 = load %struct.active_lock*, %struct.active_lock** %37, align 8, !dbg !1757
  store %struct.active_lock* %38, %struct.active_lock** %10, align 8, !dbg !1758
  br label %39, !dbg !1759

; <label>:39:                                     ; preds = %107, %35
  %40 = load %struct.active_lock*, %struct.active_lock** %10, align 8, !dbg !1760
  %41 = icmp ne %struct.active_lock* %40, null, !dbg !1762
  br i1 %41, label %42, label %112, !dbg !1763

; <label>:42:                                     ; preds = %39
  call void @llvm.dbg.declare(metadata i8* %12, metadata !1764, metadata !89), !dbg !1766
  %43 = load %struct.active_lock*, %struct.active_lock** %10, align 8, !dbg !1767
  %44 = getelementptr inbounds %struct.active_lock, %struct.active_lock* %43, i32 0, i32 2, !dbg !1769
  %45 = load i8, i8* %44, align 4, !dbg !1769
  %46 = icmp ne i8 %45, 0, !dbg !1767
  br i1 %46, label %47, label %87, !dbg !1770

; <label>:47:                                     ; preds = %42
  %48 = load %struct.active_lock*, %struct.active_lock** %10, align 8, !dbg !1771
  %49 = getelementptr inbounds %struct.active_lock, %struct.active_lock* %48, i32 0, i32 1, !dbg !1774
  %50 = load i32, i32* %49, align 8, !dbg !1774
  %51 = icmp ugt i32 %50, 8000, !dbg !1775
  br i1 %51, label %52, label %79, !dbg !1776

; <label>:52:                                     ; preds = %47
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1777, metadata !89), !dbg !1779
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1780, metadata !89), !dbg !1781
  call void @llvm.dbg.declare(metadata i64* %15, metadata !1782, metadata !89), !dbg !1783
  %53 = load %struct.active_lock*, %struct.active_lock** %10, align 8, !dbg !1784
  %54 = getelementptr inbounds %struct.active_lock, %struct.active_lock* %53, i32 0, i32 3, !dbg !1785
  %55 = load i8*, i8** %54, align 8, !dbg !1785
  %56 = load i8*, i8** %5, align 8, !dbg !1786
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.FileLockScanner, i32 0, i32 0), i8* %55, i8* %56), !dbg !1787
  %57 = load i8*, i8** %5, align 8, !dbg !1788
  %58 = load %struct.active_lock*, %struct.active_lock** %10, align 8, !dbg !1789
  %59 = getelementptr inbounds %struct.active_lock, %struct.active_lock* %58, i32 0, i32 3, !dbg !1790
  %60 = load i8*, i8** %59, align 8, !dbg !1790
  %61 = call i8* (i8*, ...) @Unicode_Join(i8* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* %60, i8* null), !dbg !1791
  store i8* %61, i8** %14, align 8, !dbg !1792
  %62 = load i8*, i8** %14, align 8, !dbg !1793
  %63 = call i64 @Unicode_FindLast(i8* %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0)), !dbg !1794
  store i64 %63, i64* %15, align 8, !dbg !1795
  %64 = load i8*, i8** %14, align 8, !dbg !1796
  %65 = load i64, i64* %15, align 8, !dbg !1797
  %66 = call i8* @Unicode_Replace(i8* %64, i64 %65, i64 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0)), !dbg !1798
  store i8* %66, i8** %13, align 8, !dbg !1799
  %67 = load i8*, i8** %13, align 8, !dbg !1800
  %68 = call i32 @FileDeletion(i8* %67, i8 signext 0), !dbg !1801
  %69 = load i8*, i8** %13, align 8, !dbg !1802
  call void @Posix_Free(i8* %69), !dbg !1803
  %70 = load i8*, i8** %14, align 8, !dbg !1804
  %71 = load i64, i64* %15, align 8, !dbg !1805
  %72 = call i8* @Unicode_Replace(i8* %70, i64 %71, i64 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0)), !dbg !1806
  store i8* %72, i8** %13, align 8, !dbg !1807
  %73 = load i8*, i8** %13, align 8, !dbg !1808
  %74 = call i32 @FileDeletion(i8* %73, i8 signext 0), !dbg !1809
  %75 = load i8*, i8** %13, align 8, !dbg !1810
  call void @Posix_Free(i8* %75), !dbg !1811
  %76 = load i8*, i8** %14, align 8, !dbg !1812
  %77 = call i32 @FileRemoveDirectory(i8* %76), !dbg !1813
  %78 = load i8*, i8** %14, align 8, !dbg !1814
  call void @Posix_Free(i8* %78), !dbg !1815
  store i8 1, i8* %12, align 1, !dbg !1816
  br label %86, !dbg !1817

; <label>:79:                                     ; preds = %47
  %80 = load %struct.active_lock*, %struct.active_lock** %10, align 8, !dbg !1818
  %81 = getelementptr inbounds %struct.active_lock, %struct.active_lock* %80, i32 0, i32 2, !dbg !1820
  store i8 0, i8* %81, align 4, !dbg !1821
  %82 = load %struct.active_lock*, %struct.active_lock** %10, align 8, !dbg !1822
  %83 = getelementptr inbounds %struct.active_lock, %struct.active_lock* %82, i32 0, i32 1, !dbg !1823
  %84 = load i32, i32* %83, align 8, !dbg !1824
  %85 = add i32 %84, 200, !dbg !1824
  store i32 %85, i32* %83, align 8, !dbg !1824
  store i8 0, i8* %12, align 1, !dbg !1825
  br label %86

; <label>:86:                                     ; preds = %79, %52
  br label %88, !dbg !1826

; <label>:87:                                     ; preds = %42
  store i8 1, i8* %12, align 1, !dbg !1827
  br label %88

; <label>:88:                                     ; preds = %87, %86
  %89 = load i8, i8* %12, align 1, !dbg !1829
  %90 = icmp ne i8 %89, 0, !dbg !1829
  br i1 %90, label %91, label %107, !dbg !1831

; <label>:91:                                     ; preds = %88
  %92 = load %struct.active_lock*, %struct.active_lock** %11, align 8, !dbg !1832
  %93 = icmp eq %struct.active_lock* %92, null, !dbg !1835
  br i1 %93, label %94, label %100, !dbg !1836

; <label>:94:                                     ; preds = %91
  %95 = load %struct.active_lock*, %struct.active_lock** %10, align 8, !dbg !1837
  %96 = getelementptr inbounds %struct.active_lock, %struct.active_lock* %95, i32 0, i32 0, !dbg !1839
  %97 = load %struct.active_lock*, %struct.active_lock** %96, align 8, !dbg !1839
  %98 = load %struct.lock_values*, %struct.lock_values** %7, align 8, !dbg !1840
  %99 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %98, i32 0, i32 9, !dbg !1841
  store %struct.active_lock* %97, %struct.active_lock** %99, align 8, !dbg !1842
  br label %106, !dbg !1843

; <label>:100:                                    ; preds = %91
  %101 = load %struct.active_lock*, %struct.active_lock** %10, align 8, !dbg !1844
  %102 = getelementptr inbounds %struct.active_lock, %struct.active_lock* %101, i32 0, i32 0, !dbg !1846
  %103 = load %struct.active_lock*, %struct.active_lock** %102, align 8, !dbg !1846
  %104 = load %struct.active_lock*, %struct.active_lock** %11, align 8, !dbg !1847
  %105 = getelementptr inbounds %struct.active_lock, %struct.active_lock* %104, i32 0, i32 0, !dbg !1848
  store %struct.active_lock* %103, %struct.active_lock** %105, align 8, !dbg !1849
  br label %106

; <label>:106:                                    ; preds = %100, %94
  br label %107, !dbg !1850

; <label>:107:                                    ; preds = %106, %88
  %108 = load %struct.active_lock*, %struct.active_lock** %10, align 8, !dbg !1851
  store %struct.active_lock* %108, %struct.active_lock** %11, align 8, !dbg !1852
  %109 = load %struct.active_lock*, %struct.active_lock** %10, align 8, !dbg !1853
  %110 = getelementptr inbounds %struct.active_lock, %struct.active_lock* %109, i32 0, i32 0, !dbg !1854
  %111 = load %struct.active_lock*, %struct.active_lock** %110, align 8, !dbg !1854
  store %struct.active_lock* %111, %struct.active_lock** %10, align 8, !dbg !1855
  br label %39, !dbg !1856, !llvm.loop !1858

; <label>:112:                                    ; preds = %39
  %113 = call i32 @FileSleeper(i32 200, i32 200), !dbg !1859
  br label %18, !dbg !1860, !llvm.loop !1862

; <label>:114:                                    ; preds = %34
  br label %115, !dbg !1863

; <label>:115:                                    ; preds = %120, %114
  %116 = load %struct.lock_values*, %struct.lock_values** %7, align 8, !dbg !1864
  %117 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %116, i32 0, i32 9, !dbg !1865
  %118 = load %struct.active_lock*, %struct.active_lock** %117, align 8, !dbg !1865
  %119 = icmp ne %struct.active_lock* %118, null, !dbg !1866
  br i1 %119, label %120, label %134, !dbg !1867

; <label>:120:                                    ; preds = %115
  %121 = load %struct.lock_values*, %struct.lock_values** %7, align 8, !dbg !1868
  %122 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %121, i32 0, i32 9, !dbg !1870
  %123 = load %struct.active_lock*, %struct.active_lock** %122, align 8, !dbg !1870
  store %struct.active_lock* %123, %struct.active_lock** %10, align 8, !dbg !1871
  %124 = load %struct.active_lock*, %struct.active_lock** %10, align 8, !dbg !1872
  %125 = getelementptr inbounds %struct.active_lock, %struct.active_lock* %124, i32 0, i32 0, !dbg !1873
  %126 = load %struct.active_lock*, %struct.active_lock** %125, align 8, !dbg !1873
  %127 = load %struct.lock_values*, %struct.lock_values** %7, align 8, !dbg !1874
  %128 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %127, i32 0, i32 9, !dbg !1875
  store %struct.active_lock* %126, %struct.active_lock** %128, align 8, !dbg !1876
  %129 = load %struct.active_lock*, %struct.active_lock** %10, align 8, !dbg !1877
  %130 = getelementptr inbounds %struct.active_lock, %struct.active_lock* %129, i32 0, i32 3, !dbg !1878
  %131 = load i8*, i8** %130, align 8, !dbg !1878
  call void @Posix_Free(i8* %131), !dbg !1879
  %132 = load %struct.active_lock*, %struct.active_lock** %10, align 8, !dbg !1880
  %133 = bitcast %struct.active_lock* %132 to i8*, !dbg !1880
  call void @Posix_Free(i8* %133), !dbg !1881
  br label %115, !dbg !1882, !llvm.loop !1884

; <label>:134:                                    ; preds = %115
  %135 = load i32, i32* %9, align 4, !dbg !1885
  ret i32 %135, !dbg !1886
}

; Function Attrs: nounwind uwtable
define internal i32 @FileLockNumberScan(i8*, i8*, %struct.lock_values*, %struct.lock_values*) #0 !dbg !1887 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.lock_values*, align 8
  %8 = alloca %struct.lock_values*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1888, metadata !89), !dbg !1889
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1890, metadata !89), !dbg !1891
  store %struct.lock_values* %2, %struct.lock_values** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.lock_values** %7, metadata !1892, metadata !89), !dbg !1893
  store %struct.lock_values* %3, %struct.lock_values** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.lock_values** %8, metadata !1894, metadata !89), !dbg !1895
  %9 = load %struct.lock_values*, %struct.lock_values** %7, align 8, !dbg !1896
  %10 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %9, i32 0, i32 5, !dbg !1898
  %11 = load i32, i32* %10, align 8, !dbg !1898
  %12 = load %struct.lock_values*, %struct.lock_values** %8, align 8, !dbg !1899
  %13 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %12, i32 0, i32 5, !dbg !1900
  %14 = load i32, i32* %13, align 8, !dbg !1900
  %15 = icmp ugt i32 %11, %14, !dbg !1901
  br i1 %15, label %16, label %22, !dbg !1902

; <label>:16:                                     ; preds = %4
  %17 = load %struct.lock_values*, %struct.lock_values** %7, align 8, !dbg !1903
  %18 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %17, i32 0, i32 5, !dbg !1905
  %19 = load i32, i32* %18, align 8, !dbg !1905
  %20 = load %struct.lock_values*, %struct.lock_values** %8, align 8, !dbg !1906
  %21 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %20, i32 0, i32 5, !dbg !1907
  store i32 %19, i32* %21, align 8, !dbg !1908
  br label %22, !dbg !1909

; <label>:22:                                     ; preds = %16, %4
  ret i32 0, !dbg !1910
}

; Function Attrs: nounwind uwtable
define internal i32 @FileLockCreateMemberFile(%struct.FileIODescriptor*, %struct.lock_values*, i8*, i8*) #0 !dbg !1911 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.FileIODescriptor*, align 8
  %7 = alloca %struct.lock_values*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca [512 x i8], align 16
  store %struct.FileIODescriptor* %0, %struct.FileIODescriptor** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor** %6, metadata !1917, metadata !89), !dbg !1918
  store %struct.lock_values* %1, %struct.lock_values** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.lock_values** %7, metadata !1919, metadata !89), !dbg !1920
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1921, metadata !89), !dbg !1922
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1923, metadata !89), !dbg !1924
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1925, metadata !89), !dbg !1926
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1927, metadata !89), !dbg !1928
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1929, metadata !89), !dbg !1930
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1931, metadata !89), !dbg !1932
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1933, metadata !89), !dbg !1934
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1935, metadata !89), !dbg !1936
  store i32 0, i32* %15, align 4, !dbg !1936
  call void @llvm.dbg.declare(metadata [512 x i8]* %16, metadata !1937, metadata !89), !dbg !1941
  %17 = bitcast [512 x i8]* %16 to i8*, !dbg !1941
  call void @llvm.memset.p0i8.i64(i8* %17, i8 0, i64 512, i32 16, i1 false), !dbg !1941
  %18 = load %struct.lock_values*, %struct.lock_values** %7, align 8, !dbg !1942
  %19 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %18, i32 0, i32 1, !dbg !1943
  %20 = load i8*, i8** %19, align 8, !dbg !1943
  %21 = call i32 (i8*, i8*, ...) @sscanf(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i32* %11, i64* %14) #8, !dbg !1944
  store i32 %21, i32* %10, align 4, !dbg !1945
  %22 = getelementptr inbounds [512 x i8], [512 x i8]* %16, i32 0, i32 0, !dbg !1946
  %23 = load %struct.lock_values*, %struct.lock_values** %7, align 8, !dbg !1947
  %24 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %23, i32 0, i32 0, !dbg !1948
  %25 = load i8*, i8** %24, align 8, !dbg !1948
  %26 = load %struct.lock_values*, %struct.lock_values** %7, align 8, !dbg !1949
  %27 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %26, i32 0, i32 1, !dbg !1950
  %28 = load i8*, i8** %27, align 8, !dbg !1950
  %29 = load %struct.lock_values*, %struct.lock_values** %7, align 8, !dbg !1951
  %30 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %29, i32 0, i32 5, !dbg !1952
  %31 = load i32, i32* %30, align 8, !dbg !1952
  %32 = load %struct.lock_values*, %struct.lock_values** %7, align 8, !dbg !1953
  %33 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %32, i32 0, i32 2, !dbg !1954
  %34 = load i8*, i8** %33, align 8, !dbg !1954
  %35 = load i64, i64* %14, align 8, !dbg !1955
  %36 = load %struct.lock_values*, %struct.lock_values** %7, align 8, !dbg !1956
  %37 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %36, i32 0, i32 3, !dbg !1957
  %38 = load i8*, i8** %37, align 8, !dbg !1957
  %39 = call i32 (i8*, i64, i8*, ...) @Str_Sprintf(i8* %22, i64 512, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i32 0, i32 0), i8* %25, i8* %28, i32 %31, i8* %34, i64 %35, i8* %38), !dbg !1958
  %40 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %6, align 8, !dbg !1959
  %41 = getelementptr inbounds [512 x i8], [512 x i8]* %16, i32 0, i32 0, !dbg !1960
  %42 = call i32 @FileIO_Write(%struct.FileIODescriptor* %40, i8* %41, i64 512, i64* %12), !dbg !1961
  store i32 %42, i32* %13, align 4, !dbg !1962
  %43 = load i32, i32* %13, align 4, !dbg !1963
  %44 = call signext i8 @FileIO_IsSuccess(i32 %43), !dbg !1965
  %45 = icmp ne i8 %44, 0, !dbg !1965
  br i1 %45, label %56, label %46, !dbg !1966

; <label>:46:                                     ; preds = %4
  %47 = call i32* @__errno_location() #1, !dbg !1967
  %48 = load i32, i32* %47, align 4, !dbg !1969
  %49 = call i32 @FileMapErrorToErrno(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.FileLockCreateMemberFile, i32 0, i32 0), i32 %48), !dbg !1970
  store i32 %49, i32* %15, align 4, !dbg !1972
  %50 = load i8*, i8** %8, align 8, !dbg !1973
  %51 = load i32, i32* %15, align 4, !dbg !1974
  %52 = call i8* @Err_Errno2String(i32 %51), !dbg !1975
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.FileLockCreateMemberFile, i32 0, i32 0), i8* %50, i8* %52), !dbg !1976
  %53 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %6, align 8, !dbg !1977
  %54 = call i32 @FileIO_Close(%struct.FileIODescriptor* %53), !dbg !1978
  %55 = load i32, i32* %15, align 4, !dbg !1979
  store i32 %55, i32* %5, align 4, !dbg !1980
  br label %88, !dbg !1980

; <label>:56:                                     ; preds = %4
  %57 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %6, align 8, !dbg !1981
  %58 = call i32 @FileIO_Close(%struct.FileIODescriptor* %57), !dbg !1983
  %59 = call signext i8 @FileIO_IsSuccess(i32 %58), !dbg !1984
  %60 = icmp ne i8 %59, 0, !dbg !1986
  br i1 %60, label %69, label %61, !dbg !1987

; <label>:61:                                     ; preds = %56
  %62 = call i32* @__errno_location() #1, !dbg !1988
  %63 = load i32, i32* %62, align 4, !dbg !1990
  %64 = call i32 @FileMapErrorToErrno(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.FileLockCreateMemberFile, i32 0, i32 0), i32 %63), !dbg !1991
  store i32 %64, i32* %15, align 4, !dbg !1993
  %65 = load i8*, i8** %8, align 8, !dbg !1994
  %66 = load i32, i32* %15, align 4, !dbg !1995
  %67 = call i8* @Err_Errno2String(i32 %66), !dbg !1996
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.FileLockCreateMemberFile, i32 0, i32 0), i8* %65, i8* %67), !dbg !1997
  %68 = load i32, i32* %15, align 4, !dbg !1998
  store i32 %68, i32* %5, align 4, !dbg !1999
  br label %88, !dbg !1999

; <label>:69:                                     ; preds = %56
  %70 = load i64, i64* %12, align 8, !dbg !2000
  %71 = icmp ne i64 %70, 512, !dbg !2002
  br i1 %71, label %72, label %75, !dbg !2003

; <label>:72:                                     ; preds = %69
  %73 = load i8*, i8** %8, align 8, !dbg !2004
  %74 = load i64, i64* %12, align 8, !dbg !2006
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.FileLockCreateMemberFile, i32 0, i32 0), i8* %73, i64 %74, i64 512), !dbg !2007
  store i32 5, i32* %5, align 4, !dbg !2008
  br label %88, !dbg !2008

; <label>:75:                                     ; preds = %69
  %76 = load i8*, i8** %8, align 8, !dbg !2009
  %77 = load i8*, i8** %9, align 8, !dbg !2010
  %78 = call i32 @File_Rename(i8* %76, i8* %77), !dbg !2011
  store i32 %78, i32* %15, align 4, !dbg !2012
  %79 = load i32, i32* %15, align 4, !dbg !2013
  %80 = icmp ne i32 %79, 0, !dbg !2015
  br i1 %80, label %81, label %87, !dbg !2016

; <label>:81:                                     ; preds = %75
  %82 = load i8*, i8** %8, align 8, !dbg !2017
  %83 = load i8*, i8** %9, align 8, !dbg !2019
  %84 = load i32, i32* %15, align 4, !dbg !2020
  %85 = call i8* @Err_Errno2String(i32 %84), !dbg !2021
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.FileLockCreateMemberFile, i32 0, i32 0), i8* %82, i8* %83, i8* %85), !dbg !2022
  %86 = load i32, i32* %15, align 4, !dbg !2023
  store i32 %86, i32* %5, align 4, !dbg !2024
  br label %88, !dbg !2024

; <label>:87:                                     ; preds = %75
  store i32 0, i32* %5, align 4, !dbg !2025
  br label %88, !dbg !2025

; <label>:88:                                     ; preds = %87, %81, %72, %61, %46
  %89 = load i32, i32* %5, align 4, !dbg !2026
  ret i32 %89, !dbg !2026
}

; Function Attrs: nounwind uwtable
define internal i32 @FileLockWaitForPossession(i8*, i8*, %struct.lock_values*, %struct.lock_values*) #0 !dbg !2027 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.lock_values*, align 8
  %8 = alloca %struct.lock_values*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2028, metadata !89), !dbg !2029
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2030, metadata !89), !dbg !2031
  store %struct.lock_values* %2, %struct.lock_values** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.lock_values** %7, metadata !2032, metadata !89), !dbg !2033
  store %struct.lock_values* %3, %struct.lock_values** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.lock_values** %8, metadata !2034, metadata !89), !dbg !2035
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2036, metadata !89), !dbg !2037
  store i32 0, i32* %9, align 4, !dbg !2037
  %12 = load %struct.lock_values*, %struct.lock_values** %7, align 8, !dbg !2038
  %13 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %12, i32 0, i32 5, !dbg !2040
  %14 = load i32, i32* %13, align 8, !dbg !2040
  %15 = load %struct.lock_values*, %struct.lock_values** %8, align 8, !dbg !2041
  %16 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %15, i32 0, i32 5, !dbg !2042
  %17 = load i32, i32* %16, align 8, !dbg !2042
  %18 = icmp ult i32 %14, %17, !dbg !2043
  br i1 %18, label %36, label %19, !dbg !2044

; <label>:19:                                     ; preds = %4
  %20 = load %struct.lock_values*, %struct.lock_values** %7, align 8, !dbg !2045
  %21 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %20, i32 0, i32 5, !dbg !2046
  %22 = load i32, i32* %21, align 8, !dbg !2046
  %23 = load %struct.lock_values*, %struct.lock_values** %8, align 8, !dbg !2047
  %24 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %23, i32 0, i32 5, !dbg !2048
  %25 = load i32, i32* %24, align 8, !dbg !2048
  %26 = icmp eq i32 %22, %25, !dbg !2049
  br i1 %26, label %27, label %113, !dbg !2050

; <label>:27:                                     ; preds = %19
  %28 = load %struct.lock_values*, %struct.lock_values** %7, align 8, !dbg !2051
  %29 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %28, i32 0, i32 4, !dbg !2052
  %30 = load i8*, i8** %29, align 8, !dbg !2052
  %31 = load %struct.lock_values*, %struct.lock_values** %8, align 8, !dbg !2053
  %32 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %31, i32 0, i32 4, !dbg !2054
  %33 = load i8*, i8** %32, align 8, !dbg !2054
  %34 = call i32 @Unicode_Compare(i8* %30, i8* %33), !dbg !2055
  %35 = icmp slt i32 %34, 0, !dbg !2056
  br i1 %35, label %36, label %113, !dbg !2057

; <label>:36:                                     ; preds = %27, %4
  %37 = load %struct.lock_values*, %struct.lock_values** %7, align 8, !dbg !2058
  %38 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %37, i32 0, i32 2, !dbg !2059
  %39 = load i8*, i8** %38, align 8, !dbg !2059
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)) #9, !dbg !2060
  %41 = icmp eq i32 %40, 0, !dbg !2061
  br i1 %41, label %48, label %42, !dbg !2062

; <label>:42:                                     ; preds = %36
  %43 = load %struct.lock_values*, %struct.lock_values** %8, align 8, !dbg !2063
  %44 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %43, i32 0, i32 2, !dbg !2064
  %45 = load i8*, i8** %44, align 8, !dbg !2064
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)) #9, !dbg !2065
  %47 = icmp eq i32 %46, 0, !dbg !2066
  br i1 %47, label %48, label %113, !dbg !2067

; <label>:48:                                     ; preds = %42, %36
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2069, metadata !89), !dbg !2071
  call void @llvm.dbg.declare(metadata i8* %11, metadata !2072, metadata !89), !dbg !2073
  %49 = load %struct.lock_values*, %struct.lock_values** %8, align 8, !dbg !2074
  %50 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %49, i32 0, i32 0, !dbg !2075
  %51 = load i8*, i8** %50, align 8, !dbg !2075
  %52 = load %struct.lock_values*, %struct.lock_values** %7, align 8, !dbg !2076
  %53 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %52, i32 0, i32 0, !dbg !2077
  %54 = load i8*, i8** %53, align 8, !dbg !2077
  %55 = call signext i8 @FileLockMachineIDMatch(i8* %51, i8* %54), !dbg !2078
  store i8 %55, i8* %11, align 1, !dbg !2079
  %56 = load i8*, i8** %5, align 8, !dbg !2080
  %57 = load i8*, i8** %6, align 8, !dbg !2081
  %58 = call i8* (i8*, ...) @Unicode_Join(i8* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* %57, i8* null), !dbg !2082
  store i8* %58, i8** %10, align 8, !dbg !2083
  br label %59, !dbg !2084

; <label>:59:                                     ; preds = %88, %48
  %60 = load %struct.lock_values*, %struct.lock_values** %8, align 8, !dbg !2085
  %61 = call i32 @FileLockSleeper(%struct.lock_values* %60), !dbg !2087
  store i32 %61, i32* %9, align 4, !dbg !2088
  %62 = icmp eq i32 %61, 0, !dbg !2089
  br i1 %62, label %63, label %89, !dbg !2090

; <label>:63:                                     ; preds = %59
  %64 = load i8*, i8** %10, align 8, !dbg !2091
  %65 = call i32 @FileAttributes(i8* %64, %struct.FileData* null), !dbg !2093
  store i32 %65, i32* %9, align 4, !dbg !2094
  %66 = load i32, i32* %9, align 4, !dbg !2095
  %67 = icmp ne i32 %66, 0, !dbg !2097
  br i1 %67, label %68, label %73, !dbg !2098

; <label>:68:                                     ; preds = %63
  %69 = load i32, i32* %9, align 4, !dbg !2099
  %70 = icmp eq i32 %69, 2, !dbg !2102
  br i1 %70, label %71, label %72, !dbg !2103

; <label>:71:                                     ; preds = %68
  store i32 0, i32* %9, align 4, !dbg !2104
  br label %72, !dbg !2106

; <label>:72:                                     ; preds = %71, %68
  br label %89, !dbg !2107

; <label>:73:                                     ; preds = %63
  %74 = load i8, i8* %11, align 1, !dbg !2108
  %75 = sext i8 %74 to i32, !dbg !2108
  %76 = icmp ne i32 %75, 0, !dbg !2108
  br i1 %76, label %77, label %88, !dbg !2110

; <label>:77:                                     ; preds = %73
  %78 = load %struct.lock_values*, %struct.lock_values** %7, align 8, !dbg !2111
  %79 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %78, i32 0, i32 1, !dbg !2112
  %80 = load i8*, i8** %79, align 8, !dbg !2112
  %81 = call signext i8 @FileLockValidExecutionID(i8* %80), !dbg !2113
  %82 = icmp ne i8 %81, 0, !dbg !2113
  br i1 %82, label %88, label %83, !dbg !2114

; <label>:83:                                     ; preds = %77
  %84 = load i8*, i8** %10, align 8, !dbg !2116
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.FileLockWaitForPossession, i32 0, i32 0), i8* %84), !dbg !2118
  %85 = load i8*, i8** %5, align 8, !dbg !2119
  %86 = load i8*, i8** %6, align 8, !dbg !2120
  %87 = call i32 @FileLockRemoveLockingFile(i8* %85, i8* %86), !dbg !2121
  store i32 %87, i32* %9, align 4, !dbg !2122
  br label %89, !dbg !2123

; <label>:88:                                     ; preds = %77, %73
  br label %59, !dbg !2124, !llvm.loop !2126

; <label>:89:                                     ; preds = %83, %72, %59
  %90 = load %struct.lock_values*, %struct.lock_values** %8, align 8, !dbg !2127
  %91 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %90, i32 0, i32 8, !dbg !2129
  %92 = load i32, i32* %91, align 8, !dbg !2129
  %93 = icmp ne i32 %92, 0, !dbg !2130
  br i1 %93, label %94, label %111, !dbg !2131

; <label>:94:                                     ; preds = %89
  %95 = load i32, i32* %9, align 4, !dbg !2132
  %96 = icmp eq i32 %95, 11, !dbg !2133
  br i1 %96, label %97, label %111, !dbg !2134

; <label>:97:                                     ; preds = %94
  %98 = load i8, i8* %11, align 1, !dbg !2135
  %99 = icmp ne i8 %98, 0, !dbg !2135
  br i1 %99, label %100, label %105, !dbg !2138

; <label>:100:                                    ; preds = %97
  %101 = load i8*, i8** %10, align 8, !dbg !2139
  %102 = load %struct.lock_values*, %struct.lock_values** %7, align 8, !dbg !2141
  %103 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %102, i32 0, i32 1, !dbg !2142
  %104 = load i8*, i8** %103, align 8, !dbg !2142
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.FileLockWaitForPossession, i32 0, i32 0), i8* %101, i8* %104), !dbg !2143
  br label %110, !dbg !2144

; <label>:105:                                    ; preds = %97
  %106 = load i8*, i8** %10, align 8, !dbg !2145
  %107 = load %struct.lock_values*, %struct.lock_values** %7, align 8, !dbg !2147
  %108 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %107, i32 0, i32 0, !dbg !2148
  %109 = load i8*, i8** %108, align 8, !dbg !2148
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.FileLockWaitForPossession, i32 0, i32 0), i8* %106, i8* %109), !dbg !2149
  br label %110

; <label>:110:                                    ; preds = %105, %100
  br label %111, !dbg !2150

; <label>:111:                                    ; preds = %110, %94, %89
  %112 = load i8*, i8** %10, align 8, !dbg !2151
  call void @Posix_Free(i8* %112), !dbg !2152
  br label %113, !dbg !2153

; <label>:113:                                    ; preds = %111, %42, %27, %19
  %114 = load i32, i32* %9, align 4, !dbg !2154
  ret i32 %114, !dbg !2155
}

; Function Attrs: nounwind uwtable
define internal i32 @FileLockMakeDirectory(i8*) #0 !dbg !2156 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2159, metadata !89), !dbg !2160
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2161, metadata !89), !dbg !2162
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2163, metadata !89), !dbg !2166
  %5 = call i32 @umask(i32 0) #8, !dbg !2167
  store i32 %5, i32* %4, align 4, !dbg !2168
  %6 = load i8*, i8** %2, align 8, !dbg !2169
  %7 = call i32 @FileCreateDirectory(i8* %6, i32 511), !dbg !2170
  store i32 %7, i32* %3, align 4, !dbg !2171
  %8 = load i32, i32* %4, align 4, !dbg !2172
  %9 = call i32 @umask(i32 %8) #8, !dbg !2173
  %10 = load i32, i32* %3, align 4, !dbg !2174
  ret i32 %10, !dbg !2175
}

declare i32 @FileSimpleRandom() #2

declare i8* @Unicode_Format(i8*, ...) #2

; Function Attrs: nounwind
declare i32 @umask(i32) #5

declare i32 @FileCreateDirectory(i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @FileLockScanDirectory(i8*, i32 (i8*, i8*, %struct.lock_values*, %struct.lock_values*)*, %struct.lock_values*, i8 signext) #0 !dbg !2176 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32 (i8*, i8*, %struct.lock_values*, %struct.lock_values*)*, align 8
  %8 = alloca %struct.lock_values*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.lock_values*, align 8
  %17 = alloca i8, align 1
  %18 = alloca %struct.lock_values, align 8
  %19 = alloca [512 x i8], align 16
  %20 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2177, metadata !89), !dbg !2178
  store i32 (i8*, i8*, %struct.lock_values*, %struct.lock_values*)* %1, i32 (i8*, i8*, %struct.lock_values*, %struct.lock_values*)** %7, align 8
  call void @llvm.dbg.declare(metadata i32 (i8*, i8*, %struct.lock_values*, %struct.lock_values*)** %7, metadata !2179, metadata !89), !dbg !2180
  store %struct.lock_values* %2, %struct.lock_values** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.lock_values** %8, metadata !2181, metadata !89), !dbg !2182
  store i8 %3, i8* %9, align 1
  call void @llvm.dbg.declare(metadata i8* %9, metadata !2183, metadata !89), !dbg !2184
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2185, metadata !89), !dbg !2186
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2187, metadata !89), !dbg !2188
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2189, metadata !89), !dbg !2190
  call void @llvm.dbg.declare(metadata i8*** %13, metadata !2191, metadata !89), !dbg !2192
  store i8** null, i8*** %13, align 8, !dbg !2192
  call void @llvm.dbg.declare(metadata i8** %14, metadata !2193, metadata !89), !dbg !2194
  store i8* null, i8** %14, align 8, !dbg !2194
  call void @llvm.dbg.declare(metadata i8** %15, metadata !2195, metadata !89), !dbg !2196
  store i8* null, i8** %15, align 8, !dbg !2196
  %21 = load i8*, i8** %6, align 8, !dbg !2197
  %22 = call i32 @File_ListDirectory(i8* %21, i8*** %13), !dbg !2198
  store i32 %22, i32* %12, align 4, !dbg !2199
  %23 = load i32, i32* %12, align 4, !dbg !2200
  %24 = icmp eq i32 %23, -1, !dbg !2202
  br i1 %24, label %25, label %29, !dbg !2203

; <label>:25:                                     ; preds = %4
  %26 = load i8*, i8** %6, align 8, !dbg !2204
  %27 = call i32* @__errno_location() #1, !dbg !2206
  %28 = load i32, i32* %27, align 4, !dbg !2207
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.FileLockScanDirectory, i32 0, i32 0), i8* %26, i32 %28), !dbg !2208
  store i32 33, i32* %5, align 4, !dbg !2209
  br label %266, !dbg !2209

; <label>:29:                                     ; preds = %4
  store i32 0, i32* %10, align 4, !dbg !2210
  store i32 0, i32* %11, align 4, !dbg !2212
  br label %30, !dbg !2213

; <label>:30:                                     ; preds = %104, %29
  %31 = load i32, i32* %10, align 4, !dbg !2214
  %32 = load i32, i32* %12, align 4, !dbg !2217
  %33 = icmp ult i32 %31, %32, !dbg !2218
  br i1 %33, label %34, label %107, !dbg !2219

; <label>:34:                                     ; preds = %30
  %35 = load i32, i32* %10, align 4, !dbg !2220
  %36 = zext i32 %35 to i64, !dbg !2223
  %37 = load i8**, i8*** %13, align 8, !dbg !2223
  %38 = getelementptr inbounds i8*, i8** %37, i64 %36, !dbg !2223
  %39 = load i8*, i8** %38, align 8, !dbg !2223
  %40 = call signext i8 @FileLockValidName(i8* %39), !dbg !2224
  %41 = icmp ne i8 %40, 0, !dbg !2224
  br i1 %41, label %69, label %42, !dbg !2225

; <label>:42:                                     ; preds = %34
  %43 = load i32, i32* %10, align 4, !dbg !2226
  %44 = zext i32 %43 to i64, !dbg !2228
  %45 = load i8**, i8*** %13, align 8, !dbg !2228
  %46 = getelementptr inbounds i8*, i8** %45, i64 %44, !dbg !2228
  %47 = load i8*, i8** %46, align 8, !dbg !2228
  %48 = load i8*, i8** %6, align 8, !dbg !2229
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.FileLockScanDirectory, i32 0, i32 0), i8* %47, i8* %48), !dbg !2230
  %49 = load i8*, i8** %6, align 8, !dbg !2231
  %50 = load i32, i32* %10, align 4, !dbg !2232
  %51 = zext i32 %50 to i64, !dbg !2233
  %52 = load i8**, i8*** %13, align 8, !dbg !2233
  %53 = getelementptr inbounds i8*, i8** %52, i64 %51, !dbg !2233
  %54 = load i8*, i8** %53, align 8, !dbg !2233
  %55 = call i32 @FileLockRemoveLockingFile(i8* %49, i8* %54), !dbg !2234
  store i32 %55, i32* %11, align 4, !dbg !2235
  %56 = load i32, i32* %11, align 4, !dbg !2236
  %57 = icmp ne i32 %56, 0, !dbg !2238
  br i1 %57, label %58, label %59, !dbg !2239

; <label>:58:                                     ; preds = %42
  br label %259, !dbg !2240

; <label>:59:                                     ; preds = %42
  %60 = load i32, i32* %10, align 4, !dbg !2242
  %61 = zext i32 %60 to i64, !dbg !2243
  %62 = load i8**, i8*** %13, align 8, !dbg !2243
  %63 = getelementptr inbounds i8*, i8** %62, i64 %61, !dbg !2243
  %64 = load i8*, i8** %63, align 8, !dbg !2243
  call void @Posix_Free(i8* %64), !dbg !2244
  %65 = load i32, i32* %10, align 4, !dbg !2245
  %66 = zext i32 %65 to i64, !dbg !2246
  %67 = load i8**, i8*** %13, align 8, !dbg !2246
  %68 = getelementptr inbounds i8*, i8** %67, i64 %66, !dbg !2246
  store i8* null, i8** %68, align 8, !dbg !2247
  br label %104, !dbg !2248

; <label>:69:                                     ; preds = %34
  %70 = load i32, i32* %10, align 4, !dbg !2249
  %71 = zext i32 %70 to i64, !dbg !2251
  %72 = load i8**, i8*** %13, align 8, !dbg !2251
  %73 = getelementptr inbounds i8*, i8** %72, i64 %71, !dbg !2251
  %74 = load i8*, i8** %73, align 8, !dbg !2251
  %75 = load i8, i8* %74, align 1, !dbg !2252
  %76 = sext i8 %75 to i32, !dbg !2252
  %77 = icmp eq i32 %76, 68, !dbg !2253
  br i1 %77, label %78, label %103, !dbg !2254

; <label>:78:                                     ; preds = %69
  %79 = load i8, i8* %9, align 1, !dbg !2255
  %80 = icmp ne i8 %79, 0, !dbg !2255
  br i1 %80, label %81, label %93, !dbg !2258

; <label>:81:                                     ; preds = %78
  %82 = load i32, i32* %10, align 4, !dbg !2259
  %83 = zext i32 %82 to i64, !dbg !2261
  %84 = load i8**, i8*** %13, align 8, !dbg !2261
  %85 = getelementptr inbounds i8*, i8** %84, i64 %83, !dbg !2261
  %86 = load i8*, i8** %85, align 8, !dbg !2261
  %87 = load %struct.lock_values*, %struct.lock_values** %8, align 8, !dbg !2262
  %88 = call i32 @FileLockActivateList(i8* %86, %struct.lock_values* %87), !dbg !2263
  store i32 %88, i32* %11, align 4, !dbg !2264
  %89 = load i32, i32* %11, align 4, !dbg !2265
  %90 = icmp ne i32 %89, 0, !dbg !2267
  br i1 %90, label %91, label %92, !dbg !2268

; <label>:91:                                     ; preds = %81
  br label %259, !dbg !2269

; <label>:92:                                     ; preds = %81
  br label %93, !dbg !2271

; <label>:93:                                     ; preds = %92, %78
  %94 = load i32, i32* %10, align 4, !dbg !2272
  %95 = zext i32 %94 to i64, !dbg !2273
  %96 = load i8**, i8*** %13, align 8, !dbg !2273
  %97 = getelementptr inbounds i8*, i8** %96, i64 %95, !dbg !2273
  %98 = load i8*, i8** %97, align 8, !dbg !2273
  call void @Posix_Free(i8* %98), !dbg !2274
  %99 = load i32, i32* %10, align 4, !dbg !2275
  %100 = zext i32 %99 to i64, !dbg !2276
  %101 = load i8**, i8*** %13, align 8, !dbg !2276
  %102 = getelementptr inbounds i8*, i8** %101, i64 %100, !dbg !2276
  store i8* null, i8** %102, align 8, !dbg !2277
  br label %103, !dbg !2278

; <label>:103:                                    ; preds = %93, %69
  br label %104, !dbg !2279

; <label>:104:                                    ; preds = %103, %59
  %105 = load i32, i32* %10, align 4, !dbg !2280
  %106 = add i32 %105, 1, !dbg !2280
  store i32 %106, i32* %10, align 4, !dbg !2280
  br label %30, !dbg !2282, !llvm.loop !2283

; <label>:107:                                    ; preds = %30
  %108 = load %struct.lock_values*, %struct.lock_values** %8, align 8, !dbg !2285
  %109 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %108, i32 0, i32 9, !dbg !2287
  %110 = load %struct.active_lock*, %struct.active_lock** %109, align 8, !dbg !2287
  %111 = icmp ne %struct.active_lock* %110, null, !dbg !2288
  br i1 %111, label %112, label %113, !dbg !2289

; <label>:112:                                    ; preds = %107
  br label %259, !dbg !2290

; <label>:113:                                    ; preds = %107
  %114 = call i8* @FileLockGetExecutionID(), !dbg !2292
  store i8* %114, i8** %14, align 8, !dbg !2293
  %115 = load i8*, i8** %6, align 8, !dbg !2294
  %116 = call i8* @FileLockLocationChecksum(i8* %115), !dbg !2295
  store i8* %116, i8** %15, align 8, !dbg !2296
  store i32 0, i32* %10, align 4, !dbg !2297
  store i32 0, i32* %11, align 4, !dbg !2299
  br label %117, !dbg !2300

; <label>:117:                                    ; preds = %255, %113
  %118 = load i32, i32* %10, align 4, !dbg !2301
  %119 = load i32, i32* %12, align 4, !dbg !2304
  %120 = icmp ult i32 %118, %119, !dbg !2305
  br i1 %120, label %121, label %258, !dbg !2306

; <label>:121:                                    ; preds = %117
  call void @llvm.dbg.declare(metadata %struct.lock_values** %16, metadata !2307, metadata !89), !dbg !2309
  call void @llvm.dbg.declare(metadata i8* %17, metadata !2310, metadata !89), !dbg !2311
  call void @llvm.dbg.declare(metadata %struct.lock_values* %18, metadata !2312, metadata !89), !dbg !2313
  call void @llvm.dbg.declare(metadata [512 x i8]* %19, metadata !2314, metadata !89), !dbg !2315
  %122 = load i32, i32* %10, align 4, !dbg !2316
  %123 = zext i32 %122 to i64, !dbg !2318
  %124 = load i8**, i8*** %13, align 8, !dbg !2318
  %125 = getelementptr inbounds i8*, i8** %124, i64 %123, !dbg !2318
  %126 = load i8*, i8** %125, align 8, !dbg !2318
  %127 = icmp eq i8* %126, null, !dbg !2319
  br i1 %127, label %137, label %128, !dbg !2320

; <label>:128:                                    ; preds = %121
  %129 = load i32, i32* %10, align 4, !dbg !2321
  %130 = zext i32 %129 to i64, !dbg !2322
  %131 = load i8**, i8*** %13, align 8, !dbg !2322
  %132 = getelementptr inbounds i8*, i8** %131, i64 %130, !dbg !2322
  %133 = load i8*, i8** %132, align 8, !dbg !2322
  %134 = load i8, i8* %133, align 1, !dbg !2323
  %135 = sext i8 %134 to i32, !dbg !2323
  %136 = icmp eq i32 %135, 69, !dbg !2324
  br i1 %136, label %137, label %138, !dbg !2325

; <label>:137:                                    ; preds = %128, %121
  br label %255, !dbg !2327

; <label>:138:                                    ; preds = %128
  %139 = load i32, i32* %10, align 4, !dbg !2329
  %140 = zext i32 %139 to i64, !dbg !2330
  %141 = load i8**, i8*** %13, align 8, !dbg !2330
  %142 = getelementptr inbounds i8*, i8** %141, i64 %140, !dbg !2330
  %143 = load i8*, i8** %142, align 8, !dbg !2330
  %144 = load %struct.lock_values*, %struct.lock_values** %8, align 8, !dbg !2331
  %145 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %144, i32 0, i32 4, !dbg !2332
  %146 = load i8*, i8** %145, align 8, !dbg !2332
  %147 = call i32 @Unicode_Compare(i8* %143, i8* %146), !dbg !2333
  %148 = icmp eq i32 %147, 0, !dbg !2334
  %149 = select i1 %148, i32 1, i32 0, !dbg !2335
  %150 = trunc i32 %149 to i8, !dbg !2335
  store i8 %150, i8* %17, align 1, !dbg !2336
  %151 = load i8, i8* %17, align 1, !dbg !2337
  %152 = icmp ne i8 %151, 0, !dbg !2337
  br i1 %152, label %153, label %155, !dbg !2339

; <label>:153:                                    ; preds = %138
  %154 = load %struct.lock_values*, %struct.lock_values** %8, align 8, !dbg !2340
  store %struct.lock_values* %154, %struct.lock_values** %16, align 8, !dbg !2342
  br label %234, !dbg !2343

; <label>:155:                                    ; preds = %138
  %156 = load i8*, i8** %6, align 8, !dbg !2344
  %157 = load i32, i32* %10, align 4, !dbg !2346
  %158 = zext i32 %157 to i64, !dbg !2347
  %159 = load i8**, i8*** %13, align 8, !dbg !2347
  %160 = getelementptr inbounds i8*, i8** %159, i64 %158, !dbg !2347
  %161 = load i8*, i8** %160, align 8, !dbg !2347
  %162 = getelementptr inbounds [512 x i8], [512 x i8]* %19, i32 0, i32 0, !dbg !2348
  %163 = call i32 @FileLockMemberValues(i8* %156, i8* %161, i8* %162, i64 512, %struct.lock_values* %18), !dbg !2349
  store i32 %163, i32* %11, align 4, !dbg !2350
  %164 = load i32, i32* %11, align 4, !dbg !2351
  %165 = icmp ne i32 %164, 0, !dbg !2353
  br i1 %165, label %166, label %171, !dbg !2354

; <label>:166:                                    ; preds = %155
  %167 = load i32, i32* %11, align 4, !dbg !2355
  %168 = icmp eq i32 %167, 2, !dbg !2358
  br i1 %168, label %169, label %170, !dbg !2359

; <label>:169:                                    ; preds = %166
  store i32 0, i32* %11, align 4, !dbg !2360
  br label %255, !dbg !2362

; <label>:170:                                    ; preds = %166
  br label %258, !dbg !2363

; <label>:171:                                    ; preds = %155
  %172 = load %struct.lock_values*, %struct.lock_values** %8, align 8, !dbg !2364
  %173 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %172, i32 0, i32 0, !dbg !2366
  %174 = load i8*, i8** %173, align 8, !dbg !2366
  %175 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %18, i32 0, i32 0, !dbg !2367
  %176 = load i8*, i8** %175, align 8, !dbg !2367
  %177 = call signext i8 @FileLockMachineIDMatch(i8* %174, i8* %176), !dbg !2368
  %178 = icmp ne i8 %177, 0, !dbg !2368
  br i1 %178, label %179, label %233, !dbg !2369

; <label>:179:                                    ; preds = %171
  call void @llvm.dbg.declare(metadata i8** %20, metadata !2370, metadata !89), !dbg !2372
  store i8* null, i8** %20, align 8, !dbg !2372
  %180 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %18, i32 0, i32 1, !dbg !2373
  %181 = load i8*, i8** %180, align 8, !dbg !2373
  %182 = call signext i8 @FileLockValidExecutionID(i8* %181), !dbg !2375
  %183 = icmp ne i8 %182, 0, !dbg !2375
  br i1 %183, label %184, label %203, !dbg !2376

; <label>:184:                                    ; preds = %179
  %185 = load i8*, i8** %14, align 8, !dbg !2377
  %186 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %18, i32 0, i32 1, !dbg !2380
  %187 = load i8*, i8** %186, align 8, !dbg !2380
  %188 = call i32 @strcmp(i8* %185, i8* %187) #9, !dbg !2381
  %189 = icmp eq i32 %188, 0, !dbg !2382
  br i1 %189, label %190, label %202, !dbg !2383

; <label>:190:                                    ; preds = %184
  %191 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %18, i32 0, i32 3, !dbg !2384
  %192 = load i8*, i8** %191, align 8, !dbg !2384
  %193 = icmp ne i8* %192, null, !dbg !2385
  br i1 %193, label %194, label %202, !dbg !2386

; <label>:194:                                    ; preds = %190
  %195 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %18, i32 0, i32 3, !dbg !2387
  %196 = load i8*, i8** %195, align 8, !dbg !2387
  %197 = load i8*, i8** %15, align 8, !dbg !2388
  %198 = call i32 @strcmp(i8* %196, i8* %197) #9, !dbg !2389
  %199 = icmp ne i32 %198, 0, !dbg !2390
  br i1 %199, label %200, label %202, !dbg !2391

; <label>:200:                                    ; preds = %194
  %201 = call i8* @Unicode_Duplicate(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.35, i32 0, i32 0)), !dbg !2393
  store i8* %201, i8** %20, align 8, !dbg !2395
  br label %202, !dbg !2396

; <label>:202:                                    ; preds = %200, %194, %190, %184
  br label %207, !dbg !2397

; <label>:203:                                    ; preds = %179
  %204 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %18, i32 0, i32 1, !dbg !2398
  %205 = load i8*, i8** %204, align 8, !dbg !2398
  %206 = call i8* (i64*, i8*, ...) @Str_SafeAsprintf(i64* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.36, i32 0, i32 0), i8* %205), !dbg !2400
  store i8* %206, i8** %20, align 8, !dbg !2401
  br label %207

; <label>:207:                                    ; preds = %203, %202
  %208 = load i8*, i8** %20, align 8, !dbg !2402
  %209 = icmp ne i8* %208, null, !dbg !2402
  br i1 %209, label %210, label %232, !dbg !2404

; <label>:210:                                    ; preds = %207
  %211 = load i32, i32* %10, align 4, !dbg !2405
  %212 = zext i32 %211 to i64, !dbg !2407
  %213 = load i8**, i8*** %13, align 8, !dbg !2407
  %214 = getelementptr inbounds i8*, i8** %213, i64 %212, !dbg !2407
  %215 = load i8*, i8** %214, align 8, !dbg !2407
  %216 = load i8*, i8** %6, align 8, !dbg !2408
  %217 = load i8*, i8** %20, align 8, !dbg !2409
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.FileLockScanDirectory, i32 0, i32 0), i8* %215, i8* %216, i8* %217), !dbg !2410
  %218 = load i8*, i8** %20, align 8, !dbg !2411
  call void @Posix_Free(i8* %218), !dbg !2412
  %219 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %18, i32 0, i32 4, !dbg !2413
  %220 = load i8*, i8** %219, align 8, !dbg !2413
  call void @Posix_Free(i8* %220), !dbg !2414
  %221 = load i8*, i8** %6, align 8, !dbg !2415
  %222 = load i32, i32* %10, align 4, !dbg !2416
  %223 = zext i32 %222 to i64, !dbg !2417
  %224 = load i8**, i8*** %13, align 8, !dbg !2417
  %225 = getelementptr inbounds i8*, i8** %224, i64 %223, !dbg !2417
  %226 = load i8*, i8** %225, align 8, !dbg !2417
  %227 = call i32 @FileLockRemoveLockingFile(i8* %221, i8* %226), !dbg !2418
  store i32 %227, i32* %11, align 4, !dbg !2419
  %228 = load i32, i32* %11, align 4, !dbg !2420
  %229 = icmp ne i32 %228, 0, !dbg !2422
  br i1 %229, label %230, label %231, !dbg !2423

; <label>:230:                                    ; preds = %210
  br label %258, !dbg !2424

; <label>:231:                                    ; preds = %210
  br label %255, !dbg !2426

; <label>:232:                                    ; preds = %207
  br label %233, !dbg !2427

; <label>:233:                                    ; preds = %232, %171
  store %struct.lock_values* %18, %struct.lock_values** %16, align 8, !dbg !2428
  br label %234

; <label>:234:                                    ; preds = %233, %153
  %235 = load i32 (i8*, i8*, %struct.lock_values*, %struct.lock_values*)*, i32 (i8*, i8*, %struct.lock_values*, %struct.lock_values*)** %7, align 8, !dbg !2429
  %236 = load i8*, i8** %6, align 8, !dbg !2430
  %237 = load i32, i32* %10, align 4, !dbg !2431
  %238 = zext i32 %237 to i64, !dbg !2432
  %239 = load i8**, i8*** %13, align 8, !dbg !2432
  %240 = getelementptr inbounds i8*, i8** %239, i64 %238, !dbg !2432
  %241 = load i8*, i8** %240, align 8, !dbg !2432
  %242 = load %struct.lock_values*, %struct.lock_values** %16, align 8, !dbg !2433
  %243 = load %struct.lock_values*, %struct.lock_values** %8, align 8, !dbg !2434
  %244 = call i32 %235(i8* %236, i8* %241, %struct.lock_values* %242, %struct.lock_values* %243), !dbg !2435
  store i32 %244, i32* %11, align 4, !dbg !2436
  %245 = load %struct.lock_values*, %struct.lock_values** %16, align 8, !dbg !2437
  %246 = icmp eq %struct.lock_values* %245, %18, !dbg !2439
  br i1 %246, label %247, label %250, !dbg !2440

; <label>:247:                                    ; preds = %234
  %248 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %18, i32 0, i32 4, !dbg !2441
  %249 = load i8*, i8** %248, align 8, !dbg !2441
  call void @Posix_Free(i8* %249), !dbg !2443
  br label %250, !dbg !2444

; <label>:250:                                    ; preds = %247, %234
  %251 = load i32, i32* %11, align 4, !dbg !2445
  %252 = icmp ne i32 %251, 0, !dbg !2447
  br i1 %252, label %253, label %254, !dbg !2448

; <label>:253:                                    ; preds = %250
  br label %258, !dbg !2449

; <label>:254:                                    ; preds = %250
  br label %255, !dbg !2451

; <label>:255:                                    ; preds = %254, %231, %169, %137
  %256 = load i32, i32* %10, align 4, !dbg !2452
  %257 = add i32 %256, 1, !dbg !2452
  store i32 %257, i32* %10, align 4, !dbg !2452
  br label %117, !dbg !2454, !llvm.loop !2455

; <label>:258:                                    ; preds = %253, %230, %170, %117
  br label %259, !dbg !2457

; <label>:259:                                    ; preds = %258, %112, %91, %58
  %260 = load i8**, i8*** %13, align 8, !dbg !2459
  %261 = load i32, i32* %12, align 4, !dbg !2460
  %262 = sext i32 %261 to i64, !dbg !2460
  call void @Util_FreeStringList(i8** %260, i64 %262), !dbg !2461
  %263 = load i8*, i8** %15, align 8, !dbg !2462
  call void @Posix_Free(i8* %263), !dbg !2463
  %264 = load i8*, i8** %14, align 8, !dbg !2464
  call void @Posix_Free(i8* %264), !dbg !2465
  %265 = load i32, i32* %11, align 4, !dbg !2466
  store i32 %265, i32* %5, align 4, !dbg !2467
  br label %266, !dbg !2467

; <label>:266:                                    ; preds = %259, %25
  %267 = load i32, i32* %5, align 4, !dbg !2468
  ret i32 %267, !dbg !2468
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @Unicode_FindLast(i8*, i8*) #3 !dbg !2469 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2472, metadata !89), !dbg !2473
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2474, metadata !89), !dbg !2475
  %5 = load i8*, i8** %3, align 8, !dbg !2476
  %6 = load i8*, i8** %4, align 8, !dbg !2477
  %7 = call i64 @Unicode_FindLastSubstrInRange(i8* %5, i64 0, i64 -1, i8* %6, i64 0, i64 -1), !dbg !2478
  ret i64 %7, !dbg !2479
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Unicode_Replace(i8*, i64, i64, i8*) #3 !dbg !2480 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2483, metadata !89), !dbg !2484
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2485, metadata !89), !dbg !2486
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2487, metadata !89), !dbg !2488
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2489, metadata !89), !dbg !2490
  %9 = load i8*, i8** %5, align 8, !dbg !2491
  %10 = load i64, i64* %6, align 8, !dbg !2492
  %11 = load i64, i64* %7, align 8, !dbg !2493
  %12 = load i8*, i8** %8, align 8, !dbg !2494
  %13 = call i8* @Unicode_ReplaceRange(i8* %9, i64 %10, i64 %11, i8* %12, i64 0, i64 -1), !dbg !2495
  ret i8* %13, !dbg !2496
}

declare i32 @File_ListDirectory(i8*, i8***) #2

; Function Attrs: nounwind uwtable
define internal i32 @FileLockRemoveLockingFile(i8*, i8*) #0 !dbg !2497 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2500, metadata !89), !dbg !2501
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2502, metadata !89), !dbg !2503
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2504, metadata !89), !dbg !2505
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2506, metadata !89), !dbg !2507
  %7 = load i8*, i8** %3, align 8, !dbg !2508
  %8 = load i8*, i8** %4, align 8, !dbg !2509
  %9 = call i8* (i8*, ...) @Unicode_Join(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* %8, i8* null), !dbg !2510
  store i8* %9, i8** %6, align 8, !dbg !2511
  %10 = load i8*, i8** %6, align 8, !dbg !2512
  %11 = call i32 @FileDeletion(i8* %10, i8 signext 0), !dbg !2513
  store i32 %11, i32* %5, align 4, !dbg !2514
  %12 = load i32, i32* %5, align 4, !dbg !2515
  %13 = icmp ne i32 %12, 0, !dbg !2517
  br i1 %13, label %14, label %23, !dbg !2518

; <label>:14:                                     ; preds = %2
  %15 = load i32, i32* %5, align 4, !dbg !2519
  %16 = icmp eq i32 %15, 2, !dbg !2522
  br i1 %16, label %17, label %18, !dbg !2523

; <label>:17:                                     ; preds = %14
  store i32 0, i32* %5, align 4, !dbg !2524
  br label %22, !dbg !2526

; <label>:18:                                     ; preds = %14
  %19 = load i8*, i8** %6, align 8, !dbg !2527
  %20 = load i32, i32* %5, align 4, !dbg !2529
  %21 = call i8* @Err_Errno2String(i32 %20), !dbg !2530
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.FileLockRemoveLockingFile, i32 0, i32 0), i8* %19, i8* %21), !dbg !2531
  br label %22

; <label>:22:                                     ; preds = %18, %17
  br label %23, !dbg !2532

; <label>:23:                                     ; preds = %22, %2
  %24 = load i8*, i8** %6, align 8, !dbg !2533
  call void @Posix_Free(i8* %24), !dbg !2534
  %25 = load i32, i32* %5, align 4, !dbg !2535
  ret i32 %25, !dbg !2536
}

; Function Attrs: nounwind uwtable
define internal i32 @FileLockActivateList(i8*, %struct.lock_values*) #0 !dbg !2537 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.lock_values*, align 8
  %5 = alloca %struct.active_lock*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2540, metadata !89), !dbg !2541
  store %struct.lock_values* %1, %struct.lock_values** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.lock_values** %4, metadata !2542, metadata !89), !dbg !2543
  call void @llvm.dbg.declare(metadata %struct.active_lock** %5, metadata !2544, metadata !89), !dbg !2545
  %6 = load %struct.lock_values*, %struct.lock_values** %4, align 8, !dbg !2546
  %7 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %6, i32 0, i32 9, !dbg !2548
  %8 = load %struct.active_lock*, %struct.active_lock** %7, align 8, !dbg !2548
  store %struct.active_lock* %8, %struct.active_lock** %5, align 8, !dbg !2549
  br label %9, !dbg !2550

; <label>:9:                                      ; preds = %21, %2
  %10 = load %struct.active_lock*, %struct.active_lock** %5, align 8, !dbg !2551
  %11 = icmp ne %struct.active_lock* %10, null, !dbg !2554
  br i1 %11, label %12, label %25, !dbg !2555

; <label>:12:                                     ; preds = %9
  %13 = load %struct.active_lock*, %struct.active_lock** %5, align 8, !dbg !2556
  %14 = getelementptr inbounds %struct.active_lock, %struct.active_lock* %13, i32 0, i32 3, !dbg !2559
  %15 = load i8*, i8** %14, align 8, !dbg !2559
  %16 = load i8*, i8** %3, align 8, !dbg !2560
  %17 = call i32 @Unicode_Compare(i8* %15, i8* %16), !dbg !2561
  %18 = icmp eq i32 %17, 0, !dbg !2562
  br i1 %18, label %19, label %20, !dbg !2563

; <label>:19:                                     ; preds = %12
  br label %25, !dbg !2564

; <label>:20:                                     ; preds = %12
  br label %21, !dbg !2566

; <label>:21:                                     ; preds = %20
  %22 = load %struct.active_lock*, %struct.active_lock** %5, align 8, !dbg !2567
  %23 = getelementptr inbounds %struct.active_lock, %struct.active_lock* %22, i32 0, i32 0, !dbg !2569
  %24 = load %struct.active_lock*, %struct.active_lock** %23, align 8, !dbg !2569
  store %struct.active_lock* %24, %struct.active_lock** %5, align 8, !dbg !2570
  br label %9, !dbg !2571, !llvm.loop !2572

; <label>:25:                                     ; preds = %19, %9
  %26 = load %struct.active_lock*, %struct.active_lock** %5, align 8, !dbg !2574
  %27 = icmp eq %struct.active_lock* %26, null, !dbg !2576
  br i1 %27, label %28, label %45, !dbg !2577

; <label>:28:                                     ; preds = %25
  %29 = call i8* @UtilSafeMalloc0(i64 24), !dbg !2578
  %30 = bitcast i8* %29 to %struct.active_lock*, !dbg !2578
  store %struct.active_lock* %30, %struct.active_lock** %5, align 8, !dbg !2580
  %31 = load %struct.lock_values*, %struct.lock_values** %4, align 8, !dbg !2581
  %32 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %31, i32 0, i32 9, !dbg !2582
  %33 = load %struct.active_lock*, %struct.active_lock** %32, align 8, !dbg !2582
  %34 = load %struct.active_lock*, %struct.active_lock** %5, align 8, !dbg !2583
  %35 = getelementptr inbounds %struct.active_lock, %struct.active_lock* %34, i32 0, i32 0, !dbg !2584
  store %struct.active_lock* %33, %struct.active_lock** %35, align 8, !dbg !2585
  %36 = load %struct.active_lock*, %struct.active_lock** %5, align 8, !dbg !2586
  %37 = load %struct.lock_values*, %struct.lock_values** %4, align 8, !dbg !2587
  %38 = getelementptr inbounds %struct.lock_values, %struct.lock_values* %37, i32 0, i32 9, !dbg !2588
  store %struct.active_lock* %36, %struct.active_lock** %38, align 8, !dbg !2589
  %39 = load %struct.active_lock*, %struct.active_lock** %5, align 8, !dbg !2590
  %40 = getelementptr inbounds %struct.active_lock, %struct.active_lock* %39, i32 0, i32 1, !dbg !2591
  store i32 0, i32* %40, align 8, !dbg !2592
  %41 = load i8*, i8** %3, align 8, !dbg !2593
  %42 = call i8* @Unicode_Duplicate(i8* %41), !dbg !2594
  %43 = load %struct.active_lock*, %struct.active_lock** %5, align 8, !dbg !2595
  %44 = getelementptr inbounds %struct.active_lock, %struct.active_lock* %43, i32 0, i32 3, !dbg !2596
  store i8* %42, i8** %44, align 8, !dbg !2597
  br label %45, !dbg !2598

; <label>:45:                                     ; preds = %28, %25
  %46 = load %struct.active_lock*, %struct.active_lock** %5, align 8, !dbg !2599
  %47 = getelementptr inbounds %struct.active_lock, %struct.active_lock* %46, i32 0, i32 2, !dbg !2600
  store i8 1, i8* %47, align 4, !dbg !2601
  ret i32 0, !dbg !2602
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @Unicode_Compare(i8*, i8*) #3 !dbg !2603 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2604, metadata !89), !dbg !2605
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2606, metadata !89), !dbg !2607
  %5 = load i8*, i8** %3, align 8, !dbg !2608
  %6 = load i8*, i8** %4, align 8, !dbg !2609
  %7 = call i32 @Unicode_CompareRange(i8* %5, i64 0, i64 -1, i8* %6, i64 0, i64 -1, i8 signext 0), !dbg !2610
  ret i32 %7, !dbg !2611
}

declare signext i8 @FileLockMachineIDMatch(i8*, i8*) #2

declare signext i8 @FileLockValidExecutionID(i8*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @Util_FreeStringList(i8**, i64) #3 !dbg !2612 {
  %3 = alloca i8**, align 8
  %4 = alloca i64, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !2616, metadata !89), !dbg !2617
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2618, metadata !89), !dbg !2619
  %5 = load i8**, i8*** %3, align 8, !dbg !2620
  %6 = load i64, i64* %4, align 8, !dbg !2621
  call void @Util_FreeList(i8** %5, i64 %6), !dbg !2622
  ret void, !dbg !2623
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Util_FreeList(i8**, i64) #3 !dbg !2624 {
  %3 = alloca i8**, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !2627, metadata !89), !dbg !2628
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2629, metadata !89), !dbg !2630
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2631, metadata !89), !dbg !2632
  %8 = load i8**, i8*** %3, align 8, !dbg !2633
  %9 = icmp eq i8** %8, null, !dbg !2635
  br i1 %9, label %10, label %11, !dbg !2636

; <label>:10:                                     ; preds = %2
  br label %48, !dbg !2637

; <label>:11:                                     ; preds = %2
  %12 = call i32* @__errno_location() #1, !dbg !2639
  %13 = load i32, i32* %12, align 4, !dbg !2640
  store i32 %13, i32* %5, align 4, !dbg !2641
  %14 = load i64, i64* %4, align 8, !dbg !2642
  %15 = icmp sge i64 %14, 0, !dbg !2644
  br i1 %15, label %16, label %30, !dbg !2645

; <label>:16:                                     ; preds = %11
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2646, metadata !89), !dbg !2648
  store i64 0, i64* %6, align 8, !dbg !2649
  br label %17, !dbg !2651

; <label>:17:                                     ; preds = %26, %16
  %18 = load i64, i64* %6, align 8, !dbg !2652
  %19 = load i64, i64* %4, align 8, !dbg !2655
  %20 = icmp slt i64 %18, %19, !dbg !2656
  br i1 %20, label %21, label %29, !dbg !2657

; <label>:21:                                     ; preds = %17
  %22 = load i64, i64* %6, align 8, !dbg !2658
  %23 = load i8**, i8*** %3, align 8, !dbg !2660
  %24 = getelementptr inbounds i8*, i8** %23, i64 %22, !dbg !2660
  %25 = load i8*, i8** %24, align 8, !dbg !2660
  call void @free(i8* %25) #8, !dbg !2661
  br label %26, !dbg !2662

; <label>:26:                                     ; preds = %21
  %27 = load i64, i64* %6, align 8, !dbg !2663
  %28 = add nsw i64 %27, 1, !dbg !2663
  store i64 %28, i64* %6, align 8, !dbg !2663
  br label %17, !dbg !2665, !llvm.loop !2666

; <label>:29:                                     ; preds = %17
  br label %43, !dbg !2668

; <label>:30:                                     ; preds = %11
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !2669, metadata !89), !dbg !2671
  %31 = load i8**, i8*** %3, align 8, !dbg !2672
  store i8** %31, i8*** %7, align 8, !dbg !2674
  br label %32, !dbg !2675

; <label>:32:                                     ; preds = %39, %30
  %33 = load i8**, i8*** %7, align 8, !dbg !2676
  %34 = load i8*, i8** %33, align 8, !dbg !2679
  %35 = icmp ne i8* %34, null, !dbg !2680
  br i1 %35, label %36, label %42, !dbg !2681

; <label>:36:                                     ; preds = %32
  %37 = load i8**, i8*** %7, align 8, !dbg !2682
  %38 = load i8*, i8** %37, align 8, !dbg !2684
  call void @free(i8* %38) #8, !dbg !2685
  br label %39, !dbg !2686

; <label>:39:                                     ; preds = %36
  %40 = load i8**, i8*** %7, align 8, !dbg !2687
  %41 = getelementptr inbounds i8*, i8** %40, i32 1, !dbg !2687
  store i8** %41, i8*** %7, align 8, !dbg !2687
  br label %32, !dbg !2689, !llvm.loop !2690

; <label>:42:                                     ; preds = %32
  br label %43

; <label>:43:                                     ; preds = %42, %29
  %44 = load i8**, i8*** %3, align 8, !dbg !2692
  %45 = bitcast i8** %44 to i8*, !dbg !2692
  call void @free(i8* %45) #8, !dbg !2693
  %46 = load i32, i32* %5, align 4, !dbg !2694
  %47 = call i32* @__errno_location() #1, !dbg !2695
  store i32 %46, i32* %47, align 4, !dbg !2696
  br label %48, !dbg !2697

; <label>:48:                                     ; preds = %43, %10
  ret void, !dbg !2698
}

declare i64 @Unicode_FindLastSubstrInRange(i8*, i64, i64, i8*, i64, i64) #2

declare i32 @Str_Sprintf(i8*, i64, i8*, ...) #2

declare i32 @FileIO_Write(%struct.FileIODescriptor*, i8*, i64, i64*) #2

declare i32 @File_Rename(i8*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!45, !46}
!llvm.ident = !{!47}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !30, globals: !42)
!1 = !DIFile(filename: "fileLockPrimitive.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line213")
!2 = !{!3, !19, !26}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 264, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/fileIO.h", directory: "/home/lichi/Desktop/open-vm-tools/line213")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!6 = !DIEnumerator(name: "FILEIO_SUCCESS", value: 0)
!7 = !DIEnumerator(name: "FILEIO_CANCELLED", value: 1)
!8 = !DIEnumerator(name: "FILEIO_ERROR", value: 2)
!9 = !DIEnumerator(name: "FILEIO_OPEN_ERROR_EXIST", value: 3)
!10 = !DIEnumerator(name: "FILEIO_LOCK_FAILED", value: 4)
!11 = !DIEnumerator(name: "FILEIO_READ_ERROR_EOF", value: 5)
!12 = !DIEnumerator(name: "FILEIO_FILE_NOT_FOUND", value: 6)
!13 = !DIEnumerator(name: "FILEIO_NO_PERMISSION", value: 7)
!14 = !DIEnumerator(name: "FILEIO_FILE_NAME_TOO_LONG", value: 8)
!15 = !DIEnumerator(name: "FILEIO_WRITE_ERROR_FBIG", value: 9)
!16 = !DIEnumerator(name: "FILEIO_WRITE_ERROR_NOSPC", value: 10)
!17 = !DIEnumerator(name: "FILEIO_WRITE_ERROR_DQUOT", value: 11)
!18 = !DIEnumerator(name: "FILEIO_ERROR_LAST", value: 12)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 256, size: 32, align: 32, elements: !20)
!20 = !{!21, !22, !23, !24, !25}
!21 = !DIEnumerator(name: "FILEIO_OPEN", value: 0)
!22 = !DIEnumerator(name: "FILEIO_OPEN_EMPTY", value: 1)
!23 = !DIEnumerator(name: "FILEIO_OPEN_CREATE", value: 2)
!24 = !DIEnumerator(name: "FILEIO_OPEN_CREATE_SAFE", value: 3)
!25 = !DIEnumerator(name: "FILEIO_OPEN_CREATE_EMPTY", value: 4)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 46, size: 32, align: 32, elements: !28)
!27 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/unicodeTypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line213")
!28 = !{!29}
!29 = !DIEnumerator(name: "UNICODE_INDEX_NOT_FOUND", value: -1)
!30 = !{!31, !32, !34, !40, !41}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !36, line: 173, baseType: !37)
!36 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line213")
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !38, line: 51, baseType: !39)
!38 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line213")
!39 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!42 = !{!43}
!43 = distinct !DIGlobalVariable(name: "implicitReadToken", scope: !0, file: !44, line: 68, type: !33, isLocal: true, isDefinition: true, variable: i8* @implicitReadToken)
!44 = !DIFile(filename: "fileLockPrimitive.c", directory: "/home/lichi/Desktop/open-vm-tools/line213")
!45 = !{i32 2, !"Dwarf Version", i32 4}
!46 = !{i32 2, !"Debug Info Version", i32 3}
!47 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!48 = distinct !DISubprogram(name: "FileLockMemberValues", scope: !44, file: !44, line: 295, type: !49, isLocal: false, isDefinition: true, scopeLine: 300, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!49 = !DISubroutineType(types: !50)
!50 = !{!51, !52, !52, !32, !54, !57}
!51 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !55, line: 216, baseType: !56)
!55 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line213")
!56 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "LockValues", file: !59, line: 207, baseType: !60)
!59 = !DIFile(filename: "fileInt.h", directory: "/home/lichi/Desktop/open-vm-tools/line213")
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_values", file: !59, line: 195, size: 576, align: 64, elements: !61)
!61 = !{!62, !63, !64, !65, !66, !67, !68, !70, !76, !77}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "machineID", scope: !60, file: !59, line: 197, baseType: !32, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "executionID", scope: !60, file: !59, line: 198, baseType: !32, size: 64, align: 64, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "lockType", scope: !60, file: !59, line: 199, baseType: !32, size: 64, align: 64, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "locationChecksum", scope: !60, file: !59, line: 200, baseType: !32, size: 64, align: 64, offset: 192)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "memberName", scope: !60, file: !59, line: 201, baseType: !32, size: 64, align: 64, offset: 256)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "lamportNumber", scope: !60, file: !59, line: 202, baseType: !39, size: 32, align: 32, offset: 320)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "exclusivity", scope: !60, file: !59, line: 203, baseType: !69, size: 8, align: 8, offset: 352)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !36, line: 230, baseType: !33)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "startTimeMsec", scope: !60, file: !59, line: 204, baseType: !71, size: 64, align: 64, offset: 384)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmTimeType", file: !36, line: 354, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !36, line: 172, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !74, line: 197, baseType: !75)
!74 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line213")
!75 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "maxWaitTimeMsec", scope: !60, file: !59, line: 205, baseType: !35, size: 32, align: 32, offset: 448)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "lockList", scope: !60, file: !59, line: 206, baseType: !78, size: 64, align: 64, offset: 512)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "ActiveLock", file: !59, line: 193, baseType: !80)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "active_lock", file: !59, line: 187, size: 192, align: 64, elements: !81)
!81 = !{!82, !84, !85, !86}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !80, file: !59, line: 189, baseType: !83, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "age", scope: !80, file: !59, line: 190, baseType: !35, size: 32, align: 32, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !80, file: !59, line: 191, baseType: !69, size: 8, align: 8, offset: 96)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "dirName", scope: !80, file: !59, line: 192, baseType: !32, size: 64, align: 64, offset: 128)
!87 = !{}
!88 = !DILocalVariable(name: "lockDir", arg: 1, scope: !48, file: !44, line: 295, type: !52)
!89 = !DIExpression()
!90 = !DILocation(line: 295, column: 34, scope: !48)
!91 = !DILocalVariable(name: "fileName", arg: 2, scope: !48, file: !44, line: 296, type: !52)
!92 = !DILocation(line: 296, column: 34, scope: !48)
!93 = !DILocalVariable(name: "buffer", arg: 3, scope: !48, file: !44, line: 297, type: !32)
!94 = !DILocation(line: 297, column: 28, scope: !48)
!95 = !DILocalVariable(name: "requiredSize", arg: 4, scope: !48, file: !44, line: 298, type: !54)
!96 = !DILocation(line: 298, column: 29, scope: !48)
!97 = !DILocalVariable(name: "memberValues", arg: 5, scope: !48, file: !44, line: 299, type: !57)
!98 = !DILocation(line: 299, column: 34, scope: !48)
!99 = !DILocalVariable(name: "len", scope: !48, file: !44, line: 301, type: !54)
!100 = !DILocation(line: 301, column: 11, scope: !48)
!101 = !DILocalVariable(name: "access", scope: !48, file: !44, line: 302, type: !51)
!102 = !DILocation(line: 302, column: 8, scope: !48)
!103 = !DILocalVariable(name: "path", scope: !48, file: !44, line: 303, type: !32)
!104 = !DILocation(line: 303, column: 10, scope: !48)
!105 = !DILocalVariable(name: "fileData", scope: !48, file: !44, line: 304, type: !106)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "FileData", file: !59, line: 108, baseType: !107)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FileData", file: !59, line: 99, size: 384, align: 64, elements: !108)
!108 = !{!109, !112, !113, !114, !115, !116, !117, !118}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "fileAccessTime", scope: !107, file: !59, line: 100, baseType: !110, size: 64, align: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !36, line: 171, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !38, line: 55, baseType: !56)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "fileCreationTime", scope: !107, file: !59, line: 101, baseType: !110, size: 64, align: 64, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "fileModificationTime", scope: !107, file: !59, line: 102, baseType: !110, size: 64, align: 64, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "fileSize", scope: !107, file: !59, line: 103, baseType: !110, size: 64, align: 64, offset: 192)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "fileType", scope: !107, file: !59, line: 104, baseType: !51, size: 32, align: 32, offset: 256)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "fileMode", scope: !107, file: !59, line: 105, baseType: !51, size: 32, align: 32, offset: 288)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "fileOwner", scope: !107, file: !59, line: 106, baseType: !51, size: 32, align: 32, offset: 320)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "fileGroup", scope: !107, file: !59, line: 107, baseType: !51, size: 32, align: 32, offset: 352)
!119 = !DILocation(line: 304, column: 13, scope: !48)
!120 = !DILocalVariable(name: "result", scope: !48, file: !44, line: 305, type: !121)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "FileIOResult", file: !4, line: 318, baseType: !3)
!122 = !DILocation(line: 305, column: 17, scope: !48)
!123 = !DILocalVariable(name: "desc", scope: !48, file: !44, line: 306, type: !124)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "FileIODescriptor", file: !4, line: 79, baseType: !125)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FileIODescriptor", file: !4, line: 74, size: 192, align: 64, elements: !126)
!126 = !{!127, !128, !129, !130}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "posix", scope: !125, file: !4, line: 75, baseType: !51, size: 32, align: 32)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !125, file: !4, line: 76, baseType: !51, size: 32, align: 32, offset: 32)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "fileName", scope: !125, file: !4, line: 77, baseType: !32, size: 64, align: 64, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "lockToken", scope: !125, file: !4, line: 78, baseType: !131, size: 64, align: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FileLockToken", file: !44, line: 87, size: 320, align: 64, elements: !133)
!133 = !{!134, !135, !136, !137}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !132, file: !44, line: 89, baseType: !35, size: 32, align: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "portable", scope: !132, file: !44, line: 90, baseType: !69, size: 8, align: 8, offset: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "pathName", scope: !132, file: !44, line: 91, baseType: !32, size: 64, align: 64, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !132, file: !44, line: 99, baseType: !138, size: 192, align: 64, offset: 128)
!138 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !132, file: !44, line: 92, size: 192, align: 64, elements: !139)
!139 = !{!140, !144}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "mandatory", scope: !138, file: !44, line: 95, baseType: !141, size: 192, align: 64)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !138, file: !44, line: 93, size: 192, align: 64, elements: !142)
!142 = !{!143}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "lockFd", scope: !141, file: !44, line: 94, baseType: !124, size: 192, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "portable", scope: !138, file: !44, line: 98, baseType: !145, size: 64, align: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !138, file: !44, line: 96, size: 64, align: 64, elements: !146)
!146 = !{!147}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "lockFilePath", scope: !145, file: !44, line: 97, baseType: !32, size: 64, align: 64)
!148 = !DILocation(line: 306, column: 21, scope: !48)
!149 = !DILocalVariable(name: "argv", scope: !48, file: !44, line: 307, type: !150)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 1024, align: 64, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 16)
!153 = !DILocation(line: 307, column: 10, scope: !48)
!154 = !DILocalVariable(name: "err", scope: !48, file: !44, line: 309, type: !51)
!155 = !DILocation(line: 309, column: 8, scope: !48)
!156 = !DILocalVariable(name: "argc", scope: !48, file: !44, line: 310, type: !35)
!157 = !DILocation(line: 310, column: 11, scope: !48)
!158 = !DILocalVariable(name: "saveptr", scope: !48, file: !44, line: 311, type: !32)
!159 = !DILocation(line: 311, column: 10, scope: !48)
!160 = !DILocalVariable(name: "table", scope: !48, file: !44, line: 313, type: !161)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 192, align: 64, elements: !168)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "ParseTable", file: !44, line: 78, baseType: !163)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "parse_table", file: !44, line: 73, size: 192, align: 64, elements: !164)
!164 = !{!165, !166, !167}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !163, file: !44, line: 75, baseType: !51, size: 32, align: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !163, file: !44, line: 76, baseType: !32, size: 64, align: 64, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "valuePtr", scope: !163, file: !44, line: 77, baseType: !31, size: 64, align: 64, offset: 128)
!168 = !{!169}
!169 = !DISubrange(count: 1)
!170 = !DILocation(line: 313, column: 15, scope: !48)
!171 = !DILocation(line: 313, column: 25, scope: !48)
!172 = !DILocation(line: 314, column: 28, scope: !48)
!173 = !DILocation(line: 316, column: 40, scope: !48)
!174 = !DILocation(line: 316, column: 54, scope: !48)
!175 = !DILocation(line: 316, column: 30, scope: !48)
!176 = !DILocation(line: 323, column: 24, scope: !48)
!177 = !DILocation(line: 323, column: 38, scope: !48)
!178 = !DILocation(line: 323, column: 11, scope: !48)
!179 = !DILocation(line: 323, column: 9, scope: !48)
!180 = !DILocation(line: 325, column: 4, scope: !48)
!181 = !DILocation(line: 327, column: 11, scope: !48)
!182 = !DILocation(line: 333, column: 38, scope: !48)
!183 = !DILocation(line: 333, column: 44, scope: !48)
!184 = !DILocation(line: 333, column: 13, scope: !48)
!185 = !DILocation(line: 333, column: 11, scope: !48)
!186 = !DILocation(line: 336, column: 26, scope: !187)
!187 = distinct !DILexicalBlock(scope: !48, file: !44, line: 336, column: 8)
!188 = !DILocation(line: 336, column: 9, scope: !187)
!189 = !DILocation(line: 336, column: 8, scope: !48)
!190 = !DILocation(line: 337, column: 48, scope: !191)
!191 = distinct !DILexicalBlock(scope: !187, file: !44, line: 336, column: 35)
!192 = !DILocation(line: 337, column: 47, scope: !191)
!193 = !DILocation(line: 337, column: 13, scope: !194)
!194 = !DILexicalBlockFile(scope: !191, file: !44, discriminator: 1)
!195 = !DILocation(line: 337, column: 11, scope: !191)
!196 = !DILocation(line: 346, column: 11, scope: !197)
!197 = distinct !DILexicalBlock(scope: !191, file: !44, line: 346, column: 11)
!198 = !DILocation(line: 346, column: 15, scope: !197)
!199 = !DILocation(line: 346, column: 11, scope: !191)
!200 = !DILocation(line: 348, column: 18, scope: !201)
!201 = distinct !DILexicalBlock(scope: !197, file: !44, line: 346, column: 25)
!202 = !DILocation(line: 348, column: 41, scope: !201)
!203 = !DILocation(line: 348, column: 24, scope: !201)
!204 = !DILocation(line: 347, column: 10, scope: !201)
!205 = !DILocation(line: 349, column: 7, scope: !201)
!206 = !DILocation(line: 351, column: 7, scope: !191)
!207 = !DILocation(line: 355, column: 26, scope: !48)
!208 = !DILocation(line: 355, column: 10, scope: !48)
!209 = !DILocation(line: 355, column: 8, scope: !48)
!210 = !DILocation(line: 357, column: 8, scope: !211)
!211 = distinct !DILexicalBlock(scope: !48, file: !44, line: 357, column: 8)
!212 = !DILocation(line: 357, column: 12, scope: !211)
!213 = !DILocation(line: 357, column: 8, scope: !48)
!214 = !DILocation(line: 365, column: 11, scope: !215)
!215 = distinct !DILexicalBlock(scope: !216, file: !44, line: 365, column: 11)
!216 = distinct !DILexicalBlock(scope: !211, file: !44, line: 357, column: 18)
!217 = !DILocation(line: 365, column: 15, scope: !215)
!218 = !DILocation(line: 365, column: 11, scope: !216)
!219 = !DILocation(line: 367, column: 18, scope: !220)
!220 = distinct !DILexicalBlock(scope: !215, file: !44, line: 365, column: 25)
!221 = !DILocation(line: 367, column: 41, scope: !220)
!222 = !DILocation(line: 367, column: 24, scope: !220)
!223 = !DILocation(line: 366, column: 10, scope: !220)
!224 = !DILocation(line: 368, column: 7, scope: !220)
!225 = !DILocation(line: 370, column: 7, scope: !216)
!226 = !DILocation(line: 372, column: 7, scope: !216)
!227 = !DILocation(line: 376, column: 17, scope: !228)
!228 = distinct !DILexicalBlock(scope: !48, file: !44, line: 376, column: 8)
!229 = !DILocation(line: 376, column: 29, scope: !228)
!230 = !DILocation(line: 376, column: 26, scope: !228)
!231 = !DILocation(line: 376, column: 8, scope: !48)
!232 = !DILocation(line: 378, column: 29, scope: !233)
!233 = distinct !DILexicalBlock(scope: !228, file: !44, line: 376, column: 43)
!234 = !DILocation(line: 378, column: 44, scope: !233)
!235 = !DILocation(line: 378, column: 54, scope: !233)
!236 = !DILocation(line: 377, column: 7, scope: !233)
!237 = !DILocation(line: 380, column: 7, scope: !233)
!238 = !DILocation(line: 382, column: 7, scope: !233)
!239 = !DILocation(line: 386, column: 32, scope: !48)
!240 = !DILocation(line: 386, column: 40, scope: !48)
!241 = !DILocation(line: 386, column: 13, scope: !48)
!242 = !DILocation(line: 386, column: 11, scope: !48)
!243 = !DILocation(line: 388, column: 4, scope: !48)
!244 = !DILocation(line: 390, column: 26, scope: !245)
!245 = distinct !DILexicalBlock(scope: !48, file: !44, line: 390, column: 8)
!246 = !DILocation(line: 390, column: 9, scope: !245)
!247 = !DILocation(line: 390, column: 8, scope: !48)
!248 = !DILocation(line: 391, column: 48, scope: !249)
!249 = distinct !DILexicalBlock(scope: !245, file: !44, line: 390, column: 35)
!250 = !DILocation(line: 391, column: 47, scope: !249)
!251 = !DILocation(line: 391, column: 13, scope: !252)
!252 = !DILexicalBlockFile(scope: !249, file: !44, discriminator: 1)
!253 = !DILocation(line: 391, column: 11, scope: !249)
!254 = !DILocation(line: 394, column: 29, scope: !249)
!255 = !DILocation(line: 394, column: 52, scope: !249)
!256 = !DILocation(line: 394, column: 35, scope: !249)
!257 = !DILocation(line: 393, column: 7, scope: !249)
!258 = !DILocation(line: 396, column: 7, scope: !249)
!259 = !DILocation(line: 399, column: 8, scope: !260)
!260 = distinct !DILexicalBlock(scope: !48, file: !44, line: 399, column: 8)
!261 = !DILocation(line: 399, column: 15, scope: !260)
!262 = !DILocation(line: 399, column: 12, scope: !260)
!263 = !DILocation(line: 399, column: 8, scope: !48)
!264 = !DILocation(line: 401, column: 29, scope: !265)
!265 = distinct !DILexicalBlock(scope: !260, file: !44, line: 399, column: 29)
!266 = !DILocation(line: 401, column: 35, scope: !265)
!267 = !DILocation(line: 401, column: 40, scope: !265)
!268 = !DILocation(line: 400, column: 7, scope: !265)
!269 = !DILocation(line: 403, column: 11, scope: !265)
!270 = !DILocation(line: 404, column: 7, scope: !265)
!271 = !DILocation(line: 399, column: 15, scope: !272)
!272 = !DILexicalBlockFile(scope: !260, file: !44, discriminator: 1)
!273 = !DILocation(line: 410, column: 14, scope: !274)
!274 = distinct !DILexicalBlock(scope: !48, file: !44, line: 410, column: 4)
!275 = !DILocation(line: 410, column: 9, scope: !274)
!276 = !DILocation(line: 410, column: 19, scope: !277)
!277 = !DILexicalBlockFile(scope: !278, file: !44, discriminator: 1)
!278 = distinct !DILexicalBlock(scope: !274, file: !44, line: 410, column: 4)
!279 = !DILocation(line: 410, column: 24, scope: !277)
!280 = !DILocation(line: 410, column: 4, scope: !277)
!281 = !DILocation(line: 411, column: 30, scope: !282)
!282 = distinct !DILexicalBlock(scope: !278, file: !44, line: 410, column: 38)
!283 = !DILocation(line: 411, column: 35, scope: !282)
!284 = !DILocation(line: 411, column: 29, scope: !282)
!285 = !DILocation(line: 411, column: 43, scope: !286)
!286 = !DILexicalBlockFile(scope: !282, file: !44, discriminator: 1)
!287 = !DILocation(line: 411, column: 29, scope: !286)
!288 = !DILocation(line: 411, column: 29, scope: !289)
!289 = !DILexicalBlockFile(scope: !282, file: !44, discriminator: 2)
!290 = !DILocation(line: 411, column: 29, scope: !291)
!291 = !DILexicalBlockFile(scope: !282, file: !44, discriminator: 3)
!292 = !DILocation(line: 411, column: 20, scope: !291)
!293 = !DILocation(line: 411, column: 12, scope: !291)
!294 = !DILocation(line: 411, column: 7, scope: !291)
!295 = !DILocation(line: 411, column: 18, scope: !291)
!296 = !DILocation(line: 413, column: 16, scope: !297)
!297 = distinct !DILexicalBlock(scope: !282, file: !44, line: 413, column: 11)
!298 = !DILocation(line: 413, column: 11, scope: !297)
!299 = !DILocation(line: 413, column: 22, scope: !297)
!300 = !DILocation(line: 413, column: 11, scope: !282)
!301 = !DILocation(line: 414, column: 10, scope: !302)
!302 = distinct !DILexicalBlock(scope: !297, file: !44, line: 413, column: 30)
!303 = !DILocation(line: 416, column: 4, scope: !282)
!304 = !DILocation(line: 410, column: 34, scope: !305)
!305 = !DILexicalBlockFile(scope: !278, file: !44, discriminator: 2)
!306 = !DILocation(line: 410, column: 4, scope: !305)
!307 = distinct !{!307, !308}
!308 = !DILocation(line: 410, column: 4, scope: !48)
!309 = !DILocation(line: 436, column: 4, scope: !48)
!310 = !DILocation(line: 436, column: 18, scope: !48)
!311 = !DILocation(line: 436, column: 35, scope: !48)
!312 = !DILocation(line: 438, column: 9, scope: !313)
!313 = distinct !DILexicalBlock(scope: !48, file: !44, line: 438, column: 8)
!314 = !DILocation(line: 438, column: 14, scope: !313)
!315 = !DILocation(line: 438, column: 19, scope: !313)
!316 = !DILocation(line: 438, column: 24, scope: !317)
!317 = !DILexicalBlockFile(scope: !313, file: !44, discriminator: 1)
!318 = !DILocation(line: 438, column: 29, scope: !317)
!319 = !DILocation(line: 438, column: 36, scope: !317)
!320 = !DILocation(line: 439, column: 25, scope: !313)
!321 = !DILocation(line: 439, column: 54, scope: !313)
!322 = !DILocation(line: 438, column: 8, scope: !323)
!323 = !DILexicalBlockFile(scope: !48, file: !44, discriminator: 2)
!324 = !DILocation(line: 440, column: 7, scope: !325)
!325 = distinct !DILexicalBlock(scope: !313, file: !44, line: 439, column: 65)
!326 = !DILocation(line: 443, column: 9, scope: !327)
!327 = distinct !DILexicalBlock(scope: !48, file: !44, line: 443, column: 8)
!328 = !DILocation(line: 443, column: 14, scope: !327)
!329 = !DILocation(line: 443, column: 19, scope: !327)
!330 = !DILocation(line: 443, column: 40, scope: !331)
!331 = !DILexicalBlockFile(scope: !327, file: !44, discriminator: 1)
!332 = !DILocation(line: 443, column: 46, scope: !331)
!333 = !DILocation(line: 443, column: 51, scope: !331)
!334 = !DILocation(line: 444, column: 40, scope: !327)
!335 = !DILocation(line: 443, column: 22, scope: !331)
!336 = !DILocation(line: 443, column: 8, scope: !331)
!337 = !DILocation(line: 445, column: 7, scope: !338)
!338 = distinct !DILexicalBlock(scope: !327, file: !44, line: 444, column: 84)
!339 = !DILocation(line: 455, column: 16, scope: !340)
!340 = distinct !DILexicalBlock(scope: !48, file: !44, line: 455, column: 8)
!341 = !DILocation(line: 455, column: 9, scope: !340)
!342 = !DILocation(line: 455, column: 30, scope: !340)
!343 = !DILocation(line: 455, column: 38, scope: !340)
!344 = !DILocation(line: 456, column: 16, scope: !340)
!345 = !DILocation(line: 456, column: 9, scope: !340)
!346 = !DILocation(line: 456, column: 30, scope: !340)
!347 = !DILocation(line: 456, column: 38, scope: !340)
!348 = !DILocation(line: 457, column: 16, scope: !340)
!349 = !DILocation(line: 457, column: 9, scope: !340)
!350 = !DILocation(line: 457, column: 30, scope: !340)
!351 = !DILocation(line: 457, column: 38, scope: !340)
!352 = !DILocation(line: 458, column: 9, scope: !340)
!353 = !DILocation(line: 458, column: 14, scope: !340)
!354 = !DILocation(line: 458, column: 20, scope: !340)
!355 = !DILocation(line: 459, column: 27, scope: !340)
!356 = !DILocation(line: 459, column: 33, scope: !340)
!357 = !DILocation(line: 459, column: 38, scope: !340)
!358 = !DILocation(line: 459, column: 43, scope: !340)
!359 = !DILocation(line: 459, column: 9, scope: !340)
!360 = !DILocation(line: 455, column: 8, scope: !361)
!361 = !DILexicalBlockFile(scope: !48, file: !44, discriminator: 1)
!362 = !DILocalVariable(name: "newBuffer", scope: !363, file: !44, line: 460, type: !32)
!363 = distinct !DILexicalBlock(scope: !340, file: !44, line: 459, column: 87)
!364 = !DILocation(line: 460, column: 16, scope: !363)
!365 = !DILocation(line: 463, column: 39, scope: !363)
!366 = !DILocation(line: 463, column: 48, scope: !363)
!367 = !DILocation(line: 463, column: 57, scope: !363)
!368 = !DILocation(line: 463, column: 66, scope: !363)
!369 = !DILocation(line: 464, column: 39, scope: !363)
!370 = !DILocation(line: 464, column: 48, scope: !363)
!371 = !DILocation(line: 464, column: 57, scope: !363)
!372 = !DILocation(line: 462, column: 22, scope: !363)
!373 = !DILocation(line: 462, column: 20, scope: !363)
!374 = !DILocation(line: 466, column: 20, scope: !363)
!375 = !DILocation(line: 466, column: 28, scope: !363)
!376 = !DILocation(line: 466, column: 39, scope: !363)
!377 = !DILocation(line: 466, column: 9, scope: !363)
!378 = !DILocation(line: 468, column: 20, scope: !363)
!379 = !DILocation(line: 468, column: 9, scope: !363)
!380 = !DILocation(line: 470, column: 9, scope: !363)
!381 = !DILocation(line: 473, column: 15, scope: !382)
!382 = distinct !DILexicalBlock(scope: !48, file: !44, line: 473, column: 8)
!383 = !DILocation(line: 473, column: 31, scope: !382)
!384 = !DILocation(line: 473, column: 45, scope: !382)
!385 = !DILocation(line: 473, column: 8, scope: !382)
!386 = !DILocation(line: 473, column: 60, scope: !382)
!387 = !DILocation(line: 473, column: 8, scope: !48)
!388 = !DILocation(line: 474, column: 7, scope: !389)
!389 = distinct !DILexicalBlock(scope: !382, file: !44, line: 473, column: 66)
!390 = !DILocation(line: 477, column: 16, scope: !391)
!391 = distinct !DILexicalBlock(scope: !48, file: !44, line: 477, column: 8)
!392 = !DILocation(line: 477, column: 9, scope: !391)
!393 = !DILocation(line: 477, column: 30, scope: !391)
!394 = !DILocation(line: 477, column: 36, scope: !391)
!395 = !DILocation(line: 478, column: 16, scope: !391)
!396 = !DILocation(line: 478, column: 9, scope: !391)
!397 = !DILocation(line: 478, column: 30, scope: !391)
!398 = !DILocation(line: 477, column: 8, scope: !361)
!399 = !DILocation(line: 479, column: 7, scope: !400)
!400 = distinct !DILexicalBlock(scope: !391, file: !44, line: 478, column: 37)
!401 = !DILocation(line: 482, column: 30, scope: !48)
!402 = !DILocation(line: 482, column: 4, scope: !48)
!403 = !DILocation(line: 482, column: 18, scope: !48)
!404 = !DILocation(line: 482, column: 28, scope: !48)
!405 = !DILocation(line: 483, column: 32, scope: !48)
!406 = !DILocation(line: 483, column: 4, scope: !48)
!407 = !DILocation(line: 483, column: 18, scope: !48)
!408 = !DILocation(line: 483, column: 30, scope: !48)
!409 = !DILocation(line: 484, column: 29, scope: !48)
!410 = !DILocation(line: 484, column: 4, scope: !48)
!411 = !DILocation(line: 484, column: 18, scope: !48)
!412 = !DILocation(line: 484, column: 27, scope: !48)
!413 = !DILocation(line: 485, column: 49, scope: !48)
!414 = !DILocation(line: 485, column: 31, scope: !48)
!415 = !DILocation(line: 485, column: 4, scope: !48)
!416 = !DILocation(line: 485, column: 18, scope: !48)
!417 = !DILocation(line: 485, column: 29, scope: !48)
!418 = !DILocation(line: 487, column: 15, scope: !48)
!419 = !DILocation(line: 487, column: 4, scope: !48)
!420 = !DILocation(line: 489, column: 4, scope: !48)
!421 = !DILocation(line: 493, column: 12, scope: !48)
!422 = !DILocation(line: 492, column: 4, scope: !48)
!423 = !DILocation(line: 495, column: 8, scope: !424)
!424 = distinct !DILexicalBlock(scope: !48, file: !44, line: 495, column: 8)
!425 = !DILocation(line: 495, column: 8, scope: !48)
!426 = !DILocalVariable(name: "i", scope: !427, file: !44, line: 496, type: !35)
!427 = distinct !DILexicalBlock(scope: !424, file: !44, line: 495, column: 14)
!428 = !DILocation(line: 496, column: 14, scope: !427)
!429 = !DILocation(line: 498, column: 60, scope: !427)
!430 = !DILocation(line: 498, column: 7, scope: !427)
!431 = !DILocation(line: 500, column: 14, scope: !432)
!432 = distinct !DILexicalBlock(scope: !427, file: !44, line: 500, column: 7)
!433 = !DILocation(line: 500, column: 12, scope: !432)
!434 = !DILocation(line: 500, column: 19, scope: !435)
!435 = !DILexicalBlockFile(scope: !436, file: !44, discriminator: 1)
!436 = distinct !DILexicalBlock(scope: !432, file: !44, line: 500, column: 7)
!437 = !DILocation(line: 500, column: 23, scope: !435)
!438 = !DILocation(line: 500, column: 21, scope: !435)
!439 = !DILocation(line: 500, column: 7, scope: !435)
!440 = !DILocation(line: 501, column: 62, scope: !441)
!441 = distinct !DILexicalBlock(scope: !436, file: !44, line: 500, column: 34)
!442 = !DILocation(line: 502, column: 14, scope: !441)
!443 = !DILocation(line: 502, column: 22, scope: !441)
!444 = !DILocation(line: 502, column: 17, scope: !441)
!445 = !DILocation(line: 501, column: 10, scope: !441)
!446 = !DILocation(line: 503, column: 7, scope: !441)
!447 = !DILocation(line: 500, column: 30, scope: !448)
!448 = !DILexicalBlockFile(scope: !436, file: !44, discriminator: 2)
!449 = !DILocation(line: 500, column: 7, scope: !448)
!450 = distinct !{!450, !451}
!451 = !DILocation(line: 500, column: 7, scope: !427)
!452 = !DILocation(line: 504, column: 4, scope: !427)
!453 = !DILocation(line: 507, column: 24, scope: !48)
!454 = !DILocation(line: 507, column: 10, scope: !48)
!455 = !DILocation(line: 507, column: 8, scope: !48)
!456 = !DILocation(line: 509, column: 8, scope: !457)
!457 = distinct !DILexicalBlock(scope: !48, file: !44, line: 509, column: 8)
!458 = !DILocation(line: 509, column: 12, scope: !457)
!459 = !DILocation(line: 509, column: 8, scope: !48)
!460 = !DILocation(line: 510, column: 11, scope: !461)
!461 = distinct !DILexicalBlock(scope: !457, file: !44, line: 509, column: 18)
!462 = !DILocation(line: 511, column: 4, scope: !461)
!463 = !DILocation(line: 509, column: 15, scope: !464)
!464 = !DILexicalBlockFile(scope: !457, file: !44, discriminator: 1)
!465 = !DILocation(line: 514, column: 15, scope: !48)
!466 = !DILocation(line: 514, column: 4, scope: !48)
!467 = !DILocation(line: 516, column: 11, scope: !48)
!468 = !DILocation(line: 516, column: 4, scope: !48)
!469 = !DILocation(line: 517, column: 1, scope: !48)
!470 = distinct !DISubprogram(name: "FileIO_IsSuccess", scope: !4, file: !4, line: 514, type: !471, isLocal: true, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!471 = !DISubroutineType(types: !472)
!472 = !{!69, !121}
!473 = !DILocalVariable(name: "res", arg: 1, scope: !470, file: !4, line: 514, type: !121)
!474 = !DILocation(line: 514, column: 31, scope: !470)
!475 = !DILocation(line: 516, column: 11, scope: !470)
!476 = !DILocation(line: 516, column: 15, scope: !470)
!477 = !DILocation(line: 516, column: 4, scope: !470)
!478 = distinct !DISubprogram(name: "FileMapErrorToErrno", scope: !59, file: !59, line: 160, type: !479, isLocal: true, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!479 = !DISubroutineType(types: !480)
!480 = !{!51, !52, !481}
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "Err_Number", file: !482, line: 42, baseType: !51)
!482 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/err.h", directory: "/home/lichi/Desktop/open-vm-tools/line213")
!483 = !DILocalVariable(name: "functionName", arg: 1, scope: !478, file: !59, line: 160, type: !52)
!484 = !DILocation(line: 160, column: 33, scope: !478)
!485 = !DILocalVariable(name: "status", arg: 2, scope: !478, file: !59, line: 161, type: !481)
!486 = !DILocation(line: 161, column: 32, scope: !478)
!487 = !DILocation(line: 163, column: 11, scope: !478)
!488 = !DILocation(line: 163, column: 4, scope: !478)
!489 = distinct !DISubprogram(name: "FileLockParseArgs", scope: !44, file: !44, line: 230, type: !490, isLocal: true, isDefinition: true, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!490 = !DISubroutineType(types: !491)
!491 = !{!69, !40, !35, !492, !35}
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64, align: 64)
!493 = !DILocalVariable(name: "argv", arg: 1, scope: !489, file: !44, line: 230, type: !40)
!494 = !DILocation(line: 230, column: 25, scope: !489)
!495 = !DILocalVariable(name: "argCount", arg: 2, scope: !489, file: !44, line: 231, type: !35)
!496 = !DILocation(line: 231, column: 26, scope: !489)
!497 = !DILocalVariable(name: "table", arg: 3, scope: !489, file: !44, line: 232, type: !492)
!498 = !DILocation(line: 232, column: 31, scope: !489)
!499 = !DILocalVariable(name: "tableSize", arg: 4, scope: !489, file: !44, line: 233, type: !35)
!500 = !DILocation(line: 233, column: 26, scope: !489)
!501 = !DILocalVariable(name: "argPos", scope: !489, file: !44, line: 235, type: !35)
!502 = !DILocation(line: 235, column: 11, scope: !489)
!503 = !DILocation(line: 237, column: 4, scope: !489)
!504 = !DILocation(line: 237, column: 11, scope: !505)
!505 = !DILexicalBlockFile(scope: !489, file: !44, discriminator: 1)
!506 = !DILocation(line: 237, column: 4, scope: !505)
!507 = !DILocalVariable(name: "i", scope: !508, file: !44, line: 238, type: !35)
!508 = distinct !DILexicalBlock(scope: !489, file: !44, line: 237, column: 21)
!509 = !DILocation(line: 238, column: 14, scope: !508)
!510 = !DILocalVariable(name: "p", scope: !508, file: !44, line: 239, type: !32)
!511 = !DILocation(line: 239, column: 13, scope: !508)
!512 = !DILocation(line: 239, column: 29, scope: !508)
!513 = !DILocation(line: 239, column: 24, scope: !508)
!514 = !DILocation(line: 239, column: 17, scope: !508)
!515 = !DILocation(line: 242, column: 12, scope: !516)
!516 = distinct !DILexicalBlock(scope: !508, file: !44, line: 242, column: 11)
!517 = !DILocation(line: 242, column: 14, scope: !516)
!518 = !DILocation(line: 242, column: 22, scope: !516)
!519 = !DILocation(line: 242, column: 26, scope: !520)
!520 = !DILexicalBlockFile(scope: !516, file: !44, discriminator: 1)
!521 = !DILocation(line: 242, column: 36, scope: !520)
!522 = !DILocation(line: 242, column: 31, scope: !520)
!523 = !DILocation(line: 242, column: 28, scope: !520)
!524 = !DILocation(line: 242, column: 45, scope: !520)
!525 = !DILocation(line: 242, column: 49, scope: !526)
!526 = !DILexicalBlockFile(scope: !516, file: !44, discriminator: 2)
!527 = !DILocation(line: 242, column: 54, scope: !526)
!528 = !DILocation(line: 242, column: 11, scope: !526)
!529 = !DILocation(line: 243, column: 10, scope: !530)
!530 = distinct !DILexicalBlock(scope: !516, file: !44, line: 242, column: 64)
!531 = !DILocation(line: 246, column: 8, scope: !508)
!532 = !DILocation(line: 246, column: 10, scope: !508)
!533 = !DILocation(line: 249, column: 14, scope: !534)
!534 = distinct !DILexicalBlock(scope: !508, file: !44, line: 249, column: 7)
!535 = !DILocation(line: 249, column: 12, scope: !534)
!536 = !DILocation(line: 249, column: 19, scope: !537)
!537 = !DILexicalBlockFile(scope: !538, file: !44, discriminator: 1)
!538 = distinct !DILexicalBlock(scope: !534, file: !44, line: 249, column: 7)
!539 = !DILocation(line: 249, column: 23, scope: !537)
!540 = !DILocation(line: 249, column: 21, scope: !537)
!541 = !DILocation(line: 249, column: 7, scope: !537)
!542 = !DILocation(line: 250, column: 26, scope: !543)
!543 = distinct !DILexicalBlock(scope: !544, file: !44, line: 250, column: 14)
!544 = distinct !DILexicalBlock(scope: !538, file: !44, line: 249, column: 39)
!545 = !DILocation(line: 250, column: 21, scope: !543)
!546 = !DILocation(line: 250, column: 41, scope: !543)
!547 = !DILocation(line: 250, column: 35, scope: !543)
!548 = !DILocation(line: 250, column: 44, scope: !543)
!549 = !DILocation(line: 250, column: 14, scope: !543)
!550 = !DILocation(line: 250, column: 50, scope: !543)
!551 = !DILocation(line: 250, column: 14, scope: !544)
!552 = !DILocation(line: 251, column: 27, scope: !553)
!553 = distinct !DILexicalBlock(scope: !543, file: !44, line: 250, column: 56)
!554 = !DILocation(line: 251, column: 21, scope: !553)
!555 = !DILocation(line: 251, column: 30, scope: !553)
!556 = !DILocation(line: 251, column: 13, scope: !553)
!557 = !DILocation(line: 253, column: 28, scope: !558)
!558 = distinct !DILexicalBlock(scope: !559, file: !44, line: 253, column: 20)
!559 = distinct !DILexicalBlock(scope: !553, file: !44, line: 251, column: 36)
!560 = !DILocation(line: 253, column: 57, scope: !558)
!561 = !DILocation(line: 253, column: 51, scope: !558)
!562 = !DILocation(line: 253, column: 60, scope: !558)
!563 = !DILocation(line: 253, column: 40, scope: !558)
!564 = !DILocation(line: 253, column: 20, scope: !558)
!565 = !DILocation(line: 253, column: 70, scope: !558)
!566 = !DILocation(line: 253, column: 20, scope: !559)
!567 = !DILocation(line: 254, column: 19, scope: !568)
!568 = distinct !DILexicalBlock(scope: !558, file: !44, line: 253, column: 76)
!569 = !DILocation(line: 256, column: 16, scope: !559)
!570 = !DILocation(line: 259, column: 50, scope: !559)
!571 = !DILocation(line: 259, column: 34, scope: !559)
!572 = !DILocation(line: 259, column: 28, scope: !559)
!573 = !DILocation(line: 259, column: 37, scope: !559)
!574 = !DILocation(line: 259, column: 18, scope: !559)
!575 = !DILocation(line: 259, column: 47, scope: !559)
!576 = !DILocation(line: 260, column: 16, scope: !559)
!577 = !DILocation(line: 262, column: 10, scope: !553)
!578 = !DILocation(line: 263, column: 7, scope: !544)
!579 = !DILocation(line: 249, column: 35, scope: !580)
!580 = !DILexicalBlockFile(scope: !538, file: !44, discriminator: 2)
!581 = !DILocation(line: 249, column: 7, scope: !580)
!582 = distinct !{!582, !583}
!583 = !DILocation(line: 249, column: 7, scope: !508)
!584 = !DILocation(line: 265, column: 8, scope: !508)
!585 = !DILocation(line: 265, column: 10, scope: !508)
!586 = !DILocation(line: 267, column: 13, scope: !508)
!587 = !DILocation(line: 268, column: 15, scope: !508)
!588 = !DILocation(line: 237, column: 4, scope: !589)
!589 = !DILexicalBlockFile(scope: !489, file: !44, discriminator: 2)
!590 = distinct !{!590, !503}
!591 = !DILocation(line: 271, column: 4, scope: !489)
!592 = !DILocation(line: 272, column: 1, scope: !489)
!593 = distinct !DISubprogram(name: "Posix_Free", scope: !594, file: !594, line: 129, type: !595, isLocal: true, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!594 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/posix.h", directory: "/home/lichi/Desktop/open-vm-tools/line213")
!595 = !DISubroutineType(types: !596)
!596 = !{null, !31}
!597 = !DILocalVariable(name: "p", arg: 1, scope: !593, file: !594, line: 129, type: !31)
!598 = !DILocation(line: 129, column: 18, scope: !593)
!599 = !DILocalVariable(name: "err", scope: !593, file: !594, line: 131, type: !51)
!600 = !DILocation(line: 131, column: 8, scope: !593)
!601 = !DILocation(line: 131, column: 15, scope: !593)
!602 = !DILocation(line: 131, column: 14, scope: !593)
!603 = !DILocation(line: 132, column: 9, scope: !593)
!604 = !DILocation(line: 132, column: 4, scope: !593)
!605 = !DILocation(line: 133, column: 11, scope: !593)
!606 = !DILocation(line: 133, column: 5, scope: !593)
!607 = !DILocation(line: 133, column: 9, scope: !593)
!608 = !DILocation(line: 134, column: 1, scope: !593)
!609 = distinct !DISubprogram(name: "FileLockValidName", scope: !44, file: !44, line: 538, type: !610, isLocal: false, isDefinition: true, scopeLine: 539, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!610 = !DISubroutineType(types: !611)
!611 = !{!69, !52}
!612 = !DILocalVariable(name: "fileName", arg: 1, scope: !609, file: !44, line: 538, type: !52)
!613 = !DILocation(line: 538, column: 31, scope: !609)
!614 = !DILocalVariable(name: "i", scope: !609, file: !44, line: 540, type: !35)
!615 = !DILocation(line: 540, column: 11, scope: !609)
!616 = !DILocation(line: 545, column: 48, scope: !617)
!617 = distinct !DILexicalBlock(scope: !609, file: !44, line: 545, column: 8)
!618 = !DILocation(line: 545, column: 8, scope: !617)
!619 = !DILocation(line: 546, column: 37, scope: !617)
!620 = !DILocation(line: 545, column: 8, scope: !609)
!621 = !DILocation(line: 547, column: 7, scope: !622)
!622 = distinct !DILexicalBlock(scope: !617, file: !44, line: 546, column: 65)
!623 = !DILocation(line: 551, column: 11, scope: !624)
!624 = distinct !DILexicalBlock(scope: !609, file: !44, line: 551, column: 4)
!625 = !DILocation(line: 551, column: 9, scope: !624)
!626 = !DILocation(line: 551, column: 16, scope: !627)
!627 = !DILexicalBlockFile(scope: !628, file: !44, discriminator: 1)
!628 = distinct !DILexicalBlock(scope: !624, file: !44, line: 551, column: 4)
!629 = !DILocation(line: 551, column: 18, scope: !627)
!630 = !DILocation(line: 551, column: 4, scope: !627)
!631 = !DILocation(line: 552, column: 58, scope: !632)
!632 = distinct !DILexicalBlock(scope: !633, file: !44, line: 552, column: 11)
!633 = distinct !DILexicalBlock(scope: !628, file: !44, line: 551, column: 28)
!634 = !DILocation(line: 552, column: 68, scope: !632)
!635 = !DILocation(line: 552, column: 70, scope: !632)
!636 = !DILocation(line: 552, column: 11, scope: !632)
!637 = !DILocation(line: 553, column: 40, scope: !632)
!638 = !DILocation(line: 552, column: 11, scope: !633)
!639 = !DILocation(line: 554, column: 10, scope: !640)
!640 = distinct !DILexicalBlock(scope: !632, file: !44, line: 553, column: 68)
!641 = !DILocation(line: 556, column: 4, scope: !633)
!642 = !DILocation(line: 551, column: 24, scope: !643)
!643 = !DILexicalBlockFile(scope: !628, file: !44, discriminator: 2)
!644 = !DILocation(line: 551, column: 4, scope: !643)
!645 = distinct !{!645, !646}
!646 = !DILocation(line: 551, column: 4, scope: !609)
!647 = !DILocation(line: 559, column: 28, scope: !609)
!648 = !DILocation(line: 559, column: 11, scope: !609)
!649 = !DILocation(line: 559, column: 4, scope: !609)
!650 = !DILocation(line: 560, column: 1, scope: !609)
!651 = distinct !DISubprogram(name: "Unicode_EndsWith", scope: !652, file: !652, line: 315, type: !653, isLocal: true, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!652 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/unicodeOperations.h", directory: "/home/lichi/Desktop/open-vm-tools/line213")
!653 = !DISubroutineType(types: !654)
!654 = !{!69, !52, !52}
!655 = !DILocalVariable(name: "str", arg: 1, scope: !651, file: !652, line: 315, type: !52)
!656 = !DILocation(line: 315, column: 30, scope: !651)
!657 = !DILocalVariable(name: "suffix", arg: 2, scope: !651, file: !652, line: 316, type: !52)
!658 = !DILocation(line: 316, column: 30, scope: !651)
!659 = !DILocation(line: 318, column: 27, scope: !651)
!660 = !DILocation(line: 318, column: 32, scope: !651)
!661 = !DILocation(line: 318, column: 11, scope: !651)
!662 = !DILocation(line: 318, column: 4, scope: !651)
!663 = distinct !DISubprogram(name: "FileUnlockIntrinsic", scope: !44, file: !44, line: 989, type: !664, isLocal: false, isDefinition: true, scopeLine: 990, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!664 = !DISubroutineType(types: !665)
!665 = !{!51, !666}
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64, align: 64)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "FileLockToken", file: !668, line: 55, baseType: !132)
!668 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/fileLock.h", directory: "/home/lichi/Desktop/open-vm-tools/line213")
!669 = !DILocalVariable(name: "tokenPtr", arg: 1, scope: !663, file: !44, line: 989, type: !666)
!670 = !DILocation(line: 989, column: 36, scope: !663)
!671 = !DILocalVariable(name: "err", scope: !663, file: !44, line: 991, type: !51)
!672 = !DILocation(line: 991, column: 8, scope: !663)
!673 = !DILocation(line: 997, column: 8, scope: !674)
!674 = distinct !DILexicalBlock(scope: !663, file: !44, line: 997, column: 8)
!675 = !DILocation(line: 997, column: 18, scope: !674)
!676 = !DILocation(line: 997, column: 8, scope: !663)
!677 = !DILocation(line: 1004, column: 11, scope: !678)
!678 = distinct !DILexicalBlock(scope: !679, file: !44, line: 1004, column: 11)
!679 = distinct !DILexicalBlock(scope: !674, file: !44, line: 997, column: 28)
!680 = !DILocation(line: 1004, column: 21, scope: !678)
!681 = !DILocation(line: 1004, column: 23, scope: !678)
!682 = !DILocation(line: 1004, column: 32, scope: !678)
!683 = !DILocation(line: 1004, column: 45, scope: !678)
!684 = !DILocation(line: 1004, column: 11, scope: !679)
!685 = !DILocalVariable(name: "lockDir", scope: !686, file: !44, line: 1005, type: !32)
!686 = distinct !DILexicalBlock(scope: !678, file: !44, line: 1004, column: 68)
!687 = !DILocation(line: 1005, column: 16, scope: !686)
!688 = !DILocation(line: 1008, column: 35, scope: !686)
!689 = !DILocation(line: 1008, column: 45, scope: !686)
!690 = !DILocation(line: 1008, column: 20, scope: !686)
!691 = !DILocation(line: 1008, column: 18, scope: !686)
!692 = !DILocation(line: 1015, column: 30, scope: !686)
!693 = !DILocation(line: 1015, column: 40, scope: !686)
!694 = !DILocation(line: 1015, column: 42, scope: !686)
!695 = !DILocation(line: 1015, column: 51, scope: !686)
!696 = !DILocation(line: 1015, column: 16, scope: !686)
!697 = !DILocation(line: 1015, column: 14, scope: !686)
!698 = !DILocation(line: 1017, column: 31, scope: !686)
!699 = !DILocation(line: 1017, column: 10, scope: !686)
!700 = !DILocation(line: 1019, column: 14, scope: !701)
!701 = distinct !DILexicalBlock(scope: !686, file: !44, line: 1019, column: 14)
!702 = !DILocation(line: 1019, column: 18, scope: !701)
!703 = !DILocation(line: 1019, column: 14, scope: !704)
!704 = !DILexicalBlockFile(scope: !686, file: !44, discriminator: 1)
!705 = !DILocation(line: 1021, column: 17, scope: !706)
!706 = distinct !DILexicalBlock(scope: !701, file: !44, line: 1019, column: 24)
!707 = !DILocation(line: 1021, column: 27, scope: !706)
!708 = !DILocation(line: 1021, column: 29, scope: !706)
!709 = !DILocation(line: 1021, column: 38, scope: !706)
!710 = !DILocation(line: 1021, column: 69, scope: !706)
!711 = !DILocation(line: 1021, column: 52, scope: !706)
!712 = !DILocation(line: 1020, column: 13, scope: !706)
!713 = !DILocation(line: 1022, column: 10, scope: !706)
!714 = !DILocation(line: 1023, column: 21, scope: !686)
!715 = !DILocation(line: 1023, column: 10, scope: !686)
!716 = !DILocation(line: 1024, column: 21, scope: !686)
!717 = !DILocation(line: 1024, column: 31, scope: !686)
!718 = !DILocation(line: 1024, column: 33, scope: !686)
!719 = !DILocation(line: 1024, column: 42, scope: !686)
!720 = !DILocation(line: 1024, column: 10, scope: !686)
!721 = !DILocation(line: 1025, column: 7, scope: !686)
!722 = !DILocation(line: 1027, column: 7, scope: !679)
!723 = !DILocation(line: 1027, column: 17, scope: !679)
!724 = !DILocation(line: 1027, column: 19, scope: !679)
!725 = !DILocation(line: 1027, column: 28, scope: !679)
!726 = !DILocation(line: 1027, column: 41, scope: !679)
!727 = !DILocation(line: 1028, column: 4, scope: !679)
!728 = !DILocation(line: 1031, column: 52, scope: !729)
!729 = distinct !DILexicalBlock(scope: !730, file: !44, line: 1031, column: 11)
!730 = distinct !DILexicalBlock(scope: !674, file: !44, line: 1028, column: 11)
!731 = !DILocation(line: 1031, column: 62, scope: !729)
!732 = !DILocation(line: 1031, column: 64, scope: !729)
!733 = !DILocation(line: 1031, column: 74, scope: !729)
!734 = !DILocation(line: 1031, column: 29, scope: !729)
!735 = !DILocation(line: 1031, column: 12, scope: !736)
!736 = !DILexicalBlockFile(scope: !729, file: !44, discriminator: 1)
!737 = !DILocation(line: 1031, column: 12, scope: !729)
!738 = !DILocation(line: 1031, column: 11, scope: !730)
!739 = !DILocation(line: 1042, column: 15, scope: !740)
!740 = distinct !DILexicalBlock(scope: !741, file: !44, line: 1042, column: 13)
!741 = distinct !DILexicalBlock(scope: !729, file: !44, line: 1031, column: 84)
!742 = !DILocation(line: 1042, column: 14, scope: !740)
!743 = !DILocation(line: 1042, column: 25, scope: !740)
!744 = !DILocation(line: 1042, column: 34, scope: !740)
!745 = !DILocation(line: 1042, column: 39, scope: !746)
!746 = !DILexicalBlockFile(scope: !740, file: !44, discriminator: 1)
!747 = !DILocation(line: 1042, column: 38, scope: !746)
!748 = !DILocation(line: 1042, column: 49, scope: !746)
!749 = !DILocation(line: 1042, column: 13, scope: !746)
!750 = !DILocation(line: 1046, column: 10, scope: !751)
!751 = distinct !DILexicalBlock(scope: !740, file: !44, line: 1042, column: 60)
!752 = !DILocation(line: 1047, column: 20, scope: !753)
!753 = distinct !DILexicalBlock(scope: !740, file: !44, line: 1046, column: 17)
!754 = !DILocation(line: 1047, column: 19, scope: !753)
!755 = !DILocation(line: 1047, column: 17, scope: !753)
!756 = !DILocation(line: 1053, column: 7, scope: !741)
!757 = !DILocation(line: 1056, column: 15, scope: !663)
!758 = !DILocation(line: 1056, column: 25, scope: !663)
!759 = !DILocation(line: 1056, column: 4, scope: !663)
!760 = !DILocation(line: 1057, column: 4, scope: !663)
!761 = !DILocation(line: 1057, column: 14, scope: !663)
!762 = !DILocation(line: 1057, column: 24, scope: !663)
!763 = !DILocation(line: 1058, column: 4, scope: !663)
!764 = !DILocation(line: 1058, column: 14, scope: !663)
!765 = !DILocation(line: 1058, column: 23, scope: !663)
!766 = !DILocation(line: 1059, column: 15, scope: !663)
!767 = !DILocation(line: 1059, column: 4, scope: !663)
!768 = !DILocation(line: 1061, column: 11, scope: !663)
!769 = !DILocation(line: 1061, column: 4, scope: !663)
!770 = distinct !DISubprogram(name: "Unicode_Append", scope: !652, file: !652, line: 159, type: !771, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!771 = !DISubroutineType(types: !772)
!772 = !{!32, !52, !52}
!773 = !DILocalVariable(name: "destination", arg: 1, scope: !770, file: !652, line: 159, type: !52)
!774 = !DILocation(line: 159, column: 28, scope: !770)
!775 = !DILocalVariable(name: "source", arg: 2, scope: !770, file: !652, line: 160, type: !52)
!776 = !DILocation(line: 160, column: 28, scope: !770)
!777 = !DILocation(line: 162, column: 32, scope: !770)
!778 = !DILocation(line: 165, column: 32, scope: !770)
!779 = !DILocation(line: 162, column: 11, scope: !770)
!780 = !DILocation(line: 162, column: 4, scope: !770)
!781 = distinct !DISubprogram(name: "FileLockIntrinsic", scope: !44, file: !44, line: 1857, type: !782, isLocal: false, isDefinition: true, scopeLine: 1861, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!782 = !DISubroutineType(types: !783)
!783 = !{!666, !52, !69, !35, !784}
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!785 = !DILocalVariable(name: "pathName", arg: 1, scope: !781, file: !44, line: 1857, type: !52)
!786 = !DILocation(line: 1857, column: 31, scope: !781)
!787 = !DILocalVariable(name: "exclusivity", arg: 2, scope: !781, file: !44, line: 1858, type: !69)
!788 = !DILocation(line: 1858, column: 24, scope: !781)
!789 = !DILocalVariable(name: "maxWaitTimeMsec", arg: 3, scope: !781, file: !44, line: 1859, type: !35)
!790 = !DILocation(line: 1859, column: 26, scope: !781)
!791 = !DILocalVariable(name: "err", arg: 4, scope: !781, file: !44, line: 1860, type: !784)
!792 = !DILocation(line: 1860, column: 24, scope: !781)
!793 = !DILocalVariable(name: "lockBase", scope: !781, file: !44, line: 1862, type: !32)
!794 = !DILocation(line: 1862, column: 10, scope: !781)
!795 = !DILocalVariable(name: "myValues", scope: !781, file: !44, line: 1863, type: !58)
!796 = !DILocation(line: 1863, column: 15, scope: !781)
!797 = !DILocalVariable(name: "tokenPtr", scope: !781, file: !44, line: 1864, type: !666)
!798 = !DILocation(line: 1864, column: 19, scope: !781)
!799 = !DILocation(line: 1867, column: 30, scope: !781)
!800 = !DILocation(line: 1867, column: 15, scope: !781)
!801 = !DILocation(line: 1867, column: 13, scope: !781)
!802 = !DILocation(line: 1869, column: 24, scope: !781)
!803 = !DILocation(line: 1869, column: 13, scope: !781)
!804 = !DILocation(line: 1869, column: 22, scope: !781)
!805 = !DILocation(line: 1870, column: 27, scope: !781)
!806 = !DILocation(line: 1870, column: 13, scope: !781)
!807 = !DILocation(line: 1870, column: 25, scope: !781)
!808 = !DILocation(line: 1871, column: 29, scope: !781)
!809 = !DILocation(line: 1871, column: 13, scope: !781)
!810 = !DILocation(line: 1871, column: 27, scope: !781)
!811 = !DILocation(line: 1872, column: 31, scope: !781)
!812 = !DILocation(line: 1872, column: 13, scope: !781)
!813 = !DILocation(line: 1872, column: 29, scope: !781)
!814 = !DILocation(line: 1874, column: 35, scope: !815)
!815 = distinct !DILexicalBlock(scope: !781, file: !44, line: 1874, column: 8)
!816 = !DILocation(line: 1874, column: 8, scope: !815)
!817 = !DILocation(line: 1874, column: 8, scope: !781)
!818 = !DILocation(line: 1878, column: 45, scope: !819)
!819 = distinct !DILexicalBlock(scope: !815, file: !44, line: 1874, column: 46)
!820 = !DILocation(line: 1878, column: 55, scope: !819)
!821 = !DILocation(line: 1878, column: 76, scope: !819)
!822 = !DILocation(line: 1878, column: 18, scope: !819)
!823 = !DILocation(line: 1878, column: 16, scope: !819)
!824 = !DILocation(line: 1879, column: 4, scope: !819)
!825 = !DILocation(line: 1880, column: 37, scope: !826)
!826 = distinct !DILexicalBlock(scope: !815, file: !44, line: 1879, column: 11)
!827 = !DILocation(line: 1880, column: 16, scope: !826)
!828 = !DILocation(line: 1880, column: 26, scope: !826)
!829 = !DILocation(line: 1881, column: 30, scope: !826)
!830 = !DILocation(line: 1881, column: 16, scope: !826)
!831 = !DILocation(line: 1881, column: 28, scope: !826)
!832 = !DILocation(line: 1882, column: 16, scope: !826)
!833 = !DILocation(line: 1882, column: 30, scope: !826)
!834 = !DILocation(line: 1883, column: 60, scope: !826)
!835 = !DILocation(line: 1883, column: 35, scope: !826)
!836 = !DILocation(line: 1883, column: 16, scope: !826)
!837 = !DILocation(line: 1883, column: 33, scope: !826)
!838 = !DILocation(line: 1884, column: 16, scope: !826)
!839 = !DILocation(line: 1884, column: 27, scope: !826)
!840 = !DILocation(line: 1890, column: 44, scope: !826)
!841 = !DILocation(line: 1890, column: 54, scope: !826)
!842 = !DILocation(line: 1890, column: 75, scope: !826)
!843 = !DILocation(line: 1890, column: 18, scope: !826)
!844 = !DILocation(line: 1890, column: 16, scope: !826)
!845 = !DILocation(line: 1892, column: 27, scope: !826)
!846 = !DILocation(line: 1892, column: 7, scope: !826)
!847 = !DILocation(line: 1893, column: 27, scope: !826)
!848 = !DILocation(line: 1893, column: 7, scope: !826)
!849 = !DILocation(line: 1894, column: 27, scope: !826)
!850 = !DILocation(line: 1894, column: 7, scope: !826)
!851 = !DILocation(line: 1897, column: 15, scope: !781)
!852 = !DILocation(line: 1897, column: 4, scope: !781)
!853 = !DILocation(line: 1899, column: 11, scope: !781)
!854 = !DILocation(line: 1899, column: 4, scope: !781)
!855 = distinct !DISubprogram(name: "Hostinfo_SystemTimerMS", scope: !856, file: !856, line: 79, type: !857, isLocal: true, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!856 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/hostinfo.h", directory: "/home/lichi/Desktop/open-vm-tools/line213")
!857 = !DISubroutineType(types: !858)
!858 = !{!71}
!859 = !DILocation(line: 81, column: 11, scope: !855)
!860 = !DILocation(line: 81, column: 36, scope: !855)
!861 = !DILocation(line: 81, column: 4, scope: !855)
!862 = distinct !DISubprogram(name: "FileLockIntrinsicMandatory", scope: !44, file: !44, line: 1583, type: !863, isLocal: true, isDefinition: true, scopeLine: 1587, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!863 = !DISubroutineType(types: !864)
!864 = !{!666, !52, !52, !57, !784}
!865 = !DILocalVariable(name: "pathName", arg: 1, scope: !862, file: !44, line: 1583, type: !52)
!866 = !DILocation(line: 1583, column: 40, scope: !862)
!867 = !DILocalVariable(name: "lockFile", arg: 2, scope: !862, file: !44, line: 1584, type: !52)
!868 = !DILocation(line: 1584, column: 40, scope: !862)
!869 = !DILocalVariable(name: "myValues", arg: 3, scope: !862, file: !44, line: 1585, type: !57)
!870 = !DILocation(line: 1585, column: 40, scope: !862)
!871 = !DILocalVariable(name: "err", arg: 4, scope: !862, file: !44, line: 1586, type: !784)
!872 = !DILocation(line: 1586, column: 33, scope: !862)
!873 = !DILocalVariable(name: "access", scope: !862, file: !44, line: 1588, type: !51)
!874 = !DILocation(line: 1588, column: 8, scope: !862)
!875 = !DILocalVariable(name: "errnum", scope: !862, file: !44, line: 1589, type: !51)
!876 = !DILocation(line: 1589, column: 8, scope: !862)
!877 = !DILocalVariable(name: "result", scope: !862, file: !44, line: 1590, type: !121)
!878 = !DILocation(line: 1590, column: 17, scope: !862)
!879 = !DILocalVariable(name: "tokenPtr", scope: !862, file: !44, line: 1591, type: !666)
!880 = !DILocation(line: 1591, column: 19, scope: !862)
!881 = !DILocation(line: 1591, column: 30, scope: !862)
!882 = !DILocation(line: 1593, column: 4, scope: !862)
!883 = !DILocation(line: 1593, column: 14, scope: !862)
!884 = !DILocation(line: 1593, column: 24, scope: !862)
!885 = !DILocation(line: 1594, column: 4, scope: !862)
!886 = !DILocation(line: 1594, column: 14, scope: !862)
!887 = !DILocation(line: 1594, column: 23, scope: !862)
!888 = !DILocation(line: 1595, column: 43, scope: !862)
!889 = !DILocation(line: 1595, column: 25, scope: !862)
!890 = !DILocation(line: 1595, column: 4, scope: !862)
!891 = !DILocation(line: 1595, column: 14, scope: !862)
!892 = !DILocation(line: 1595, column: 23, scope: !862)
!893 = !DILocation(line: 1596, column: 23, scope: !862)
!894 = !DILocation(line: 1596, column: 33, scope: !862)
!895 = !DILocation(line: 1596, column: 35, scope: !862)
!896 = !DILocation(line: 1596, column: 45, scope: !862)
!897 = !DILocation(line: 1596, column: 4, scope: !862)
!898 = !DILocation(line: 1598, column: 13, scope: !862)
!899 = !DILocation(line: 1598, column: 23, scope: !862)
!900 = !DILocation(line: 1598, column: 11, scope: !862)
!901 = !DILocation(line: 1600, column: 11, scope: !862)
!902 = !DILocation(line: 1602, column: 4, scope: !862)
!903 = distinct !{!903, !902}
!904 = !DILocation(line: 1603, column: 35, scope: !905)
!905 = distinct !DILexicalBlock(scope: !862, file: !44, line: 1602, column: 7)
!906 = !DILocation(line: 1603, column: 45, scope: !905)
!907 = !DILocation(line: 1603, column: 47, scope: !905)
!908 = !DILocation(line: 1603, column: 57, scope: !905)
!909 = !DILocation(line: 1604, column: 34, scope: !905)
!910 = !DILocation(line: 1604, column: 44, scope: !905)
!911 = !DILocation(line: 1603, column: 16, scope: !905)
!912 = !DILocation(line: 1603, column: 14, scope: !905)
!913 = !DILocation(line: 1607, column: 17, scope: !905)
!914 = !DILocation(line: 1607, column: 16, scope: !905)
!915 = !DILocation(line: 1607, column: 14, scope: !905)
!916 = !DILocation(line: 1608, column: 11, scope: !917)
!917 = distinct !DILexicalBlock(scope: !905, file: !44, line: 1608, column: 11)
!918 = !DILocation(line: 1608, column: 18, scope: !917)
!919 = !DILocation(line: 1608, column: 11, scope: !905)
!920 = !DILocation(line: 1609, column: 10, scope: !921)
!921 = distinct !DILexicalBlock(scope: !917, file: !44, line: 1608, column: 41)
!922 = !DILocation(line: 1611, column: 4, scope: !905)
!923 = !DILocation(line: 1611, column: 29, scope: !924)
!924 = !DILexicalBlockFile(scope: !862, file: !44, discriminator: 1)
!925 = !DILocation(line: 1611, column: 13, scope: !924)
!926 = !DILocation(line: 1611, column: 39, scope: !924)
!927 = !DILocation(line: 1611, column: 4, scope: !924)
!928 = !DILocation(line: 1613, column: 25, scope: !929)
!929 = distinct !DILexicalBlock(scope: !862, file: !44, line: 1613, column: 8)
!930 = !DILocation(line: 1613, column: 8, scope: !929)
!931 = !DILocation(line: 1613, column: 8, scope: !862)
!932 = !DILocation(line: 1615, column: 8, scope: !933)
!933 = distinct !DILexicalBlock(scope: !929, file: !44, line: 1613, column: 34)
!934 = !DILocation(line: 1615, column: 12, scope: !933)
!935 = !DILocation(line: 1617, column: 14, scope: !933)
!936 = !DILocation(line: 1617, column: 7, scope: !933)
!937 = !DILocation(line: 1619, column: 11, scope: !938)
!938 = distinct !DILexicalBlock(scope: !939, file: !44, line: 1619, column: 11)
!939 = distinct !DILexicalBlock(scope: !929, file: !44, line: 1618, column: 11)
!940 = !DILocation(line: 1619, column: 18, scope: !938)
!941 = !DILocation(line: 1619, column: 11, scope: !939)
!942 = !DILocation(line: 1620, column: 11, scope: !943)
!943 = distinct !DILexicalBlock(scope: !938, file: !44, line: 1619, column: 41)
!944 = !DILocation(line: 1620, column: 15, scope: !943)
!945 = !DILocation(line: 1621, column: 7, scope: !943)
!946 = !DILocation(line: 1622, column: 51, scope: !947)
!947 = distinct !DILexicalBlock(scope: !938, file: !44, line: 1621, column: 14)
!948 = !DILocation(line: 1622, column: 17, scope: !947)
!949 = !DILocation(line: 1622, column: 11, scope: !947)
!950 = !DILocation(line: 1622, column: 15, scope: !947)
!951 = !DILocation(line: 1624, column: 18, scope: !939)
!952 = !DILocation(line: 1624, column: 28, scope: !939)
!953 = !DILocation(line: 1624, column: 7, scope: !939)
!954 = !DILocation(line: 1626, column: 18, scope: !939)
!955 = !DILocation(line: 1626, column: 7, scope: !939)
!956 = !DILocation(line: 1628, column: 7, scope: !939)
!957 = !DILocation(line: 1630, column: 1, scope: !862)
!958 = distinct !DISubprogram(name: "FileLockLocationChecksum", scope: !44, file: !44, line: 631, type: !959, isLocal: true, isDefinition: true, scopeLine: 632, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!959 = !DISubroutineType(types: !960)
!960 = !{!32, !52}
!961 = !DILocalVariable(name: "path", arg: 1, scope: !958, file: !44, line: 631, type: !52)
!962 = !DILocation(line: 631, column: 38, scope: !958)
!963 = !DILocalVariable(name: "c", scope: !958, file: !44, line: 633, type: !51)
!964 = !DILocation(line: 633, column: 8, scope: !958)
!965 = !DILocalVariable(name: "hash", scope: !958, file: !44, line: 634, type: !35)
!966 = !DILocation(line: 634, column: 11, scope: !958)
!967 = !DILocalVariable(name: "p", scope: !958, file: !44, line: 644, type: !32)
!968 = !DILocation(line: 644, column: 10, scope: !958)
!969 = !DILocation(line: 644, column: 23, scope: !958)
!970 = !DILocation(line: 648, column: 4, scope: !958)
!971 = !DILocation(line: 648, column: 18, scope: !972)
!972 = !DILexicalBlockFile(scope: !958, file: !44, discriminator: 1)
!973 = !DILocation(line: 648, column: 16, scope: !972)
!974 = !DILocation(line: 648, column: 14, scope: !972)
!975 = !DILocation(line: 648, column: 4, scope: !972)
!976 = !DILocation(line: 649, column: 16, scope: !977)
!977 = distinct !DILexicalBlock(scope: !958, file: !44, line: 648, column: 23)
!978 = !DILocation(line: 649, column: 21, scope: !977)
!979 = !DILocation(line: 649, column: 29, scope: !977)
!980 = !DILocation(line: 649, column: 27, scope: !977)
!981 = !DILocation(line: 649, column: 37, scope: !977)
!982 = !DILocation(line: 649, column: 35, scope: !977)
!983 = !DILocation(line: 649, column: 12, scope: !977)
!984 = !DILocation(line: 648, column: 4, scope: !985)
!985 = !DILexicalBlockFile(scope: !958, file: !44, discriminator: 2)
!986 = distinct !{!986, !970}
!987 = !DILocation(line: 656, column: 39, scope: !958)
!988 = !DILocation(line: 656, column: 11, scope: !958)
!989 = !DILocation(line: 656, column: 4, scope: !958)
!990 = distinct !DISubprogram(name: "FileLockIntrinsicPortable", scope: !44, file: !44, line: 1664, type: !863, isLocal: true, isDefinition: true, scopeLine: 1668, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!991 = !DILocalVariable(name: "pathName", arg: 1, scope: !990, file: !44, line: 1664, type: !52)
!992 = !DILocation(line: 1664, column: 39, scope: !990)
!993 = !DILocalVariable(name: "lockDir", arg: 2, scope: !990, file: !44, line: 1665, type: !52)
!994 = !DILocation(line: 1665, column: 39, scope: !990)
!995 = !DILocalVariable(name: "myValues", arg: 3, scope: !990, file: !44, line: 1666, type: !57)
!996 = !DILocation(line: 1666, column: 39, scope: !990)
!997 = !DILocalVariable(name: "err", arg: 4, scope: !990, file: !44, line: 1667, type: !784)
!998 = !DILocation(line: 1667, column: 32, scope: !990)
!999 = !DILocalVariable(name: "access", scope: !990, file: !44, line: 1669, type: !51)
!1000 = !DILocation(line: 1669, column: 8, scope: !990)
!1001 = !DILocalVariable(name: "result", scope: !990, file: !44, line: 1670, type: !121)
!1002 = !DILocation(line: 1670, column: 17, scope: !990)
!1003 = !DILocalVariable(name: "desc", scope: !990, file: !44, line: 1671, type: !124)
!1004 = !DILocation(line: 1671, column: 21, scope: !990)
!1005 = !DILocalVariable(name: "tokenPtr", scope: !990, file: !44, line: 1672, type: !666)
!1006 = !DILocation(line: 1672, column: 19, scope: !990)
!1007 = !DILocalVariable(name: "entryFilePath", scope: !990, file: !44, line: 1674, type: !32)
!1008 = !DILocation(line: 1674, column: 10, scope: !990)
!1009 = !DILocalVariable(name: "memberFilePath", scope: !990, file: !44, line: 1675, type: !32)
!1010 = !DILocation(line: 1675, column: 10, scope: !990)
!1011 = !DILocalVariable(name: "entryDirectory", scope: !990, file: !44, line: 1676, type: !32)
!1012 = !DILocation(line: 1676, column: 10, scope: !990)
!1013 = !DILocation(line: 1686, column: 40, scope: !990)
!1014 = !DILocation(line: 1688, column: 41, scope: !990)
!1015 = !DILocation(line: 1688, column: 51, scope: !990)
!1016 = !DILocation(line: 1686, column: 11, scope: !990)
!1017 = !DILocation(line: 1686, column: 5, scope: !990)
!1018 = !DILocation(line: 1686, column: 9, scope: !990)
!1019 = !DILocation(line: 1690, column: 13, scope: !990)
!1020 = !DILocation(line: 1690, column: 12, scope: !990)
!1021 = !DILocation(line: 1690, column: 4, scope: !990)
!1022 = !DILocation(line: 1692, column: 7, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !990, file: !44, line: 1690, column: 18)
!1024 = !DILocation(line: 1697, column: 12, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1023, file: !44, line: 1697, column: 11)
!1026 = !DILocation(line: 1697, column: 22, scope: !1025)
!1027 = !DILocation(line: 1697, column: 11, scope: !1023)
!1028 = !DILocation(line: 1705, column: 37, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1025, file: !44, line: 1697, column: 35)
!1030 = !DILocation(line: 1704, column: 10, scope: !1029)
!1031 = !DILocation(line: 1707, column: 11, scope: !1029)
!1032 = !DILocation(line: 1707, column: 15, scope: !1029)
!1033 = !DILocation(line: 1708, column: 25, scope: !1029)
!1034 = !DILocation(line: 1709, column: 7, scope: !1029)
!1035 = !DILocation(line: 1697, column: 22, scope: !1036)
!1036 = !DILexicalBlockFile(scope: !1025, file: !44, discriminator: 1)
!1037 = !DILocation(line: 1713, column: 7, scope: !1023)
!1038 = !DILocation(line: 1720, column: 11, scope: !990)
!1039 = !DILocation(line: 1725, column: 11, scope: !990)
!1040 = !DILocation(line: 1728, column: 4, scope: !990)
!1041 = !DILocation(line: 1730, column: 38, scope: !990)
!1042 = !DILocation(line: 1730, column: 53, scope: !990)
!1043 = !DILocation(line: 1730, column: 13, scope: !990)
!1044 = !DILocation(line: 1730, column: 11, scope: !990)
!1045 = !DILocation(line: 1734, column: 26, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !990, file: !44, line: 1734, column: 8)
!1047 = !DILocation(line: 1734, column: 9, scope: !1046)
!1048 = !DILocation(line: 1734, column: 8, scope: !990)
!1049 = !DILocation(line: 1735, column: 49, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1046, file: !44, line: 1734, column: 35)
!1051 = !DILocation(line: 1735, column: 48, scope: !1050)
!1052 = !DILocation(line: 1735, column: 14, scope: !1053)
!1053 = !DILexicalBlockFile(scope: !1050, file: !44, discriminator: 1)
!1054 = !DILocation(line: 1735, column: 8, scope: !1050)
!1055 = !DILocation(line: 1735, column: 12, scope: !1050)
!1056 = !DILocation(line: 1738, column: 28, scope: !1050)
!1057 = !DILocation(line: 1738, column: 7, scope: !1050)
!1058 = !DILocation(line: 1739, column: 28, scope: !1050)
!1059 = !DILocation(line: 1739, column: 7, scope: !1050)
!1060 = !DILocation(line: 1741, column: 7, scope: !1050)
!1061 = !DILocation(line: 1745, column: 27, scope: !990)
!1062 = !DILocation(line: 1745, column: 56, scope: !990)
!1063 = !DILocation(line: 1745, column: 11, scope: !990)
!1064 = !DILocation(line: 1745, column: 5, scope: !990)
!1065 = !DILocation(line: 1745, column: 9, scope: !990)
!1066 = !DILocation(line: 1747, column: 9, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !990, file: !44, line: 1747, column: 8)
!1068 = !DILocation(line: 1747, column: 8, scope: !1067)
!1069 = !DILocation(line: 1747, column: 13, scope: !1067)
!1070 = !DILocation(line: 1747, column: 8, scope: !990)
!1071 = !DILocation(line: 1749, column: 7, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1067, file: !44, line: 1747, column: 19)
!1073 = !DILocation(line: 1750, column: 21, scope: !1072)
!1074 = !DILocation(line: 1750, column: 7, scope: !1072)
!1075 = !DILocation(line: 1751, column: 28, scope: !1072)
!1076 = !DILocation(line: 1751, column: 7, scope: !1072)
!1077 = !DILocation(line: 1752, column: 28, scope: !1072)
!1078 = !DILocation(line: 1752, column: 7, scope: !1072)
!1079 = !DILocation(line: 1754, column: 7, scope: !1072)
!1080 = !DILocation(line: 1758, column: 4, scope: !990)
!1081 = !DILocation(line: 1758, column: 14, scope: !990)
!1082 = !DILocation(line: 1758, column: 27, scope: !990)
!1083 = !DILocation(line: 1761, column: 43, scope: !990)
!1084 = !DILocation(line: 1761, column: 53, scope: !990)
!1085 = !DILocation(line: 1762, column: 36, scope: !990)
!1086 = !DILocation(line: 1761, column: 11, scope: !990)
!1087 = !DILocation(line: 1761, column: 5, scope: !990)
!1088 = !DILocation(line: 1761, column: 9, scope: !990)
!1089 = !DILocation(line: 1765, column: 9, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !990, file: !44, line: 1765, column: 8)
!1091 = !DILocation(line: 1765, column: 8, scope: !1090)
!1092 = !DILocation(line: 1765, column: 13, scope: !1090)
!1093 = !DILocation(line: 1765, column: 8, scope: !990)
!1094 = !DILocation(line: 1766, column: 35, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1090, file: !44, line: 1765, column: 19)
!1096 = !DILocation(line: 1766, column: 14, scope: !1095)
!1097 = !DILocation(line: 1766, column: 8, scope: !1095)
!1098 = !DILocation(line: 1766, column: 12, scope: !1095)
!1099 = !DILocation(line: 1767, column: 4, scope: !1095)
!1100 = !DILocation(line: 1769, column: 9, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !990, file: !44, line: 1769, column: 8)
!1102 = !DILocation(line: 1769, column: 8, scope: !1101)
!1103 = !DILocation(line: 1769, column: 13, scope: !1101)
!1104 = !DILocation(line: 1769, column: 8, scope: !990)
!1105 = !DILocation(line: 1771, column: 21, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1101, file: !44, line: 1769, column: 19)
!1107 = !DILocation(line: 1771, column: 7, scope: !1106)
!1108 = !DILocation(line: 1772, column: 21, scope: !1106)
!1109 = !DILocation(line: 1772, column: 7, scope: !1106)
!1110 = !DILocation(line: 1773, column: 28, scope: !1106)
!1111 = !DILocation(line: 1773, column: 7, scope: !1106)
!1112 = !DILocation(line: 1775, column: 7, scope: !1106)
!1113 = !DILocation(line: 1779, column: 27, scope: !990)
!1114 = !DILocation(line: 1779, column: 63, scope: !990)
!1115 = !DILocation(line: 1779, column: 11, scope: !990)
!1116 = !DILocation(line: 1779, column: 5, scope: !990)
!1117 = !DILocation(line: 1779, column: 9, scope: !990)
!1118 = !DILocation(line: 1781, column: 13, scope: !990)
!1119 = !DILocation(line: 1781, column: 12, scope: !990)
!1120 = !DILocation(line: 1781, column: 4, scope: !990)
!1121 = !DILocation(line: 1783, column: 7, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !990, file: !44, line: 1781, column: 18)
!1123 = !DILocation(line: 1787, column: 21, scope: !1122)
!1124 = !DILocation(line: 1787, column: 7, scope: !1122)
!1125 = !DILocation(line: 1788, column: 28, scope: !1122)
!1126 = !DILocation(line: 1788, column: 7, scope: !1122)
!1127 = !DILocation(line: 1792, column: 7, scope: !1122)
!1128 = !DILocation(line: 1793, column: 4, scope: !1122)
!1129 = !DILocation(line: 1797, column: 15, scope: !990)
!1130 = !DILocation(line: 1797, column: 4, scope: !990)
!1131 = !DILocation(line: 1798, column: 15, scope: !990)
!1132 = !DILocation(line: 1798, column: 4, scope: !990)
!1133 = !DILocation(line: 1800, column: 9, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !990, file: !44, line: 1800, column: 8)
!1135 = !DILocation(line: 1800, column: 8, scope: !1134)
!1136 = !DILocation(line: 1800, column: 13, scope: !1134)
!1137 = !DILocation(line: 1800, column: 8, scope: !990)
!1138 = !DILocation(line: 1801, column: 18, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1134, file: !44, line: 1800, column: 19)
!1140 = !DILocation(line: 1801, column: 16, scope: !1139)
!1141 = !DILocation(line: 1803, column: 7, scope: !1139)
!1142 = !DILocation(line: 1803, column: 17, scope: !1139)
!1143 = !DILocation(line: 1803, column: 27, scope: !1139)
!1144 = !DILocation(line: 1804, column: 7, scope: !1139)
!1145 = !DILocation(line: 1804, column: 17, scope: !1139)
!1146 = !DILocation(line: 1804, column: 26, scope: !1139)
!1147 = !DILocation(line: 1805, column: 46, scope: !1139)
!1148 = !DILocation(line: 1805, column: 28, scope: !1139)
!1149 = !DILocation(line: 1805, column: 7, scope: !1139)
!1150 = !DILocation(line: 1805, column: 17, scope: !1139)
!1151 = !DILocation(line: 1805, column: 26, scope: !1139)
!1152 = !DILocation(line: 1806, column: 43, scope: !1139)
!1153 = !DILocation(line: 1806, column: 7, scope: !1139)
!1154 = !DILocation(line: 1806, column: 17, scope: !1139)
!1155 = !DILocation(line: 1806, column: 19, scope: !1139)
!1156 = !DILocation(line: 1806, column: 28, scope: !1139)
!1157 = !DILocation(line: 1806, column: 41, scope: !1139)
!1158 = !DILocation(line: 1807, column: 4, scope: !1139)
!1159 = !DILocation(line: 1808, column: 18, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1134, file: !44, line: 1807, column: 11)
!1161 = !DILocation(line: 1808, column: 7, scope: !1160)
!1162 = !DILocation(line: 1809, column: 16, scope: !1160)
!1163 = !DILocation(line: 1811, column: 12, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1160, file: !44, line: 1811, column: 11)
!1165 = !DILocation(line: 1811, column: 11, scope: !1164)
!1166 = !DILocation(line: 1811, column: 16, scope: !1164)
!1167 = !DILocation(line: 1811, column: 11, scope: !1160)
!1168 = !DILocation(line: 1812, column: 11, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1164, file: !44, line: 1811, column: 26)
!1170 = !DILocation(line: 1812, column: 15, scope: !1169)
!1171 = !DILocation(line: 1813, column: 7, scope: !1169)
!1172 = !DILocation(line: 1816, column: 11, scope: !990)
!1173 = !DILocation(line: 1816, column: 4, scope: !990)
!1174 = distinct !DISubprogram(name: "FileLockIsLocked", scope: !44, file: !44, line: 2043, type: !1175, isLocal: false, isDefinition: true, scopeLine: 2045, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!69, !52, !784}
!1177 = !DILocalVariable(name: "pathName", arg: 1, scope: !1174, file: !44, line: 2043, type: !52)
!1178 = !DILocation(line: 2043, column: 30, scope: !1174)
!1179 = !DILocalVariable(name: "err", arg: 2, scope: !1174, file: !44, line: 2044, type: !784)
!1180 = !DILocation(line: 2044, column: 23, scope: !1174)
!1181 = !DILocalVariable(name: "isLocked", scope: !1174, file: !44, line: 2046, type: !69)
!1182 = !DILocation(line: 2046, column: 9, scope: !1174)
!1183 = !DILocalVariable(name: "lockBase", scope: !1174, file: !44, line: 2047, type: !32)
!1184 = !DILocation(line: 2047, column: 10, scope: !1174)
!1185 = !DILocation(line: 2051, column: 30, scope: !1174)
!1186 = !DILocation(line: 2051, column: 15, scope: !1174)
!1187 = !DILocation(line: 2051, column: 13, scope: !1174)
!1188 = !DILocation(line: 2053, column: 35, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1174, file: !44, line: 2053, column: 8)
!1190 = !DILocation(line: 2053, column: 8, scope: !1189)
!1191 = !DILocation(line: 2053, column: 8, scope: !1174)
!1192 = !DILocation(line: 2054, column: 44, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1189, file: !44, line: 2053, column: 46)
!1194 = !DILocation(line: 2054, column: 54, scope: !1193)
!1195 = !DILocation(line: 2054, column: 18, scope: !1193)
!1196 = !DILocation(line: 2054, column: 16, scope: !1193)
!1197 = !DILocation(line: 2055, column: 4, scope: !1193)
!1198 = !DILocation(line: 2056, column: 43, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1189, file: !44, line: 2055, column: 11)
!1200 = !DILocation(line: 2056, column: 53, scope: !1199)
!1201 = !DILocation(line: 2056, column: 18, scope: !1199)
!1202 = !DILocation(line: 2056, column: 16, scope: !1199)
!1203 = !DILocation(line: 2059, column: 15, scope: !1174)
!1204 = !DILocation(line: 2059, column: 4, scope: !1174)
!1205 = !DILocation(line: 2061, column: 11, scope: !1174)
!1206 = !DILocation(line: 2061, column: 4, scope: !1174)
!1207 = distinct !DISubprogram(name: "FileLockIsLockedMandatory", scope: !44, file: !44, line: 1925, type: !1175, isLocal: true, isDefinition: true, scopeLine: 1927, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!1208 = !DILocalVariable(name: "lockFile", arg: 1, scope: !1207, file: !44, line: 1925, type: !52)
!1209 = !DILocation(line: 1925, column: 39, scope: !1207)
!1210 = !DILocalVariable(name: "err", arg: 2, scope: !1207, file: !44, line: 1926, type: !784)
!1211 = !DILocation(line: 1926, column: 32, scope: !1207)
!1212 = !DILocalVariable(name: "access", scope: !1207, file: !44, line: 1928, type: !51)
!1213 = !DILocation(line: 1928, column: 8, scope: !1207)
!1214 = !DILocalVariable(name: "result", scope: !1207, file: !44, line: 1929, type: !121)
!1215 = !DILocation(line: 1929, column: 17, scope: !1207)
!1216 = !DILocalVariable(name: "desc", scope: !1207, file: !44, line: 1930, type: !124)
!1217 = !DILocation(line: 1930, column: 21, scope: !1207)
!1218 = !DILocation(line: 1932, column: 4, scope: !1207)
!1219 = !DILocation(line: 1939, column: 11, scope: !1207)
!1220 = !DILocation(line: 1942, column: 38, scope: !1207)
!1221 = !DILocation(line: 1942, column: 48, scope: !1207)
!1222 = !DILocation(line: 1942, column: 13, scope: !1207)
!1223 = !DILocation(line: 1942, column: 11, scope: !1207)
!1224 = !DILocation(line: 1944, column: 25, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1207, file: !44, line: 1944, column: 8)
!1226 = !DILocation(line: 1944, column: 8, scope: !1225)
!1227 = !DILocation(line: 1944, column: 8, scope: !1207)
!1228 = !DILocalVariable(name: "success", scope: !1229, file: !44, line: 1945, type: !69)
!1229 = distinct !DILexicalBlock(scope: !1225, file: !44, line: 1944, column: 34)
!1230 = !DILocation(line: 1945, column: 12, scope: !1229)
!1231 = !DILocation(line: 1947, column: 34, scope: !1229)
!1232 = !DILocation(line: 1947, column: 17, scope: !1233)
!1233 = !DILexicalBlockFile(scope: !1229, file: !44, discriminator: 1)
!1234 = !DILocation(line: 1947, column: 15, scope: !1229)
!1235 = !DILocation(line: 1950, column: 7, scope: !1229)
!1236 = !DILocation(line: 1951, column: 15, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1225, file: !44, line: 1951, column: 15)
!1238 = !DILocation(line: 1951, column: 22, scope: !1237)
!1239 = !DILocation(line: 1951, column: 15, scope: !1225)
!1240 = !DILocation(line: 1952, column: 7, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1237, file: !44, line: 1951, column: 45)
!1242 = !DILocation(line: 1953, column: 15, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1237, file: !44, line: 1953, column: 15)
!1244 = !DILocation(line: 1953, column: 22, scope: !1243)
!1245 = !DILocation(line: 1953, column: 15, scope: !1237)
!1246 = !DILocation(line: 1954, column: 7, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1243, file: !44, line: 1953, column: 48)
!1248 = !DILocation(line: 1956, column: 11, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !44, line: 1956, column: 11)
!1250 = distinct !DILexicalBlock(scope: !1243, file: !44, line: 1955, column: 11)
!1251 = !DILocation(line: 1956, column: 15, scope: !1249)
!1252 = !DILocation(line: 1956, column: 11, scope: !1250)
!1253 = !DILocation(line: 1957, column: 52, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1249, file: !44, line: 1956, column: 23)
!1255 = !DILocation(line: 1957, column: 51, scope: !1254)
!1256 = !DILocation(line: 1957, column: 17, scope: !1257)
!1257 = !DILexicalBlockFile(scope: !1254, file: !44, discriminator: 1)
!1258 = !DILocation(line: 1957, column: 11, scope: !1254)
!1259 = !DILocation(line: 1957, column: 15, scope: !1254)
!1260 = !DILocation(line: 1958, column: 7, scope: !1254)
!1261 = !DILocation(line: 1960, column: 7, scope: !1250)
!1262 = !DILocation(line: 1962, column: 1, scope: !1207)
!1263 = distinct !DISubprogram(name: "FileLockIsLockedPortable", scope: !44, file: !44, line: 1989, type: !1175, isLocal: true, isDefinition: true, scopeLine: 1991, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!1264 = !DILocalVariable(name: "lockDir", arg: 1, scope: !1263, file: !44, line: 1989, type: !52)
!1265 = !DILocation(line: 1989, column: 38, scope: !1263)
!1266 = !DILocalVariable(name: "err", arg: 2, scope: !1263, file: !44, line: 1990, type: !784)
!1267 = !DILocation(line: 1990, column: 31, scope: !1263)
!1268 = !DILocalVariable(name: "i", scope: !1263, file: !44, line: 1992, type: !35)
!1269 = !DILocation(line: 1992, column: 11, scope: !1263)
!1270 = !DILocalVariable(name: "numEntries", scope: !1263, file: !44, line: 1993, type: !51)
!1271 = !DILocation(line: 1993, column: 8, scope: !1263)
!1272 = !DILocalVariable(name: "isLocked", scope: !1263, file: !44, line: 1994, type: !69)
!1273 = !DILocation(line: 1994, column: 9, scope: !1263)
!1274 = !DILocalVariable(name: "fileList", scope: !1263, file: !44, line: 1995, type: !40)
!1275 = !DILocation(line: 1995, column: 11, scope: !1263)
!1276 = !DILocation(line: 1997, column: 37, scope: !1263)
!1277 = !DILocation(line: 1997, column: 17, scope: !1263)
!1278 = !DILocation(line: 1997, column: 15, scope: !1263)
!1279 = !DILocation(line: 1999, column: 8, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1263, file: !44, line: 1999, column: 8)
!1281 = !DILocation(line: 1999, column: 19, scope: !1280)
!1282 = !DILocation(line: 1999, column: 8, scope: !1263)
!1283 = !DILocation(line: 2005, column: 11, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !44, line: 2005, column: 11)
!1285 = distinct !DILexicalBlock(scope: !1280, file: !44, line: 1999, column: 26)
!1286 = !DILocation(line: 2005, column: 15, scope: !1284)
!1287 = !DILocation(line: 2005, column: 11, scope: !1285)
!1288 = !DILocation(line: 2006, column: 19, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1284, file: !44, line: 2005, column: 23)
!1290 = !DILocation(line: 2006, column: 18, scope: !1289)
!1291 = !DILocation(line: 2006, column: 23, scope: !1289)
!1292 = !DILocation(line: 2006, column: 17, scope: !1289)
!1293 = !DILocation(line: 2006, column: 17, scope: !1294)
!1294 = !DILexicalBlockFile(scope: !1289, file: !44, discriminator: 1)
!1295 = !DILocation(line: 2006, column: 42, scope: !1296)
!1296 = !DILexicalBlockFile(scope: !1289, file: !44, discriminator: 2)
!1297 = !DILocation(line: 2006, column: 41, scope: !1296)
!1298 = !DILocation(line: 2006, column: 17, scope: !1296)
!1299 = !DILocation(line: 2006, column: 17, scope: !1300)
!1300 = !DILexicalBlockFile(scope: !1289, file: !44, discriminator: 3)
!1301 = !DILocation(line: 2006, column: 11, scope: !1300)
!1302 = !DILocation(line: 2006, column: 15, scope: !1300)
!1303 = !DILocation(line: 2007, column: 7, scope: !1289)
!1304 = !DILocation(line: 2009, column: 7, scope: !1285)
!1305 = !DILocation(line: 2012, column: 11, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1263, file: !44, line: 2012, column: 4)
!1307 = !DILocation(line: 2012, column: 9, scope: !1306)
!1308 = !DILocation(line: 2012, column: 16, scope: !1309)
!1309 = !DILexicalBlockFile(scope: !1310, file: !44, discriminator: 1)
!1310 = distinct !DILexicalBlock(scope: !1306, file: !44, line: 2012, column: 4)
!1311 = !DILocation(line: 2012, column: 20, scope: !1309)
!1312 = !DILocation(line: 2012, column: 18, scope: !1309)
!1313 = !DILocation(line: 2012, column: 4, scope: !1309)
!1314 = !DILocation(line: 2013, column: 21, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !44, line: 2013, column: 11)
!1316 = distinct !DILexicalBlock(scope: !1310, file: !44, line: 2012, column: 37)
!1317 = !DILocation(line: 2013, column: 12, scope: !1315)
!1318 = !DILocation(line: 2013, column: 11, scope: !1315)
!1319 = !DILocation(line: 2013, column: 24, scope: !1315)
!1320 = !DILocation(line: 2013, column: 11, scope: !1316)
!1321 = !DILocation(line: 2014, column: 19, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1315, file: !44, line: 2013, column: 32)
!1323 = !DILocation(line: 2015, column: 10, scope: !1322)
!1324 = !DILocation(line: 2017, column: 4, scope: !1316)
!1325 = !DILocation(line: 2012, column: 33, scope: !1326)
!1326 = !DILexicalBlockFile(scope: !1310, file: !44, discriminator: 2)
!1327 = !DILocation(line: 2012, column: 4, scope: !1326)
!1328 = distinct !{!1328, !1329}
!1329 = !DILocation(line: 2012, column: 4, scope: !1263)
!1330 = !DILocation(line: 2019, column: 24, scope: !1263)
!1331 = !DILocation(line: 2019, column: 34, scope: !1263)
!1332 = !DILocation(line: 2019, column: 4, scope: !1263)
!1333 = !DILocation(line: 2021, column: 11, scope: !1263)
!1334 = !DILocation(line: 2021, column: 4, scope: !1263)
!1335 = !DILocation(line: 2022, column: 1, scope: !1263)
!1336 = distinct !DISubprogram(name: "FileLock_TokenPathName", scope: !44, file: !44, line: 2084, type: !1337, isLocal: false, isDefinition: true, scopeLine: 2085, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!32, !1339}
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64, align: 64)
!1340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !667)
!1341 = !DILocalVariable(name: "lockToken", arg: 1, scope: !1336, file: !44, line: 2084, type: !1339)
!1342 = !DILocation(line: 2084, column: 45, scope: !1336)
!1343 = !DILocation(line: 2088, column: 29, scope: !1336)
!1344 = !DILocation(line: 2088, column: 40, scope: !1336)
!1345 = !DILocation(line: 2088, column: 11, scope: !1336)
!1346 = !DILocation(line: 2088, column: 4, scope: !1336)
!1347 = distinct !DISubprogram(name: "UnicodeEndsWith", scope: !652, file: !652, line: 292, type: !1348, isLocal: true, isDefinition: true, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!69, !52, !52, !69}
!1350 = !DILocalVariable(name: "str", arg: 1, scope: !1347, file: !652, line: 292, type: !52)
!1351 = !DILocation(line: 292, column: 29, scope: !1347)
!1352 = !DILocalVariable(name: "suffix", arg: 2, scope: !1347, file: !652, line: 293, type: !52)
!1353 = !DILocation(line: 293, column: 29, scope: !1347)
!1354 = !DILocalVariable(name: "ignoreCase", arg: 3, scope: !1347, file: !652, line: 294, type: !69)
!1355 = !DILocation(line: 294, column: 22, scope: !1347)
!1356 = !DILocalVariable(name: "strLength", scope: !1347, file: !652, line: 296, type: !1357)
!1357 = !DIDerivedType(tag: DW_TAG_typedef, name: "UnicodeIndex", file: !27, line: 41, baseType: !1358)
!1358 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1359, line: 102, baseType: !1360)
!1359 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/open-vm-tools/line213")
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1361, line: 172, baseType: !75)
!1361 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line213")
!1362 = !DILocation(line: 296, column: 17, scope: !1347)
!1363 = !DILocation(line: 296, column: 56, scope: !1347)
!1364 = !DILocation(line: 296, column: 29, scope: !1347)
!1365 = !DILocalVariable(name: "suffixLength", scope: !1347, file: !652, line: 297, type: !1357)
!1366 = !DILocation(line: 297, column: 17, scope: !1347)
!1367 = !DILocation(line: 297, column: 59, scope: !1347)
!1368 = !DILocation(line: 297, column: 32, scope: !1347)
!1369 = !DILocalVariable(name: "offset", scope: !1347, file: !652, line: 298, type: !1357)
!1370 = !DILocation(line: 298, column: 17, scope: !1347)
!1371 = !DILocation(line: 298, column: 26, scope: !1347)
!1372 = !DILocation(line: 298, column: 38, scope: !1347)
!1373 = !DILocation(line: 298, column: 36, scope: !1347)
!1374 = !DILocation(line: 300, column: 8, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1347, file: !652, line: 300, column: 8)
!1376 = !DILocation(line: 300, column: 23, scope: !1375)
!1377 = !DILocation(line: 300, column: 21, scope: !1375)
!1378 = !DILocation(line: 300, column: 8, scope: !1347)
!1379 = !DILocation(line: 301, column: 7, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1375, file: !652, line: 300, column: 34)
!1381 = !DILocation(line: 304, column: 32, scope: !1347)
!1382 = !DILocation(line: 305, column: 32, scope: !1347)
!1383 = !DILocation(line: 306, column: 32, scope: !1347)
!1384 = !DILocation(line: 307, column: 32, scope: !1347)
!1385 = !DILocation(line: 309, column: 32, scope: !1347)
!1386 = !DILocation(line: 310, column: 32, scope: !1347)
!1387 = !DILocation(line: 304, column: 11, scope: !1347)
!1388 = !DILocation(line: 310, column: 44, scope: !1347)
!1389 = !DILocation(line: 304, column: 4, scope: !1347)
!1390 = !DILocation(line: 311, column: 1, scope: !1347)
!1391 = distinct !DISubprogram(name: "FileLockSleeper", scope: !44, file: !44, line: 123, type: !1392, isLocal: true, isDefinition: true, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!51, !57}
!1394 = !DILocalVariable(name: "myValues", arg: 1, scope: !1391, file: !44, line: 123, type: !57)
!1395 = !DILocation(line: 123, column: 29, scope: !1391)
!1396 = !DILocalVariable(name: "ageMsec", scope: !1391, file: !44, line: 125, type: !71)
!1397 = !DILocation(line: 125, column: 15, scope: !1391)
!1398 = !DILocalVariable(name: "maxSleepTimeMsec", scope: !1391, file: !44, line: 126, type: !35)
!1399 = !DILocation(line: 126, column: 11, scope: !1391)
!1400 = !DILocation(line: 128, column: 8, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1391, file: !44, line: 128, column: 8)
!1402 = !DILocation(line: 128, column: 18, scope: !1401)
!1403 = !DILocation(line: 128, column: 34, scope: !1401)
!1404 = !DILocation(line: 128, column: 8, scope: !1391)
!1405 = !DILocation(line: 129, column: 7, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1401, file: !44, line: 128, column: 40)
!1407 = !DILocation(line: 132, column: 14, scope: !1391)
!1408 = !DILocation(line: 132, column: 41, scope: !1391)
!1409 = !DILocation(line: 132, column: 51, scope: !1391)
!1410 = !DILocation(line: 132, column: 39, scope: !1391)
!1411 = !DILocation(line: 132, column: 12, scope: !1391)
!1412 = !DILocation(line: 134, column: 9, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1391, file: !44, line: 134, column: 8)
!1414 = !DILocation(line: 134, column: 19, scope: !1413)
!1415 = !DILocation(line: 134, column: 35, scope: !1413)
!1416 = !DILocation(line: 134, column: 50, scope: !1413)
!1417 = !DILocation(line: 135, column: 9, scope: !1413)
!1418 = !DILocation(line: 135, column: 20, scope: !1413)
!1419 = !DILocation(line: 135, column: 30, scope: !1413)
!1420 = !DILocation(line: 135, column: 17, scope: !1413)
!1421 = !DILocation(line: 134, column: 8, scope: !1422)
!1422 = !DILexicalBlockFile(scope: !1391, file: !44, discriminator: 1)
!1423 = !DILocation(line: 136, column: 7, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1413, file: !44, line: 135, column: 48)
!1425 = !DILocation(line: 139, column: 8, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1391, file: !44, line: 139, column: 8)
!1427 = !DILocation(line: 139, column: 16, scope: !1426)
!1428 = !DILocation(line: 139, column: 8, scope: !1391)
!1429 = !DILocation(line: 141, column: 24, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1426, file: !44, line: 139, column: 25)
!1431 = !DILocation(line: 142, column: 4, scope: !1430)
!1432 = !DILocation(line: 148, column: 25, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1426, file: !44, line: 142, column: 11)
!1434 = !DILocation(line: 148, column: 33, scope: !1433)
!1435 = !DILocation(line: 148, column: 26, scope: !1433)
!1436 = !DILocation(line: 148, column: 25, scope: !1437)
!1437 = !DILexicalBlockFile(scope: !1433, file: !44, discriminator: 1)
!1438 = !DILocation(line: 148, column: 33, scope: !1437)
!1439 = !DILocation(line: 148, column: 26, scope: !1437)
!1440 = !DILocation(line: 148, column: 26, scope: !1441)
!1441 = !DILexicalBlockFile(scope: !1433, file: !44, discriminator: 2)
!1442 = !DILocation(line: 148, column: 26, scope: !1443)
!1443 = !DILexicalBlockFile(scope: !1433, file: !44, discriminator: 3)
!1444 = !DILocation(line: 148, column: 25, scope: !1443)
!1445 = !DILocation(line: 148, column: 24, scope: !1443)
!1446 = !DILocation(line: 156, column: 23, scope: !1391)
!1447 = !DILocation(line: 156, column: 40, scope: !1391)
!1448 = !DILocation(line: 156, column: 45, scope: !1391)
!1449 = !DILocation(line: 156, column: 11, scope: !1391)
!1450 = !DILocation(line: 158, column: 4, scope: !1391)
!1451 = !DILocation(line: 159, column: 1, scope: !1391)
!1452 = distinct !DISubprogram(name: "FileLockCreateEntryDirectory", scope: !44, file: !44, line: 1256, type: !1453, isLocal: true, isDefinition: true, scopeLine: 1261, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!51, !52, !40, !40, !40, !40}
!1455 = !DILocalVariable(name: "lockDir", arg: 1, scope: !1452, file: !44, line: 1256, type: !52)
!1456 = !DILocation(line: 1256, column: 42, scope: !1452)
!1457 = !DILocalVariable(name: "entryDirectory", arg: 2, scope: !1452, file: !44, line: 1257, type: !40)
!1458 = !DILocation(line: 1257, column: 37, scope: !1452)
!1459 = !DILocalVariable(name: "entryFilePath", arg: 3, scope: !1452, file: !44, line: 1258, type: !40)
!1460 = !DILocation(line: 1258, column: 37, scope: !1452)
!1461 = !DILocalVariable(name: "memberFilePath", arg: 4, scope: !1452, file: !44, line: 1259, type: !40)
!1462 = !DILocation(line: 1259, column: 37, scope: !1452)
!1463 = !DILocalVariable(name: "memberName", arg: 5, scope: !1452, file: !44, line: 1260, type: !40)
!1464 = !DILocation(line: 1260, column: 37, scope: !1452)
!1465 = !DILocalVariable(name: "err", scope: !1452, file: !44, line: 1262, type: !51)
!1466 = !DILocation(line: 1262, column: 8, scope: !1452)
!1467 = !DILocalVariable(name: "startTimeMsec", scope: !1452, file: !44, line: 1263, type: !71)
!1468 = !DILocation(line: 1263, column: 15, scope: !1452)
!1469 = !DILocation(line: 1267, column: 5, scope: !1452)
!1470 = !DILocation(line: 1267, column: 20, scope: !1452)
!1471 = !DILocation(line: 1268, column: 5, scope: !1452)
!1472 = !DILocation(line: 1268, column: 19, scope: !1452)
!1473 = !DILocation(line: 1269, column: 5, scope: !1452)
!1474 = !DILocation(line: 1269, column: 20, scope: !1452)
!1475 = !DILocation(line: 1270, column: 5, scope: !1452)
!1476 = !DILocation(line: 1270, column: 16, scope: !1452)
!1477 = !DILocation(line: 1273, column: 20, scope: !1452)
!1478 = !DILocation(line: 1273, column: 18, scope: !1452)
!1479 = !DILocation(line: 1275, column: 4, scope: !1452)
!1480 = !DILocalVariable(name: "temp", scope: !1481, file: !44, line: 1276, type: !32)
!1481 = distinct !DILexicalBlock(scope: !1452, file: !44, line: 1275, column: 14)
!1482 = !DILocation(line: 1276, column: 13, scope: !1481)
!1483 = !DILocalVariable(name: "fileData", scope: !1481, file: !44, line: 1277, type: !106)
!1484 = !DILocation(line: 1277, column: 16, scope: !1481)
!1485 = !DILocalVariable(name: "ageMsec", scope: !1481, file: !44, line: 1278, type: !71)
!1486 = !DILocation(line: 1278, column: 18, scope: !1481)
!1487 = !DILocalVariable(name: "randomNumber", scope: !1481, file: !44, line: 1279, type: !35)
!1488 = !DILocation(line: 1279, column: 14, scope: !1481)
!1489 = !DILocation(line: 1281, column: 29, scope: !1481)
!1490 = !DILocation(line: 1281, column: 13, scope: !1481)
!1491 = !DILocation(line: 1281, column: 11, scope: !1481)
!1492 = !DILocation(line: 1282, column: 11, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1481, file: !44, line: 1282, column: 11)
!1494 = !DILocation(line: 1282, column: 15, scope: !1493)
!1495 = !DILocation(line: 1282, column: 11, scope: !1481)
!1496 = !DILocation(line: 1285, column: 22, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !44, line: 1285, column: 13)
!1498 = distinct !DILexicalBlock(scope: !1493, file: !44, line: 1282, column: 21)
!1499 = !DILocation(line: 1285, column: 31, scope: !1497)
!1500 = !DILocation(line: 1285, column: 13, scope: !1498)
!1501 = !DILocation(line: 1293, column: 37, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1497, file: !44, line: 1285, column: 37)
!1503 = !DILocation(line: 1292, column: 13, scope: !1502)
!1504 = !DILocation(line: 1295, column: 17, scope: !1502)
!1505 = !DILocation(line: 1296, column: 13, scope: !1502)
!1506 = !DILocation(line: 1299, column: 22, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1498, file: !44, line: 1299, column: 13)
!1508 = !DILocation(line: 1299, column: 31, scope: !1507)
!1509 = !DILocation(line: 1299, column: 13, scope: !1498)
!1510 = !DILocation(line: 1301, column: 30, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !44, line: 1301, column: 16)
!1512 = distinct !DILexicalBlock(scope: !1507, file: !44, line: 1299, column: 37)
!1513 = !DILocation(line: 1301, column: 16, scope: !1511)
!1514 = !DILocation(line: 1301, column: 45, scope: !1511)
!1515 = !DILocation(line: 1301, column: 16, scope: !1512)
!1516 = !DILocation(line: 1303, column: 37, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1511, file: !44, line: 1301, column: 51)
!1518 = !DILocation(line: 1302, column: 15, scope: !1517)
!1519 = !DILocation(line: 1305, column: 19, scope: !1517)
!1520 = !DILocation(line: 1306, column: 15, scope: !1517)
!1521 = !DILocation(line: 1309, column: 12, scope: !1512)
!1522 = distinct !{!1522, !1479}
!1523 = !DILocation(line: 1311, column: 7, scope: !1498)
!1524 = !DILocation(line: 1312, column: 14, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1526, file: !44, line: 1312, column: 14)
!1526 = distinct !DILexicalBlock(scope: !1493, file: !44, line: 1311, column: 14)
!1527 = !DILocation(line: 1312, column: 18, scope: !1525)
!1528 = !DILocation(line: 1312, column: 14, scope: !1526)
!1529 = !DILocation(line: 1314, column: 41, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1525, file: !44, line: 1312, column: 28)
!1531 = !DILocation(line: 1314, column: 19, scope: !1530)
!1532 = !DILocation(line: 1314, column: 17, scope: !1530)
!1533 = !DILocation(line: 1316, column: 18, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1530, file: !44, line: 1316, column: 17)
!1535 = !DILocation(line: 1316, column: 22, scope: !1534)
!1536 = !DILocation(line: 1316, column: 28, scope: !1534)
!1537 = !DILocation(line: 1316, column: 32, scope: !1538)
!1538 = !DILexicalBlockFile(scope: !1534, file: !44, discriminator: 1)
!1539 = !DILocation(line: 1316, column: 36, scope: !1538)
!1540 = !DILocation(line: 1316, column: 17, scope: !1538)
!1541 = !DILocation(line: 1318, column: 38, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1534, file: !44, line: 1316, column: 47)
!1543 = !DILocation(line: 1318, column: 64, scope: !1542)
!1544 = !DILocation(line: 1318, column: 47, scope: !1542)
!1545 = !DILocation(line: 1317, column: 16, scope: !1542)
!1546 = !DILocation(line: 1320, column: 16, scope: !1542)
!1547 = !DILocation(line: 1322, column: 10, scope: !1530)
!1548 = !DILocation(line: 1324, column: 35, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1525, file: !44, line: 1322, column: 17)
!1550 = !DILocation(line: 1324, column: 61, scope: !1549)
!1551 = !DILocation(line: 1324, column: 44, scope: !1549)
!1552 = !DILocation(line: 1323, column: 13, scope: !1549)
!1553 = !DILocation(line: 1326, column: 13, scope: !1549)
!1554 = !DILocation(line: 1331, column: 23, scope: !1481)
!1555 = !DILocation(line: 1331, column: 42, scope: !1481)
!1556 = !DILocation(line: 1331, column: 48, scope: !1481)
!1557 = !DILocation(line: 1331, column: 20, scope: !1481)
!1558 = !DILocation(line: 1333, column: 47, scope: !1481)
!1559 = !DILocation(line: 1333, column: 21, scope: !1481)
!1560 = !DILocation(line: 1333, column: 8, scope: !1481)
!1561 = !DILocation(line: 1333, column: 19, scope: !1481)
!1562 = !DILocation(line: 1335, column: 40, scope: !1481)
!1563 = !DILocation(line: 1335, column: 14, scope: !1481)
!1564 = !DILocation(line: 1335, column: 12, scope: !1481)
!1565 = !DILocation(line: 1336, column: 38, scope: !1481)
!1566 = !DILocation(line: 1336, column: 52, scope: !1481)
!1567 = !DILocation(line: 1336, column: 25, scope: !1481)
!1568 = !DILocation(line: 1336, column: 8, scope: !1481)
!1569 = !DILocation(line: 1336, column: 23, scope: !1481)
!1570 = !DILocation(line: 1337, column: 18, scope: !1481)
!1571 = !DILocation(line: 1337, column: 7, scope: !1481)
!1572 = !DILocation(line: 1339, column: 40, scope: !1481)
!1573 = !DILocation(line: 1339, column: 14, scope: !1481)
!1574 = !DILocation(line: 1339, column: 12, scope: !1481)
!1575 = !DILocation(line: 1340, column: 37, scope: !1481)
!1576 = !DILocation(line: 1340, column: 51, scope: !1481)
!1577 = !DILocation(line: 1340, column: 24, scope: !1481)
!1578 = !DILocation(line: 1340, column: 8, scope: !1481)
!1579 = !DILocation(line: 1340, column: 22, scope: !1481)
!1580 = !DILocation(line: 1341, column: 18, scope: !1481)
!1581 = !DILocation(line: 1341, column: 7, scope: !1481)
!1582 = !DILocation(line: 1343, column: 38, scope: !1481)
!1583 = !DILocation(line: 1343, column: 53, scope: !1481)
!1584 = !DILocation(line: 1343, column: 52, scope: !1481)
!1585 = !DILocation(line: 1343, column: 25, scope: !1481)
!1586 = !DILocation(line: 1343, column: 8, scope: !1481)
!1587 = !DILocation(line: 1343, column: 23, scope: !1481)
!1588 = !DILocation(line: 1345, column: 36, scope: !1481)
!1589 = !DILocation(line: 1345, column: 35, scope: !1481)
!1590 = !DILocation(line: 1345, column: 13, scope: !1481)
!1591 = !DILocation(line: 1345, column: 11, scope: !1481)
!1592 = !DILocation(line: 1347, column: 11, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1481, file: !44, line: 1347, column: 11)
!1594 = !DILocation(line: 1347, column: 15, scope: !1593)
!1595 = !DILocation(line: 1347, column: 11, scope: !1481)
!1596 = !DILocation(line: 1358, column: 33, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1593, file: !44, line: 1347, column: 21)
!1598 = !DILocation(line: 1358, column: 32, scope: !1597)
!1599 = !DILocation(line: 1358, column: 16, scope: !1597)
!1600 = !DILocation(line: 1358, column: 14, scope: !1597)
!1601 = !DILocation(line: 1360, column: 14, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1597, file: !44, line: 1360, column: 14)
!1603 = !DILocation(line: 1360, column: 18, scope: !1602)
!1604 = !DILocation(line: 1360, column: 14, scope: !1597)
!1605 = !DILocation(line: 1361, column: 17, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !44, line: 1361, column: 17)
!1607 = distinct !DILexicalBlock(scope: !1602, file: !44, line: 1360, column: 24)
!1608 = !DILocation(line: 1361, column: 21, scope: !1606)
!1609 = !DILocation(line: 1361, column: 17, scope: !1607)
!1610 = !DILocation(line: 1362, column: 20, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1606, file: !44, line: 1361, column: 31)
!1612 = !DILocation(line: 1363, column: 16, scope: !1611)
!1613 = !DILocation(line: 1370, column: 10, scope: !1607)
!1614 = !DILocation(line: 1372, column: 38, scope: !1597)
!1615 = !DILocation(line: 1372, column: 37, scope: !1597)
!1616 = !DILocation(line: 1372, column: 16, scope: !1597)
!1617 = !DILocation(line: 1372, column: 14, scope: !1597)
!1618 = !DILocation(line: 1374, column: 14, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1597, file: !44, line: 1374, column: 14)
!1620 = !DILocation(line: 1374, column: 18, scope: !1619)
!1621 = !DILocation(line: 1374, column: 14, scope: !1597)
!1622 = !DILocation(line: 1376, column: 36, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1619, file: !44, line: 1374, column: 24)
!1624 = !DILocation(line: 1376, column: 35, scope: !1623)
!1625 = !DILocation(line: 1376, column: 69, scope: !1623)
!1626 = !DILocation(line: 1376, column: 52, scope: !1623)
!1627 = !DILocation(line: 1375, column: 13, scope: !1623)
!1628 = !DILocation(line: 1378, column: 13, scope: !1623)
!1629 = !DILocation(line: 1380, column: 7, scope: !1597)
!1630 = !DILocation(line: 1381, column: 16, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !44, line: 1381, column: 15)
!1632 = distinct !DILexicalBlock(scope: !1593, file: !44, line: 1380, column: 14)
!1633 = !DILocation(line: 1381, column: 20, scope: !1631)
!1634 = !DILocation(line: 1381, column: 30, scope: !1631)
!1635 = !DILocation(line: 1382, column: 16, scope: !1631)
!1636 = !DILocation(line: 1382, column: 20, scope: !1631)
!1637 = !DILocation(line: 1381, column: 15, scope: !1638)
!1638 = !DILexicalBlockFile(scope: !1632, file: !44, discriminator: 1)
!1639 = !DILocation(line: 1384, column: 37, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1631, file: !44, line: 1382, column: 31)
!1641 = !DILocation(line: 1384, column: 36, scope: !1640)
!1642 = !DILocation(line: 1384, column: 70, scope: !1640)
!1643 = !DILocation(line: 1384, column: 53, scope: !1640)
!1644 = !DILocation(line: 1383, column: 14, scope: !1640)
!1645 = !DILocation(line: 1386, column: 14, scope: !1640)
!1646 = !DILocation(line: 1390, column: 19, scope: !1481)
!1647 = !DILocation(line: 1390, column: 18, scope: !1481)
!1648 = !DILocation(line: 1390, column: 7, scope: !1481)
!1649 = !DILocation(line: 1391, column: 19, scope: !1481)
!1650 = !DILocation(line: 1391, column: 18, scope: !1481)
!1651 = !DILocation(line: 1391, column: 7, scope: !1481)
!1652 = !DILocation(line: 1392, column: 19, scope: !1481)
!1653 = !DILocation(line: 1392, column: 18, scope: !1481)
!1654 = !DILocation(line: 1392, column: 7, scope: !1481)
!1655 = !DILocation(line: 1393, column: 19, scope: !1481)
!1656 = !DILocation(line: 1393, column: 18, scope: !1481)
!1657 = !DILocation(line: 1393, column: 7, scope: !1481)
!1658 = !DILocation(line: 1395, column: 8, scope: !1481)
!1659 = !DILocation(line: 1395, column: 23, scope: !1481)
!1660 = !DILocation(line: 1396, column: 8, scope: !1481)
!1661 = !DILocation(line: 1396, column: 22, scope: !1481)
!1662 = !DILocation(line: 1397, column: 8, scope: !1481)
!1663 = !DILocation(line: 1397, column: 23, scope: !1481)
!1664 = !DILocation(line: 1398, column: 8, scope: !1481)
!1665 = !DILocation(line: 1398, column: 19, scope: !1481)
!1666 = !DILocation(line: 1406, column: 17, scope: !1481)
!1667 = !DILocation(line: 1406, column: 44, scope: !1481)
!1668 = !DILocation(line: 1406, column: 42, scope: !1481)
!1669 = !DILocation(line: 1406, column: 15, scope: !1481)
!1670 = !DILocation(line: 1408, column: 11, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1481, file: !44, line: 1408, column: 11)
!1672 = !DILocation(line: 1408, column: 19, scope: !1671)
!1673 = !DILocation(line: 1408, column: 11, scope: !1481)
!1674 = !DILocation(line: 1409, column: 73, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1671, file: !44, line: 1408, column: 27)
!1676 = !DILocation(line: 1409, column: 10, scope: !1675)
!1677 = !DILocation(line: 1411, column: 14, scope: !1675)
!1678 = !DILocation(line: 1412, column: 10, scope: !1675)
!1679 = !DILocation(line: 1275, column: 4, scope: !1680)
!1680 = !DILexicalBlockFile(scope: !1452, file: !44, discriminator: 1)
!1681 = !DILocation(line: 1416, column: 8, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1452, file: !44, line: 1416, column: 8)
!1683 = !DILocation(line: 1416, column: 12, scope: !1682)
!1684 = !DILocation(line: 1416, column: 8, scope: !1452)
!1685 = !DILocation(line: 1417, column: 19, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1682, file: !44, line: 1416, column: 18)
!1687 = !DILocation(line: 1417, column: 18, scope: !1686)
!1688 = !DILocation(line: 1417, column: 7, scope: !1686)
!1689 = !DILocation(line: 1418, column: 19, scope: !1686)
!1690 = !DILocation(line: 1418, column: 18, scope: !1686)
!1691 = !DILocation(line: 1418, column: 7, scope: !1686)
!1692 = !DILocation(line: 1419, column: 19, scope: !1686)
!1693 = !DILocation(line: 1419, column: 18, scope: !1686)
!1694 = !DILocation(line: 1419, column: 7, scope: !1686)
!1695 = !DILocation(line: 1420, column: 19, scope: !1686)
!1696 = !DILocation(line: 1420, column: 18, scope: !1686)
!1697 = !DILocation(line: 1420, column: 7, scope: !1686)
!1698 = !DILocation(line: 1422, column: 8, scope: !1686)
!1699 = !DILocation(line: 1422, column: 23, scope: !1686)
!1700 = !DILocation(line: 1423, column: 8, scope: !1686)
!1701 = !DILocation(line: 1423, column: 22, scope: !1686)
!1702 = !DILocation(line: 1424, column: 8, scope: !1686)
!1703 = !DILocation(line: 1424, column: 23, scope: !1686)
!1704 = !DILocation(line: 1425, column: 8, scope: !1686)
!1705 = !DILocation(line: 1425, column: 19, scope: !1686)
!1706 = !DILocation(line: 1426, column: 4, scope: !1686)
!1707 = !DILocation(line: 1428, column: 11, scope: !1452)
!1708 = !DILocation(line: 1428, column: 4, scope: !1452)
!1709 = distinct !DISubprogram(name: "FileLockScanner", scope: !44, file: !44, line: 866, type: !1710, isLocal: true, isDefinition: true, scopeLine: 875, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!1710 = !DISubroutineType(types: !1711)
!1711 = !{!51, !52, !1712, !57, !69}
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64, align: 64)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!51, !52, !52, !57, !57}
!1715 = !DILocalVariable(name: "lockDir", arg: 1, scope: !1709, file: !44, line: 866, type: !52)
!1716 = !DILocation(line: 866, column: 29, scope: !1709)
!1717 = !DILocalVariable(name: "func", arg: 2, scope: !1709, file: !44, line: 867, type: !1712)
!1718 = !DILocation(line: 867, column: 23, scope: !1709)
!1719 = !DILocalVariable(name: "myValues", arg: 3, scope: !1709, file: !44, line: 873, type: !57)
!1720 = !DILocation(line: 873, column: 29, scope: !1709)
!1721 = !DILocalVariable(name: "cleanUp", arg: 4, scope: !1709, file: !44, line: 874, type: !69)
!1722 = !DILocation(line: 874, column: 22, scope: !1709)
!1723 = !DILocalVariable(name: "err", scope: !1709, file: !44, line: 876, type: !51)
!1724 = !DILocation(line: 876, column: 8, scope: !1709)
!1725 = !DILocalVariable(name: "ptr", scope: !1709, file: !44, line: 877, type: !78)
!1726 = !DILocation(line: 877, column: 16, scope: !1709)
!1727 = !DILocation(line: 881, column: 4, scope: !1709)
!1728 = !DILocation(line: 881, column: 14, scope: !1709)
!1729 = !DILocation(line: 881, column: 23, scope: !1709)
!1730 = !DILocation(line: 883, column: 4, scope: !1709)
!1731 = !DILocalVariable(name: "prev", scope: !1732, file: !44, line: 884, type: !78)
!1732 = distinct !DILexicalBlock(scope: !1709, file: !44, line: 883, column: 14)
!1733 = !DILocation(line: 884, column: 19, scope: !1732)
!1734 = !DILocation(line: 886, column: 35, scope: !1732)
!1735 = !DILocation(line: 886, column: 44, scope: !1732)
!1736 = !DILocation(line: 886, column: 50, scope: !1732)
!1737 = !DILocation(line: 886, column: 60, scope: !1732)
!1738 = !DILocation(line: 886, column: 13, scope: !1732)
!1739 = !DILocation(line: 886, column: 11, scope: !1732)
!1740 = !DILocation(line: 887, column: 12, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1732, file: !44, line: 887, column: 11)
!1742 = !DILocation(line: 887, column: 16, scope: !1741)
!1743 = !DILocation(line: 887, column: 21, scope: !1741)
!1744 = !DILocation(line: 887, column: 26, scope: !1745)
!1745 = !DILexicalBlockFile(scope: !1741, file: !44, discriminator: 1)
!1746 = !DILocation(line: 887, column: 30, scope: !1745)
!1747 = !DILocation(line: 887, column: 36, scope: !1745)
!1748 = !DILocation(line: 887, column: 40, scope: !1749)
!1749 = !DILexicalBlockFile(scope: !1741, file: !44, discriminator: 2)
!1750 = !DILocation(line: 887, column: 50, scope: !1749)
!1751 = !DILocation(line: 887, column: 59, scope: !1749)
!1752 = !DILocation(line: 887, column: 11, scope: !1749)
!1753 = !DILocation(line: 888, column: 10, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1741, file: !44, line: 887, column: 69)
!1755 = !DILocation(line: 891, column: 12, scope: !1732)
!1756 = !DILocation(line: 892, column: 13, scope: !1732)
!1757 = !DILocation(line: 892, column: 23, scope: !1732)
!1758 = !DILocation(line: 892, column: 11, scope: !1732)
!1759 = !DILocation(line: 899, column: 7, scope: !1732)
!1760 = !DILocation(line: 899, column: 14, scope: !1761)
!1761 = !DILexicalBlockFile(scope: !1732, file: !44, discriminator: 1)
!1762 = !DILocation(line: 899, column: 18, scope: !1761)
!1763 = !DILocation(line: 899, column: 7, scope: !1761)
!1764 = !DILocalVariable(name: "remove", scope: !1765, file: !44, line: 900, type: !69)
!1765 = distinct !DILexicalBlock(scope: !1732, file: !44, line: 899, column: 26)
!1766 = !DILocation(line: 900, column: 15, scope: !1765)
!1767 = !DILocation(line: 902, column: 14, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1765, file: !44, line: 902, column: 14)
!1769 = !DILocation(line: 902, column: 19, scope: !1768)
!1770 = !DILocation(line: 902, column: 14, scope: !1765)
!1771 = !DILocation(line: 903, column: 17, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !44, line: 903, column: 17)
!1773 = distinct !DILexicalBlock(scope: !1768, file: !44, line: 902, column: 27)
!1774 = !DILocation(line: 903, column: 22, scope: !1772)
!1775 = !DILocation(line: 903, column: 26, scope: !1772)
!1776 = !DILocation(line: 903, column: 17, scope: !1773)
!1777 = !DILocalVariable(name: "temp", scope: !1778, file: !44, line: 904, type: !32)
!1778 = distinct !DILexicalBlock(scope: !1772, file: !44, line: 903, column: 34)
!1779 = !DILocation(line: 904, column: 22, scope: !1778)
!1780 = !DILocalVariable(name: "path", scope: !1778, file: !44, line: 905, type: !32)
!1781 = !DILocation(line: 905, column: 22, scope: !1778)
!1782 = !DILocalVariable(name: "index", scope: !1778, file: !44, line: 906, type: !1357)
!1783 = !DILocation(line: 906, column: 29, scope: !1778)
!1784 = !DILocation(line: 911, column: 34, scope: !1778)
!1785 = !DILocation(line: 911, column: 39, scope: !1778)
!1786 = !DILocation(line: 911, column: 48, scope: !1778)
!1787 = !DILocation(line: 910, column: 16, scope: !1778)
!1788 = !DILocation(line: 913, column: 36, scope: !1778)
!1789 = !DILocation(line: 913, column: 50, scope: !1778)
!1790 = !DILocation(line: 913, column: 55, scope: !1778)
!1791 = !DILocation(line: 913, column: 23, scope: !1778)
!1792 = !DILocation(line: 913, column: 21, scope: !1778)
!1793 = !DILocation(line: 915, column: 41, scope: !1778)
!1794 = !DILocation(line: 915, column: 24, scope: !1778)
!1795 = !DILocation(line: 915, column: 22, scope: !1778)
!1796 = !DILocation(line: 918, column: 39, scope: !1778)
!1797 = !DILocation(line: 918, column: 45, scope: !1778)
!1798 = !DILocation(line: 918, column: 23, scope: !1778)
!1799 = !DILocation(line: 918, column: 21, scope: !1778)
!1800 = !DILocation(line: 919, column: 30, scope: !1778)
!1801 = !DILocation(line: 919, column: 16, scope: !1778)
!1802 = !DILocation(line: 920, column: 27, scope: !1778)
!1803 = !DILocation(line: 920, column: 16, scope: !1778)
!1804 = !DILocation(line: 922, column: 39, scope: !1778)
!1805 = !DILocation(line: 922, column: 45, scope: !1778)
!1806 = !DILocation(line: 922, column: 23, scope: !1778)
!1807 = !DILocation(line: 922, column: 21, scope: !1778)
!1808 = !DILocation(line: 923, column: 30, scope: !1778)
!1809 = !DILocation(line: 923, column: 16, scope: !1778)
!1810 = !DILocation(line: 924, column: 27, scope: !1778)
!1811 = !DILocation(line: 924, column: 16, scope: !1778)
!1812 = !DILocation(line: 926, column: 37, scope: !1778)
!1813 = !DILocation(line: 926, column: 16, scope: !1778)
!1814 = !DILocation(line: 928, column: 27, scope: !1778)
!1815 = !DILocation(line: 928, column: 16, scope: !1778)
!1816 = !DILocation(line: 930, column: 23, scope: !1778)
!1817 = !DILocation(line: 931, column: 13, scope: !1778)
!1818 = !DILocation(line: 932, column: 16, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1772, file: !44, line: 931, column: 20)
!1820 = !DILocation(line: 932, column: 21, scope: !1819)
!1821 = !DILocation(line: 932, column: 28, scope: !1819)
!1822 = !DILocation(line: 933, column: 16, scope: !1819)
!1823 = !DILocation(line: 933, column: 21, scope: !1819)
!1824 = !DILocation(line: 933, column: 25, scope: !1819)
!1825 = !DILocation(line: 935, column: 23, scope: !1819)
!1826 = !DILocation(line: 937, column: 10, scope: !1773)
!1827 = !DILocation(line: 938, column: 20, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1768, file: !44, line: 937, column: 17)
!1829 = !DILocation(line: 941, column: 14, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1765, file: !44, line: 941, column: 14)
!1831 = !DILocation(line: 941, column: 14, scope: !1765)
!1832 = !DILocation(line: 942, column: 17, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !44, line: 942, column: 17)
!1834 = distinct !DILexicalBlock(scope: !1830, file: !44, line: 941, column: 22)
!1835 = !DILocation(line: 942, column: 22, scope: !1833)
!1836 = !DILocation(line: 942, column: 17, scope: !1834)
!1837 = !DILocation(line: 943, column: 37, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1833, file: !44, line: 942, column: 30)
!1839 = !DILocation(line: 943, column: 42, scope: !1838)
!1840 = !DILocation(line: 943, column: 16, scope: !1838)
!1841 = !DILocation(line: 943, column: 26, scope: !1838)
!1842 = !DILocation(line: 943, column: 35, scope: !1838)
!1843 = !DILocation(line: 944, column: 13, scope: !1838)
!1844 = !DILocation(line: 945, column: 29, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1833, file: !44, line: 944, column: 20)
!1846 = !DILocation(line: 945, column: 34, scope: !1845)
!1847 = !DILocation(line: 945, column: 16, scope: !1845)
!1848 = !DILocation(line: 945, column: 22, scope: !1845)
!1849 = !DILocation(line: 945, column: 27, scope: !1845)
!1850 = !DILocation(line: 947, column: 10, scope: !1834)
!1851 = !DILocation(line: 949, column: 17, scope: !1765)
!1852 = !DILocation(line: 949, column: 15, scope: !1765)
!1853 = !DILocation(line: 950, column: 16, scope: !1765)
!1854 = !DILocation(line: 950, column: 21, scope: !1765)
!1855 = !DILocation(line: 950, column: 14, scope: !1765)
!1856 = !DILocation(line: 899, column: 7, scope: !1857)
!1857 = !DILexicalBlockFile(scope: !1732, file: !44, discriminator: 2)
!1858 = distinct !{!1858, !1759}
!1859 = !DILocation(line: 953, column: 7, scope: !1732)
!1860 = !DILocation(line: 883, column: 4, scope: !1861)
!1861 = !DILexicalBlockFile(scope: !1709, file: !44, discriminator: 1)
!1862 = distinct !{!1862, !1730}
!1863 = !DILocation(line: 958, column: 4, scope: !1709)
!1864 = !DILocation(line: 958, column: 11, scope: !1861)
!1865 = !DILocation(line: 958, column: 21, scope: !1861)
!1866 = !DILocation(line: 958, column: 30, scope: !1861)
!1867 = !DILocation(line: 958, column: 4, scope: !1861)
!1868 = !DILocation(line: 959, column: 13, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1709, file: !44, line: 958, column: 38)
!1870 = !DILocation(line: 959, column: 23, scope: !1869)
!1871 = !DILocation(line: 959, column: 11, scope: !1869)
!1872 = !DILocation(line: 960, column: 28, scope: !1869)
!1873 = !DILocation(line: 960, column: 33, scope: !1869)
!1874 = !DILocation(line: 960, column: 7, scope: !1869)
!1875 = !DILocation(line: 960, column: 17, scope: !1869)
!1876 = !DILocation(line: 960, column: 26, scope: !1869)
!1877 = !DILocation(line: 962, column: 18, scope: !1869)
!1878 = !DILocation(line: 962, column: 23, scope: !1869)
!1879 = !DILocation(line: 962, column: 7, scope: !1869)
!1880 = !DILocation(line: 964, column: 18, scope: !1869)
!1881 = !DILocation(line: 964, column: 7, scope: !1869)
!1882 = !DILocation(line: 958, column: 4, scope: !1883)
!1883 = !DILexicalBlockFile(scope: !1709, file: !44, discriminator: 2)
!1884 = distinct !{!1884, !1863}
!1885 = !DILocation(line: 967, column: 11, scope: !1709)
!1886 = !DILocation(line: 967, column: 4, scope: !1709)
!1887 = distinct !DISubprogram(name: "FileLockNumberScan", scope: !44, file: !44, line: 1174, type: !1713, isLocal: true, isDefinition: true, scopeLine: 1178, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!1888 = !DILocalVariable(name: "lockDir", arg: 1, scope: !1887, file: !44, line: 1174, type: !52)
!1889 = !DILocation(line: 1174, column: 32, scope: !1887)
!1890 = !DILocalVariable(name: "fileName", arg: 2, scope: !1887, file: !44, line: 1175, type: !52)
!1891 = !DILocation(line: 1175, column: 32, scope: !1887)
!1892 = !DILocalVariable(name: "memberValues", arg: 3, scope: !1887, file: !44, line: 1176, type: !57)
!1893 = !DILocation(line: 1176, column: 32, scope: !1887)
!1894 = !DILocalVariable(name: "myValues", arg: 4, scope: !1887, file: !44, line: 1177, type: !57)
!1895 = !DILocation(line: 1177, column: 32, scope: !1887)
!1896 = !DILocation(line: 1182, column: 8, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1887, file: !44, line: 1182, column: 8)
!1898 = !DILocation(line: 1182, column: 22, scope: !1897)
!1899 = !DILocation(line: 1182, column: 38, scope: !1897)
!1900 = !DILocation(line: 1182, column: 48, scope: !1897)
!1901 = !DILocation(line: 1182, column: 36, scope: !1897)
!1902 = !DILocation(line: 1182, column: 8, scope: !1887)
!1903 = !DILocation(line: 1183, column: 33, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1897, file: !44, line: 1182, column: 63)
!1905 = !DILocation(line: 1183, column: 47, scope: !1904)
!1906 = !DILocation(line: 1183, column: 7, scope: !1904)
!1907 = !DILocation(line: 1183, column: 17, scope: !1904)
!1908 = !DILocation(line: 1183, column: 31, scope: !1904)
!1909 = !DILocation(line: 1184, column: 4, scope: !1904)
!1910 = !DILocation(line: 1186, column: 4, scope: !1887)
!1911 = distinct !DISubprogram(name: "FileLockCreateMemberFile", scope: !44, file: !44, line: 1450, type: !1912, isLocal: true, isDefinition: true, scopeLine: 1454, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!51, !1914, !1915, !52, !52}
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64, align: 64)
!1916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!1917 = !DILocalVariable(name: "desc", arg: 1, scope: !1911, file: !44, line: 1450, type: !1914)
!1918 = !DILocation(line: 1450, column: 44, scope: !1911)
!1919 = !DILocalVariable(name: "myValues", arg: 2, scope: !1911, file: !44, line: 1451, type: !1915)
!1920 = !DILocation(line: 1451, column: 44, scope: !1911)
!1921 = !DILocalVariable(name: "entryFilePath", arg: 3, scope: !1911, file: !44, line: 1452, type: !52)
!1922 = !DILocation(line: 1452, column: 38, scope: !1911)
!1923 = !DILocalVariable(name: "memberFilePath", arg: 4, scope: !1911, file: !44, line: 1453, type: !52)
!1924 = !DILocation(line: 1453, column: 38, scope: !1911)
!1925 = !DILocalVariable(name: "cnt", scope: !1911, file: !44, line: 1455, type: !51)
!1926 = !DILocation(line: 1455, column: 8, scope: !1911)
!1927 = !DILocalVariable(name: "pid", scope: !1911, file: !44, line: 1456, type: !51)
!1928 = !DILocation(line: 1456, column: 8, scope: !1911)
!1929 = !DILocalVariable(name: "len", scope: !1911, file: !44, line: 1457, type: !54)
!1930 = !DILocation(line: 1457, column: 11, scope: !1911)
!1931 = !DILocalVariable(name: "result", scope: !1911, file: !44, line: 1458, type: !121)
!1932 = !DILocation(line: 1458, column: 17, scope: !1911)
!1933 = !DILocalVariable(name: "processCreationTime", scope: !1911, file: !44, line: 1459, type: !110)
!1934 = !DILocation(line: 1459, column: 11, scope: !1911)
!1935 = !DILocalVariable(name: "err", scope: !1911, file: !44, line: 1461, type: !51)
!1936 = !DILocation(line: 1461, column: 8, scope: !1911)
!1937 = !DILocalVariable(name: "buffer", scope: !1911, file: !44, line: 1462, type: !1938)
!1938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 4096, align: 8, elements: !1939)
!1939 = !{!1940}
!1940 = !DISubrange(count: 512)
!1941 = !DILocation(line: 1462, column: 9, scope: !1911)
!1942 = !DILocation(line: 1485, column: 17, scope: !1911)
!1943 = !DILocation(line: 1485, column: 27, scope: !1911)
!1944 = !DILocation(line: 1485, column: 10, scope: !1911)
!1945 = !DILocation(line: 1485, column: 8, scope: !1911)
!1946 = !DILocation(line: 1490, column: 16, scope: !1911)
!1947 = !DILocation(line: 1491, column: 16, scope: !1911)
!1948 = !DILocation(line: 1491, column: 26, scope: !1911)
!1949 = !DILocation(line: 1492, column: 16, scope: !1911)
!1950 = !DILocation(line: 1492, column: 26, scope: !1911)
!1951 = !DILocation(line: 1493, column: 16, scope: !1911)
!1952 = !DILocation(line: 1493, column: 26, scope: !1911)
!1953 = !DILocation(line: 1494, column: 16, scope: !1911)
!1954 = !DILocation(line: 1494, column: 26, scope: !1911)
!1955 = !DILocation(line: 1495, column: 16, scope: !1911)
!1956 = !DILocation(line: 1496, column: 16, scope: !1911)
!1957 = !DILocation(line: 1496, column: 26, scope: !1911)
!1958 = !DILocation(line: 1490, column: 4, scope: !1911)
!1959 = !DILocation(line: 1499, column: 26, scope: !1911)
!1960 = !DILocation(line: 1499, column: 32, scope: !1911)
!1961 = !DILocation(line: 1499, column: 13, scope: !1911)
!1962 = !DILocation(line: 1499, column: 11, scope: !1911)
!1963 = !DILocation(line: 1501, column: 26, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1911, file: !44, line: 1501, column: 8)
!1965 = !DILocation(line: 1501, column: 9, scope: !1964)
!1966 = !DILocation(line: 1501, column: 8, scope: !1911)
!1967 = !DILocation(line: 1502, column: 48, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1964, file: !44, line: 1501, column: 35)
!1969 = !DILocation(line: 1502, column: 47, scope: !1968)
!1970 = !DILocation(line: 1502, column: 13, scope: !1971)
!1971 = !DILexicalBlockFile(scope: !1968, file: !44, discriminator: 1)
!1972 = !DILocation(line: 1502, column: 11, scope: !1968)
!1973 = !DILocation(line: 1505, column: 15, scope: !1968)
!1974 = !DILocation(line: 1505, column: 47, scope: !1968)
!1975 = !DILocation(line: 1505, column: 30, scope: !1968)
!1976 = !DILocation(line: 1504, column: 7, scope: !1968)
!1977 = !DILocation(line: 1507, column: 20, scope: !1968)
!1978 = !DILocation(line: 1507, column: 7, scope: !1968)
!1979 = !DILocation(line: 1509, column: 14, scope: !1968)
!1980 = !DILocation(line: 1509, column: 7, scope: !1968)
!1981 = !DILocation(line: 1512, column: 39, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1911, file: !44, line: 1512, column: 8)
!1983 = !DILocation(line: 1512, column: 26, scope: !1982)
!1984 = !DILocation(line: 1512, column: 9, scope: !1985)
!1985 = !DILexicalBlockFile(scope: !1982, file: !44, discriminator: 1)
!1986 = !DILocation(line: 1512, column: 9, scope: !1982)
!1987 = !DILocation(line: 1512, column: 8, scope: !1911)
!1988 = !DILocation(line: 1513, column: 48, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1982, file: !44, line: 1512, column: 47)
!1990 = !DILocation(line: 1513, column: 47, scope: !1989)
!1991 = !DILocation(line: 1513, column: 13, scope: !1992)
!1992 = !DILexicalBlockFile(scope: !1989, file: !44, discriminator: 1)
!1993 = !DILocation(line: 1513, column: 11, scope: !1989)
!1994 = !DILocation(line: 1516, column: 15, scope: !1989)
!1995 = !DILocation(line: 1516, column: 47, scope: !1989)
!1996 = !DILocation(line: 1516, column: 30, scope: !1989)
!1997 = !DILocation(line: 1515, column: 7, scope: !1989)
!1998 = !DILocation(line: 1518, column: 14, scope: !1989)
!1999 = !DILocation(line: 1518, column: 7, scope: !1989)
!2000 = !DILocation(line: 1521, column: 8, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1911, file: !44, line: 1521, column: 8)
!2002 = !DILocation(line: 1521, column: 12, scope: !2001)
!2003 = !DILocation(line: 1521, column: 8, scope: !1911)
!2004 = !DILocation(line: 1523, column: 29, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2001, file: !44, line: 1521, column: 30)
!2006 = !DILocation(line: 1523, column: 44, scope: !2005)
!2007 = !DILocation(line: 1522, column: 7, scope: !2005)
!2008 = !DILocation(line: 1525, column: 7, scope: !2005)
!2009 = !DILocation(line: 1528, column: 22, scope: !1911)
!2010 = !DILocation(line: 1528, column: 37, scope: !1911)
!2011 = !DILocation(line: 1528, column: 10, scope: !1911)
!2012 = !DILocation(line: 1528, column: 8, scope: !1911)
!2013 = !DILocation(line: 1530, column: 8, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !1911, file: !44, line: 1530, column: 8)
!2015 = !DILocation(line: 1530, column: 12, scope: !2014)
!2016 = !DILocation(line: 1530, column: 8, scope: !1911)
!2017 = !DILocation(line: 1532, column: 29, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2014, file: !44, line: 1530, column: 18)
!2019 = !DILocation(line: 1532, column: 44, scope: !2018)
!2020 = !DILocation(line: 1533, column: 32, scope: !2018)
!2021 = !DILocation(line: 1533, column: 15, scope: !2018)
!2022 = !DILocation(line: 1531, column: 7, scope: !2018)
!2023 = !DILocation(line: 1545, column: 14, scope: !2018)
!2024 = !DILocation(line: 1545, column: 7, scope: !2018)
!2025 = !DILocation(line: 1548, column: 4, scope: !1911)
!2026 = !DILocation(line: 1549, column: 1, scope: !1911)
!2027 = distinct !DISubprogram(name: "FileLockWaitForPossession", scope: !44, file: !44, line: 1084, type: !1713, isLocal: true, isDefinition: true, scopeLine: 1088, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!2028 = !DILocalVariable(name: "lockDir", arg: 1, scope: !2027, file: !44, line: 1084, type: !52)
!2029 = !DILocation(line: 1084, column: 39, scope: !2027)
!2030 = !DILocalVariable(name: "fileName", arg: 2, scope: !2027, file: !44, line: 1085, type: !52)
!2031 = !DILocation(line: 1085, column: 39, scope: !2027)
!2032 = !DILocalVariable(name: "memberValues", arg: 3, scope: !2027, file: !44, line: 1086, type: !57)
!2033 = !DILocation(line: 1086, column: 39, scope: !2027)
!2034 = !DILocalVariable(name: "myValues", arg: 4, scope: !2027, file: !44, line: 1087, type: !57)
!2035 = !DILocation(line: 1087, column: 39, scope: !2027)
!2036 = !DILocalVariable(name: "err", scope: !2027, file: !44, line: 1089, type: !51)
!2037 = !DILocation(line: 1089, column: 8, scope: !2027)
!2038 = !DILocation(line: 1095, column: 10, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2027, file: !44, line: 1095, column: 8)
!2040 = !DILocation(line: 1095, column: 24, scope: !2039)
!2041 = !DILocation(line: 1095, column: 40, scope: !2039)
!2042 = !DILocation(line: 1095, column: 50, scope: !2039)
!2043 = !DILocation(line: 1095, column: 38, scope: !2039)
!2044 = !DILocation(line: 1095, column: 65, scope: !2039)
!2045 = !DILocation(line: 1096, column: 10, scope: !2039)
!2046 = !DILocation(line: 1096, column: 24, scope: !2039)
!2047 = !DILocation(line: 1096, column: 41, scope: !2039)
!2048 = !DILocation(line: 1096, column: 51, scope: !2039)
!2049 = !DILocation(line: 1096, column: 38, scope: !2039)
!2050 = !DILocation(line: 1096, column: 66, scope: !2039)
!2051 = !DILocation(line: 1097, column: 28, scope: !2039)
!2052 = !DILocation(line: 1097, column: 42, scope: !2039)
!2053 = !DILocation(line: 1098, column: 28, scope: !2039)
!2054 = !DILocation(line: 1098, column: 38, scope: !2039)
!2055 = !DILocation(line: 1097, column: 12, scope: !2039)
!2056 = !DILocation(line: 1098, column: 50, scope: !2039)
!2057 = !DILocation(line: 1098, column: 57, scope: !2039)
!2058 = !DILocation(line: 1099, column: 18, scope: !2039)
!2059 = !DILocation(line: 1099, column: 32, scope: !2039)
!2060 = !DILocation(line: 1099, column: 11, scope: !2039)
!2061 = !DILocation(line: 1099, column: 47, scope: !2039)
!2062 = !DILocation(line: 1099, column: 53, scope: !2039)
!2063 = !DILocation(line: 1100, column: 18, scope: !2039)
!2064 = !DILocation(line: 1100, column: 28, scope: !2039)
!2065 = !DILocation(line: 1100, column: 11, scope: !2039)
!2066 = !DILocation(line: 1100, column: 43, scope: !2039)
!2067 = !DILocation(line: 1095, column: 8, scope: !2068)
!2068 = !DILexicalBlockFile(scope: !2027, file: !44, discriminator: 1)
!2069 = !DILocalVariable(name: "path", scope: !2070, file: !44, line: 1101, type: !32)
!2070 = distinct !DILexicalBlock(scope: !2039, file: !44, line: 1100, column: 51)
!2071 = !DILocation(line: 1101, column: 13, scope: !2070)
!2072 = !DILocalVariable(name: "thisMachine", scope: !2070, file: !44, line: 1102, type: !69)
!2073 = !DILocation(line: 1102, column: 12, scope: !2070)
!2074 = !DILocation(line: 1104, column: 44, scope: !2070)
!2075 = !DILocation(line: 1104, column: 54, scope: !2070)
!2076 = !DILocation(line: 1105, column: 44, scope: !2070)
!2077 = !DILocation(line: 1105, column: 58, scope: !2070)
!2078 = !DILocation(line: 1104, column: 21, scope: !2070)
!2079 = !DILocation(line: 1104, column: 19, scope: !2070)
!2080 = !DILocation(line: 1107, column: 27, scope: !2070)
!2081 = !DILocation(line: 1107, column: 41, scope: !2070)
!2082 = !DILocation(line: 1107, column: 14, scope: !2070)
!2083 = !DILocation(line: 1107, column: 12, scope: !2070)
!2084 = !DILocation(line: 1109, column: 7, scope: !2070)
!2085 = !DILocation(line: 1109, column: 37, scope: !2086)
!2086 = !DILexicalBlockFile(scope: !2070, file: !44, discriminator: 1)
!2087 = !DILocation(line: 1109, column: 21, scope: !2086)
!2088 = !DILocation(line: 1109, column: 19, scope: !2086)
!2089 = !DILocation(line: 1109, column: 48, scope: !2086)
!2090 = !DILocation(line: 1109, column: 7, scope: !2086)
!2091 = !DILocation(line: 1111, column: 32, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2070, file: !44, line: 1109, column: 54)
!2093 = !DILocation(line: 1111, column: 16, scope: !2092)
!2094 = !DILocation(line: 1111, column: 14, scope: !2092)
!2095 = !DILocation(line: 1112, column: 14, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2092, file: !44, line: 1112, column: 14)
!2097 = !DILocation(line: 1112, column: 18, scope: !2096)
!2098 = !DILocation(line: 1112, column: 14, scope: !2092)
!2099 = !DILocation(line: 1113, column: 17, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !44, line: 1113, column: 17)
!2101 = distinct !DILexicalBlock(scope: !2096, file: !44, line: 1112, column: 24)
!2102 = !DILocation(line: 1113, column: 21, scope: !2100)
!2103 = !DILocation(line: 1113, column: 17, scope: !2101)
!2104 = !DILocation(line: 1115, column: 20, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2100, file: !44, line: 1113, column: 31)
!2106 = !DILocation(line: 1116, column: 13, scope: !2105)
!2107 = !DILocation(line: 1118, column: 13, scope: !2101)
!2108 = !DILocation(line: 1122, column: 14, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2092, file: !44, line: 1122, column: 14)
!2110 = !DILocation(line: 1122, column: 26, scope: !2109)
!2111 = !DILocation(line: 1123, column: 40, scope: !2109)
!2112 = !DILocation(line: 1123, column: 54, scope: !2109)
!2113 = !DILocation(line: 1123, column: 15, scope: !2109)
!2114 = !DILocation(line: 1122, column: 14, scope: !2115)
!2115 = !DILexicalBlockFile(scope: !2092, file: !44, discriminator: 1)
!2116 = !DILocation(line: 1126, column: 35, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2109, file: !44, line: 1123, column: 68)
!2118 = !DILocation(line: 1125, column: 13, scope: !2117)
!2119 = !DILocation(line: 1128, column: 45, scope: !2117)
!2120 = !DILocation(line: 1128, column: 54, scope: !2117)
!2121 = !DILocation(line: 1128, column: 19, scope: !2117)
!2122 = !DILocation(line: 1128, column: 17, scope: !2117)
!2123 = !DILocation(line: 1129, column: 13, scope: !2117)
!2124 = !DILocation(line: 1109, column: 7, scope: !2125)
!2125 = !DILexicalBlockFile(scope: !2070, file: !44, discriminator: 2)
!2126 = distinct !{!2126, !2084}
!2127 = !DILocation(line: 1138, column: 12, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2070, file: !44, line: 1138, column: 11)
!2129 = !DILocation(line: 1138, column: 22, scope: !2128)
!2130 = !DILocation(line: 1138, column: 38, scope: !2128)
!2131 = !DILocation(line: 1138, column: 44, scope: !2128)
!2132 = !DILocation(line: 1139, column: 12, scope: !2128)
!2133 = !DILocation(line: 1139, column: 16, scope: !2128)
!2134 = !DILocation(line: 1138, column: 11, scope: !2086)
!2135 = !DILocation(line: 1140, column: 14, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2137, file: !44, line: 1140, column: 14)
!2137 = distinct !DILexicalBlock(scope: !2128, file: !44, line: 1139, column: 27)
!2138 = !DILocation(line: 1140, column: 14, scope: !2137)
!2139 = !DILocation(line: 1142, column: 35, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2136, file: !44, line: 1140, column: 27)
!2141 = !DILocation(line: 1142, column: 41, scope: !2140)
!2142 = !DILocation(line: 1142, column: 55, scope: !2140)
!2143 = !DILocation(line: 1141, column: 13, scope: !2140)
!2144 = !DILocation(line: 1143, column: 10, scope: !2140)
!2145 = !DILocation(line: 1145, column: 35, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2136, file: !44, line: 1143, column: 17)
!2147 = !DILocation(line: 1145, column: 41, scope: !2146)
!2148 = !DILocation(line: 1145, column: 55, scope: !2146)
!2149 = !DILocation(line: 1144, column: 13, scope: !2146)
!2150 = !DILocation(line: 1147, column: 7, scope: !2137)
!2151 = !DILocation(line: 1149, column: 18, scope: !2070)
!2152 = !DILocation(line: 1149, column: 7, scope: !2070)
!2153 = !DILocation(line: 1150, column: 4, scope: !2070)
!2154 = !DILocation(line: 1152, column: 11, scope: !2027)
!2155 = !DILocation(line: 1152, column: 4, scope: !2027)
!2156 = distinct !DISubprogram(name: "FileLockMakeDirectory", scope: !44, file: !44, line: 1208, type: !2157, isLocal: true, isDefinition: true, scopeLine: 1209, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!51, !52}
!2159 = !DILocalVariable(name: "pathName", arg: 1, scope: !2156, file: !44, line: 1208, type: !52)
!2160 = !DILocation(line: 1208, column: 35, scope: !2156)
!2161 = !DILocalVariable(name: "err", scope: !2156, file: !44, line: 1210, type: !51)
!2162 = !DILocation(line: 1210, column: 8, scope: !2156)
!2163 = !DILocalVariable(name: "save", scope: !2156, file: !44, line: 1213, type: !2164)
!2164 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !74, line: 70, baseType: !2165)
!2165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1361, line: 129, baseType: !39)
!2166 = !DILocation(line: 1213, column: 11, scope: !2156)
!2167 = !DILocation(line: 1215, column: 11, scope: !2156)
!2168 = !DILocation(line: 1215, column: 9, scope: !2156)
!2169 = !DILocation(line: 1220, column: 31, scope: !2156)
!2170 = !DILocation(line: 1220, column: 10, scope: !2156)
!2171 = !DILocation(line: 1220, column: 8, scope: !2156)
!2172 = !DILocation(line: 1223, column: 10, scope: !2156)
!2173 = !DILocation(line: 1223, column: 4, scope: !2156)
!2174 = !DILocation(line: 1226, column: 11, scope: !2156)
!2175 = !DILocation(line: 1226, column: 4, scope: !2156)
!2176 = distinct !DISubprogram(name: "FileLockScanDirectory", scope: !44, file: !44, line: 679, type: !1710, isLocal: true, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!2177 = !DILocalVariable(name: "lockDir", arg: 1, scope: !2176, file: !44, line: 679, type: !52)
!2178 = !DILocation(line: 679, column: 35, scope: !2176)
!2179 = !DILocalVariable(name: "func", arg: 2, scope: !2176, file: !44, line: 680, type: !1712)
!2180 = !DILocation(line: 680, column: 29, scope: !2176)
!2181 = !DILocalVariable(name: "myValues", arg: 3, scope: !2176, file: !44, line: 686, type: !57)
!2182 = !DILocation(line: 686, column: 35, scope: !2176)
!2183 = !DILocalVariable(name: "cleanUp", arg: 4, scope: !2176, file: !44, line: 687, type: !69)
!2184 = !DILocation(line: 687, column: 28, scope: !2176)
!2185 = !DILocalVariable(name: "i", scope: !2176, file: !44, line: 689, type: !35)
!2186 = !DILocation(line: 689, column: 11, scope: !2176)
!2187 = !DILocalVariable(name: "err", scope: !2176, file: !44, line: 690, type: !51)
!2188 = !DILocation(line: 690, column: 8, scope: !2176)
!2189 = !DILocalVariable(name: "numEntries", scope: !2176, file: !44, line: 691, type: !51)
!2190 = !DILocation(line: 691, column: 8, scope: !2176)
!2191 = !DILocalVariable(name: "fileList", scope: !2176, file: !44, line: 693, type: !40)
!2192 = !DILocation(line: 693, column: 11, scope: !2176)
!2193 = !DILocalVariable(name: "myExecutionID", scope: !2176, file: !44, line: 694, type: !32)
!2194 = !DILocation(line: 694, column: 10, scope: !2176)
!2195 = !DILocalVariable(name: "locationChecksum", scope: !2176, file: !44, line: 695, type: !32)
!2196 = !DILocation(line: 695, column: 10, scope: !2176)
!2197 = !DILocation(line: 699, column: 37, scope: !2176)
!2198 = !DILocation(line: 699, column: 17, scope: !2176)
!2199 = !DILocation(line: 699, column: 15, scope: !2176)
!2200 = !DILocation(line: 701, column: 8, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2176, file: !44, line: 701, column: 8)
!2202 = !DILocation(line: 701, column: 19, scope: !2201)
!2203 = !DILocation(line: 701, column: 8, scope: !2176)
!2204 = !DILocation(line: 703, column: 25, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2201, file: !44, line: 701, column: 26)
!2206 = !DILocation(line: 703, column: 35, scope: !2205)
!2207 = !DILocation(line: 703, column: 34, scope: !2205)
!2208 = !DILocation(line: 702, column: 7, scope: !2205)
!2209 = !DILocation(line: 705, column: 7, scope: !2205)
!2210 = !DILocation(line: 709, column: 11, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2176, file: !44, line: 709, column: 4)
!2212 = !DILocation(line: 709, column: 20, scope: !2211)
!2213 = !DILocation(line: 709, column: 9, scope: !2211)
!2214 = !DILocation(line: 709, column: 25, scope: !2215)
!2215 = !DILexicalBlockFile(scope: !2216, file: !44, discriminator: 1)
!2216 = distinct !DILexicalBlock(scope: !2211, file: !44, line: 709, column: 4)
!2217 = !DILocation(line: 709, column: 29, scope: !2215)
!2218 = !DILocation(line: 709, column: 27, scope: !2215)
!2219 = !DILocation(line: 709, column: 4, scope: !2215)
!2220 = !DILocation(line: 711, column: 39, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !44, line: 711, column: 11)
!2222 = distinct !DILexicalBlock(scope: !2216, file: !44, line: 709, column: 46)
!2223 = !DILocation(line: 711, column: 30, scope: !2221)
!2224 = !DILocation(line: 711, column: 12, scope: !2221)
!2225 = !DILocation(line: 711, column: 11, scope: !2222)
!2226 = !DILocation(line: 713, column: 37, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2221, file: !44, line: 711, column: 44)
!2228 = !DILocation(line: 713, column: 28, scope: !2227)
!2229 = !DILocation(line: 713, column: 41, scope: !2227)
!2230 = !DILocation(line: 712, column: 10, scope: !2227)
!2231 = !DILocation(line: 715, column: 42, scope: !2227)
!2232 = !DILocation(line: 715, column: 60, scope: !2227)
!2233 = !DILocation(line: 715, column: 51, scope: !2227)
!2234 = !DILocation(line: 715, column: 16, scope: !2227)
!2235 = !DILocation(line: 715, column: 14, scope: !2227)
!2236 = !DILocation(line: 716, column: 14, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2227, file: !44, line: 716, column: 14)
!2238 = !DILocation(line: 716, column: 18, scope: !2237)
!2239 = !DILocation(line: 716, column: 14, scope: !2227)
!2240 = !DILocation(line: 717, column: 13, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2237, file: !44, line: 716, column: 24)
!2242 = !DILocation(line: 720, column: 29, scope: !2227)
!2243 = !DILocation(line: 720, column: 20, scope: !2227)
!2244 = !DILocation(line: 720, column: 9, scope: !2227)
!2245 = !DILocation(line: 721, column: 18, scope: !2227)
!2246 = !DILocation(line: 721, column: 9, scope: !2227)
!2247 = !DILocation(line: 721, column: 21, scope: !2227)
!2248 = !DILocation(line: 723, column: 9, scope: !2227)
!2249 = !DILocation(line: 733, column: 21, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2222, file: !44, line: 733, column: 11)
!2251 = !DILocation(line: 733, column: 12, scope: !2250)
!2252 = !DILocation(line: 733, column: 11, scope: !2250)
!2253 = !DILocation(line: 733, column: 24, scope: !2250)
!2254 = !DILocation(line: 733, column: 11, scope: !2222)
!2255 = !DILocation(line: 734, column: 14, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2257, file: !44, line: 734, column: 14)
!2257 = distinct !DILexicalBlock(scope: !2250, file: !44, line: 733, column: 32)
!2258 = !DILocation(line: 734, column: 14, scope: !2257)
!2259 = !DILocation(line: 735, column: 49, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2256, file: !44, line: 734, column: 23)
!2261 = !DILocation(line: 735, column: 40, scope: !2260)
!2262 = !DILocation(line: 735, column: 53, scope: !2260)
!2263 = !DILocation(line: 735, column: 19, scope: !2260)
!2264 = !DILocation(line: 735, column: 17, scope: !2260)
!2265 = !DILocation(line: 736, column: 17, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2260, file: !44, line: 736, column: 17)
!2267 = !DILocation(line: 736, column: 21, scope: !2266)
!2268 = !DILocation(line: 736, column: 17, scope: !2260)
!2269 = !DILocation(line: 737, column: 16, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2266, file: !44, line: 736, column: 27)
!2271 = !DILocation(line: 739, column: 9, scope: !2260)
!2272 = !DILocation(line: 741, column: 29, scope: !2257)
!2273 = !DILocation(line: 741, column: 20, scope: !2257)
!2274 = !DILocation(line: 741, column: 9, scope: !2257)
!2275 = !DILocation(line: 742, column: 18, scope: !2257)
!2276 = !DILocation(line: 742, column: 9, scope: !2257)
!2277 = !DILocation(line: 742, column: 21, scope: !2257)
!2278 = !DILocation(line: 743, column: 7, scope: !2257)
!2279 = !DILocation(line: 744, column: 4, scope: !2222)
!2280 = !DILocation(line: 709, column: 42, scope: !2281)
!2281 = !DILexicalBlockFile(scope: !2216, file: !44, discriminator: 2)
!2282 = !DILocation(line: 709, column: 4, scope: !2281)
!2283 = distinct !{!2283, !2284}
!2284 = !DILocation(line: 709, column: 4, scope: !2176)
!2285 = !DILocation(line: 746, column: 8, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2176, file: !44, line: 746, column: 8)
!2287 = !DILocation(line: 746, column: 18, scope: !2286)
!2288 = !DILocation(line: 746, column: 27, scope: !2286)
!2289 = !DILocation(line: 746, column: 8, scope: !2176)
!2290 = !DILocation(line: 747, column: 7, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2286, file: !44, line: 746, column: 35)
!2292 = !DILocation(line: 750, column: 20, scope: !2176)
!2293 = !DILocation(line: 750, column: 18, scope: !2176)
!2294 = !DILocation(line: 751, column: 48, scope: !2176)
!2295 = !DILocation(line: 751, column: 23, scope: !2176)
!2296 = !DILocation(line: 751, column: 21, scope: !2176)
!2297 = !DILocation(line: 754, column: 11, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2176, file: !44, line: 754, column: 4)
!2299 = !DILocation(line: 754, column: 20, scope: !2298)
!2300 = !DILocation(line: 754, column: 9, scope: !2298)
!2301 = !DILocation(line: 754, column: 25, scope: !2302)
!2302 = !DILexicalBlockFile(scope: !2303, file: !44, discriminator: 1)
!2303 = distinct !DILexicalBlock(scope: !2298, file: !44, line: 754, column: 4)
!2304 = !DILocation(line: 754, column: 29, scope: !2302)
!2305 = !DILocation(line: 754, column: 27, scope: !2302)
!2306 = !DILocation(line: 754, column: 4, scope: !2302)
!2307 = !DILocalVariable(name: "ptr", scope: !2308, file: !44, line: 755, type: !57)
!2308 = distinct !DILexicalBlock(scope: !2303, file: !44, line: 754, column: 46)
!2309 = !DILocation(line: 755, column: 19, scope: !2308)
!2310 = !DILocalVariable(name: "myLockFile", scope: !2308, file: !44, line: 756, type: !69)
!2311 = !DILocation(line: 756, column: 12, scope: !2308)
!2312 = !DILocalVariable(name: "memberValues", scope: !2308, file: !44, line: 757, type: !58)
!2313 = !DILocation(line: 757, column: 18, scope: !2308)
!2314 = !DILocalVariable(name: "buffer", scope: !2308, file: !44, line: 758, type: !1938)
!2315 = !DILocation(line: 758, column: 12, scope: !2308)
!2316 = !DILocation(line: 760, column: 21, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2308, file: !44, line: 760, column: 11)
!2318 = !DILocation(line: 760, column: 12, scope: !2317)
!2319 = !DILocation(line: 760, column: 24, scope: !2317)
!2320 = !DILocation(line: 760, column: 32, scope: !2317)
!2321 = !DILocation(line: 761, column: 22, scope: !2317)
!2322 = !DILocation(line: 761, column: 13, scope: !2317)
!2323 = !DILocation(line: 761, column: 12, scope: !2317)
!2324 = !DILocation(line: 761, column: 25, scope: !2317)
!2325 = !DILocation(line: 760, column: 11, scope: !2326)
!2326 = !DILexicalBlockFile(scope: !2308, file: !44, discriminator: 1)
!2327 = !DILocation(line: 762, column: 10, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2317, file: !44, line: 761, column: 34)
!2329 = !DILocation(line: 765, column: 46, scope: !2308)
!2330 = !DILocation(line: 765, column: 37, scope: !2308)
!2331 = !DILocation(line: 766, column: 27, scope: !2308)
!2332 = !DILocation(line: 766, column: 37, scope: !2308)
!2333 = !DILocation(line: 765, column: 21, scope: !2308)
!2334 = !DILocation(line: 766, column: 49, scope: !2308)
!2335 = !DILocation(line: 765, column: 20, scope: !2308)
!2336 = !DILocation(line: 765, column: 18, scope: !2308)
!2337 = !DILocation(line: 768, column: 11, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2308, file: !44, line: 768, column: 11)
!2339 = !DILocation(line: 768, column: 11, scope: !2308)
!2340 = !DILocation(line: 770, column: 16, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2338, file: !44, line: 768, column: 23)
!2342 = !DILocation(line: 770, column: 14, scope: !2341)
!2343 = !DILocation(line: 771, column: 7, scope: !2341)
!2344 = !DILocation(line: 773, column: 37, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2338, file: !44, line: 771, column: 14)
!2346 = !DILocation(line: 773, column: 55, scope: !2345)
!2347 = !DILocation(line: 773, column: 46, scope: !2345)
!2348 = !DILocation(line: 773, column: 59, scope: !2345)
!2349 = !DILocation(line: 773, column: 16, scope: !2345)
!2350 = !DILocation(line: 773, column: 14, scope: !2345)
!2351 = !DILocation(line: 776, column: 14, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2345, file: !44, line: 776, column: 14)
!2353 = !DILocation(line: 776, column: 18, scope: !2352)
!2354 = !DILocation(line: 776, column: 14, scope: !2345)
!2355 = !DILocation(line: 777, column: 17, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !44, line: 777, column: 17)
!2357 = distinct !DILexicalBlock(scope: !2352, file: !44, line: 776, column: 24)
!2358 = !DILocation(line: 777, column: 21, scope: !2356)
!2359 = !DILocation(line: 777, column: 17, scope: !2357)
!2360 = !DILocation(line: 778, column: 20, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2356, file: !44, line: 777, column: 31)
!2362 = !DILocation(line: 780, column: 16, scope: !2361)
!2363 = !DILocation(line: 783, column: 13, scope: !2357)
!2364 = !DILocation(line: 787, column: 37, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2345, file: !44, line: 787, column: 14)
!2366 = !DILocation(line: 787, column: 47, scope: !2365)
!2367 = !DILocation(line: 788, column: 50, scope: !2365)
!2368 = !DILocation(line: 787, column: 14, scope: !2365)
!2369 = !DILocation(line: 787, column: 14, scope: !2345)
!2370 = !DILocalVariable(name: "dispose", scope: !2371, file: !44, line: 789, type: !32)
!2371 = distinct !DILexicalBlock(scope: !2365, file: !44, line: 788, column: 62)
!2372 = !DILocation(line: 789, column: 19, scope: !2371)
!2373 = !DILocation(line: 791, column: 55, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2371, file: !44, line: 791, column: 17)
!2375 = !DILocation(line: 791, column: 17, scope: !2374)
!2376 = !DILocation(line: 791, column: 17, scope: !2371)
!2377 = !DILocation(line: 793, column: 28, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2379, file: !44, line: 793, column: 20)
!2379 = distinct !DILexicalBlock(scope: !2374, file: !44, line: 791, column: 69)
!2380 = !DILocation(line: 793, column: 56, scope: !2378)
!2381 = !DILocation(line: 793, column: 21, scope: !2378)
!2382 = !DILocation(line: 793, column: 69, scope: !2378)
!2383 = !DILocation(line: 793, column: 75, scope: !2378)
!2384 = !DILocation(line: 794, column: 35, scope: !2378)
!2385 = !DILocation(line: 794, column: 52, scope: !2378)
!2386 = !DILocation(line: 794, column: 60, scope: !2378)
!2387 = !DILocation(line: 795, column: 42, scope: !2378)
!2388 = !DILocation(line: 796, column: 29, scope: !2378)
!2389 = !DILocation(line: 795, column: 22, scope: !2378)
!2390 = !DILocation(line: 796, column: 47, scope: !2378)
!2391 = !DILocation(line: 793, column: 20, scope: !2392)
!2392 = !DILexicalBlockFile(scope: !2379, file: !44, discriminator: 1)
!2393 = !DILocation(line: 797, column: 29, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2378, file: !44, line: 796, column: 55)
!2395 = !DILocation(line: 797, column: 27, scope: !2394)
!2396 = !DILocation(line: 798, column: 16, scope: !2394)
!2397 = !DILocation(line: 799, column: 13, scope: !2379)
!2398 = !DILocation(line: 801, column: 56, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2374, file: !44, line: 799, column: 20)
!2400 = !DILocation(line: 800, column: 26, scope: !2399)
!2401 = !DILocation(line: 800, column: 24, scope: !2399)
!2402 = !DILocation(line: 804, column: 17, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2371, file: !44, line: 804, column: 17)
!2404 = !DILocation(line: 804, column: 17, scope: !2371)
!2405 = !DILocation(line: 806, column: 43, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2403, file: !44, line: 804, column: 26)
!2407 = !DILocation(line: 806, column: 34, scope: !2406)
!2408 = !DILocation(line: 806, column: 47, scope: !2406)
!2409 = !DILocation(line: 806, column: 56, scope: !2406)
!2410 = !DILocation(line: 805, column: 16, scope: !2406)
!2411 = !DILocation(line: 808, column: 27, scope: !2406)
!2412 = !DILocation(line: 808, column: 16, scope: !2406)
!2413 = !DILocation(line: 809, column: 40, scope: !2406)
!2414 = !DILocation(line: 809, column: 16, scope: !2406)
!2415 = !DILocation(line: 811, column: 48, scope: !2406)
!2416 = !DILocation(line: 811, column: 66, scope: !2406)
!2417 = !DILocation(line: 811, column: 57, scope: !2406)
!2418 = !DILocation(line: 811, column: 22, scope: !2406)
!2419 = !DILocation(line: 811, column: 20, scope: !2406)
!2420 = !DILocation(line: 812, column: 20, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2406, file: !44, line: 812, column: 20)
!2422 = !DILocation(line: 812, column: 24, scope: !2421)
!2423 = !DILocation(line: 812, column: 20, scope: !2406)
!2424 = !DILocation(line: 813, column: 19, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2421, file: !44, line: 812, column: 30)
!2426 = !DILocation(line: 816, column: 16, scope: !2406)
!2427 = !DILocation(line: 818, column: 10, scope: !2371)
!2428 = !DILocation(line: 820, column: 14, scope: !2345)
!2429 = !DILocation(line: 824, column: 15, scope: !2308)
!2430 = !DILocation(line: 824, column: 21, scope: !2308)
!2431 = !DILocation(line: 824, column: 39, scope: !2308)
!2432 = !DILocation(line: 824, column: 30, scope: !2308)
!2433 = !DILocation(line: 824, column: 43, scope: !2308)
!2434 = !DILocation(line: 824, column: 48, scope: !2308)
!2435 = !DILocation(line: 824, column: 13, scope: !2308)
!2436 = !DILocation(line: 824, column: 11, scope: !2308)
!2437 = !DILocation(line: 826, column: 11, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2308, file: !44, line: 826, column: 11)
!2439 = !DILocation(line: 826, column: 15, scope: !2438)
!2440 = !DILocation(line: 826, column: 11, scope: !2308)
!2441 = !DILocation(line: 827, column: 34, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2438, file: !44, line: 826, column: 33)
!2443 = !DILocation(line: 827, column: 10, scope: !2442)
!2444 = !DILocation(line: 828, column: 7, scope: !2442)
!2445 = !DILocation(line: 830, column: 11, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2308, file: !44, line: 830, column: 11)
!2447 = !DILocation(line: 830, column: 15, scope: !2446)
!2448 = !DILocation(line: 830, column: 11, scope: !2308)
!2449 = !DILocation(line: 831, column: 10, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2446, file: !44, line: 830, column: 21)
!2451 = !DILocation(line: 833, column: 4, scope: !2308)
!2452 = !DILocation(line: 754, column: 42, scope: !2453)
!2453 = !DILexicalBlockFile(scope: !2303, file: !44, discriminator: 2)
!2454 = !DILocation(line: 754, column: 4, scope: !2453)
!2455 = distinct !{!2455, !2456}
!2456 = !DILocation(line: 754, column: 4, scope: !2176)
!2457 = !DILocation(line: 833, column: 4, scope: !2458)
!2458 = !DILexicalBlockFile(scope: !2298, file: !44, discriminator: 1)
!2459 = !DILocation(line: 837, column: 24, scope: !2176)
!2460 = !DILocation(line: 837, column: 34, scope: !2176)
!2461 = !DILocation(line: 837, column: 4, scope: !2176)
!2462 = !DILocation(line: 839, column: 15, scope: !2176)
!2463 = !DILocation(line: 839, column: 4, scope: !2176)
!2464 = !DILocation(line: 840, column: 15, scope: !2176)
!2465 = !DILocation(line: 840, column: 4, scope: !2176)
!2466 = !DILocation(line: 842, column: 11, scope: !2176)
!2467 = !DILocation(line: 842, column: 4, scope: !2176)
!2468 = !DILocation(line: 843, column: 1, scope: !2176)
!2469 = distinct !DISubprogram(name: "Unicode_FindLast", scope: !652, file: !652, line: 451, type: !2470, isLocal: true, isDefinition: true, scopeLine: 453, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{!1357, !52, !52}
!2472 = !DILocalVariable(name: "str", arg: 1, scope: !2469, file: !652, line: 451, type: !52)
!2473 = !DILocation(line: 451, column: 30, scope: !2469)
!2474 = !DILocalVariable(name: "strToFind", arg: 2, scope: !2469, file: !652, line: 452, type: !52)
!2475 = !DILocation(line: 452, column: 30, scope: !2469)
!2476 = !DILocation(line: 454, column: 41, scope: !2469)
!2477 = !DILocation(line: 457, column: 41, scope: !2469)
!2478 = !DILocation(line: 454, column: 11, scope: !2469)
!2479 = !DILocation(line: 454, column: 4, scope: !2469)
!2480 = distinct !DISubprogram(name: "Unicode_Replace", scope: !652, file: !652, line: 674, type: !2481, isLocal: true, isDefinition: true, scopeLine: 678, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!32, !52, !1357, !1357, !52}
!2483 = !DILocalVariable(name: "destination", arg: 1, scope: !2480, file: !652, line: 674, type: !52)
!2484 = !DILocation(line: 674, column: 29, scope: !2480)
!2485 = !DILocalVariable(name: "destinationStart", arg: 2, scope: !2480, file: !652, line: 675, type: !1357)
!2486 = !DILocation(line: 675, column: 30, scope: !2480)
!2487 = !DILocalVariable(name: "destinationLength", arg: 3, scope: !2480, file: !652, line: 676, type: !1357)
!2488 = !DILocation(line: 676, column: 30, scope: !2480)
!2489 = !DILocalVariable(name: "source", arg: 4, scope: !2480, file: !652, line: 677, type: !52)
!2490 = !DILocation(line: 677, column: 29, scope: !2480)
!2491 = !DILocation(line: 679, column: 32, scope: !2480)
!2492 = !DILocation(line: 680, column: 32, scope: !2480)
!2493 = !DILocation(line: 681, column: 32, scope: !2480)
!2494 = !DILocation(line: 682, column: 32, scope: !2480)
!2495 = !DILocation(line: 679, column: 11, scope: !2480)
!2496 = !DILocation(line: 679, column: 4, scope: !2480)
!2497 = distinct !DISubprogram(name: "FileLockRemoveLockingFile", scope: !44, file: !44, line: 180, type: !2498, isLocal: true, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!51, !52, !52}
!2500 = !DILocalVariable(name: "lockDir", arg: 1, scope: !2497, file: !44, line: 180, type: !52)
!2501 = !DILocation(line: 180, column: 39, scope: !2497)
!2502 = !DILocalVariable(name: "fileName", arg: 2, scope: !2497, file: !44, line: 181, type: !52)
!2503 = !DILocation(line: 181, column: 39, scope: !2497)
!2504 = !DILocalVariable(name: "err", scope: !2497, file: !44, line: 183, type: !51)
!2505 = !DILocation(line: 183, column: 8, scope: !2497)
!2506 = !DILocalVariable(name: "path", scope: !2497, file: !44, line: 184, type: !32)
!2507 = !DILocation(line: 184, column: 10, scope: !2497)
!2508 = !DILocation(line: 189, column: 24, scope: !2497)
!2509 = !DILocation(line: 189, column: 38, scope: !2497)
!2510 = !DILocation(line: 189, column: 11, scope: !2497)
!2511 = !DILocation(line: 189, column: 9, scope: !2497)
!2512 = !DILocation(line: 191, column: 24, scope: !2497)
!2513 = !DILocation(line: 191, column: 10, scope: !2497)
!2514 = !DILocation(line: 191, column: 8, scope: !2497)
!2515 = !DILocation(line: 193, column: 8, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2497, file: !44, line: 193, column: 8)
!2517 = !DILocation(line: 193, column: 12, scope: !2516)
!2518 = !DILocation(line: 193, column: 8, scope: !2497)
!2519 = !DILocation(line: 194, column: 11, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2521, file: !44, line: 194, column: 11)
!2521 = distinct !DILexicalBlock(scope: !2516, file: !44, line: 193, column: 18)
!2522 = !DILocation(line: 194, column: 15, scope: !2520)
!2523 = !DILocation(line: 194, column: 11, scope: !2521)
!2524 = !DILocation(line: 196, column: 14, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2520, file: !44, line: 194, column: 25)
!2526 = !DILocation(line: 197, column: 7, scope: !2525)
!2527 = !DILocation(line: 199, column: 18, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2520, file: !44, line: 197, column: 14)
!2529 = !DILocation(line: 199, column: 41, scope: !2528)
!2530 = !DILocation(line: 199, column: 24, scope: !2528)
!2531 = !DILocation(line: 198, column: 10, scope: !2528)
!2532 = !DILocation(line: 201, column: 4, scope: !2521)
!2533 = !DILocation(line: 203, column: 15, scope: !2497)
!2534 = !DILocation(line: 203, column: 4, scope: !2497)
!2535 = !DILocation(line: 205, column: 11, scope: !2497)
!2536 = !DILocation(line: 205, column: 4, scope: !2497)
!2537 = distinct !DISubprogram(name: "FileLockActivateList", scope: !44, file: !44, line: 581, type: !2538, isLocal: true, isDefinition: true, scopeLine: 583, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!51, !52, !57}
!2540 = !DILocalVariable(name: "dirName", arg: 1, scope: !2537, file: !44, line: 581, type: !52)
!2541 = !DILocation(line: 581, column: 34, scope: !2537)
!2542 = !DILocalVariable(name: "myValues", arg: 2, scope: !2537, file: !44, line: 582, type: !57)
!2543 = !DILocation(line: 582, column: 34, scope: !2537)
!2544 = !DILocalVariable(name: "ptr", scope: !2537, file: !44, line: 584, type: !78)
!2545 = !DILocation(line: 584, column: 16, scope: !2537)
!2546 = !DILocation(line: 590, column: 15, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2537, file: !44, line: 590, column: 4)
!2548 = !DILocation(line: 590, column: 25, scope: !2547)
!2549 = !DILocation(line: 590, column: 13, scope: !2547)
!2550 = !DILocation(line: 590, column: 9, scope: !2547)
!2551 = !DILocation(line: 590, column: 35, scope: !2552)
!2552 = !DILexicalBlockFile(scope: !2553, file: !44, discriminator: 1)
!2553 = distinct !DILexicalBlock(scope: !2547, file: !44, line: 590, column: 4)
!2554 = !DILocation(line: 590, column: 39, scope: !2552)
!2555 = !DILocation(line: 590, column: 4, scope: !2552)
!2556 = !DILocation(line: 591, column: 27, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !44, line: 591, column: 11)
!2558 = distinct !DILexicalBlock(scope: !2553, file: !44, line: 590, column: 64)
!2559 = !DILocation(line: 591, column: 32, scope: !2557)
!2560 = !DILocation(line: 591, column: 41, scope: !2557)
!2561 = !DILocation(line: 591, column: 11, scope: !2557)
!2562 = !DILocation(line: 591, column: 50, scope: !2557)
!2563 = !DILocation(line: 591, column: 11, scope: !2558)
!2564 = !DILocation(line: 592, column: 10, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2557, file: !44, line: 591, column: 56)
!2566 = !DILocation(line: 594, column: 4, scope: !2558)
!2567 = !DILocation(line: 590, column: 53, scope: !2568)
!2568 = !DILexicalBlockFile(scope: !2553, file: !44, discriminator: 2)
!2569 = !DILocation(line: 590, column: 58, scope: !2568)
!2570 = !DILocation(line: 590, column: 51, scope: !2568)
!2571 = !DILocation(line: 590, column: 4, scope: !2568)
!2572 = distinct !{!2572, !2573}
!2573 = !DILocation(line: 590, column: 4, scope: !2537)
!2574 = !DILocation(line: 597, column: 8, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2537, file: !44, line: 597, column: 8)
!2576 = !DILocation(line: 597, column: 12, scope: !2575)
!2577 = !DILocation(line: 597, column: 8, scope: !2537)
!2578 = !DILocation(line: 598, column: 13, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2575, file: !44, line: 597, column: 20)
!2580 = !DILocation(line: 598, column: 11, scope: !2579)
!2581 = !DILocation(line: 600, column: 19, scope: !2579)
!2582 = !DILocation(line: 600, column: 29, scope: !2579)
!2583 = !DILocation(line: 600, column: 7, scope: !2579)
!2584 = !DILocation(line: 600, column: 12, scope: !2579)
!2585 = !DILocation(line: 600, column: 17, scope: !2579)
!2586 = !DILocation(line: 601, column: 28, scope: !2579)
!2587 = !DILocation(line: 601, column: 7, scope: !2579)
!2588 = !DILocation(line: 601, column: 17, scope: !2579)
!2589 = !DILocation(line: 601, column: 26, scope: !2579)
!2590 = !DILocation(line: 603, column: 7, scope: !2579)
!2591 = !DILocation(line: 603, column: 12, scope: !2579)
!2592 = !DILocation(line: 603, column: 16, scope: !2579)
!2593 = !DILocation(line: 604, column: 40, scope: !2579)
!2594 = !DILocation(line: 604, column: 22, scope: !2579)
!2595 = !DILocation(line: 604, column: 7, scope: !2579)
!2596 = !DILocation(line: 604, column: 12, scope: !2579)
!2597 = !DILocation(line: 604, column: 20, scope: !2579)
!2598 = !DILocation(line: 605, column: 4, scope: !2579)
!2599 = !DILocation(line: 608, column: 4, scope: !2537)
!2600 = !DILocation(line: 608, column: 9, scope: !2537)
!2601 = !DILocation(line: 608, column: 16, scope: !2537)
!2602 = !DILocation(line: 610, column: 4, scope: !2537)
!2603 = distinct !DISubprogram(name: "Unicode_Compare", scope: !652, file: !652, line: 225, type: !2498, isLocal: true, isDefinition: true, scopeLine: 227, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!2604 = !DILocalVariable(name: "str1", arg: 1, scope: !2603, file: !652, line: 225, type: !52)
!2605 = !DILocation(line: 225, column: 29, scope: !2603)
!2606 = !DILocalVariable(name: "str2", arg: 2, scope: !2603, file: !652, line: 226, type: !52)
!2607 = !DILocation(line: 226, column: 29, scope: !2603)
!2608 = !DILocation(line: 228, column: 32, scope: !2603)
!2609 = !DILocation(line: 231, column: 32, scope: !2603)
!2610 = !DILocation(line: 228, column: 11, scope: !2603)
!2611 = !DILocation(line: 228, column: 4, scope: !2603)
!2612 = distinct !DISubprogram(name: "Util_FreeStringList", scope: !2613, file: !2613, line: 368, type: !2614, isLocal: true, isDefinition: true, scopeLine: 370, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!2613 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/util.h", directory: "/home/lichi/Desktop/open-vm-tools/line213")
!2614 = !DISubroutineType(types: !2615)
!2615 = !{null, !40, !1358}
!2616 = !DILocalVariable(name: "list", arg: 1, scope: !2612, file: !2613, line: 368, type: !40)
!2617 = !DILocation(line: 368, column: 28, scope: !2612)
!2618 = !DILocalVariable(name: "length", arg: 2, scope: !2612, file: !2613, line: 369, type: !1358)
!2619 = !DILocation(line: 369, column: 29, scope: !2612)
!2620 = !DILocation(line: 371, column: 28, scope: !2612)
!2621 = !DILocation(line: 371, column: 34, scope: !2612)
!2622 = !DILocation(line: 371, column: 4, scope: !2612)
!2623 = !DILocation(line: 372, column: 1, scope: !2612)
!2624 = distinct !DISubprogram(name: "Util_FreeList", scope: !2613, file: !2613, line: 335, type: !2625, isLocal: true, isDefinition: true, scopeLine: 337, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{null, !41, !1358}
!2627 = !DILocalVariable(name: "list", arg: 1, scope: !2624, file: !2613, line: 335, type: !41)
!2628 = !DILocation(line: 335, column: 22, scope: !2624)
!2629 = !DILocalVariable(name: "length", arg: 2, scope: !2624, file: !2613, line: 336, type: !1358)
!2630 = !DILocation(line: 336, column: 23, scope: !2624)
!2631 = !DILocalVariable(name: "err", scope: !2624, file: !2613, line: 339, type: !51)
!2632 = !DILocation(line: 339, column: 8, scope: !2624)
!2633 = !DILocation(line: 341, column: 8, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2624, file: !2613, line: 341, column: 8)
!2635 = !DILocation(line: 341, column: 13, scope: !2634)
!2636 = !DILocation(line: 341, column: 8, scope: !2624)
!2637 = !DILocation(line: 343, column: 7, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2634, file: !2613, line: 341, column: 21)
!2639 = !DILocation(line: 346, column: 11, scope: !2624)
!2640 = !DILocation(line: 346, column: 10, scope: !2624)
!2641 = !DILocation(line: 346, column: 8, scope: !2624)
!2642 = !DILocation(line: 348, column: 8, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2624, file: !2613, line: 348, column: 8)
!2644 = !DILocation(line: 348, column: 15, scope: !2643)
!2645 = !DILocation(line: 348, column: 8, scope: !2624)
!2646 = !DILocalVariable(name: "i", scope: !2647, file: !2613, line: 349, type: !1358)
!2647 = distinct !DILexicalBlock(scope: !2643, file: !2613, line: 348, column: 21)
!2648 = !DILocation(line: 349, column: 15, scope: !2647)
!2649 = !DILocation(line: 351, column: 14, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2647, file: !2613, line: 351, column: 7)
!2651 = !DILocation(line: 351, column: 12, scope: !2650)
!2652 = !DILocation(line: 351, column: 19, scope: !2653)
!2653 = !DILexicalBlockFile(scope: !2654, file: !2613, discriminator: 1)
!2654 = distinct !DILexicalBlock(scope: !2650, file: !2613, line: 351, column: 7)
!2655 = !DILocation(line: 351, column: 23, scope: !2653)
!2656 = !DILocation(line: 351, column: 21, scope: !2653)
!2657 = !DILocation(line: 351, column: 7, scope: !2653)
!2658 = !DILocation(line: 352, column: 20, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2654, file: !2613, line: 351, column: 36)
!2660 = !DILocation(line: 352, column: 15, scope: !2659)
!2661 = !DILocation(line: 352, column: 10, scope: !2659)
!2662 = !DILocation(line: 354, column: 7, scope: !2659)
!2663 = !DILocation(line: 351, column: 32, scope: !2664)
!2664 = !DILexicalBlockFile(scope: !2654, file: !2613, discriminator: 2)
!2665 = !DILocation(line: 351, column: 7, scope: !2664)
!2666 = distinct !{!2666, !2667}
!2667 = !DILocation(line: 351, column: 7, scope: !2647)
!2668 = !DILocation(line: 355, column: 4, scope: !2647)
!2669 = !DILocalVariable(name: "s", scope: !2670, file: !2613, line: 356, type: !41)
!2670 = distinct !DILexicalBlock(scope: !2643, file: !2613, line: 355, column: 11)
!2671 = !DILocation(line: 356, column: 14, scope: !2670)
!2672 = !DILocation(line: 358, column: 16, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2670, file: !2613, line: 358, column: 7)
!2674 = !DILocation(line: 358, column: 14, scope: !2673)
!2675 = !DILocation(line: 358, column: 12, scope: !2673)
!2676 = !DILocation(line: 358, column: 23, scope: !2677)
!2677 = !DILexicalBlockFile(scope: !2678, file: !2613, discriminator: 1)
!2678 = distinct !DILexicalBlock(scope: !2673, file: !2613, line: 358, column: 7)
!2679 = !DILocation(line: 358, column: 22, scope: !2677)
!2680 = !DILocation(line: 358, column: 25, scope: !2677)
!2681 = !DILocation(line: 358, column: 7, scope: !2677)
!2682 = !DILocation(line: 359, column: 16, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2678, file: !2613, line: 358, column: 38)
!2684 = !DILocation(line: 359, column: 15, scope: !2683)
!2685 = !DILocation(line: 359, column: 10, scope: !2683)
!2686 = !DILocation(line: 361, column: 7, scope: !2683)
!2687 = !DILocation(line: 358, column: 34, scope: !2688)
!2688 = !DILexicalBlockFile(scope: !2678, file: !2613, discriminator: 2)
!2689 = !DILocation(line: 358, column: 7, scope: !2688)
!2690 = distinct !{!2690, !2691}
!2691 = !DILocation(line: 358, column: 7, scope: !2670)
!2692 = !DILocation(line: 363, column: 9, scope: !2624)
!2693 = !DILocation(line: 363, column: 4, scope: !2624)
!2694 = !DILocation(line: 364, column: 11, scope: !2624)
!2695 = !DILocation(line: 364, column: 5, scope: !2624)
!2696 = !DILocation(line: 364, column: 9, scope: !2624)
!2697 = !DILocation(line: 365, column: 1, scope: !2624)
!2698 = !DILocation(line: 365, column: 1, scope: !2699)
!2699 = !DILexicalBlockFile(scope: !2624, file: !2613, discriminator: 1)
