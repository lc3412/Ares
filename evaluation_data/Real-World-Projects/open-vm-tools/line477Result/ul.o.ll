; ModuleID = './ul.o.i'
source_filename = "./ul.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.MX_MutexRec = type opaque
%struct.Atomic_uint32 = type { i32 }
%struct.MXRecLock = type { %union.pthread_mutex_t, i32, i64 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct.Atomic_uint64 = type { i64 }
%struct.MXUserHeader = type { i32, i8*, i32, %struct.anon, void (%struct.MXUserHeader*)*, void (%struct.MXUserHeader*)*, %struct.ListItem }
%struct.anon = type { i32 }
%struct.ListItem = type { %struct.ListItem*, %struct.ListItem* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%union.pthread_mutexattr_t = type { i32 }

@MXUserTryAcquireForceFail = global i8 (...)* null, align 8
@MXUserMX_LockRec = global void (%struct.MX_MutexRec*)* null, align 8
@MXUserMX_UnlockRec = global void (%struct.MX_MutexRec*)* null, align 8
@MXUserMX_TryLockRec = global i8 (%struct.MX_MutexRec*)* null, align 8
@MXUserMX_IsLockedByCurThreadRec = global i8 (%struct.MX_MutexRec*)* null, align 8
@MXUserMX_NameRec = global i8* (%struct.MX_MutexRec*)* null, align 8
@mxUserCollectLockingTree = internal global i8 0, align 1
@mxInPanic = internal global i8 0, align 1
@MXUserMX_SetInPanic = internal global void ()* null, align 8
@MXUserDumpAndPanic.loopCounter = internal global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@MXUserMX_InPanic = internal global i8 ()* null, align 8
@MXUserMxLockLister = internal global void ()* null, align 8
@MXUserMxCheckRank = internal global i32 ()* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"2.18\00", align 1
@MXUserSyndrome.syndromeMem = internal global %struct.Atomic_uint32 zeroinitializer, align 4

; Function Attrs: nounwind uwtable
define signext i8 @MXUser_IsLockingTreeAvailable() #0 !dbg !119 {
  %1 = load i8, i8* @mxUserCollectLockingTree, align 1, !dbg !120
  ret i8 %1, !dbg !121
}

; Function Attrs: nounwind uwtable
define void @MXUser_LockingTreeCollection(i8 signext) #0 !dbg !122 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !125, metadata !126), !dbg !127
  store i8 0, i8* @mxUserCollectLockingTree, align 1, !dbg !128
  ret void, !dbg !129
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define %struct.MXRecLock* @MXUserInternalSingleton(%struct.Atomic_uint64*) #0 !dbg !130 {
  %2 = alloca %struct.Atomic_uint64*, align 8
  %3 = alloca %struct.MXRecLock*, align 8
  %4 = alloca %struct.MXRecLock*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %2, metadata !178, metadata !126), !dbg !179
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %3, metadata !180, metadata !126), !dbg !181
  %5 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %2, align 8, !dbg !182
  %6 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %5), !dbg !183
  %7 = bitcast i8* %6 to %struct.MXRecLock*, !dbg !183
  store %struct.MXRecLock* %7, %struct.MXRecLock** %3, align 8, !dbg !181
  %8 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !184
  %9 = icmp eq %struct.MXRecLock* %8, null, !dbg !186
  %10 = zext i1 %9 to i32, !dbg !186
  %11 = sext i32 %10 to i64, !dbg !187
  %12 = icmp ne i64 %11, 0, !dbg !188
  br i1 %12, label %13, label %43, !dbg !189

; <label>:13:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %4, metadata !190, metadata !126), !dbg !192
  %14 = call i8* @UtilSafeMalloc0(i64 56), !dbg !193
  %15 = bitcast i8* %14 to %struct.MXRecLock*, !dbg !193
  store %struct.MXRecLock* %15, %struct.MXRecLock** %4, align 8, !dbg !192
  %16 = load %struct.MXRecLock*, %struct.MXRecLock** %4, align 8, !dbg !194
  %17 = call signext i8 @MXRecLockInit(%struct.MXRecLock* %16), !dbg !196
  %18 = icmp ne i8 %17, 0, !dbg !196
  br i1 %18, label %19, label %36, !dbg !197

; <label>:19:                                     ; preds = %13
  %20 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %2, align 8, !dbg !198
  %21 = load %struct.MXRecLock*, %struct.MXRecLock** %4, align 8, !dbg !200
  %22 = bitcast %struct.MXRecLock* %21 to i8*, !dbg !201
  %23 = call i8* @Atomic_ReadIfEqualWritePtr(%struct.Atomic_uint64* %20, i8* null, i8* %22), !dbg !202
  %24 = bitcast i8* %23 to %struct.MXRecLock*, !dbg !202
  store %struct.MXRecLock* %24, %struct.MXRecLock** %3, align 8, !dbg !203
  %25 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !204
  %26 = icmp ne %struct.MXRecLock* %25, null, !dbg !204
  br i1 %26, label %27, label %31, !dbg !206

; <label>:27:                                     ; preds = %19
  %28 = load %struct.MXRecLock*, %struct.MXRecLock** %4, align 8, !dbg !207
  call void @MXRecLockDestroy(%struct.MXRecLock* %28), !dbg !209
  %29 = load %struct.MXRecLock*, %struct.MXRecLock** %4, align 8, !dbg !210
  %30 = bitcast %struct.MXRecLock* %29 to i8*, !dbg !210
  call void @free(i8* %30) #5, !dbg !211
  br label %35, !dbg !212

; <label>:31:                                     ; preds = %19
  %32 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %2, align 8, !dbg !213
  %33 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %32), !dbg !215
  %34 = bitcast i8* %33 to %struct.MXRecLock*, !dbg !215
  store %struct.MXRecLock* %34, %struct.MXRecLock** %3, align 8, !dbg !216
  br label %35

; <label>:35:                                     ; preds = %31, %27
  br label %42, !dbg !217

; <label>:36:                                     ; preds = %13
  %37 = load %struct.MXRecLock*, %struct.MXRecLock** %4, align 8, !dbg !218
  %38 = bitcast %struct.MXRecLock* %37 to i8*, !dbg !218
  call void @free(i8* %38) #5, !dbg !220
  %39 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %2, align 8, !dbg !221
  %40 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %39), !dbg !222
  %41 = bitcast i8* %40 to %struct.MXRecLock*, !dbg !222
  store %struct.MXRecLock* %41, %struct.MXRecLock** %3, align 8, !dbg !223
  br label %42

; <label>:42:                                     ; preds = %36, %35
  br label %43, !dbg !224

; <label>:43:                                     ; preds = %42, %1
  %44 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !225
  ret %struct.MXRecLock* %44, !dbg !226
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Atomic_ReadPtr(%struct.Atomic_uint64*) #2 !dbg !227 {
  %2 = alloca %struct.Atomic_uint64*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %2, metadata !232, metadata !126), !dbg !233
  %3 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %2, align 8, !dbg !234
  %4 = call i64 @Atomic_Read64(%struct.Atomic_uint64* %3), !dbg !235
  %5 = inttoptr i64 %4 to i8*, !dbg !236
  ret i8* %5, !dbg !237
}

declare i8* @UtilSafeMalloc0(i64) #3

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @MXRecLockInit(%struct.MXRecLock*) #2 !dbg !238 {
  %2 = alloca %struct.MXRecLock*, align 8
  %3 = alloca i8, align 1
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !241, metadata !126), !dbg !242
  call void @llvm.dbg.declare(metadata i8* %3, metadata !243, metadata !126), !dbg !244
  %4 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !245
  %5 = call i32 @MXRecLockCreateInternal(%struct.MXRecLock* %4), !dbg !246
  %6 = icmp eq i32 %5, 0, !dbg !247
  %7 = zext i1 %6 to i32, !dbg !247
  %8 = trunc i32 %7 to i8, !dbg !248
  store i8 %8, i8* %3, align 1, !dbg !244
  %9 = load i8, i8* %3, align 1, !dbg !249
  %10 = icmp ne i8 %9, 0, !dbg !249
  br i1 %10, label %11, label %15, !dbg !251

; <label>:11:                                     ; preds = %1
  %12 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !252
  call void @MXRecLockSetNoOwner(%struct.MXRecLock* %12), !dbg !254
  %13 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !255
  %14 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %13, i32 0, i32 1, !dbg !256
  store i32 0, i32* %14, align 8, !dbg !257
  br label %15, !dbg !258

