; ModuleID = './ulRec.o.i'
source_filename = "./ulRec.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.MX_MutexRec = type opaque
%struct.MXUserRecLock = type { %struct.MXUserHeader, %struct.MXRecLock, %struct.Atomic_uint64, %struct.Atomic_uint64, %struct.Atomic_uint32, %struct.MX_MutexRec* }
%struct.MXUserHeader = type { i32, i8*, i32, %struct.anon, void (%struct.MXUserHeader*)*, void (%struct.MXUserHeader*)*, %struct.ListItem }
%struct.anon = type { i32 }
%struct.ListItem = type { %struct.ListItem*, %struct.ListItem* }
%struct.MXRecLock = type { %union.pthread_mutex_t, i32, i64 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct.Atomic_uint64 = type { i64 }
%struct.Atomic_uint32 = type { i32 }
%struct.MXUserHeldStats = type { i64, %struct.MXUserBasicStats, %struct.Atomic_uint64 }
%struct.MXUserBasicStats = type { i8*, i64, i64, i64, i64, double }
%struct.MXUserAcquireStats = type { %struct.MXUserAcquisitionStats, %struct.Atomic_uint64 }
%struct.MXUserAcquisitionStats = type { double, i64, i64, i64, i64, i64, i64, i64, %struct.MXUserBasicStats }
%struct.MXUserHisto = type opaque
%struct.MXUserCondVar = type opaque
%union.pthread_mutexattr_t = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"R-%p\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"%s: native lock initialization routine failed\0A\00", align 1
@__FUNCTION__.MXUser_CreateRecLock = private unnamed_addr constant [21 x i8] c"MXUser_CreateRecLock\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"%s: unknown stats mode: %d!\0A\00", align 1
@MXUserMX_LockRec = external global void (%struct.MX_MutexRec*)*, align 8
@MXUserMX_UnlockRec = external global void (%struct.MX_MutexRec*)*, align 8
@MXUserMX_TryLockRec = external global i8 (%struct.MX_MutexRec*)*, align 8
@MXUserMX_IsLockedByCurThreadRec = external global i8 (%struct.MX_MutexRec*)*, align 8
@MXUserMX_NameRec = external global i8* (%struct.MX_MutexRec*)*, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"MX_%p\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s *\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"%s: Recursive lock @ %p\0A\00", align 1
@__FUNCTION__.MXUserDumpRecLock = private unnamed_addr constant [18 x i8] c"MXUserDumpRecLock\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\09signature 0x%X\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"\09name %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"\09rank 0x%X\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"\09serial number %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"\09reference count %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"\09lock count %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"\09address of owner data %p\0A\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"\09vmmLock %p\0A\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"HOT LOCK (%s); contention ratio %f\0A\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"%s: Destroy of an acquired recursive lock\0A\00", align 1
@__FUNCTION__.MXUserCondDestroyRecLock = private unnamed_addr constant [25 x i8] c"MXUserCondDestroyRecLock\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"2.18\00", align 1

; Function Attrs: nounwind uwtable
define signext i8 @MXUser_EnableStatsRecLock(%struct.MXUserRecLock*, i8 signext, i8 signext) #0 !dbg !120 {
  %4 = alloca %struct.MXUserRecLock*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct.MXUserRecLock* %0, %struct.MXUserRecLock** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserRecLock** %4, metadata !125, metadata !126), !dbg !127
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !128, metadata !126), !dbg !129
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !130, metadata !126), !dbg !131
  %7 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %4, align 8, !dbg !132
  %8 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %7, i32 0, i32 0, !dbg !133
  call void @MXUserValidateHeader(%struct.MXUserHeader* %8, i32 2), !dbg !134
  ret i8 0, !dbg !135
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXUserValidateHeader(%struct.MXUserHeader*, i32) #2 !dbg !136 {
  %3 = alloca %struct.MXUserHeader*, align 8
  %4 = alloca i32, align 4
  store %struct.MXUserHeader* %0, %struct.MXUserHeader** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserHeader** %3, metadata !141, metadata !126), !dbg !142
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !143, metadata !126), !dbg !144
  ret void, !dbg !145
}

; Function Attrs: nounwind uwtable
define signext i8 @MXUser_DisableStatsRecLock(%struct.MXUserRecLock*) #0 !dbg !146 {
  %2 = alloca %struct.MXUserRecLock*, align 8
  store %struct.MXUserRecLock* %0, %struct.MXUserRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserRecLock** %2, metadata !149, metadata !126), !dbg !150
  %3 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !151
  %4 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %3, i32 0, i32 0, !dbg !152
  call void @MXUserValidateHeader(%struct.MXUserHeader* %4, i32 2), !dbg !153
  ret i8 0, !dbg !154
}

; Function Attrs: nounwind uwtable
define signext i8 @MXUser_SetContentionRatioFloorRecLock(%struct.MXUserRecLock*, double) #0 !dbg !155 {
  %3 = alloca %struct.MXUserRecLock*, align 8
  %4 = alloca double, align 8
  %5 = alloca i8, align 1
  store %struct.MXUserRecLock* %0, %struct.MXUserRecLock** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserRecLock** %3, metadata !159, metadata !126), !dbg !160
  store double %1, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !161, metadata !126), !dbg !162
  call void @llvm.dbg.declare(metadata i8* %5, metadata !163, metadata !126), !dbg !164
  %6 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %3, align 8, !dbg !165
  %7 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %6, i32 0, i32 0, !dbg !166
  call void @MXUserValidateHeader(%struct.MXUserHeader* %7, i32 2), !dbg !167
  store i8 0, i8* %5, align 1, !dbg !168
  %8 = load i8, i8* %5, align 1, !dbg !171
  ret i8 %8, !dbg !172
}

; Function Attrs: nounwind uwtable
define signext i8 @MXUser_SetContentionCountFloorRecLock(%struct.MXUserRecLock*, i64) #0 !dbg !173 {
  %3 = alloca %struct.MXUserRecLock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  store %struct.MXUserRecLock* %0, %struct.MXUserRecLock** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserRecLock** %3, metadata !176, metadata !126), !dbg !177
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !178, metadata !126), !dbg !179
  call void @llvm.dbg.declare(metadata i8* %5, metadata !180, metadata !126), !dbg !181
  %6 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %3, align 8, !dbg !182
  %7 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %6, i32 0, i32 0, !dbg !183
  call void @MXUserValidateHeader(%struct.MXUserHeader* %7, i32 2), !dbg !184
  store i8 0, i8* %5, align 1, !dbg !185
  %8 = load i8, i8* %5, align 1, !dbg !188
  ret i8 %8, !dbg !189
}

; Function Attrs: nounwind uwtable
define signext i8 @MXUser_SetContentionDurationFloorRecLock(%struct.MXUserRecLock*, i64) #0 !dbg !190 {
  %3 = alloca %struct.MXUserRecLock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  store %struct.MXUserRecLock* %0, %struct.MXUserRecLock** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserRecLock** %3, metadata !191, metadata !126), !dbg !192
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !193, metadata !126), !dbg !194
  call void @llvm.dbg.declare(metadata i8* %5, metadata !195, metadata !126), !dbg !196
  %6 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %3, align 8, !dbg !197
  %7 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %6, i32 0, i32 0, !dbg !198
  call void @MXUserValidateHeader(%struct.MXUserHeader* %7, i32 2), !dbg !199
  store i8 0, i8* %5, align 1, !dbg !200
  %8 = load i8, i8* %5, align 1, !dbg !203
  ret i8 %8, !dbg !204
}

; Function Attrs: nounwind uwtable
define %struct.MXUserRecLock* @MXUser_CreateRecLock(i8*, i32) #0 !dbg !205 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.MXUserRecLock*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !210, metadata !126), !dbg !211
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !212, metadata !126), !dbg !213
  call void @llvm.dbg.declare(metadata i32* %5, metadata !214, metadata !126), !dbg !215
  call void @llvm.dbg.declare(metadata i8** %6, metadata !216, metadata !126), !dbg !217
  call void @llvm.dbg.declare(metadata %struct.MXUserRecLock** %7, metadata !218, metadata !126), !dbg !219
  %8 = call i8* @UtilSafeCalloc0(i64 1, i64 144), !dbg !220
  %9 = bitcast i8* %8 to %struct.MXUserRecLock*, !dbg !220
  store %struct.MXUserRecLock* %9, %struct.MXUserRecLock** %7, align 8, !dbg !219
  %10 = load i8*, i8** %3, align 8, !dbg !221
  %11 = icmp eq i8* %10, null, !dbg !223
  br i1 %11, label %12, label %15, !dbg !224

; <label>:12:                                     ; preds = %2
  %13 = call i8* @llvm.returnaddress(i32 0), !dbg !225
  %14 = call i8* (i64*, i8*, ...) @Str_SafeAsprintf(i64* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %13), !dbg !227
  store i8* %14, i8** %6, align 8, !dbg !229
  br label %18, !dbg !230

; <label>:15:                                     ; preds = %2
  %16 = load i8*, i8** %3, align 8, !dbg !231
  %17 = call i8* @UtilSafeStrdup0(i8* %16), !dbg !233
  store i8* %17, i8** %6, align 8, !dbg !234
  br label %18

; <label>:18:                                     ; preds = %15, %12
  %19 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %7, align 8, !dbg !235
  %20 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %19, i32 0, i32 1, !dbg !237
  %21 = call signext i8 @MXRecLockInit(%struct.MXRecLock* %20), !dbg !238
  %22 = icmp ne i8 %21, 0, !dbg !239
  %23 = xor i1 %22, true, !dbg !239
  %24 = zext i1 %23 to i32, !dbg !239
  %25 = sext i32 %24 to i64, !dbg !240
  %26 = icmp ne i64 %25, 0, !dbg !241
  br i1 %26, label %27, label %28, !dbg !242

; <label>:27:                                     ; preds = %18
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.MXUser_CreateRecLock, i32 0, i32 0)) #9, !dbg !243
  unreachable, !dbg !243

; <label>:28:                                     ; preds = %18
  %29 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %7, align 8, !dbg !245
  %30 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %29, i32 0, i32 5, !dbg !246
  store %struct.MX_MutexRec* null, %struct.MX_MutexRec** %30, align 8, !dbg !247
  %31 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %7, align 8, !dbg !248
  %32 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %31, i32 0, i32 4, !dbg !249
  call void @Atomic_Write32(%struct.Atomic_uint32* %32, i32 1), !dbg !250
  %33 = call i32 @MXUserGetSignature(i32 2), !dbg !251
  %34 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %7, align 8, !dbg !252
  %35 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %34, i32 0, i32 0, !dbg !253
  %36 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %35, i32 0, i32 0, !dbg !254
  store i32 %33, i32* %36, align 8, !dbg !255
  %37 = load i8*, i8** %6, align 8, !dbg !256
  %38 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %7, align 8, !dbg !257
  %39 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %38, i32 0, i32 0, !dbg !258
  %40 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %39, i32 0, i32 1, !dbg !259
  store i8* %37, i8** %40, align 8, !dbg !260
  %41 = load i32, i32* %4, align 4, !dbg !261
  %42 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %7, align 8, !dbg !262
  %43 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %42, i32 0, i32 0, !dbg !263
  %44 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %43, i32 0, i32 2, !dbg !264
  store i32 %41, i32* %44, align 8, !dbg !265
  %45 = call i32 @MXUserAllocSerialNumber(), !dbg !266
  %46 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %7, align 8, !dbg !267
  %47 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %46, i32 0, i32 0, !dbg !268
  %48 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %47, i32 0, i32 3, !dbg !269
  %49 = bitcast %struct.anon* %48 to i32*, !dbg !270
  %50 = load i32, i32* %49, align 4, !dbg !271
  %51 = and i32 %45, 16777215, !dbg !271
  %52 = and i32 %50, -16777216, !dbg !271
  %53 = or i32 %52, %51, !dbg !271
  store i32 %53, i32* %49, align 4, !dbg !271
  %54 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %7, align 8, !dbg !272
  %55 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %54, i32 0, i32 0, !dbg !273
  %56 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %55, i32 0, i32 4, !dbg !274
  store void (%struct.MXUserHeader*)* @MXUserDumpRecLock, void (%struct.MXUserHeader*)** %56, align 8, !dbg !275
  %57 = call i32 @MXUserStatsMode(), !dbg !276
  store i32 %57, i32* %5, align 4, !dbg !277
  %58 = load i32, i32* %5, align 4, !dbg !278
  switch i32 %58, label %81 [
    i32 0, label %59
    i32 1, label %67
    i32 2, label %73
  ], !dbg !279

; <label>:59:                                     ; preds = %28
  %60 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %7, align 8, !dbg !280
  %61 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %60, i32 0, i32 3, !dbg !282
  %62 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %7, align 8, !dbg !283
  %63 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %62, i32 0, i32 2, !dbg !284
  call void @MXUserDisableStats(%struct.Atomic_uint64* %61, %struct.Atomic_uint64* %63), !dbg !285
  %64 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %7, align 8, !dbg !286
  %65 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %64, i32 0, i32 0, !dbg !287
  %66 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %65, i32 0, i32 5, !dbg !288
  store void (%struct.MXUserHeader*)* null, void (%struct.MXUserHeader*)** %66, align 8, !dbg !289
  br label %83, !dbg !290

; <label>:67:                                     ; preds = %28
  %68 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %7, align 8, !dbg !291
  %69 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %68, i32 0, i32 3, !dbg !292
  call void @MXUserEnableStats(%struct.Atomic_uint64* %69, %struct.Atomic_uint64* null), !dbg !293
  %70 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %7, align 8, !dbg !294
  %71 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %70, i32 0, i32 0, !dbg !295
  %72 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %71, i32 0, i32 5, !dbg !296
  store void (%struct.MXUserHeader*)* @MXUserStatsActionRec, void (%struct.MXUserHeader*)** %72, align 8, !dbg !297
  br label %83, !dbg !298

; <label>:73:                                     ; preds = %28
  %74 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %7, align 8, !dbg !299
  %75 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %74, i32 0, i32 3, !dbg !300
  %76 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %7, align 8, !dbg !301
  %77 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %76, i32 0, i32 2, !dbg !302
  call void @MXUserEnableStats(%struct.Atomic_uint64* %75, %struct.Atomic_uint64* %77), !dbg !303
  %78 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %7, align 8, !dbg !304
  %79 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %78, i32 0, i32 0, !dbg !305
  %80 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %79, i32 0, i32 5, !dbg !306
  store void (%struct.MXUserHeader*)* @MXUserStatsActionRec, void (%struct.MXUserHeader*)** %80, align 8, !dbg !307
  br label %83, !dbg !308

; <label>:81:                                     ; preds = %28
  %82 = load i32, i32* %5, align 4, !dbg !309
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.MXUser_CreateRecLock, i32 0, i32 0), i32 %82) #9, !dbg !310
  unreachable, !dbg !310

; <label>:83:                                     ; preds = %73, %67, %59
  %84 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %7, align 8, !dbg !311
  %85 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %84, i32 0, i32 0, !dbg !312
  call void @MXUserAddToList(%struct.MXUserHeader* %85), !dbg !313
  %86 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %7, align 8, !dbg !314
  ret %struct.MXUserRecLock* %86, !dbg !315
}

declare i8* @UtilSafeCalloc0(i64, i64) #3

declare i8* @Str_SafeAsprintf(i64*, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i8* @llvm.returnaddress(i32) #1

declare i8* @UtilSafeStrdup0(i8*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @MXRecLockInit(%struct.MXRecLock*) #2 !dbg !316 {
  %2 = alloca %struct.MXRecLock*, align 8
  %3 = alloca i8, align 1
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !320, metadata !126), !dbg !321
  call void @llvm.dbg.declare(metadata i8* %3, metadata !322, metadata !126), !dbg !323
  %4 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !324
  %5 = call i32 @MXRecLockCreateInternal(%struct.MXRecLock* %4), !dbg !325
  %6 = icmp eq i32 %5, 0, !dbg !326
  %7 = zext i1 %6 to i32, !dbg !326
  %8 = trunc i32 %7 to i8, !dbg !327
  store i8 %8, i8* %3, align 1, !dbg !323
  %9 = load i8, i8* %3, align 1, !dbg !328
  %10 = icmp ne i8 %9, 0, !dbg !328
  br i1 %10, label %11, label %15, !dbg !330

; <label>:11:                                     ; preds = %1
  %12 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !331
  call void @MXRecLockSetNoOwner(%struct.MXRecLock* %12), !dbg !333
  %13 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !334
  %14 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %13, i32 0, i32 1, !dbg !335
  store i32 0, i32* %14, align 8, !dbg !336
  br label %15, !dbg !337

; <label>:15:                                     ; preds = %11, %1
  %16 = load i8, i8* %3, align 1, !dbg !338
  ret i8 %16, !dbg !339
}

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #4

; Function Attrs: inlinehint nounwind uwtable
define internal void @Atomic_Write32(%struct.Atomic_uint32*, i32) #2 !dbg !340 {
  %3 = alloca %struct.Atomic_uint32*, align 8
  %4 = alloca i32, align 4
  store %struct.Atomic_uint32* %0, %struct.Atomic_uint32** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint32** %3, metadata !344, metadata !126), !dbg !345
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !346, metadata !126), !dbg !347
  %5 = load %struct.Atomic_uint32*, %struct.Atomic_uint32** %3, align 8, !dbg !348
  %6 = getelementptr inbounds %struct.Atomic_uint32, %struct.Atomic_uint32* %5, i32 0, i32 0, !dbg !349
  %7 = load i32, i32* %4, align 4, !dbg !350
  call void asm sideeffect "mov $1, $0", "=*m,r,~{dirflag},~{fpsr},~{flags}"(i32* %6, i32 %7) #10, !dbg !351, !srcloc !352
  ret void, !dbg !353
}

declare i32 @MXUserGetSignature(i32) #3

declare i32 @MXUserAllocSerialNumber() #3

; Function Attrs: nounwind uwtable
define internal void @MXUserDumpRecLock(%struct.MXUserHeader*) #0 !dbg !354 {
  %2 = alloca %struct.MXUserHeader*, align 8
  %3 = alloca %struct.MXUserRecLock*, align 8
  store %struct.MXUserHeader* %0, %struct.MXUserHeader** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserHeader** %2, metadata !357, metadata !126), !dbg !358
  call void @llvm.dbg.declare(metadata %struct.MXUserRecLock** %3, metadata !359, metadata !126), !dbg !360
  %4 = load %struct.MXUserHeader*, %struct.MXUserHeader** %2, align 8, !dbg !361
  %5 = bitcast %struct.MXUserHeader* %4 to %struct.MXUserRecLock*, !dbg !362
  store %struct.MXUserRecLock* %5, %struct.MXUserRecLock** %3, align 8, !dbg !360
  %6 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %3, align 8, !dbg !363
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.MXUserDumpRecLock, i32 0, i32 0), %struct.MXUserRecLock* %6), !dbg !364
  %7 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %3, align 8, !dbg !365
  %8 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %7, i32 0, i32 0, !dbg !366
  %9 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %8, i32 0, i32 0, !dbg !367
  %10 = load i32, i32* %9, align 8, !dbg !367
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i32 %10), !dbg !368
  %11 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %3, align 8, !dbg !369
  %12 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %11, i32 0, i32 0, !dbg !370
  %13 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %12, i32 0, i32 1, !dbg !371
  %14 = load i8*, i8** %13, align 8, !dbg !371
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* %14), !dbg !372
  %15 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %3, align 8, !dbg !373
  %16 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %15, i32 0, i32 0, !dbg !374
  %17 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %16, i32 0, i32 2, !dbg !375
  %18 = load i32, i32* %17, align 8, !dbg !375
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i32 %18), !dbg !376
  %19 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %3, align 8, !dbg !377
  %20 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %19, i32 0, i32 0, !dbg !378
  %21 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %20, i32 0, i32 3, !dbg !379
  %22 = bitcast %struct.anon* %21 to i32*, !dbg !380
  %23 = load i32, i32* %22, align 4, !dbg !380
  %24 = and i32 %23, 16777215, !dbg !380
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0), i32 %24), !dbg !381
  %25 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %3, align 8, !dbg !382
  %26 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %25, i32 0, i32 4, !dbg !383
  %27 = call i32 @Atomic_Read32(%struct.Atomic_uint32* %26), !dbg !384
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i32 %27), !dbg !385
  %28 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %3, align 8, !dbg !387
  %29 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %28, i32 0, i32 5, !dbg !389
  %30 = load %struct.MX_MutexRec*, %struct.MX_MutexRec** %29, align 8, !dbg !389
  %31 = icmp eq %struct.MX_MutexRec* %30, null, !dbg !390
  br i1 %31, label %32, label %39, !dbg !391

; <label>:32:                                     ; preds = %1
  %33 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %3, align 8, !dbg !392
  %34 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %33, i32 0, i32 1, !dbg !394
  %35 = call i32 @MXRecLockCount(%struct.MXRecLock* %34), !dbg !395
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i32 %35), !dbg !396
  %36 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %3, align 8, !dbg !398
  %37 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %36, i32 0, i32 1, !dbg !399
  %38 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %37, i32 0, i32 2, !dbg !400
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i32 0, i32 0), i64* %38), !dbg !401
  br label %43, !dbg !402

; <label>:39:                                     ; preds = %1
  %40 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %3, align 8, !dbg !403
  %41 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %40, i32 0, i32 5, !dbg !405
  %42 = load %struct.MX_MutexRec*, %struct.MX_MutexRec** %41, align 8, !dbg !405
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), %struct.MX_MutexRec* %42), !dbg !406
  br label %43

; <label>:43:                                     ; preds = %39, %32
  ret void, !dbg !407
}

declare i32 @MXUserStatsMode() #3

declare void @MXUserDisableStats(%struct.Atomic_uint64*, %struct.Atomic_uint64*) #3

declare void @MXUserEnableStats(%struct.Atomic_uint64*, %struct.Atomic_uint64*) #3

; Function Attrs: nounwind uwtable
define internal void @MXUserStatsActionRec(%struct.MXUserHeader*) #0 !dbg !408 {
  %2 = alloca %struct.MXUserHeader*, align 8
  %3 = alloca %struct.MXUserRecLock*, align 8
  %4 = alloca %struct.MXUserHeldStats*, align 8
  %5 = alloca %struct.MXUserAcquireStats*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca double, align 8
  store %struct.MXUserHeader* %0, %struct.MXUserHeader** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserHeader** %2, metadata !409, metadata !126), !dbg !410
  call void @llvm.dbg.declare(metadata %struct.MXUserRecLock** %3, metadata !411, metadata !126), !dbg !412
  %9 = load %struct.MXUserHeader*, %struct.MXUserHeader** %2, align 8, !dbg !413
  %10 = bitcast %struct.MXUserHeader* %9 to %struct.MXUserRecLock*, !dbg !414
  store %struct.MXUserRecLock* %10, %struct.MXUserRecLock** %3, align 8, !dbg !412
  call void @llvm.dbg.declare(metadata %struct.MXUserHeldStats** %4, metadata !415, metadata !126), !dbg !435
  %11 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %3, align 8, !dbg !436
  %12 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %11, i32 0, i32 2, !dbg !437
  %13 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %12), !dbg !438
  %14 = bitcast i8* %13 to %struct.MXUserHeldStats*, !dbg !438
  store %struct.MXUserHeldStats* %14, %struct.MXUserHeldStats** %4, align 8, !dbg !435
  call void @llvm.dbg.declare(metadata %struct.MXUserAcquireStats** %5, metadata !439, metadata !126), !dbg !458
  %15 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %3, align 8, !dbg !459
  %16 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %15, i32 0, i32 3, !dbg !460
  %17 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %16), !dbg !461
  %18 = bitcast i8* %17 to %struct.MXUserAcquireStats*, !dbg !461
  store %struct.MXUserAcquireStats* %18, %struct.MXUserAcquireStats** %5, align 8, !dbg !458
  %19 = load %struct.MXUserHeldStats*, %struct.MXUserHeldStats** %4, align 8, !dbg !462
  %20 = icmp ne %struct.MXUserHeldStats* %19, null, !dbg !464
  %21 = zext i1 %20 to i32, !dbg !464
  %22 = sext i32 %21 to i64, !dbg !465
  %23 = icmp ne i64 %22, 0, !dbg !466
  br i1 %23, label %24, label %39, !dbg !467

