; ModuleID = './fileIOPosix.o.i'
source_filename = "./fileIOPosix.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FilePosixOptions = type { i8, i8, i8, i32, i32, i32, i64 }
%struct.FileIODescriptor = type { i32, i32, i8*, %struct.FileLockToken* }
%struct.FileLockToken = type opaque
%struct.iovec = type { i8*, i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.statfs = type { i64, i64, i64, i64, i64, i64, i64, %struct.__fsid_t, i64, i64, i64, [4 x i64] }
%struct.__fsid_t = type { [2 x i32] }

@filePosixOptions = internal global %struct.FilePosixOptions zeroinitializer, align 8
@.str = private unnamed_addr constant [26 x i8] c"filePosix.coalesce.enable\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"filePosix.coalesce.aligned\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"filePosix.coalesce.count\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"filePosix.coalesce.size\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"aiomgr.numThreads\00", align 1
@FileIOCreateRetry._doOnceDone = internal global i8 0, align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"FILE: %s reverting to buffered IO on %s.\0A\00", align 1
@__FUNCTION__.FileIOCreateRetry = private unnamed_addr constant [18 x i8] c"FileIOCreateRetry\00", align 1
@FileIO_OpenActions = internal constant [5 x i32] [i32 0, i32 512, i32 64, i32 192, i32 576], align 16
@.str.6 = private unnamed_addr constant [27 x i8] c"FILE:open error on %s: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"FILE:unlink error on %s: %s\0A\00", align 1
@FileIO_SeekOrigins = internal constant [3 x i32] [i32 0, i32 1, i32 2], align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"VERIFY %s:%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"fileIOPosix.c\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.13 = private unnamed_addr constant [105 x i8] c"/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/memaligned.h\00", align 1
@FileIOPwritevCoalesced._doOnceDone = internal global i8 0, align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"FILE: %s wrote %zu out of %zu bytes.\0A\00", align 1
@__FUNCTION__.FileIOPwritevCoalesced = private unnamed_addr constant [23 x i8] c"FileIOPwritevCoalesced\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define void @FileIO_OptionalSafeInitialize() #0 !dbg !336 {
  %1 = load i8, i8* getelementptr inbounds (%struct.FilePosixOptions, %struct.FilePosixOptions* @filePosixOptions, i32 0, i32 0), align 8, !dbg !339
  %2 = icmp ne i8 %1, 0, !dbg !341
  br i1 %2, label %14, label %3, !dbg !342

; <label>:3:                                      ; preds = %0
  %4 = call signext i8 (i8, i8*, ...) @Config_GetBool(i8 signext 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0)), !dbg !343
  store i8 %4, i8* getelementptr inbounds (%struct.FilePosixOptions, %struct.FilePosixOptions* @filePosixOptions, i32 0, i32 2), align 2, !dbg !345
  %5 = call signext i8 (i8, i8*, ...) @Config_GetBool(i8 signext 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0)), !dbg !346
  store i8 %5, i8* getelementptr inbounds (%struct.FilePosixOptions, %struct.FilePosixOptions* @filePosixOptions, i32 0, i32 1), align 1, !dbg !347
  %6 = call i32 (i32, i8*, ...) @Config_GetLong(i32 5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0)), !dbg !348
  store i32 %6, i32* getelementptr inbounds (%struct.FilePosixOptions, %struct.FilePosixOptions* @filePosixOptions, i32 0, i32 3), align 4, !dbg !349
  %7 = call i32 (i32, i8*, ...) @Config_GetLong(i32 16384, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0)), !dbg !350
  store i32 %7, i32* getelementptr inbounds (%struct.FilePosixOptions, %struct.FilePosixOptions* @filePosixOptions, i32 0, i32 4), align 8, !dbg !351
  %8 = call i32 (i32, i8*, ...) @Config_GetLong(i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0)), !dbg !352
  store i32 %8, i32* getelementptr inbounds (%struct.FilePosixOptions, %struct.FilePosixOptions* @filePosixOptions, i32 0, i32 5), align 4, !dbg !353
  %9 = call i64 @sysconf(i32 60) #8, !dbg !354
  store i64 %9, i64* getelementptr inbounds (%struct.FilePosixOptions, %struct.FilePosixOptions* @filePosixOptions, i32 0, i32 6), align 8, !dbg !355
  %10 = load i64, i64* getelementptr inbounds (%struct.FilePosixOptions, %struct.FilePosixOptions* @filePosixOptions, i32 0, i32 6), align 8, !dbg !356
  %11 = icmp slt i64 %10, 0, !dbg !358
  br i1 %11, label %12, label %13, !dbg !359

; <label>:12:                                     ; preds = %3
  store i64 2147483647, i64* getelementptr inbounds (%struct.FilePosixOptions, %struct.FilePosixOptions* @filePosixOptions, i32 0, i32 6), align 8, !dbg !360
  br label %13, !dbg !362

; <label>:13:                                     ; preds = %12, %3
  store i8 1, i8* getelementptr inbounds (%struct.FilePosixOptions, %struct.FilePosixOptions* @filePosixOptions, i32 0, i32 0), align 8, !dbg !363
  br label %14, !dbg !364

; <label>:14:                                     ; preds = %13, %0
  ret void, !dbg !365
}

declare signext i8 @Config_GetBool(i8 signext, i8*, ...) #1

declare i32 @Config_GetLong(i32, i8*, ...) #1

; Function Attrs: nounwind
declare i64 @sysconf(i32) #2

; Function Attrs: nounwind uwtable
define void @FileIO_Invalidate(%struct.FileIODescriptor*) #3 !dbg !366 {
  %2 = alloca %struct.FileIODescriptor*, align 8
  store %struct.FileIODescriptor* %0, %struct.FileIODescriptor** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor** %2, metadata !369, metadata !370), !dbg !371
  %3 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %2, align 8, !dbg !372
  %4 = bitcast %struct.FileIODescriptor* %3 to i8*, !dbg !373
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 24, i32 8, i1 false), !dbg !373
  %5 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %2, align 8, !dbg !374
  %6 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %5, i32 0, i32 0, !dbg !375
  store i32 -1, i32* %6, align 8, !dbg !376
  ret void, !dbg !377
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define signext i8 @FileIO_IsValid(%struct.FileIODescriptor*) #3 !dbg !378 {
  %2 = alloca %struct.FileIODescriptor*, align 8
  store %struct.FileIODescriptor* %0, %struct.FileIODescriptor** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor** %2, metadata !383, metadata !370), !dbg !384
  %3 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %2, align 8, !dbg !385
  %4 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %3, i32 0, i32 0, !dbg !386
  %5 = load i32, i32* %4, align 8, !dbg !386
  %6 = icmp ne i32 %5, -1, !dbg !387
  %7 = zext i1 %6 to i32, !dbg !387
  %8 = trunc i32 %7 to i8, !dbg !385
  ret i8 %8, !dbg !388
}

; Function Attrs: nounwind uwtable
define void @FileIO_CreateFDPosix(%struct.FileIODescriptor* noalias sret, i32, i32) #3 !dbg !389 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.FileIODescriptor, align 8
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !392, metadata !370), !dbg !393
  store i32 %2, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !394, metadata !370), !dbg !395
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor* %6, metadata !396, metadata !370), !dbg !397
  call void @FileIO_Invalidate(%struct.FileIODescriptor* %6), !dbg !398
  %7 = load i32, i32* %5, align 4, !dbg !399
  %8 = and i32 %7, 3, !dbg !400
  switch i32 %8, label %17 [
    i32 2, label %9
    i32 1, label %13
    i32 0, label %18
  ], !dbg !401

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %6, i32 0, i32 1, !dbg !402
  %11 = load i32, i32* %10, align 4, !dbg !404
  %12 = or i32 %11, 3, !dbg !404
  store i32 %12, i32* %10, align 4, !dbg !404
  br label %22, !dbg !405

; <label>:13:                                     ; preds = %3
  %14 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %6, i32 0, i32 1, !dbg !406
  %15 = load i32, i32* %14, align 4, !dbg !407
  %16 = or i32 %15, 2, !dbg !407
  store i32 %16, i32* %14, align 4, !dbg !407
  br label %22, !dbg !408

; <label>:17:                                     ; preds = %3
  br label %18, !dbg !409

; <label>:18:                                     ; preds = %3, %17
  %19 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %6, i32 0, i32 1, !dbg !410
  %20 = load i32, i32* %19, align 4, !dbg !411
  %21 = or i32 %20, 1, !dbg !411
  store i32 %21, i32* %19, align 4, !dbg !411
  br label %22, !dbg !412

; <label>:22:                                     ; preds = %18, %13, %9
  %23 = load i32, i32* %5, align 4, !dbg !413
  %24 = and i32 %23, 1052672, !dbg !415
  %25 = icmp ne i32 %24, 0, !dbg !415
  br i1 %25, label %26, label %30, !dbg !416

; <label>:26:                                     ; preds = %22
  %27 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %6, i32 0, i32 1, !dbg !417
  %28 = load i32, i32* %27, align 4, !dbg !419
  %29 = or i32 %28, 4, !dbg !419
  store i32 %29, i32* %27, align 4, !dbg !419
  br label %30, !dbg !420

; <label>:30:                                     ; preds = %26, %22
  %31 = load i32, i32* %5, align 4, !dbg !421
  %32 = and i32 %31, 1024, !dbg !423
  %33 = icmp ne i32 %32, 0, !dbg !423
  br i1 %33, label %34, label %38, !dbg !424

; <label>:34:                                     ; preds = %30
  %35 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %6, i32 0, i32 1, !dbg !425
  %36 = load i32, i32* %35, align 4, !dbg !427
  %37 = or i32 %36, 131072, !dbg !427
  store i32 %37, i32* %35, align 4, !dbg !427
  br label %38, !dbg !428

; <label>:38:                                     ; preds = %34, %30
  %39 = load i32, i32* %5, align 4, !dbg !429
  %40 = and i32 %39, 524288, !dbg !431
  %41 = icmp ne i32 %40, 0, !dbg !431
  br i1 %41, label %42, label %46, !dbg !432

; <label>:42:                                     ; preds = %38
  %43 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %6, i32 0, i32 1, !dbg !433
  %44 = load i32, i32* %43, align 4, !dbg !435
  %45 = or i32 %44, 8388608, !dbg !435
  store i32 %45, i32* %43, align 4, !dbg !435
  br label %46, !dbg !436

; <label>:46:                                     ; preds = %42, %38
  %47 = load i32, i32* %4, align 4, !dbg !437
  %48 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %6, i32 0, i32 0, !dbg !438
  store i32 %47, i32* %48, align 8, !dbg !439
  %49 = bitcast %struct.FileIODescriptor* %0 to i8*, !dbg !440
  %50 = bitcast %struct.FileIODescriptor* %6 to i8*, !dbg !440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 24, i32 8, i1 false), !dbg !440
  ret void, !dbg !441
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define i32 @FileIOCreateRetry(%struct.FileIODescriptor*, i8*, i32, i32, i32, i32) #3 !dbg !270 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.FileIODescriptor*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.FileIODescriptor* %0, %struct.FileIODescriptor** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor** %8, metadata !442, metadata !370), !dbg !443
  store i8* %1, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !444, metadata !370), !dbg !445
  store i32 %2, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !446, metadata !370), !dbg !447
  store i32 %3, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !448, metadata !370), !dbg !449
  store i32 %4, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !450, metadata !370), !dbg !451
  store i32 %5, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !452, metadata !370), !dbg !453
  call void @llvm.dbg.declare(metadata i32* %14, metadata !454, metadata !370), !dbg !455
  store i32 -1, i32* %14, align 4, !dbg !455
  call void @llvm.dbg.declare(metadata i32* %15, metadata !456, metadata !370), !dbg !457
  store i32 0, i32* %15, align 4, !dbg !457
  call void @llvm.dbg.declare(metadata i32* %16, metadata !458, metadata !370), !dbg !459
  call void @llvm.dbg.declare(metadata i32* %17, metadata !460, metadata !370), !dbg !461
  %19 = load i8*, i8** %9, align 8, !dbg !462
  %20 = icmp eq i8* %19, null, !dbg !464
  br i1 %20, label %21, label %23, !dbg !465

; <label>:21:                                     ; preds = %6
  %22 = call i32* @__errno_location() #4, !dbg !466
  store i32 14, i32* %22, align 4, !dbg !468
  store i32 2, i32* %7, align 4, !dbg !469
  br label %256, !dbg !469

; <label>:23:                                     ; preds = %6
  br label %24, !dbg !470, !llvm.loop !471

; <label>:24:                                     ; preds = %23
  br label %25, !dbg !472

; <label>:25:                                     ; preds = %24
  call void @FileIOResolveLockBits(i32* %10), !dbg !475
  %26 = call signext i8 @HostType_OSIsVMK(), !dbg !476
  %27 = icmp ne i8 %26, 0, !dbg !476
  br i1 %27, label %28, label %60, !dbg !478

; <label>:28:                                     ; preds = %25
  %29 = load i32, i32* %10, align 4, !dbg !479
  %30 = and i32 %29, 32768, !dbg !482
  %31 = icmp ne i32 %30, 0, !dbg !483
  br i1 %31, label %32, label %35, !dbg !484

; <label>:32:                                     ; preds = %28
  %33 = load i32, i32* %15, align 4, !dbg !485
  %34 = or i32 %33, 2097152, !dbg !485
  store i32 %34, i32* %15, align 4, !dbg !485
  br label %59, !dbg !487

; <label>:35:                                     ; preds = %28
  %36 = load i32, i32* %10, align 4, !dbg !488
  %37 = and i32 %36, 16384, !dbg !491
  %38 = icmp ne i32 %37, 0, !dbg !492
  br i1 %38, label %39, label %42, !dbg !493

; <label>:39:                                     ; preds = %35
  %40 = load i32, i32* %15, align 4, !dbg !494
  %41 = or i32 %40, 134217728, !dbg !494
  store i32 %41, i32* %15, align 4, !dbg !494
  br label %58, !dbg !496

; <label>:42:                                     ; preds = %35
  %43 = load i32, i32* %10, align 4, !dbg !497
  %44 = and i32 %43, 2097152, !dbg !500
  %45 = icmp ne i32 %44, 0, !dbg !501
  br i1 %45, label %46, label %49, !dbg !502

; <label>:46:                                     ; preds = %42
  %47 = load i32, i32* %15, align 4, !dbg !503
  %48 = or i32 %47, 268435456, !dbg !503
  store i32 %48, i32* %15, align 4, !dbg !503
  br label %57, !dbg !505

; <label>:49:                                     ; preds = %42
  %50 = load i32, i32* %10, align 4, !dbg !506
  %51 = and i32 %50, 4194304, !dbg !509
  %52 = icmp ne i32 %51, 0, !dbg !510
  br i1 %52, label %53, label %56, !dbg !511

; <label>:53:                                     ; preds = %49
  %54 = load i32, i32* %15, align 4, !dbg !512
  %55 = or i32 %54, 4194304, !dbg !512
  store i32 %55, i32* %15, align 4, !dbg !512
  br label %56, !dbg !514

; <label>:56:                                     ; preds = %53, %49
  br label %57

; <label>:57:                                     ; preds = %56, %46
  br label %58

; <label>:58:                                     ; preds = %57, %39
  br label %59

; <label>:59:                                     ; preds = %58, %32
  br label %60, !dbg !515

; <label>:60:                                     ; preds = %59, %25
  %61 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %8, align 8, !dbg !516
  %62 = load i8*, i8** %9, align 8, !dbg !517
  call void @FileIO_Init(%struct.FileIODescriptor* %61, i8* %62), !dbg !518
  %63 = load i32, i32* %10, align 4, !dbg !519
  %64 = and i32 %63, 1048576, !dbg !521
  %65 = icmp ne i32 %64, 0, !dbg !522
  br i1 %65, label %66, label %76, !dbg !523

; <label>:66:                                     ; preds = %60
  %67 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %8, align 8, !dbg !524
  %68 = load i32, i32* %10, align 4, !dbg !526
  %69 = call i32 @FileIO_Lock(%struct.FileIODescriptor* %67, i32 %68), !dbg !527
  store i32 %69, i32* %17, align 4, !dbg !528
  %70 = load i32, i32* %17, align 4, !dbg !529
  %71 = call signext i8 @FileIO_IsSuccess(i32 %70), !dbg !531
  %72 = icmp ne i8 %71, 0, !dbg !531
  br i1 %72, label %75, label %73, !dbg !532

; <label>:73:                                     ; preds = %66
  %74 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !533
  br label %240, !dbg !535

; <label>:75:                                     ; preds = %66
  br label %76, !dbg !536

; <label>:76:                                     ; preds = %75, %60
  %77 = load i32, i32* %10, align 4, !dbg !537
  %78 = and i32 %77, 3, !dbg !539
  %79 = icmp eq i32 %78, 3, !dbg !540
  br i1 %79, label %80, label %83, !dbg !541

; <label>:80:                                     ; preds = %76
  %81 = load i32, i32* %15, align 4, !dbg !542
  %82 = or i32 %81, 2, !dbg !542
  store i32 %82, i32* %15, align 4, !dbg !542
  br label %98, !dbg !544

; <label>:83:                                     ; preds = %76
  %84 = load i32, i32* %10, align 4, !dbg !545
  %85 = and i32 %84, 2, !dbg !548
  %86 = icmp ne i32 %85, 0, !dbg !548
  br i1 %86, label %87, label %90, !dbg !545

; <label>:87:                                     ; preds = %83
  %88 = load i32, i32* %15, align 4, !dbg !549
  %89 = or i32 %88, 1, !dbg !549
  store i32 %89, i32* %15, align 4, !dbg !549
  br label %97, !dbg !551

; <label>:90:                                     ; preds = %83
  %91 = load i32, i32* %10, align 4, !dbg !552
  %92 = and i32 %91, 1, !dbg !555
  %93 = icmp ne i32 %92, 0, !dbg !555
  br i1 %93, label %94, label %96, !dbg !552

; <label>:94:                                     ; preds = %90
  %95 = load i32, i32* %15, align 4, !dbg !556
  store i32 %95, i32* %15, align 4, !dbg !556
  br label %96, !dbg !558

; <label>:96:                                     ; preds = %94, %90
  br label %97

; <label>:97:                                     ; preds = %96, %87
  br label %98

; <label>:98:                                     ; preds = %97, %80
  %99 = load i32, i32* %10, align 4, !dbg !559
  %100 = and i32 %99, 512, !dbg !561
  %101 = icmp ne i32 %100, 0, !dbg !561
  br i1 %101, label %102, label %109, !dbg !562

; <label>:102:                                    ; preds = %98
  %103 = load i32, i32* %10, align 4, !dbg !563
  %104 = and i32 %103, 1024, !dbg !564
  %105 = icmp ne i32 %104, 0, !dbg !564
  br i1 %105, label %106, label %109, !dbg !565

; <label>:106:                                    ; preds = %102
  %107 = load i32, i32* %15, align 4, !dbg !567
  %108 = or i32 %107, 128, !dbg !567
  store i32 %108, i32* %15, align 4, !dbg !567
  br label %109, !dbg !569

; <label>:109:                                    ; preds = %106, %102, %98
  %110 = load i32, i32* %10, align 4, !dbg !570
  %111 = and i32 %110, 16, !dbg !572
  %112 = icmp ne i32 %111, 0, !dbg !572
  br i1 %112, label %113, label %127, !dbg !573

; <label>:113:                                    ; preds = %109
  %114 = load i32, i32* %10, align 4, !dbg !574
  %115 = and i32 %114, -17, !dbg !574
  store i32 %115, i32* %10, align 4, !dbg !574
  br label %116, !dbg !576, !llvm.loop !577

; <label>:116:                                    ; preds = %113
  %117 = load i8, i8* @FileIOCreateRetry._doOnceDone, align 1, !dbg !578
  %118 = icmp ne i8 %117, 0, !dbg !582
  %119 = xor i1 %118, true, !dbg !582
  %120 = zext i1 %119 to i32, !dbg !582
  %121 = sext i32 %120 to i64, !dbg !583
  %122 = icmp ne i64 %121, 0, !dbg !584
  br i1 %122, label %123, label %125, !dbg !584

; <label>:123:                                    ; preds = %116
  store i8 1, i8* @FileIOCreateRetry._doOnceDone, align 1, !dbg !585
  %124 = load i8*, i8** %9, align 8, !dbg !588
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.FileIOCreateRetry, i32 0, i32 0), i8* %124), !dbg !589
  br label %125, !dbg !590

; <label>:125:                                    ; preds = %123, %116
  br label %126, !dbg !591

; <label>:126:                                    ; preds = %125
  br label %127, !dbg !593

; <label>:127:                                    ; preds = %126, %109
  %128 = load i32, i32* %10, align 4, !dbg !594
  %129 = and i32 %128, 128, !dbg !596
  %130 = icmp ne i32 %129, 0, !dbg !596
  br i1 %130, label %131, label %134, !dbg !597

; <label>:131:                                    ; preds = %127
  %132 = load i32, i32* %15, align 4, !dbg !598
  %133 = or i32 %132, 2048, !dbg !598
  store i32 %133, i32* %15, align 4, !dbg !598
  br label %134, !dbg !600

; <label>:134:                                    ; preds = %131, %127
  %135 = load i32, i32* %10, align 4, !dbg !601
  %136 = and i32 %135, 131072, !dbg !603
  %137 = icmp ne i32 %136, 0, !dbg !603
  br i1 %137, label %138, label %141, !dbg !604

; <label>:138:                                    ; preds = %134
  %139 = load i32, i32* %15, align 4, !dbg !605
  %140 = or i32 %139, 1024, !dbg !605
  store i32 %140, i32* %15, align 4, !dbg !605
  br label %141, !dbg !607

; <label>:141:                                    ; preds = %138, %134
  %142 = load i32, i32* %10, align 4, !dbg !608
  %143 = and i32 %142, 262144, !dbg !610
  %144 = icmp ne i32 %143, 0, !dbg !610
  br i1 %144, label %145, label %148, !dbg !611

; <label>:145:                                    ; preds = %141
  %146 = load i32, i32* %15, align 4, !dbg !612
  %147 = or i32 %146, 131072, !dbg !612
  store i32 %147, i32* %15, align 4, !dbg !612
  br label %148, !dbg !614

; <label>:148:                                    ; preds = %145, %141
  %149 = load i32, i32* %10, align 4, !dbg !615
  %150 = and i32 %149, 4, !dbg !617
  %151 = icmp ne i32 %150, 0, !dbg !617
  br i1 %151, label %152, label %155, !dbg !618

; <label>:152:                                    ; preds = %148
  %153 = load i32, i32* %15, align 4, !dbg !619
  %154 = or i32 %153, 1052672, !dbg !619
  store i32 %154, i32* %15, align 4, !dbg !619
  br label %155, !dbg !621

; <label>:155:                                    ; preds = %152, %148
  %156 = load i32, i32* %10, align 4, !dbg !622
  %157 = and i32 %156, 262144, !dbg !624
  %158 = icmp ne i32 %157, 0, !dbg !624
  br i1 %158, label %159, label %162, !dbg !625

; <label>:159:                                    ; preds = %155
  %160 = load i32, i32* %15, align 4, !dbg !626
  %161 = or i32 %160, 131072, !dbg !626
  store i32 %161, i32* %15, align 4, !dbg !626
  br label %162, !dbg !628

; <label>:162:                                    ; preds = %159, %155
  %163 = load i32, i32* %15, align 4, !dbg !629
  %164 = and i32 %163, 8388608, !dbg !631
  %165 = icmp ne i32 %164, 0, !dbg !631
  br i1 %165, label %166, label %169, !dbg !632

; <label>:166:                                    ; preds = %162
  %167 = load i32, i32* %15, align 4, !dbg !633
  %168 = or i32 %167, 524288, !dbg !633
  store i32 %168, i32* %15, align 4, !dbg !633
  br label %169, !dbg !635

; <label>:169:                                    ; preds = %166, %162
  %170 = load i32, i32* %11, align 4, !dbg !636
  %171 = zext i32 %170 to i64, !dbg !637
  %172 = getelementptr inbounds [5 x i32], [5 x i32]* @FileIO_OpenActions, i64 0, i64 %171, !dbg !637
  %173 = load i32, i32* %172, align 4, !dbg !637
  %174 = load i32, i32* %15, align 4, !dbg !638
  %175 = or i32 %174, %173, !dbg !638
  store i32 %175, i32* %15, align 4, !dbg !638
  %176 = load i32, i32* %10, align 4, !dbg !639
  %177 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %8, align 8, !dbg !640
  %178 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %177, i32 0, i32 1, !dbg !641
  store i32 %176, i32* %178, align 4, !dbg !642
  call void @llvm.dbg.declare(metadata i32* %18, metadata !643, metadata !370), !dbg !647
  store i32 -1, i32* %18, align 4, !dbg !647
  %179 = load i32, i32* %10, align 4, !dbg !648
  %180 = and i32 %179, 256, !dbg !650
  %181 = icmp ne i32 %180, 0, !dbg !650
  br i1 %181, label %182, label %184, !dbg !651

; <label>:182:                                    ; preds = %169
  %183 = call i32 @Id_BeginSuperUser(), !dbg !652
  store i32 %183, i32* %18, align 4, !dbg !654
  br label %184, !dbg !655

; <label>:184:                                    ; preds = %182, %169
  %185 = load i8*, i8** %9, align 8, !dbg !656
  %186 = load i32, i32* %15, align 4, !dbg !657
  %187 = load i32, i32* %12, align 4, !dbg !658
  %188 = call i32 (i8*, i32, ...) @Posix_Open(i8* %185, i32 %186, i32 %187), !dbg !659
  store i32 %188, i32* %14, align 4, !dbg !660
  %189 = call i32* @__errno_location() #4, !dbg !661
  %190 = load i32, i32* %189, align 4, !dbg !662
  store i32 %190, i32* %16, align 4, !dbg !663
  %191 = load i32, i32* %10, align 4, !dbg !664
  %192 = and i32 %191, 256, !dbg !666
  %193 = icmp ne i32 %192, 0, !dbg !666
  br i1 %193, label %194, label %196, !dbg !667

; <label>:194:                                    ; preds = %184
  %195 = load i32, i32* %18, align 4, !dbg !668
  call void @Id_EndSuperUser(i32 %195), !dbg !670
  br label %196, !dbg !671

; <label>:196:                                    ; preds = %194, %184
  %197 = load i32, i32* %16, align 4, !dbg !672
  %198 = call i32* @__errno_location() #4, !dbg !673
  store i32 %197, i32* %198, align 4, !dbg !674
  %199 = load i32, i32* %14, align 4, !dbg !675
  %200 = icmp eq i32 %199, -1, !dbg !677
  br i1 %200, label %201, label %214, !dbg !678

; <label>:201:                                    ; preds = %196
  %202 = call i32* @__errno_location() #4, !dbg !679
  %203 = load i32, i32* %202, align 4, !dbg !681
  %204 = call i32 @FileIOErrno2Result(i32 %203), !dbg !682
  store i32 %204, i32* %17, align 4, !dbg !684
  %205 = load i32, i32* %17, align 4, !dbg !685
  %206 = icmp eq i32 %205, 2, !dbg !687
  br i1 %206, label %207, label %212, !dbg !688

; <label>:207:                                    ; preds = %201
  %208 = load i8*, i8** %9, align 8, !dbg !689
  %209 = call i32* @__errno_location() #4, !dbg !691
  %210 = load i32, i32* %209, align 4, !dbg !692
  %211 = call i8* @Err_Errno2String(i32 %210), !dbg !693
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i8* %208, i8* %211), !dbg !695
  br label %212, !dbg !696

; <label>:212:                                    ; preds = %207, %201
  %213 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !697
  br label %240, !dbg !698

; <label>:214:                                    ; preds = %196
  %215 = load i32, i32* %10, align 4, !dbg !699
  %216 = and i32 %215, 8, !dbg !701
  %217 = icmp ne i32 %216, 0, !dbg !701
  br i1 %217, label %218, label %236, !dbg !702

; <label>:218:                                    ; preds = %214
  %219 = load i8*, i8** %9, align 8, !dbg !703
  %220 = call i32 @Posix_Unlink(i8* %219), !dbg !706
  %221 = icmp eq i32 %220, -1, !dbg !707
  br i1 %221, label %222, label %235, !dbg !708

; <label>:222:                                    ; preds = %218
  %223 = call i32* @__errno_location() #4, !dbg !709
  %224 = load i32, i32* %223, align 4, !dbg !711
  %225 = call i32 @FileIOErrno2Result(i32 %224), !dbg !712
  store i32 %225, i32* %17, align 4, !dbg !714
  %226 = load i32, i32* %17, align 4, !dbg !715
  %227 = icmp eq i32 %226, 2, !dbg !717
  br i1 %227, label %228, label %233, !dbg !718

; <label>:228:                                    ; preds = %222
  %229 = load i8*, i8** %9, align 8, !dbg !719
  %230 = call i32* @__errno_location() #4, !dbg !721
  %231 = load i32, i32* %230, align 4, !dbg !722
  %232 = call i8* @Err_Errno2String(i32 %231), !dbg !723
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0), i8* %229, i8* %232), !dbg !725
  br label %233, !dbg !726

; <label>:233:                                    ; preds = %228, %222
  %234 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !727
  br label %240, !dbg !728

; <label>:235:                                    ; preds = %218
  br label %236, !dbg !729

; <label>:236:                                    ; preds = %235, %214
  %237 = load i32, i32* %14, align 4, !dbg !730
  %238 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %8, align 8, !dbg !731
  %239 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %238, i32 0, i32 0, !dbg !732
  store i32 %237, i32* %239, align 8, !dbg !733
  store i32 0, i32* %7, align 4, !dbg !734
  br label %256, !dbg !734

; <label>:240:                                    ; preds = %233, %212, %73
  %241 = call i32* @__errno_location() #4, !dbg !735
  %242 = load i32, i32* %241, align 4, !dbg !736
  store i32 %242, i32* %16, align 4, !dbg !737
  %243 = load i32, i32* %14, align 4, !dbg !738
  %244 = icmp ne i32 %243, -1, !dbg !740
  br i1 %244, label %245, label %248, !dbg !741

; <label>:245:                                    ; preds = %240
  %246 = load i32, i32* %14, align 4, !dbg !742
  %247 = call i32 @close(i32 %246), !dbg !744
  br label %248, !dbg !745

; <label>:248:                                    ; preds = %245, %240
  %249 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %8, align 8, !dbg !746
  %250 = call i32 @FileIO_Unlock(%struct.FileIODescriptor* %249), !dbg !747
  %251 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %8, align 8, !dbg !748
  call void @FileIO_Cleanup(%struct.FileIODescriptor* %251), !dbg !749
  %252 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %8, align 8, !dbg !750
  call void @FileIO_Invalidate(%struct.FileIODescriptor* %252), !dbg !751
  %253 = load i32, i32* %16, align 4, !dbg !752
  %254 = call i32* @__errno_location() #4, !dbg !753
  store i32 %253, i32* %254, align 4, !dbg !754
  %255 = load i32, i32* %17, align 4, !dbg !755
  store i32 %255, i32* %7, align 4, !dbg !756
  br label %256, !dbg !756

; <label>:256:                                    ; preds = %248, %236, %21
  %257 = load i32, i32* %7, align 4, !dbg !757
  ret i32 %257, !dbg !757
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

declare void @FileIOResolveLockBits(i32*) #1

declare signext i8 @HostType_OSIsVMK() #1

declare void @FileIO_Init(%struct.FileIODescriptor*, i8*) #1

declare i32 @FileIO_Lock(%struct.FileIODescriptor*, i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @FileIO_IsSuccess(i32) #0 !dbg !758 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !761, metadata !370), !dbg !762
  %3 = load i32, i32* %2, align 4, !dbg !763
  %4 = icmp eq i32 %3, 0, !dbg !764
  %5 = zext i1 %4 to i32, !dbg !764
  %6 = trunc i32 %5 to i8, !dbg !763
  ret i8 %6, !dbg !765
}

declare i32 @assert(...) #1

declare void @Log(i8*, ...) #1

declare i32 @Id_BeginSuperUser() #1

declare i32 @Posix_Open(i8*, i32, ...) #1

declare void @Id_EndSuperUser(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @FileIOErrno2Result(i32) #3 !dbg !766 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !769, metadata !370), !dbg !770
  %4 = load i32, i32* %3, align 4, !dbg !771
  switch i32 %4, label %13 [
    i32 5, label %5
    i32 17, label %6
    i32 2, label %7
    i32 13, label %8
    i32 36, label %9
    i32 28, label %10
    i32 27, label %11
    i32 122, label %12
  ], !dbg !772

; <label>:5:                                      ; preds = %1
  store i32 2, i32* %2, align 4, !dbg !773
  br label %14, !dbg !773

; <label>:6:                                      ; preds = %1
  store i32 3, i32* %2, align 4, !dbg !775
  br label %14, !dbg !775

; <label>:7:                                      ; preds = %1
  store i32 6, i32* %2, align 4, !dbg !776
  br label %14, !dbg !776

; <label>:8:                                      ; preds = %1
  store i32 7, i32* %2, align 4, !dbg !777
  br label %14, !dbg !777

; <label>:9:                                      ; preds = %1
  store i32 8, i32* %2, align 4, !dbg !778
  br label %14, !dbg !778

; <label>:10:                                     ; preds = %1
  store i32 10, i32* %2, align 4, !dbg !779
  br label %14, !dbg !779

; <label>:11:                                     ; preds = %1
  store i32 9, i32* %2, align 4, !dbg !780
  br label %14, !dbg !780

; <label>:12:                                     ; preds = %1
  store i32 11, i32* %2, align 4, !dbg !781
  br label %14, !dbg !781

; <label>:13:                                     ; preds = %1
  store i32 2, i32* %2, align 4, !dbg !782
  br label %14, !dbg !782

; <label>:14:                                     ; preds = %13, %12, %11, %10, %9, %8, %7, %6, %5
  %15 = load i32, i32* %2, align 4, !dbg !783
  ret i32 %15, !dbg !783
}

declare i8* @Err_Errno2String(i32) #1

declare i32 @Posix_Unlink(i8*) #1

declare i32 @close(i32) #1

declare i32 @FileIO_Unlock(%struct.FileIODescriptor*) #1

declare void @FileIO_Cleanup(%struct.FileIODescriptor*) #1

; Function Attrs: nounwind uwtable
define i32 @FileIO_CreateRetry(%struct.FileIODescriptor*, i8*, i32, i32, i32, i32) #3 !dbg !784 {
  %7 = alloca %struct.FileIODescriptor*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.FileIODescriptor* %0, %struct.FileIODescriptor** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor** %7, metadata !785, metadata !370), !dbg !786
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !787, metadata !370), !dbg !788
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !789, metadata !370), !dbg !790
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !791, metadata !370), !dbg !792
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !793, metadata !370), !dbg !794
  store i32 %5, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !795, metadata !370), !dbg !796
  %13 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %7, align 8, !dbg !797
  %14 = load i8*, i8** %8, align 8, !dbg !798
  %15 = load i32, i32* %9, align 4, !dbg !799
  %16 = load i32, i32* %10, align 4, !dbg !800
  %17 = load i32, i32* %11, align 4, !dbg !801
  %18 = load i32, i32* %12, align 4, !dbg !802
  %19 = call i32 @FileIOCreateRetry(%struct.FileIODescriptor* %13, i8* %14, i32 %15, i32 %16, i32 %17, i32 %18), !dbg !803
  ret i32 %19, !dbg !804
}

; Function Attrs: nounwind uwtable
define i32 @FileIO_Create(%struct.FileIODescriptor*, i8*, i32, i32, i32) #3 !dbg !805 {
  %6 = alloca %struct.FileIODescriptor*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.FileIODescriptor* %0, %struct.FileIODescriptor** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor** %6, metadata !808, metadata !370), !dbg !809
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !810, metadata !370), !dbg !811
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !812, metadata !370), !dbg !813
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !814, metadata !370), !dbg !815
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !816, metadata !370), !dbg !817
  %11 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %6, align 8, !dbg !818
  %12 = load i8*, i8** %7, align 8, !dbg !819
  %13 = load i32, i32* %8, align 4, !dbg !820
  %14 = load i32, i32* %9, align 4, !dbg !821
  %15 = load i32, i32* %10, align 4, !dbg !822
  %16 = call i32 @FileIOCreateRetry(%struct.FileIODescriptor* %11, i8* %12, i32 %13, i32 %14, i32 %15, i32 0), !dbg !823
  ret i32 %16, !dbg !824
}

; Function Attrs: nounwind uwtable
define i32 @FileIO_OpenRetry(%struct.FileIODescriptor*, i8*, i32, i32, i32) #3 !dbg !825 {
  %6 = alloca %struct.FileIODescriptor*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.FileIODescriptor* %0, %struct.FileIODescriptor** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor** %6, metadata !828, metadata !370), !dbg !829
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !830, metadata !370), !dbg !831
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !832, metadata !370), !dbg !833
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !834, metadata !370), !dbg !835
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !836, metadata !370), !dbg !837
  %11 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %6, align 8, !dbg !838
  %12 = load i8*, i8** %7, align 8, !dbg !839
  %13 = load i32, i32* %8, align 4, !dbg !840
  %14 = load i32, i32* %9, align 4, !dbg !841
  %15 = load i32, i32* %10, align 4, !dbg !842
  %16 = call i32 @FileIOCreateRetry(%struct.FileIODescriptor* %11, i8* %12, i32 %13, i32 %14, i32 384, i32 %15), !dbg !843
  ret i32 %16, !dbg !844
}

; Function Attrs: nounwind uwtable
define i32 @FileIO_Open(%struct.FileIODescriptor*, i8*, i32, i32) #3 !dbg !845 {
  %5 = alloca %struct.FileIODescriptor*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.FileIODescriptor* %0, %struct.FileIODescriptor** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor** %5, metadata !848, metadata !370), !dbg !849
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !850, metadata !370), !dbg !851
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !852, metadata !370), !dbg !853
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !854, metadata !370), !dbg !855
  %9 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %5, align 8, !dbg !856
  %10 = load i8*, i8** %6, align 8, !dbg !857
  %11 = load i32, i32* %7, align 4, !dbg !858
  %12 = load i32, i32* %8, align 4, !dbg !859
  %13 = call i32 @FileIO_OpenRetry(%struct.FileIODescriptor* %9, i8* %10, i32 %11, i32 %12, i32 0), !dbg !860
  ret i32 %13, !dbg !861
}

; Function Attrs: nounwind uwtable
define i64 @FileIO_Seek(%struct.FileIODescriptor*, i64, i32) #3 !dbg !862 {
  %4 = alloca %struct.FileIODescriptor*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.FileIODescriptor* %0, %struct.FileIODescriptor** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor** %4, metadata !868, metadata !370), !dbg !869
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !870, metadata !370), !dbg !871
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !872, metadata !370), !dbg !873
  br label %7, !dbg !874, !llvm.loop !875

; <label>:7:                                      ; preds = %3
  br label %8, !dbg !876

; <label>:8:                                      ; preds = %7
  %9 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %4, align 8, !dbg !879
  %10 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %9, i32 0, i32 0, !dbg !880
  %11 = load i32, i32* %10, align 8, !dbg !880
  %12 = load i64, i64* %5, align 8, !dbg !881
  %13 = load i32, i32* %6, align 4, !dbg !882
  %14 = zext i32 %13 to i64, !dbg !883
  %15 = getelementptr inbounds [3 x i32], [3 x i32]* @FileIO_SeekOrigins, i64 0, i64 %14, !dbg !883
  %16 = load i32, i32* %15, align 4, !dbg !883
  %17 = call i64 @lseek64(i32 %11, i64 %12, i32 %16) #8, !dbg !884
  ret i64 %17, !dbg !885
}

; Function Attrs: nounwind
declare i64 @lseek64(i32, i64, i32) #2

; Function Attrs: nounwind uwtable
define i32 @FileIO_Write(%struct.FileIODescriptor*, i8*, i64, i64*) #3 !dbg !886 {
  %5 = alloca %struct.FileIODescriptor*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.FileIODescriptor* %0, %struct.FileIODescriptor** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor** %5, metadata !891, metadata !370), !dbg !892
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !893, metadata !370), !dbg !894
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !895, metadata !370), !dbg !896
  store i64* %3, i64** %8, align 8
  call void @llvm.dbg.declare(metadata i64** %8, metadata !897, metadata !370), !dbg !898
  call void @llvm.dbg.declare(metadata i8** %9, metadata !899, metadata !370), !dbg !900
  %14 = load i8*, i8** %6, align 8, !dbg !901
  store i8* %14, i8** %9, align 8, !dbg !900
  call void @llvm.dbg.declare(metadata i64* %10, metadata !902, metadata !370), !dbg !903
  call void @llvm.dbg.declare(metadata i32* %11, metadata !904, metadata !370), !dbg !905
  store i32 0, i32* %11, align 4, !dbg !905
  %15 = load i64, i64* %7, align 8, !dbg !906
  %16 = icmp ult i64 %15, 2147483648, !dbg !909
  %17 = xor i1 %16, true, !dbg !910
  %18 = zext i1 %17 to i32, !dbg !910
  %19 = sext i32 %18 to i64, !dbg !911
  %20 = icmp ne i64 %19, 0, !dbg !912
  br i1 %20, label %21, label %22, !dbg !913

; <label>:21:                                     ; preds = %4
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 1295) #9, !dbg !914
  unreachable, !dbg !914

; <label>:22:                                     ; preds = %4
  %23 = load i64, i64* %7, align 8, !dbg !917
  store i64 %23, i64* %10, align 8, !dbg !918
  br label %24, !dbg !919

; <label>:24:                                     ; preds = %45, %41, %22
  %25 = load i64, i64* %7, align 8, !dbg !920
  %26 = icmp ugt i64 %25, 0, !dbg !922
  br i1 %26, label %27, label %52, !dbg !923

; <label>:27:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata i64* %12, metadata !924, metadata !370), !dbg !926
  %28 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %5, align 8, !dbg !927
  %29 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %28, i32 0, i32 0, !dbg !928
  %30 = load i32, i32* %29, align 8, !dbg !928
  %31 = load i8*, i8** %9, align 8, !dbg !929
  %32 = load i64, i64* %7, align 8, !dbg !930
  %33 = call i64 @write(i32 %30, i8* %31, i64 %32), !dbg !931
  store i64 %33, i64* %12, align 8, !dbg !932
  %34 = load i64, i64* %12, align 8, !dbg !933
  %35 = icmp eq i64 %34, -1, !dbg !935
  br i1 %35, label %36, label %45, !dbg !936

; <label>:36:                                     ; preds = %27
  call void @llvm.dbg.declare(metadata i32* %13, metadata !937, metadata !370), !dbg !939
  %37 = call i32* @__errno_location() #4, !dbg !940
  %38 = load i32, i32* %37, align 4, !dbg !941
  store i32 %38, i32* %13, align 4, !dbg !939
  %39 = load i32, i32* %13, align 4, !dbg !942
  %40 = icmp eq i32 %39, 4, !dbg !944
  br i1 %40, label %41, label %42, !dbg !945

; <label>:41:                                     ; preds = %36
  br label %24, !dbg !946, !llvm.loop !948

; <label>:42:                                     ; preds = %36
  %43 = load i32, i32* %13, align 4, !dbg !949
  %44 = call i32 @FileIOErrno2Result(i32 %43), !dbg !950
  store i32 %44, i32* %11, align 4, !dbg !951
  br label %52, !dbg !952

; <label>:45:                                     ; preds = %27
  %46 = load i64, i64* %12, align 8, !dbg !953
  %47 = load i8*, i8** %9, align 8, !dbg !954
  %48 = getelementptr inbounds i8, i8* %47, i64 %46, !dbg !954
  store i8* %48, i8** %9, align 8, !dbg !954
  %49 = load i64, i64* %12, align 8, !dbg !955
  %50 = load i64, i64* %7, align 8, !dbg !956
  %51 = sub i64 %50, %49, !dbg !956
  store i64 %51, i64* %7, align 8, !dbg !956
  br label %24, !dbg !957, !llvm.loop !948

; <label>:52:                                     ; preds = %42, %24
  %53 = load i64*, i64** %8, align 8, !dbg !959
  %54 = icmp ne i64* %53, null, !dbg !959
  br i1 %54, label %55, label %60, !dbg !961

; <label>:55:                                     ; preds = %52
  %56 = load i64, i64* %10, align 8, !dbg !962
  %57 = load i64, i64* %7, align 8, !dbg !964
  %58 = sub i64 %56, %57, !dbg !965
  %59 = load i64*, i64** %8, align 8, !dbg !966
  store i64 %58, i64* %59, align 8, !dbg !967
  br label %60, !dbg !968

; <label>:60:                                     ; preds = %55, %52
  %61 = load i32, i32* %11, align 4, !dbg !969
  ret i32 %61, !dbg !970
}

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #7

declare i64 @write(i32, i8*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @FileIO_Read(%struct.FileIODescriptor*, i8*, i64, i64*) #3 !dbg !971 {
  %5 = alloca %struct.FileIODescriptor*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.FileIODescriptor* %0, %struct.FileIODescriptor** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor** %5, metadata !974, metadata !370), !dbg !975
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !976, metadata !370), !dbg !977
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !978, metadata !370), !dbg !979
  store i64* %3, i64** %8, align 8
  call void @llvm.dbg.declare(metadata i64** %8, metadata !980, metadata !370), !dbg !981
  call void @llvm.dbg.declare(metadata i8** %9, metadata !982, metadata !370), !dbg !983
  %13 = load i8*, i8** %6, align 8, !dbg !984
  store i8* %13, i8** %9, align 8, !dbg !983
  call void @llvm.dbg.declare(metadata i64* %10, metadata !985, metadata !370), !dbg !986
  call void @llvm.dbg.declare(metadata i32* %11, metadata !987, metadata !370), !dbg !988
  store i32 0, i32* %11, align 4, !dbg !988
  %14 = load i64, i64* %7, align 8, !dbg !989
  %15 = icmp ult i64 %14, 2147483648, !dbg !992
  %16 = xor i1 %15, true, !dbg !993
  %17 = zext i1 %16 to i32, !dbg !993
  %18 = sext i32 %17 to i64, !dbg !994
  %19 = icmp ne i64 %18, 0, !dbg !995
  br i1 %19, label %20, label %21, !dbg !996

; <label>:20:                                     ; preds = %4
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 1357) #9, !dbg !997
  unreachable, !dbg !997

; <label>:21:                                     ; preds = %4
  %22 = load i64, i64* %7, align 8, !dbg !1000
  store i64 %22, i64* %10, align 8, !dbg !1001
  br label %23, !dbg !1002

; <label>:23:                                     ; preds = %48, %39, %21
  %24 = load i64, i64* %7, align 8, !dbg !1003
  %25 = icmp ugt i64 %24, 0, !dbg !1005
  br i1 %25, label %26, label %55, !dbg !1006

; <label>:26:                                     ; preds = %23
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1007, metadata !370), !dbg !1009
  %27 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %5, align 8, !dbg !1010
  %28 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %27, i32 0, i32 0, !dbg !1011
  %29 = load i32, i32* %28, align 8, !dbg !1011
  %30 = load i8*, i8** %9, align 8, !dbg !1012
  %31 = load i64, i64* %7, align 8, !dbg !1013
  %32 = call i64 @read(i32 %29, i8* %30, i64 %31), !dbg !1014
  store i64 %32, i64* %12, align 8, !dbg !1015
  %33 = load i64, i64* %12, align 8, !dbg !1016
  %34 = icmp eq i64 %33, -1, !dbg !1018
  br i1 %34, label %35, label %44, !dbg !1019

; <label>:35:                                     ; preds = %26
  %36 = call i32* @__errno_location() #4, !dbg !1020
  %37 = load i32, i32* %36, align 4, !dbg !1023
  %38 = icmp eq i32 %37, 4, !dbg !1024
  br i1 %38, label %39, label %40, !dbg !1025

; <label>:39:                                     ; preds = %35
  br label %23, !dbg !1026, !llvm.loop !1028

; <label>:40:                                     ; preds = %35
  %41 = call i32* @__errno_location() #4, !dbg !1029
  %42 = load i32, i32* %41, align 4, !dbg !1030
  %43 = call i32 @FileIOErrno2Result(i32 %42), !dbg !1031
  store i32 %43, i32* %11, align 4, !dbg !1033
  br label %55, !dbg !1034

; <label>:44:                                     ; preds = %26
  %45 = load i64, i64* %12, align 8, !dbg !1035
  %46 = icmp eq i64 %45, 0, !dbg !1037
  br i1 %46, label %47, label %48, !dbg !1038

; <label>:47:                                     ; preds = %44
  store i32 5, i32* %11, align 4, !dbg !1039
  br label %55, !dbg !1041

; <label>:48:                                     ; preds = %44
  %49 = load i64, i64* %12, align 8, !dbg !1042
  %50 = load i8*, i8** %9, align 8, !dbg !1043
  %51 = getelementptr inbounds i8, i8* %50, i64 %49, !dbg !1043
  store i8* %51, i8** %9, align 8, !dbg !1043
  %52 = load i64, i64* %12, align 8, !dbg !1044
  %53 = load i64, i64* %7, align 8, !dbg !1045
  %54 = sub i64 %53, %52, !dbg !1045
  store i64 %54, i64* %7, align 8, !dbg !1045
  br label %23, !dbg !1046, !llvm.loop !1028

; <label>:55:                                     ; preds = %47, %40, %23
  %56 = load i64*, i64** %8, align 8, !dbg !1048
  %57 = icmp ne i64* %56, null, !dbg !1048
  br i1 %57, label %58, label %63, !dbg !1050

; <label>:58:                                     ; preds = %55
  %59 = load i64, i64* %10, align 8, !dbg !1051
  %60 = load i64, i64* %7, align 8, !dbg !1053
  %61 = sub i64 %59, %60, !dbg !1054
  %62 = load i64*, i64** %8, align 8, !dbg !1055
  store i64 %61, i64* %62, align 8, !dbg !1056
  br label %63, !dbg !1057

; <label>:63:                                     ; preds = %58, %55
  %64 = load i32, i32* %11, align 4, !dbg !1058
  ret i32 %64, !dbg !1059
}

declare i64 @read(i32, i8*, i64) #1

; Function Attrs: nounwind uwtable
define signext i8 @FileIO_Truncate(%struct.FileIODescriptor*, i64) #3 !dbg !1060 {
  %3 = alloca %struct.FileIODescriptor*, align 8
  %4 = alloca i64, align 8
  store %struct.FileIODescriptor* %0, %struct.FileIODescriptor** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor** %3, metadata !1063, metadata !370), !dbg !1064
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1065, metadata !370), !dbg !1066
  %5 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %3, align 8, !dbg !1067
  %6 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %5, i32 0, i32 0, !dbg !1068
  %7 = load i32, i32* %6, align 8, !dbg !1068
  %8 = load i64, i64* %4, align 8, !dbg !1069
  %9 = call i32 @ftruncate64(i32 %7, i64 %8) #8, !dbg !1070
  %10 = icmp eq i32 %9, 0, !dbg !1071
  %11 = zext i1 %10 to i32, !dbg !1071
  %12 = trunc i32 %11 to i8, !dbg !1070
  ret i8 %12, !dbg !1072
}

; Function Attrs: nounwind
declare i32 @ftruncate64(i32, i64) #2

; Function Attrs: nounwind uwtable
define i32 @FileIO_Close(%struct.FileIODescriptor*) #3 !dbg !1073 {
  %2 = alloca %struct.FileIODescriptor*, align 8
  %3 = alloca i32, align 4
  store %struct.FileIODescriptor* %0, %struct.FileIODescriptor** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor** %2, metadata !1076, metadata !370), !dbg !1077
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1078, metadata !370), !dbg !1079
  %4 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %2, align 8, !dbg !1080
  %5 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %4, i32 0, i32 0, !dbg !1081
  %6 = load i32, i32* %5, align 8, !dbg !1081
  %7 = call i32 @close(i32 %6), !dbg !1082
  %8 = icmp eq i32 %7, -1, !dbg !1083
  br i1 %8, label %9, label %12, !dbg !1084

; <label>:9:                                      ; preds = %1
  %10 = call i32* @__errno_location() #4, !dbg !1085
  %11 = load i32, i32* %10, align 4, !dbg !1087
  br label %13, !dbg !1088

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !1089

; <label>:13:                                     ; preds = %12, %9
  %14 = phi i32 [ %11, %9 ], [ 0, %12 ], !dbg !1091
  store i32 %14, i32* %3, align 4, !dbg !1093
  %15 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %2, align 8, !dbg !1094
  %16 = call i32 @FileIO_Unlock(%struct.FileIODescriptor* %15), !dbg !1095
  %17 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %2, align 8, !dbg !1096
  call void @FileIO_Cleanup(%struct.FileIODescriptor* %17), !dbg !1097
  %18 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %2, align 8, !dbg !1098
  call void @FileIO_Invalidate(%struct.FileIODescriptor* %18), !dbg !1099
  %19 = load i32, i32* %3, align 4, !dbg !1100
  %20 = icmp ne i32 %19, 0, !dbg !1100
  br i1 %20, label %21, label %24, !dbg !1102

; <label>:21:                                     ; preds = %13
  %22 = load i32, i32* %3, align 4, !dbg !1103
  %23 = call i32* @__errno_location() #4, !dbg !1105
  store i32 %22, i32* %23, align 4, !dbg !1106
  br label %24, !dbg !1107

; <label>:24:                                     ; preds = %21, %13
  %25 = load i32, i32* %3, align 4, !dbg !1108
  %26 = icmp eq i32 %25, 0, !dbg !1109
  %27 = select i1 %26, i32 0, i32 2, !dbg !1110
  ret i32 %27, !dbg !1111
}

; Function Attrs: nounwind uwtable
define i32 @FileIO_Sync(%struct.FileIODescriptor*) #3 !dbg !1112 {
  %2 = alloca %struct.FileIODescriptor*, align 8
  store %struct.FileIODescriptor* %0, %struct.FileIODescriptor** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor** %2, metadata !1115, metadata !370), !dbg !1116
  %3 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %2, align 8, !dbg !1117
  %4 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %3, i32 0, i32 0, !dbg !1118
  %5 = load i32, i32* %4, align 8, !dbg !1118
  %6 = call i32 @fsync(i32 %5), !dbg !1119
  %7 = icmp eq i32 %6, -1, !dbg !1120
  %8 = select i1 %7, i32 2, i32 0, !dbg !1121
  ret i32 %8, !dbg !1122
}

declare i32 @fsync(i32) #1

; Function Attrs: nounwind uwtable
define i32 @FileIO_Readv(%struct.FileIODescriptor*, %struct.iovec*, i32, i64, i64*) #3 !dbg !1123 {
  %6 = alloca %struct.FileIODescriptor*, align 8
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.iovec, align 8
  %17 = alloca %struct.iovec*, align 8
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.FileIODescriptor* %0, %struct.FileIODescriptor** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor** %6, metadata !1126, metadata !370), !dbg !1127
  store %struct.iovec* %1, %struct.iovec** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.iovec** %7, metadata !1128, metadata !370), !dbg !1129
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1130, metadata !370), !dbg !1131
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1132, metadata !370), !dbg !1133
  store i64* %4, i64** %10, align 8
  call void @llvm.dbg.declare(metadata i64** %10, metadata !1134, metadata !370), !dbg !1135
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1136, metadata !370), !dbg !1137
  store i64 0, i64* %11, align 8, !dbg !1137
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1138, metadata !370), !dbg !1139
  store i64 0, i64* %12, align 8, !dbg !1139
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1140, metadata !370), !dbg !1141
  store i32 2, i32* %13, align 4, !dbg !1141
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1142, metadata !370), !dbg !1143
  store i32 0, i32* %14, align 4, !dbg !1143
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1144, metadata !370), !dbg !1145
  %22 = load i32, i32* %8, align 4, !dbg !1146
  store i32 %22, i32* %15, align 4, !dbg !1145
  call void @llvm.dbg.declare(metadata %struct.iovec* %16, metadata !1147, metadata !370), !dbg !1148
  call void @llvm.dbg.declare(metadata %struct.iovec** %17, metadata !1149, metadata !370), !dbg !1150
  call void @llvm.dbg.declare(metadata i8* %18, metadata !1151, metadata !370), !dbg !1152
  call void @llvm.dbg.declare(metadata i32* %19, metadata !1153, metadata !370), !dbg !1154
  %23 = load %struct.iovec*, %struct.iovec** %7, align 8, !dbg !1155
  %24 = load i32, i32* %8, align 4, !dbg !1156
  %25 = load i64, i64* %9, align 8, !dbg !1157
  %26 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %6, align 8, !dbg !1158
  %27 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %26, i32 0, i32 1, !dbg !1159
  %28 = load i32, i32* %27, align 4, !dbg !1159
  %29 = call signext i8 @FileIOCoalesce(%struct.iovec* %23, i32 %24, i64 %25, i8 signext 0, i8 signext 0, i32 %28, %struct.iovec* %16), !dbg !1160
  store i8 %29, i8* %18, align 1, !dbg !1161
  %30 = load i64, i64* %9, align 8, !dbg !1162
  %31 = icmp ult i64 %30, 2147483648, !dbg !1165
  %32 = xor i1 %31, true, !dbg !1166
  %33 = zext i1 %32 to i32, !dbg !1166
  %34 = sext i32 %33 to i64, !dbg !1167
  %35 = icmp ne i64 %34, 0, !dbg !1168
  br i1 %35, label %36, label %37, !dbg !1169

; <label>:36:                                     ; preds = %5
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 1649) #9, !dbg !1170
  unreachable, !dbg !1170

; <label>:37:                                     ; preds = %5
  %38 = load i8, i8* %18, align 1, !dbg !1173
  %39 = sext i8 %38 to i32, !dbg !1173
  %40 = icmp ne i32 %39, 0, !dbg !1173
  br i1 %40, label %41, label %42, !dbg !1173

; <label>:41:                                     ; preds = %37
  br label %44, !dbg !1174

; <label>:42:                                     ; preds = %37
  %43 = load i32, i32* %8, align 4, !dbg !1176
  br label %44, !dbg !1178

; <label>:44:                                     ; preds = %42, %41
  %45 = phi i32 [ 1, %41 ], [ %43, %42 ], !dbg !1179
  store i32 %45, i32* %19, align 4, !dbg !1181
  %46 = load i8, i8* %18, align 1, !dbg !1182
  %47 = sext i8 %46 to i32, !dbg !1182
  %48 = icmp ne i32 %47, 0, !dbg !1182
  br i1 %48, label %49, label %50, !dbg !1182

; <label>:49:                                     ; preds = %44
  br label %52, !dbg !1183

; <label>:50:                                     ; preds = %44
  %51 = load %struct.iovec*, %struct.iovec** %7, align 8, !dbg !1184
  br label %52, !dbg !1185

; <label>:52:                                     ; preds = %50, %49
  %53 = phi %struct.iovec* [ %16, %49 ], [ %51, %50 ], !dbg !1186
  store %struct.iovec* %53, %struct.iovec** %17, align 8, !dbg !1187
  br label %54, !dbg !1188

; <label>:54:                                     ; preds = %123, %83, %52
  %55 = load i32, i32* %14, align 4, !dbg !1189
  %56 = load i32, i32* %15, align 4, !dbg !1190
  %57 = icmp slt i32 %55, %56, !dbg !1191
  br i1 %57, label %58, label %124, !dbg !1192

; <label>:58:                                     ; preds = %54
  call void @llvm.dbg.declare(metadata i64* %20, metadata !1193, metadata !370), !dbg !1195
  call void @llvm.dbg.declare(metadata i32* %21, metadata !1196, metadata !370), !dbg !1197
  %59 = load i64, i64* getelementptr inbounds (%struct.FilePosixOptions, %struct.FilePosixOptions* @filePosixOptions, i32 0, i32 6), align 8, !dbg !1198
  %60 = load i32, i32* %19, align 4, !dbg !1199
  %61 = sext i32 %60 to i64, !dbg !1200
  %62 = icmp slt i64 %59, %61, !dbg !1201
  br i1 %62, label %63, label %65, !dbg !1202

; <label>:63:                                     ; preds = %58
  %64 = load i64, i64* getelementptr inbounds (%struct.FilePosixOptions, %struct.FilePosixOptions* @filePosixOptions, i32 0, i32 6), align 8, !dbg !1203
  br label %68, !dbg !1205

; <label>:65:                                     ; preds = %58
  %66 = load i32, i32* %19, align 4, !dbg !1206
  %67 = sext i32 %66 to i64, !dbg !1208
  br label %68, !dbg !1209

; <label>:68:                                     ; preds = %65, %63
  %69 = phi i64 [ %64, %63 ], [ %67, %65 ], !dbg !1210
  %70 = trunc i64 %69 to i32, !dbg !1212
  store i32 %70, i32* %21, align 4, !dbg !1213
  %71 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %6, align 8, !dbg !1214
  %72 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %71, i32 0, i32 0, !dbg !1215
  %73 = load i32, i32* %72, align 8, !dbg !1215
  %74 = load %struct.iovec*, %struct.iovec** %17, align 8, !dbg !1216
  %75 = load i32, i32* %21, align 4, !dbg !1217
  %76 = call i64 @readv(i32 %73, %struct.iovec* %74, i32 %75), !dbg !1218
  store i64 %76, i64* %20, align 8, !dbg !1219
  %77 = load i64, i64* %20, align 8, !dbg !1220
  %78 = icmp eq i64 %77, -1, !dbg !1222
  br i1 %78, label %79, label %88, !dbg !1223

; <label>:79:                                     ; preds = %68
  %80 = call i32* @__errno_location() #4, !dbg !1224
  %81 = load i32, i32* %80, align 4, !dbg !1227
  %82 = icmp eq i32 %81, 4, !dbg !1228
  br i1 %82, label %83, label %84, !dbg !1229

; <label>:83:                                     ; preds = %79
  br label %54, !dbg !1230, !llvm.loop !1232

; <label>:84:                                     ; preds = %79
  %85 = call i32* @__errno_location() #4, !dbg !1233
  %86 = load i32, i32* %85, align 4, !dbg !1234
  %87 = call i32 @FileIOErrno2Result(i32 %86), !dbg !1235
  store i32 %87, i32* %13, align 4, !dbg !1237
  br label %124, !dbg !1238

; <label>:88:                                     ; preds = %68
  %89 = load i64, i64* %20, align 8, !dbg !1239
  %90 = load i64, i64* %11, align 8, !dbg !1240
  %91 = add i64 %90, %89, !dbg !1240
  store i64 %91, i64* %11, align 8, !dbg !1240
  %92 = load i64, i64* %11, align 8, !dbg !1241
  %93 = load i64, i64* %9, align 8, !dbg !1243
  %94 = icmp eq i64 %92, %93, !dbg !1244
  br i1 %94, label %95, label %96, !dbg !1245

; <label>:95:                                     ; preds = %88
  store i32 0, i32* %13, align 4, !dbg !1246
  br label %124, !dbg !1248

; <label>:96:                                     ; preds = %88
  %97 = load i64, i64* %20, align 8, !dbg !1249
  %98 = icmp eq i64 %97, 0, !dbg !1251
  br i1 %98, label %99, label %100, !dbg !1252

; <label>:99:                                     ; preds = %96
  store i32 5, i32* %13, align 4, !dbg !1253
  br label %124, !dbg !1255

; <label>:100:                                    ; preds = %96
  br label %101, !dbg !1256

; <label>:101:                                    ; preds = %113, %100
  %102 = load i64, i64* %12, align 8, !dbg !1257
  %103 = load i64, i64* %11, align 8, !dbg !1261
  %104 = icmp ult i64 %102, %103, !dbg !1262
  br i1 %104, label %105, label %118, !dbg !1263

; <label>:105:                                    ; preds = %101
  %106 = load %struct.iovec*, %struct.iovec** %17, align 8, !dbg !1264
  %107 = getelementptr inbounds %struct.iovec, %struct.iovec* %106, i32 0, i32 1, !dbg !1266
  %108 = load i64, i64* %107, align 8, !dbg !1266
  %109 = load i64, i64* %12, align 8, !dbg !1267
  %110 = add i64 %109, %108, !dbg !1267
  store i64 %110, i64* %12, align 8, !dbg !1267
  %111 = load i32, i32* %14, align 4, !dbg !1268
  %112 = add nsw i32 %111, 1, !dbg !1268
  store i32 %112, i32* %14, align 4, !dbg !1268
  br label %113, !dbg !1269

; <label>:113:                                    ; preds = %105
  %114 = load %struct.iovec*, %struct.iovec** %17, align 8, !dbg !1270
  %115 = getelementptr inbounds %struct.iovec, %struct.iovec* %114, i32 1, !dbg !1270
  store %struct.iovec* %115, %struct.iovec** %17, align 8, !dbg !1270
  %116 = load i32, i32* %19, align 4, !dbg !1272
  %117 = add nsw i32 %116, -1, !dbg !1272
  store i32 %117, i32* %19, align 4, !dbg !1272
  br label %101, !dbg !1273, !llvm.loop !1274

; <label>:118:                                    ; preds = %101
  %119 = load i64, i64* %12, align 8, !dbg !1275
  %120 = load i64, i64* %11, align 8, !dbg !1277
  %121 = icmp ugt i64 %119, %120, !dbg !1278
  br i1 %121, label %122, label %123, !dbg !1279

; <label>:122:                                    ; preds = %118
  store i32 5, i32* %13, align 4, !dbg !1280
  br label %124, !dbg !1282

; <label>:123:                                    ; preds = %118
  br label %54, !dbg !1283, !llvm.loop !1232

; <label>:124:                                    ; preds = %122, %99, %95, %84, %54
  %125 = load i8, i8* %18, align 1, !dbg !1284
  %126 = icmp ne i8 %125, 0, !dbg !1284
  br i1 %126, label %127, label %134, !dbg !1286

; <label>:127:                                    ; preds = %124
  %128 = load %struct.iovec*, %struct.iovec** %7, align 8, !dbg !1287
  %129 = load i32, i32* %8, align 4, !dbg !1289
  %130 = load i64, i64* %11, align 8, !dbg !1290
  %131 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %6, align 8, !dbg !1291
  %132 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %131, i32 0, i32 1, !dbg !1292
  %133 = load i32, i32* %132, align 4, !dbg !1292
  call void @FileIODecoalesce(%struct.iovec* %16, %struct.iovec* %128, i32 %129, i64 %130, i8 signext 0, i32 %133), !dbg !1293
  br label %134, !dbg !1294

; <label>:134:                                    ; preds = %127, %124
  %135 = load i64*, i64** %10, align 8, !dbg !1295
  %136 = icmp ne i64* %135, null, !dbg !1295
  br i1 %136, label %137, label %140, !dbg !1297

; <label>:137:                                    ; preds = %134
  %138 = load i64, i64* %11, align 8, !dbg !1298
  %139 = load i64*, i64** %10, align 8, !dbg !1300
  store i64 %138, i64* %139, align 8, !dbg !1301
  br label %140, !dbg !1302

; <label>:140:                                    ; preds = %137, %134
  %141 = load i32, i32* %13, align 4, !dbg !1303
  ret i32 %141, !dbg !1304
}

; Function Attrs: nounwind uwtable
define internal signext i8 @FileIOCoalesce(%struct.iovec*, i32, i64, i8 signext, i8 signext, i32, %struct.iovec*) #3 !dbg !1305 {
  %8 = alloca i8, align 1
  %9 = alloca %struct.iovec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca %struct.iovec*, align 8
  %16 = alloca i8*, align 8
  store %struct.iovec* %0, %struct.iovec** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.iovec** %9, metadata !1309, metadata !370), !dbg !1310
  store i32 %1, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1311, metadata !370), !dbg !1312
  store i64 %2, i64* %11, align 8
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1313, metadata !370), !dbg !1314
  store i8 %3, i8* %12, align 1
  call void @llvm.dbg.declare(metadata i8* %12, metadata !1315, metadata !370), !dbg !1316
  store i8 %4, i8* %13, align 1
  call void @llvm.dbg.declare(metadata i8* %13, metadata !1317, metadata !370), !dbg !1318
  store i32 %5, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1319, metadata !370), !dbg !1320
  store %struct.iovec* %6, %struct.iovec** %15, align 8
  call void @llvm.dbg.declare(metadata %struct.iovec** %15, metadata !1321, metadata !370), !dbg !1322
  call void @llvm.dbg.declare(metadata i8** %16, metadata !1323, metadata !370), !dbg !1324
  call void @FileIO_OptionalSafeInitialize(), !dbg !1325
  %17 = load i32, i32* %10, align 4, !dbg !1326
  %18 = icmp eq i32 %17, 1, !dbg !1328
  br i1 %18, label %19, label %20, !dbg !1329

; <label>:19:                                     ; preds = %7
  store i8 0, i8* %8, align 1, !dbg !1330
  br label %74, !dbg !1330

; <label>:20:                                     ; preds = %7
  %21 = load i8, i8* %13, align 1, !dbg !1332
  %22 = icmp ne i8 %21, 0, !dbg !1332
  br i1 %22, label %39, label %23, !dbg !1334

; <label>:23:                                     ; preds = %20
  %24 = load i8, i8* getelementptr inbounds (%struct.FilePosixOptions, %struct.FilePosixOptions* @filePosixOptions, i32 0, i32 2), align 2, !dbg !1335
  %25 = icmp ne i8 %24, 0, !dbg !1336
  br i1 %25, label %26, label %38, !dbg !1337

; <label>:26:                                     ; preds = %23
  %27 = load i32, i32* %10, align 4, !dbg !1338
  %28 = load i32, i32* getelementptr inbounds (%struct.FilePosixOptions, %struct.FilePosixOptions* @filePosixOptions, i32 0, i32 3), align 4, !dbg !1339
  %29 = icmp sle i32 %27, %28, !dbg !1340
  br i1 %29, label %38, label %30, !dbg !1341

; <label>:30:                                     ; preds = %26
  %31 = load i64, i64* %11, align 8, !dbg !1342
  %32 = load i32, i32* %10, align 4, !dbg !1343
  %33 = sext i32 %32 to i64, !dbg !1343
  %34 = udiv i64 %31, %33, !dbg !1344
  %35 = load i32, i32* getelementptr inbounds (%struct.FilePosixOptions, %struct.FilePosixOptions* @filePosixOptions, i32 0, i32 4), align 8, !dbg !1345
  %36 = sext i32 %35 to i64, !dbg !1346
  %37 = icmp uge i64 %34, %36, !dbg !1347
  br i1 %37, label %38, label %39, !dbg !1348

; <label>:38:                                     ; preds = %30, %26, %23
  store i8 0, i8* %8, align 1, !dbg !1350
  br label %74, !dbg !1350

; <label>:39:                                     ; preds = %30, %20
  %40 = load i8, i8* getelementptr inbounds (%struct.FilePosixOptions, %struct.FilePosixOptions* @filePosixOptions, i32 0, i32 1), align 1, !dbg !1352
  %41 = sext i8 %40 to i32, !dbg !1354
  %42 = icmp ne i32 %41, 0, !dbg !1354
  br i1 %42, label %47, label %43, !dbg !1355

; <label>:43:                                     ; preds = %39
  %44 = load i32, i32* %14, align 4, !dbg !1356
  %45 = and i32 %44, 16, !dbg !1358
  %46 = icmp ne i32 %45, 0, !dbg !1358
  br i1 %46, label %47, label %51, !dbg !1359

; <label>:47:                                     ; preds = %43, %39
  %48 = load i64, i64* %11, align 8, !dbg !1360
  %49 = mul i64 1, %48, !dbg !1362
  %50 = call i8* @FileIOAligned_Malloc(i64 %49), !dbg !1363
  store i8* %50, i8** %16, align 8, !dbg !1364
  br label %55, !dbg !1365

; <label>:51:                                     ; preds = %43
  %52 = load i64, i64* %11, align 8, !dbg !1366
  %53 = mul i64 1, %52, !dbg !1368
  %54 = call i8* @UtilSafeMalloc0(i64 %53), !dbg !1369
  store i8* %54, i8** %16, align 8, !dbg !1370
  br label %55

; <label>:55:                                     ; preds = %51, %47
  %56 = load i8*, i8** %16, align 8, !dbg !1371
  %57 = icmp ne i8* %56, null, !dbg !1371
  br i1 %57, label %59, label %58, !dbg !1373

; <label>:58:                                     ; preds = %55
  store i8 0, i8* %8, align 1, !dbg !1374
  br label %74, !dbg !1374

; <label>:59:                                     ; preds = %55
  %60 = load i8, i8* %12, align 1, !dbg !1376
  %61 = icmp ne i8 %60, 0, !dbg !1376
  br i1 %61, label %62, label %67, !dbg !1378

; <label>:62:                                     ; preds = %59
  %63 = load %struct.iovec*, %struct.iovec** %9, align 8, !dbg !1379
  %64 = load i32, i32* %10, align 4, !dbg !1381
  %65 = load i8*, i8** %16, align 8, !dbg !1382
  %66 = load i64, i64* %11, align 8, !dbg !1383
  call void @IOV_WriteIovToBuf(%struct.iovec* %63, i32 %64, i8* %65, i64 %66), !dbg !1384
  br label %67, !dbg !1385

; <label>:67:                                     ; preds = %62, %59
  %68 = load i8*, i8** %16, align 8, !dbg !1386
  %69 = load %struct.iovec*, %struct.iovec** %15, align 8, !dbg !1387
  %70 = getelementptr inbounds %struct.iovec, %struct.iovec* %69, i32 0, i32 0, !dbg !1388
  store i8* %68, i8** %70, align 8, !dbg !1389
  %71 = load i64, i64* %11, align 8, !dbg !1390
  %72 = load %struct.iovec*, %struct.iovec** %15, align 8, !dbg !1391
  %73 = getelementptr inbounds %struct.iovec, %struct.iovec* %72, i32 0, i32 1, !dbg !1392
  store i64 %71, i64* %73, align 8, !dbg !1393
  store i8 1, i8* %8, align 1, !dbg !1394
  br label %74, !dbg !1394

; <label>:74:                                     ; preds = %67, %58, %38, %19
  %75 = load i8, i8* %8, align 1, !dbg !1395
  ret i8 %75, !dbg !1395
}

declare i64 @readv(i32, %struct.iovec*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @FileIODecoalesce(%struct.iovec*, %struct.iovec*, i32, i64, i8 signext, i32) #3 !dbg !1396 {
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca %struct.iovec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  store %struct.iovec* %0, %struct.iovec** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.iovec** %7, metadata !1399, metadata !370), !dbg !1400
  store %struct.iovec* %1, %struct.iovec** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.iovec** %8, metadata !1401, metadata !370), !dbg !1402
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1403, metadata !370), !dbg !1404
  store i64 %3, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1405, metadata !370), !dbg !1406
  store i8 %4, i8* %11, align 1
  call void @llvm.dbg.declare(metadata i8* %11, metadata !1407, metadata !370), !dbg !1408
  store i32 %5, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1409, metadata !370), !dbg !1410
  %13 = load i8, i8* %11, align 1, !dbg !1411
  %14 = icmp ne i8 %13, 0, !dbg !1411
  br i1 %14, label %22, label %15, !dbg !1413

; <label>:15:                                     ; preds = %6
  %16 = load %struct.iovec*, %struct.iovec** %7, align 8, !dbg !1414
  %17 = getelementptr inbounds %struct.iovec, %struct.iovec* %16, i32 0, i32 0, !dbg !1416
  %18 = load i8*, i8** %17, align 8, !dbg !1416
  %19 = load i64, i64* %10, align 8, !dbg !1417
  %20 = load %struct.iovec*, %struct.iovec** %8, align 8, !dbg !1418
  %21 = load i32, i32* %9, align 4, !dbg !1419
  call void @IOV_WriteBufToIov(i8* %18, i64 %19, %struct.iovec* %20, i32 %21), !dbg !1420
  br label %22, !dbg !1421

; <label>:22:                                     ; preds = %15, %6
  %23 = load i8, i8* getelementptr inbounds (%struct.FilePosixOptions, %struct.FilePosixOptions* @filePosixOptions, i32 0, i32 1), align 1, !dbg !1422
  %24 = sext i8 %23 to i32, !dbg !1424
  %25 = icmp ne i32 %24, 0, !dbg !1424
  br i1 %25, label %30, label %26, !dbg !1425

; <label>:26:                                     ; preds = %22
  %27 = load i32, i32* %12, align 4, !dbg !1426
  %28 = and i32 %27, 16, !dbg !1428
  %29 = icmp ne i32 %28, 0, !dbg !1428
  br i1 %29, label %30, label %34, !dbg !1429

; <label>:30:                                     ; preds = %26, %22
  %31 = load %struct.iovec*, %struct.iovec** %7, align 8, !dbg !1430
  %32 = getelementptr inbounds %struct.iovec, %struct.iovec* %31, i32 0, i32 0, !dbg !1432
  %33 = load i8*, i8** %32, align 8, !dbg !1432
  call void @FileIOAligned_Free(i8* %33), !dbg !1433
  br label %38, !dbg !1434

; <label>:34:                                     ; preds = %26
  %35 = load %struct.iovec*, %struct.iovec** %7, align 8, !dbg !1435
  %36 = getelementptr inbounds %struct.iovec, %struct.iovec* %35, i32 0, i32 0, !dbg !1437
  %37 = load i8*, i8** %36, align 8, !dbg !1437
  call void @Posix_Free(i8* %37), !dbg !1438
  br label %38

; <label>:38:                                     ; preds = %34, %30
  ret void, !dbg !1439
}

; Function Attrs: nounwind uwtable
define i32 @FileIO_Writev(%struct.FileIODescriptor*, %struct.iovec*, i32, i64, i64*) #3 !dbg !1440 {
  %6 = alloca %struct.FileIODescriptor*, align 8
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.iovec, align 8
  %17 = alloca %struct.iovec*, align 8
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.FileIODescriptor* %0, %struct.FileIODescriptor** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor** %6, metadata !1441, metadata !370), !dbg !1442
  store %struct.iovec* %1, %struct.iovec** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.iovec** %7, metadata !1443, metadata !370), !dbg !1444
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1445, metadata !370), !dbg !1446
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1447, metadata !370), !dbg !1448
  store i64* %4, i64** %10, align 8
  call void @llvm.dbg.declare(metadata i64** %10, metadata !1449, metadata !370), !dbg !1450
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1451, metadata !370), !dbg !1452
  store i64 0, i64* %11, align 8, !dbg !1452
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1453, metadata !370), !dbg !1454
  store i64 0, i64* %12, align 8, !dbg !1454
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1455, metadata !370), !dbg !1456
  store i32 2, i32* %13, align 4, !dbg !1456
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1457, metadata !370), !dbg !1458
  store i32 0, i32* %14, align 4, !dbg !1458
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1459, metadata !370), !dbg !1460
  %22 = load i32, i32* %8, align 4, !dbg !1461
  store i32 %22, i32* %15, align 4, !dbg !1460
  call void @llvm.dbg.declare(metadata %struct.iovec* %16, metadata !1462, metadata !370), !dbg !1463
  call void @llvm.dbg.declare(metadata %struct.iovec** %17, metadata !1464, metadata !370), !dbg !1465
  call void @llvm.dbg.declare(metadata i8* %18, metadata !1466, metadata !370), !dbg !1467
  call void @llvm.dbg.declare(metadata i32* %19, metadata !1468, metadata !370), !dbg !1469
  %23 = load %struct.iovec*, %struct.iovec** %7, align 8, !dbg !1470
  %24 = load i32, i32* %8, align 4, !dbg !1471
  %25 = load i64, i64* %9, align 8, !dbg !1472
  %26 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %6, align 8, !dbg !1473
  %27 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %26, i32 0, i32 1, !dbg !1474
  %28 = load i32, i32* %27, align 4, !dbg !1474
  %29 = call signext i8 @FileIOCoalesce(%struct.iovec* %23, i32 %24, i64 %25, i8 signext 1, i8 signext 0, i32 %28, %struct.iovec* %16), !dbg !1475
  store i8 %29, i8* %18, align 1, !dbg !1476
  %30 = load i64, i64* %9, align 8, !dbg !1477
  %31 = icmp ult i64 %30, 2147483648, !dbg !1480
  %32 = xor i1 %31, true, !dbg !1481
  %33 = zext i1 %32 to i32, !dbg !1481
  %34 = sext i32 %33 to i64, !dbg !1482
  %35 = icmp ne i64 %34, 0, !dbg !1483
  br i1 %35, label %36, label %37, !dbg !1484

; <label>:36:                                     ; preds = %5
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 1761) #9, !dbg !1485
  unreachable, !dbg !1485

; <label>:37:                                     ; preds = %5
  %38 = load i8, i8* %18, align 1, !dbg !1488
  %39 = sext i8 %38 to i32, !dbg !1488
  %40 = icmp ne i32 %39, 0, !dbg !1488
  br i1 %40, label %41, label %42, !dbg !1488

; <label>:41:                                     ; preds = %37
  br label %44, !dbg !1489

; <label>:42:                                     ; preds = %37
  %43 = load i32, i32* %8, align 4, !dbg !1491
  br label %44, !dbg !1493

; <label>:44:                                     ; preds = %42, %41
  %45 = phi i32 [ 1, %41 ], [ %43, %42 ], !dbg !1494
  store i32 %45, i32* %19, align 4, !dbg !1496
  %46 = load i8, i8* %18, align 1, !dbg !1497
  %47 = sext i8 %46 to i32, !dbg !1497
  %48 = icmp ne i32 %47, 0, !dbg !1497
  br i1 %48, label %49, label %50, !dbg !1497

; <label>:49:                                     ; preds = %44
  br label %52, !dbg !1498

; <label>:50:                                     ; preds = %44
  %51 = load %struct.iovec*, %struct.iovec** %7, align 8, !dbg !1499
  br label %52, !dbg !1500

; <label>:52:                                     ; preds = %50, %49
  %53 = phi %struct.iovec* [ %16, %49 ], [ %51, %50 ], !dbg !1501
  store %struct.iovec* %53, %struct.iovec** %17, align 8, !dbg !1502
  br label %54, !dbg !1503

; <label>:54:                                     ; preds = %119, %83, %52
  %55 = load i32, i32* %14, align 4, !dbg !1504
  %56 = load i32, i32* %15, align 4, !dbg !1505
  %57 = icmp slt i32 %55, %56, !dbg !1506
  br i1 %57, label %58, label %120, !dbg !1507

; <label>:58:                                     ; preds = %54
  call void @llvm.dbg.declare(metadata i64* %20, metadata !1508, metadata !370), !dbg !1510
  call void @llvm.dbg.declare(metadata i32* %21, metadata !1511, metadata !370), !dbg !1512
  %59 = load i64, i64* getelementptr inbounds (%struct.FilePosixOptions, %struct.FilePosixOptions* @filePosixOptions, i32 0, i32 6), align 8, !dbg !1513
  %60 = load i32, i32* %19, align 4, !dbg !1514
  %61 = sext i32 %60 to i64, !dbg !1515
  %62 = icmp slt i64 %59, %61, !dbg !1516
  br i1 %62, label %63, label %65, !dbg !1517

; <label>:63:                                     ; preds = %58
  %64 = load i64, i64* getelementptr inbounds (%struct.FilePosixOptions, %struct.FilePosixOptions* @filePosixOptions, i32 0, i32 6), align 8, !dbg !1518
  br label %68, !dbg !1520

; <label>:65:                                     ; preds = %58
  %66 = load i32, i32* %19, align 4, !dbg !1521
  %67 = sext i32 %66 to i64, !dbg !1523
  br label %68, !dbg !1524

; <label>:68:                                     ; preds = %65, %63
  %69 = phi i64 [ %64, %63 ], [ %67, %65 ], !dbg !1525
  %70 = trunc i64 %69 to i32, !dbg !1527
  store i32 %70, i32* %21, align 4, !dbg !1528
  %71 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %6, align 8, !dbg !1529
  %72 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %71, i32 0, i32 0, !dbg !1530
  %73 = load i32, i32* %72, align 8, !dbg !1530
  %74 = load %struct.iovec*, %struct.iovec** %17, align 8, !dbg !1531
  %75 = load i32, i32* %21, align 4, !dbg !1532
  %76 = call i64 @writev(i32 %73, %struct.iovec* %74, i32 %75), !dbg !1533
  store i64 %76, i64* %20, align 8, !dbg !1534
  %77 = load i64, i64* %20, align 8, !dbg !1535
  %78 = icmp eq i64 %77, -1, !dbg !1537
  br i1 %78, label %79, label %88, !dbg !1538

; <label>:79:                                     ; preds = %68
  %80 = call i32* @__errno_location() #4, !dbg !1539
  %81 = load i32, i32* %80, align 4, !dbg !1542
  %82 = icmp eq i32 %81, 4, !dbg !1543
  br i1 %82, label %83, label %84, !dbg !1544

; <label>:83:                                     ; preds = %79
  br label %54, !dbg !1545, !llvm.loop !1547

; <label>:84:                                     ; preds = %79
  %85 = call i32* @__errno_location() #4, !dbg !1548
  %86 = load i32, i32* %85, align 4, !dbg !1549
  %87 = call i32 @FileIOErrno2Result(i32 %86), !dbg !1550
  store i32 %87, i32* %13, align 4, !dbg !1552
  br label %120, !dbg !1553

; <label>:88:                                     ; preds = %68
  %89 = load i64, i64* %20, align 8, !dbg !1554
  %90 = load i64, i64* %11, align 8, !dbg !1555
  %91 = add i64 %90, %89, !dbg !1555
  store i64 %91, i64* %11, align 8, !dbg !1555
  %92 = load i64, i64* %11, align 8, !dbg !1556
  %93 = load i64, i64* %9, align 8, !dbg !1558
  %94 = icmp eq i64 %92, %93, !dbg !1559
  br i1 %94, label %95, label %96, !dbg !1560

; <label>:95:                                     ; preds = %88
  store i32 0, i32* %13, align 4, !dbg !1561
  br label %120, !dbg !1563

; <label>:96:                                     ; preds = %88
  br label %97, !dbg !1564

; <label>:97:                                     ; preds = %109, %96
  %98 = load i64, i64* %12, align 8, !dbg !1565
  %99 = load i64, i64* %11, align 8, !dbg !1569
  %100 = icmp ult i64 %98, %99, !dbg !1570
  br i1 %100, label %101, label %114, !dbg !1571

; <label>:101:                                    ; preds = %97
  %102 = load %struct.iovec*, %struct.iovec** %17, align 8, !dbg !1572
  %103 = getelementptr inbounds %struct.iovec, %struct.iovec* %102, i32 0, i32 1, !dbg !1574
  %104 = load i64, i64* %103, align 8, !dbg !1574
  %105 = load i64, i64* %12, align 8, !dbg !1575
  %106 = add i64 %105, %104, !dbg !1575
  store i64 %106, i64* %12, align 8, !dbg !1575
  %107 = load i32, i32* %14, align 4, !dbg !1576
  %108 = add nsw i32 %107, 1, !dbg !1576
  store i32 %108, i32* %14, align 4, !dbg !1576
  br label %109, !dbg !1577

; <label>:109:                                    ; preds = %101
  %110 = load %struct.iovec*, %struct.iovec** %17, align 8, !dbg !1578
  %111 = getelementptr inbounds %struct.iovec, %struct.iovec* %110, i32 1, !dbg !1578
  store %struct.iovec* %111, %struct.iovec** %17, align 8, !dbg !1578
  %112 = load i32, i32* %19, align 4, !dbg !1580
  %113 = add nsw i32 %112, -1, !dbg !1580
  store i32 %113, i32* %19, align 4, !dbg !1580
  br label %97, !dbg !1581, !llvm.loop !1582

; <label>:114:                                    ; preds = %97
  %115 = load i64, i64* %12, align 8, !dbg !1583
  %116 = load i64, i64* %11, align 8, !dbg !1585
  %117 = icmp ne i64 %115, %116, !dbg !1586
  br i1 %117, label %118, label %119, !dbg !1587

; <label>:118:                                    ; preds = %114
  store i32 10, i32* %13, align 4, !dbg !1588
  br label %120, !dbg !1590

; <label>:119:                                    ; preds = %114
  br label %54, !dbg !1591, !llvm.loop !1547

; <label>:120:                                    ; preds = %118, %95, %84, %54
  %121 = load i8, i8* %18, align 1, !dbg !1592
  %122 = icmp ne i8 %121, 0, !dbg !1592
  br i1 %122, label %123, label %130, !dbg !1594

; <label>:123:                                    ; preds = %120
  %124 = load %struct.iovec*, %struct.iovec** %7, align 8, !dbg !1595
  %125 = load i32, i32* %8, align 4, !dbg !1597
  %126 = load i64, i64* %11, align 8, !dbg !1598
  %127 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %6, align 8, !dbg !1599
  %128 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %127, i32 0, i32 1, !dbg !1600
  %129 = load i32, i32* %128, align 4, !dbg !1600
  call void @FileIODecoalesce(%struct.iovec* %16, %struct.iovec* %124, i32 %125, i64 %126, i8 signext 1, i32 %129), !dbg !1601
  br label %130, !dbg !1602

; <label>:130:                                    ; preds = %123, %120
  %131 = load i64*, i64** %10, align 8, !dbg !1603
  %132 = icmp ne i64* %131, null, !dbg !1603
  br i1 %132, label %133, label %136, !dbg !1605

; <label>:133:                                    ; preds = %130
  %134 = load i64, i64* %11, align 8, !dbg !1606
  %135 = load i64*, i64** %10, align 8, !dbg !1608
  store i64 %134, i64* %135, align 8, !dbg !1609
  br label %136, !dbg !1610

; <label>:136:                                    ; preds = %133, %130
  %137 = load i32, i32* %13, align 4, !dbg !1611
  ret i32 %137, !dbg !1612
}

declare i64 @writev(i32, %struct.iovec*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @FileIO_Preadv(%struct.FileIODescriptor*, %struct.iovec*, i32, i64, i64, i64*) #3 !dbg !1613 {
  %7 = alloca %struct.FileIODescriptor*, align 8
  %8 = alloca %struct.iovec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  store %struct.FileIODescriptor* %0, %struct.FileIODescriptor** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor** %7, metadata !1614, metadata !370), !dbg !1615
  store %struct.iovec* %1, %struct.iovec** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.iovec** %8, metadata !1616, metadata !370), !dbg !1617
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1618, metadata !370), !dbg !1619
  store i64 %3, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1620, metadata !370), !dbg !1621
  store i64 %4, i64* %11, align 8
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1622, metadata !370), !dbg !1623
  store i64* %5, i64** %12, align 8
  call void @llvm.dbg.declare(metadata i64** %12, metadata !1624, metadata !370), !dbg !1625
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1626, metadata !370), !dbg !1627
  %14 = load i64, i64* %11, align 8, !dbg !1628
  %15 = icmp ult i64 %14, 2147483648, !dbg !1631
  %16 = xor i1 %15, true, !dbg !1632
  %17 = zext i1 %16 to i32, !dbg !1632
  %18 = sext i32 %17 to i64, !dbg !1633
  %19 = icmp ne i64 %18, 0, !dbg !1634
  br i1 %19, label %20, label %21, !dbg !1635

; <label>:20:                                     ; preds = %6
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 2297) #9, !dbg !1636
  unreachable, !dbg !1636

; <label>:21:                                     ; preds = %6
  %22 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %7, align 8, !dbg !1639
  %23 = load %struct.iovec*, %struct.iovec** %8, align 8, !dbg !1640
  %24 = load i32, i32* %9, align 4, !dbg !1641
  %25 = load i64, i64* %10, align 8, !dbg !1642
  %26 = load i64, i64* %11, align 8, !dbg !1643
  %27 = load i64*, i64** %12, align 8, !dbg !1644
  %28 = call i32 @FileIOPreadvInternal(%struct.FileIODescriptor* %22, %struct.iovec* %23, i32 %24, i64 %25, i64 %26, i64* %27), !dbg !1645
  store i32 %28, i32* %13, align 4, !dbg !1646
  %29 = load i32, i32* %13, align 4, !dbg !1647
  ret i32 %29, !dbg !1648
}

; Function Attrs: nounwind uwtable
define internal i32 @FileIOPreadvInternal(%struct.FileIODescriptor*, %struct.iovec*, i32, i64, i64, i64*) #3 !dbg !1649 {
  %7 = alloca %struct.FileIODescriptor*, align 8
  %8 = alloca %struct.iovec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.iovec*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store %struct.FileIODescriptor* %0, %struct.FileIODescriptor** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor** %7, metadata !1650, metadata !370), !dbg !1651
  store %struct.iovec* %1, %struct.iovec** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.iovec** %8, metadata !1652, metadata !370), !dbg !1653
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1654, metadata !370), !dbg !1655
  store i64 %3, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1656, metadata !370), !dbg !1657
  store i64 %4, i64* %11, align 8
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1658, metadata !370), !dbg !1659
  store i64* %5, i64** %12, align 8
  call void @llvm.dbg.declare(metadata i64** %12, metadata !1660, metadata !370), !dbg !1661
  call void @llvm.dbg.declare(metadata %struct.iovec** %13, metadata !1662, metadata !370), !dbg !1663
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1664, metadata !370), !dbg !1665
  call void @llvm.dbg.declare(metadata i64* %15, metadata !1666, metadata !370), !dbg !1667
  store i64 0, i64* %15, align 8, !dbg !1667
  call void @llvm.dbg.declare(metadata i64* %16, metadata !1668, metadata !370), !dbg !1669
  store i64 0, i64* %16, align 8, !dbg !1669
  call void @llvm.dbg.declare(metadata i64* %17, metadata !1670, metadata !370), !dbg !1671
  store i64 0, i64* %17, align 8, !dbg !1671
  call void @llvm.dbg.declare(metadata i32* %18, metadata !1672, metadata !370), !dbg !1673
  store i32 0, i32* %18, align 4, !dbg !1673
  call void @llvm.dbg.declare(metadata i32* %19, metadata !1674, metadata !370), !dbg !1675
  %25 = load i32, i32* %9, align 4, !dbg !1676
  store i32 %25, i32* %19, align 4, !dbg !1675
  call void @llvm.dbg.declare(metadata i32* %20, metadata !1677, metadata !370), !dbg !1678
  store i32 2, i32* %20, align 4, !dbg !1678
  call void @FileIO_OptionalSafeInitialize(), !dbg !1679
  %26 = load i32, i32* %9, align 4, !dbg !1680
  store i32 %26, i32* %14, align 4, !dbg !1681
  %27 = load %struct.iovec*, %struct.iovec** %8, align 8, !dbg !1682
  store %struct.iovec* %27, %struct.iovec** %13, align 8, !dbg !1683
  br label %28, !dbg !1684

; <label>:28:                                     ; preds = %137, %67, %6
  %29 = load i32, i32* %18, align 4, !dbg !1685
  %30 = load i32, i32* %19, align 4, !dbg !1687
  %31 = icmp slt i32 %29, %30, !dbg !1688
  br i1 %31, label %32, label %138, !dbg !1689

; <label>:32:                                     ; preds = %28
  call void @llvm.dbg.declare(metadata i64* %21, metadata !1690, metadata !370), !dbg !1692
  store i64 0, i64* %21, align 8, !dbg !1692
  br i1 icmp eq (i64 (i32, %struct.iovec*, i32, i64)* @preadv64, i64 (i32, %struct.iovec*, i32, i64)* null), label %33, label %40, !dbg !1693

; <label>:33:                                     ; preds = %32
  %34 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %7, align 8, !dbg !1694
  %35 = load %struct.iovec*, %struct.iovec** %8, align 8, !dbg !1697
  %36 = load i32, i32* %9, align 4, !dbg !1698
  %37 = load i64, i64* %10, align 8, !dbg !1699
  %38 = load i64, i64* %11, align 8, !dbg !1700
  %39 = call i32 @FileIOPreadvCoalesced(%struct.FileIODescriptor* %34, %struct.iovec* %35, i32 %36, i64 %37, i64 %38, i64* %16), !dbg !1701
  store i32 %39, i32* %20, align 4, !dbg !1702
  br label %138, !dbg !1703

; <label>:40:                                     ; preds = %32
  call void @llvm.dbg.declare(metadata i32* %22, metadata !1704, metadata !370), !dbg !1706
  %41 = load i64, i64* getelementptr inbounds (%struct.FilePosixOptions, %struct.FilePosixOptions* @filePosixOptions, i32 0, i32 6), align 8, !dbg !1707
  %42 = load i32, i32* %14, align 4, !dbg !1708
  %43 = sext i32 %42 to i64, !dbg !1709
  %44 = icmp slt i64 %41, %43, !dbg !1710
  br i1 %44, label %45, label %47, !dbg !1711

; <label>:45:                                     ; preds = %40
  %46 = load i64, i64* getelementptr inbounds (%struct.FilePosixOptions, %struct.FilePosixOptions* @filePosixOptions, i32 0, i32 6), align 8, !dbg !1712
  br label %50, !dbg !1714

; <label>:47:                                     ; preds = %40
  %48 = load i32, i32* %14, align 4, !dbg !1715
  %49 = sext i32 %48 to i64, !dbg !1717
  br label %50, !dbg !1718

; <label>:50:                                     ; preds = %47, %45
  %51 = phi i64 [ %46, %45 ], [ %49, %47 ], !dbg !1719
  %52 = trunc i64 %51 to i32, !dbg !1721
  store i32 %52, i32* %22, align 4, !dbg !1722
  %53 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %7, align 8, !dbg !1723
  %54 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %53, i32 0, i32 0, !dbg !1724
  %55 = load i32, i32* %54, align 8, !dbg !1724
  %56 = load %struct.iovec*, %struct.iovec** %13, align 8, !dbg !1725
  %57 = load i32, i32* %22, align 4, !dbg !1726
  %58 = load i64, i64* %10, align 8, !dbg !1727
  %59 = call i64 @preadv64(i32 %55, %struct.iovec* %56, i32 %57, i64 %58), !dbg !1728
  store i64 %59, i64* %21, align 8, !dbg !1729
  br label %60

; <label>:60:                                     ; preds = %50
  %61 = load i64, i64* %21, align 8, !dbg !1730
  %62 = icmp eq i64 %61, -1, !dbg !1732
  br i1 %62, label %63, label %97, !dbg !1733

; <label>:63:                                     ; preds = %60
  %64 = call i32* @__errno_location() #4, !dbg !1734
  %65 = load i32, i32* %64, align 4, !dbg !1737
  %66 = icmp eq i32 %65, 4, !dbg !1738
  br i1 %66, label %67, label %68, !dbg !1739

; <label>:67:                                     ; preds = %63
  br label %28, !dbg !1740, !llvm.loop !1742

; <label>:68:                                     ; preds = %63
  %69 = call i32* @__errno_location() #4, !dbg !1743
  %70 = load i32, i32* %69, align 4, !dbg !1745
  %71 = icmp eq i32 %70, 38, !dbg !1746
  br i1 %71, label %80, label %72, !dbg !1747

; <label>:72:                                     ; preds = %68
  %73 = call i32* @__errno_location() #4, !dbg !1748
  %74 = load i32, i32* %73, align 4, !dbg !1750
  %75 = icmp eq i32 %74, 22, !dbg !1751
  br i1 %75, label %80, label %76, !dbg !1752

; <label>:76:                                     ; preds = %72
  %77 = call i32* @__errno_location() #4, !dbg !1753
  %78 = load i32, i32* %77, align 4, !dbg !1755
  %79 = icmp eq i32 %78, 12, !dbg !1756
  br i1 %79, label %80, label %93, !dbg !1757

; <label>:80:                                     ; preds = %76, %72, %68
  call void @llvm.dbg.declare(metadata i64* %23, metadata !1758, metadata !370), !dbg !1760
  %81 = load i64, i64* %11, align 8, !dbg !1761
  %82 = load i64, i64* %16, align 8, !dbg !1762
  %83 = sub i64 %81, %82, !dbg !1763
  store i64 %83, i64* %23, align 8, !dbg !1760
  call void @llvm.dbg.declare(metadata i64* %24, metadata !1764, metadata !370), !dbg !1765
  %84 = load i64, i64* %10, align 8, !dbg !1766
  %85 = load i64, i64* %16, align 8, !dbg !1767
  %86 = add i64 %84, %85, !dbg !1768
  store i64 %86, i64* %24, align 8, !dbg !1765
  store i64 0, i64* %15, align 8, !dbg !1769
  %87 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %7, align 8, !dbg !1770
  %88 = load %struct.iovec*, %struct.iovec** %13, align 8, !dbg !1771
  %89 = load i32, i32* %14, align 4, !dbg !1772
  %90 = load i64, i64* %24, align 8, !dbg !1773
  %91 = load i64, i64* %23, align 8, !dbg !1774
  %92 = call i32 @FileIOPreadvCoalesced(%struct.FileIODescriptor* %87, %struct.iovec* %88, i32 %89, i64 %90, i64 %91, i64* %15), !dbg !1775
  store i32 %92, i32* %20, align 4, !dbg !1776
  br label %138, !dbg !1777

; <label>:93:                                     ; preds = %76
  %94 = call i32* @__errno_location() #4, !dbg !1778
  %95 = load i32, i32* %94, align 4, !dbg !1779
  %96 = call i32 @FileIOErrno2Result(i32 %95), !dbg !1780
  store i32 %96, i32* %20, align 4, !dbg !1782
  br label %138, !dbg !1783

; <label>:97:                                     ; preds = %60
  %98 = load i64, i64* %21, align 8, !dbg !1784
  %99 = load i64, i64* %16, align 8, !dbg !1785
  %100 = add i64 %99, %98, !dbg !1785
  store i64 %100, i64* %16, align 8, !dbg !1785
  %101 = load i64, i64* %16, align 8, !dbg !1786
  %102 = load i64, i64* %11, align 8, !dbg !1788
  %103 = icmp eq i64 %101, %102, !dbg !1789
  br i1 %103, label %104, label %105, !dbg !1790

; <label>:104:                                    ; preds = %97
  store i32 0, i32* %20, align 4, !dbg !1791
  br label %138, !dbg !1793

; <label>:105:                                    ; preds = %97
  %106 = load i64, i64* %21, align 8, !dbg !1794
  %107 = icmp eq i64 %106, 0, !dbg !1796
  br i1 %107, label %108, label %109, !dbg !1797

; <label>:108:                                    ; preds = %105
  store i32 5, i32* %20, align 4, !dbg !1798
  br label %138, !dbg !1800

; <label>:109:                                    ; preds = %105
  br label %110, !dbg !1801

; <label>:110:                                    ; preds = %127, %109
  %111 = load i64, i64* %17, align 8, !dbg !1802
  %112 = load i64, i64* %16, align 8, !dbg !1806
  %113 = icmp ult i64 %111, %112, !dbg !1807
  br i1 %113, label %114, label %132, !dbg !1808

; <label>:114:                                    ; preds = %110
  %115 = load %struct.iovec*, %struct.iovec** %13, align 8, !dbg !1809
  %116 = getelementptr inbounds %struct.iovec, %struct.iovec* %115, i32 0, i32 1, !dbg !1811
  %117 = load i64, i64* %116, align 8, !dbg !1811
  %118 = load i64, i64* %17, align 8, !dbg !1812
  %119 = add i64 %118, %117, !dbg !1812
  store i64 %119, i64* %17, align 8, !dbg !1812
  %120 = load %struct.iovec*, %struct.iovec** %13, align 8, !dbg !1813
  %121 = getelementptr inbounds %struct.iovec, %struct.iovec* %120, i32 0, i32 1, !dbg !1814
  %122 = load i64, i64* %121, align 8, !dbg !1814
  %123 = load i64, i64* %10, align 8, !dbg !1815
  %124 = add i64 %123, %122, !dbg !1815
  store i64 %124, i64* %10, align 8, !dbg !1815
  %125 = load i32, i32* %18, align 4, !dbg !1816
  %126 = add nsw i32 %125, 1, !dbg !1816
  store i32 %126, i32* %18, align 4, !dbg !1816
  br label %127, !dbg !1817

; <label>:127:                                    ; preds = %114
  %128 = load %struct.iovec*, %struct.iovec** %13, align 8, !dbg !1818
  %129 = getelementptr inbounds %struct.iovec, %struct.iovec* %128, i32 1, !dbg !1818
  store %struct.iovec* %129, %struct.iovec** %13, align 8, !dbg !1818
  %130 = load i32, i32* %14, align 4, !dbg !1820
  %131 = add nsw i32 %130, -1, !dbg !1820
  store i32 %131, i32* %14, align 4, !dbg !1820
  br label %110, !dbg !1821, !llvm.loop !1822

; <label>:132:                                    ; preds = %110
  %133 = load i64, i64* %17, align 8, !dbg !1823
  %134 = load i64, i64* %16, align 8, !dbg !1825
  %135 = icmp ugt i64 %133, %134, !dbg !1826
  br i1 %135, label %136, label %137, !dbg !1827

; <label>:136:                                    ; preds = %132
  store i32 5, i32* %20, align 4, !dbg !1828
  br label %138, !dbg !1830

; <label>:137:                                    ; preds = %132
  br label %28, !dbg !1831, !llvm.loop !1742

; <label>:138:                                    ; preds = %136, %108, %104, %93, %80, %33, %28
  %139 = load i64*, i64** %12, align 8, !dbg !1833
  %140 = icmp ne i64* %139, null, !dbg !1833
  br i1 %140, label %141, label %146, !dbg !1835

; <label>:141:                                    ; preds = %138
  %142 = load i64, i64* %16, align 8, !dbg !1836
  %143 = load i64, i64* %15, align 8, !dbg !1838
  %144 = add i64 %142, %143, !dbg !1839
  %145 = load i64*, i64** %12, align 8, !dbg !1840
  store i64 %144, i64* %145, align 8, !dbg !1841
  br label %146, !dbg !1842

; <label>:146:                                    ; preds = %141, %138
  %147 = load i32, i32* %20, align 4, !dbg !1843
  ret i32 %147, !dbg !1844
}

; Function Attrs: nounwind uwtable
define i32 @FileIO_Pwritev(%struct.FileIODescriptor*, %struct.iovec*, i32, i64, i64, i64*) #3 !dbg !1845 {
  %7 = alloca %struct.FileIODescriptor*, align 8
  %8 = alloca %struct.iovec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  store %struct.FileIODescriptor* %0, %struct.FileIODescriptor** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor** %7, metadata !1846, metadata !370), !dbg !1847
  store %struct.iovec* %1, %struct.iovec** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.iovec** %8, metadata !1848, metadata !370), !dbg !1849
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1850, metadata !370), !dbg !1851
  store i64 %3, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1852, metadata !370), !dbg !1853
  store i64 %4, i64* %11, align 8
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1854, metadata !370), !dbg !1855
  store i64* %5, i64** %12, align 8
  call void @llvm.dbg.declare(metadata i64** %12, metadata !1856, metadata !370), !dbg !1857
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1858, metadata !370), !dbg !1859
  %14 = load i64, i64* %11, align 8, !dbg !1860
  %15 = icmp ult i64 %14, 2147483648, !dbg !1863
  %16 = xor i1 %15, true, !dbg !1864
  %17 = zext i1 %16 to i32, !dbg !1864
  %18 = sext i32 %17 to i64, !dbg !1865
  %19 = icmp ne i64 %18, 0, !dbg !1866
  br i1 %19, label %20, label %21, !dbg !1867

; <label>:20:                                     ; preds = %6
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 2343) #9, !dbg !1868
  unreachable, !dbg !1868

; <label>:21:                                     ; preds = %6
  %22 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %7, align 8, !dbg !1871
  %23 = load %struct.iovec*, %struct.iovec** %8, align 8, !dbg !1872
  %24 = load i32, i32* %9, align 4, !dbg !1873
  %25 = load i64, i64* %10, align 8, !dbg !1874
  %26 = load i64, i64* %11, align 8, !dbg !1875
  %27 = load i64*, i64** %12, align 8, !dbg !1876
  %28 = call i32 @FileIOPwritevInternal(%struct.FileIODescriptor* %22, %struct.iovec* %23, i32 %24, i64 %25, i64 %26, i64* %27), !dbg !1877
  store i32 %28, i32* %13, align 4, !dbg !1878
  %29 = load i32, i32* %13, align 4, !dbg !1879
  ret i32 %29, !dbg !1880
}

; Function Attrs: nounwind uwtable
define internal i32 @FileIOPwritevInternal(%struct.FileIODescriptor*, %struct.iovec*, i32, i64, i64, i64*) #3 !dbg !1881 {
  %7 = alloca %struct.FileIODescriptor*, align 8
  %8 = alloca %struct.iovec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.iovec*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store %struct.FileIODescriptor* %0, %struct.FileIODescriptor** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor** %7, metadata !1882, metadata !370), !dbg !1883
  store %struct.iovec* %1, %struct.iovec** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.iovec** %8, metadata !1884, metadata !370), !dbg !1885
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1886, metadata !370), !dbg !1887
  store i64 %3, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1888, metadata !370), !dbg !1889
  store i64 %4, i64* %11, align 8
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1890, metadata !370), !dbg !1891
  store i64* %5, i64** %12, align 8
  call void @llvm.dbg.declare(metadata i64** %12, metadata !1892, metadata !370), !dbg !1893
  call void @llvm.dbg.declare(metadata %struct.iovec** %13, metadata !1894, metadata !370), !dbg !1895
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1896, metadata !370), !dbg !1897
  call void @llvm.dbg.declare(metadata i64* %15, metadata !1898, metadata !370), !dbg !1899
  store i64 0, i64* %15, align 8, !dbg !1899
  call void @llvm.dbg.declare(metadata i64* %16, metadata !1900, metadata !370), !dbg !1901
  store i64 0, i64* %16, align 8, !dbg !1901
  call void @llvm.dbg.declare(metadata i64* %17, metadata !1902, metadata !370), !dbg !1903
  store i64 0, i64* %17, align 8, !dbg !1903
  call void @llvm.dbg.declare(metadata i32* %18, metadata !1904, metadata !370), !dbg !1905
  store i32 0, i32* %18, align 4, !dbg !1905
  call void @llvm.dbg.declare(metadata i32* %19, metadata !1906, metadata !370), !dbg !1907
  %25 = load i32, i32* %9, align 4, !dbg !1908
  store i32 %25, i32* %19, align 4, !dbg !1907
  call void @llvm.dbg.declare(metadata i32* %20, metadata !1909, metadata !370), !dbg !1910
  store i32 2, i32* %20, align 4, !dbg !1910
  call void @FileIO_OptionalSafeInitialize(), !dbg !1911
  %26 = load i32, i32* %9, align 4, !dbg !1912
  store i32 %26, i32* %14, align 4, !dbg !1913
  %27 = load %struct.iovec*, %struct.iovec** %8, align 8, !dbg !1914
  store %struct.iovec* %27, %struct.iovec** %13, align 8, !dbg !1915
  br label %28, !dbg !1916

; <label>:28:                                     ; preds = %133, %67, %6
  %29 = load i32, i32* %18, align 4, !dbg !1917
  %30 = load i32, i32* %19, align 4, !dbg !1919
  %31 = icmp slt i32 %29, %30, !dbg !1920
  br i1 %31, label %32, label %134, !dbg !1921

; <label>:32:                                     ; preds = %28
  call void @llvm.dbg.declare(metadata i64* %21, metadata !1922, metadata !370), !dbg !1924
  store i64 0, i64* %21, align 8, !dbg !1924
  br i1 icmp eq (i64 (i32, %struct.iovec*, i32, i64)* @pwritev64, i64 (i32, %struct.iovec*, i32, i64)* null), label %33, label %40, !dbg !1925

; <label>:33:                                     ; preds = %32
  %34 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %7, align 8, !dbg !1926
  %35 = load %struct.iovec*, %struct.iovec** %8, align 8, !dbg !1929
  %36 = load i32, i32* %9, align 4, !dbg !1930
  %37 = load i64, i64* %10, align 8, !dbg !1931
  %38 = load i64, i64* %11, align 8, !dbg !1932
  %39 = call i32 @FileIOPwritevCoalesced(%struct.FileIODescriptor* %34, %struct.iovec* %35, i32 %36, i64 %37, i64 %38, i64* %16), !dbg !1933
  store i32 %39, i32* %20, align 4, !dbg !1934
  br label %134, !dbg !1935

; <label>:40:                                     ; preds = %32
  call void @llvm.dbg.declare(metadata i32* %22, metadata !1936, metadata !370), !dbg !1938
  %41 = load i64, i64* getelementptr inbounds (%struct.FilePosixOptions, %struct.FilePosixOptions* @filePosixOptions, i32 0, i32 6), align 8, !dbg !1939
  %42 = load i32, i32* %14, align 4, !dbg !1940
  %43 = sext i32 %42 to i64, !dbg !1941
  %44 = icmp slt i64 %41, %43, !dbg !1942
  br i1 %44, label %45, label %47, !dbg !1943

; <label>:45:                                     ; preds = %40
  %46 = load i64, i64* getelementptr inbounds (%struct.FilePosixOptions, %struct.FilePosixOptions* @filePosixOptions, i32 0, i32 6), align 8, !dbg !1944
  br label %50, !dbg !1946

; <label>:47:                                     ; preds = %40
  %48 = load i32, i32* %14, align 4, !dbg !1947
  %49 = sext i32 %48 to i64, !dbg !1949
  br label %50, !dbg !1950

; <label>:50:                                     ; preds = %47, %45
  %51 = phi i64 [ %46, %45 ], [ %49, %47 ], !dbg !1951
  %52 = trunc i64 %51 to i32, !dbg !1953
  store i32 %52, i32* %22, align 4, !dbg !1954
  %53 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %7, align 8, !dbg !1955
  %54 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %53, i32 0, i32 0, !dbg !1956
  %55 = load i32, i32* %54, align 8, !dbg !1956
  %56 = load %struct.iovec*, %struct.iovec** %13, align 8, !dbg !1957
  %57 = load i32, i32* %22, align 4, !dbg !1958
  %58 = load i64, i64* %10, align 8, !dbg !1959
  %59 = call i64 @pwritev64(i32 %55, %struct.iovec* %56, i32 %57, i64 %58), !dbg !1960
  store i64 %59, i64* %21, align 8, !dbg !1961
  br label %60

; <label>:60:                                     ; preds = %50
  %61 = load i64, i64* %21, align 8, !dbg !1962
  %62 = icmp eq i64 %61, -1, !dbg !1964
  br i1 %62, label %63, label %97, !dbg !1965

; <label>:63:                                     ; preds = %60
  %64 = call i32* @__errno_location() #4, !dbg !1966
  %65 = load i32, i32* %64, align 4, !dbg !1969
  %66 = icmp eq i32 %65, 4, !dbg !1970
  br i1 %66, label %67, label %68, !dbg !1971

; <label>:67:                                     ; preds = %63
  br label %28, !dbg !1972, !llvm.loop !1974

; <label>:68:                                     ; preds = %63
  %69 = call i32* @__errno_location() #4, !dbg !1975
  %70 = load i32, i32* %69, align 4, !dbg !1977
  %71 = icmp eq i32 %70, 38, !dbg !1978
  br i1 %71, label %80, label %72, !dbg !1979

; <label>:72:                                     ; preds = %68
  %73 = call i32* @__errno_location() #4, !dbg !1980
  %74 = load i32, i32* %73, align 4, !dbg !1982
  %75 = icmp eq i32 %74, 22, !dbg !1983
  br i1 %75, label %80, label %76, !dbg !1984

; <label>:76:                                     ; preds = %72
  %77 = call i32* @__errno_location() #4, !dbg !1985
  %78 = load i32, i32* %77, align 4, !dbg !1987
  %79 = icmp eq i32 %78, 12, !dbg !1988
  br i1 %79, label %80, label %93, !dbg !1989

; <label>:80:                                     ; preds = %76, %72, %68
  call void @llvm.dbg.declare(metadata i64* %23, metadata !1990, metadata !370), !dbg !1992
  %81 = load i64, i64* %11, align 8, !dbg !1993
  %82 = load i64, i64* %16, align 8, !dbg !1994
  %83 = sub i64 %81, %82, !dbg !1995
  store i64 %83, i64* %23, align 8, !dbg !1992
  call void @llvm.dbg.declare(metadata i64* %24, metadata !1996, metadata !370), !dbg !1997
  %84 = load i64, i64* %10, align 8, !dbg !1998
  %85 = load i64, i64* %16, align 8, !dbg !1999
  %86 = add i64 %84, %85, !dbg !2000
  store i64 %86, i64* %24, align 8, !dbg !1997
  store i64 0, i64* %15, align 8, !dbg !2001
  %87 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %7, align 8, !dbg !2002
  %88 = load %struct.iovec*, %struct.iovec** %13, align 8, !dbg !2003
  %89 = load i32, i32* %14, align 4, !dbg !2004
  %90 = load i64, i64* %24, align 8, !dbg !2005
  %91 = load i64, i64* %23, align 8, !dbg !2006
  %92 = call i32 @FileIOPwritevCoalesced(%struct.FileIODescriptor* %87, %struct.iovec* %88, i32 %89, i64 %90, i64 %91, i64* %15), !dbg !2007
  store i32 %92, i32* %20, align 4, !dbg !2008
  br label %134, !dbg !2009

; <label>:93:                                     ; preds = %76
  %94 = call i32* @__errno_location() #4, !dbg !2010
  %95 = load i32, i32* %94, align 4, !dbg !2011
  %96 = call i32 @FileIOErrno2Result(i32 %95), !dbg !2012
  store i32 %96, i32* %20, align 4, !dbg !2014
  br label %134, !dbg !2015

; <label>:97:                                     ; preds = %60
  %98 = load i64, i64* %21, align 8, !dbg !2016
  %99 = load i64, i64* %16, align 8, !dbg !2017
  %100 = add i64 %99, %98, !dbg !2017
  store i64 %100, i64* %16, align 8, !dbg !2017
  %101 = load i64, i64* %16, align 8, !dbg !2018
  %102 = load i64, i64* %11, align 8, !dbg !2020
  %103 = icmp eq i64 %101, %102, !dbg !2021
  br i1 %103, label %104, label %105, !dbg !2022

; <label>:104:                                    ; preds = %97
  store i32 0, i32* %20, align 4, !dbg !2023
  br label %134, !dbg !2025

; <label>:105:                                    ; preds = %97
  br label %106, !dbg !2026

; <label>:106:                                    ; preds = %123, %105
  %107 = load i64, i64* %17, align 8, !dbg !2027
  %108 = load i64, i64* %16, align 8, !dbg !2031
  %109 = icmp ult i64 %107, %108, !dbg !2032
  br i1 %109, label %110, label %128, !dbg !2033

; <label>:110:                                    ; preds = %106
  %111 = load %struct.iovec*, %struct.iovec** %13, align 8, !dbg !2034
  %112 = getelementptr inbounds %struct.iovec, %struct.iovec* %111, i32 0, i32 1, !dbg !2036
  %113 = load i64, i64* %112, align 8, !dbg !2036
  %114 = load i64, i64* %17, align 8, !dbg !2037
  %115 = add i64 %114, %113, !dbg !2037
  store i64 %115, i64* %17, align 8, !dbg !2037
  %116 = load %struct.iovec*, %struct.iovec** %13, align 8, !dbg !2038
  %117 = getelementptr inbounds %struct.iovec, %struct.iovec* %116, i32 0, i32 1, !dbg !2039
  %118 = load i64, i64* %117, align 8, !dbg !2039
  %119 = load i64, i64* %10, align 8, !dbg !2040
  %120 = add i64 %119, %118, !dbg !2040
  store i64 %120, i64* %10, align 8, !dbg !2040
  %121 = load i32, i32* %18, align 4, !dbg !2041
  %122 = add nsw i32 %121, 1, !dbg !2041
  store i32 %122, i32* %18, align 4, !dbg !2041
  br label %123, !dbg !2042

; <label>:123:                                    ; preds = %110
  %124 = load %struct.iovec*, %struct.iovec** %13, align 8, !dbg !2043
  %125 = getelementptr inbounds %struct.iovec, %struct.iovec* %124, i32 1, !dbg !2043
  store %struct.iovec* %125, %struct.iovec** %13, align 8, !dbg !2043
  %126 = load i32, i32* %14, align 4, !dbg !2045
  %127 = add nsw i32 %126, -1, !dbg !2045
  store i32 %127, i32* %14, align 4, !dbg !2045
  br label %106, !dbg !2046, !llvm.loop !2047

; <label>:128:                                    ; preds = %106
  %129 = load i64, i64* %17, align 8, !dbg !2048
  %130 = load i64, i64* %16, align 8, !dbg !2050
  %131 = icmp ne i64 %129, %130, !dbg !2051
  br i1 %131, label %132, label %133, !dbg !2052

; <label>:132:                                    ; preds = %128
  store i32 10, i32* %20, align 4, !dbg !2053
  br label %134, !dbg !2055

; <label>:133:                                    ; preds = %128
  br label %28, !dbg !2056, !llvm.loop !1974

; <label>:134:                                    ; preds = %132, %104, %93, %80, %33, %28
  %135 = load i64*, i64** %12, align 8, !dbg !2058
  %136 = icmp ne i64* %135, null, !dbg !2058
  br i1 %136, label %137, label %142, !dbg !2060

; <label>:137:                                    ; preds = %134
  %138 = load i64, i64* %16, align 8, !dbg !2061
  %139 = load i64, i64* %15, align 8, !dbg !2063
  %140 = add i64 %138, %139, !dbg !2064
  %141 = load i64*, i64** %12, align 8, !dbg !2065
  store i64 %140, i64* %141, align 8, !dbg !2066
  br label %142, !dbg !2067

; <label>:142:                                    ; preds = %137, %134
  %143 = load i32, i32* %20, align 4, !dbg !2068
  ret i32 %143, !dbg !2069
}

; Function Attrs: nounwind uwtable
define i32 @FileIO_GetAllocSize(%struct.FileIODescriptor*, i64*, i64*) #3 !dbg !2070 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.FileIODescriptor*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.stat, align 8
  store %struct.FileIODescriptor* %0, %struct.FileIODescriptor** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor** %5, metadata !2074, metadata !370), !dbg !2075
  store i64* %1, i64** %6, align 8
  call void @llvm.dbg.declare(metadata i64** %6, metadata !2076, metadata !370), !dbg !2077
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !2078, metadata !370), !dbg !2079
  call void @llvm.dbg.declare(metadata %struct.stat* %8, metadata !2080, metadata !370), !dbg !2115
  %9 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %5, align 8, !dbg !2116
  %10 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %9, i32 0, i32 0, !dbg !2118
  %11 = load i32, i32* %10, align 8, !dbg !2118
  %12 = call i32 @fstat64(i32 %11, %struct.stat* %8) #8, !dbg !2119
  %13 = icmp eq i32 %12, -1, !dbg !2120
  br i1 %13, label %14, label %18, !dbg !2121

; <label>:14:                                     ; preds = %3
  %15 = call i32* @__errno_location() #4, !dbg !2122
  %16 = load i32, i32* %15, align 4, !dbg !2124
  %17 = call i32 @FileIOErrno2Result(i32 %16), !dbg !2125
  store i32 %17, i32* %4, align 4, !dbg !2127
  br label %34, !dbg !2127

; <label>:18:                                     ; preds = %3
  %19 = load i64*, i64** %6, align 8, !dbg !2128
  %20 = icmp ne i64* %19, null, !dbg !2128
  br i1 %20, label %21, label %25, !dbg !2130

; <label>:21:                                     ; preds = %18
  %22 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 8, !dbg !2131
  %23 = load i64, i64* %22, align 8, !dbg !2131
  %24 = load i64*, i64** %6, align 8, !dbg !2133
  store i64 %23, i64* %24, align 8, !dbg !2134
  br label %25, !dbg !2135

; <label>:25:                                     ; preds = %21, %18
  %26 = load i64*, i64** %7, align 8, !dbg !2136
  %27 = icmp ne i64* %26, null, !dbg !2136
  br i1 %27, label %28, label %33, !dbg !2138

; <label>:28:                                     ; preds = %25
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 10, !dbg !2139
  %30 = load i64, i64* %29, align 8, !dbg !2139
  %31 = mul nsw i64 %30, 512, !dbg !2141
  %32 = load i64*, i64** %7, align 8, !dbg !2142
  store i64 %31, i64* %32, align 8, !dbg !2143
  br label %33, !dbg !2144

; <label>:33:                                     ; preds = %28, %25
  store i32 0, i32* %4, align 4, !dbg !2145
  br label %34, !dbg !2145

; <label>:34:                                     ; preds = %33, %14
  %35 = load i32, i32* %4, align 4, !dbg !2146
  ret i32 %35, !dbg !2146
}

; Function Attrs: nounwind
declare i32 @fstat64(i32, %struct.stat*) #2

; Function Attrs: nounwind uwtable
define signext i8 @FileIO_SetAllocSize(%struct.FileIODescriptor*, i64) #3 !dbg !2147 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.FileIODescriptor*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.FileIODescriptor* %0, %struct.FileIODescriptor** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor** %4, metadata !2150, metadata !370), !dbg !2151
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2152, metadata !370), !dbg !2153
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2154, metadata !370), !dbg !2155
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2156, metadata !370), !dbg !2157
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2158, metadata !370), !dbg !2159
  %9 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %4, align 8, !dbg !2160
  %10 = call i32 @FileIO_GetAllocSize(%struct.FileIODescriptor* %9, i64* null, i64* %7), !dbg !2161
  store i32 %10, i32* %6, align 4, !dbg !2162
  %11 = load i32, i32* %6, align 4, !dbg !2163
  %12 = call signext i8 @FileIO_IsSuccess(i32 %11), !dbg !2165
  %13 = icmp ne i8 %12, 0, !dbg !2165
  br i1 %13, label %15, label %14, !dbg !2166

; <label>:14:                                     ; preds = %2
  store i8 0, i8* %3, align 1, !dbg !2167
  br label %34, !dbg !2167

; <label>:15:                                     ; preds = %2
  %16 = load i64, i64* %7, align 8, !dbg !2169
  %17 = load i64, i64* %5, align 8, !dbg !2171
  %18 = icmp ugt i64 %16, %17, !dbg !2172
  br i1 %18, label %19, label %21, !dbg !2173

; <label>:19:                                     ; preds = %15
  %20 = call i32* @__errno_location() #4, !dbg !2174
  store i32 22, i32* %20, align 4, !dbg !2176
  store i8 0, i8* %3, align 1, !dbg !2177
  br label %34, !dbg !2177

; <label>:21:                                     ; preds = %15
  %22 = load i64, i64* %5, align 8, !dbg !2178
  %23 = load i64, i64* %7, align 8, !dbg !2179
  %24 = sub i64 %22, %23, !dbg !2180
  store i64 %24, i64* %8, align 8, !dbg !2181
  %25 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %4, align 8, !dbg !2182
  %26 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %25, i32 0, i32 0, !dbg !2183
  %27 = load i32, i32* %26, align 8, !dbg !2183
  %28 = load i64, i64* %7, align 8, !dbg !2184
  %29 = load i64, i64* %8, align 8, !dbg !2185
  %30 = call i64 (i64, ...) @syscall(i64 285, i32 %27, i32 1, i64 %28, i64 %29) #8, !dbg !2186
  %31 = icmp eq i64 %30, 0, !dbg !2187
  %32 = zext i1 %31 to i32, !dbg !2187
  %33 = trunc i32 %32 to i8, !dbg !2186
  store i8 %33, i8* %3, align 1, !dbg !2188
  br label %34, !dbg !2188

; <label>:34:                                     ; preds = %21, %19, %14
  %35 = load i8, i8* %3, align 1, !dbg !2189
  ret i8 %35, !dbg !2189
}

; Function Attrs: nounwind
declare i64 @syscall(i64, ...) #2

; Function Attrs: nounwind uwtable
define i32 @FileIO_GetAllocSizeByPath(i8*, i64*, i64*) #3 !dbg !2190 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.stat, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2193, metadata !370), !dbg !2194
  store i64* %1, i64** %6, align 8
  call void @llvm.dbg.declare(metadata i64** %6, metadata !2195, metadata !370), !dbg !2196
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !2197, metadata !370), !dbg !2198
  call void @llvm.dbg.declare(metadata %struct.stat* %8, metadata !2199, metadata !370), !dbg !2200
  %9 = load i8*, i8** %5, align 8, !dbg !2201
  %10 = call i32 @Posix_Stat(i8* %9, %struct.stat* %8), !dbg !2203
  %11 = icmp eq i32 %10, -1, !dbg !2204
  br i1 %11, label %12, label %16, !dbg !2205

; <label>:12:                                     ; preds = %3
  %13 = call i32* @__errno_location() #4, !dbg !2206
  %14 = load i32, i32* %13, align 4, !dbg !2208
  %15 = call i32 @FileIOErrno2Result(i32 %14), !dbg !2209
  store i32 %15, i32* %4, align 4, !dbg !2211
  br label %32, !dbg !2211

; <label>:16:                                     ; preds = %3
  %17 = load i64*, i64** %6, align 8, !dbg !2212
  %18 = icmp ne i64* %17, null, !dbg !2212
  br i1 %18, label %19, label %23, !dbg !2214

; <label>:19:                                     ; preds = %16
  %20 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 8, !dbg !2215
  %21 = load i64, i64* %20, align 8, !dbg !2215
  %22 = load i64*, i64** %6, align 8, !dbg !2217
  store i64 %21, i64* %22, align 8, !dbg !2218
  br label %23, !dbg !2219

; <label>:23:                                     ; preds = %19, %16
  %24 = load i64*, i64** %7, align 8, !dbg !2220
  %25 = icmp ne i64* %24, null, !dbg !2220
  br i1 %25, label %26, label %31, !dbg !2222

; <label>:26:                                     ; preds = %23
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 10, !dbg !2223
  %28 = load i64, i64* %27, align 8, !dbg !2223
  %29 = mul nsw i64 %28, 512, !dbg !2225
  %30 = load i64*, i64** %7, align 8, !dbg !2226
  store i64 %29, i64* %30, align 8, !dbg !2227
  br label %31, !dbg !2228

; <label>:31:                                     ; preds = %26, %23
  store i32 0, i32* %4, align 4, !dbg !2229
  br label %32, !dbg !2229

; <label>:32:                                     ; preds = %31, %12
  %33 = load i32, i32* %4, align 4, !dbg !2230
  ret i32 %33, !dbg !2230
}

declare i32 @Posix_Stat(i8*, %struct.stat*) #1

; Function Attrs: nounwind uwtable
define i32 @FileIO_Access(i8*, i32) #3 !dbg !2231 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2234, metadata !370), !dbg !2235
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2236, metadata !370), !dbg !2237
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2238, metadata !370), !dbg !2239
  store i32 0, i32* %6, align 4, !dbg !2239
  %7 = load i8*, i8** %4, align 8, !dbg !2240
  %8 = icmp eq i8* %7, null, !dbg !2242
  br i1 %8, label %9, label %11, !dbg !2243

; <label>:9:                                      ; preds = %2
  %10 = call i32* @__errno_location() #4, !dbg !2244
  store i32 14, i32* %10, align 4, !dbg !2246
  store i32 2, i32* %3, align 4, !dbg !2247
  br label %44, !dbg !2247

; <label>:11:                                     ; preds = %2
  %12 = load i32, i32* %5, align 4, !dbg !2248
  %13 = and i32 %12, 1, !dbg !2250
  %14 = icmp ne i32 %13, 0, !dbg !2250
  br i1 %14, label %15, label %18, !dbg !2251

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* %6, align 4, !dbg !2252
  %17 = or i32 %16, 4, !dbg !2252
  store i32 %17, i32* %6, align 4, !dbg !2252
  br label %18, !dbg !2254

; <label>:18:                                     ; preds = %15, %11
  %19 = load i32, i32* %5, align 4, !dbg !2255
  %20 = and i32 %19, 2, !dbg !2257
  %21 = icmp ne i32 %20, 0, !dbg !2257
  br i1 %21, label %22, label %25, !dbg !2258

; <label>:22:                                     ; preds = %18
  %23 = load i32, i32* %6, align 4, !dbg !2259
  %24 = or i32 %23, 2, !dbg !2259
  store i32 %24, i32* %6, align 4, !dbg !2259
  br label %25, !dbg !2261

; <label>:25:                                     ; preds = %22, %18
  %26 = load i32, i32* %5, align 4, !dbg !2262
  %27 = and i32 %26, 4, !dbg !2264
  %28 = icmp ne i32 %27, 0, !dbg !2264
  br i1 %28, label %29, label %32, !dbg !2265

; <label>:29:                                     ; preds = %25
  %30 = load i32, i32* %6, align 4, !dbg !2266
  %31 = or i32 %30, 1, !dbg !2266
  store i32 %31, i32* %6, align 4, !dbg !2266
  br label %32, !dbg !2268

; <label>:32:                                     ; preds = %29, %25
  %33 = load i32, i32* %5, align 4, !dbg !2269
  %34 = and i32 %33, 8, !dbg !2271
  %35 = icmp ne i32 %34, 0, !dbg !2271
  br i1 %35, label %36, label %38, !dbg !2272

; <label>:36:                                     ; preds = %32
  %37 = load i32, i32* %6, align 4, !dbg !2273
  store i32 %37, i32* %6, align 4, !dbg !2273
  br label %38, !dbg !2275

; <label>:38:                                     ; preds = %36, %32
  %39 = load i8*, i8** %4, align 8, !dbg !2276
  %40 = load i32, i32* %6, align 4, !dbg !2277
  %41 = call i32 @Posix_Access(i8* %39, i32 %40), !dbg !2278
  %42 = icmp eq i32 %41, -1, !dbg !2279
  %43 = select i1 %42, i32 2, i32 0, !dbg !2280
  store i32 %43, i32* %3, align 4, !dbg !2281
  br label %44, !dbg !2281

; <label>:44:                                     ; preds = %38, %9
  %45 = load i32, i32* %3, align 4, !dbg !2282
  ret i32 %45, !dbg !2282
}

declare i32 @Posix_Access(i8*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @FileIO_GetFlags(%struct.FileIODescriptor*) #3 !dbg !2283 {
  %2 = alloca %struct.FileIODescriptor*, align 8
  store %struct.FileIODescriptor* %0, %struct.FileIODescriptor** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor** %2, metadata !2286, metadata !370), !dbg !2287
  %3 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %2, align 8, !dbg !2288
  %4 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %3, i32 0, i32 1, !dbg !2289
  %5 = load i32, i32* %4, align 4, !dbg !2289
  ret i32 %5, !dbg !2290
}

; Function Attrs: nounwind uwtable
define signext i8 @FileIO_SupportsFileSize(%struct.FileIODescriptor*, i64) #3 !dbg !2291 {
  %3 = alloca %struct.FileIODescriptor*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.FileIODescriptor* %0, %struct.FileIODescriptor** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor** %3, metadata !2292, metadata !370), !dbg !2293
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2294, metadata !370), !dbg !2295
  call void @llvm.dbg.declare(metadata i8* %5, metadata !2296, metadata !370), !dbg !2297
  store i8 0, i8* %5, align 1, !dbg !2297
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2298, metadata !370), !dbg !2299
  %8 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %3, align 8, !dbg !2300
  %9 = call i64 @FileIO_Seek(%struct.FileIODescriptor* %8, i64 0, i32 1), !dbg !2301
  store i64 %9, i64* %6, align 8, !dbg !2302
  %10 = load i64, i64* %6, align 8, !dbg !2303
  %11 = icmp ne i64 %10, -1, !dbg !2305
  br i1 %11, label %12, label %32, !dbg !2306

; <label>:12:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2307, metadata !370), !dbg !2309
  %13 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %3, align 8, !dbg !2310
  %14 = load i64, i64* %4, align 8, !dbg !2312
  %15 = call i64 @FileIO_Seek(%struct.FileIODescriptor* %13, i64 %14, i32 0), !dbg !2313
  %16 = load i64, i64* %4, align 8, !dbg !2314
  %17 = icmp eq i64 %15, %16, !dbg !2315
  br i1 %17, label %18, label %19, !dbg !2316

; <label>:18:                                     ; preds = %12
  store i8 1, i8* %5, align 1, !dbg !2317
  br label %19, !dbg !2319

; <label>:19:                                     ; preds = %18, %12
  %20 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %3, align 8, !dbg !2320
  %21 = load i64, i64* %6, align 8, !dbg !2321
  %22 = call i64 @FileIO_Seek(%struct.FileIODescriptor* %20, i64 %21, i32 0), !dbg !2322
  store i64 %22, i64* %7, align 8, !dbg !2323
  %23 = load i64, i64* %6, align 8, !dbg !2324
  %24 = load i64, i64* %7, align 8, !dbg !2327
  %25 = icmp eq i64 %23, %24, !dbg !2328
  %26 = xor i1 %25, true, !dbg !2329
  %27 = zext i1 %26 to i32, !dbg !2329
  %28 = sext i32 %27 to i64, !dbg !2330
  %29 = icmp ne i64 %28, 0, !dbg !2331
  br i1 %29, label %30, label %31, !dbg !2332

; <label>:30:                                     ; preds = %19
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 2622) #9, !dbg !2333
  unreachable, !dbg !2333

; <label>:31:                                     ; preds = %19
  br label %32, !dbg !2336

; <label>:32:                                     ; preds = %31, %2
  %33 = load i8, i8* %5, align 1, !dbg !2337
  ret i8 %33, !dbg !2338
}

; Function Attrs: nounwind uwtable
define i64 @FileIO_GetModTime(%struct.FileIODescriptor*) #3 !dbg !2339 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.FileIODescriptor*, align 8
  %4 = alloca %struct.stat, align 8
  store %struct.FileIODescriptor* %0, %struct.FileIODescriptor** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor** %3, metadata !2342, metadata !370), !dbg !2343
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !2344, metadata !370), !dbg !2345
  %5 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %3, align 8, !dbg !2346
  %6 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %5, i32 0, i32 0, !dbg !2348
  %7 = load i32, i32* %6, align 8, !dbg !2348
  %8 = call i32 @fstat64(i32 %7, %struct.stat* %4) #8, !dbg !2349
  %9 = icmp eq i32 %8, 0, !dbg !2350
  br i1 %9, label %10, label %14, !dbg !2351

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 12, !dbg !2352
  %12 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 0, !dbg !2354
  %13 = load i64, i64* %12, align 8, !dbg !2354
  store i64 %13, i64* %2, align 8, !dbg !2355
  br label %15, !dbg !2355

; <label>:14:                                     ; preds = %1
  store i64 -1, i64* %2, align 8, !dbg !2356
  br label %15, !dbg !2356

; <label>:15:                                     ; preds = %14, %10
  %16 = load i64, i64* %2, align 8, !dbg !2358
  ret i64 %16, !dbg !2358
}

; Function Attrs: nounwind uwtable
define i32 @FileIO_PrivilegedPosixOpen(i8*, i32) #3 !dbg !2359 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2362, metadata !370), !dbg !2363
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2364, metadata !370), !dbg !2365
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2366, metadata !370), !dbg !2367
  %10 = load i8*, i8** %4, align 8, !dbg !2368
  %11 = icmp eq i8* %10, null, !dbg !2370
  br i1 %11, label %12, label %14, !dbg !2371

; <label>:12:                                     ; preds = %2
  %13 = call i32* @__errno_location() #4, !dbg !2372
  store i32 14, i32* %13, align 4, !dbg !2374
  store i32 -1, i32* %3, align 4, !dbg !2375
  br label %34, !dbg !2375

; <label>:14:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i8* %7, metadata !2376, metadata !370), !dbg !2378
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2379, metadata !370), !dbg !2380
  store i32 -1, i32* %8, align 4, !dbg !2380
  %15 = call signext i8 @Id_IsSuperUser(), !dbg !2381
  %16 = icmp ne i8 %15, 0, !dbg !2381
  br i1 %16, label %17, label %18, !dbg !2383

; <label>:17:                                     ; preds = %14
  store i8 0, i8* %7, align 1, !dbg !2384
  br label %20, !dbg !2386

; <label>:18:                                     ; preds = %14
  %19 = call i32 @Id_BeginSuperUser(), !dbg !2387
  store i32 %19, i32* %8, align 4, !dbg !2389
  store i8 1, i8* %7, align 1, !dbg !2390
  br label %20

; <label>:20:                                     ; preds = %18, %17
  %21 = load i8*, i8** %4, align 8, !dbg !2391
  %22 = load i32, i32* %5, align 4, !dbg !2392
  %23 = call i32 (i8*, i32, ...) @Posix_Open(i8* %21, i32 %22, i32 0), !dbg !2393
  store i32 %23, i32* %6, align 4, !dbg !2394
  %24 = load i8, i8* %7, align 1, !dbg !2395
  %25 = icmp ne i8 %24, 0, !dbg !2395
  br i1 %25, label %26, label %32, !dbg !2397

; <label>:26:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2398, metadata !370), !dbg !2400
  %27 = call i32* @__errno_location() #4, !dbg !2401
  %28 = load i32, i32* %27, align 4, !dbg !2402
  store i32 %28, i32* %9, align 4, !dbg !2400
  %29 = load i32, i32* %8, align 4, !dbg !2403
  call void @Id_EndSuperUser(i32 %29), !dbg !2404
  %30 = load i32, i32* %9, align 4, !dbg !2405
  %31 = call i32* @__errno_location() #4, !dbg !2406
  store i32 %30, i32* %31, align 4, !dbg !2407
  br label %32, !dbg !2408

; <label>:32:                                     ; preds = %26, %20
  %33 = load i32, i32* %6, align 4, !dbg !2409
  store i32 %33, i32* %3, align 4, !dbg !2410
  br label %34, !dbg !2410

; <label>:34:                                     ; preds = %32, %12
  %35 = load i32, i32* %3, align 4, !dbg !2411
  ret i32 %35, !dbg !2411
}

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @Id_IsSuperUser() #0 !dbg !2412 {
  %1 = call i32 @geteuid() #8, !dbg !2416
  %2 = icmp eq i32 0, %1, !dbg !2417
  %3 = zext i1 %2 to i32, !dbg !2417
  %4 = trunc i32 %3 to i8, !dbg !2418
  ret i8 %4, !dbg !2419
}

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @FileIO_DescriptorToStream(%struct.FileIODescriptor*, i8 signext) #3 !dbg !2420 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct.FileIODescriptor*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct._IO_FILE*, align 8
  store %struct.FileIODescriptor* %0, %struct.FileIODescriptor** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor** %4, metadata !2475, metadata !370), !dbg !2476
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !2477, metadata !370), !dbg !2478
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2479, metadata !370), !dbg !2480
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2481, metadata !370), !dbg !2482
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2483, metadata !370), !dbg !2484
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %9, metadata !2485, metadata !370), !dbg !2486
  %10 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %4, align 8, !dbg !2487
  %11 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %10, i32 0, i32 0, !dbg !2488
  %12 = load i32, i32* %11, align 8, !dbg !2488
  %13 = call i32 @dup(i32 %12) #8, !dbg !2489
  store i32 %13, i32* %6, align 4, !dbg !2490
  %14 = load i32, i32* %6, align 4, !dbg !2491
  %15 = icmp eq i32 %14, -1, !dbg !2493
  br i1 %15, label %16, label %17, !dbg !2494

; <label>:16:                                     ; preds = %2
  store %struct._IO_FILE* null, %struct._IO_FILE** %3, align 8, !dbg !2495
  br label %42, !dbg !2495

; <label>:17:                                     ; preds = %2
  %18 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %4, align 8, !dbg !2497
  %19 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %18, i32 0, i32 1, !dbg !2498
  %20 = load i32, i32* %19, align 4, !dbg !2498
  %21 = and i32 %20, 3, !dbg !2499
  store i32 %21, i32* %8, align 4, !dbg !2500
  %22 = load i32, i32* %8, align 4, !dbg !2501
  %23 = icmp eq i32 %22, 3, !dbg !2503
  br i1 %23, label %24, label %25, !dbg !2504

; <label>:24:                                     ; preds = %17
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8** %7, align 8, !dbg !2505
  br label %31, !dbg !2507

; <label>:25:                                     ; preds = %17
  %26 = load i32, i32* %8, align 4, !dbg !2508
  %27 = icmp eq i32 %26, 2, !dbg !2511
  br i1 %27, label %28, label %29, !dbg !2508

; <label>:28:                                     ; preds = %25
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i8** %7, align 8, !dbg !2512
  br label %30, !dbg !2514

; <label>:29:                                     ; preds = %25
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i8** %7, align 8, !dbg !2515
  br label %30

; <label>:30:                                     ; preds = %29, %28
  br label %31

; <label>:31:                                     ; preds = %30, %24
  %32 = load i32, i32* %6, align 4, !dbg !2517
  %33 = load i8*, i8** %7, align 8, !dbg !2518
  %34 = call %struct._IO_FILE* @fdopen(i32 %32, i8* %33) #8, !dbg !2519
  store %struct._IO_FILE* %34, %struct._IO_FILE** %9, align 8, !dbg !2520
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !2521
  %36 = icmp eq %struct._IO_FILE* %35, null, !dbg !2523
  br i1 %36, label %37, label %40, !dbg !2524

; <label>:37:                                     ; preds = %31
  %38 = load i32, i32* %6, align 4, !dbg !2525
  %39 = call i32 @close(i32 %38), !dbg !2527
  br label %40, !dbg !2528

; <label>:40:                                     ; preds = %37, %31
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !2529
  store %struct._IO_FILE* %41, %struct._IO_FILE** %3, align 8, !dbg !2530
  br label %42, !dbg !2530

; <label>:42:                                     ; preds = %40, %16
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2531
  ret %struct._IO_FILE* %43, !dbg !2531
}

; Function Attrs: nounwind
declare i32 @dup(i32) #2

; Function Attrs: nounwind
declare %struct._IO_FILE* @fdopen(i32, i8*) #2

; Function Attrs: nounwind uwtable
define signext i8 @FileIO_SupportsPrealloc(i8*, i8 signext) #3 !dbg !2532 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %struct.statfs, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2535, metadata !370), !dbg !2536
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !2537, metadata !370), !dbg !2538
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2539, metadata !370), !dbg !2540
  store i8 1, i8* %6, align 1, !dbg !2540
  %9 = call signext i8 @HostSupportsPrealloc(), !dbg !2541
  %10 = icmp ne i8 %9, 0, !dbg !2541
  br i1 %10, label %12, label %11, !dbg !2543

; <label>:11:                                     ; preds = %2
  store i8 0, i8* %3, align 1, !dbg !2544
  br label %41, !dbg !2544

; <label>:12:                                     ; preds = %2
  %13 = load i8, i8* %5, align 1, !dbg !2546
  %14 = icmp ne i8 %13, 0, !dbg !2546
  br i1 %14, label %17, label %15, !dbg !2548

; <label>:15:                                     ; preds = %12
  %16 = load i8, i8* %6, align 1, !dbg !2549
  store i8 %16, i8* %3, align 1, !dbg !2551
  br label %41, !dbg !2551

; <label>:17:                                     ; preds = %12
  call void @llvm.dbg.declare(metadata %struct.statfs* %7, metadata !2552, metadata !370), !dbg !2582
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2583, metadata !370), !dbg !2584
  store i8 0, i8* %6, align 1, !dbg !2585
  %18 = load i8*, i8** %4, align 8, !dbg !2586
  %19 = icmp ne i8* %18, null, !dbg !2586
  br i1 %19, label %22, label %20, !dbg !2588

; <label>:20:                                     ; preds = %17
  %21 = load i8, i8* %6, align 1, !dbg !2589
  store i8 %21, i8* %3, align 1, !dbg !2591
  br label %41, !dbg !2591

; <label>:22:                                     ; preds = %17
  %23 = load i8*, i8** %4, align 8, !dbg !2592
  %24 = call i8* @File_FullPath(i8* %23), !dbg !2593
  store i8* %24, i8** %8, align 8, !dbg !2594
  %25 = load i8*, i8** %8, align 8, !dbg !2595
  %26 = icmp ne i8* %25, null, !dbg !2595
  br i1 %26, label %29, label %27, !dbg !2597

; <label>:27:                                     ; preds = %22
  %28 = load i8, i8* %6, align 1, !dbg !2598
  store i8 %28, i8* %3, align 1, !dbg !2600
  br label %41, !dbg !2600

; <label>:29:                                     ; preds = %22
  %30 = load i8*, i8** %8, align 8, !dbg !2601
  %31 = call i32 @Posix_Statfs(i8* %30, %struct.statfs* %7), !dbg !2603
  %32 = icmp eq i32 %31, 0, !dbg !2604
  br i1 %32, label %33, label %38, !dbg !2605

; <label>:33:                                     ; preds = %29
  %34 = getelementptr inbounds %struct.statfs, %struct.statfs* %7, i32 0, i32 0, !dbg !2606
  %35 = load i64, i64* %34, align 8, !dbg !2606
  %36 = icmp eq i64 %35, 61267, !dbg !2607
  br i1 %36, label %37, label %38, !dbg !2608

; <label>:37:                                     ; preds = %33
  store i8 1, i8* %6, align 1, !dbg !2610
  br label %38, !dbg !2612

; <label>:38:                                     ; preds = %37, %33, %29
  %39 = load i8*, i8** %8, align 8, !dbg !2613
  call void @Posix_Free(i8* %39), !dbg !2614
  %40 = load i8, i8* %6, align 1, !dbg !2615
  store i8 %40, i8* %3, align 1, !dbg !2616
  br label %41, !dbg !2616

; <label>:41:                                     ; preds = %38, %27, %20, %15, %11
  %42 = load i8, i8* %3, align 1, !dbg !2617
  ret i8 %42, !dbg !2617
}

; Function Attrs: nounwind uwtable
define internal signext i8 @HostSupportsPrealloc() #3 !dbg !2618 {
  %1 = alloca i8, align 1
  %2 = call i32 @Hostinfo_OSVersion(i32 0), !dbg !2619
  %3 = icmp sge i32 %2, 2, !dbg !2621
  br i1 %3, label %4, label %11, !dbg !2622

; <label>:4:                                      ; preds = %0
  %5 = call i32 @Hostinfo_OSVersion(i32 1), !dbg !2623
  %6 = icmp sge i32 %5, 6, !dbg !2625
  br i1 %6, label %7, label %11, !dbg !2626

; <label>:7:                                      ; preds = %4
  %8 = call i32 @Hostinfo_OSVersion(i32 2), !dbg !2627
  %9 = icmp sge i32 %8, 23, !dbg !2628
  br i1 %9, label %10, label %11, !dbg !2629

; <label>:10:                                     ; preds = %7
  store i8 1, i8* %1, align 1, !dbg !2631
  br label %12, !dbg !2631

; <label>:11:                                     ; preds = %7, %4, %0
  store i8 0, i8* %1, align 1, !dbg !2633
  br label %12, !dbg !2633

; <label>:12:                                     ; preds = %11, %10
  %13 = load i8, i8* %1, align 1, !dbg !2634
  ret i8 %13, !dbg !2634
}

declare i8* @File_FullPath(i8*) #1

declare i32 @Posix_Statfs(i8*, %struct.statfs*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @Posix_Free(i8*) #0 !dbg !2635 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2639, metadata !370), !dbg !2640
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2641, metadata !370), !dbg !2642
  %4 = call i32* @__errno_location() #4, !dbg !2643
  %5 = load i32, i32* %4, align 4, !dbg !2644
  store i32 %5, i32* %3, align 4, !dbg !2642
  %6 = load i8*, i8** %2, align 8, !dbg !2645
  call void @free(i8* %6) #8, !dbg !2646
  %7 = load i32, i32* %3, align 4, !dbg !2647
  %8 = call i32* @__errno_location() #4, !dbg !2648
  store i32 %7, i32* %8, align 4, !dbg !2649
  ret void, !dbg !2650
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @FileIOAligned_Malloc(i64) #0 !dbg !2651 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !2655, metadata !370), !dbg !2656
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2657, metadata !370), !dbg !2658
  store i8* null, i8** %3, align 8, !dbg !2658
  %4 = load i8*, i8** %3, align 8, !dbg !2659
  %5 = icmp ne i8* %4, null, !dbg !2659
  br i1 %5, label %9, label %6, !dbg !2661

; <label>:6:                                      ; preds = %1
  %7 = load i64, i64* %2, align 8, !dbg !2662
  %8 = call i8* @Aligned_Malloc(i64 %7), !dbg !2664
  store i8* %8, i8** %3, align 8, !dbg !2665
  br label %9, !dbg !2666

; <label>:9:                                      ; preds = %6, %1
  %10 = load i8*, i8** %3, align 8, !dbg !2667
  ret i8* %10, !dbg !2668
}

declare i8* @UtilSafeMalloc0(i64) #1

declare void @IOV_WriteIovToBuf(%struct.iovec*, i32, i8*, i64) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Aligned_Malloc(i64) #0 !dbg !2669 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !2671, metadata !370), !dbg !2672
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2673, metadata !370), !dbg !2674
  %4 = load i64, i64* %2, align 8, !dbg !2675
  %5 = call i8* @Aligned_UnsafeMalloc(i64 %4), !dbg !2676
  store i8* %5, i8** %3, align 8, !dbg !2677
  %6 = load i8*, i8** %3, align 8, !dbg !2678
  %7 = icmp ne i8* %6, null, !dbg !2681
  %8 = xor i1 %7, true, !dbg !2681
  %9 = zext i1 %8 to i32, !dbg !2681
  %10 = sext i32 %9 to i64, !dbg !2682
  %11 = icmp ne i64 %10, 0, !dbg !2683
  br i1 %11, label %12, label %13, !dbg !2684

; <label>:12:                                     ; preds = %1
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.13, i32 0, i32 0), i32 259) #9, !dbg !2685
  unreachable, !dbg !2685

; <label>:13:                                     ; preds = %1
  %14 = load i8*, i8** %3, align 8, !dbg !2688
  ret i8* %14, !dbg !2689
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Aligned_UnsafeMalloc(i64) #0 !dbg !2690 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !2691, metadata !370), !dbg !2692
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2693, metadata !370), !dbg !2694
  %4 = load i64, i64* %2, align 8, !dbg !2695
  %5 = call noalias i8* @memalign(i64 4096, i64 %4) #8, !dbg !2696
  store i8* %5, i8** %3, align 8, !dbg !2697
  %6 = load i8*, i8** %3, align 8, !dbg !2698
  ret i8* %6, !dbg !2699
}

; Function Attrs: nounwind
declare noalias i8* @memalign(i64, i64) #2

declare void @IOV_WriteBufToIov(i8*, i64, %struct.iovec*, i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @FileIOAligned_Free(i8*) #0 !dbg !2700 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2701, metadata !370), !dbg !2702
  %3 = load i8*, i8** %2, align 8, !dbg !2703
  call void @Aligned_Free(i8* %3), !dbg !2706
  ret void, !dbg !2707
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Aligned_Free(i8*) #0 !dbg !2708 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2709, metadata !370), !dbg !2710
  %3 = load i8*, i8** %2, align 8, !dbg !2711
  call void @free(i8* %3) #8, !dbg !2712
  ret void, !dbg !2713
}

; Function Attrs: nounwind
declare void @free(i8*) #2

declare extern_weak i64 @preadv64(i32, %struct.iovec*, i32, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @FileIOPreadvCoalesced(%struct.FileIODescriptor*, %struct.iovec*, i32, i64, i64, i64*) #3 !dbg !2714 {
  %7 = alloca %struct.FileIODescriptor*, align 8
  %8 = alloca %struct.iovec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.iovec*, align 8
  %14 = alloca %struct.iovec, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  store %struct.FileIODescriptor* %0, %struct.FileIODescriptor** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor** %7, metadata !2715, metadata !370), !dbg !2716
  store %struct.iovec* %1, %struct.iovec** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.iovec** %8, metadata !2717, metadata !370), !dbg !2718
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2719, metadata !370), !dbg !2720
  store i64 %3, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2721, metadata !370), !dbg !2722
  store i64 %4, i64* %11, align 8
  call void @llvm.dbg.declare(metadata i64* %11, metadata !2723, metadata !370), !dbg !2724
  store i64* %5, i64** %12, align 8
  call void @llvm.dbg.declare(metadata i64** %12, metadata !2725, metadata !370), !dbg !2726
  call void @llvm.dbg.declare(metadata %struct.iovec** %13, metadata !2727, metadata !370), !dbg !2728
  call void @llvm.dbg.declare(metadata %struct.iovec* %14, metadata !2729, metadata !370), !dbg !2730
  call void @llvm.dbg.declare(metadata i32* %15, metadata !2731, metadata !370), !dbg !2732
  call void @llvm.dbg.declare(metadata i64* %16, metadata !2733, metadata !370), !dbg !2734
  call void @llvm.dbg.declare(metadata i32* %17, metadata !2735, metadata !370), !dbg !2736
  call void @llvm.dbg.declare(metadata i8* %18, metadata !2737, metadata !370), !dbg !2738
  call void @llvm.dbg.declare(metadata i64* %19, metadata !2739, metadata !370), !dbg !2740
  store i64 0, i64* %19, align 8, !dbg !2740
  %23 = load %struct.iovec*, %struct.iovec** %8, align 8, !dbg !2741
  %24 = load i32, i32* %9, align 4, !dbg !2742
  %25 = load i64, i64* %11, align 8, !dbg !2743
  %26 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %7, align 8, !dbg !2744
  %27 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %26, i32 0, i32 1, !dbg !2745
  %28 = load i32, i32* %27, align 4, !dbg !2745
  %29 = call signext i8 @FileIOCoalesce(%struct.iovec* %23, i32 %24, i64 %25, i8 signext 0, i8 signext 1, i32 %28, %struct.iovec* %14), !dbg !2746
  store i8 %29, i8* %18, align 1, !dbg !2747
  %30 = load i8, i8* %18, align 1, !dbg !2748
  %31 = sext i8 %30 to i32, !dbg !2748
  %32 = icmp ne i32 %31, 0, !dbg !2748
  br i1 %32, label %33, label %34, !dbg !2748

; <label>:33:                                     ; preds = %6
  br label %36, !dbg !2749

; <label>:34:                                     ; preds = %6
  %35 = load i32, i32* %9, align 4, !dbg !2751
  br label %36, !dbg !2753

; <label>:36:                                     ; preds = %34, %33
  %37 = phi i32 [ 1, %33 ], [ %35, %34 ], !dbg !2754
  store i32 %37, i32* %15, align 4, !dbg !2756
  %38 = load i8, i8* %18, align 1, !dbg !2757
  %39 = sext i8 %38 to i32, !dbg !2757
  %40 = icmp ne i32 %39, 0, !dbg !2757
  br i1 %40, label %41, label %42, !dbg !2757

; <label>:41:                                     ; preds = %36
  br label %44, !dbg !2758

; <label>:42:                                     ; preds = %36
  %43 = load %struct.iovec*, %struct.iovec** %8, align 8, !dbg !2759
  br label %44, !dbg !2760

; <label>:44:                                     ; preds = %42, %41
  %45 = phi %struct.iovec* [ %14, %41 ], [ %43, %42 ], !dbg !2761
  store %struct.iovec* %45, %struct.iovec** %13, align 8, !dbg !2762
  %46 = load i64, i64* %10, align 8, !dbg !2763
  store i64 %46, i64* %16, align 8, !dbg !2764
  br label %47, !dbg !2765

; <label>:47:                                     ; preds = %96, %44
  %48 = load i32, i32* %15, align 4, !dbg !2766
  %49 = icmp sgt i32 %48, 0, !dbg !2767
  br i1 %49, label %50, label %101, !dbg !2768

; <label>:50:                                     ; preds = %47
  call void @llvm.dbg.declare(metadata i64* %20, metadata !2769, metadata !370), !dbg !2771
  %51 = load %struct.iovec*, %struct.iovec** %13, align 8, !dbg !2772
  %52 = getelementptr inbounds %struct.iovec, %struct.iovec* %51, i32 0, i32 1, !dbg !2773
  %53 = load i64, i64* %52, align 8, !dbg !2773
  store i64 %53, i64* %20, align 8, !dbg !2771
  call void @llvm.dbg.declare(metadata i8** %21, metadata !2774, metadata !370), !dbg !2775
  %54 = load %struct.iovec*, %struct.iovec** %13, align 8, !dbg !2776
  %55 = getelementptr inbounds %struct.iovec, %struct.iovec* %54, i32 0, i32 0, !dbg !2777
  %56 = load i8*, i8** %55, align 8, !dbg !2777
  store i8* %56, i8** %21, align 8, !dbg !2775
  br label %57, !dbg !2778

; <label>:57:                                     ; preds = %83, %74, %50
  %58 = load i64, i64* %20, align 8, !dbg !2779
  %59 = icmp ugt i64 %58, 0, !dbg !2781
  br i1 %59, label %60, label %96, !dbg !2782

; <label>:60:                                     ; preds = %57
  call void @llvm.dbg.declare(metadata i64* %22, metadata !2783, metadata !370), !dbg !2785
  %61 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %7, align 8, !dbg !2786
  %62 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %61, i32 0, i32 0, !dbg !2787
  %63 = load i32, i32* %62, align 8, !dbg !2787
  %64 = load i8*, i8** %21, align 8, !dbg !2788
  %65 = load i64, i64* %20, align 8, !dbg !2789
  %66 = load i64, i64* %16, align 8, !dbg !2790
  %67 = call i64 @pread64(i32 %63, i8* %64, i64 %65, i64 %66), !dbg !2791
  store i64 %67, i64* %22, align 8, !dbg !2785
  %68 = load i64, i64* %22, align 8, !dbg !2792
  %69 = icmp eq i64 %68, -1, !dbg !2794
  br i1 %69, label %70, label %79, !dbg !2795

; <label>:70:                                     ; preds = %60
  %71 = call i32* @__errno_location() #4, !dbg !2796
  %72 = load i32, i32* %71, align 4, !dbg !2799
  %73 = icmp eq i32 %72, 4, !dbg !2800
  br i1 %73, label %74, label %75, !dbg !2801

; <label>:74:                                     ; preds = %70
  br label %57, !dbg !2802, !llvm.loop !2804

; <label>:75:                                     ; preds = %70
  %76 = call i32* @__errno_location() #4, !dbg !2805
  %77 = load i32, i32* %76, align 4, !dbg !2806
  %78 = call i32 @FileIOErrno2Result(i32 %77), !dbg !2807
  store i32 %78, i32* %17, align 4, !dbg !2809
  br label %102, !dbg !2810

; <label>:79:                                     ; preds = %60
  %80 = load i64, i64* %22, align 8, !dbg !2811
  %81 = icmp eq i64 %80, 0, !dbg !2813
  br i1 %81, label %82, label %83, !dbg !2814

; <label>:82:                                     ; preds = %79
  store i32 5, i32* %17, align 4, !dbg !2815
  br label %102, !dbg !2817

; <label>:83:                                     ; preds = %79
  %84 = load i64, i64* %22, align 8, !dbg !2818
  %85 = load i8*, i8** %21, align 8, !dbg !2819
  %86 = getelementptr inbounds i8, i8* %85, i64 %84, !dbg !2819
  store i8* %86, i8** %21, align 8, !dbg !2819
  %87 = load i64, i64* %22, align 8, !dbg !2820
  %88 = load i64, i64* %20, align 8, !dbg !2821
  %89 = sub i64 %88, %87, !dbg !2821
  store i64 %89, i64* %20, align 8, !dbg !2821
  %90 = load i64, i64* %22, align 8, !dbg !2822
  %91 = load i64, i64* %19, align 8, !dbg !2823
  %92 = add i64 %91, %90, !dbg !2823
  store i64 %92, i64* %19, align 8, !dbg !2823
  %93 = load i64, i64* %22, align 8, !dbg !2824
  %94 = load i64, i64* %16, align 8, !dbg !2825
  %95 = add i64 %94, %93, !dbg !2825
  store i64 %95, i64* %16, align 8, !dbg !2825
  br label %57, !dbg !2826, !llvm.loop !2804

; <label>:96:                                     ; preds = %57
  %97 = load i32, i32* %15, align 4, !dbg !2828
  %98 = add nsw i32 %97, -1, !dbg !2828
  store i32 %98, i32* %15, align 4, !dbg !2828
  %99 = load %struct.iovec*, %struct.iovec** %13, align 8, !dbg !2829
  %100 = getelementptr inbounds %struct.iovec, %struct.iovec* %99, i32 1, !dbg !2829
  store %struct.iovec* %100, %struct.iovec** %13, align 8, !dbg !2829
  br label %47, !dbg !2830, !llvm.loop !2831

; <label>:101:                                    ; preds = %47
  store i32 0, i32* %17, align 4, !dbg !2832
  br label %102, !dbg !2833

; <label>:102:                                    ; preds = %101, %82, %75
  %103 = load i8, i8* %18, align 1, !dbg !2834
  %104 = icmp ne i8 %103, 0, !dbg !2834
  br i1 %104, label %105, label %112, !dbg !2836

; <label>:105:                                    ; preds = %102
  %106 = load %struct.iovec*, %struct.iovec** %8, align 8, !dbg !2837
  %107 = load i32, i32* %9, align 4, !dbg !2839
  %108 = load i64, i64* %19, align 8, !dbg !2840
  %109 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %7, align 8, !dbg !2841
  %110 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %109, i32 0, i32 1, !dbg !2842
  %111 = load i32, i32* %110, align 4, !dbg !2842
  call void @FileIODecoalesce(%struct.iovec* %14, %struct.iovec* %106, i32 %107, i64 %108, i8 signext 0, i32 %111), !dbg !2843
  br label %112, !dbg !2844

; <label>:112:                                    ; preds = %105, %102
  %113 = load i64*, i64** %12, align 8, !dbg !2845
  %114 = icmp ne i64* %113, null, !dbg !2845
  br i1 %114, label %115, label %118, !dbg !2847

; <label>:115:                                    ; preds = %112
  %116 = load i64, i64* %19, align 8, !dbg !2848
  %117 = load i64*, i64** %12, align 8, !dbg !2850
  store i64 %116, i64* %117, align 8, !dbg !2851
  br label %118, !dbg !2852

; <label>:118:                                    ; preds = %115, %112
  %119 = load i32, i32* %17, align 4, !dbg !2853
  ret i32 %119, !dbg !2854
}

declare i64 @pread64(i32, i8*, i64, i64) #1

declare extern_weak i64 @pwritev64(i32, %struct.iovec*, i32, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @FileIOPwritevCoalesced(%struct.FileIODescriptor*, %struct.iovec*, i32, i64, i64, i64*) #3 !dbg !322 {
  %7 = alloca %struct.FileIODescriptor*, align 8
  %8 = alloca %struct.iovec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.iovec, align 8
  %14 = alloca i8, align 1
  %15 = alloca %struct.iovec*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  store %struct.FileIODescriptor* %0, %struct.FileIODescriptor** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor** %7, metadata !2855, metadata !370), !dbg !2856
  store %struct.iovec* %1, %struct.iovec** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.iovec** %8, metadata !2857, metadata !370), !dbg !2858
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2859, metadata !370), !dbg !2860
  store i64 %3, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2861, metadata !370), !dbg !2862
  store i64 %4, i64* %11, align 8
  call void @llvm.dbg.declare(metadata i64* %11, metadata !2863, metadata !370), !dbg !2864
  store i64* %5, i64** %12, align 8
  call void @llvm.dbg.declare(metadata i64** %12, metadata !2865, metadata !370), !dbg !2866
  call void @llvm.dbg.declare(metadata %struct.iovec* %13, metadata !2867, metadata !370), !dbg !2868
  call void @llvm.dbg.declare(metadata i8* %14, metadata !2869, metadata !370), !dbg !2870
  call void @llvm.dbg.declare(metadata %struct.iovec** %15, metadata !2871, metadata !370), !dbg !2872
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2873, metadata !370), !dbg !2874
  call void @llvm.dbg.declare(metadata i64* %17, metadata !2875, metadata !370), !dbg !2876
  call void @llvm.dbg.declare(metadata i32* %18, metadata !2877, metadata !370), !dbg !2878
  call void @llvm.dbg.declare(metadata i64* %19, metadata !2879, metadata !370), !dbg !2880
  store i64 0, i64* %19, align 8, !dbg !2880
  %23 = load %struct.iovec*, %struct.iovec** %8, align 8, !dbg !2881
  %24 = load i32, i32* %9, align 4, !dbg !2882
  %25 = load i64, i64* %11, align 8, !dbg !2883
  %26 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %7, align 8, !dbg !2884
  %27 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %26, i32 0, i32 1, !dbg !2885
  %28 = load i32, i32* %27, align 4, !dbg !2885
  %29 = call signext i8 @FileIOCoalesce(%struct.iovec* %23, i32 %24, i64 %25, i8 signext 1, i8 signext 1, i32 %28, %struct.iovec* %13), !dbg !2886
  store i8 %29, i8* %14, align 1, !dbg !2887
  %30 = load i8, i8* %14, align 1, !dbg !2888
  %31 = sext i8 %30 to i32, !dbg !2888
  %32 = icmp ne i32 %31, 0, !dbg !2888
  br i1 %32, label %33, label %34, !dbg !2888

; <label>:33:                                     ; preds = %6
  br label %36, !dbg !2889

; <label>:34:                                     ; preds = %6
  %35 = load i32, i32* %9, align 4, !dbg !2891
  br label %36, !dbg !2893

; <label>:36:                                     ; preds = %34, %33
  %37 = phi i32 [ 1, %33 ], [ %35, %34 ], !dbg !2894
  store i32 %37, i32* %16, align 4, !dbg !2896
  %38 = load i8, i8* %14, align 1, !dbg !2897
  %39 = sext i8 %38 to i32, !dbg !2897
  %40 = icmp ne i32 %39, 0, !dbg !2897
  br i1 %40, label %41, label %42, !dbg !2897

; <label>:41:                                     ; preds = %36
  br label %44, !dbg !2898

; <label>:42:                                     ; preds = %36
  %43 = load %struct.iovec*, %struct.iovec** %8, align 8, !dbg !2899
  br label %44, !dbg !2900

; <label>:44:                                     ; preds = %42, %41
  %45 = phi %struct.iovec* [ %13, %41 ], [ %43, %42 ], !dbg !2901
  store %struct.iovec* %45, %struct.iovec** %15, align 8, !dbg !2902
  %46 = load i64, i64* %10, align 8, !dbg !2903
  store i64 %46, i64* %17, align 8, !dbg !2904
  br label %47, !dbg !2905

; <label>:47:                                     ; preds = %113, %44
  %48 = load i32, i32* %16, align 4, !dbg !2906
  %49 = icmp sgt i32 %48, 0, !dbg !2907
  br i1 %49, label %50, label %118, !dbg !2908

; <label>:50:                                     ; preds = %47
  call void @llvm.dbg.declare(metadata i64* %20, metadata !2909, metadata !370), !dbg !2911
  %51 = load %struct.iovec*, %struct.iovec** %15, align 8, !dbg !2912
  %52 = getelementptr inbounds %struct.iovec, %struct.iovec* %51, i32 0, i32 1, !dbg !2913
  %53 = load i64, i64* %52, align 8, !dbg !2913
  store i64 %53, i64* %20, align 8, !dbg !2911
  call void @llvm.dbg.declare(metadata i8** %21, metadata !2914, metadata !370), !dbg !2915
  %54 = load %struct.iovec*, %struct.iovec** %15, align 8, !dbg !2916
  %55 = getelementptr inbounds %struct.iovec, %struct.iovec* %54, i32 0, i32 0, !dbg !2917
  %56 = load i8*, i8** %55, align 8, !dbg !2917
  store i8* %56, i8** %21, align 8, !dbg !2915
  br label %57, !dbg !2918

; <label>:57:                                     ; preds = %100, %74, %50
  %58 = load i64, i64* %20, align 8, !dbg !2919
  %59 = icmp ugt i64 %58, 0, !dbg !2921
  br i1 %59, label %60, label %113, !dbg !2922

; <label>:60:                                     ; preds = %57
  call void @llvm.dbg.declare(metadata i64* %22, metadata !2923, metadata !370), !dbg !2925
  %61 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %7, align 8, !dbg !2926
  %62 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %61, i32 0, i32 0, !dbg !2927
  %63 = load i32, i32* %62, align 8, !dbg !2927
  %64 = load i8*, i8** %21, align 8, !dbg !2928
  %65 = load i64, i64* %20, align 8, !dbg !2929
  %66 = load i64, i64* %17, align 8, !dbg !2930
  %67 = call i64 @pwrite64(i32 %63, i8* %64, i64 %65, i64 %66), !dbg !2931
  store i64 %67, i64* %22, align 8, !dbg !2925
  %68 = load i64, i64* %22, align 8, !dbg !2932
  %69 = icmp eq i64 %68, -1, !dbg !2934
  br i1 %69, label %70, label %79, !dbg !2935

; <label>:70:                                     ; preds = %60
  %71 = call i32* @__errno_location() #4, !dbg !2936
  %72 = load i32, i32* %71, align 4, !dbg !2939
  %73 = icmp eq i32 %72, 4, !dbg !2940
  br i1 %73, label %74, label %75, !dbg !2941

; <label>:74:                                     ; preds = %70
  br label %57, !dbg !2942, !llvm.loop !2944

; <label>:75:                                     ; preds = %70
  %76 = call i32* @__errno_location() #4, !dbg !2945
  %77 = load i32, i32* %76, align 4, !dbg !2946
  %78 = call i32 @FileIOErrno2Result(i32 %77), !dbg !2947
  store i32 %78, i32* %18, align 4, !dbg !2949
  br label %119, !dbg !2950

; <label>:79:                                     ; preds = %60
  %80 = load i64, i64* %22, align 8, !dbg !2951
  %81 = icmp eq i64 %80, 0, !dbg !2953
  br i1 %81, label %82, label %83, !dbg !2954

; <label>:82:                                     ; preds = %79
  store i32 10, i32* %18, align 4, !dbg !2955
  br label %119, !dbg !2957

; <label>:83:                                     ; preds = %79
  %84 = load i64, i64* %22, align 8, !dbg !2958
  %85 = load i64, i64* %20, align 8, !dbg !2960
  %86 = icmp ult i64 %84, %85, !dbg !2961
  br i1 %86, label %87, label %100, !dbg !2962

; <label>:87:                                     ; preds = %83
  br label %88, !dbg !2963, !llvm.loop !2965

; <label>:88:                                     ; preds = %87
  %89 = load i8, i8* @FileIOPwritevCoalesced._doOnceDone, align 1, !dbg !2966
  %90 = icmp ne i8 %89, 0, !dbg !2970
  %91 = xor i1 %90, true, !dbg !2970
  %92 = zext i1 %91 to i32, !dbg !2970
  %93 = sext i32 %92 to i64, !dbg !2971
  %94 = icmp ne i64 %93, 0, !dbg !2972
  br i1 %94, label %95, label %98, !dbg !2972

; <label>:95:                                     ; preds = %88
  store i8 1, i8* @FileIOPwritevCoalesced._doOnceDone, align 1, !dbg !2973
  %96 = load i64, i64* %22, align 8, !dbg !2976
  %97 = load i64, i64* %20, align 8, !dbg !2977
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.FileIOPwritevCoalesced, i32 0, i32 0), i64 %96, i64 %97), !dbg !2978
  br label %98, !dbg !2979

; <label>:98:                                     ; preds = %95, %88
  br label %99, !dbg !2980

; <label>:99:                                     ; preds = %98
  br label %100, !dbg !2982

; <label>:100:                                    ; preds = %99, %83
  %101 = load i64, i64* %22, align 8, !dbg !2983
  %102 = load i8*, i8** %21, align 8, !dbg !2984
  %103 = getelementptr inbounds i8, i8* %102, i64 %101, !dbg !2984
  store i8* %103, i8** %21, align 8, !dbg !2984
  %104 = load i64, i64* %22, align 8, !dbg !2985
  %105 = load i64, i64* %20, align 8, !dbg !2986
  %106 = sub i64 %105, %104, !dbg !2986
  store i64 %106, i64* %20, align 8, !dbg !2986
  %107 = load i64, i64* %22, align 8, !dbg !2987
  %108 = load i64, i64* %19, align 8, !dbg !2988
  %109 = add i64 %108, %107, !dbg !2988
  store i64 %109, i64* %19, align 8, !dbg !2988
  %110 = load i64, i64* %22, align 8, !dbg !2989
  %111 = load i64, i64* %17, align 8, !dbg !2990
  %112 = add i64 %111, %110, !dbg !2990
  store i64 %112, i64* %17, align 8, !dbg !2990
  br label %57, !dbg !2991, !llvm.loop !2944

; <label>:113:                                    ; preds = %57
  %114 = load i32, i32* %16, align 4, !dbg !2993
  %115 = add nsw i32 %114, -1, !dbg !2993
  store i32 %115, i32* %16, align 4, !dbg !2993
  %116 = load %struct.iovec*, %struct.iovec** %15, align 8, !dbg !2994
  %117 = getelementptr inbounds %struct.iovec, %struct.iovec* %116, i32 1, !dbg !2994
  store %struct.iovec* %117, %struct.iovec** %15, align 8, !dbg !2994
  br label %47, !dbg !2995, !llvm.loop !2996

; <label>:118:                                    ; preds = %47
  store i32 0, i32* %18, align 4, !dbg !2997
  br label %119, !dbg !2998

; <label>:119:                                    ; preds = %118, %82, %75
  %120 = load i8, i8* %14, align 1, !dbg !2999
  %121 = icmp ne i8 %120, 0, !dbg !2999
  br i1 %121, label %122, label %129, !dbg !3001

; <label>:122:                                    ; preds = %119
  %123 = load %struct.iovec*, %struct.iovec** %8, align 8, !dbg !3002
  %124 = load i32, i32* %9, align 4, !dbg !3004
  %125 = load i64, i64* %19, align 8, !dbg !3005
  %126 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %7, align 8, !dbg !3006
  %127 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %126, i32 0, i32 1, !dbg !3007
  %128 = load i32, i32* %127, align 4, !dbg !3007
  call void @FileIODecoalesce(%struct.iovec* %13, %struct.iovec* %123, i32 %124, i64 %125, i8 signext 1, i32 %128), !dbg !3008
  br label %129, !dbg !3009

; <label>:129:                                    ; preds = %122, %119
  %130 = load i64*, i64** %12, align 8, !dbg !3010
  %131 = icmp ne i64* %130, null, !dbg !3010
  br i1 %131, label %132, label %135, !dbg !3012

; <label>:132:                                    ; preds = %129
  %133 = load i64, i64* %19, align 8, !dbg !3013
  %134 = load i64*, i64** %12, align 8, !dbg !3015
  store i64 %133, i64* %134, align 8, !dbg !3016
  br label %135, !dbg !3017

; <label>:135:                                    ; preds = %132, %129
  %136 = load i32, i32* %18, align 4, !dbg !3018
  ret i32 %136, !dbg !3019
}

declare i64 @pwrite64(i32, i8*, i64, i64) #1

; Function Attrs: nounwind
declare i32 @geteuid() #2

declare i32 @Hostinfo_OSVersion(i32) #1

attributes #0 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!333, !334}
!llvm.ident = !{!335}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !249, globals: !268)
!1 = !DIFile(filename: "fileIOPosix.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line207")
!2 = !{!3, !221, !237, !244}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 71, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/confname.h", directory: "/home/lichi/Desktop/open-vm-tools/line207")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220}
!6 = !DIEnumerator(name: "_SC_ARG_MAX", value: 0)
!7 = !DIEnumerator(name: "_SC_CHILD_MAX", value: 1)
!8 = !DIEnumerator(name: "_SC_CLK_TCK", value: 2)
!9 = !DIEnumerator(name: "_SC_NGROUPS_MAX", value: 3)
!10 = !DIEnumerator(name: "_SC_OPEN_MAX", value: 4)
!11 = !DIEnumerator(name: "_SC_STREAM_MAX", value: 5)
!12 = !DIEnumerator(name: "_SC_TZNAME_MAX", value: 6)
!13 = !DIEnumerator(name: "_SC_JOB_CONTROL", value: 7)
!14 = !DIEnumerator(name: "_SC_SAVED_IDS", value: 8)
!15 = !DIEnumerator(name: "_SC_REALTIME_SIGNALS", value: 9)
!16 = !DIEnumerator(name: "_SC_PRIORITY_SCHEDULING", value: 10)
!17 = !DIEnumerator(name: "_SC_TIMERS", value: 11)
!18 = !DIEnumerator(name: "_SC_ASYNCHRONOUS_IO", value: 12)
!19 = !DIEnumerator(name: "_SC_PRIORITIZED_IO", value: 13)
!20 = !DIEnumerator(name: "_SC_SYNCHRONIZED_IO", value: 14)
!21 = !DIEnumerator(name: "_SC_FSYNC", value: 15)
!22 = !DIEnumerator(name: "_SC_MAPPED_FILES", value: 16)
!23 = !DIEnumerator(name: "_SC_MEMLOCK", value: 17)
!24 = !DIEnumerator(name: "_SC_MEMLOCK_RANGE", value: 18)
!25 = !DIEnumerator(name: "_SC_MEMORY_PROTECTION", value: 19)
!26 = !DIEnumerator(name: "_SC_MESSAGE_PASSING", value: 20)
!27 = !DIEnumerator(name: "_SC_SEMAPHORES", value: 21)
!28 = !DIEnumerator(name: "_SC_SHARED_MEMORY_OBJECTS", value: 22)
!29 = !DIEnumerator(name: "_SC_AIO_LISTIO_MAX", value: 23)
!30 = !DIEnumerator(name: "_SC_AIO_MAX", value: 24)
!31 = !DIEnumerator(name: "_SC_AIO_PRIO_DELTA_MAX", value: 25)
!32 = !DIEnumerator(name: "_SC_DELAYTIMER_MAX", value: 26)
!33 = !DIEnumerator(name: "_SC_MQ_OPEN_MAX", value: 27)
!34 = !DIEnumerator(name: "_SC_MQ_PRIO_MAX", value: 28)
!35 = !DIEnumerator(name: "_SC_VERSION", value: 29)
!36 = !DIEnumerator(name: "_SC_PAGESIZE", value: 30)
!37 = !DIEnumerator(name: "_SC_RTSIG_MAX", value: 31)
!38 = !DIEnumerator(name: "_SC_SEM_NSEMS_MAX", value: 32)
!39 = !DIEnumerator(name: "_SC_SEM_VALUE_MAX", value: 33)
!40 = !DIEnumerator(name: "_SC_SIGQUEUE_MAX", value: 34)
!41 = !DIEnumerator(name: "_SC_TIMER_MAX", value: 35)
!42 = !DIEnumerator(name: "_SC_BC_BASE_MAX", value: 36)
!43 = !DIEnumerator(name: "_SC_BC_DIM_MAX", value: 37)
!44 = !DIEnumerator(name: "_SC_BC_SCALE_MAX", value: 38)
!45 = !DIEnumerator(name: "_SC_BC_STRING_MAX", value: 39)
!46 = !DIEnumerator(name: "_SC_COLL_WEIGHTS_MAX", value: 40)
!47 = !DIEnumerator(name: "_SC_EQUIV_CLASS_MAX", value: 41)
!48 = !DIEnumerator(name: "_SC_EXPR_NEST_MAX", value: 42)
!49 = !DIEnumerator(name: "_SC_LINE_MAX", value: 43)
!50 = !DIEnumerator(name: "_SC_RE_DUP_MAX", value: 44)
!51 = !DIEnumerator(name: "_SC_CHARCLASS_NAME_MAX", value: 45)
!52 = !DIEnumerator(name: "_SC_2_VERSION", value: 46)
!53 = !DIEnumerator(name: "_SC_2_C_BIND", value: 47)
!54 = !DIEnumerator(name: "_SC_2_C_DEV", value: 48)
!55 = !DIEnumerator(name: "_SC_2_FORT_DEV", value: 49)
!56 = !DIEnumerator(name: "_SC_2_FORT_RUN", value: 50)
!57 = !DIEnumerator(name: "_SC_2_SW_DEV", value: 51)
!58 = !DIEnumerator(name: "_SC_2_LOCALEDEF", value: 52)
!59 = !DIEnumerator(name: "_SC_PII", value: 53)
!60 = !DIEnumerator(name: "_SC_PII_XTI", value: 54)
!61 = !DIEnumerator(name: "_SC_PII_SOCKET", value: 55)
!62 = !DIEnumerator(name: "_SC_PII_INTERNET", value: 56)
!63 = !DIEnumerator(name: "_SC_PII_OSI", value: 57)
!64 = !DIEnumerator(name: "_SC_POLL", value: 58)
!65 = !DIEnumerator(name: "_SC_SELECT", value: 59)
!66 = !DIEnumerator(name: "_SC_UIO_MAXIOV", value: 60)
!67 = !DIEnumerator(name: "_SC_IOV_MAX", value: 60)
!68 = !DIEnumerator(name: "_SC_PII_INTERNET_STREAM", value: 61)
!69 = !DIEnumerator(name: "_SC_PII_INTERNET_DGRAM", value: 62)
!70 = !DIEnumerator(name: "_SC_PII_OSI_COTS", value: 63)
!71 = !DIEnumerator(name: "_SC_PII_OSI_CLTS", value: 64)
!72 = !DIEnumerator(name: "_SC_PII_OSI_M", value: 65)
!73 = !DIEnumerator(name: "_SC_T_IOV_MAX", value: 66)
!74 = !DIEnumerator(name: "_SC_THREADS", value: 67)
!75 = !DIEnumerator(name: "_SC_THREAD_SAFE_FUNCTIONS", value: 68)
!76 = !DIEnumerator(name: "_SC_GETGR_R_SIZE_MAX", value: 69)
!77 = !DIEnumerator(name: "_SC_GETPW_R_SIZE_MAX", value: 70)
!78 = !DIEnumerator(name: "_SC_LOGIN_NAME_MAX", value: 71)
!79 = !DIEnumerator(name: "_SC_TTY_NAME_MAX", value: 72)
!80 = !DIEnumerator(name: "_SC_THREAD_DESTRUCTOR_ITERATIONS", value: 73)
!81 = !DIEnumerator(name: "_SC_THREAD_KEYS_MAX", value: 74)
!82 = !DIEnumerator(name: "_SC_THREAD_STACK_MIN", value: 75)
!83 = !DIEnumerator(name: "_SC_THREAD_THREADS_MAX", value: 76)
!84 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKADDR", value: 77)
!85 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKSIZE", value: 78)
!86 = !DIEnumerator(name: "_SC_THREAD_PRIORITY_SCHEDULING", value: 79)
!87 = !DIEnumerator(name: "_SC_THREAD_PRIO_INHERIT", value: 80)
!88 = !DIEnumerator(name: "_SC_THREAD_PRIO_PROTECT", value: 81)
!89 = !DIEnumerator(name: "_SC_THREAD_PROCESS_SHARED", value: 82)
!90 = !DIEnumerator(name: "_SC_NPROCESSORS_CONF", value: 83)
!91 = !DIEnumerator(name: "_SC_NPROCESSORS_ONLN", value: 84)
!92 = !DIEnumerator(name: "_SC_PHYS_PAGES", value: 85)
!93 = !DIEnumerator(name: "_SC_AVPHYS_PAGES", value: 86)
!94 = !DIEnumerator(name: "_SC_ATEXIT_MAX", value: 87)
!95 = !DIEnumerator(name: "_SC_PASS_MAX", value: 88)
!96 = !DIEnumerator(name: "_SC_XOPEN_VERSION", value: 89)
!97 = !DIEnumerator(name: "_SC_XOPEN_XCU_VERSION", value: 90)
!98 = !DIEnumerator(name: "_SC_XOPEN_UNIX", value: 91)
!99 = !DIEnumerator(name: "_SC_XOPEN_CRYPT", value: 92)
!100 = !DIEnumerator(name: "_SC_XOPEN_ENH_I18N", value: 93)
!101 = !DIEnumerator(name: "_SC_XOPEN_SHM", value: 94)
!102 = !DIEnumerator(name: "_SC_2_CHAR_TERM", value: 95)
!103 = !DIEnumerator(name: "_SC_2_C_VERSION", value: 96)
!104 = !DIEnumerator(name: "_SC_2_UPE", value: 97)
!105 = !DIEnumerator(name: "_SC_XOPEN_XPG2", value: 98)
!106 = !DIEnumerator(name: "_SC_XOPEN_XPG3", value: 99)
!107 = !DIEnumerator(name: "_SC_XOPEN_XPG4", value: 100)
!108 = !DIEnumerator(name: "_SC_CHAR_BIT", value: 101)
!109 = !DIEnumerator(name: "_SC_CHAR_MAX", value: 102)
!110 = !DIEnumerator(name: "_SC_CHAR_MIN", value: 103)
!111 = !DIEnumerator(name: "_SC_INT_MAX", value: 104)
!112 = !DIEnumerator(name: "_SC_INT_MIN", value: 105)
!113 = !DIEnumerator(name: "_SC_LONG_BIT", value: 106)
!114 = !DIEnumerator(name: "_SC_WORD_BIT", value: 107)
!115 = !DIEnumerator(name: "_SC_MB_LEN_MAX", value: 108)
!116 = !DIEnumerator(name: "_SC_NZERO", value: 109)
!117 = !DIEnumerator(name: "_SC_SSIZE_MAX", value: 110)
!118 = !DIEnumerator(name: "_SC_SCHAR_MAX", value: 111)
!119 = !DIEnumerator(name: "_SC_SCHAR_MIN", value: 112)
!120 = !DIEnumerator(name: "_SC_SHRT_MAX", value: 113)
!121 = !DIEnumerator(name: "_SC_SHRT_MIN", value: 114)
!122 = !DIEnumerator(name: "_SC_UCHAR_MAX", value: 115)
!123 = !DIEnumerator(name: "_SC_UINT_MAX", value: 116)
!124 = !DIEnumerator(name: "_SC_ULONG_MAX", value: 117)
!125 = !DIEnumerator(name: "_SC_USHRT_MAX", value: 118)
!126 = !DIEnumerator(name: "_SC_NL_ARGMAX", value: 119)
!127 = !DIEnumerator(name: "_SC_NL_LANGMAX", value: 120)
!128 = !DIEnumerator(name: "_SC_NL_MSGMAX", value: 121)
!129 = !DIEnumerator(name: "_SC_NL_NMAX", value: 122)
!130 = !DIEnumerator(name: "_SC_NL_SETMAX", value: 123)
!131 = !DIEnumerator(name: "_SC_NL_TEXTMAX", value: 124)
!132 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFF32", value: 125)
!133 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFFBIG", value: 126)
!134 = !DIEnumerator(name: "_SC_XBS5_LP64_OFF64", value: 127)
!135 = !DIEnumerator(name: "_SC_XBS5_LPBIG_OFFBIG", value: 128)
!136 = !DIEnumerator(name: "_SC_XOPEN_LEGACY", value: 129)
!137 = !DIEnumerator(name: "_SC_XOPEN_REALTIME", value: 130)
!138 = !DIEnumerator(name: "_SC_XOPEN_REALTIME_THREADS", value: 131)
!139 = !DIEnumerator(name: "_SC_ADVISORY_INFO", value: 132)
!140 = !DIEnumerator(name: "_SC_BARRIERS", value: 133)
!141 = !DIEnumerator(name: "_SC_BASE", value: 134)
!142 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT", value: 135)
!143 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT_R", value: 136)
!144 = !DIEnumerator(name: "_SC_CLOCK_SELECTION", value: 137)
!145 = !DIEnumerator(name: "_SC_CPUTIME", value: 138)
!146 = !DIEnumerator(name: "_SC_THREAD_CPUTIME", value: 139)
!147 = !DIEnumerator(name: "_SC_DEVICE_IO", value: 140)
!148 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC", value: 141)
!149 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC_R", value: 142)
!150 = !DIEnumerator(name: "_SC_FD_MGMT", value: 143)
!151 = !DIEnumerator(name: "_SC_FIFO", value: 144)
!152 = !DIEnumerator(name: "_SC_PIPE", value: 145)
!153 = !DIEnumerator(name: "_SC_FILE_ATTRIBUTES", value: 146)
!154 = !DIEnumerator(name: "_SC_FILE_LOCKING", value: 147)
!155 = !DIEnumerator(name: "_SC_FILE_SYSTEM", value: 148)
!156 = !DIEnumerator(name: "_SC_MONOTONIC_CLOCK", value: 149)
!157 = !DIEnumerator(name: "_SC_MULTI_PROCESS", value: 150)
!158 = !DIEnumerator(name: "_SC_SINGLE_PROCESS", value: 151)
!159 = !DIEnumerator(name: "_SC_NETWORKING", value: 152)
!160 = !DIEnumerator(name: "_SC_READER_WRITER_LOCKS", value: 153)
!161 = !DIEnumerator(name: "_SC_SPIN_LOCKS", value: 154)
!162 = !DIEnumerator(name: "_SC_REGEXP", value: 155)
!163 = !DIEnumerator(name: "_SC_REGEX_VERSION", value: 156)
!164 = !DIEnumerator(name: "_SC_SHELL", value: 157)
!165 = !DIEnumerator(name: "_SC_SIGNALS", value: 158)
!166 = !DIEnumerator(name: "_SC_SPAWN", value: 159)
!167 = !DIEnumerator(name: "_SC_SPORADIC_SERVER", value: 160)
!168 = !DIEnumerator(name: "_SC_THREAD_SPORADIC_SERVER", value: 161)
!169 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE", value: 162)
!170 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE_R", value: 163)
!171 = !DIEnumerator(name: "_SC_TIMEOUTS", value: 164)
!172 = !DIEnumerator(name: "_SC_TYPED_MEMORY_OBJECTS", value: 165)
!173 = !DIEnumerator(name: "_SC_USER_GROUPS", value: 166)
!174 = !DIEnumerator(name: "_SC_USER_GROUPS_R", value: 167)
!175 = !DIEnumerator(name: "_SC_2_PBS", value: 168)
!176 = !DIEnumerator(name: "_SC_2_PBS_ACCOUNTING", value: 169)
!177 = !DIEnumerator(name: "_SC_2_PBS_LOCATE", value: 170)
!178 = !DIEnumerator(name: "_SC_2_PBS_MESSAGE", value: 171)
!179 = !DIEnumerator(name: "_SC_2_PBS_TRACK", value: 172)
!180 = !DIEnumerator(name: "_SC_SYMLOOP_MAX", value: 173)
!181 = !DIEnumerator(name: "_SC_STREAMS", value: 174)
!182 = !DIEnumerator(name: "_SC_2_PBS_CHECKPOINT", value: 175)
!183 = !DIEnumerator(name: "_SC_V6_ILP32_OFF32", value: 176)
!184 = !DIEnumerator(name: "_SC_V6_ILP32_OFFBIG", value: 177)
!185 = !DIEnumerator(name: "_SC_V6_LP64_OFF64", value: 178)
!186 = !DIEnumerator(name: "_SC_V6_LPBIG_OFFBIG", value: 179)
!187 = !DIEnumerator(name: "_SC_HOST_NAME_MAX", value: 180)
!188 = !DIEnumerator(name: "_SC_TRACE", value: 181)
!189 = !DIEnumerator(name: "_SC_TRACE_EVENT_FILTER", value: 182)
!190 = !DIEnumerator(name: "_SC_TRACE_INHERIT", value: 183)
!191 = !DIEnumerator(name: "_SC_TRACE_LOG", value: 184)
!192 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_SIZE", value: 185)
!193 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_ASSOC", value: 186)
!194 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_LINESIZE", value: 187)
!195 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_SIZE", value: 188)
!196 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_ASSOC", value: 189)
!197 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_LINESIZE", value: 190)
!198 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_SIZE", value: 191)
!199 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_ASSOC", value: 192)
!200 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_LINESIZE", value: 193)
!201 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_SIZE", value: 194)
!202 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_ASSOC", value: 195)
!203 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_LINESIZE", value: 196)
!204 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_SIZE", value: 197)
!205 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_ASSOC", value: 198)
!206 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_LINESIZE", value: 199)
!207 = !DIEnumerator(name: "_SC_IPV6", value: 235)
!208 = !DIEnumerator(name: "_SC_RAW_SOCKETS", value: 236)
!209 = !DIEnumerator(name: "_SC_V7_ILP32_OFF32", value: 237)
!210 = !DIEnumerator(name: "_SC_V7_ILP32_OFFBIG", value: 238)
!211 = !DIEnumerator(name: "_SC_V7_LP64_OFF64", value: 239)
!212 = !DIEnumerator(name: "_SC_V7_LPBIG_OFFBIG", value: 240)
!213 = !DIEnumerator(name: "_SC_SS_REPL_MAX", value: 241)
!214 = !DIEnumerator(name: "_SC_TRACE_EVENT_NAME_MAX", value: 242)
!215 = !DIEnumerator(name: "_SC_TRACE_NAME_MAX", value: 243)
!216 = !DIEnumerator(name: "_SC_TRACE_SYS_MAX", value: 244)
!217 = !DIEnumerator(name: "_SC_TRACE_USER_EVENT_MAX", value: 245)
!218 = !DIEnumerator(name: "_SC_XOPEN_STREAMS", value: 246)
!219 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_INHERIT", value: 247)
!220 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_PROTECT", value: 248)
!221 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !222, line: 264, size: 32, align: 32, elements: !223)
!222 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/fileIO.h", directory: "/home/lichi/Desktop/open-vm-tools/line207")
!223 = !{!224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236}
!224 = !DIEnumerator(name: "FILEIO_SUCCESS", value: 0)
!225 = !DIEnumerator(name: "FILEIO_CANCELLED", value: 1)
!226 = !DIEnumerator(name: "FILEIO_ERROR", value: 2)
!227 = !DIEnumerator(name: "FILEIO_OPEN_ERROR_EXIST", value: 3)
!228 = !DIEnumerator(name: "FILEIO_LOCK_FAILED", value: 4)
!229 = !DIEnumerator(name: "FILEIO_READ_ERROR_EOF", value: 5)
!230 = !DIEnumerator(name: "FILEIO_FILE_NOT_FOUND", value: 6)
!231 = !DIEnumerator(name: "FILEIO_NO_PERMISSION", value: 7)
!232 = !DIEnumerator(name: "FILEIO_FILE_NAME_TOO_LONG", value: 8)
!233 = !DIEnumerator(name: "FILEIO_WRITE_ERROR_FBIG", value: 9)
!234 = !DIEnumerator(name: "FILEIO_WRITE_ERROR_NOSPC", value: 10)
!235 = !DIEnumerator(name: "FILEIO_WRITE_ERROR_DQUOT", value: 11)
!236 = !DIEnumerator(name: "FILEIO_ERROR_LAST", value: 12)
!237 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !222, line: 256, size: 32, align: 32, elements: !238)
!238 = !{!239, !240, !241, !242, !243}
!239 = !DIEnumerator(name: "FILEIO_OPEN", value: 0)
!240 = !DIEnumerator(name: "FILEIO_OPEN_EMPTY", value: 1)
!241 = !DIEnumerator(name: "FILEIO_OPEN_CREATE", value: 2)
!242 = !DIEnumerator(name: "FILEIO_OPEN_CREATE_SAFE", value: 3)
!243 = !DIEnumerator(name: "FILEIO_OPEN_CREATE_EMPTY", value: 4)
!244 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !222, line: 83, size: 32, align: 32, elements: !245)
!245 = !{!246, !247, !248}
!246 = !DIEnumerator(name: "FILEIO_SEEK_BEGIN", value: 0)
!247 = !DIEnumerator(name: "FILEIO_SEEK_CURRENT", value: 1)
!248 = !DIEnumerator(name: "FILEIO_SEEK_END", value: 2)
!249 = !{!250, !255, !256, !262, !263, !266}
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32", file: !251, line: 174, baseType: !252)
!251 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line207")
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !253, line: 196, baseType: !254)
!253 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line207")
!254 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64, align: 64)
!257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !251, line: 177, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !260, line: 48, baseType: !261)
!260 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line207")
!261 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64, align: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !251, line: 171, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !260, line: 55, baseType: !265)
!265 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !267, line: 216, baseType: !265)
!267 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line207")
!268 = !{!269, !295, !311, !316, !321}
!269 = distinct !DIGlobalVariable(name: "_doOnceDone", scope: !270, file: !271, line: 919, type: !294, isLocal: true, isDefinition: true, variable: i8* @FileIOCreateRetry._doOnceDone)
!270 = distinct !DISubprogram(name: "FileIOCreateRetry", scope: !271, file: !271, line: 833, type: !272, isLocal: false, isDefinition: true, scopeLine: 839, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!271 = !DIFile(filename: "fileIOPosix.c", directory: "/home/lichi/Desktop/open-vm-tools/line207")
!272 = !DISubroutineType(types: !273)
!273 = !{!274, !275, !287, !254, !289, !254, !290}
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "FileIOResult", file: !222, line: 318, baseType: !221)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64, align: 64)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "FileIODescriptor", file: !222, line: 79, baseType: !277)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FileIODescriptor", file: !222, line: 74, size: 192, align: 64, elements: !278)
!278 = !{!279, !280, !281, !284}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "posix", scope: !277, file: !222, line: 75, baseType: !254, size: 32, align: 32)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !277, file: !222, line: 76, baseType: !254, size: 32, align: 32, offset: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "fileName", scope: !277, file: !222, line: 77, baseType: !282, size: 64, align: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64, align: 64)
!283 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "lockToken", scope: !277, file: !222, line: 78, baseType: !285, size: 64, align: 64, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = !DICompositeType(tag: DW_TAG_structure_type, name: "FileLockToken", file: !222, line: 59, flags: DIFlagFwdDecl)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64, align: 64)
!288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "FileIOOpenAction", file: !222, line: 262, baseType: !237)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !251, line: 173, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !260, line: 51, baseType: !292)
!292 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!293 = !{}
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !251, line: 230, baseType: !283)
!295 = distinct !DIGlobalVariable(name: "filePosixOptions", scope: !0, file: !271, line: 156, type: !296, isLocal: true, isDefinition: true, variable: %struct.FilePosixOptions* @filePosixOptions)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "FilePosixOptions", file: !271, line: 153, baseType: !297)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FilePosixOptions", file: !271, line: 145, size: 192, align: 64, elements: !298)
!298 = !{!299, !300, !301, !302, !303, !304, !305}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !297, file: !271, line: 146, baseType: !294, size: 8, align: 8)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "aligned", scope: !297, file: !271, line: 147, baseType: !294, size: 8, align: 8, offset: 8)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !297, file: !271, line: 148, baseType: !294, size: 8, align: 8, offset: 16)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "countThreshold", scope: !297, file: !271, line: 149, baseType: !254, size: 32, align: 32, offset: 32)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "sizeThreshold", scope: !297, file: !271, line: 150, baseType: !254, size: 32, align: 32, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "aioNumThreads", scope: !297, file: !271, line: 151, baseType: !254, size: 32, align: 32, offset: 96)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "maxIOVec", scope: !297, file: !271, line: 152, baseType: !306, size: 64, align: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !307, line: 102, baseType: !308)
!307 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/open-vm-tools/line207")
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !309, line: 172, baseType: !310)
!309 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line207")
!310 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!311 = distinct !DIGlobalVariable(name: "FileIO_OpenActions", scope: !0, file: !271, line: 130, type: !312, isLocal: true, isDefinition: true, variable: [5 x i32]* @FileIO_OpenActions)
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 160, align: 32, elements: !314)
!313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!314 = !{!315}
!315 = !DISubrange(count: 5)
!316 = distinct !DIGlobalVariable(name: "FileIO_SeekOrigins", scope: !0, file: !271, line: 124, type: !317, isLocal: true, isDefinition: true, variable: [3 x i32]* @FileIO_SeekOrigins)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 96, align: 32, elements: !319)
!318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!319 = !{!320}
!320 = !DISubrange(count: 3)
!321 = distinct !DIGlobalVariable(name: "_doOnceDone", scope: !322, file: !271, line: 1975, type: !294, isLocal: true, isDefinition: true, variable: i8* @FileIOPwritevCoalesced._doOnceDone)
!322 = distinct !DISubprogram(name: "FileIOPwritevCoalesced", scope: !271, file: !271, line: 1925, type: !323, isLocal: true, isDefinition: true, scopeLine: 1932, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!323 = !DISubroutineType(types: !324)
!324 = !{!274, !275, !325, !254, !263, !266, !332}
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64, align: 64)
!326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !327)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !328, line: 43, size: 128, align: 64, elements: !329)
!328 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/uio.h", directory: "/home/lichi/Desktop/open-vm-tools/line207")
!329 = !{!330, !331}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !327, file: !328, line: 45, baseType: !255, size: 64, align: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !327, file: !328, line: 46, baseType: !266, size: 64, align: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64, align: 64)
!333 = !{i32 2, !"Dwarf Version", i32 4}
!334 = !{i32 2, !"Debug Info Version", i32 3}
!335 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!336 = distinct !DISubprogram(name: "FileIO_OptionalSafeInitialize", scope: !271, file: !271, line: 290, type: !337, isLocal: false, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!337 = !DISubroutineType(types: !338)
!338 = !{null}
!339 = !DILocation(line: 292, column: 26, scope: !340)
!340 = distinct !DILexicalBlock(scope: !336, file: !271, line: 292, column: 8)
!341 = !DILocation(line: 292, column: 9, scope: !340)
!342 = !DILocation(line: 292, column: 8, scope: !336)
!343 = !DILocation(line: 294, column: 29, scope: !344)
!344 = distinct !DILexicalBlock(scope: !340, file: !271, line: 292, column: 39)
!345 = !DILocation(line: 293, column: 32, scope: !344)
!346 = !DILocation(line: 303, column: 28, scope: !344)
!347 = !DILocation(line: 302, column: 32, scope: !344)
!348 = !DILocation(line: 306, column: 28, scope: !344)
!349 = !DILocation(line: 305, column: 39, scope: !344)
!350 = !DILocation(line: 309, column: 28, scope: !344)
!351 = !DILocation(line: 308, column: 38, scope: !344)
!352 = !DILocation(line: 312, column: 28, scope: !344)
!353 = !DILocation(line: 311, column: 38, scope: !344)
!354 = !DILocation(line: 314, column: 35, scope: !344)
!355 = !DILocation(line: 314, column: 33, scope: !344)
!356 = !DILocation(line: 317, column: 28, scope: !357)
!357 = distinct !DILexicalBlock(scope: !344, file: !271, line: 317, column: 11)
!358 = !DILocation(line: 317, column: 37, scope: !357)
!359 = !DILocation(line: 317, column: 11, scope: !344)
!360 = !DILocation(line: 318, column: 36, scope: !361)
!361 = distinct !DILexicalBlock(scope: !357, file: !271, line: 317, column: 42)
!362 = !DILocation(line: 319, column: 7, scope: !361)
!363 = !DILocation(line: 333, column: 36, scope: !344)
!364 = !DILocation(line: 335, column: 4, scope: !344)
!365 = !DILocation(line: 336, column: 1, scope: !336)
!366 = distinct !DISubprogram(name: "FileIO_Invalidate", scope: !271, file: !271, line: 356, type: !367, isLocal: false, isDefinition: true, scopeLine: 357, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!367 = !DISubroutineType(types: !368)
!368 = !{null, !275}
!369 = !DILocalVariable(name: "fd", arg: 1, scope: !366, file: !271, line: 356, type: !275)
!370 = !DIExpression()
!371 = !DILocation(line: 356, column: 37, scope: !366)
!372 = !DILocation(line: 360, column: 13, scope: !366)
!373 = !DILocation(line: 360, column: 4, scope: !366)
!374 = !DILocation(line: 361, column: 4, scope: !366)
!375 = !DILocation(line: 361, column: 8, scope: !366)
!376 = !DILocation(line: 361, column: 14, scope: !366)
!377 = !DILocation(line: 362, column: 1, scope: !366)
!378 = distinct !DISubprogram(name: "FileIO_IsValid", scope: !271, file: !271, line: 382, type: !379, isLocal: false, isDefinition: true, scopeLine: 383, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!379 = !DISubroutineType(types: !380)
!380 = !{!294, !381}
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64, align: 64)
!382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !276)
!383 = !DILocalVariable(name: "fd", arg: 1, scope: !378, file: !271, line: 382, type: !381)
!384 = !DILocation(line: 382, column: 40, scope: !378)
!385 = !DILocation(line: 386, column: 11, scope: !378)
!386 = !DILocation(line: 386, column: 15, scope: !378)
!387 = !DILocation(line: 386, column: 21, scope: !378)
!388 = !DILocation(line: 386, column: 4, scope: !378)
!389 = distinct !DISubprogram(name: "FileIO_CreateFDPosix", scope: !271, file: !271, line: 413, type: !390, isLocal: false, isDefinition: true, scopeLine: 415, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!390 = !DISubroutineType(types: !391)
!391 = !{!276, !254, !254}
!392 = !DILocalVariable(name: "posix", arg: 1, scope: !389, file: !271, line: 413, type: !254)
!393 = !DILocation(line: 413, column: 26, scope: !389)
!394 = !DILocalVariable(name: "flags", arg: 2, scope: !389, file: !271, line: 414, type: !254)
!395 = !DILocation(line: 414, column: 26, scope: !389)
!396 = !DILocalVariable(name: "fd", scope: !389, file: !271, line: 416, type: !276)
!397 = !DILocation(line: 416, column: 21, scope: !389)
!398 = !DILocation(line: 418, column: 4, scope: !389)
!399 = !DILocation(line: 420, column: 12, scope: !389)
!400 = !DILocation(line: 420, column: 18, scope: !389)
!401 = !DILocation(line: 420, column: 4, scope: !389)
!402 = !DILocation(line: 422, column: 10, scope: !403)
!403 = distinct !DILexicalBlock(scope: !389, file: !271, line: 420, column: 30)
!404 = !DILocation(line: 422, column: 16, scope: !403)
!405 = !DILocation(line: 423, column: 7, scope: !403)
!406 = !DILocation(line: 425, column: 10, scope: !403)
!407 = !DILocation(line: 425, column: 16, scope: !403)
!408 = !DILocation(line: 426, column: 7, scope: !403)
!409 = !DILocation(line: 428, column: 7, scope: !403)
!410 = !DILocation(line: 431, column: 10, scope: !403)
!411 = !DILocation(line: 431, column: 16, scope: !403)
!412 = !DILocation(line: 432, column: 7, scope: !403)
!413 = !DILocation(line: 436, column: 8, scope: !414)
!414 = distinct !DILexicalBlock(scope: !389, file: !271, line: 436, column: 8)
!415 = !DILocation(line: 436, column: 14, scope: !414)
!416 = !DILocation(line: 436, column: 8, scope: !389)
!417 = !DILocation(line: 437, column: 10, scope: !418)
!418 = distinct !DILexicalBlock(scope: !414, file: !271, line: 436, column: 23)
!419 = !DILocation(line: 437, column: 16, scope: !418)
!420 = !DILocation(line: 438, column: 4, scope: !418)
!421 = !DILocation(line: 440, column: 8, scope: !422)
!422 = distinct !DILexicalBlock(scope: !389, file: !271, line: 440, column: 8)
!423 = !DILocation(line: 440, column: 14, scope: !422)
!424 = !DILocation(line: 440, column: 8, scope: !389)
!425 = !DILocation(line: 441, column: 10, scope: !426)
!426 = distinct !DILexicalBlock(scope: !422, file: !271, line: 440, column: 25)
!427 = !DILocation(line: 441, column: 16, scope: !426)
!428 = !DILocation(line: 442, column: 4, scope: !426)
!429 = !DILocation(line: 445, column: 8, scope: !430)
!430 = distinct !DILexicalBlock(scope: !389, file: !271, line: 445, column: 8)
!431 = !DILocation(line: 445, column: 14, scope: !430)
!432 = !DILocation(line: 445, column: 8, scope: !389)
!433 = !DILocation(line: 446, column: 10, scope: !434)
!434 = distinct !DILexicalBlock(scope: !430, file: !271, line: 445, column: 26)
!435 = !DILocation(line: 446, column: 16, scope: !434)
!436 = !DILocation(line: 447, column: 4, scope: !434)
!437 = !DILocation(line: 450, column: 15, scope: !389)
!438 = !DILocation(line: 450, column: 7, scope: !389)
!439 = !DILocation(line: 450, column: 13, scope: !389)
!440 = !DILocation(line: 452, column: 11, scope: !389)
!441 = !DILocation(line: 452, column: 4, scope: !389)
!442 = !DILocalVariable(name: "file", arg: 1, scope: !270, file: !271, line: 833, type: !275)
!443 = !DILocation(line: 833, column: 37, scope: !270)
!444 = !DILocalVariable(name: "pathName", arg: 2, scope: !270, file: !271, line: 834, type: !287)
!445 = !DILocation(line: 834, column: 31, scope: !270)
!446 = !DILocalVariable(name: "access", arg: 3, scope: !270, file: !271, line: 835, type: !254)
!447 = !DILocation(line: 835, column: 23, scope: !270)
!448 = !DILocalVariable(name: "action", arg: 4, scope: !270, file: !271, line: 836, type: !289)
!449 = !DILocation(line: 836, column: 36, scope: !270)
!450 = !DILocalVariable(name: "mode", arg: 5, scope: !270, file: !271, line: 837, type: !254)
!451 = !DILocation(line: 837, column: 23, scope: !270)
!452 = !DILocalVariable(name: "maxWaitTimeMsec", arg: 6, scope: !270, file: !271, line: 838, type: !290)
!453 = !DILocation(line: 838, column: 26, scope: !270)
!454 = !DILocalVariable(name: "fd", scope: !270, file: !271, line: 840, type: !254)
!455 = !DILocation(line: 840, column: 8, scope: !270)
!456 = !DILocalVariable(name: "flags", scope: !270, file: !271, line: 841, type: !254)
!457 = !DILocation(line: 841, column: 8, scope: !270)
!458 = !DILocalVariable(name: "error", scope: !270, file: !271, line: 842, type: !254)
!459 = !DILocation(line: 842, column: 8, scope: !270)
!460 = !DILocalVariable(name: "ret", scope: !270, file: !271, line: 843, type: !274)
!461 = !DILocation(line: 843, column: 17, scope: !270)
!462 = !DILocation(line: 847, column: 8, scope: !463)
!463 = distinct !DILexicalBlock(scope: !270, file: !271, line: 847, column: 8)
!464 = !DILocation(line: 847, column: 17, scope: !463)
!465 = !DILocation(line: 847, column: 8, scope: !270)
!466 = !DILocation(line: 848, column: 8, scope: !467)
!467 = distinct !DILexicalBlock(scope: !463, file: !271, line: 847, column: 25)
!468 = !DILocation(line: 848, column: 12, scope: !467)
!469 = !DILocation(line: 850, column: 7, scope: !467)
!470 = !DILocation(line: 855, column: 4, scope: !270)
!471 = distinct !{!471, !470}
!472 = !DILocation(line: 855, column: 75, scope: !473)
!473 = !DILexicalBlockFile(scope: !474, file: !271, discriminator: 1)
!474 = distinct !DILexicalBlock(scope: !270, file: !271, line: 855, column: 7)
!475 = !DILocation(line: 857, column: 4, scope: !270)
!476 = !DILocation(line: 869, column: 8, scope: !477)
!477 = distinct !DILexicalBlock(scope: !270, file: !271, line: 869, column: 8)
!478 = !DILocation(line: 869, column: 8, scope: !270)
!479 = !DILocation(line: 870, column: 12, scope: !480)
!480 = distinct !DILexicalBlock(scope: !481, file: !271, line: 870, column: 11)
!481 = distinct !DILexicalBlock(scope: !477, file: !271, line: 869, column: 28)
!482 = !DILocation(line: 870, column: 19, scope: !480)
!483 = !DILocation(line: 870, column: 32, scope: !480)
!484 = !DILocation(line: 870, column: 11, scope: !481)
!485 = !DILocation(line: 871, column: 16, scope: !486)
!486 = distinct !DILexicalBlock(scope: !480, file: !271, line: 870, column: 38)
!487 = !DILocation(line: 872, column: 7, scope: !486)
!488 = !DILocation(line: 872, column: 19, scope: !489)
!489 = !DILexicalBlockFile(scope: !490, file: !271, discriminator: 1)
!490 = distinct !DILexicalBlock(scope: !480, file: !271, line: 872, column: 18)
!491 = !DILocation(line: 872, column: 26, scope: !489)
!492 = !DILocation(line: 872, column: 39, scope: !489)
!493 = !DILocation(line: 872, column: 18, scope: !489)
!494 = !DILocation(line: 873, column: 16, scope: !495)
!495 = distinct !DILexicalBlock(scope: !490, file: !271, line: 872, column: 45)
!496 = !DILocation(line: 874, column: 7, scope: !495)
!497 = !DILocation(line: 874, column: 19, scope: !498)
!498 = !DILexicalBlockFile(scope: !499, file: !271, discriminator: 1)
!499 = distinct !DILexicalBlock(scope: !490, file: !271, line: 874, column: 18)
!500 = !DILocation(line: 874, column: 26, scope: !498)
!501 = !DILocation(line: 874, column: 39, scope: !498)
!502 = !DILocation(line: 874, column: 18, scope: !498)
!503 = !DILocation(line: 875, column: 16, scope: !504)
!504 = distinct !DILexicalBlock(scope: !499, file: !271, line: 874, column: 45)
!505 = !DILocation(line: 876, column: 7, scope: !504)
!506 = !DILocation(line: 876, column: 19, scope: !507)
!507 = !DILexicalBlockFile(scope: !508, file: !271, discriminator: 1)
!508 = distinct !DILexicalBlock(scope: !499, file: !271, line: 876, column: 18)
!509 = !DILocation(line: 876, column: 26, scope: !507)
!510 = !DILocation(line: 876, column: 39, scope: !507)
!511 = !DILocation(line: 876, column: 18, scope: !507)
!512 = !DILocation(line: 877, column: 16, scope: !513)
!513 = distinct !DILexicalBlock(scope: !508, file: !271, line: 876, column: 45)
!514 = !DILocation(line: 878, column: 7, scope: !513)
!515 = !DILocation(line: 879, column: 4, scope: !481)
!516 = !DILocation(line: 891, column: 16, scope: !270)
!517 = !DILocation(line: 891, column: 22, scope: !270)
!518 = !DILocation(line: 891, column: 4, scope: !270)
!519 = !DILocation(line: 893, column: 9, scope: !520)
!520 = distinct !DILexicalBlock(scope: !270, file: !271, line: 893, column: 8)
!521 = !DILocation(line: 893, column: 16, scope: !520)
!522 = !DILocation(line: 893, column: 29, scope: !520)
!523 = !DILocation(line: 893, column: 8, scope: !270)
!524 = !DILocation(line: 894, column: 25, scope: !525)
!525 = distinct !DILexicalBlock(scope: !520, file: !271, line: 893, column: 35)
!526 = !DILocation(line: 894, column: 31, scope: !525)
!527 = !DILocation(line: 894, column: 13, scope: !525)
!528 = !DILocation(line: 894, column: 11, scope: !525)
!529 = !DILocation(line: 895, column: 29, scope: !530)
!530 = distinct !DILexicalBlock(scope: !525, file: !271, line: 895, column: 11)
!531 = !DILocation(line: 895, column: 12, scope: !530)
!532 = !DILocation(line: 895, column: 11, scope: !525)
!533 = !DILocation(line: 896, column: 1, scope: !534)
!534 = distinct !DILexicalBlock(scope: !530, file: !271, line: 895, column: 35)
!535 = !DILocation(line: 897, column: 10, scope: !534)
!536 = !DILocation(line: 899, column: 4, scope: !525)
!537 = !DILocation(line: 901, column: 9, scope: !538)
!538 = distinct !DILexicalBlock(scope: !270, file: !271, line: 901, column: 8)
!539 = !DILocation(line: 901, column: 16, scope: !538)
!540 = !DILocation(line: 901, column: 41, scope: !538)
!541 = !DILocation(line: 901, column: 8, scope: !270)
!542 = !DILocation(line: 903, column: 13, scope: !543)
!543 = distinct !DILexicalBlock(scope: !538, file: !271, line: 902, column: 31)
!544 = !DILocation(line: 903, column: 4, scope: !543)
!545 = !DILocation(line: 903, column: 15, scope: !546)
!546 = !DILexicalBlockFile(scope: !547, file: !271, discriminator: 1)
!547 = distinct !DILexicalBlock(scope: !538, file: !271, line: 903, column: 15)
!548 = !DILocation(line: 903, column: 22, scope: !546)
!549 = !DILocation(line: 904, column: 13, scope: !550)
!550 = distinct !DILexicalBlock(scope: !547, file: !271, line: 903, column: 34)
!551 = !DILocation(line: 905, column: 4, scope: !550)
!552 = !DILocation(line: 905, column: 15, scope: !553)
!553 = !DILexicalBlockFile(scope: !554, file: !271, discriminator: 1)
!554 = distinct !DILexicalBlock(scope: !547, file: !271, line: 905, column: 15)
!555 = !DILocation(line: 905, column: 22, scope: !553)
!556 = !DILocation(line: 906, column: 13, scope: !557)
!557 = distinct !DILexicalBlock(scope: !554, file: !271, line: 905, column: 34)
!558 = !DILocation(line: 907, column: 4, scope: !557)
!559 = !DILocation(line: 909, column: 8, scope: !560)
!560 = distinct !DILexicalBlock(scope: !270, file: !271, line: 909, column: 8)
!561 = !DILocation(line: 909, column: 15, scope: !560)
!562 = !DILocation(line: 909, column: 26, scope: !560)
!563 = !DILocation(line: 910, column: 8, scope: !560)
!564 = !DILocation(line: 910, column: 15, scope: !560)
!565 = !DILocation(line: 909, column: 8, scope: !566)
!566 = !DILexicalBlockFile(scope: !270, file: !271, discriminator: 1)
!567 = !DILocation(line: 911, column: 13, scope: !568)
!568 = distinct !DILexicalBlock(scope: !560, file: !271, line: 910, column: 28)
!569 = !DILocation(line: 912, column: 4, scope: !568)
!570 = !DILocation(line: 914, column: 8, scope: !571)
!571 = distinct !DILexicalBlock(scope: !270, file: !271, line: 914, column: 8)
!572 = !DILocation(line: 914, column: 15, scope: !571)
!573 = !DILocation(line: 914, column: 8, scope: !270)
!574 = !DILocation(line: 918, column: 14, scope: !575)
!575 = distinct !DILexicalBlock(scope: !571, file: !271, line: 914, column: 27)
!576 = !DILocation(line: 919, column: 7, scope: !575)
!577 = distinct !{!577, !576}
!578 = !DILocation(line: 919, column: 64, scope: !579)
!579 = !DILexicalBlockFile(scope: !580, file: !271, discriminator: 1)
!580 = distinct !DILexicalBlock(scope: !581, file: !271, line: 919, column: 45)
!581 = distinct !DILexicalBlock(scope: !575, file: !271, line: 919, column: 10)
!582 = !DILocation(line: 919, column: 63, scope: !579)
!583 = !DILocation(line: 919, column: 62, scope: !579)
!584 = !DILocation(line: 919, column: 45, scope: !579)
!585 = !DILocation(line: 919, column: 96, scope: !586)
!586 = !DILexicalBlockFile(scope: !587, file: !271, discriminator: 2)
!587 = distinct !DILexicalBlock(scope: !580, file: !271, line: 919, column: 82)
!588 = !DILocation(line: 919, column: 168, scope: !586)
!589 = !DILocation(line: 919, column: 101, scope: !586)
!590 = !DILocation(line: 919, column: 179, scope: !586)
!591 = !DILocation(line: 919, column: 181, scope: !592)
!592 = !DILexicalBlockFile(scope: !581, file: !271, discriminator: 3)
!593 = !DILocation(line: 922, column: 4, scope: !575)
!594 = !DILocation(line: 924, column: 8, scope: !595)
!595 = distinct !DILexicalBlock(scope: !270, file: !271, line: 924, column: 8)
!596 = !DILocation(line: 924, column: 15, scope: !595)
!597 = !DILocation(line: 924, column: 8, scope: !270)
!598 = !DILocation(line: 925, column: 13, scope: !599)
!599 = distinct !DILexicalBlock(scope: !595, file: !271, line: 924, column: 27)
!600 = !DILocation(line: 926, column: 4, scope: !599)
!601 = !DILocation(line: 928, column: 8, scope: !602)
!602 = distinct !DILexicalBlock(scope: !270, file: !271, line: 928, column: 8)
!603 = !DILocation(line: 928, column: 15, scope: !602)
!604 = !DILocation(line: 928, column: 8, scope: !270)
!605 = !DILocation(line: 929, column: 13, scope: !606)
!606 = distinct !DILexicalBlock(scope: !602, file: !271, line: 928, column: 28)
!607 = !DILocation(line: 930, column: 4, scope: !606)
!608 = !DILocation(line: 933, column: 8, scope: !609)
!609 = distinct !DILexicalBlock(scope: !270, file: !271, line: 933, column: 8)
!610 = !DILocation(line: 933, column: 15, scope: !609)
!611 = !DILocation(line: 933, column: 8, scope: !270)
!612 = !DILocation(line: 934, column: 13, scope: !613)
!613 = distinct !DILexicalBlock(scope: !609, file: !271, line: 933, column: 28)
!614 = !DILocation(line: 935, column: 4, scope: !613)
!615 = !DILocation(line: 939, column: 8, scope: !616)
!616 = distinct !DILexicalBlock(scope: !270, file: !271, line: 939, column: 8)
!617 = !DILocation(line: 939, column: 15, scope: !616)
!618 = !DILocation(line: 939, column: 8, scope: !270)
!619 = !DILocation(line: 940, column: 13, scope: !620)
!620 = distinct !DILexicalBlock(scope: !616, file: !271, line: 939, column: 27)
!621 = !DILocation(line: 941, column: 4, scope: !620)
!622 = !DILocation(line: 945, column: 8, scope: !623)
!623 = distinct !DILexicalBlock(scope: !270, file: !271, line: 945, column: 8)
!624 = !DILocation(line: 945, column: 15, scope: !623)
!625 = !DILocation(line: 945, column: 8, scope: !270)
!626 = !DILocation(line: 946, column: 13, scope: !627)
!627 = distinct !DILexicalBlock(scope: !623, file: !271, line: 945, column: 28)
!628 = !DILocation(line: 947, column: 4, scope: !627)
!629 = !DILocation(line: 951, column: 8, scope: !630)
!630 = distinct !DILexicalBlock(scope: !270, file: !271, line: 951, column: 8)
!631 = !DILocation(line: 951, column: 14, scope: !630)
!632 = !DILocation(line: 951, column: 8, scope: !270)
!633 = !DILocation(line: 952, column: 13, scope: !634)
!634 = distinct !DILexicalBlock(scope: !630, file: !271, line: 951, column: 27)
!635 = !DILocation(line: 953, column: 4, scope: !634)
!636 = !DILocation(line: 956, column: 32, scope: !270)
!637 = !DILocation(line: 956, column: 13, scope: !270)
!638 = !DILocation(line: 956, column: 10, scope: !270)
!639 = !DILocation(line: 958, column: 18, scope: !270)
!640 = !DILocation(line: 958, column: 4, scope: !270)
!641 = !DILocation(line: 958, column: 10, scope: !270)
!642 = !DILocation(line: 958, column: 16, scope: !270)
!643 = !DILocalVariable(name: "uid", scope: !644, file: !271, line: 974, type: !645)
!644 = distinct !DILexicalBlock(scope: !270, file: !271, line: 973, column: 4)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !253, line: 80, baseType: !646)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !309, line: 125, baseType: !292)
!647 = !DILocation(line: 974, column: 13, scope: !644)
!648 = !DILocation(line: 976, column: 11, scope: !649)
!649 = distinct !DILexicalBlock(scope: !644, file: !271, line: 976, column: 11)
!650 = !DILocation(line: 976, column: 18, scope: !649)
!651 = !DILocation(line: 976, column: 11, scope: !644)
!652 = !DILocation(line: 977, column: 16, scope: !653)
!653 = distinct !DILexicalBlock(scope: !649, file: !271, line: 976, column: 30)
!654 = !DILocation(line: 977, column: 14, scope: !653)
!655 = !DILocation(line: 978, column: 7, scope: !653)
!656 = !DILocation(line: 980, column: 23, scope: !644)
!657 = !DILocation(line: 980, column: 33, scope: !644)
!658 = !DILocation(line: 980, column: 40, scope: !644)
!659 = !DILocation(line: 980, column: 12, scope: !644)
!660 = !DILocation(line: 980, column: 10, scope: !644)
!661 = !DILocation(line: 982, column: 16, scope: !644)
!662 = !DILocation(line: 982, column: 15, scope: !644)
!663 = !DILocation(line: 982, column: 13, scope: !644)
!664 = !DILocation(line: 984, column: 11, scope: !665)
!665 = distinct !DILexicalBlock(scope: !644, file: !271, line: 984, column: 11)
!666 = !DILocation(line: 984, column: 18, scope: !665)
!667 = !DILocation(line: 984, column: 11, scope: !644)
!668 = !DILocation(line: 985, column: 26, scope: !669)
!669 = distinct !DILexicalBlock(scope: !665, file: !271, line: 984, column: 30)
!670 = !DILocation(line: 985, column: 10, scope: !669)
!671 = !DILocation(line: 986, column: 7, scope: !669)
!672 = !DILocation(line: 988, column: 14, scope: !644)
!673 = !DILocation(line: 988, column: 8, scope: !644)
!674 = !DILocation(line: 988, column: 12, scope: !644)
!675 = !DILocation(line: 992, column: 8, scope: !676)
!676 = distinct !DILexicalBlock(scope: !270, file: !271, line: 992, column: 8)
!677 = !DILocation(line: 992, column: 11, scope: !676)
!678 = !DILocation(line: 992, column: 8, scope: !270)
!679 = !DILocation(line: 993, column: 33, scope: !680)
!680 = distinct !DILexicalBlock(scope: !676, file: !271, line: 992, column: 18)
!681 = !DILocation(line: 993, column: 32, scope: !680)
!682 = !DILocation(line: 993, column: 13, scope: !683)
!683 = !DILexicalBlockFile(scope: !680, file: !271, discriminator: 1)
!684 = !DILocation(line: 993, column: 11, scope: !680)
!685 = !DILocation(line: 994, column: 11, scope: !686)
!686 = distinct !DILexicalBlock(scope: !680, file: !271, line: 994, column: 11)
!687 = !DILocation(line: 994, column: 15, scope: !686)
!688 = !DILocation(line: 994, column: 11, scope: !680)
!689 = !DILocation(line: 995, column: 48, scope: !690)
!690 = distinct !DILexicalBlock(scope: !686, file: !271, line: 994, column: 32)
!691 = !DILocation(line: 996, column: 32, scope: !690)
!692 = !DILocation(line: 996, column: 31, scope: !690)
!693 = !DILocation(line: 996, column: 14, scope: !694)
!694 = !DILexicalBlockFile(scope: !690, file: !271, discriminator: 1)
!695 = !DILocation(line: 995, column: 10, scope: !690)
!696 = !DILocation(line: 997, column: 7, scope: !690)
!697 = !DILocation(line: 998, column: 1, scope: !680)
!698 = !DILocation(line: 999, column: 7, scope: !680)
!699 = !DILocation(line: 1027, column: 8, scope: !700)
!700 = distinct !DILexicalBlock(scope: !270, file: !271, line: 1027, column: 8)
!701 = !DILocation(line: 1027, column: 15, scope: !700)
!702 = !DILocation(line: 1027, column: 8, scope: !270)
!703 = !DILocation(line: 1033, column: 24, scope: !704)
!704 = distinct !DILexicalBlock(scope: !705, file: !271, line: 1033, column: 11)
!705 = distinct !DILexicalBlock(scope: !700, file: !271, line: 1027, column: 27)
!706 = !DILocation(line: 1033, column: 11, scope: !704)
!707 = !DILocation(line: 1033, column: 34, scope: !704)
!708 = !DILocation(line: 1033, column: 11, scope: !705)
!709 = !DILocation(line: 1034, column: 36, scope: !710)
!710 = distinct !DILexicalBlock(scope: !704, file: !271, line: 1033, column: 41)
!711 = !DILocation(line: 1034, column: 35, scope: !710)
!712 = !DILocation(line: 1034, column: 16, scope: !713)
!713 = !DILexicalBlockFile(scope: !710, file: !271, discriminator: 1)
!714 = !DILocation(line: 1034, column: 14, scope: !710)
!715 = !DILocation(line: 1035, column: 14, scope: !716)
!716 = distinct !DILexicalBlock(scope: !710, file: !271, line: 1035, column: 14)
!717 = !DILocation(line: 1035, column: 18, scope: !716)
!718 = !DILocation(line: 1035, column: 14, scope: !710)
!719 = !DILocation(line: 1036, column: 53, scope: !720)
!720 = distinct !DILexicalBlock(scope: !716, file: !271, line: 1035, column: 35)
!721 = !DILocation(line: 1037, column: 35, scope: !720)
!722 = !DILocation(line: 1037, column: 34, scope: !720)
!723 = !DILocation(line: 1037, column: 17, scope: !724)
!724 = !DILexicalBlockFile(scope: !720, file: !271, discriminator: 1)
!725 = !DILocation(line: 1036, column: 13, scope: !720)
!726 = !DILocation(line: 1038, column: 10, scope: !720)
!727 = !DILocation(line: 1039, column: 1, scope: !710)
!728 = !DILocation(line: 1040, column: 10, scope: !710)
!729 = !DILocation(line: 1042, column: 4, scope: !705)
!730 = !DILocation(line: 1044, column: 18, scope: !270)
!731 = !DILocation(line: 1044, column: 4, scope: !270)
!732 = !DILocation(line: 1044, column: 10, scope: !270)
!733 = !DILocation(line: 1044, column: 16, scope: !270)
!734 = !DILocation(line: 1046, column: 4, scope: !270)
!735 = !DILocation(line: 1048, column: 13, scope: !270)
!736 = !DILocation(line: 1048, column: 12, scope: !270)
!737 = !DILocation(line: 1049, column: 10, scope: !270)
!738 = !DILocation(line: 1050, column: 8, scope: !739)
!739 = distinct !DILexicalBlock(scope: !270, file: !271, line: 1050, column: 8)
!740 = !DILocation(line: 1050, column: 11, scope: !739)
!741 = !DILocation(line: 1050, column: 8, scope: !270)
!742 = !DILocation(line: 1051, column: 13, scope: !743)
!743 = distinct !DILexicalBlock(scope: !739, file: !271, line: 1050, column: 18)
!744 = !DILocation(line: 1051, column: 7, scope: !743)
!745 = !DILocation(line: 1052, column: 4, scope: !743)
!746 = !DILocation(line: 1053, column: 18, scope: !270)
!747 = !DILocation(line: 1053, column: 4, scope: !270)
!748 = !DILocation(line: 1054, column: 19, scope: !270)
!749 = !DILocation(line: 1054, column: 4, scope: !270)
!750 = !DILocation(line: 1055, column: 22, scope: !270)
!751 = !DILocation(line: 1055, column: 4, scope: !270)
!752 = !DILocation(line: 1056, column: 11, scope: !270)
!753 = !DILocation(line: 1056, column: 5, scope: !270)
!754 = !DILocation(line: 1056, column: 9, scope: !270)
!755 = !DILocation(line: 1058, column: 11, scope: !270)
!756 = !DILocation(line: 1058, column: 4, scope: !270)
!757 = !DILocation(line: 1059, column: 1, scope: !270)
!758 = distinct !DISubprogram(name: "FileIO_IsSuccess", scope: !222, file: !222, line: 514, type: !759, isLocal: true, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!759 = !DISubroutineType(types: !760)
!760 = !{!294, !274}
!761 = !DILocalVariable(name: "res", arg: 1, scope: !758, file: !222, line: 514, type: !274)
!762 = !DILocation(line: 514, column: 31, scope: !758)
!763 = !DILocation(line: 516, column: 11, scope: !758)
!764 = !DILocation(line: 516, column: 15, scope: !758)
!765 = !DILocation(line: 516, column: 4, scope: !758)
!766 = distinct !DISubprogram(name: "FileIOErrno2Result", scope: !271, file: !271, line: 235, type: !767, isLocal: true, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!767 = !DISubroutineType(types: !768)
!768 = !{!274, !254}
!769 = !DILocalVariable(name: "error", arg: 1, scope: !766, file: !271, line: 235, type: !254)
!770 = !DILocation(line: 235, column: 24, scope: !766)
!771 = !DILocation(line: 237, column: 12, scope: !766)
!772 = !DILocation(line: 237, column: 4, scope: !766)
!773 = !DILocation(line: 239, column: 7, scope: !774)
!774 = distinct !DILexicalBlock(scope: !766, file: !271, line: 237, column: 19)
!775 = !DILocation(line: 241, column: 7, scope: !774)
!776 = !DILocation(line: 243, column: 7, scope: !774)
!777 = !DILocation(line: 245, column: 7, scope: !774)
!778 = !DILocation(line: 247, column: 7, scope: !774)
!779 = !DILocation(line: 249, column: 7, scope: !774)
!780 = !DILocation(line: 251, column: 7, scope: !774)
!781 = !DILocation(line: 258, column: 7, scope: !774)
!782 = !DILocation(line: 261, column: 7, scope: !774)
!783 = !DILocation(line: 263, column: 1, scope: !766)
!784 = distinct !DISubprogram(name: "FileIO_CreateRetry", scope: !271, file: !271, line: 1082, type: !272, isLocal: false, isDefinition: true, scopeLine: 1088, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!785 = !DILocalVariable(name: "file", arg: 1, scope: !784, file: !271, line: 1082, type: !275)
!786 = !DILocation(line: 1082, column: 38, scope: !784)
!787 = !DILocalVariable(name: "pathName", arg: 2, scope: !784, file: !271, line: 1083, type: !287)
!788 = !DILocation(line: 1083, column: 32, scope: !784)
!789 = !DILocalVariable(name: "access", arg: 3, scope: !784, file: !271, line: 1084, type: !254)
!790 = !DILocation(line: 1084, column: 24, scope: !784)
!791 = !DILocalVariable(name: "action", arg: 4, scope: !784, file: !271, line: 1085, type: !289)
!792 = !DILocation(line: 1085, column: 37, scope: !784)
!793 = !DILocalVariable(name: "mode", arg: 5, scope: !784, file: !271, line: 1086, type: !254)
!794 = !DILocation(line: 1086, column: 24, scope: !784)
!795 = !DILocalVariable(name: "maxWaitTimeMsec", arg: 6, scope: !784, file: !271, line: 1087, type: !290)
!796 = !DILocation(line: 1087, column: 27, scope: !784)
!797 = !DILocation(line: 1089, column: 29, scope: !784)
!798 = !DILocation(line: 1089, column: 35, scope: !784)
!799 = !DILocation(line: 1089, column: 45, scope: !784)
!800 = !DILocation(line: 1089, column: 53, scope: !784)
!801 = !DILocation(line: 1089, column: 61, scope: !784)
!802 = !DILocation(line: 1090, column: 29, scope: !784)
!803 = !DILocation(line: 1089, column: 11, scope: !784)
!804 = !DILocation(line: 1089, column: 4, scope: !784)
!805 = distinct !DISubprogram(name: "FileIO_Create", scope: !271, file: !271, line: 1114, type: !806, isLocal: false, isDefinition: true, scopeLine: 1119, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!806 = !DISubroutineType(types: !807)
!807 = !{!274, !275, !287, !254, !289, !254}
!808 = !DILocalVariable(name: "file", arg: 1, scope: !805, file: !271, line: 1114, type: !275)
!809 = !DILocation(line: 1114, column: 33, scope: !805)
!810 = !DILocalVariable(name: "pathName", arg: 2, scope: !805, file: !271, line: 1115, type: !287)
!811 = !DILocation(line: 1115, column: 27, scope: !805)
!812 = !DILocalVariable(name: "access", arg: 3, scope: !805, file: !271, line: 1116, type: !254)
!813 = !DILocation(line: 1116, column: 19, scope: !805)
!814 = !DILocalVariable(name: "action", arg: 4, scope: !805, file: !271, line: 1117, type: !289)
!815 = !DILocation(line: 1117, column: 32, scope: !805)
!816 = !DILocalVariable(name: "mode", arg: 5, scope: !805, file: !271, line: 1118, type: !254)
!817 = !DILocation(line: 1118, column: 19, scope: !805)
!818 = !DILocation(line: 1120, column: 29, scope: !805)
!819 = !DILocation(line: 1120, column: 35, scope: !805)
!820 = !DILocation(line: 1120, column: 45, scope: !805)
!821 = !DILocation(line: 1120, column: 53, scope: !805)
!822 = !DILocation(line: 1120, column: 61, scope: !805)
!823 = !DILocation(line: 1120, column: 11, scope: !805)
!824 = !DILocation(line: 1120, column: 4, scope: !805)
!825 = distinct !DISubprogram(name: "FileIO_OpenRetry", scope: !271, file: !271, line: 1145, type: !826, isLocal: false, isDefinition: true, scopeLine: 1150, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!826 = !DISubroutineType(types: !827)
!827 = !{!274, !275, !287, !254, !289, !290}
!828 = !DILocalVariable(name: "file", arg: 1, scope: !825, file: !271, line: 1145, type: !275)
!829 = !DILocation(line: 1145, column: 36, scope: !825)
!830 = !DILocalVariable(name: "pathName", arg: 2, scope: !825, file: !271, line: 1146, type: !287)
!831 = !DILocation(line: 1146, column: 30, scope: !825)
!832 = !DILocalVariable(name: "access", arg: 3, scope: !825, file: !271, line: 1147, type: !254)
!833 = !DILocation(line: 1147, column: 22, scope: !825)
!834 = !DILocalVariable(name: "action", arg: 4, scope: !825, file: !271, line: 1148, type: !289)
!835 = !DILocation(line: 1148, column: 35, scope: !825)
!836 = !DILocalVariable(name: "maxWaitTimeMsec", arg: 5, scope: !825, file: !271, line: 1149, type: !290)
!837 = !DILocation(line: 1149, column: 25, scope: !825)
!838 = !DILocation(line: 1180, column: 29, scope: !825)
!839 = !DILocation(line: 1180, column: 35, scope: !825)
!840 = !DILocation(line: 1180, column: 45, scope: !825)
!841 = !DILocation(line: 1180, column: 53, scope: !825)
!842 = !DILocation(line: 1181, column: 47, scope: !825)
!843 = !DILocation(line: 1180, column: 11, scope: !825)
!844 = !DILocation(line: 1180, column: 4, scope: !825)
!845 = distinct !DISubprogram(name: "FileIO_Open", scope: !271, file: !271, line: 1206, type: !846, isLocal: false, isDefinition: true, scopeLine: 1210, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!846 = !DISubroutineType(types: !847)
!847 = !{!274, !275, !287, !254, !289}
!848 = !DILocalVariable(name: "file", arg: 1, scope: !845, file: !271, line: 1206, type: !275)
!849 = !DILocation(line: 1206, column: 31, scope: !845)
!850 = !DILocalVariable(name: "pathName", arg: 2, scope: !845, file: !271, line: 1207, type: !287)
!851 = !DILocation(line: 1207, column: 25, scope: !845)
!852 = !DILocalVariable(name: "access", arg: 3, scope: !845, file: !271, line: 1208, type: !254)
!853 = !DILocation(line: 1208, column: 17, scope: !845)
!854 = !DILocalVariable(name: "action", arg: 4, scope: !845, file: !271, line: 1209, type: !289)
!855 = !DILocation(line: 1209, column: 30, scope: !845)
!856 = !DILocation(line: 1211, column: 28, scope: !845)
!857 = !DILocation(line: 1211, column: 34, scope: !845)
!858 = !DILocation(line: 1211, column: 44, scope: !845)
!859 = !DILocation(line: 1211, column: 52, scope: !845)
!860 = !DILocation(line: 1211, column: 11, scope: !845)
!861 = !DILocation(line: 1211, column: 4, scope: !845)
!862 = distinct !DISubprogram(name: "FileIO_Seek", scope: !271, file: !271, line: 1235, type: !863, isLocal: false, isDefinition: true, scopeLine: 1238, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!863 = !DISubroutineType(types: !864)
!864 = !{!263, !381, !865, !867}
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !251, line: 172, baseType: !866)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !253, line: 197, baseType: !310)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "FileIOSeekOrigin", file: !222, line: 90, baseType: !244)
!868 = !DILocalVariable(name: "file", arg: 1, scope: !862, file: !271, line: 1235, type: !381)
!869 = !DILocation(line: 1235, column: 37, scope: !862)
!870 = !DILocalVariable(name: "distance", arg: 2, scope: !862, file: !271, line: 1236, type: !865)
!871 = !DILocation(line: 1236, column: 19, scope: !862)
!872 = !DILocalVariable(name: "origin", arg: 3, scope: !862, file: !271, line: 1237, type: !867)
!873 = !DILocation(line: 1237, column: 30, scope: !862)
!874 = !DILocation(line: 1251, column: 4, scope: !862)
!875 = distinct !{!875, !874}
!876 = !DILocation(line: 1251, column: 67, scope: !877)
!877 = !DILexicalBlockFile(scope: !878, file: !271, discriminator: 1)
!878 = distinct !DILexicalBlock(scope: !862, file: !271, line: 1251, column: 7)
!879 = !DILocation(line: 1253, column: 17, scope: !862)
!880 = !DILocation(line: 1253, column: 23, scope: !862)
!881 = !DILocation(line: 1253, column: 30, scope: !862)
!882 = !DILocation(line: 1253, column: 59, scope: !862)
!883 = !DILocation(line: 1253, column: 40, scope: !862)
!884 = !DILocation(line: 1253, column: 11, scope: !862)
!885 = !DILocation(line: 1253, column: 4, scope: !862)
!886 = distinct !DISubprogram(name: "FileIO_Write", scope: !271, file: !271, line: 1284, type: !887, isLocal: false, isDefinition: true, scopeLine: 1288, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!887 = !DISubroutineType(types: !888)
!888 = !{!274, !275, !889, !266, !332}
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64, align: 64)
!890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!891 = !DILocalVariable(name: "fd", arg: 1, scope: !886, file: !271, line: 1284, type: !275)
!892 = !DILocation(line: 1284, column: 32, scope: !886)
!893 = !DILocalVariable(name: "bufIn", arg: 2, scope: !886, file: !271, line: 1285, type: !889)
!894 = !DILocation(line: 1285, column: 26, scope: !886)
!895 = !DILocalVariable(name: "requested", arg: 3, scope: !886, file: !271, line: 1286, type: !266)
!896 = !DILocation(line: 1286, column: 21, scope: !886)
!897 = !DILocalVariable(name: "actual", arg: 4, scope: !886, file: !271, line: 1287, type: !332)
!898 = !DILocation(line: 1287, column: 22, scope: !886)
!899 = !DILocalVariable(name: "buf", scope: !886, file: !271, line: 1289, type: !256)
!900 = !DILocation(line: 1289, column: 17, scope: !886)
!901 = !DILocation(line: 1289, column: 38, scope: !886)
!902 = !DILocalVariable(name: "initial_requested", scope: !886, file: !271, line: 1290, type: !266)
!903 = !DILocation(line: 1290, column: 11, scope: !886)
!904 = !DILocalVariable(name: "fret", scope: !886, file: !271, line: 1291, type: !274)
!905 = !DILocation(line: 1291, column: 17, scope: !886)
!906 = !DILocation(line: 1295, column: 30, scope: !907)
!907 = distinct !DILexicalBlock(scope: !908, file: !271, line: 1295, column: 10)
!908 = distinct !DILexicalBlock(scope: !886, file: !271, line: 1295, column: 5)
!909 = !DILocation(line: 1295, column: 40, scope: !907)
!910 = !DILocation(line: 1295, column: 28, scope: !907)
!911 = !DILocation(line: 1295, column: 27, scope: !907)
!912 = !DILocation(line: 1295, column: 10, scope: !907)
!913 = !DILocation(line: 1295, column: 10, scope: !908)
!914 = !DILocation(line: 1295, column: 62, scope: !915)
!915 = !DILexicalBlockFile(scope: !916, file: !271, discriminator: 1)
!916 = distinct !DILexicalBlock(scope: !907, file: !271, line: 1295, column: 60)
!917 = !DILocation(line: 1297, column: 24, scope: !886)
!918 = !DILocation(line: 1297, column: 22, scope: !886)
!919 = !DILocation(line: 1298, column: 4, scope: !886)
!920 = !DILocation(line: 1298, column: 11, scope: !921)
!921 = !DILexicalBlockFile(scope: !886, file: !271, discriminator: 1)
!922 = !DILocation(line: 1298, column: 21, scope: !921)
!923 = !DILocation(line: 1298, column: 4, scope: !921)
!924 = !DILocalVariable(name: "res", scope: !925, file: !271, line: 1299, type: !306)
!925 = distinct !DILexicalBlock(scope: !886, file: !271, line: 1298, column: 26)
!926 = !DILocation(line: 1299, column: 15, scope: !925)
!927 = !DILocation(line: 1301, column: 19, scope: !925)
!928 = !DILocation(line: 1301, column: 23, scope: !925)
!929 = !DILocation(line: 1301, column: 30, scope: !925)
!930 = !DILocation(line: 1301, column: 35, scope: !925)
!931 = !DILocation(line: 1301, column: 13, scope: !925)
!932 = !DILocation(line: 1301, column: 11, scope: !925)
!933 = !DILocation(line: 1303, column: 11, scope: !934)
!934 = distinct !DILexicalBlock(scope: !925, file: !271, line: 1303, column: 11)
!935 = !DILocation(line: 1303, column: 15, scope: !934)
!936 = !DILocation(line: 1303, column: 11, scope: !925)
!937 = !DILocalVariable(name: "error", scope: !938, file: !271, line: 1304, type: !254)
!938 = distinct !DILexicalBlock(scope: !934, file: !271, line: 1303, column: 22)
!939 = !DILocation(line: 1304, column: 14, scope: !938)
!940 = !DILocation(line: 1304, column: 23, scope: !938)
!941 = !DILocation(line: 1304, column: 22, scope: !938)
!942 = !DILocation(line: 1306, column: 14, scope: !943)
!943 = distinct !DILexicalBlock(scope: !938, file: !271, line: 1306, column: 14)
!944 = !DILocation(line: 1306, column: 20, scope: !943)
!945 = !DILocation(line: 1306, column: 14, scope: !938)
!946 = !DILocation(line: 1307, column: 13, scope: !947)
!947 = distinct !DILexicalBlock(scope: !943, file: !271, line: 1306, column: 29)
!948 = distinct !{!948, !919}
!949 = !DILocation(line: 1309, column: 36, scope: !938)
!950 = !DILocation(line: 1309, column: 17, scope: !938)
!951 = !DILocation(line: 1309, column: 15, scope: !938)
!952 = !DILocation(line: 1310, column: 10, scope: !938)
!953 = !DILocation(line: 1313, column: 14, scope: !925)
!954 = !DILocation(line: 1313, column: 11, scope: !925)
!955 = !DILocation(line: 1314, column: 20, scope: !925)
!956 = !DILocation(line: 1314, column: 17, scope: !925)
!957 = !DILocation(line: 1298, column: 4, scope: !958)
!958 = !DILexicalBlockFile(scope: !886, file: !271, discriminator: 2)
!959 = !DILocation(line: 1317, column: 8, scope: !960)
!960 = distinct !DILexicalBlock(scope: !886, file: !271, line: 1317, column: 8)
!961 = !DILocation(line: 1317, column: 8, scope: !886)
!962 = !DILocation(line: 1318, column: 17, scope: !963)
!963 = distinct !DILexicalBlock(scope: !960, file: !271, line: 1317, column: 16)
!964 = !DILocation(line: 1318, column: 37, scope: !963)
!965 = !DILocation(line: 1318, column: 35, scope: !963)
!966 = !DILocation(line: 1318, column: 8, scope: !963)
!967 = !DILocation(line: 1318, column: 15, scope: !963)
!968 = !DILocation(line: 1319, column: 4, scope: !963)
!969 = !DILocation(line: 1320, column: 11, scope: !886)
!970 = !DILocation(line: 1320, column: 4, scope: !886)
!971 = distinct !DISubprogram(name: "FileIO_Read", scope: !271, file: !271, line: 1346, type: !972, isLocal: false, isDefinition: true, scopeLine: 1350, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!972 = !DISubroutineType(types: !973)
!973 = !{!274, !275, !255, !266, !332}
!974 = !DILocalVariable(name: "fd", arg: 1, scope: !971, file: !271, line: 1346, type: !275)
!975 = !DILocation(line: 1346, column: 31, scope: !971)
!976 = !DILocalVariable(name: "bufIn", arg: 2, scope: !971, file: !271, line: 1347, type: !255)
!977 = !DILocation(line: 1347, column: 19, scope: !971)
!978 = !DILocalVariable(name: "requested", arg: 3, scope: !971, file: !271, line: 1348, type: !266)
!979 = !DILocation(line: 1348, column: 20, scope: !971)
!980 = !DILocalVariable(name: "actual", arg: 4, scope: !971, file: !271, line: 1349, type: !332)
!981 = !DILocation(line: 1349, column: 21, scope: !971)
!982 = !DILocalVariable(name: "buf", scope: !971, file: !271, line: 1351, type: !262)
!983 = !DILocation(line: 1351, column: 11, scope: !971)
!984 = !DILocation(line: 1351, column: 27, scope: !971)
!985 = !DILocalVariable(name: "initial_requested", scope: !971, file: !271, line: 1352, type: !266)
!986 = !DILocation(line: 1352, column: 11, scope: !971)
!987 = !DILocalVariable(name: "fret", scope: !971, file: !271, line: 1353, type: !274)
!988 = !DILocation(line: 1353, column: 17, scope: !971)
!989 = !DILocation(line: 1357, column: 30, scope: !990)
!990 = distinct !DILexicalBlock(scope: !991, file: !271, line: 1357, column: 10)
!991 = distinct !DILexicalBlock(scope: !971, file: !271, line: 1357, column: 5)
!992 = !DILocation(line: 1357, column: 40, scope: !990)
!993 = !DILocation(line: 1357, column: 28, scope: !990)
!994 = !DILocation(line: 1357, column: 27, scope: !990)
!995 = !DILocation(line: 1357, column: 10, scope: !990)
!996 = !DILocation(line: 1357, column: 10, scope: !991)
!997 = !DILocation(line: 1357, column: 62, scope: !998)
!998 = !DILexicalBlockFile(scope: !999, file: !271, discriminator: 1)
!999 = distinct !DILexicalBlock(scope: !990, file: !271, line: 1357, column: 60)
!1000 = !DILocation(line: 1359, column: 24, scope: !971)
!1001 = !DILocation(line: 1359, column: 22, scope: !971)
!1002 = !DILocation(line: 1360, column: 4, scope: !971)
!1003 = !DILocation(line: 1360, column: 11, scope: !1004)
!1004 = !DILexicalBlockFile(scope: !971, file: !271, discriminator: 1)
!1005 = !DILocation(line: 1360, column: 21, scope: !1004)
!1006 = !DILocation(line: 1360, column: 4, scope: !1004)
!1007 = !DILocalVariable(name: "res", scope: !1008, file: !271, line: 1361, type: !306)
!1008 = distinct !DILexicalBlock(scope: !971, file: !271, line: 1360, column: 26)
!1009 = !DILocation(line: 1361, column: 15, scope: !1008)
!1010 = !DILocation(line: 1363, column: 18, scope: !1008)
!1011 = !DILocation(line: 1363, column: 22, scope: !1008)
!1012 = !DILocation(line: 1363, column: 29, scope: !1008)
!1013 = !DILocation(line: 1363, column: 34, scope: !1008)
!1014 = !DILocation(line: 1363, column: 13, scope: !1008)
!1015 = !DILocation(line: 1363, column: 11, scope: !1008)
!1016 = !DILocation(line: 1364, column: 11, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1008, file: !271, line: 1364, column: 11)
!1018 = !DILocation(line: 1364, column: 15, scope: !1017)
!1019 = !DILocation(line: 1364, column: 11, scope: !1008)
!1020 = !DILocation(line: 1365, column: 15, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !271, line: 1365, column: 13)
!1022 = distinct !DILexicalBlock(scope: !1017, file: !271, line: 1364, column: 22)
!1023 = !DILocation(line: 1365, column: 14, scope: !1021)
!1024 = !DILocation(line: 1365, column: 19, scope: !1021)
!1025 = !DILocation(line: 1365, column: 13, scope: !1022)
!1026 = !DILocation(line: 1366, column: 13, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1021, file: !271, line: 1365, column: 29)
!1028 = distinct !{!1028, !1002}
!1029 = !DILocation(line: 1368, column: 37, scope: !1022)
!1030 = !DILocation(line: 1368, column: 36, scope: !1022)
!1031 = !DILocation(line: 1368, column: 17, scope: !1032)
!1032 = !DILexicalBlockFile(scope: !1022, file: !271, discriminator: 1)
!1033 = !DILocation(line: 1368, column: 15, scope: !1022)
!1034 = !DILocation(line: 1369, column: 10, scope: !1022)
!1035 = !DILocation(line: 1372, column: 11, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1008, file: !271, line: 1372, column: 11)
!1037 = !DILocation(line: 1372, column: 15, scope: !1036)
!1038 = !DILocation(line: 1372, column: 11, scope: !1008)
!1039 = !DILocation(line: 1373, column: 15, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1036, file: !271, line: 1372, column: 21)
!1041 = !DILocation(line: 1374, column: 10, scope: !1040)
!1042 = !DILocation(line: 1377, column: 14, scope: !1008)
!1043 = !DILocation(line: 1377, column: 11, scope: !1008)
!1044 = !DILocation(line: 1378, column: 20, scope: !1008)
!1045 = !DILocation(line: 1378, column: 17, scope: !1008)
!1046 = !DILocation(line: 1360, column: 4, scope: !1047)
!1047 = !DILexicalBlockFile(scope: !971, file: !271, discriminator: 2)
!1048 = !DILocation(line: 1381, column: 8, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !971, file: !271, line: 1381, column: 8)
!1050 = !DILocation(line: 1381, column: 8, scope: !971)
!1051 = !DILocation(line: 1382, column: 17, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1049, file: !271, line: 1381, column: 16)
!1053 = !DILocation(line: 1382, column: 37, scope: !1052)
!1054 = !DILocation(line: 1382, column: 35, scope: !1052)
!1055 = !DILocation(line: 1382, column: 8, scope: !1052)
!1056 = !DILocation(line: 1382, column: 15, scope: !1052)
!1057 = !DILocation(line: 1383, column: 4, scope: !1052)
!1058 = !DILocation(line: 1384, column: 11, scope: !971)
!1059 = !DILocation(line: 1384, column: 4, scope: !971)
!1060 = distinct !DISubprogram(name: "FileIO_Truncate", scope: !271, file: !271, line: 1405, type: !1061, isLocal: false, isDefinition: true, scopeLine: 1407, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!294, !275, !263}
!1063 = !DILocalVariable(name: "file", arg: 1, scope: !1060, file: !271, line: 1405, type: !275)
!1064 = !DILocation(line: 1405, column: 35, scope: !1060)
!1065 = !DILocalVariable(name: "newLength", arg: 2, scope: !1060, file: !271, line: 1406, type: !263)
!1066 = !DILocation(line: 1406, column: 24, scope: !1060)
!1067 = !DILocation(line: 1410, column: 21, scope: !1060)
!1068 = !DILocation(line: 1410, column: 27, scope: !1060)
!1069 = !DILocation(line: 1410, column: 34, scope: !1060)
!1070 = !DILocation(line: 1410, column: 11, scope: !1060)
!1071 = !DILocation(line: 1410, column: 45, scope: !1060)
!1072 = !DILocation(line: 1410, column: 4, scope: !1060)
!1073 = distinct !DISubprogram(name: "FileIO_Close", scope: !271, file: !271, line: 1433, type: !1074, isLocal: false, isDefinition: true, scopeLine: 1434, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!274, !275}
!1076 = !DILocalVariable(name: "file", arg: 1, scope: !1073, file: !271, line: 1433, type: !275)
!1077 = !DILocation(line: 1433, column: 32, scope: !1073)
!1078 = !DILocalVariable(name: "err", scope: !1073, file: !271, line: 1435, type: !254)
!1079 = !DILocation(line: 1435, column: 8, scope: !1073)
!1080 = !DILocation(line: 1439, column: 17, scope: !1073)
!1081 = !DILocation(line: 1439, column: 23, scope: !1073)
!1082 = !DILocation(line: 1439, column: 11, scope: !1073)
!1083 = !DILocation(line: 1439, column: 30, scope: !1073)
!1084 = !DILocation(line: 1439, column: 10, scope: !1073)
!1085 = !DILocation(line: 1439, column: 40, scope: !1086)
!1086 = !DILexicalBlockFile(scope: !1073, file: !271, discriminator: 1)
!1087 = !DILocation(line: 1439, column: 39, scope: !1086)
!1088 = !DILocation(line: 1439, column: 10, scope: !1086)
!1089 = !DILocation(line: 1439, column: 10, scope: !1090)
!1090 = !DILexicalBlockFile(scope: !1073, file: !271, discriminator: 2)
!1091 = !DILocation(line: 1439, column: 10, scope: !1092)
!1092 = !DILexicalBlockFile(scope: !1073, file: !271, discriminator: 3)
!1093 = !DILocation(line: 1439, column: 8, scope: !1092)
!1094 = !DILocation(line: 1442, column: 18, scope: !1073)
!1095 = !DILocation(line: 1442, column: 4, scope: !1073)
!1096 = !DILocation(line: 1443, column: 19, scope: !1073)
!1097 = !DILocation(line: 1443, column: 4, scope: !1073)
!1098 = !DILocation(line: 1444, column: 22, scope: !1073)
!1099 = !DILocation(line: 1444, column: 4, scope: !1073)
!1100 = !DILocation(line: 1446, column: 8, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1073, file: !271, line: 1446, column: 8)
!1102 = !DILocation(line: 1446, column: 8, scope: !1073)
!1103 = !DILocation(line: 1447, column: 14, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1101, file: !271, line: 1446, column: 13)
!1105 = !DILocation(line: 1447, column: 8, scope: !1104)
!1106 = !DILocation(line: 1447, column: 12, scope: !1104)
!1107 = !DILocation(line: 1448, column: 4, scope: !1104)
!1108 = !DILocation(line: 1450, column: 12, scope: !1073)
!1109 = !DILocation(line: 1450, column: 16, scope: !1073)
!1110 = !DILocation(line: 1450, column: 11, scope: !1073)
!1111 = !DILocation(line: 1450, column: 4, scope: !1073)
!1112 = distinct !DISubprogram(name: "FileIO_Sync", scope: !271, file: !271, line: 1472, type: !1113, isLocal: false, isDefinition: true, scopeLine: 1473, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!274, !381}
!1115 = !DILocalVariable(name: "file", arg: 1, scope: !1112, file: !271, line: 1472, type: !381)
!1116 = !DILocation(line: 1472, column: 37, scope: !1112)
!1117 = !DILocation(line: 1476, column: 18, scope: !1112)
!1118 = !DILocation(line: 1476, column: 24, scope: !1112)
!1119 = !DILocation(line: 1476, column: 12, scope: !1112)
!1120 = !DILocation(line: 1476, column: 31, scope: !1112)
!1121 = !DILocation(line: 1476, column: 11, scope: !1112)
!1122 = !DILocation(line: 1476, column: 4, scope: !1112)
!1123 = distinct !DISubprogram(name: "FileIO_Readv", scope: !271, file: !271, line: 1630, type: !1124, isLocal: false, isDefinition: true, scopeLine: 1635, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!274, !275, !325, !254, !266, !332}
!1126 = !DILocalVariable(name: "fd", arg: 1, scope: !1123, file: !271, line: 1630, type: !275)
!1127 = !DILocation(line: 1630, column: 32, scope: !1123)
!1128 = !DILocalVariable(name: "v", arg: 2, scope: !1123, file: !271, line: 1631, type: !325)
!1129 = !DILocation(line: 1631, column: 34, scope: !1123)
!1130 = !DILocalVariable(name: "numEntries", arg: 3, scope: !1123, file: !271, line: 1632, type: !254)
!1131 = !DILocation(line: 1632, column: 18, scope: !1123)
!1132 = !DILocalVariable(name: "totalSize", arg: 4, scope: !1123, file: !271, line: 1633, type: !266)
!1133 = !DILocation(line: 1633, column: 21, scope: !1123)
!1134 = !DILocalVariable(name: "actual", arg: 5, scope: !1123, file: !271, line: 1634, type: !332)
!1135 = !DILocation(line: 1634, column: 22, scope: !1123)
!1136 = !DILocalVariable(name: "bytesRead", scope: !1123, file: !271, line: 1636, type: !266)
!1137 = !DILocation(line: 1636, column: 11, scope: !1123)
!1138 = !DILocalVariable(name: "sum", scope: !1123, file: !271, line: 1636, type: !266)
!1139 = !DILocation(line: 1636, column: 26, scope: !1123)
!1140 = !DILocalVariable(name: "fret", scope: !1123, file: !271, line: 1637, type: !274)
!1141 = !DILocation(line: 1637, column: 17, scope: !1123)
!1142 = !DILocalVariable(name: "nRetries", scope: !1123, file: !271, line: 1638, type: !254)
!1143 = !DILocation(line: 1638, column: 8, scope: !1123)
!1144 = !DILocalVariable(name: "maxRetries", scope: !1123, file: !271, line: 1638, type: !254)
!1145 = !DILocation(line: 1638, column: 22, scope: !1123)
!1146 = !DILocation(line: 1638, column: 35, scope: !1123)
!1147 = !DILocalVariable(name: "coV", scope: !1123, file: !271, line: 1639, type: !327)
!1148 = !DILocation(line: 1639, column: 17, scope: !1123)
!1149 = !DILocalVariable(name: "vPtr", scope: !1123, file: !271, line: 1640, type: !325)
!1150 = !DILocation(line: 1640, column: 24, scope: !1123)
!1151 = !DILocalVariable(name: "didCoalesce", scope: !1123, file: !271, line: 1641, type: !294)
!1152 = !DILocation(line: 1641, column: 9, scope: !1123)
!1153 = !DILocalVariable(name: "numVec", scope: !1123, file: !271, line: 1642, type: !254)
!1154 = !DILocation(line: 1642, column: 8, scope: !1123)
!1155 = !DILocation(line: 1646, column: 33, scope: !1123)
!1156 = !DILocation(line: 1646, column: 36, scope: !1123)
!1157 = !DILocation(line: 1646, column: 48, scope: !1123)
!1158 = !DILocation(line: 1647, column: 36, scope: !1123)
!1159 = !DILocation(line: 1647, column: 40, scope: !1123)
!1160 = !DILocation(line: 1646, column: 18, scope: !1123)
!1161 = !DILocation(line: 1646, column: 16, scope: !1123)
!1162 = !DILocation(line: 1649, column: 30, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !271, line: 1649, column: 10)
!1164 = distinct !DILexicalBlock(scope: !1123, file: !271, line: 1649, column: 5)
!1165 = !DILocation(line: 1649, column: 40, scope: !1163)
!1166 = !DILocation(line: 1649, column: 28, scope: !1163)
!1167 = !DILocation(line: 1649, column: 27, scope: !1163)
!1168 = !DILocation(line: 1649, column: 10, scope: !1163)
!1169 = !DILocation(line: 1649, column: 10, scope: !1164)
!1170 = !DILocation(line: 1649, column: 62, scope: !1171)
!1171 = !DILexicalBlockFile(scope: !1172, file: !271, discriminator: 1)
!1172 = distinct !DILexicalBlock(scope: !1163, file: !271, line: 1649, column: 60)
!1173 = !DILocation(line: 1651, column: 13, scope: !1123)
!1174 = !DILocation(line: 1651, column: 13, scope: !1175)
!1175 = !DILexicalBlockFile(scope: !1123, file: !271, discriminator: 1)
!1176 = !DILocation(line: 1651, column: 31, scope: !1177)
!1177 = !DILexicalBlockFile(scope: !1123, file: !271, discriminator: 2)
!1178 = !DILocation(line: 1651, column: 13, scope: !1177)
!1179 = !DILocation(line: 1651, column: 13, scope: !1180)
!1180 = !DILexicalBlockFile(scope: !1123, file: !271, discriminator: 3)
!1181 = !DILocation(line: 1651, column: 11, scope: !1180)
!1182 = !DILocation(line: 1652, column: 11, scope: !1123)
!1183 = !DILocation(line: 1652, column: 11, scope: !1175)
!1184 = !DILocation(line: 1652, column: 32, scope: !1177)
!1185 = !DILocation(line: 1652, column: 11, scope: !1177)
!1186 = !DILocation(line: 1652, column: 11, scope: !1180)
!1187 = !DILocation(line: 1652, column: 9, scope: !1180)
!1188 = !DILocation(line: 1654, column: 4, scope: !1123)
!1189 = !DILocation(line: 1654, column: 11, scope: !1175)
!1190 = !DILocation(line: 1654, column: 22, scope: !1175)
!1191 = !DILocation(line: 1654, column: 20, scope: !1175)
!1192 = !DILocation(line: 1654, column: 4, scope: !1175)
!1193 = !DILocalVariable(name: "retval", scope: !1194, file: !271, line: 1655, type: !306)
!1194 = distinct !DILexicalBlock(scope: !1123, file: !271, line: 1654, column: 34)
!1195 = !DILocation(line: 1655, column: 15, scope: !1194)
!1196 = !DILocalVariable(name: "tempVec", scope: !1194, file: !271, line: 1656, type: !254)
!1197 = !DILocation(line: 1656, column: 11, scope: !1194)
!1198 = !DILocation(line: 1656, column: 41, scope: !1194)
!1199 = !DILocation(line: 1656, column: 54, scope: !1194)
!1200 = !DILocation(line: 1656, column: 53, scope: !1194)
!1201 = !DILocation(line: 1656, column: 51, scope: !1194)
!1202 = !DILocation(line: 1656, column: 22, scope: !1194)
!1203 = !DILocation(line: 1656, column: 83, scope: !1204)
!1204 = !DILexicalBlockFile(scope: !1194, file: !271, discriminator: 1)
!1205 = !DILocation(line: 1656, column: 22, scope: !1204)
!1206 = !DILocation(line: 1656, column: 96, scope: !1207)
!1207 = !DILexicalBlockFile(scope: !1194, file: !271, discriminator: 2)
!1208 = !DILocation(line: 1656, column: 95, scope: !1207)
!1209 = !DILocation(line: 1656, column: 22, scope: !1207)
!1210 = !DILocation(line: 1656, column: 22, scope: !1211)
!1211 = !DILexicalBlockFile(scope: !1194, file: !271, discriminator: 3)
!1212 = !DILocation(line: 1656, column: 21, scope: !1211)
!1213 = !DILocation(line: 1656, column: 11, scope: !1211)
!1214 = !DILocation(line: 1659, column: 22, scope: !1194)
!1215 = !DILocation(line: 1659, column: 26, scope: !1194)
!1216 = !DILocation(line: 1659, column: 33, scope: !1194)
!1217 = !DILocation(line: 1659, column: 39, scope: !1194)
!1218 = !DILocation(line: 1659, column: 16, scope: !1194)
!1219 = !DILocation(line: 1659, column: 14, scope: !1194)
!1220 = !DILocation(line: 1661, column: 11, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1194, file: !271, line: 1661, column: 11)
!1222 = !DILocation(line: 1661, column: 18, scope: !1221)
!1223 = !DILocation(line: 1661, column: 11, scope: !1194)
!1224 = !DILocation(line: 1662, column: 15, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1226, file: !271, line: 1662, column: 13)
!1226 = distinct !DILexicalBlock(scope: !1221, file: !271, line: 1661, column: 25)
!1227 = !DILocation(line: 1662, column: 14, scope: !1225)
!1228 = !DILocation(line: 1662, column: 19, scope: !1225)
!1229 = !DILocation(line: 1662, column: 13, scope: !1226)
!1230 = !DILocation(line: 1663, column: 13, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1225, file: !271, line: 1662, column: 29)
!1232 = distinct !{!1232, !1188}
!1233 = !DILocation(line: 1665, column: 37, scope: !1226)
!1234 = !DILocation(line: 1665, column: 36, scope: !1226)
!1235 = !DILocation(line: 1665, column: 17, scope: !1236)
!1236 = !DILexicalBlockFile(scope: !1226, file: !271, discriminator: 1)
!1237 = !DILocation(line: 1665, column: 15, scope: !1226)
!1238 = !DILocation(line: 1666, column: 10, scope: !1226)
!1239 = !DILocation(line: 1668, column: 20, scope: !1194)
!1240 = !DILocation(line: 1668, column: 17, scope: !1194)
!1241 = !DILocation(line: 1669, column: 11, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1194, file: !271, line: 1669, column: 11)
!1243 = !DILocation(line: 1669, column: 24, scope: !1242)
!1244 = !DILocation(line: 1669, column: 21, scope: !1242)
!1245 = !DILocation(line: 1669, column: 11, scope: !1194)
!1246 = !DILocation(line: 1670, column: 15, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1242, file: !271, line: 1669, column: 35)
!1248 = !DILocation(line: 1671, column: 10, scope: !1247)
!1249 = !DILocation(line: 1673, column: 11, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1194, file: !271, line: 1673, column: 11)
!1251 = !DILocation(line: 1673, column: 18, scope: !1250)
!1252 = !DILocation(line: 1673, column: 11, scope: !1194)
!1253 = !DILocation(line: 1674, column: 15, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1250, file: !271, line: 1673, column: 24)
!1255 = !DILocation(line: 1675, column: 10, scope: !1254)
!1256 = !DILocation(line: 1687, column: 7, scope: !1194)
!1257 = !DILocation(line: 1687, column: 14, scope: !1258)
!1258 = !DILexicalBlockFile(scope: !1259, file: !271, discriminator: 1)
!1259 = distinct !DILexicalBlock(scope: !1260, file: !271, line: 1687, column: 7)
!1260 = distinct !DILexicalBlock(scope: !1194, file: !271, line: 1687, column: 7)
!1261 = !DILocation(line: 1687, column: 20, scope: !1258)
!1262 = !DILocation(line: 1687, column: 18, scope: !1258)
!1263 = !DILocation(line: 1687, column: 7, scope: !1258)
!1264 = !DILocation(line: 1688, column: 17, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1259, file: !271, line: 1687, column: 49)
!1266 = !DILocation(line: 1688, column: 23, scope: !1265)
!1267 = !DILocation(line: 1688, column: 14, scope: !1265)
!1268 = !DILocation(line: 1697, column: 18, scope: !1265)
!1269 = !DILocation(line: 1698, column: 7, scope: !1265)
!1270 = !DILocation(line: 1687, column: 35, scope: !1271)
!1271 = !DILexicalBlockFile(scope: !1259, file: !271, discriminator: 2)
!1272 = !DILocation(line: 1687, column: 45, scope: !1271)
!1273 = !DILocation(line: 1687, column: 7, scope: !1271)
!1274 = distinct !{!1274, !1256}
!1275 = !DILocation(line: 1699, column: 11, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1194, file: !271, line: 1699, column: 11)
!1277 = !DILocation(line: 1699, column: 17, scope: !1276)
!1278 = !DILocation(line: 1699, column: 15, scope: !1276)
!1279 = !DILocation(line: 1699, column: 11, scope: !1194)
!1280 = !DILocation(line: 1701, column: 15, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1276, file: !271, line: 1699, column: 28)
!1282 = !DILocation(line: 1702, column: 10, scope: !1281)
!1283 = !DILocation(line: 1654, column: 4, scope: !1177)
!1284 = !DILocation(line: 1706, column: 8, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1123, file: !271, line: 1706, column: 8)
!1286 = !DILocation(line: 1706, column: 8, scope: !1123)
!1287 = !DILocation(line: 1707, column: 30, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1285, file: !271, line: 1706, column: 21)
!1289 = !DILocation(line: 1707, column: 33, scope: !1288)
!1290 = !DILocation(line: 1707, column: 45, scope: !1288)
!1291 = !DILocation(line: 1707, column: 59, scope: !1288)
!1292 = !DILocation(line: 1707, column: 63, scope: !1288)
!1293 = !DILocation(line: 1707, column: 7, scope: !1288)
!1294 = !DILocation(line: 1708, column: 4, scope: !1288)
!1295 = !DILocation(line: 1710, column: 8, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1123, file: !271, line: 1710, column: 8)
!1297 = !DILocation(line: 1710, column: 8, scope: !1123)
!1298 = !DILocation(line: 1711, column: 17, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1296, file: !271, line: 1710, column: 16)
!1300 = !DILocation(line: 1711, column: 8, scope: !1299)
!1301 = !DILocation(line: 1711, column: 15, scope: !1299)
!1302 = !DILocation(line: 1712, column: 4, scope: !1299)
!1303 = !DILocation(line: 1714, column: 11, scope: !1123)
!1304 = !DILocation(line: 1714, column: 4, scope: !1123)
!1305 = distinct !DISubprogram(name: "FileIOCoalesce", scope: !271, file: !271, line: 1504, type: !1306, isLocal: true, isDefinition: true, scopeLine: 1512, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!294, !325, !254, !266, !294, !294, !254, !1308}
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64, align: 64)
!1309 = !DILocalVariable(name: "inVec", arg: 1, scope: !1305, file: !271, line: 1505, type: !325)
!1310 = !DILocation(line: 1505, column: 32, scope: !1305)
!1311 = !DILocalVariable(name: "inCount", arg: 2, scope: !1305, file: !271, line: 1506, type: !254)
!1312 = !DILocation(line: 1506, column: 16, scope: !1305)
!1313 = !DILocalVariable(name: "inTotalSize", arg: 3, scope: !1305, file: !271, line: 1507, type: !266)
!1314 = !DILocation(line: 1507, column: 19, scope: !1305)
!1315 = !DILocalVariable(name: "isWrite", arg: 4, scope: !1305, file: !271, line: 1508, type: !294)
!1316 = !DILocation(line: 1508, column: 17, scope: !1305)
!1317 = !DILocalVariable(name: "forceCoalesce", arg: 5, scope: !1305, file: !271, line: 1509, type: !294)
!1318 = !DILocation(line: 1509, column: 17, scope: !1305)
!1319 = !DILocalVariable(name: "flags", arg: 6, scope: !1305, file: !271, line: 1510, type: !254)
!1320 = !DILocation(line: 1510, column: 16, scope: !1305)
!1321 = !DILocalVariable(name: "outVec", arg: 7, scope: !1305, file: !271, line: 1511, type: !1308)
!1322 = !DILocation(line: 1511, column: 26, scope: !1305)
!1323 = !DILocalVariable(name: "cBuf", scope: !1305, file: !271, line: 1513, type: !262)
!1324 = !DILocation(line: 1513, column: 11, scope: !1305)
!1325 = !DILocation(line: 1518, column: 4, scope: !1305)
!1326 = !DILocation(line: 1521, column: 8, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1305, file: !271, line: 1521, column: 8)
!1328 = !DILocation(line: 1521, column: 16, scope: !1327)
!1329 = !DILocation(line: 1521, column: 8, scope: !1305)
!1330 = !DILocation(line: 1522, column: 7, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1327, file: !271, line: 1521, column: 22)
!1332 = !DILocation(line: 1530, column: 9, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1305, file: !271, line: 1530, column: 8)
!1334 = !DILocation(line: 1530, column: 23, scope: !1333)
!1335 = !DILocation(line: 1531, column: 27, scope: !1333)
!1336 = !DILocation(line: 1531, column: 10, scope: !1333)
!1337 = !DILocation(line: 1531, column: 35, scope: !1333)
!1338 = !DILocation(line: 1532, column: 8, scope: !1333)
!1339 = !DILocation(line: 1532, column: 36, scope: !1333)
!1340 = !DILocation(line: 1532, column: 16, scope: !1333)
!1341 = !DILocation(line: 1532, column: 51, scope: !1333)
!1342 = !DILocation(line: 1533, column: 8, scope: !1333)
!1343 = !DILocation(line: 1533, column: 22, scope: !1333)
!1344 = !DILocation(line: 1533, column: 20, scope: !1333)
!1345 = !DILocation(line: 1533, column: 50, scope: !1333)
!1346 = !DILocation(line: 1533, column: 33, scope: !1333)
!1347 = !DILocation(line: 1533, column: 30, scope: !1333)
!1348 = !DILocation(line: 1530, column: 8, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !1305, file: !271, discriminator: 1)
!1350 = !DILocation(line: 1534, column: 7, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1333, file: !271, line: 1533, column: 66)
!1352 = !DILocation(line: 1541, column: 25, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1305, file: !271, line: 1541, column: 8)
!1354 = !DILocation(line: 1541, column: 8, scope: !1353)
!1355 = !DILocation(line: 1541, column: 33, scope: !1353)
!1356 = !DILocation(line: 1541, column: 36, scope: !1357)
!1357 = !DILexicalBlockFile(scope: !1353, file: !271, discriminator: 1)
!1358 = !DILocation(line: 1541, column: 42, scope: !1357)
!1359 = !DILocation(line: 1541, column: 8, scope: !1357)
!1360 = !DILocation(line: 1542, column: 51, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1353, file: !271, line: 1541, column: 54)
!1362 = !DILocation(line: 1542, column: 49, scope: !1361)
!1363 = !DILocation(line: 1542, column: 14, scope: !1361)
!1364 = !DILocation(line: 1542, column: 12, scope: !1361)
!1365 = !DILocation(line: 1543, column: 4, scope: !1361)
!1366 = !DILocation(line: 1544, column: 47, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1353, file: !271, line: 1543, column: 11)
!1368 = !DILocation(line: 1544, column: 45, scope: !1367)
!1369 = !DILocation(line: 1544, column: 14, scope: !1367)
!1370 = !DILocation(line: 1544, column: 12, scope: !1367)
!1371 = !DILocation(line: 1546, column: 9, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1305, file: !271, line: 1546, column: 8)
!1373 = !DILocation(line: 1546, column: 8, scope: !1305)
!1374 = !DILocation(line: 1547, column: 7, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1372, file: !271, line: 1546, column: 15)
!1376 = !DILocation(line: 1550, column: 7, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1305, file: !271, line: 1550, column: 7)
!1378 = !DILocation(line: 1550, column: 7, scope: !1305)
!1379 = !DILocation(line: 1551, column: 25, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1377, file: !271, line: 1550, column: 16)
!1381 = !DILocation(line: 1551, column: 32, scope: !1380)
!1382 = !DILocation(line: 1551, column: 41, scope: !1380)
!1383 = !DILocation(line: 1551, column: 47, scope: !1380)
!1384 = !DILocation(line: 1551, column: 7, scope: !1380)
!1385 = !DILocation(line: 1552, column: 4, scope: !1380)
!1386 = !DILocation(line: 1554, column: 23, scope: !1305)
!1387 = !DILocation(line: 1554, column: 4, scope: !1305)
!1388 = !DILocation(line: 1554, column: 12, scope: !1305)
!1389 = !DILocation(line: 1554, column: 21, scope: !1305)
!1390 = !DILocation(line: 1555, column: 22, scope: !1305)
!1391 = !DILocation(line: 1555, column: 4, scope: !1305)
!1392 = !DILocation(line: 1555, column: 12, scope: !1305)
!1393 = !DILocation(line: 1555, column: 20, scope: !1305)
!1394 = !DILocation(line: 1557, column: 4, scope: !1305)
!1395 = !DILocation(line: 1558, column: 1, scope: !1305)
!1396 = distinct !DISubprogram(name: "FileIODecoalesce", scope: !271, file: !271, line: 1580, type: !1397, isLocal: true, isDefinition: true, scopeLine: 1587, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{null, !1308, !325, !254, !266, !294, !254}
!1399 = !DILocalVariable(name: "coVec", arg: 1, scope: !1396, file: !271, line: 1581, type: !1308)
!1400 = !DILocation(line: 1581, column: 23, scope: !1396)
!1401 = !DILocalVariable(name: "origVec", arg: 2, scope: !1396, file: !271, line: 1582, type: !325)
!1402 = !DILocation(line: 1582, column: 29, scope: !1396)
!1403 = !DILocalVariable(name: "origVecCount", arg: 3, scope: !1396, file: !271, line: 1583, type: !254)
!1404 = !DILocation(line: 1583, column: 13, scope: !1396)
!1405 = !DILocalVariable(name: "actualSize", arg: 4, scope: !1396, file: !271, line: 1584, type: !266)
!1406 = !DILocation(line: 1584, column: 16, scope: !1396)
!1407 = !DILocalVariable(name: "isWrite", arg: 5, scope: !1396, file: !271, line: 1585, type: !294)
!1408 = !DILocation(line: 1585, column: 14, scope: !1396)
!1409 = !DILocalVariable(name: "flags", arg: 6, scope: !1396, file: !271, line: 1586, type: !254)
!1410 = !DILocation(line: 1586, column: 13, scope: !1396)
!1411 = !DILocation(line: 1594, column: 9, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1396, file: !271, line: 1594, column: 8)
!1413 = !DILocation(line: 1594, column: 8, scope: !1396)
!1414 = !DILocation(line: 1595, column: 25, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1412, file: !271, line: 1594, column: 18)
!1416 = !DILocation(line: 1595, column: 32, scope: !1415)
!1417 = !DILocation(line: 1595, column: 42, scope: !1415)
!1418 = !DILocation(line: 1595, column: 54, scope: !1415)
!1419 = !DILocation(line: 1595, column: 63, scope: !1415)
!1420 = !DILocation(line: 1595, column: 7, scope: !1415)
!1421 = !DILocation(line: 1596, column: 4, scope: !1415)
!1422 = !DILocation(line: 1598, column: 25, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1396, file: !271, line: 1598, column: 8)
!1424 = !DILocation(line: 1598, column: 8, scope: !1423)
!1425 = !DILocation(line: 1598, column: 33, scope: !1423)
!1426 = !DILocation(line: 1598, column: 36, scope: !1427)
!1427 = !DILexicalBlockFile(scope: !1423, file: !271, discriminator: 1)
!1428 = !DILocation(line: 1598, column: 42, scope: !1427)
!1429 = !DILocation(line: 1598, column: 8, scope: !1427)
!1430 = !DILocation(line: 1599, column: 26, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1423, file: !271, line: 1598, column: 54)
!1432 = !DILocation(line: 1599, column: 33, scope: !1431)
!1433 = !DILocation(line: 1599, column: 7, scope: !1431)
!1434 = !DILocation(line: 1600, column: 4, scope: !1431)
!1435 = !DILocation(line: 1601, column: 18, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1423, file: !271, line: 1600, column: 11)
!1437 = !DILocation(line: 1601, column: 25, scope: !1436)
!1438 = !DILocation(line: 1601, column: 7, scope: !1436)
!1439 = !DILocation(line: 1603, column: 1, scope: !1396)
!1440 = distinct !DISubprogram(name: "FileIO_Writev", scope: !271, file: !271, line: 1742, type: !1124, isLocal: false, isDefinition: true, scopeLine: 1747, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!1441 = !DILocalVariable(name: "fd", arg: 1, scope: !1440, file: !271, line: 1742, type: !275)
!1442 = !DILocation(line: 1742, column: 33, scope: !1440)
!1443 = !DILocalVariable(name: "v", arg: 2, scope: !1440, file: !271, line: 1743, type: !325)
!1444 = !DILocation(line: 1743, column: 35, scope: !1440)
!1445 = !DILocalVariable(name: "numEntries", arg: 3, scope: !1440, file: !271, line: 1744, type: !254)
!1446 = !DILocation(line: 1744, column: 19, scope: !1440)
!1447 = !DILocalVariable(name: "totalSize", arg: 4, scope: !1440, file: !271, line: 1745, type: !266)
!1448 = !DILocation(line: 1745, column: 22, scope: !1440)
!1449 = !DILocalVariable(name: "actual", arg: 5, scope: !1440, file: !271, line: 1746, type: !332)
!1450 = !DILocation(line: 1746, column: 23, scope: !1440)
!1451 = !DILocalVariable(name: "bytesWritten", scope: !1440, file: !271, line: 1748, type: !266)
!1452 = !DILocation(line: 1748, column: 11, scope: !1440)
!1453 = !DILocalVariable(name: "sum", scope: !1440, file: !271, line: 1748, type: !266)
!1454 = !DILocation(line: 1748, column: 29, scope: !1440)
!1455 = !DILocalVariable(name: "fret", scope: !1440, file: !271, line: 1749, type: !274)
!1456 = !DILocation(line: 1749, column: 17, scope: !1440)
!1457 = !DILocalVariable(name: "nRetries", scope: !1440, file: !271, line: 1750, type: !254)
!1458 = !DILocation(line: 1750, column: 8, scope: !1440)
!1459 = !DILocalVariable(name: "maxRetries", scope: !1440, file: !271, line: 1750, type: !254)
!1460 = !DILocation(line: 1750, column: 22, scope: !1440)
!1461 = !DILocation(line: 1750, column: 35, scope: !1440)
!1462 = !DILocalVariable(name: "coV", scope: !1440, file: !271, line: 1751, type: !327)
!1463 = !DILocation(line: 1751, column: 17, scope: !1440)
!1464 = !DILocalVariable(name: "vPtr", scope: !1440, file: !271, line: 1752, type: !325)
!1465 = !DILocation(line: 1752, column: 24, scope: !1440)
!1466 = !DILocalVariable(name: "didCoalesce", scope: !1440, file: !271, line: 1753, type: !294)
!1467 = !DILocation(line: 1753, column: 9, scope: !1440)
!1468 = !DILocalVariable(name: "numVec", scope: !1440, file: !271, line: 1754, type: !254)
!1469 = !DILocation(line: 1754, column: 8, scope: !1440)
!1470 = !DILocation(line: 1758, column: 33, scope: !1440)
!1471 = !DILocation(line: 1758, column: 36, scope: !1440)
!1472 = !DILocation(line: 1758, column: 48, scope: !1440)
!1473 = !DILocation(line: 1759, column: 36, scope: !1440)
!1474 = !DILocation(line: 1759, column: 40, scope: !1440)
!1475 = !DILocation(line: 1758, column: 18, scope: !1440)
!1476 = !DILocation(line: 1758, column: 16, scope: !1440)
!1477 = !DILocation(line: 1761, column: 30, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !271, line: 1761, column: 10)
!1479 = distinct !DILexicalBlock(scope: !1440, file: !271, line: 1761, column: 5)
!1480 = !DILocation(line: 1761, column: 40, scope: !1478)
!1481 = !DILocation(line: 1761, column: 28, scope: !1478)
!1482 = !DILocation(line: 1761, column: 27, scope: !1478)
!1483 = !DILocation(line: 1761, column: 10, scope: !1478)
!1484 = !DILocation(line: 1761, column: 10, scope: !1479)
!1485 = !DILocation(line: 1761, column: 62, scope: !1486)
!1486 = !DILexicalBlockFile(scope: !1487, file: !271, discriminator: 1)
!1487 = distinct !DILexicalBlock(scope: !1478, file: !271, line: 1761, column: 60)
!1488 = !DILocation(line: 1763, column: 13, scope: !1440)
!1489 = !DILocation(line: 1763, column: 13, scope: !1490)
!1490 = !DILexicalBlockFile(scope: !1440, file: !271, discriminator: 1)
!1491 = !DILocation(line: 1763, column: 31, scope: !1492)
!1492 = !DILexicalBlockFile(scope: !1440, file: !271, discriminator: 2)
!1493 = !DILocation(line: 1763, column: 13, scope: !1492)
!1494 = !DILocation(line: 1763, column: 13, scope: !1495)
!1495 = !DILexicalBlockFile(scope: !1440, file: !271, discriminator: 3)
!1496 = !DILocation(line: 1763, column: 11, scope: !1495)
!1497 = !DILocation(line: 1764, column: 11, scope: !1440)
!1498 = !DILocation(line: 1764, column: 11, scope: !1490)
!1499 = !DILocation(line: 1764, column: 32, scope: !1492)
!1500 = !DILocation(line: 1764, column: 11, scope: !1492)
!1501 = !DILocation(line: 1764, column: 11, scope: !1495)
!1502 = !DILocation(line: 1764, column: 9, scope: !1495)
!1503 = !DILocation(line: 1766, column: 4, scope: !1440)
!1504 = !DILocation(line: 1766, column: 11, scope: !1490)
!1505 = !DILocation(line: 1766, column: 22, scope: !1490)
!1506 = !DILocation(line: 1766, column: 20, scope: !1490)
!1507 = !DILocation(line: 1766, column: 4, scope: !1490)
!1508 = !DILocalVariable(name: "retval", scope: !1509, file: !271, line: 1767, type: !306)
!1509 = distinct !DILexicalBlock(scope: !1440, file: !271, line: 1766, column: 34)
!1510 = !DILocation(line: 1767, column: 15, scope: !1509)
!1511 = !DILocalVariable(name: "tempVec", scope: !1509, file: !271, line: 1768, type: !254)
!1512 = !DILocation(line: 1768, column: 11, scope: !1509)
!1513 = !DILocation(line: 1768, column: 41, scope: !1509)
!1514 = !DILocation(line: 1768, column: 54, scope: !1509)
!1515 = !DILocation(line: 1768, column: 53, scope: !1509)
!1516 = !DILocation(line: 1768, column: 51, scope: !1509)
!1517 = !DILocation(line: 1768, column: 22, scope: !1509)
!1518 = !DILocation(line: 1768, column: 83, scope: !1519)
!1519 = !DILexicalBlockFile(scope: !1509, file: !271, discriminator: 1)
!1520 = !DILocation(line: 1768, column: 22, scope: !1519)
!1521 = !DILocation(line: 1768, column: 96, scope: !1522)
!1522 = !DILexicalBlockFile(scope: !1509, file: !271, discriminator: 2)
!1523 = !DILocation(line: 1768, column: 95, scope: !1522)
!1524 = !DILocation(line: 1768, column: 22, scope: !1522)
!1525 = !DILocation(line: 1768, column: 22, scope: !1526)
!1526 = !DILexicalBlockFile(scope: !1509, file: !271, discriminator: 3)
!1527 = !DILocation(line: 1768, column: 21, scope: !1526)
!1528 = !DILocation(line: 1768, column: 11, scope: !1526)
!1529 = !DILocation(line: 1771, column: 23, scope: !1509)
!1530 = !DILocation(line: 1771, column: 27, scope: !1509)
!1531 = !DILocation(line: 1771, column: 34, scope: !1509)
!1532 = !DILocation(line: 1771, column: 40, scope: !1509)
!1533 = !DILocation(line: 1771, column: 16, scope: !1509)
!1534 = !DILocation(line: 1771, column: 14, scope: !1509)
!1535 = !DILocation(line: 1773, column: 11, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1509, file: !271, line: 1773, column: 11)
!1537 = !DILocation(line: 1773, column: 18, scope: !1536)
!1538 = !DILocation(line: 1773, column: 11, scope: !1509)
!1539 = !DILocation(line: 1774, column: 15, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !271, line: 1774, column: 13)
!1541 = distinct !DILexicalBlock(scope: !1536, file: !271, line: 1773, column: 25)
!1542 = !DILocation(line: 1774, column: 14, scope: !1540)
!1543 = !DILocation(line: 1774, column: 19, scope: !1540)
!1544 = !DILocation(line: 1774, column: 13, scope: !1541)
!1545 = !DILocation(line: 1775, column: 13, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1540, file: !271, line: 1774, column: 29)
!1547 = distinct !{!1547, !1503}
!1548 = !DILocation(line: 1777, column: 37, scope: !1541)
!1549 = !DILocation(line: 1777, column: 36, scope: !1541)
!1550 = !DILocation(line: 1777, column: 17, scope: !1551)
!1551 = !DILexicalBlockFile(scope: !1541, file: !271, discriminator: 1)
!1552 = !DILocation(line: 1777, column: 15, scope: !1541)
!1553 = !DILocation(line: 1778, column: 10, scope: !1541)
!1554 = !DILocation(line: 1781, column: 23, scope: !1509)
!1555 = !DILocation(line: 1781, column: 20, scope: !1509)
!1556 = !DILocation(line: 1782, column: 11, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1509, file: !271, line: 1782, column: 11)
!1558 = !DILocation(line: 1782, column: 27, scope: !1557)
!1559 = !DILocation(line: 1782, column: 24, scope: !1557)
!1560 = !DILocation(line: 1782, column: 11, scope: !1509)
!1561 = !DILocation(line: 1783, column: 15, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1557, file: !271, line: 1782, column: 38)
!1563 = !DILocation(line: 1784, column: 10, scope: !1562)
!1564 = !DILocation(line: 1786, column: 7, scope: !1509)
!1565 = !DILocation(line: 1786, column: 14, scope: !1566)
!1566 = !DILexicalBlockFile(scope: !1567, file: !271, discriminator: 1)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !271, line: 1786, column: 7)
!1568 = distinct !DILexicalBlock(scope: !1509, file: !271, line: 1786, column: 7)
!1569 = !DILocation(line: 1786, column: 20, scope: !1566)
!1570 = !DILocation(line: 1786, column: 18, scope: !1566)
!1571 = !DILocation(line: 1786, column: 7, scope: !1566)
!1572 = !DILocation(line: 1787, column: 17, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1567, file: !271, line: 1786, column: 52)
!1574 = !DILocation(line: 1787, column: 23, scope: !1573)
!1575 = !DILocation(line: 1787, column: 14, scope: !1573)
!1576 = !DILocation(line: 1788, column: 18, scope: !1573)
!1577 = !DILocation(line: 1789, column: 7, scope: !1573)
!1578 = !DILocation(line: 1786, column: 38, scope: !1579)
!1579 = !DILexicalBlockFile(scope: !1567, file: !271, discriminator: 2)
!1580 = !DILocation(line: 1786, column: 48, scope: !1579)
!1581 = !DILocation(line: 1786, column: 7, scope: !1579)
!1582 = distinct !{!1582, !1564}
!1583 = !DILocation(line: 1796, column: 11, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1509, file: !271, line: 1796, column: 11)
!1585 = !DILocation(line: 1796, column: 18, scope: !1584)
!1586 = !DILocation(line: 1796, column: 15, scope: !1584)
!1587 = !DILocation(line: 1796, column: 11, scope: !1509)
!1588 = !DILocation(line: 1797, column: 15, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1584, file: !271, line: 1796, column: 32)
!1590 = !DILocation(line: 1798, column: 10, scope: !1589)
!1591 = !DILocation(line: 1766, column: 4, scope: !1492)
!1592 = !DILocation(line: 1802, column: 8, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1440, file: !271, line: 1802, column: 8)
!1594 = !DILocation(line: 1802, column: 8, scope: !1440)
!1595 = !DILocation(line: 1803, column: 30, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1593, file: !271, line: 1802, column: 21)
!1597 = !DILocation(line: 1803, column: 33, scope: !1596)
!1598 = !DILocation(line: 1803, column: 45, scope: !1596)
!1599 = !DILocation(line: 1803, column: 62, scope: !1596)
!1600 = !DILocation(line: 1803, column: 66, scope: !1596)
!1601 = !DILocation(line: 1803, column: 7, scope: !1596)
!1602 = !DILocation(line: 1804, column: 4, scope: !1596)
!1603 = !DILocation(line: 1806, column: 8, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1440, file: !271, line: 1806, column: 8)
!1605 = !DILocation(line: 1806, column: 8, scope: !1440)
!1606 = !DILocation(line: 1807, column: 17, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1604, file: !271, line: 1806, column: 16)
!1608 = !DILocation(line: 1807, column: 8, scope: !1607)
!1609 = !DILocation(line: 1807, column: 15, scope: !1607)
!1610 = !DILocation(line: 1808, column: 4, scope: !1607)
!1611 = !DILocation(line: 1810, column: 11, scope: !1440)
!1612 = !DILocation(line: 1810, column: 4, scope: !1440)
!1613 = distinct !DISubprogram(name: "FileIO_Preadv", scope: !271, file: !271, line: 2285, type: !323, isLocal: false, isDefinition: true, scopeLine: 2291, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!1614 = !DILocalVariable(name: "fd", arg: 1, scope: !1613, file: !271, line: 2285, type: !275)
!1615 = !DILocation(line: 2285, column: 33, scope: !1613)
!1616 = !DILocalVariable(name: "entries", arg: 2, scope: !1613, file: !271, line: 2286, type: !325)
!1617 = !DILocation(line: 2286, column: 35, scope: !1613)
!1618 = !DILocalVariable(name: "numEntries", arg: 3, scope: !1613, file: !271, line: 2287, type: !254)
!1619 = !DILocation(line: 2287, column: 19, scope: !1613)
!1620 = !DILocalVariable(name: "offset", arg: 4, scope: !1613, file: !271, line: 2288, type: !263)
!1621 = !DILocation(line: 2288, column: 22, scope: !1613)
!1622 = !DILocalVariable(name: "totalSize", arg: 5, scope: !1613, file: !271, line: 2289, type: !266)
!1623 = !DILocation(line: 2289, column: 22, scope: !1613)
!1624 = !DILocalVariable(name: "actual", arg: 6, scope: !1613, file: !271, line: 2290, type: !332)
!1625 = !DILocation(line: 2290, column: 23, scope: !1613)
!1626 = !DILocalVariable(name: "fret", scope: !1613, file: !271, line: 2292, type: !274)
!1627 = !DILocation(line: 2292, column: 17, scope: !1613)
!1628 = !DILocation(line: 2297, column: 30, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !271, line: 2297, column: 10)
!1630 = distinct !DILexicalBlock(scope: !1613, file: !271, line: 2297, column: 5)
!1631 = !DILocation(line: 2297, column: 40, scope: !1629)
!1632 = !DILocation(line: 2297, column: 28, scope: !1629)
!1633 = !DILocation(line: 2297, column: 27, scope: !1629)
!1634 = !DILocation(line: 2297, column: 10, scope: !1629)
!1635 = !DILocation(line: 2297, column: 10, scope: !1630)
!1636 = !DILocation(line: 2297, column: 62, scope: !1637)
!1637 = !DILexicalBlockFile(scope: !1638, file: !271, discriminator: 1)
!1638 = distinct !DILexicalBlock(scope: !1629, file: !271, line: 2297, column: 60)
!1639 = !DILocation(line: 2300, column: 32, scope: !1613)
!1640 = !DILocation(line: 2300, column: 36, scope: !1613)
!1641 = !DILocation(line: 2300, column: 45, scope: !1613)
!1642 = !DILocation(line: 2300, column: 57, scope: !1613)
!1643 = !DILocation(line: 2300, column: 65, scope: !1613)
!1644 = !DILocation(line: 2301, column: 32, scope: !1613)
!1645 = !DILocation(line: 2300, column: 11, scope: !1613)
!1646 = !DILocation(line: 2300, column: 9, scope: !1613)
!1647 = !DILocation(line: 2306, column: 11, scope: !1613)
!1648 = !DILocation(line: 2306, column: 4, scope: !1613)
!1649 = distinct !DISubprogram(name: "FileIOPreadvInternal", scope: !271, file: !271, line: 2037, type: !323, isLocal: true, isDefinition: true, scopeLine: 2044, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!1650 = !DILocalVariable(name: "fd", arg: 1, scope: !1649, file: !271, line: 2038, type: !275)
!1651 = !DILocation(line: 2038, column: 35, scope: !1649)
!1652 = !DILocalVariable(name: "entries", arg: 2, scope: !1649, file: !271, line: 2039, type: !325)
!1653 = !DILocation(line: 2039, column: 37, scope: !1649)
!1654 = !DILocalVariable(name: "numEntries", arg: 3, scope: !1649, file: !271, line: 2040, type: !254)
!1655 = !DILocation(line: 2040, column: 21, scope: !1649)
!1656 = !DILocalVariable(name: "offset", arg: 4, scope: !1649, file: !271, line: 2041, type: !263)
!1657 = !DILocation(line: 2041, column: 24, scope: !1649)
!1658 = !DILocalVariable(name: "totalSize", arg: 5, scope: !1649, file: !271, line: 2042, type: !266)
!1659 = !DILocation(line: 2042, column: 24, scope: !1649)
!1660 = !DILocalVariable(name: "actual", arg: 6, scope: !1649, file: !271, line: 2043, type: !332)
!1661 = !DILocation(line: 2043, column: 25, scope: !1649)
!1662 = !DILocalVariable(name: "vPtr", scope: !1649, file: !271, line: 2045, type: !325)
!1663 = !DILocation(line: 2045, column: 24, scope: !1649)
!1664 = !DILocalVariable(name: "numVec", scope: !1649, file: !271, line: 2046, type: !254)
!1665 = !DILocation(line: 2046, column: 8, scope: !1649)
!1666 = !DILocalVariable(name: "partialBytes", scope: !1649, file: !271, line: 2047, type: !266)
!1667 = !DILocation(line: 2047, column: 11, scope: !1649)
!1668 = !DILocalVariable(name: "bytesRead", scope: !1649, file: !271, line: 2048, type: !266)
!1669 = !DILocation(line: 2048, column: 11, scope: !1649)
!1670 = !DILocalVariable(name: "sum", scope: !1649, file: !271, line: 2049, type: !266)
!1671 = !DILocation(line: 2049, column: 11, scope: !1649)
!1672 = !DILocalVariable(name: "nRetries", scope: !1649, file: !271, line: 2050, type: !254)
!1673 = !DILocation(line: 2050, column: 8, scope: !1649)
!1674 = !DILocalVariable(name: "maxRetries", scope: !1649, file: !271, line: 2051, type: !254)
!1675 = !DILocation(line: 2051, column: 8, scope: !1649)
!1676 = !DILocation(line: 2051, column: 21, scope: !1649)
!1677 = !DILocalVariable(name: "fret", scope: !1649, file: !271, line: 2052, type: !274)
!1678 = !DILocation(line: 2052, column: 17, scope: !1649)
!1679 = !DILocation(line: 2054, column: 4, scope: !1649)
!1680 = !DILocation(line: 2055, column: 13, scope: !1649)
!1681 = !DILocation(line: 2055, column: 11, scope: !1649)
!1682 = !DILocation(line: 2056, column: 11, scope: !1649)
!1683 = !DILocation(line: 2056, column: 9, scope: !1649)
!1684 = !DILocation(line: 2058, column: 4, scope: !1649)
!1685 = !DILocation(line: 2058, column: 11, scope: !1686)
!1686 = !DILexicalBlockFile(scope: !1649, file: !271, discriminator: 1)
!1687 = !DILocation(line: 2058, column: 22, scope: !1686)
!1688 = !DILocation(line: 2058, column: 20, scope: !1686)
!1689 = !DILocation(line: 2058, column: 4, scope: !1686)
!1690 = !DILocalVariable(name: "retval", scope: !1691, file: !271, line: 2059, type: !306)
!1691 = distinct !DILexicalBlock(scope: !1649, file: !271, line: 2058, column: 34)
!1692 = !DILocation(line: 2059, column: 15, scope: !1691)
!1693 = !DILocation(line: 2062, column: 11, scope: !1691)
!1694 = !DILocation(line: 2063, column: 39, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1696, file: !271, line: 2062, column: 28)
!1696 = distinct !DILexicalBlock(scope: !1691, file: !271, line: 2062, column: 11)
!1697 = !DILocation(line: 2063, column: 43, scope: !1695)
!1698 = !DILocation(line: 2063, column: 52, scope: !1695)
!1699 = !DILocation(line: 2063, column: 64, scope: !1695)
!1700 = !DILocation(line: 2064, column: 39, scope: !1695)
!1701 = !DILocation(line: 2063, column: 17, scope: !1695)
!1702 = !DILocation(line: 2063, column: 15, scope: !1695)
!1703 = !DILocation(line: 2065, column: 10, scope: !1695)
!1704 = !DILocalVariable(name: "tempVec", scope: !1705, file: !271, line: 2067, type: !254)
!1705 = distinct !DILexicalBlock(scope: !1696, file: !271, line: 2066, column: 14)
!1706 = !DILocation(line: 2067, column: 14, scope: !1705)
!1707 = !DILocation(line: 2067, column: 44, scope: !1705)
!1708 = !DILocation(line: 2067, column: 57, scope: !1705)
!1709 = !DILocation(line: 2067, column: 56, scope: !1705)
!1710 = !DILocation(line: 2067, column: 54, scope: !1705)
!1711 = !DILocation(line: 2067, column: 25, scope: !1705)
!1712 = !DILocation(line: 2067, column: 86, scope: !1713)
!1713 = !DILexicalBlockFile(scope: !1705, file: !271, discriminator: 1)
!1714 = !DILocation(line: 2067, column: 25, scope: !1713)
!1715 = !DILocation(line: 2067, column: 99, scope: !1716)
!1716 = !DILexicalBlockFile(scope: !1705, file: !271, discriminator: 2)
!1717 = !DILocation(line: 2067, column: 98, scope: !1716)
!1718 = !DILocation(line: 2067, column: 25, scope: !1716)
!1719 = !DILocation(line: 2067, column: 25, scope: !1720)
!1720 = !DILexicalBlockFile(scope: !1705, file: !271, discriminator: 3)
!1721 = !DILocation(line: 2067, column: 24, scope: !1720)
!1722 = !DILocation(line: 2067, column: 14, scope: !1720)
!1723 = !DILocation(line: 2068, column: 28, scope: !1705)
!1724 = !DILocation(line: 2068, column: 32, scope: !1705)
!1725 = !DILocation(line: 2068, column: 39, scope: !1705)
!1726 = !DILocation(line: 2068, column: 45, scope: !1705)
!1727 = !DILocation(line: 2068, column: 54, scope: !1705)
!1728 = !DILocation(line: 2068, column: 19, scope: !1705)
!1729 = !DILocation(line: 2068, column: 17, scope: !1705)
!1730 = !DILocation(line: 2070, column: 11, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1691, file: !271, line: 2070, column: 11)
!1732 = !DILocation(line: 2070, column: 18, scope: !1731)
!1733 = !DILocation(line: 2070, column: 11, scope: !1691)
!1734 = !DILocation(line: 2071, column: 15, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !271, line: 2071, column: 13)
!1736 = distinct !DILexicalBlock(scope: !1731, file: !271, line: 2070, column: 25)
!1737 = !DILocation(line: 2071, column: 14, scope: !1735)
!1738 = !DILocation(line: 2071, column: 19, scope: !1735)
!1739 = !DILocation(line: 2071, column: 13, scope: !1736)
!1740 = !DILocation(line: 2072, column: 13, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1735, file: !271, line: 2071, column: 29)
!1742 = distinct !{!1742, !1684}
!1743 = !DILocation(line: 2074, column: 15, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1736, file: !271, line: 2074, column: 13)
!1745 = !DILocation(line: 2074, column: 14, scope: !1744)
!1746 = !DILocation(line: 2074, column: 19, scope: !1744)
!1747 = !DILocation(line: 2074, column: 29, scope: !1744)
!1748 = !DILocation(line: 2074, column: 34, scope: !1749)
!1749 = !DILexicalBlockFile(scope: !1744, file: !271, discriminator: 1)
!1750 = !DILocation(line: 2074, column: 33, scope: !1749)
!1751 = !DILocation(line: 2074, column: 38, scope: !1749)
!1752 = !DILocation(line: 2074, column: 48, scope: !1749)
!1753 = !DILocation(line: 2074, column: 53, scope: !1754)
!1754 = !DILexicalBlockFile(scope: !1744, file: !271, discriminator: 2)
!1755 = !DILocation(line: 2074, column: 52, scope: !1754)
!1756 = !DILocation(line: 2074, column: 57, scope: !1754)
!1757 = !DILocation(line: 2074, column: 13, scope: !1754)
!1758 = !DILocalVariable(name: "remSize", scope: !1759, file: !271, line: 2084, type: !266)
!1759 = distinct !DILexicalBlock(scope: !1744, file: !271, line: 2074, column: 68)
!1760 = !DILocation(line: 2084, column: 20, scope: !1759)
!1761 = !DILocation(line: 2084, column: 30, scope: !1759)
!1762 = !DILocation(line: 2084, column: 42, scope: !1759)
!1763 = !DILocation(line: 2084, column: 40, scope: !1759)
!1764 = !DILocalVariable(name: "tempOffset", scope: !1759, file: !271, line: 2085, type: !263)
!1765 = !DILocation(line: 2085, column: 20, scope: !1759)
!1766 = !DILocation(line: 2085, column: 33, scope: !1759)
!1767 = !DILocation(line: 2085, column: 42, scope: !1759)
!1768 = !DILocation(line: 2085, column: 40, scope: !1759)
!1769 = !DILocation(line: 2086, column: 26, scope: !1759)
!1770 = !DILocation(line: 2087, column: 42, scope: !1759)
!1771 = !DILocation(line: 2087, column: 46, scope: !1759)
!1772 = !DILocation(line: 2087, column: 52, scope: !1759)
!1773 = !DILocation(line: 2087, column: 60, scope: !1759)
!1774 = !DILocation(line: 2087, column: 72, scope: !1759)
!1775 = !DILocation(line: 2087, column: 20, scope: !1759)
!1776 = !DILocation(line: 2087, column: 18, scope: !1759)
!1777 = !DILocation(line: 2089, column: 13, scope: !1759)
!1778 = !DILocation(line: 2091, column: 37, scope: !1736)
!1779 = !DILocation(line: 2091, column: 36, scope: !1736)
!1780 = !DILocation(line: 2091, column: 17, scope: !1781)
!1781 = !DILexicalBlockFile(scope: !1736, file: !271, discriminator: 1)
!1782 = !DILocation(line: 2091, column: 15, scope: !1736)
!1783 = !DILocation(line: 2092, column: 10, scope: !1736)
!1784 = !DILocation(line: 2094, column: 20, scope: !1691)
!1785 = !DILocation(line: 2094, column: 17, scope: !1691)
!1786 = !DILocation(line: 2095, column: 11, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1691, file: !271, line: 2095, column: 11)
!1788 = !DILocation(line: 2095, column: 24, scope: !1787)
!1789 = !DILocation(line: 2095, column: 21, scope: !1787)
!1790 = !DILocation(line: 2095, column: 11, scope: !1691)
!1791 = !DILocation(line: 2096, column: 15, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1787, file: !271, line: 2095, column: 35)
!1793 = !DILocation(line: 2097, column: 10, scope: !1792)
!1794 = !DILocation(line: 2099, column: 11, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1691, file: !271, line: 2099, column: 11)
!1796 = !DILocation(line: 2099, column: 18, scope: !1795)
!1797 = !DILocation(line: 2099, column: 11, scope: !1691)
!1798 = !DILocation(line: 2100, column: 15, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1795, file: !271, line: 2099, column: 24)
!1800 = !DILocation(line: 2101, column: 10, scope: !1799)
!1801 = !DILocation(line: 2114, column: 7, scope: !1691)
!1802 = !DILocation(line: 2114, column: 14, scope: !1803)
!1803 = !DILexicalBlockFile(scope: !1804, file: !271, discriminator: 1)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !271, line: 2114, column: 7)
!1805 = distinct !DILexicalBlock(scope: !1691, file: !271, line: 2114, column: 7)
!1806 = !DILocation(line: 2114, column: 20, scope: !1803)
!1807 = !DILocation(line: 2114, column: 18, scope: !1803)
!1808 = !DILocation(line: 2114, column: 7, scope: !1803)
!1809 = !DILocation(line: 2115, column: 17, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1804, file: !271, line: 2114, column: 49)
!1811 = !DILocation(line: 2115, column: 23, scope: !1810)
!1812 = !DILocation(line: 2115, column: 14, scope: !1810)
!1813 = !DILocation(line: 2116, column: 20, scope: !1810)
!1814 = !DILocation(line: 2116, column: 26, scope: !1810)
!1815 = !DILocation(line: 2116, column: 17, scope: !1810)
!1816 = !DILocation(line: 2125, column: 18, scope: !1810)
!1817 = !DILocation(line: 2126, column: 7, scope: !1810)
!1818 = !DILocation(line: 2114, column: 35, scope: !1819)
!1819 = !DILexicalBlockFile(scope: !1804, file: !271, discriminator: 2)
!1820 = !DILocation(line: 2114, column: 45, scope: !1819)
!1821 = !DILocation(line: 2114, column: 7, scope: !1819)
!1822 = distinct !{!1822, !1801}
!1823 = !DILocation(line: 2127, column: 11, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1691, file: !271, line: 2127, column: 11)
!1825 = !DILocation(line: 2127, column: 17, scope: !1824)
!1826 = !DILocation(line: 2127, column: 15, scope: !1824)
!1827 = !DILocation(line: 2127, column: 11, scope: !1691)
!1828 = !DILocation(line: 2129, column: 15, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1824, file: !271, line: 2127, column: 28)
!1830 = !DILocation(line: 2130, column: 10, scope: !1829)
!1831 = !DILocation(line: 2058, column: 4, scope: !1832)
!1832 = !DILexicalBlockFile(scope: !1649, file: !271, discriminator: 2)
!1833 = !DILocation(line: 2133, column: 8, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1649, file: !271, line: 2133, column: 8)
!1835 = !DILocation(line: 2133, column: 8, scope: !1649)
!1836 = !DILocation(line: 2134, column: 17, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1834, file: !271, line: 2133, column: 16)
!1838 = !DILocation(line: 2134, column: 29, scope: !1837)
!1839 = !DILocation(line: 2134, column: 27, scope: !1837)
!1840 = !DILocation(line: 2134, column: 8, scope: !1837)
!1841 = !DILocation(line: 2134, column: 15, scope: !1837)
!1842 = !DILocation(line: 2135, column: 4, scope: !1837)
!1843 = !DILocation(line: 2137, column: 11, scope: !1649)
!1844 = !DILocation(line: 2137, column: 4, scope: !1649)
!1845 = distinct !DISubprogram(name: "FileIO_Pwritev", scope: !271, file: !271, line: 2331, type: !323, isLocal: false, isDefinition: true, scopeLine: 2337, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!1846 = !DILocalVariable(name: "fd", arg: 1, scope: !1845, file: !271, line: 2331, type: !275)
!1847 = !DILocation(line: 2331, column: 34, scope: !1845)
!1848 = !DILocalVariable(name: "entries", arg: 2, scope: !1845, file: !271, line: 2332, type: !325)
!1849 = !DILocation(line: 2332, column: 36, scope: !1845)
!1850 = !DILocalVariable(name: "numEntries", arg: 3, scope: !1845, file: !271, line: 2333, type: !254)
!1851 = !DILocation(line: 2333, column: 20, scope: !1845)
!1852 = !DILocalVariable(name: "offset", arg: 4, scope: !1845, file: !271, line: 2334, type: !263)
!1853 = !DILocation(line: 2334, column: 23, scope: !1845)
!1854 = !DILocalVariable(name: "totalSize", arg: 5, scope: !1845, file: !271, line: 2335, type: !266)
!1855 = !DILocation(line: 2335, column: 23, scope: !1845)
!1856 = !DILocalVariable(name: "actual", arg: 6, scope: !1845, file: !271, line: 2336, type: !332)
!1857 = !DILocation(line: 2336, column: 24, scope: !1845)
!1858 = !DILocalVariable(name: "fret", scope: !1845, file: !271, line: 2338, type: !274)
!1859 = !DILocation(line: 2338, column: 17, scope: !1845)
!1860 = !DILocation(line: 2343, column: 30, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !271, line: 2343, column: 10)
!1862 = distinct !DILexicalBlock(scope: !1845, file: !271, line: 2343, column: 5)
!1863 = !DILocation(line: 2343, column: 40, scope: !1861)
!1864 = !DILocation(line: 2343, column: 28, scope: !1861)
!1865 = !DILocation(line: 2343, column: 27, scope: !1861)
!1866 = !DILocation(line: 2343, column: 10, scope: !1861)
!1867 = !DILocation(line: 2343, column: 10, scope: !1862)
!1868 = !DILocation(line: 2343, column: 62, scope: !1869)
!1869 = !DILexicalBlockFile(scope: !1870, file: !271, discriminator: 1)
!1870 = distinct !DILexicalBlock(scope: !1861, file: !271, line: 2343, column: 60)
!1871 = !DILocation(line: 2346, column: 33, scope: !1845)
!1872 = !DILocation(line: 2346, column: 37, scope: !1845)
!1873 = !DILocation(line: 2346, column: 46, scope: !1845)
!1874 = !DILocation(line: 2346, column: 58, scope: !1845)
!1875 = !DILocation(line: 2346, column: 66, scope: !1845)
!1876 = !DILocation(line: 2347, column: 33, scope: !1845)
!1877 = !DILocation(line: 2346, column: 11, scope: !1845)
!1878 = !DILocation(line: 2346, column: 9, scope: !1845)
!1879 = !DILocation(line: 2352, column: 11, scope: !1845)
!1880 = !DILocation(line: 2352, column: 4, scope: !1845)
!1881 = distinct !DISubprogram(name: "FileIOPwritevInternal", scope: !271, file: !271, line: 2172, type: !323, isLocal: true, isDefinition: true, scopeLine: 2179, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!1882 = !DILocalVariable(name: "fd", arg: 1, scope: !1881, file: !271, line: 2173, type: !275)
!1883 = !DILocation(line: 2173, column: 35, scope: !1881)
!1884 = !DILocalVariable(name: "entries", arg: 2, scope: !1881, file: !271, line: 2174, type: !325)
!1885 = !DILocation(line: 2174, column: 37, scope: !1881)
!1886 = !DILocalVariable(name: "numEntries", arg: 3, scope: !1881, file: !271, line: 2175, type: !254)
!1887 = !DILocation(line: 2175, column: 21, scope: !1881)
!1888 = !DILocalVariable(name: "offset", arg: 4, scope: !1881, file: !271, line: 2176, type: !263)
!1889 = !DILocation(line: 2176, column: 24, scope: !1881)
!1890 = !DILocalVariable(name: "totalSize", arg: 5, scope: !1881, file: !271, line: 2177, type: !266)
!1891 = !DILocation(line: 2177, column: 24, scope: !1881)
!1892 = !DILocalVariable(name: "actual", arg: 6, scope: !1881, file: !271, line: 2178, type: !332)
!1893 = !DILocation(line: 2178, column: 25, scope: !1881)
!1894 = !DILocalVariable(name: "vPtr", scope: !1881, file: !271, line: 2180, type: !325)
!1895 = !DILocation(line: 2180, column: 24, scope: !1881)
!1896 = !DILocalVariable(name: "numVec", scope: !1881, file: !271, line: 2181, type: !254)
!1897 = !DILocation(line: 2181, column: 8, scope: !1881)
!1898 = !DILocalVariable(name: "partialBytes", scope: !1881, file: !271, line: 2182, type: !266)
!1899 = !DILocation(line: 2182, column: 11, scope: !1881)
!1900 = !DILocalVariable(name: "bytesWritten", scope: !1881, file: !271, line: 2183, type: !266)
!1901 = !DILocation(line: 2183, column: 11, scope: !1881)
!1902 = !DILocalVariable(name: "sum", scope: !1881, file: !271, line: 2184, type: !266)
!1903 = !DILocation(line: 2184, column: 11, scope: !1881)
!1904 = !DILocalVariable(name: "nRetries", scope: !1881, file: !271, line: 2185, type: !254)
!1905 = !DILocation(line: 2185, column: 8, scope: !1881)
!1906 = !DILocalVariable(name: "maxRetries", scope: !1881, file: !271, line: 2186, type: !254)
!1907 = !DILocation(line: 2186, column: 8, scope: !1881)
!1908 = !DILocation(line: 2186, column: 21, scope: !1881)
!1909 = !DILocalVariable(name: "fret", scope: !1881, file: !271, line: 2187, type: !274)
!1910 = !DILocation(line: 2187, column: 17, scope: !1881)
!1911 = !DILocation(line: 2189, column: 4, scope: !1881)
!1912 = !DILocation(line: 2190, column: 13, scope: !1881)
!1913 = !DILocation(line: 2190, column: 11, scope: !1881)
!1914 = !DILocation(line: 2191, column: 11, scope: !1881)
!1915 = !DILocation(line: 2191, column: 9, scope: !1881)
!1916 = !DILocation(line: 2193, column: 4, scope: !1881)
!1917 = !DILocation(line: 2193, column: 11, scope: !1918)
!1918 = !DILexicalBlockFile(scope: !1881, file: !271, discriminator: 1)
!1919 = !DILocation(line: 2193, column: 22, scope: !1918)
!1920 = !DILocation(line: 2193, column: 20, scope: !1918)
!1921 = !DILocation(line: 2193, column: 4, scope: !1918)
!1922 = !DILocalVariable(name: "retval", scope: !1923, file: !271, line: 2194, type: !306)
!1923 = distinct !DILexicalBlock(scope: !1881, file: !271, line: 2193, column: 34)
!1924 = !DILocation(line: 2194, column: 15, scope: !1923)
!1925 = !DILocation(line: 2197, column: 11, scope: !1923)
!1926 = !DILocation(line: 2198, column: 40, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1928, file: !271, line: 2197, column: 29)
!1928 = distinct !DILexicalBlock(scope: !1923, file: !271, line: 2197, column: 11)
!1929 = !DILocation(line: 2198, column: 44, scope: !1927)
!1930 = !DILocation(line: 2198, column: 53, scope: !1927)
!1931 = !DILocation(line: 2198, column: 65, scope: !1927)
!1932 = !DILocation(line: 2199, column: 40, scope: !1927)
!1933 = !DILocation(line: 2198, column: 17, scope: !1927)
!1934 = !DILocation(line: 2198, column: 15, scope: !1927)
!1935 = !DILocation(line: 2200, column: 10, scope: !1927)
!1936 = !DILocalVariable(name: "tempVec", scope: !1937, file: !271, line: 2202, type: !254)
!1937 = distinct !DILexicalBlock(scope: !1928, file: !271, line: 2201, column: 14)
!1938 = !DILocation(line: 2202, column: 14, scope: !1937)
!1939 = !DILocation(line: 2202, column: 44, scope: !1937)
!1940 = !DILocation(line: 2202, column: 57, scope: !1937)
!1941 = !DILocation(line: 2202, column: 56, scope: !1937)
!1942 = !DILocation(line: 2202, column: 54, scope: !1937)
!1943 = !DILocation(line: 2202, column: 25, scope: !1937)
!1944 = !DILocation(line: 2202, column: 86, scope: !1945)
!1945 = !DILexicalBlockFile(scope: !1937, file: !271, discriminator: 1)
!1946 = !DILocation(line: 2202, column: 25, scope: !1945)
!1947 = !DILocation(line: 2202, column: 99, scope: !1948)
!1948 = !DILexicalBlockFile(scope: !1937, file: !271, discriminator: 2)
!1949 = !DILocation(line: 2202, column: 98, scope: !1948)
!1950 = !DILocation(line: 2202, column: 25, scope: !1948)
!1951 = !DILocation(line: 2202, column: 25, scope: !1952)
!1952 = !DILexicalBlockFile(scope: !1937, file: !271, discriminator: 3)
!1953 = !DILocation(line: 2202, column: 24, scope: !1952)
!1954 = !DILocation(line: 2202, column: 14, scope: !1952)
!1955 = !DILocation(line: 2203, column: 29, scope: !1937)
!1956 = !DILocation(line: 2203, column: 33, scope: !1937)
!1957 = !DILocation(line: 2203, column: 40, scope: !1937)
!1958 = !DILocation(line: 2203, column: 46, scope: !1937)
!1959 = !DILocation(line: 2203, column: 55, scope: !1937)
!1960 = !DILocation(line: 2203, column: 19, scope: !1937)
!1961 = !DILocation(line: 2203, column: 17, scope: !1937)
!1962 = !DILocation(line: 2205, column: 11, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1923, file: !271, line: 2205, column: 11)
!1964 = !DILocation(line: 2205, column: 18, scope: !1963)
!1965 = !DILocation(line: 2205, column: 11, scope: !1923)
!1966 = !DILocation(line: 2206, column: 15, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !271, line: 2206, column: 13)
!1968 = distinct !DILexicalBlock(scope: !1963, file: !271, line: 2205, column: 25)
!1969 = !DILocation(line: 2206, column: 14, scope: !1967)
!1970 = !DILocation(line: 2206, column: 19, scope: !1967)
!1971 = !DILocation(line: 2206, column: 13, scope: !1968)
!1972 = !DILocation(line: 2207, column: 13, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1967, file: !271, line: 2206, column: 29)
!1974 = distinct !{!1974, !1916}
!1975 = !DILocation(line: 2209, column: 15, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1968, file: !271, line: 2209, column: 13)
!1977 = !DILocation(line: 2209, column: 14, scope: !1976)
!1978 = !DILocation(line: 2209, column: 19, scope: !1976)
!1979 = !DILocation(line: 2209, column: 29, scope: !1976)
!1980 = !DILocation(line: 2209, column: 34, scope: !1981)
!1981 = !DILexicalBlockFile(scope: !1976, file: !271, discriminator: 1)
!1982 = !DILocation(line: 2209, column: 33, scope: !1981)
!1983 = !DILocation(line: 2209, column: 38, scope: !1981)
!1984 = !DILocation(line: 2209, column: 48, scope: !1981)
!1985 = !DILocation(line: 2209, column: 53, scope: !1986)
!1986 = !DILexicalBlockFile(scope: !1976, file: !271, discriminator: 2)
!1987 = !DILocation(line: 2209, column: 52, scope: !1986)
!1988 = !DILocation(line: 2209, column: 57, scope: !1986)
!1989 = !DILocation(line: 2209, column: 13, scope: !1986)
!1990 = !DILocalVariable(name: "remSize", scope: !1991, file: !271, line: 2219, type: !266)
!1991 = distinct !DILexicalBlock(scope: !1976, file: !271, line: 2209, column: 68)
!1992 = !DILocation(line: 2219, column: 20, scope: !1991)
!1993 = !DILocation(line: 2219, column: 30, scope: !1991)
!1994 = !DILocation(line: 2219, column: 42, scope: !1991)
!1995 = !DILocation(line: 2219, column: 40, scope: !1991)
!1996 = !DILocalVariable(name: "tempOffset", scope: !1991, file: !271, line: 2220, type: !263)
!1997 = !DILocation(line: 2220, column: 20, scope: !1991)
!1998 = !DILocation(line: 2220, column: 33, scope: !1991)
!1999 = !DILocation(line: 2220, column: 42, scope: !1991)
!2000 = !DILocation(line: 2220, column: 40, scope: !1991)
!2001 = !DILocation(line: 2221, column: 26, scope: !1991)
!2002 = !DILocation(line: 2222, column: 43, scope: !1991)
!2003 = !DILocation(line: 2222, column: 47, scope: !1991)
!2004 = !DILocation(line: 2222, column: 53, scope: !1991)
!2005 = !DILocation(line: 2222, column: 61, scope: !1991)
!2006 = !DILocation(line: 2222, column: 73, scope: !1991)
!2007 = !DILocation(line: 2222, column: 20, scope: !1991)
!2008 = !DILocation(line: 2222, column: 18, scope: !1991)
!2009 = !DILocation(line: 2224, column: 13, scope: !1991)
!2010 = !DILocation(line: 2227, column: 37, scope: !1968)
!2011 = !DILocation(line: 2227, column: 36, scope: !1968)
!2012 = !DILocation(line: 2227, column: 17, scope: !2013)
!2013 = !DILexicalBlockFile(scope: !1968, file: !271, discriminator: 1)
!2014 = !DILocation(line: 2227, column: 15, scope: !1968)
!2015 = !DILocation(line: 2228, column: 10, scope: !1968)
!2016 = !DILocation(line: 2231, column: 23, scope: !1923)
!2017 = !DILocation(line: 2231, column: 20, scope: !1923)
!2018 = !DILocation(line: 2232, column: 11, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !1923, file: !271, line: 2232, column: 11)
!2020 = !DILocation(line: 2232, column: 27, scope: !2019)
!2021 = !DILocation(line: 2232, column: 24, scope: !2019)
!2022 = !DILocation(line: 2232, column: 11, scope: !1923)
!2023 = !DILocation(line: 2233, column: 15, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2019, file: !271, line: 2232, column: 38)
!2025 = !DILocation(line: 2234, column: 10, scope: !2024)
!2026 = !DILocation(line: 2236, column: 7, scope: !1923)
!2027 = !DILocation(line: 2236, column: 14, scope: !2028)
!2028 = !DILexicalBlockFile(scope: !2029, file: !271, discriminator: 1)
!2029 = distinct !DILexicalBlock(scope: !2030, file: !271, line: 2236, column: 7)
!2030 = distinct !DILexicalBlock(scope: !1923, file: !271, line: 2236, column: 7)
!2031 = !DILocation(line: 2236, column: 20, scope: !2028)
!2032 = !DILocation(line: 2236, column: 18, scope: !2028)
!2033 = !DILocation(line: 2236, column: 7, scope: !2028)
!2034 = !DILocation(line: 2237, column: 17, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2029, file: !271, line: 2236, column: 52)
!2036 = !DILocation(line: 2237, column: 23, scope: !2035)
!2037 = !DILocation(line: 2237, column: 14, scope: !2035)
!2038 = !DILocation(line: 2238, column: 20, scope: !2035)
!2039 = !DILocation(line: 2238, column: 26, scope: !2035)
!2040 = !DILocation(line: 2238, column: 17, scope: !2035)
!2041 = !DILocation(line: 2239, column: 18, scope: !2035)
!2042 = !DILocation(line: 2240, column: 7, scope: !2035)
!2043 = !DILocation(line: 2236, column: 38, scope: !2044)
!2044 = !DILexicalBlockFile(scope: !2029, file: !271, discriminator: 2)
!2045 = !DILocation(line: 2236, column: 48, scope: !2044)
!2046 = !DILocation(line: 2236, column: 7, scope: !2044)
!2047 = distinct !{!2047, !2026}
!2048 = !DILocation(line: 2247, column: 11, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !1923, file: !271, line: 2247, column: 11)
!2050 = !DILocation(line: 2247, column: 18, scope: !2049)
!2051 = !DILocation(line: 2247, column: 15, scope: !2049)
!2052 = !DILocation(line: 2247, column: 11, scope: !1923)
!2053 = !DILocation(line: 2248, column: 15, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2049, file: !271, line: 2247, column: 32)
!2055 = !DILocation(line: 2249, column: 10, scope: !2054)
!2056 = !DILocation(line: 2193, column: 4, scope: !2057)
!2057 = !DILexicalBlockFile(scope: !1881, file: !271, discriminator: 2)
!2058 = !DILocation(line: 2252, column: 8, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !1881, file: !271, line: 2252, column: 8)
!2060 = !DILocation(line: 2252, column: 8, scope: !1881)
!2061 = !DILocation(line: 2253, column: 17, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2059, file: !271, line: 2252, column: 16)
!2063 = !DILocation(line: 2253, column: 32, scope: !2062)
!2064 = !DILocation(line: 2253, column: 30, scope: !2062)
!2065 = !DILocation(line: 2253, column: 8, scope: !2062)
!2066 = !DILocation(line: 2253, column: 15, scope: !2062)
!2067 = !DILocation(line: 2254, column: 4, scope: !2062)
!2068 = !DILocation(line: 2255, column: 11, scope: !1881)
!2069 = !DILocation(line: 2255, column: 4, scope: !1881)
!2070 = distinct !DISubprogram(name: "FileIO_GetAllocSize", scope: !271, file: !271, line: 2376, type: !2071, isLocal: false, isDefinition: true, scopeLine: 2379, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!274, !381, !2073, !2073}
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64, align: 64)
!2074 = !DILocalVariable(name: "fd", arg: 1, scope: !2070, file: !271, line: 2376, type: !381)
!2075 = !DILocation(line: 2376, column: 45, scope: !2070)
!2076 = !DILocalVariable(name: "logicalBytes", arg: 2, scope: !2070, file: !271, line: 2377, type: !2073)
!2077 = !DILocation(line: 2377, column: 29, scope: !2070)
!2078 = !DILocalVariable(name: "allocedBytes", arg: 3, scope: !2070, file: !271, line: 2378, type: !2073)
!2079 = !DILocation(line: 2378, column: 29, scope: !2070)
!2080 = !DILocalVariable(name: "statBuf", scope: !2070, file: !271, line: 2380, type: !2081)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2082, line: 46, size: 1152, align: 64, elements: !2083)
!2082 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/open-vm-tools/line207")
!2083 = !{!2084, !2086, !2088, !2090, !2092, !2093, !2095, !2096, !2097, !2099, !2101, !2103, !2111, !2112, !2113}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2081, file: !2082, line: 48, baseType: !2085, size: 64, align: 64)
!2085 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !309, line: 124, baseType: !265)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2081, file: !2082, line: 53, baseType: !2087, size: 64, align: 64, offset: 64)
!2087 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !309, line: 127, baseType: !265)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2081, file: !2082, line: 61, baseType: !2089, size: 64, align: 64, offset: 128)
!2089 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !309, line: 130, baseType: !265)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2081, file: !2082, line: 62, baseType: !2091, size: 32, align: 32, offset: 192)
!2091 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !309, line: 129, baseType: !292)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2081, file: !2082, line: 64, baseType: !646, size: 32, align: 32, offset: 224)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2081, file: !2082, line: 65, baseType: !2094, size: 32, align: 32, offset: 256)
!2094 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !309, line: 126, baseType: !292)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2081, file: !2082, line: 67, baseType: !254, size: 32, align: 32, offset: 288)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2081, file: !2082, line: 69, baseType: !2085, size: 64, align: 64, offset: 320)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2081, file: !2082, line: 74, baseType: !2098, size: 64, align: 64, offset: 384)
!2098 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !309, line: 131, baseType: !310)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2081, file: !2082, line: 78, baseType: !2100, size: 64, align: 64, offset: 448)
!2100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !309, line: 153, baseType: !310)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2081, file: !2082, line: 80, baseType: !2102, size: 64, align: 64, offset: 512)
!2102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !309, line: 158, baseType: !310)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2081, file: !2082, line: 91, baseType: !2104, size: 128, align: 64, offset: 576)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2105, line: 120, size: 128, align: 64, elements: !2106)
!2105 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/open-vm-tools/line207")
!2106 = !{!2107, !2109}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2104, file: !2105, line: 122, baseType: !2108, size: 64, align: 64)
!2108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !309, line: 139, baseType: !310)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2104, file: !2105, line: 123, baseType: !2110, size: 64, align: 64, offset: 64)
!2110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !309, line: 175, baseType: !310)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2081, file: !2082, line: 92, baseType: !2104, size: 128, align: 64, offset: 704)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2081, file: !2082, line: 93, baseType: !2104, size: 128, align: 64, offset: 832)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2081, file: !2082, line: 106, baseType: !2114, size: 192, align: 64, offset: 960)
!2114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2110, size: 192, align: 64, elements: !319)
!2115 = !DILocation(line: 2380, column: 16, scope: !2070)
!2116 = !DILocation(line: 2384, column: 14, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2070, file: !271, line: 2384, column: 8)
!2118 = !DILocation(line: 2384, column: 18, scope: !2117)
!2119 = !DILocation(line: 2384, column: 8, scope: !2117)
!2120 = !DILocation(line: 2384, column: 35, scope: !2117)
!2121 = !DILocation(line: 2384, column: 8, scope: !2070)
!2122 = !DILocation(line: 2385, column: 34, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2117, file: !271, line: 2384, column: 42)
!2124 = !DILocation(line: 2385, column: 33, scope: !2123)
!2125 = !DILocation(line: 2385, column: 14, scope: !2126)
!2126 = !DILexicalBlockFile(scope: !2123, file: !271, discriminator: 1)
!2127 = !DILocation(line: 2385, column: 7, scope: !2123)
!2128 = !DILocation(line: 2388, column: 8, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2070, file: !271, line: 2388, column: 8)
!2130 = !DILocation(line: 2388, column: 8, scope: !2070)
!2131 = !DILocation(line: 2389, column: 31, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2129, file: !271, line: 2388, column: 22)
!2133 = !DILocation(line: 2389, column: 8, scope: !2132)
!2134 = !DILocation(line: 2389, column: 21, scope: !2132)
!2135 = !DILocation(line: 2390, column: 4, scope: !2132)
!2136 = !DILocation(line: 2392, column: 8, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2070, file: !271, line: 2392, column: 8)
!2138 = !DILocation(line: 2392, column: 8, scope: !2070)
!2139 = !DILocation(line: 2397, column: 31, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2137, file: !271, line: 2392, column: 22)
!2141 = !DILocation(line: 2397, column: 41, scope: !2140)
!2142 = !DILocation(line: 2397, column: 8, scope: !2140)
!2143 = !DILocation(line: 2397, column: 21, scope: !2140)
!2144 = !DILocation(line: 2398, column: 4, scope: !2140)
!2145 = !DILocation(line: 2400, column: 4, scope: !2070)
!2146 = !DILocation(line: 2401, column: 1, scope: !2070)
!2147 = distinct !DISubprogram(name: "FileIO_SetAllocSize", scope: !271, file: !271, line: 2422, type: !2148, isLocal: false, isDefinition: true, scopeLine: 2424, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!294, !381, !263}
!2150 = !DILocalVariable(name: "fd", arg: 1, scope: !2147, file: !271, line: 2422, type: !381)
!2151 = !DILocation(line: 2422, column: 45, scope: !2147)
!2152 = !DILocalVariable(name: "size", arg: 2, scope: !2147, file: !271, line: 2423, type: !263)
!2153 = !DILocation(line: 2423, column: 28, scope: !2147)
!2154 = !DILocalVariable(name: "fret", scope: !2147, file: !271, line: 2427, type: !274)
!2155 = !DILocation(line: 2427, column: 17, scope: !2147)
!2156 = !DILocalVariable(name: "curSize", scope: !2147, file: !271, line: 2428, type: !263)
!2157 = !DILocation(line: 2428, column: 11, scope: !2147)
!2158 = !DILocalVariable(name: "preallocLen", scope: !2147, file: !271, line: 2429, type: !263)
!2159 = !DILocation(line: 2429, column: 11, scope: !2147)
!2160 = !DILocation(line: 2434, column: 31, scope: !2147)
!2161 = !DILocation(line: 2434, column: 11, scope: !2147)
!2162 = !DILocation(line: 2434, column: 9, scope: !2147)
!2163 = !DILocation(line: 2435, column: 26, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2147, file: !271, line: 2435, column: 8)
!2165 = !DILocation(line: 2435, column: 9, scope: !2164)
!2166 = !DILocation(line: 2435, column: 8, scope: !2147)
!2167 = !DILocation(line: 2436, column: 7, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2164, file: !271, line: 2435, column: 33)
!2169 = !DILocation(line: 2439, column: 8, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2147, file: !271, line: 2439, column: 8)
!2171 = !DILocation(line: 2439, column: 18, scope: !2170)
!2172 = !DILocation(line: 2439, column: 16, scope: !2170)
!2173 = !DILocation(line: 2439, column: 8, scope: !2147)
!2174 = !DILocation(line: 2440, column: 8, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2170, file: !271, line: 2439, column: 24)
!2176 = !DILocation(line: 2440, column: 12, scope: !2175)
!2177 = !DILocation(line: 2442, column: 7, scope: !2175)
!2178 = !DILocation(line: 2444, column: 18, scope: !2147)
!2179 = !DILocation(line: 2444, column: 25, scope: !2147)
!2180 = !DILocation(line: 2444, column: 23, scope: !2147)
!2181 = !DILocation(line: 2444, column: 16, scope: !2147)
!2182 = !DILocation(line: 2455, column: 33, scope: !2147)
!2183 = !DILocation(line: 2455, column: 37, scope: !2147)
!2184 = !DILocation(line: 2456, column: 19, scope: !2147)
!2185 = !DILocation(line: 2456, column: 28, scope: !2147)
!2186 = !DILocation(line: 2455, column: 11, scope: !2147)
!2187 = !DILocation(line: 2456, column: 41, scope: !2147)
!2188 = !DILocation(line: 2455, column: 4, scope: !2147)
!2189 = !DILocation(line: 2464, column: 1, scope: !2147)
!2190 = distinct !DISubprogram(name: "FileIO_GetAllocSizeByPath", scope: !271, file: !271, line: 2484, type: !2191, isLocal: false, isDefinition: true, scopeLine: 2487, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!274, !287, !2073, !2073}
!2193 = !DILocalVariable(name: "pathName", arg: 1, scope: !2190, file: !271, line: 2484, type: !287)
!2194 = !DILocation(line: 2484, column: 39, scope: !2190)
!2195 = !DILocalVariable(name: "logicalBytes", arg: 2, scope: !2190, file: !271, line: 2485, type: !2073)
!2196 = !DILocation(line: 2485, column: 35, scope: !2190)
!2197 = !DILocalVariable(name: "allocedBytes", arg: 3, scope: !2190, file: !271, line: 2486, type: !2073)
!2198 = !DILocation(line: 2486, column: 35, scope: !2190)
!2199 = !DILocalVariable(name: "statBuf", scope: !2190, file: !271, line: 2488, type: !2081)
!2200 = !DILocation(line: 2488, column: 16, scope: !2190)
!2201 = !DILocation(line: 2490, column: 19, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2190, file: !271, line: 2490, column: 8)
!2203 = !DILocation(line: 2490, column: 8, scope: !2202)
!2204 = !DILocation(line: 2490, column: 39, scope: !2202)
!2205 = !DILocation(line: 2490, column: 8, scope: !2190)
!2206 = !DILocation(line: 2491, column: 34, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2202, file: !271, line: 2490, column: 46)
!2208 = !DILocation(line: 2491, column: 33, scope: !2207)
!2209 = !DILocation(line: 2491, column: 14, scope: !2210)
!2210 = !DILexicalBlockFile(scope: !2207, file: !271, discriminator: 1)
!2211 = !DILocation(line: 2491, column: 7, scope: !2207)
!2212 = !DILocation(line: 2494, column: 8, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2190, file: !271, line: 2494, column: 8)
!2214 = !DILocation(line: 2494, column: 8, scope: !2190)
!2215 = !DILocation(line: 2495, column: 31, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2213, file: !271, line: 2494, column: 22)
!2217 = !DILocation(line: 2495, column: 8, scope: !2216)
!2218 = !DILocation(line: 2495, column: 21, scope: !2216)
!2219 = !DILocation(line: 2496, column: 4, scope: !2216)
!2220 = !DILocation(line: 2498, column: 8, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2190, file: !271, line: 2498, column: 8)
!2222 = !DILocation(line: 2498, column: 8, scope: !2190)
!2223 = !DILocation(line: 2503, column: 31, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2221, file: !271, line: 2498, column: 22)
!2225 = !DILocation(line: 2503, column: 41, scope: !2224)
!2226 = !DILocation(line: 2503, column: 8, scope: !2224)
!2227 = !DILocation(line: 2503, column: 21, scope: !2224)
!2228 = !DILocation(line: 2504, column: 4, scope: !2224)
!2229 = !DILocation(line: 2506, column: 4, scope: !2190)
!2230 = !DILocation(line: 2507, column: 1, scope: !2190)
!2231 = distinct !DISubprogram(name: "FileIO_Access", scope: !271, file: !271, line: 2529, type: !2232, isLocal: false, isDefinition: true, scopeLine: 2531, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{!274, !287, !254}
!2234 = !DILocalVariable(name: "pathName", arg: 1, scope: !2231, file: !271, line: 2529, type: !287)
!2235 = !DILocation(line: 2529, column: 27, scope: !2231)
!2236 = !DILocalVariable(name: "accessMode", arg: 2, scope: !2231, file: !271, line: 2530, type: !254)
!2237 = !DILocation(line: 2530, column: 19, scope: !2231)
!2238 = !DILocalVariable(name: "mode", scope: !2231, file: !271, line: 2532, type: !254)
!2239 = !DILocation(line: 2532, column: 8, scope: !2231)
!2240 = !DILocation(line: 2534, column: 8, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2231, file: !271, line: 2534, column: 8)
!2242 = !DILocation(line: 2534, column: 17, scope: !2241)
!2243 = !DILocation(line: 2534, column: 8, scope: !2231)
!2244 = !DILocation(line: 2535, column: 8, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2241, file: !271, line: 2534, column: 25)
!2246 = !DILocation(line: 2535, column: 12, scope: !2245)
!2247 = !DILocation(line: 2537, column: 7, scope: !2245)
!2248 = !DILocation(line: 2540, column: 8, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2231, file: !271, line: 2540, column: 8)
!2250 = !DILocation(line: 2540, column: 19, scope: !2249)
!2251 = !DILocation(line: 2540, column: 8, scope: !2231)
!2252 = !DILocation(line: 2541, column: 12, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2249, file: !271, line: 2540, column: 31)
!2254 = !DILocation(line: 2542, column: 4, scope: !2253)
!2255 = !DILocation(line: 2543, column: 8, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2231, file: !271, line: 2543, column: 8)
!2257 = !DILocation(line: 2543, column: 19, scope: !2256)
!2258 = !DILocation(line: 2543, column: 8, scope: !2231)
!2259 = !DILocation(line: 2544, column: 12, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2256, file: !271, line: 2543, column: 31)
!2261 = !DILocation(line: 2545, column: 4, scope: !2260)
!2262 = !DILocation(line: 2546, column: 8, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2231, file: !271, line: 2546, column: 8)
!2264 = !DILocation(line: 2546, column: 19, scope: !2263)
!2265 = !DILocation(line: 2546, column: 8, scope: !2231)
!2266 = !DILocation(line: 2547, column: 12, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2263, file: !271, line: 2546, column: 31)
!2268 = !DILocation(line: 2548, column: 4, scope: !2267)
!2269 = !DILocation(line: 2549, column: 8, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2231, file: !271, line: 2549, column: 8)
!2271 = !DILocation(line: 2549, column: 19, scope: !2270)
!2272 = !DILocation(line: 2549, column: 8, scope: !2231)
!2273 = !DILocation(line: 2550, column: 12, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2270, file: !271, line: 2549, column: 31)
!2275 = !DILocation(line: 2551, column: 4, scope: !2274)
!2276 = !DILocation(line: 2553, column: 25, scope: !2231)
!2277 = !DILocation(line: 2553, column: 35, scope: !2231)
!2278 = !DILocation(line: 2553, column: 12, scope: !2231)
!2279 = !DILocation(line: 2553, column: 41, scope: !2231)
!2280 = !DILocation(line: 2553, column: 11, scope: !2231)
!2281 = !DILocation(line: 2553, column: 4, scope: !2231)
!2282 = !DILocation(line: 2554, column: 1, scope: !2231)
!2283 = distinct !DISubprogram(name: "FileIO_GetFlags", scope: !271, file: !271, line: 2574, type: !2284, isLocal: false, isDefinition: true, scopeLine: 2575, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!290, !275}
!2286 = !DILocalVariable(name: "fd", arg: 1, scope: !2283, file: !271, line: 2574, type: !275)
!2287 = !DILocation(line: 2574, column: 35, scope: !2283)
!2288 = !DILocation(line: 2579, column: 11, scope: !2283)
!2289 = !DILocation(line: 2579, column: 15, scope: !2283)
!2290 = !DILocation(line: 2579, column: 4, scope: !2283)
!2291 = distinct !DISubprogram(name: "FileIO_SupportsFileSize", scope: !271, file: !271, line: 2600, type: !2148, isLocal: false, isDefinition: true, scopeLine: 2602, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!2292 = !DILocalVariable(name: "fd", arg: 1, scope: !2291, file: !271, line: 2600, type: !381)
!2293 = !DILocation(line: 2600, column: 49, scope: !2291)
!2294 = !DILocalVariable(name: "requestedSize", arg: 2, scope: !2291, file: !271, line: 2601, type: !263)
!2295 = !DILocation(line: 2601, column: 32, scope: !2291)
!2296 = !DILocalVariable(name: "supported", scope: !2291, file: !271, line: 2609, type: !294)
!2297 = !DILocation(line: 2609, column: 9, scope: !2291)
!2298 = !DILocalVariable(name: "oldPos", scope: !2291, file: !271, line: 2610, type: !263)
!2299 = !DILocation(line: 2610, column: 11, scope: !2291)
!2300 = !DILocation(line: 2614, column: 25, scope: !2291)
!2301 = !DILocation(line: 2614, column: 13, scope: !2291)
!2302 = !DILocation(line: 2614, column: 11, scope: !2291)
!2303 = !DILocation(line: 2615, column: 8, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2291, file: !271, line: 2615, column: 8)
!2305 = !DILocation(line: 2615, column: 15, scope: !2304)
!2306 = !DILocation(line: 2615, column: 8, scope: !2291)
!2307 = !DILocalVariable(name: "newPos", scope: !2308, file: !271, line: 2616, type: !263)
!2308 = distinct !DILexicalBlock(scope: !2304, file: !271, line: 2615, column: 30)
!2309 = !DILocation(line: 2616, column: 14, scope: !2308)
!2310 = !DILocation(line: 2618, column: 23, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2308, file: !271, line: 2618, column: 11)
!2312 = !DILocation(line: 2618, column: 27, scope: !2311)
!2313 = !DILocation(line: 2618, column: 11, scope: !2311)
!2314 = !DILocation(line: 2618, column: 64, scope: !2311)
!2315 = !DILocation(line: 2618, column: 61, scope: !2311)
!2316 = !DILocation(line: 2618, column: 11, scope: !2308)
!2317 = !DILocation(line: 2619, column: 20, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2311, file: !271, line: 2618, column: 79)
!2319 = !DILocation(line: 2620, column: 7, scope: !2318)
!2320 = !DILocation(line: 2621, column: 28, scope: !2308)
!2321 = !DILocation(line: 2621, column: 32, scope: !2308)
!2322 = !DILocation(line: 2621, column: 16, scope: !2308)
!2323 = !DILocation(line: 2621, column: 14, scope: !2308)
!2324 = !DILocation(line: 2622, column: 33, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2326, file: !271, line: 2622, column: 13)
!2326 = distinct !DILexicalBlock(scope: !2308, file: !271, line: 2622, column: 8)
!2327 = !DILocation(line: 2622, column: 43, scope: !2325)
!2328 = !DILocation(line: 2622, column: 40, scope: !2325)
!2329 = !DILocation(line: 2622, column: 31, scope: !2325)
!2330 = !DILocation(line: 2622, column: 30, scope: !2325)
!2331 = !DILocation(line: 2622, column: 13, scope: !2325)
!2332 = !DILocation(line: 2622, column: 13, scope: !2326)
!2333 = !DILocation(line: 2622, column: 59, scope: !2334)
!2334 = !DILexicalBlockFile(scope: !2335, file: !271, discriminator: 1)
!2335 = distinct !DILexicalBlock(scope: !2325, file: !271, line: 2622, column: 57)
!2336 = !DILocation(line: 2623, column: 4, scope: !2308)
!2337 = !DILocation(line: 2625, column: 11, scope: !2291)
!2338 = !DILocation(line: 2625, column: 4, scope: !2291)
!2339 = distinct !DISubprogram(name: "FileIO_GetModTime", scope: !271, file: !271, line: 2669, type: !2340, isLocal: false, isDefinition: true, scopeLine: 2670, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!865, !381}
!2342 = !DILocalVariable(name: "fd", arg: 1, scope: !2339, file: !271, line: 2669, type: !381)
!2343 = !DILocation(line: 2669, column: 43, scope: !2339)
!2344 = !DILocalVariable(name: "statbuf", scope: !2339, file: !271, line: 2671, type: !2081)
!2345 = !DILocation(line: 2671, column: 16, scope: !2339)
!2346 = !DILocation(line: 2673, column: 14, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2339, file: !271, line: 2673, column: 8)
!2348 = !DILocation(line: 2673, column: 18, scope: !2347)
!2349 = !DILocation(line: 2673, column: 8, scope: !2347)
!2350 = !DILocation(line: 2673, column: 35, scope: !2347)
!2351 = !DILocation(line: 2673, column: 8, scope: !2339)
!2352 = !DILocation(line: 2674, column: 21, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2347, file: !271, line: 2673, column: 41)
!2354 = !DILocation(line: 2674, column: 29, scope: !2353)
!2355 = !DILocation(line: 2674, column: 7, scope: !2353)
!2356 = !DILocation(line: 2676, column: 7, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2347, file: !271, line: 2675, column: 11)
!2358 = !DILocation(line: 2678, column: 1, scope: !2339)
!2359 = distinct !DISubprogram(name: "FileIO_PrivilegedPosixOpen", scope: !271, file: !271, line: 2698, type: !2360, isLocal: false, isDefinition: true, scopeLine: 2700, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!254, !287, !254}
!2362 = !DILocalVariable(name: "pathName", arg: 1, scope: !2359, file: !271, line: 2698, type: !287)
!2363 = !DILocation(line: 2698, column: 40, scope: !2359)
!2364 = !DILocalVariable(name: "flags", arg: 2, scope: !2359, file: !271, line: 2699, type: !254)
!2365 = !DILocation(line: 2699, column: 32, scope: !2359)
!2366 = !DILocalVariable(name: "fd", scope: !2359, file: !271, line: 2701, type: !254)
!2367 = !DILocation(line: 2701, column: 8, scope: !2359)
!2368 = !DILocation(line: 2703, column: 8, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2359, file: !271, line: 2703, column: 8)
!2370 = !DILocation(line: 2703, column: 17, scope: !2369)
!2371 = !DILocation(line: 2703, column: 8, scope: !2359)
!2372 = !DILocation(line: 2704, column: 8, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2369, file: !271, line: 2703, column: 25)
!2374 = !DILocation(line: 2704, column: 12, scope: !2373)
!2375 = !DILocation(line: 2706, column: 7, scope: !2373)
!2376 = !DILocalVariable(name: "suDone", scope: !2377, file: !271, line: 2723, type: !294)
!2377 = distinct !DILexicalBlock(scope: !2359, file: !271, line: 2722, column: 4)
!2378 = !DILocation(line: 2723, column: 12, scope: !2377)
!2379 = !DILocalVariable(name: "uid", scope: !2377, file: !271, line: 2724, type: !645)
!2380 = !DILocation(line: 2724, column: 13, scope: !2377)
!2381 = !DILocation(line: 2726, column: 11, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2377, file: !271, line: 2726, column: 11)
!2383 = !DILocation(line: 2726, column: 11, scope: !2377)
!2384 = !DILocation(line: 2727, column: 17, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2382, file: !271, line: 2726, column: 29)
!2386 = !DILocation(line: 2728, column: 7, scope: !2385)
!2387 = !DILocation(line: 2729, column: 16, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2382, file: !271, line: 2728, column: 14)
!2389 = !DILocation(line: 2729, column: 14, scope: !2388)
!2390 = !DILocation(line: 2730, column: 17, scope: !2388)
!2391 = !DILocation(line: 2733, column: 23, scope: !2377)
!2392 = !DILocation(line: 2733, column: 33, scope: !2377)
!2393 = !DILocation(line: 2733, column: 12, scope: !2377)
!2394 = !DILocation(line: 2733, column: 10, scope: !2377)
!2395 = !DILocation(line: 2735, column: 11, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2377, file: !271, line: 2735, column: 11)
!2397 = !DILocation(line: 2735, column: 11, scope: !2377)
!2398 = !DILocalVariable(name: "error", scope: !2399, file: !271, line: 2736, type: !254)
!2399 = distinct !DILexicalBlock(scope: !2396, file: !271, line: 2735, column: 19)
!2400 = !DILocation(line: 2736, column: 14, scope: !2399)
!2401 = !DILocation(line: 2736, column: 23, scope: !2399)
!2402 = !DILocation(line: 2736, column: 22, scope: !2399)
!2403 = !DILocation(line: 2738, column: 26, scope: !2399)
!2404 = !DILocation(line: 2738, column: 10, scope: !2399)
!2405 = !DILocation(line: 2739, column: 17, scope: !2399)
!2406 = !DILocation(line: 2739, column: 11, scope: !2399)
!2407 = !DILocation(line: 2739, column: 15, scope: !2399)
!2408 = !DILocation(line: 2740, column: 7, scope: !2399)
!2409 = !DILocation(line: 2743, column: 11, scope: !2359)
!2410 = !DILocation(line: 2743, column: 4, scope: !2359)
!2411 = !DILocation(line: 2744, column: 1, scope: !2359)
!2412 = distinct !DISubprogram(name: "Id_IsSuperUser", scope: !2413, file: !2413, line: 128, type: !2414, isLocal: true, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!2413 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/su.h", directory: "/home/lichi/Desktop/open-vm-tools/line207")
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!294}
!2416 = !DILocation(line: 128, column: 55, scope: !2412)
!2417 = !DILocation(line: 128, column: 52, scope: !2412)
!2418 = !DILocation(line: 128, column: 50, scope: !2412)
!2419 = !DILocation(line: 128, column: 43, scope: !2412)
!2420 = distinct !DISubprogram(name: "FileIO_DescriptorToStream", scope: !271, file: !271, line: 2768, type: !2421, isLocal: false, isDefinition: true, scopeLine: 2770, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!2423, !275, !294}
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64, align: 64)
!2424 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !307, line: 48, baseType: !2425)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2426, line: 241, size: 1728, align: 64, elements: !2427)
!2426 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/open-vm-tools/line207")
!2427 = !{!2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2448, !2449, !2450, !2451, !2452, !2454, !2456, !2460, !2463, !2465, !2466, !2467, !2468, !2469, !2470, !2471}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2425, file: !2426, line: 242, baseType: !254, size: 32, align: 32)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2425, file: !2426, line: 247, baseType: !282, size: 64, align: 64, offset: 64)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2425, file: !2426, line: 248, baseType: !282, size: 64, align: 64, offset: 128)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2425, file: !2426, line: 249, baseType: !282, size: 64, align: 64, offset: 192)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2425, file: !2426, line: 250, baseType: !282, size: 64, align: 64, offset: 256)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2425, file: !2426, line: 251, baseType: !282, size: 64, align: 64, offset: 320)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2425, file: !2426, line: 252, baseType: !282, size: 64, align: 64, offset: 384)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2425, file: !2426, line: 253, baseType: !282, size: 64, align: 64, offset: 448)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2425, file: !2426, line: 254, baseType: !282, size: 64, align: 64, offset: 512)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2425, file: !2426, line: 256, baseType: !282, size: 64, align: 64, offset: 576)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2425, file: !2426, line: 257, baseType: !282, size: 64, align: 64, offset: 640)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2425, file: !2426, line: 258, baseType: !282, size: 64, align: 64, offset: 704)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2425, file: !2426, line: 260, baseType: !2441, size: 64, align: 64, offset: 768)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64, align: 64)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2426, line: 156, size: 192, align: 64, elements: !2443)
!2443 = !{!2444, !2445, !2447}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2442, file: !2426, line: 157, baseType: !2441, size: 64, align: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2442, file: !2426, line: 158, baseType: !2446, size: 64, align: 64, offset: 64)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64, align: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2442, file: !2426, line: 162, baseType: !254, size: 32, align: 32, offset: 128)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2425, file: !2426, line: 262, baseType: !2446, size: 64, align: 64, offset: 832)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2425, file: !2426, line: 264, baseType: !254, size: 32, align: 32, offset: 896)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2425, file: !2426, line: 268, baseType: !254, size: 32, align: 32, offset: 928)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2425, file: !2426, line: 270, baseType: !2098, size: 64, align: 64, offset: 960)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2425, file: !2426, line: 274, baseType: !2453, size: 16, align: 16, offset: 1024)
!2453 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2425, file: !2426, line: 275, baseType: !2455, size: 8, align: 8, offset: 1040)
!2455 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2425, file: !2426, line: 276, baseType: !2457, size: 8, align: 8, offset: 1048)
!2457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 8, align: 8, elements: !2458)
!2458 = !{!2459}
!2459 = !DISubrange(count: 1)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2425, file: !2426, line: 280, baseType: !2461, size: 64, align: 64, offset: 1088)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64, align: 64)
!2462 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2426, line: 150, baseType: null)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2425, file: !2426, line: 289, baseType: !2464, size: 64, align: 64, offset: 1152)
!2464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !309, line: 132, baseType: !310)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2425, file: !2426, line: 297, baseType: !255, size: 64, align: 64, offset: 1216)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2425, file: !2426, line: 298, baseType: !255, size: 64, align: 64, offset: 1280)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2425, file: !2426, line: 299, baseType: !255, size: 64, align: 64, offset: 1344)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2425, file: !2426, line: 300, baseType: !255, size: 64, align: 64, offset: 1408)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2425, file: !2426, line: 302, baseType: !266, size: 64, align: 64, offset: 1472)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2425, file: !2426, line: 303, baseType: !254, size: 32, align: 32, offset: 1536)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2425, file: !2426, line: 305, baseType: !2472, size: 160, align: 8, offset: 1568)
!2472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 160, align: 8, elements: !2473)
!2473 = !{!2474}
!2474 = !DISubrange(count: 20)
!2475 = !DILocalVariable(name: "fdesc", arg: 1, scope: !2420, file: !271, line: 2768, type: !275)
!2476 = !DILocation(line: 2768, column: 45, scope: !2420)
!2477 = !DILocalVariable(name: "textMode", arg: 2, scope: !2420, file: !271, line: 2769, type: !294)
!2478 = !DILocation(line: 2769, column: 32, scope: !2420)
!2479 = !DILocalVariable(name: "dupFD", scope: !2420, file: !271, line: 2771, type: !254)
!2480 = !DILocation(line: 2771, column: 8, scope: !2420)
!2481 = !DILocalVariable(name: "mode", scope: !2420, file: !271, line: 2772, type: !287)
!2482 = !DILocation(line: 2772, column: 16, scope: !2420)
!2483 = !DILocalVariable(name: "tmpFlags", scope: !2420, file: !271, line: 2773, type: !254)
!2484 = !DILocation(line: 2773, column: 8, scope: !2420)
!2485 = !DILocalVariable(name: "stream", scope: !2420, file: !271, line: 2774, type: !2423)
!2486 = !DILocation(line: 2774, column: 10, scope: !2420)
!2487 = !DILocation(line: 2776, column: 16, scope: !2420)
!2488 = !DILocation(line: 2776, column: 23, scope: !2420)
!2489 = !DILocation(line: 2776, column: 12, scope: !2420)
!2490 = !DILocation(line: 2776, column: 10, scope: !2420)
!2491 = !DILocation(line: 2777, column: 8, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2420, file: !271, line: 2777, column: 8)
!2493 = !DILocation(line: 2777, column: 14, scope: !2492)
!2494 = !DILocation(line: 2777, column: 8, scope: !2420)
!2495 = !DILocation(line: 2778, column: 7, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2492, file: !271, line: 2777, column: 21)
!2497 = !DILocation(line: 2784, column: 15, scope: !2420)
!2498 = !DILocation(line: 2784, column: 22, scope: !2420)
!2499 = !DILocation(line: 2784, column: 28, scope: !2420)
!2500 = !DILocation(line: 2784, column: 13, scope: !2420)
!2501 = !DILocation(line: 2786, column: 8, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2420, file: !271, line: 2786, column: 8)
!2503 = !DILocation(line: 2786, column: 17, scope: !2502)
!2504 = !DILocation(line: 2786, column: 8, scope: !2420)
!2505 = !DILocation(line: 2787, column: 12, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2502, file: !271, line: 2786, column: 43)
!2507 = !DILocation(line: 2788, column: 4, scope: !2506)
!2508 = !DILocation(line: 2788, column: 15, scope: !2509)
!2509 = !DILexicalBlockFile(scope: !2510, file: !271, discriminator: 1)
!2510 = distinct !DILexicalBlock(scope: !2502, file: !271, line: 2788, column: 15)
!2511 = !DILocation(line: 2788, column: 24, scope: !2509)
!2512 = !DILocation(line: 2789, column: 12, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2510, file: !271, line: 2788, column: 37)
!2514 = !DILocation(line: 2790, column: 4, scope: !2513)
!2515 = !DILocation(line: 2791, column: 12, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2510, file: !271, line: 2790, column: 11)
!2517 = !DILocation(line: 2794, column: 20, scope: !2420)
!2518 = !DILocation(line: 2794, column: 27, scope: !2420)
!2519 = !DILocation(line: 2794, column: 13, scope: !2420)
!2520 = !DILocation(line: 2794, column: 11, scope: !2420)
!2521 = !DILocation(line: 2796, column: 8, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2420, file: !271, line: 2796, column: 8)
!2523 = !DILocation(line: 2796, column: 15, scope: !2522)
!2524 = !DILocation(line: 2796, column: 8, scope: !2420)
!2525 = !DILocation(line: 2797, column: 13, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2522, file: !271, line: 2796, column: 23)
!2527 = !DILocation(line: 2797, column: 7, scope: !2526)
!2528 = !DILocation(line: 2798, column: 4, scope: !2526)
!2529 = !DILocation(line: 2800, column: 11, scope: !2420)
!2530 = !DILocation(line: 2800, column: 4, scope: !2420)
!2531 = !DILocation(line: 2801, column: 1, scope: !2420)
!2532 = distinct !DISubprogram(name: "FileIO_SupportsPrealloc", scope: !271, file: !271, line: 2950, type: !2533, isLocal: false, isDefinition: true, scopeLine: 2952, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{!294, !287, !294}
!2535 = !DILocalVariable(name: "pathName", arg: 1, scope: !2532, file: !271, line: 2950, type: !287)
!2536 = !DILocation(line: 2950, column: 37, scope: !2532)
!2537 = !DILocalVariable(name: "fsCheck", arg: 2, scope: !2532, file: !271, line: 2951, type: !294)
!2538 = !DILocation(line: 2951, column: 30, scope: !2532)
!2539 = !DILocalVariable(name: "ret", scope: !2532, file: !271, line: 2953, type: !294)
!2540 = !DILocation(line: 2953, column: 9, scope: !2532)
!2541 = !DILocation(line: 2955, column: 9, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2532, file: !271, line: 2955, column: 8)
!2543 = !DILocation(line: 2955, column: 8, scope: !2532)
!2544 = !DILocation(line: 2956, column: 7, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2542, file: !271, line: 2955, column: 33)
!2546 = !DILocation(line: 2959, column: 9, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2532, file: !271, line: 2959, column: 8)
!2548 = !DILocation(line: 2959, column: 8, scope: !2532)
!2549 = !DILocation(line: 2960, column: 14, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2547, file: !271, line: 2959, column: 18)
!2551 = !DILocation(line: 2960, column: 7, scope: !2550)
!2552 = !DILocalVariable(name: "statBuf", scope: !2553, file: !271, line: 2965, type: !2554)
!2553 = distinct !DILexicalBlock(scope: !2532, file: !271, line: 2964, column: 4)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "statfs", file: !2555, line: 24, size: 960, align: 64, elements: !2556)
!2555 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/statfs.h", directory: "/home/lichi/Desktop/open-vm-tools/line207")
!2556 = !{!2557, !2559, !2560, !2562, !2563, !2564, !2566, !2567, !2575, !2576, !2577, !2578}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "f_type", scope: !2554, file: !2555, line: 26, baseType: !2558, size: 64, align: 64)
!2558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fsword_t", file: !309, line: 170, baseType: !310)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "f_bsize", scope: !2554, file: !2555, line: 27, baseType: !2558, size: 64, align: 64, offset: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "f_blocks", scope: !2554, file: !2555, line: 35, baseType: !2561, size: 64, align: 64, offset: 128)
!2561 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fsblkcnt64_t", file: !309, line: 163, baseType: !265)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "f_bfree", scope: !2554, file: !2555, line: 36, baseType: !2561, size: 64, align: 64, offset: 192)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "f_bavail", scope: !2554, file: !2555, line: 37, baseType: !2561, size: 64, align: 64, offset: 256)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "f_files", scope: !2554, file: !2555, line: 38, baseType: !2565, size: 64, align: 64, offset: 320)
!2565 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fsfilcnt64_t", file: !309, line: 167, baseType: !265)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "f_ffree", scope: !2554, file: !2555, line: 39, baseType: !2565, size: 64, align: 64, offset: 384)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "f_fsid", scope: !2554, file: !2555, line: 41, baseType: !2568, size: 64, align: 32, offset: 448)
!2568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fsid_t", file: !309, line: 134, baseType: !2569)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !309, line: 134, size: 64, align: 32, elements: !2570)
!2570 = !{!2571}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !2569, file: !309, line: 134, baseType: !2572, size: 64, align: 32)
!2572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 64, align: 32, elements: !2573)
!2573 = !{!2574}
!2574 = !DISubrange(count: 2)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "f_namelen", scope: !2554, file: !2555, line: 42, baseType: !2558, size: 64, align: 64, offset: 512)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "f_frsize", scope: !2554, file: !2555, line: 43, baseType: !2558, size: 64, align: 64, offset: 576)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !2554, file: !2555, line: 44, baseType: !2558, size: 64, align: 64, offset: 640)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "f_spare", scope: !2554, file: !2555, line: 45, baseType: !2579, size: 256, align: 64, offset: 704)
!2579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2558, size: 256, align: 64, elements: !2580)
!2580 = !{!2581}
!2581 = !DISubrange(count: 4)
!2582 = !DILocation(line: 2965, column: 21, scope: !2553)
!2583 = !DILocalVariable(name: "fullPath", scope: !2553, file: !271, line: 2966, type: !282)
!2584 = !DILocation(line: 2966, column: 13, scope: !2553)
!2585 = !DILocation(line: 2968, column: 11, scope: !2553)
!2586 = !DILocation(line: 2969, column: 12, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2553, file: !271, line: 2969, column: 11)
!2588 = !DILocation(line: 2969, column: 11, scope: !2553)
!2589 = !DILocation(line: 2970, column: 17, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2587, file: !271, line: 2969, column: 22)
!2591 = !DILocation(line: 2970, column: 10, scope: !2590)
!2592 = !DILocation(line: 2973, column: 32, scope: !2553)
!2593 = !DILocation(line: 2973, column: 18, scope: !2553)
!2594 = !DILocation(line: 2973, column: 16, scope: !2553)
!2595 = !DILocation(line: 2974, column: 12, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2553, file: !271, line: 2974, column: 11)
!2597 = !DILocation(line: 2974, column: 11, scope: !2553)
!2598 = !DILocation(line: 2975, column: 17, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2596, file: !271, line: 2974, column: 22)
!2600 = !DILocation(line: 2975, column: 10, scope: !2599)
!2601 = !DILocation(line: 2978, column: 24, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2553, file: !271, line: 2978, column: 11)
!2603 = !DILocation(line: 2978, column: 11, scope: !2602)
!2604 = !DILocation(line: 2978, column: 44, scope: !2602)
!2605 = !DILocation(line: 2978, column: 49, scope: !2602)
!2606 = !DILocation(line: 2979, column: 18, scope: !2602)
!2607 = !DILocation(line: 2979, column: 25, scope: !2602)
!2608 = !DILocation(line: 2978, column: 11, scope: !2609)
!2609 = !DILexicalBlockFile(scope: !2553, file: !271, discriminator: 1)
!2610 = !DILocation(line: 2980, column: 14, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2602, file: !271, line: 2979, column: 36)
!2612 = !DILocation(line: 2981, column: 7, scope: !2611)
!2613 = !DILocation(line: 2982, column: 18, scope: !2553)
!2614 = !DILocation(line: 2982, column: 7, scope: !2553)
!2615 = !DILocation(line: 2986, column: 11, scope: !2532)
!2616 = !DILocation(line: 2986, column: 4, scope: !2532)
!2617 = !DILocation(line: 2987, column: 1, scope: !2532)
!2618 = distinct !DISubprogram(name: "HostSupportsPrealloc", scope: !271, file: !271, line: 2919, type: !2414, isLocal: true, isDefinition: true, scopeLine: 2920, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!2619 = !DILocation(line: 2922, column: 9, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2618, file: !271, line: 2922, column: 9)
!2621 = !DILocation(line: 2922, column: 31, scope: !2620)
!2622 = !DILocation(line: 2922, column: 35, scope: !2620)
!2623 = !DILocation(line: 2922, column: 38, scope: !2624)
!2624 = !DILexicalBlockFile(scope: !2620, file: !271, discriminator: 1)
!2625 = !DILocation(line: 2922, column: 60, scope: !2624)
!2626 = !DILocation(line: 2922, column: 64, scope: !2624)
!2627 = !DILocation(line: 2923, column: 9, scope: !2620)
!2628 = !DILocation(line: 2923, column: 31, scope: !2620)
!2629 = !DILocation(line: 2922, column: 9, scope: !2630)
!2630 = !DILexicalBlockFile(scope: !2618, file: !271, discriminator: 2)
!2631 = !DILocation(line: 2924, column: 8, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2620, file: !271, line: 2923, column: 37)
!2633 = !DILocation(line: 2927, column: 5, scope: !2618)
!2634 = !DILocation(line: 2928, column: 1, scope: !2618)
!2635 = distinct !DISubprogram(name: "Posix_Free", scope: !2636, file: !2636, line: 129, type: !2637, isLocal: true, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!2636 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/posix.h", directory: "/home/lichi/Desktop/open-vm-tools/line207")
!2637 = !DISubroutineType(types: !2638)
!2638 = !{null, !255}
!2639 = !DILocalVariable(name: "p", arg: 1, scope: !2635, file: !2636, line: 129, type: !255)
!2640 = !DILocation(line: 129, column: 18, scope: !2635)
!2641 = !DILocalVariable(name: "err", scope: !2635, file: !2636, line: 131, type: !254)
!2642 = !DILocation(line: 131, column: 8, scope: !2635)
!2643 = !DILocation(line: 131, column: 15, scope: !2635)
!2644 = !DILocation(line: 131, column: 14, scope: !2635)
!2645 = !DILocation(line: 132, column: 9, scope: !2635)
!2646 = !DILocation(line: 132, column: 4, scope: !2635)
!2647 = !DILocation(line: 133, column: 11, scope: !2635)
!2648 = !DILocation(line: 133, column: 5, scope: !2635)
!2649 = !DILocation(line: 133, column: 9, scope: !2635)
!2650 = !DILocation(line: 134, column: 1, scope: !2635)
!2651 = distinct !DISubprogram(name: "FileIOAligned_Malloc", scope: !2652, file: !2652, line: 294, type: !2653, isLocal: true, isDefinition: true, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!2652 = !DIFile(filename: "fileInt.h", directory: "/home/lichi/Desktop/open-vm-tools/line207")
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!255, !266}
!2655 = !DILocalVariable(name: "sz", arg: 1, scope: !2651, file: !2652, line: 294, type: !266)
!2656 = !DILocation(line: 294, column: 29, scope: !2651)
!2657 = !DILocalVariable(name: "buf", scope: !2651, file: !2652, line: 296, type: !255)
!2658 = !DILocation(line: 296, column: 10, scope: !2651)
!2659 = !DILocation(line: 298, column: 9, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2651, file: !2652, line: 298, column: 8)
!2661 = !DILocation(line: 298, column: 8, scope: !2651)
!2662 = !DILocation(line: 299, column: 28, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2660, file: !2652, line: 298, column: 14)
!2664 = !DILocation(line: 299, column: 13, scope: !2663)
!2665 = !DILocation(line: 299, column: 11, scope: !2663)
!2666 = !DILocation(line: 300, column: 4, scope: !2663)
!2667 = !DILocation(line: 302, column: 11, scope: !2651)
!2668 = !DILocation(line: 302, column: 4, scope: !2651)
!2669 = distinct !DISubprogram(name: "Aligned_Malloc", scope: !2670, file: !2670, line: 254, type: !2653, isLocal: true, isDefinition: true, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!2670 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/memaligned.h", directory: "/home/lichi/Desktop/open-vm-tools/line207")
!2671 = !DILocalVariable(name: "size", arg: 1, scope: !2669, file: !2670, line: 254, type: !266)
!2672 = !DILocation(line: 254, column: 23, scope: !2669)
!2673 = !DILocalVariable(name: "buf", scope: !2669, file: !2670, line: 256, type: !255)
!2674 = !DILocation(line: 256, column: 10, scope: !2669)
!2675 = !DILocation(line: 258, column: 31, scope: !2669)
!2676 = !DILocation(line: 258, column: 10, scope: !2669)
!2677 = !DILocation(line: 258, column: 8, scope: !2669)
!2678 = !DILocation(line: 259, column: 30, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2680, file: !2670, line: 259, column: 10)
!2680 = distinct !DILexicalBlock(scope: !2669, file: !2670, line: 259, column: 5)
!2681 = !DILocation(line: 259, column: 28, scope: !2679)
!2682 = !DILocation(line: 259, column: 27, scope: !2679)
!2683 = !DILocation(line: 259, column: 10, scope: !2679)
!2684 = !DILocation(line: 259, column: 10, scope: !2680)
!2685 = !DILocation(line: 259, column: 43, scope: !2686)
!2686 = !DILexicalBlockFile(scope: !2687, file: !2670, discriminator: 1)
!2687 = distinct !DILexicalBlock(scope: !2679, file: !2670, line: 259, column: 41)
!2688 = !DILocation(line: 260, column: 11, scope: !2669)
!2689 = !DILocation(line: 260, column: 4, scope: !2669)
!2690 = distinct !DISubprogram(name: "Aligned_UnsafeMalloc", scope: !2670, file: !2670, line: 217, type: !2653, isLocal: true, isDefinition: true, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!2691 = !DILocalVariable(name: "size", arg: 1, scope: !2690, file: !2670, line: 217, type: !266)
!2692 = !DILocation(line: 217, column: 29, scope: !2690)
!2693 = !DILocalVariable(name: "buf", scope: !2690, file: !2670, line: 219, type: !255)
!2694 = !DILocation(line: 219, column: 10, scope: !2690)
!2695 = !DILocation(line: 225, column: 30, scope: !2690)
!2696 = !DILocation(line: 225, column: 10, scope: !2690)
!2697 = !DILocation(line: 225, column: 8, scope: !2690)
!2698 = !DILocation(line: 231, column: 11, scope: !2690)
!2699 = !DILocation(line: 231, column: 4, scope: !2690)
!2700 = distinct !DISubprogram(name: "FileIOAligned_Free", scope: !2652, file: !2652, line: 306, type: !2637, isLocal: true, isDefinition: true, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!2701 = !DILocalVariable(name: "ptr", arg: 1, scope: !2700, file: !2652, line: 306, type: !255)
!2702 = !DILocation(line: 306, column: 26, scope: !2700)
!2703 = !DILocation(line: 309, column: 20, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2705, file: !2652, line: 308, column: 12)
!2705 = distinct !DILexicalBlock(scope: !2700, file: !2652, line: 308, column: 8)
!2706 = !DILocation(line: 309, column: 7, scope: !2704)
!2707 = !DILocation(line: 311, column: 1, scope: !2700)
!2708 = distinct !DISubprogram(name: "Aligned_Free", scope: !2670, file: !2670, line: 309, type: !2637, isLocal: true, isDefinition: true, scopeLine: 310, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!2709 = !DILocalVariable(name: "buf", arg: 1, scope: !2708, file: !2670, line: 309, type: !255)
!2710 = !DILocation(line: 309, column: 20, scope: !2708)
!2711 = !DILocation(line: 316, column: 9, scope: !2708)
!2712 = !DILocation(line: 316, column: 4, scope: !2708)
!2713 = !DILocation(line: 318, column: 1, scope: !2708)
!2714 = distinct !DISubprogram(name: "FileIOPreadvCoalesced", scope: !271, file: !271, line: 1838, type: !323, isLocal: true, isDefinition: true, scopeLine: 1845, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!2715 = !DILocalVariable(name: "fd", arg: 1, scope: !2714, file: !271, line: 1839, type: !275)
!2716 = !DILocation(line: 1839, column: 35, scope: !2714)
!2717 = !DILocalVariable(name: "entries", arg: 2, scope: !2714, file: !271, line: 1840, type: !325)
!2718 = !DILocation(line: 1840, column: 37, scope: !2714)
!2719 = !DILocalVariable(name: "numEntries", arg: 3, scope: !2714, file: !271, line: 1841, type: !254)
!2720 = !DILocation(line: 1841, column: 21, scope: !2714)
!2721 = !DILocalVariable(name: "offset", arg: 4, scope: !2714, file: !271, line: 1842, type: !263)
!2722 = !DILocation(line: 1842, column: 24, scope: !2714)
!2723 = !DILocalVariable(name: "totalSize", arg: 5, scope: !2714, file: !271, line: 1843, type: !266)
!2724 = !DILocation(line: 1843, column: 24, scope: !2714)
!2725 = !DILocalVariable(name: "actual", arg: 6, scope: !2714, file: !271, line: 1844, type: !332)
!2726 = !DILocation(line: 1844, column: 25, scope: !2714)
!2727 = !DILocalVariable(name: "vPtr", scope: !2714, file: !271, line: 1846, type: !325)
!2728 = !DILocation(line: 1846, column: 24, scope: !2714)
!2729 = !DILocalVariable(name: "coV", scope: !2714, file: !271, line: 1847, type: !327)
!2730 = !DILocation(line: 1847, column: 17, scope: !2714)
!2731 = !DILocalVariable(name: "count", scope: !2714, file: !271, line: 1848, type: !254)
!2732 = !DILocation(line: 1848, column: 8, scope: !2714)
!2733 = !DILocalVariable(name: "fileOffset", scope: !2714, file: !271, line: 1849, type: !263)
!2734 = !DILocation(line: 1849, column: 11, scope: !2714)
!2735 = !DILocalVariable(name: "fret", scope: !2714, file: !271, line: 1850, type: !274)
!2736 = !DILocation(line: 1850, column: 17, scope: !2714)
!2737 = !DILocalVariable(name: "didCoalesce", scope: !2714, file: !271, line: 1851, type: !294)
!2738 = !DILocation(line: 1851, column: 9, scope: !2714)
!2739 = !DILocalVariable(name: "sum", scope: !2714, file: !271, line: 1852, type: !266)
!2740 = !DILocation(line: 1852, column: 11, scope: !2714)
!2741 = !DILocation(line: 1854, column: 33, scope: !2714)
!2742 = !DILocation(line: 1854, column: 42, scope: !2714)
!2743 = !DILocation(line: 1854, column: 54, scope: !2714)
!2744 = !DILocation(line: 1855, column: 37, scope: !2714)
!2745 = !DILocation(line: 1855, column: 41, scope: !2714)
!2746 = !DILocation(line: 1854, column: 18, scope: !2714)
!2747 = !DILocation(line: 1854, column: 16, scope: !2714)
!2748 = !DILocation(line: 1857, column: 12, scope: !2714)
!2749 = !DILocation(line: 1857, column: 12, scope: !2750)
!2750 = !DILexicalBlockFile(scope: !2714, file: !271, discriminator: 1)
!2751 = !DILocation(line: 1857, column: 30, scope: !2752)
!2752 = !DILexicalBlockFile(scope: !2714, file: !271, discriminator: 2)
!2753 = !DILocation(line: 1857, column: 12, scope: !2752)
!2754 = !DILocation(line: 1857, column: 12, scope: !2755)
!2755 = !DILexicalBlockFile(scope: !2714, file: !271, discriminator: 3)
!2756 = !DILocation(line: 1857, column: 10, scope: !2755)
!2757 = !DILocation(line: 1858, column: 11, scope: !2714)
!2758 = !DILocation(line: 1858, column: 11, scope: !2750)
!2759 = !DILocation(line: 1858, column: 32, scope: !2752)
!2760 = !DILocation(line: 1858, column: 11, scope: !2752)
!2761 = !DILocation(line: 1858, column: 11, scope: !2755)
!2762 = !DILocation(line: 1858, column: 9, scope: !2755)
!2763 = !DILocation(line: 1860, column: 17, scope: !2714)
!2764 = !DILocation(line: 1860, column: 15, scope: !2714)
!2765 = !DILocation(line: 1861, column: 4, scope: !2714)
!2766 = !DILocation(line: 1861, column: 11, scope: !2750)
!2767 = !DILocation(line: 1861, column: 17, scope: !2750)
!2768 = !DILocation(line: 1861, column: 4, scope: !2750)
!2769 = !DILocalVariable(name: "leftToRead", scope: !2770, file: !271, line: 1862, type: !266)
!2770 = distinct !DILexicalBlock(scope: !2714, file: !271, line: 1861, column: 22)
!2771 = !DILocation(line: 1862, column: 14, scope: !2770)
!2772 = !DILocation(line: 1862, column: 27, scope: !2770)
!2773 = !DILocation(line: 1862, column: 33, scope: !2770)
!2774 = !DILocalVariable(name: "buf", scope: !2770, file: !271, line: 1863, type: !262)
!2775 = !DILocation(line: 1863, column: 14, scope: !2770)
!2776 = !DILocation(line: 1863, column: 30, scope: !2770)
!2777 = !DILocation(line: 1863, column: 36, scope: !2770)
!2778 = !DILocation(line: 1865, column: 7, scope: !2770)
!2779 = !DILocation(line: 1865, column: 14, scope: !2780)
!2780 = !DILexicalBlockFile(scope: !2770, file: !271, discriminator: 1)
!2781 = !DILocation(line: 1865, column: 25, scope: !2780)
!2782 = !DILocation(line: 1865, column: 7, scope: !2780)
!2783 = !DILocalVariable(name: "retval", scope: !2784, file: !271, line: 1866, type: !306)
!2784 = distinct !DILexicalBlock(scope: !2770, file: !271, line: 1865, column: 30)
!2785 = !DILocation(line: 1866, column: 18, scope: !2784)
!2786 = !DILocation(line: 1866, column: 33, scope: !2784)
!2787 = !DILocation(line: 1866, column: 37, scope: !2784)
!2788 = !DILocation(line: 1866, column: 44, scope: !2784)
!2789 = !DILocation(line: 1866, column: 49, scope: !2784)
!2790 = !DILocation(line: 1866, column: 61, scope: !2784)
!2791 = !DILocation(line: 1866, column: 27, scope: !2784)
!2792 = !DILocation(line: 1868, column: 14, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2784, file: !271, line: 1868, column: 14)
!2794 = !DILocation(line: 1868, column: 21, scope: !2793)
!2795 = !DILocation(line: 1868, column: 14, scope: !2784)
!2796 = !DILocation(line: 1869, column: 18, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2798, file: !271, line: 1869, column: 16)
!2798 = distinct !DILexicalBlock(scope: !2793, file: !271, line: 1868, column: 28)
!2799 = !DILocation(line: 1869, column: 17, scope: !2797)
!2800 = !DILocation(line: 1869, column: 22, scope: !2797)
!2801 = !DILocation(line: 1869, column: 16, scope: !2798)
!2802 = !DILocation(line: 1870, column: 16, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2797, file: !271, line: 1869, column: 32)
!2804 = distinct !{!2804, !2778}
!2805 = !DILocation(line: 1872, column: 40, scope: !2798)
!2806 = !DILocation(line: 1872, column: 39, scope: !2798)
!2807 = !DILocation(line: 1872, column: 20, scope: !2808)
!2808 = !DILexicalBlockFile(scope: !2798, file: !271, discriminator: 1)
!2809 = !DILocation(line: 1872, column: 18, scope: !2798)
!2810 = !DILocation(line: 1873, column: 13, scope: !2798)
!2811 = !DILocation(line: 1876, column: 14, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2784, file: !271, line: 1876, column: 14)
!2813 = !DILocation(line: 1876, column: 21, scope: !2812)
!2814 = !DILocation(line: 1876, column: 14, scope: !2784)
!2815 = !DILocation(line: 1877, column: 18, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2812, file: !271, line: 1876, column: 27)
!2817 = !DILocation(line: 1878, column: 13, scope: !2816)
!2818 = !DILocation(line: 1881, column: 17, scope: !2784)
!2819 = !DILocation(line: 1881, column: 14, scope: !2784)
!2820 = !DILocation(line: 1882, column: 24, scope: !2784)
!2821 = !DILocation(line: 1882, column: 21, scope: !2784)
!2822 = !DILocation(line: 1883, column: 17, scope: !2784)
!2823 = !DILocation(line: 1883, column: 14, scope: !2784)
!2824 = !DILocation(line: 1884, column: 24, scope: !2784)
!2825 = !DILocation(line: 1884, column: 21, scope: !2784)
!2826 = !DILocation(line: 1865, column: 7, scope: !2827)
!2827 = !DILexicalBlockFile(scope: !2770, file: !271, discriminator: 2)
!2828 = !DILocation(line: 1887, column: 12, scope: !2770)
!2829 = !DILocation(line: 1888, column: 11, scope: !2770)
!2830 = !DILocation(line: 1861, column: 4, scope: !2752)
!2831 = distinct !{!2831, !2765}
!2832 = !DILocation(line: 1890, column: 9, scope: !2714)
!2833 = !DILocation(line: 1890, column: 4, scope: !2714)
!2834 = !DILocation(line: 1893, column: 8, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2714, file: !271, line: 1893, column: 8)
!2836 = !DILocation(line: 1893, column: 8, scope: !2714)
!2837 = !DILocation(line: 1894, column: 30, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2835, file: !271, line: 1893, column: 21)
!2839 = !DILocation(line: 1894, column: 39, scope: !2838)
!2840 = !DILocation(line: 1894, column: 51, scope: !2838)
!2841 = !DILocation(line: 1894, column: 59, scope: !2838)
!2842 = !DILocation(line: 1894, column: 63, scope: !2838)
!2843 = !DILocation(line: 1894, column: 7, scope: !2838)
!2844 = !DILocation(line: 1895, column: 4, scope: !2838)
!2845 = !DILocation(line: 1896, column: 8, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2714, file: !271, line: 1896, column: 8)
!2847 = !DILocation(line: 1896, column: 8, scope: !2714)
!2848 = !DILocation(line: 1897, column: 17, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2846, file: !271, line: 1896, column: 16)
!2850 = !DILocation(line: 1897, column: 8, scope: !2849)
!2851 = !DILocation(line: 1897, column: 15, scope: !2849)
!2852 = !DILocation(line: 1898, column: 4, scope: !2849)
!2853 = !DILocation(line: 1900, column: 11, scope: !2714)
!2854 = !DILocation(line: 1900, column: 4, scope: !2714)
!2855 = !DILocalVariable(name: "fd", arg: 1, scope: !322, file: !271, line: 1926, type: !275)
!2856 = !DILocation(line: 1926, column: 38, scope: !322)
!2857 = !DILocalVariable(name: "entries", arg: 2, scope: !322, file: !271, line: 1927, type: !325)
!2858 = !DILocation(line: 1927, column: 40, scope: !322)
!2859 = !DILocalVariable(name: "numEntries", arg: 3, scope: !322, file: !271, line: 1928, type: !254)
!2860 = !DILocation(line: 1928, column: 24, scope: !322)
!2861 = !DILocalVariable(name: "offset", arg: 4, scope: !322, file: !271, line: 1929, type: !263)
!2862 = !DILocation(line: 1929, column: 27, scope: !322)
!2863 = !DILocalVariable(name: "totalSize", arg: 5, scope: !322, file: !271, line: 1930, type: !266)
!2864 = !DILocation(line: 1930, column: 27, scope: !322)
!2865 = !DILocalVariable(name: "actual", arg: 6, scope: !322, file: !271, line: 1931, type: !332)
!2866 = !DILocation(line: 1931, column: 28, scope: !322)
!2867 = !DILocalVariable(name: "coV", scope: !322, file: !271, line: 1933, type: !327)
!2868 = !DILocation(line: 1933, column: 17, scope: !322)
!2869 = !DILocalVariable(name: "didCoalesce", scope: !322, file: !271, line: 1934, type: !294)
!2870 = !DILocation(line: 1934, column: 9, scope: !322)
!2871 = !DILocalVariable(name: "vPtr", scope: !322, file: !271, line: 1935, type: !325)
!2872 = !DILocation(line: 1935, column: 24, scope: !322)
!2873 = !DILocalVariable(name: "count", scope: !322, file: !271, line: 1936, type: !254)
!2874 = !DILocation(line: 1936, column: 8, scope: !322)
!2875 = !DILocalVariable(name: "fileOffset", scope: !322, file: !271, line: 1937, type: !263)
!2876 = !DILocation(line: 1937, column: 11, scope: !322)
!2877 = !DILocalVariable(name: "fret", scope: !322, file: !271, line: 1938, type: !274)
!2878 = !DILocation(line: 1938, column: 17, scope: !322)
!2879 = !DILocalVariable(name: "sum", scope: !322, file: !271, line: 1939, type: !266)
!2880 = !DILocation(line: 1939, column: 11, scope: !322)
!2881 = !DILocation(line: 1941, column: 33, scope: !322)
!2882 = !DILocation(line: 1941, column: 42, scope: !322)
!2883 = !DILocation(line: 1941, column: 54, scope: !322)
!2884 = !DILocation(line: 1942, column: 37, scope: !322)
!2885 = !DILocation(line: 1942, column: 41, scope: !322)
!2886 = !DILocation(line: 1941, column: 18, scope: !322)
!2887 = !DILocation(line: 1941, column: 16, scope: !322)
!2888 = !DILocation(line: 1944, column: 12, scope: !322)
!2889 = !DILocation(line: 1944, column: 12, scope: !2890)
!2890 = !DILexicalBlockFile(scope: !322, file: !271, discriminator: 1)
!2891 = !DILocation(line: 1944, column: 30, scope: !2892)
!2892 = !DILexicalBlockFile(scope: !322, file: !271, discriminator: 2)
!2893 = !DILocation(line: 1944, column: 12, scope: !2892)
!2894 = !DILocation(line: 1944, column: 12, scope: !2895)
!2895 = !DILexicalBlockFile(scope: !322, file: !271, discriminator: 3)
!2896 = !DILocation(line: 1944, column: 10, scope: !2895)
!2897 = !DILocation(line: 1945, column: 11, scope: !322)
!2898 = !DILocation(line: 1945, column: 11, scope: !2890)
!2899 = !DILocation(line: 1945, column: 32, scope: !2892)
!2900 = !DILocation(line: 1945, column: 11, scope: !2892)
!2901 = !DILocation(line: 1945, column: 11, scope: !2895)
!2902 = !DILocation(line: 1945, column: 9, scope: !2895)
!2903 = !DILocation(line: 1947, column: 17, scope: !322)
!2904 = !DILocation(line: 1947, column: 15, scope: !322)
!2905 = !DILocation(line: 1948, column: 4, scope: !322)
!2906 = !DILocation(line: 1948, column: 11, scope: !2890)
!2907 = !DILocation(line: 1948, column: 17, scope: !2890)
!2908 = !DILocation(line: 1948, column: 4, scope: !2890)
!2909 = !DILocalVariable(name: "leftToWrite", scope: !2910, file: !271, line: 1949, type: !266)
!2910 = distinct !DILexicalBlock(scope: !322, file: !271, line: 1948, column: 22)
!2911 = !DILocation(line: 1949, column: 14, scope: !2910)
!2912 = !DILocation(line: 1949, column: 28, scope: !2910)
!2913 = !DILocation(line: 1949, column: 34, scope: !2910)
!2914 = !DILocalVariable(name: "buf", scope: !2910, file: !271, line: 1950, type: !262)
!2915 = !DILocation(line: 1950, column: 14, scope: !2910)
!2916 = !DILocation(line: 1950, column: 29, scope: !2910)
!2917 = !DILocation(line: 1950, column: 35, scope: !2910)
!2918 = !DILocation(line: 1952, column: 7, scope: !2910)
!2919 = !DILocation(line: 1952, column: 14, scope: !2920)
!2920 = !DILexicalBlockFile(scope: !2910, file: !271, discriminator: 1)
!2921 = !DILocation(line: 1952, column: 26, scope: !2920)
!2922 = !DILocation(line: 1952, column: 7, scope: !2920)
!2923 = !DILocalVariable(name: "retval", scope: !2924, file: !271, line: 1953, type: !306)
!2924 = distinct !DILexicalBlock(scope: !2910, file: !271, line: 1952, column: 31)
!2925 = !DILocation(line: 1953, column: 18, scope: !2924)
!2926 = !DILocation(line: 1953, column: 34, scope: !2924)
!2927 = !DILocation(line: 1953, column: 38, scope: !2924)
!2928 = !DILocation(line: 1953, column: 45, scope: !2924)
!2929 = !DILocation(line: 1953, column: 50, scope: !2924)
!2930 = !DILocation(line: 1953, column: 63, scope: !2924)
!2931 = !DILocation(line: 1953, column: 27, scope: !2924)
!2932 = !DILocation(line: 1955, column: 14, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2924, file: !271, line: 1955, column: 14)
!2934 = !DILocation(line: 1955, column: 21, scope: !2933)
!2935 = !DILocation(line: 1955, column: 14, scope: !2924)
!2936 = !DILocation(line: 1956, column: 18, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2938, file: !271, line: 1956, column: 16)
!2938 = distinct !DILexicalBlock(scope: !2933, file: !271, line: 1955, column: 28)
!2939 = !DILocation(line: 1956, column: 17, scope: !2937)
!2940 = !DILocation(line: 1956, column: 22, scope: !2937)
!2941 = !DILocation(line: 1956, column: 16, scope: !2938)
!2942 = !DILocation(line: 1957, column: 16, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2937, file: !271, line: 1956, column: 32)
!2944 = distinct !{!2944, !2918}
!2945 = !DILocation(line: 1959, column: 40, scope: !2938)
!2946 = !DILocation(line: 1959, column: 39, scope: !2938)
!2947 = !DILocation(line: 1959, column: 20, scope: !2948)
!2948 = !DILexicalBlockFile(scope: !2938, file: !271, discriminator: 1)
!2949 = !DILocation(line: 1959, column: 18, scope: !2938)
!2950 = !DILocation(line: 1960, column: 13, scope: !2938)
!2951 = !DILocation(line: 1962, column: 14, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2924, file: !271, line: 1962, column: 14)
!2953 = !DILocation(line: 1962, column: 21, scope: !2952)
!2954 = !DILocation(line: 1962, column: 14, scope: !2924)
!2955 = !DILocation(line: 1964, column: 18, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2952, file: !271, line: 1962, column: 27)
!2957 = !DILocation(line: 1965, column: 13, scope: !2956)
!2958 = !DILocation(line: 1967, column: 14, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2924, file: !271, line: 1967, column: 14)
!2960 = !DILocation(line: 1967, column: 23, scope: !2959)
!2961 = !DILocation(line: 1967, column: 21, scope: !2959)
!2962 = !DILocation(line: 1967, column: 14, scope: !2924)
!2963 = !DILocation(line: 1975, column: 13, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2959, file: !271, line: 1967, column: 36)
!2965 = distinct !{!2965, !2963}
!2966 = !DILocation(line: 1975, column: 70, scope: !2967)
!2967 = !DILexicalBlockFile(scope: !2968, file: !271, discriminator: 1)
!2968 = distinct !DILexicalBlock(scope: !2969, file: !271, line: 1975, column: 51)
!2969 = distinct !DILexicalBlock(scope: !2964, file: !271, line: 1975, column: 16)
!2970 = !DILocation(line: 1975, column: 69, scope: !2967)
!2971 = !DILocation(line: 1975, column: 68, scope: !2967)
!2972 = !DILocation(line: 1975, column: 51, scope: !2967)
!2973 = !DILocation(line: 1975, column: 102, scope: !2974)
!2974 = !DILexicalBlockFile(scope: !2975, file: !271, discriminator: 2)
!2975 = distinct !DILexicalBlock(scope: !2968, file: !271, line: 1975, column: 88)
!2976 = !DILocation(line: 1975, column: 186, scope: !2974)
!2977 = !DILocation(line: 1975, column: 194, scope: !2974)
!2978 = !DILocation(line: 1975, column: 107, scope: !2974)
!2979 = !DILocation(line: 1975, column: 208, scope: !2974)
!2980 = !DILocation(line: 1975, column: 210, scope: !2981)
!2981 = !DILexicalBlockFile(scope: !2969, file: !271, discriminator: 3)
!2982 = !DILocation(line: 1977, column: 10, scope: !2964)
!2983 = !DILocation(line: 1979, column: 17, scope: !2924)
!2984 = !DILocation(line: 1979, column: 14, scope: !2924)
!2985 = !DILocation(line: 1980, column: 25, scope: !2924)
!2986 = !DILocation(line: 1980, column: 22, scope: !2924)
!2987 = !DILocation(line: 1981, column: 17, scope: !2924)
!2988 = !DILocation(line: 1981, column: 14, scope: !2924)
!2989 = !DILocation(line: 1982, column: 24, scope: !2924)
!2990 = !DILocation(line: 1982, column: 21, scope: !2924)
!2991 = !DILocation(line: 1952, column: 7, scope: !2992)
!2992 = !DILexicalBlockFile(scope: !2910, file: !271, discriminator: 2)
!2993 = !DILocation(line: 1985, column: 12, scope: !2910)
!2994 = !DILocation(line: 1986, column: 11, scope: !2910)
!2995 = !DILocation(line: 1948, column: 4, scope: !2892)
!2996 = distinct !{!2996, !2905}
!2997 = !DILocation(line: 1989, column: 9, scope: !322)
!2998 = !DILocation(line: 1989, column: 4, scope: !322)
!2999 = !DILocation(line: 1991, column: 8, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !322, file: !271, line: 1991, column: 8)
!3001 = !DILocation(line: 1991, column: 8, scope: !322)
!3002 = !DILocation(line: 1992, column: 30, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !3000, file: !271, line: 1991, column: 21)
!3004 = !DILocation(line: 1992, column: 39, scope: !3003)
!3005 = !DILocation(line: 1992, column: 51, scope: !3003)
!3006 = !DILocation(line: 1992, column: 59, scope: !3003)
!3007 = !DILocation(line: 1992, column: 63, scope: !3003)
!3008 = !DILocation(line: 1992, column: 7, scope: !3003)
!3009 = !DILocation(line: 1993, column: 4, scope: !3003)
!3010 = !DILocation(line: 1994, column: 8, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !322, file: !271, line: 1994, column: 8)
!3012 = !DILocation(line: 1994, column: 8, scope: !322)
!3013 = !DILocation(line: 1995, column: 17, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !3011, file: !271, line: 1994, column: 16)
!3015 = !DILocation(line: 1995, column: 8, scope: !3014)
!3016 = !DILocation(line: 1995, column: 15, scope: !3014)
!3017 = !DILocation(line: 1996, column: 4, scope: !3014)
!3018 = !DILocation(line: 1997, column: 11, scope: !322)
!3019 = !DILocation(line: 1997, column: 4, scope: !322)
