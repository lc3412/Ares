; ModuleID = './ulRW.o.i'
source_filename = "./ulRW.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.MXUserHeader = type { i32, i8*, i32, %struct.anon, {}*, {}*, %struct.ListItem }
%struct.anon = type { i32 }
%struct.ListItem = type { %struct.ListItem*, %struct.ListItem* }
%struct.MXUserRWLock = type { %struct.MXUserHeader, i8, %union.pthread_rwlock_t, %struct.MXRecLock, %struct.Atomic_uint32, %struct.HashTable*, %struct.Atomic_uint64, %struct.Atomic_uint64 }
%union.pthread_rwlock_t = type { %struct.anon.0 }
%struct.anon.0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, [7 x i8], i64, i32 }
%struct.MXRecLock = type { %union.pthread_mutex_t, i32, i64 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct.Atomic_uint32 = type { i32 }
%struct.HashTable = type opaque
%struct.Atomic_uint64 = type { i64 }
%union.pthread_rwlockattr_t = type { i64 }
%struct.MXUserHeldStats = type { i64, %struct.MXUserBasicStats, %struct.Atomic_uint64 }
%struct.MXUserBasicStats = type { i8*, i64, i64, i64, i64, double }
%struct.MXUserAcquireStats = type { %struct.MXUserAcquisitionStats, %struct.Atomic_uint64 }
%struct.MXUserAcquisitionStats = type { double, i64, i64, i64, i64, i64, i64, i64, %struct.MXUserBasicStats }
%struct.MXUserHisto = type opaque
%struct.HolderContext = type { i32, i64 }
%union.pthread_mutexattr_t = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"%s: Read-write lock @ 0x%p\0A\00", align 1
@__FUNCTION__.MXUserDumpRWLock = private unnamed_addr constant [17 x i8] c"MXUserDumpRWLock\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"\09signature 0x%X\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"\09name %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"\09rank 0x%X\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"\09serial number %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"\09address of native lock 0x%p\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"\09count %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"\09holderCount %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"RW-%p\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"RWemul-%p\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"%s: unknown stats mode: %d!\0A\00", align 1
@__FUNCTION__.MXUser_CreateRWLock = private unnamed_addr constant [20 x i8] c"MXUser_CreateRWLock\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"%s: native lock initialization routine failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"%s: Destroy on an acquired read-write lock\0A\00", align 1
@__FUNCTION__.MXUser_DestroyRWLock = private unnamed_addr constant [21 x i8] c"MXUser_DestroyRWLock\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"%s: Internal error (%d)\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"%s: unknown query type %d\0A\00", align 1
@__FUNCTION__.MXUser_IsCurThreadHoldingRWLock = private unnamed_addr constant [32 x i8] c"MXUser_IsCurThreadHoldingRWLock\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"%s: Release of an unacquired read-write lock\0A\00", align 1
@__FUNCTION__.MXUser_ReleaseRWLock = private unnamed_addr constant [21 x i8] c"MXUser_ReleaseRWLock\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"HOT LOCK (%s); contention ratio %f\0A\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"2.18\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"%s: AcquireFor%s after AcquireFor%s\0A\00", align 1
@__FUNCTION__.MXUserAcquisition = private unnamed_addr constant [18 x i8] c"MXUserAcquisition\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"Read\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"Write\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"%s: Error %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @MXUserDumpRWLock(%struct.MXUserHeader*) #0 !dbg !160 {
  %2 = alloca %struct.MXUserHeader*, align 8
  %3 = alloca %struct.MXUserRWLock*, align 8
  store %struct.MXUserHeader* %0, %struct.MXUserHeader** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserHeader** %2, metadata !165, metadata !166), !dbg !167
  call void @llvm.dbg.declare(metadata %struct.MXUserRWLock** %3, metadata !168, metadata !166), !dbg !169
  %4 = load %struct.MXUserHeader*, %struct.MXUserHeader** %2, align 8, !dbg !170
  %5 = bitcast %struct.MXUserHeader* %4 to %struct.MXUserRWLock*, !dbg !171
  store %struct.MXUserRWLock* %5, %struct.MXUserRWLock** %3, align 8, !dbg !169
  %6 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %3, align 8, !dbg !172
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.MXUserDumpRWLock, i32 0, i32 0), %struct.MXUserRWLock* %6), !dbg !173
  %7 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %3, align 8, !dbg !174
  %8 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %7, i32 0, i32 0, !dbg !175
  %9 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %8, i32 0, i32 0, !dbg !176
  %10 = load i32, i32* %9, align 8, !dbg !176
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 %10), !dbg !177
  %11 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %3, align 8, !dbg !178
  %12 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %11, i32 0, i32 0, !dbg !179
  %13 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %12, i32 0, i32 1, !dbg !180
  %14 = load i8*, i8** %13, align 8, !dbg !180
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* %14), !dbg !181
  %15 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %3, align 8, !dbg !182
  %16 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %15, i32 0, i32 0, !dbg !183
  %17 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %16, i32 0, i32 2, !dbg !184
  %18 = load i32, i32* %17, align 8, !dbg !184
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i32 %18), !dbg !185
  %19 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %3, align 8, !dbg !186
  %20 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %19, i32 0, i32 0, !dbg !187
  %21 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %20, i32 0, i32 3, !dbg !188
  %22 = bitcast %struct.anon* %21 to i32*, !dbg !189
  %23 = load i32, i32* %22, align 4, !dbg !189
  %24 = and i32 %23, 16777215, !dbg !189
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i32 %24), !dbg !190
  %25 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %3, align 8, !dbg !191
  %26 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %25, i32 0, i32 1, !dbg !193
  %27 = load i8, i8* %26, align 8, !dbg !193
  %28 = icmp ne i8 %27, 0, !dbg !194
  %29 = xor i1 %28, true, !dbg !194
  %30 = xor i1 %29, true, !dbg !195
  %31 = zext i1 %30 to i32, !dbg !195
  %32 = sext i32 %31 to i64, !dbg !195
  %33 = icmp ne i64 %32, 0, !dbg !196
  br i1 %33, label %34, label %37, !dbg !197

; <label>:34:                                     ; preds = %1
  %35 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %3, align 8, !dbg !198
  %36 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %35, i32 0, i32 2, !dbg !200
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0), %union.pthread_rwlock_t* %36), !dbg !201
  br label %41, !dbg !202

; <label>:37:                                     ; preds = %1
  %38 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %3, align 8, !dbg !203
  %39 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %38, i32 0, i32 3, !dbg !205
  %40 = call i32 @MXRecLockCount(%struct.MXRecLock* %39), !dbg !206
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i32 %40), !dbg !207
  br label %41

; <label>:41:                                     ; preds = %37, %34
  %42 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %3, align 8, !dbg !209
  %43 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %42, i32 0, i32 4, !dbg !210
  %44 = call i32 @Atomic_Read32(%struct.Atomic_uint32* %43), !dbg !211
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i32 %44), !dbg !212
  ret void, !dbg !214
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @Warning(i8*, ...) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @MXRecLockCount(%struct.MXRecLock*) #3 !dbg !215 {
  %2 = alloca %struct.MXRecLock*, align 8
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !220, metadata !166), !dbg !221
  %3 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !222
  %4 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %3, i32 0, i32 1, !dbg !223
  %5 = load i32, i32* %4, align 8, !dbg !223
  ret i32 %5, !dbg !224
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @Atomic_Read32(%struct.Atomic_uint32*) #3 !dbg !225 {
  %2 = alloca %struct.Atomic_uint32*, align 8
  %3 = alloca i32, align 4
  store %struct.Atomic_uint32* %0, %struct.Atomic_uint32** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint32** %2, metadata !230, metadata !166), !dbg !231
  call void @llvm.dbg.declare(metadata i32* %3, metadata !232, metadata !166), !dbg !233
  %4 = load %struct.Atomic_uint32*, %struct.Atomic_uint32** %2, align 8, !dbg !234
  %5 = getelementptr inbounds %struct.Atomic_uint32, %struct.Atomic_uint32* %4, i32 0, i32 0, !dbg !235
  %6 = call i32 asm sideeffect "mov $1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i32* %5) #9, !dbg !236, !srcloc !237
  store i32 %6, i32* %3, align 4, !dbg !236
  %7 = load i32, i32* %3, align 4, !dbg !238
  ret i32 %7, !dbg !239
}

; Function Attrs: nounwind uwtable
define %struct.MXUserRWLock* @MXUser_CreateRWLock(i8*, i32) #0 !dbg !240 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.MXUserRWLock*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !245, metadata !166), !dbg !246
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !247, metadata !166), !dbg !248
  call void @llvm.dbg.declare(metadata i8* %5, metadata !249, metadata !166), !dbg !250
  call void @llvm.dbg.declare(metadata i8** %6, metadata !251, metadata !166), !dbg !252
  call void @llvm.dbg.declare(metadata i8* %7, metadata !253, metadata !166), !dbg !254
  %10 = call signext i8 @MXUserNativeRWSupported(), !dbg !255
  store i8 %10, i8* %7, align 1, !dbg !254
  call void @llvm.dbg.declare(metadata %struct.MXUserRWLock** %8, metadata !256, metadata !166), !dbg !257
  %11 = call i8* @UtilSafeCalloc0(i64 1, i64 208), !dbg !258
  %12 = bitcast i8* %11 to %struct.MXUserRWLock*, !dbg !258
  store %struct.MXUserRWLock* %12, %struct.MXUserRWLock** %8, align 8, !dbg !257
  %13 = load i8*, i8** %3, align 8, !dbg !259
  %14 = icmp eq i8* %13, null, !dbg !261
  br i1 %14, label %15, label %30, !dbg !262

; <label>:15:                                     ; preds = %2
  %16 = load i8, i8* %7, align 1, !dbg !263
  %17 = icmp ne i8 %16, 0, !dbg !266
  %18 = xor i1 %17, true, !dbg !266
  %19 = xor i1 %18, true, !dbg !267
  %20 = zext i1 %19 to i32, !dbg !267
  %21 = sext i32 %20 to i64, !dbg !267
  %22 = icmp ne i64 %21, 0, !dbg !268
  br i1 %22, label %23, label %26, !dbg !269

; <label>:23:                                     ; preds = %15
  %24 = call i8* @llvm.returnaddress(i32 0), !dbg !270
  %25 = call i8* (i64*, i8*, ...) @Str_SafeAsprintf(i64* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* %24), !dbg !272
  store i8* %25, i8** %6, align 8, !dbg !274
  br label %29, !dbg !275

; <label>:26:                                     ; preds = %15
  %27 = call i8* @llvm.returnaddress(i32 0), !dbg !276
  %28 = call i8* (i64*, i8*, ...) @Str_SafeAsprintf(i64* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* %27), !dbg !278
  store i8* %28, i8** %6, align 8, !dbg !280
  br label %29

; <label>:29:                                     ; preds = %26, %23
  br label %33, !dbg !281

; <label>:30:                                     ; preds = %2
  %31 = load i8*, i8** %3, align 8, !dbg !282
  %32 = call i8* @UtilSafeStrdup0(i8* %31), !dbg !284
  store i8* %32, i8** %6, align 8, !dbg !285
  br label %33

; <label>:33:                                     ; preds = %30, %29
  %34 = call i32 @MXUserGetSignature(i32 1), !dbg !286
  %35 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %8, align 8, !dbg !287
  %36 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %35, i32 0, i32 0, !dbg !288
  %37 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %36, i32 0, i32 0, !dbg !289
  store i32 %34, i32* %37, align 8, !dbg !290
  %38 = load i8*, i8** %6, align 8, !dbg !291
  %39 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %8, align 8, !dbg !292
  %40 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %39, i32 0, i32 0, !dbg !293
  %41 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %40, i32 0, i32 1, !dbg !294
  store i8* %38, i8** %41, align 8, !dbg !295
  %42 = load i32, i32* %4, align 4, !dbg !296
  %43 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %8, align 8, !dbg !297
  %44 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %43, i32 0, i32 0, !dbg !298
  %45 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %44, i32 0, i32 2, !dbg !299
  store i32 %42, i32* %45, align 8, !dbg !300
  %46 = call i32 @MXUserAllocSerialNumber(), !dbg !301
  %47 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %8, align 8, !dbg !302
  %48 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %47, i32 0, i32 0, !dbg !303
  %49 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %48, i32 0, i32 3, !dbg !304
  %50 = bitcast %struct.anon* %49 to i32*, !dbg !305
  %51 = load i32, i32* %50, align 4, !dbg !306
  %52 = and i32 %46, 16777215, !dbg !306
  %53 = and i32 %51, -16777216, !dbg !306
  %54 = or i32 %53, %52, !dbg !306
  store i32 %54, i32* %50, align 4, !dbg !306
  %55 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %8, align 8, !dbg !307
  %56 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %55, i32 0, i32 0, !dbg !308
  %57 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %56, i32 0, i32 4, !dbg !309
  %58 = bitcast {}** %57 to void (%struct.MXUserHeader*)**, !dbg !309
  store void (%struct.MXUserHeader*)* @MXUserDumpRWLock, void (%struct.MXUserHeader*)** %58, align 8, !dbg !310
  %59 = load i8, i8* %7, align 1, !dbg !311
  %60 = sext i8 %59 to i32, !dbg !311
  %61 = icmp ne i32 %60, 0, !dbg !311
  br i1 %61, label %62, label %68, !dbg !312

; <label>:62:                                     ; preds = %33
  %63 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %8, align 8, !dbg !313
  %64 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %63, i32 0, i32 2, !dbg !315
  %65 = call signext i8 @MXUserNativeRWInit(%union.pthread_rwlock_t* %64), !dbg !316
  %66 = sext i8 %65 to i32, !dbg !316
  %67 = icmp ne i32 %66, 0, !dbg !317
  br label %68

; <label>:68:                                     ; preds = %62, %33
  %69 = phi i1 [ false, %33 ], [ %67, %62 ]
  %70 = zext i1 %69 to i32, !dbg !318
  %71 = trunc i32 %70 to i8, !dbg !320
  %72 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %8, align 8, !dbg !321
  %73 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %72, i32 0, i32 1, !dbg !322
  store i8 %71, i8* %73, align 8, !dbg !323
  %74 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %8, align 8, !dbg !324
  %75 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %74, i32 0, i32 3, !dbg !325
  %76 = call signext i8 @MXRecLockInit(%struct.MXRecLock* %75), !dbg !326
  store i8 %76, i8* %5, align 1, !dbg !327
  %77 = load i8, i8* %5, align 1, !dbg !328
  %78 = icmp ne i8 %77, 0, !dbg !330
  %79 = xor i1 %78, true, !dbg !330
  %80 = xor i1 %79, true, !dbg !331
  %81 = zext i1 %80 to i32, !dbg !331
  %82 = sext i32 %81 to i64, !dbg !331
  %83 = icmp ne i64 %82, 0, !dbg !332
  br i1 %83, label %84, label %120, !dbg !333

; <label>:84:                                     ; preds = %68
  call void @llvm.dbg.declare(metadata i32* %9, metadata !334, metadata !166), !dbg !336
  %85 = call %struct.HashTable* @HashTable_Alloc(i32 256, i32 10, void (i8*)* @MXUserFreeHashEntry), !dbg !337
  %86 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %8, align 8, !dbg !338
  %87 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %86, i32 0, i32 5, !dbg !339
  store %struct.HashTable* %85, %struct.HashTable** %87, align 8, !dbg !340
  %88 = call i32 @MXUserStatsMode(), !dbg !341
  store i32 %88, i32* %9, align 4, !dbg !342
  %89 = call i32 @MXUserStatsMode(), !dbg !343
  switch i32 %89, label %115 [
    i32 0, label %90
    i32 1, label %99
    i32 2, label %106
  ], !dbg !344

; <label>:90:                                     ; preds = %84
  %91 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %8, align 8, !dbg !345
  %92 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %91, i32 0, i32 7, !dbg !347
  %93 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %8, align 8, !dbg !348
  %94 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %93, i32 0, i32 6, !dbg !349
  call void @MXUserDisableStats(%struct.Atomic_uint64* %92, %struct.Atomic_uint64* %94), !dbg !350
  %95 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %8, align 8, !dbg !351
  %96 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %95, i32 0, i32 0, !dbg !352
  %97 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %96, i32 0, i32 5, !dbg !353
  %98 = bitcast {}** %97 to void (%struct.MXUserHeader*)**, !dbg !353
  store void (%struct.MXUserHeader*)* null, void (%struct.MXUserHeader*)** %98, align 8, !dbg !354
  br label %117, !dbg !355

; <label>:99:                                     ; preds = %84
  %100 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %8, align 8, !dbg !356
  %101 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %100, i32 0, i32 7, !dbg !357
  call void @MXUserEnableStats(%struct.Atomic_uint64* %101, %struct.Atomic_uint64* null), !dbg !358
  %102 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %8, align 8, !dbg !359
  %103 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %102, i32 0, i32 0, !dbg !360
  %104 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %103, i32 0, i32 5, !dbg !361
  %105 = bitcast {}** %104 to void (%struct.MXUserHeader*)**, !dbg !361
  store void (%struct.MXUserHeader*)* @MXUserStatsActionRW, void (%struct.MXUserHeader*)** %105, align 8, !dbg !362
  br label %117, !dbg !363

; <label>:106:                                    ; preds = %84
  %107 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %8, align 8, !dbg !364
  %108 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %107, i32 0, i32 7, !dbg !365
  %109 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %8, align 8, !dbg !366
  %110 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %109, i32 0, i32 6, !dbg !367
  call void @MXUserEnableStats(%struct.Atomic_uint64* %108, %struct.Atomic_uint64* %110), !dbg !368
  %111 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %8, align 8, !dbg !369
  %112 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %111, i32 0, i32 0, !dbg !370
  %113 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %112, i32 0, i32 5, !dbg !371
  %114 = bitcast {}** %113 to void (%struct.MXUserHeader*)**, !dbg !371
  store void (%struct.MXUserHeader*)* @MXUserStatsActionRW, void (%struct.MXUserHeader*)** %114, align 8, !dbg !372
  br label %117, !dbg !373

; <label>:115:                                    ; preds = %84
  %116 = load i32, i32* %9, align 4, !dbg !374
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.MXUser_CreateRWLock, i32 0, i32 0), i32 %116) #10, !dbg !375
  unreachable, !dbg !375

; <label>:117:                                    ; preds = %106, %99, %90
  %118 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %8, align 8, !dbg !376
  %119 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %118, i32 0, i32 0, !dbg !377
  call void @MXUserAddToList(%struct.MXUserHeader* %119), !dbg !378
  br label %121, !dbg !379

; <label>:120:                                    ; preds = %68
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.MXUser_CreateRWLock, i32 0, i32 0)) #10, !dbg !380
  unreachable, !dbg !380

; <label>:121:                                    ; preds = %117
  %122 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %8, align 8, !dbg !382
  ret %struct.MXUserRWLock* %122, !dbg !383
}

; Function Attrs: nounwind uwtable
define internal signext i8 @MXUserNativeRWSupported() #0 !dbg !384 {
  ret i8 1, !dbg !387
}

declare i8* @UtilSafeCalloc0(i64, i64) #2

declare i8* @Str_SafeAsprintf(i64*, i8*, ...) #2

; Function Attrs: nounwind readnone
declare i8* @llvm.returnaddress(i32) #1

declare i8* @UtilSafeStrdup0(i8*) #2

declare i32 @MXUserGetSignature(i32) #2

declare i32 @MXUserAllocSerialNumber() #2

; Function Attrs: nounwind uwtable
define internal signext i8 @MXUserNativeRWInit(%union.pthread_rwlock_t*) #0 !dbg !388 {
  %2 = alloca %union.pthread_rwlock_t*, align 8
  store %union.pthread_rwlock_t* %0, %union.pthread_rwlock_t** %2, align 8
  call void @llvm.dbg.declare(metadata %union.pthread_rwlock_t** %2, metadata !392, metadata !166), !dbg !393
  %3 = load %union.pthread_rwlock_t*, %union.pthread_rwlock_t** %2, align 8, !dbg !394
  %4 = call i32 @pthread_rwlock_init(%union.pthread_rwlock_t* %3, %union.pthread_rwlockattr_t* null) #9, !dbg !395
  %5 = icmp eq i32 %4, 0, !dbg !396
  %6 = zext i1 %5 to i32, !dbg !396
  %7 = trunc i32 %6 to i8, !dbg !397
  ret i8 %7, !dbg !398
}

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @MXRecLockInit(%struct.MXRecLock*) #3 !dbg !399 {
  %2 = alloca %struct.MXRecLock*, align 8
  %3 = alloca i8, align 1
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !403, metadata !166), !dbg !404
  call void @llvm.dbg.declare(metadata i8* %3, metadata !405, metadata !166), !dbg !406
  %4 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !407
  %5 = call i32 @MXRecLockCreateInternal(%struct.MXRecLock* %4), !dbg !408
  %6 = icmp eq i32 %5, 0, !dbg !409
  %7 = zext i1 %6 to i32, !dbg !409
  %8 = trunc i32 %7 to i8, !dbg !410
  store i8 %8, i8* %3, align 1, !dbg !406
  %9 = load i8, i8* %3, align 1, !dbg !411
  %10 = icmp ne i8 %9, 0, !dbg !411
  br i1 %10, label %11, label %15, !dbg !413

; <label>:11:                                     ; preds = %1
  %12 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !414
  call void @MXRecLockSetNoOwner(%struct.MXRecLock* %12), !dbg !416
  %13 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !417
  %14 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %13, i32 0, i32 1, !dbg !418
  store i32 0, i32* %14, align 8, !dbg !419
  br label %15, !dbg !420

; <label>:15:                                     ; preds = %11, %1
  %16 = load i8, i8* %3, align 1, !dbg !421
  ret i8 %16, !dbg !422
}

declare %struct.HashTable* @HashTable_Alloc(i32, i32, void (i8*)*) #2

; Function Attrs: nounwind uwtable
define internal void @MXUserFreeHashEntry(i8*) #0 !dbg !423 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !426, metadata !166), !dbg !427
  %3 = load i8*, i8** %2, align 8, !dbg !428
  call void @free(i8* %3) #9, !dbg !429
  ret void, !dbg !430
}

declare i32 @MXUserStatsMode() #2

declare void @MXUserDisableStats(%struct.Atomic_uint64*, %struct.Atomic_uint64*) #2

declare void @MXUserEnableStats(%struct.Atomic_uint64*, %struct.Atomic_uint64*) #2