; <label>:24:                                     ; preds = %1
  %25 = load %struct.MXUserHeldStats*, %struct.MXUserHeldStats** %4, align 8, !dbg !468
  %26 = getelementptr inbounds %struct.MXUserHeldStats, %struct.MXUserHeldStats* %25, i32 0, i32 1, !dbg !470
  %27 = load %struct.MXUserHeader*, %struct.MXUserHeader** %2, align 8, !dbg !471
  call void @MXUserDumpBasicStats(%struct.MXUserBasicStats* %26, %struct.MXUserHeader* %27), !dbg !472
  %28 = load %struct.MXUserHeldStats*, %struct.MXUserHeldStats** %4, align 8, !dbg !473
  %29 = getelementptr inbounds %struct.MXUserHeldStats, %struct.MXUserHeldStats* %28, i32 0, i32 2, !dbg !475
  %30 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %29), !dbg !476
  %31 = icmp ne i8* %30, null, !dbg !477
  br i1 %31, label %32, label %38, !dbg !478

; <label>:32:                                     ; preds = %24
  %33 = load %struct.MXUserHeldStats*, %struct.MXUserHeldStats** %4, align 8, !dbg !479
  %34 = getelementptr inbounds %struct.MXUserHeldStats, %struct.MXUserHeldStats* %33, i32 0, i32 2, !dbg !481
  %35 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %34), !dbg !482
  %36 = bitcast i8* %35 to %struct.MXUserHisto*, !dbg !482
  %37 = load %struct.MXUserHeader*, %struct.MXUserHeader** %2, align 8, !dbg !483
  call void @MXUserHistoDump(%struct.MXUserHisto* %36, %struct.MXUserHeader* %37), !dbg !484
  br label %38, !dbg !486

; <label>:38:                                     ; preds = %32, %24
  br label %39, !dbg !487

; <label>:39:                                     ; preds = %38, %1
  %40 = load %struct.MXUserAcquireStats*, %struct.MXUserAcquireStats** %5, align 8, !dbg !488
  %41 = icmp ne %struct.MXUserAcquireStats* %40, null, !dbg !490
  %42 = xor i1 %41, true, !dbg !491
  %43 = xor i1 %42, true, !dbg !492
  %44 = zext i1 %43 to i32, !dbg !492
  %45 = sext i32 %44 to i64, !dbg !492
  %46 = icmp ne i64 %45, 0, !dbg !493
  br i1 %46, label %47, label %91, !dbg !494

; <label>:47:                                     ; preds = %39
  call void @llvm.dbg.declare(metadata i8* %6, metadata !495, metadata !126), !dbg !497
  call void @llvm.dbg.declare(metadata i8* %7, metadata !498, metadata !126), !dbg !499
  call void @llvm.dbg.declare(metadata double* %8, metadata !500, metadata !126), !dbg !501
  %48 = load %struct.MXUserAcquireStats*, %struct.MXUserAcquireStats** %5, align 8, !dbg !502
  %49 = getelementptr inbounds %struct.MXUserAcquireStats, %struct.MXUserAcquireStats* %48, i32 0, i32 0, !dbg !503
  %50 = load %struct.MXUserHeader*, %struct.MXUserHeader** %2, align 8, !dbg !504
  call void @MXUserDumpAcquisitionStats(%struct.MXUserAcquisitionStats* %49, %struct.MXUserHeader* %50), !dbg !505
  %51 = load %struct.MXUserAcquireStats*, %struct.MXUserAcquireStats** %5, align 8, !dbg !506
  %52 = getelementptr inbounds %struct.MXUserAcquireStats, %struct.MXUserAcquireStats* %51, i32 0, i32 1, !dbg !508
  %53 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %52), !dbg !509
  %54 = icmp ne i8* %53, null, !dbg !510
  br i1 %54, label %55, label %61, !dbg !511

; <label>:55:                                     ; preds = %47
  %56 = load %struct.MXUserAcquireStats*, %struct.MXUserAcquireStats** %5, align 8, !dbg !512
  %57 = getelementptr inbounds %struct.MXUserAcquireStats, %struct.MXUserAcquireStats* %56, i32 0, i32 1, !dbg !514
  %58 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %57), !dbg !515
  %59 = bitcast i8* %58 to %struct.MXUserHisto*, !dbg !515
  %60 = load %struct.MXUserHeader*, %struct.MXUserHeader** %2, align 8, !dbg !516
  call void @MXUserHistoDump(%struct.MXUserHisto* %59, %struct.MXUserHeader* %60), !dbg !517
  br label %61, !dbg !519

; <label>:61:                                     ; preds = %55, %47
  %62 = load %struct.MXUserAcquireStats*, %struct.MXUserAcquireStats** %5, align 8, !dbg !520
  %63 = getelementptr inbounds %struct.MXUserAcquireStats, %struct.MXUserAcquireStats* %62, i32 0, i32 0, !dbg !521
  call void @MXUserKitchen(%struct.MXUserAcquisitionStats* %63, double* %8, i8* %6, i8* %7), !dbg !522
  %64 = load i8, i8* %6, align 1, !dbg !523
  %65 = sext i8 %64 to i64, !dbg !525
  %66 = icmp ne i64 %65, 0, !dbg !526
  br i1 %66, label %67, label %90, !dbg !527

; <label>:67:                                     ; preds = %61
  %68 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %3, align 8, !dbg !528
  %69 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %68, i32 0, i32 3, !dbg !530
  %70 = call signext i8 @MXUserForceAcquisitionHisto(%struct.Atomic_uint64* %69, i64 1000, i32 7), !dbg !531
  %71 = load %struct.MXUserHeldStats*, %struct.MXUserHeldStats** %4, align 8, !dbg !532
  %72 = icmp ne %struct.MXUserHeldStats* %71, null, !dbg !534
  %73 = zext i1 %72 to i32, !dbg !534
  %74 = sext i32 %73 to i64, !dbg !535
  %75 = icmp ne i64 %74, 0, !dbg !536
  br i1 %75, label %76, label %80, !dbg !537

; <label>:76:                                     ; preds = %67
  %77 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %3, align 8, !dbg !538
  %78 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %77, i32 0, i32 2, !dbg !540
  %79 = call signext i8 @MXUserForceHeldHisto(%struct.Atomic_uint64* %78, i64 1000, i32 7), !dbg !541
  br label %80, !dbg !542

; <label>:80:                                     ; preds = %76, %67
  %81 = load i8, i8* %7, align 1, !dbg !543
  %82 = icmp ne i8 %81, 0, !dbg !543
  br i1 %82, label %83, label %89, !dbg !545

; <label>:83:                                     ; preds = %80
  %84 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %3, align 8, !dbg !546
  %85 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %84, i32 0, i32 0, !dbg !548
  %86 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %85, i32 0, i32 1, !dbg !549
  %87 = load i8*, i8** %86, align 8, !dbg !549
  %88 = load double, double* %8, align 8, !dbg !550
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i32 0, i32 0), i8* %87, double %88), !dbg !551
  br label %89, !dbg !552

; <label>:89:                                     ; preds = %83, %80
  br label %90, !dbg !553

; <label>:90:                                     ; preds = %89, %61
  br label %91, !dbg !554

; <label>:91:                                     ; preds = %90, %39
  ret void, !dbg !555
}

declare void @MXUserAddToList(%struct.MXUserHeader*) #3

; Function Attrs: nounwind uwtable
define void @MXUser_DestroyRecLock(%struct.MXUserRecLock*) #0 !dbg !556 {
  %2 = alloca %struct.MXUserRecLock*, align 8
  store %struct.MXUserRecLock* %0, %struct.MXUserRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserRecLock** %2, metadata !559, metadata !126), !dbg !560
  %3 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !561
  %4 = icmp ne %struct.MXUserRecLock* %3, null, !dbg !563
  br i1 %4, label %5, label %7, !dbg !564

; <label>:5:                                      ; preds = %1
  %6 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !565
  call void @MXUserCondDestroyRecLock(%struct.MXUserRecLock* %6), !dbg !567
  br label %7, !dbg !568

; <label>:7:                                      ; preds = %5, %1
  ret void, !dbg !569
}

; Function Attrs: nounwind uwtable
define internal void @MXUserCondDestroyRecLock(%struct.MXUserRecLock*) #0 !dbg !570 {
  %2 = alloca %struct.MXUserRecLock*, align 8
  store %struct.MXUserRecLock* %0, %struct.MXUserRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserRecLock** %2, metadata !571, metadata !126), !dbg !572
  %3 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !573
  %4 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %3, i32 0, i32 0, !dbg !574
  call void @MXUserValidateHeader(%struct.MXUserHeader* %4, i32 2), !dbg !575
  %5 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !576
  %6 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %5, i32 0, i32 4, !dbg !578
  %7 = call i32 @Atomic_ReadDec32(%struct.Atomic_uint32* %6), !dbg !579
  %8 = icmp eq i32 %7, 1, !dbg !580
  br i1 %8, label %9, label %40, !dbg !581

; <label>:9:                                      ; preds = %1
  %10 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !582
  %11 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %10, i32 0, i32 5, !dbg !585
  %12 = load %struct.MX_MutexRec*, %struct.MX_MutexRec** %11, align 8, !dbg !585
  %13 = icmp eq %struct.MX_MutexRec* %12, null, !dbg !586
  br i1 %13, label %14, label %27, !dbg !587

; <label>:14:                                     ; preds = %9
  %15 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !588
  %16 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %15, i32 0, i32 1, !dbg !591
  %17 = call i32 @MXRecLockCount(%struct.MXRecLock* %16), !dbg !592
  %18 = icmp sgt i32 %17, 0, !dbg !593
  br i1 %18, label %19, label %22, !dbg !594

; <label>:19:                                     ; preds = %14
  %20 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !595
  %21 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %20, i32 0, i32 0, !dbg !597
  call void (%struct.MXUserHeader*, i8*, ...) @MXUserDumpAndPanic(%struct.MXUserHeader* %21, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.MXUserCondDestroyRecLock, i32 0, i32 0)), !dbg !598
  br label %22, !dbg !599

; <label>:22:                                     ; preds = %19, %14
  %23 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !600
  %24 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %23, i32 0, i32 1, !dbg !601
  call void @MXRecLockDestroy(%struct.MXRecLock* %24), !dbg !602
  %25 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !603
  %26 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %25, i32 0, i32 0, !dbg !604
  call void @MXUserRemoveFromList(%struct.MXUserHeader* %26), !dbg !605
  br label %27, !dbg !606

; <label>:27:                                     ; preds = %22, %9
  %28 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !607
  %29 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %28, i32 0, i32 0, !dbg !608
  %30 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %29, i32 0, i32 0, !dbg !609
  store i32 0, i32* %30, align 8, !dbg !610
  %31 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !611
  %32 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %31, i32 0, i32 0, !dbg !612
  %33 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %32, i32 0, i32 1, !dbg !613
  %34 = load i8*, i8** %33, align 8, !dbg !613
  call void @free(i8* %34) #10, !dbg !614
  %35 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !615
  %36 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %35, i32 0, i32 0, !dbg !616
  %37 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %36, i32 0, i32 1, !dbg !617
  store i8* null, i8** %37, align 8, !dbg !618
  %38 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !619
  %39 = bitcast %struct.MXUserRecLock* %38 to i8*, !dbg !619
  call void @free(i8* %39) #10, !dbg !620
  br label %40, !dbg !621

; <label>:40:                                     ; preds = %27, %1
  ret void, !dbg !622
}

; Function Attrs: nounwind uwtable
define void @MXUser_AcquireRecLock(%struct.MXUserRecLock*) #0 !dbg !623 {
  %2 = alloca %struct.MXUserRecLock*, align 8
  store %struct.MXUserRecLock* %0, %struct.MXUserRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserRecLock** %2, metadata !624, metadata !126), !dbg !625
  %3 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !626
  %4 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %3, i32 0, i32 0, !dbg !627
  call void @MXUserValidateHeader(%struct.MXUserHeader* %4, i32 2), !dbg !628
  %5 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !629
  %6 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %5, i32 0, i32 5, !dbg !631
  %7 = load %struct.MX_MutexRec*, %struct.MX_MutexRec** %6, align 8, !dbg !631
  %8 = icmp ne %struct.MX_MutexRec* %7, null, !dbg !632
  %9 = zext i1 %8 to i32, !dbg !632
  %10 = sext i32 %9 to i64, !dbg !633
  %11 = icmp ne i64 %10, 0, !dbg !634
  br i1 %11, label %12, label %17, !dbg !635

; <label>:12:                                     ; preds = %1
  %13 = load void (%struct.MX_MutexRec*)*, void (%struct.MX_MutexRec*)** @MXUserMX_LockRec, align 8, !dbg !636
  %14 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !638
  %15 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %14, i32 0, i32 5, !dbg !639
  %16 = load %struct.MX_MutexRec*, %struct.MX_MutexRec** %15, align 8, !dbg !639
  call void %13(%struct.MX_MutexRec* %16), !dbg !640
  br label %22, !dbg !641

; <label>:17:                                     ; preds = %1
  %18 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !642
  %19 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %18, i32 0, i32 0, !dbg !644
  call void @MXUserAcquisitionTracking(%struct.MXUserHeader* %19, i8 signext 1), !dbg !645
  %20 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !646
  %21 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %20, i32 0, i32 1, !dbg !649
  call void @MXRecLockAcquire(%struct.MXRecLock* %21, i64* null), !dbg !650
  br label %22

; <label>:22:                                     ; preds = %17, %12
  ret void, !dbg !651
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXUserAcquisitionTracking(%struct.MXUserHeader*, i8 signext) #2 !dbg !652 {
  %3 = alloca %struct.MXUserHeader*, align 8
  %4 = alloca i8, align 1
  store %struct.MXUserHeader* %0, %struct.MXUserHeader** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserHeader** %3, metadata !655, metadata !126), !dbg !656
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !657, metadata !126), !dbg !658
  ret void, !dbg !659
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXRecLockAcquire(%struct.MXRecLock*, i64*) #2 !dbg !660 {
  %3 = alloca %struct.MXRecLock*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.MXRecLock* %0, %struct.MXRecLock** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %3, metadata !664, metadata !126), !dbg !665
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !666, metadata !126), !dbg !667
  call void @llvm.dbg.declare(metadata i32* %5, metadata !668, metadata !126), !dbg !669
  %7 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !670
  %8 = call i32 @MXRecLockCount(%struct.MXRecLock* %7), !dbg !672
  %9 = icmp sgt i32 %8, 0, !dbg !673
  %10 = zext i1 %9 to i32, !dbg !673
  %11 = sext i32 %10 to i64, !dbg !674
  %12 = icmp ne i64 %11, 0, !dbg !675
  br i1 %12, label %13, label %25, !dbg !676

; <label>:13:                                     ; preds = %2
  %14 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !677
  %15 = call signext i8 @MXRecLockIsOwner(%struct.MXRecLock* %14), !dbg !679
  %16 = sext i8 %15 to i32, !dbg !679
  %17 = icmp ne i32 %16, 0, !dbg !679
  br i1 %17, label %18, label %25, !dbg !680

; <label>:18:                                     ; preds = %13
  %19 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !681
  call void @MXRecLockIncCount(%struct.MXRecLock* %19, i32 1), !dbg !683
  %20 = load i64*, i64** %4, align 8, !dbg !684
  %21 = icmp ne i64* %20, null, !dbg !686
  br i1 %21, label %22, label %24, !dbg !687

; <label>:22:                                     ; preds = %18
  %23 = load i64*, i64** %4, align 8, !dbg !688
  store i64 0, i64* %23, align 8, !dbg !690
  br label %24, !dbg !691

; <label>:24:                                     ; preds = %22, %18
  br label %46, !dbg !692

; <label>:25:                                     ; preds = %13, %2
  %26 = load i64*, i64** %4, align 8, !dbg !693
  %27 = icmp eq i64* %26, null, !dbg !695
  %28 = xor i1 %27, true, !dbg !696
  %29 = xor i1 %28, true, !dbg !697
  %30 = zext i1 %29 to i32, !dbg !697
  %31 = sext i32 %30 to i64, !dbg !697
  %32 = icmp ne i64 %31, 0, !dbg !698
  br i1 %32, label %33, label %36, !dbg !699

; <label>:33:                                     ; preds = %25
  %34 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !700
  %35 = call i32 @MXRecLockAcquireInternal(%struct.MXRecLock* %34), !dbg !702
  store i32 %35, i32* %5, align 4, !dbg !703
  br label %44, !dbg !704

; <label>:36:                                     ; preds = %25
  call void @llvm.dbg.declare(metadata i64* %6, metadata !705, metadata !126), !dbg !707
  %37 = call i64 @Hostinfo_SystemTimerNS(), !dbg !708
  store i64 %37, i64* %6, align 8, !dbg !707
  %38 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !709
  %39 = call i32 @MXRecLockAcquireInternal(%struct.MXRecLock* %38), !dbg !710
  store i32 %39, i32* %5, align 4, !dbg !711
  %40 = call i64 @Hostinfo_SystemTimerNS(), !dbg !712
  %41 = load i64, i64* %6, align 8, !dbg !713
  %42 = sub nsw i64 %40, %41, !dbg !714
  %43 = load i64*, i64** %4, align 8, !dbg !715
  store i64 %42, i64* %43, align 8, !dbg !716
  br label %44

; <label>:44:                                     ; preds = %36, %33
  %45 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !717
  call void @MXRecLockIncCount(%struct.MXRecLock* %45, i32 1), !dbg !718
  br label %46, !dbg !719

; <label>:46:                                     ; preds = %44, %24
  ret void, !dbg !720
}

; Function Attrs: nounwind uwtable
define void @MXUser_ReleaseRecLock(%struct.MXUserRecLock*) #0 !dbg !721 {
  %2 = alloca %struct.MXUserRecLock*, align 8
  store %struct.MXUserRecLock* %0, %struct.MXUserRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserRecLock** %2, metadata !722, metadata !126), !dbg !723
  %3 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !724
  %4 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %3, i32 0, i32 0, !dbg !725
  call void @MXUserValidateHeader(%struct.MXUserHeader* %4, i32 2), !dbg !726
  %5 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !727
  %6 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %5, i32 0, i32 5, !dbg !729
  %7 = load %struct.MX_MutexRec*, %struct.MX_MutexRec** %6, align 8, !dbg !729
  %8 = icmp ne %struct.MX_MutexRec* %7, null, !dbg !730
  %9 = zext i1 %8 to i32, !dbg !730
  %10 = sext i32 %9 to i64, !dbg !731
  %11 = icmp ne i64 %10, 0, !dbg !732
  br i1 %11, label %12, label %17, !dbg !733

; <label>:12:                                     ; preds = %1
  %13 = load void (%struct.MX_MutexRec*)*, void (%struct.MX_MutexRec*)** @MXUserMX_UnlockRec, align 8, !dbg !734
  %14 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !736
  %15 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %14, i32 0, i32 5, !dbg !737
  %16 = load %struct.MX_MutexRec*, %struct.MX_MutexRec** %15, align 8, !dbg !737
  call void %13(%struct.MX_MutexRec* %16), !dbg !738
  br label %22, !dbg !739

; <label>:17:                                     ; preds = %1
  %18 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !740
  %19 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %18, i32 0, i32 0, !dbg !742
  call void @MXUserReleaseTracking(%struct.MXUserHeader* %19), !dbg !743
  %20 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !744
  %21 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %20, i32 0, i32 1, !dbg !745
  call void @MXRecLockRelease(%struct.MXRecLock* %21), !dbg !746
  br label %22

; <label>:22:                                     ; preds = %17, %12
  ret void, !dbg !747
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXUserReleaseTracking(%struct.MXUserHeader*) #2 !dbg !748 {
  %2 = alloca %struct.MXUserHeader*, align 8
  store %struct.MXUserHeader* %0, %struct.MXUserHeader** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserHeader** %2, metadata !749, metadata !126), !dbg !750
  ret void, !dbg !751
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXRecLockRelease(%struct.MXRecLock*) #2 !dbg !752 {
  %2 = alloca %struct.MXRecLock*, align 8
  %3 = alloca i32, align 4
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !755, metadata !126), !dbg !756
  %4 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !757
  call void @MXRecLockDecCount(%struct.MXRecLock* %4, i32 1), !dbg !758
  %5 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !759
  %6 = call i32 @MXRecLockCount(%struct.MXRecLock* %5), !dbg !761
  %7 = icmp eq i32 %6, 0, !dbg !762
  %8 = xor i1 %7, true, !dbg !763
  %9 = xor i1 %8, true, !dbg !764
  %10 = zext i1 %9 to i32, !dbg !764
  %11 = sext i32 %10 to i64, !dbg !764
  %12 = icmp ne i64 %11, 0, !dbg !765
  br i1 %12, label %13, label %16, !dbg !766

; <label>:13:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata i32* %3, metadata !767, metadata !126), !dbg !769
  %14 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !770
  %15 = call i32 @MXRecLockReleaseInternal(%struct.MXRecLock* %14), !dbg !771
  store i32 %15, i32* %3, align 4, !dbg !769
  br label %16, !dbg !772

; <label>:16:                                     ; preds = %13, %1
  ret void, !dbg !773
}

; Function Attrs: nounwind uwtable
define signext i8 @MXUser_TryAcquireRecLock(%struct.MXUserRecLock*) #0 !dbg !774 {
  %2 = alloca %struct.MXUserRecLock*, align 8
  %3 = alloca i8, align 1
  store %struct.MXUserRecLock* %0, %struct.MXUserRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserRecLock** %2, metadata !775, metadata !126), !dbg !776
  call void @llvm.dbg.declare(metadata i8* %3, metadata !777, metadata !126), !dbg !778
  %4 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !779
  %5 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %4, i32 0, i32 0, !dbg !780
  call void @MXUserValidateHeader(%struct.MXUserHeader* %5, i32 2), !dbg !781
  %6 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !782
  %7 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %6, i32 0, i32 5, !dbg !784
  %8 = load %struct.MX_MutexRec*, %struct.MX_MutexRec** %7, align 8, !dbg !784
  %9 = icmp ne %struct.MX_MutexRec* %8, null, !dbg !785
  %10 = zext i1 %9 to i32, !dbg !785
  %11 = sext i32 %10 to i64, !dbg !786
  %12 = icmp ne i64 %11, 0, !dbg !787
  br i1 %12, label %13, label %19, !dbg !788

; <label>:13:                                     ; preds = %1
  %14 = load i8 (%struct.MX_MutexRec*)*, i8 (%struct.MX_MutexRec*)** @MXUserMX_TryLockRec, align 8, !dbg !789
  %15 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !791
  %16 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %15, i32 0, i32 5, !dbg !792
  %17 = load %struct.MX_MutexRec*, %struct.MX_MutexRec** %16, align 8, !dbg !792
  %18 = call signext i8 %14(%struct.MX_MutexRec* %17), !dbg !793
  store i8 %18, i8* %3, align 1, !dbg !794
  br label %37, !dbg !795

; <label>:19:                                     ; preds = %1
  %20 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !796
  %21 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %20, i32 0, i32 0, !dbg !799
  %22 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %21, i32 0, i32 1, !dbg !800
  %23 = load i8*, i8** %22, align 8, !dbg !800
  %24 = call signext i8 @MXUserTryAcquireFail(i8* %23), !dbg !801
  %25 = icmp ne i8 %24, 0, !dbg !801
  br i1 %25, label %26, label %27, !dbg !802

; <label>:26:                                     ; preds = %19
  store i8 0, i8* %3, align 1, !dbg !803
  br label %38, !dbg !805

; <label>:27:                                     ; preds = %19
  %28 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !806
  %29 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %28, i32 0, i32 1, !dbg !807
  %30 = call signext i8 @MXRecLockTryAcquire(%struct.MXRecLock* %29), !dbg !808
  store i8 %30, i8* %3, align 1, !dbg !809
  %31 = load i8, i8* %3, align 1, !dbg !810
  %32 = icmp ne i8 %31, 0, !dbg !810
  br i1 %32, label %33, label %36, !dbg !812

; <label>:33:                                     ; preds = %27
  %34 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !813
  %35 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %34, i32 0, i32 0, !dbg !815
  call void @MXUserAcquisitionTracking(%struct.MXUserHeader* %35, i8 signext 0), !dbg !816
  br label %36, !dbg !817

; <label>:36:                                     ; preds = %33, %27
  br label %37

; <label>:37:                                     ; preds = %36, %13
  br label %38, !dbg !818

; <label>:38:                                     ; preds = %37, %26
  %39 = load i8, i8* %3, align 1, !dbg !820
  ret i8 %39, !dbg !821
}

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @MXUserTryAcquireFail(i8*) #2 !dbg !822 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !825, metadata !126), !dbg !826
  ret i8 0, !dbg !827
}

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @MXRecLockTryAcquire(%struct.MXRecLock*) #2 !dbg !828 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.MXRecLock*, align 8
  %4 = alloca i32, align 4
  store %struct.MXRecLock* %0, %struct.MXRecLock** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %3, metadata !829, metadata !126), !dbg !830
  call void @llvm.dbg.declare(metadata i32* %4, metadata !831, metadata !126), !dbg !832
  %5 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !833
  %6 = call i32 @MXRecLockCount(%struct.MXRecLock* %5), !dbg !835
  %7 = icmp sgt i32 %6, 0, !dbg !836
  %8 = zext i1 %7 to i32, !dbg !836
  %9 = sext i32 %8 to i64, !dbg !837
  %10 = icmp ne i64 %9, 0, !dbg !838
  br i1 %10, label %11, label %18, !dbg !839