; <label>:15:                                     ; preds = %11, %1
  %16 = load i8, i8* %3, align 1, !dbg !259
  ret i8 %16, !dbg !260
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Atomic_ReadIfEqualWritePtr(%struct.Atomic_uint64*, i8*, i8*) #2 !dbg !261 {
  %4 = alloca %struct.Atomic_uint64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %4, metadata !266, metadata !126), !dbg !267
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !268, metadata !126), !dbg !269
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !270, metadata !126), !dbg !271
  %7 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !272
  %8 = load i8*, i8** %5, align 8, !dbg !273
  %9 = ptrtoint i8* %8 to i64, !dbg !274
  %10 = load i8*, i8** %6, align 8, !dbg !275
  %11 = ptrtoint i8* %10 to i64, !dbg !276
  %12 = call i64 @Atomic_ReadIfEqualWrite64(%struct.Atomic_uint64* %7, i64 %9, i64 %11), !dbg !277
  %13 = inttoptr i64 %12 to i8*, !dbg !278
  ret i8* %13, !dbg !279
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXRecLockDestroy(%struct.MXRecLock*) #2 !dbg !280 {
  %2 = alloca %struct.MXRecLock*, align 8
  %3 = alloca i32, align 4
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !283, metadata !126), !dbg !284
  call void @llvm.dbg.declare(metadata i32* %3, metadata !285, metadata !126), !dbg !286
  %4 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !287
  %5 = call i32 @MXRecLockDestroyInternal(%struct.MXRecLock* %4), !dbg !288
  store i32 %5, i32* %3, align 4, !dbg !286
  ret void, !dbg !289
}

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind uwtable
define i32 @MXUserGetSignature(i32) #0 !dbg !290 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !294, metadata !126), !dbg !295
  call void @llvm.dbg.declare(metadata i32* %3, metadata !296, metadata !126), !dbg !297
  %4 = call i32 @MXUserSyndrome(), !dbg !298
  %5 = and i32 %4, 268435455, !dbg !299
  %6 = load i32, i32* %2, align 4, !dbg !300
  %7 = shl i32 %6, 28, !dbg !301
  %8 = or i32 %5, %7, !dbg !302
  store i32 %8, i32* %3, align 4, !dbg !303
  %9 = load i32, i32* %3, align 4, !dbg !304
  ret i32 %9, !dbg !305
}

; Function Attrs: nounwind uwtable
define internal i32 @MXUserSyndrome() #0 !dbg !93 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !306, metadata !126), !dbg !307
  %2 = call i32 @Atomic_Read32(%struct.Atomic_uint32* @MXUserSyndrome.syndromeMem), !dbg !308
  store i32 %2, i32* %1, align 4, !dbg !309
  %3 = load i32, i32* %1, align 4, !dbg !310
  %4 = icmp eq i32 %3, 0, !dbg !312
  br i1 %4, label %5, label %18, !dbg !313

; <label>:5:                                      ; preds = %0
  %6 = call i64 @time(i64* null) #5, !dbg !314
  %7 = and i64 %6, 4294967295, !dbg !316
  %8 = trunc i64 %7 to i32, !dbg !314
  store i32 %8, i32* %1, align 4, !dbg !317
  %9 = load i32, i32* %1, align 4, !dbg !318
  %10 = icmp eq i32 %9, 0, !dbg !320
  br i1 %10, label %11, label %14, !dbg !321

; <label>:11:                                     ; preds = %5
  %12 = load i32, i32* %1, align 4, !dbg !322
  %13 = add i32 %12, 1, !dbg !322
  store i32 %13, i32* %1, align 4, !dbg !322
  br label %14, !dbg !324

; <label>:14:                                     ; preds = %11, %5
  %15 = load i32, i32* %1, align 4, !dbg !325
  %16 = call i32 @Atomic_ReadIfEqualWrite32(%struct.Atomic_uint32* @MXUserSyndrome.syndromeMem, i32 0, i32 %15), !dbg !326
  %17 = call i32 @Atomic_Read32(%struct.Atomic_uint32* @MXUserSyndrome.syndromeMem), !dbg !327
  store i32 %17, i32* %1, align 4, !dbg !328
  br label %18, !dbg !329

; <label>:18:                                     ; preds = %14, %0
  %19 = load i32, i32* %1, align 4, !dbg !330
  ret i32 %19, !dbg !331
}

; Function Attrs: nounwind uwtable
define void @MXUser_SetInPanic() #0 !dbg !332 {
  store i8 1, i8* @mxInPanic, align 1, !dbg !333
  %1 = load void ()*, void ()** @MXUserMX_SetInPanic, align 8, !dbg !334
  %2 = icmp ne void ()* %1, null, !dbg !336
  br i1 %2, label %3, label %5, !dbg !337

; <label>:3:                                      ; preds = %0
  %4 = load void ()*, void ()** @MXUserMX_SetInPanic, align 8, !dbg !338
  call void %4(), !dbg !338
  br label %5, !dbg !340

; <label>:5:                                      ; preds = %3, %0
  ret void, !dbg !341
}

; Function Attrs: nounwind uwtable
define void @MXUserDumpAndPanic(%struct.MXUserHeader*, i8*, ...) #0 !dbg !55 {
  %3 = alloca %struct.MXUserHeader*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.MXUserHeader* %0, %struct.MXUserHeader** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserHeader** %3, metadata !342, metadata !126), !dbg !343
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !344, metadata !126), !dbg !345
  call void @llvm.dbg.declare(metadata i8** %5, metadata !346, metadata !126), !dbg !347
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %6, metadata !348, metadata !126), !dbg !362
  %7 = load i32, i32* @MXUserDumpAndPanic.loopCounter, align 4, !dbg !363
  %8 = add i32 %7, 1, !dbg !363
  store i32 %8, i32* @MXUserDumpAndPanic.loopCounter, align 4, !dbg !363
  %9 = icmp ugt i32 %8, 5, !dbg !365
  br i1 %9, label %10, label %11, !dbg !366

; <label>:10:                                     ; preds = %2
  call void @MXUser_SetInPanic(), !dbg !367
  br label %11, !dbg !369

; <label>:11:                                     ; preds = %10, %2
  %12 = load %struct.MXUserHeader*, %struct.MXUserHeader** %3, align 8, !dbg !370
  %13 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %12, i32 0, i32 4, !dbg !371
  %14 = load void (%struct.MXUserHeader*)*, void (%struct.MXUserHeader*)** %13, align 8, !dbg !371
  %15 = load %struct.MXUserHeader*, %struct.MXUserHeader** %3, align 8, !dbg !372
  call void %14(%struct.MXUserHeader* %15), !dbg !373
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0, !dbg !374
  %17 = bitcast %struct.__va_list_tag* %16 to i8*, !dbg !374
  call void @llvm.va_start(i8* %17), !dbg !374
  %18 = load i8*, i8** %4, align 8, !dbg !375
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0, !dbg !376
  %20 = call i8* @Str_SafeVasprintf(i64* null, i8* %18, %struct.__va_list_tag* %19), !dbg !377
  store i8* %20, i8** %5, align 8, !dbg !378
  %21 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0, !dbg !379
  %22 = bitcast %struct.__va_list_tag* %21 to i8*, !dbg !379
  call void @llvm.va_end(i8* %22), !dbg !379
  %23 = load i8*, i8** %5, align 8, !dbg !380
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* %23) #9, !dbg !381
  unreachable, !dbg !381
                                                  ; No predecessors!
  ret void, !dbg !382
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare i8* @Str_SafeVasprintf(i64*, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #6

; Function Attrs: nounwind uwtable
define signext i8 @MXUser_InPanic() #0 !dbg !383 {
  %1 = load i8, i8* @mxInPanic, align 1, !dbg !384
  %2 = sext i8 %1 to i32, !dbg !384
  %3 = icmp ne i32 %2, 0, !dbg !384
  br i1 %3, label %14, label %4, !dbg !385

; <label>:4:                                      ; preds = %0
  %5 = load i8 ()*, i8 ()** @MXUserMX_InPanic, align 8, !dbg !386
  %6 = icmp ne i8 ()* %5, null, !dbg !388
  br i1 %6, label %7, label %12, !dbg !389

; <label>:7:                                      ; preds = %4
  %8 = load i8 ()*, i8 ()** @MXUserMX_InPanic, align 8, !dbg !390
  %9 = call signext i8 %8(), !dbg !390
  %10 = sext i8 %9 to i32, !dbg !390
  %11 = icmp ne i32 %10, 0, !dbg !392
  br label %12

; <label>:12:                                     ; preds = %7, %4
  %13 = phi i1 [ false, %4 ], [ %11, %7 ]
  br label %14, !dbg !393

; <label>:14:                                     ; preds = %12, %0
  %15 = phi i1 [ true, %0 ], [ %13, %12 ]
  %16 = zext i1 %15 to i32, !dbg !395
  %17 = trunc i32 %16 to i8, !dbg !397
  ret i8 %17, !dbg !398
}