; Function Attrs: nounwind uwtable
define internal void @MXUserStatsActionRW(%struct.MXUserHeader*) #0 !dbg !431 {
  %2 = alloca %struct.MXUserHeader*, align 8
  %3 = alloca %struct.MXUserRWLock*, align 8
  %4 = alloca %struct.MXUserHeldStats*, align 8
  %5 = alloca %struct.MXUserAcquireStats*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca double, align 8
  store %struct.MXUserHeader* %0, %struct.MXUserHeader** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserHeader** %2, metadata !432, metadata !166), !dbg !433
  call void @llvm.dbg.declare(metadata %struct.MXUserRWLock** %3, metadata !434, metadata !166), !dbg !435
  %9 = load %struct.MXUserHeader*, %struct.MXUserHeader** %2, align 8, !dbg !436
  %10 = bitcast %struct.MXUserHeader* %9 to %struct.MXUserRWLock*, !dbg !437
  store %struct.MXUserRWLock* %10, %struct.MXUserRWLock** %3, align 8, !dbg !435
  call void @llvm.dbg.declare(metadata %struct.MXUserHeldStats** %4, metadata !438, metadata !166), !dbg !459
  %11 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %3, align 8, !dbg !460
  %12 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %11, i32 0, i32 6, !dbg !461
  %13 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %12), !dbg !462
  %14 = bitcast i8* %13 to %struct.MXUserHeldStats*, !dbg !462
  store %struct.MXUserHeldStats* %14, %struct.MXUserHeldStats** %4, align 8, !dbg !459
  call void @llvm.dbg.declare(metadata %struct.MXUserAcquireStats** %5, metadata !463, metadata !166), !dbg !482
  %15 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %3, align 8, !dbg !483
  %16 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %15, i32 0, i32 7, !dbg !484
  %17 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %16), !dbg !485
  %18 = bitcast i8* %17 to %struct.MXUserAcquireStats*, !dbg !485
  store %struct.MXUserAcquireStats* %18, %struct.MXUserAcquireStats** %5, align 8, !dbg !482
  %19 = load %struct.MXUserHeldStats*, %struct.MXUserHeldStats** %4, align 8, !dbg !486
  %20 = icmp ne %struct.MXUserHeldStats* %19, null, !dbg !486
  br i1 %20, label %21, label %36, !dbg !488

; <label>:21:                                     ; preds = %1
  %22 = load %struct.MXUserHeldStats*, %struct.MXUserHeldStats** %4, align 8, !dbg !489
  %23 = getelementptr inbounds %struct.MXUserHeldStats, %struct.MXUserHeldStats* %22, i32 0, i32 1, !dbg !491
  %24 = load %struct.MXUserHeader*, %struct.MXUserHeader** %2, align 8, !dbg !492
  call void @MXUserDumpBasicStats(%struct.MXUserBasicStats* %23, %struct.MXUserHeader* %24), !dbg !493
  %25 = load %struct.MXUserHeldStats*, %struct.MXUserHeldStats** %4, align 8, !dbg !494
  %26 = getelementptr inbounds %struct.MXUserHeldStats, %struct.MXUserHeldStats* %25, i32 0, i32 2, !dbg !496
  %27 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %26), !dbg !497
  %28 = icmp ne i8* %27, null, !dbg !498
  br i1 %28, label %29, label %35, !dbg !499

; <label>:29:                                     ; preds = %21
  %30 = load %struct.MXUserHeldStats*, %struct.MXUserHeldStats** %4, align 8, !dbg !500
  %31 = getelementptr inbounds %struct.MXUserHeldStats, %struct.MXUserHeldStats* %30, i32 0, i32 2, !dbg !502
  %32 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %31), !dbg !503
  %33 = bitcast i8* %32 to %struct.MXUserHisto*, !dbg !503
  %34 = load %struct.MXUserHeader*, %struct.MXUserHeader** %2, align 8, !dbg !504
  call void @MXUserHistoDump(%struct.MXUserHisto* %33, %struct.MXUserHeader* %34), !dbg !505
  br label %35, !dbg !507

; <label>:35:                                     ; preds = %29, %21
  br label %36, !dbg !508

; <label>:36:                                     ; preds = %35, %1
  %37 = load %struct.MXUserAcquireStats*, %struct.MXUserAcquireStats** %5, align 8, !dbg !509
  %38 = icmp ne %struct.MXUserAcquireStats* %37, null, !dbg !509
  br i1 %38, label %39, label %79, !dbg !511

; <label>:39:                                     ; preds = %36
  call void @llvm.dbg.declare(metadata i8* %6, metadata !512, metadata !166), !dbg !514
  call void @llvm.dbg.declare(metadata i8* %7, metadata !515, metadata !166), !dbg !516
  call void @llvm.dbg.declare(metadata double* %8, metadata !517, metadata !166), !dbg !518
  %40 = load %struct.MXUserAcquireStats*, %struct.MXUserAcquireStats** %5, align 8, !dbg !519
  %41 = getelementptr inbounds %struct.MXUserAcquireStats, %struct.MXUserAcquireStats* %40, i32 0, i32 0, !dbg !520
  %42 = load %struct.MXUserHeader*, %struct.MXUserHeader** %2, align 8, !dbg !521
  call void @MXUserDumpAcquisitionStats(%struct.MXUserAcquisitionStats* %41, %struct.MXUserHeader* %42), !dbg !522
  %43 = load %struct.MXUserAcquireStats*, %struct.MXUserAcquireStats** %5, align 8, !dbg !523
  %44 = getelementptr inbounds %struct.MXUserAcquireStats, %struct.MXUserAcquireStats* %43, i32 0, i32 1, !dbg !525
  %45 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %44), !dbg !526
  %46 = icmp ne i8* %45, null, !dbg !527
  br i1 %46, label %47, label %53, !dbg !528

; <label>:47:                                     ; preds = %39
  %48 = load %struct.MXUserAcquireStats*, %struct.MXUserAcquireStats** %5, align 8, !dbg !529
  %49 = getelementptr inbounds %struct.MXUserAcquireStats, %struct.MXUserAcquireStats* %48, i32 0, i32 1, !dbg !531
  %50 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %49), !dbg !532
  %51 = bitcast i8* %50 to %struct.MXUserHisto*, !dbg !532
  %52 = load %struct.MXUserHeader*, %struct.MXUserHeader** %2, align 8, !dbg !533
  call void @MXUserHistoDump(%struct.MXUserHisto* %51, %struct.MXUserHeader* %52), !dbg !534
  br label %53, !dbg !536

; <label>:53:                                     ; preds = %47, %39
  %54 = load %struct.MXUserAcquireStats*, %struct.MXUserAcquireStats** %5, align 8, !dbg !537
  %55 = getelementptr inbounds %struct.MXUserAcquireStats, %struct.MXUserAcquireStats* %54, i32 0, i32 0, !dbg !538
  call void @MXUserKitchen(%struct.MXUserAcquisitionStats* %55, double* %8, i8* %6, i8* %7), !dbg !539
  %56 = load i8, i8* %6, align 1, !dbg !540
  %57 = icmp ne i8 %56, 0, !dbg !540
  br i1 %57, label %58, label %78, !dbg !542

; <label>:58:                                     ; preds = %53
  %59 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %3, align 8, !dbg !543
  %60 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %59, i32 0, i32 7, !dbg !545
  %61 = call signext i8 @MXUserForceAcquisitionHisto(%struct.Atomic_uint64* %60, i64 1000, i32 7), !dbg !546
  %62 = load %struct.MXUserHeldStats*, %struct.MXUserHeldStats** %4, align 8, !dbg !547
  %63 = icmp ne %struct.MXUserHeldStats* %62, null, !dbg !547
  br i1 %63, label %64, label %68, !dbg !549

; <label>:64:                                     ; preds = %58
  %65 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %3, align 8, !dbg !550
  %66 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %65, i32 0, i32 6, !dbg !552
  %67 = call signext i8 @MXUserForceHeldHisto(%struct.Atomic_uint64* %66, i64 1000, i32 7), !dbg !553
  br label %68, !dbg !554

; <label>:68:                                     ; preds = %64, %58
  %69 = load i8, i8* %7, align 1, !dbg !555
  %70 = icmp ne i8 %69, 0, !dbg !555
  br i1 %70, label %71, label %77, !dbg !557

; <label>:71:                                     ; preds = %68
  %72 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %3, align 8, !dbg !558
  %73 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %72, i32 0, i32 0, !dbg !560
  %74 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %73, i32 0, i32 1, !dbg !561
  %75 = load i8*, i8** %74, align 8, !dbg !561
  %76 = load double, double* %8, align 8, !dbg !562
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i32 0, i32 0), i8* %75, double %76), !dbg !563
  br label %77, !dbg !564

; <label>:77:                                     ; preds = %71, %68
  br label %78, !dbg !565

; <label>:78:                                     ; preds = %77, %53
  br label %79, !dbg !566

; <label>:79:                                     ; preds = %78, %36
  ret void, !dbg !567
}

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #4

declare void @MXUserAddToList(%struct.MXUserHeader*) #2

; Function Attrs: nounwind uwtable
define void @MXUser_DestroyRWLock(%struct.MXUserRWLock*) #0 !dbg !568 {
  %2 = alloca %struct.MXUserRWLock*, align 8
  %3 = alloca i32, align 4
  store %struct.MXUserRWLock* %0, %struct.MXUserRWLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserRWLock** %2, metadata !571, metadata !166), !dbg !572
  %4 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %2, align 8, !dbg !573
  %5 = icmp ne %struct.MXUserRWLock* %4, null, !dbg !575
  %6 = xor i1 %5, true, !dbg !576
  %7 = xor i1 %6, true, !dbg !577
  %8 = zext i1 %7 to i32, !dbg !577
  %9 = sext i32 %8 to i64, !dbg !577
  %10 = icmp ne i64 %9, 0, !dbg !578
  br i1 %10, label %11, label %65, !dbg !579

; <label>:11:                                     ; preds = %1
  %12 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %2, align 8, !dbg !580
  %13 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %12, i32 0, i32 0, !dbg !582
  call void @MXUserValidateHeader(%struct.MXUserHeader* %13, i32 1), !dbg !583
  %14 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %2, align 8, !dbg !584
  %15 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %14, i32 0, i32 4, !dbg !586
  %16 = call i32 @Atomic_Read32(%struct.Atomic_uint32* %15), !dbg !587
  %17 = icmp ne i32 %16, 0, !dbg !588
  br i1 %17, label %18, label %21, !dbg !589

; <label>:18:                                     ; preds = %11
  %19 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %2, align 8, !dbg !590
  %20 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %19, i32 0, i32 0, !dbg !592
  call void (%struct.MXUserHeader*, i8*, ...) @MXUserDumpAndPanic(%struct.MXUserHeader* %20, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.MXUser_DestroyRWLock, i32 0, i32 0)), !dbg !593
  br label %21, !dbg !594

; <label>:21:                                     ; preds = %18, %11
  %22 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %2, align 8, !dbg !595
  %23 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %22, i32 0, i32 1, !dbg !597
  %24 = load i8, i8* %23, align 8, !dbg !597
  %25 = icmp ne i8 %24, 0, !dbg !598
  %26 = xor i1 %25, true, !dbg !598
  %27 = xor i1 %26, true, !dbg !599
  %28 = zext i1 %27 to i32, !dbg !599
  %29 = sext i32 %28 to i64, !dbg !599
  %30 = icmp ne i64 %29, 0, !dbg !600
  br i1 %30, label %31, label %45, !dbg !601

; <label>:31:                                     ; preds = %21
  call void @llvm.dbg.declare(metadata i32* %3, metadata !602, metadata !166), !dbg !604
  %32 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %2, align 8, !dbg !605
  %33 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %32, i32 0, i32 2, !dbg !606
  %34 = call i32 @MXUserNativeRWDestroy(%union.pthread_rwlock_t* %33), !dbg !607
  store i32 %34, i32* %3, align 4, !dbg !604
  %35 = load i32, i32* %3, align 4, !dbg !608
  %36 = icmp ne i32 %35, 0, !dbg !610
  %37 = zext i1 %36 to i32, !dbg !610
  %38 = sext i32 %37 to i64, !dbg !611
  %39 = icmp ne i64 %38, 0, !dbg !612
  br i1 %39, label %40, label %44, !dbg !613

; <label>:40:                                     ; preds = %31
  %41 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %2, align 8, !dbg !614
  %42 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %41, i32 0, i32 0, !dbg !616
  %43 = load i32, i32* %3, align 4, !dbg !617
  call void (%struct.MXUserHeader*, i8*, ...) @MXUserDumpAndPanic(%struct.MXUserHeader* %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.MXUser_DestroyRWLock, i32 0, i32 0), i32 %43), !dbg !618
  br label %44, !dbg !619

; <label>:44:                                     ; preds = %40, %31
  br label %45, !dbg !620

; <label>:45:                                     ; preds = %44, %21
  %46 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %2, align 8, !dbg !621
  %47 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %46, i32 0, i32 3, !dbg !622
  call void @MXRecLockDestroy(%struct.MXRecLock* %47), !dbg !623
  %48 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %2, align 8, !dbg !624
  %49 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %48, i32 0, i32 0, !dbg !625
  call void @MXUserRemoveFromList(%struct.MXUserHeader* %49), !dbg !626
  %50 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %2, align 8, !dbg !627
  %51 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %50, i32 0, i32 5, !dbg !628
  %52 = load %struct.HashTable*, %struct.HashTable** %51, align 8, !dbg !628
  call void @HashTable_FreeUnsafe(%struct.HashTable* %52), !dbg !629
  %53 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %2, align 8, !dbg !630
  %54 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %53, i32 0, i32 0, !dbg !631
  %55 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %54, i32 0, i32 0, !dbg !632
  store i32 0, i32* %55, align 8, !dbg !633
  %56 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %2, align 8, !dbg !634
  %57 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %56, i32 0, i32 0, !dbg !635
  %58 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %57, i32 0, i32 1, !dbg !636
  %59 = load i8*, i8** %58, align 8, !dbg !636
  call void @free(i8* %59) #9, !dbg !637
  %60 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %2, align 8, !dbg !638
  %61 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %60, i32 0, i32 0, !dbg !639
  %62 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %61, i32 0, i32 1, !dbg !640
  store i8* null, i8** %62, align 8, !dbg !641
  %63 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %2, align 8, !dbg !642
  %64 = bitcast %struct.MXUserRWLock* %63 to i8*, !dbg !642
  call void @free(i8* %64) #9, !dbg !643
  br label %65, !dbg !644

; <label>:65:                                     ; preds = %45, %1
  ret void, !dbg !645
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXUserValidateHeader(%struct.MXUserHeader*, i32) #3 !dbg !646 {
  %3 = alloca %struct.MXUserHeader*, align 8
  %4 = alloca i32, align 4
  store %struct.MXUserHeader* %0, %struct.MXUserHeader** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserHeader** %3, metadata !650, metadata !166), !dbg !651
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !652, metadata !166), !dbg !653
  ret void, !dbg !654
}

declare void @MXUserDumpAndPanic(%struct.MXUserHeader*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i32 @MXUserNativeRWDestroy(%union.pthread_rwlock_t*) #0 !dbg !655 {
  %2 = alloca %union.pthread_rwlock_t*, align 8
  store %union.pthread_rwlock_t* %0, %union.pthread_rwlock_t** %2, align 8
  call void @llvm.dbg.declare(metadata %union.pthread_rwlock_t** %2, metadata !658, metadata !166), !dbg !659
  %3 = load %union.pthread_rwlock_t*, %union.pthread_rwlock_t** %2, align 8, !dbg !660
  %4 = call i32 @pthread_rwlock_destroy(%union.pthread_rwlock_t* %3) #9, !dbg !661
  ret i32 %4, !dbg !662
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXRecLockDestroy(%struct.MXRecLock*) #3 !dbg !663 {
  %2 = alloca %struct.MXRecLock*, align 8
  %3 = alloca i32, align 4
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !666, metadata !166), !dbg !667
  call void @llvm.dbg.declare(metadata i32* %3, metadata !668, metadata !166), !dbg !669
  %4 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !670
  %5 = call i32 @MXRecLockDestroyInternal(%struct.MXRecLock* %4), !dbg !671
  store i32 %5, i32* %3, align 4, !dbg !669
  ret void, !dbg !672
}

declare void @MXUserRemoveFromList(%struct.MXUserHeader*) #2

declare void @HashTable_FreeUnsafe(%struct.HashTable*) #2

; Function Attrs: nounwind
declare void @free(i8*) #5

; Function Attrs: nounwind uwtable
define void @MXUser_AcquireForRead(%struct.MXUserRWLock*) #0 !dbg !673 {
  %2 = alloca %struct.MXUserRWLock*, align 8
  store %struct.MXUserRWLock* %0, %struct.MXUserRWLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserRWLock** %2, metadata !674, metadata !166), !dbg !675
  %3 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %2, align 8, !dbg !676
  call void @MXUserAcquisition(%struct.MXUserRWLock* %3, i8 signext 1), !dbg !677
  ret void, !dbg !678
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXUserAcquisition(%struct.MXUserRWLock*, i8 signext) #3 !dbg !679 {
  %3 = alloca %struct.MXUserRWLock*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.HolderContext*, align 8
  %6 = alloca i32, align 4
  store %struct.MXUserRWLock* %0, %struct.MXUserRWLock** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserRWLock** %3, metadata !682, metadata !166), !dbg !683
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !684, metadata !166), !dbg !685
  call void @llvm.dbg.declare(metadata %struct.HolderContext** %5, metadata !686, metadata !166), !dbg !694
  %7 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %3, align 8, !dbg !695
  %8 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %7, i32 0, i32 0, !dbg !696
  call void @MXUserValidateHeader(%struct.MXUserHeader* %8, i32 1), !dbg !697
  %9 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %3, align 8, !dbg !698
  %10 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %9, i32 0, i32 0, !dbg !699
  call void @MXUserAcquisitionTracking(%struct.MXUserHeader* %10, i8 signext 1), !dbg !700
  %11 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %3, align 8, !dbg !701
  %12 = call %struct.HolderContext* @MXUserGetHolderContext(%struct.MXUserRWLock* %11), !dbg !702
  store %struct.HolderContext* %12, %struct.HolderContext** %5, align 8, !dbg !703
  %13 = load %struct.HolderContext*, %struct.HolderContext** %5, align 8, !dbg !704
  %14 = getelementptr inbounds %struct.HolderContext, %struct.HolderContext* %13, i32 0, i32 0, !dbg !706
  %15 = load i32, i32* %14, align 8, !dbg !706
  %16 = icmp ne i32 %15, 0, !dbg !707
  %17 = zext i1 %16 to i32, !dbg !707
  %18 = sext i32 %17 to i64, !dbg !708
  %19 = icmp ne i64 %18, 0, !dbg !709
  br i1 %19, label %20, label %32, !dbg !710

; <label>:20:                                     ; preds = %2
  %21 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %3, align 8, !dbg !711
  %22 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %21, i32 0, i32 0, !dbg !713
  %23 = load i8, i8* %4, align 1, !dbg !714
  %24 = sext i8 %23 to i32, !dbg !714
  %25 = icmp ne i32 %24, 0, !dbg !714
  %26 = select i1 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), !dbg !714
  %27 = load %struct.HolderContext*, %struct.HolderContext** %5, align 8, !dbg !715
  %28 = getelementptr inbounds %struct.HolderContext, %struct.HolderContext* %27, i32 0, i32 0, !dbg !716
  %29 = load i32, i32* %28, align 8, !dbg !716
  %30 = icmp eq i32 %29, 1, !dbg !717
  %31 = select i1 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), !dbg !718
  call void (%struct.MXUserHeader*, i8*, ...) @MXUserDumpAndPanic(%struct.MXUserHeader* %22, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.MXUserAcquisition, i32 0, i32 0), i8* %26, i8* %31), !dbg !719
  br label %32, !dbg !720

; <label>:32:                                     ; preds = %20, %2
  %33 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %3, align 8, !dbg !721
  %34 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %33, i32 0, i32 1, !dbg !725
  %35 = load i8, i8* %34, align 8, !dbg !725
  %36 = icmp ne i8 %35, 0, !dbg !726
  %37 = xor i1 %36, true, !dbg !726
  %38 = xor i1 %37, true, !dbg !727
  %39 = zext i1 %38 to i32, !dbg !727
  %40 = sext i32 %39 to i64, !dbg !727
  %41 = icmp ne i64 %40, 0, !dbg !728
  br i1 %41, label %42, label %57, !dbg !729

; <label>:42:                                     ; preds = %32
  call void @llvm.dbg.declare(metadata i32* %6, metadata !730, metadata !166), !dbg !732
  store i32 0, i32* %6, align 4, !dbg !732
  %43 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %3, align 8, !dbg !733
  %44 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %43, i32 0, i32 2, !dbg !734
  %45 = load i8, i8* %4, align 1, !dbg !735
  %46 = call signext i8 @MXUserNativeRWAcquire(%union.pthread_rwlock_t* %44, i8 signext %45, i32* %6), !dbg !736
  %47 = load i32, i32* %6, align 4, !dbg !737
  %48 = icmp ne i32 %47, 0, !dbg !739
  %49 = zext i1 %48 to i32, !dbg !739
  %50 = sext i32 %49 to i64, !dbg !740
  %51 = icmp ne i64 %50, 0, !dbg !741
  br i1 %51, label %52, label %56, !dbg !742

; <label>:52:                                     ; preds = %42
  %53 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %3, align 8, !dbg !743
  %54 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %53, i32 0, i32 0, !dbg !745
  %55 = load i32, i32* %6, align 4, !dbg !746
  call void (%struct.MXUserHeader*, i8*, ...) @MXUserDumpAndPanic(%struct.MXUserHeader* %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.MXUserAcquisition, i32 0, i32 0), i32 %55), !dbg !747
  br label %56, !dbg !748

; <label>:56:                                     ; preds = %52, %42
  br label %60, !dbg !749

; <label>:57:                                     ; preds = %32
  %58 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %3, align 8, !dbg !750
  %59 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %58, i32 0, i32 3, !dbg !752
  call void @MXRecLockAcquire(%struct.MXRecLock* %59, i64* null), !dbg !753
  br label %60

; <label>:60:                                     ; preds = %57, %56
  %61 = load i8, i8* %4, align 1, !dbg !754
  %62 = icmp ne i8 %61, 0, !dbg !754
  br i1 %62, label %63, label %68, !dbg !756

; <label>:63:                                     ; preds = %60
  %64 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %3, align 8, !dbg !757
  %65 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %64, i32 0, i32 1, !dbg !759
  %66 = load i8, i8* %65, align 8, !dbg !759
  %67 = icmp ne i8 %66, 0, !dbg !757
  br i1 %67, label %69, label %68, !dbg !760

; <label>:68:                                     ; preds = %63, %60
  br label %69, !dbg !761

; <label>:69:                                     ; preds = %68, %63
  %70 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %3, align 8, !dbg !763
  %71 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %70, i32 0, i32 4, !dbg !764
  call void @Atomic_Inc32(%struct.Atomic_uint32* %71), !dbg !765
  %72 = load i8, i8* %4, align 1, !dbg !766
  %73 = sext i8 %72 to i32, !dbg !766
  %74 = icmp ne i32 %73, 0, !dbg !766
  %75 = select i1 %74, i32 1, i32 2, !dbg !766
  %76 = load %struct.HolderContext*, %struct.HolderContext** %5, align 8, !dbg !767
  %77 = getelementptr inbounds %struct.HolderContext, %struct.HolderContext* %76, i32 0, i32 0, !dbg !768
  store i32 %75, i32* %77, align 8, !dbg !769
  ret void, !dbg !770
}