; <label>:11:                                     ; preds = %1
  %12 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !840
  %13 = call signext i8 @MXRecLockIsOwner(%struct.MXRecLock* %12), !dbg !842
  %14 = sext i8 %13 to i32, !dbg !842
  %15 = icmp ne i32 %14, 0, !dbg !842
  br i1 %15, label %16, label %18, !dbg !843

; <label>:16:                                     ; preds = %11
  %17 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !844
  call void @MXRecLockIncCount(%struct.MXRecLock* %17, i32 1), !dbg !846
  store i8 1, i8* %2, align 1, !dbg !847
  br label %31, !dbg !847

; <label>:18:                                     ; preds = %11, %1
  %19 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !848
  %20 = call i32 @MXRecLockTryAcquireInternal(%struct.MXRecLock* %19), !dbg !849
  store i32 %20, i32* %4, align 4, !dbg !850
  %21 = load i32, i32* %4, align 4, !dbg !851
  %22 = icmp eq i32 %21, 0, !dbg !853
  %23 = xor i1 %22, true, !dbg !854
  %24 = xor i1 %23, true, !dbg !855
  %25 = zext i1 %24 to i32, !dbg !855
  %26 = sext i32 %25 to i64, !dbg !855
  %27 = icmp ne i64 %26, 0, !dbg !856
  br i1 %27, label %28, label %30, !dbg !857

; <label>:28:                                     ; preds = %18
  %29 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !858
  call void @MXRecLockIncCount(%struct.MXRecLock* %29, i32 1), !dbg !860
  store i8 1, i8* %2, align 1, !dbg !861
  br label %31, !dbg !861

; <label>:30:                                     ; preds = %18
  store i8 0, i8* %2, align 1, !dbg !862
  br label %31, !dbg !862

; <label>:31:                                     ; preds = %30, %28, %16
  %32 = load i8, i8* %2, align 1, !dbg !863
  ret i8 %32, !dbg !863
}

; Function Attrs: nounwind uwtable
define signext i8 @MXUser_IsCurThreadHoldingRecLock(%struct.MXUserRecLock*) #0 !dbg !864 {
  %2 = alloca %struct.MXUserRecLock*, align 8
  %3 = alloca i8, align 1
  store %struct.MXUserRecLock* %0, %struct.MXUserRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserRecLock** %2, metadata !865, metadata !126), !dbg !866
  call void @llvm.dbg.declare(metadata i8* %3, metadata !867, metadata !126), !dbg !868
  %4 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !869
  %5 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %4, i32 0, i32 0, !dbg !870
  call void @MXUserValidateHeader(%struct.MXUserHeader* %5, i32 2), !dbg !871
  %6 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !872
  %7 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %6, i32 0, i32 5, !dbg !874
  %8 = load %struct.MX_MutexRec*, %struct.MX_MutexRec** %7, align 8, !dbg !874
  %9 = icmp ne %struct.MX_MutexRec* %8, null, !dbg !875
  %10 = zext i1 %9 to i32, !dbg !875
  %11 = sext i32 %10 to i64, !dbg !876
  %12 = icmp ne i64 %11, 0, !dbg !877
  br i1 %12, label %13, label %19, !dbg !878

; <label>:13:                                     ; preds = %1
  %14 = load i8 (%struct.MX_MutexRec*)*, i8 (%struct.MX_MutexRec*)** @MXUserMX_IsLockedByCurThreadRec, align 8, !dbg !879
  %15 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !881
  %16 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %15, i32 0, i32 5, !dbg !882
  %17 = load %struct.MX_MutexRec*, %struct.MX_MutexRec** %16, align 8, !dbg !882
  %18 = call signext i8 %14(%struct.MX_MutexRec* %17), !dbg !883
  store i8 %18, i8* %3, align 1, !dbg !884
  br label %23, !dbg !885

; <label>:19:                                     ; preds = %1
  %20 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !886
  %21 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %20, i32 0, i32 1, !dbg !888
  %22 = call signext i8 @MXRecLockIsOwner(%struct.MXRecLock* %21), !dbg !889
  store i8 %22, i8* %3, align 1, !dbg !890
  br label %23

; <label>:23:                                     ; preds = %19, %13
  %24 = load i8, i8* %3, align 1, !dbg !891
  ret i8 %24, !dbg !892
}

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @MXRecLockIsOwner(%struct.MXRecLock*) #2 !dbg !893 {
  %2 = alloca %struct.MXRecLock*, align 8
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !898, metadata !126), !dbg !899
  %3 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !900
  %4 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %3, i32 0, i32 2, !dbg !901
  %5 = load i64, i64* %4, align 8, !dbg !901
  %6 = call i64 @MXUserNativeThreadID(), !dbg !902
  %7 = call i32 @pthread_equal(i64 %5, i64 %6) #1, !dbg !903
  %8 = trunc i32 %7 to i8, !dbg !905
  ret i8 %8, !dbg !906
}

; Function Attrs: nounwind uwtable
define %struct.MXUserRecLock* @MXUser_CreateSingletonRecLockInt(%struct.Atomic_uint64*, i8*, i32) #0 !dbg !907 {
  %4 = alloca %struct.Atomic_uint64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.MXUserRecLock*, align 8
  %8 = alloca %struct.MXUserRecLock*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %4, metadata !911, metadata !126), !dbg !912
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !913, metadata !126), !dbg !914
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !915, metadata !126), !dbg !916
  call void @llvm.dbg.declare(metadata %struct.MXUserRecLock** %7, metadata !917, metadata !126), !dbg !918
  %9 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !919
  %10 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %9), !dbg !920
  %11 = bitcast i8* %10 to %struct.MXUserRecLock*, !dbg !920
  store %struct.MXUserRecLock* %11, %struct.MXUserRecLock** %7, align 8, !dbg !921
  %12 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %7, align 8, !dbg !922
  %13 = icmp eq %struct.MXUserRecLock* %12, null, !dbg !924
  %14 = zext i1 %13 to i32, !dbg !924
  %15 = sext i32 %14 to i64, !dbg !925
  %16 = icmp ne i64 %15, 0, !dbg !926
  br i1 %16, label %17, label %35, !dbg !927

; <label>:17:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata %struct.MXUserRecLock** %8, metadata !928, metadata !126), !dbg !930
  %18 = load i8*, i8** %5, align 8, !dbg !931
  %19 = load i32, i32* %6, align 4, !dbg !932
  %20 = call %struct.MXUserRecLock* @MXUser_CreateRecLock(i8* %18, i32 %19), !dbg !933
  store %struct.MXUserRecLock* %20, %struct.MXUserRecLock** %8, align 8, !dbg !930
  %21 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !934
  %22 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %8, align 8, !dbg !935
  %23 = bitcast %struct.MXUserRecLock* %22 to i8*, !dbg !936
  %24 = call i8* @Atomic_ReadIfEqualWritePtr(%struct.Atomic_uint64* %21, i8* null, i8* %23), !dbg !937
  %25 = bitcast i8* %24 to %struct.MXUserRecLock*, !dbg !937
  store %struct.MXUserRecLock* %25, %struct.MXUserRecLock** %7, align 8, !dbg !938
  %26 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %7, align 8, !dbg !939
  %27 = icmp ne %struct.MXUserRecLock* %26, null, !dbg !939
  br i1 %27, label %28, label %30, !dbg !941

; <label>:28:                                     ; preds = %17
  %29 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %8, align 8, !dbg !942
  call void @MXUser_DestroyRecLock(%struct.MXUserRecLock* %29), !dbg !944
  br label %34, !dbg !945

; <label>:30:                                     ; preds = %17
  %31 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !946
  %32 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %31), !dbg !948
  %33 = bitcast i8* %32 to %struct.MXUserRecLock*, !dbg !948
  store %struct.MXUserRecLock* %33, %struct.MXUserRecLock** %7, align 8, !dbg !949
  br label %34

; <label>:34:                                     ; preds = %30, %28
  br label %35, !dbg !950

; <label>:35:                                     ; preds = %34, %3
  %36 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %7, align 8, !dbg !951
  ret %struct.MXUserRecLock* %36, !dbg !952
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Atomic_ReadPtr(%struct.Atomic_uint64*) #2 !dbg !953 {
  %2 = alloca %struct.Atomic_uint64*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %2, metadata !958, metadata !126), !dbg !959
  %3 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %2, align 8, !dbg !960
  %4 = call i64 @Atomic_Read64(%struct.Atomic_uint64* %3), !dbg !961
  %5 = inttoptr i64 %4 to i8*, !dbg !962
  ret i8* %5, !dbg !963
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Atomic_ReadIfEqualWritePtr(%struct.Atomic_uint64*, i8*, i8*) #2 !dbg !964 {
  %4 = alloca %struct.Atomic_uint64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %4, metadata !969, metadata !126), !dbg !970
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !971, metadata !126), !dbg !972
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !973, metadata !126), !dbg !974
  %7 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !975
  %8 = load i8*, i8** %5, align 8, !dbg !976
  %9 = ptrtoint i8* %8 to i64, !dbg !977
  %10 = load i8*, i8** %6, align 8, !dbg !978
  %11 = ptrtoint i8* %10 to i64, !dbg !979
  %12 = call i64 @Atomic_ReadIfEqualWrite64(%struct.Atomic_uint64* %7, i64 %9, i64 %11), !dbg !980
  %13 = inttoptr i64 %12 to i8*, !dbg !981
  ret i8* %13, !dbg !982
}

; Function Attrs: nounwind uwtable
define %struct.MXUserCondVar* @MXUser_CreateCondVarRecLock(%struct.MXUserRecLock*) #0 !dbg !983 {
  %2 = alloca %struct.MXUserRecLock*, align 8
  %3 = alloca %struct.MXUserCondVar*, align 8
  store %struct.MXUserRecLock* %0, %struct.MXUserRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserRecLock** %2, metadata !989, metadata !126), !dbg !990
  call void @llvm.dbg.declare(metadata %struct.MXUserCondVar** %3, metadata !991, metadata !126), !dbg !992
  %4 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !993
  %5 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %4, i32 0, i32 0, !dbg !994
  call void @MXUserValidateHeader(%struct.MXUserHeader* %5, i32 2), !dbg !995
  %6 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !996
  %7 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %6, i32 0, i32 0, !dbg !997
  %8 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !998
  %9 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %8, i32 0, i32 1, !dbg !999
  %10 = call %struct.MXUserCondVar* @MXUserCreateCondVar(%struct.MXUserHeader* %7, %struct.MXRecLock* %9), !dbg !1000
  store %struct.MXUserCondVar* %10, %struct.MXUserCondVar** %3, align 8, !dbg !1001
  %11 = load %struct.MXUserCondVar*, %struct.MXUserCondVar** %3, align 8, !dbg !1002
  ret %struct.MXUserCondVar* %11, !dbg !1003
}

declare %struct.MXUserCondVar* @MXUserCreateCondVar(%struct.MXUserHeader*, %struct.MXRecLock*) #3

; Function Attrs: nounwind uwtable
define void @MXUser_WaitCondVarRecLock(%struct.MXUserRecLock*, %struct.MXUserCondVar*) #0 !dbg !1004 {
  %3 = alloca %struct.MXUserRecLock*, align 8
  %4 = alloca %struct.MXUserCondVar*, align 8
  store %struct.MXUserRecLock* %0, %struct.MXUserRecLock** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserRecLock** %3, metadata !1007, metadata !126), !dbg !1008
  store %struct.MXUserCondVar* %1, %struct.MXUserCondVar** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserCondVar** %4, metadata !1009, metadata !126), !dbg !1010
  %5 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %3, align 8, !dbg !1011
  %6 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %5, i32 0, i32 0, !dbg !1012
  call void @MXUserValidateHeader(%struct.MXUserHeader* %6, i32 2), !dbg !1013
  %7 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %3, align 8, !dbg !1014
  %8 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %7, i32 0, i32 0, !dbg !1015
  %9 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %3, align 8, !dbg !1016
  %10 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %9, i32 0, i32 1, !dbg !1017
  %11 = load %struct.MXUserCondVar*, %struct.MXUserCondVar** %4, align 8, !dbg !1018
  call void @MXUserWaitCondVar(%struct.MXUserHeader* %8, %struct.MXRecLock* %10, %struct.MXUserCondVar* %11, i32 -1), !dbg !1019
  ret void, !dbg !1020
}

declare void @MXUserWaitCondVar(%struct.MXUserHeader*, %struct.MXRecLock*, %struct.MXUserCondVar*, i32) #3

; Function Attrs: nounwind uwtable
define void @MXUser_TimedWaitCondVarRecLock(%struct.MXUserRecLock*, %struct.MXUserCondVar*, i32) #0 !dbg !1021 {
  %4 = alloca %struct.MXUserRecLock*, align 8
  %5 = alloca %struct.MXUserCondVar*, align 8
  %6 = alloca i32, align 4
  store %struct.MXUserRecLock* %0, %struct.MXUserRecLock** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserRecLock** %4, metadata !1024, metadata !126), !dbg !1025
  store %struct.MXUserCondVar* %1, %struct.MXUserCondVar** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserCondVar** %5, metadata !1026, metadata !126), !dbg !1027
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1028, metadata !126), !dbg !1029
  %7 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %4, align 8, !dbg !1030
  %8 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %7, i32 0, i32 0, !dbg !1031
  call void @MXUserValidateHeader(%struct.MXUserHeader* %8, i32 2), !dbg !1032
  %9 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %4, align 8, !dbg !1033
  %10 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %9, i32 0, i32 0, !dbg !1034
  %11 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %4, align 8, !dbg !1035
  %12 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %11, i32 0, i32 1, !dbg !1036
  %13 = load %struct.MXUserCondVar*, %struct.MXUserCondVar** %5, align 8, !dbg !1037
  %14 = load i32, i32* %6, align 4, !dbg !1038
  call void @MXUserWaitCondVar(%struct.MXUserHeader* %10, %struct.MXRecLock* %12, %struct.MXUserCondVar* %13, i32 %14), !dbg !1039
  ret void, !dbg !1040
}

; Function Attrs: nounwind uwtable
define void @MXUser_DumpRecLock(%struct.MXUserRecLock*) #0 !dbg !1041 {
  %2 = alloca %struct.MXUserRecLock*, align 8
  store %struct.MXUserRecLock* %0, %struct.MXUserRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserRecLock** %2, metadata !1042, metadata !126), !dbg !1043
  %3 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !1044
  %4 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %3, i32 0, i32 0, !dbg !1045
  call void @MXUserValidateHeader(%struct.MXUserHeader* %4, i32 2), !dbg !1046
  %5 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !1047
  %6 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %5, i32 0, i32 0, !dbg !1048
  call void @MXUserDumpRecLock(%struct.MXUserHeader* %6), !dbg !1049
  ret void, !dbg !1050
}

; Function Attrs: nounwind uwtable
define %struct.MX_MutexRec* @MXUser_GetRecLockVmm(%struct.MXUserRecLock*) #0 !dbg !1051 {
  %2 = alloca %struct.MXUserRecLock*, align 8
  store %struct.MXUserRecLock* %0, %struct.MXUserRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserRecLock** %2, metadata !1054, metadata !126), !dbg !1055
  %3 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !1056
  %4 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %3, i32 0, i32 0, !dbg !1057
  call void @MXUserValidateHeader(%struct.MXUserHeader* %4, i32 2), !dbg !1058
  %5 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !1059
  %6 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %5, i32 0, i32 5, !dbg !1060
  %7 = load %struct.MX_MutexRec*, %struct.MX_MutexRec** %6, align 8, !dbg !1060
  ret %struct.MX_MutexRec* %7, !dbg !1061
}

; Function Attrs: nounwind uwtable
define i32 @MXUser_GetRecLockRank(%struct.MXUserRecLock*) #0 !dbg !1062 {
  %2 = alloca %struct.MXUserRecLock*, align 8
  store %struct.MXUserRecLock* %0, %struct.MXUserRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserRecLock** %2, metadata !1065, metadata !126), !dbg !1066
  %3 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !1067
  %4 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %3, i32 0, i32 0, !dbg !1068
  call void @MXUserValidateHeader(%struct.MXUserHeader* %4, i32 2), !dbg !1069
  %5 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !1070
  %6 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %5, i32 0, i32 0, !dbg !1071
  %7 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %6, i32 0, i32 2, !dbg !1072
  %8 = load i32, i32* %7, align 8, !dbg !1072
  ret i32 %8, !dbg !1073
}

; Function Attrs: nounwind uwtable
define %struct.MXUserRecLock* @MXUser_BindMXMutexRec(%struct.MX_MutexRec*, i32) #0 !dbg !1074 {
  %3 = alloca %struct.MXUserRecLock*, align 8
  %4 = alloca %struct.MX_MutexRec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.MXUserRecLock*, align 8
  store %struct.MX_MutexRec* %0, %struct.MX_MutexRec** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.MX_MutexRec** %4, metadata !1077, metadata !126), !dbg !1078
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1079, metadata !126), !dbg !1080
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1081, metadata !126), !dbg !1082
  call void @llvm.dbg.declare(metadata %struct.MXUserRecLock** %7, metadata !1083, metadata !126), !dbg !1084
  %8 = load void (%struct.MX_MutexRec*)*, void (%struct.MX_MutexRec*)** @MXUserMX_LockRec, align 8, !dbg !1085
  %9 = icmp eq void (%struct.MX_MutexRec*)* %8, null, !dbg !1087
  br i1 %9, label %22, label %10, !dbg !1088

; <label>:10:                                     ; preds = %2
  %11 = load void (%struct.MX_MutexRec*)*, void (%struct.MX_MutexRec*)** @MXUserMX_UnlockRec, align 8, !dbg !1089
  %12 = icmp eq void (%struct.MX_MutexRec*)* %11, null, !dbg !1090
  br i1 %12, label %22, label %13, !dbg !1091

; <label>:13:                                     ; preds = %10
  %14 = load i8 (%struct.MX_MutexRec*)*, i8 (%struct.MX_MutexRec*)** @MXUserMX_TryLockRec, align 8, !dbg !1092
  %15 = icmp eq i8 (%struct.MX_MutexRec*)* %14, null, !dbg !1093
  br i1 %15, label %22, label %16, !dbg !1094

; <label>:16:                                     ; preds = %13
  %17 = load i8 (%struct.MX_MutexRec*)*, i8 (%struct.MX_MutexRec*)** @MXUserMX_IsLockedByCurThreadRec, align 8, !dbg !1095
  %18 = icmp eq i8 (%struct.MX_MutexRec*)* %17, null, !dbg !1096
  br i1 %18, label %22, label %19, !dbg !1097

; <label>:19:                                     ; preds = %16
  %20 = load i8* (%struct.MX_MutexRec*)*, i8* (%struct.MX_MutexRec*)** @MXUserMX_NameRec, align 8, !dbg !1098
  %21 = icmp eq i8* (%struct.MX_MutexRec*)* %20, null, !dbg !1099
  br i1 %21, label %22, label %23, !dbg !1100

; <label>:22:                                     ; preds = %19, %16, %13, %10, %2
  store %struct.MXUserRecLock* null, %struct.MXUserRecLock** %3, align 8, !dbg !1102
  br label %77, !dbg !1102

; <label>:23:                                     ; preds = %19
  %24 = call i8* @UtilSafeCalloc0(i64 1, i64 144), !dbg !1104
  %25 = bitcast i8* %24 to %struct.MXUserRecLock*, !dbg !1104
  store %struct.MXUserRecLock* %25, %struct.MXUserRecLock** %7, align 8, !dbg !1105
  %26 = call i32 @MXUserGetSignature(i32 2), !dbg !1106
  %27 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %7, align 8, !dbg !1107
  %28 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %27, i32 0, i32 0, !dbg !1108
  %29 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %28, i32 0, i32 0, !dbg !1109
  store i32 %26, i32* %29, align 8, !dbg !1110
  %30 = load i8* (%struct.MX_MutexRec*)*, i8* (%struct.MX_MutexRec*)** @MXUserMX_NameRec, align 8, !dbg !1111
  %31 = load %struct.MX_MutexRec*, %struct.MX_MutexRec** %4, align 8, !dbg !1112
  %32 = call i8* %30(%struct.MX_MutexRec* %31), !dbg !1113
  store i8* %32, i8** %6, align 8, !dbg !1114
  %33 = load i8*, i8** %6, align 8, !dbg !1115
  %34 = icmp eq i8* %33, null, !dbg !1117
  br i1 %34, label %35, label %41, !dbg !1118

; <label>:35:                                     ; preds = %23
  %36 = load %struct.MX_MutexRec*, %struct.MX_MutexRec** %4, align 8, !dbg !1119
  %37 = call i8* (i64*, i8*, ...) @Str_SafeAsprintf(i64* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), %struct.MX_MutexRec* %36), !dbg !1121
  %38 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %7, align 8, !dbg !1122
  %39 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %38, i32 0, i32 0, !dbg !1123
  %40 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %39, i32 0, i32 1, !dbg !1124
  store i8* %37, i8** %40, align 8, !dbg !1125
  br label %47, !dbg !1126

; <label>:41:                                     ; preds = %23
  %42 = load i8*, i8** %6, align 8, !dbg !1127
  %43 = call i8* (i64*, i8*, ...) @Str_SafeAsprintf(i64* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* %42), !dbg !1129
  %44 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %7, align 8, !dbg !1130
  %45 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %44, i32 0, i32 0, !dbg !1131
  %46 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %45, i32 0, i32 1, !dbg !1132
  store i8* %43, i8** %46, align 8, !dbg !1133
  br label %47

; <label>:47:                                     ; preds = %41, %35
  %48 = load i32, i32* %5, align 4, !dbg !1134
  %49 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %7, align 8, !dbg !1135
  %50 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %49, i32 0, i32 0, !dbg !1136
  %51 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %50, i32 0, i32 2, !dbg !1137
  store i32 %48, i32* %51, align 8, !dbg !1138
  %52 = call i32 @MXUserAllocSerialNumber(), !dbg !1139
  %53 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %7, align 8, !dbg !1140
  %54 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %53, i32 0, i32 0, !dbg !1141
  %55 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %54, i32 0, i32 3, !dbg !1142
  %56 = bitcast %struct.anon* %55 to i32*, !dbg !1143
  %57 = load i32, i32* %56, align 4, !dbg !1144
  %58 = and i32 %52, 16777215, !dbg !1144
  %59 = and i32 %57, -16777216, !dbg !1144
  %60 = or i32 %59, %58, !dbg !1144
  store i32 %60, i32* %56, align 4, !dbg !1144
  %61 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %7, align 8, !dbg !1145
  %62 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %61, i32 0, i32 0, !dbg !1146
  %63 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %62, i32 0, i32 4, !dbg !1147
  store void (%struct.MXUserHeader*)* null, void (%struct.MXUserHeader*)** %63, align 8, !dbg !1148
  %64 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %7, align 8, !dbg !1149
  %65 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %64, i32 0, i32 0, !dbg !1150
  %66 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %65, i32 0, i32 5, !dbg !1151
  store void (%struct.MXUserHeader*)* null, void (%struct.MXUserHeader*)** %66, align 8, !dbg !1152
  %67 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %7, align 8, !dbg !1153
  %68 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %67, i32 0, i32 3, !dbg !1154
  call void @Atomic_WritePtr(%struct.Atomic_uint64* %68, i8* null), !dbg !1155
  %69 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %7, align 8, !dbg !1156
  %70 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %69, i32 0, i32 2, !dbg !1157
  call void @Atomic_WritePtr(%struct.Atomic_uint64* %70, i8* null), !dbg !1158
  %71 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %7, align 8, !dbg !1159
  %72 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %71, i32 0, i32 4, !dbg !1160
  call void @Atomic_Write32(%struct.Atomic_uint32* %72, i32 1), !dbg !1161
  %73 = load %struct.MX_MutexRec*, %struct.MX_MutexRec** %4, align 8, !dbg !1162
  %74 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %7, align 8, !dbg !1163
  %75 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %74, i32 0, i32 5, !dbg !1164
  store %struct.MX_MutexRec* %73, %struct.MX_MutexRec** %75, align 8, !dbg !1165
  %76 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %7, align 8, !dbg !1166
  store %struct.MXUserRecLock* %76, %struct.MXUserRecLock** %3, align 8, !dbg !1167
  br label %77, !dbg !1167