; Function Attrs: nounwind uwtable
define void @MXUserInstallMxHooks(void ()*, i32 ()*, void (%struct.MX_MutexRec*)*, void (%struct.MX_MutexRec*)*, i8 (%struct.MX_MutexRec*)*, i8 (%struct.MX_MutexRec*)*, i8* (%struct.MX_MutexRec*)*, void ()*, i8 ()*) #0 !dbg !399 {
  %10 = alloca void ()*, align 8
  %11 = alloca i32 ()*, align 8
  %12 = alloca void (%struct.MX_MutexRec*)*, align 8
  %13 = alloca void (%struct.MX_MutexRec*)*, align 8
  %14 = alloca i8 (%struct.MX_MutexRec*)*, align 8
  %15 = alloca i8 (%struct.MX_MutexRec*)*, align 8
  %16 = alloca i8* (%struct.MX_MutexRec*)*, align 8
  %17 = alloca void ()*, align 8
  %18 = alloca i8 ()*, align 8
  store void ()* %0, void ()** %10, align 8
  call void @llvm.dbg.declare(metadata void ()** %10, metadata !402, metadata !126), !dbg !403
  store i32 ()* %1, i32 ()** %11, align 8
  call void @llvm.dbg.declare(metadata i32 ()** %11, metadata !404, metadata !126), !dbg !405
  store void (%struct.MX_MutexRec*)* %2, void (%struct.MX_MutexRec*)** %12, align 8
  call void @llvm.dbg.declare(metadata void (%struct.MX_MutexRec*)** %12, metadata !406, metadata !126), !dbg !407
  store void (%struct.MX_MutexRec*)* %3, void (%struct.MX_MutexRec*)** %13, align 8
  call void @llvm.dbg.declare(metadata void (%struct.MX_MutexRec*)** %13, metadata !408, metadata !126), !dbg !409
  store i8 (%struct.MX_MutexRec*)* %4, i8 (%struct.MX_MutexRec*)** %14, align 8
  call void @llvm.dbg.declare(metadata i8 (%struct.MX_MutexRec*)** %14, metadata !410, metadata !126), !dbg !411
  store i8 (%struct.MX_MutexRec*)* %5, i8 (%struct.MX_MutexRec*)** %15, align 8
  call void @llvm.dbg.declare(metadata i8 (%struct.MX_MutexRec*)** %15, metadata !412, metadata !126), !dbg !413
  store i8* (%struct.MX_MutexRec*)* %6, i8* (%struct.MX_MutexRec*)** %16, align 8
  call void @llvm.dbg.declare(metadata i8* (%struct.MX_MutexRec*)** %16, metadata !414, metadata !126), !dbg !415
  store void ()* %7, void ()** %17, align 8
  call void @llvm.dbg.declare(metadata void ()** %17, metadata !416, metadata !126), !dbg !417
  store i8 ()* %8, i8 ()** %18, align 8
  call void @llvm.dbg.declare(metadata i8 ()** %18, metadata !418, metadata !126), !dbg !419
  %19 = load void ()*, void ()** @MXUserMxLockLister, align 8, !dbg !420
  %20 = icmp eq void ()* %19, null, !dbg !422
  br i1 %20, label %21, label %55, !dbg !423

; <label>:21:                                     ; preds = %9
  %22 = load i32 ()*, i32 ()** @MXUserMxCheckRank, align 8, !dbg !424
  %23 = icmp eq i32 ()* %22, null, !dbg !425
  br i1 %23, label %24, label %55, !dbg !426

; <label>:24:                                     ; preds = %21
  %25 = load void (%struct.MX_MutexRec*)*, void (%struct.MX_MutexRec*)** @MXUserMX_LockRec, align 8, !dbg !427
  %26 = icmp eq void (%struct.MX_MutexRec*)* %25, null, !dbg !428
  br i1 %26, label %27, label %55, !dbg !429

; <label>:27:                                     ; preds = %24
  %28 = load void (%struct.MX_MutexRec*)*, void (%struct.MX_MutexRec*)** @MXUserMX_UnlockRec, align 8, !dbg !430
  %29 = icmp eq void (%struct.MX_MutexRec*)* %28, null, !dbg !431
  br i1 %29, label %30, label %55, !dbg !432

; <label>:30:                                     ; preds = %27
  %31 = load i8 (%struct.MX_MutexRec*)*, i8 (%struct.MX_MutexRec*)** @MXUserMX_TryLockRec, align 8, !dbg !433
  %32 = icmp eq i8 (%struct.MX_MutexRec*)* %31, null, !dbg !434
  br i1 %32, label %33, label %55, !dbg !435

; <label>:33:                                     ; preds = %30
  %34 = load i8 (%struct.MX_MutexRec*)*, i8 (%struct.MX_MutexRec*)** @MXUserMX_IsLockedByCurThreadRec, align 8, !dbg !436
  %35 = icmp eq i8 (%struct.MX_MutexRec*)* %34, null, !dbg !437
  br i1 %35, label %36, label %55, !dbg !438

; <label>:36:                                     ; preds = %33
  %37 = load i8* (%struct.MX_MutexRec*)*, i8* (%struct.MX_MutexRec*)** @MXUserMX_NameRec, align 8, !dbg !439
  %38 = icmp eq i8* (%struct.MX_MutexRec*)* %37, null, !dbg !440
  br i1 %38, label %39, label %55, !dbg !441

; <label>:39:                                     ; preds = %36
  %40 = load void ()*, void ()** @MXUserMX_SetInPanic, align 8, !dbg !442
  %41 = icmp eq void ()* %40, null, !dbg !443
  br i1 %41, label %42, label %55, !dbg !444

; <label>:42:                                     ; preds = %39
  %43 = load i8 ()*, i8 ()** @MXUserMX_InPanic, align 8, !dbg !445
  %44 = icmp eq i8 ()* %43, null, !dbg !446
  br i1 %44, label %45, label %55, !dbg !447

; <label>:45:                                     ; preds = %42
  %46 = load void ()*, void ()** %10, align 8, !dbg !449
  store void ()* %46, void ()** @MXUserMxLockLister, align 8, !dbg !451
  %47 = load i32 ()*, i32 ()** %11, align 8, !dbg !452
  store i32 ()* %47, i32 ()** @MXUserMxCheckRank, align 8, !dbg !453
  %48 = load void (%struct.MX_MutexRec*)*, void (%struct.MX_MutexRec*)** %12, align 8, !dbg !454
  store void (%struct.MX_MutexRec*)* %48, void (%struct.MX_MutexRec*)** @MXUserMX_LockRec, align 8, !dbg !455
  %49 = load void (%struct.MX_MutexRec*)*, void (%struct.MX_MutexRec*)** %13, align 8, !dbg !456
  store void (%struct.MX_MutexRec*)* %49, void (%struct.MX_MutexRec*)** @MXUserMX_UnlockRec, align 8, !dbg !457
  %50 = load i8 (%struct.MX_MutexRec*)*, i8 (%struct.MX_MutexRec*)** %14, align 8, !dbg !458
  store i8 (%struct.MX_MutexRec*)* %50, i8 (%struct.MX_MutexRec*)** @MXUserMX_TryLockRec, align 8, !dbg !459
  %51 = load i8 (%struct.MX_MutexRec*)*, i8 (%struct.MX_MutexRec*)** %15, align 8, !dbg !460
  store i8 (%struct.MX_MutexRec*)* %51, i8 (%struct.MX_MutexRec*)** @MXUserMX_IsLockedByCurThreadRec, align 8, !dbg !461
  %52 = load i8* (%struct.MX_MutexRec*)*, i8* (%struct.MX_MutexRec*)** %16, align 8, !dbg !462
  store i8* (%struct.MX_MutexRec*)* %52, i8* (%struct.MX_MutexRec*)** @MXUserMX_NameRec, align 8, !dbg !463
  %53 = load void ()*, void ()** %17, align 8, !dbg !464
  store void ()* %53, void ()** @MXUserMX_SetInPanic, align 8, !dbg !465
  %54 = load i8 ()*, i8 ()** %18, align 8, !dbg !466
  store i8 ()* %54, i8 ()** @MXUserMX_InPanic, align 8, !dbg !467
  br label %56, !dbg !468

; <label>:55:                                     ; preds = %42, %39, %36, %33, %30, %27, %24, %21, %9
  br label %56

; <label>:56:                                     ; preds = %55, %45
  ret void, !dbg !469
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @Atomic_Read64(%struct.Atomic_uint64*) #2 !dbg !470 {
  %2 = alloca %struct.Atomic_uint64*, align 8
  %3 = alloca i64, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %2, metadata !475, metadata !126), !dbg !476
  call void @llvm.dbg.declare(metadata i64* %3, metadata !477, metadata !126), !dbg !478
  %4 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %2, align 8, !dbg !479
  %5 = getelementptr inbounds %struct.Atomic_uint64, %struct.Atomic_uint64* %4, i32 0, i32 0, !dbg !480
  %6 = call i64 asm sideeffect "movq $1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i64* %5) #5, !dbg !481, !srcloc !482
  store i64 %6, i64* %3, align 8, !dbg !481
  %7 = load i64, i64* %3, align 8, !dbg !483
  ret i64 %7, !dbg !484
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @MXRecLockCreateInternal(%struct.MXRecLock*) #2 !dbg !485 {
  %2 = alloca %struct.MXRecLock*, align 8
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !488, metadata !126), !dbg !489
  %3 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !490
  %4 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %3, i32 0, i32 0, !dbg !491
  %5 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %4, %union.pthread_mutexattr_t* null) #5, !dbg !492
  ret i32 %5, !dbg !493
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXRecLockSetNoOwner(%struct.MXRecLock*) #2 !dbg !494 {
  %2 = alloca %struct.MXRecLock*, align 8
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !495, metadata !126), !dbg !496
  %3 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !497
  %4 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %3, i32 0, i32 2, !dbg !498
  %5 = bitcast i64* %4 to i8*, !dbg !499
  call void @llvm.memset.p0i8.i64(i8* %5, i8 -1, i64 8, i32 8, i1 false), !dbg !499
  ret void, !dbg !500
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @Atomic_ReadIfEqualWrite64(%struct.Atomic_uint64*, i64, i64) #2 !dbg !501 {
  %4 = alloca %struct.Atomic_uint64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %4, metadata !505, metadata !126), !dbg !506
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !507, metadata !126), !dbg !508
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !509, metadata !126), !dbg !510
  call void @llvm.dbg.declare(metadata i64* %7, metadata !511, metadata !126), !dbg !512
  %8 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !513
  %9 = getelementptr inbounds %struct.Atomic_uint64, %struct.Atomic_uint64* %8, i32 0, i32 0, !dbg !514
  %10 = load i64, i64* %6, align 8, !dbg !515
  %11 = load i64, i64* %5, align 8, !dbg !516
  %12 = call i64 asm sideeffect "lock; cmpxchgq $2, $1", "={ax},=*m,r,0,*m,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10, i64 %11, i64* %9) #5, !dbg !517, !srcloc !518
  store i64 %12, i64* %7, align 8, !dbg !517
  %13 = load i64, i64* %7, align 8, !dbg !519
  ret i64 %13, !dbg !520
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @MXRecLockDestroyInternal(%struct.MXRecLock*) #2 !dbg !521 {
  %2 = alloca %struct.MXRecLock*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !522, metadata !126), !dbg !523
  call void @llvm.dbg.declare(metadata i32* %3, metadata !524, metadata !126), !dbg !525
  %5 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !526
  %6 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %5, i32 0, i32 0, !dbg !527
  %7 = call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* %6) #5, !dbg !528
  store i32 %7, i32* %3, align 4, !dbg !525
  br i1 icmp ne (i8* ()* @gnu_get_libc_version, i8* ()* null), label %8, label %15, !dbg !529