; Function Attrs: nounwind uwtable
define void @MXUser_AcquireForWrite(%struct.MXUserRWLock*) #0 !dbg !771 {
  %2 = alloca %struct.MXUserRWLock*, align 8
  store %struct.MXUserRWLock* %0, %struct.MXUserRWLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserRWLock** %2, metadata !772, metadata !166), !dbg !773
  %3 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %2, align 8, !dbg !774
  call void @MXUserAcquisition(%struct.MXUserRWLock* %3, i8 signext 0), !dbg !775
  ret void, !dbg !776
}

; Function Attrs: nounwind uwtable
define signext i8 @MXUser_IsCurThreadHoldingRWLock(%struct.MXUserRWLock*, i32) #0 !dbg !777 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.MXUserRWLock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.HolderContext*, align 8
  store %struct.MXUserRWLock* %0, %struct.MXUserRWLock** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserRWLock** %4, metadata !780, metadata !166), !dbg !781
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !782, metadata !166), !dbg !783
  call void @llvm.dbg.declare(metadata %struct.HolderContext** %6, metadata !784, metadata !166), !dbg !785
  %7 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %4, align 8, !dbg !786
  %8 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %7, i32 0, i32 0, !dbg !787
  call void @MXUserValidateHeader(%struct.MXUserHeader* %8, i32 1), !dbg !788
  %9 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %4, align 8, !dbg !789
  %10 = call %struct.HolderContext* @MXUserGetHolderContext(%struct.MXUserRWLock* %9), !dbg !790
  store %struct.HolderContext* %10, %struct.HolderContext** %6, align 8, !dbg !791
  %11 = load i32, i32* %5, align 4, !dbg !792
  switch i32 %11, label %33 [
    i32 0, label %12
    i32 1, label %19
    i32 2, label %26
  ], !dbg !793

; <label>:12:                                     ; preds = %2
  %13 = load %struct.HolderContext*, %struct.HolderContext** %6, align 8, !dbg !794
  %14 = getelementptr inbounds %struct.HolderContext, %struct.HolderContext* %13, i32 0, i32 0, !dbg !796
  %15 = load i32, i32* %14, align 8, !dbg !796
  %16 = icmp eq i32 %15, 1, !dbg !797
  %17 = zext i1 %16 to i32, !dbg !797
  %18 = trunc i32 %17 to i8, !dbg !794
  store i8 %18, i8* %3, align 1, !dbg !798
  br label %35, !dbg !798

; <label>:19:                                     ; preds = %2
  %20 = load %struct.HolderContext*, %struct.HolderContext** %6, align 8, !dbg !799
  %21 = getelementptr inbounds %struct.HolderContext, %struct.HolderContext* %20, i32 0, i32 0, !dbg !800
  %22 = load i32, i32* %21, align 8, !dbg !800
  %23 = icmp eq i32 %22, 2, !dbg !801
  %24 = zext i1 %23 to i32, !dbg !801
  %25 = trunc i32 %24 to i8, !dbg !799
  store i8 %25, i8* %3, align 1, !dbg !802
  br label %35, !dbg !802

; <label>:26:                                     ; preds = %2
  %27 = load %struct.HolderContext*, %struct.HolderContext** %6, align 8, !dbg !803
  %28 = getelementptr inbounds %struct.HolderContext, %struct.HolderContext* %27, i32 0, i32 0, !dbg !804
  %29 = load i32, i32* %28, align 8, !dbg !804
  %30 = icmp ne i32 %29, 0, !dbg !805
  %31 = zext i1 %30 to i32, !dbg !805
  %32 = trunc i32 %31 to i8, !dbg !803
  store i8 %32, i8* %3, align 1, !dbg !806
  br label %35, !dbg !806

; <label>:33:                                     ; preds = %2
  %34 = load i32, i32* %5, align 4, !dbg !807
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__FUNCTION__.MXUser_IsCurThreadHoldingRWLock, i32 0, i32 0), i32 %34) #10, !dbg !808
  unreachable, !dbg !808

; <label>:35:                                     ; preds = %26, %19, %12
  %36 = load i8, i8* %3, align 1, !dbg !809
  ret i8 %36, !dbg !809
}

; Function Attrs: nounwind uwtable
define internal %struct.HolderContext* @MXUserGetHolderContext(%struct.MXUserRWLock*) #0 !dbg !810 {
  %2 = alloca %struct.MXUserRWLock*, align 8
  %3 = alloca %struct.HolderContext*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.HolderContext*, align 8
  store %struct.MXUserRWLock* %0, %struct.MXUserRWLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserRWLock** %2, metadata !813, metadata !166), !dbg !814
  call void @llvm.dbg.declare(metadata %struct.HolderContext** %3, metadata !815, metadata !166), !dbg !816
  call void @llvm.dbg.declare(metadata i8** %4, metadata !817, metadata !166), !dbg !818
  %6 = call i8* @MXUserCastedThreadID(), !dbg !819
  store i8* %6, i8** %4, align 8, !dbg !818
  %7 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %2, align 8, !dbg !820
  %8 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %7, i32 0, i32 5, !dbg !822
  %9 = load %struct.HashTable*, %struct.HashTable** %8, align 8, !dbg !822
  %10 = load i8*, i8** %4, align 8, !dbg !823
  %11 = bitcast %struct.HolderContext** %3 to i8**, !dbg !824
  %12 = call signext i8 @HashTable_Lookup(%struct.HashTable* %9, i8* %10, i8** %11), !dbg !825
  %13 = icmp ne i8 %12, 0, !dbg !825
  br i1 %13, label %36, label %14, !dbg !826

; <label>:14:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata %struct.HolderContext** %5, metadata !827, metadata !166), !dbg !829
  %15 = call i8* @UtilSafeMalloc0(i64 16), !dbg !830
  %16 = bitcast i8* %15 to %struct.HolderContext*, !dbg !830
  store %struct.HolderContext* %16, %struct.HolderContext** %5, align 8, !dbg !829
  %17 = load %struct.HolderContext*, %struct.HolderContext** %5, align 8, !dbg !831
  %18 = getelementptr inbounds %struct.HolderContext, %struct.HolderContext* %17, i32 0, i32 1, !dbg !832
  store i64 0, i64* %18, align 8, !dbg !833
  %19 = load %struct.HolderContext*, %struct.HolderContext** %5, align 8, !dbg !834
  %20 = getelementptr inbounds %struct.HolderContext, %struct.HolderContext* %19, i32 0, i32 0, !dbg !835
  store i32 0, i32* %20, align 8, !dbg !836
  %21 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %2, align 8, !dbg !837
  %22 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %21, i32 0, i32 5, !dbg !838
  %23 = load %struct.HashTable*, %struct.HashTable** %22, align 8, !dbg !838
  %24 = load i8*, i8** %4, align 8, !dbg !839
  %25 = load %struct.HolderContext*, %struct.HolderContext** %5, align 8, !dbg !840
  %26 = bitcast %struct.HolderContext* %25 to i8*, !dbg !841
  %27 = call i8* @HashTable_LookupOrInsert(%struct.HashTable* %23, i8* %24, i8* %26), !dbg !842
  %28 = bitcast i8* %27 to %struct.HolderContext*, !dbg !842
  store %struct.HolderContext* %28, %struct.HolderContext** %3, align 8, !dbg !843
  %29 = load %struct.HolderContext*, %struct.HolderContext** %3, align 8, !dbg !844
  %30 = load %struct.HolderContext*, %struct.HolderContext** %5, align 8, !dbg !846
  %31 = icmp ne %struct.HolderContext* %29, %30, !dbg !847
  br i1 %31, label %32, label %35, !dbg !848

; <label>:32:                                     ; preds = %14
  %33 = load %struct.HolderContext*, %struct.HolderContext** %5, align 8, !dbg !849
  %34 = bitcast %struct.HolderContext* %33 to i8*, !dbg !849
  call void @free(i8* %34) #9, !dbg !851
  br label %35, !dbg !852

; <label>:35:                                     ; preds = %32, %14
  br label %36, !dbg !853

; <label>:36:                                     ; preds = %35, %1
  %37 = load %struct.HolderContext*, %struct.HolderContext** %3, align 8, !dbg !854
  ret %struct.HolderContext* %37, !dbg !855
}

; Function Attrs: nounwind uwtable
define void @MXUser_ReleaseRWLock(%struct.MXUserRWLock*) #0 !dbg !856 {
  %2 = alloca %struct.MXUserRWLock*, align 8
  %3 = alloca %struct.HolderContext*, align 8
  %4 = alloca i32, align 4
  store %struct.MXUserRWLock* %0, %struct.MXUserRWLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserRWLock** %2, metadata !857, metadata !166), !dbg !858
  call void @llvm.dbg.declare(metadata %struct.HolderContext** %3, metadata !859, metadata !166), !dbg !860
  %5 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %2, align 8, !dbg !861
  %6 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %5, i32 0, i32 0, !dbg !862
  call void @MXUserValidateHeader(%struct.MXUserHeader* %6, i32 1), !dbg !863
  %7 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %2, align 8, !dbg !864
  %8 = call %struct.HolderContext* @MXUserGetHolderContext(%struct.MXUserRWLock* %7), !dbg !865
  store %struct.HolderContext* %8, %struct.HolderContext** %3, align 8, !dbg !866
  %9 = load %struct.HolderContext*, %struct.HolderContext** %3, align 8, !dbg !867
  %10 = getelementptr inbounds %struct.HolderContext, %struct.HolderContext* %9, i32 0, i32 0, !dbg !869
  %11 = load i32, i32* %10, align 8, !dbg !869
  %12 = icmp eq i32 %11, 0, !dbg !870
  %13 = zext i1 %12 to i32, !dbg !870
  %14 = sext i32 %13 to i64, !dbg !871
  %15 = icmp ne i64 %14, 0, !dbg !872
  br i1 %15, label %16, label %19, !dbg !873

; <label>:16:                                     ; preds = %1
  %17 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %2, align 8, !dbg !874
  %18 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %17, i32 0, i32 0, !dbg !876
  call void (%struct.MXUserHeader*, i8*, ...) @MXUserDumpAndPanic(%struct.MXUserHeader* %18, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.MXUser_ReleaseRWLock, i32 0, i32 0)), !dbg !877
  br label %19, !dbg !878

; <label>:19:                                     ; preds = %16, %1
  %20 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %2, align 8, !dbg !879
  %21 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %20, i32 0, i32 0, !dbg !880
  call void @MXUserReleaseTracking(%struct.MXUserHeader* %21), !dbg !881
  %22 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %2, align 8, !dbg !882
  %23 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %22, i32 0, i32 4, !dbg !883
  call void @Atomic_Dec32(%struct.Atomic_uint32* %23), !dbg !884
  %24 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %2, align 8, !dbg !885
  %25 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %24, i32 0, i32 1, !dbg !887
  %26 = load i8, i8* %25, align 8, !dbg !887
  %27 = icmp ne i8 %26, 0, !dbg !888
  %28 = xor i1 %27, true, !dbg !888
  %29 = xor i1 %28, true, !dbg !889
  %30 = zext i1 %29 to i32, !dbg !889
  %31 = sext i32 %30 to i64, !dbg !889
  %32 = icmp ne i64 %31, 0, !dbg !890
  br i1 %32, label %33, label %53, !dbg !891

; <label>:33:                                     ; preds = %19
  call void @llvm.dbg.declare(metadata i32* %4, metadata !892, metadata !166), !dbg !894
  %34 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %2, align 8, !dbg !895
  %35 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %34, i32 0, i32 2, !dbg !896
  %36 = load %struct.HolderContext*, %struct.HolderContext** %3, align 8, !dbg !897
  %37 = getelementptr inbounds %struct.HolderContext, %struct.HolderContext* %36, i32 0, i32 0, !dbg !898
  %38 = load i32, i32* %37, align 8, !dbg !898
  %39 = icmp eq i32 %38, 1, !dbg !899
  %40 = zext i1 %39 to i32, !dbg !899
  %41 = trunc i32 %40 to i8, !dbg !897
  %42 = call i32 @MXUserNativeRWRelease(%union.pthread_rwlock_t* %35, i8 signext %41), !dbg !900
  store i32 %42, i32* %4, align 4, !dbg !894
  %43 = load i32, i32* %4, align 4, !dbg !901
  %44 = icmp ne i32 %43, 0, !dbg !903
  %45 = zext i1 %44 to i32, !dbg !903
  %46 = sext i32 %45 to i64, !dbg !904
  %47 = icmp ne i64 %46, 0, !dbg !905
  br i1 %47, label %48, label %52, !dbg !906

; <label>:48:                                     ; preds = %33
  %49 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %2, align 8, !dbg !907
  %50 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %49, i32 0, i32 0, !dbg !909
  %51 = load i32, i32* %4, align 4, !dbg !910
  call void (%struct.MXUserHeader*, i8*, ...) @MXUserDumpAndPanic(%struct.MXUserHeader* %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.MXUser_ReleaseRWLock, i32 0, i32 0), i32 %51), !dbg !911
  br label %52, !dbg !912

; <label>:52:                                     ; preds = %48, %33
  br label %56, !dbg !913

; <label>:53:                                     ; preds = %19
  %54 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %2, align 8, !dbg !914
  %55 = getelementptr inbounds %struct.MXUserRWLock, %struct.MXUserRWLock* %54, i32 0, i32 3, !dbg !916
  call void @MXRecLockRelease(%struct.MXRecLock* %55), !dbg !917
  br label %56

; <label>:56:                                     ; preds = %53, %52
  %57 = load %struct.HolderContext*, %struct.HolderContext** %3, align 8, !dbg !918
  %58 = getelementptr inbounds %struct.HolderContext, %struct.HolderContext* %57, i32 0, i32 0, !dbg !919
  store i32 0, i32* %58, align 8, !dbg !920
  ret void, !dbg !921
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXUserReleaseTracking(%struct.MXUserHeader*) #3 !dbg !922 {
  %2 = alloca %struct.MXUserHeader*, align 8
  store %struct.MXUserHeader* %0, %struct.MXUserHeader** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserHeader** %2, metadata !923, metadata !166), !dbg !924
  ret void, !dbg !925
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Atomic_Dec32(%struct.Atomic_uint32*) #3 !dbg !926 {
  %2 = alloca %struct.Atomic_uint32*, align 8
  store %struct.Atomic_uint32* %0, %struct.Atomic_uint32** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint32** %2, metadata !930, metadata !166), !dbg !931
  %3 = load %struct.Atomic_uint32*, %struct.Atomic_uint32** %2, align 8, !dbg !932
  %4 = getelementptr inbounds %struct.Atomic_uint32, %struct.Atomic_uint32* %3, i32 0, i32 0, !dbg !933
  call void asm sideeffect "lock; decl $0", "=*m,*m,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %4, i32* %4) #9, !dbg !934, !srcloc !935
  ret void, !dbg !936
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @MXUserNativeRWRelease(%union.pthread_rwlock_t*, i8 signext) #3 !dbg !937 {
  %3 = alloca %union.pthread_rwlock_t*, align 8
  %4 = alloca i8, align 1
  store %union.pthread_rwlock_t* %0, %union.pthread_rwlock_t** %3, align 8
  call void @llvm.dbg.declare(metadata %union.pthread_rwlock_t** %3, metadata !940, metadata !166), !dbg !941
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !942, metadata !166), !dbg !943
  %5 = load %union.pthread_rwlock_t*, %union.pthread_rwlock_t** %3, align 8, !dbg !944
  %6 = call i32 @pthread_rwlock_unlock(%union.pthread_rwlock_t* %5) #9, !dbg !945
  ret i32 %6, !dbg !946
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXRecLockRelease(%struct.MXRecLock*) #3 !dbg !947 {
  %2 = alloca %struct.MXRecLock*, align 8
  %3 = alloca i32, align 4
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !948, metadata !166), !dbg !949
  %4 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !950
  call void @MXRecLockDecCount(%struct.MXRecLock* %4, i32 1), !dbg !951
  %5 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !952
  %6 = call i32 @MXRecLockCount(%struct.MXRecLock* %5), !dbg !954
  %7 = icmp eq i32 %6, 0, !dbg !955
  %8 = xor i1 %7, true, !dbg !956
  %9 = xor i1 %8, true, !dbg !957
  %10 = zext i1 %9 to i32, !dbg !957
  %11 = sext i32 %10 to i64, !dbg !957
  %12 = icmp ne i64 %11, 0, !dbg !958
  br i1 %12, label %13, label %16, !dbg !959

; <label>:13:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata i32* %3, metadata !960, metadata !166), !dbg !962
  %14 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !963
  %15 = call i32 @MXRecLockReleaseInternal(%struct.MXRecLock* %14), !dbg !964
  store i32 %15, i32* %3, align 4, !dbg !962
  br label %16, !dbg !965

; <label>:16:                                     ; preds = %13, %1
  ret void, !dbg !966
}

; Function Attrs: nounwind uwtable
define %struct.MXUserRWLock* @MXUser_CreateSingletonRWLockInt(%struct.Atomic_uint64*, i8*, i32) #0 !dbg !967 {
  %4 = alloca %struct.Atomic_uint64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.MXUserRWLock*, align 8
  %8 = alloca %struct.MXUserRWLock*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %4, metadata !971, metadata !166), !dbg !972
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !973, metadata !166), !dbg !974
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !975, metadata !166), !dbg !976
  call void @llvm.dbg.declare(metadata %struct.MXUserRWLock** %7, metadata !977, metadata !166), !dbg !978
  %9 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !979
  %10 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %9), !dbg !980
  %11 = bitcast i8* %10 to %struct.MXUserRWLock*, !dbg !980
  store %struct.MXUserRWLock* %11, %struct.MXUserRWLock** %7, align 8, !dbg !981
  %12 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %7, align 8, !dbg !982
  %13 = icmp eq %struct.MXUserRWLock* %12, null, !dbg !984
  %14 = zext i1 %13 to i32, !dbg !984
  %15 = sext i32 %14 to i64, !dbg !985
  %16 = icmp ne i64 %15, 0, !dbg !986
  br i1 %16, label %17, label %35, !dbg !987

; <label>:17:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata %struct.MXUserRWLock** %8, metadata !988, metadata !166), !dbg !990
  %18 = load i8*, i8** %5, align 8, !dbg !991
  %19 = load i32, i32* %6, align 4, !dbg !992
  %20 = call %struct.MXUserRWLock* @MXUser_CreateRWLock(i8* %18, i32 %19), !dbg !993
  store %struct.MXUserRWLock* %20, %struct.MXUserRWLock** %8, align 8, !dbg !990
  %21 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !994
  %22 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %8, align 8, !dbg !995
  %23 = bitcast %struct.MXUserRWLock* %22 to i8*, !dbg !996
  %24 = call i8* @Atomic_ReadIfEqualWritePtr(%struct.Atomic_uint64* %21, i8* null, i8* %23), !dbg !997
  %25 = bitcast i8* %24 to %struct.MXUserRWLock*, !dbg !997
  store %struct.MXUserRWLock* %25, %struct.MXUserRWLock** %7, align 8, !dbg !998
  %26 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %7, align 8, !dbg !999
  %27 = icmp ne %struct.MXUserRWLock* %26, null, !dbg !999
  br i1 %27, label %28, label %30, !dbg !1001

; <label>:28:                                     ; preds = %17
  %29 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %8, align 8, !dbg !1002
  call void @MXUser_DestroyRWLock(%struct.MXUserRWLock* %29), !dbg !1004
  br label %34, !dbg !1005

; <label>:30:                                     ; preds = %17
  %31 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !1006
  %32 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %31), !dbg !1008
  %33 = bitcast i8* %32 to %struct.MXUserRWLock*, !dbg !1008
  store %struct.MXUserRWLock* %33, %struct.MXUserRWLock** %7, align 8, !dbg !1009
  br label %34

; <label>:34:                                     ; preds = %30, %28
  br label %35, !dbg !1010

; <label>:35:                                     ; preds = %34, %3
  %36 = load %struct.MXUserRWLock*, %struct.MXUserRWLock** %7, align 8, !dbg !1011
  ret %struct.MXUserRWLock* %36, !dbg !1012
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Atomic_ReadPtr(%struct.Atomic_uint64*) #3 !dbg !1013 {
  %2 = alloca %struct.Atomic_uint64*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %2, metadata !1018, metadata !166), !dbg !1019
  %3 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %2, align 8, !dbg !1020
  %4 = call i64 @Atomic_Read64(%struct.Atomic_uint64* %3), !dbg !1021
  %5 = inttoptr i64 %4 to i8*, !dbg !1022
  ret i8* %5, !dbg !1023
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Atomic_ReadIfEqualWritePtr(%struct.Atomic_uint64*, i8*, i8*) #3 !dbg !1024 {
  %4 = alloca %struct.Atomic_uint64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %4, metadata !1029, metadata !166), !dbg !1030
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1031, metadata !166), !dbg !1032
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1033, metadata !166), !dbg !1034
  %7 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !1035
  %8 = load i8*, i8** %5, align 8, !dbg !1036
  %9 = ptrtoint i8* %8 to i64, !dbg !1037
  %10 = load i8*, i8** %6, align 8, !dbg !1038
  %11 = ptrtoint i8* %10 to i64, !dbg !1039
  %12 = call i64 @Atomic_ReadIfEqualWrite64(%struct.Atomic_uint64* %7, i64 %9, i64 %11), !dbg !1040
  %13 = inttoptr i64 %12 to i8*, !dbg !1041
  ret i8* %13, !dbg !1042
}

; Function Attrs: nounwind
declare i32 @pthread_rwlock_init(%union.pthread_rwlock_t*, %union.pthread_rwlockattr_t*) #5

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @MXRecLockCreateInternal(%struct.MXRecLock*) #3 !dbg !1043 {
  %2 = alloca %struct.MXRecLock*, align 8
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !1046, metadata !166), !dbg !1047
  %3 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !1048
  %4 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %3, i32 0, i32 0, !dbg !1049
  %5 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %4, %union.pthread_mutexattr_t* null) #9, !dbg !1050
  ret i32 %5, !dbg !1051
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXRecLockSetNoOwner(%struct.MXRecLock*) #3 !dbg !1052 {
  %2 = alloca %struct.MXRecLock*, align 8
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !1053, metadata !166), !dbg !1054
  %3 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !1055
  %4 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %3, i32 0, i32 2, !dbg !1056
  %5 = bitcast i64* %4 to i8*, !dbg !1057
  call void @llvm.memset.p0i8.i64(i8* %5, i8 -1, i64 8, i32 8, i1 false), !dbg !1057
  ret void, !dbg !1058
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #6

declare void @MXUserDumpBasicStats(%struct.MXUserBasicStats*, %struct.MXUserHeader*) #2

declare void @MXUserHistoDump(%struct.MXUserHisto*, %struct.MXUserHeader*) #2

declare void @MXUserDumpAcquisitionStats(%struct.MXUserAcquisitionStats*, %struct.MXUserHeader*) #2

declare void @MXUserKitchen(%struct.MXUserAcquisitionStats*, double*, i8*, i8*) #2

declare signext i8 @MXUserForceAcquisitionHisto(%struct.Atomic_uint64*, i64, i32) #2

declare signext i8 @MXUserForceHeldHisto(%struct.Atomic_uint64*, i64, i32) #2