; <label>:77:                                     ; preds = %47, %22
  %78 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %3, align 8, !dbg !1168
  ret %struct.MXUserRecLock* %78, !dbg !1168
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Atomic_WritePtr(%struct.Atomic_uint64*, i8*) #2 !dbg !1169 {
  %3 = alloca %struct.Atomic_uint64*, align 8
  %4 = alloca i8*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %3, metadata !1172, metadata !126), !dbg !1173
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1174, metadata !126), !dbg !1175
  %5 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %3, align 8, !dbg !1176
  %6 = load i8*, i8** %4, align 8, !dbg !1177
  %7 = ptrtoint i8* %6 to i64, !dbg !1178
  call void @Atomic_Write64(%struct.Atomic_uint64* %5, i64 %7), !dbg !1179
  ret void, !dbg !1180
}

; Function Attrs: nounwind uwtable
define void @MXUser_IncRefRecLock(%struct.MXUserRecLock*) #0 !dbg !1181 {
  %2 = alloca %struct.MXUserRecLock*, align 8
  store %struct.MXUserRecLock* %0, %struct.MXUserRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserRecLock** %2, metadata !1182, metadata !126), !dbg !1183
  %3 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !1184
  %4 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %3, i32 0, i32 0, !dbg !1185
  call void @MXUserValidateHeader(%struct.MXUserHeader* %4, i32 2), !dbg !1186
  %5 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !1187
  %6 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %5, i32 0, i32 4, !dbg !1188
  call void @Atomic_Inc32(%struct.Atomic_uint32* %6), !dbg !1189
  ret void, !dbg !1190
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Atomic_Inc32(%struct.Atomic_uint32*) #2 !dbg !1191 {
  %2 = alloca %struct.Atomic_uint32*, align 8
  store %struct.Atomic_uint32* %0, %struct.Atomic_uint32** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint32** %2, metadata !1194, metadata !126), !dbg !1195
  %3 = load %struct.Atomic_uint32*, %struct.Atomic_uint32** %2, align 8, !dbg !1196
  %4 = getelementptr inbounds %struct.Atomic_uint32, %struct.Atomic_uint32* %3, i32 0, i32 0, !dbg !1197
  call void asm sideeffect "lock; incl $0", "=*m,*m,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %4, i32* %4) #10, !dbg !1198, !srcloc !1199
  ret void, !dbg !1200
}

; Function Attrs: nounwind uwtable
define void @MXUser_DecRefRecLock(%struct.MXUserRecLock*) #0 !dbg !1201 {
  %2 = alloca %struct.MXUserRecLock*, align 8
  store %struct.MXUserRecLock* %0, %struct.MXUserRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserRecLock** %2, metadata !1202, metadata !126), !dbg !1203
  %3 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !1204
  %4 = getelementptr inbounds %struct.MXUserRecLock, %struct.MXUserRecLock* %3, i32 0, i32 0, !dbg !1205
  call void @MXUserValidateHeader(%struct.MXUserHeader* %4, i32 2), !dbg !1206
  %5 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %2, align 8, !dbg !1207
  call void @MXUserCondDestroyRecLock(%struct.MXUserRecLock* %5), !dbg !1208
  ret void, !dbg !1209
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @MXRecLockCreateInternal(%struct.MXRecLock*) #2 !dbg !1210 {
  %2 = alloca %struct.MXRecLock*, align 8
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !1213, metadata !126), !dbg !1214
  %3 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !1215
  %4 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %3, i32 0, i32 0, !dbg !1216
  %5 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %4, %union.pthread_mutexattr_t* null) #10, !dbg !1217
  ret i32 %5, !dbg !1218
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXRecLockSetNoOwner(%struct.MXRecLock*) #2 !dbg !1219 {
  %2 = alloca %struct.MXRecLock*, align 8
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !1220, metadata !126), !dbg !1221
  %3 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !1222
  %4 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %3, i32 0, i32 2, !dbg !1223
  %5 = bitcast i64* %4 to i8*, !dbg !1224
  call void @llvm.memset.p0i8.i64(i8* %5, i8 -1, i64 8, i32 8, i1 false), !dbg !1224
  ret void, !dbg !1225
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #6

declare void @Warning(i8*, ...) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @Atomic_Read32(%struct.Atomic_uint32*) #2 !dbg !1226 {
  %2 = alloca %struct.Atomic_uint32*, align 8
  %3 = alloca i32, align 4
  store %struct.Atomic_uint32* %0, %struct.Atomic_uint32** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint32** %2, metadata !1231, metadata !126), !dbg !1232
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1233, metadata !126), !dbg !1234
  %4 = load %struct.Atomic_uint32*, %struct.Atomic_uint32** %2, align 8, !dbg !1235
  %5 = getelementptr inbounds %struct.Atomic_uint32, %struct.Atomic_uint32* %4, i32 0, i32 0, !dbg !1236
  %6 = call i32 asm sideeffect "mov $1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i32* %5) #10, !dbg !1237, !srcloc !1238
  store i32 %6, i32* %3, align 4, !dbg !1237
  %7 = load i32, i32* %3, align 4, !dbg !1239
  ret i32 %7, !dbg !1240
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @MXRecLockCount(%struct.MXRecLock*) #2 !dbg !1241 {
  %2 = alloca %struct.MXRecLock*, align 8
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !1244, metadata !126), !dbg !1245
  %3 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !1246
  %4 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %3, i32 0, i32 1, !dbg !1247
  %5 = load i32, i32* %4, align 8, !dbg !1247
  ret i32 %5, !dbg !1248
}

declare void @MXUserDumpBasicStats(%struct.MXUserBasicStats*, %struct.MXUserHeader*) #3

declare void @MXUserHistoDump(%struct.MXUserHisto*, %struct.MXUserHeader*) #3

declare void @MXUserDumpAcquisitionStats(%struct.MXUserAcquisitionStats*, %struct.MXUserHeader*) #3

declare void @MXUserKitchen(%struct.MXUserAcquisitionStats*, double*, i8*, i8*) #3

declare signext i8 @MXUserForceAcquisitionHisto(%struct.Atomic_uint64*, i64, i32) #3

declare signext i8 @MXUserForceHeldHisto(%struct.Atomic_uint64*, i64, i32) #3

declare void @Log(i8*, ...) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @Atomic_ReadDec32(%struct.Atomic_uint32*) #2 !dbg !1249 {
  %2 = alloca %struct.Atomic_uint32*, align 8
  store %struct.Atomic_uint32* %0, %struct.Atomic_uint32** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint32** %2, metadata !1252, metadata !126), !dbg !1253
  %3 = load %struct.Atomic_uint32*, %struct.Atomic_uint32** %2, align 8, !dbg !1254
  %4 = call i32 @Atomic_ReadAdd32(%struct.Atomic_uint32* %3, i32 -1), !dbg !1255
  ret i32 %4, !dbg !1256
}

declare void @MXUserDumpAndPanic(%struct.MXUserHeader*, i8*, ...) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXRecLockDestroy(%struct.MXRecLock*) #2 !dbg !1257 {
  %2 = alloca %struct.MXRecLock*, align 8
  %3 = alloca i32, align 4
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !1258, metadata !126), !dbg !1259
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1260, metadata !126), !dbg !1261
  %4 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !1262
  %5 = call i32 @MXRecLockDestroyInternal(%struct.MXRecLock* %4), !dbg !1263
  store i32 %5, i32* %3, align 4, !dbg !1261
  ret void, !dbg !1264
}

declare void @MXUserRemoveFromList(%struct.MXUserHeader*) #3

; Function Attrs: nounwind
declare void @free(i8*) #5

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @Atomic_ReadAdd32(%struct.Atomic_uint32*, i32) #2 !dbg !1265 {
  %3 = alloca %struct.Atomic_uint32*, align 8
  %4 = alloca i32, align 4
  store %struct.Atomic_uint32* %0, %struct.Atomic_uint32** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint32** %3, metadata !1268, metadata !126), !dbg !1269
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1270, metadata !126), !dbg !1271
  %5 = load %struct.Atomic_uint32*, %struct.Atomic_uint32** %3, align 8, !dbg !1272
  %6 = getelementptr inbounds %struct.Atomic_uint32, %struct.Atomic_uint32* %5, i32 0, i32 0, !dbg !1273
  %7 = load i32, i32* %4, align 4, !dbg !1274
  %8 = call i32 asm sideeffect "lock; xaddl $0, $1", "=r,=*m,0,*m,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %6, i32 %7, i32* %6) #10, !dbg !1275, !srcloc !1276
  store i32 %8, i32* %4, align 4, !dbg !1275
  %9 = load i32, i32* %4, align 4, !dbg !1277
  ret i32 %9, !dbg !1278
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @MXRecLockDestroyInternal(%struct.MXRecLock*) #2 !dbg !1279 {
  %2 = alloca %struct.MXRecLock*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !1280, metadata !126), !dbg !1281
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1282, metadata !126), !dbg !1283
  %5 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !1284
  %6 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %5, i32 0, i32 0, !dbg !1285
  %7 = call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* %6) #10, !dbg !1286
  store i32 %7, i32* %3, align 4, !dbg !1283
  br i1 icmp ne (i8* ()* @gnu_get_libc_version, i8* ()* null), label %8, label %15, !dbg !1287

; <label>:8:                                      ; preds = %1
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1288, metadata !126), !dbg !1291
  %9 = call i8* @gnu_get_libc_version(), !dbg !1292
  store i8* %9, i8** %4, align 8, !dbg !1291
  %10 = load i8*, i8** %4, align 8, !dbg !1293
  %11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0)) #11, !dbg !1295
  %12 = icmp sge i32 %11, 0, !dbg !1296
  br i1 %12, label %13, label %14, !dbg !1297

; <label>:13:                                     ; preds = %8
  store i32 0, i32* %3, align 4, !dbg !1298
  br label %14, !dbg !1300

; <label>:14:                                     ; preds = %13, %8
  br label %15, !dbg !1301

; <label>:15:                                     ; preds = %14, %1
  %16 = load i32, i32* %3, align 4, !dbg !1302
  ret i32 %16, !dbg !1303
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(%union.pthread_mutex_t*) #5

declare extern_weak i8* @gnu_get_libc_version() #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #7

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXRecLockIncCount(%struct.MXRecLock*, i32) #2 !dbg !1304 {
  %3 = alloca %struct.MXRecLock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.MXRecLock* %0, %struct.MXRecLock** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %3, metadata !1307, metadata !126), !dbg !1308
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1309, metadata !126), !dbg !1310
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1311, metadata !126), !dbg !1312
  %6 = load i32, i32* %4, align 4, !dbg !1313
  %7 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !1314
  %8 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %7, i32 0, i32 1, !dbg !1315
  %9 = load i32, i32* %8, align 8, !dbg !1316
  %10 = add nsw i32 %9, %6, !dbg !1316
  store i32 %10, i32* %8, align 8, !dbg !1316
  store i32 %10, i32* %5, align 4, !dbg !1312
  %11 = load i32, i32* %5, align 4, !dbg !1317
  %12 = load i32, i32* %4, align 4, !dbg !1319
  %13 = icmp eq i32 %11, %12, !dbg !1320
  %14 = xor i1 %13, true, !dbg !1321
  %15 = xor i1 %14, true, !dbg !1322
  %16 = zext i1 %15 to i32, !dbg !1322
  %17 = sext i32 %16 to i64, !dbg !1322
  %18 = icmp ne i64 %17, 0, !dbg !1323
  br i1 %18, label %19, label %21, !dbg !1324

; <label>:19:                                     ; preds = %2
  %20 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !1325
  call void @MXRecLockSetOwner(%struct.MXRecLock* %20), !dbg !1327
  br label %21, !dbg !1328

; <label>:21:                                     ; preds = %19, %2
  ret void, !dbg !1329
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @MXRecLockAcquireInternal(%struct.MXRecLock*) #2 !dbg !1330 {
  %2 = alloca %struct.MXRecLock*, align 8
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !1331, metadata !126), !dbg !1332
  %3 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !1333
  %4 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %3, i32 0, i32 0, !dbg !1334
  %5 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %4) #10, !dbg !1335
  ret i32 %5, !dbg !1336
}

declare i64 @Hostinfo_SystemTimerNS() #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXRecLockSetOwner(%struct.MXRecLock*) #2 !dbg !1337 {
  %2 = alloca %struct.MXRecLock*, align 8
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !1338, metadata !126), !dbg !1339
  %3 = call i64 @MXUserNativeThreadID(), !dbg !1340
  %4 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !1341
  %5 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %4, i32 0, i32 2, !dbg !1342
  store i64 %3, i64* %5, align 8, !dbg !1343
  ret void, !dbg !1344
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @MXUserNativeThreadID() #2 !dbg !1345 {
  %1 = call i64 @pthread_self() #1, !dbg !1348
  ret i64 %1, !dbg !1349
}

; Function Attrs: nounwind readnone
declare i64 @pthread_self() #8

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #5

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXRecLockDecCount(%struct.MXRecLock*, i32) #2 !dbg !1350 {
  %3 = alloca %struct.MXRecLock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.MXRecLock* %0, %struct.MXRecLock** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %3, metadata !1351, metadata !126), !dbg !1352
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1353, metadata !126), !dbg !1354
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1355, metadata !126), !dbg !1356
  %6 = load i32, i32* %4, align 4, !dbg !1357
  %7 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !1358
  %8 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %7, i32 0, i32 1, !dbg !1359
  %9 = load i32, i32* %8, align 8, !dbg !1360
  %10 = sub nsw i32 %9, %6, !dbg !1360
  store i32 %10, i32* %8, align 8, !dbg !1360
  store i32 %10, i32* %5, align 4, !dbg !1356
  %11 = load i32, i32* %5, align 4, !dbg !1361
  %12 = icmp eq i32 %11, 0, !dbg !1363
  %13 = xor i1 %12, true, !dbg !1364
  %14 = xor i1 %13, true, !dbg !1365
  %15 = zext i1 %14 to i32, !dbg !1365
  %16 = sext i32 %15 to i64, !dbg !1365
  %17 = icmp ne i64 %16, 0, !dbg !1366
  br i1 %17, label %18, label %20, !dbg !1367

; <label>:18:                                     ; preds = %2
  %19 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !1368
  call void @MXRecLockSetNoOwner(%struct.MXRecLock* %19), !dbg !1370
  br label %20, !dbg !1371

; <label>:20:                                     ; preds = %18, %2
  ret void, !dbg !1372
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @MXRecLockReleaseInternal(%struct.MXRecLock*) #2 !dbg !1373 {
  %2 = alloca %struct.MXRecLock*, align 8
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !1374, metadata !126), !dbg !1375
  %3 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !1376
  %4 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %3, i32 0, i32 0, !dbg !1377
  %5 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %4) #10, !dbg !1378
  ret i32 %5, !dbg !1379
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #5

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @MXRecLockTryAcquireInternal(%struct.MXRecLock*) #2 !dbg !1380 {
  %2 = alloca %struct.MXRecLock*, align 8
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !1381, metadata !126), !dbg !1382
  %3 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !1383
  %4 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %3, i32 0, i32 0, !dbg !1384
  %5 = call i32 @pthread_mutex_trylock(%union.pthread_mutex_t* %4) #10, !dbg !1385
  ret i32 %5, !dbg !1386
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_trylock(%union.pthread_mutex_t*) #5