; <label>:8:                                      ; preds = %1
  call void @llvm.dbg.declare(metadata i8** %4, metadata !530, metadata !126), !dbg !533
  %9 = call i8* @gnu_get_libc_version(), !dbg !534
  store i8* %9, i8** %4, align 8, !dbg !533
  %10 = load i8*, i8** %4, align 8, !dbg !535
  %11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)) #10, !dbg !537
  %12 = icmp sge i32 %11, 0, !dbg !538
  br i1 %12, label %13, label %14, !dbg !539

; <label>:13:                                     ; preds = %8
  store i32 0, i32* %3, align 4, !dbg !540
  br label %14, !dbg !542

; <label>:14:                                     ; preds = %13, %8
  br label %15, !dbg !543

; <label>:15:                                     ; preds = %14, %1
  %16 = load i32, i32* %3, align 4, !dbg !544
  ret i32 %16, !dbg !545
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(%union.pthread_mutex_t*) #4

declare extern_weak i8* @gnu_get_libc_version() #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #8

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @Atomic_Read32(%struct.Atomic_uint32*) #2 !dbg !546 {
  %2 = alloca %struct.Atomic_uint32*, align 8
  %3 = alloca i32, align 4
  store %struct.Atomic_uint32* %0, %struct.Atomic_uint32** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint32** %2, metadata !551, metadata !126), !dbg !552
  call void @llvm.dbg.declare(metadata i32* %3, metadata !553, metadata !126), !dbg !554
  %4 = load %struct.Atomic_uint32*, %struct.Atomic_uint32** %2, align 8, !dbg !555
  %5 = getelementptr inbounds %struct.Atomic_uint32, %struct.Atomic_uint32* %4, i32 0, i32 0, !dbg !556
  %6 = call i32 asm sideeffect "mov $1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i32* %5) #5, !dbg !557, !srcloc !558
  store i32 %6, i32* %3, align 4, !dbg !557
  %7 = load i32, i32* %3, align 4, !dbg !559
  ret i32 %7, !dbg !560
}