declare void @Log(i8*, ...) #2

; Function Attrs: nounwind
declare i32 @pthread_rwlock_destroy(%union.pthread_rwlock_t*) #5

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @MXRecLockDestroyInternal(%struct.MXRecLock*) #3 !dbg !1059 {
  %2 = alloca %struct.MXRecLock*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !1060, metadata !166), !dbg !1061
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1062, metadata !166), !dbg !1063
  %5 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !1064
  %6 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %5, i32 0, i32 0, !dbg !1065
  %7 = call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* %6) #9, !dbg !1066
  store i32 %7, i32* %3, align 4, !dbg !1063
  br i1 icmp ne (i8* ()* @gnu_get_libc_version, i8* ()* null), label %8, label %15, !dbg !1067

; <label>:8:                                      ; preds = %1
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1068, metadata !166), !dbg !1071
  %9 = call i8* @gnu_get_libc_version(), !dbg !1072
  store i8* %9, i8** %4, align 8, !dbg !1071
  %10 = load i8*, i8** %4, align 8, !dbg !1073
  %11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0)) #11, !dbg !1075
  %12 = icmp sge i32 %11, 0, !dbg !1076
  br i1 %12, label %13, label %14, !dbg !1077

; <label>:13:                                     ; preds = %8
  store i32 0, i32* %3, align 4, !dbg !1078
  br label %14, !dbg !1080

; <label>:14:                                     ; preds = %13, %8
  br label %15, !dbg !1081

; <label>:15:                                     ; preds = %14, %1
  %16 = load i32, i32* %3, align 4, !dbg !1082
  ret i32 %16, !dbg !1083
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(%union.pthread_mutex_t*) #5

declare extern_weak i8* @gnu_get_libc_version() #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #7

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXUserAcquisitionTracking(%struct.MXUserHeader*, i8 signext) #3 !dbg !1084 {
  %3 = alloca %struct.MXUserHeader*, align 8
  %4 = alloca i8, align 1
  store %struct.MXUserHeader* %0, %struct.MXUserHeader** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserHeader** %3, metadata !1087, metadata !166), !dbg !1088
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1089, metadata !166), !dbg !1090
  ret void, !dbg !1091
}

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @MXUserNativeRWAcquire(%union.pthread_rwlock_t*, i8 signext, i32*) #3 !dbg !1092 {
  %4 = alloca %union.pthread_rwlock_t*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32*, align 8
  %7 = alloca i8, align 1
  store %union.pthread_rwlock_t* %0, %union.pthread_rwlock_t** %4, align 8
  call void @llvm.dbg.declare(metadata %union.pthread_rwlock_t** %4, metadata !1096, metadata !166), !dbg !1097
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1098, metadata !166), !dbg !1099
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1100, metadata !166), !dbg !1101
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1102, metadata !166), !dbg !1103
  %8 = load i8, i8* %5, align 1, !dbg !1104
  %9 = sext i8 %8 to i32, !dbg !1105
  %10 = icmp ne i32 %9, 0, !dbg !1105
  br i1 %10, label %11, label %14, !dbg !1105

; <label>:11:                                     ; preds = %3
  %12 = load %union.pthread_rwlock_t*, %union.pthread_rwlock_t** %4, align 8, !dbg !1106
  %13 = call i32 @pthread_rwlock_tryrdlock(%union.pthread_rwlock_t* %12) #9, !dbg !1108
  br label %17, !dbg !1109

; <label>:14:                                     ; preds = %3
  %15 = load %union.pthread_rwlock_t*, %union.pthread_rwlock_t** %4, align 8, !dbg !1110
  %16 = call i32 @pthread_rwlock_trywrlock(%union.pthread_rwlock_t* %15) #9, !dbg !1111
  br label %17, !dbg !1112

; <label>:17:                                     ; preds = %14, %11
  %18 = phi i32 [ %13, %11 ], [ %16, %14 ], !dbg !1114
  %19 = load i32*, i32** %6, align 8, !dbg !1116
  store i32 %18, i32* %19, align 4, !dbg !1117
  %20 = load i32*, i32** %6, align 8, !dbg !1118
  %21 = load i32, i32* %20, align 4, !dbg !1119
  %22 = icmp ne i32 %21, 0, !dbg !1120
  %23 = zext i1 %22 to i32, !dbg !1120
  %24 = trunc i32 %23 to i8, !dbg !1121
  store i8 %24, i8* %7, align 1, !dbg !1122
  %25 = load i32*, i32** %6, align 8, !dbg !1123
  %26 = load i32, i32* %25, align 4, !dbg !1125
  %27 = icmp eq i32 %26, 16, !dbg !1126
  br i1 %27, label %28, label %41, !dbg !1127

; <label>:28:                                     ; preds = %17
  %29 = load i8, i8* %5, align 1, !dbg !1128
  %30 = sext i8 %29 to i32, !dbg !1130
  %31 = icmp ne i32 %30, 0, !dbg !1130
  br i1 %31, label %32, label %35, !dbg !1130

; <label>:32:                                     ; preds = %28
  %33 = load %union.pthread_rwlock_t*, %union.pthread_rwlock_t** %4, align 8, !dbg !1131
  %34 = call i32 @pthread_rwlock_rdlock(%union.pthread_rwlock_t* %33) #9, !dbg !1133
  br label %38, !dbg !1134

; <label>:35:                                     ; preds = %28
  %36 = load %union.pthread_rwlock_t*, %union.pthread_rwlock_t** %4, align 8, !dbg !1135
  %37 = call i32 @pthread_rwlock_wrlock(%union.pthread_rwlock_t* %36) #9, !dbg !1136
  br label %38, !dbg !1137

; <label>:38:                                     ; preds = %35, %32
  %39 = phi i32 [ %34, %32 ], [ %37, %35 ], !dbg !1139
  %40 = load i32*, i32** %6, align 8, !dbg !1141
  store i32 %39, i32* %40, align 4, !dbg !1142
  br label %41, !dbg !1143

; <label>:41:                                     ; preds = %38, %17
  %42 = load i8, i8* %7, align 1, !dbg !1144
  ret i8 %42, !dbg !1145
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXRecLockAcquire(%struct.MXRecLock*, i64*) #3 !dbg !1146 {
  %3 = alloca %struct.MXRecLock*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.MXRecLock* %0, %struct.MXRecLock** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %3, metadata !1150, metadata !166), !dbg !1151
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !1152, metadata !166), !dbg !1153
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1154, metadata !166), !dbg !1155
  %7 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !1156
  %8 = call i32 @MXRecLockCount(%struct.MXRecLock* %7), !dbg !1158
  %9 = icmp sgt i32 %8, 0, !dbg !1159
  %10 = zext i1 %9 to i32, !dbg !1159
  %11 = sext i32 %10 to i64, !dbg !1160
  %12 = icmp ne i64 %11, 0, !dbg !1161
  br i1 %12, label %13, label %25, !dbg !1162

; <label>:13:                                     ; preds = %2
  %14 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !1163
  %15 = call signext i8 @MXRecLockIsOwner(%struct.MXRecLock* %14), !dbg !1165
  %16 = sext i8 %15 to i32, !dbg !1165
  %17 = icmp ne i32 %16, 0, !dbg !1165
  br i1 %17, label %18, label %25, !dbg !1166

; <label>:18:                                     ; preds = %13
  %19 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !1167
  call void @MXRecLockIncCount(%struct.MXRecLock* %19, i32 1), !dbg !1169
  %20 = load i64*, i64** %4, align 8, !dbg !1170
  %21 = icmp ne i64* %20, null, !dbg !1172
  br i1 %21, label %22, label %24, !dbg !1173

; <label>:22:                                     ; preds = %18
  %23 = load i64*, i64** %4, align 8, !dbg !1174
  store i64 0, i64* %23, align 8, !dbg !1176
  br label %24, !dbg !1177

; <label>:24:                                     ; preds = %22, %18
  br label %46, !dbg !1178

; <label>:25:                                     ; preds = %13, %2
  %26 = load i64*, i64** %4, align 8, !dbg !1179
  %27 = icmp eq i64* %26, null, !dbg !1181
  %28 = xor i1 %27, true, !dbg !1182
  %29 = xor i1 %28, true, !dbg !1183
  %30 = zext i1 %29 to i32, !dbg !1183
  %31 = sext i32 %30 to i64, !dbg !1183
  %32 = icmp ne i64 %31, 0, !dbg !1184
  br i1 %32, label %33, label %36, !dbg !1185

; <label>:33:                                     ; preds = %25
  %34 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !1186
  %35 = call i32 @MXRecLockAcquireInternal(%struct.MXRecLock* %34), !dbg !1188
  store i32 %35, i32* %5, align 4, !dbg !1189
  br label %44, !dbg !1190

; <label>:36:                                     ; preds = %25
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1191, metadata !166), !dbg !1193
  %37 = call i64 @Hostinfo_SystemTimerNS(), !dbg !1194
  store i64 %37, i64* %6, align 8, !dbg !1193
  %38 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !1195
  %39 = call i32 @MXRecLockAcquireInternal(%struct.MXRecLock* %38), !dbg !1196
  store i32 %39, i32* %5, align 4, !dbg !1197
  %40 = call i64 @Hostinfo_SystemTimerNS(), !dbg !1198
  %41 = load i64, i64* %6, align 8, !dbg !1199
  %42 = sub nsw i64 %40, %41, !dbg !1200
  %43 = load i64*, i64** %4, align 8, !dbg !1201
  store i64 %42, i64* %43, align 8, !dbg !1202
  br label %44

; <label>:44:                                     ; preds = %36, %33
  %45 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !1203
  call void @MXRecLockIncCount(%struct.MXRecLock* %45, i32 1), !dbg !1204
  br label %46, !dbg !1205

; <label>:46:                                     ; preds = %44, %24
  ret void, !dbg !1206
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Atomic_Inc32(%struct.Atomic_uint32*) #3 !dbg !1207 {
  %2 = alloca %struct.Atomic_uint32*, align 8
  store %struct.Atomic_uint32* %0, %struct.Atomic_uint32** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint32** %2, metadata !1208, metadata !166), !dbg !1209
  %3 = load %struct.Atomic_uint32*, %struct.Atomic_uint32** %2, align 8, !dbg !1210
  %4 = getelementptr inbounds %struct.Atomic_uint32, %struct.Atomic_uint32* %3, i32 0, i32 0, !dbg !1211
  call void asm sideeffect "lock; incl $0", "=*m,*m,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %4, i32* %4) #9, !dbg !1212, !srcloc !1213
  ret void, !dbg !1214
}

; Function Attrs: nounwind
declare i32 @pthread_rwlock_tryrdlock(%union.pthread_rwlock_t*) #5

; Function Attrs: nounwind
declare i32 @pthread_rwlock_trywrlock(%union.pthread_rwlock_t*) #5

; Function Attrs: nounwind
declare i32 @pthread_rwlock_rdlock(%union.pthread_rwlock_t*) #5

; Function Attrs: nounwind
declare i32 @pthread_rwlock_wrlock(%union.pthread_rwlock_t*) #5

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @MXRecLockIsOwner(%struct.MXRecLock*) #3 !dbg !1215 {
  %2 = alloca %struct.MXRecLock*, align 8
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !1218, metadata !166), !dbg !1219
  %3 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !1220
  %4 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %3, i32 0, i32 2, !dbg !1221
  %5 = load i64, i64* %4, align 8, !dbg !1221
  %6 = call i64 @MXUserNativeThreadID(), !dbg !1222
  %7 = call i32 @pthread_equal(i64 %5, i64 %6) #1, !dbg !1223
  %8 = trunc i32 %7 to i8, !dbg !1225
  ret i8 %8, !dbg !1226
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXRecLockIncCount(%struct.MXRecLock*, i32) #3 !dbg !1227 {
  %3 = alloca %struct.MXRecLock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.MXRecLock* %0, %struct.MXRecLock** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %3, metadata !1230, metadata !166), !dbg !1231
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1232, metadata !166), !dbg !1233
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1234, metadata !166), !dbg !1235
  %6 = load i32, i32* %4, align 4, !dbg !1236
  %7 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !1237
  %8 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %7, i32 0, i32 1, !dbg !1238
  %9 = load i32, i32* %8, align 8, !dbg !1239
  %10 = add nsw i32 %9, %6, !dbg !1239
  store i32 %10, i32* %8, align 8, !dbg !1239
  store i32 %10, i32* %5, align 4, !dbg !1235
  %11 = load i32, i32* %5, align 4, !dbg !1240
  %12 = load i32, i32* %4, align 4, !dbg !1242
  %13 = icmp eq i32 %11, %12, !dbg !1243
  %14 = xor i1 %13, true, !dbg !1244
  %15 = xor i1 %14, true, !dbg !1245
  %16 = zext i1 %15 to i32, !dbg !1245
  %17 = sext i32 %16 to i64, !dbg !1245
  %18 = icmp ne i64 %17, 0, !dbg !1246
  br i1 %18, label %19, label %21, !dbg !1247

; <label>:19:                                     ; preds = %2
  %20 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !1248
  call void @MXRecLockSetOwner(%struct.MXRecLock* %20), !dbg !1250
  br label %21, !dbg !1251

; <label>:21:                                     ; preds = %19, %2
  ret void, !dbg !1252
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @MXRecLockAcquireInternal(%struct.MXRecLock*) #3 !dbg !1253 {
  %2 = alloca %struct.MXRecLock*, align 8
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !1254, metadata !166), !dbg !1255
  %3 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !1256
  %4 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %3, i32 0, i32 0, !dbg !1257
  %5 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %4) #9, !dbg !1258
  ret i32 %5, !dbg !1259
}

declare i64 @Hostinfo_SystemTimerNS() #2

; Function Attrs: nounwind readnone
declare i32 @pthread_equal(i64, i64) #8

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @MXUserNativeThreadID() #3 !dbg !1260 {
  %1 = call i64 @pthread_self() #1, !dbg !1263
  ret i64 %1, !dbg !1264
}

; Function Attrs: nounwind readnone
declare i64 @pthread_self() #8

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXRecLockSetOwner(%struct.MXRecLock*) #3 !dbg !1265 {
  %2 = alloca %struct.MXRecLock*, align 8
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !1266, metadata !166), !dbg !1267
  %3 = call i64 @MXUserNativeThreadID(), !dbg !1268
  %4 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !1269
  %5 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %4, i32 0, i32 2, !dbg !1270
  store i64 %3, i64* %5, align 8, !dbg !1271
  ret void, !dbg !1272
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #5

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @MXUserCastedThreadID() #3 !dbg !1273 {
  %1 = call i64 @VThread_CurID(), !dbg !1276
  %2 = inttoptr i64 %1 to i8*, !dbg !1277
  ret i8* %2, !dbg !1278
}

declare signext i8 @HashTable_Lookup(%struct.HashTable*, i8*, i8**) #2

declare i8* @UtilSafeMalloc0(i64) #2

declare i8* @HashTable_LookupOrInsert(%struct.HashTable*, i8*, i8*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @VThread_CurID() #3 !dbg !1279 {
  %1 = call i64 @VThreadBase_CurID(), !dbg !1284
  ret i64 %1, !dbg !1285
}

declare i64 @VThreadBase_CurID() #2

; Function Attrs: nounwind
declare i32 @pthread_rwlock_unlock(%union.pthread_rwlock_t*) #5

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXRecLockDecCount(%struct.MXRecLock*, i32) #3 !dbg !1286 {
  %3 = alloca %struct.MXRecLock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.MXRecLock* %0, %struct.MXRecLock** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %3, metadata !1287, metadata !166), !dbg !1288
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1289, metadata !166), !dbg !1290
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1291, metadata !166), !dbg !1292
  %6 = load i32, i32* %4, align 4, !dbg !1293
  %7 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !1294
  %8 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %7, i32 0, i32 1, !dbg !1295
  %9 = load i32, i32* %8, align 8, !dbg !1296
  %10 = sub nsw i32 %9, %6, !dbg !1296
  store i32 %10, i32* %8, align 8, !dbg !1296
  store i32 %10, i32* %5, align 4, !dbg !1292
  %11 = load i32, i32* %5, align 4, !dbg !1297
  %12 = icmp eq i32 %11, 0, !dbg !1299
  %13 = xor i1 %12, true, !dbg !1300
  %14 = xor i1 %13, true, !dbg !1301
  %15 = zext i1 %14 to i32, !dbg !1301
  %16 = sext i32 %15 to i64, !dbg !1301
  %17 = icmp ne i64 %16, 0, !dbg !1302
  br i1 %17, label %18, label %20, !dbg !1303

; <label>:18:                                     ; preds = %2
  %19 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !1304
  call void @MXRecLockSetNoOwner(%struct.MXRecLock* %19), !dbg !1306
  br label %20, !dbg !1307