; Function Attrs: nounwind readnone
declare i32 @pthread_equal(i64, i64) #8

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @Atomic_Read64(%struct.Atomic_uint64*) #2 !dbg !1387 {
  %2 = alloca %struct.Atomic_uint64*, align 8
  %3 = alloca i64, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %2, metadata !1392, metadata !126), !dbg !1393
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1394, metadata !126), !dbg !1395
  %4 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %2, align 8, !dbg !1396
  %5 = getelementptr inbounds %struct.Atomic_uint64, %struct.Atomic_uint64* %4, i32 0, i32 0, !dbg !1397
  %6 = call i64 asm sideeffect "movq $1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i64* %5) #10, !dbg !1398, !srcloc !1399
  store i64 %6, i64* %3, align 8, !dbg !1398
  %7 = load i64, i64* %3, align 8, !dbg !1400
  ret i64 %7, !dbg !1401
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @Atomic_ReadIfEqualWrite64(%struct.Atomic_uint64*, i64, i64) #2 !dbg !1402 {
  %4 = alloca %struct.Atomic_uint64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %4, metadata !1406, metadata !126), !dbg !1407
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1408, metadata !126), !dbg !1409
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1410, metadata !126), !dbg !1411
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1412, metadata !126), !dbg !1413
  %8 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !1414
  %9 = getelementptr inbounds %struct.Atomic_uint64, %struct.Atomic_uint64* %8, i32 0, i32 0, !dbg !1415
  %10 = load i64, i64* %6, align 8, !dbg !1416
  %11 = load i64, i64* %5, align 8, !dbg !1417
  %12 = call i64 asm sideeffect "lock; cmpxchgq $2, $1", "={ax},=*m,r,0,*m,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10, i64 %11, i64* %9) #10, !dbg !1418, !srcloc !1419
  store i64 %12, i64* %7, align 8, !dbg !1418
  %13 = load i64, i64* %7, align 8, !dbg !1420
  ret i64 %13, !dbg !1421
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Atomic_Write64(%struct.Atomic_uint64*, i64) #2 !dbg !1422 {
  %3 = alloca %struct.Atomic_uint64*, align 8
  %4 = alloca i64, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %3, metadata !1425, metadata !126), !dbg !1426
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1427, metadata !126), !dbg !1428
  %5 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %3, align 8, !dbg !1429
  %6 = getelementptr inbounds %struct.Atomic_uint64, %struct.Atomic_uint64* %5, i32 0, i32 0, !dbg !1430
  %7 = load i64, i64* %4, align 8, !dbg !1431
  call void asm sideeffect "movq $1, $0", "=*m,r,~{dirflag},~{fpsr},~{flags}"(i64* %6, i64 %7) #10, !dbg !1432, !srcloc !1433
  ret void, !dbg !1434
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!117, !118}
!llvm.ident = !{!119}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !15)
!1 = !DIFile(filename: "ulRec.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line496")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 440, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "ulInt.h", directory: "/home/lichi/Desktop/open-vm-tools/line496")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!6 = !DIEnumerator(name: "MXUSER_TYPE_NEVER_USE", value: 0)
!7 = !DIEnumerator(name: "MXUSER_TYPE_RW", value: 1)
!8 = !DIEnumerator(name: "MXUSER_TYPE_REC", value: 2)
!9 = !DIEnumerator(name: "MXUSER_TYPE_RANK", value: 3)
!10 = !DIEnumerator(name: "MXUSER_TYPE_EXCL", value: 4)
!11 = !DIEnumerator(name: "MXUSER_TYPE_SEMA", value: 5)
!12 = !DIEnumerator(name: "MXUSER_TYPE_CONDVAR", value: 6)
!13 = !DIEnumerator(name: "MXUSER_TYPE_BARRIER", value: 7)
!14 = !DIEnumerator(name: "MXUSER_TYPE_EVENT", value: 8)
!15 = !{!16, !17, !28, !116, !104}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserRecLock", file: !19, line: 39, baseType: !20)
!19 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/userlock.h", directory: "/home/lichi/Desktop/open-vm-tools/line496")
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MXUserRecLock", file: !21, line: 26, size: 1152, align: 64, elements: !22)
!21 = !DIFile(filename: "ulRec.c", directory: "/home/lichi/Desktop/open-vm-tools/line496")
!22 = !{!23, !57, !96, !106, !107, !113}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !20, file: !21, line: 28, baseType: !24, size: 448, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserHeader", file: !4, line: 469, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MXUserHeader", file: !4, line: 456, size: 448, align: 64, elements: !26)
!26 = !{!27, !33, !36, !38, !43, !48, !49}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !25, file: !4, line: 457, baseType: !28, size: 32, align: 32)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !29, line: 173, baseType: !30)
!29 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line496")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !31, line: 51, baseType: !32)
!31 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line496")
!32 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !25, file: !4, line: 458, baseType: !34, size: 64, align: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "rank", scope: !25, file: !4, line: 459, baseType: !37, size: 32, align: 32, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "MX_Rank", file: !29, line: 1167, baseType: !28)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !25, file: !4, line: 464, baseType: !39, size: 32, align: 32, offset: 160)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !25, file: !4, line: 461, size: 32, align: 32, elements: !40)
!40 = !{!41, !42}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "serialNumber", scope: !39, file: !4, line: 462, baseType: !32, size: 24, align: 32, flags: DIFlagBitField, extraData: i64 0)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "badHeader", scope: !39, file: !4, line: 463, baseType: !32, size: 1, align: 32, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "dumpFunc", scope: !25, file: !4, line: 466, baseType: !44, size: 64, align: 64, offset: 192)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !47}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "statsFunc", scope: !25, file: !4, line: 467, baseType: !44, size: 64, align: 64, offset: 256)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !25, file: !4, line: 468, baseType: !50, size: 128, align: 64, offset: 320)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "ListItem", file: !51, line: 45, baseType: !52)
!51 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/circList.h", directory: "/home/lichi/Desktop/open-vm-tools/line496")
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ListItem", file: !51, line: 42, size: 128, align: 64, elements: !53)
!53 = !{!54, !56}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !52, file: !51, line: 43, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !52, file: !51, line: 44, baseType: !55, size: 64, align: 64, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "recursiveLock", scope: !20, file: !21, line: 29, baseType: !58, size: 448, align: 64, offset: 448)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXRecLock", file: !4, line: 67, baseType: !59)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 58, size: 448, align: 64, elements: !60)
!60 = !{!61, !91, !92}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "nativeLock", scope: !59, file: !4, line: 62, baseType: !62, size: 320, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !63, line: 128, baseType: !64)
!63 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line496")
!64 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !63, line: 90, size: 320, align: 64, elements: !65)
!65 = !{!66, !85, !89}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !64, file: !63, line: 125, baseType: !67, size: 320, align: 64)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !63, line: 92, size: 320, align: 64, elements: !68)
!68 = !{!69, !71, !72, !73, !74, !75, !77, !78}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !67, file: !63, line: 94, baseType: !70, size: 32, align: 32)
!70 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !67, file: !63, line: 95, baseType: !32, size: 32, align: 32, offset: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !67, file: !63, line: 96, baseType: !70, size: 32, align: 32, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !67, file: !63, line: 98, baseType: !32, size: 32, align: 32, offset: 96)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !67, file: !63, line: 102, baseType: !70, size: 32, align: 32, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !67, file: !63, line: 104, baseType: !76, size: 16, align: 16, offset: 160)
!76 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !67, file: !63, line: 105, baseType: !76, size: 16, align: 16, offset: 176)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !67, file: !63, line: 106, baseType: !79, size: 128, align: 64, offset: 192)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !63, line: 79, baseType: !80)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !63, line: 75, size: 128, align: 64, elements: !81)
!81 = !{!82, !84}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !80, file: !63, line: 77, baseType: !83, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !80, file: !63, line: 78, baseType: !83, size: 64, align: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !64, file: !63, line: 126, baseType: !86, size: 320, align: 8)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 320, align: 8, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 40)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !64, file: !63, line: 127, baseType: !90, size: 64, align: 64)
!90 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "referenceCount", scope: !59, file: !4, line: 65, baseType: !70, size: 32, align: 32, offset: 320)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "nativeThreadID", scope: !59, file: !4, line: 66, baseType: !93, size: 64, align: 64, offset: 384)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserThreadID", file: !4, line: 39, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !63, line: 60, baseType: !95)
!95 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "heldStatsMem", scope: !20, file: !21, line: 30, baseType: !97, size: 64, align: 64, offset: 896)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_Ptr", file: !98, line: 3829, baseType: !99)
!98 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_atomic.h", directory: "/home/lichi/Desktop/open-vm-tools/line496")
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_uint64", file: !98, line: 139, baseType: !100)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Atomic_uint64", file: !98, line: 137, size: 64, align: 64, elements: !101)
!101 = !{!102}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !100, file: !98, line: 138, baseType: !103, size: 64, align: 64)
!103 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !29, line: 171, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !31, line: 55, baseType: !95)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "acquireStatsMem", scope: !20, file: !21, line: 31, baseType: !97, size: 64, align: 64, offset: 960)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "refCount", scope: !20, file: !21, line: 32, baseType: !108, size: 32, align: 32, offset: 1024)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_uint32", file: !98, line: 135, baseType: !109)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Atomic_uint32", file: !98, line: 133, size: 32, align: 32, elements: !110)
!110 = !{!111}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !109, file: !98, line: 134, baseType: !112, size: 32, align: 32)
!112 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !28)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "vmmLock", scope: !20, file: !21, line: 45, baseType: !114, size: 64, align: 64, offset: 1088)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, align: 64)
!115 = !DICompositeType(tag: DW_TAG_structure_type, name: "MX_MutexRec", file: !19, line: 327, flags: DIFlagFwdDecl)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !31, line: 122, baseType: !95)
!117 = !{i32 2, !"Dwarf Version", i32 4}
!118 = !{i32 2, !"Debug Info Version", i32 3}
!119 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!120 = distinct !DISubprogram(name: "MXUser_EnableStatsRecLock", scope: !21, file: !21, line: 139, type: !121, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!121 = !DISubroutineType(types: !122)
!122 = !{!123, !17, !123, !123}
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !29, line: 230, baseType: !35)
!124 = !{}
!125 = !DILocalVariable(name: "lock", arg: 1, scope: !120, file: !21, line: 139, type: !17)
!126 = !DIExpression()
!127 = !DILocation(line: 139, column: 42, scope: !120)
!128 = !DILocalVariable(name: "trackAcquisitionTime", arg: 2, scope: !120, file: !21, line: 140, type: !123)
!129 = !DILocation(line: 140, column: 32, scope: !120)
!130 = !DILocalVariable(name: "trackHeldTime", arg: 3, scope: !120, file: !21, line: 141, type: !123)
!131 = !DILocation(line: 141, column: 32, scope: !120)
!132 = !DILocation(line: 144, column: 26, scope: !120)
!133 = !DILocation(line: 144, column: 32, scope: !120)
!134 = !DILocation(line: 144, column: 4, scope: !120)
!135 = !DILocation(line: 151, column: 4, scope: !120)
!136 = distinct !DISubprogram(name: "MXUserValidateHeader", scope: !4, file: !4, line: 507, type: !137, isLocal: true, isDefinition: true, scopeLine: 509, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!137 = !DISubroutineType(types: !138)
!138 = !{null, !139, !140}
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserObjectType", file: !4, line: 450, baseType: !3)
!141 = !DILocalVariable(name: "header", arg: 1, scope: !136, file: !4, line: 507, type: !139)
!142 = !DILocation(line: 507, column: 36, scope: !136)
!143 = !DILocalVariable(name: "objectType", arg: 2, scope: !136, file: !4, line: 508, type: !140)
!144 = !DILocation(line: 508, column: 39, scope: !136)
!145 = !DILocation(line: 510, column: 4, scope: !136)
!146 = distinct !DISubprogram(name: "MXUser_DisableStatsRecLock", scope: !21, file: !21, line: 173, type: !147, isLocal: false, isDefinition: true, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!147 = !DISubroutineType(types: !148)
!148 = !{!123, !17}
!149 = !DILocalVariable(name: "lock", arg: 1, scope: !146, file: !21, line: 173, type: !17)
!150 = !DILocation(line: 173, column: 43, scope: !146)
!151 = !DILocation(line: 176, column: 26, scope: !146)
!152 = !DILocation(line: 176, column: 32, scope: !146)
!153 = !DILocation(line: 176, column: 4, scope: !146)
!154 = !DILocation(line: 182, column: 4, scope: !146)
!155 = distinct !DISubprogram(name: "MXUser_SetContentionRatioFloorRecLock", scope: !21, file: !21, line: 204, type: !156, isLocal: false, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!156 = !DISubroutineType(types: !157)
!157 = !{!123, !17, !158}
!158 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!159 = !DILocalVariable(name: "lock", arg: 1, scope: !155, file: !21, line: 204, type: !17)
!160 = !DILocation(line: 204, column: 54, scope: !155)
!161 = !DILocalVariable(name: "ratio", arg: 2, scope: !155, file: !21, line: 205, type: !158)
!162 = !DILocation(line: 205, column: 46, scope: !155)
!163 = !DILocalVariable(name: "result", scope: !155, file: !21, line: 207, type: !123)
!164 = !DILocation(line: 207, column: 9, scope: !155)
!165 = !DILocation(line: 210, column: 26, scope: !155)
!166 = !DILocation(line: 210, column: 32, scope: !155)
!167 = !DILocation(line: 210, column: 4, scope: !155)
!168 = !DILocation(line: 215, column: 14, scope: !169)
!169 = distinct !DILexicalBlock(scope: !170, file: !21, line: 214, column: 11)
!170 = distinct !DILexicalBlock(scope: !155, file: !21, line: 212, column: 8)
!171 = !DILocation(line: 218, column: 11, scope: !155)
!172 = !DILocation(line: 218, column: 4, scope: !155)
!173 = distinct !DISubprogram(name: "MXUser_SetContentionCountFloorRecLock", scope: !21, file: !21, line: 240, type: !174, isLocal: false, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!174 = !DISubroutineType(types: !175)
!175 = !{!123, !17, !104}
!176 = !DILocalVariable(name: "lock", arg: 1, scope: !173, file: !21, line: 240, type: !17)
!177 = !DILocation(line: 240, column: 54, scope: !173)
!178 = !DILocalVariable(name: "count", arg: 2, scope: !173, file: !21, line: 241, type: !104)
!179 = !DILocation(line: 241, column: 46, scope: !173)
!180 = !DILocalVariable(name: "result", scope: !173, file: !21, line: 243, type: !123)
!181 = !DILocation(line: 243, column: 9, scope: !173)
!182 = !DILocation(line: 246, column: 26, scope: !173)
!183 = !DILocation(line: 246, column: 32, scope: !173)
!184 = !DILocation(line: 246, column: 4, scope: !173)
!185 = !DILocation(line: 251, column: 14, scope: !186)
!186 = distinct !DILexicalBlock(scope: !187, file: !21, line: 250, column: 11)
!187 = distinct !DILexicalBlock(scope: !173, file: !21, line: 248, column: 8)
!188 = !DILocation(line: 254, column: 11, scope: !173)
!189 = !DILocation(line: 254, column: 4, scope: !173)
!190 = distinct !DISubprogram(name: "MXUser_SetContentionDurationFloorRecLock", scope: !21, file: !21, line: 276, type: !174, isLocal: false, isDefinition: true, scopeLine: 278, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!191 = !DILocalVariable(name: "lock", arg: 1, scope: !190, file: !21, line: 276, type: !17)
!192 = !DILocation(line: 276, column: 57, scope: !190)
!193 = !DILocalVariable(name: "duration", arg: 2, scope: !190, file: !21, line: 277, type: !104)
!194 = !DILocation(line: 277, column: 49, scope: !190)
!195 = !DILocalVariable(name: "result", scope: !190, file: !21, line: 279, type: !123)
!196 = !DILocation(line: 279, column: 9, scope: !190)
!197 = !DILocation(line: 282, column: 26, scope: !190)
!198 = !DILocation(line: 282, column: 32, scope: !190)
!199 = !DILocation(line: 282, column: 4, scope: !190)
!200 = !DILocation(line: 288, column: 14, scope: !201)
!201 = distinct !DILexicalBlock(scope: !202, file: !21, line: 287, column: 11)
!202 = distinct !DILexicalBlock(scope: !190, file: !21, line: 284, column: 8)
!203 = !DILocation(line: 291, column: 11, scope: !190)
!204 = !DILocation(line: 291, column: 4, scope: !190)
!205 = distinct !DISubprogram(name: "MXUser_CreateRecLock", scope: !21, file: !21, line: 355, type: !206, isLocal: false, isDefinition: true, scopeLine: 357, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!206 = !DISubroutineType(types: !207)
!207 = !{!17, !208, !37}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!210 = !DILocalVariable(name: "userName", arg: 1, scope: !205, file: !21, line: 355, type: !208)
!211 = !DILocation(line: 355, column: 34, scope: !205)
!212 = !DILocalVariable(name: "rank", arg: 2, scope: !205, file: !21, line: 356, type: !37)
!213 = !DILocation(line: 356, column: 30, scope: !205)
!214 = !DILocalVariable(name: "statsMode", scope: !205, file: !21, line: 358, type: !28)
!215 = !DILocation(line: 358, column: 11, scope: !205)
!216 = !DILocalVariable(name: "properName", scope: !205, file: !21, line: 359, type: !34)
!217 = !DILocation(line: 359, column: 10, scope: !205)
!218 = !DILocalVariable(name: "lock", scope: !205, file: !21, line: 360, type: !17)
!219 = !DILocation(line: 360, column: 19, scope: !205)
!220 = !DILocation(line: 360, column: 26, scope: !205)
!221 = !DILocation(line: 362, column: 8, scope: !222)
!222 = distinct !DILexicalBlock(scope: !205, file: !21, line: 362, column: 8)
!223 = !DILocation(line: 362, column: 17, scope: !222)
!224 = !DILocation(line: 362, column: 8, scope: !205)
!225 = !DILocation(line: 363, column: 50, scope: !226)
!226 = distinct !DILexicalBlock(scope: !222, file: !21, line: 362, column: 25)
!227 = !DILocation(line: 363, column: 20, scope: !228)
!228 = !DILexicalBlockFile(scope: !226, file: !21, discriminator: 1)
!229 = !DILocation(line: 363, column: 18, scope: !226)
!230 = !DILocation(line: 364, column: 4, scope: !226)
!231 = !DILocation(line: 365, column: 37, scope: !232)
!232 = distinct !DILexicalBlock(scope: !222, file: !21, line: 364, column: 11)
!233 = !DILocation(line: 365, column: 20, scope: !232)
!234 = !DILocation(line: 365, column: 18, scope: !232)
!235 = !DILocation(line: 368, column: 42, scope: !236)
!236 = distinct !DILexicalBlock(scope: !205, file: !21, line: 368, column: 8)
!237 = !DILocation(line: 368, column: 48, scope: !236)
!238 = !DILocation(line: 368, column: 27, scope: !236)
!239 = !DILocation(line: 368, column: 26, scope: !236)
!240 = !DILocation(line: 368, column: 25, scope: !236)
!241 = !DILocation(line: 368, column: 8, scope: !236)
!242 = !DILocation(line: 368, column: 8, scope: !205)
!243 = !DILocation(line: 369, column: 7, scope: !244)
!244 = distinct !DILexicalBlock(scope: !236, file: !21, line: 368, column: 69)
!245 = !DILocation(line: 372, column: 4, scope: !205)
!246 = !DILocation(line: 372, column: 10, scope: !205)
!247 = !DILocation(line: 372, column: 18, scope: !205)
!248 = !DILocation(line: 373, column: 20, scope: !205)
!249 = !DILocation(line: 373, column: 26, scope: !205)
!250 = !DILocation(line: 373, column: 4, scope: !205)
!251 = !DILocation(line: 375, column: 29, scope: !205)
!252 = !DILocation(line: 375, column: 4, scope: !205)
!253 = !DILocation(line: 375, column: 10, scope: !205)
!254 = !DILocation(line: 375, column: 17, scope: !205)
!255 = !DILocation(line: 375, column: 27, scope: !205)
!256 = !DILocation(line: 376, column: 24, scope: !205)
!257 = !DILocation(line: 376, column: 4, scope: !205)
!258 = !DILocation(line: 376, column: 10, scope: !205)
!259 = !DILocation(line: 376, column: 17, scope: !205)
!260 = !DILocation(line: 376, column: 22, scope: !205)
!261 = !DILocation(line: 377, column: 24, scope: !205)
!262 = !DILocation(line: 377, column: 4, scope: !205)
!263 = !DILocation(line: 377, column: 10, scope: !205)
!264 = !DILocation(line: 377, column: 17, scope: !205)
!265 = !DILocation(line: 377, column: 22, scope: !205)
!266 = !DILocation(line: 378, column: 37, scope: !205)
!267 = !DILocation(line: 378, column: 4, scope: !205)
!268 = !DILocation(line: 378, column: 10, scope: !205)
!269 = !DILocation(line: 378, column: 17, scope: !205)
!270 = !DILocation(line: 378, column: 22, scope: !205)
!271 = !DILocation(line: 378, column: 35, scope: !205)
!272 = !DILocation(line: 379, column: 4, scope: !205)
!273 = !DILocation(line: 379, column: 10, scope: !205)
!274 = !DILocation(line: 379, column: 17, scope: !205)
!275 = !DILocation(line: 379, column: 26, scope: !205)
!276 = !DILocation(line: 381, column: 16, scope: !205)
!277 = !DILocation(line: 381, column: 14, scope: !205)
!278 = !DILocation(line: 383, column: 12, scope: !205)
!279 = !DILocation(line: 383, column: 4, scope: !205)
!280 = !DILocation(line: 385, column: 27, scope: !281)
!281 = distinct !DILexicalBlock(scope: !205, file: !21, line: 383, column: 23)
!282 = !DILocation(line: 385, column: 33, scope: !281)
!283 = !DILocation(line: 385, column: 51, scope: !281)
!284 = !DILocation(line: 385, column: 57, scope: !281)
!285 = !DILocation(line: 385, column: 7, scope: !281)
!286 = !DILocation(line: 386, column: 7, scope: !281)
!287 = !DILocation(line: 386, column: 13, scope: !281)
!288 = !DILocation(line: 386, column: 20, scope: !281)
!289 = !DILocation(line: 386, column: 30, scope: !281)
!290 = !DILocation(line: 387, column: 7, scope: !281)
!291 = !DILocation(line: 390, column: 26, scope: !281)
!292 = !DILocation(line: 390, column: 32, scope: !281)
!293 = !DILocation(line: 390, column: 7, scope: !281)
!294 = !DILocation(line: 391, column: 7, scope: !281)
!295 = !DILocation(line: 391, column: 13, scope: !281)
!296 = !DILocation(line: 391, column: 20, scope: !281)
!297 = !DILocation(line: 391, column: 30, scope: !281)
!298 = !DILocation(line: 392, column: 7, scope: !281)
!299 = !DILocation(line: 395, column: 26, scope: !281)
!300 = !DILocation(line: 395, column: 32, scope: !281)
!301 = !DILocation(line: 395, column: 50, scope: !281)
!302 = !DILocation(line: 395, column: 56, scope: !281)
!303 = !DILocation(line: 395, column: 7, scope: !281)
!304 = !DILocation(line: 396, column: 7, scope: !281)
!305 = !DILocation(line: 396, column: 13, scope: !281)
!306 = !DILocation(line: 396, column: 20, scope: !281)
!307 = !DILocation(line: 396, column: 30, scope: !281)
!308 = !DILocation(line: 397, column: 7, scope: !281)
!309 = !DILocation(line: 400, column: 60, scope: !281)
!310 = !DILocation(line: 400, column: 7, scope: !281)
!311 = !DILocation(line: 403, column: 21, scope: !205)
!312 = !DILocation(line: 403, column: 27, scope: !205)
!313 = !DILocation(line: 403, column: 4, scope: !205)
!314 = !DILocation(line: 405, column: 11, scope: !205)
!315 = !DILocation(line: 405, column: 4, scope: !205)
!316 = distinct !DISubprogram(name: "MXRecLockInit", scope: !4, file: !4, line: 264, type: !317, isLocal: true, isDefinition: true, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!317 = !DISubroutineType(types: !318)
!318 = !{!123, !319}
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!320 = !DILocalVariable(name: "lock", arg: 1, scope: !316, file: !4, line: 264, type: !319)
!321 = !DILocation(line: 264, column: 26, scope: !316)
!322 = !DILocalVariable(name: "success", scope: !316, file: !4, line: 266, type: !123)
!323 = !DILocation(line: 266, column: 9, scope: !316)
!324 = !DILocation(line: 266, column: 44, scope: !316)
!325 = !DILocation(line: 266, column: 20, scope: !316)
!326 = !DILocation(line: 266, column: 50, scope: !316)
!327 = !DILocation(line: 266, column: 19, scope: !316)
!328 = !DILocation(line: 268, column: 8, scope: !329)
!329 = distinct !DILexicalBlock(scope: !316, file: !4, line: 268, column: 8)
!330 = !DILocation(line: 268, column: 8, scope: !316)
!331 = !DILocation(line: 269, column: 27, scope: !332)
!332 = distinct !DILexicalBlock(scope: !329, file: !4, line: 268, column: 17)
!333 = !DILocation(line: 269, column: 7, scope: !332)
!334 = !DILocation(line: 271, column: 7, scope: !332)
!335 = !DILocation(line: 271, column: 13, scope: !332)
!336 = !DILocation(line: 271, column: 28, scope: !332)
!337 = !DILocation(line: 272, column: 4, scope: !332)
!338 = !DILocation(line: 274, column: 11, scope: !316)
!339 = !DILocation(line: 274, column: 4, scope: !316)
!340 = distinct !DISubprogram(name: "Atomic_Write32", scope: !98, file: !98, line: 1037, type: !341, isLocal: true, isDefinition: true, scopeLine: 1039, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!341 = !DISubroutineType(types: !342)
!342 = !{null, !343, !28}
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!344 = !DILocalVariable(name: "var", arg: 1, scope: !340, file: !98, line: 1037, type: !343)
!345 = !DILocation(line: 1037, column: 31, scope: !340)
!346 = !DILocalVariable(name: "val", arg: 2, scope: !340, file: !98, line: 1038, type: !28)
!347 = !DILocation(line: 1038, column: 23, scope: !340)
!348 = !DILocation(line: 1083, column: 15, scope: !340)
!349 = !DILocation(line: 1083, column: 20, scope: !340)
!350 = !DILocation(line: 1084, column: 14, scope: !340)
!351 = !DILocation(line: 1081, column: 4, scope: !340)
!352 = !{i32 125784}
!353 = !DILocation(line: 1098, column: 1, scope: !340)
!354 = distinct !DISubprogram(name: "MXUserDumpRecLock", scope: !21, file: !21, line: 312, type: !355, isLocal: true, isDefinition: true, scopeLine: 313, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !139}
!357 = !DILocalVariable(name: "header", arg: 1, scope: !354, file: !21, line: 312, type: !139)
!358 = !DILocation(line: 312, column: 33, scope: !354)
!359 = !DILocalVariable(name: "lock", scope: !354, file: !21, line: 314, type: !17)
!360 = !DILocation(line: 314, column: 19, scope: !354)
!361 = !DILocation(line: 314, column: 44, scope: !354)
!362 = !DILocation(line: 314, column: 26, scope: !354)
!363 = !DILocation(line: 316, column: 55, scope: !354)
!364 = !DILocation(line: 316, column: 4, scope: !354)
!365 = !DILocation(line: 318, column: 34, scope: !354)
!366 = !DILocation(line: 318, column: 40, scope: !354)
!367 = !DILocation(line: 318, column: 47, scope: !354)
!368 = !DILocation(line: 318, column: 4, scope: !354)
!369 = !DILocation(line: 319, column: 27, scope: !354)
!370 = !DILocation(line: 319, column: 33, scope: !354)
!371 = !DILocation(line: 319, column: 40, scope: !354)
!372 = !DILocation(line: 319, column: 4, scope: !354)
!373 = !DILocation(line: 320, column: 29, scope: !354)
!374 = !DILocation(line: 320, column: 35, scope: !354)
!375 = !DILocation(line: 320, column: 42, scope: !354)
!376 = !DILocation(line: 320, column: 4, scope: !354)
!377 = !DILocation(line: 321, column: 36, scope: !354)
!378 = !DILocation(line: 321, column: 42, scope: !354)
!379 = !DILocation(line: 321, column: 49, scope: !354)
!380 = !DILocation(line: 321, column: 54, scope: !354)
!381 = !DILocation(line: 321, column: 4, scope: !354)
!382 = !DILocation(line: 322, column: 53, scope: !354)
!383 = !DILocation(line: 322, column: 59, scope: !354)
!384 = !DILocation(line: 322, column: 38, scope: !354)
!385 = !DILocation(line: 322, column: 4, scope: !386)
!386 = !DILexicalBlockFile(scope: !354, file: !21, discriminator: 1)
!387 = !DILocation(line: 324, column: 8, scope: !388)
!388 = distinct !DILexicalBlock(scope: !354, file: !21, line: 324, column: 8)
!389 = !DILocation(line: 324, column: 14, scope: !388)
!390 = !DILocation(line: 324, column: 22, scope: !388)
!391 = !DILocation(line: 324, column: 8, scope: !354)
!392 = !DILocation(line: 325, column: 52, scope: !393)
!393 = distinct !DILexicalBlock(scope: !388, file: !21, line: 324, column: 30)
!394 = !DILocation(line: 325, column: 58, scope: !393)
!395 = !DILocation(line: 325, column: 36, scope: !393)
!396 = !DILocation(line: 325, column: 7, scope: !397)
!397 = !DILexicalBlockFile(scope: !393, file: !21, discriminator: 1)
!398 = !DILocation(line: 328, column: 16, scope: !393)
!399 = !DILocation(line: 328, column: 22, scope: !393)
!400 = !DILocation(line: 328, column: 36, scope: !393)
!401 = !DILocation(line: 327, column: 7, scope: !393)
!402 = !DILocation(line: 329, column: 4, scope: !393)
!403 = !DILocation(line: 330, column: 33, scope: !404)
!404 = distinct !DILexicalBlock(scope: !388, file: !21, line: 329, column: 11)
!405 = !DILocation(line: 330, column: 39, scope: !404)
!406 = !DILocation(line: 330, column: 7, scope: !404)
!407 = !DILocation(line: 332, column: 1, scope: !354)
!408 = distinct !DISubprogram(name: "MXUserStatsActionRec", scope: !21, file: !21, line: 66, type: !355, isLocal: true, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!409 = !DILocalVariable(name: "header", arg: 1, scope: !408, file: !21, line: 66, type: !139)
!410 = !DILocation(line: 66, column: 36, scope: !408)
!411 = !DILocalVariable(name: "lock", scope: !408, file: !21, line: 68, type: !17)
!412 = !DILocation(line: 68, column: 19, scope: !408)
!413 = !DILocation(line: 68, column: 44, scope: !408)
!414 = !DILocation(line: 68, column: 26, scope: !408)
!415 = !DILocalVariable(name: "heldStats", scope: !408, file: !21, line: 69, type: !416)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64, align: 64)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserHeldStats", file: !4, line: 569, baseType: !418)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 564, size: 512, align: 64, elements: !419)
!419 = !{!420, !424, !434}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "holdStart", scope: !418, file: !4, line: 566, baseType: !421, size: 64, align: 64)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmTimeType", file: !29, line: 354, baseType: !422)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !29, line: 172, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !31, line: 40, baseType: !90)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !418, file: !4, line: 567, baseType: !425, size: 384, align: 64, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserBasicStats", file: !4, line: 539, baseType: !426)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 532, size: 384, align: 64, elements: !427)
!427 = !{!428, !429, !430, !431, !432, !433}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "typeName", scope: !426, file: !4, line: 533, baseType: !34, size: 64, align: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "numSamples", scope: !426, file: !4, line: 534, baseType: !104, size: 64, align: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "minTime", scope: !426, file: !4, line: 535, baseType: !104, size: 64, align: 64, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "maxTime", scope: !426, file: !4, line: 536, baseType: !104, size: 64, align: 64, offset: 192)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "timeSum", scope: !426, file: !4, line: 537, baseType: !104, size: 64, align: 64, offset: 256)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "timeSquaredSum", scope: !426, file: !4, line: 538, baseType: !158, size: 64, align: 64, offset: 320)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "histo", scope: !418, file: !4, line: 568, baseType: !97, size: 64, align: 64, offset: 448)
!435 = !DILocation(line: 69, column: 21, scope: !408)
!436 = !DILocation(line: 69, column: 49, scope: !408)
!437 = !DILocation(line: 69, column: 55, scope: !408)
!438 = !DILocation(line: 69, column: 33, scope: !408)
!439 = !DILocalVariable(name: "acquireStats", scope: !408, file: !21, line: 70, type: !440)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64, align: 64)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserAcquireStats", file: !4, line: 562, baseType: !442)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 558, size: 960, align: 64, elements: !443)
!443 = !{!444, !457}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !442, file: !4, line: 560, baseType: !445, size: 896, align: 64)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserAcquisitionStats", file: !4, line: 552, baseType: !446)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 541, size: 896, align: 64, elements: !447)
!447 = !{!448, !449, !450, !451, !452, !453, !454, !455, !456}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "contentionRatioFloor", scope: !446, file: !4, line: 542, baseType: !158, size: 64, align: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "contentionCountFloor", scope: !446, file: !4, line: 543, baseType: !104, size: 64, align: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "contentionDurationFloor", scope: !446, file: !4, line: 544, baseType: !104, size: 64, align: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "numAttempts", scope: !446, file: !4, line: 545, baseType: !104, size: 64, align: 64, offset: 192)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "numSuccesses", scope: !446, file: !4, line: 546, baseType: !104, size: 64, align: 64, offset: 256)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "numSuccessesContended", scope: !446, file: !4, line: 547, baseType: !104, size: 64, align: 64, offset: 320)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "successContentionTime", scope: !446, file: !4, line: 548, baseType: !104, size: 64, align: 64, offset: 384)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "totalContentionTime", scope: !446, file: !4, line: 549, baseType: !104, size: 64, align: 64, offset: 448)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "basicStats", scope: !446, file: !4, line: 551, baseType: !425, size: 384, align: 64, offset: 512)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "histo", scope: !442, file: !4, line: 561, baseType: !97, size: 64, align: 64, offset: 896)
!458 = !DILocation(line: 70, column: 24, scope: !408)
!459 = !DILocation(line: 70, column: 55, scope: !408)
!460 = !DILocation(line: 70, column: 61, scope: !408)
!461 = !DILocation(line: 70, column: 39, scope: !408)
!462 = !DILocation(line: 72, column: 26, scope: !463)
!463 = distinct !DILexicalBlock(scope: !408, file: !21, line: 72, column: 8)
!464 = !DILocation(line: 72, column: 36, scope: !463)
!465 = !DILocation(line: 72, column: 25, scope: !463)
!466 = !DILocation(line: 72, column: 8, scope: !463)
!467 = !DILocation(line: 72, column: 8, scope: !408)
!468 = !DILocation(line: 73, column: 29, scope: !469)
!469 = distinct !DILexicalBlock(scope: !463, file: !21, line: 72, column: 14)
!470 = !DILocation(line: 73, column: 40, scope: !469)
!471 = !DILocation(line: 73, column: 46, scope: !469)
!472 = !DILocation(line: 73, column: 7, scope: !469)
!473 = !DILocation(line: 75, column: 27, scope: !474)
!474 = distinct !DILexicalBlock(scope: !469, file: !21, line: 75, column: 11)
!475 = !DILocation(line: 75, column: 38, scope: !474)
!476 = !DILocation(line: 75, column: 11, scope: !474)
!477 = !DILocation(line: 75, column: 45, scope: !474)
!478 = !DILocation(line: 75, column: 11, scope: !469)
!479 = !DILocation(line: 76, column: 42, scope: !480)
!480 = distinct !DILexicalBlock(scope: !474, file: !21, line: 75, column: 53)
!481 = !DILocation(line: 76, column: 53, scope: !480)
!482 = !DILocation(line: 76, column: 26, scope: !480)
!483 = !DILocation(line: 76, column: 61, scope: !480)
!484 = !DILocation(line: 76, column: 10, scope: !485)
!485 = !DILexicalBlockFile(scope: !480, file: !21, discriminator: 1)
!486 = !DILocation(line: 77, column: 7, scope: !480)
!487 = !DILocation(line: 78, column: 4, scope: !469)
!488 = !DILocation(line: 80, column: 28, scope: !489)
!489 = distinct !DILexicalBlock(scope: !408, file: !21, line: 80, column: 8)
!490 = !DILocation(line: 80, column: 41, scope: !489)
!491 = !DILocation(line: 80, column: 26, scope: !489)
!492 = !DILocation(line: 80, column: 25, scope: !489)
!493 = !DILocation(line: 80, column: 8, scope: !489)
!494 = !DILocation(line: 80, column: 8, scope: !408)
!495 = !DILocalVariable(name: "isHot", scope: !496, file: !21, line: 81, type: !123)
!496 = distinct !DILexicalBlock(scope: !489, file: !21, line: 80, column: 14)
!497 = !DILocation(line: 81, column: 12, scope: !496)
!498 = !DILocalVariable(name: "doLog", scope: !496, file: !21, line: 82, type: !123)
!499 = !DILocation(line: 82, column: 12, scope: !496)
!500 = !DILocalVariable(name: "contentionRatio", scope: !496, file: !21, line: 83, type: !158)
!501 = !DILocation(line: 83, column: 14, scope: !496)
!502 = !DILocation(line: 89, column: 35, scope: !496)
!503 = !DILocation(line: 89, column: 49, scope: !496)
!504 = !DILocation(line: 89, column: 55, scope: !496)
!505 = !DILocation(line: 89, column: 7, scope: !496)
!506 = !DILocation(line: 91, column: 27, scope: !507)
!507 = distinct !DILexicalBlock(scope: !496, file: !21, line: 91, column: 11)
!508 = !DILocation(line: 91, column: 41, scope: !507)
!509 = !DILocation(line: 91, column: 11, scope: !507)
!510 = !DILocation(line: 91, column: 48, scope: !507)
!511 = !DILocation(line: 91, column: 11, scope: !496)
!512 = !DILocation(line: 92, column: 42, scope: !513)
!513 = distinct !DILexicalBlock(scope: !507, file: !21, line: 91, column: 56)
!514 = !DILocation(line: 92, column: 56, scope: !513)
!515 = !DILocation(line: 92, column: 26, scope: !513)
!516 = !DILocation(line: 92, column: 64, scope: !513)
!517 = !DILocation(line: 92, column: 10, scope: !518)
!518 = !DILexicalBlockFile(scope: !513, file: !21, discriminator: 1)
!519 = !DILocation(line: 93, column: 7, scope: !513)
!520 = !DILocation(line: 99, column: 22, scope: !496)
!521 = !DILocation(line: 99, column: 36, scope: !496)
!522 = !DILocation(line: 99, column: 7, scope: !496)
!523 = !DILocation(line: 101, column: 29, scope: !524)
!524 = distinct !DILexicalBlock(scope: !496, file: !21, line: 101, column: 11)
!525 = !DILocation(line: 101, column: 28, scope: !524)
!526 = !DILocation(line: 101, column: 11, scope: !524)
!527 = !DILocation(line: 101, column: 11, scope: !496)
!528 = !DILocation(line: 102, column: 39, scope: !529)
!529 = distinct !DILexicalBlock(scope: !524, file: !21, line: 101, column: 41)
!530 = !DILocation(line: 102, column: 45, scope: !529)
!531 = !DILocation(line: 102, column: 10, scope: !529)
!532 = !DILocation(line: 106, column: 32, scope: !533)
!533 = distinct !DILexicalBlock(scope: !529, file: !21, line: 106, column: 14)
!534 = !DILocation(line: 106, column: 42, scope: !533)
!535 = !DILocation(line: 106, column: 31, scope: !533)
!536 = !DILocation(line: 106, column: 14, scope: !533)
!537 = !DILocation(line: 106, column: 14, scope: !529)
!538 = !DILocation(line: 107, column: 35, scope: !539)
!539 = distinct !DILexicalBlock(scope: !533, file: !21, line: 106, column: 20)
!540 = !DILocation(line: 107, column: 41, scope: !539)
!541 = !DILocation(line: 107, column: 13, scope: !539)
!542 = !DILocation(line: 110, column: 10, scope: !539)
!543 = !DILocation(line: 112, column: 14, scope: !544)
!544 = distinct !DILexicalBlock(scope: !529, file: !21, line: 112, column: 14)
!545 = !DILocation(line: 112, column: 14, scope: !529)
!546 = !DILocation(line: 114, column: 17, scope: !547)
!547 = distinct !DILexicalBlock(scope: !544, file: !21, line: 112, column: 21)
!548 = !DILocation(line: 114, column: 23, scope: !547)
!549 = !DILocation(line: 114, column: 30, scope: !547)
!550 = !DILocation(line: 114, column: 36, scope: !547)
!551 = !DILocation(line: 113, column: 13, scope: !547)
!552 = !DILocation(line: 115, column: 10, scope: !547)
!553 = !DILocation(line: 116, column: 7, scope: !529)
!554 = !DILocation(line: 117, column: 4, scope: !496)
!555 = !DILocation(line: 118, column: 1, scope: !408)
!556 = distinct !DISubprogram(name: "MXUser_DestroyRecLock", scope: !21, file: !21, line: 462, type: !557, isLocal: false, isDefinition: true, scopeLine: 463, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!557 = !DISubroutineType(types: !558)
!558 = !{null, !17}
!559 = !DILocalVariable(name: "lock", arg: 1, scope: !556, file: !21, line: 462, type: !17)
!560 = !DILocation(line: 462, column: 38, scope: !556)
!561 = !DILocation(line: 464, column: 8, scope: !562)
!562 = distinct !DILexicalBlock(scope: !556, file: !21, line: 464, column: 8)
!563 = !DILocation(line: 464, column: 13, scope: !562)
!564 = !DILocation(line: 464, column: 8, scope: !556)
!565 = !DILocation(line: 465, column: 32, scope: !566)
!566 = distinct !DILexicalBlock(scope: !562, file: !21, line: 464, column: 21)
!567 = !DILocation(line: 465, column: 7, scope: !566)
!568 = !DILocation(line: 466, column: 4, scope: !566)
!569 = !DILocation(line: 467, column: 1, scope: !556)
!570 = distinct !DISubprogram(name: "MXUserCondDestroyRecLock", scope: !21, file: !21, line: 431, type: !557, isLocal: true, isDefinition: true, scopeLine: 432, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!571 = !DILocalVariable(name: "lock", arg: 1, scope: !570, file: !21, line: 431, type: !17)
!572 = !DILocation(line: 431, column: 41, scope: !570)
!573 = !DILocation(line: 434, column: 26, scope: !570)
!574 = !DILocation(line: 434, column: 32, scope: !570)
!575 = !DILocation(line: 434, column: 4, scope: !570)
!576 = !DILocation(line: 437, column: 26, scope: !577)
!577 = distinct !DILexicalBlock(scope: !570, file: !21, line: 437, column: 8)
!578 = !DILocation(line: 437, column: 32, scope: !577)
!579 = !DILocation(line: 437, column: 8, scope: !577)
!580 = !DILocation(line: 437, column: 42, scope: !577)
!581 = !DILocation(line: 437, column: 8, scope: !570)
!582 = !DILocation(line: 438, column: 11, scope: !583)
!583 = distinct !DILexicalBlock(scope: !584, file: !21, line: 438, column: 11)
!584 = distinct !DILexicalBlock(scope: !577, file: !21, line: 437, column: 48)
!585 = !DILocation(line: 438, column: 17, scope: !583)
!586 = !DILocation(line: 438, column: 25, scope: !583)
!587 = !DILocation(line: 438, column: 11, scope: !584)
!588 = !DILocation(line: 439, column: 30, scope: !589)
!589 = distinct !DILexicalBlock(scope: !590, file: !21, line: 439, column: 14)
!590 = distinct !DILexicalBlock(scope: !583, file: !21, line: 438, column: 33)
!591 = !DILocation(line: 439, column: 36, scope: !589)
!592 = !DILocation(line: 439, column: 14, scope: !589)
!593 = !DILocation(line: 439, column: 51, scope: !589)
!594 = !DILocation(line: 439, column: 14, scope: !590)
!595 = !DILocation(line: 440, column: 33, scope: !596)
!596 = distinct !DILexicalBlock(scope: !589, file: !21, line: 439, column: 56)
!597 = !DILocation(line: 440, column: 39, scope: !596)
!598 = !DILocation(line: 440, column: 13, scope: !596)
!599 = !DILocation(line: 443, column: 10, scope: !596)
!600 = !DILocation(line: 445, column: 28, scope: !590)
!601 = !DILocation(line: 445, column: 34, scope: !590)
!602 = !DILocation(line: 445, column: 10, scope: !590)
!603 = !DILocation(line: 447, column: 32, scope: !590)
!604 = !DILocation(line: 447, column: 38, scope: !590)
!605 = !DILocation(line: 447, column: 10, scope: !590)
!606 = !DILocation(line: 452, column: 7, scope: !590)
!607 = !DILocation(line: 454, column: 7, scope: !584)
!608 = !DILocation(line: 454, column: 13, scope: !584)
!609 = !DILocation(line: 454, column: 20, scope: !584)
!610 = !DILocation(line: 454, column: 30, scope: !584)
!611 = !DILocation(line: 455, column: 12, scope: !584)
!612 = !DILocation(line: 455, column: 18, scope: !584)
!613 = !DILocation(line: 455, column: 25, scope: !584)
!614 = !DILocation(line: 455, column: 7, scope: !584)
!615 = !DILocation(line: 456, column: 7, scope: !584)
!616 = !DILocation(line: 456, column: 13, scope: !584)
!617 = !DILocation(line: 456, column: 20, scope: !584)
!618 = !DILocation(line: 456, column: 25, scope: !584)
!619 = !DILocation(line: 457, column: 12, scope: !584)
!620 = !DILocation(line: 457, column: 7, scope: !584)
!621 = !DILocation(line: 458, column: 4, scope: !584)
!622 = !DILocation(line: 459, column: 1, scope: !570)
!623 = distinct !DISubprogram(name: "MXUser_AcquireRecLock", scope: !21, file: !21, line: 489, type: !557, isLocal: false, isDefinition: true, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!624 = !DILocalVariable(name: "lock", arg: 1, scope: !623, file: !21, line: 489, type: !17)
!625 = !DILocation(line: 489, column: 38, scope: !623)
!626 = !DILocation(line: 492, column: 26, scope: !623)
!627 = !DILocation(line: 492, column: 32, scope: !623)
!628 = !DILocation(line: 492, column: 4, scope: !623)
!629 = !DILocation(line: 495, column: 26, scope: !630)
!630 = distinct !DILexicalBlock(scope: !623, file: !21, line: 495, column: 8)
!631 = !DILocation(line: 495, column: 32, scope: !630)
!632 = !DILocation(line: 495, column: 40, scope: !630)
!633 = !DILocation(line: 495, column: 25, scope: !630)
!634 = !DILocation(line: 495, column: 8, scope: !630)
!635 = !DILocation(line: 495, column: 8, scope: !623)
!636 = !DILocation(line: 497, column: 9, scope: !637)
!637 = distinct !DILexicalBlock(scope: !630, file: !21, line: 495, column: 14)
!638 = !DILocation(line: 497, column: 27, scope: !637)
!639 = !DILocation(line: 497, column: 33, scope: !637)
!640 = !DILocation(line: 497, column: 7, scope: !637)
!641 = !DILocation(line: 498, column: 4, scope: !637)
!642 = !DILocation(line: 500, column: 34, scope: !643)
!643 = distinct !DILexicalBlock(scope: !630, file: !21, line: 498, column: 11)
!644 = !DILocation(line: 500, column: 40, scope: !643)
!645 = !DILocation(line: 500, column: 7, scope: !643)
!646 = !DILocation(line: 534, column: 28, scope: !647)
!647 = distinct !DILexicalBlock(scope: !648, file: !21, line: 533, column: 14)
!648 = distinct !DILexicalBlock(scope: !643, file: !21, line: 502, column: 11)
!649 = !DILocation(line: 534, column: 34, scope: !647)
!650 = !DILocation(line: 534, column: 10, scope: !647)
!651 = !DILocation(line: 538, column: 1, scope: !623)
!652 = distinct !DISubprogram(name: "MXUserAcquisitionTracking", scope: !4, file: !4, line: 494, type: !653, isLocal: true, isDefinition: true, scopeLine: 496, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!653 = !DISubroutineType(types: !654)
!654 = !{null, !139, !123}
!655 = !DILocalVariable(name: "header", arg: 1, scope: !652, file: !4, line: 494, type: !139)
!656 = !DILocation(line: 494, column: 41, scope: !652)
!657 = !DILocalVariable(name: "checkRank", arg: 2, scope: !652, file: !4, line: 495, type: !123)
!658 = !DILocation(line: 495, column: 32, scope: !652)
!659 = !DILocation(line: 497, column: 4, scope: !652)
!660 = distinct !DISubprogram(name: "MXRecLockAcquire", scope: !4, file: !4, line: 328, type: !661, isLocal: true, isDefinition: true, scopeLine: 330, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!661 = !DISubroutineType(types: !662)
!662 = !{null, !319, !663}
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64, align: 64)
!664 = !DILocalVariable(name: "lock", arg: 1, scope: !660, file: !4, line: 328, type: !319)
!665 = !DILocation(line: 328, column: 29, scope: !660)
!666 = !DILocalVariable(name: "duration", arg: 2, scope: !660, file: !4, line: 329, type: !663)
!667 = !DILocation(line: 329, column: 30, scope: !660)
!668 = !DILocalVariable(name: "err", scope: !660, file: !4, line: 331, type: !70)
!669 = !DILocation(line: 331, column: 8, scope: !660)
!670 = !DILocation(line: 333, column: 41, scope: !671)
!671 = distinct !DILexicalBlock(scope: !660, file: !4, line: 333, column: 8)
!672 = !DILocation(line: 333, column: 26, scope: !671)
!673 = !DILocation(line: 333, column: 47, scope: !671)
!674 = !DILocation(line: 333, column: 25, scope: !671)
!675 = !DILocation(line: 333, column: 8, scope: !671)
!676 = !DILocation(line: 333, column: 56, scope: !671)
!677 = !DILocation(line: 333, column: 76, scope: !678)
!678 = !DILexicalBlockFile(scope: !671, file: !4, discriminator: 1)
!679 = !DILocation(line: 333, column: 59, scope: !678)
!680 = !DILocation(line: 333, column: 8, scope: !678)
!681 = !DILocation(line: 334, column: 25, scope: !682)
!682 = distinct !DILexicalBlock(scope: !671, file: !4, line: 333, column: 83)
!683 = !DILocation(line: 334, column: 7, scope: !682)
!684 = !DILocation(line: 336, column: 11, scope: !685)
!685 = distinct !DILexicalBlock(scope: !682, file: !4, line: 336, column: 11)
!686 = !DILocation(line: 336, column: 20, scope: !685)
!687 = !DILocation(line: 336, column: 11, scope: !682)
!688 = !DILocation(line: 337, column: 11, scope: !689)
!689 = distinct !DILexicalBlock(scope: !685, file: !4, line: 336, column: 28)
!690 = !DILocation(line: 337, column: 20, scope: !689)
!691 = !DILocation(line: 338, column: 7, scope: !689)
!692 = !DILocation(line: 340, column: 7, scope: !682)
!693 = !DILocation(line: 343, column: 28, scope: !694)
!694 = distinct !DILexicalBlock(scope: !660, file: !4, line: 343, column: 8)
!695 = !DILocation(line: 343, column: 37, scope: !694)
!696 = !DILocation(line: 343, column: 26, scope: !694)
!697 = !DILocation(line: 343, column: 25, scope: !694)
!698 = !DILocation(line: 343, column: 8, scope: !694)
!699 = !DILocation(line: 343, column: 8, scope: !660)
!700 = !DILocation(line: 344, column: 38, scope: !701)
!701 = distinct !DILexicalBlock(scope: !694, file: !4, line: 343, column: 14)
!702 = !DILocation(line: 344, column: 13, scope: !701)
!703 = !DILocation(line: 344, column: 11, scope: !701)
!704 = !DILocation(line: 345, column: 4, scope: !701)
!705 = !DILocalVariable(name: "start", scope: !706, file: !4, line: 346, type: !421)
!706 = distinct !DILexicalBlock(scope: !694, file: !4, line: 345, column: 11)
!707 = !DILocation(line: 346, column: 18, scope: !706)
!708 = !DILocation(line: 346, column: 26, scope: !706)
!709 = !DILocation(line: 348, column: 38, scope: !706)
!710 = !DILocation(line: 348, column: 13, scope: !706)
!711 = !DILocation(line: 348, column: 11, scope: !706)
!712 = !DILocation(line: 350, column: 19, scope: !706)
!713 = !DILocation(line: 350, column: 46, scope: !706)
!714 = !DILocation(line: 350, column: 44, scope: !706)
!715 = !DILocation(line: 350, column: 8, scope: !706)
!716 = !DILocation(line: 350, column: 17, scope: !706)
!717 = !DILocation(line: 359, column: 22, scope: !660)
!718 = !DILocation(line: 359, column: 4, scope: !660)
!719 = !DILocation(line: 361, column: 4, scope: !660)
!720 = !DILocation(line: 362, column: 1, scope: !660)
!721 = distinct !DISubprogram(name: "MXUser_ReleaseRecLock", scope: !21, file: !21, line: 558, type: !557, isLocal: false, isDefinition: true, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!722 = !DILocalVariable(name: "lock", arg: 1, scope: !721, file: !21, line: 558, type: !17)
!723 = !DILocation(line: 558, column: 38, scope: !721)
!724 = !DILocation(line: 561, column: 26, scope: !721)
!725 = !DILocation(line: 561, column: 32, scope: !721)
!726 = !DILocation(line: 561, column: 4, scope: !721)
!727 = !DILocation(line: 564, column: 26, scope: !728)
!728 = distinct !DILexicalBlock(scope: !721, file: !21, line: 564, column: 8)
!729 = !DILocation(line: 564, column: 32, scope: !728)
!730 = !DILocation(line: 564, column: 40, scope: !728)
!731 = !DILocation(line: 564, column: 25, scope: !728)
!732 = !DILocation(line: 564, column: 8, scope: !728)
!733 = !DILocation(line: 564, column: 8, scope: !721)
!734 = !DILocation(line: 566, column: 9, scope: !735)
!735 = distinct !DILexicalBlock(scope: !728, file: !21, line: 564, column: 14)
!736 = !DILocation(line: 566, column: 29, scope: !735)
!737 = !DILocation(line: 566, column: 35, scope: !735)
!738 = !DILocation(line: 566, column: 7, scope: !735)
!739 = !DILocation(line: 567, column: 4, scope: !735)
!740 = !DILocation(line: 607, column: 30, scope: !741)
!741 = distinct !DILexicalBlock(scope: !728, file: !21, line: 567, column: 11)
!742 = !DILocation(line: 607, column: 36, scope: !741)
!743 = !DILocation(line: 607, column: 7, scope: !741)
!744 = !DILocation(line: 609, column: 25, scope: !741)
!745 = !DILocation(line: 609, column: 31, scope: !741)
!746 = !DILocation(line: 609, column: 7, scope: !741)
!747 = !DILocation(line: 611, column: 1, scope: !721)
!748 = distinct !DISubprogram(name: "MXUserReleaseTracking", scope: !4, file: !4, line: 501, type: !355, isLocal: true, isDefinition: true, scopeLine: 502, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!749 = !DILocalVariable(name: "header", arg: 1, scope: !748, file: !4, line: 501, type: !139)
!750 = !DILocation(line: 501, column: 37, scope: !748)
!751 = !DILocation(line: 503, column: 4, scope: !748)
!752 = distinct !DISubprogram(name: "MXRecLockRelease", scope: !4, file: !4, line: 393, type: !753, isLocal: true, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!753 = !DISubroutineType(types: !754)
!754 = !{null, !319}
!755 = !DILocalVariable(name: "lock", arg: 1, scope: !752, file: !4, line: 393, type: !319)
!756 = !DILocation(line: 393, column: 29, scope: !752)
!757 = !DILocation(line: 395, column: 22, scope: !752)
!758 = !DILocation(line: 395, column: 4, scope: !752)
!759 = !DILocation(line: 397, column: 43, scope: !760)
!760 = distinct !DILexicalBlock(scope: !752, file: !4, line: 397, column: 8)
!761 = !DILocation(line: 397, column: 28, scope: !760)
!762 = !DILocation(line: 397, column: 49, scope: !760)
!763 = !DILocation(line: 397, column: 26, scope: !760)
!764 = !DILocation(line: 397, column: 25, scope: !760)
!765 = !DILocation(line: 397, column: 8, scope: !760)
!766 = !DILocation(line: 397, column: 8, scope: !752)
!767 = !DILocalVariable(name: "err", scope: !768, file: !4, line: 398, type: !70)
!768 = distinct !DILexicalBlock(scope: !760, file: !4, line: 397, column: 60)
!769 = !DILocation(line: 398, column: 11, scope: !768)
!770 = !DILocation(line: 398, column: 42, scope: !768)
!771 = !DILocation(line: 398, column: 17, scope: !768)
!772 = !DILocation(line: 404, column: 4, scope: !768)
!773 = !DILocation(line: 405, column: 1, scope: !752)
!774 = distinct !DISubprogram(name: "MXUser_TryAcquireRecLock", scope: !21, file: !21, line: 638, type: !147, isLocal: false, isDefinition: true, scopeLine: 639, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!775 = !DILocalVariable(name: "lock", arg: 1, scope: !774, file: !21, line: 638, type: !17)
!776 = !DILocation(line: 638, column: 41, scope: !774)
!777 = !DILocalVariable(name: "success", scope: !774, file: !21, line: 640, type: !123)
!778 = !DILocation(line: 640, column: 9, scope: !774)
!779 = !DILocation(line: 643, column: 26, scope: !774)
!780 = !DILocation(line: 643, column: 32, scope: !774)
!781 = !DILocation(line: 643, column: 4, scope: !774)
!782 = !DILocation(line: 646, column: 26, scope: !783)
!783 = distinct !DILexicalBlock(scope: !774, file: !21, line: 646, column: 8)
!784 = !DILocation(line: 646, column: 32, scope: !783)
!785 = !DILocation(line: 646, column: 40, scope: !783)
!786 = !DILocation(line: 646, column: 25, scope: !783)
!787 = !DILocation(line: 646, column: 8, scope: !783)
!788 = !DILocation(line: 646, column: 8, scope: !774)
!789 = !DILocation(line: 648, column: 19, scope: !790)
!790 = distinct !DILexicalBlock(scope: !783, file: !21, line: 646, column: 14)
!791 = !DILocation(line: 648, column: 40, scope: !790)
!792 = !DILocation(line: 648, column: 46, scope: !790)
!793 = !DILocation(line: 648, column: 17, scope: !790)
!794 = !DILocation(line: 648, column: 15, scope: !790)
!795 = !DILocation(line: 649, column: 4, scope: !790)
!796 = !DILocation(line: 650, column: 32, scope: !797)
!797 = distinct !DILexicalBlock(scope: !798, file: !21, line: 650, column: 11)
!798 = distinct !DILexicalBlock(scope: !783, file: !21, line: 649, column: 11)
!799 = !DILocation(line: 650, column: 38, scope: !797)
!800 = !DILocation(line: 650, column: 45, scope: !797)
!801 = !DILocation(line: 650, column: 11, scope: !797)
!802 = !DILocation(line: 650, column: 11, scope: !798)
!803 = !DILocation(line: 651, column: 18, scope: !804)
!804 = distinct !DILexicalBlock(scope: !797, file: !21, line: 650, column: 52)
!805 = !DILocation(line: 652, column: 10, scope: !804)
!806 = !DILocation(line: 655, column: 38, scope: !798)
!807 = !DILocation(line: 655, column: 44, scope: !798)
!808 = !DILocation(line: 655, column: 17, scope: !798)
!809 = !DILocation(line: 655, column: 15, scope: !798)
!810 = !DILocation(line: 657, column: 11, scope: !811)
!811 = distinct !DILexicalBlock(scope: !798, file: !21, line: 657, column: 11)
!812 = !DILocation(line: 657, column: 11, scope: !798)
!813 = !DILocation(line: 658, column: 37, scope: !814)
!814 = distinct !DILexicalBlock(scope: !811, file: !21, line: 657, column: 20)
!815 = !DILocation(line: 658, column: 43, scope: !814)
!816 = !DILocation(line: 658, column: 10, scope: !814)
!817 = !DILocation(line: 659, column: 7, scope: !814)
!818 = !DILocation(line: 646, column: 11, scope: !819)
!819 = !DILexicalBlockFile(scope: !783, file: !21, discriminator: 1)
!820 = !DILocation(line: 674, column: 11, scope: !774)
!821 = !DILocation(line: 674, column: 4, scope: !774)
!822 = distinct !DISubprogram(name: "MXUserTryAcquireFail", scope: !4, file: !4, line: 515, type: !823, isLocal: true, isDefinition: true, scopeLine: 516, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!823 = !DISubroutineType(types: !824)
!824 = !{!123, !208}
!825 = !DILocalVariable(name: "name", arg: 1, scope: !822, file: !4, line: 515, type: !208)
!826 = !DILocation(line: 515, column: 34, scope: !822)
!827 = !DILocation(line: 519, column: 4, scope: !822)
!828 = distinct !DISubprogram(name: "MXRecLockTryAcquire", scope: !4, file: !4, line: 366, type: !317, isLocal: true, isDefinition: true, scopeLine: 367, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!829 = !DILocalVariable(name: "lock", arg: 1, scope: !828, file: !4, line: 366, type: !319)
!830 = !DILocation(line: 366, column: 32, scope: !828)
!831 = !DILocalVariable(name: "err", scope: !828, file: !4, line: 368, type: !70)
!832 = !DILocation(line: 368, column: 8, scope: !828)
!833 = !DILocation(line: 370, column: 41, scope: !834)
!834 = distinct !DILexicalBlock(scope: !828, file: !4, line: 370, column: 8)
!835 = !DILocation(line: 370, column: 26, scope: !834)
!836 = !DILocation(line: 370, column: 47, scope: !834)
!837 = !DILocation(line: 370, column: 25, scope: !834)
!838 = !DILocation(line: 370, column: 8, scope: !834)
!839 = !DILocation(line: 370, column: 56, scope: !834)
!840 = !DILocation(line: 370, column: 76, scope: !841)
!841 = !DILexicalBlockFile(scope: !834, file: !4, discriminator: 1)
!842 = !DILocation(line: 370, column: 59, scope: !841)
!843 = !DILocation(line: 370, column: 8, scope: !841)
!844 = !DILocation(line: 371, column: 25, scope: !845)
!845 = distinct !DILexicalBlock(scope: !834, file: !4, line: 370, column: 83)
!846 = !DILocation(line: 371, column: 7, scope: !845)
!847 = !DILocation(line: 373, column: 7, scope: !845)
!848 = !DILocation(line: 376, column: 38, scope: !828)
!849 = !DILocation(line: 376, column: 10, scope: !828)
!850 = !DILocation(line: 376, column: 8, scope: !828)
!851 = !DILocation(line: 378, column: 28, scope: !852)
!852 = distinct !DILexicalBlock(scope: !828, file: !4, line: 378, column: 8)
!853 = !DILocation(line: 378, column: 32, scope: !852)
!854 = !DILocation(line: 378, column: 26, scope: !852)
!855 = !DILocation(line: 378, column: 25, scope: !852)
!856 = !DILocation(line: 378, column: 8, scope: !852)
!857 = !DILocation(line: 378, column: 8, scope: !828)
!858 = !DILocation(line: 379, column: 25, scope: !859)
!859 = distinct !DILexicalBlock(scope: !852, file: !4, line: 378, column: 43)
!860 = !DILocation(line: 379, column: 7, scope: !859)
!861 = !DILocation(line: 381, column: 7, scope: !859)
!862 = !DILocation(line: 388, column: 4, scope: !828)
!863 = !DILocation(line: 389, column: 1, scope: !828)
!864 = distinct !DISubprogram(name: "MXUser_IsCurThreadHoldingRecLock", scope: !21, file: !21, line: 696, type: !147, isLocal: false, isDefinition: true, scopeLine: 697, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!865 = !DILocalVariable(name: "lock", arg: 1, scope: !864, file: !21, line: 696, type: !17)
!866 = !DILocation(line: 696, column: 49, scope: !864)
!867 = !DILocalVariable(name: "result", scope: !864, file: !21, line: 698, type: !123)
!868 = !DILocation(line: 698, column: 9, scope: !864)
!869 = !DILocation(line: 701, column: 26, scope: !864)
!870 = !DILocation(line: 701, column: 32, scope: !864)
!871 = !DILocation(line: 701, column: 4, scope: !864)
!872 = !DILocation(line: 704, column: 26, scope: !873)
!873 = distinct !DILexicalBlock(scope: !864, file: !21, line: 704, column: 8)
!874 = !DILocation(line: 704, column: 32, scope: !873)
!875 = !DILocation(line: 704, column: 40, scope: !873)
!876 = !DILocation(line: 704, column: 25, scope: !873)
!877 = !DILocation(line: 704, column: 8, scope: !873)
!878 = !DILocation(line: 704, column: 8, scope: !864)
!879 = !DILocation(line: 706, column: 18, scope: !880)
!880 = distinct !DILexicalBlock(scope: !873, file: !21, line: 704, column: 14)
!881 = !DILocation(line: 706, column: 51, scope: !880)
!882 = !DILocation(line: 706, column: 57, scope: !880)
!883 = !DILocation(line: 706, column: 16, scope: !880)
!884 = !DILocation(line: 706, column: 14, scope: !880)
!885 = !DILocation(line: 707, column: 4, scope: !880)
!886 = !DILocation(line: 708, column: 34, scope: !887)
!887 = distinct !DILexicalBlock(scope: !873, file: !21, line: 707, column: 11)
!888 = !DILocation(line: 708, column: 40, scope: !887)
!889 = !DILocation(line: 708, column: 16, scope: !887)
!890 = !DILocation(line: 708, column: 14, scope: !887)
!891 = !DILocation(line: 711, column: 11, scope: !864)
!892 = !DILocation(line: 711, column: 4, scope: !864)
!893 = distinct !DISubprogram(name: "MXRecLockIsOwner", scope: !4, file: !4, line: 220, type: !894, isLocal: true, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!894 = !DISubroutineType(types: !895)
!895 = !{!123, !896}
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64, align: 64)
!897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!898 = !DILocalVariable(name: "lock", arg: 1, scope: !893, file: !4, line: 220, type: !896)
!899 = !DILocation(line: 220, column: 35, scope: !893)
!900 = !DILocation(line: 222, column: 25, scope: !893)
!901 = !DILocation(line: 222, column: 31, scope: !893)
!902 = !DILocation(line: 222, column: 47, scope: !893)
!903 = !DILocation(line: 222, column: 11, scope: !904)
!904 = !DILexicalBlockFile(scope: !893, file: !4, discriminator: 1)
!905 = !DILocation(line: 222, column: 11, scope: !893)
!906 = !DILocation(line: 222, column: 4, scope: !893)
!907 = distinct !DISubprogram(name: "MXUser_CreateSingletonRecLockInt", scope: !21, file: !21, line: 735, type: !908, isLocal: false, isDefinition: true, scopeLine: 738, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!908 = !DISubroutineType(types: !909)
!909 = !{!17, !910, !208, !37}
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, align: 64)
!911 = !DILocalVariable(name: "lockStorage", arg: 1, scope: !907, file: !21, line: 735, type: !910)
!912 = !DILocation(line: 735, column: 46, scope: !907)
!913 = !DILocalVariable(name: "name", arg: 2, scope: !907, file: !21, line: 736, type: !208)
!914 = !DILocation(line: 736, column: 46, scope: !907)
!915 = !DILocalVariable(name: "rank", arg: 3, scope: !907, file: !21, line: 737, type: !37)
!916 = !DILocation(line: 737, column: 42, scope: !907)
!917 = !DILocalVariable(name: "lock", scope: !907, file: !21, line: 739, type: !17)
!918 = !DILocation(line: 739, column: 19, scope: !907)
!919 = !DILocation(line: 743, column: 26, scope: !907)
!920 = !DILocation(line: 743, column: 11, scope: !907)
!921 = !DILocation(line: 743, column: 9, scope: !907)
!922 = !DILocation(line: 745, column: 26, scope: !923)
!923 = distinct !DILexicalBlock(scope: !907, file: !21, line: 745, column: 8)
!924 = !DILocation(line: 745, column: 31, scope: !923)
!925 = !DILocation(line: 745, column: 25, scope: !923)
!926 = !DILocation(line: 745, column: 8, scope: !923)
!927 = !DILocation(line: 745, column: 8, scope: !907)
!928 = !DILocalVariable(name: "newLock", scope: !929, file: !21, line: 746, type: !17)
!929 = distinct !DILexicalBlock(scope: !923, file: !21, line: 745, column: 14)
!930 = !DILocation(line: 746, column: 22, scope: !929)
!931 = !DILocation(line: 746, column: 53, scope: !929)
!932 = !DILocation(line: 746, column: 59, scope: !929)
!933 = !DILocation(line: 746, column: 32, scope: !929)
!934 = !DILocation(line: 748, column: 41, scope: !929)
!935 = !DILocation(line: 748, column: 68, scope: !929)
!936 = !DILocation(line: 748, column: 59, scope: !929)
!937 = !DILocation(line: 748, column: 14, scope: !929)
!938 = !DILocation(line: 748, column: 12, scope: !929)
!939 = !DILocation(line: 750, column: 11, scope: !940)
!940 = distinct !DILexicalBlock(scope: !929, file: !21, line: 750, column: 11)
!941 = !DILocation(line: 750, column: 11, scope: !929)
!942 = !DILocation(line: 751, column: 32, scope: !943)
!943 = distinct !DILexicalBlock(scope: !940, file: !21, line: 750, column: 17)
!944 = !DILocation(line: 751, column: 10, scope: !943)
!945 = !DILocation(line: 752, column: 7, scope: !943)
!946 = !DILocation(line: 753, column: 32, scope: !947)
!947 = distinct !DILexicalBlock(scope: !940, file: !21, line: 752, column: 14)
!948 = !DILocation(line: 753, column: 17, scope: !947)
!949 = !DILocation(line: 753, column: 15, scope: !947)
!950 = !DILocation(line: 755, column: 4, scope: !929)
!951 = !DILocation(line: 757, column: 11, scope: !907)
!952 = !DILocation(line: 757, column: 4, scope: !907)
!953 = distinct !DISubprogram(name: "Atomic_ReadPtr", scope: !98, file: !98, line: 3829, type: !954, isLocal: true, isDefinition: true, scopeLine: 3829, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!954 = !DISubroutineType(types: !955)
!955 = !{!16, !956}
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64, align: 64)
!957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!958 = !DILocalVariable(name: "var", arg: 1, scope: !953, file: !98, line: 3829, type: !956)
!959 = !DILocation(line: 3829, column: 368, scope: !953)
!960 = !DILocation(line: 3829, column: 415, scope: !953)
!961 = !DILocation(line: 3829, column: 401, scope: !953)
!962 = !DILocation(line: 3829, column: 382, scope: !953)
!963 = !DILocation(line: 3829, column: 375, scope: !953)
!964 = distinct !DISubprogram(name: "Atomic_ReadIfEqualWritePtr", scope: !98, file: !98, line: 3829, type: !965, isLocal: true, isDefinition: true, scopeLine: 3829, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!965 = !DISubroutineType(types: !966)
!966 = !{!16, !910, !967, !967}
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64, align: 64)
!968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!969 = !DILocalVariable(name: "var", arg: 1, scope: !964, file: !98, line: 3829, type: !910)
!970 = !DILocation(line: 3829, column: 757, scope: !964)
!971 = !DILocalVariable(name: "oldVal", arg: 2, scope: !964, file: !98, line: 3829, type: !967)
!972 = !DILocation(line: 3829, column: 775, scope: !964)
!973 = !DILocalVariable(name: "newVal", arg: 3, scope: !964, file: !98, line: 3829, type: !967)
!974 = !DILocation(line: 3829, column: 796, scope: !964)
!975 = !DILocation(line: 3829, column: 858, scope: !964)
!976 = !DILocation(line: 3829, column: 882, scope: !964)
!977 = !DILocation(line: 3829, column: 871, scope: !964)
!978 = !DILocation(line: 3829, column: 909, scope: !964)
!979 = !DILocation(line: 3829, column: 898, scope: !964)
!980 = !DILocation(line: 3829, column: 832, scope: !964)
!981 = !DILocation(line: 3829, column: 813, scope: !964)
!982 = !DILocation(line: 3829, column: 806, scope: !964)
!983 = distinct !DISubprogram(name: "MXUser_CreateCondVarRecLock", scope: !21, file: !21, line: 779, type: !984, isLocal: false, isDefinition: true, scopeLine: 780, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!984 = !DISubroutineType(types: !985)
!985 = !{!986, !17}
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64, align: 64)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserCondVar", file: !19, line: 42, baseType: !988)
!988 = !DICompositeType(tag: DW_TAG_structure_type, name: "MXUserCondVar", file: !19, line: 42, flags: DIFlagFwdDecl)
!989 = !DILocalVariable(name: "lock", arg: 1, scope: !983, file: !21, line: 779, type: !17)
!990 = !DILocation(line: 779, column: 44, scope: !983)
!991 = !DILocalVariable(name: "condVar", scope: !983, file: !21, line: 781, type: !986)
!992 = !DILocation(line: 781, column: 19, scope: !983)
!993 = !DILocation(line: 784, column: 26, scope: !983)
!994 = !DILocation(line: 784, column: 32, scope: !983)
!995 = !DILocation(line: 784, column: 4, scope: !983)
!996 = !DILocation(line: 787, column: 35, scope: !983)
!997 = !DILocation(line: 787, column: 41, scope: !983)
!998 = !DILocation(line: 787, column: 50, scope: !983)
!999 = !DILocation(line: 787, column: 56, scope: !983)
!1000 = !DILocation(line: 787, column: 14, scope: !983)
!1001 = !DILocation(line: 787, column: 12, scope: !983)
!1002 = !DILocation(line: 789, column: 11, scope: !983)
!1003 = !DILocation(line: 789, column: 4, scope: !983)
!1004 = distinct !DISubprogram(name: "MXUser_WaitCondVarRecLock", scope: !21, file: !21, line: 813, type: !1005, isLocal: false, isDefinition: true, scopeLine: 815, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{null, !17, !986}
!1007 = !DILocalVariable(name: "lock", arg: 1, scope: !1004, file: !21, line: 813, type: !17)
!1008 = !DILocation(line: 813, column: 42, scope: !1004)
!1009 = !DILocalVariable(name: "condVar", arg: 2, scope: !1004, file: !21, line: 814, type: !986)
!1010 = !DILocation(line: 814, column: 42, scope: !1004)
!1011 = !DILocation(line: 817, column: 26, scope: !1004)
!1012 = !DILocation(line: 817, column: 32, scope: !1004)
!1013 = !DILocation(line: 817, column: 4, scope: !1004)
!1014 = !DILocation(line: 820, column: 23, scope: !1004)
!1015 = !DILocation(line: 820, column: 29, scope: !1004)
!1016 = !DILocation(line: 820, column: 38, scope: !1004)
!1017 = !DILocation(line: 820, column: 44, scope: !1004)
!1018 = !DILocation(line: 820, column: 59, scope: !1004)
!1019 = !DILocation(line: 820, column: 4, scope: !1004)
!1020 = !DILocation(line: 822, column: 1, scope: !1004)
!1021 = distinct !DISubprogram(name: "MXUser_TimedWaitCondVarRecLock", scope: !21, file: !21, line: 845, type: !1022, isLocal: false, isDefinition: true, scopeLine: 848, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{null, !17, !986, !28}
!1024 = !DILocalVariable(name: "lock", arg: 1, scope: !1021, file: !21, line: 845, type: !17)
!1025 = !DILocation(line: 845, column: 47, scope: !1021)
!1026 = !DILocalVariable(name: "condVar", arg: 2, scope: !1021, file: !21, line: 846, type: !986)
!1027 = !DILocation(line: 846, column: 47, scope: !1021)
!1028 = !DILocalVariable(name: "waitTimeMsec", arg: 3, scope: !1021, file: !21, line: 847, type: !28)
!1029 = !DILocation(line: 847, column: 39, scope: !1021)
!1030 = !DILocation(line: 850, column: 26, scope: !1021)
!1031 = !DILocation(line: 850, column: 32, scope: !1021)
!1032 = !DILocation(line: 850, column: 4, scope: !1021)
!1033 = !DILocation(line: 853, column: 23, scope: !1021)
!1034 = !DILocation(line: 853, column: 29, scope: !1021)
!1035 = !DILocation(line: 853, column: 38, scope: !1021)
!1036 = !DILocation(line: 853, column: 44, scope: !1021)
!1037 = !DILocation(line: 853, column: 59, scope: !1021)
!1038 = !DILocation(line: 854, column: 22, scope: !1021)
!1039 = !DILocation(line: 853, column: 4, scope: !1021)
!1040 = !DILocation(line: 855, column: 1, scope: !1021)
!1041 = distinct !DISubprogram(name: "MXUser_DumpRecLock", scope: !21, file: !21, line: 875, type: !557, isLocal: false, isDefinition: true, scopeLine: 876, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!1042 = !DILocalVariable(name: "lock", arg: 1, scope: !1041, file: !21, line: 875, type: !17)
!1043 = !DILocation(line: 875, column: 35, scope: !1041)
!1044 = !DILocation(line: 878, column: 26, scope: !1041)
!1045 = !DILocation(line: 878, column: 32, scope: !1041)
!1046 = !DILocation(line: 878, column: 4, scope: !1041)
!1047 = !DILocation(line: 880, column: 23, scope: !1041)
!1048 = !DILocation(line: 880, column: 29, scope: !1041)
!1049 = !DILocation(line: 880, column: 4, scope: !1041)
!1050 = !DILocation(line: 881, column: 1, scope: !1041)
!1051 = distinct !DISubprogram(name: "MXUser_GetRecLockVmm", scope: !21, file: !21, line: 901, type: !1052, isLocal: false, isDefinition: true, scopeLine: 902, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!114, !17}
!1054 = !DILocalVariable(name: "lock", arg: 1, scope: !1051, file: !21, line: 901, type: !17)
!1055 = !DILocation(line: 901, column: 37, scope: !1051)
!1056 = !DILocation(line: 904, column: 26, scope: !1051)
!1057 = !DILocation(line: 904, column: 32, scope: !1051)
!1058 = !DILocation(line: 904, column: 4, scope: !1051)
!1059 = !DILocation(line: 906, column: 11, scope: !1051)
!1060 = !DILocation(line: 906, column: 17, scope: !1051)
!1061 = !DILocation(line: 906, column: 4, scope: !1051)
!1062 = distinct !DISubprogram(name: "MXUser_GetRecLockRank", scope: !21, file: !21, line: 927, type: !1063, isLocal: false, isDefinition: true, scopeLine: 928, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!37, !17}
!1065 = !DILocalVariable(name: "lock", arg: 1, scope: !1062, file: !21, line: 927, type: !17)
!1066 = !DILocation(line: 927, column: 38, scope: !1062)
!1067 = !DILocation(line: 930, column: 26, scope: !1062)
!1068 = !DILocation(line: 930, column: 32, scope: !1062)
!1069 = !DILocation(line: 930, column: 4, scope: !1062)
!1070 = !DILocation(line: 932, column: 11, scope: !1062)
!1071 = !DILocation(line: 932, column: 17, scope: !1062)
!1072 = !DILocation(line: 932, column: 24, scope: !1062)
!1073 = !DILocation(line: 932, column: 4, scope: !1062)
!1074 = distinct !DISubprogram(name: "MXUser_BindMXMutexRec", scope: !21, file: !21, line: 955, type: !1075, isLocal: false, isDefinition: true, scopeLine: 957, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!17, !114, !37}
!1077 = !DILocalVariable(name: "mutex", arg: 1, scope: !1074, file: !21, line: 955, type: !114)
!1078 = !DILocation(line: 955, column: 43, scope: !1074)
!1079 = !DILocalVariable(name: "rank", arg: 2, scope: !1074, file: !21, line: 956, type: !37)
!1080 = !DILocation(line: 956, column: 31, scope: !1074)
!1081 = !DILocalVariable(name: "name", scope: !1074, file: !21, line: 958, type: !34)
!1082 = !DILocation(line: 958, column: 10, scope: !1074)
!1083 = !DILocalVariable(name: "lock", scope: !1074, file: !21, line: 959, type: !17)
!1084 = !DILocation(line: 959, column: 19, scope: !1074)
!1085 = !DILocation(line: 968, column: 9, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1074, file: !21, line: 968, column: 8)
!1087 = !DILocation(line: 968, column: 26, scope: !1086)
!1088 = !DILocation(line: 968, column: 34, scope: !1086)
!1089 = !DILocation(line: 969, column: 9, scope: !1086)
!1090 = !DILocation(line: 969, column: 28, scope: !1086)
!1091 = !DILocation(line: 969, column: 36, scope: !1086)
!1092 = !DILocation(line: 970, column: 9, scope: !1086)
!1093 = !DILocation(line: 970, column: 29, scope: !1086)
!1094 = !DILocation(line: 970, column: 37, scope: !1086)
!1095 = !DILocation(line: 971, column: 9, scope: !1086)
!1096 = !DILocation(line: 971, column: 41, scope: !1086)
!1097 = !DILocation(line: 971, column: 49, scope: !1086)
!1098 = !DILocation(line: 972, column: 9, scope: !1086)
!1099 = !DILocation(line: 972, column: 26, scope: !1086)
!1100 = !DILocation(line: 968, column: 8, scope: !1101)
!1101 = !DILexicalBlockFile(scope: !1074, file: !21, discriminator: 1)
!1102 = !DILocation(line: 973, column: 8, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1086, file: !21, line: 972, column: 35)
!1104 = !DILocation(line: 982, column: 11, scope: !1074)
!1105 = !DILocation(line: 982, column: 9, scope: !1074)
!1106 = !DILocation(line: 984, column: 29, scope: !1074)
!1107 = !DILocation(line: 984, column: 4, scope: !1074)
!1108 = !DILocation(line: 984, column: 10, scope: !1074)
!1109 = !DILocation(line: 984, column: 17, scope: !1074)
!1110 = !DILocation(line: 984, column: 27, scope: !1074)
!1111 = !DILocation(line: 986, column: 13, scope: !1074)
!1112 = !DILocation(line: 986, column: 31, scope: !1074)
!1113 = !DILocation(line: 986, column: 11, scope: !1074)
!1114 = !DILocation(line: 986, column: 9, scope: !1074)
!1115 = !DILocation(line: 988, column: 8, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1074, file: !21, line: 988, column: 8)
!1117 = !DILocation(line: 988, column: 13, scope: !1116)
!1118 = !DILocation(line: 988, column: 8, scope: !1074)
!1119 = !DILocation(line: 989, column: 58, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1116, file: !21, line: 988, column: 21)
!1121 = !DILocation(line: 989, column: 27, scope: !1120)
!1122 = !DILocation(line: 989, column: 7, scope: !1120)
!1123 = !DILocation(line: 989, column: 13, scope: !1120)
!1124 = !DILocation(line: 989, column: 20, scope: !1120)
!1125 = !DILocation(line: 989, column: 25, scope: !1120)
!1126 = !DILocation(line: 990, column: 4, scope: !1120)
!1127 = !DILocation(line: 991, column: 57, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1116, file: !21, line: 990, column: 11)
!1129 = !DILocation(line: 991, column: 27, scope: !1128)
!1130 = !DILocation(line: 991, column: 7, scope: !1128)
!1131 = !DILocation(line: 991, column: 13, scope: !1128)
!1132 = !DILocation(line: 991, column: 20, scope: !1128)
!1133 = !DILocation(line: 991, column: 25, scope: !1128)
!1134 = !DILocation(line: 994, column: 24, scope: !1074)
!1135 = !DILocation(line: 994, column: 4, scope: !1074)
!1136 = !DILocation(line: 994, column: 10, scope: !1074)
!1137 = !DILocation(line: 994, column: 17, scope: !1074)
!1138 = !DILocation(line: 994, column: 22, scope: !1074)
!1139 = !DILocation(line: 995, column: 37, scope: !1074)
!1140 = !DILocation(line: 995, column: 4, scope: !1074)
!1141 = !DILocation(line: 995, column: 10, scope: !1074)
!1142 = !DILocation(line: 995, column: 17, scope: !1074)
!1143 = !DILocation(line: 995, column: 22, scope: !1074)
!1144 = !DILocation(line: 995, column: 35, scope: !1074)
!1145 = !DILocation(line: 996, column: 4, scope: !1074)
!1146 = !DILocation(line: 996, column: 10, scope: !1074)
!1147 = !DILocation(line: 996, column: 17, scope: !1074)
!1148 = !DILocation(line: 996, column: 26, scope: !1074)
!1149 = !DILocation(line: 997, column: 4, scope: !1074)
!1150 = !DILocation(line: 997, column: 10, scope: !1074)
!1151 = !DILocation(line: 997, column: 17, scope: !1074)
!1152 = !DILocation(line: 997, column: 27, scope: !1074)
!1153 = !DILocation(line: 999, column: 21, scope: !1074)
!1154 = !DILocation(line: 999, column: 27, scope: !1074)
!1155 = !DILocation(line: 999, column: 4, scope: !1074)
!1156 = !DILocation(line: 1000, column: 21, scope: !1074)
!1157 = !DILocation(line: 1000, column: 27, scope: !1074)
!1158 = !DILocation(line: 1000, column: 4, scope: !1074)
!1159 = !DILocation(line: 1001, column: 20, scope: !1074)
!1160 = !DILocation(line: 1001, column: 26, scope: !1074)
!1161 = !DILocation(line: 1001, column: 4, scope: !1074)
!1162 = !DILocation(line: 1003, column: 20, scope: !1074)
!1163 = !DILocation(line: 1003, column: 4, scope: !1074)
!1164 = !DILocation(line: 1003, column: 10, scope: !1074)
!1165 = !DILocation(line: 1003, column: 18, scope: !1074)
!1166 = !DILocation(line: 1005, column: 11, scope: !1074)
!1167 = !DILocation(line: 1005, column: 4, scope: !1074)
!1168 = !DILocation(line: 1006, column: 1, scope: !1074)
!1169 = distinct !DISubprogram(name: "Atomic_WritePtr", scope: !98, file: !98, line: 3829, type: !1170, isLocal: true, isDefinition: true, scopeLine: 3829, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{null, !910, !967}
!1172 = !DILocalVariable(name: "var", arg: 1, scope: !1169, file: !98, line: 3829, type: !910)
!1173 = !DILocation(line: 3829, column: 470, scope: !1169)
!1174 = !DILocalVariable(name: "val", arg: 2, scope: !1169, file: !98, line: 3829, type: !967)
!1175 = !DILocation(line: 3829, column: 488, scope: !1169)
!1176 = !DILocation(line: 3829, column: 510, scope: !1169)
!1177 = !DILocation(line: 3829, column: 534, scope: !1169)
!1178 = !DILocation(line: 3829, column: 523, scope: !1169)
!1179 = !DILocation(line: 3829, column: 495, scope: !1169)
!1180 = !DILocation(line: 3829, column: 540, scope: !1169)
!1181 = distinct !DISubprogram(name: "MXUser_IncRefRecLock", scope: !21, file: !21, line: 1027, type: !557, isLocal: false, isDefinition: true, scopeLine: 1028, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!1182 = !DILocalVariable(name: "lock", arg: 1, scope: !1181, file: !21, line: 1027, type: !17)
!1183 = !DILocation(line: 1027, column: 37, scope: !1181)
!1184 = !DILocation(line: 1030, column: 26, scope: !1181)
!1185 = !DILocation(line: 1030, column: 32, scope: !1181)
!1186 = !DILocation(line: 1030, column: 4, scope: !1181)
!1187 = !DILocation(line: 1033, column: 18, scope: !1181)
!1188 = !DILocation(line: 1033, column: 24, scope: !1181)
!1189 = !DILocation(line: 1033, column: 4, scope: !1181)
!1190 = !DILocation(line: 1034, column: 1, scope: !1181)
!1191 = distinct !DISubprogram(name: "Atomic_Inc32", scope: !98, file: !98, line: 1636, type: !1192, isLocal: true, isDefinition: true, scopeLine: 1637, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{null, !343}
!1194 = !DILocalVariable(name: "var", arg: 1, scope: !1191, file: !98, line: 1636, type: !343)
!1195 = !DILocation(line: 1636, column: 29, scope: !1191)
!1196 = !DILocation(line: 1645, column: 15, scope: !1191)
!1197 = !DILocation(line: 1645, column: 20, scope: !1191)
!1198 = !DILocation(line: 1643, column: 4, scope: !1191)
!1199 = !{i32 130397}
!1200 = !DILocation(line: 1655, column: 1, scope: !1191)
!1201 = distinct !DISubprogram(name: "MXUser_DecRefRecLock", scope: !21, file: !21, line: 1055, type: !557, isLocal: false, isDefinition: true, scopeLine: 1056, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!1202 = !DILocalVariable(name: "lock", arg: 1, scope: !1201, file: !21, line: 1055, type: !17)
!1203 = !DILocation(line: 1055, column: 37, scope: !1201)
!1204 = !DILocation(line: 1058, column: 26, scope: !1201)
!1205 = !DILocation(line: 1058, column: 32, scope: !1201)
!1206 = !DILocation(line: 1058, column: 4, scope: !1201)
!1207 = !DILocation(line: 1060, column: 29, scope: !1201)
!1208 = !DILocation(line: 1060, column: 4, scope: !1201)
!1209 = !DILocation(line: 1061, column: 1, scope: !1201)
!1210 = distinct !DISubprogram(name: "MXRecLockCreateInternal", scope: !4, file: !4, line: 174, type: !1211, isLocal: true, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!70, !319}
!1213 = !DILocalVariable(name: "lock", arg: 1, scope: !1210, file: !4, line: 174, type: !319)
!1214 = !DILocation(line: 174, column: 36, scope: !1210)
!1215 = !DILocation(line: 176, column: 31, scope: !1210)
!1216 = !DILocation(line: 176, column: 37, scope: !1210)
!1217 = !DILocation(line: 176, column: 11, scope: !1210)
!1218 = !DILocation(line: 176, column: 4, scope: !1210)
!1219 = distinct !DISubprogram(name: "MXRecLockSetNoOwner", scope: !4, file: !4, line: 227, type: !753, isLocal: true, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!1220 = !DILocalVariable(name: "lock", arg: 1, scope: !1219, file: !4, line: 227, type: !319)
!1221 = !DILocation(line: 227, column: 32, scope: !1219)
!1222 = !DILocation(line: 230, column: 12, scope: !1219)
!1223 = !DILocation(line: 230, column: 18, scope: !1219)
!1224 = !DILocation(line: 230, column: 4, scope: !1219)
!1225 = !DILocation(line: 231, column: 1, scope: !1219)
!1226 = distinct !DISubprogram(name: "Atomic_Read32", scope: !98, file: !98, line: 911, type: !1227, isLocal: true, isDefinition: true, scopeLine: 912, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!28, !1229}
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64, align: 64)
!1230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!1231 = !DILocalVariable(name: "var", arg: 1, scope: !1226, file: !98, line: 911, type: !1229)
!1232 = !DILocation(line: 911, column: 36, scope: !1226)
!1233 = !DILocalVariable(name: "value", scope: !1226, file: !98, line: 913, type: !28)
!1234 = !DILocation(line: 913, column: 11, scope: !1226)
!1235 = !DILocation(line: 938, column: 14, scope: !1226)
!1236 = !DILocation(line: 938, column: 19, scope: !1226)
!1237 = !DILocation(line: 935, column: 4, scope: !1226)
!1238 = !{i32 124774}
!1239 = !DILocation(line: 953, column: 11, scope: !1226)
!1240 = !DILocation(line: 953, column: 4, scope: !1226)
!1241 = distinct !DISubprogram(name: "MXRecLockCount", scope: !4, file: !4, line: 290, type: !1242, isLocal: true, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!70, !896}
!1244 = !DILocalVariable(name: "lock", arg: 1, scope: !1241, file: !4, line: 290, type: !896)
!1245 = !DILocation(line: 290, column: 33, scope: !1241)
!1246 = !DILocation(line: 295, column: 11, scope: !1241)
!1247 = !DILocation(line: 295, column: 17, scope: !1241)
!1248 = !DILocation(line: 295, column: 4, scope: !1241)
!1249 = distinct !DISubprogram(name: "Atomic_ReadDec32", scope: !98, file: !98, line: 1950, type: !1250, isLocal: true, isDefinition: true, scopeLine: 1951, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!28, !343}
!1252 = !DILocalVariable(name: "var", arg: 1, scope: !1249, file: !98, line: 1950, type: !343)
!1253 = !DILocation(line: 1950, column: 33, scope: !1249)
!1254 = !DILocation(line: 1952, column: 28, scope: !1249)
!1255 = !DILocation(line: 1952, column: 11, scope: !1249)
!1256 = !DILocation(line: 1952, column: 4, scope: !1249)
!1257 = distinct !DISubprogram(name: "MXRecLockDestroy", scope: !4, file: !4, line: 279, type: !753, isLocal: true, isDefinition: true, scopeLine: 280, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!1258 = !DILocalVariable(name: "lock", arg: 1, scope: !1257, file: !4, line: 279, type: !319)
!1259 = !DILocation(line: 279, column: 29, scope: !1257)
!1260 = !DILocalVariable(name: "err", scope: !1257, file: !4, line: 281, type: !70)
!1261 = !DILocation(line: 281, column: 8, scope: !1257)
!1262 = !DILocation(line: 281, column: 39, scope: !1257)
!1263 = !DILocation(line: 281, column: 14, scope: !1257)
!1264 = !DILocation(line: 286, column: 1, scope: !1257)
!1265 = distinct !DISubprogram(name: "Atomic_ReadAdd32", scope: !98, file: !98, line: 1864, type: !1266, isLocal: true, isDefinition: true, scopeLine: 1866, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{!28, !343, !28}
!1268 = !DILocalVariable(name: "var", arg: 1, scope: !1265, file: !98, line: 1864, type: !343)
!1269 = !DILocation(line: 1864, column: 33, scope: !1265)
!1270 = !DILocalVariable(name: "val", arg: 2, scope: !1265, file: !98, line: 1865, type: !28)
!1271 = !DILocation(line: 1865, column: 25, scope: !1265)
!1272 = !DILocation(line: 1896, column: 15, scope: !1265)
!1273 = !DILocation(line: 1896, column: 20, scope: !1265)
!1274 = !DILocation(line: 1897, column: 14, scope: !1265)
!1275 = !DILocation(line: 1893, column: 4, scope: !1265)
!1276 = !{i32 132492}
!1277 = !DILocation(line: 1900, column: 11, scope: !1265)
!1278 = !DILocation(line: 1900, column: 4, scope: !1265)
!1279 = distinct !DISubprogram(name: "MXRecLockDestroyInternal", scope: !4, file: !4, line: 181, type: !1211, isLocal: true, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!1280 = !DILocalVariable(name: "lock", arg: 1, scope: !1279, file: !4, line: 181, type: !319)
!1281 = !DILocation(line: 181, column: 37, scope: !1279)
!1282 = !DILocalVariable(name: "err", scope: !1279, file: !4, line: 183, type: !70)
!1283 = !DILocation(line: 183, column: 8, scope: !1279)
!1284 = !DILocation(line: 183, column: 37, scope: !1279)
!1285 = !DILocation(line: 183, column: 43, scope: !1279)
!1286 = !DILocation(line: 183, column: 14, scope: !1279)
!1287 = !DILocation(line: 188, column: 8, scope: !1279)
!1288 = !DILocalVariable(name: "version", scope: !1289, file: !4, line: 200, type: !208)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !4, line: 188, column: 37)
!1290 = distinct !DILexicalBlock(scope: !1279, file: !4, line: 188, column: 8)
!1291 = !DILocation(line: 200, column: 19, scope: !1289)
!1292 = !DILocation(line: 200, column: 29, scope: !1289)
!1293 = !DILocation(line: 202, column: 18, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1289, file: !4, line: 202, column: 11)
!1295 = !DILocation(line: 202, column: 11, scope: !1294)
!1296 = !DILocation(line: 202, column: 35, scope: !1294)
!1297 = !DILocation(line: 202, column: 11, scope: !1289)
!1298 = !DILocation(line: 203, column: 14, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1294, file: !4, line: 202, column: 41)
!1300 = !DILocation(line: 204, column: 7, scope: !1299)
!1301 = !DILocation(line: 205, column: 4, scope: !1289)
!1302 = !DILocation(line: 208, column: 11, scope: !1279)
!1303 = !DILocation(line: 208, column: 4, scope: !1279)
!1304 = distinct !DISubprogram(name: "MXRecLockIncCount", scope: !4, file: !4, line: 300, type: !1305, isLocal: true, isDefinition: true, scopeLine: 302, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{null, !319, !70}
!1307 = !DILocalVariable(name: "lock", arg: 1, scope: !1304, file: !4, line: 300, type: !319)
!1308 = !DILocation(line: 300, column: 30, scope: !1304)
!1309 = !DILocalVariable(name: "count", arg: 2, scope: !1304, file: !4, line: 301, type: !70)
!1310 = !DILocation(line: 301, column: 23, scope: !1304)
!1311 = !DILocalVariable(name: "newCount", scope: !1304, file: !4, line: 303, type: !70)
!1312 = !DILocation(line: 303, column: 8, scope: !1304)
!1313 = !DILocation(line: 303, column: 44, scope: !1304)
!1314 = !DILocation(line: 303, column: 20, scope: !1304)
!1315 = !DILocation(line: 303, column: 26, scope: !1304)
!1316 = !DILocation(line: 303, column: 41, scope: !1304)
!1317 = !DILocation(line: 307, column: 28, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1304, file: !4, line: 307, column: 8)
!1319 = !DILocation(line: 307, column: 40, scope: !1318)
!1320 = !DILocation(line: 307, column: 37, scope: !1318)
!1321 = !DILocation(line: 307, column: 26, scope: !1318)
!1322 = !DILocation(line: 307, column: 25, scope: !1318)
!1323 = !DILocation(line: 307, column: 8, scope: !1318)
!1324 = !DILocation(line: 307, column: 8, scope: !1304)
!1325 = !DILocation(line: 308, column: 25, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1318, file: !4, line: 307, column: 52)
!1327 = !DILocation(line: 308, column: 7, scope: !1326)
!1328 = !DILocation(line: 309, column: 4, scope: !1326)
!1329 = !DILocation(line: 310, column: 1, scope: !1304)
!1330 = distinct !DISubprogram(name: "MXRecLockAcquireInternal", scope: !4, file: !4, line: 242, type: !1211, isLocal: true, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!1331 = !DILocalVariable(name: "lock", arg: 1, scope: !1330, file: !4, line: 242, type: !319)
!1332 = !DILocation(line: 242, column: 37, scope: !1330)
!1333 = !DILocation(line: 244, column: 31, scope: !1330)
!1334 = !DILocation(line: 244, column: 37, scope: !1330)
!1335 = !DILocation(line: 244, column: 11, scope: !1330)
!1336 = !DILocation(line: 244, column: 4, scope: !1330)
!1337 = distinct !DISubprogram(name: "MXRecLockSetOwner", scope: !4, file: !4, line: 235, type: !753, isLocal: true, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!1338 = !DILocalVariable(name: "lock", arg: 1, scope: !1337, file: !4, line: 235, type: !319)
!1339 = !DILocation(line: 235, column: 30, scope: !1337)
!1340 = !DILocation(line: 237, column: 27, scope: !1337)
!1341 = !DILocation(line: 237, column: 4, scope: !1337)
!1342 = !DILocation(line: 237, column: 10, scope: !1337)
!1343 = !DILocation(line: 237, column: 25, scope: !1337)
!1344 = !DILocation(line: 238, column: 1, scope: !1337)
!1345 = distinct !DISubprogram(name: "MXUserNativeThreadID", scope: !4, file: !4, line: 213, type: !1346, isLocal: true, isDefinition: true, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!93}
!1348 = !DILocation(line: 215, column: 11, scope: !1345)
!1349 = !DILocation(line: 215, column: 4, scope: !1345)
!1350 = distinct !DISubprogram(name: "MXRecLockDecCount", scope: !4, file: !4, line: 314, type: !1305, isLocal: true, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!1351 = !DILocalVariable(name: "lock", arg: 1, scope: !1350, file: !4, line: 314, type: !319)
!1352 = !DILocation(line: 314, column: 30, scope: !1350)
!1353 = !DILocalVariable(name: "count", arg: 2, scope: !1350, file: !4, line: 315, type: !70)
!1354 = !DILocation(line: 315, column: 23, scope: !1350)
!1355 = !DILocalVariable(name: "newCount", scope: !1350, file: !4, line: 317, type: !70)
!1356 = !DILocation(line: 317, column: 8, scope: !1350)
!1357 = !DILocation(line: 317, column: 44, scope: !1350)
!1358 = !DILocation(line: 317, column: 20, scope: !1350)
!1359 = !DILocation(line: 317, column: 26, scope: !1350)
!1360 = !DILocation(line: 317, column: 41, scope: !1350)
!1361 = !DILocation(line: 321, column: 28, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1350, file: !4, line: 321, column: 8)
!1363 = !DILocation(line: 321, column: 37, scope: !1362)
!1364 = !DILocation(line: 321, column: 26, scope: !1362)
!1365 = !DILocation(line: 321, column: 25, scope: !1362)
!1366 = !DILocation(line: 321, column: 8, scope: !1362)
!1367 = !DILocation(line: 321, column: 8, scope: !1350)
!1368 = !DILocation(line: 322, column: 27, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1362, file: !4, line: 321, column: 48)
!1370 = !DILocation(line: 322, column: 7, scope: !1369)
!1371 = !DILocation(line: 323, column: 4, scope: !1369)
!1372 = !DILocation(line: 324, column: 1, scope: !1350)
!1373 = distinct !DISubprogram(name: "MXRecLockReleaseInternal", scope: !4, file: !4, line: 256, type: !1211, isLocal: true, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!1374 = !DILocalVariable(name: "lock", arg: 1, scope: !1373, file: !4, line: 256, type: !319)
!1375 = !DILocation(line: 256, column: 37, scope: !1373)
!1376 = !DILocation(line: 258, column: 33, scope: !1373)
!1377 = !DILocation(line: 258, column: 39, scope: !1373)
!1378 = !DILocation(line: 258, column: 11, scope: !1373)
!1379 = !DILocation(line: 258, column: 4, scope: !1373)
!1380 = distinct !DISubprogram(name: "MXRecLockTryAcquireInternal", scope: !4, file: !4, line: 249, type: !1211, isLocal: true, isDefinition: true, scopeLine: 250, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!1381 = !DILocalVariable(name: "lock", arg: 1, scope: !1380, file: !4, line: 249, type: !319)
!1382 = !DILocation(line: 249, column: 40, scope: !1380)
!1383 = !DILocation(line: 251, column: 34, scope: !1380)
!1384 = !DILocation(line: 251, column: 40, scope: !1380)
!1385 = !DILocation(line: 251, column: 11, scope: !1380)
!1386 = !DILocation(line: 251, column: 4, scope: !1380)
!1387 = distinct !DISubprogram(name: "Atomic_Read64", scope: !98, file: !98, line: 2143, type: !1388, isLocal: true, isDefinition: true, scopeLine: 2144, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!104, !1390}
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64, align: 64)
!1391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!1392 = !DILocalVariable(name: "var", arg: 1, scope: !1387, file: !98, line: 2143, type: !1390)
!1393 = !DILocation(line: 2143, column: 36, scope: !1387)
!1394 = !DILocalVariable(name: "value", scope: !1387, file: !98, line: 2146, type: !104)
!1395 = !DILocation(line: 2146, column: 11, scope: !1387)
!1396 = !DILocation(line: 2160, column: 14, scope: !1387)
!1397 = !DILocation(line: 2160, column: 19, scope: !1387)
!1398 = !DILocation(line: 2157, column: 4, scope: !1387)
!1399 = !{i32 134642}
!1400 = !DILocation(line: 2213, column: 11, scope: !1387)
!1401 = !DILocation(line: 2213, column: 4, scope: !1387)
!1402 = distinct !DISubprogram(name: "Atomic_ReadIfEqualWrite64", scope: !98, file: !98, line: 1190, type: !1403, isLocal: true, isDefinition: true, scopeLine: 1193, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!104, !1405, !104, !104}
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, align: 64)
!1406 = !DILocalVariable(name: "var", arg: 1, scope: !1402, file: !98, line: 1190, type: !1405)
!1407 = !DILocation(line: 1190, column: 42, scope: !1402)
!1408 = !DILocalVariable(name: "oldVal", arg: 2, scope: !1402, file: !98, line: 1191, type: !104)
!1409 = !DILocation(line: 1191, column: 34, scope: !1402)
!1410 = !DILocalVariable(name: "newVal", arg: 3, scope: !1402, file: !98, line: 1192, type: !104)
!1411 = !DILocation(line: 1192, column: 34, scope: !1402)
!1412 = !DILocalVariable(name: "val", scope: !1402, file: !98, line: 1240, type: !104)
!1413 = !DILocation(line: 1240, column: 11, scope: !1402)
!1414 = !DILocation(line: 1246, column: 15, scope: !1402)
!1415 = !DILocation(line: 1246, column: 20, scope: !1402)
!1416 = !DILocation(line: 1247, column: 14, scope: !1402)
!1417 = !DILocation(line: 1248, column: 14, scope: !1402)
!1418 = !DILocation(line: 1243, column: 4, scope: !1402)
!1419 = !{i32 127084}
!1420 = !DILocation(line: 1251, column: 11, scope: !1402)
!1421 = !DILocation(line: 1251, column: 4, scope: !1402)
!1422 = distinct !DISubprogram(name: "Atomic_Write64", scope: !98, file: !98, line: 2604, type: !1423, isLocal: true, isDefinition: true, scopeLine: 2606, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !124)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{null, !1405, !104}
!1425 = !DILocalVariable(name: "var", arg: 1, scope: !1422, file: !98, line: 2604, type: !1405)
!1426 = !DILocation(line: 2604, column: 31, scope: !1422)
!1427 = !DILocalVariable(name: "val", arg: 2, scope: !1422, file: !98, line: 2605, type: !104)
!1428 = !DILocation(line: 2605, column: 23, scope: !1422)
!1429 = !DILocation(line: 2622, column: 15, scope: !1422)
!1430 = !DILocation(line: 2622, column: 20, scope: !1422)
!1431 = !DILocation(line: 2623, column: 14, scope: !1422)
!1432 = !DILocation(line: 2620, column: 4, scope: !1422)
!1433 = !{i32 138316}
!1434 = !DILocation(line: 2643, column: 1, scope: !1422)