; Function Attrs: nounwind
declare i64 @time(i64*) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @Atomic_ReadIfEqualWrite32(%struct.Atomic_uint32*, i32, i32) #2 !dbg !561 {
  %4 = alloca %struct.Atomic_uint32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.Atomic_uint32* %0, %struct.Atomic_uint32** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint32** %4, metadata !565, metadata !126), !dbg !566
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !567, metadata !126), !dbg !568
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !569, metadata !126), !dbg !570
  call void @llvm.dbg.declare(metadata i32* %7, metadata !571, metadata !126), !dbg !572
  %8 = load %struct.Atomic_uint32*, %struct.Atomic_uint32** %4, align 8, !dbg !573
  %9 = getelementptr inbounds %struct.Atomic_uint32, %struct.Atomic_uint32* %8, i32 0, i32 0, !dbg !574
  %10 = load i32, i32* %6, align 4, !dbg !575
  %11 = load i32, i32* %5, align 4, !dbg !576
  %12 = call i32 asm sideeffect "lock; cmpxchgl $2, $1", "={ax},=*m,r,0,*m,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %9, i32 %10, i32 %11, i32* %9) #5, !dbg !577, !srcloc !578
  store i32 %12, i32* %7, align 4, !dbg !577
  %13 = load i32, i32* %7, align 4, !dbg !579
  ret i32 %13, !dbg !580
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn }
attributes #10 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!116, !117}
!llvm.ident = !{!118}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !15, globals: !23)
!1 = !DIFile(filename: "ul.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line477")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 440, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "ulInt.h", directory: "/home/lichi/Desktop/open-vm-tools/line477")
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
!15 = !{!16, !17, !20}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !18, line: 122, baseType: !19)
!18 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line477")
!19 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !21, line: 171, baseType: !22)
!21 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line477")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !18, line: 55, baseType: !19)
!23 = !{!24, !31, !38, !39, !43, !49, !54, !91, !92, !102, !103, !107, !111, !112}
!24 = distinct !DIGlobalVariable(name: "MXUserTryAcquireForceFail", scope: !0, file: !25, line: 31, type: !26, isLocal: false, isDefinition: true, variable: i8 (...)** @MXUserTryAcquireForceFail)
!25 = !DIFile(filename: "ul.c", directory: "/home/lichi/Desktop/open-vm-tools/line477")
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!27 = !DISubroutineType(types: !28)
!28 = !{!29, null}
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !21, line: 230, baseType: !30)
!30 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!31 = distinct !DIGlobalVariable(name: "MXUserMX_LockRec", scope: !0, file: !25, line: 35, type: !32, isLocal: false, isDefinition: true, variable: void (%struct.MX_MutexRec*)** @MXUserMX_LockRec)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !35}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DICompositeType(tag: DW_TAG_structure_type, name: "MX_MutexRec", file: !37, line: 327, flags: DIFlagFwdDecl)
!37 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/userlock.h", directory: "/home/lichi/Desktop/open-vm-tools/line477")
!38 = distinct !DIGlobalVariable(name: "MXUserMX_UnlockRec", scope: !0, file: !25, line: 36, type: !32, isLocal: false, isDefinition: true, variable: void (%struct.MX_MutexRec*)** @MXUserMX_UnlockRec)
!39 = distinct !DIGlobalVariable(name: "MXUserMX_TryLockRec", scope: !0, file: !25, line: 37, type: !40, isLocal: false, isDefinition: true, variable: i8 (%struct.MX_MutexRec*)** @MXUserMX_TryLockRec)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DISubroutineType(types: !42)
!42 = !{!29, !35}
!43 = distinct !DIGlobalVariable(name: "MXUserMX_IsLockedByCurThreadRec", scope: !0, file: !25, line: 38, type: !44, isLocal: false, isDefinition: true, variable: i8 (%struct.MX_MutexRec*)** @MXUserMX_IsLockedByCurThreadRec)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{!29, !47}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!49 = distinct !DIGlobalVariable(name: "MXUserMX_NameRec", scope: !0, file: !25, line: 39, type: !50, isLocal: false, isDefinition: true, variable: i8* (%struct.MX_MutexRec*)** @MXUserMX_NameRec)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DISubroutineType(types: !52)
!52 = !{!53, !47}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!54 = distinct !DIGlobalVariable(name: "loopCounter", scope: !55, file: !25, line: 300, type: !63, isLocal: true, isDefinition: true, variable: i32* @MXUserDumpAndPanic.loopCounter)
!55 = distinct !DISubprogram(name: "MXUserDumpAndPanic", scope: !25, file: !25, line: 294, type: !56, isLocal: false, isDefinition: true, scopeLine: 297, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !90)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !58, !88, null}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserHeader", file: !4, line: 469, baseType: !60)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MXUserHeader", file: !4, line: 456, size: 448, align: 64, elements: !61)
!61 = !{!62, !66, !67, !69, !74, !79, !80}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !60, file: !4, line: 457, baseType: !63, size: 32, align: 32)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !21, line: 173, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !18, line: 51, baseType: !65)
!65 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !60, file: !4, line: 458, baseType: !53, size: 64, align: 64, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "rank", scope: !60, file: !4, line: 459, baseType: !68, size: 32, align: 32, offset: 128)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "MX_Rank", file: !21, line: 1167, baseType: !63)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !60, file: !4, line: 464, baseType: !70, size: 32, align: 32, offset: 160)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !60, file: !4, line: 461, size: 32, align: 32, elements: !71)
!71 = !{!72, !73}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "serialNumber", scope: !70, file: !4, line: 462, baseType: !65, size: 24, align: 32, flags: DIFlagBitField, extraData: i64 0)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "badHeader", scope: !70, file: !4, line: 463, baseType: !65, size: 1, align: 32, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "dumpFunc", scope: !60, file: !4, line: 466, baseType: !75, size: 64, align: 64, offset: 192)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!76 = !DISubroutineType(types: !77)
!77 = !{null, !78}
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "statsFunc", scope: !60, file: !4, line: 467, baseType: !75, size: 64, align: 64, offset: 256)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !60, file: !4, line: 468, baseType: !81, size: 128, align: 64, offset: 320)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "ListItem", file: !82, line: 45, baseType: !83)
!82 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/circList.h", directory: "/home/lichi/Desktop/open-vm-tools/line477")
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ListItem", file: !82, line: 42, size: 128, align: 64, elements: !84)
!84 = !{!85, !87}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !83, file: !82, line: 43, baseType: !86, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !83, file: !82, line: 44, baseType: !86, size: 64, align: 64, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, align: 64)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!90 = !{}
!91 = distinct !DIGlobalVariable(name: "mxUserCollectLockingTree", scope: !0, file: !25, line: 29, type: !29, isLocal: true, isDefinition: true, variable: i8* @mxUserCollectLockingTree)
!92 = distinct !DIGlobalVariable(name: "syndromeMem", scope: !93, file: !25, line: 174, type: !96, isLocal: true, isDefinition: true, variable: %struct.Atomic_uint32* @MXUserSyndrome.syndromeMem)
!93 = distinct !DISubprogram(name: "MXUserSyndrome", scope: !25, file: !25, line: 171, type: !94, isLocal: true, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !90)
!94 = !DISubroutineType(types: !95)
!95 = !{!63}
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_uint32", file: !97, line: 135, baseType: !98)
!97 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_atomic.h", directory: "/home/lichi/Desktop/open-vm-tools/line477")
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Atomic_uint32", file: !97, line: 133, size: 32, align: 32, elements: !99)
!99 = !{!100}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !98, file: !97, line: 134, baseType: !101, size: 32, align: 32)
!101 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !63)
!102 = distinct !DIGlobalVariable(name: "mxInPanic", scope: !0, file: !25, line: 28, type: !29, isLocal: true, isDefinition: true, variable: i8* @mxInPanic)
!103 = distinct !DIGlobalVariable(name: "MXUserMX_SetInPanic", scope: !0, file: !25, line: 40, type: !104, isLocal: true, isDefinition: true, variable: void ()** @MXUserMX_SetInPanic)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{null}
!107 = distinct !DIGlobalVariable(name: "MXUserMX_InPanic", scope: !0, file: !25, line: 41, type: !108, isLocal: true, isDefinition: true, variable: i8 ()** @MXUserMX_InPanic)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, align: 64)
!109 = !DISubroutineType(types: !110)
!110 = !{!29}
!111 = distinct !DIGlobalVariable(name: "MXUserMxLockLister", scope: !0, file: !25, line: 34, type: !104, isLocal: true, isDefinition: true, variable: void ()** @MXUserMxLockLister)
!112 = distinct !DIGlobalVariable(name: "MXUserMxCheckRank", scope: !0, file: !25, line: 33, type: !113, isLocal: true, isDefinition: true, variable: i32 ()** @MXUserMxCheckRank)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!114 = !DISubroutineType(types: !115)
!115 = !{!68}
!116 = !{i32 2, !"Dwarf Version", i32 4}
!117 = !{i32 2, !"Debug Info Version", i32 3}
!118 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!119 = distinct !DISubprogram(name: "MXUser_IsLockingTreeAvailable", scope: !25, file: !25, line: 64, type: !109, isLocal: false, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !90)
!120 = !DILocation(line: 66, column: 11, scope: !119)
!121 = !DILocation(line: 66, column: 4, scope: !119)
!122 = distinct !DISubprogram(name: "MXUser_LockingTreeCollection", scope: !25, file: !25, line: 87, type: !123, isLocal: false, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !90)
!123 = !DISubroutineType(types: !124)
!124 = !{null, !29}
!125 = !DILocalVariable(name: "enabled", arg: 1, scope: !122, file: !25, line: 87, type: !29)
!126 = !DIExpression()
!127 = !DILocation(line: 87, column: 35, scope: !122)
!128 = !DILocation(line: 89, column: 29, scope: !122)
!129 = !DILocation(line: 90, column: 1, scope: !122)
!130 = distinct !DISubprogram(name: "MXUserInternalSingleton", scope: !25, file: !25, line: 114, type: !131, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !90)
!131 = !DISubroutineType(types: !132)
!132 = !{!133, !171}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXRecLock", file: !4, line: 67, baseType: !135)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 58, size: 448, align: 64, elements: !136)
!136 = !{!137, !167, !168}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nativeLock", scope: !135, file: !4, line: 62, baseType: !138, size: 320, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !139, line: 128, baseType: !140)
!139 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line477")
!140 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !139, line: 90, size: 320, align: 64, elements: !141)
!141 = !{!142, !161, !165}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !140, file: !139, line: 125, baseType: !143, size: 320, align: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !139, line: 92, size: 320, align: 64, elements: !144)
!144 = !{!145, !147, !148, !149, !150, !151, !153, !154}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !143, file: !139, line: 94, baseType: !146, size: 32, align: 32)
!146 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !143, file: !139, line: 95, baseType: !65, size: 32, align: 32, offset: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !143, file: !139, line: 96, baseType: !146, size: 32, align: 32, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !143, file: !139, line: 98, baseType: !65, size: 32, align: 32, offset: 96)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !143, file: !139, line: 102, baseType: !146, size: 32, align: 32, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !143, file: !139, line: 104, baseType: !152, size: 16, align: 16, offset: 160)
!152 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !143, file: !139, line: 105, baseType: !152, size: 16, align: 16, offset: 176)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !143, file: !139, line: 106, baseType: !155, size: 128, align: 64, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !139, line: 79, baseType: !156)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !139, line: 75, size: 128, align: 64, elements: !157)
!157 = !{!158, !160}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !156, file: !139, line: 77, baseType: !159, size: 64, align: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, align: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !156, file: !139, line: 78, baseType: !159, size: 64, align: 64, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !140, file: !139, line: 126, baseType: !162, size: 320, align: 8)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 320, align: 8, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 40)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !140, file: !139, line: 127, baseType: !166, size: 64, align: 64)
!166 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "referenceCount", scope: !135, file: !4, line: 65, baseType: !146, size: 32, align: 32, offset: 320)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nativeThreadID", scope: !135, file: !4, line: 66, baseType: !169, size: 64, align: 64, offset: 384)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserThreadID", file: !4, line: 39, baseType: !170)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !139, line: 60, baseType: !19)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_Ptr", file: !97, line: 3829, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_uint64", file: !97, line: 139, baseType: !174)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Atomic_uint64", file: !97, line: 137, size: 64, align: 64, elements: !175)
!175 = !{!176}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !174, file: !97, line: 138, baseType: !177, size: 64, align: 64)
!177 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !20)
!178 = !DILocalVariable(name: "storage", arg: 1, scope: !130, file: !25, line: 114, type: !171)
!179 = !DILocation(line: 114, column: 37, scope: !130)
!180 = !DILocalVariable(name: "lock", scope: !130, file: !25, line: 116, type: !133)
!181 = !DILocation(line: 116, column: 15, scope: !130)
!182 = !DILocation(line: 116, column: 37, scope: !130)
!183 = !DILocation(line: 116, column: 22, scope: !130)
!184 = !DILocation(line: 118, column: 26, scope: !185)
!185 = distinct !DILexicalBlock(scope: !130, file: !25, line: 118, column: 8)
!186 = !DILocation(line: 118, column: 31, scope: !185)
!187 = !DILocation(line: 118, column: 25, scope: !185)
!188 = !DILocation(line: 118, column: 8, scope: !185)
!189 = !DILocation(line: 118, column: 8, scope: !130)
!190 = !DILocalVariable(name: "newLock", scope: !191, file: !25, line: 119, type: !133)
!191 = distinct !DILexicalBlock(scope: !185, file: !25, line: 118, column: 14)
!192 = !DILocation(line: 119, column: 18, scope: !191)
!193 = !DILocation(line: 119, column: 28, scope: !191)
!194 = !DILocation(line: 121, column: 25, scope: !195)
!195 = distinct !DILexicalBlock(scope: !191, file: !25, line: 121, column: 11)
!196 = !DILocation(line: 121, column: 11, scope: !195)
!197 = !DILocation(line: 121, column: 11, scope: !191)
!198 = !DILocation(line: 122, column: 44, scope: !199)
!199 = distinct !DILexicalBlock(scope: !195, file: !25, line: 121, column: 35)
!200 = !DILocation(line: 122, column: 67, scope: !199)
!201 = !DILocation(line: 122, column: 58, scope: !199)
!202 = !DILocation(line: 122, column: 17, scope: !199)
!203 = !DILocation(line: 122, column: 15, scope: !199)
!204 = !DILocation(line: 124, column: 14, scope: !205)
!205 = distinct !DILexicalBlock(scope: !199, file: !25, line: 124, column: 14)
!206 = !DILocation(line: 124, column: 14, scope: !199)
!207 = !DILocation(line: 125, column: 30, scope: !208)
!208 = distinct !DILexicalBlock(scope: !205, file: !25, line: 124, column: 20)
!209 = !DILocation(line: 125, column: 13, scope: !208)
!210 = !DILocation(line: 126, column: 18, scope: !208)
!211 = !DILocation(line: 126, column: 13, scope: !208)
!212 = !DILocation(line: 127, column: 10, scope: !208)
!213 = !DILocation(line: 128, column: 35, scope: !214)
!214 = distinct !DILexicalBlock(scope: !205, file: !25, line: 127, column: 17)
!215 = !DILocation(line: 128, column: 20, scope: !214)
!216 = !DILocation(line: 128, column: 18, scope: !214)
!217 = !DILocation(line: 130, column: 7, scope: !199)
!218 = !DILocation(line: 131, column: 15, scope: !219)
!219 = distinct !DILexicalBlock(scope: !195, file: !25, line: 130, column: 14)
!220 = !DILocation(line: 131, column: 10, scope: !219)
!221 = !DILocation(line: 132, column: 32, scope: !219)
!222 = !DILocation(line: 132, column: 17, scope: !219)
!223 = !DILocation(line: 132, column: 15, scope: !219)
!224 = !DILocation(line: 134, column: 4, scope: !191)
!225 = !DILocation(line: 136, column: 11, scope: !130)
!226 = !DILocation(line: 136, column: 4, scope: !130)
!227 = distinct !DISubprogram(name: "Atomic_ReadPtr", scope: !97, file: !97, line: 3829, type: !228, isLocal: true, isDefinition: true, scopeLine: 3829, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !90)
!228 = !DISubroutineType(types: !229)
!229 = !{!16, !230}
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!232 = !DILocalVariable(name: "var", arg: 1, scope: !227, file: !97, line: 3829, type: !230)
!233 = !DILocation(line: 3829, column: 368, scope: !227)
!234 = !DILocation(line: 3829, column: 415, scope: !227)
!235 = !DILocation(line: 3829, column: 401, scope: !227)
!236 = !DILocation(line: 3829, column: 382, scope: !227)
!237 = !DILocation(line: 3829, column: 375, scope: !227)
!238 = distinct !DISubprogram(name: "MXRecLockInit", scope: !4, file: !4, line: 264, type: !239, isLocal: true, isDefinition: true, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !90)
!239 = !DISubroutineType(types: !240)
!240 = !{!29, !133}
!241 = !DILocalVariable(name: "lock", arg: 1, scope: !238, file: !4, line: 264, type: !133)
!242 = !DILocation(line: 264, column: 26, scope: !238)
!243 = !DILocalVariable(name: "success", scope: !238, file: !4, line: 266, type: !29)
!244 = !DILocation(line: 266, column: 9, scope: !238)
!245 = !DILocation(line: 266, column: 44, scope: !238)
!246 = !DILocation(line: 266, column: 20, scope: !238)
!247 = !DILocation(line: 266, column: 50, scope: !238)
!248 = !DILocation(line: 266, column: 19, scope: !238)
!249 = !DILocation(line: 268, column: 8, scope: !250)
!250 = distinct !DILexicalBlock(scope: !238, file: !4, line: 268, column: 8)
!251 = !DILocation(line: 268, column: 8, scope: !238)
!252 = !DILocation(line: 269, column: 27, scope: !253)
!253 = distinct !DILexicalBlock(scope: !250, file: !4, line: 268, column: 17)
!254 = !DILocation(line: 269, column: 7, scope: !253)
!255 = !DILocation(line: 271, column: 7, scope: !253)
!256 = !DILocation(line: 271, column: 13, scope: !253)
!257 = !DILocation(line: 271, column: 28, scope: !253)
!258 = !DILocation(line: 272, column: 4, scope: !253)
!259 = !DILocation(line: 274, column: 11, scope: !238)
!260 = !DILocation(line: 274, column: 4, scope: !238)
!261 = distinct !DISubprogram(name: "Atomic_ReadIfEqualWritePtr", scope: !97, file: !97, line: 3829, type: !262, isLocal: true, isDefinition: true, scopeLine: 3829, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !90)
!262 = !DISubroutineType(types: !263)
!263 = !{!16, !171, !264, !264}
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!266 = !DILocalVariable(name: "var", arg: 1, scope: !261, file: !97, line: 3829, type: !171)
!267 = !DILocation(line: 3829, column: 757, scope: !261)
!268 = !DILocalVariable(name: "oldVal", arg: 2, scope: !261, file: !97, line: 3829, type: !264)
!269 = !DILocation(line: 3829, column: 775, scope: !261)
!270 = !DILocalVariable(name: "newVal", arg: 3, scope: !261, file: !97, line: 3829, type: !264)
!271 = !DILocation(line: 3829, column: 796, scope: !261)
!272 = !DILocation(line: 3829, column: 858, scope: !261)
!273 = !DILocation(line: 3829, column: 882, scope: !261)
!274 = !DILocation(line: 3829, column: 871, scope: !261)
!275 = !DILocation(line: 3829, column: 909, scope: !261)
!276 = !DILocation(line: 3829, column: 898, scope: !261)
!277 = !DILocation(line: 3829, column: 832, scope: !261)
!278 = !DILocation(line: 3829, column: 813, scope: !261)
!279 = !DILocation(line: 3829, column: 806, scope: !261)
!280 = distinct !DISubprogram(name: "MXRecLockDestroy", scope: !4, file: !4, line: 279, type: !281, isLocal: true, isDefinition: true, scopeLine: 280, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !90)
!281 = !DISubroutineType(types: !282)
!282 = !{null, !133}
!283 = !DILocalVariable(name: "lock", arg: 1, scope: !280, file: !4, line: 279, type: !133)
!284 = !DILocation(line: 279, column: 29, scope: !280)
!285 = !DILocalVariable(name: "err", scope: !280, file: !4, line: 281, type: !146)
!286 = !DILocation(line: 281, column: 8, scope: !280)
!287 = !DILocation(line: 281, column: 39, scope: !280)
!288 = !DILocation(line: 281, column: 14, scope: !280)
!289 = !DILocation(line: 286, column: 1, scope: !280)
!290 = distinct !DISubprogram(name: "MXUserGetSignature", scope: !25, file: !25, line: 226, type: !291, isLocal: false, isDefinition: true, scopeLine: 227, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !90)
!291 = !DISubroutineType(types: !292)
!292 = !{!63, !293}
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserObjectType", file: !4, line: 450, baseType: !3)
!294 = !DILocalVariable(name: "objectType", arg: 1, scope: !290, file: !25, line: 226, type: !293)
!295 = !DILocation(line: 226, column: 37, scope: !290)
!296 = !DILocalVariable(name: "signature", scope: !290, file: !25, line: 228, type: !63)
!297 = !DILocation(line: 228, column: 11, scope: !290)
!298 = !DILocation(line: 241, column: 17, scope: !290)
!299 = !DILocation(line: 241, column: 34, scope: !290)
!300 = !DILocation(line: 241, column: 51, scope: !290)
!301 = !DILocation(line: 241, column: 62, scope: !290)
!302 = !DILocation(line: 241, column: 48, scope: !290)
!303 = !DILocation(line: 241, column: 14, scope: !290)
!304 = !DILocation(line: 245, column: 11, scope: !290)
!305 = !DILocation(line: 245, column: 4, scope: !290)
!306 = !DILocalVariable(name: "syndrome", scope: !93, file: !25, line: 173, type: !63)
!307 = !DILocation(line: 173, column: 11, scope: !93)
!308 = !DILocation(line: 176, column: 15, scope: !93)
!309 = !DILocation(line: 176, column: 13, scope: !93)
!310 = !DILocation(line: 178, column: 8, scope: !311)
!311 = distinct !DILexicalBlock(scope: !93, file: !25, line: 178, column: 8)
!312 = !DILocation(line: 178, column: 17, scope: !311)
!313 = !DILocation(line: 178, column: 8, scope: !93)
!314 = !DILocation(line: 186, column: 18, scope: !315)
!315 = distinct !DILexicalBlock(scope: !311, file: !25, line: 178, column: 23)
!316 = !DILocation(line: 186, column: 28, scope: !315)
!317 = !DILocation(line: 186, column: 16, scope: !315)
!318 = !DILocation(line: 193, column: 11, scope: !319)
!319 = distinct !DILexicalBlock(scope: !315, file: !25, line: 193, column: 11)
!320 = !DILocation(line: 193, column: 20, scope: !319)
!321 = !DILocation(line: 193, column: 11, scope: !315)
!322 = !DILocation(line: 194, column: 18, scope: !323)
!323 = distinct !DILexicalBlock(scope: !319, file: !25, line: 193, column: 26)
!324 = !DILocation(line: 195, column: 7, scope: !323)
!325 = !DILocation(line: 198, column: 50, scope: !315)
!326 = !DILocation(line: 198, column: 7, scope: !315)
!327 = !DILocation(line: 200, column: 18, scope: !315)
!328 = !DILocation(line: 200, column: 16, scope: !315)
!329 = !DILocation(line: 201, column: 4, scope: !315)
!330 = !DILocation(line: 205, column: 11, scope: !93)
!331 = !DILocation(line: 205, column: 4, scope: !93)
!332 = distinct !DISubprogram(name: "MXUser_SetInPanic", scope: !25, file: !25, line: 267, type: !105, isLocal: false, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !90)
!333 = !DILocation(line: 269, column: 14, scope: !332)
!334 = !DILocation(line: 271, column: 8, scope: !335)
!335 = distinct !DILexicalBlock(scope: !332, file: !25, line: 271, column: 8)
!336 = !DILocation(line: 271, column: 28, scope: !335)
!337 = !DILocation(line: 271, column: 8, scope: !332)
!338 = !DILocation(line: 272, column: 7, scope: !339)
!339 = distinct !DILexicalBlock(scope: !335, file: !25, line: 271, column: 36)
!340 = !DILocation(line: 273, column: 4, scope: !339)
!341 = !DILocation(line: 274, column: 1, scope: !332)
!342 = !DILocalVariable(name: "header", arg: 1, scope: !55, file: !25, line: 294, type: !58)
!343 = !DILocation(line: 294, column: 34, scope: !55)
!344 = !DILocalVariable(name: "fmt", arg: 2, scope: !55, file: !25, line: 295, type: !88)
!345 = !DILocation(line: 295, column: 32, scope: !55)
!346 = !DILocalVariable(name: "msg", scope: !55, file: !25, line: 298, type: !53)
!347 = !DILocation(line: 298, column: 10, scope: !55)
!348 = !DILocalVariable(name: "ap", scope: !55, file: !25, line: 299, type: !349)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !350, line: 98, baseType: !351)
!350 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/open-vm-tools/line477")
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !350, line: 40, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 299, baseType: !353)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 192, align: 64, elements: !360)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 299, size: 192, align: 64, elements: !355)
!355 = !{!356, !357, !358, !359}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !354, file: !1, line: 299, baseType: !65, size: 32, align: 32)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !354, file: !1, line: 299, baseType: !65, size: 32, align: 32, offset: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !354, file: !1, line: 299, baseType: !16, size: 64, align: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !354, file: !1, line: 299, baseType: !16, size: 64, align: 64, offset: 128)
!360 = !{!361}
!361 = !DISubrange(count: 1)
!362 = !DILocation(line: 299, column: 12, scope: !55)
!363 = !DILocation(line: 304, column: 8, scope: !364)
!364 = distinct !DILexicalBlock(scope: !55, file: !25, line: 304, column: 8)
!365 = !DILocation(line: 304, column: 22, scope: !364)
!366 = !DILocation(line: 304, column: 8, scope: !55)
!367 = !DILocation(line: 310, column: 7, scope: !368)
!368 = distinct !DILexicalBlock(scope: !364, file: !25, line: 304, column: 27)
!369 = !DILocation(line: 311, column: 4, scope: !368)
!370 = !DILocation(line: 313, column: 6, scope: !55)
!371 = !DILocation(line: 313, column: 14, scope: !55)
!372 = !DILocation(line: 313, column: 24, scope: !55)
!373 = !DILocation(line: 313, column: 4, scope: !55)
!374 = !DILocation(line: 315, column: 3, scope: !55)
!375 = !DILocation(line: 316, column: 33, scope: !55)
!376 = !DILocation(line: 316, column: 38, scope: !55)
!377 = !DILocation(line: 316, column: 10, scope: !55)
!378 = !DILocation(line: 316, column: 8, scope: !55)
!379 = !DILocation(line: 317, column: 3, scope: !55)
!380 = !DILocation(line: 319, column: 16, scope: !55)
!381 = !DILocation(line: 319, column: 4, scope: !55)
!382 = !DILocation(line: 320, column: 1, scope: !55)
!383 = distinct !DISubprogram(name: "MXUser_InPanic", scope: !25, file: !25, line: 341, type: !109, isLocal: false, isDefinition: true, scopeLine: 342, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !90)
!384 = !DILocation(line: 343, column: 11, scope: !383)
!385 = !DILocation(line: 343, column: 21, scope: !383)
!386 = !DILocation(line: 343, column: 25, scope: !387)
!387 = !DILexicalBlockFile(scope: !383, file: !25, discriminator: 1)
!388 = !DILocation(line: 343, column: 42, scope: !387)
!389 = !DILocation(line: 343, column: 49, scope: !387)
!390 = !DILocation(line: 343, column: 52, scope: !391)
!391 = !DILexicalBlockFile(scope: !383, file: !25, discriminator: 2)
!392 = !DILocation(line: 343, column: 49, scope: !391)
!393 = !DILocation(line: 343, column: 21, scope: !394)
!394 = !DILexicalBlockFile(scope: !383, file: !25, discriminator: 3)
!395 = !DILocation(line: 343, column: 21, scope: !396)
!396 = !DILexicalBlockFile(scope: !383, file: !25, discriminator: 4)
!397 = !DILocation(line: 343, column: 11, scope: !396)
!398 = !DILocation(line: 343, column: 4, scope: !396)
!399 = distinct !DISubprogram(name: "MXUserInstallMxHooks", scope: !25, file: !25, line: 366, type: !400, isLocal: false, isDefinition: true, scopeLine: 375, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !90)
!400 = !DISubroutineType(types: !401)
!401 = !{null, !104, !113, !32, !32, !40, !44, !50, !104, !108}
!402 = !DILocalVariable(name: "theLockListFunc", arg: 1, scope: !399, file: !25, line: 366, type: !104)
!403 = !DILocation(line: 366, column: 29, scope: !399)
!404 = !DILocalVariable(name: "theRankFunc", arg: 2, scope: !399, file: !25, line: 367, type: !113)
!405 = !DILocation(line: 367, column: 32, scope: !399)
!406 = !DILocalVariable(name: "theLockFunc", arg: 3, scope: !399, file: !25, line: 368, type: !32)
!407 = !DILocation(line: 368, column: 29, scope: !399)
!408 = !DILocalVariable(name: "theUnlockFunc", arg: 4, scope: !399, file: !25, line: 369, type: !32)
!409 = !DILocation(line: 369, column: 29, scope: !399)
!410 = !DILocalVariable(name: "theTryLockFunc", arg: 5, scope: !399, file: !25, line: 370, type: !40)
!411 = !DILocation(line: 370, column: 29, scope: !399)
!412 = !DILocalVariable(name: "theIsLockedFunc", arg: 6, scope: !399, file: !25, line: 371, type: !44)
!413 = !DILocation(line: 371, column: 29, scope: !399)
!414 = !DILocalVariable(name: "theNameFunc", arg: 7, scope: !399, file: !25, line: 372, type: !50)
!415 = !DILocation(line: 372, column: 30, scope: !399)
!416 = !DILocalVariable(name: "theSetInPanicFunc", arg: 8, scope: !399, file: !25, line: 373, type: !104)
!417 = !DILocation(line: 373, column: 29, scope: !399)
!418 = !DILocalVariable(name: "theInPanicFunc", arg: 9, scope: !399, file: !25, line: 374, type: !108)
!419 = !DILocation(line: 374, column: 29, scope: !399)
!420 = !DILocation(line: 382, column: 9, scope: !421)
!421 = distinct !DILexicalBlock(scope: !399, file: !25, line: 382, column: 8)
!422 = !DILocation(line: 382, column: 28, scope: !421)
!423 = !DILocation(line: 382, column: 36, scope: !421)
!424 = !DILocation(line: 383, column: 9, scope: !421)
!425 = !DILocation(line: 383, column: 27, scope: !421)
!426 = !DILocation(line: 383, column: 35, scope: !421)
!427 = !DILocation(line: 384, column: 9, scope: !421)
!428 = !DILocation(line: 384, column: 26, scope: !421)
!429 = !DILocation(line: 384, column: 34, scope: !421)
!430 = !DILocation(line: 385, column: 9, scope: !421)
!431 = !DILocation(line: 385, column: 28, scope: !421)
!432 = !DILocation(line: 385, column: 36, scope: !421)
!433 = !DILocation(line: 386, column: 9, scope: !421)
!434 = !DILocation(line: 386, column: 29, scope: !421)
!435 = !DILocation(line: 386, column: 37, scope: !421)
!436 = !DILocation(line: 387, column: 9, scope: !421)
!437 = !DILocation(line: 387, column: 41, scope: !421)
!438 = !DILocation(line: 387, column: 49, scope: !421)
!439 = !DILocation(line: 388, column: 9, scope: !421)
!440 = !DILocation(line: 388, column: 26, scope: !421)
!441 = !DILocation(line: 388, column: 34, scope: !421)
!442 = !DILocation(line: 389, column: 9, scope: !421)
!443 = !DILocation(line: 389, column: 29, scope: !421)
!444 = !DILocation(line: 389, column: 37, scope: !421)
!445 = !DILocation(line: 390, column: 9, scope: !421)
!446 = !DILocation(line: 390, column: 26, scope: !421)
!447 = !DILocation(line: 382, column: 8, scope: !448)
!448 = !DILexicalBlockFile(scope: !399, file: !25, discriminator: 1)
!449 = !DILocation(line: 392, column: 28, scope: !450)
!450 = distinct !DILexicalBlock(scope: !421, file: !25, line: 391, column: 10)
!451 = !DILocation(line: 392, column: 26, scope: !450)
!452 = !DILocation(line: 393, column: 27, scope: !450)
!453 = !DILocation(line: 393, column: 25, scope: !450)
!454 = !DILocation(line: 394, column: 26, scope: !450)
!455 = !DILocation(line: 394, column: 24, scope: !450)
!456 = !DILocation(line: 395, column: 28, scope: !450)
!457 = !DILocation(line: 395, column: 26, scope: !450)
!458 = !DILocation(line: 396, column: 29, scope: !450)
!459 = !DILocation(line: 396, column: 27, scope: !450)
!460 = !DILocation(line: 397, column: 41, scope: !450)
!461 = !DILocation(line: 397, column: 39, scope: !450)
!462 = !DILocation(line: 398, column: 26, scope: !450)
!463 = !DILocation(line: 398, column: 24, scope: !450)
!464 = !DILocation(line: 399, column: 29, scope: !450)
!465 = !DILocation(line: 399, column: 27, scope: !450)
!466 = !DILocation(line: 400, column: 26, scope: !450)
!467 = !DILocation(line: 400, column: 24, scope: !450)
!468 = !DILocation(line: 401, column: 4, scope: !450)
!469 = !DILocation(line: 413, column: 1, scope: !399)
!470 = distinct !DISubprogram(name: "Atomic_Read64", scope: !97, file: !97, line: 2143, type: !471, isLocal: true, isDefinition: true, scopeLine: 2144, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !90)
!471 = !DISubroutineType(types: !472)
!472 = !{!20, !473}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64, align: 64)
!474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!475 = !DILocalVariable(name: "var", arg: 1, scope: !470, file: !97, line: 2143, type: !473)
!476 = !DILocation(line: 2143, column: 36, scope: !470)
!477 = !DILocalVariable(name: "value", scope: !470, file: !97, line: 2146, type: !20)
!478 = !DILocation(line: 2146, column: 11, scope: !470)
!479 = !DILocation(line: 2160, column: 14, scope: !470)
!480 = !DILocation(line: 2160, column: 19, scope: !470)
!481 = !DILocation(line: 2157, column: 4, scope: !470)
!482 = !{i32 134624}
!483 = !DILocation(line: 2213, column: 11, scope: !470)
!484 = !DILocation(line: 2213, column: 4, scope: !470)
!485 = distinct !DISubprogram(name: "MXRecLockCreateInternal", scope: !4, file: !4, line: 174, type: !486, isLocal: true, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !90)
!486 = !DISubroutineType(types: !487)
!487 = !{!146, !133}
!488 = !DILocalVariable(name: "lock", arg: 1, scope: !485, file: !4, line: 174, type: !133)
!489 = !DILocation(line: 174, column: 36, scope: !485)
!490 = !DILocation(line: 176, column: 31, scope: !485)
!491 = !DILocation(line: 176, column: 37, scope: !485)
!492 = !DILocation(line: 176, column: 11, scope: !485)
!493 = !DILocation(line: 176, column: 4, scope: !485)
!494 = distinct !DISubprogram(name: "MXRecLockSetNoOwner", scope: !4, file: !4, line: 227, type: !281, isLocal: true, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !90)
!495 = !DILocalVariable(name: "lock", arg: 1, scope: !494, file: !4, line: 227, type: !133)
!496 = !DILocation(line: 227, column: 32, scope: !494)
!497 = !DILocation(line: 230, column: 12, scope: !494)
!498 = !DILocation(line: 230, column: 18, scope: !494)
!499 = !DILocation(line: 230, column: 4, scope: !494)
!500 = !DILocation(line: 231, column: 1, scope: !494)
!501 = distinct !DISubprogram(name: "Atomic_ReadIfEqualWrite64", scope: !97, file: !97, line: 1190, type: !502, isLocal: true, isDefinition: true, scopeLine: 1193, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !90)
!502 = !DISubroutineType(types: !503)
!503 = !{!20, !504, !20, !20}
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64, align: 64)
!505 = !DILocalVariable(name: "var", arg: 1, scope: !501, file: !97, line: 1190, type: !504)
!506 = !DILocation(line: 1190, column: 42, scope: !501)
!507 = !DILocalVariable(name: "oldVal", arg: 2, scope: !501, file: !97, line: 1191, type: !20)
!508 = !DILocation(line: 1191, column: 34, scope: !501)
!509 = !DILocalVariable(name: "newVal", arg: 3, scope: !501, file: !97, line: 1192, type: !20)
!510 = !DILocation(line: 1192, column: 34, scope: !501)
!511 = !DILocalVariable(name: "val", scope: !501, file: !97, line: 1240, type: !20)
!512 = !DILocation(line: 1240, column: 11, scope: !501)
!513 = !DILocation(line: 1246, column: 15, scope: !501)
!514 = !DILocation(line: 1246, column: 20, scope: !501)
!515 = !DILocation(line: 1247, column: 14, scope: !501)
!516 = !DILocation(line: 1248, column: 14, scope: !501)
!517 = !DILocation(line: 1243, column: 4, scope: !501)
!518 = !{i32 127066}
!519 = !DILocation(line: 1251, column: 11, scope: !501)
!520 = !DILocation(line: 1251, column: 4, scope: !501)
!521 = distinct !DISubprogram(name: "MXRecLockDestroyInternal", scope: !4, file: !4, line: 181, type: !486, isLocal: true, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !90)
!522 = !DILocalVariable(name: "lock", arg: 1, scope: !521, file: !4, line: 181, type: !133)
!523 = !DILocation(line: 181, column: 37, scope: !521)
!524 = !DILocalVariable(name: "err", scope: !521, file: !4, line: 183, type: !146)
!525 = !DILocation(line: 183, column: 8, scope: !521)
!526 = !DILocation(line: 183, column: 37, scope: !521)
!527 = !DILocation(line: 183, column: 43, scope: !521)
!528 = !DILocation(line: 183, column: 14, scope: !521)
!529 = !DILocation(line: 188, column: 8, scope: !521)
!530 = !DILocalVariable(name: "version", scope: !531, file: !4, line: 200, type: !88)
!531 = distinct !DILexicalBlock(scope: !532, file: !4, line: 188, column: 37)
!532 = distinct !DILexicalBlock(scope: !521, file: !4, line: 188, column: 8)
!533 = !DILocation(line: 200, column: 19, scope: !531)
!534 = !DILocation(line: 200, column: 29, scope: !531)
!535 = !DILocation(line: 202, column: 18, scope: !536)
!536 = distinct !DILexicalBlock(scope: !531, file: !4, line: 202, column: 11)
!537 = !DILocation(line: 202, column: 11, scope: !536)
!538 = !DILocation(line: 202, column: 35, scope: !536)
!539 = !DILocation(line: 202, column: 11, scope: !531)
!540 = !DILocation(line: 203, column: 14, scope: !541)
!541 = distinct !DILexicalBlock(scope: !536, file: !4, line: 202, column: 41)
!542 = !DILocation(line: 204, column: 7, scope: !541)
!543 = !DILocation(line: 205, column: 4, scope: !531)
!544 = !DILocation(line: 208, column: 11, scope: !521)
!545 = !DILocation(line: 208, column: 4, scope: !521)
!546 = distinct !DISubprogram(name: "Atomic_Read32", scope: !97, file: !97, line: 911, type: !547, isLocal: true, isDefinition: true, scopeLine: 912, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !90)
!547 = !DISubroutineType(types: !548)
!548 = !{!63, !549}
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64, align: 64)
!550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!551 = !DILocalVariable(name: "var", arg: 1, scope: !546, file: !97, line: 911, type: !549)
!552 = !DILocation(line: 911, column: 36, scope: !546)
!553 = !DILocalVariable(name: "value", scope: !546, file: !97, line: 913, type: !63)
!554 = !DILocation(line: 913, column: 11, scope: !546)
!555 = !DILocation(line: 938, column: 14, scope: !546)
!556 = !DILocation(line: 938, column: 19, scope: !546)
!557 = !DILocation(line: 935, column: 4, scope: !546)
!558 = !{i32 124756}
!559 = !DILocation(line: 953, column: 11, scope: !546)
!560 = !DILocation(line: 953, column: 4, scope: !546)
!561 = distinct !DISubprogram(name: "Atomic_ReadIfEqualWrite32", scope: !97, file: !97, line: 1119, type: !562, isLocal: true, isDefinition: true, scopeLine: 1122, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !90)
!562 = !DISubroutineType(types: !563)
!563 = !{!63, !564, !63, !63}
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64)
!565 = !DILocalVariable(name: "var", arg: 1, scope: !561, file: !97, line: 1119, type: !564)
!566 = !DILocation(line: 1119, column: 42, scope: !561)
!567 = !DILocalVariable(name: "oldVal", arg: 2, scope: !561, file: !97, line: 1120, type: !63)
!568 = !DILocation(line: 1120, column: 34, scope: !561)
!569 = !DILocalVariable(name: "newVal", arg: 3, scope: !561, file: !97, line: 1121, type: !63)
!570 = !DILocation(line: 1121, column: 34, scope: !561)
!571 = !DILocalVariable(name: "val", scope: !561, file: !97, line: 1148, type: !63)
!572 = !DILocation(line: 1148, column: 11, scope: !561)
!573 = !DILocation(line: 1154, column: 15, scope: !561)
!574 = !DILocation(line: 1154, column: 20, scope: !561)
!575 = !DILocation(line: 1155, column: 14, scope: !561)
!576 = !DILocation(line: 1156, column: 14, scope: !561)
!577 = !DILocation(line: 1151, column: 4, scope: !561)
!578 = !{i32 126369}
!579 = !DILocation(line: 1159, column: 11, scope: !561)
!580 = !DILocation(line: 1159, column: 4, scope: !561)