; <label>:20:                                     ; preds = %18, %2
  ret void, !dbg !1308
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @MXRecLockReleaseInternal(%struct.MXRecLock*) #3 !dbg !1309 {
  %2 = alloca %struct.MXRecLock*, align 8
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !1310, metadata !166), !dbg !1311
  %3 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !1312
  %4 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %3, i32 0, i32 0, !dbg !1313
  %5 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %4) #9, !dbg !1314
  ret i32 %5, !dbg !1315
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #5

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @Atomic_Read64(%struct.Atomic_uint64*) #3 !dbg !1316 {
  %2 = alloca %struct.Atomic_uint64*, align 8
  %3 = alloca i64, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %2, metadata !1321, metadata !166), !dbg !1322
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1323, metadata !166), !dbg !1324
  %4 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %2, align 8, !dbg !1325
  %5 = getelementptr inbounds %struct.Atomic_uint64, %struct.Atomic_uint64* %4, i32 0, i32 0, !dbg !1326
  %6 = call i64 asm sideeffect "movq $1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i64* %5) #9, !dbg !1327, !srcloc !1328
  store i64 %6, i64* %3, align 8, !dbg !1327
  %7 = load i64, i64* %3, align 8, !dbg !1329
  ret i64 %7, !dbg !1330
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @Atomic_ReadIfEqualWrite64(%struct.Atomic_uint64*, i64, i64) #3 !dbg !1331 {
  %4 = alloca %struct.Atomic_uint64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %4, metadata !1335, metadata !166), !dbg !1336
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1337, metadata !166), !dbg !1338
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1339, metadata !166), !dbg !1340
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1341, metadata !166), !dbg !1342
  %8 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !1343
  %9 = getelementptr inbounds %struct.Atomic_uint64, %struct.Atomic_uint64* %8, i32 0, i32 0, !dbg !1344
  %10 = load i64, i64* %6, align 8, !dbg !1345
  %11 = load i64, i64* %5, align 8, !dbg !1346
  %12 = call i64 asm sideeffect "lock; cmpxchgq $2, $1", "={ax},=*m,r,0,*m,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10, i64 %11, i64* %9) #9, !dbg !1347, !srcloc !1348
  store i64 %12, i64* %7, align 8, !dbg !1347
  %13 = load i64, i64* %7, align 8, !dbg !1349
  ret i64 %13, !dbg !1350
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { noreturn }
attributes #11 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!157, !158}
!llvm.ident = !{!159}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !21)
!1 = !DIFile(filename: "ulRW.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line502")
!2 = !{!3, !15}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 440, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "ulInt.h", directory: "/home/lichi/Desktop/open-vm-tools/line502")
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
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 230, size: 32, align: 32, elements: !17)
!16 = !DIFile(filename: "ulRW.c", directory: "/home/lichi/Desktop/open-vm-tools/line502")
!17 = !{!18, !19, !20}
!18 = !DIEnumerator(name: "RW_UNLOCKED", value: 0)
!19 = !DIEnumerator(name: "RW_LOCKED_FOR_READ", value: 1)
!20 = !DIEnumerator(name: "RW_LOCKED_FOR_WRITE", value: 2)
!21 = !{!22, !154, !155, !156, !151}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserRWLock", file: !24, line: 40, baseType: !25)
!24 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/userlock.h", directory: "/home/lichi/Desktop/open-vm-tools/line502")
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MXUserRWLock", file: !16, line: 241, size: 1664, align: 64, elements: !26)
!26 = !{!27, !61, !63, !97, !132, !139, !144, !153}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !25, file: !16, line: 243, baseType: !28, size: 448, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserHeader", file: !4, line: 469, baseType: !29)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MXUserHeader", file: !4, line: 456, size: 448, align: 64, elements: !30)
!30 = !{!31, !37, !40, !42, !47, !52, !53}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !29, file: !4, line: 457, baseType: !32, size: 32, align: 32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !33, line: 173, baseType: !34)
!33 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line502")
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !35, line: 51, baseType: !36)
!35 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line502")
!36 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !29, file: !4, line: 458, baseType: !38, size: 64, align: 64, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "rank", scope: !29, file: !4, line: 459, baseType: !41, size: 32, align: 32, offset: 128)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "MX_Rank", file: !33, line: 1167, baseType: !32)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !29, file: !4, line: 464, baseType: !43, size: 32, align: 32, offset: 160)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !29, file: !4, line: 461, size: 32, align: 32, elements: !44)
!44 = !{!45, !46}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "serialNumber", scope: !43, file: !4, line: 462, baseType: !36, size: 24, align: 32, flags: DIFlagBitField, extraData: i64 0)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "badHeader", scope: !43, file: !4, line: 463, baseType: !36, size: 1, align: 32, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "dumpFunc", scope: !29, file: !4, line: 466, baseType: !48, size: 64, align: 64, offset: 192)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !51}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "statsFunc", scope: !29, file: !4, line: 467, baseType: !48, size: 64, align: 64, offset: 256)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !29, file: !4, line: 468, baseType: !54, size: 128, align: 64, offset: 320)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "ListItem", file: !55, line: 45, baseType: !56)
!55 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/circList.h", directory: "/home/lichi/Desktop/open-vm-tools/line502")
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ListItem", file: !55, line: 42, size: 128, align: 64, elements: !57)
!57 = !{!58, !60}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !56, file: !55, line: 43, baseType: !59, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !56, file: !55, line: 44, baseType: !59, size: 64, align: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "useNative", scope: !25, file: !16, line: 245, baseType: !62, size: 8, align: 8, offset: 448)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !33, line: 230, baseType: !39)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "nativeLock", scope: !25, file: !16, line: 246, baseType: !64, size: 448, align: 64, offset: 512)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "NativeRWLock", file: !16, line: 158, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_rwlock_t", file: !66, line: 222, baseType: !67)
!66 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line502")
!67 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !66, line: 174, size: 448, align: 64, elements: !68)
!68 = !{!69, !91, !95}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !67, file: !66, line: 200, baseType: !70, size: 448, align: 64)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !67, file: !66, line: 177, size: 448, align: 64, elements: !71)
!71 = !{!72, !74, !75, !76, !77, !78, !79, !80, !81, !83, !88, !90}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !70, file: !66, line: 179, baseType: !73, size: 32, align: 32)
!73 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "__nr_readers", scope: !70, file: !66, line: 180, baseType: !36, size: 32, align: 32, offset: 32)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "__readers_wakeup", scope: !70, file: !66, line: 181, baseType: !36, size: 32, align: 32, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "__writer_wakeup", scope: !70, file: !66, line: 182, baseType: !36, size: 32, align: 32, offset: 96)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "__nr_readers_queued", scope: !70, file: !66, line: 183, baseType: !36, size: 32, align: 32, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "__nr_writers_queued", scope: !70, file: !66, line: 184, baseType: !36, size: 32, align: 32, offset: 160)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "__writer", scope: !70, file: !66, line: 185, baseType: !73, size: 32, align: 32, offset: 192)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "__shared", scope: !70, file: !66, line: 186, baseType: !73, size: 32, align: 32, offset: 224)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "__rwelision", scope: !70, file: !66, line: 187, baseType: !82, size: 8, align: 8, offset: 256)
!82 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !70, file: !66, line: 192, baseType: !84, size: 56, align: 8, offset: 264)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 56, align: 8, elements: !86)
!85 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!86 = !{!87}
!87 = !DISubrange(count: 7)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !70, file: !66, line: 195, baseType: !89, size: 64, align: 64, offset: 320)
!89 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__flags", scope: !70, file: !66, line: 198, baseType: !36, size: 32, align: 32, offset: 384)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !67, file: !66, line: 220, baseType: !92, size: 448, align: 8)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 448, align: 8, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 56)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !67, file: !66, line: 221, baseType: !96, size: 64, align: 64)
!96 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "recursiveLock", scope: !25, file: !16, line: 247, baseType: !98, size: 448, align: 64, offset: 960)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXRecLock", file: !4, line: 67, baseType: !99)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 58, size: 448, align: 64, elements: !100)
!100 = !{!101, !128, !129}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "nativeLock", scope: !99, file: !4, line: 62, baseType: !102, size: 320, align: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !66, line: 128, baseType: !103)
!103 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !66, line: 90, size: 320, align: 64, elements: !104)
!104 = !{!105, !123, !127}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !103, file: !66, line: 125, baseType: !106, size: 320, align: 64)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !66, line: 92, size: 320, align: 64, elements: !107)
!107 = !{!108, !109, !110, !111, !112, !113, !115, !116}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !106, file: !66, line: 94, baseType: !73, size: 32, align: 32)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !106, file: !66, line: 95, baseType: !36, size: 32, align: 32, offset: 32)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !106, file: !66, line: 96, baseType: !73, size: 32, align: 32, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !106, file: !66, line: 98, baseType: !36, size: 32, align: 32, offset: 96)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !106, file: !66, line: 102, baseType: !73, size: 32, align: 32, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !106, file: !66, line: 104, baseType: !114, size: 16, align: 16, offset: 160)
!114 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !106, file: !66, line: 105, baseType: !114, size: 16, align: 16, offset: 176)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !106, file: !66, line: 106, baseType: !117, size: 128, align: 64, offset: 192)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !66, line: 79, baseType: !118)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !66, line: 75, size: 128, align: 64, elements: !119)
!119 = !{!120, !122}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !118, file: !66, line: 77, baseType: !121, size: 64, align: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !118, file: !66, line: 78, baseType: !121, size: 64, align: 64, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !103, file: !66, line: 126, baseType: !124, size: 320, align: 8)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 320, align: 8, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 40)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !103, file: !66, line: 127, baseType: !96, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "referenceCount", scope: !99, file: !4, line: 65, baseType: !73, size: 32, align: 32, offset: 320)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "nativeThreadID", scope: !99, file: !4, line: 66, baseType: !130, size: 64, align: 64, offset: 384)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserThreadID", file: !4, line: 39, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !66, line: 60, baseType: !89)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "holderCount", scope: !25, file: !16, line: 249, baseType: !133, size: 32, align: 32, offset: 1408)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_uint32", file: !134, line: 135, baseType: !135)
!134 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_atomic.h", directory: "/home/lichi/Desktop/open-vm-tools/line502")
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Atomic_uint32", file: !134, line: 133, size: 32, align: 32, elements: !136)
!136 = !{!137}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !135, file: !134, line: 134, baseType: !138, size: 32, align: 32)
!138 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !32)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "holderTable", scope: !25, file: !16, line: 250, baseType: !140, size: 64, align: 64, offset: 1472)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "HashTable", file: !142, line: 40, baseType: !143)
!142 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/hashTable.h", directory: "/home/lichi/Desktop/open-vm-tools/line502")
!143 = !DICompositeType(tag: DW_TAG_structure_type, name: "HashTable", file: !142, line: 40, flags: DIFlagFwdDecl)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "heldStatsMem", scope: !25, file: !16, line: 252, baseType: !145, size: 64, align: 64, offset: 1536)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_Ptr", file: !134, line: 3829, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_uint64", file: !134, line: 139, baseType: !147)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Atomic_uint64", file: !134, line: 137, size: 64, align: 64, elements: !148)
!148 = !{!149}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !147, file: !134, line: 138, baseType: !150, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !33, line: 171, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !35, line: 55, baseType: !89)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "acquireStatsMem", scope: !25, file: !16, line: 253, baseType: !145, size: 64, align: 64, offset: 1600)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64, align: 64)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !35, line: 122, baseType: !89)
!157 = !{i32 2, !"Dwarf Version", i32 4}
!158 = !{i32 2, !"Debug Info Version", i32 3}
!159 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!160 = distinct !DISubprogram(name: "MXUserDumpRWLock", scope: !16, file: !16, line: 346, type: !161, isLocal: false, isDefinition: true, scopeLine: 347, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !164)
!161 = !DISubroutineType(types: !162)
!162 = !{null, !163}
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!164 = !{}
!165 = !DILocalVariable(name: "header", arg: 1, scope: !160, file: !16, line: 346, type: !163)
!166 = !DIExpression()
!167 = !DILocation(line: 346, column: 32, scope: !160)
!168 = !DILocalVariable(name: "lock", scope: !160, file: !16, line: 348, type: !22)
!169 = !DILocation(line: 348, column: 18, scope: !160)
!170 = !DILocation(line: 348, column: 42, scope: !160)
!171 = !DILocation(line: 348, column: 25, scope: !160)
!172 = !DILocation(line: 350, column: 58, scope: !160)
!173 = !DILocation(line: 350, column: 4, scope: !160)
!174 = !DILocation(line: 352, column: 34, scope: !160)
!175 = !DILocation(line: 352, column: 40, scope: !160)
!176 = !DILocation(line: 352, column: 47, scope: !160)
!177 = !DILocation(line: 352, column: 4, scope: !160)
!178 = !DILocation(line: 353, column: 27, scope: !160)
!179 = !DILocation(line: 353, column: 33, scope: !160)
!180 = !DILocation(line: 353, column: 40, scope: !160)
!181 = !DILocation(line: 353, column: 4, scope: !160)
!182 = !DILocation(line: 354, column: 29, scope: !160)
!183 = !DILocation(line: 354, column: 35, scope: !160)
!184 = !DILocation(line: 354, column: 42, scope: !160)
!185 = !DILocation(line: 354, column: 4, scope: !160)
!186 = !DILocation(line: 355, column: 36, scope: !160)
!187 = !DILocation(line: 355, column: 42, scope: !160)
!188 = !DILocation(line: 355, column: 49, scope: !160)
!189 = !DILocation(line: 355, column: 54, scope: !160)
!190 = !DILocation(line: 355, column: 4, scope: !160)
!191 = !DILocation(line: 357, column: 28, scope: !192)
!192 = distinct !DILexicalBlock(scope: !160, file: !16, line: 357, column: 8)
!193 = !DILocation(line: 357, column: 34, scope: !192)
!194 = !DILocation(line: 357, column: 26, scope: !192)
!195 = !DILocation(line: 357, column: 25, scope: !192)
!196 = !DILocation(line: 357, column: 8, scope: !192)
!197 = !DILocation(line: 357, column: 8, scope: !160)
!198 = !DILocation(line: 358, column: 51, scope: !199)
!199 = distinct !DILexicalBlock(scope: !192, file: !16, line: 357, column: 50)
!200 = !DILocation(line: 358, column: 57, scope: !199)
!201 = !DILocation(line: 358, column: 7, scope: !199)
!202 = !DILocation(line: 359, column: 4, scope: !199)
!203 = !DILocation(line: 360, column: 47, scope: !204)
!204 = distinct !DILexicalBlock(scope: !192, file: !16, line: 359, column: 11)
!205 = !DILocation(line: 360, column: 53, scope: !204)
!206 = !DILocation(line: 360, column: 31, scope: !204)
!207 = !DILocation(line: 360, column: 7, scope: !208)
!208 = !DILexicalBlockFile(scope: !204, file: !16, discriminator: 1)
!209 = !DILocation(line: 363, column: 49, scope: !160)
!210 = !DILocation(line: 363, column: 55, scope: !160)
!211 = !DILocation(line: 363, column: 34, scope: !160)
!212 = !DILocation(line: 363, column: 4, scope: !213)
!213 = !DILexicalBlockFile(scope: !160, file: !16, discriminator: 1)
!214 = !DILocation(line: 364, column: 1, scope: !160)
!215 = distinct !DISubprogram(name: "MXRecLockCount", scope: !4, file: !4, line: 290, type: !216, isLocal: true, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !164)
!216 = !DISubroutineType(types: !217)
!217 = !{!73, !218}
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64, align: 64)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!220 = !DILocalVariable(name: "lock", arg: 1, scope: !215, file: !4, line: 290, type: !218)
!221 = !DILocation(line: 290, column: 33, scope: !215)
!222 = !DILocation(line: 295, column: 11, scope: !215)
!223 = !DILocation(line: 295, column: 17, scope: !215)
!224 = !DILocation(line: 295, column: 4, scope: !215)
!225 = distinct !DISubprogram(name: "Atomic_Read32", scope: !134, file: !134, line: 911, type: !226, isLocal: true, isDefinition: true, scopeLine: 912, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !164)
!226 = !DISubroutineType(types: !227)
!227 = !{!32, !228}
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64, align: 64)
!229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!230 = !DILocalVariable(name: "var", arg: 1, scope: !225, file: !134, line: 911, type: !228)
!231 = !DILocation(line: 911, column: 36, scope: !225)
!232 = !DILocalVariable(name: "value", scope: !225, file: !134, line: 913, type: !32)
!233 = !DILocation(line: 913, column: 11, scope: !225)
!234 = !DILocation(line: 938, column: 14, scope: !225)
!235 = !DILocation(line: 938, column: 19, scope: !225)
!236 = !DILocation(line: 935, column: 4, scope: !225)
!237 = !{i32 140999}
!238 = !DILocation(line: 953, column: 11, scope: !225)
!239 = !DILocation(line: 953, column: 4, scope: !225)
!240 = distinct !DISubprogram(name: "MXUser_CreateRWLock", scope: !16, file: !16, line: 394, type: !241, isLocal: false, isDefinition: true, scopeLine: 396, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !164)
!241 = !DISubroutineType(types: !242)
!242 = !{!22, !243, !41}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, align: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!245 = !DILocalVariable(name: "userName", arg: 1, scope: !240, file: !16, line: 394, type: !243)
!246 = !DILocation(line: 394, column: 33, scope: !240)
!247 = !DILocalVariable(name: "rank", arg: 2, scope: !240, file: !16, line: 395, type: !41)
!248 = !DILocation(line: 395, column: 29, scope: !240)
!249 = !DILocalVariable(name: "lockInited", scope: !240, file: !16, line: 397, type: !62)
!250 = !DILocation(line: 397, column: 9, scope: !240)
!251 = !DILocalVariable(name: "properName", scope: !240, file: !16, line: 398, type: !38)
!252 = !DILocation(line: 398, column: 10, scope: !240)
!253 = !DILocalVariable(name: "useNative", scope: !240, file: !16, line: 399, type: !62)
!254 = !DILocation(line: 399, column: 9, scope: !240)
!255 = !DILocation(line: 399, column: 21, scope: !240)
!256 = !DILocalVariable(name: "lock", scope: !240, file: !16, line: 400, type: !22)
!257 = !DILocation(line: 400, column: 18, scope: !240)
!258 = !DILocation(line: 400, column: 25, scope: !240)
!259 = !DILocation(line: 402, column: 8, scope: !260)
!260 = distinct !DILexicalBlock(scope: !240, file: !16, line: 402, column: 8)
!261 = !DILocation(line: 402, column: 17, scope: !260)
!262 = !DILocation(line: 402, column: 8, scope: !240)
!263 = !DILocation(line: 403, column: 31, scope: !264)
!264 = distinct !DILexicalBlock(scope: !265, file: !16, line: 403, column: 11)
!265 = distinct !DILexicalBlock(scope: !260, file: !16, line: 402, column: 25)
!266 = !DILocation(line: 403, column: 29, scope: !264)
!267 = !DILocation(line: 403, column: 28, scope: !264)
!268 = !DILocation(line: 403, column: 11, scope: !264)
!269 = !DILocation(line: 403, column: 11, scope: !265)
!270 = !DILocation(line: 404, column: 54, scope: !271)
!271 = distinct !DILexicalBlock(scope: !264, file: !16, line: 403, column: 47)
!272 = !DILocation(line: 404, column: 23, scope: !273)
!273 = !DILexicalBlockFile(scope: !271, file: !16, discriminator: 1)
!274 = !DILocation(line: 404, column: 21, scope: !271)
!275 = !DILocation(line: 405, column: 7, scope: !271)
!276 = !DILocation(line: 407, column: 58, scope: !277)
!277 = distinct !DILexicalBlock(scope: !264, file: !16, line: 405, column: 14)
!278 = !DILocation(line: 407, column: 23, scope: !279)
!279 = !DILexicalBlockFile(scope: !277, file: !16, discriminator: 1)
!280 = !DILocation(line: 407, column: 21, scope: !277)
!281 = !DILocation(line: 409, column: 4, scope: !265)
!282 = !DILocation(line: 410, column: 37, scope: !283)
!283 = distinct !DILexicalBlock(scope: !260, file: !16, line: 409, column: 11)
!284 = !DILocation(line: 410, column: 20, scope: !283)
!285 = !DILocation(line: 410, column: 18, scope: !283)
!286 = !DILocation(line: 413, column: 29, scope: !240)
!287 = !DILocation(line: 413, column: 4, scope: !240)
!288 = !DILocation(line: 413, column: 10, scope: !240)
!289 = !DILocation(line: 413, column: 17, scope: !240)
!290 = !DILocation(line: 413, column: 27, scope: !240)
!291 = !DILocation(line: 414, column: 24, scope: !240)
!292 = !DILocation(line: 414, column: 4, scope: !240)
!293 = !DILocation(line: 414, column: 10, scope: !240)
!294 = !DILocation(line: 414, column: 17, scope: !240)
!295 = !DILocation(line: 414, column: 22, scope: !240)
!296 = !DILocation(line: 415, column: 24, scope: !240)
!297 = !DILocation(line: 415, column: 4, scope: !240)
!298 = !DILocation(line: 415, column: 10, scope: !240)
!299 = !DILocation(line: 415, column: 17, scope: !240)
!300 = !DILocation(line: 415, column: 22, scope: !240)
!301 = !DILocation(line: 416, column: 37, scope: !240)
!302 = !DILocation(line: 416, column: 4, scope: !240)
!303 = !DILocation(line: 416, column: 10, scope: !240)
!304 = !DILocation(line: 416, column: 17, scope: !240)
!305 = !DILocation(line: 416, column: 22, scope: !240)
!306 = !DILocation(line: 416, column: 35, scope: !240)
!307 = !DILocation(line: 417, column: 4, scope: !240)
!308 = !DILocation(line: 417, column: 10, scope: !240)
!309 = !DILocation(line: 417, column: 17, scope: !240)
!310 = !DILocation(line: 417, column: 26, scope: !240)
!311 = !DILocation(line: 425, column: 22, scope: !240)
!312 = !DILocation(line: 425, column: 32, scope: !240)
!313 = !DILocation(line: 425, column: 55, scope: !314)
!314 = !DILexicalBlockFile(scope: !240, file: !16, discriminator: 1)
!315 = !DILocation(line: 425, column: 61, scope: !314)
!316 = !DILocation(line: 425, column: 35, scope: !314)
!317 = !DILocation(line: 425, column: 32, scope: !314)
!318 = !DILocation(line: 425, column: 32, scope: !319)
!319 = !DILexicalBlockFile(scope: !240, file: !16, discriminator: 2)
!320 = !DILocation(line: 425, column: 22, scope: !319)
!321 = !DILocation(line: 425, column: 4, scope: !319)
!322 = !DILocation(line: 425, column: 10, scope: !319)
!323 = !DILocation(line: 425, column: 20, scope: !319)
!324 = !DILocation(line: 427, column: 32, scope: !240)
!325 = !DILocation(line: 427, column: 38, scope: !240)
!326 = !DILocation(line: 427, column: 17, scope: !240)
!327 = !DILocation(line: 427, column: 15, scope: !240)
!328 = !DILocation(line: 429, column: 28, scope: !329)
!329 = distinct !DILexicalBlock(scope: !240, file: !16, line: 429, column: 8)
!330 = !DILocation(line: 429, column: 26, scope: !329)
!331 = !DILocation(line: 429, column: 25, scope: !329)
!332 = !DILocation(line: 429, column: 8, scope: !329)
!333 = !DILocation(line: 429, column: 8, scope: !240)
!334 = !DILocalVariable(name: "statsMode", scope: !335, file: !16, line: 430, type: !32)
!335 = distinct !DILexicalBlock(scope: !329, file: !16, line: 429, column: 45)
!336 = !DILocation(line: 430, column: 14, scope: !335)
!337 = !DILocation(line: 432, column: 27, scope: !335)
!338 = !DILocation(line: 432, column: 7, scope: !335)
!339 = !DILocation(line: 432, column: 13, scope: !335)
!340 = !DILocation(line: 432, column: 25, scope: !335)
!341 = !DILocation(line: 436, column: 19, scope: !335)
!342 = !DILocation(line: 436, column: 17, scope: !335)
!343 = !DILocation(line: 438, column: 15, scope: !335)
!344 = !DILocation(line: 438, column: 7, scope: !335)
!345 = !DILocation(line: 440, column: 30, scope: !346)
!346 = distinct !DILexicalBlock(scope: !335, file: !16, line: 438, column: 34)
!347 = !DILocation(line: 440, column: 36, scope: !346)
!348 = !DILocation(line: 440, column: 54, scope: !346)
!349 = !DILocation(line: 440, column: 60, scope: !346)
!350 = !DILocation(line: 440, column: 10, scope: !346)
!351 = !DILocation(line: 441, column: 10, scope: !346)
!352 = !DILocation(line: 441, column: 16, scope: !346)
!353 = !DILocation(line: 441, column: 23, scope: !346)
!354 = !DILocation(line: 441, column: 33, scope: !346)
!355 = !DILocation(line: 442, column: 10, scope: !346)
!356 = !DILocation(line: 445, column: 29, scope: !346)
!357 = !DILocation(line: 445, column: 35, scope: !346)
!358 = !DILocation(line: 445, column: 10, scope: !346)
!359 = !DILocation(line: 446, column: 10, scope: !346)
!360 = !DILocation(line: 446, column: 16, scope: !346)
!361 = !DILocation(line: 446, column: 23, scope: !346)
!362 = !DILocation(line: 446, column: 33, scope: !346)
!363 = !DILocation(line: 447, column: 10, scope: !346)
!364 = !DILocation(line: 450, column: 29, scope: !346)
!365 = !DILocation(line: 450, column: 35, scope: !346)
!366 = !DILocation(line: 450, column: 53, scope: !346)
!367 = !DILocation(line: 450, column: 59, scope: !346)
!368 = !DILocation(line: 450, column: 10, scope: !346)
!369 = !DILocation(line: 451, column: 10, scope: !346)
!370 = !DILocation(line: 451, column: 16, scope: !346)
!371 = !DILocation(line: 451, column: 23, scope: !346)
!372 = !DILocation(line: 451, column: 33, scope: !346)
!373 = !DILocation(line: 452, column: 10, scope: !346)
!374 = !DILocation(line: 455, column: 63, scope: !346)
!375 = !DILocation(line: 455, column: 10, scope: !346)
!376 = !DILocation(line: 458, column: 24, scope: !335)
!377 = !DILocation(line: 458, column: 30, scope: !335)
!378 = !DILocation(line: 458, column: 7, scope: !335)
!379 = !DILocation(line: 459, column: 4, scope: !335)
!380 = !DILocation(line: 460, column: 7, scope: !381)
!381 = distinct !DILexicalBlock(scope: !329, file: !16, line: 459, column: 11)
!382 = !DILocation(line: 463, column: 11, scope: !240)
!383 = !DILocation(line: 463, column: 4, scope: !240)
!384 = distinct !DISubprogram(name: "MXUserNativeRWSupported", scope: !16, file: !16, line: 164, type: !385, isLocal: true, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !164)
!385 = !DISubroutineType(types: !386)
!386 = !{!62}
!387 = !DILocation(line: 167, column: 4, scope: !384)
!388 = distinct !DISubprogram(name: "MXUserNativeRWInit", scope: !16, file: !16, line: 174, type: !389, isLocal: true, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !164)
!389 = !DISubroutineType(types: !390)
!390 = !{!62, !391}
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!392 = !DILocalVariable(name: "lock", arg: 1, scope: !388, file: !16, line: 174, type: !391)
!393 = !DILocation(line: 174, column: 34, scope: !388)
!394 = !DILocation(line: 177, column: 32, scope: !388)
!395 = !DILocation(line: 177, column: 12, scope: !388)
!396 = !DILocation(line: 177, column: 43, scope: !388)
!397 = !DILocation(line: 177, column: 11, scope: !388)
!398 = !DILocation(line: 177, column: 4, scope: !388)
!399 = distinct !DISubprogram(name: "MXRecLockInit", scope: !4, file: !4, line: 264, type: !400, isLocal: true, isDefinition: true, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !164)
!400 = !DISubroutineType(types: !401)
!401 = !{!62, !402}
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!403 = !DILocalVariable(name: "lock", arg: 1, scope: !399, file: !4, line: 264, type: !402)
!404 = !DILocation(line: 264, column: 26, scope: !399)
!405 = !DILocalVariable(name: "success", scope: !399, file: !4, line: 266, type: !62)
!406 = !DILocation(line: 266, column: 9, scope: !399)
!407 = !DILocation(line: 266, column: 44, scope: !399)
!408 = !DILocation(line: 266, column: 20, scope: !399)
!409 = !DILocation(line: 266, column: 50, scope: !399)
!410 = !DILocation(line: 266, column: 19, scope: !399)
!411 = !DILocation(line: 268, column: 8, scope: !412)
!412 = distinct !DILexicalBlock(scope: !399, file: !4, line: 268, column: 8)
!413 = !DILocation(line: 268, column: 8, scope: !399)
!414 = !DILocation(line: 269, column: 27, scope: !415)
!415 = distinct !DILexicalBlock(scope: !412, file: !4, line: 268, column: 17)
!416 = !DILocation(line: 269, column: 7, scope: !415)
!417 = !DILocation(line: 271, column: 7, scope: !415)
!418 = !DILocation(line: 271, column: 13, scope: !415)
!419 = !DILocation(line: 271, column: 28, scope: !415)
!420 = !DILocation(line: 272, column: 4, scope: !415)
!421 = !DILocation(line: 274, column: 11, scope: !399)
!422 = !DILocation(line: 274, column: 4, scope: !399)
!423 = distinct !DISubprogram(name: "MXUserFreeHashEntry", scope: !16, file: !16, line: 388, type: !424, isLocal: true, isDefinition: true, scopeLine: 389, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !164)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !154}
!426 = !DILocalVariable(name: "data", arg: 1, scope: !423, file: !16, line: 388, type: !154)
!427 = !DILocation(line: 388, column: 27, scope: !423)
!428 = !DILocation(line: 390, column: 9, scope: !423)
!429 = !DILocation(line: 390, column: 4, scope: !423)
!430 = !DILocation(line: 391, column: 1, scope: !423)
!431 = distinct !DISubprogram(name: "MXUserStatsActionRW", scope: !16, file: !16, line: 274, type: !161, isLocal: true, isDefinition: true, scopeLine: 275, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !164)
!432 = !DILocalVariable(name: "header", arg: 1, scope: !431, file: !16, line: 274, type: !163)
!433 = !DILocation(line: 274, column: 35, scope: !431)
!434 = !DILocalVariable(name: "lock", scope: !431, file: !16, line: 276, type: !22)
!435 = !DILocation(line: 276, column: 18, scope: !431)
!436 = !DILocation(line: 276, column: 42, scope: !431)
!437 = !DILocation(line: 276, column: 25, scope: !431)
!438 = !DILocalVariable(name: "heldStats", scope: !431, file: !16, line: 277, type: !439)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64, align: 64)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserHeldStats", file: !4, line: 569, baseType: !441)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 564, size: 512, align: 64, elements: !442)
!442 = !{!443, !447, !458}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "holdStart", scope: !441, file: !4, line: 566, baseType: !444, size: 64, align: 64)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmTimeType", file: !33, line: 354, baseType: !445)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !33, line: 172, baseType: !446)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !35, line: 40, baseType: !96)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !441, file: !4, line: 567, baseType: !448, size: 384, align: 64, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserBasicStats", file: !4, line: 539, baseType: !449)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 532, size: 384, align: 64, elements: !450)
!450 = !{!451, !452, !453, !454, !455, !456}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "typeName", scope: !449, file: !4, line: 533, baseType: !38, size: 64, align: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "numSamples", scope: !449, file: !4, line: 534, baseType: !151, size: 64, align: 64, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "minTime", scope: !449, file: !4, line: 535, baseType: !151, size: 64, align: 64, offset: 128)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "maxTime", scope: !449, file: !4, line: 536, baseType: !151, size: 64, align: 64, offset: 192)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "timeSum", scope: !449, file: !4, line: 537, baseType: !151, size: 64, align: 64, offset: 256)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "timeSquaredSum", scope: !449, file: !4, line: 538, baseType: !457, size: 64, align: 64, offset: 320)
!457 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "histo", scope: !441, file: !4, line: 568, baseType: !145, size: 64, align: 64, offset: 448)
!459 = !DILocation(line: 277, column: 21, scope: !431)
!460 = !DILocation(line: 277, column: 49, scope: !431)
!461 = !DILocation(line: 277, column: 55, scope: !431)
!462 = !DILocation(line: 277, column: 33, scope: !431)
!463 = !DILocalVariable(name: "acquireStats", scope: !431, file: !16, line: 278, type: !464)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64, align: 64)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserAcquireStats", file: !4, line: 562, baseType: !466)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 558, size: 960, align: 64, elements: !467)
!467 = !{!468, !481}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !466, file: !4, line: 560, baseType: !469, size: 896, align: 64)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserAcquisitionStats", file: !4, line: 552, baseType: !470)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 541, size: 896, align: 64, elements: !471)
!471 = !{!472, !473, !474, !475, !476, !477, !478, !479, !480}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "contentionRatioFloor", scope: !470, file: !4, line: 542, baseType: !457, size: 64, align: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "contentionCountFloor", scope: !470, file: !4, line: 543, baseType: !151, size: 64, align: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "contentionDurationFloor", scope: !470, file: !4, line: 544, baseType: !151, size: 64, align: 64, offset: 128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "numAttempts", scope: !470, file: !4, line: 545, baseType: !151, size: 64, align: 64, offset: 192)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "numSuccesses", scope: !470, file: !4, line: 546, baseType: !151, size: 64, align: 64, offset: 256)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "numSuccessesContended", scope: !470, file: !4, line: 547, baseType: !151, size: 64, align: 64, offset: 320)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "successContentionTime", scope: !470, file: !4, line: 548, baseType: !151, size: 64, align: 64, offset: 384)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "totalContentionTime", scope: !470, file: !4, line: 549, baseType: !151, size: 64, align: 64, offset: 448)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "basicStats", scope: !470, file: !4, line: 551, baseType: !448, size: 384, align: 64, offset: 512)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "histo", scope: !466, file: !4, line: 561, baseType: !145, size: 64, align: 64, offset: 896)
!482 = !DILocation(line: 278, column: 24, scope: !431)
!483 = !DILocation(line: 278, column: 55, scope: !431)
!484 = !DILocation(line: 278, column: 61, scope: !431)
!485 = !DILocation(line: 278, column: 39, scope: !431)
!486 = !DILocation(line: 280, column: 8, scope: !487)
!487 = distinct !DILexicalBlock(scope: !431, file: !16, line: 280, column: 8)
!488 = !DILocation(line: 280, column: 8, scope: !431)
!489 = !DILocation(line: 281, column: 29, scope: !490)
!490 = distinct !DILexicalBlock(scope: !487, file: !16, line: 280, column: 19)
!491 = !DILocation(line: 281, column: 40, scope: !490)
!492 = !DILocation(line: 281, column: 46, scope: !490)
!493 = !DILocation(line: 281, column: 7, scope: !490)
!494 = !DILocation(line: 283, column: 27, scope: !495)
!495 = distinct !DILexicalBlock(scope: !490, file: !16, line: 283, column: 11)
!496 = !DILocation(line: 283, column: 38, scope: !495)
!497 = !DILocation(line: 283, column: 11, scope: !495)
!498 = !DILocation(line: 283, column: 45, scope: !495)
!499 = !DILocation(line: 283, column: 11, scope: !490)
!500 = !DILocation(line: 284, column: 42, scope: !501)
!501 = distinct !DILexicalBlock(scope: !495, file: !16, line: 283, column: 53)
!502 = !DILocation(line: 284, column: 53, scope: !501)
!503 = !DILocation(line: 284, column: 26, scope: !501)
!504 = !DILocation(line: 284, column: 61, scope: !501)
!505 = !DILocation(line: 284, column: 10, scope: !506)
!506 = !DILexicalBlockFile(scope: !501, file: !16, discriminator: 1)
!507 = !DILocation(line: 285, column: 7, scope: !501)
!508 = !DILocation(line: 286, column: 4, scope: !490)
!509 = !DILocation(line: 288, column: 8, scope: !510)
!510 = distinct !DILexicalBlock(scope: !431, file: !16, line: 288, column: 8)
!511 = !DILocation(line: 288, column: 8, scope: !431)
!512 = !DILocalVariable(name: "isHot", scope: !513, file: !16, line: 289, type: !62)
!513 = distinct !DILexicalBlock(scope: !510, file: !16, line: 288, column: 22)
!514 = !DILocation(line: 289, column: 12, scope: !513)
!515 = !DILocalVariable(name: "doLog", scope: !513, file: !16, line: 290, type: !62)
!516 = !DILocation(line: 290, column: 12, scope: !513)
!517 = !DILocalVariable(name: "contentionRatio", scope: !513, file: !16, line: 291, type: !457)
!518 = !DILocation(line: 291, column: 14, scope: !513)
!519 = !DILocation(line: 297, column: 35, scope: !513)
!520 = !DILocation(line: 297, column: 49, scope: !513)
!521 = !DILocation(line: 297, column: 55, scope: !513)
!522 = !DILocation(line: 297, column: 7, scope: !513)
!523 = !DILocation(line: 299, column: 27, scope: !524)
!524 = distinct !DILexicalBlock(scope: !513, file: !16, line: 299, column: 11)
!525 = !DILocation(line: 299, column: 41, scope: !524)
!526 = !DILocation(line: 299, column: 11, scope: !524)
!527 = !DILocation(line: 299, column: 48, scope: !524)
!528 = !DILocation(line: 299, column: 11, scope: !513)
!529 = !DILocation(line: 300, column: 42, scope: !530)
!530 = distinct !DILexicalBlock(scope: !524, file: !16, line: 299, column: 56)
!531 = !DILocation(line: 300, column: 56, scope: !530)
!532 = !DILocation(line: 300, column: 26, scope: !530)
!533 = !DILocation(line: 300, column: 64, scope: !530)
!534 = !DILocation(line: 300, column: 10, scope: !535)
!535 = !DILexicalBlockFile(scope: !530, file: !16, discriminator: 1)
!536 = !DILocation(line: 301, column: 7, scope: !530)
!537 = !DILocation(line: 307, column: 22, scope: !513)
!538 = !DILocation(line: 307, column: 36, scope: !513)
!539 = !DILocation(line: 307, column: 7, scope: !513)
!540 = !DILocation(line: 309, column: 11, scope: !541)
!541 = distinct !DILexicalBlock(scope: !513, file: !16, line: 309, column: 11)
!542 = !DILocation(line: 309, column: 11, scope: !513)
!543 = !DILocation(line: 310, column: 39, scope: !544)
!544 = distinct !DILexicalBlock(scope: !541, file: !16, line: 309, column: 18)
!545 = !DILocation(line: 310, column: 45, scope: !544)
!546 = !DILocation(line: 310, column: 10, scope: !544)
!547 = !DILocation(line: 314, column: 14, scope: !548)
!548 = distinct !DILexicalBlock(scope: !544, file: !16, line: 314, column: 14)
!549 = !DILocation(line: 314, column: 14, scope: !544)
!550 = !DILocation(line: 315, column: 35, scope: !551)
!551 = distinct !DILexicalBlock(scope: !548, file: !16, line: 314, column: 25)
!552 = !DILocation(line: 315, column: 41, scope: !551)
!553 = !DILocation(line: 315, column: 13, scope: !551)
!554 = !DILocation(line: 318, column: 10, scope: !551)
!555 = !DILocation(line: 320, column: 14, scope: !556)
!556 = distinct !DILexicalBlock(scope: !544, file: !16, line: 320, column: 14)
!557 = !DILocation(line: 320, column: 14, scope: !544)
!558 = !DILocation(line: 322, column: 17, scope: !559)
!559 = distinct !DILexicalBlock(scope: !556, file: !16, line: 320, column: 21)
!560 = !DILocation(line: 322, column: 23, scope: !559)
!561 = !DILocation(line: 322, column: 30, scope: !559)
!562 = !DILocation(line: 322, column: 36, scope: !559)
!563 = !DILocation(line: 321, column: 13, scope: !559)
!564 = !DILocation(line: 323, column: 10, scope: !559)
!565 = !DILocation(line: 324, column: 7, scope: !544)
!566 = !DILocation(line: 325, column: 4, scope: !513)
!567 = !DILocation(line: 326, column: 1, scope: !431)
!568 = distinct !DISubprogram(name: "MXUser_DestroyRWLock", scope: !16, file: !16, line: 484, type: !569, isLocal: false, isDefinition: true, scopeLine: 485, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !164)
!569 = !DISubroutineType(types: !570)
!570 = !{null, !22}
!571 = !DILocalVariable(name: "lock", arg: 1, scope: !568, file: !16, line: 484, type: !22)
!572 = !DILocation(line: 484, column: 36, scope: !568)
!573 = !DILocation(line: 486, column: 28, scope: !574)
!574 = distinct !DILexicalBlock(scope: !568, file: !16, line: 486, column: 8)
!575 = !DILocation(line: 486, column: 33, scope: !574)
!576 = !DILocation(line: 486, column: 26, scope: !574)
!577 = !DILocation(line: 486, column: 25, scope: !574)
!578 = !DILocation(line: 486, column: 8, scope: !574)
!579 = !DILocation(line: 486, column: 8, scope: !568)
!580 = !DILocation(line: 487, column: 29, scope: !581)
!581 = distinct !DILexicalBlock(scope: !574, file: !16, line: 486, column: 14)
!582 = !DILocation(line: 487, column: 35, scope: !581)
!583 = !DILocation(line: 487, column: 7, scope: !581)
!584 = !DILocation(line: 489, column: 26, scope: !585)
!585 = distinct !DILexicalBlock(scope: !581, file: !16, line: 489, column: 11)
!586 = !DILocation(line: 489, column: 32, scope: !585)
!587 = !DILocation(line: 489, column: 11, scope: !585)
!588 = !DILocation(line: 489, column: 45, scope: !585)
!589 = !DILocation(line: 489, column: 11, scope: !581)
!590 = !DILocation(line: 490, column: 30, scope: !591)
!591 = distinct !DILexicalBlock(scope: !585, file: !16, line: 489, column: 51)
!592 = !DILocation(line: 490, column: 36, scope: !591)
!593 = !DILocation(line: 490, column: 10, scope: !591)
!594 = !DILocation(line: 493, column: 7, scope: !591)
!595 = !DILocation(line: 495, column: 31, scope: !596)
!596 = distinct !DILexicalBlock(scope: !581, file: !16, line: 495, column: 11)
!597 = !DILocation(line: 495, column: 37, scope: !596)
!598 = !DILocation(line: 495, column: 29, scope: !596)
!599 = !DILocation(line: 495, column: 28, scope: !596)
!600 = !DILocation(line: 495, column: 11, scope: !596)
!601 = !DILocation(line: 495, column: 11, scope: !581)
!602 = !DILocalVariable(name: "err", scope: !603, file: !16, line: 496, type: !73)
!603 = distinct !DILexicalBlock(scope: !596, file: !16, line: 495, column: 53)
!604 = !DILocation(line: 496, column: 14, scope: !603)
!605 = !DILocation(line: 496, column: 43, scope: !603)
!606 = !DILocation(line: 496, column: 49, scope: !603)
!607 = !DILocation(line: 496, column: 20, scope: !603)
!608 = !DILocation(line: 498, column: 32, scope: !609)
!609 = distinct !DILexicalBlock(scope: !603, file: !16, line: 498, column: 14)
!610 = !DILocation(line: 498, column: 36, scope: !609)
!611 = !DILocation(line: 498, column: 31, scope: !609)
!612 = !DILocation(line: 498, column: 14, scope: !609)
!613 = !DILocation(line: 498, column: 14, scope: !603)
!614 = !DILocation(line: 499, column: 33, scope: !615)
!615 = distinct !DILexicalBlock(scope: !609, file: !16, line: 498, column: 47)
!616 = !DILocation(line: 499, column: 39, scope: !615)
!617 = !DILocation(line: 500, column: 46, scope: !615)
!618 = !DILocation(line: 499, column: 13, scope: !615)
!619 = !DILocation(line: 501, column: 10, scope: !615)
!620 = !DILocation(line: 502, column: 7, scope: !603)
!621 = !DILocation(line: 504, column: 25, scope: !581)
!622 = !DILocation(line: 504, column: 31, scope: !581)
!623 = !DILocation(line: 504, column: 7, scope: !581)
!624 = !DILocation(line: 506, column: 29, scope: !581)
!625 = !DILocation(line: 506, column: 35, scope: !581)
!626 = !DILocation(line: 506, column: 7, scope: !581)
!627 = !DILocation(line: 512, column: 28, scope: !581)
!628 = !DILocation(line: 512, column: 34, scope: !581)
!629 = !DILocation(line: 512, column: 7, scope: !581)
!630 = !DILocation(line: 514, column: 7, scope: !581)
!631 = !DILocation(line: 514, column: 13, scope: !581)
!632 = !DILocation(line: 514, column: 20, scope: !581)
!633 = !DILocation(line: 514, column: 30, scope: !581)
!634 = !DILocation(line: 515, column: 12, scope: !581)
!635 = !DILocation(line: 515, column: 18, scope: !581)
!636 = !DILocation(line: 515, column: 25, scope: !581)
!637 = !DILocation(line: 515, column: 7, scope: !581)
!638 = !DILocation(line: 516, column: 7, scope: !581)
!639 = !DILocation(line: 516, column: 13, scope: !581)
!640 = !DILocation(line: 516, column: 20, scope: !581)
!641 = !DILocation(line: 516, column: 25, scope: !581)
!642 = !DILocation(line: 517, column: 12, scope: !581)
!643 = !DILocation(line: 517, column: 7, scope: !581)
!644 = !DILocation(line: 518, column: 4, scope: !581)
!645 = !DILocation(line: 519, column: 1, scope: !568)
!646 = distinct !DISubprogram(name: "MXUserValidateHeader", scope: !4, file: !4, line: 507, type: !647, isLocal: true, isDefinition: true, scopeLine: 509, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !164)
!647 = !DISubroutineType(types: !648)
!648 = !{null, !163, !649}
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserObjectType", file: !4, line: 450, baseType: !3)
!650 = !DILocalVariable(name: "header", arg: 1, scope: !646, file: !4, line: 507, type: !163)
!651 = !DILocation(line: 507, column: 36, scope: !646)
!652 = !DILocalVariable(name: "objectType", arg: 2, scope: !646, file: !4, line: 508, type: !649)
!653 = !DILocation(line: 508, column: 39, scope: !646)
!654 = !DILocation(line: 510, column: 4, scope: !646)
!655 = distinct !DISubprogram(name: "MXUserNativeRWDestroy", scope: !16, file: !16, line: 184, type: !656, isLocal: true, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !164)
!656 = !DISubroutineType(types: !657)
!657 = !{!73, !391}
!658 = !DILocalVariable(name: "lock", arg: 1, scope: !655, file: !16, line: 184, type: !391)
!659 = !DILocation(line: 184, column: 37, scope: !655)
!660 = !DILocation(line: 187, column: 34, scope: !655)
!661 = !DILocation(line: 187, column: 11, scope: !655)
!662 = !DILocation(line: 187, column: 4, scope: !655)
!663 = distinct !DISubprogram(name: "MXRecLockDestroy", scope: !4, file: !4, line: 279, type: !664, isLocal: true, isDefinition: true, scopeLine: 280, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !164)
!664 = !DISubroutineType(types: !665)
!665 = !{null, !402}
!666 = !DILocalVariable(name: "lock", arg: 1, scope: !663, file: !4, line: 279, type: !402)
!667 = !DILocation(line: 279, column: 29, scope: !663)
!668 = !DILocalVariable(name: "err", scope: !663, file: !4, line: 281, type: !73)
!669 = !DILocation(line: 281, column: 8, scope: !663)
!670 = !DILocation(line: 281, column: 39, scope: !663)
!671 = !DILocation(line: 281, column: 14, scope: !663)
!672 = !DILocation(line: 286, column: 1, scope: !663)
!673 = distinct !DISubprogram(name: "MXUser_AcquireForRead", scope: !16, file: !16, line: 707, type: !569, isLocal: false, isDefinition: true, scopeLine: 708, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !164)
!674 = !DILocalVariable(name: "lock", arg: 1, scope: !673, file: !16, line: 707, type: !22)
!675 = !DILocation(line: 707, column: 37, scope: !673)
!676 = !DILocation(line: 709, column: 22, scope: !673)
!677 = !DILocation(line: 709, column: 4, scope: !673)
!678 = !DILocation(line: 710, column: 1, scope: !673)
!679 = distinct !DISubprogram(name: "MXUserAcquisition", scope: !16, file: !16, line: 582, type: !680, isLocal: true, isDefinition: true, scopeLine: 584, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !164)
!680 = !DISubroutineType(types: !681)
!681 = !{null, !22, !62}
!682 = !DILocalVariable(name: "lock", arg: 1, scope: !679, file: !16, line: 582, type: !22)
!683 = !DILocation(line: 582, column: 33, scope: !679)
!684 = !DILocalVariable(name: "forRead", arg: 2, scope: !679, file: !16, line: 583, type: !62)
!685 = !DILocation(line: 583, column: 24, scope: !679)
!686 = !DILocalVariable(name: "myContext", scope: !679, file: !16, line: 585, type: !687)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64, align: 64)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "HolderContext", file: !16, line: 239, baseType: !689)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 236, size: 128, align: 64, elements: !690)
!690 = !{!691, !693}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !689, file: !16, line: 237, baseType: !692, size: 32, align: 32)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "HolderState", file: !16, line: 234, baseType: !15)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "holdStart", scope: !689, file: !16, line: 238, baseType: !444, size: 64, align: 64, offset: 64)
!694 = !DILocation(line: 585, column: 19, scope: !679)
!695 = !DILocation(line: 588, column: 26, scope: !679)
!696 = !DILocation(line: 588, column: 32, scope: !679)
!697 = !DILocation(line: 588, column: 4, scope: !679)
!698 = !DILocation(line: 590, column: 31, scope: !679)
!699 = !DILocation(line: 590, column: 37, scope: !679)
!700 = !DILocation(line: 590, column: 4, scope: !679)
!701 = !DILocation(line: 592, column: 39, scope: !679)
!702 = !DILocation(line: 592, column: 16, scope: !679)
!703 = !DILocation(line: 592, column: 14, scope: !679)
!704 = !DILocation(line: 594, column: 26, scope: !705)
!705 = distinct !DILexicalBlock(scope: !679, file: !16, line: 594, column: 8)
!706 = !DILocation(line: 594, column: 37, scope: !705)
!707 = !DILocation(line: 594, column: 43, scope: !705)
!708 = !DILocation(line: 594, column: 25, scope: !705)
!709 = !DILocation(line: 594, column: 8, scope: !705)
!710 = !DILocation(line: 594, column: 8, scope: !679)
!711 = !DILocation(line: 595, column: 27, scope: !712)
!712 = distinct !DILexicalBlock(scope: !705, file: !16, line: 594, column: 64)
!713 = !DILocation(line: 595, column: 33, scope: !712)
!714 = !DILocation(line: 598, column: 25, scope: !712)
!715 = !DILocation(line: 599, column: 26, scope: !712)
!716 = !DILocation(line: 599, column: 37, scope: !712)
!717 = !DILocation(line: 599, column: 43, scope: !712)
!718 = !DILocation(line: 599, column: 25, scope: !712)
!719 = !DILocation(line: 595, column: 7, scope: !712)
!720 = !DILocation(line: 601, column: 4, scope: !712)
!721 = !DILocation(line: 664, column: 31, scope: !722)
!722 = distinct !DILexicalBlock(scope: !723, file: !16, line: 664, column: 11)
!723 = distinct !DILexicalBlock(scope: !724, file: !16, line: 663, column: 11)
!724 = distinct !DILexicalBlock(scope: !679, file: !16, line: 603, column: 8)
!725 = !DILocation(line: 664, column: 37, scope: !722)
!726 = !DILocation(line: 664, column: 29, scope: !722)
!727 = !DILocation(line: 664, column: 28, scope: !722)
!728 = !DILocation(line: 664, column: 11, scope: !722)
!729 = !DILocation(line: 664, column: 11, scope: !723)
!730 = !DILocalVariable(name: "err", scope: !731, file: !16, line: 665, type: !73)
!731 = distinct !DILexicalBlock(scope: !722, file: !16, line: 664, column: 53)
!732 = !DILocation(line: 665, column: 14, scope: !731)
!733 = !DILocation(line: 667, column: 33, scope: !731)
!734 = !DILocation(line: 667, column: 39, scope: !731)
!735 = !DILocation(line: 667, column: 51, scope: !731)
!736 = !DILocation(line: 667, column: 10, scope: !731)
!737 = !DILocation(line: 669, column: 32, scope: !738)
!738 = distinct !DILexicalBlock(scope: !731, file: !16, line: 669, column: 14)
!739 = !DILocation(line: 669, column: 36, scope: !738)
!740 = !DILocation(line: 669, column: 31, scope: !738)
!741 = !DILocation(line: 669, column: 14, scope: !738)
!742 = !DILocation(line: 669, column: 14, scope: !731)
!743 = !DILocation(line: 670, column: 33, scope: !744)
!744 = distinct !DILexicalBlock(scope: !738, file: !16, line: 669, column: 47)
!745 = !DILocation(line: 670, column: 39, scope: !744)
!746 = !DILocation(line: 671, column: 46, scope: !744)
!747 = !DILocation(line: 670, column: 13, scope: !744)
!748 = !DILocation(line: 672, column: 10, scope: !744)
!749 = !DILocation(line: 673, column: 7, scope: !731)
!750 = !DILocation(line: 674, column: 28, scope: !751)
!751 = distinct !DILexicalBlock(scope: !722, file: !16, line: 673, column: 14)
!752 = !DILocation(line: 674, column: 34, scope: !751)
!753 = !DILocation(line: 674, column: 10, scope: !751)
!754 = !DILocation(line: 679, column: 9, scope: !755)
!755 = distinct !DILexicalBlock(scope: !679, file: !16, line: 679, column: 8)
!756 = !DILocation(line: 679, column: 17, scope: !755)
!757 = !DILocation(line: 679, column: 21, scope: !758)
!758 = !DILexicalBlockFile(scope: !755, file: !16, discriminator: 1)
!759 = !DILocation(line: 679, column: 27, scope: !758)
!760 = !DILocation(line: 679, column: 8, scope: !758)
!761 = !DILocation(line: 681, column: 4, scope: !762)
!762 = distinct !DILexicalBlock(scope: !755, file: !16, line: 679, column: 38)
!763 = !DILocation(line: 683, column: 18, scope: !679)
!764 = !DILocation(line: 683, column: 24, scope: !679)
!765 = !DILocation(line: 683, column: 4, scope: !679)
!766 = !DILocation(line: 684, column: 23, scope: !679)
!767 = !DILocation(line: 684, column: 4, scope: !679)
!768 = !DILocation(line: 684, column: 15, scope: !679)
!769 = !DILocation(line: 684, column: 21, scope: !679)
!770 = !DILocation(line: 685, column: 1, scope: !679)
!771 = distinct !DISubprogram(name: "MXUser_AcquireForWrite", scope: !16, file: !16, line: 731, type: !569, isLocal: false, isDefinition: true, scopeLine: 732, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !164)
!772 = !DILocalVariable(name: "lock", arg: 1, scope: !771, file: !16, line: 731, type: !22)
!773 = !DILocation(line: 731, column: 38, scope: !771)
!774 = !DILocation(line: 733, column: 22, scope: !771)
!775 = !DILocation(line: 733, column: 4, scope: !771)
!776 = !DILocation(line: 734, column: 1, scope: !771)
!777 = distinct !DISubprogram(name: "MXUser_IsCurThreadHoldingRWLock", scope: !16, file: !16, line: 755, type: !778, isLocal: false, isDefinition: true, scopeLine: 757, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !164)
!778 = !DISubroutineType(types: !779)
!779 = !{!62, !22, !32}
!780 = !DILocalVariable(name: "lock", arg: 1, scope: !777, file: !16, line: 755, type: !22)
!781 = !DILocation(line: 755, column: 47, scope: !777)
!782 = !DILocalVariable(name: "queryType", arg: 2, scope: !777, file: !16, line: 756, type: !32)
!783 = !DILocation(line: 756, column: 40, scope: !777)
!784 = !DILocalVariable(name: "myContext", scope: !777, file: !16, line: 758, type: !687)
!785 = !DILocation(line: 758, column: 19, scope: !777)
!786 = !DILocation(line: 761, column: 26, scope: !777)
!787 = !DILocation(line: 761, column: 32, scope: !777)
!788 = !DILocation(line: 761, column: 4, scope: !777)
!789 = !DILocation(line: 763, column: 39, scope: !777)
!790 = !DILocation(line: 763, column: 16, scope: !777)
!791 = !DILocation(line: 763, column: 14, scope: !777)
!792 = !DILocation(line: 765, column: 12, scope: !777)
!793 = !DILocation(line: 765, column: 4, scope: !777)
!794 = !DILocation(line: 767, column: 14, scope: !795)
!795 = distinct !DILexicalBlock(scope: !777, file: !16, line: 765, column: 23)
!796 = !DILocation(line: 767, column: 25, scope: !795)
!797 = !DILocation(line: 767, column: 31, scope: !795)
!798 = !DILocation(line: 767, column: 7, scope: !795)
!799 = !DILocation(line: 770, column: 14, scope: !795)
!800 = !DILocation(line: 770, column: 25, scope: !795)
!801 = !DILocation(line: 770, column: 31, scope: !795)
!802 = !DILocation(line: 770, column: 7, scope: !795)
!803 = !DILocation(line: 773, column: 14, scope: !795)
!804 = !DILocation(line: 773, column: 25, scope: !795)
!805 = !DILocation(line: 773, column: 31, scope: !795)
!806 = !DILocation(line: 773, column: 7, scope: !795)
!807 = !DILocation(line: 776, column: 58, scope: !795)
!808 = !DILocation(line: 776, column: 7, scope: !795)
!809 = !DILocation(line: 778, column: 1, scope: !777)
!810 = distinct !DISubprogram(name: "MXUserGetHolderContext", scope: !16, file: !16, line: 540, type: !811, isLocal: true, isDefinition: true, scopeLine: 541, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !164)
!811 = !DISubroutineType(types: !812)
!812 = !{!687, !22}
!813 = !DILocalVariable(name: "lock", arg: 1, scope: !810, file: !16, line: 540, type: !22)
!814 = !DILocation(line: 540, column: 38, scope: !810)
!815 = !DILocalVariable(name: "result", scope: !810, file: !16, line: 542, type: !687)
!816 = !DILocation(line: 542, column: 19, scope: !810)
!817 = !DILocalVariable(name: "threadID", scope: !810, file: !16, line: 543, type: !154)
!818 = !DILocation(line: 543, column: 10, scope: !810)
!819 = !DILocation(line: 543, column: 21, scope: !810)
!820 = !DILocation(line: 547, column: 26, scope: !821)
!821 = distinct !DILexicalBlock(scope: !810, file: !16, line: 547, column: 8)
!822 = !DILocation(line: 547, column: 32, scope: !821)
!823 = !DILocation(line: 547, column: 45, scope: !821)
!824 = !DILocation(line: 547, column: 55, scope: !821)
!825 = !DILocation(line: 547, column: 9, scope: !821)
!826 = !DILocation(line: 547, column: 8, scope: !810)
!827 = !DILocalVariable(name: "newContext", scope: !828, file: !16, line: 548, type: !687)
!828 = distinct !DILexicalBlock(scope: !821, file: !16, line: 547, column: 75)
!829 = !DILocation(line: 548, column: 22, scope: !828)
!830 = !DILocation(line: 548, column: 35, scope: !828)
!831 = !DILocation(line: 550, column: 7, scope: !828)
!832 = !DILocation(line: 550, column: 19, scope: !828)
!833 = !DILocation(line: 550, column: 29, scope: !828)
!834 = !DILocation(line: 551, column: 7, scope: !828)
!835 = !DILocation(line: 551, column: 19, scope: !828)
!836 = !DILocation(line: 551, column: 25, scope: !828)
!837 = !DILocation(line: 553, column: 41, scope: !828)
!838 = !DILocation(line: 553, column: 47, scope: !828)
!839 = !DILocation(line: 553, column: 60, scope: !828)
!840 = !DILocation(line: 554, column: 50, scope: !828)
!841 = !DILocation(line: 554, column: 41, scope: !828)
!842 = !DILocation(line: 553, column: 16, scope: !828)
!843 = !DILocation(line: 553, column: 14, scope: !828)
!844 = !DILocation(line: 556, column: 11, scope: !845)
!845 = distinct !DILexicalBlock(scope: !828, file: !16, line: 556, column: 11)
!846 = !DILocation(line: 556, column: 21, scope: !845)
!847 = !DILocation(line: 556, column: 18, scope: !845)
!848 = !DILocation(line: 556, column: 11, scope: !828)
!849 = !DILocation(line: 557, column: 15, scope: !850)
!850 = distinct !DILexicalBlock(scope: !845, file: !16, line: 556, column: 33)
!851 = !DILocation(line: 557, column: 10, scope: !850)
!852 = !DILocation(line: 558, column: 7, scope: !850)
!853 = !DILocation(line: 559, column: 4, scope: !828)
!854 = !DILocation(line: 561, column: 11, scope: !810)
!855 = !DILocation(line: 561, column: 4, scope: !810)
!856 = distinct !DISubprogram(name: "MXUser_ReleaseRWLock", scope: !16, file: !16, line: 798, type: !569, isLocal: false, isDefinition: true, scopeLine: 799, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !164)
!857 = !DILocalVariable(name: "lock", arg: 1, scope: !856, file: !16, line: 798, type: !22)
!858 = !DILocation(line: 798, column: 36, scope: !856)
!859 = !DILocalVariable(name: "myContext", scope: !856, file: !16, line: 800, type: !687)
!860 = !DILocation(line: 800, column: 19, scope: !856)
!861 = !DILocation(line: 803, column: 26, scope: !856)
!862 = !DILocation(line: 803, column: 32, scope: !856)
!863 = !DILocation(line: 803, column: 4, scope: !856)
!864 = !DILocation(line: 805, column: 39, scope: !856)
!865 = !DILocation(line: 805, column: 16, scope: !856)
!866 = !DILocation(line: 805, column: 14, scope: !856)
!867 = !DILocation(line: 838, column: 26, scope: !868)
!868 = distinct !DILexicalBlock(scope: !856, file: !16, line: 838, column: 8)
!869 = !DILocation(line: 838, column: 37, scope: !868)
!870 = !DILocation(line: 838, column: 43, scope: !868)
!871 = !DILocation(line: 838, column: 25, scope: !868)
!872 = !DILocation(line: 838, column: 8, scope: !868)
!873 = !DILocation(line: 838, column: 8, scope: !856)
!874 = !DILocation(line: 839, column: 27, scope: !875)
!875 = distinct !DILexicalBlock(scope: !868, file: !16, line: 838, column: 64)
!876 = !DILocation(line: 839, column: 33, scope: !875)
!877 = !DILocation(line: 839, column: 7, scope: !875)
!878 = !DILocation(line: 842, column: 4, scope: !875)
!879 = !DILocation(line: 844, column: 27, scope: !856)
!880 = !DILocation(line: 844, column: 33, scope: !856)
!881 = !DILocation(line: 844, column: 4, scope: !856)
!882 = !DILocation(line: 846, column: 18, scope: !856)
!883 = !DILocation(line: 846, column: 24, scope: !856)
!884 = !DILocation(line: 846, column: 4, scope: !856)
!885 = !DILocation(line: 848, column: 28, scope: !886)
!886 = distinct !DILexicalBlock(scope: !856, file: !16, line: 848, column: 8)
!887 = !DILocation(line: 848, column: 34, scope: !886)
!888 = !DILocation(line: 848, column: 26, scope: !886)
!889 = !DILocation(line: 848, column: 25, scope: !886)
!890 = !DILocation(line: 848, column: 8, scope: !886)
!891 = !DILocation(line: 848, column: 8, scope: !856)
!892 = !DILocalVariable(name: "err", scope: !893, file: !16, line: 849, type: !73)
!893 = distinct !DILexicalBlock(scope: !886, file: !16, line: 848, column: 50)
!894 = !DILocation(line: 849, column: 11, scope: !893)
!895 = !DILocation(line: 849, column: 40, scope: !893)
!896 = !DILocation(line: 849, column: 46, scope: !893)
!897 = !DILocation(line: 850, column: 39, scope: !893)
!898 = !DILocation(line: 850, column: 50, scope: !893)
!899 = !DILocation(line: 850, column: 56, scope: !893)
!900 = !DILocation(line: 849, column: 17, scope: !893)
!901 = !DILocation(line: 852, column: 29, scope: !902)
!902 = distinct !DILexicalBlock(scope: !893, file: !16, line: 852, column: 11)
!903 = !DILocation(line: 852, column: 33, scope: !902)
!904 = !DILocation(line: 852, column: 28, scope: !902)
!905 = !DILocation(line: 852, column: 11, scope: !902)
!906 = !DILocation(line: 852, column: 11, scope: !893)
!907 = !DILocation(line: 853, column: 30, scope: !908)
!908 = distinct !DILexicalBlock(scope: !902, file: !16, line: 852, column: 44)
!909 = !DILocation(line: 853, column: 36, scope: !908)
!910 = !DILocation(line: 854, column: 43, scope: !908)
!911 = !DILocation(line: 853, column: 10, scope: !908)
!912 = !DILocation(line: 855, column: 7, scope: !908)
!913 = !DILocation(line: 856, column: 4, scope: !893)
!914 = !DILocation(line: 858, column: 25, scope: !915)
!915 = distinct !DILexicalBlock(scope: !886, file: !16, line: 856, column: 11)
!916 = !DILocation(line: 858, column: 31, scope: !915)
!917 = !DILocation(line: 858, column: 7, scope: !915)
!918 = !DILocation(line: 861, column: 4, scope: !856)
!919 = !DILocation(line: 861, column: 15, scope: !856)
!920 = !DILocation(line: 861, column: 21, scope: !856)
!921 = !DILocation(line: 862, column: 1, scope: !856)
!922 = distinct !DISubprogram(name: "MXUserReleaseTracking", scope: !4, file: !4, line: 501, type: !161, isLocal: true, isDefinition: true, scopeLine: 502, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !164)
!923 = !DILocalVariable(name: "header", arg: 1, scope: !922, file: !4, line: 501, type: !163)
!924 = !DILocation(line: 501, column: 37, scope: !922)
!925 = !DILocation(line: 503, column: 4, scope: !922)
!926 = distinct !DISubprogram(name: "Atomic_Dec32", scope: !134, file: !134, line: 1676, type: !927, isLocal: true, isDefinition: true, scopeLine: 1677, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !164)
!927 = !DISubroutineType(types: !928)
!928 = !{null, !929}
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, align: 64)
!930 = !DILocalVariable(name: "var", arg: 1, scope: !926, file: !134, line: 1676, type: !929)
!931 = !DILocation(line: 1676, column: 29, scope: !926)
!932 = !DILocation(line: 1685, column: 15, scope: !926)
!933 = !DILocation(line: 1685, column: 20, scope: !926)
!934 = !DILocation(line: 1683, column: 4, scope: !926)
!935 = !{i32 146912}
!936 = !DILocation(line: 1695, column: 1, scope: !926)
!937 = distinct !DISubprogram(name: "MXUserNativeRWRelease", scope: !16, file: !16, line: 219, type: !938, isLocal: true, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !164)
!938 = !DISubroutineType(types: !939)
!939 = !{!73, !391, !62}
!940 = !DILocalVariable(name: "lock", arg: 1, scope: !937, file: !16, line: 219, type: !391)
!941 = !DILocation(line: 219, column: 37, scope: !937)
!942 = !DILocalVariable(name: "forRead", arg: 2, scope: !937, file: !16, line: 220, type: !62)
!943 = !DILocation(line: 220, column: 28, scope: !937)
!944 = !DILocation(line: 223, column: 33, scope: !937)
!945 = !DILocation(line: 223, column: 11, scope: !937)
!946 = !DILocation(line: 223, column: 4, scope: !937)
!947 = distinct !DISubprogram(name: "MXRecLockRelease", scope: !4, file: !4, line: 393, type: !664, isLocal: true, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !164)
!948 = !DILocalVariable(name: "lock", arg: 1, scope: !947, file: !4, line: 393, type: !402)
!949 = !DILocation(line: 393, column: 29, scope: !947)
!950 = !DILocation(line: 395, column: 22, scope: !947)
!951 = !DILocation(line: 395, column: 4, scope: !947)
!952 = !DILocation(line: 397, column: 43, scope: !953)
!953 = distinct !DILexicalBlock(scope: !947, file: !4, line: 397, column: 8)
!954 = !DILocation(line: 397, column: 28, scope: !953)
!955 = !DILocation(line: 397, column: 49, scope: !953)
!956 = !DILocation(line: 397, column: 26, scope: !953)
!957 = !DILocation(line: 397, column: 25, scope: !953)
!958 = !DILocation(line: 397, column: 8, scope: !953)
!959 = !DILocation(line: 397, column: 8, scope: !947)
!960 = !DILocalVariable(name: "err", scope: !961, file: !4, line: 398, type: !73)
!961 = distinct !DILexicalBlock(scope: !953, file: !4, line: 397, column: 60)
!962 = !DILocation(line: 398, column: 11, scope: !961)
!963 = !DILocation(line: 398, column: 42, scope: !961)
!964 = !DILocation(line: 398, column: 17, scope: !961)
!965 = !DILocation(line: 404, column: 4, scope: !961)
!966 = !DILocation(line: 405, column: 1, scope: !947)
!967 = distinct !DISubprogram(name: "MXUser_CreateSingletonRWLockInt", scope: !16, file: !16, line: 885, type: !968, isLocal: false, isDefinition: true, scopeLine: 888, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !164)
!968 = !DISubroutineType(types: !969)
!969 = !{!22, !970, !243, !41}
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!971 = !DILocalVariable(name: "lockStorage", arg: 1, scope: !967, file: !16, line: 885, type: !970)
!972 = !DILocation(line: 885, column: 45, scope: !967)
!973 = !DILocalVariable(name: "name", arg: 2, scope: !967, file: !16, line: 886, type: !243)
!974 = !DILocation(line: 886, column: 45, scope: !967)
!975 = !DILocalVariable(name: "rank", arg: 3, scope: !967, file: !16, line: 887, type: !41)
!976 = !DILocation(line: 887, column: 41, scope: !967)
!977 = !DILocalVariable(name: "lock", scope: !967, file: !16, line: 889, type: !22)
!978 = !DILocation(line: 889, column: 18, scope: !967)
!979 = !DILocation(line: 893, column: 26, scope: !967)
!980 = !DILocation(line: 893, column: 11, scope: !967)
!981 = !DILocation(line: 893, column: 9, scope: !967)
!982 = !DILocation(line: 895, column: 26, scope: !983)
!983 = distinct !DILexicalBlock(scope: !967, file: !16, line: 895, column: 8)
!984 = !DILocation(line: 895, column: 31, scope: !983)
!985 = !DILocation(line: 895, column: 25, scope: !983)
!986 = !DILocation(line: 895, column: 8, scope: !983)
!987 = !DILocation(line: 895, column: 8, scope: !967)
!988 = !DILocalVariable(name: "newLock", scope: !989, file: !16, line: 896, type: !22)
!989 = distinct !DILexicalBlock(scope: !983, file: !16, line: 895, column: 14)
!990 = !DILocation(line: 896, column: 21, scope: !989)
!991 = !DILocation(line: 896, column: 51, scope: !989)
!992 = !DILocation(line: 896, column: 57, scope: !989)
!993 = !DILocation(line: 896, column: 31, scope: !989)
!994 = !DILocation(line: 898, column: 41, scope: !989)
!995 = !DILocation(line: 898, column: 68, scope: !989)
!996 = !DILocation(line: 898, column: 59, scope: !989)
!997 = !DILocation(line: 898, column: 14, scope: !989)
!998 = !DILocation(line: 898, column: 12, scope: !989)
!999 = !DILocation(line: 900, column: 11, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !989, file: !16, line: 900, column: 11)
!1001 = !DILocation(line: 900, column: 11, scope: !989)
!1002 = !DILocation(line: 901, column: 31, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !1000, file: !16, line: 900, column: 17)
!1004 = !DILocation(line: 901, column: 10, scope: !1003)
!1005 = !DILocation(line: 902, column: 7, scope: !1003)
!1006 = !DILocation(line: 903, column: 32, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1000, file: !16, line: 902, column: 14)
!1008 = !DILocation(line: 903, column: 17, scope: !1007)
!1009 = !DILocation(line: 903, column: 15, scope: !1007)
!1010 = !DILocation(line: 905, column: 4, scope: !989)
!1011 = !DILocation(line: 907, column: 11, scope: !967)
!1012 = !DILocation(line: 907, column: 4, scope: !967)
!1013 = distinct !DISubprogram(name: "Atomic_ReadPtr", scope: !134, file: !134, line: 3829, type: !1014, isLocal: true, isDefinition: true, scopeLine: 3829, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !164)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!154, !1016}
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64, align: 64)
!1017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!1018 = !DILocalVariable(name: "var", arg: 1, scope: !1013, file: !134, line: 3829, type: !1016)
!1019 = !DILocation(line: 3829, column: 368, scope: !1013)
!1020 = !DILocation(line: 3829, column: 415, scope: !1013)
!1021 = !DILocation(line: 3829, column: 401, scope: !1013)
!1022 = !DILocation(line: 3829, column: 382, scope: !1013)
!1023 = !DILocation(line: 3829, column: 375, scope: !1013)
!1024 = distinct !DISubprogram(name: "Atomic_ReadIfEqualWritePtr", scope: !134, file: !134, line: 3829, type: !1025, isLocal: true, isDefinition: true, scopeLine: 3829, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !164)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!154, !970, !1027, !1027}
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64, align: 64)
!1028 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1029 = !DILocalVariable(name: "var", arg: 1, scope: !1024, file: !134, line: 3829, type: !970)
!1030 = !DILocation(line: 3829, column: 757, scope: !1024)
!1031 = !DILocalVariable(name: "oldVal", arg: 2, scope: !1024, file: !134, line: 3829, type: !1027)
!1032 = !DILocation(line: 3829, column: 775, scope: !1024)
!1033 = !DILocalVariable(name: "newVal", arg: 3, scope: !1024, file: !134, line: 3829, type: !1027)
!1034 = !DILocation(line: 3829, column: 796, scope: !1024)
!1035 = !DILocation(line: 3829, column: 858, scope: !1024)
!1036 = !DILocation(line: 3829, column: 882, scope: !1024)
!1037 = !DILocation(line: 3829, column: 871, scope: !1024)
!1038 = !DILocation(line: 3829, column: 909, scope: !1024)
!1039 = !DILocation(line: 3829, column: 898, scope: !1024)
!1040 = !DILocation(line: 3829, column: 832, scope: !1024)
!1041 = !DILocation(line: 3829, column: 813, scope: !1024)
!1042 = !DILocation(line: 3829, column: 806, scope: !1024)
!1043 = distinct !DISubprogram(name: "MXRecLockCreateInternal", scope: !4, file: !4, line: 174, type: !1044, isLocal: true, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !164)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!73, !402}
!1046 = !DILocalVariable(name: "lock", arg: 1, scope: !1043, file: !4, line: 174, type: !402)
!1047 = !DILocation(line: 174, column: 36, scope: !1043)
!1048 = !DILocation(line: 176, column: 31, scope: !1043)
!1049 = !DILocation(line: 176, column: 37, scope: !1043)
!1050 = !DILocation(line: 176, column: 11, scope: !1043)
!1051 = !DILocation(line: 176, column: 4, scope: !1043)
!1052 = distinct !DISubprogram(name: "MXRecLockSetNoOwner", scope: !4, file: !4, line: 227, type: !664, isLocal: true, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !164)
!1053 = !DILocalVariable(name: "lock", arg: 1, scope: !1052, file: !4, line: 227, type: !402)
!1054 = !DILocation(line: 227, column: 32, scope: !1052)
!1055 = !DILocation(line: 230, column: 12, scope: !1052)
!1056 = !DILocation(line: 230, column: 18, scope: !1052)
!1057 = !DILocation(line: 230, column: 4, scope: !1052)
!1058 = !DILocation(line: 231, column: 1, scope: !1052)
!1059 = distinct !DISubprogram(name: "MXRecLockDestroyInternal", scope: !4, file: !4, line: 181, type: !1044, isLocal: true, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !164)
!1060 = !DILocalVariable(name: "lock", arg: 1, scope: !1059, file: !4, line: 181, type: !402)
!1061 = !DILocation(line: 181, column: 37, scope: !1059)
!1062 = !DILocalVariable(name: "err", scope: !1059, file: !4, line: 183, type: !73)
!1063 = !DILocation(line: 183, column: 8, scope: !1059)
!1064 = !DILocation(line: 183, column: 37, scope: !1059)
!1065 = !DILocation(line: 183, column: 43, scope: !1059)
!1066 = !DILocation(line: 183, column: 14, scope: !1059)
!1067 = !DILocation(line: 188, column: 8, scope: !1059)
!1068 = !DILocalVariable(name: "version", scope: !1069, file: !4, line: 200, type: !243)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !4, line: 188, column: 37)
!1070 = distinct !DILexicalBlock(scope: !1059, file: !4, line: 188, column: 8)
!1071 = !DILocation(line: 200, column: 19, scope: !1069)
!1072 = !DILocation(line: 200, column: 29, scope: !1069)
!1073 = !DILocation(line: 202, column: 18, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1069, file: !4, line: 202, column: 11)
!1075 = !DILocation(line: 202, column: 11, scope: !1074)
!1076 = !DILocation(line: 202, column: 35, scope: !1074)
!1077 = !DILocation(line: 202, column: 11, scope: !1069)
!1078 = !DILocation(line: 203, column: 14, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1074, file: !4, line: 202, column: 41)
!1080 = !DILocation(line: 204, column: 7, scope: !1079)
!1081 = !DILocation(line: 205, column: 4, scope: !1069)
!1082 = !DILocation(line: 208, column: 11, scope: !1059)
!1083 = !DILocation(line: 208, column: 4, scope: !1059)
!1084 = distinct !DISubprogram(name: "MXUserAcquisitionTracking", scope: !4, file: !4, line: 494, type: !1085, isLocal: true, isDefinition: true, scopeLine: 496, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !164)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{null, !163, !62}
!1087 = !DILocalVariable(name: "header", arg: 1, scope: !1084, file: !4, line: 494, type: !163)
!1088 = !DILocation(line: 494, column: 41, scope: !1084)
!1089 = !DILocalVariable(name: "checkRank", arg: 2, scope: !1084, file: !4, line: 495, type: !62)
!1090 = !DILocation(line: 495, column: 32, scope: !1084)
!1091 = !DILocation(line: 497, column: 4, scope: !1084)
!1092 = distinct !DISubprogram(name: "MXUserNativeRWAcquire", scope: !16, file: !16, line: 194, type: !1093, isLocal: true, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !164)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!62, !391, !62, !1095}
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!1096 = !DILocalVariable(name: "lock", arg: 1, scope: !1092, file: !16, line: 194, type: !391)
!1097 = !DILocation(line: 194, column: 37, scope: !1092)
!1098 = !DILocalVariable(name: "forRead", arg: 2, scope: !1092, file: !16, line: 195, type: !62)
!1099 = !DILocation(line: 195, column: 28, scope: !1092)
!1100 = !DILocalVariable(name: "err", arg: 3, scope: !1092, file: !16, line: 196, type: !1095)
!1101 = !DILocation(line: 196, column: 28, scope: !1092)
!1102 = !DILocalVariable(name: "contended", scope: !1092, file: !16, line: 198, type: !62)
!1103 = !DILocation(line: 198, column: 9, scope: !1092)
!1104 = !DILocation(line: 201, column: 12, scope: !1092)
!1105 = !DILocation(line: 201, column: 11, scope: !1092)
!1106 = !DILocation(line: 201, column: 48, scope: !1107)
!1107 = !DILexicalBlockFile(scope: !1092, file: !16, discriminator: 1)
!1108 = !DILocation(line: 201, column: 23, scope: !1107)
!1109 = !DILocation(line: 201, column: 11, scope: !1107)
!1110 = !DILocation(line: 202, column: 48, scope: !1092)
!1111 = !DILocation(line: 202, column: 23, scope: !1092)
!1112 = !DILocation(line: 201, column: 11, scope: !1113)
!1113 = !DILexicalBlockFile(scope: !1092, file: !16, discriminator: 2)
!1114 = !DILocation(line: 201, column: 11, scope: !1115)
!1115 = !DILexicalBlockFile(scope: !1092, file: !16, discriminator: 3)
!1116 = !DILocation(line: 201, column: 5, scope: !1115)
!1117 = !DILocation(line: 201, column: 9, scope: !1115)
!1118 = !DILocation(line: 204, column: 18, scope: !1092)
!1119 = !DILocation(line: 204, column: 17, scope: !1092)
!1120 = !DILocation(line: 204, column: 22, scope: !1092)
!1121 = !DILocation(line: 204, column: 16, scope: !1092)
!1122 = !DILocation(line: 204, column: 14, scope: !1092)
!1123 = !DILocation(line: 206, column: 9, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1092, file: !16, line: 206, column: 8)
!1125 = !DILocation(line: 206, column: 8, scope: !1124)
!1126 = !DILocation(line: 206, column: 13, scope: !1124)
!1127 = !DILocation(line: 206, column: 8, scope: !1092)
!1128 = !DILocation(line: 207, column: 15, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1124, file: !16, line: 206, column: 22)
!1130 = !DILocation(line: 207, column: 14, scope: !1129)
!1131 = !DILocation(line: 207, column: 48, scope: !1132)
!1132 = !DILexicalBlockFile(scope: !1129, file: !16, discriminator: 1)
!1133 = !DILocation(line: 207, column: 26, scope: !1132)
!1134 = !DILocation(line: 207, column: 14, scope: !1132)
!1135 = !DILocation(line: 208, column: 48, scope: !1129)
!1136 = !DILocation(line: 208, column: 26, scope: !1129)
!1137 = !DILocation(line: 207, column: 14, scope: !1138)
!1138 = !DILexicalBlockFile(scope: !1129, file: !16, discriminator: 2)
!1139 = !DILocation(line: 207, column: 14, scope: !1140)
!1140 = !DILexicalBlockFile(scope: !1129, file: !16, discriminator: 3)
!1141 = !DILocation(line: 207, column: 8, scope: !1140)
!1142 = !DILocation(line: 207, column: 12, scope: !1140)
!1143 = !DILocation(line: 209, column: 4, scope: !1129)
!1144 = !DILocation(line: 215, column: 11, scope: !1092)
!1145 = !DILocation(line: 215, column: 4, scope: !1092)
!1146 = distinct !DISubprogram(name: "MXRecLockAcquire", scope: !4, file: !4, line: 328, type: !1147, isLocal: true, isDefinition: true, scopeLine: 330, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !164)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{null, !402, !1149}
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64, align: 64)
!1150 = !DILocalVariable(name: "lock", arg: 1, scope: !1146, file: !4, line: 328, type: !402)
!1151 = !DILocation(line: 328, column: 29, scope: !1146)
!1152 = !DILocalVariable(name: "duration", arg: 2, scope: !1146, file: !4, line: 329, type: !1149)
!1153 = !DILocation(line: 329, column: 30, scope: !1146)
!1154 = !DILocalVariable(name: "err", scope: !1146, file: !4, line: 331, type: !73)
!1155 = !DILocation(line: 331, column: 8, scope: !1146)
!1156 = !DILocation(line: 333, column: 41, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1146, file: !4, line: 333, column: 8)
!1158 = !DILocation(line: 333, column: 26, scope: !1157)
!1159 = !DILocation(line: 333, column: 47, scope: !1157)
!1160 = !DILocation(line: 333, column: 25, scope: !1157)
!1161 = !DILocation(line: 333, column: 8, scope: !1157)
!1162 = !DILocation(line: 333, column: 56, scope: !1157)
!1163 = !DILocation(line: 333, column: 76, scope: !1164)
!1164 = !DILexicalBlockFile(scope: !1157, file: !4, discriminator: 1)
!1165 = !DILocation(line: 333, column: 59, scope: !1164)
!1166 = !DILocation(line: 333, column: 8, scope: !1164)
!1167 = !DILocation(line: 334, column: 25, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1157, file: !4, line: 333, column: 83)
!1169 = !DILocation(line: 334, column: 7, scope: !1168)
!1170 = !DILocation(line: 336, column: 11, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1168, file: !4, line: 336, column: 11)
!1172 = !DILocation(line: 336, column: 20, scope: !1171)
!1173 = !DILocation(line: 336, column: 11, scope: !1168)
!1174 = !DILocation(line: 337, column: 11, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1171, file: !4, line: 336, column: 28)
!1176 = !DILocation(line: 337, column: 20, scope: !1175)
!1177 = !DILocation(line: 338, column: 7, scope: !1175)
!1178 = !DILocation(line: 340, column: 7, scope: !1168)
!1179 = !DILocation(line: 343, column: 28, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1146, file: !4, line: 343, column: 8)
!1181 = !DILocation(line: 343, column: 37, scope: !1180)
!1182 = !DILocation(line: 343, column: 26, scope: !1180)
!1183 = !DILocation(line: 343, column: 25, scope: !1180)
!1184 = !DILocation(line: 343, column: 8, scope: !1180)
!1185 = !DILocation(line: 343, column: 8, scope: !1146)
!1186 = !DILocation(line: 344, column: 38, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1180, file: !4, line: 343, column: 14)
!1188 = !DILocation(line: 344, column: 13, scope: !1187)
!1189 = !DILocation(line: 344, column: 11, scope: !1187)
!1190 = !DILocation(line: 345, column: 4, scope: !1187)
!1191 = !DILocalVariable(name: "start", scope: !1192, file: !4, line: 346, type: !444)
!1192 = distinct !DILexicalBlock(scope: !1180, file: !4, line: 345, column: 11)
!1193 = !DILocation(line: 346, column: 18, scope: !1192)
!1194 = !DILocation(line: 346, column: 26, scope: !1192)
!1195 = !DILocation(line: 348, column: 38, scope: !1192)
!1196 = !DILocation(line: 348, column: 13, scope: !1192)
!1197 = !DILocation(line: 348, column: 11, scope: !1192)
!1198 = !DILocation(line: 350, column: 19, scope: !1192)
!1199 = !DILocation(line: 350, column: 46, scope: !1192)
!1200 = !DILocation(line: 350, column: 44, scope: !1192)
!1201 = !DILocation(line: 350, column: 8, scope: !1192)
!1202 = !DILocation(line: 350, column: 17, scope: !1192)
!1203 = !DILocation(line: 359, column: 22, scope: !1146)
!1204 = !DILocation(line: 359, column: 4, scope: !1146)
!1205 = !DILocation(line: 361, column: 4, scope: !1146)
!1206 = !DILocation(line: 362, column: 1, scope: !1146)
!1207 = distinct !DISubprogram(name: "Atomic_Inc32", scope: !134, file: !134, line: 1636, type: !927, isLocal: true, isDefinition: true, scopeLine: 1637, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !164)
!1208 = !DILocalVariable(name: "var", arg: 1, scope: !1207, file: !134, line: 1636, type: !929)
!1209 = !DILocation(line: 1636, column: 29, scope: !1207)
!1210 = !DILocation(line: 1645, column: 15, scope: !1207)
!1211 = !DILocation(line: 1645, column: 20, scope: !1207)
!1212 = !DILocation(line: 1643, column: 4, scope: !1207)
!1213 = !{i32 146622}
!1214 = !DILocation(line: 1655, column: 1, scope: !1207)
!1215 = distinct !DISubprogram(name: "MXRecLockIsOwner", scope: !4, file: !4, line: 220, type: !1216, isLocal: true, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !164)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!62, !218}
!1218 = !DILocalVariable(name: "lock", arg: 1, scope: !1215, file: !4, line: 220, type: !218)
!1219 = !DILocation(line: 220, column: 35, scope: !1215)
!1220 = !DILocation(line: 222, column: 25, scope: !1215)
!1221 = !DILocation(line: 222, column: 31, scope: !1215)
!1222 = !DILocation(line: 222, column: 47, scope: !1215)
!1223 = !DILocation(line: 222, column: 11, scope: !1224)
!1224 = !DILexicalBlockFile(scope: !1215, file: !4, discriminator: 1)
!1225 = !DILocation(line: 222, column: 11, scope: !1215)
!1226 = !DILocation(line: 222, column: 4, scope: !1215)
!1227 = distinct !DISubprogram(name: "MXRecLockIncCount", scope: !4, file: !4, line: 300, type: !1228, isLocal: true, isDefinition: true, scopeLine: 302, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !164)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{null, !402, !73}
!1230 = !DILocalVariable(name: "lock", arg: 1, scope: !1227, file: !4, line: 300, type: !402)
!1231 = !DILocation(line: 300, column: 30, scope: !1227)
!1232 = !DILocalVariable(name: "count", arg: 2, scope: !1227, file: !4, line: 301, type: !73)
!1233 = !DILocation(line: 301, column: 23, scope: !1227)
!1234 = !DILocalVariable(name: "newCount", scope: !1227, file: !4, line: 303, type: !73)
!1235 = !DILocation(line: 303, column: 8, scope: !1227)
!1236 = !DILocation(line: 303, column: 44, scope: !1227)
!1237 = !DILocation(line: 303, column: 20, scope: !1227)
!1238 = !DILocation(line: 303, column: 26, scope: !1227)
!1239 = !DILocation(line: 303, column: 41, scope: !1227)
!1240 = !DILocation(line: 307, column: 28, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1227, file: !4, line: 307, column: 8)
!1242 = !DILocation(line: 307, column: 40, scope: !1241)
!1243 = !DILocation(line: 307, column: 37, scope: !1241)
!1244 = !DILocation(line: 307, column: 26, scope: !1241)
!1245 = !DILocation(line: 307, column: 25, scope: !1241)
!1246 = !DILocation(line: 307, column: 8, scope: !1241)
!1247 = !DILocation(line: 307, column: 8, scope: !1227)
!1248 = !DILocation(line: 308, column: 25, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1241, file: !4, line: 307, column: 52)
!1250 = !DILocation(line: 308, column: 7, scope: !1249)
!1251 = !DILocation(line: 309, column: 4, scope: !1249)
!1252 = !DILocation(line: 310, column: 1, scope: !1227)
!1253 = distinct !DISubprogram(name: "MXRecLockAcquireInternal", scope: !4, file: !4, line: 242, type: !1044, isLocal: true, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !164)
!1254 = !DILocalVariable(name: "lock", arg: 1, scope: !1253, file: !4, line: 242, type: !402)
!1255 = !DILocation(line: 242, column: 37, scope: !1253)
!1256 = !DILocation(line: 244, column: 31, scope: !1253)
!1257 = !DILocation(line: 244, column: 37, scope: !1253)
!1258 = !DILocation(line: 244, column: 11, scope: !1253)
!1259 = !DILocation(line: 244, column: 4, scope: !1253)
!1260 = distinct !DISubprogram(name: "MXUserNativeThreadID", scope: !4, file: !4, line: 213, type: !1261, isLocal: true, isDefinition: true, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !164)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!130}
!1263 = !DILocation(line: 215, column: 11, scope: !1260)
!1264 = !DILocation(line: 215, column: 4, scope: !1260)
!1265 = distinct !DISubprogram(name: "MXRecLockSetOwner", scope: !4, file: !4, line: 235, type: !664, isLocal: true, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !164)
!1266 = !DILocalVariable(name: "lock", arg: 1, scope: !1265, file: !4, line: 235, type: !402)
!1267 = !DILocation(line: 235, column: 30, scope: !1265)
!1268 = !DILocation(line: 237, column: 27, scope: !1265)
!1269 = !DILocation(line: 237, column: 4, scope: !1265)
!1270 = !DILocation(line: 237, column: 10, scope: !1265)
!1271 = !DILocation(line: 237, column: 25, scope: !1265)
!1272 = !DILocation(line: 238, column: 1, scope: !1265)
!1273 = distinct !DISubprogram(name: "MXUserCastedThreadID", scope: !4, file: !4, line: 431, type: !1274, isLocal: true, isDefinition: true, scopeLine: 432, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !164)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!154}
!1276 = !DILocation(line: 433, column: 32, scope: !1273)
!1277 = !DILocation(line: 433, column: 11, scope: !1273)
!1278 = !DILocation(line: 433, column: 4, scope: !1273)
!1279 = distinct !DISubprogram(name: "VThread_CurID", scope: !1280, file: !1280, line: 146, type: !1281, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !164)
!1280 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vthreadBase.h", directory: "/home/lichi/Desktop/open-vm-tools/line502")
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!1283}
!1283 = !DIDerivedType(tag: DW_TAG_typedef, name: "VThreadID", file: !1280, line: 85, baseType: !156)
!1284 = !DILocation(line: 147, column: 10, scope: !1279)
!1285 = !DILocation(line: 147, column: 3, scope: !1279)
!1286 = distinct !DISubprogram(name: "MXRecLockDecCount", scope: !4, file: !4, line: 314, type: !1228, isLocal: true, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !164)
!1287 = !DILocalVariable(name: "lock", arg: 1, scope: !1286, file: !4, line: 314, type: !402)
!1288 = !DILocation(line: 314, column: 30, scope: !1286)
!1289 = !DILocalVariable(name: "count", arg: 2, scope: !1286, file: !4, line: 315, type: !73)
!1290 = !DILocation(line: 315, column: 23, scope: !1286)
!1291 = !DILocalVariable(name: "newCount", scope: !1286, file: !4, line: 317, type: !73)
!1292 = !DILocation(line: 317, column: 8, scope: !1286)
!1293 = !DILocation(line: 317, column: 44, scope: !1286)
!1294 = !DILocation(line: 317, column: 20, scope: !1286)
!1295 = !DILocation(line: 317, column: 26, scope: !1286)
!1296 = !DILocation(line: 317, column: 41, scope: !1286)
!1297 = !DILocation(line: 321, column: 28, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1286, file: !4, line: 321, column: 8)
!1299 = !DILocation(line: 321, column: 37, scope: !1298)
!1300 = !DILocation(line: 321, column: 26, scope: !1298)
!1301 = !DILocation(line: 321, column: 25, scope: !1298)
!1302 = !DILocation(line: 321, column: 8, scope: !1298)
!1303 = !DILocation(line: 321, column: 8, scope: !1286)
!1304 = !DILocation(line: 322, column: 27, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1298, file: !4, line: 321, column: 48)
!1306 = !DILocation(line: 322, column: 7, scope: !1305)
!1307 = !DILocation(line: 323, column: 4, scope: !1305)
!1308 = !DILocation(line: 324, column: 1, scope: !1286)
!1309 = distinct !DISubprogram(name: "MXRecLockReleaseInternal", scope: !4, file: !4, line: 256, type: !1044, isLocal: true, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !164)
!1310 = !DILocalVariable(name: "lock", arg: 1, scope: !1309, file: !4, line: 256, type: !402)
!1311 = !DILocation(line: 256, column: 37, scope: !1309)
!1312 = !DILocation(line: 258, column: 33, scope: !1309)
!1313 = !DILocation(line: 258, column: 39, scope: !1309)
!1314 = !DILocation(line: 258, column: 11, scope: !1309)
!1315 = !DILocation(line: 258, column: 4, scope: !1309)
!1316 = distinct !DISubprogram(name: "Atomic_Read64", scope: !134, file: !134, line: 2143, type: !1317, isLocal: true, isDefinition: true, scopeLine: 2144, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !164)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!151, !1319}
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64, align: 64)
!1320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!1321 = !DILocalVariable(name: "var", arg: 1, scope: !1316, file: !134, line: 2143, type: !1319)
!1322 = !DILocation(line: 2143, column: 36, scope: !1316)
!1323 = !DILocalVariable(name: "value", scope: !1316, file: !134, line: 2146, type: !151)
!1324 = !DILocation(line: 2146, column: 11, scope: !1316)
!1325 = !DILocation(line: 2160, column: 14, scope: !1316)
!1326 = !DILocation(line: 2160, column: 19, scope: !1316)
!1327 = !DILocation(line: 2157, column: 4, scope: !1316)
!1328 = !{i32 150867}
!1329 = !DILocation(line: 2213, column: 11, scope: !1316)
!1330 = !DILocation(line: 2213, column: 4, scope: !1316)
!1331 = distinct !DISubprogram(name: "Atomic_ReadIfEqualWrite64", scope: !134, file: !134, line: 1190, type: !1332, isLocal: true, isDefinition: true, scopeLine: 1193, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !164)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!151, !1334, !151, !151}
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!1335 = !DILocalVariable(name: "var", arg: 1, scope: !1331, file: !134, line: 1190, type: !1334)
!1336 = !DILocation(line: 1190, column: 42, scope: !1331)
!1337 = !DILocalVariable(name: "oldVal", arg: 2, scope: !1331, file: !134, line: 1191, type: !151)
!1338 = !DILocation(line: 1191, column: 34, scope: !1331)
!1339 = !DILocalVariable(name: "newVal", arg: 3, scope: !1331, file: !134, line: 1192, type: !151)
!1340 = !DILocation(line: 1192, column: 34, scope: !1331)
!1341 = !DILocalVariable(name: "val", scope: !1331, file: !134, line: 1240, type: !151)
!1342 = !DILocation(line: 1240, column: 11, scope: !1331)
!1343 = !DILocation(line: 1246, column: 15, scope: !1331)
!1344 = !DILocation(line: 1246, column: 20, scope: !1331)
!1345 = !DILocation(line: 1247, column: 14, scope: !1331)
!1346 = !DILocation(line: 1248, column: 14, scope: !1331)
!1347 = !DILocation(line: 1243, column: 4, scope: !1331)
!1348 = !{i32 143309}
!1349 = !DILocation(line: 1251, column: 11, scope: !1331)
!1350 = !DILocation(line: 1251, column: 4, scope: !1331)
