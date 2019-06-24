; ModuleID = './filePosix.o.i'
source_filename = "./filePosix.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FileData = type { i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.statfs = type { i64, i64, i64, i64, i64, i64, i64, %struct.__fsid_t, i64, i64, i64, [4 x i64] }
%struct.__fsid_t = type { [2 x i32] }
%struct.timeval = type { i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.mntent = type { i8*, i8*, i8*, i8*, i32, i32 }
%struct.FileIODescriptor = type { i32, i32, i8*, %struct.FileLockToken* }
%struct.FileLockToken = type opaque
%struct.__dirstream = type opaque
%struct.HashTable = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.DynBuf = type { i8*, i64, i64 }
%struct.WalkDirContextImpl = type { i32, i32, i8** }

@.str = private unnamed_addr constant [33 x i8] c"FILE: %s: statfs(%s) failed: %s\0A\00", align 1
@__func__.File_IsRemote = private unnamed_addr constant [14 x i8] c"File_IsRemote\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"FILE: %s: Drive letter %s on Linux?\0A\00", align 1
@__FUNCTION__.File_Cwd = private unnamed_addr constant [9 x i8] c"File_Cwd\00", align 1
@.str.2 = private unnamed_addr constant [138 x i8] c"@&!*@*@(msg.filePosix.getcwd)Unable to retrieve the current working directory: %s. Check if the directory has been deleted or unmounted.\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"FILE: %s: getcwd() failed: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"FILE: %s: error stating file \22%s\22: %s\0A\00", align 1
@__FUNCTION__.File_GetTimes = private unnamed_addr constant [14 x i8] c"File_GetTimes\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"FILE: %s: failed to convert \22%s\22 to current encoding\0A\00", align 1
@__FUNCTION__.File_SetTimes = private unnamed_addr constant [14 x i8] c"File_SetTimes\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"FILE: %s: utimes error on file \22%s\22: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"FILE: %s: failed to change permissions on file \22%s\22: %s\0A\00", align 1
@__FUNCTION__.File_SetFilePermissions = private unnamed_addr constant [24 x i8] c"File_SetFilePermissions\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"%s: Couldn't statfs %s\0A\00", align 1
@__func__.File_GetFreeSpace = private unnamed_addr constant [18 x i8] c"File_GetFreeSpace\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"FILE: %s: Couldn't statfs\0A\00", align 1
@__func__.File_GetCapacity = private unnamed_addr constant [17 x i8] c"File_GetCapacity\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [60 x i8] c"FILE: %s: The --[r]bind mount count exceeds %u. Giving up.\0A\00", align 1
@__func__.FilePosixGetBlockDevice = private unnamed_addr constant [24 x i8] c"FilePosixGetBlockDevice\00", align 1
@.str.14 = private unnamed_addr constant [100 x i8] c"@&!*@*@(msg.filePosix.replaceConversionFailed)Failed to convert file path \22%s\22 to current encoding\0A\00", align 1
@.str.15 = private unnamed_addr constant [101 x i8] c"@&!*@*@(msg.filePosix.replaceChmodFailed)Failed to duplicate file permissions from \22%s\22 to \22%s\22: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [77 x i8] c"@&!*@*@(msg.filePosix.replaceRenameFailed)Failed to rename \22%s\22 to \22%s\22: %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [51 x i8] c"FILE: %s: Error acquiring full path for path: %s.\0A\00", align 1
@__func__.FileGetMaxOrSupportsFileSize = private unnamed_addr constant [29 x i8] c"FileGetMaxOrSupportsFileSize\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"FILE: %s: maxFileSize passed as NULL.\0A\00", align 1
@__func__.File_GetMaxFileSize = private unnamed_addr constant [20 x i8] c"File_GetMaxFileSize\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.21 = private unnamed_addr constant [61 x i8] c"%s: file '%s' in directory '%s' cannot be converted to UTF8\0A\00", align 1
@__FUNCTION__.File_ListDirectory = private unnamed_addr constant [19 x i8] c"File_ListDirectory\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"\EF\BF\BD\EF\BF\BD\EF\BF\BD\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"/etc/mtab\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"FILE: %s: did not execute properly\0A\00", align 1
@__func__.FileVMKGetMaxOrSupportsFileSize = private unnamed_addr constant [32 x i8] c"FileVMKGetMaxOrSupportsFileSize\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"/.vmBigFileTest\00", align 1
@.str.28 = private unnamed_addr constant [54 x i8] c"FILE: %s: Failed to create temporary file in dir: %s\0A\00", align 1
@__func__.FilePosixCreateTestGetMaxOrSupportsFileSize = private unnamed_addr constant [44 x i8] c"FilePosixCreateTestGetMaxOrSupportsFileSize\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"FILE: %s: Couldn't getgroups\0A\00", align 1
@__FUNCTION__.FileIsGroupsMember = private unnamed_addr constant [19 x i8] c"FileIsGroupsMember\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"FILE: %s: Couldn't realloc\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @FileRemoveDirectory(i8*) #0 !dbg !370 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !379, metadata !380), !dbg !381
  %3 = load i8*, i8** %2, align 8, !dbg !382
  %4 = call i32 @Posix_Rmdir(i8* %3), !dbg !383
  %5 = icmp eq i32 %4, -1, !dbg !384
  br i1 %5, label %6, label %9, !dbg !385

; <label>:6:                                      ; preds = %1
  %7 = call i32* @__errno_location() #1, !dbg !386
  %8 = load i32, i32* %7, align 4, !dbg !388
  br label %10, !dbg !389

; <label>:9:                                      ; preds = %1
  br label %10, !dbg !390

; <label>:10:                                     ; preds = %9, %6
  %11 = phi i32 [ %8, %6 ], [ 0, %9 ], !dbg !392
  ret i32 %11, !dbg !394
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @Posix_Rmdir(i8*) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

; Function Attrs: nounwind uwtable
define i32 @File_Rename(i8*, i8*) #0 !dbg !395 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !398, metadata !380), !dbg !399
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !400, metadata !380), !dbg !401
  %5 = load i8*, i8** %3, align 8, !dbg !402
  %6 = load i8*, i8** %4, align 8, !dbg !403
  %7 = call i32 @Posix_Rename(i8* %5, i8* %6), !dbg !404
  %8 = icmp eq i32 %7, -1, !dbg !405
  br i1 %8, label %9, label %12, !dbg !406

; <label>:9:                                      ; preds = %2
  %10 = call i32* @__errno_location() #1, !dbg !407
  %11 = load i32, i32* %10, align 4, !dbg !409
  br label %13, !dbg !410

; <label>:12:                                     ; preds = %2
  br label %13, !dbg !411

; <label>:13:                                     ; preds = %12, %9
  %14 = phi i32 [ %11, %9 ], [ 0, %12 ], !dbg !413
  ret i32 %14, !dbg !415
}

declare i32 @Posix_Rename(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @File_RenameRetry(i8*, i8*, i32) #0 !dbg !416 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !422, metadata !380), !dbg !423
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !424, metadata !380), !dbg !425
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !426, metadata !380), !dbg !427
  %7 = load i8*, i8** %4, align 8, !dbg !428
  %8 = load i8*, i8** %5, align 8, !dbg !429
  %9 = call i32 @File_Rename(i8* %7, i8* %8), !dbg !430
  ret i32 %9, !dbg !431
}

; Function Attrs: nounwind uwtable
define i32 @FileDeletion(i8*, i8 signext) #0 !dbg !432 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !437, metadata !380), !dbg !438
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !439, metadata !380), !dbg !440
  call void @llvm.dbg.declare(metadata i32* %6, metadata !441, metadata !380), !dbg !442
  %8 = load i8*, i8** %4, align 8, !dbg !443
  %9 = icmp eq i8* %8, null, !dbg !445
  br i1 %9, label %10, label %14, !dbg !446

; <label>:10:                                     ; preds = %2
  %11 = call i32* @__errno_location() #1, !dbg !447
  store i32 14, i32* %11, align 4, !dbg !449
  %12 = call i32* @__errno_location() #1, !dbg !450
  %13 = load i32, i32* %12, align 4, !dbg !451
  store i32 %13, i32* %3, align 4, !dbg !452
  br label %57, !dbg !452

; <label>:14:                                     ; preds = %2
  %15 = load i8, i8* %5, align 1, !dbg !453
  %16 = icmp ne i8 %15, 0, !dbg !453
  br i1 %16, label %17, label %45, !dbg !455

; <label>:17:                                     ; preds = %14
  call void @llvm.dbg.declare(metadata i8** %7, metadata !456, metadata !380), !dbg !459
  %18 = load i8*, i8** %4, align 8, !dbg !460
  %19 = call i8* @Posix_ReadLink(i8* %18), !dbg !461
  store i8* %19, i8** %7, align 8, !dbg !459
  %20 = load i8*, i8** %7, align 8, !dbg !462
  %21 = icmp eq i8* %20, null, !dbg !464
  br i1 %21, label %22, label %29, !dbg !465

; <label>:22:                                     ; preds = %17
  %23 = call i32* @__errno_location() #1, !dbg !466
  %24 = load i32, i32* %23, align 4, !dbg !468
  store i32 %24, i32* %6, align 4, !dbg !469
  %25 = load i32, i32* %6, align 4, !dbg !470
  %26 = icmp ne i32 %25, 22, !dbg !472
  br i1 %26, label %27, label %28, !dbg !473

; <label>:27:                                     ; preds = %22
  br label %55, !dbg !474

; <label>:28:                                     ; preds = %22
  br label %44, !dbg !476

; <label>:29:                                     ; preds = %17
  %30 = load i8*, i8** %7, align 8, !dbg !477
  %31 = call i32 @Posix_Unlink(i8* %30), !dbg !479
  %32 = icmp eq i32 %31, -1, !dbg !480
  br i1 %32, label %33, label %36, !dbg !481

; <label>:33:                                     ; preds = %29
  %34 = call i32* @__errno_location() #1, !dbg !482
  %35 = load i32, i32* %34, align 4, !dbg !484
  br label %37, !dbg !485

; <label>:36:                                     ; preds = %29
  br label %37, !dbg !486

; <label>:37:                                     ; preds = %36, %33
  %38 = phi i32 [ %35, %33 ], [ 0, %36 ], !dbg !488
  store i32 %38, i32* %6, align 4, !dbg !490
  %39 = load i8*, i8** %7, align 8, !dbg !491
  call void @Posix_Free(i8* %39), !dbg !492
  %40 = load i32, i32* %6, align 4, !dbg !493
  %41 = icmp ne i32 %40, 2, !dbg !495
  br i1 %41, label %42, label %43, !dbg !496

; <label>:42:                                     ; preds = %37
  br label %55, !dbg !497

; <label>:43:                                     ; preds = %37
  br label %44

; <label>:44:                                     ; preds = %43, %28
  br label %45, !dbg !499

; <label>:45:                                     ; preds = %44, %14
  %46 = load i8*, i8** %4, align 8, !dbg !500
  %47 = call i32 @Posix_Unlink(i8* %46), !dbg !501
  %48 = icmp eq i32 %47, -1, !dbg !502
  br i1 %48, label %49, label %52, !dbg !503

; <label>:49:                                     ; preds = %45
  %50 = call i32* @__errno_location() #1, !dbg !504
  %51 = load i32, i32* %50, align 4, !dbg !506
  br label %53, !dbg !507

; <label>:52:                                     ; preds = %45
  br label %53, !dbg !508

; <label>:53:                                     ; preds = %52, %49
  %54 = phi i32 [ %51, %49 ], [ 0, %52 ], !dbg !510
  store i32 %54, i32* %6, align 4, !dbg !512
  br label %55, !dbg !513

; <label>:55:                                     ; preds = %53, %42, %27
  %56 = load i32, i32* %6, align 4, !dbg !514
  store i32 %56, i32* %3, align 4, !dbg !515
  br label %57, !dbg !515

; <label>:57:                                     ; preds = %55, %10
  %58 = load i32, i32* %3, align 4, !dbg !516
  ret i32 %58, !dbg !516
}

declare i8* @Posix_ReadLink(i8*) #2

declare i32 @Posix_Unlink(i8*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @Posix_Free(i8*) #4 !dbg !517 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !521, metadata !380), !dbg !522
  call void @llvm.dbg.declare(metadata i32* %3, metadata !523, metadata !380), !dbg !524
  %4 = call i32* @__errno_location() #1, !dbg !525
  %5 = load i32, i32* %4, align 4, !dbg !526
  store i32 %5, i32* %3, align 4, !dbg !524
  %6 = load i8*, i8** %2, align 8, !dbg !527
  call void @free(i8* %6) #8, !dbg !528
  %7 = load i32, i32* %3, align 4, !dbg !529
  %8 = call i32* @__errno_location() #1, !dbg !530
  store i32 %7, i32* %8, align 4, !dbg !531
  ret void, !dbg !532
}

; Function Attrs: nounwind uwtable
define i32 @File_UnlinkDelayed(i8*) #0 !dbg !533 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !534, metadata !380), !dbg !535
  %3 = load i8*, i8** %2, align 8, !dbg !536
  %4 = call i32 @FileDeletion(i8* %3, i8 signext 1), !dbg !537
  %5 = icmp eq i32 %4, 0, !dbg !538
  %6 = select i1 %5, i32 0, i32 -1, !dbg !539
  ret i32 %6, !dbg !540
}

; Function Attrs: nounwind uwtable
define i32 @FileAttributes(i8*, %struct.FileData*) #0 !dbg !541 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.FileData*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stat, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !557, metadata !380), !dbg !558
  store %struct.FileData* %1, %struct.FileData** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.FileData** %4, metadata !559, metadata !380), !dbg !560
  call void @llvm.dbg.declare(metadata i32* %5, metadata !561, metadata !380), !dbg !562
  call void @llvm.dbg.declare(metadata %struct.stat* %6, metadata !563, metadata !380), !dbg !603
  %7 = load i8*, i8** %3, align 8, !dbg !604
  %8 = call i32 @Posix_Stat(i8* %7, %struct.stat* %6), !dbg !606
  %9 = icmp eq i32 %8, -1, !dbg !607
  br i1 %9, label %10, label %13, !dbg !608

; <label>:10:                                     ; preds = %2
  %11 = call i32* @__errno_location() #1, !dbg !609
  %12 = load i32, i32* %11, align 4, !dbg !611
  store i32 %12, i32* %5, align 4, !dbg !612
  br label %71, !dbg !613

; <label>:13:                                     ; preds = %2
  %14 = load %struct.FileData*, %struct.FileData** %4, align 8, !dbg !614
  %15 = icmp ne %struct.FileData* %14, null, !dbg !617
  br i1 %15, label %16, label %70, !dbg !618

; <label>:16:                                     ; preds = %13
  %17 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 13, !dbg !619
  %18 = getelementptr inbounds %struct.timespec, %struct.timespec* %17, i32 0, i32 0, !dbg !621
  %19 = load i64, i64* %18, align 8, !dbg !621
  %20 = load %struct.FileData*, %struct.FileData** %4, align 8, !dbg !622
  %21 = getelementptr inbounds %struct.FileData, %struct.FileData* %20, i32 0, i32 1, !dbg !623
  store i64 %19, i64* %21, align 8, !dbg !624
  %22 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 12, !dbg !625
  %23 = getelementptr inbounds %struct.timespec, %struct.timespec* %22, i32 0, i32 0, !dbg !626
  %24 = load i64, i64* %23, align 8, !dbg !626
  %25 = load %struct.FileData*, %struct.FileData** %4, align 8, !dbg !627
  %26 = getelementptr inbounds %struct.FileData, %struct.FileData* %25, i32 0, i32 2, !dbg !628
  store i64 %24, i64* %26, align 8, !dbg !629
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 11, !dbg !630
  %28 = getelementptr inbounds %struct.timespec, %struct.timespec* %27, i32 0, i32 0, !dbg !631
  %29 = load i64, i64* %28, align 8, !dbg !631
  %30 = load %struct.FileData*, %struct.FileData** %4, align 8, !dbg !632
  %31 = getelementptr inbounds %struct.FileData, %struct.FileData* %30, i32 0, i32 0, !dbg !633
  store i64 %29, i64* %31, align 8, !dbg !634
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 8, !dbg !635
  %33 = load i64, i64* %32, align 8, !dbg !635
  %34 = load %struct.FileData*, %struct.FileData** %4, align 8, !dbg !636
  %35 = getelementptr inbounds %struct.FileData, %struct.FileData* %34, i32 0, i32 3, !dbg !637
  store i64 %33, i64* %35, align 8, !dbg !638
  %36 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 3, !dbg !639
  %37 = load i32, i32* %36, align 8, !dbg !639
  %38 = and i32 %37, 61440, !dbg !640
  switch i32 %38, label %54 [
    i32 32768, label %39
    i32 16384, label %42
    i32 24576, label %45
    i32 8192, label %48
    i32 40960, label %51
  ], !dbg !641

; <label>:39:                                     ; preds = %16
  %40 = load %struct.FileData*, %struct.FileData** %4, align 8, !dbg !642
  %41 = getelementptr inbounds %struct.FileData, %struct.FileData* %40, i32 0, i32 4, !dbg !644
  store i32 0, i32* %41, align 8, !dbg !645
  br label %57, !dbg !646

; <label>:42:                                     ; preds = %16
  %43 = load %struct.FileData*, %struct.FileData** %4, align 8, !dbg !647
  %44 = getelementptr inbounds %struct.FileData, %struct.FileData* %43, i32 0, i32 4, !dbg !648
  store i32 1, i32* %44, align 8, !dbg !649
  br label %57, !dbg !650

; <label>:45:                                     ; preds = %16
  %46 = load %struct.FileData*, %struct.FileData** %4, align 8, !dbg !651
  %47 = getelementptr inbounds %struct.FileData, %struct.FileData* %46, i32 0, i32 4, !dbg !652
  store i32 2, i32* %47, align 8, !dbg !653
  br label %57, !dbg !654

; <label>:48:                                     ; preds = %16
  %49 = load %struct.FileData*, %struct.FileData** %4, align 8, !dbg !655
  %50 = getelementptr inbounds %struct.FileData, %struct.FileData* %49, i32 0, i32 4, !dbg !656
  store i32 3, i32* %50, align 8, !dbg !657
  br label %57, !dbg !658

; <label>:51:                                     ; preds = %16
  %52 = load %struct.FileData*, %struct.FileData** %4, align 8, !dbg !659
  %53 = getelementptr inbounds %struct.FileData, %struct.FileData* %52, i32 0, i32 4, !dbg !660
  store i32 4, i32* %53, align 8, !dbg !661
  br label %57, !dbg !662

; <label>:54:                                     ; preds = %16
  %55 = load %struct.FileData*, %struct.FileData** %4, align 8, !dbg !663
  %56 = getelementptr inbounds %struct.FileData, %struct.FileData* %55, i32 0, i32 4, !dbg !664
  store i32 7, i32* %56, align 8, !dbg !665
  br label %57, !dbg !666

; <label>:57:                                     ; preds = %54, %51, %48, %45, %42, %39
  %58 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 3, !dbg !667
  %59 = load i32, i32* %58, align 8, !dbg !667
  %60 = load %struct.FileData*, %struct.FileData** %4, align 8, !dbg !668
  %61 = getelementptr inbounds %struct.FileData, %struct.FileData* %60, i32 0, i32 5, !dbg !669
  store i32 %59, i32* %61, align 4, !dbg !670
  %62 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 4, !dbg !671
  %63 = load i32, i32* %62, align 4, !dbg !671
  %64 = load %struct.FileData*, %struct.FileData** %4, align 8, !dbg !672
  %65 = getelementptr inbounds %struct.FileData, %struct.FileData* %64, i32 0, i32 6, !dbg !673
  store i32 %63, i32* %65, align 8, !dbg !674
  %66 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 5, !dbg !675
  %67 = load i32, i32* %66, align 8, !dbg !675
  %68 = load %struct.FileData*, %struct.FileData** %4, align 8, !dbg !676
  %69 = getelementptr inbounds %struct.FileData, %struct.FileData* %68, i32 0, i32 7, !dbg !677
  store i32 %67, i32* %69, align 4, !dbg !678
  br label %70, !dbg !679

; <label>:70:                                     ; preds = %57, %13
  store i32 0, i32* %5, align 4, !dbg !680
  br label %71

; <label>:71:                                     ; preds = %70, %10
  %72 = load i32, i32* %5, align 4, !dbg !681
  ret i32 %72, !dbg !682
}

declare i32 @Posix_Stat(i8*, %struct.stat*) #2

; Function Attrs: nounwind uwtable
define signext i8 @File_IsRemote(i8*) #0 !dbg !683 {
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 8
  %4 = alloca %struct.statfs, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !686, metadata !380), !dbg !687
  %5 = call signext i8 @HostType_OSIsVMK(), !dbg !688
  %6 = icmp ne i8 %5, 0, !dbg !688
  br i1 %6, label %7, label %8, !dbg !690

; <label>:7:                                      ; preds = %1
  store i8 0, i8* %2, align 1, !dbg !691
  br label %33, !dbg !691

; <label>:8:                                      ; preds = %1
  call void @llvm.dbg.declare(metadata %struct.statfs* %4, metadata !693, metadata !380), !dbg !723
  %9 = load i8*, i8** %3, align 8, !dbg !724
  %10 = call i32 @Posix_Statfs(i8* %9, %struct.statfs* %4), !dbg !726
  %11 = icmp eq i32 %10, -1, !dbg !727
  br i1 %11, label %12, label %17, !dbg !728

; <label>:12:                                     ; preds = %8
  %13 = load i8*, i8** %3, align 8, !dbg !729
  %14 = call i32* @__errno_location() #1, !dbg !731
  %15 = load i32, i32* %14, align 4, !dbg !732
  %16 = call i8* @Err_Errno2String(i32 %15), !dbg !733
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.File_IsRemote, i32 0, i32 0), i8* %13, i8* %16), !dbg !735
  store i8 1, i8* %2, align 1, !dbg !736
  br label %33, !dbg !736

; <label>:17:                                     ; preds = %8
  %18 = getelementptr inbounds %struct.statfs, %struct.statfs* %4, i32 0, i32 0, !dbg !737
  %19 = load i64, i64* %18, align 8, !dbg !737
  %20 = icmp eq i64 26985, %19, !dbg !739
  br i1 %20, label %21, label %22, !dbg !740

; <label>:21:                                     ; preds = %17
  store i8 1, i8* %2, align 1, !dbg !741
  br label %33, !dbg !741

; <label>:22:                                     ; preds = %17
  %23 = getelementptr inbounds %struct.statfs, %struct.statfs* %4, i32 0, i32 0, !dbg !743
  %24 = load i64, i64* %23, align 8, !dbg !743
  %25 = icmp eq i64 20859, %24, !dbg !745
  br i1 %25, label %26, label %27, !dbg !746

; <label>:26:                                     ; preds = %22
  store i8 1, i8* %2, align 1, !dbg !747
  br label %33, !dbg !747

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.statfs, %struct.statfs* %4, i32 0, i32 0, !dbg !749
  %29 = load i64, i64* %28, align 8, !dbg !749
  %30 = icmp eq i64 4283649346, %29, !dbg !751
  br i1 %30, label %31, label %32, !dbg !752

; <label>:31:                                     ; preds = %27
  store i8 1, i8* %2, align 1, !dbg !753
  br label %33, !dbg !753

; <label>:32:                                     ; preds = %27
  store i8 0, i8* %2, align 1, !dbg !755
  br label %33, !dbg !755

; <label>:33:                                     ; preds = %32, %31, %26, %21, %12, %7
  %34 = load i8, i8* %2, align 1, !dbg !756
  ret i8 %34, !dbg !756
}

declare signext i8 @HostType_OSIsVMK() #2

declare i32 @Posix_Statfs(i8*, %struct.statfs*) #2

declare void @Log(i8*, ...) #2

declare i8* @Err_Errno2String(i32) #2

; Function Attrs: nounwind uwtable
define signext i8 @File_IsSymLink(i8*) #0 !dbg !757 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.stat, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !758, metadata !380), !dbg !759
  call void @llvm.dbg.declare(metadata %struct.stat* %3, metadata !760, metadata !380), !dbg !761
  %4 = load i8*, i8** %2, align 8, !dbg !762
  %5 = call i32 @Posix_Lstat(i8* %4, %struct.stat* %3), !dbg !763
  %6 = icmp eq i32 %5, 0, !dbg !764
  br i1 %6, label %7, label %12, !dbg !765

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 3, !dbg !766
  %9 = load i32, i32* %8, align 8, !dbg !766
  %10 = and i32 %9, 61440, !dbg !767
  %11 = icmp eq i32 %10, 40960, !dbg !768
  br label %12

; <label>:12:                                     ; preds = %7, %1
  %13 = phi i1 [ false, %1 ], [ %11, %7 ]
  %14 = zext i1 %13 to i32, !dbg !769
  %15 = trunc i32 %14 to i8, !dbg !771
  ret i8 %15, !dbg !772
}

declare i32 @Posix_Lstat(i8*, %struct.stat*) #2

; Function Attrs: nounwind uwtable
define i8* @File_Cwd(i8*) #0 !dbg !773 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !776, metadata !380), !dbg !777
  call void @llvm.dbg.declare(metadata i64* %4, metadata !778, metadata !380), !dbg !781
  call void @llvm.dbg.declare(metadata i8** %5, metadata !782, metadata !380), !dbg !783
  call void @llvm.dbg.declare(metadata i8** %6, metadata !784, metadata !380), !dbg !785
  %7 = load i8*, i8** %3, align 8, !dbg !786
  %8 = icmp ne i8* %7, null, !dbg !788
  br i1 %8, label %9, label %15, !dbg !789

; <label>:9:                                      ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !790
  %11 = call signext i8 @Unicode_IsEmpty(i8* %10), !dbg !792
  %12 = icmp ne i8 %11, 0, !dbg !792
  br i1 %12, label %15, label %13, !dbg !793

; <label>:13:                                     ; preds = %9
  %14 = load i8*, i8** %3, align 8, !dbg !794
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__FUNCTION__.File_Cwd, i32 0, i32 0), i8* %14), !dbg !796
  br label %15, !dbg !797

; <label>:15:                                     ; preds = %13, %9, %1
  store i64 1024, i64* %4, align 8, !dbg !798
  %16 = load i64, i64* %4, align 8, !dbg !799
  %17 = call i8* @UtilSafeMalloc0(i64 %16), !dbg !800
  store i8* %17, i8** %5, align 8, !dbg !801
  br label %18, !dbg !802

; <label>:18:                                     ; preds = %15, %30
  %19 = load i8*, i8** %5, align 8, !dbg !803
  %20 = load i64, i64* %4, align 8, !dbg !806
  %21 = call i8* @getcwd(i8* %19, i64 %20) #8, !dbg !807
  %22 = icmp ne i8* %21, null, !dbg !808
  br i1 %22, label %23, label %24, !dbg !809

; <label>:23:                                     ; preds = %18
  br label %35, !dbg !810

; <label>:24:                                     ; preds = %18
  %25 = load i8*, i8** %5, align 8, !dbg !812
  call void @Posix_Free(i8* %25), !dbg !813
  store i8* null, i8** %5, align 8, !dbg !814
  %26 = call i32* @__errno_location() #1, !dbg !815
  %27 = load i32, i32* %26, align 4, !dbg !817
  %28 = icmp ne i32 %27, 34, !dbg !818
  br i1 %28, label %29, label %30, !dbg !819

; <label>:29:                                     ; preds = %24
  br label %35, !dbg !820

; <label>:30:                                     ; preds = %24
  %31 = load i64, i64* %4, align 8, !dbg !822
  %32 = add i64 %31, 1024, !dbg !822
  store i64 %32, i64* %4, align 8, !dbg !822
  %33 = load i64, i64* %4, align 8, !dbg !823
  %34 = call i8* @UtilSafeMalloc0(i64 %33), !dbg !824
  store i8* %34, i8** %5, align 8, !dbg !825
  br label %18, !dbg !826, !llvm.loop !828

; <label>:35:                                     ; preds = %29, %23
  %36 = load i8*, i8** %5, align 8, !dbg !829
  %37 = icmp eq i8* %36, null, !dbg !831
  br i1 %37, label %38, label %41, !dbg !832

; <label>:38:                                     ; preds = %35
  %39 = call i8* @Err_ErrString(), !dbg !833
  call void (i8*, ...) @Msg_Append(i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.2, i32 0, i32 0), i8* %39), !dbg !835
  %40 = call i8* @Err_ErrString(), !dbg !836
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__FUNCTION__.File_Cwd, i32 0, i32 0), i8* %40), !dbg !837
  store i8* null, i8** %2, align 8, !dbg !838
  br label %46, !dbg !838

; <label>:41:                                     ; preds = %35
  %42 = load i8*, i8** %5, align 8, !dbg !839
  %43 = call i8* @Unicode_Alloc(i8* %42, i32 -1), !dbg !840
  store i8* %43, i8** %6, align 8, !dbg !841
  %44 = load i8*, i8** %5, align 8, !dbg !842
  call void @Posix_Free(i8* %44), !dbg !843
  %45 = load i8*, i8** %6, align 8, !dbg !844
  store i8* %45, i8** %2, align 8, !dbg !845
  br label %46, !dbg !845

; <label>:46:                                     ; preds = %41, %38
  %47 = load i8*, i8** %2, align 8, !dbg !846
  ret i8* %47, !dbg !846
}

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @Unicode_IsEmpty(i8*) #4 !dbg !847 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !849, metadata !380), !dbg !850
  %3 = load i8*, i8** %2, align 8, !dbg !851
  %4 = getelementptr inbounds i8, i8* %3, i64 0, !dbg !851
  %5 = load i8, i8* %4, align 1, !dbg !851
  %6 = sext i8 %5 to i32, !dbg !851
  %7 = icmp eq i32 %6, 0, !dbg !852
  %8 = zext i1 %7 to i32, !dbg !852
  %9 = trunc i32 %8 to i8, !dbg !851
  ret i8 %9, !dbg !853
}

declare void @Warning(i8*, ...) #2

declare i8* @UtilSafeMalloc0(i64) #2

; Function Attrs: nounwind
declare i8* @getcwd(i8*, i64) #5

declare void @Msg_Append(i8*, ...) #2

declare i8* @Err_ErrString() #2

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Unicode_Alloc(i8*, i32) #4 !dbg !854 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !860, metadata !380), !dbg !861
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !862, metadata !380), !dbg !863
  %5 = load i8*, i8** %3, align 8, !dbg !864
  %6 = load i32, i32* %4, align 4, !dbg !865
  %7 = call i8* @Unicode_AllocWithLength(i8* %5, i64 -1, i32 %6), !dbg !866
  ret i8* %7, !dbg !867
}

; Function Attrs: nounwind uwtable
define i8* @File_StripFwdSlashes(i8*) #0 !dbg !868 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !869, metadata !380), !dbg !870
  call void @llvm.dbg.declare(metadata i8** %3, metadata !871, metadata !380), !dbg !872
  call void @llvm.dbg.declare(metadata i8** %4, metadata !873, metadata !380), !dbg !874
  call void @llvm.dbg.declare(metadata i8** %5, metadata !875, metadata !380), !dbg !876
  call void @llvm.dbg.declare(metadata i8** %6, metadata !877, metadata !380), !dbg !878
  call void @llvm.dbg.declare(metadata i8** %7, metadata !879, metadata !380), !dbg !880
  %8 = load i8*, i8** %2, align 8, !dbg !881
  %9 = call i8* @Unicode_GetAllocBytes(i8* %8, i32 0), !dbg !882
  store i8* %9, i8** %4, align 8, !dbg !883
  %10 = load i8*, i8** %4, align 8, !dbg !884
  store i8* %10, i8** %3, align 8, !dbg !885
  %11 = load i8*, i8** %4, align 8, !dbg !886
  store i8* %11, i8** %5, align 8, !dbg !887
  store i8* null, i8** %6, align 8, !dbg !888
  br label %12, !dbg !889

; <label>:12:                                     ; preds = %39, %1
  %13 = load i8*, i8** %3, align 8, !dbg !890
  %14 = load i8, i8* %13, align 1, !dbg !892
  %15 = sext i8 %14 to i32, !dbg !892
  %16 = icmp ne i32 %15, 0, !dbg !893
  br i1 %16, label %17, label %42, !dbg !894

; <label>:17:                                     ; preds = %12
  %18 = load i8*, i8** %3, align 8, !dbg !895
  %19 = load i8, i8* %18, align 1, !dbg !898
  %20 = sext i8 %19 to i32, !dbg !898
  %21 = icmp eq i32 %20, 47, !dbg !899
  br i1 %21, label %22, label %34, !dbg !900

; <label>:22:                                     ; preds = %17
  %23 = load i8*, i8** %6, align 8, !dbg !901
  %24 = load i8*, i8** %3, align 8, !dbg !904
  %25 = getelementptr inbounds i8, i8* %24, i64 -1, !dbg !905
  %26 = icmp ne i8* %23, %25, !dbg !906
  br i1 %26, label %27, label %32, !dbg !907

; <label>:27:                                     ; preds = %22
  %28 = load i8*, i8** %3, align 8, !dbg !908
  %29 = load i8, i8* %28, align 1, !dbg !910
  %30 = load i8*, i8** %5, align 8, !dbg !911
  %31 = getelementptr inbounds i8, i8* %30, i32 1, !dbg !911
  store i8* %31, i8** %5, align 8, !dbg !911
  store i8 %29, i8* %30, align 1, !dbg !912
  br label %32, !dbg !913

; <label>:32:                                     ; preds = %27, %22
  %33 = load i8*, i8** %3, align 8, !dbg !914
  store i8* %33, i8** %6, align 8, !dbg !915
  br label %39, !dbg !916

; <label>:34:                                     ; preds = %17
  %35 = load i8*, i8** %3, align 8, !dbg !917
  %36 = load i8, i8* %35, align 1, !dbg !919
  %37 = load i8*, i8** %5, align 8, !dbg !920
  %38 = getelementptr inbounds i8, i8* %37, i32 1, !dbg !920
  store i8* %38, i8** %5, align 8, !dbg !920
  store i8 %36, i8* %37, align 1, !dbg !921
  br label %39

; <label>:39:                                     ; preds = %34, %32
  %40 = load i8*, i8** %3, align 8, !dbg !922
  %41 = getelementptr inbounds i8, i8* %40, i32 1, !dbg !922
  store i8* %41, i8** %3, align 8, !dbg !922
  br label %12, !dbg !923, !llvm.loop !925

; <label>:42:                                     ; preds = %12
  %43 = load i8*, i8** %5, align 8, !dbg !926
  store i8 0, i8* %43, align 1, !dbg !927
  %44 = load i8*, i8** %4, align 8, !dbg !928
  %45 = call i8* @Unicode_AllocWithUTF8(i8* %44), !dbg !929
  store i8* %45, i8** %7, align 8, !dbg !930
  %46 = load i8*, i8** %4, align 8, !dbg !931
  call void @Posix_Free(i8* %46), !dbg !932
  %47 = load i8*, i8** %7, align 8, !dbg !933
  ret i8* %47, !dbg !934
}

declare i8* @Unicode_GetAllocBytes(i8*, i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Unicode_AllocWithUTF8(i8*) #4 !dbg !935 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !936, metadata !380), !dbg !937
  %3 = load i8*, i8** %2, align 8, !dbg !938
  %4 = call i8* @Unicode_AllocWithLength(i8* %3, i64 -1, i32 0), !dbg !939
  ret i8* %4, !dbg !940
}

; Function Attrs: nounwind uwtable
define i8* @File_FullPath(i8*) #0 !dbg !941 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !942, metadata !380), !dbg !943
  call void @llvm.dbg.declare(metadata i8** %4, metadata !944, metadata !380), !dbg !945
  call void @llvm.dbg.declare(metadata i8** %5, metadata !946, metadata !380), !dbg !947
  %11 = load i8*, i8** %3, align 8, !dbg !948
  %12 = icmp ne i8* %11, null, !dbg !950
  br i1 %12, label %13, label %19, !dbg !951

; <label>:13:                                     ; preds = %1
  %14 = load i8*, i8** %3, align 8, !dbg !952
  %15 = call signext i8 @File_IsFullPath(i8* %14), !dbg !954
  %16 = sext i8 %15 to i32, !dbg !954
  %17 = icmp ne i32 %16, 0, !dbg !954
  br i1 %17, label %18, label %19, !dbg !955

; <label>:18:                                     ; preds = %13
  store i8* null, i8** %4, align 8, !dbg !956
  br label %25, !dbg !958

; <label>:19:                                     ; preds = %13, %1
  %20 = call i8* @File_Cwd(i8* null), !dbg !959
  store i8* %20, i8** %4, align 8, !dbg !961
  %21 = load i8*, i8** %4, align 8, !dbg !962
  %22 = icmp eq i8* %21, null, !dbg !964
  br i1 %22, label %23, label %24, !dbg !965

; <label>:23:                                     ; preds = %19
  store i8* null, i8** %2, align 8, !dbg !966
  br label %80, !dbg !966

; <label>:24:                                     ; preds = %19
  br label %25

; <label>:25:                                     ; preds = %24, %18
  %26 = load i8*, i8** %3, align 8, !dbg !968
  %27 = icmp eq i8* %26, null, !dbg !970
  br i1 %27, label %33, label %28, !dbg !971

; <label>:28:                                     ; preds = %25
  %29 = load i8*, i8** %3, align 8, !dbg !972
  %30 = call signext i8 @Unicode_IsEmpty(i8* %29), !dbg !974
  %31 = sext i8 %30 to i32, !dbg !974
  %32 = icmp ne i32 %31, 0, !dbg !974
  br i1 %32, label %33, label %36, !dbg !975

; <label>:33:                                     ; preds = %28, %25
  %34 = load i8*, i8** %4, align 8, !dbg !976
  %35 = call i8* @Unicode_Duplicate(i8* %34), !dbg !978
  store i8* %35, i8** %5, align 8, !dbg !979
  br label %77, !dbg !980

; <label>:36:                                     ; preds = %28
  call void @llvm.dbg.declare(metadata i8** %6, metadata !981, metadata !380), !dbg !983
  %37 = load i8*, i8** %3, align 8, !dbg !984
  %38 = call signext i8 @File_IsFullPath(i8* %37), !dbg !986
  %39 = icmp ne i8 %38, 0, !dbg !986
  br i1 %39, label %40, label %43, !dbg !987

; <label>:40:                                     ; preds = %36
  %41 = load i8*, i8** %3, align 8, !dbg !988
  %42 = call i8* @Unicode_Duplicate(i8* %41), !dbg !990
  store i8* %42, i8** %6, align 8, !dbg !991
  br label %47, !dbg !992

; <label>:43:                                     ; preds = %36
  %44 = load i8*, i8** %4, align 8, !dbg !993
  %45 = load i8*, i8** %3, align 8, !dbg !995
  %46 = call i8* (i8*, ...) @Unicode_Join(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* %45, i8* null), !dbg !996
  store i8* %46, i8** %6, align 8, !dbg !997
  br label %47

; <label>:47:                                     ; preds = %43, %40
  %48 = load i8*, i8** %6, align 8, !dbg !998
  %49 = call i8* @Posix_RealPath(i8* %48), !dbg !999
  store i8* %49, i8** %5, align 8, !dbg !1000
  %50 = load i8*, i8** %5, align 8, !dbg !1001
  %51 = icmp eq i8* %50, null, !dbg !1003
  br i1 %51, label %52, label %75, !dbg !1004

; <label>:52:                                     ; preds = %47
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1005, metadata !380), !dbg !1007
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1008, metadata !380), !dbg !1009
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1010, metadata !380), !dbg !1011
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1012, metadata !380), !dbg !1013
  %53 = load i8*, i8** %6, align 8, !dbg !1014
  call void @File_GetPathName(i8* %53, i8** %7, i8** %8), !dbg !1015
  %54 = load i8*, i8** %7, align 8, !dbg !1016
  %55 = call i8* @FilePosixNearestExistingAncestor(i8* %54), !dbg !1017
  store i8* %55, i8** %9, align 8, !dbg !1018
  %56 = load i8*, i8** %9, align 8, !dbg !1019
  %57 = call i8* @Posix_RealPath(i8* %56), !dbg !1020
  store i8* %57, i8** %10, align 8, !dbg !1021
  %58 = load i8*, i8** %10, align 8, !dbg !1022
  %59 = icmp eq i8* %58, null, !dbg !1024
  br i1 %59, label %60, label %63, !dbg !1025

; <label>:60:                                     ; preds = %52
  %61 = load i8*, i8** %6, align 8, !dbg !1026
  %62 = call i8* @File_StripFwdSlashes(i8* %61), !dbg !1028
  store i8* %62, i8** %5, align 8, !dbg !1029
  br label %71, !dbg !1030

; <label>:63:                                     ; preds = %52
  %64 = load i8*, i8** %10, align 8, !dbg !1031
  %65 = load i8*, i8** %6, align 8, !dbg !1033
  %66 = load i8*, i8** %9, align 8, !dbg !1034
  %67 = call i64 @strlen(i8* %66) #9, !dbg !1035
  %68 = getelementptr inbounds i8, i8* %65, i64 %67, !dbg !1036
  %69 = call i8* @File_PathJoin(i8* %64, i8* %68), !dbg !1037
  store i8* %69, i8** %5, align 8, !dbg !1039
  %70 = load i8*, i8** %10, align 8, !dbg !1040
  call void @Posix_Free(i8* %70), !dbg !1041
  br label %71

; <label>:71:                                     ; preds = %63, %60
  %72 = load i8*, i8** %9, align 8, !dbg !1042
  call void @Posix_Free(i8* %72), !dbg !1043
  %73 = load i8*, i8** %7, align 8, !dbg !1044
  call void @Posix_Free(i8* %73), !dbg !1045
  %74 = load i8*, i8** %8, align 8, !dbg !1046
  call void @Posix_Free(i8* %74), !dbg !1047
  br label %75, !dbg !1048

; <label>:75:                                     ; preds = %71, %47
  %76 = load i8*, i8** %6, align 8, !dbg !1049
  call void @Posix_Free(i8* %76), !dbg !1050
  br label %77

; <label>:77:                                     ; preds = %75, %33
  %78 = load i8*, i8** %4, align 8, !dbg !1051
  call void @Posix_Free(i8* %78), !dbg !1052
  %79 = load i8*, i8** %5, align 8, !dbg !1053
  store i8* %79, i8** %2, align 8, !dbg !1054
  br label %80, !dbg !1054

; <label>:80:                                     ; preds = %77, %23
  %81 = load i8*, i8** %2, align 8, !dbg !1055
  ret i8* %81, !dbg !1055
}

; Function Attrs: nounwind uwtable
define signext i8 @File_IsFullPath(i8*) #0 !dbg !1056 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1057, metadata !380), !dbg !1058
  %3 = load i8*, i8** %2, align 8, !dbg !1059
  %4 = icmp ne i8* %3, null, !dbg !1060
  br i1 %4, label %5, label %11, !dbg !1061

; <label>:5:                                      ; preds = %1
  %6 = load i8*, i8** %2, align 8, !dbg !1062
  %7 = getelementptr inbounds i8, i8* %6, i64 0, !dbg !1062
  %8 = load i8, i8* %7, align 1, !dbg !1062
  %9 = sext i8 %8 to i32, !dbg !1062
  %10 = icmp eq i32 %9, 47, !dbg !1064
  br label %11

; <label>:11:                                     ; preds = %5, %1
  %12 = phi i1 [ false, %1 ], [ %10, %5 ]
  %13 = zext i1 %12 to i32, !dbg !1065
  %14 = trunc i32 %13 to i8, !dbg !1067
  ret i8 %14, !dbg !1068
}

declare i8* @Unicode_Duplicate(i8*) #2

declare i8* @Unicode_Join(i8*, ...) #2

declare i8* @Posix_RealPath(i8*) #2

declare void @File_GetPathName(i8*, i8**, i8**) #2

; Function Attrs: nounwind uwtable
define internal i8* @FilePosixNearestExistingAncestor(i8*) #0 !dbg !1069 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stat, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1070, metadata !380), !dbg !1071
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1072, metadata !380), !dbg !1073
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1074, metadata !380), !dbg !1075
  call void @llvm.dbg.declare(metadata %struct.stat* %5, metadata !1076, metadata !380), !dbg !1077
  %7 = load i8*, i8** %2, align 8, !dbg !1078
  %8 = call i64 @strlen(i8* %7) #9, !dbg !1079
  %9 = icmp ugt i64 %8, 1, !dbg !1080
  br i1 %9, label %10, label %13, !dbg !1081

; <label>:10:                                     ; preds = %1
  %11 = load i8*, i8** %2, align 8, !dbg !1082
  %12 = call i64 @strlen(i8* %11) #9, !dbg !1084
  br label %14, !dbg !1085

; <label>:13:                                     ; preds = %1
  br label %14, !dbg !1086

; <label>:14:                                     ; preds = %13, %10
  %15 = phi i64 [ %12, %10 ], [ 1, %13 ], !dbg !1088
  %16 = add i64 %15, 1, !dbg !1090
  store i64 %16, i64* %3, align 8, !dbg !1091
  %17 = load i64, i64* %3, align 8, !dbg !1092
  %18 = call i8* @UtilSafeMalloc0(i64 %17), !dbg !1093
  store i8* %18, i8** %4, align 8, !dbg !1094
  %19 = load i8*, i8** %4, align 8, !dbg !1095
  %20 = load i8*, i8** %2, align 8, !dbg !1096
  %21 = load i64, i64* %3, align 8, !dbg !1097
  %22 = call i8* @Str_Strcpy(i8* %19, i8* %20, i64 %21), !dbg !1098
  br label %23, !dbg !1099

; <label>:23:                                     ; preds = %49, %14
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1100, metadata !380), !dbg !1104
  %24 = load i8*, i8** %4, align 8, !dbg !1105
  %25 = load i8, i8* %24, align 1, !dbg !1107
  %26 = sext i8 %25 to i32, !dbg !1107
  %27 = icmp eq i32 %26, 0, !dbg !1108
  br i1 %27, label %28, label %37, !dbg !1109

; <label>:28:                                     ; preds = %23
  %29 = load i8*, i8** %4, align 8, !dbg !1110
  %30 = load i8*, i8** %2, align 8, !dbg !1112
  %31 = load i8, i8* %30, align 1, !dbg !1113
  %32 = sext i8 %31 to i32, !dbg !1113
  %33 = icmp eq i32 %32, 47, !dbg !1114
  %34 = select i1 %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), !dbg !1113
  %35 = load i64, i64* %3, align 8, !dbg !1115
  %36 = call i8* @Str_Strcpy(i8* %29, i8* %34, i64 %35), !dbg !1116
  br label %51, !dbg !1117

; <label>:37:                                     ; preds = %23
  %38 = load i8*, i8** %4, align 8, !dbg !1118
  %39 = call i32 @Posix_Stat(i8* %38, %struct.stat* %5), !dbg !1120
  %40 = icmp eq i32 %39, 0, !dbg !1121
  br i1 %40, label %41, label %42, !dbg !1122

; <label>:41:                                     ; preds = %37
  br label %51, !dbg !1123

; <label>:42:                                     ; preds = %37
  %43 = load i8*, i8** %4, align 8, !dbg !1125
  %44 = call i8* @strrchr(i8* %43, i32 47) #9, !dbg !1126
  store i8* %44, i8** %6, align 8, !dbg !1127
  %45 = load i8*, i8** %6, align 8, !dbg !1128
  %46 = icmp eq i8* %45, null, !dbg !1130
  br i1 %46, label %47, label %49, !dbg !1131

; <label>:47:                                     ; preds = %42
  %48 = load i8*, i8** %4, align 8, !dbg !1132
  store i8* %48, i8** %6, align 8, !dbg !1134
  br label %49, !dbg !1135

; <label>:49:                                     ; preds = %47, %42
  %50 = load i8*, i8** %6, align 8, !dbg !1136
  store i8 0, i8* %50, align 1, !dbg !1137
  br label %23, !dbg !1138, !llvm.loop !1140

; <label>:51:                                     ; preds = %41, %28
  %52 = load i8*, i8** %4, align 8, !dbg !1141
  ret i8* %52, !dbg !1142
}

declare i8* @File_PathJoin(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

; Function Attrs: nounwind uwtable
define signext i8 @File_GetTimes(i8*, i64*, i64*, i64*, i64*) #0 !dbg !1143 {
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.stat, align 8
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1151, metadata !380), !dbg !1152
  store i64* %1, i64** %8, align 8
  call void @llvm.dbg.declare(metadata i64** %8, metadata !1153, metadata !380), !dbg !1154
  store i64* %2, i64** %9, align 8
  call void @llvm.dbg.declare(metadata i64** %9, metadata !1155, metadata !380), !dbg !1156
  store i64* %3, i64** %10, align 8
  call void @llvm.dbg.declare(metadata i64** %10, metadata !1157, metadata !380), !dbg !1158
  store i64* %4, i64** %11, align 8
  call void @llvm.dbg.declare(metadata i64** %11, metadata !1159, metadata !380), !dbg !1160
  call void @llvm.dbg.declare(metadata %struct.stat* %12, metadata !1161, metadata !380), !dbg !1162
  %13 = load i64*, i64** %8, align 8, !dbg !1163
  store i64 -1, i64* %13, align 8, !dbg !1164
  %14 = load i64*, i64** %9, align 8, !dbg !1165
  store i64 -1, i64* %14, align 8, !dbg !1166
  %15 = load i64*, i64** %10, align 8, !dbg !1167
  store i64 -1, i64* %15, align 8, !dbg !1168
  %16 = load i64*, i64** %11, align 8, !dbg !1169
  store i64 -1, i64* %16, align 8, !dbg !1170
  %17 = load i8*, i8** %7, align 8, !dbg !1171
  %18 = call i32 @Posix_Lstat(i8* %17, %struct.stat* %12), !dbg !1173
  %19 = icmp eq i32 %18, -1, !dbg !1174
  br i1 %19, label %20, label %25, !dbg !1175

; <label>:20:                                     ; preds = %5
  %21 = load i8*, i8** %7, align 8, !dbg !1176
  %22 = call i32* @__errno_location() #1, !dbg !1178
  %23 = load i32, i32* %22, align 4, !dbg !1179
  %24 = call i8* @Err_Errno2String(i32 %23), !dbg !1180
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.File_GetTimes, i32 0, i32 0), i8* %21, i8* %24), !dbg !1182
  store i8 0, i8* %6, align 1, !dbg !1183
  br label %50, !dbg !1183

; <label>:25:                                     ; preds = %5
  %26 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 11, !dbg !1184
  %27 = bitcast %struct.timespec* %26 to { i64, i64 }*, !dbg !1185
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %27, i32 0, i32 0, !dbg !1185
  %29 = load i64, i64* %28, align 8, !dbg !1185
  %30 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %27, i32 0, i32 1, !dbg !1185
  %31 = load i64, i64* %30, align 8, !dbg !1185
  %32 = call i64 @TimeUtil_UnixTimeToNtTime(i64 %29, i64 %31), !dbg !1185
  %33 = load i64*, i64** %9, align 8, !dbg !1186
  store i64 %32, i64* %33, align 8, !dbg !1187
  %34 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 12, !dbg !1188
  %35 = bitcast %struct.timespec* %34 to { i64, i64 }*, !dbg !1189
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %35, i32 0, i32 0, !dbg !1189
  %37 = load i64, i64* %36, align 8, !dbg !1189
  %38 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %35, i32 0, i32 1, !dbg !1189
  %39 = load i64, i64* %38, align 8, !dbg !1189
  %40 = call i64 @TimeUtil_UnixTimeToNtTime(i64 %37, i64 %39), !dbg !1189
  %41 = load i64*, i64** %10, align 8, !dbg !1190
  store i64 %40, i64* %41, align 8, !dbg !1191
  %42 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 13, !dbg !1192
  %43 = bitcast %struct.timespec* %42 to { i64, i64 }*, !dbg !1193
  %44 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %43, i32 0, i32 0, !dbg !1193
  %45 = load i64, i64* %44, align 8, !dbg !1193
  %46 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %43, i32 0, i32 1, !dbg !1193
  %47 = load i64, i64* %46, align 8, !dbg !1193
  %48 = call i64 @TimeUtil_UnixTimeToNtTime(i64 %45, i64 %47), !dbg !1193
  %49 = load i64*, i64** %11, align 8, !dbg !1194
  store i64 %48, i64* %49, align 8, !dbg !1195
  store i8 1, i8* %6, align 1, !dbg !1196
  br label %50, !dbg !1196

; <label>:50:                                     ; preds = %25, %20
  %51 = load i8, i8* %6, align 1, !dbg !1197
  ret i8 %51, !dbg !1197
}

declare i64 @TimeUtil_UnixTimeToNtTime(i64, i64) #2

; Function Attrs: nounwind uwtable
define signext i8 @File_SetTimes(i8*, i64, i64, i64, i64) #0 !dbg !1198 {
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [2 x %struct.timeval], align 16
  %13 = alloca %struct.timeval*, align 8
  %14 = alloca %struct.timeval*, align 8
  %15 = alloca %struct.stat, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.timespec, align 8
  %19 = alloca %struct.timespec, align 8
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1201, metadata !380), !dbg !1202
  store i64 %1, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1203, metadata !380), !dbg !1204
  store i64 %2, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1205, metadata !380), !dbg !1206
  store i64 %3, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1207, metadata !380), !dbg !1208
  store i64 %4, i64* %11, align 8
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1209, metadata !380), !dbg !1210
  call void @llvm.dbg.declare(metadata [2 x %struct.timeval]* %12, metadata !1211, metadata !380), !dbg !1219
  call void @llvm.dbg.declare(metadata %struct.timeval** %13, metadata !1220, metadata !380), !dbg !1222
  call void @llvm.dbg.declare(metadata %struct.timeval** %14, metadata !1223, metadata !380), !dbg !1224
  call void @llvm.dbg.declare(metadata %struct.stat* %15, metadata !1225, metadata !380), !dbg !1226
  call void @llvm.dbg.declare(metadata i8** %16, metadata !1227, metadata !380), !dbg !1228
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1229, metadata !380), !dbg !1230
  %20 = load i8*, i8** %7, align 8, !dbg !1231
  %21 = icmp eq i8* %20, null, !dbg !1233
  br i1 %21, label %22, label %23, !dbg !1234

; <label>:22:                                     ; preds = %5
  store i8 0, i8* %6, align 1, !dbg !1235
  br label %112, !dbg !1235

; <label>:23:                                     ; preds = %5
  %24 = load i8*, i8** %7, align 8, !dbg !1237
  %25 = call i8* @Unicode_GetAllocBytes(i8* %24, i32 -1), !dbg !1238
  store i8* %25, i8** %16, align 8, !dbg !1239
  %26 = load i8*, i8** %16, align 8, !dbg !1240
  %27 = icmp eq i8* %26, null, !dbg !1242
  br i1 %27, label %28, label %30, !dbg !1243

; <label>:28:                                     ; preds = %23
  %29 = load i8*, i8** %7, align 8, !dbg !1244
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.File_SetTimes, i32 0, i32 0), i8* %29), !dbg !1246
  store i8 0, i8* %6, align 1, !dbg !1247
  br label %112, !dbg !1247

; <label>:30:                                     ; preds = %23
  %31 = load i8*, i8** %16, align 8, !dbg !1248
  %32 = call i32 @lstat64(i8* %31, %struct.stat* %15) #8, !dbg !1249
  %33 = icmp eq i32 %32, -1, !dbg !1250
  br i1 %33, label %34, label %37, !dbg !1251

; <label>:34:                                     ; preds = %30
  %35 = call i32* @__errno_location() #1, !dbg !1252
  %36 = load i32, i32* %35, align 4, !dbg !1254
  br label %38, !dbg !1255

; <label>:37:                                     ; preds = %30
  br label %38, !dbg !1256

; <label>:38:                                     ; preds = %37, %34
  %39 = phi i32 [ %36, %34 ], [ 0, %37 ], !dbg !1258
  store i32 %39, i32* %17, align 4, !dbg !1260
  %40 = load i32, i32* %17, align 4, !dbg !1261
  %41 = icmp ne i32 %40, 0, !dbg !1263
  br i1 %41, label %42, label %47, !dbg !1264

; <label>:42:                                     ; preds = %38
  %43 = load i8*, i8** %7, align 8, !dbg !1265
  %44 = load i32, i32* %17, align 4, !dbg !1267
  %45 = call i8* @Err_Errno2String(i32 %44), !dbg !1268
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.File_SetTimes, i32 0, i32 0), i8* %43, i8* %45), !dbg !1269
  %46 = load i8*, i8** %16, align 8, !dbg !1270
  call void @Posix_Free(i8* %46), !dbg !1271
  store i8 0, i8* %6, align 1, !dbg !1272
  br label %112, !dbg !1272

; <label>:47:                                     ; preds = %38
  %48 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %12, i64 0, i64 0, !dbg !1273
  store %struct.timeval* %48, %struct.timeval** %13, align 8, !dbg !1274
  %49 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %12, i64 0, i64 1, !dbg !1275
  store %struct.timeval* %49, %struct.timeval** %14, align 8, !dbg !1276
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 11, !dbg !1277
  %51 = getelementptr inbounds %struct.timespec, %struct.timespec* %50, i32 0, i32 0, !dbg !1278
  %52 = load i64, i64* %51, align 8, !dbg !1278
  %53 = load %struct.timeval*, %struct.timeval** %13, align 8, !dbg !1279
  %54 = getelementptr inbounds %struct.timeval, %struct.timeval* %53, i32 0, i32 0, !dbg !1280
  store i64 %52, i64* %54, align 8, !dbg !1281
  %55 = load %struct.timeval*, %struct.timeval** %13, align 8, !dbg !1282
  %56 = getelementptr inbounds %struct.timeval, %struct.timeval* %55, i32 0, i32 1, !dbg !1283
  store i64 0, i64* %56, align 8, !dbg !1284
  %57 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 12, !dbg !1285
  %58 = getelementptr inbounds %struct.timespec, %struct.timespec* %57, i32 0, i32 0, !dbg !1286
  %59 = load i64, i64* %58, align 8, !dbg !1286
  %60 = load %struct.timeval*, %struct.timeval** %14, align 8, !dbg !1287
  %61 = getelementptr inbounds %struct.timeval, %struct.timeval* %60, i32 0, i32 0, !dbg !1288
  store i64 %59, i64* %61, align 8, !dbg !1289
  %62 = load %struct.timeval*, %struct.timeval** %14, align 8, !dbg !1290
  %63 = getelementptr inbounds %struct.timeval, %struct.timeval* %62, i32 0, i32 1, !dbg !1291
  store i64 0, i64* %63, align 8, !dbg !1292
  %64 = load i64, i64* %9, align 8, !dbg !1293
  %65 = icmp sgt i64 %64, 0, !dbg !1295
  br i1 %65, label %66, label %78, !dbg !1296

; <label>:66:                                     ; preds = %47
  call void @llvm.dbg.declare(metadata %struct.timespec* %18, metadata !1297, metadata !380), !dbg !1299
  %67 = load i64, i64* %9, align 8, !dbg !1300
  %68 = call i32 @TimeUtil_NtTimeToUnixTime(%struct.timespec* %18, i64 %67), !dbg !1301
  %69 = getelementptr inbounds %struct.timespec, %struct.timespec* %18, i32 0, i32 0, !dbg !1302
  %70 = load i64, i64* %69, align 8, !dbg !1302
  %71 = load %struct.timeval*, %struct.timeval** %13, align 8, !dbg !1303
  %72 = getelementptr inbounds %struct.timeval, %struct.timeval* %71, i32 0, i32 0, !dbg !1304
  store i64 %70, i64* %72, align 8, !dbg !1305
  %73 = getelementptr inbounds %struct.timespec, %struct.timespec* %18, i32 0, i32 1, !dbg !1306
  %74 = load i64, i64* %73, align 8, !dbg !1306
  %75 = sdiv i64 %74, 1000, !dbg !1307
  %76 = load %struct.timeval*, %struct.timeval** %13, align 8, !dbg !1308
  %77 = getelementptr inbounds %struct.timeval, %struct.timeval* %76, i32 0, i32 1, !dbg !1309
  store i64 %75, i64* %77, align 8, !dbg !1310
  br label %78, !dbg !1311

; <label>:78:                                     ; preds = %66, %47
  %79 = load i64, i64* %10, align 8, !dbg !1312
  %80 = icmp sgt i64 %79, 0, !dbg !1314
  br i1 %80, label %81, label %93, !dbg !1315

; <label>:81:                                     ; preds = %78
  call void @llvm.dbg.declare(metadata %struct.timespec* %19, metadata !1316, metadata !380), !dbg !1318
  %82 = load i64, i64* %10, align 8, !dbg !1319
  %83 = call i32 @TimeUtil_NtTimeToUnixTime(%struct.timespec* %19, i64 %82), !dbg !1320
  %84 = getelementptr inbounds %struct.timespec, %struct.timespec* %19, i32 0, i32 0, !dbg !1321
  %85 = load i64, i64* %84, align 8, !dbg !1321
  %86 = load %struct.timeval*, %struct.timeval** %14, align 8, !dbg !1322
  %87 = getelementptr inbounds %struct.timeval, %struct.timeval* %86, i32 0, i32 0, !dbg !1323
  store i64 %85, i64* %87, align 8, !dbg !1324
  %88 = getelementptr inbounds %struct.timespec, %struct.timespec* %19, i32 0, i32 1, !dbg !1325
  %89 = load i64, i64* %88, align 8, !dbg !1325
  %90 = sdiv i64 %89, 1000, !dbg !1326
  %91 = load %struct.timeval*, %struct.timeval** %14, align 8, !dbg !1327
  %92 = getelementptr inbounds %struct.timeval, %struct.timeval* %91, i32 0, i32 1, !dbg !1328
  store i64 %90, i64* %92, align 8, !dbg !1329
  br label %93, !dbg !1330

; <label>:93:                                     ; preds = %81, %78
  %94 = load i8*, i8** %16, align 8, !dbg !1331
  %95 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %12, i32 0, i32 0, !dbg !1332
  %96 = call i32 @utimes(i8* %94, %struct.timeval* %95) #8, !dbg !1333
  %97 = icmp eq i32 %96, -1, !dbg !1334
  br i1 %97, label %98, label %101, !dbg !1335

; <label>:98:                                     ; preds = %93
  %99 = call i32* @__errno_location() #1, !dbg !1336
  %100 = load i32, i32* %99, align 4, !dbg !1337
  br label %102, !dbg !1338

; <label>:101:                                    ; preds = %93
  br label %102, !dbg !1339

; <label>:102:                                    ; preds = %101, %98
  %103 = phi i32 [ %100, %98 ], [ 0, %101 ], !dbg !1340
  store i32 %103, i32* %17, align 4, !dbg !1341
  %104 = load i8*, i8** %16, align 8, !dbg !1342
  call void @Posix_Free(i8* %104), !dbg !1343
  %105 = load i32, i32* %17, align 4, !dbg !1344
  %106 = icmp ne i32 %105, 0, !dbg !1346
  br i1 %106, label %107, label %111, !dbg !1347

; <label>:107:                                    ; preds = %102
  %108 = load i8*, i8** %7, align 8, !dbg !1348
  %109 = load i32, i32* %17, align 4, !dbg !1350
  %110 = call i8* @Err_Errno2String(i32 %109), !dbg !1351
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.File_SetTimes, i32 0, i32 0), i8* %108, i8* %110), !dbg !1352
  store i8 0, i8* %6, align 1, !dbg !1353
  br label %112, !dbg !1353

; <label>:111:                                    ; preds = %102
  store i8 1, i8* %6, align 1, !dbg !1354
  br label %112, !dbg !1354

; <label>:112:                                    ; preds = %111, %107, %42, %28, %22
  %113 = load i8, i8* %6, align 1, !dbg !1355
  ret i8 %113, !dbg !1355
}

; Function Attrs: nounwind
declare i32 @lstat64(i8*, %struct.stat*) #5

declare i32 @TimeUtil_NtTimeToUnixTime(%struct.timespec*, i64) #2

; Function Attrs: nounwind
declare i32 @utimes(i8*, %struct.timeval*) #5

; Function Attrs: nounwind uwtable
define signext i8 @File_SetFilePermissions(i8*, i32) #0 !dbg !1356 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1359, metadata !380), !dbg !1360
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1361, metadata !380), !dbg !1362
  %6 = load i8*, i8** %4, align 8, !dbg !1363
  %7 = load i32, i32* %5, align 4, !dbg !1365
  %8 = call i32 @Posix_Chmod(i8* %6, i32 %7), !dbg !1366
  %9 = icmp eq i32 %8, -1, !dbg !1367
  br i1 %9, label %10, label %15, !dbg !1368

; <label>:10:                                     ; preds = %2
  %11 = load i8*, i8** %4, align 8, !dbg !1369
  %12 = call i32* @__errno_location() #1, !dbg !1371
  %13 = load i32, i32* %12, align 4, !dbg !1372
  %14 = call i8* @Err_Errno2String(i32 %13), !dbg !1373
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.File_SetFilePermissions, i32 0, i32 0), i8* %11, i8* %14), !dbg !1375
  store i8 0, i8* %3, align 1, !dbg !1376
  br label %16, !dbg !1376

; <label>:15:                                     ; preds = %2
  store i8 1, i8* %3, align 1, !dbg !1377
  br label %16, !dbg !1377

; <label>:16:                                     ; preds = %15, %10
  %17 = load i8, i8* %3, align 1, !dbg !1378
  ret i8 %17, !dbg !1378
}

declare i32 @Posix_Chmod(i8*, i32) #2

; Function Attrs: nounwind uwtable
define signext i8 @File_GetParent(i8**) #0 !dbg !1379 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !1383, metadata !380), !dbg !1384
  %3 = load i8**, i8*** %2, align 8, !dbg !1385
  %4 = call signext i8 @FilePosixGetParent(i8** %3), !dbg !1386
  ret i8 %4, !dbg !1387
}

; Function Attrs: nounwind uwtable
define internal signext i8 @FilePosixGetParent(i8**) #0 !dbg !1388 {
  %2 = alloca i8, align 1
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !1389, metadata !380), !dbg !1390
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1391, metadata !380), !dbg !1392
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1393, metadata !380), !dbg !1394
  %6 = load i8**, i8*** %3, align 8, !dbg !1395
  %7 = load i8*, i8** %6, align 8, !dbg !1397
  %8 = call i32 @Unicode_Compare(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)), !dbg !1398
  %9 = icmp eq i32 %8, 0, !dbg !1399
  br i1 %9, label %10, label %11, !dbg !1400

; <label>:10:                                     ; preds = %1
  store i8 1, i8* %2, align 1, !dbg !1401
  br label %37, !dbg !1401

; <label>:11:                                     ; preds = %1
  %12 = load i8**, i8*** %3, align 8, !dbg !1403
  %13 = load i8*, i8** %12, align 8, !dbg !1404
  call void @File_GetPathName(i8* %13, i8** %4, i8** %5), !dbg !1405
  %14 = load i8**, i8*** %3, align 8, !dbg !1406
  %15 = load i8*, i8** %14, align 8, !dbg !1407
  call void @Posix_Free(i8* %15), !dbg !1408
  %16 = load i8*, i8** %4, align 8, !dbg !1409
  %17 = call signext i8 @Unicode_IsEmpty(i8* %16), !dbg !1411
  %18 = icmp ne i8 %17, 0, !dbg !1411
  br i1 %18, label %19, label %23, !dbg !1412

; <label>:19:                                     ; preds = %11
  %20 = load i8*, i8** %4, align 8, !dbg !1413
  call void @Posix_Free(i8* %20), !dbg !1415
  %21 = call i8* @Unicode_Duplicate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)), !dbg !1416
  %22 = load i8**, i8*** %3, align 8, !dbg !1417
  store i8* %21, i8** %22, align 8, !dbg !1418
  br label %35, !dbg !1419

; <label>:23:                                     ; preds = %11
  %24 = load i8*, i8** %5, align 8, !dbg !1420
  %25 = call signext i8 @Unicode_IsEmpty(i8* %24), !dbg !1423
  %26 = icmp ne i8 %25, 0, !dbg !1423
  br i1 %26, label %27, label %31, !dbg !1424

; <label>:27:                                     ; preds = %23
  %28 = load i8*, i8** %4, align 8, !dbg !1425
  %29 = load i8**, i8*** %3, align 8, !dbg !1427
  call void @File_GetPathName(i8* %28, i8** %29, i8** null), !dbg !1428
  %30 = load i8*, i8** %4, align 8, !dbg !1429
  call void @Posix_Free(i8* %30), !dbg !1430
  br label %34, !dbg !1431

; <label>:31:                                     ; preds = %23
  %32 = load i8*, i8** %4, align 8, !dbg !1432
  %33 = load i8**, i8*** %3, align 8, !dbg !1434
  store i8* %32, i8** %33, align 8, !dbg !1435
  br label %34

; <label>:34:                                     ; preds = %31, %27
  br label %35

; <label>:35:                                     ; preds = %34, %19
  %36 = load i8*, i8** %5, align 8, !dbg !1436
  call void @Posix_Free(i8* %36), !dbg !1437
  store i8 0, i8* %2, align 1, !dbg !1438
  br label %37, !dbg !1438

; <label>:37:                                     ; preds = %35, %10
  %38 = load i8, i8* %2, align 1, !dbg !1439
  ret i8 %38, !dbg !1439
}

; Function Attrs: nounwind uwtable
define i64 @File_GetFreeSpace(i8*, i8 signext) #0 !dbg !1440 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.statfs, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1443, metadata !380), !dbg !1444
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1445, metadata !380), !dbg !1446
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1447, metadata !380), !dbg !1448
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1449, metadata !380), !dbg !1450
  call void @llvm.dbg.declare(metadata %struct.statfs* %8, metadata !1451, metadata !380), !dbg !1452
  %9 = load i8*, i8** %4, align 8, !dbg !1453
  %10 = call i8* @File_FullPath(i8* %9), !dbg !1454
  store i8* %10, i8** %7, align 8, !dbg !1455
  %11 = load i8*, i8** %7, align 8, !dbg !1456
  %12 = icmp eq i8* %11, null, !dbg !1458
  br i1 %12, label %13, label %14, !dbg !1459

; <label>:13:                                     ; preds = %2
  store i64 -1, i64* %3, align 8, !dbg !1460
  br label %30, !dbg !1460

; <label>:14:                                     ; preds = %2
  %15 = load i8*, i8** %7, align 8, !dbg !1462
  %16 = load i8, i8* %5, align 1, !dbg !1464
  %17 = call signext i8 @FileGetStats(i8* %15, i8 signext %16, %struct.statfs* %8), !dbg !1465
  %18 = icmp ne i8 %17, 0, !dbg !1465
  br i1 %18, label %19, label %25, !dbg !1466

; <label>:19:                                     ; preds = %14
  %20 = getelementptr inbounds %struct.statfs, %struct.statfs* %8, i32 0, i32 4, !dbg !1467
  %21 = load i64, i64* %20, align 8, !dbg !1467
  %22 = getelementptr inbounds %struct.statfs, %struct.statfs* %8, i32 0, i32 1, !dbg !1469
  %23 = load i64, i64* %22, align 8, !dbg !1469
  %24 = mul i64 %21, %23, !dbg !1470
  store i64 %24, i64* %6, align 8, !dbg !1471
  br label %27, !dbg !1472

; <label>:25:                                     ; preds = %14
  %26 = load i8*, i8** %7, align 8, !dbg !1473
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.File_GetFreeSpace, i32 0, i32 0), i8* %26), !dbg !1475
  store i64 -1, i64* %6, align 8, !dbg !1476
  br label %27

; <label>:27:                                     ; preds = %25, %19
  %28 = load i8*, i8** %7, align 8, !dbg !1477
  call void @Posix_Free(i8* %28), !dbg !1478
  %29 = load i64, i64* %6, align 8, !dbg !1479
  store i64 %29, i64* %3, align 8, !dbg !1480
  br label %30, !dbg !1480

; <label>:30:                                     ; preds = %27, %13
  %31 = load i64, i64* %3, align 8, !dbg !1481
  ret i64 %31, !dbg !1481
}

; Function Attrs: nounwind uwtable
define internal signext i8 @FileGetStats(i8*, i8 signext, %struct.statfs*) #0 !dbg !1482 {
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.statfs*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1486, metadata !380), !dbg !1487
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1488, metadata !380), !dbg !1489
  store %struct.statfs* %2, %struct.statfs** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.statfs** %6, metadata !1490, metadata !380), !dbg !1491
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1492, metadata !380), !dbg !1493
  store i8 1, i8* %7, align 1, !dbg !1493
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1494, metadata !380), !dbg !1495
  store i8* null, i8** %8, align 8, !dbg !1495
  br label %9, !dbg !1496

; <label>:9:                                      ; preds = %36, %3
  %10 = load i8*, i8** %8, align 8, !dbg !1497
  %11 = icmp ne i8* %10, null, !dbg !1497
  br i1 %11, label %12, label %14, !dbg !1497

; <label>:12:                                     ; preds = %9
  %13 = load i8*, i8** %8, align 8, !dbg !1499
  br label %16, !dbg !1501

; <label>:14:                                     ; preds = %9
  %15 = load i8*, i8** %4, align 8, !dbg !1502
  br label %16, !dbg !1504

; <label>:16:                                     ; preds = %14, %12
  %17 = phi i8* [ %13, %12 ], [ %15, %14 ], !dbg !1505
  %18 = load %struct.statfs*, %struct.statfs** %6, align 8, !dbg !1507
  %19 = call i32 @Posix_Statfs(i8* %17, %struct.statfs* %18), !dbg !1508
  %20 = icmp eq i32 %19, -1, !dbg !1509
  br i1 %20, label %21, label %38, !dbg !1510

; <label>:21:                                     ; preds = %16
  %22 = call i32* @__errno_location() #1, !dbg !1511
  %23 = load i32, i32* %22, align 4, !dbg !1514
  %24 = icmp ne i32 %23, 2, !dbg !1515
  br i1 %24, label %29, label %25, !dbg !1516

; <label>:25:                                     ; preds = %21
  %26 = load i8, i8* %5, align 1, !dbg !1517
  %27 = sext i8 %26 to i32, !dbg !1517
  %28 = icmp ne i32 %27, 0, !dbg !1517
  br i1 %28, label %29, label %30, !dbg !1519

; <label>:29:                                     ; preds = %25, %21
  store i8 0, i8* %7, align 1, !dbg !1520
  br label %38, !dbg !1522

; <label>:30:                                     ; preds = %25
  %31 = load i8*, i8** %8, align 8, !dbg !1523
  %32 = icmp eq i8* %31, null, !dbg !1525
  br i1 %32, label %33, label %36, !dbg !1526

; <label>:33:                                     ; preds = %30
  %34 = load i8*, i8** %4, align 8, !dbg !1527
  %35 = call i8* @Unicode_Duplicate(i8* %34), !dbg !1529
  store i8* %35, i8** %8, align 8, !dbg !1530
  br label %36, !dbg !1531

; <label>:36:                                     ; preds = %33, %30
  %37 = call signext i8 @FilePosixGetParent(i8** %8), !dbg !1532
  br label %9, !dbg !1533, !llvm.loop !1535

; <label>:38:                                     ; preds = %29, %16
  %39 = load i8*, i8** %8, align 8, !dbg !1536
  call void @Posix_Free(i8* %39), !dbg !1537
  %40 = load i8, i8* %7, align 1, !dbg !1538
  ret i8 %40, !dbg !1539
}

; Function Attrs: nounwind uwtable
define signext i8 @File_SupportsZeroedThick(i8*) #0 !dbg !1540 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1541, metadata !380), !dbg !1542
  %3 = load i8*, i8** %2, align 8, !dbg !1543
  %4 = call signext i8 @FileIsVMFS(i8* %3), !dbg !1544
  ret i8 %4, !dbg !1545
}

; Function Attrs: nounwind uwtable
define internal signext i8 @FileIsVMFS(i8*) #0 !dbg !1546 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1547, metadata !380), !dbg !1548
  call void @llvm.dbg.declare(metadata i8* %3, metadata !1549, metadata !380), !dbg !1550
  store i8 0, i8* %3, align 1, !dbg !1550
  %4 = load i8, i8* %3, align 1, !dbg !1551
  ret i8 %4, !dbg !1552
}

; Function Attrs: nounwind uwtable
define signext i8 @File_SupportsMultiWriter(i8*) #0 !dbg !1553 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1554, metadata !380), !dbg !1555
  %3 = load i8*, i8** %2, align 8, !dbg !1556
  %4 = call signext i8 @FileIsVMFS(i8* %3), !dbg !1557
  ret i8 %4, !dbg !1558
}

; Function Attrs: nounwind uwtable
define signext i8 @File_SupportsOptimisticLock(i8*) #0 !dbg !1559 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1560, metadata !380), !dbg !1561
  ret i8 0, !dbg !1562
}

; Function Attrs: nounwind uwtable
define i64 @File_GetCapacity(i8*) #0 !dbg !1563 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.statfs, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1566, metadata !380), !dbg !1567
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1568, metadata !380), !dbg !1569
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1570, metadata !380), !dbg !1571
  call void @llvm.dbg.declare(metadata %struct.statfs* %6, metadata !1572, metadata !380), !dbg !1573
  %7 = load i8*, i8** %3, align 8, !dbg !1574
  %8 = call i8* @File_FullPath(i8* %7), !dbg !1575
  store i8* %8, i8** %5, align 8, !dbg !1576
  %9 = load i8*, i8** %5, align 8, !dbg !1577
  %10 = icmp eq i8* %9, null, !dbg !1579
  br i1 %10, label %11, label %12, !dbg !1580

; <label>:11:                                     ; preds = %1
  store i64 -1, i64* %2, align 8, !dbg !1581
  br label %26, !dbg !1581

; <label>:12:                                     ; preds = %1
  %13 = load i8*, i8** %5, align 8, !dbg !1583
  %14 = call signext i8 @FileGetStats(i8* %13, i8 signext 0, %struct.statfs* %6), !dbg !1585
  %15 = icmp ne i8 %14, 0, !dbg !1585
  br i1 %15, label %16, label %22, !dbg !1586

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct.statfs, %struct.statfs* %6, i32 0, i32 2, !dbg !1587
  %18 = load i64, i64* %17, align 8, !dbg !1587
  %19 = getelementptr inbounds %struct.statfs, %struct.statfs* %6, i32 0, i32 1, !dbg !1589
  %20 = load i64, i64* %19, align 8, !dbg !1589
  %21 = mul i64 %18, %20, !dbg !1590
  store i64 %21, i64* %4, align 8, !dbg !1591
  br label %23, !dbg !1592

; <label>:22:                                     ; preds = %12
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.File_GetCapacity, i32 0, i32 0)), !dbg !1593
  store i64 -1, i64* %4, align 8, !dbg !1595
  br label %23

; <label>:23:                                     ; preds = %22, %16
  %24 = load i8*, i8** %5, align 8, !dbg !1596
  call void @Posix_Free(i8* %24), !dbg !1597
  %25 = load i64, i64* %4, align 8, !dbg !1598
  store i64 %25, i64* %2, align 8, !dbg !1599
  br label %26, !dbg !1599

; <label>:26:                                     ; preds = %23, %11
  %27 = load i64, i64* %2, align 8, !dbg !1600
  ret i64 %27, !dbg !1600
}

; Function Attrs: nounwind uwtable
define i8* @File_GetUniqueFileSystemID(i8*) #0 !dbg !1601 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1602, metadata !380), !dbg !1603
  %3 = load i8*, i8** %2, align 8, !dbg !1604
  %4 = call i8* @FilePosixGetBlockDevice(i8* %3), !dbg !1605
  ret i8* %4, !dbg !1606
}

; Function Attrs: nounwind uwtable
define i8* @FilePosixGetBlockDevice(i8*) #0 !dbg !1607 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca [4096 x i8], align 16
  %7 = alloca [4096 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1608, metadata !380), !dbg !1609
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1610, metadata !380), !dbg !1611
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1612, metadata !380), !dbg !1613
  call void @llvm.dbg.declare(metadata [4096 x i8]* %6, metadata !1614, metadata !380), !dbg !1618
  call void @llvm.dbg.declare(metadata [4096 x i8]* %7, metadata !1619, metadata !380), !dbg !1620
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1621, metadata !380), !dbg !1622
  store i32 0, i32* %8, align 4, !dbg !1622
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1623, metadata !380), !dbg !1624
  %16 = load i8*, i8** %3, align 8, !dbg !1625
  %17 = call i8* @FilePosixNearestExistingAncestor(i8* %16), !dbg !1626
  store i8* %17, i8** %4, align 8, !dbg !1627
  %18 = load i8*, i8** %4, align 8, !dbg !1628
  %19 = call i8* @Posix_RealPath(i8* %18), !dbg !1629
  store i8* %19, i8** %9, align 8, !dbg !1630
  %20 = load i8*, i8** %4, align 8, !dbg !1631
  call void @Posix_Free(i8* %20), !dbg !1632
  %21 = load i8*, i8** %9, align 8, !dbg !1633
  %22 = icmp eq i8* %21, null, !dbg !1635
  br i1 %22, label %23, label %24, !dbg !1636

; <label>:23:                                     ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !1637
  br label %103, !dbg !1637

; <label>:24:                                     ; preds = %1
  %25 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i32 0, i32 0, !dbg !1639
  %26 = load i8*, i8** %9, align 8, !dbg !1640
  %27 = call i8* @Str_Strcpy(i8* %25, i8* %26, i64 4096), !dbg !1641
  %28 = load i8*, i8** %9, align 8, !dbg !1642
  call void @Posix_Free(i8* %28), !dbg !1643
  br label %29, !dbg !1643

; <label>:29:                                     ; preds = %88, %24
  %30 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i32 0, i32 0, !dbg !1644
  %31 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i32 0, i32 0, !dbg !1645
  %32 = call i8* @Str_Strcpy(i8* %30, i8* %31, i64 4096), !dbg !1646
  br label %33, !dbg !1647

; <label>:33:                                     ; preds = %102, %29
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1648, metadata !380), !dbg !1652
  call void @llvm.dbg.declare(metadata i8* %11, metadata !1653, metadata !380), !dbg !1654
  store i8 0, i8* %11, align 1, !dbg !1654
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1655, metadata !380), !dbg !1656
  %34 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i32 0, i32 0, !dbg !1657
  %35 = call i8* @FilePosixLookupMountPoint(i8* %34, i8* %11), !dbg !1658
  store i8* %35, i8** %12, align 8, !dbg !1659
  %36 = load i8*, i8** %12, align 8, !dbg !1660
  %37 = icmp ne i8* %36, null, !dbg !1660
  br i1 %37, label %38, label %91, !dbg !1662

; <label>:38:                                     ; preds = %33
  %39 = load i8, i8* %11, align 1, !dbg !1663
  %40 = icmp ne i8 %39, 0, !dbg !1663
  br i1 %40, label %41, label %89, !dbg !1666

; <label>:41:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata i8* %13, metadata !1667, metadata !380), !dbg !1669
  store i8 1, i8* %13, align 1, !dbg !1669
  %42 = load i8, i8* %13, align 1, !dbg !1670
  %43 = icmp ne i8 %42, 0, !dbg !1670
  br i1 %43, label %44, label %77, !dbg !1672

; <label>:44:                                     ; preds = %41
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1673, metadata !380), !dbg !1675
  %45 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i32 0, i32 0, !dbg !1676
  %46 = call i64 @strlen(i8* %45) #9, !dbg !1677
  store i64 %46, i64* %14, align 8, !dbg !1675
  call void @llvm.dbg.declare(metadata i8** %15, metadata !1678, metadata !380), !dbg !1679
  %47 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i32 0, i32 0, !dbg !1680
  %48 = load i64, i64* %14, align 8, !dbg !1681
  %49 = icmp ugt i64 %48, 1, !dbg !1682
  br i1 %49, label %50, label %52, !dbg !1681

; <label>:50:                                     ; preds = %44
  %51 = load i64, i64* %14, align 8, !dbg !1683
  br label %53, !dbg !1685

; <label>:52:                                     ; preds = %44
  br label %53, !dbg !1686

; <label>:53:                                     ; preds = %52, %50
  %54 = phi i64 [ %51, %50 ], [ 0, %52 ], !dbg !1688
  %55 = getelementptr inbounds i8, i8* %47, i64 %54, !dbg !1690
  store i8* %55, i8** %15, align 8, !dbg !1691
  %56 = load i8*, i8** %15, align 8, !dbg !1692
  %57 = load i8, i8* %56, align 1, !dbg !1694
  %58 = sext i8 %57 to i32, !dbg !1694
  %59 = icmp ne i32 %58, 0, !dbg !1695
  br i1 %59, label %60, label %72, !dbg !1696

; <label>:60:                                     ; preds = %53
  %61 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i32 0, i32 0, !dbg !1697
  %62 = load i8*, i8** %12, align 8, !dbg !1699
  %63 = call i64 @strlen(i8* %62) #9, !dbg !1700
  %64 = icmp ugt i64 %63, 1, !dbg !1701
  br i1 %64, label %65, label %67, !dbg !1700

; <label>:65:                                     ; preds = %60
  %66 = load i8*, i8** %12, align 8, !dbg !1702
  br label %68, !dbg !1704

; <label>:67:                                     ; preds = %60
  br label %68, !dbg !1705

; <label>:68:                                     ; preds = %67, %65
  %69 = phi i8* [ %66, %65 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0), %67 ], !dbg !1707
  %70 = load i8*, i8** %15, align 8, !dbg !1709
  %71 = call i32 (i8*, i64, i8*, ...) @Str_Sprintf(i8* %61, i64 4096, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* %69, i8* %70), !dbg !1710
  br label %76, !dbg !1711

; <label>:72:                                     ; preds = %53
  %73 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i32 0, i32 0, !dbg !1712
  %74 = load i8*, i8** %12, align 8, !dbg !1714
  %75 = call i8* @Str_Strcpy(i8* %73, i8* %74, i64 4096), !dbg !1715
  br label %76

; <label>:76:                                     ; preds = %72, %68
  br label %81, !dbg !1716

; <label>:77:                                     ; preds = %41
  %78 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i32 0, i32 0, !dbg !1717
  %79 = load i8*, i8** %12, align 8, !dbg !1719
  %80 = call i8* @Str_Strcpy(i8* %78, i8* %79, i64 4096), !dbg !1720
  br label %81

; <label>:81:                                     ; preds = %77, %76
  %82 = load i8*, i8** %12, align 8, !dbg !1721
  call void @Posix_Free(i8* %82), !dbg !1722
  %83 = load i32, i32* %8, align 4, !dbg !1723
  %84 = add i32 %83, 1, !dbg !1723
  store i32 %84, i32* %8, align 4, !dbg !1723
  %85 = load i32, i32* %8, align 4, !dbg !1724
  %86 = icmp ugt i32 %85, 10, !dbg !1726
  br i1 %86, label %87, label %88, !dbg !1727

; <label>:87:                                     ; preds = %81
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.FilePosixGetBlockDevice, i32 0, i32 0), i32 10), !dbg !1728
  store i8* null, i8** %2, align 8, !dbg !1730
  br label %103, !dbg !1730

; <label>:88:                                     ; preds = %81
  br label %29, !dbg !1731

; <label>:89:                                     ; preds = %38
  %90 = load i8*, i8** %12, align 8, !dbg !1732
  store i8* %90, i8** %2, align 8, !dbg !1733
  br label %103, !dbg !1733

; <label>:91:                                     ; preds = %33
  %92 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i32 0, i32 0, !dbg !1734
  %93 = call i8* @UtilSafeStrdup0(i8* %92), !dbg !1735
  store i8* %93, i8** %10, align 8, !dbg !1736
  %94 = call signext i8 @FilePosixGetParent(i8** %10), !dbg !1737
  store i8 %94, i8* %5, align 1, !dbg !1738
  %95 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i32 0, i32 0, !dbg !1739
  %96 = load i8*, i8** %10, align 8, !dbg !1740
  %97 = call i8* @Str_Strcpy(i8* %95, i8* %96, i64 4096), !dbg !1741
  %98 = load i8*, i8** %10, align 8, !dbg !1742
  call void @Posix_Free(i8* %98), !dbg !1743
  %99 = load i8, i8* %5, align 1, !dbg !1744
  %100 = icmp ne i8 %99, 0, !dbg !1744
  br i1 %100, label %101, label %102, !dbg !1746

; <label>:101:                                    ; preds = %91
  store i8* null, i8** %2, align 8, !dbg !1747
  br label %103, !dbg !1747

; <label>:102:                                    ; preds = %91
  br label %33, !dbg !1749, !llvm.loop !1751

; <label>:103:                                    ; preds = %101, %89, %87, %23
  %104 = load i8*, i8** %2, align 8, !dbg !1752
  ret i8* %104, !dbg !1752
}

declare i8* @Str_Strcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal i8* @FilePosixLookupMountPoint(i8*, i8*) #0 !dbg !1753 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca %struct.mntent, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1757, metadata !380), !dbg !1758
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1759, metadata !380), !dbg !1760
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !1761, metadata !380), !dbg !1815
  call void @llvm.dbg.declare(metadata %struct.mntent* %7, metadata !1816, metadata !380), !dbg !1826
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1827, metadata !380), !dbg !1828
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1829, metadata !380), !dbg !1830
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1831, metadata !380), !dbg !1832
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1833, metadata !380), !dbg !1834
  store i8* null, i8** %11, align 8, !dbg !1834
  store i64 16384, i64* %9, align 8, !dbg !1835
  br label %12, !dbg !1836

; <label>:12:                                     ; preds = %91, %2
  %13 = call %struct._IO_FILE* @setmntent(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0)) #8, !dbg !1837
  store %struct._IO_FILE* %13, %struct._IO_FILE** %6, align 8, !dbg !1838
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !1839
  %15 = icmp eq %struct._IO_FILE* %14, null, !dbg !1841
  br i1 %15, label %16, label %17, !dbg !1842

; <label>:16:                                     ; preds = %12
  store i8* null, i8** %3, align 8, !dbg !1843
  br label %120, !dbg !1843

; <label>:17:                                     ; preds = %12
  %18 = load i64, i64* %9, align 8, !dbg !1845
  %19 = call i8* @UtilSafeMalloc0(i64 %18), !dbg !1846
  store i8* %19, i8** %8, align 8, !dbg !1847
  br label %20, !dbg !1848

; <label>:20:                                     ; preds = %114, %17
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !1849
  %22 = load i8*, i8** %8, align 8, !dbg !1851
  %23 = load i64, i64* %9, align 8, !dbg !1852
  %24 = trunc i64 %23 to i32, !dbg !1852
  %25 = call %struct.mntent* @Posix_Getmntent_r(%struct._IO_FILE* %21, %struct.mntent* %7, i8* %22, i32 %24), !dbg !1853
  %26 = icmp ne %struct.mntent* %25, null, !dbg !1854
  br i1 %26, label %27, label %115, !dbg !1855

; <label>:27:                                     ; preds = %20
  store i64 0, i64* %10, align 8, !dbg !1856
  %28 = getelementptr inbounds %struct.mntent, %struct.mntent* %7, i32 0, i32 0, !dbg !1858
  %29 = load i8*, i8** %28, align 8, !dbg !1858
  %30 = icmp ne i8* %29, null, !dbg !1860
  br i1 %30, label %31, label %38, !dbg !1861

; <label>:31:                                     ; preds = %27
  %32 = getelementptr inbounds %struct.mntent, %struct.mntent* %7, i32 0, i32 0, !dbg !1862
  %33 = load i8*, i8** %32, align 8, !dbg !1862
  %34 = call i64 @strlen(i8* %33) #9, !dbg !1864
  %35 = add i64 %34, 1, !dbg !1865
  %36 = load i64, i64* %10, align 8, !dbg !1866
  %37 = add i64 %36, %35, !dbg !1866
  store i64 %37, i64* %10, align 8, !dbg !1866
  br label %38, !dbg !1867

; <label>:38:                                     ; preds = %31, %27
  %39 = getelementptr inbounds %struct.mntent, %struct.mntent* %7, i32 0, i32 1, !dbg !1868
  %40 = load i8*, i8** %39, align 8, !dbg !1868
  %41 = icmp ne i8* %40, null, !dbg !1870
  br i1 %41, label %42, label %49, !dbg !1871

; <label>:42:                                     ; preds = %38
  %43 = getelementptr inbounds %struct.mntent, %struct.mntent* %7, i32 0, i32 1, !dbg !1872
  %44 = load i8*, i8** %43, align 8, !dbg !1872
  %45 = call i64 @strlen(i8* %44) #9, !dbg !1874
  %46 = add i64 %45, 1, !dbg !1875
  %47 = load i64, i64* %10, align 8, !dbg !1876
  %48 = add i64 %47, %46, !dbg !1876
  store i64 %48, i64* %10, align 8, !dbg !1876
  br label %49, !dbg !1877

; <label>:49:                                     ; preds = %42, %38
  %50 = getelementptr inbounds %struct.mntent, %struct.mntent* %7, i32 0, i32 2, !dbg !1878
  %51 = load i8*, i8** %50, align 8, !dbg !1878
  %52 = icmp ne i8* %51, null, !dbg !1880
  br i1 %52, label %53, label %60, !dbg !1881

; <label>:53:                                     ; preds = %49
  %54 = getelementptr inbounds %struct.mntent, %struct.mntent* %7, i32 0, i32 2, !dbg !1882
  %55 = load i8*, i8** %54, align 8, !dbg !1882
  %56 = call i64 @strlen(i8* %55) #9, !dbg !1884
  %57 = add i64 %56, 1, !dbg !1885
  %58 = load i64, i64* %10, align 8, !dbg !1886
  %59 = add i64 %58, %57, !dbg !1886
  store i64 %59, i64* %10, align 8, !dbg !1886
  br label %60, !dbg !1887

; <label>:60:                                     ; preds = %53, %49
  %61 = getelementptr inbounds %struct.mntent, %struct.mntent* %7, i32 0, i32 3, !dbg !1888
  %62 = load i8*, i8** %61, align 8, !dbg !1888
  %63 = icmp ne i8* %62, null, !dbg !1890
  br i1 %63, label %64, label %71, !dbg !1891

; <label>:64:                                     ; preds = %60
  %65 = getelementptr inbounds %struct.mntent, %struct.mntent* %7, i32 0, i32 3, !dbg !1892
  %66 = load i8*, i8** %65, align 8, !dbg !1892
  %67 = call i64 @strlen(i8* %66) #9, !dbg !1894
  %68 = add i64 %67, 1, !dbg !1895
  %69 = load i64, i64* %10, align 8, !dbg !1896
  %70 = add i64 %69, %68, !dbg !1896
  store i64 %70, i64* %10, align 8, !dbg !1896
  br label %71, !dbg !1897

; <label>:71:                                     ; preds = %64, %60
  %72 = load i64, i64* %10, align 8, !dbg !1898
  %73 = load i64, i64* %9, align 8, !dbg !1900
  %74 = icmp uge i64 %72, %73, !dbg !1901
  br i1 %74, label %91, label %75, !dbg !1902

; <label>:75:                                     ; preds = %71
  %76 = getelementptr inbounds %struct.mntent, %struct.mntent* %7, i32 0, i32 0, !dbg !1903
  %77 = load i8*, i8** %76, align 8, !dbg !1903
  %78 = icmp ne i8* %77, null, !dbg !1905
  br i1 %78, label %79, label %91, !dbg !1906

; <label>:79:                                     ; preds = %75
  %80 = getelementptr inbounds %struct.mntent, %struct.mntent* %7, i32 0, i32 1, !dbg !1907
  %81 = load i8*, i8** %80, align 8, !dbg !1907
  %82 = icmp ne i8* %81, null, !dbg !1909
  br i1 %82, label %83, label %91, !dbg !1910

; <label>:83:                                     ; preds = %79
  %84 = getelementptr inbounds %struct.mntent, %struct.mntent* %7, i32 0, i32 2, !dbg !1911
  %85 = load i8*, i8** %84, align 8, !dbg !1911
  %86 = icmp ne i8* %85, null, !dbg !1912
  br i1 %86, label %87, label %91, !dbg !1913

; <label>:87:                                     ; preds = %83
  %88 = getelementptr inbounds %struct.mntent, %struct.mntent* %7, i32 0, i32 3, !dbg !1914
  %89 = load i8*, i8** %88, align 8, !dbg !1914
  %90 = icmp ne i8* %89, null, !dbg !1915
  br i1 %90, label %97, label %91, !dbg !1916

; <label>:91:                                     ; preds = %87, %83, %79, %75, %71
  %92 = load i64, i64* %9, align 8, !dbg !1918
  %93 = add i64 %92, 16384, !dbg !1918
  store i64 %93, i64* %9, align 8, !dbg !1918
  %94 = load i8*, i8** %8, align 8, !dbg !1920
  call void @Posix_Free(i8* %94), !dbg !1921
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !1922
  %96 = call i32 @endmntent(%struct._IO_FILE* %95) #8, !dbg !1923
  br label %12, !dbg !1924

; <label>:97:                                     ; preds = %87
  %98 = getelementptr inbounds %struct.mntent, %struct.mntent* %7, i32 0, i32 1, !dbg !1925
  %99 = load i8*, i8** %98, align 8, !dbg !1925
  %100 = load i8*, i8** %4, align 8, !dbg !1927
  %101 = call i32 @strcmp(i8* %99, i8* %100) #9, !dbg !1928
  %102 = icmp eq i32 %101, 0, !dbg !1929
  br i1 %102, label %103, label %114, !dbg !1930

; <label>:103:                                    ; preds = %97
  %104 = getelementptr inbounds %struct.mntent, %struct.mntent* %7, i32 0, i32 3, !dbg !1931
  %105 = load i8*, i8** %104, align 8, !dbg !1931
  %106 = call i8* @strstr(i8* %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0)) #9, !dbg !1933
  %107 = icmp ne i8* %106, null, !dbg !1934
  %108 = zext i1 %107 to i32, !dbg !1934
  %109 = trunc i32 %108 to i8, !dbg !1933
  %110 = load i8*, i8** %5, align 8, !dbg !1935
  store i8 %109, i8* %110, align 1, !dbg !1936
  %111 = getelementptr inbounds %struct.mntent, %struct.mntent* %7, i32 0, i32 0, !dbg !1937
  %112 = load i8*, i8** %111, align 8, !dbg !1937
  %113 = call i8* @UtilSafeStrdup0(i8* %112), !dbg !1938
  store i8* %113, i8** %11, align 8, !dbg !1939
  br label %115, !dbg !1940

; <label>:114:                                    ; preds = %97
  br label %20, !dbg !1941, !llvm.loop !1943

; <label>:115:                                    ; preds = %103, %20
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !1944
  %117 = call i32 @endmntent(%struct._IO_FILE* %116) #8, !dbg !1945
  %118 = load i8*, i8** %8, align 8, !dbg !1946
  call void @Posix_Free(i8* %118), !dbg !1947
  %119 = load i8*, i8** %11, align 8, !dbg !1948
  store i8* %119, i8** %3, align 8, !dbg !1949
  br label %120, !dbg !1949

; <label>:120:                                    ; preds = %115, %16
  %121 = load i8*, i8** %3, align 8, !dbg !1950
  ret i8* %121, !dbg !1950
}

declare i32 @Str_Sprintf(i8*, i64, i8*, ...) #2

declare i8* @UtilSafeStrdup0(i8*) #2

; Function Attrs: nounwind uwtable
define signext i8 @File_IsSameFile(i8*, i8*) #0 !dbg !1951 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca %struct.stat, align 8
  %8 = alloca %struct.statfs, align 8
  %9 = alloca %struct.statfs, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1954, metadata !380), !dbg !1955
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1956, metadata !380), !dbg !1957
  call void @llvm.dbg.declare(metadata %struct.stat* %6, metadata !1958, metadata !380), !dbg !1959
  call void @llvm.dbg.declare(metadata %struct.stat* %7, metadata !1960, metadata !380), !dbg !1961
  call void @llvm.dbg.declare(metadata %struct.statfs* %8, metadata !1962, metadata !380), !dbg !1963
  call void @llvm.dbg.declare(metadata %struct.statfs* %9, metadata !1964, metadata !380), !dbg !1965
  %10 = load i8*, i8** %4, align 8, !dbg !1966
  %11 = load i8*, i8** %5, align 8, !dbg !1968
  %12 = call i32 @Unicode_Compare(i8* %10, i8* %11), !dbg !1969
  %13 = icmp eq i32 %12, 0, !dbg !1970
  br i1 %13, label %14, label %15, !dbg !1971

; <label>:14:                                     ; preds = %2
  store i8 1, i8* %3, align 1, !dbg !1972
  br label %112, !dbg !1972

; <label>:15:                                     ; preds = %2
  %16 = load i8*, i8** %4, align 8, !dbg !1974
  %17 = call i32 @Posix_Stat(i8* %16, %struct.stat* %6), !dbg !1976
  %18 = icmp eq i32 %17, -1, !dbg !1977
  br i1 %18, label %19, label %20, !dbg !1978

; <label>:19:                                     ; preds = %15
  store i8 0, i8* %3, align 1, !dbg !1979
  br label %112, !dbg !1979

; <label>:20:                                     ; preds = %15
  %21 = load i8*, i8** %5, align 8, !dbg !1981
  %22 = call i32 @Posix_Stat(i8* %21, %struct.stat* %7), !dbg !1983
  %23 = icmp eq i32 %22, -1, !dbg !1984
  br i1 %23, label %24, label %25, !dbg !1985

; <label>:24:                                     ; preds = %20
  store i8 0, i8* %3, align 1, !dbg !1986
  br label %112, !dbg !1986

; <label>:25:                                     ; preds = %20
  %26 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1, !dbg !1988
  %27 = load i64, i64* %26, align 8, !dbg !1988
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1, !dbg !1990
  %29 = load i64, i64* %28, align 8, !dbg !1990
  %30 = icmp ne i64 %27, %29, !dbg !1991
  br i1 %30, label %31, label %32, !dbg !1992

; <label>:31:                                     ; preds = %25
  store i8 0, i8* %3, align 1, !dbg !1993
  br label %112, !dbg !1993

; <label>:32:                                     ; preds = %25
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0, !dbg !1995
  %34 = load i64, i64* %33, align 8, !dbg !1995
  %35 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0, !dbg !1997
  %36 = load i64, i64* %35, align 8, !dbg !1997
  %37 = icmp ne i64 %34, %36, !dbg !1998
  br i1 %37, label %38, label %39, !dbg !1999

; <label>:38:                                     ; preds = %32
  store i8 0, i8* %3, align 1, !dbg !2000
  br label %112, !dbg !2000

; <label>:39:                                     ; preds = %32
  %40 = call signext i8 @HostType_OSIsVMK(), !dbg !2002
  %41 = icmp ne i8 %40, 0, !dbg !2002
  br i1 %41, label %42, label %43, !dbg !2004

; <label>:42:                                     ; preds = %39
  store i8 1, i8* %3, align 1, !dbg !2005
  br label %112, !dbg !2005

; <label>:43:                                     ; preds = %39
  %44 = load i8*, i8** %4, align 8, !dbg !2007
  %45 = call i32 @Posix_Statfs(i8* %44, %struct.statfs* %8), !dbg !2009
  %46 = icmp ne i32 %45, 0, !dbg !2010
  br i1 %46, label %47, label %48, !dbg !2011

; <label>:47:                                     ; preds = %43
  store i8 0, i8* %3, align 1, !dbg !2012
  br label %112, !dbg !2012

; <label>:48:                                     ; preds = %43
  %49 = load i8*, i8** %5, align 8, !dbg !2014
  %50 = call i32 @Posix_Statfs(i8* %49, %struct.statfs* %9), !dbg !2016
  %51 = icmp ne i32 %50, 0, !dbg !2017
  br i1 %51, label %52, label %53, !dbg !2018

; <label>:52:                                     ; preds = %48
  store i8 0, i8* %3, align 1, !dbg !2019
  br label %112, !dbg !2019

; <label>:53:                                     ; preds = %48
  %54 = getelementptr inbounds %struct.statfs, %struct.statfs* %8, i32 0, i32 0, !dbg !2021
  %55 = load i64, i64* %54, align 8, !dbg !2021
  %56 = icmp ne i64 %55, 26985, !dbg !2023
  br i1 %56, label %57, label %62, !dbg !2024

; <label>:57:                                     ; preds = %53
  %58 = getelementptr inbounds %struct.statfs, %struct.statfs* %9, i32 0, i32 0, !dbg !2025
  %59 = load i64, i64* %58, align 8, !dbg !2025
  %60 = icmp ne i64 %59, 26985, !dbg !2026
  br i1 %60, label %61, label %62, !dbg !2027

; <label>:61:                                     ; preds = %57
  store i8 1, i8* %3, align 1, !dbg !2029
  br label %112, !dbg !2029

; <label>:62:                                     ; preds = %57, %53
  %63 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 3, !dbg !2031
  %64 = load i32, i32* %63, align 8, !dbg !2031
  %65 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 3, !dbg !2033
  %66 = load i32, i32* %65, align 8, !dbg !2033
  %67 = icmp eq i32 %64, %66, !dbg !2034
  br i1 %67, label %68, label %111, !dbg !2035

; <label>:68:                                     ; preds = %62
  %69 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 2, !dbg !2036
  %70 = load i64, i64* %69, align 8, !dbg !2036
  %71 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 2, !dbg !2037
  %72 = load i64, i64* %71, align 8, !dbg !2037
  %73 = icmp eq i64 %70, %72, !dbg !2038
  br i1 %73, label %74, label %111, !dbg !2039

; <label>:74:                                     ; preds = %68
  %75 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 4, !dbg !2040
  %76 = load i32, i32* %75, align 4, !dbg !2040
  %77 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 4, !dbg !2041
  %78 = load i32, i32* %77, align 4, !dbg !2041
  %79 = icmp eq i32 %76, %78, !dbg !2042
  br i1 %79, label %80, label %111, !dbg !2043

; <label>:80:                                     ; preds = %74
  %81 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 5, !dbg !2044
  %82 = load i32, i32* %81, align 8, !dbg !2044
  %83 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 5, !dbg !2045
  %84 = load i32, i32* %83, align 8, !dbg !2045
  %85 = icmp eq i32 %82, %84, !dbg !2046
  br i1 %85, label %86, label %111, !dbg !2047

; <label>:86:                                     ; preds = %80
  %87 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 7, !dbg !2048
  %88 = load i64, i64* %87, align 8, !dbg !2048
  %89 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 7, !dbg !2049
  %90 = load i64, i64* %89, align 8, !dbg !2049
  %91 = icmp eq i64 %88, %90, !dbg !2050
  br i1 %91, label %92, label %111, !dbg !2051

; <label>:92:                                     ; preds = %86
  %93 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 8, !dbg !2052
  %94 = load i64, i64* %93, align 8, !dbg !2052
  %95 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 8, !dbg !2053
  %96 = load i64, i64* %95, align 8, !dbg !2053
  %97 = icmp eq i64 %94, %96, !dbg !2054
  br i1 %97, label %98, label %111, !dbg !2055

; <label>:98:                                     ; preds = %92
  %99 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 9, !dbg !2056
  %100 = load i64, i64* %99, align 8, !dbg !2056
  %101 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 9, !dbg !2057
  %102 = load i64, i64* %101, align 8, !dbg !2057
  %103 = icmp eq i64 %100, %102, !dbg !2058
  br i1 %103, label %104, label %111, !dbg !2059

; <label>:104:                                    ; preds = %98
  %105 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 10, !dbg !2060
  %106 = load i64, i64* %105, align 8, !dbg !2060
  %107 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 10, !dbg !2061
  %108 = load i64, i64* %107, align 8, !dbg !2061
  %109 = icmp eq i64 %106, %108, !dbg !2062
  br i1 %109, label %110, label %111, !dbg !2063

; <label>:110:                                    ; preds = %104
  store i8 1, i8* %3, align 1, !dbg !2064
  br label %112, !dbg !2064

; <label>:111:                                    ; preds = %104, %98, %92, %86, %80, %74, %68, %62
  store i8 0, i8* %3, align 1, !dbg !2066
  br label %112, !dbg !2066

; <label>:112:                                    ; preds = %111, %110, %61, %52, %47, %42, %38, %31, %24, %19, %14
  %113 = load i8, i8* %3, align 1, !dbg !2067
  ret i8 %113, !dbg !2067
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @Unicode_Compare(i8*, i8*) #4 !dbg !2068 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2070, metadata !380), !dbg !2071
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2072, metadata !380), !dbg !2073
  %5 = load i8*, i8** %3, align 8, !dbg !2074
  %6 = load i8*, i8** %4, align 8, !dbg !2075
  %7 = call i32 @Unicode_CompareRange(i8* %5, i64 0, i64 -1, i8* %6, i64 0, i64 -1, i8 signext 0), !dbg !2076
  ret i32 %7, !dbg !2077
}

; Function Attrs: nounwind uwtable
define signext i8 @File_Replace(i8*, i8*) #0 !dbg !2078 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.stat, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2079, metadata !380), !dbg !2080
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2081, metadata !380), !dbg !2082
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2083, metadata !380), !dbg !2084
  store i32 0, i32* %5, align 4, !dbg !2084
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2085, metadata !380), !dbg !2086
  store i8 0, i8* %6, align 1, !dbg !2086
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2087, metadata !380), !dbg !2088
  store i8* null, i8** %7, align 8, !dbg !2088
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2089, metadata !380), !dbg !2090
  store i8* null, i8** %8, align 8, !dbg !2090
  call void @llvm.dbg.declare(metadata %struct.stat* %9, metadata !2091, metadata !380), !dbg !2092
  %10 = load i8*, i8** %4, align 8, !dbg !2093
  %11 = icmp eq i8* %10, null, !dbg !2095
  br i1 %11, label %12, label %13, !dbg !2096

; <label>:12:                                     ; preds = %2
  store i32 14, i32* %5, align 4, !dbg !2097
  br label %59, !dbg !2099

; <label>:13:                                     ; preds = %2
  %14 = load i8*, i8** %4, align 8, !dbg !2100
  %15 = call i8* @Unicode_GetAllocBytes(i8* %14, i32 -1), !dbg !2102
  store i8* %15, i8** %7, align 8, !dbg !2103
  %16 = icmp eq i8* %15, null, !dbg !2104
  br i1 %16, label %17, label %19, !dbg !2105

; <label>:17:                                     ; preds = %13
  store i32 22, i32* %5, align 4, !dbg !2106
  %18 = load i8*, i8** %4, align 8, !dbg !2108
  call void (i8*, ...) @Msg_Append(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.14, i32 0, i32 0), i8* %18), !dbg !2109
  br label %59, !dbg !2110

; <label>:19:                                     ; preds = %13
  br label %20

; <label>:20:                                     ; preds = %19
  %21 = load i8*, i8** %3, align 8, !dbg !2111
  %22 = icmp eq i8* %21, null, !dbg !2113
  br i1 %22, label %23, label %24, !dbg !2114

; <label>:23:                                     ; preds = %20
  store i32 14, i32* %5, align 4, !dbg !2115
  br label %59, !dbg !2117

; <label>:24:                                     ; preds = %20
  %25 = load i8*, i8** %3, align 8, !dbg !2118
  %26 = call i8* @Unicode_GetAllocBytes(i8* %25, i32 -1), !dbg !2120
  store i8* %26, i8** %8, align 8, !dbg !2121
  %27 = icmp eq i8* %26, null, !dbg !2122
  br i1 %27, label %28, label %30, !dbg !2123

; <label>:28:                                     ; preds = %24
  store i32 22, i32* %5, align 4, !dbg !2124
  %29 = load i8*, i8** %3, align 8, !dbg !2126
  call void (i8*, ...) @Msg_Append(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.14, i32 0, i32 0), i8* %29), !dbg !2127
  br label %59, !dbg !2128

; <label>:30:                                     ; preds = %24
  br label %31

; <label>:31:                                     ; preds = %30
  %32 = load i8*, i8** %8, align 8, !dbg !2129
  %33 = call i32 @stat64(i8* %32, %struct.stat* %9) #8, !dbg !2131
  %34 = icmp eq i32 %33, 0, !dbg !2132
  br i1 %34, label %35, label %47, !dbg !2133

; <label>:35:                                     ; preds = %31
  %36 = load i8*, i8** %7, align 8, !dbg !2134
  %37 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 3, !dbg !2136
  %38 = load i32, i32* %37, align 8, !dbg !2136
  %39 = call i32 @chmod(i8* %36, i32 %38) #8, !dbg !2137
  %40 = icmp eq i32 %39, -1, !dbg !2138
  br i1 %40, label %41, label %47, !dbg !2139

; <label>:41:                                     ; preds = %35
  %42 = call i32* @__errno_location() #1, !dbg !2140
  %43 = load i32, i32* %42, align 4, !dbg !2142
  store i32 %43, i32* %5, align 4, !dbg !2143
  %44 = load i8*, i8** %3, align 8, !dbg !2144
  %45 = load i8*, i8** %4, align 8, !dbg !2145
  %46 = call i8* @Err_ErrString(), !dbg !2146
  call void (i8*, ...) @Msg_Append(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.15, i32 0, i32 0), i8* %44, i8* %45, i8* %46), !dbg !2147
  br label %59, !dbg !2148

; <label>:47:                                     ; preds = %35, %31
  %48 = load i8*, i8** %7, align 8, !dbg !2149
  %49 = load i8*, i8** %8, align 8, !dbg !2151
  %50 = call i32 @rename(i8* %48, i8* %49) #8, !dbg !2152
  %51 = icmp slt i32 %50, 0, !dbg !2153
  br i1 %51, label %52, label %58, !dbg !2154

; <label>:52:                                     ; preds = %47
  %53 = call i32* @__errno_location() #1, !dbg !2155
  %54 = load i32, i32* %53, align 4, !dbg !2157
  store i32 %54, i32* %5, align 4, !dbg !2158
  %55 = load i8*, i8** %4, align 8, !dbg !2159
  %56 = load i8*, i8** %3, align 8, !dbg !2160
  %57 = call i8* @Err_ErrString(), !dbg !2161
  call void (i8*, ...) @Msg_Append(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.16, i32 0, i32 0), i8* %55, i8* %56, i8* %57), !dbg !2162
  br label %59, !dbg !2163

; <label>:58:                                     ; preds = %47
  store i8 1, i8* %6, align 1, !dbg !2164
  br label %59, !dbg !2165

; <label>:59:                                     ; preds = %58, %52, %41, %28, %23, %17, %12
  %60 = load i8*, i8** %7, align 8, !dbg !2166
  call void @Posix_Free(i8* %60), !dbg !2167
  %61 = load i8*, i8** %8, align 8, !dbg !2168
  call void @Posix_Free(i8* %61), !dbg !2169
  %62 = load i32, i32* %5, align 4, !dbg !2170
  %63 = call i32* @__errno_location() #1, !dbg !2171
  store i32 %62, i32* %63, align 4, !dbg !2172
  %64 = load i8, i8* %6, align 1, !dbg !2173
  ret i8 %64, !dbg !2174
}

; Function Attrs: nounwind
declare i32 @stat64(i8*, %struct.stat*) #5

; Function Attrs: nounwind
declare i32 @chmod(i8*, i32) #5

; Function Attrs: nounwind
declare i32 @rename(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define signext i8 @FileGetMaxOrSupportsFileSize(i8*, i64*, i8 signext) #0 !dbg !2175 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca %struct.FileIODescriptor, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2179, metadata !380), !dbg !2180
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !2181, metadata !380), !dbg !2182
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2183, metadata !380), !dbg !2184
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2185, metadata !380), !dbg !2186
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2187, metadata !380), !dbg !2188
  call void @llvm.dbg.declare(metadata i8* %9, metadata !2189, metadata !380), !dbg !2190
  store i8 0, i8* %9, align 1, !dbg !2190
  %12 = load i8*, i8** %4, align 8, !dbg !2191
  %13 = call i8* @File_FullPath(i8* %12), !dbg !2192
  store i8* %13, i8** %7, align 8, !dbg !2193
  %14 = load i8*, i8** %7, align 8, !dbg !2194
  %15 = icmp eq i8* %14, null, !dbg !2196
  br i1 %15, label %16, label %18, !dbg !2197

; <label>:16:                                     ; preds = %3
  %17 = load i8*, i8** %4, align 8, !dbg !2198
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.FileGetMaxOrSupportsFileSize, i32 0, i32 0), i8* %17), !dbg !2200
  br label %57, !dbg !2201

; <label>:18:                                     ; preds = %3
  %19 = call signext i8 @HostType_OSIsVMK(), !dbg !2202
  %20 = icmp ne i8 %19, 0, !dbg !2202
  br i1 %20, label %21, label %26, !dbg !2204

; <label>:21:                                     ; preds = %18
  %22 = load i8*, i8** %7, align 8, !dbg !2205
  %23 = load i64*, i64** %5, align 8, !dbg !2207
  %24 = load i8, i8* %6, align 1, !dbg !2208
  %25 = call signext i8 @FileVMKGetMaxOrSupportsFileSize(i8* %22, i64* %23, i8 signext %24), !dbg !2209
  store i8 %25, i8* %9, align 1, !dbg !2210
  br label %57, !dbg !2211

; <label>:26:                                     ; preds = %18
  %27 = load i8*, i8** %7, align 8, !dbg !2212
  %28 = call signext i8 @File_IsFile(i8* %27), !dbg !2214
  %29 = icmp ne i8 %28, 0, !dbg !2214
  br i1 %29, label %30, label %42, !dbg !2215

; <label>:30:                                     ; preds = %26
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2216, metadata !380), !dbg !2219
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor* %11, metadata !2220, metadata !380), !dbg !2230
  call void @FileIO_Invalidate(%struct.FileIODescriptor* %11), !dbg !2231
  %31 = load i8*, i8** %7, align 8, !dbg !2232
  %32 = call i32 @FileIO_Open(%struct.FileIODescriptor* %11, i8* %31, i32 1, i32 0), !dbg !2233
  store i32 %32, i32* %10, align 4, !dbg !2234
  %33 = load i32, i32* %10, align 4, !dbg !2235
  %34 = call signext i8 @FileIO_IsSuccess(i32 %33), !dbg !2237
  %35 = icmp ne i8 %34, 0, !dbg !2237
  br i1 %35, label %36, label %41, !dbg !2238

; <label>:36:                                     ; preds = %30
  %37 = load i64*, i64** %5, align 8, !dbg !2239
  %38 = load i8, i8* %6, align 1, !dbg !2241
  %39 = call signext i8 @FilePosixGetMaxOrSupportsFileSize(%struct.FileIODescriptor* %11, i64* %37, i8 signext %38), !dbg !2242
  store i8 %39, i8* %9, align 1, !dbg !2243
  %40 = call i32 @FileIO_Close(%struct.FileIODescriptor* %11), !dbg !2244
  br label %57, !dbg !2245

; <label>:41:                                     ; preds = %30
  br label %42, !dbg !2246

; <label>:42:                                     ; preds = %41, %26
  %43 = load i8*, i8** %4, align 8, !dbg !2247
  %44 = call signext i8 @File_IsDirectory(i8* %43), !dbg !2249
  %45 = icmp ne i8 %44, 0, !dbg !2249
  br i1 %45, label %46, label %49, !dbg !2250

; <label>:46:                                     ; preds = %42
  %47 = load i8*, i8** %7, align 8, !dbg !2251
  %48 = call i8* @Unicode_Duplicate(i8* %47), !dbg !2253
  store i8* %48, i8** %8, align 8, !dbg !2254
  br label %51, !dbg !2255

; <label>:49:                                     ; preds = %42
  store i8* null, i8** %8, align 8, !dbg !2256
  %50 = load i8*, i8** %7, align 8, !dbg !2258
  call void @File_SplitName(i8* %50, i8** null, i8** %8, i8** null), !dbg !2259
  br label %51

; <label>:51:                                     ; preds = %49, %46
  %52 = load i8*, i8** %8, align 8, !dbg !2260
  %53 = load i64*, i64** %5, align 8, !dbg !2261
  %54 = load i8, i8* %6, align 1, !dbg !2262
  %55 = call signext i8 @FilePosixCreateTestGetMaxOrSupportsFileSize(i8* %52, i64* %53, i8 signext %54), !dbg !2263
  store i8 %55, i8* %9, align 1, !dbg !2264
  %56 = load i8*, i8** %8, align 8, !dbg !2265
  call void @Posix_Free(i8* %56), !dbg !2266
  br label %57, !dbg !2266

; <label>:57:                                     ; preds = %51, %36, %21, %16
  %58 = load i8*, i8** %7, align 8, !dbg !2267
  call void @Posix_Free(i8* %58), !dbg !2268
  %59 = load i8, i8* %9, align 1, !dbg !2269
  ret i8 %59, !dbg !2270
}

; Function Attrs: nounwind uwtable
define internal signext i8 @FileVMKGetMaxOrSupportsFileSize(i8*, i64*, i8 signext) #0 !dbg !2271 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2272, metadata !380), !dbg !2273
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !2274, metadata !380), !dbg !2275
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2276, metadata !380), !dbg !2277
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.FileVMKGetMaxOrSupportsFileSize, i32 0, i32 0)), !dbg !2278
  ret i8 0, !dbg !2279
}

declare signext i8 @File_IsFile(i8*) #2

declare void @FileIO_Invalidate(%struct.FileIODescriptor*) #2

declare i32 @FileIO_Open(%struct.FileIODescriptor*, i8*, i32, i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @FileIO_IsSuccess(i32) #4 !dbg !2280 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2283, metadata !380), !dbg !2284
  %3 = load i32, i32* %2, align 4, !dbg !2285
  %4 = icmp eq i32 %3, 0, !dbg !2286
  %5 = zext i1 %4 to i32, !dbg !2286
  %6 = trunc i32 %5 to i8, !dbg !2285
  ret i8 %6, !dbg !2287
}

; Function Attrs: nounwind uwtable
define internal signext i8 @FilePosixGetMaxOrSupportsFileSize(%struct.FileIODescriptor*, i64*, i8 signext) #0 !dbg !2288 {
  %4 = alloca i8, align 1
  %5 = alloca %struct.FileIODescriptor*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.FileIODescriptor* %0, %struct.FileIODescriptor** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor** %5, metadata !2292, metadata !380), !dbg !2293
  store i64* %1, i64** %6, align 8
  call void @llvm.dbg.declare(metadata i64** %6, metadata !2294, metadata !380), !dbg !2295
  store i8 %2, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !2296, metadata !380), !dbg !2297
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2298, metadata !380), !dbg !2299
  store i64 0, i64* %8, align 8, !dbg !2299
  call void @llvm.dbg.declare(metadata i64* %9, metadata !2300, metadata !380), !dbg !2301
  %10 = load i8, i8* %7, align 1, !dbg !2302
  %11 = icmp ne i8 %10, 0, !dbg !2302
  br i1 %11, label %17, label %12, !dbg !2304

; <label>:12:                                     ; preds = %3
  %13 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %5, align 8, !dbg !2305
  %14 = load i64*, i64** %6, align 8, !dbg !2307
  %15 = load i64, i64* %14, align 8, !dbg !2308
  %16 = call signext i8 @FileIO_SupportsFileSize(%struct.FileIODescriptor* %13, i64 %15), !dbg !2309
  store i8 %16, i8* %4, align 1, !dbg !2310
  br label %39, !dbg !2310

; <label>:17:                                     ; preds = %3
  store i64 4611686018427387904, i64* %9, align 8, !dbg !2311
  br label %18, !dbg !2313

; <label>:18:                                     ; preds = %33, %17
  %19 = load i64, i64* %9, align 8, !dbg !2314
  %20 = icmp ne i64 %19, 0, !dbg !2317
  br i1 %20, label %21, label %36, !dbg !2318

; <label>:21:                                     ; preds = %18
  %22 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %5, align 8, !dbg !2319
  %23 = load i64, i64* %8, align 8, !dbg !2322
  %24 = load i64, i64* %9, align 8, !dbg !2323
  %25 = or i64 %23, %24, !dbg !2324
  %26 = call signext i8 @FileIO_SupportsFileSize(%struct.FileIODescriptor* %22, i64 %25), !dbg !2325
  %27 = icmp ne i8 %26, 0, !dbg !2325
  br i1 %27, label %28, label %32, !dbg !2326

; <label>:28:                                     ; preds = %21
  %29 = load i64, i64* %9, align 8, !dbg !2327
  %30 = load i64, i64* %8, align 8, !dbg !2329
  %31 = or i64 %30, %29, !dbg !2329
  store i64 %31, i64* %8, align 8, !dbg !2329
  br label %32, !dbg !2330

; <label>:32:                                     ; preds = %28, %21
  br label %33, !dbg !2331

; <label>:33:                                     ; preds = %32
  %34 = load i64, i64* %9, align 8, !dbg !2332
  %35 = lshr i64 %34, 1, !dbg !2332
  store i64 %35, i64* %9, align 8, !dbg !2332
  br label %18, !dbg !2334, !llvm.loop !2335

; <label>:36:                                     ; preds = %18
  %37 = load i64, i64* %8, align 8, !dbg !2337
  %38 = load i64*, i64** %6, align 8, !dbg !2338
  store i64 %37, i64* %38, align 8, !dbg !2339
  store i8 1, i8* %4, align 1, !dbg !2340
  br label %39, !dbg !2340

; <label>:39:                                     ; preds = %36, %12
  %40 = load i8, i8* %4, align 1, !dbg !2341
  ret i8 %40, !dbg !2341
}

declare i32 @FileIO_Close(%struct.FileIODescriptor*) #2

declare signext i8 @File_IsDirectory(i8*) #2

declare void @File_SplitName(i8*, i8**, i8**, i8**) #2

; Function Attrs: nounwind uwtable
define internal signext i8 @FilePosixCreateTestGetMaxOrSupportsFileSize(i8*, i64*, i8 signext) #0 !dbg !2342 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.FileIODescriptor, align 8
  %13 = alloca %struct.FileIODescriptor, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2343, metadata !380), !dbg !2344
  store i64* %1, i64** %6, align 8
  call void @llvm.dbg.declare(metadata i64** %6, metadata !2345, metadata !380), !dbg !2346
  store i8 %2, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !2347, metadata !380), !dbg !2348
  call void @llvm.dbg.declare(metadata i8* %8, metadata !2349, metadata !380), !dbg !2350
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2351, metadata !380), !dbg !2352
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2353, metadata !380), !dbg !2354
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2355, metadata !380), !dbg !2356
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor* %12, metadata !2357, metadata !380), !dbg !2358
  %14 = load i8*, i8** %5, align 8, !dbg !2359
  %15 = call i8* @Unicode_Append(i8* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i32 0, i32 0)), !dbg !2360
  store i8* %15, i8** %10, align 8, !dbg !2361
  %16 = load i8*, i8** %10, align 8, !dbg !2362
  %17 = call i32 @File_MakeSafeTemp(i8* %16, i8** %11), !dbg !2363
  store i32 %17, i32* %9, align 4, !dbg !2364
  %18 = load i8*, i8** %10, align 8, !dbg !2365
  call void @Posix_Free(i8* %18), !dbg !2366
  %19 = load i32, i32* %9, align 4, !dbg !2367
  %20 = icmp eq i32 %19, -1, !dbg !2369
  br i1 %20, label %21, label %23, !dbg !2370

; <label>:21:                                     ; preds = %3
  %22 = load i8*, i8** %5, align 8, !dbg !2371
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__func__.FilePosixCreateTestGetMaxOrSupportsFileSize, i32 0, i32 0), i8* %22), !dbg !2373
  store i8 0, i8* %4, align 1, !dbg !2374
  br label %35, !dbg !2374

; <label>:23:                                     ; preds = %3
  %24 = load i32, i32* %9, align 4, !dbg !2375
  call void @FileIO_CreateFDPosix(%struct.FileIODescriptor* sret %13, i32 %24, i32 2), !dbg !2376
  %25 = bitcast %struct.FileIODescriptor* %12 to i8*, !dbg !2376
  %26 = bitcast %struct.FileIODescriptor* %13 to i8*, !dbg !2376
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 24, i32 8, i1 false), !dbg !2377
  %27 = load i64*, i64** %6, align 8, !dbg !2379
  %28 = load i8, i8* %7, align 1, !dbg !2380
  %29 = call signext i8 @FilePosixGetMaxOrSupportsFileSize(%struct.FileIODescriptor* %12, i64* %27, i8 signext %28), !dbg !2381
  store i8 %29, i8* %8, align 1, !dbg !2382
  %30 = call i32 @FileIO_Close(%struct.FileIODescriptor* %12), !dbg !2383
  %31 = load i8*, i8** %11, align 8, !dbg !2384
  %32 = call i32 @File_Unlink(i8* %31), !dbg !2385
  %33 = load i8*, i8** %11, align 8, !dbg !2386
  call void @Posix_Free(i8* %33), !dbg !2387
  %34 = load i8, i8* %8, align 1, !dbg !2388
  store i8 %34, i8* %4, align 1, !dbg !2389
  br label %35, !dbg !2389

; <label>:35:                                     ; preds = %23, %21
  %36 = load i8, i8* %4, align 1, !dbg !2390
  ret i8 %36, !dbg !2390
}

; Function Attrs: nounwind uwtable
define signext i8 @File_GetMaxFileSize(i8*, i64*) #0 !dbg !2391 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2394, metadata !380), !dbg !2395
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !2396, metadata !380), !dbg !2397
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2398, metadata !380), !dbg !2399
  %7 = load i64*, i64** %5, align 8, !dbg !2400
  %8 = icmp eq i64* %7, null, !dbg !2402
  br i1 %8, label %9, label %10, !dbg !2403

; <label>:9:                                      ; preds = %2
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.File_GetMaxFileSize, i32 0, i32 0)), !dbg !2404
  store i8 0, i8* %3, align 1, !dbg !2406
  br label %25, !dbg !2406

; <label>:10:                                     ; preds = %2
  %11 = load i8*, i8** %4, align 8, !dbg !2407
  %12 = load i64*, i64** %5, align 8, !dbg !2408
  %13 = call signext i8 @FileGetMaxOrSupportsFileSize(i8* %11, i64* %12, i8 signext 1), !dbg !2409
  store i8 %13, i8* %6, align 1, !dbg !2410
  %14 = load i8, i8* %6, align 1, !dbg !2411
  %15 = icmp ne i8 %14, 0, !dbg !2411
  br i1 %15, label %16, label %23, !dbg !2413

; <label>:16:                                     ; preds = %10
  %17 = load i64*, i64** %5, align 8, !dbg !2414
  %18 = load i64, i64* %17, align 8, !dbg !2417
  %19 = icmp ugt i64 %18, 70368744177664, !dbg !2418
  br i1 %19, label %20, label %22, !dbg !2419

; <label>:20:                                     ; preds = %16
  %21 = load i64*, i64** %5, align 8, !dbg !2420
  store i64 70368744177664, i64* %21, align 8, !dbg !2422
  br label %22, !dbg !2423

; <label>:22:                                     ; preds = %20, %16
  br label %23, !dbg !2424

; <label>:23:                                     ; preds = %22, %10
  %24 = load i8, i8* %6, align 1, !dbg !2425
  store i8 %24, i8* %3, align 1, !dbg !2426
  br label %25, !dbg !2426

; <label>:25:                                     ; preds = %23, %9
  %26 = load i8, i8* %3, align 1, !dbg !2427
  ret i8 %26, !dbg !2427
}

; Function Attrs: nounwind uwtable
define signext i8 @File_SupportsFileSize(i8*, i64) #0 !dbg !2428 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2431, metadata !380), !dbg !2432
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2433, metadata !380), !dbg !2434
  %6 = load i64, i64* %5, align 8, !dbg !2435
  %7 = icmp ule i64 %6, 2147483647, !dbg !2437
  br i1 %7, label %8, label %9, !dbg !2438

; <label>:8:                                      ; preds = %2
  store i8 1, i8* %3, align 1, !dbg !2439
  br label %16, !dbg !2439

; <label>:9:                                      ; preds = %2
  %10 = load i64, i64* %5, align 8, !dbg !2441
  %11 = icmp ugt i64 %10, 70368744177664, !dbg !2443
  br i1 %11, label %12, label %13, !dbg !2444

; <label>:12:                                     ; preds = %9
  store i8 0, i8* %3, align 1, !dbg !2445
  br label %16, !dbg !2445

; <label>:13:                                     ; preds = %9
  %14 = load i8*, i8** %4, align 8, !dbg !2447
  %15 = call signext i8 @FileGetMaxOrSupportsFileSize(i8* %14, i64* %5, i8 signext 0), !dbg !2448
  store i8 %15, i8* %3, align 1, !dbg !2449
  br label %16, !dbg !2449

; <label>:16:                                     ; preds = %13, %12, %8
  %17 = load i8, i8* %3, align 1, !dbg !2450
  ret i8 %17, !dbg !2450
}

; Function Attrs: nounwind uwtable
define i32 @FileCreateDirectory(i8*, i32) #0 !dbg !2451 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2454, metadata !380), !dbg !2455
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2456, metadata !380), !dbg !2457
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2458, metadata !380), !dbg !2459
  %6 = load i8*, i8** %3, align 8, !dbg !2460
  %7 = icmp eq i8* %6, null, !dbg !2462
  br i1 %7, label %8, label %10, !dbg !2463

; <label>:8:                                      ; preds = %2
  %9 = call i32* @__errno_location() #1, !dbg !2464
  store i32 14, i32* %9, align 4, !dbg !2466
  store i32 14, i32* %5, align 4, !dbg !2467
  br label %21, !dbg !2468

; <label>:10:                                     ; preds = %2
  %11 = load i8*, i8** %3, align 8, !dbg !2469
  %12 = load i32, i32* %4, align 4, !dbg !2471
  %13 = call i32 @Posix_Mkdir(i8* %11, i32 %12), !dbg !2472
  %14 = icmp eq i32 %13, -1, !dbg !2473
  br i1 %14, label %15, label %18, !dbg !2474

; <label>:15:                                     ; preds = %10
  %16 = call i32* @__errno_location() #1, !dbg !2475
  %17 = load i32, i32* %16, align 4, !dbg !2477
  br label %19, !dbg !2478

; <label>:18:                                     ; preds = %10
  br label %19, !dbg !2479

; <label>:19:                                     ; preds = %18, %15
  %20 = phi i32 [ %17, %15 ], [ 0, %18 ], !dbg !2481
  store i32 %20, i32* %5, align 4, !dbg !2483
  br label %21

; <label>:21:                                     ; preds = %19, %8
  %22 = load i32, i32* %5, align 4, !dbg !2484
  ret i32 %22, !dbg !2485
}

declare i32 @Posix_Mkdir(i8*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @File_ListDirectory(i8*, i8***) #0 !dbg !2486 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8***, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.__dirstream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.HashTable*, align 8
  %10 = alloca %struct.dirent*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.DynBuf, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2490, metadata !380), !dbg !2491
  store i8*** %1, i8**** %5, align 8
  call void @llvm.dbg.declare(metadata i8**** %5, metadata !2492, metadata !380), !dbg !2493
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2494, metadata !380), !dbg !2495
  call void @llvm.dbg.declare(metadata %struct.__dirstream** %7, metadata !2496, metadata !380), !dbg !2501
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2502, metadata !380), !dbg !2503
  call void @llvm.dbg.declare(metadata %struct.HashTable** %9, metadata !2504, metadata !380), !dbg !2509
  %13 = load i8*, i8** %4, align 8, !dbg !2510
  %14 = call %struct.__dirstream* @Posix_OpenDir(i8* %13), !dbg !2511
  store %struct.__dirstream* %14, %struct.__dirstream** %7, align 8, !dbg !2512
  %15 = load %struct.__dirstream*, %struct.__dirstream** %7, align 8, !dbg !2513
  %16 = icmp eq %struct.__dirstream* %15, null, !dbg !2515
  br i1 %16, label %17, label %18, !dbg !2516

; <label>:17:                                     ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !2517
  br label %109, !dbg !2517

; <label>:18:                                     ; preds = %2
  %19 = call %struct.HashTable* @HashTable_Alloc(i32 256, i32 0, void (i8*)* null), !dbg !2519
  store %struct.HashTable* %19, %struct.HashTable** %9, align 8, !dbg !2520
  store i32 0, i32* %8, align 4, !dbg !2521
  br label %20, !dbg !2522

; <label>:20:                                     ; preds = %18, %41, %79
  call void @llvm.dbg.declare(metadata %struct.dirent** %10, metadata !2523, metadata !380), !dbg !2539
  %21 = call i32* @__errno_location() #1, !dbg !2540
  store i32 0, i32* %21, align 4, !dbg !2541
  %22 = load %struct.__dirstream*, %struct.__dirstream** %7, align 8, !dbg !2542
  %23 = call %struct.dirent* @readdir64(%struct.__dirstream* %22), !dbg !2543
  store %struct.dirent* %23, %struct.dirent** %10, align 8, !dbg !2544
  %24 = load %struct.dirent*, %struct.dirent** %10, align 8, !dbg !2545
  %25 = icmp eq %struct.dirent* %24, null, !dbg !2547
  br i1 %25, label %26, label %29, !dbg !2548

; <label>:26:                                     ; preds = %20
  %27 = call i32* @__errno_location() #1, !dbg !2549
  %28 = load i32, i32* %27, align 4, !dbg !2551
  store i32 %28, i32* %6, align 4, !dbg !2552
  br label %80, !dbg !2553

; <label>:29:                                     ; preds = %20
  %30 = load %struct.dirent*, %struct.dirent** %10, align 8, !dbg !2554
  %31 = getelementptr inbounds %struct.dirent, %struct.dirent* %30, i32 0, i32 4, !dbg !2556
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %31, i32 0, i32 0, !dbg !2554
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)) #9, !dbg !2557
  %34 = icmp eq i32 %33, 0, !dbg !2558
  br i1 %34, label %41, label %35, !dbg !2559

; <label>:35:                                     ; preds = %29
  %36 = load %struct.dirent*, %struct.dirent** %10, align 8, !dbg !2560
  %37 = getelementptr inbounds %struct.dirent, %struct.dirent* %36, i32 0, i32 4, !dbg !2561
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %37, i32 0, i32 0, !dbg !2560
  %39 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0)) #9, !dbg !2562
  %40 = icmp eq i32 %39, 0, !dbg !2563
  br i1 %40, label %41, label %42, !dbg !2564

; <label>:41:                                     ; preds = %35, %29
  br label %20, !dbg !2566, !llvm.loop !2568

; <label>:42:                                     ; preds = %35
  %43 = load i8***, i8**** %5, align 8, !dbg !2569
  %44 = icmp ne i8*** %43, null, !dbg !2569
  br i1 %44, label %45, label %76, !dbg !2571

; <label>:45:                                     ; preds = %42
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2572, metadata !380), !dbg !2574
  %46 = load %struct.dirent*, %struct.dirent** %10, align 8, !dbg !2575
  %47 = getelementptr inbounds %struct.dirent, %struct.dirent* %46, i32 0, i32 4, !dbg !2577
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* %47, i32 0, i32 0, !dbg !2575
  %49 = call signext i8 @Unicode_IsBufferValid(i8* %48, i64 -1, i32 -1), !dbg !2578
  %50 = icmp ne i8 %49, 0, !dbg !2578
  br i1 %50, label %51, label %56, !dbg !2579

; <label>:51:                                     ; preds = %45
  %52 = load %struct.dirent*, %struct.dirent** %10, align 8, !dbg !2580
  %53 = getelementptr inbounds %struct.dirent, %struct.dirent* %52, i32 0, i32 4, !dbg !2582
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %53, i32 0, i32 0, !dbg !2580
  %55 = call i8* @Unicode_Alloc(i8* %54, i32 -1), !dbg !2583
  store i8* %55, i8** %11, align 8, !dbg !2584
  br label %65, !dbg !2585

; <label>:56:                                     ; preds = %45
  %57 = load %struct.dirent*, %struct.dirent** %10, align 8, !dbg !2586
  %58 = getelementptr inbounds %struct.dirent, %struct.dirent* %57, i32 0, i32 4, !dbg !2588
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* %58, i32 0, i32 0, !dbg !2586
  %60 = call i8* @Unicode_EscapeBuffer(i8* %59, i64 -1, i32 -1), !dbg !2589
  store i8* %60, i8** %11, align 8, !dbg !2590
  %61 = load i8*, i8** %4, align 8, !dbg !2591
  %62 = load i8*, i8** %11, align 8, !dbg !2592
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.File_ListDirectory, i32 0, i32 0), i8* %61, i8* %62), !dbg !2593
  %63 = load i8*, i8** %11, align 8, !dbg !2594
  call void @Posix_Free(i8* %63), !dbg !2595
  %64 = call i8* @Unicode_Duplicate(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0)), !dbg !2596
  store i8* %64, i8** %11, align 8, !dbg !2597
  br label %65

; <label>:65:                                     ; preds = %56, %51
  %66 = load %struct.HashTable*, %struct.HashTable** %9, align 8, !dbg !2598
  %67 = load i8*, i8** %11, align 8, !dbg !2600
  %68 = call signext i8 @HashTable_Insert(%struct.HashTable* %66, i8* %67, i8* null), !dbg !2601
  %69 = icmp ne i8 %68, 0, !dbg !2601
  br i1 %69, label %70, label %73, !dbg !2602

; <label>:70:                                     ; preds = %65
  %71 = load i32, i32* %8, align 4, !dbg !2603
  %72 = add nsw i32 %71, 1, !dbg !2603
  store i32 %72, i32* %8, align 4, !dbg !2603
  br label %75, !dbg !2605

; <label>:73:                                     ; preds = %65
  %74 = load i8*, i8** %11, align 8, !dbg !2606
  call void @Posix_Free(i8* %74), !dbg !2608
  br label %75

; <label>:75:                                     ; preds = %73, %70
  br label %79, !dbg !2609

; <label>:76:                                     ; preds = %42
  %77 = load i32, i32* %8, align 4, !dbg !2610
  %78 = add nsw i32 %77, 1, !dbg !2610
  store i32 %78, i32* %8, align 4, !dbg !2610
  br label %79

; <label>:79:                                     ; preds = %76, %75
  br label %20, !dbg !2612, !llvm.loop !2568

; <label>:80:                                     ; preds = %26
  %81 = load %struct.__dirstream*, %struct.__dirstream** %7, align 8, !dbg !2614
  %82 = call i32 @closedir(%struct.__dirstream* %81), !dbg !2615
  %83 = load i8***, i8**** %5, align 8, !dbg !2616
  %84 = icmp ne i8*** %83, null, !dbg !2616
  br i1 %84, label %85, label %99, !dbg !2618

; <label>:85:                                     ; preds = %80
  %86 = load i32, i32* %6, align 4, !dbg !2619
  %87 = icmp eq i32 %86, 0, !dbg !2622
  br i1 %87, label %88, label %95, !dbg !2623

; <label>:88:                                     ; preds = %85
  call void @llvm.dbg.declare(metadata %struct.DynBuf* %12, metadata !2624, metadata !380), !dbg !2633
  call void @DynBuf_Init(%struct.DynBuf* %12), !dbg !2634
  %89 = load %struct.HashTable*, %struct.HashTable** %9, align 8, !dbg !2635
  %90 = bitcast %struct.DynBuf* %12 to i8*, !dbg !2636
  %91 = call i32 @HashTable_ForEach(%struct.HashTable* %89, i32 (i8*, i8*, i8*)* @FileUnique, i8* %90), !dbg !2637
  %92 = call i8* @DynBuf_Detach(%struct.DynBuf* %12), !dbg !2638
  %93 = bitcast i8* %92 to i8**, !dbg !2638
  %94 = load i8***, i8**** %5, align 8, !dbg !2639
  store i8** %93, i8*** %94, align 8, !dbg !2640
  call void @DynBuf_Destroy(%struct.DynBuf* %12), !dbg !2641
  br label %98, !dbg !2642

; <label>:95:                                     ; preds = %85
  %96 = load %struct.HashTable*, %struct.HashTable** %9, align 8, !dbg !2643
  %97 = call i32 @HashTable_ForEach(%struct.HashTable* %96, i32 (i8*, i8*, i8*)* @FileKeyDispose, i8* null), !dbg !2645
  br label %98

; <label>:98:                                     ; preds = %95, %88
  br label %99, !dbg !2646

; <label>:99:                                     ; preds = %98, %80
  %100 = load %struct.HashTable*, %struct.HashTable** %9, align 8, !dbg !2647
  call void @HashTable_Free(%struct.HashTable* %100), !dbg !2648
  %101 = load i32, i32* %6, align 4, !dbg !2649
  %102 = call i32* @__errno_location() #1, !dbg !2650
  store i32 %101, i32* %102, align 4, !dbg !2651
  %103 = icmp eq i32 %101, 0, !dbg !2652
  br i1 %103, label %104, label %106, !dbg !2653

; <label>:104:                                    ; preds = %99
  %105 = load i32, i32* %8, align 4, !dbg !2654
  br label %107, !dbg !2655

; <label>:106:                                    ; preds = %99
  br label %107, !dbg !2656

; <label>:107:                                    ; preds = %106, %104
  %108 = phi i32 [ %105, %104 ], [ -1, %106 ], !dbg !2658
  store i32 %108, i32* %3, align 4, !dbg !2660
  br label %109, !dbg !2660

; <label>:109:                                    ; preds = %107, %17
  %110 = load i32, i32* %3, align 4, !dbg !2661
  ret i32 %110, !dbg !2661
}

declare %struct.__dirstream* @Posix_OpenDir(i8*) #2

declare %struct.HashTable* @HashTable_Alloc(i32, i32, void (i8*)*) #2

declare %struct.dirent* @readdir64(%struct.__dirstream*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #6

declare signext i8 @Unicode_IsBufferValid(i8*, i64, i32) #2

declare i8* @Unicode_EscapeBuffer(i8*, i64, i32) #2

declare signext i8 @HashTable_Insert(%struct.HashTable*, i8*, i8*) #2

declare i32 @closedir(%struct.__dirstream*) #2

declare void @DynBuf_Init(%struct.DynBuf*) #2

declare i32 @HashTable_ForEach(%struct.HashTable*, i32 (i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @FileUnique(i8*, i8*, i8*) #0 !dbg !2662 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.DynBuf*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2665, metadata !380), !dbg !2666
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2667, metadata !380), !dbg !2668
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2669, metadata !380), !dbg !2670
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %7, metadata !2671, metadata !380), !dbg !2673
  %8 = load i8*, i8** %6, align 8, !dbg !2674
  %9 = bitcast i8* %8 to %struct.DynBuf*, !dbg !2674
  store %struct.DynBuf* %9, %struct.DynBuf** %7, align 8, !dbg !2673
  %10 = load %struct.DynBuf*, %struct.DynBuf** %7, align 8, !dbg !2675
  %11 = bitcast i8** %4 to i8*, !dbg !2676
  %12 = call signext i8 @DynBuf_Append(%struct.DynBuf* %10, i8* %11, i64 8), !dbg !2677
  ret i32 0, !dbg !2678
}

declare i8* @DynBuf_Detach(%struct.DynBuf*) #2

declare void @DynBuf_Destroy(%struct.DynBuf*) #2

; Function Attrs: nounwind uwtable
define internal i32 @FileKeyDispose(i8*, i8*, i8*) #0 !dbg !2679 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2680, metadata !380), !dbg !2681
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2682, metadata !380), !dbg !2683
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2684, metadata !380), !dbg !2685
  %7 = load i8*, i8** %4, align 8, !dbg !2686
  call void @Posix_Free(i8* %7), !dbg !2687
  ret i32 0, !dbg !2688
}

declare void @HashTable_Free(%struct.HashTable*) #2

; Function Attrs: nounwind uwtable
define void @File_WalkDirectoryEnd(%struct.WalkDirContextImpl*) #0 !dbg !2689 {
  %2 = alloca %struct.WalkDirContextImpl*, align 8
  store %struct.WalkDirContextImpl* %0, %struct.WalkDirContextImpl** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.WalkDirContextImpl** %2, metadata !2701, metadata !380), !dbg !2702
  %3 = load %struct.WalkDirContextImpl*, %struct.WalkDirContextImpl** %2, align 8, !dbg !2703
  %4 = icmp ne %struct.WalkDirContextImpl* %3, null, !dbg !2705
  br i1 %4, label %5, label %21, !dbg !2706

; <label>:5:                                      ; preds = %1
  %6 = load %struct.WalkDirContextImpl*, %struct.WalkDirContextImpl** %2, align 8, !dbg !2707
  %7 = getelementptr inbounds %struct.WalkDirContextImpl, %struct.WalkDirContextImpl* %6, i32 0, i32 0, !dbg !2710
  %8 = load i32, i32* %7, align 8, !dbg !2710
  %9 = icmp sgt i32 %8, 0, !dbg !2711
  br i1 %9, label %10, label %18, !dbg !2712

; <label>:10:                                     ; preds = %5
  %11 = load %struct.WalkDirContextImpl*, %struct.WalkDirContextImpl** %2, align 8, !dbg !2713
  %12 = getelementptr inbounds %struct.WalkDirContextImpl, %struct.WalkDirContextImpl* %11, i32 0, i32 2, !dbg !2715
  %13 = load i8**, i8*** %12, align 8, !dbg !2715
  %14 = load %struct.WalkDirContextImpl*, %struct.WalkDirContextImpl** %2, align 8, !dbg !2716
  %15 = getelementptr inbounds %struct.WalkDirContextImpl, %struct.WalkDirContextImpl* %14, i32 0, i32 0, !dbg !2717
  %16 = load i32, i32* %15, align 8, !dbg !2717
  %17 = sext i32 %16 to i64, !dbg !2716
  call void @Util_FreeStringList(i8** %13, i64 %17), !dbg !2718
  br label %18, !dbg !2719

; <label>:18:                                     ; preds = %10, %5
  %19 = load %struct.WalkDirContextImpl*, %struct.WalkDirContextImpl** %2, align 8, !dbg !2720
  %20 = bitcast %struct.WalkDirContextImpl* %19 to i8*, !dbg !2720
  call void @Posix_Free(i8* %20), !dbg !2721
  br label %21, !dbg !2722

; <label>:21:                                     ; preds = %18, %1
  ret void, !dbg !2723
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Util_FreeStringList(i8**, i64) #4 !dbg !2724 {
  %3 = alloca i8**, align 8
  %4 = alloca i64, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !2730, metadata !380), !dbg !2731
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2732, metadata !380), !dbg !2733
  %5 = load i8**, i8*** %3, align 8, !dbg !2734
  %6 = load i64, i64* %4, align 8, !dbg !2735
  call void @Util_FreeList(i8** %5, i64 %6), !dbg !2736
  ret void, !dbg !2737
}

; Function Attrs: nounwind uwtable
define %struct.WalkDirContextImpl* @File_WalkDirectoryStart(i8*) #0 !dbg !2738 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.WalkDirContextImpl*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2741, metadata !380), !dbg !2742
  call void @llvm.dbg.declare(metadata %struct.WalkDirContextImpl** %3, metadata !2743, metadata !380), !dbg !2744
  %4 = call noalias i8* @malloc(i64 16) #8, !dbg !2745
  %5 = bitcast i8* %4 to %struct.WalkDirContextImpl*, !dbg !2745
  store %struct.WalkDirContextImpl* %5, %struct.WalkDirContextImpl** %3, align 8, !dbg !2744
  %6 = load %struct.WalkDirContextImpl*, %struct.WalkDirContextImpl** %3, align 8, !dbg !2746
  %7 = icmp ne %struct.WalkDirContextImpl* %6, null, !dbg !2748
  br i1 %7, label %8, label %26, !dbg !2749

; <label>:8:                                      ; preds = %1
  %9 = load %struct.WalkDirContextImpl*, %struct.WalkDirContextImpl** %3, align 8, !dbg !2750
  %10 = getelementptr inbounds %struct.WalkDirContextImpl, %struct.WalkDirContextImpl* %9, i32 0, i32 2, !dbg !2752
  store i8** null, i8*** %10, align 8, !dbg !2753
  %11 = load %struct.WalkDirContextImpl*, %struct.WalkDirContextImpl** %3, align 8, !dbg !2754
  %12 = getelementptr inbounds %struct.WalkDirContextImpl, %struct.WalkDirContextImpl* %11, i32 0, i32 1, !dbg !2755
  store i32 0, i32* %12, align 4, !dbg !2756
  %13 = load i8*, i8** %2, align 8, !dbg !2757
  %14 = load %struct.WalkDirContextImpl*, %struct.WalkDirContextImpl** %3, align 8, !dbg !2758
  %15 = getelementptr inbounds %struct.WalkDirContextImpl, %struct.WalkDirContextImpl* %14, i32 0, i32 2, !dbg !2759
  %16 = call i32 @File_ListDirectory(i8* %13, i8*** %15), !dbg !2760
  %17 = load %struct.WalkDirContextImpl*, %struct.WalkDirContextImpl** %3, align 8, !dbg !2761
  %18 = getelementptr inbounds %struct.WalkDirContextImpl, %struct.WalkDirContextImpl* %17, i32 0, i32 0, !dbg !2762
  store i32 %16, i32* %18, align 8, !dbg !2763
  %19 = load %struct.WalkDirContextImpl*, %struct.WalkDirContextImpl** %3, align 8, !dbg !2764
  %20 = getelementptr inbounds %struct.WalkDirContextImpl, %struct.WalkDirContextImpl* %19, i32 0, i32 0, !dbg !2766
  %21 = load i32, i32* %20, align 8, !dbg !2766
  %22 = icmp eq i32 %21, -1, !dbg !2767
  br i1 %22, label %23, label %25, !dbg !2768

; <label>:23:                                     ; preds = %8
  %24 = load %struct.WalkDirContextImpl*, %struct.WalkDirContextImpl** %3, align 8, !dbg !2769
  call void @File_WalkDirectoryEnd(%struct.WalkDirContextImpl* %24), !dbg !2771
  store %struct.WalkDirContextImpl* null, %struct.WalkDirContextImpl** %3, align 8, !dbg !2772
  br label %25, !dbg !2773

; <label>:25:                                     ; preds = %23, %8
  br label %26, !dbg !2774

; <label>:26:                                     ; preds = %25, %1
  %27 = load %struct.WalkDirContextImpl*, %struct.WalkDirContextImpl** %3, align 8, !dbg !2775
  ret %struct.WalkDirContextImpl* %27, !dbg !2776
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #5

; Function Attrs: nounwind uwtable
define signext i8 @File_WalkDirectoryNext(%struct.WalkDirContextImpl*, i8**) #0 !dbg !2777 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.WalkDirContextImpl*, align 8
  %5 = alloca i8**, align 8
  store %struct.WalkDirContextImpl* %0, %struct.WalkDirContextImpl** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.WalkDirContextImpl** %4, metadata !2780, metadata !380), !dbg !2781
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !2782, metadata !380), !dbg !2783
  %6 = call i32* @__errno_location() #1, !dbg !2784
  store i32 0, i32* %6, align 4, !dbg !2785
  %7 = load %struct.WalkDirContextImpl*, %struct.WalkDirContextImpl** %4, align 8, !dbg !2786
  %8 = getelementptr inbounds %struct.WalkDirContextImpl, %struct.WalkDirContextImpl* %7, i32 0, i32 1, !dbg !2788
  %9 = load i32, i32* %8, align 4, !dbg !2788
  %10 = load %struct.WalkDirContextImpl*, %struct.WalkDirContextImpl** %4, align 8, !dbg !2789
  %11 = getelementptr inbounds %struct.WalkDirContextImpl, %struct.WalkDirContextImpl* %10, i32 0, i32 0, !dbg !2790
  %12 = load i32, i32* %11, align 8, !dbg !2790
  %13 = icmp slt i32 %9, %12, !dbg !2791
  br i1 %13, label %14, label %27, !dbg !2792

; <label>:14:                                     ; preds = %2
  %15 = load %struct.WalkDirContextImpl*, %struct.WalkDirContextImpl** %4, align 8, !dbg !2793
  %16 = getelementptr inbounds %struct.WalkDirContextImpl, %struct.WalkDirContextImpl* %15, i32 0, i32 1, !dbg !2795
  %17 = load i32, i32* %16, align 4, !dbg !2796
  %18 = add nsw i32 %17, 1, !dbg !2796
  store i32 %18, i32* %16, align 4, !dbg !2796
  %19 = sext i32 %17 to i64, !dbg !2797
  %20 = load %struct.WalkDirContextImpl*, %struct.WalkDirContextImpl** %4, align 8, !dbg !2797
  %21 = getelementptr inbounds %struct.WalkDirContextImpl, %struct.WalkDirContextImpl* %20, i32 0, i32 2, !dbg !2798
  %22 = load i8**, i8*** %21, align 8, !dbg !2798
  %23 = getelementptr inbounds i8*, i8** %22, i64 %19, !dbg !2797
  %24 = load i8*, i8** %23, align 8, !dbg !2797
  %25 = call i8* @UtilSafeStrdup0(i8* %24), !dbg !2799
  %26 = load i8**, i8*** %5, align 8, !dbg !2800
  store i8* %25, i8** %26, align 8, !dbg !2801
  store i8 1, i8* %3, align 1, !dbg !2802
  br label %28, !dbg !2802

; <label>:27:                                     ; preds = %2
  store i8 0, i8* %3, align 1, !dbg !2803
  br label %28, !dbg !2803

; <label>:28:                                     ; preds = %27, %14
  %29 = load i8, i8* %3, align 1, !dbg !2804
  ret i8 %29, !dbg !2804
}

; Function Attrs: nounwind uwtable
define signext i8 @FileIsWritableDir(i8*) #0 !dbg !2805 {
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.FileData, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2806, metadata !380), !dbg !2807
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2808, metadata !380), !dbg !2809
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2810, metadata !380), !dbg !2812
  call void @llvm.dbg.declare(metadata %struct.FileData* %6, metadata !2813, metadata !380), !dbg !2814
  %7 = load i8*, i8** %3, align 8, !dbg !2815
  %8 = call i32 @FileAttributes(i8* %7, %struct.FileData* %6), !dbg !2816
  store i32 %8, i32* %4, align 4, !dbg !2817
  %9 = load i32, i32* %4, align 4, !dbg !2818
  %10 = icmp ne i32 %9, 0, !dbg !2820
  br i1 %10, label %15, label %11, !dbg !2821

; <label>:11:                                     ; preds = %1
  %12 = getelementptr inbounds %struct.FileData, %struct.FileData* %6, i32 0, i32 4, !dbg !2822
  %13 = load i32, i32* %12, align 8, !dbg !2822
  %14 = icmp ne i32 %13, 1, !dbg !2824
  br i1 %14, label %15, label %16, !dbg !2825

; <label>:15:                                     ; preds = %11, %1
  store i8 0, i8* %2, align 1, !dbg !2826
  br label %47, !dbg !2826

; <label>:16:                                     ; preds = %11
  %17 = call i32 @geteuid() #8, !dbg !2828
  store i32 %17, i32* %5, align 4, !dbg !2829
  %18 = load i32, i32* %5, align 4, !dbg !2830
  %19 = icmp eq i32 %18, 0, !dbg !2832
  br i1 %19, label %20, label %21, !dbg !2833

; <label>:20:                                     ; preds = %16
  store i8 1, i8* %2, align 1, !dbg !2834
  br label %47, !dbg !2834

; <label>:21:                                     ; preds = %16
  %22 = getelementptr inbounds %struct.FileData, %struct.FileData* %6, i32 0, i32 6, !dbg !2836
  %23 = load i32, i32* %22, align 8, !dbg !2836
  %24 = load i32, i32* %5, align 4, !dbg !2838
  %25 = icmp eq i32 %23, %24, !dbg !2839
  br i1 %25, label %26, label %30, !dbg !2840

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.FileData, %struct.FileData* %6, i32 0, i32 5, !dbg !2841
  %28 = load i32, i32* %27, align 4, !dbg !2843
  %29 = ashr i32 %28, 6, !dbg !2843
  store i32 %29, i32* %27, align 4, !dbg !2843
  br label %40, !dbg !2844

; <label>:30:                                     ; preds = %21
  %31 = getelementptr inbounds %struct.FileData, %struct.FileData* %6, i32 0, i32 7, !dbg !2845
  %32 = load i32, i32* %31, align 4, !dbg !2845
  %33 = call signext i8 @FileIsGroupsMember(i32 %32), !dbg !2848
  %34 = icmp ne i8 %33, 0, !dbg !2848
  br i1 %34, label %35, label %39, !dbg !2848

; <label>:35:                                     ; preds = %30
  %36 = getelementptr inbounds %struct.FileData, %struct.FileData* %6, i32 0, i32 5, !dbg !2849
  %37 = load i32, i32* %36, align 4, !dbg !2851
  %38 = ashr i32 %37, 3, !dbg !2851
  store i32 %38, i32* %36, align 4, !dbg !2851
  br label %39, !dbg !2852

; <label>:39:                                     ; preds = %35, %30
  br label %40

; <label>:40:                                     ; preds = %39, %26
  %41 = getelementptr inbounds %struct.FileData, %struct.FileData* %6, i32 0, i32 5, !dbg !2853
  %42 = load i32, i32* %41, align 4, !dbg !2853
  %43 = and i32 %42, 3, !dbg !2854
  %44 = icmp eq i32 %43, 3, !dbg !2855
  %45 = zext i1 %44 to i32, !dbg !2855
  %46 = trunc i32 %45 to i8, !dbg !2856
  store i8 %46, i8* %2, align 1, !dbg !2857
  br label %47, !dbg !2857

; <label>:47:                                     ; preds = %40, %20, %15
  %48 = load i8, i8* %2, align 1, !dbg !2858
  ret i8 %48, !dbg !2858
}

; Function Attrs: nounwind
declare i32 @geteuid() #5

; Function Attrs: nounwind uwtable
define internal signext i8 @FileIsGroupsMember(i32) #0 !dbg !2859 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2863, metadata !380), !dbg !2864
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2865, metadata !380), !dbg !2866
  call void @llvm.dbg.declare(metadata i32** %4, metadata !2867, metadata !380), !dbg !2869
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2870, metadata !380), !dbg !2871
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2872, metadata !380), !dbg !2873
  store i32* null, i32** %4, align 8, !dbg !2874
  store i32 0, i32* %3, align 4, !dbg !2875
  br label %8, !dbg !2876

; <label>:8:                                      ; preds = %31, %1
  call void @llvm.dbg.declare(metadata i32** %7, metadata !2877, metadata !380), !dbg !2881
  %9 = load i32, i32* %3, align 4, !dbg !2882
  %10 = load i32*, i32** %4, align 8, !dbg !2883
  %11 = call i32 @getgroups(i32 %9, i32* %10) #8, !dbg !2884
  store i32 %11, i32* %5, align 4, !dbg !2885
  %12 = load i32, i32* %5, align 4, !dbg !2886
  %13 = icmp eq i32 %12, -1, !dbg !2888
  br i1 %13, label %14, label %15, !dbg !2889

; <label>:14:                                     ; preds = %8
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.FileIsGroupsMember, i32 0, i32 0)), !dbg !2890
  store i32 0, i32* %6, align 4, !dbg !2892
  br label %53, !dbg !2893

; <label>:15:                                     ; preds = %8
  %16 = load i32, i32* %5, align 4, !dbg !2894
  %17 = load i32, i32* %3, align 4, !dbg !2896
  %18 = icmp eq i32 %16, %17, !dbg !2897
  br i1 %18, label %19, label %20, !dbg !2898

; <label>:19:                                     ; preds = %15
  br label %34, !dbg !2899

; <label>:20:                                     ; preds = %15
  %21 = load i32*, i32** %4, align 8, !dbg !2901
  %22 = bitcast i32* %21 to i8*, !dbg !2901
  %23 = load i32, i32* %5, align 4, !dbg !2902
  %24 = sext i32 %23 to i64, !dbg !2902
  %25 = mul i64 %24, 4, !dbg !2903
  %26 = call i8* @realloc(i8* %22, i64 %25) #8, !dbg !2904
  %27 = bitcast i8* %26 to i32*, !dbg !2904
  store i32* %27, i32** %7, align 8, !dbg !2905
  %28 = load i32*, i32** %7, align 8, !dbg !2906
  %29 = icmp eq i32* %28, null, !dbg !2908
  br i1 %29, label %30, label %31, !dbg !2909

; <label>:30:                                     ; preds = %20
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.FileIsGroupsMember, i32 0, i32 0)), !dbg !2910
  store i32 0, i32* %6, align 4, !dbg !2912
  br label %53, !dbg !2913

; <label>:31:                                     ; preds = %20
  %32 = load i32*, i32** %7, align 8, !dbg !2914
  store i32* %32, i32** %4, align 8, !dbg !2915
  %33 = load i32, i32* %5, align 4, !dbg !2916
  store i32 %33, i32* %3, align 4, !dbg !2917
  br label %8, !dbg !2918, !llvm.loop !2920

; <label>:34:                                     ; preds = %19
  store i32 0, i32* %5, align 4, !dbg !2921
  br label %35, !dbg !2923

; <label>:35:                                     ; preds = %49, %34
  %36 = load i32, i32* %5, align 4, !dbg !2924
  %37 = load i32, i32* %3, align 4, !dbg !2927
  %38 = icmp slt i32 %36, %37, !dbg !2928
  br i1 %38, label %39, label %52, !dbg !2929

; <label>:39:                                     ; preds = %35
  %40 = load i32, i32* %5, align 4, !dbg !2930
  %41 = sext i32 %40 to i64, !dbg !2933
  %42 = load i32*, i32** %4, align 8, !dbg !2933
  %43 = getelementptr inbounds i32, i32* %42, i64 %41, !dbg !2933
  %44 = load i32, i32* %43, align 4, !dbg !2933
  %45 = load i32, i32* %2, align 4, !dbg !2934
  %46 = icmp eq i32 %44, %45, !dbg !2935
  br i1 %46, label %47, label %48, !dbg !2936

; <label>:47:                                     ; preds = %39
  store i32 1, i32* %6, align 4, !dbg !2937
  br label %53, !dbg !2939

; <label>:48:                                     ; preds = %39
  br label %49, !dbg !2940

; <label>:49:                                     ; preds = %48
  %50 = load i32, i32* %5, align 4, !dbg !2941
  %51 = add nsw i32 %50, 1, !dbg !2941
  store i32 %51, i32* %5, align 4, !dbg !2941
  br label %35, !dbg !2943, !llvm.loop !2944

; <label>:52:                                     ; preds = %35
  store i32 0, i32* %6, align 4, !dbg !2946
  br label %53, !dbg !2947

; <label>:53:                                     ; preds = %52, %47, %30, %14
  %54 = load i32*, i32** %4, align 8, !dbg !2948
  %55 = bitcast i32* %54 to i8*, !dbg !2948
  call void @Posix_Free(i8* %55), !dbg !2949
  %56 = load i32, i32* %6, align 4, !dbg !2950
  %57 = trunc i32 %56 to i8, !dbg !2950
  ret i8 %57, !dbg !2951
}

; Function Attrs: nounwind uwtable
define signext i8 @File_MakeCfgFileExecutable(i8*) #0 !dbg !2952 {
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2953, metadata !380), !dbg !2954
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !2955, metadata !380), !dbg !2956
  %6 = load i8*, i8** %3, align 8, !dbg !2957
  %7 = call i32 @Posix_Stat(i8* %6, %struct.stat* %4), !dbg !2959
  %8 = icmp eq i32 %7, 0, !dbg !2960
  br i1 %8, label %9, label %34, !dbg !2961

; <label>:9:                                      ; preds = %1
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2962, metadata !380), !dbg !2965
  %10 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 3, !dbg !2966
  %11 = load i32, i32* %10, align 8, !dbg !2966
  store i32 %11, i32* %5, align 4, !dbg !2965
  %12 = load i32, i32* %5, align 4, !dbg !2967
  %13 = or i32 %12, 448, !dbg !2967
  store i32 %13, i32* %5, align 4, !dbg !2967
  br label %14, !dbg !2968, !llvm.loop !2969

; <label>:14:                                     ; preds = %9
  br label %15, !dbg !2970

; <label>:15:                                     ; preds = %14
  %16 = load i32, i32* %5, align 4, !dbg !2973
  %17 = and i32 %16, 36, !dbg !2974
  %18 = lshr i32 %17, 2, !dbg !2975
  %19 = load i32, i32* %5, align 4, !dbg !2976
  %20 = or i32 %19, %18, !dbg !2976
  store i32 %20, i32* %5, align 4, !dbg !2976
  %21 = load i32, i32* %5, align 4, !dbg !2977
  %22 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 3, !dbg !2978
  %23 = load i32, i32* %22, align 8, !dbg !2978
  %24 = icmp eq i32 %21, %23, !dbg !2979
  br i1 %24, label %30, label %25, !dbg !2980

; <label>:25:                                     ; preds = %15
  %26 = load i8*, i8** %3, align 8, !dbg !2981
  %27 = load i32, i32* %5, align 4, !dbg !2983
  %28 = call i32 @Posix_Chmod(i8* %26, i32 %27), !dbg !2984
  %29 = icmp ne i32 %28, 0, !dbg !2985
  br label %30, !dbg !2985

; <label>:30:                                     ; preds = %25, %15
  %31 = phi i1 [ true, %15 ], [ %29, %25 ]
  %32 = zext i1 %31 to i32, !dbg !2986
  %33 = trunc i32 %32 to i8, !dbg !2988
  store i8 %33, i8* %2, align 1, !dbg !2989
  br label %35, !dbg !2989

; <label>:34:                                     ; preds = %1
  store i8 0, i8* %2, align 1, !dbg !2990
  br label %35, !dbg !2990

; <label>:35:                                     ; preds = %34, %30
  %36 = load i8, i8* %2, align 1, !dbg !2991
  ret i8 %36, !dbg !2991
}

; Function Attrs: nounwind uwtable
define i64 @File_GetSizeAlternate(i8*) #0 !dbg !2992 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2995, metadata !380), !dbg !2996
  %3 = load i8*, i8** %2, align 8, !dbg !2997
  %4 = call i64 @File_GetSize(i8* %3), !dbg !2998
  ret i64 %4, !dbg !2999
}

declare i64 @File_GetSize(i8*) #2

; Function Attrs: nounwind uwtable
define signext i8 @File_IsCharDevice(i8*) #0 !dbg !3000 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.FileData, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3001, metadata !380), !dbg !3002
  call void @llvm.dbg.declare(metadata %struct.FileData* %3, metadata !3003, metadata !380), !dbg !3004
  %4 = load i8*, i8** %2, align 8, !dbg !3005
  %5 = call i32 @FileAttributes(i8* %4, %struct.FileData* %3), !dbg !3006
  %6 = icmp eq i32 %5, 0, !dbg !3007
  br i1 %6, label %7, label %11, !dbg !3008

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.FileData, %struct.FileData* %3, i32 0, i32 4, !dbg !3009
  %9 = load i32, i32* %8, align 8, !dbg !3009
  %10 = icmp eq i32 %9, 3, !dbg !3010
  br label %11

; <label>:11:                                     ; preds = %7, %1
  %12 = phi i1 [ false, %1 ], [ %10, %7 ]
  %13 = zext i1 %12 to i32, !dbg !3011
  %14 = trunc i32 %13 to i8, !dbg !3013
  ret i8 %14, !dbg !3014
}

; Function Attrs: nounwind uwtable
define i8* @File_GetMountPath(i8*, i8 signext) #0 !dbg !3015 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3018, metadata !380), !dbg !3019
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !3020, metadata !380), !dbg !3021
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3022, metadata !380), !dbg !3023
  %7 = load i8*, i8** %4, align 8, !dbg !3024
  %8 = icmp eq i8* %7, null, !dbg !3026
  br i1 %8, label %9, label %10, !dbg !3027

; <label>:9:                                      ; preds = %2
  store i8* null, i8** %3, align 8, !dbg !3028
  br label %31, !dbg !3028

; <label>:10:                                     ; preds = %2
  %11 = load i8, i8* %5, align 1, !dbg !3030
  %12 = icmp ne i8 %11, 0, !dbg !3030
  br i1 %12, label %13, label %16, !dbg !3032

; <label>:13:                                     ; preds = %10
  %14 = load i8*, i8** %4, align 8, !dbg !3033
  %15 = call i8* @Posix_RealPath(i8* %14), !dbg !3035
  store i8* %15, i8** %3, align 8, !dbg !3036
  br label %31, !dbg !3036

; <label>:16:                                     ; preds = %10
  %17 = load i8*, i8** %4, align 8, !dbg !3037
  %18 = call i8* @Posix_ReadLink(i8* %17), !dbg !3038
  store i8* %18, i8** %6, align 8, !dbg !3039
  %19 = load i8*, i8** %6, align 8, !dbg !3040
  %20 = icmp ne i8* %19, null, !dbg !3042
  br i1 %20, label %21, label %23, !dbg !3043

; <label>:21:                                     ; preds = %16
  %22 = load i8*, i8** %6, align 8, !dbg !3044
  store i8* %22, i8** %3, align 8, !dbg !3046
  br label %31, !dbg !3046

; <label>:23:                                     ; preds = %16
  %24 = load i8*, i8** %4, align 8, !dbg !3047
  %25 = call i32 @Posix_Access(i8* %24, i32 0), !dbg !3049
  %26 = icmp ne i32 %25, 0, !dbg !3049
  br i1 %26, label %30, label %27, !dbg !3050

; <label>:27:                                     ; preds = %23
  %28 = load i8*, i8** %4, align 8, !dbg !3051
  %29 = call i8* @UtilSafeStrdup0(i8* %28), !dbg !3053
  store i8* %29, i8** %3, align 8, !dbg !3054
  br label %31, !dbg !3054

; <label>:30:                                     ; preds = %23
  store i8* null, i8** %3, align 8, !dbg !3055
  br label %31, !dbg !3055

; <label>:31:                                     ; preds = %30, %27, %21, %13, %9
  %32 = load i8*, i8** %3, align 8, !dbg !3056
  ret i8* %32, !dbg !3056
}

declare i32 @Posix_Access(i8*, i32) #2

; Function Attrs: nounwind
declare void @free(i8*) #5

declare i8* @Unicode_AllocWithLength(i8*, i64, i32) #2

; Function Attrs: nounwind
declare %struct._IO_FILE* @setmntent(i8*, i8*) #5

declare %struct.mntent* @Posix_Getmntent_r(%struct._IO_FILE*, %struct.mntent*, i8*, i32) #2

; Function Attrs: nounwind
declare i32 @endmntent(%struct._IO_FILE*) #5

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #6

declare i32 @Unicode_CompareRange(i8*, i64, i64, i8*, i64, i64, i8 signext) #2

declare signext i8 @FileIO_SupportsFileSize(%struct.FileIODescriptor*, i64) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Unicode_Append(i8*, i8*) #4 !dbg !3057 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3060, metadata !380), !dbg !3061
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3062, metadata !380), !dbg !3063
  %5 = load i8*, i8** %3, align 8, !dbg !3064
  %6 = load i8*, i8** %4, align 8, !dbg !3065
  %7 = call i8* @Unicode_ReplaceRange(i8* %5, i64 -1, i64 0, i8* %6, i64 0, i64 -1), !dbg !3066
  ret i8* %7, !dbg !3067
}

declare i32 @File_MakeSafeTemp(i8*, i8**) #2

declare void @FileIO_CreateFDPosix(%struct.FileIODescriptor* sret, i32, i32) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

declare i32 @File_Unlink(i8*) #2

declare i8* @Unicode_ReplaceRange(i8*, i64, i64, i8*, i64, i64) #2

declare signext i8 @DynBuf_Append(%struct.DynBuf*, i8*, i64) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @Util_FreeList(i8**, i64) #4 !dbg !3068 {
  %3 = alloca i8**, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !3071, metadata !380), !dbg !3072
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3073, metadata !380), !dbg !3074
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3075, metadata !380), !dbg !3076
  %8 = load i8**, i8*** %3, align 8, !dbg !3077
  %9 = icmp eq i8** %8, null, !dbg !3079
  br i1 %9, label %10, label %11, !dbg !3080

; <label>:10:                                     ; preds = %2
  br label %48, !dbg !3081

; <label>:11:                                     ; preds = %2
  %12 = call i32* @__errno_location() #1, !dbg !3083
  %13 = load i32, i32* %12, align 4, !dbg !3084
  store i32 %13, i32* %5, align 4, !dbg !3085
  %14 = load i64, i64* %4, align 8, !dbg !3086
  %15 = icmp sge i64 %14, 0, !dbg !3088
  br i1 %15, label %16, label %30, !dbg !3089

; <label>:16:                                     ; preds = %11
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3090, metadata !380), !dbg !3092
  store i64 0, i64* %6, align 8, !dbg !3093
  br label %17, !dbg !3095

; <label>:17:                                     ; preds = %26, %16
  %18 = load i64, i64* %6, align 8, !dbg !3096
  %19 = load i64, i64* %4, align 8, !dbg !3099
  %20 = icmp slt i64 %18, %19, !dbg !3100
  br i1 %20, label %21, label %29, !dbg !3101

; <label>:21:                                     ; preds = %17
  %22 = load i64, i64* %6, align 8, !dbg !3102
  %23 = load i8**, i8*** %3, align 8, !dbg !3104
  %24 = getelementptr inbounds i8*, i8** %23, i64 %22, !dbg !3104
  %25 = load i8*, i8** %24, align 8, !dbg !3104
  call void @free(i8* %25) #8, !dbg !3105
  br label %26, !dbg !3106

; <label>:26:                                     ; preds = %21
  %27 = load i64, i64* %6, align 8, !dbg !3107
  %28 = add nsw i64 %27, 1, !dbg !3107
  store i64 %28, i64* %6, align 8, !dbg !3107
  br label %17, !dbg !3109, !llvm.loop !3110

; <label>:29:                                     ; preds = %17
  br label %43, !dbg !3112

; <label>:30:                                     ; preds = %11
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !3113, metadata !380), !dbg !3115
  %31 = load i8**, i8*** %3, align 8, !dbg !3116
  store i8** %31, i8*** %7, align 8, !dbg !3118
  br label %32, !dbg !3119

; <label>:32:                                     ; preds = %39, %30
  %33 = load i8**, i8*** %7, align 8, !dbg !3120
  %34 = load i8*, i8** %33, align 8, !dbg !3123
  %35 = icmp ne i8* %34, null, !dbg !3124
  br i1 %35, label %36, label %42, !dbg !3125

; <label>:36:                                     ; preds = %32
  %37 = load i8**, i8*** %7, align 8, !dbg !3126
  %38 = load i8*, i8** %37, align 8, !dbg !3128
  call void @free(i8* %38) #8, !dbg !3129
  br label %39, !dbg !3130

; <label>:39:                                     ; preds = %36
  %40 = load i8**, i8*** %7, align 8, !dbg !3131
  %41 = getelementptr inbounds i8*, i8** %40, i32 1, !dbg !3131
  store i8** %41, i8*** %7, align 8, !dbg !3131
  br label %32, !dbg !3133, !llvm.loop !3134

; <label>:42:                                     ; preds = %32
  br label %43

; <label>:43:                                     ; preds = %42, %29
  %44 = load i8**, i8*** %3, align 8, !dbg !3136
  %45 = bitcast i8** %44 to i8*, !dbg !3136
  call void @free(i8* %45) #8, !dbg !3137
  %46 = load i32, i32* %5, align 4, !dbg !3138
  %47 = call i32* @__errno_location() #1, !dbg !3139
  store i32 %46, i32* %47, align 4, !dbg !3140
  br label %48, !dbg !3141

; <label>:48:                                     ; preds = %43, %10
  ret void, !dbg !3142
}

; Function Attrs: nounwind
declare i32 @getgroups(i32, i32*) #5

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!367, !368}
!llvm.ident = !{!369}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !359)
!1 = !DIFile(filename: "filePosix.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line196")
!2 = !{!3, !336, !352}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 58, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/unicodeTypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line196")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335}
!6 = !DIEnumerator(name: "STRING_ENCODING_FIRST", value: 0)
!7 = !DIEnumerator(name: "STRING_ENCODING_UTF8", value: 0)
!8 = !DIEnumerator(name: "STRING_ENCODING_UTF16_LE", value: 1)
!9 = !DIEnumerator(name: "STRING_ENCODING_UTF16_BE", value: 2)
!10 = !DIEnumerator(name: "STRING_ENCODING_UTF16_XE", value: 3)
!11 = !DIEnumerator(name: "STRING_ENCODING_UTF32_LE", value: 4)
!12 = !DIEnumerator(name: "STRING_ENCODING_UTF32_BE", value: 5)
!13 = !DIEnumerator(name: "STRING_ENCODING_UTF32_XE", value: 6)
!14 = !DIEnumerator(name: "STRING_ENCODING_US_ASCII", value: 7)
!15 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_1", value: 8)
!16 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_2", value: 9)
!17 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_3", value: 10)
!18 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_4", value: 11)
!19 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_5", value: 12)
!20 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_6", value: 13)
!21 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_7", value: 14)
!22 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_8", value: 15)
!23 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_9", value: 16)
!24 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_10", value: 17)
!25 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_13", value: 18)
!26 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_14", value: 19)
!27 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_15", value: 20)
!28 = !DIEnumerator(name: "STRING_ENCODING_GB_18030", value: 21)
!29 = !DIEnumerator(name: "STRING_ENCODING_BIG_5", value: 22)
!30 = !DIEnumerator(name: "STRING_ENCODING_BIG_5_HK", value: 23)
!31 = !DIEnumerator(name: "STRING_ENCODING_GBK", value: 24)
!32 = !DIEnumerator(name: "STRING_ENCODING_GB_2312", value: 25)
!33 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_CN", value: 26)
!34 = !DIEnumerator(name: "STRING_ENCODING_SHIFT_JIS", value: 27)
!35 = !DIEnumerator(name: "STRING_ENCODING_EUC_JP", value: 28)
!36 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_JP", value: 29)
!37 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_JP_1", value: 30)
!38 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_JP_2", value: 31)
!39 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_KR", value: 32)
!40 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1250", value: 33)
!41 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1251", value: 34)
!42 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1252", value: 35)
!43 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1253", value: 36)
!44 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1254", value: 37)
!45 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1255", value: 38)
!46 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1256", value: 39)
!47 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1257", value: 40)
!48 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1258", value: 41)
!49 = !DIEnumerator(name: "STRING_ENCODING_ISO_6937_2_ADD", value: 42)
!50 = !DIEnumerator(name: "STRING_ENCODING_JIS_X0201", value: 43)
!51 = !DIEnumerator(name: "STRING_ENCODING_JIS_ENCODING", value: 44)
!52 = !DIEnumerator(name: "STRING_ENCODING_EXTENDED_UNIX_CODE_FIXED_WIDTH_FOR_JAPANESE", value: 45)
!53 = !DIEnumerator(name: "STRING_ENCODING_BS_4730", value: 46)
!54 = !DIEnumerator(name: "STRING_ENCODING_SEN_850200_C", value: 47)
!55 = !DIEnumerator(name: "STRING_ENCODING_IT", value: 48)
!56 = !DIEnumerator(name: "STRING_ENCODING_ES", value: 49)
!57 = !DIEnumerator(name: "STRING_ENCODING_DIN_66003", value: 50)
!58 = !DIEnumerator(name: "STRING_ENCODING_NS_4551_1", value: 51)
!59 = !DIEnumerator(name: "STRING_ENCODING_NF_Z_62_010", value: 52)
!60 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UTF_1", value: 53)
!61 = !DIEnumerator(name: "STRING_ENCODING_ISO_646_BASIC_1983", value: 54)
!62 = !DIEnumerator(name: "STRING_ENCODING_INVARIANT", value: 55)
!63 = !DIEnumerator(name: "STRING_ENCODING_ISO_646_IRV_1983", value: 56)
!64 = !DIEnumerator(name: "STRING_ENCODING_NATS_SEFI", value: 57)
!65 = !DIEnumerator(name: "STRING_ENCODING_NATS_SEFI_ADD", value: 58)
!66 = !DIEnumerator(name: "STRING_ENCODING_NATS_DANO", value: 59)
!67 = !DIEnumerator(name: "STRING_ENCODING_NATS_DANO_ADD", value: 60)
!68 = !DIEnumerator(name: "STRING_ENCODING_SEN_850200_B", value: 61)
!69 = !DIEnumerator(name: "STRING_ENCODING_KS_C_5601_1987", value: 62)
!70 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6220_1969_JP", value: 63)
!71 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6220_1969_RO", value: 64)
!72 = !DIEnumerator(name: "STRING_ENCODING_PT", value: 65)
!73 = !DIEnumerator(name: "STRING_ENCODING_GREEK7_OLD", value: 66)
!74 = !DIEnumerator(name: "STRING_ENCODING_LATIN_GREEK", value: 67)
!75 = !DIEnumerator(name: "STRING_ENCODING_NF_Z_62_010__1973_", value: 68)
!76 = !DIEnumerator(name: "STRING_ENCODING_LATIN_GREEK_1", value: 69)
!77 = !DIEnumerator(name: "STRING_ENCODING_ISO_5427", value: 70)
!78 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6226_1978", value: 71)
!79 = !DIEnumerator(name: "STRING_ENCODING_BS_VIEWDATA", value: 72)
!80 = !DIEnumerator(name: "STRING_ENCODING_INIS", value: 73)
!81 = !DIEnumerator(name: "STRING_ENCODING_INIS_8", value: 74)
!82 = !DIEnumerator(name: "STRING_ENCODING_INIS_CYRILLIC", value: 75)
!83 = !DIEnumerator(name: "STRING_ENCODING_ISO_5427_1981", value: 76)
!84 = !DIEnumerator(name: "STRING_ENCODING_ISO_5428_1980", value: 77)
!85 = !DIEnumerator(name: "STRING_ENCODING_GB_1988_80", value: 78)
!86 = !DIEnumerator(name: "STRING_ENCODING_GB_2312_80", value: 79)
!87 = !DIEnumerator(name: "STRING_ENCODING_NS_4551_2", value: 80)
!88 = !DIEnumerator(name: "STRING_ENCODING_VIDEOTEX_SUPPL", value: 81)
!89 = !DIEnumerator(name: "STRING_ENCODING_PT2", value: 82)
!90 = !DIEnumerator(name: "STRING_ENCODING_ES2", value: 83)
!91 = !DIEnumerator(name: "STRING_ENCODING_MSZ_7795_3", value: 84)
!92 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6226_1983", value: 85)
!93 = !DIEnumerator(name: "STRING_ENCODING_GREEK7", value: 86)
!94 = !DIEnumerator(name: "STRING_ENCODING_ASMO_449", value: 87)
!95 = !DIEnumerator(name: "STRING_ENCODING_ISO_IR_90", value: 88)
!96 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_A", value: 89)
!97 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_B", value: 90)
!98 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_B_ADD", value: 91)
!99 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_HAND", value: 92)
!100 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_HAND_ADD", value: 93)
!101 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_KANA", value: 94)
!102 = !DIEnumerator(name: "STRING_ENCODING_ISO_2033_1983", value: 95)
!103 = !DIEnumerator(name: "STRING_ENCODING_ANSI_X3_110_1983", value: 96)
!104 = !DIEnumerator(name: "STRING_ENCODING_T_61_7BIT", value: 97)
!105 = !DIEnumerator(name: "STRING_ENCODING_T_61_8BIT", value: 98)
!106 = !DIEnumerator(name: "STRING_ENCODING_ECMA_CYRILLIC", value: 99)
!107 = !DIEnumerator(name: "STRING_ENCODING_CSA_Z243_4_1985_1", value: 100)
!108 = !DIEnumerator(name: "STRING_ENCODING_CSA_Z243_4_1985_2", value: 101)
!109 = !DIEnumerator(name: "STRING_ENCODING_CSA_Z243_4_1985_GR", value: 102)
!110 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_6_E", value: 103)
!111 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_6_I", value: 104)
!112 = !DIEnumerator(name: "STRING_ENCODING_T_101_G2", value: 105)
!113 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_8_E", value: 106)
!114 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_8_I", value: 107)
!115 = !DIEnumerator(name: "STRING_ENCODING_CSN_369103", value: 108)
!116 = !DIEnumerator(name: "STRING_ENCODING_JUS_I_B1_002", value: 109)
!117 = !DIEnumerator(name: "STRING_ENCODING_IEC_P27_1", value: 110)
!118 = !DIEnumerator(name: "STRING_ENCODING_JUS_I_B1_003_SERB", value: 111)
!119 = !DIEnumerator(name: "STRING_ENCODING_JUS_I_B1_003_MAC", value: 112)
!120 = !DIEnumerator(name: "STRING_ENCODING_GREEK_CCITT", value: 113)
!121 = !DIEnumerator(name: "STRING_ENCODING_NC_NC00_10_81", value: 114)
!122 = !DIEnumerator(name: "STRING_ENCODING_ISO_6937_2_25", value: 115)
!123 = !DIEnumerator(name: "STRING_ENCODING_GOST_19768_74", value: 116)
!124 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_SUPP", value: 117)
!125 = !DIEnumerator(name: "STRING_ENCODING_ISO_10367_BOX", value: 118)
!126 = !DIEnumerator(name: "STRING_ENCODING_LATIN_LAP", value: 119)
!127 = !DIEnumerator(name: "STRING_ENCODING_JIS_X0212_1990", value: 120)
!128 = !DIEnumerator(name: "STRING_ENCODING_DS_2089", value: 121)
!129 = !DIEnumerator(name: "STRING_ENCODING_US_DK", value: 122)
!130 = !DIEnumerator(name: "STRING_ENCODING_DK_US", value: 123)
!131 = !DIEnumerator(name: "STRING_ENCODING_KSC5636", value: 124)
!132 = !DIEnumerator(name: "STRING_ENCODING_UNICODE_1_1_UTF_7", value: 125)
!133 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_CN_EXT", value: 126)
!134 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_16", value: 127)
!135 = !DIEnumerator(name: "STRING_ENCODING_OSD_EBCDIC_DF04_15", value: 128)
!136 = !DIEnumerator(name: "STRING_ENCODING_OSD_EBCDIC_DF03_IRV", value: 129)
!137 = !DIEnumerator(name: "STRING_ENCODING_OSD_EBCDIC_DF04_1", value: 130)
!138 = !DIEnumerator(name: "STRING_ENCODING_ISO_11548_1", value: 131)
!139 = !DIEnumerator(name: "STRING_ENCODING_KZ_1048", value: 132)
!140 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UCS_2", value: 133)
!141 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UCS_4", value: 134)
!142 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UCS_BASIC", value: 135)
!143 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UNICODE_LATIN1", value: 136)
!144 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_J_1", value: 137)
!145 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1261", value: 138)
!146 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1268", value: 139)
!147 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1276", value: 140)
!148 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1264", value: 141)
!149 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1265", value: 142)
!150 = !DIEnumerator(name: "STRING_ENCODING_UNICODE_1_1", value: 143)
!151 = !DIEnumerator(name: "STRING_ENCODING_SCSU", value: 144)
!152 = !DIEnumerator(name: "STRING_ENCODING_UTF_7", value: 145)
!153 = !DIEnumerator(name: "STRING_ENCODING_CESU_8", value: 146)
!154 = !DIEnumerator(name: "STRING_ENCODING_BOCU_1", value: 147)
!155 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_1_WINDOWS_3_0_LATIN_1", value: 148)
!156 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_1_WINDOWS_3_1_LATIN_1", value: 149)
!157 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_2_WINDOWS_LATIN_2", value: 150)
!158 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_9_WINDOWS_LATIN_5", value: 151)
!159 = !DIEnumerator(name: "STRING_ENCODING_HP_ROMAN8", value: 152)
!160 = !DIEnumerator(name: "STRING_ENCODING_ADOBE_STANDARD_ENCODING", value: 153)
!161 = !DIEnumerator(name: "STRING_ENCODING_VENTURA_US", value: 154)
!162 = !DIEnumerator(name: "STRING_ENCODING_VENTURA_INTERNATIONAL", value: 155)
!163 = !DIEnumerator(name: "STRING_ENCODING_DEC_MCS", value: 156)
!164 = !DIEnumerator(name: "STRING_ENCODING_IBM_850", value: 157)
!165 = !DIEnumerator(name: "STRING_ENCODING_PC8_DANISH_NORWEGIAN", value: 158)
!166 = !DIEnumerator(name: "STRING_ENCODING_IBM_862", value: 159)
!167 = !DIEnumerator(name: "STRING_ENCODING_PC8_TURKISH", value: 160)
!168 = !DIEnumerator(name: "STRING_ENCODING_IBM_SYMBOLS", value: 161)
!169 = !DIEnumerator(name: "STRING_ENCODING_IBM_THAI", value: 162)
!170 = !DIEnumerator(name: "STRING_ENCODING_HP_LEGAL", value: 163)
!171 = !DIEnumerator(name: "STRING_ENCODING_HP_PI_FONT", value: 164)
!172 = !DIEnumerator(name: "STRING_ENCODING_HP_MATH8", value: 165)
!173 = !DIEnumerator(name: "STRING_ENCODING_ADOBE_SYMBOL_ENCODING", value: 166)
!174 = !DIEnumerator(name: "STRING_ENCODING_HP_DESKTOP", value: 167)
!175 = !DIEnumerator(name: "STRING_ENCODING_VENTURA_MATH", value: 168)
!176 = !DIEnumerator(name: "STRING_ENCODING_MICROSOFT_PUBLISHING", value: 169)
!177 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_31J", value: 170)
!178 = !DIEnumerator(name: "STRING_ENCODING_MACINTOSH", value: 171)
!179 = !DIEnumerator(name: "STRING_ENCODING_IBM_037", value: 172)
!180 = !DIEnumerator(name: "STRING_ENCODING_IBM_038", value: 173)
!181 = !DIEnumerator(name: "STRING_ENCODING_IBM_273", value: 174)
!182 = !DIEnumerator(name: "STRING_ENCODING_IBM_274", value: 175)
!183 = !DIEnumerator(name: "STRING_ENCODING_IBM_275", value: 176)
!184 = !DIEnumerator(name: "STRING_ENCODING_IBM_277", value: 177)
!185 = !DIEnumerator(name: "STRING_ENCODING_IBM_278", value: 178)
!186 = !DIEnumerator(name: "STRING_ENCODING_IBM_280", value: 179)
!187 = !DIEnumerator(name: "STRING_ENCODING_IBM_281", value: 180)
!188 = !DIEnumerator(name: "STRING_ENCODING_IBM_284", value: 181)
!189 = !DIEnumerator(name: "STRING_ENCODING_IBM_285", value: 182)
!190 = !DIEnumerator(name: "STRING_ENCODING_IBM_290", value: 183)
!191 = !DIEnumerator(name: "STRING_ENCODING_IBM_297", value: 184)
!192 = !DIEnumerator(name: "STRING_ENCODING_IBM_420", value: 185)
!193 = !DIEnumerator(name: "STRING_ENCODING_IBM_423", value: 186)
!194 = !DIEnumerator(name: "STRING_ENCODING_IBM_424", value: 187)
!195 = !DIEnumerator(name: "STRING_ENCODING_IBM_437", value: 188)
!196 = !DIEnumerator(name: "STRING_ENCODING_IBM_500", value: 189)
!197 = !DIEnumerator(name: "STRING_ENCODING_IBM_851", value: 190)
!198 = !DIEnumerator(name: "STRING_ENCODING_IBM_852", value: 191)
!199 = !DIEnumerator(name: "STRING_ENCODING_IBM_855", value: 192)
!200 = !DIEnumerator(name: "STRING_ENCODING_IBM_857", value: 193)
!201 = !DIEnumerator(name: "STRING_ENCODING_IBM_860", value: 194)
!202 = !DIEnumerator(name: "STRING_ENCODING_IBM_861", value: 195)
!203 = !DIEnumerator(name: "STRING_ENCODING_IBM_863", value: 196)
!204 = !DIEnumerator(name: "STRING_ENCODING_IBM_864", value: 197)
!205 = !DIEnumerator(name: "STRING_ENCODING_IBM_865", value: 198)
!206 = !DIEnumerator(name: "STRING_ENCODING_IBM_868", value: 199)
!207 = !DIEnumerator(name: "STRING_ENCODING_IBM_869", value: 200)
!208 = !DIEnumerator(name: "STRING_ENCODING_IBM_870", value: 201)
!209 = !DIEnumerator(name: "STRING_ENCODING_IBM_871", value: 202)
!210 = !DIEnumerator(name: "STRING_ENCODING_IBM_880", value: 203)
!211 = !DIEnumerator(name: "STRING_ENCODING_IBM_891", value: 204)
!212 = !DIEnumerator(name: "STRING_ENCODING_IBM_903", value: 205)
!213 = !DIEnumerator(name: "STRING_ENCODING_IBM_904", value: 206)
!214 = !DIEnumerator(name: "STRING_ENCODING_IBM_905", value: 207)
!215 = !DIEnumerator(name: "STRING_ENCODING_IBM_918", value: 208)
!216 = !DIEnumerator(name: "STRING_ENCODING_IBM_1026", value: 209)
!217 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_AT_DE", value: 210)
!218 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_AT_DE_A", value: 211)
!219 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_CA_FR", value: 212)
!220 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_DK_NO", value: 213)
!221 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_DK_NO_A", value: 214)
!222 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_FI_SE", value: 215)
!223 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_FI_SE_A", value: 216)
!224 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_FR", value: 217)
!225 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_IT", value: 218)
!226 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_PT", value: 219)
!227 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_ES", value: 220)
!228 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_ES_A", value: 221)
!229 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_ES_S", value: 222)
!230 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_UK", value: 223)
!231 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_US", value: 224)
!232 = !DIEnumerator(name: "STRING_ENCODING_UNKNOWN_8BIT", value: 225)
!233 = !DIEnumerator(name: "STRING_ENCODING_MNEMONIC", value: 226)
!234 = !DIEnumerator(name: "STRING_ENCODING_MNEM", value: 227)
!235 = !DIEnumerator(name: "STRING_ENCODING_VISCII", value: 228)
!236 = !DIEnumerator(name: "STRING_ENCODING_VIQR", value: 229)
!237 = !DIEnumerator(name: "STRING_ENCODING_KOI8_R", value: 230)
!238 = !DIEnumerator(name: "STRING_ENCODING_HZ_GB_2312", value: 231)
!239 = !DIEnumerator(name: "STRING_ENCODING_IBM_866", value: 232)
!240 = !DIEnumerator(name: "STRING_ENCODING_IBM_775", value: 233)
!241 = !DIEnumerator(name: "STRING_ENCODING_KOI8_U", value: 234)
!242 = !DIEnumerator(name: "STRING_ENCODING_IBM_00858", value: 235)
!243 = !DIEnumerator(name: "STRING_ENCODING_IBM_00924", value: 236)
!244 = !DIEnumerator(name: "STRING_ENCODING_IBM_01140", value: 237)
!245 = !DIEnumerator(name: "STRING_ENCODING_IBM_01141", value: 238)
!246 = !DIEnumerator(name: "STRING_ENCODING_IBM_01142", value: 239)
!247 = !DIEnumerator(name: "STRING_ENCODING_IBM_01143", value: 240)
!248 = !DIEnumerator(name: "STRING_ENCODING_IBM_01144", value: 241)
!249 = !DIEnumerator(name: "STRING_ENCODING_IBM_01145", value: 242)
!250 = !DIEnumerator(name: "STRING_ENCODING_IBM_01146", value: 243)
!251 = !DIEnumerator(name: "STRING_ENCODING_IBM_01147", value: 244)
!252 = !DIEnumerator(name: "STRING_ENCODING_IBM_01148", value: 245)
!253 = !DIEnumerator(name: "STRING_ENCODING_IBM_01149", value: 246)
!254 = !DIEnumerator(name: "STRING_ENCODING_IBM_1047", value: 247)
!255 = !DIEnumerator(name: "STRING_ENCODING_PTCP154", value: 248)
!256 = !DIEnumerator(name: "STRING_ENCODING_AMIGA_1251", value: 249)
!257 = !DIEnumerator(name: "STRING_ENCODING_KOI7_SWITCHED", value: 250)
!258 = !DIEnumerator(name: "STRING_ENCODING_BRF", value: 251)
!259 = !DIEnumerator(name: "STRING_ENCODING_TSCII", value: 252)
!260 = !DIEnumerator(name: "STRING_ENCODING_TIS_620", value: 253)
!261 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_709", value: 254)
!262 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_710", value: 255)
!263 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_720", value: 256)
!264 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_737", value: 257)
!265 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_875", value: 258)
!266 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1361", value: 259)
!267 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10000", value: 260)
!268 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10001", value: 261)
!269 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10002", value: 262)
!270 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10003", value: 263)
!271 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10004", value: 264)
!272 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10005", value: 265)
!273 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10006", value: 266)
!274 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10007", value: 267)
!275 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10008", value: 268)
!276 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10010", value: 269)
!277 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10017", value: 270)
!278 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10021", value: 271)
!279 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10029", value: 272)
!280 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10079", value: 273)
!281 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10081", value: 274)
!282 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10082", value: 275)
!283 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20000", value: 276)
!284 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20001", value: 277)
!285 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20002", value: 278)
!286 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20003", value: 279)
!287 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20004", value: 280)
!288 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20005", value: 281)
!289 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20105", value: 282)
!290 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20106", value: 283)
!291 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20107", value: 284)
!292 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20108", value: 285)
!293 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20269", value: 286)
!294 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20833", value: 287)
!295 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20949", value: 288)
!296 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_21025", value: 289)
!297 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_21027", value: 290)
!298 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_29001", value: 291)
!299 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_38598", value: 292)
!300 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50221", value: 293)
!301 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50222", value: 294)
!302 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50229", value: 295)
!303 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50930", value: 296)
!304 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50931", value: 297)
!305 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50933", value: 298)
!306 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50935", value: 299)
!307 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50936", value: 300)
!308 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50937", value: 301)
!309 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50939", value: 302)
!310 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_51936", value: 303)
!311 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_51950", value: 304)
!312 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57002", value: 305)
!313 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57003", value: 306)
!314 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57004", value: 307)
!315 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57005", value: 308)
!316 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57006", value: 309)
!317 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57007", value: 310)
!318 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57008", value: 311)
!319 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57009", value: 312)
!320 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57010", value: 313)
!321 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57011", value: 314)
!322 = !DIEnumerator(name: "STRING_ENCODING_IBM_813", value: 315)
!323 = !DIEnumerator(name: "STRING_ENCODING_IBM_943_P130_1999", value: 316)
!324 = !DIEnumerator(name: "STRING_ENCODING_IBM_33722", value: 317)
!325 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_949", value: 318)
!326 = !DIEnumerator(name: "STRING_ENCODING_IBM_1363", value: 319)
!327 = !DIEnumerator(name: "STRING_ENCODING_IBM_1386", value: 320)
!328 = !DIEnumerator(name: "STRING_ENCODING_IBM_1373", value: 321)
!329 = !DIEnumerator(name: "STRING_ENCODING_IBM_5471", value: 322)
!330 = !DIEnumerator(name: "STRING_ENCODING_IBM_874", value: 323)
!331 = !DIEnumerator(name: "STRING_ENCODING_MAX_SPECIFIED", value: 324)
!332 = !DIEnumerator(name: "STRING_ENCODING_DEFAULT", value: -1)
!333 = !DIEnumerator(name: "STRING_ENCODING_UNKNOWN", value: -2)
!334 = !DIEnumerator(name: "STRING_ENCODING_UTF16", value: 1)
!335 = !DIEnumerator(name: "STRING_ENCODING_UTF32", value: 4)
!336 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !337, line: 264, size: 32, align: 32, elements: !338)
!337 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/fileIO.h", directory: "/home/lichi/Desktop/open-vm-tools/line196")
!338 = !{!339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351}
!339 = !DIEnumerator(name: "FILEIO_SUCCESS", value: 0)
!340 = !DIEnumerator(name: "FILEIO_CANCELLED", value: 1)
!341 = !DIEnumerator(name: "FILEIO_ERROR", value: 2)
!342 = !DIEnumerator(name: "FILEIO_OPEN_ERROR_EXIST", value: 3)
!343 = !DIEnumerator(name: "FILEIO_LOCK_FAILED", value: 4)
!344 = !DIEnumerator(name: "FILEIO_READ_ERROR_EOF", value: 5)
!345 = !DIEnumerator(name: "FILEIO_FILE_NOT_FOUND", value: 6)
!346 = !DIEnumerator(name: "FILEIO_NO_PERMISSION", value: 7)
!347 = !DIEnumerator(name: "FILEIO_FILE_NAME_TOO_LONG", value: 8)
!348 = !DIEnumerator(name: "FILEIO_WRITE_ERROR_FBIG", value: 9)
!349 = !DIEnumerator(name: "FILEIO_WRITE_ERROR_NOSPC", value: 10)
!350 = !DIEnumerator(name: "FILEIO_WRITE_ERROR_DQUOT", value: 11)
!351 = !DIEnumerator(name: "FILEIO_ERROR_LAST", value: 12)
!352 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !337, line: 256, size: 32, align: 32, elements: !353)
!353 = !{!354, !355, !356, !357, !358}
!354 = !DIEnumerator(name: "FILEIO_OPEN", value: 0)
!355 = !DIEnumerator(name: "FILEIO_OPEN_EMPTY", value: 1)
!356 = !DIEnumerator(name: "FILEIO_OPEN_CREATE", value: 2)
!357 = !DIEnumerator(name: "FILEIO_OPEN_CREATE_SAFE", value: 3)
!358 = !DIEnumerator(name: "FILEIO_OPEN_CREATE_EMPTY", value: 4)
!359 = !{!360, !361, !366}
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !362, line: 171, baseType: !363)
!362 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line196")
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !364, line: 55, baseType: !365)
!364 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line196")
!365 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64, align: 64)
!367 = !{i32 2, !"Dwarf Version", i32 4}
!368 = !{i32 2, !"Debug Info Version", i32 3}
!369 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!370 = distinct !DISubprogram(name: "FileRemoveDirectory", scope: !371, file: !371, line: 142, type: !372, isLocal: false, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!371 = !DIFile(filename: "filePosix.c", directory: "/home/lichi/Desktop/open-vm-tools/line196")
!372 = !DISubroutineType(types: !373)
!373 = !{!374, !375}
!374 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64, align: 64)
!376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !377)
!377 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!378 = !{}
!379 = !DILocalVariable(name: "pathName", arg: 1, scope: !370, file: !371, line: 142, type: !375)
!380 = !DIExpression()
!381 = !DILocation(line: 142, column: 33, scope: !370)
!382 = !DILocation(line: 144, column: 24, scope: !370)
!383 = !DILocation(line: 144, column: 12, scope: !370)
!384 = !DILocation(line: 144, column: 34, scope: !370)
!385 = !DILocation(line: 144, column: 11, scope: !370)
!386 = !DILocation(line: 144, column: 44, scope: !387)
!387 = !DILexicalBlockFile(scope: !370, file: !371, discriminator: 1)
!388 = !DILocation(line: 144, column: 43, scope: !387)
!389 = !DILocation(line: 144, column: 11, scope: !387)
!390 = !DILocation(line: 144, column: 11, scope: !391)
!391 = !DILexicalBlockFile(scope: !370, file: !371, discriminator: 2)
!392 = !DILocation(line: 144, column: 11, scope: !393)
!393 = !DILexicalBlockFile(scope: !370, file: !371, discriminator: 3)
!394 = !DILocation(line: 144, column: 4, scope: !393)
!395 = distinct !DISubprogram(name: "File_Rename", scope: !371, file: !371, line: 166, type: !396, isLocal: false, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!396 = !DISubroutineType(types: !397)
!397 = !{!374, !375, !375}
!398 = !DILocalVariable(name: "oldName", arg: 1, scope: !395, file: !371, line: 166, type: !375)
!399 = !DILocation(line: 166, column: 25, scope: !395)
!400 = !DILocalVariable(name: "newName", arg: 2, scope: !395, file: !371, line: 167, type: !375)
!401 = !DILocation(line: 167, column: 25, scope: !395)
!402 = !DILocation(line: 169, column: 25, scope: !395)
!403 = !DILocation(line: 169, column: 34, scope: !395)
!404 = !DILocation(line: 169, column: 12, scope: !395)
!405 = !DILocation(line: 169, column: 43, scope: !395)
!406 = !DILocation(line: 169, column: 11, scope: !395)
!407 = !DILocation(line: 169, column: 53, scope: !408)
!408 = !DILexicalBlockFile(scope: !395, file: !371, discriminator: 1)
!409 = !DILocation(line: 169, column: 52, scope: !408)
!410 = !DILocation(line: 169, column: 11, scope: !408)
!411 = !DILocation(line: 169, column: 11, scope: !412)
!412 = !DILexicalBlockFile(scope: !395, file: !371, discriminator: 2)
!413 = !DILocation(line: 169, column: 11, scope: !414)
!414 = !DILexicalBlockFile(scope: !395, file: !371, discriminator: 3)
!415 = !DILocation(line: 169, column: 4, scope: !414)
!416 = distinct !DISubprogram(name: "File_RenameRetry", scope: !371, file: !371, line: 174, type: !417, isLocal: false, isDefinition: true, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!417 = !DISubroutineType(types: !418)
!418 = !{!374, !375, !375, !419}
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !362, line: 173, baseType: !420)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !364, line: 51, baseType: !421)
!421 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!422 = !DILocalVariable(name: "oldFile", arg: 1, scope: !416, file: !371, line: 174, type: !375)
!423 = !DILocation(line: 174, column: 30, scope: !416)
!424 = !DILocalVariable(name: "newFile", arg: 2, scope: !416, file: !371, line: 175, type: !375)
!425 = !DILocation(line: 175, column: 30, scope: !416)
!426 = !DILocalVariable(name: "maxWaitTimeMsec", arg: 3, scope: !416, file: !371, line: 176, type: !419)
!427 = !DILocation(line: 176, column: 25, scope: !416)
!428 = !DILocation(line: 178, column: 23, scope: !416)
!429 = !DILocation(line: 178, column: 32, scope: !416)
!430 = !DILocation(line: 178, column: 11, scope: !416)
!431 = !DILocation(line: 178, column: 4, scope: !416)
!432 = distinct !DISubprogram(name: "FileDeletion", scope: !371, file: !371, line: 200, type: !433, isLocal: false, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!433 = !DISubroutineType(types: !434)
!434 = !{!374, !375, !435}
!435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !436)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !362, line: 230, baseType: !377)
!437 = !DILocalVariable(name: "pathName", arg: 1, scope: !432, file: !371, line: 200, type: !375)
!438 = !DILocation(line: 200, column: 26, scope: !432)
!439 = !DILocalVariable(name: "handleLink", arg: 2, scope: !432, file: !371, line: 201, type: !435)
!440 = !DILocation(line: 201, column: 25, scope: !432)
!441 = !DILocalVariable(name: "err", scope: !432, file: !371, line: 203, type: !374)
!442 = !DILocation(line: 203, column: 8, scope: !432)
!443 = !DILocation(line: 205, column: 8, scope: !444)
!444 = distinct !DILexicalBlock(scope: !432, file: !371, line: 205, column: 8)
!445 = !DILocation(line: 205, column: 17, scope: !444)
!446 = !DILocation(line: 205, column: 8, scope: !432)
!447 = !DILocation(line: 206, column: 8, scope: !448)
!448 = distinct !DILexicalBlock(scope: !444, file: !371, line: 205, column: 25)
!449 = !DILocation(line: 206, column: 12, scope: !448)
!450 = !DILocation(line: 208, column: 15, scope: !448)
!451 = !DILocation(line: 208, column: 14, scope: !448)
!452 = !DILocation(line: 208, column: 7, scope: !448)
!453 = !DILocation(line: 211, column: 8, scope: !454)
!454 = distinct !DILexicalBlock(scope: !432, file: !371, line: 211, column: 8)
!455 = !DILocation(line: 211, column: 8, scope: !432)
!456 = !DILocalVariable(name: "linkPath", scope: !457, file: !371, line: 212, type: !458)
!457 = distinct !DILexicalBlock(scope: !454, file: !371, line: 211, column: 20)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64, align: 64)
!459 = !DILocation(line: 212, column: 13, scope: !457)
!460 = !DILocation(line: 212, column: 39, scope: !457)
!461 = !DILocation(line: 212, column: 24, scope: !457)
!462 = !DILocation(line: 214, column: 11, scope: !463)
!463 = distinct !DILexicalBlock(scope: !457, file: !371, line: 214, column: 11)
!464 = !DILocation(line: 214, column: 20, scope: !463)
!465 = !DILocation(line: 214, column: 11, scope: !457)
!466 = !DILocation(line: 216, column: 17, scope: !467)
!467 = distinct !DILexicalBlock(scope: !463, file: !371, line: 214, column: 28)
!468 = !DILocation(line: 216, column: 16, scope: !467)
!469 = !DILocation(line: 216, column: 14, scope: !467)
!470 = !DILocation(line: 218, column: 14, scope: !471)
!471 = distinct !DILexicalBlock(scope: !467, file: !371, line: 218, column: 14)
!472 = !DILocation(line: 218, column: 18, scope: !471)
!473 = !DILocation(line: 218, column: 14, scope: !467)
!474 = !DILocation(line: 219, column: 13, scope: !475)
!475 = distinct !DILexicalBlock(scope: !471, file: !371, line: 218, column: 28)
!476 = !DILocation(line: 221, column: 7, scope: !467)
!477 = !DILocation(line: 222, column: 30, scope: !478)
!478 = distinct !DILexicalBlock(scope: !463, file: !371, line: 221, column: 14)
!479 = !DILocation(line: 222, column: 17, scope: !478)
!480 = !DILocation(line: 222, column: 40, scope: !478)
!481 = !DILocation(line: 222, column: 16, scope: !478)
!482 = !DILocation(line: 222, column: 50, scope: !483)
!483 = !DILexicalBlockFile(scope: !478, file: !371, discriminator: 1)
!484 = !DILocation(line: 222, column: 49, scope: !483)
!485 = !DILocation(line: 222, column: 16, scope: !483)
!486 = !DILocation(line: 222, column: 16, scope: !487)
!487 = !DILexicalBlockFile(scope: !478, file: !371, discriminator: 2)
!488 = !DILocation(line: 222, column: 16, scope: !489)
!489 = !DILexicalBlockFile(scope: !478, file: !371, discriminator: 3)
!490 = !DILocation(line: 222, column: 14, scope: !489)
!491 = !DILocation(line: 224, column: 21, scope: !478)
!492 = !DILocation(line: 224, column: 10, scope: !478)
!493 = !DILocation(line: 227, column: 14, scope: !494)
!494 = distinct !DILexicalBlock(scope: !478, file: !371, line: 227, column: 14)
!495 = !DILocation(line: 227, column: 18, scope: !494)
!496 = !DILocation(line: 227, column: 14, scope: !478)
!497 = !DILocation(line: 228, column: 13, scope: !498)
!498 = distinct !DILexicalBlock(scope: !494, file: !371, line: 227, column: 28)
!499 = !DILocation(line: 231, column: 4, scope: !457)
!500 = !DILocation(line: 233, column: 24, scope: !432)
!501 = !DILocation(line: 233, column: 11, scope: !432)
!502 = !DILocation(line: 233, column: 34, scope: !432)
!503 = !DILocation(line: 233, column: 10, scope: !432)
!504 = !DILocation(line: 233, column: 44, scope: !505)
!505 = !DILexicalBlockFile(scope: !432, file: !371, discriminator: 1)
!506 = !DILocation(line: 233, column: 43, scope: !505)
!507 = !DILocation(line: 233, column: 10, scope: !505)
!508 = !DILocation(line: 233, column: 10, scope: !509)
!509 = !DILexicalBlockFile(scope: !432, file: !371, discriminator: 2)
!510 = !DILocation(line: 233, column: 10, scope: !511)
!511 = !DILexicalBlockFile(scope: !432, file: !371, discriminator: 3)
!512 = !DILocation(line: 233, column: 8, scope: !511)
!513 = !DILocation(line: 233, column: 4, scope: !511)
!514 = !DILocation(line: 237, column: 11, scope: !432)
!515 = !DILocation(line: 237, column: 4, scope: !432)
!516 = !DILocation(line: 238, column: 1, scope: !432)
!517 = distinct !DISubprogram(name: "Posix_Free", scope: !518, file: !518, line: 129, type: !519, isLocal: true, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!518 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/posix.h", directory: "/home/lichi/Desktop/open-vm-tools/line196")
!519 = !DISubroutineType(types: !520)
!520 = !{null, !360}
!521 = !DILocalVariable(name: "p", arg: 1, scope: !517, file: !518, line: 129, type: !360)
!522 = !DILocation(line: 129, column: 18, scope: !517)
!523 = !DILocalVariable(name: "err", scope: !517, file: !518, line: 131, type: !374)
!524 = !DILocation(line: 131, column: 8, scope: !517)
!525 = !DILocation(line: 131, column: 15, scope: !517)
!526 = !DILocation(line: 131, column: 14, scope: !517)
!527 = !DILocation(line: 132, column: 9, scope: !517)
!528 = !DILocation(line: 132, column: 4, scope: !517)
!529 = !DILocation(line: 133, column: 11, scope: !517)
!530 = !DILocation(line: 133, column: 5, scope: !517)
!531 = !DILocation(line: 133, column: 9, scope: !517)
!532 = !DILocation(line: 134, column: 1, scope: !517)
!533 = distinct !DISubprogram(name: "File_UnlinkDelayed", scope: !371, file: !371, line: 258, type: !372, isLocal: false, isDefinition: true, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!534 = !DILocalVariable(name: "pathName", arg: 1, scope: !533, file: !371, line: 258, type: !375)
!535 = !DILocation(line: 258, column: 32, scope: !533)
!536 = !DILocation(line: 260, column: 25, scope: !533)
!537 = !DILocation(line: 260, column: 12, scope: !533)
!538 = !DILocation(line: 260, column: 38, scope: !533)
!539 = !DILocation(line: 260, column: 11, scope: !533)
!540 = !DILocation(line: 260, column: 4, scope: !533)
!541 = distinct !DISubprogram(name: "FileAttributes", scope: !371, file: !371, line: 282, type: !542, isLocal: false, isDefinition: true, scopeLine: 284, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!542 = !DISubroutineType(types: !543)
!543 = !{!374, !375, !544}
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64, align: 64)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "FileData", file: !546, line: 108, baseType: !547)
!546 = !DIFile(filename: "fileInt.h", directory: "/home/lichi/Desktop/open-vm-tools/line196")
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FileData", file: !546, line: 99, size: 384, align: 64, elements: !548)
!548 = !{!549, !550, !551, !552, !553, !554, !555, !556}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "fileAccessTime", scope: !547, file: !546, line: 100, baseType: !361, size: 64, align: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "fileCreationTime", scope: !547, file: !546, line: 101, baseType: !361, size: 64, align: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "fileModificationTime", scope: !547, file: !546, line: 102, baseType: !361, size: 64, align: 64, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "fileSize", scope: !547, file: !546, line: 103, baseType: !361, size: 64, align: 64, offset: 192)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "fileType", scope: !547, file: !546, line: 104, baseType: !374, size: 32, align: 32, offset: 256)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "fileMode", scope: !547, file: !546, line: 105, baseType: !374, size: 32, align: 32, offset: 288)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "fileOwner", scope: !547, file: !546, line: 106, baseType: !374, size: 32, align: 32, offset: 320)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "fileGroup", scope: !547, file: !546, line: 107, baseType: !374, size: 32, align: 32, offset: 352)
!557 = !DILocalVariable(name: "pathName", arg: 1, scope: !541, file: !371, line: 282, type: !375)
!558 = !DILocation(line: 282, column: 28, scope: !541)
!559 = !DILocalVariable(name: "fileData", arg: 2, scope: !541, file: !371, line: 283, type: !544)
!560 = !DILocation(line: 283, column: 26, scope: !541)
!561 = !DILocalVariable(name: "err", scope: !541, file: !371, line: 285, type: !374)
!562 = !DILocation(line: 285, column: 8, scope: !541)
!563 = !DILocalVariable(name: "statbuf", scope: !541, file: !371, line: 286, type: !564)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !565, line: 46, size: 1152, align: 64, elements: !566)
!565 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/open-vm-tools/line196")
!566 = !{!567, !570, !572, !574, !576, !578, !580, !581, !582, !585, !587, !589, !597, !598, !599}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !564, file: !565, line: 48, baseType: !568, size: 64, align: 64)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !569, line: 124, baseType: !365)
!569 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line196")
!570 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !564, file: !565, line: 53, baseType: !571, size: 64, align: 64, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !569, line: 127, baseType: !365)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !564, file: !565, line: 61, baseType: !573, size: 64, align: 64, offset: 128)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !569, line: 130, baseType: !365)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !564, file: !565, line: 62, baseType: !575, size: 32, align: 32, offset: 192)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !569, line: 129, baseType: !421)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !564, file: !565, line: 64, baseType: !577, size: 32, align: 32, offset: 224)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !569, line: 125, baseType: !421)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !564, file: !565, line: 65, baseType: !579, size: 32, align: 32, offset: 256)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !569, line: 126, baseType: !421)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !564, file: !565, line: 67, baseType: !374, size: 32, align: 32, offset: 288)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !564, file: !565, line: 69, baseType: !568, size: 64, align: 64, offset: 320)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !564, file: !565, line: 74, baseType: !583, size: 64, align: 64, offset: 384)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !569, line: 131, baseType: !584)
!584 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !564, file: !565, line: 78, baseType: !586, size: 64, align: 64, offset: 448)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !569, line: 153, baseType: !584)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !564, file: !565, line: 80, baseType: !588, size: 64, align: 64, offset: 512)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !569, line: 158, baseType: !584)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !564, file: !565, line: 91, baseType: !590, size: 128, align: 64, offset: 576)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !591, line: 120, size: 128, align: 64, elements: !592)
!591 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/open-vm-tools/line196")
!592 = !{!593, !595}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !590, file: !591, line: 122, baseType: !594, size: 64, align: 64)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !569, line: 139, baseType: !584)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !590, file: !591, line: 123, baseType: !596, size: 64, align: 64, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !569, line: 175, baseType: !584)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !564, file: !565, line: 92, baseType: !590, size: 128, align: 64, offset: 704)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !564, file: !565, line: 93, baseType: !590, size: 128, align: 64, offset: 832)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !564, file: !565, line: 106, baseType: !600, size: 192, align: 64, offset: 960)
!600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !596, size: 192, align: 64, elements: !601)
!601 = !{!602}
!602 = !DISubrange(count: 3)
!603 = !DILocation(line: 286, column: 16, scope: !541)
!604 = !DILocation(line: 288, column: 19, scope: !605)
!605 = distinct !DILexicalBlock(scope: !541, file: !371, line: 288, column: 8)
!606 = !DILocation(line: 288, column: 8, scope: !605)
!607 = !DILocation(line: 288, column: 39, scope: !605)
!608 = !DILocation(line: 288, column: 8, scope: !541)
!609 = !DILocation(line: 289, column: 14, scope: !610)
!610 = distinct !DILexicalBlock(scope: !605, file: !371, line: 288, column: 46)
!611 = !DILocation(line: 289, column: 13, scope: !610)
!612 = !DILocation(line: 289, column: 11, scope: !610)
!613 = !DILocation(line: 290, column: 4, scope: !610)
!614 = !DILocation(line: 291, column: 11, scope: !615)
!615 = distinct !DILexicalBlock(scope: !616, file: !371, line: 291, column: 11)
!616 = distinct !DILexicalBlock(scope: !605, file: !371, line: 290, column: 11)
!617 = !DILocation(line: 291, column: 20, scope: !615)
!618 = !DILocation(line: 291, column: 11, scope: !616)
!619 = !DILocation(line: 292, column: 46, scope: !620)
!620 = distinct !DILexicalBlock(scope: !615, file: !371, line: 291, column: 28)
!621 = !DILocation(line: 292, column: 54, scope: !620)
!622 = !DILocation(line: 292, column: 10, scope: !620)
!623 = !DILocation(line: 292, column: 20, scope: !620)
!624 = !DILocation(line: 292, column: 37, scope: !620)
!625 = !DILocation(line: 293, column: 50, scope: !620)
!626 = !DILocation(line: 293, column: 58, scope: !620)
!627 = !DILocation(line: 293, column: 10, scope: !620)
!628 = !DILocation(line: 293, column: 20, scope: !620)
!629 = !DILocation(line: 293, column: 41, scope: !620)
!630 = !DILocation(line: 294, column: 44, scope: !620)
!631 = !DILocation(line: 294, column: 52, scope: !620)
!632 = !DILocation(line: 294, column: 10, scope: !620)
!633 = !DILocation(line: 294, column: 20, scope: !620)
!634 = !DILocation(line: 294, column: 35, scope: !620)
!635 = !DILocation(line: 295, column: 39, scope: !620)
!636 = !DILocation(line: 295, column: 10, scope: !620)
!637 = !DILocation(line: 295, column: 20, scope: !620)
!638 = !DILocation(line: 295, column: 29, scope: !620)
!639 = !DILocation(line: 297, column: 26, scope: !620)
!640 = !DILocation(line: 297, column: 34, scope: !620)
!641 = !DILocation(line: 297, column: 10, scope: !620)
!642 = !DILocation(line: 299, column: 13, scope: !643)
!643 = distinct !DILexicalBlock(scope: !620, file: !371, line: 297, column: 43)
!644 = !DILocation(line: 299, column: 23, scope: !643)
!645 = !DILocation(line: 299, column: 32, scope: !643)
!646 = !DILocation(line: 300, column: 13, scope: !643)
!647 = !DILocation(line: 303, column: 13, scope: !643)
!648 = !DILocation(line: 303, column: 23, scope: !643)
!649 = !DILocation(line: 303, column: 32, scope: !643)
!650 = !DILocation(line: 304, column: 13, scope: !643)
!651 = !DILocation(line: 307, column: 13, scope: !643)
!652 = !DILocation(line: 307, column: 23, scope: !643)
!653 = !DILocation(line: 307, column: 32, scope: !643)
!654 = !DILocation(line: 308, column: 13, scope: !643)
!655 = !DILocation(line: 311, column: 13, scope: !643)
!656 = !DILocation(line: 311, column: 23, scope: !643)
!657 = !DILocation(line: 311, column: 32, scope: !643)
!658 = !DILocation(line: 312, column: 13, scope: !643)
!659 = !DILocation(line: 315, column: 13, scope: !643)
!660 = !DILocation(line: 315, column: 23, scope: !643)
!661 = !DILocation(line: 315, column: 32, scope: !643)
!662 = !DILocation(line: 316, column: 13, scope: !643)
!663 = !DILocation(line: 319, column: 13, scope: !643)
!664 = !DILocation(line: 319, column: 23, scope: !643)
!665 = !DILocation(line: 319, column: 32, scope: !643)
!666 = !DILocation(line: 320, column: 13, scope: !643)
!667 = !DILocation(line: 323, column: 39, scope: !620)
!668 = !DILocation(line: 323, column: 10, scope: !620)
!669 = !DILocation(line: 323, column: 20, scope: !620)
!670 = !DILocation(line: 323, column: 29, scope: !620)
!671 = !DILocation(line: 324, column: 40, scope: !620)
!672 = !DILocation(line: 324, column: 10, scope: !620)
!673 = !DILocation(line: 324, column: 20, scope: !620)
!674 = !DILocation(line: 324, column: 30, scope: !620)
!675 = !DILocation(line: 325, column: 40, scope: !620)
!676 = !DILocation(line: 325, column: 10, scope: !620)
!677 = !DILocation(line: 325, column: 20, scope: !620)
!678 = !DILocation(line: 325, column: 30, scope: !620)
!679 = !DILocation(line: 326, column: 7, scope: !620)
!680 = !DILocation(line: 328, column: 11, scope: !616)
!681 = !DILocation(line: 331, column: 11, scope: !541)
!682 = !DILocation(line: 331, column: 4, scope: !541)
!683 = distinct !DISubprogram(name: "File_IsRemote", scope: !371, file: !371, line: 369, type: !684, isLocal: false, isDefinition: true, scopeLine: 370, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!684 = !DISubroutineType(types: !685)
!685 = !{!436, !375}
!686 = !DILocalVariable(name: "pathName", arg: 1, scope: !683, file: !371, line: 369, type: !375)
!687 = !DILocation(line: 369, column: 27, scope: !683)
!688 = !DILocation(line: 371, column: 8, scope: !689)
!689 = distinct !DILexicalBlock(scope: !683, file: !371, line: 371, column: 8)
!690 = !DILocation(line: 371, column: 8, scope: !683)
!691 = !DILocation(line: 377, column: 7, scope: !692)
!692 = distinct !DILexicalBlock(scope: !689, file: !371, line: 371, column: 28)
!693 = !DILocalVariable(name: "sfbuf", scope: !694, file: !371, line: 379, type: !695)
!694 = distinct !DILexicalBlock(scope: !689, file: !371, line: 378, column: 11)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "statfs", file: !696, line: 24, size: 960, align: 64, elements: !697)
!696 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/statfs.h", directory: "/home/lichi/Desktop/open-vm-tools/line196")
!697 = !{!698, !700, !701, !703, !704, !705, !707, !708, !716, !717, !718, !719}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "f_type", scope: !695, file: !696, line: 26, baseType: !699, size: 64, align: 64)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fsword_t", file: !569, line: 170, baseType: !584)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "f_bsize", scope: !695, file: !696, line: 27, baseType: !699, size: 64, align: 64, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "f_blocks", scope: !695, file: !696, line: 35, baseType: !702, size: 64, align: 64, offset: 128)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fsblkcnt64_t", file: !569, line: 163, baseType: !365)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "f_bfree", scope: !695, file: !696, line: 36, baseType: !702, size: 64, align: 64, offset: 192)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "f_bavail", scope: !695, file: !696, line: 37, baseType: !702, size: 64, align: 64, offset: 256)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "f_files", scope: !695, file: !696, line: 38, baseType: !706, size: 64, align: 64, offset: 320)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fsfilcnt64_t", file: !569, line: 167, baseType: !365)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "f_ffree", scope: !695, file: !696, line: 39, baseType: !706, size: 64, align: 64, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "f_fsid", scope: !695, file: !696, line: 41, baseType: !709, size: 64, align: 32, offset: 448)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fsid_t", file: !569, line: 134, baseType: !710)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !569, line: 134, size: 64, align: 32, elements: !711)
!711 = !{!712}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !710, file: !569, line: 134, baseType: !713, size: 64, align: 32)
!713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !374, size: 64, align: 32, elements: !714)
!714 = !{!715}
!715 = !DISubrange(count: 2)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "f_namelen", scope: !695, file: !696, line: 42, baseType: !699, size: 64, align: 64, offset: 512)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "f_frsize", scope: !695, file: !696, line: 43, baseType: !699, size: 64, align: 64, offset: 576)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !695, file: !696, line: 44, baseType: !699, size: 64, align: 64, offset: 640)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "f_spare", scope: !695, file: !696, line: 45, baseType: !720, size: 256, align: 64, offset: 704)
!720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !699, size: 256, align: 64, elements: !721)
!721 = !{!722}
!722 = !DISubrange(count: 4)
!723 = !DILocation(line: 379, column: 21, scope: !694)
!724 = !DILocation(line: 381, column: 24, scope: !725)
!725 = distinct !DILexicalBlock(scope: !694, file: !371, line: 381, column: 11)
!726 = !DILocation(line: 381, column: 11, scope: !725)
!727 = !DILocation(line: 381, column: 42, scope: !725)
!728 = !DILocation(line: 381, column: 11, scope: !694)
!729 = !DILocation(line: 382, column: 63, scope: !730)
!730 = distinct !DILexicalBlock(scope: !725, file: !371, line: 381, column: 49)
!731 = !DILocation(line: 383, column: 32, scope: !730)
!732 = !DILocation(line: 383, column: 31, scope: !730)
!733 = !DILocation(line: 383, column: 14, scope: !734)
!734 = !DILexicalBlockFile(scope: !730, file: !371, discriminator: 1)
!735 = !DILocation(line: 382, column: 10, scope: !730)
!736 = !DILocation(line: 385, column: 10, scope: !730)
!737 = !DILocation(line: 390, column: 27, scope: !738)
!738 = distinct !DILexicalBlock(scope: !694, file: !371, line: 390, column: 11)
!739 = !DILocation(line: 390, column: 18, scope: !738)
!740 = !DILocation(line: 390, column: 11, scope: !694)
!741 = !DILocation(line: 391, column: 10, scope: !742)
!742 = distinct !DILexicalBlock(scope: !738, file: !371, line: 390, column: 35)
!743 = !DILocation(line: 394, column: 27, scope: !744)
!744 = distinct !DILexicalBlock(scope: !694, file: !371, line: 394, column: 11)
!745 = !DILocation(line: 394, column: 18, scope: !744)
!746 = !DILocation(line: 394, column: 11, scope: !694)
!747 = !DILocation(line: 395, column: 10, scope: !748)
!748 = distinct !DILexicalBlock(scope: !744, file: !371, line: 394, column: 35)
!749 = !DILocation(line: 398, column: 31, scope: !750)
!750 = distinct !DILexicalBlock(scope: !694, file: !371, line: 398, column: 11)
!751 = !DILocation(line: 398, column: 22, scope: !750)
!752 = !DILocation(line: 398, column: 11, scope: !694)
!753 = !DILocation(line: 399, column: 10, scope: !754)
!754 = distinct !DILexicalBlock(scope: !750, file: !371, line: 398, column: 39)
!755 = !DILocation(line: 402, column: 7, scope: !694)
!756 = !DILocation(line: 405, column: 1, scope: !683)
!757 = distinct !DISubprogram(name: "File_IsSymLink", scope: !371, file: !371, line: 426, type: !684, isLocal: false, isDefinition: true, scopeLine: 427, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!758 = !DILocalVariable(name: "pathName", arg: 1, scope: !757, file: !371, line: 426, type: !375)
!759 = !DILocation(line: 426, column: 28, scope: !757)
!760 = !DILocalVariable(name: "statbuf", scope: !757, file: !371, line: 428, type: !564)
!761 = !DILocation(line: 428, column: 16, scope: !757)
!762 = !DILocation(line: 430, column: 24, scope: !757)
!763 = !DILocation(line: 430, column: 12, scope: !757)
!764 = !DILocation(line: 430, column: 44, scope: !757)
!765 = !DILocation(line: 430, column: 50, scope: !757)
!766 = !DILocation(line: 431, column: 19, scope: !757)
!767 = !DILocation(line: 431, column: 14, scope: !757)
!768 = !DILocation(line: 431, column: 25, scope: !757)
!769 = !DILocation(line: 430, column: 50, scope: !770)
!770 = !DILexicalBlockFile(scope: !757, file: !371, discriminator: 1)
!771 = !DILocation(line: 430, column: 11, scope: !770)
!772 = !DILocation(line: 430, column: 4, scope: !770)
!773 = distinct !DISubprogram(name: "File_Cwd", scope: !371, file: !371, line: 453, type: !774, isLocal: false, isDefinition: true, scopeLine: 454, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!774 = !DISubroutineType(types: !775)
!775 = !{!458, !375}
!776 = !DILocalVariable(name: "drive", arg: 1, scope: !773, file: !371, line: 453, type: !375)
!777 = !DILocation(line: 453, column: 22, scope: !773)
!778 = !DILocalVariable(name: "size", scope: !773, file: !371, line: 455, type: !779)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !780, line: 216, baseType: !365)
!780 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line196")
!781 = !DILocation(line: 455, column: 11, scope: !773)
!782 = !DILocalVariable(name: "buffer", scope: !773, file: !371, line: 456, type: !458)
!783 = !DILocation(line: 456, column: 10, scope: !773)
!784 = !DILocalVariable(name: "path", scope: !773, file: !371, line: 457, type: !458)
!785 = !DILocation(line: 457, column: 10, scope: !773)
!786 = !DILocation(line: 459, column: 9, scope: !787)
!787 = distinct !DILexicalBlock(scope: !773, file: !371, line: 459, column: 8)
!788 = !DILocation(line: 459, column: 15, scope: !787)
!789 = !DILocation(line: 459, column: 23, scope: !787)
!790 = !DILocation(line: 459, column: 43, scope: !791)
!791 = !DILexicalBlockFile(scope: !787, file: !371, discriminator: 1)
!792 = !DILocation(line: 459, column: 27, scope: !791)
!793 = !DILocation(line: 459, column: 8, scope: !791)
!794 = !DILocation(line: 461, column: 15, scope: !795)
!795 = distinct !DILexicalBlock(scope: !787, file: !371, line: 459, column: 51)
!796 = !DILocation(line: 460, column: 7, scope: !795)
!797 = !DILocation(line: 462, column: 4, scope: !795)
!798 = !DILocation(line: 464, column: 9, scope: !773)
!799 = !DILocation(line: 465, column: 30, scope: !773)
!800 = !DILocation(line: 465, column: 13, scope: !773)
!801 = !DILocation(line: 465, column: 11, scope: !773)
!802 = !DILocation(line: 467, column: 4, scope: !773)
!803 = !DILocation(line: 468, column: 18, scope: !804)
!804 = distinct !DILexicalBlock(scope: !805, file: !371, line: 468, column: 11)
!805 = distinct !DILexicalBlock(scope: !773, file: !371, line: 467, column: 14)
!806 = !DILocation(line: 468, column: 26, scope: !804)
!807 = !DILocation(line: 468, column: 11, scope: !804)
!808 = !DILocation(line: 468, column: 32, scope: !804)
!809 = !DILocation(line: 468, column: 11, scope: !805)
!810 = !DILocation(line: 469, column: 10, scope: !811)
!811 = distinct !DILexicalBlock(scope: !804, file: !371, line: 468, column: 40)
!812 = !DILocation(line: 472, column: 18, scope: !805)
!813 = !DILocation(line: 472, column: 7, scope: !805)
!814 = !DILocation(line: 473, column: 14, scope: !805)
!815 = !DILocation(line: 475, column: 12, scope: !816)
!816 = distinct !DILexicalBlock(scope: !805, file: !371, line: 475, column: 10)
!817 = !DILocation(line: 475, column: 11, scope: !816)
!818 = !DILocation(line: 475, column: 16, scope: !816)
!819 = !DILocation(line: 475, column: 10, scope: !805)
!820 = !DILocation(line: 476, column: 10, scope: !821)
!821 = distinct !DILexicalBlock(scope: !816, file: !371, line: 475, column: 27)
!822 = !DILocation(line: 479, column: 12, scope: !805)
!823 = !DILocation(line: 480, column: 33, scope: !805)
!824 = !DILocation(line: 480, column: 16, scope: !805)
!825 = !DILocation(line: 480, column: 14, scope: !805)
!826 = !DILocation(line: 467, column: 4, scope: !827)
!827 = !DILexicalBlockFile(scope: !773, file: !371, discriminator: 1)
!828 = distinct !{!828, !802}
!829 = !DILocation(line: 483, column: 8, scope: !830)
!830 = distinct !DILexicalBlock(scope: !773, file: !371, line: 483, column: 8)
!831 = !DILocation(line: 483, column: 15, scope: !830)
!832 = !DILocation(line: 483, column: 8, scope: !773)
!833 = !DILocation(line: 487, column: 19, scope: !834)
!834 = distinct !DILexicalBlock(scope: !830, file: !371, line: 483, column: 23)
!835 = !DILocation(line: 484, column: 7, scope: !834)
!836 = !DILocation(line: 490, column: 16, scope: !834)
!837 = !DILocation(line: 489, column: 7, scope: !834)
!838 = !DILocation(line: 492, column: 7, scope: !834)
!839 = !DILocation(line: 495, column: 25, scope: !773)
!840 = !DILocation(line: 495, column: 11, scope: !773)
!841 = !DILocation(line: 495, column: 9, scope: !773)
!842 = !DILocation(line: 497, column: 15, scope: !773)
!843 = !DILocation(line: 497, column: 4, scope: !773)
!844 = !DILocation(line: 499, column: 11, scope: !773)
!845 = !DILocation(line: 499, column: 4, scope: !773)
!846 = !DILocation(line: 500, column: 1, scope: !773)
!847 = distinct !DISubprogram(name: "Unicode_IsEmpty", scope: !848, file: !848, line: 272, type: !684, isLocal: true, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!848 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/unicodeBase.h", directory: "/home/lichi/Desktop/open-vm-tools/line196")
!849 = !DILocalVariable(name: "str", arg: 1, scope: !847, file: !848, line: 272, type: !375)
!850 = !DILocation(line: 272, column: 29, scope: !847)
!851 = !DILocation(line: 275, column: 11, scope: !847)
!852 = !DILocation(line: 275, column: 18, scope: !847)
!853 = !DILocation(line: 275, column: 4, scope: !847)
!854 = distinct !DISubprogram(name: "Unicode_Alloc", scope: !848, file: !848, line: 111, type: !855, isLocal: true, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!855 = !DISubroutineType(types: !856)
!856 = !{!458, !857, !859}
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64, align: 64)
!858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "StringEncoding", file: !4, line: 445, baseType: !3)
!860 = !DILocalVariable(name: "buffer", arg: 1, scope: !854, file: !848, line: 111, type: !857)
!861 = !DILocation(line: 111, column: 27, scope: !854)
!862 = !DILocalVariable(name: "encoding", arg: 2, scope: !854, file: !848, line: 112, type: !859)
!863 = !DILocation(line: 112, column: 30, scope: !854)
!864 = !DILocation(line: 114, column: 35, scope: !854)
!865 = !DILocation(line: 114, column: 47, scope: !854)
!866 = !DILocation(line: 114, column: 11, scope: !854)
!867 = !DILocation(line: 114, column: 4, scope: !854)
!868 = distinct !DISubprogram(name: "File_StripFwdSlashes", scope: !371, file: !371, line: 520, type: !774, isLocal: false, isDefinition: true, scopeLine: 521, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!869 = !DILocalVariable(name: "pathName", arg: 1, scope: !868, file: !371, line: 520, type: !375)
!870 = !DILocation(line: 520, column: 34, scope: !868)
!871 = !DILocalVariable(name: "ptr", scope: !868, file: !371, line: 522, type: !458)
!872 = !DILocation(line: 522, column: 10, scope: !868)
!873 = !DILocalVariable(name: "path", scope: !868, file: !371, line: 523, type: !458)
!874 = !DILocation(line: 523, column: 10, scope: !868)
!875 = !DILocalVariable(name: "cptr", scope: !868, file: !371, line: 524, type: !458)
!876 = !DILocation(line: 524, column: 10, scope: !868)
!877 = !DILocalVariable(name: "prev", scope: !868, file: !371, line: 525, type: !458)
!878 = !DILocation(line: 525, column: 10, scope: !868)
!879 = !DILocalVariable(name: "result", scope: !868, file: !371, line: 526, type: !458)
!880 = !DILocation(line: 526, column: 10, scope: !868)
!881 = !DILocation(line: 530, column: 33, scope: !868)
!882 = !DILocation(line: 530, column: 11, scope: !868)
!883 = !DILocation(line: 530, column: 9, scope: !868)
!884 = !DILocation(line: 533, column: 10, scope: !868)
!885 = !DILocation(line: 533, column: 8, scope: !868)
!886 = !DILocation(line: 534, column: 11, scope: !868)
!887 = !DILocation(line: 534, column: 9, scope: !868)
!888 = !DILocation(line: 535, column: 9, scope: !868)
!889 = !DILocation(line: 542, column: 4, scope: !868)
!890 = !DILocation(line: 542, column: 12, scope: !891)
!891 = !DILexicalBlockFile(scope: !868, file: !371, discriminator: 1)
!892 = !DILocation(line: 542, column: 11, scope: !891)
!893 = !DILocation(line: 542, column: 16, scope: !891)
!894 = !DILocation(line: 542, column: 4, scope: !891)
!895 = !DILocation(line: 543, column: 12, scope: !896)
!896 = distinct !DILexicalBlock(scope: !897, file: !371, line: 543, column: 11)
!897 = distinct !DILexicalBlock(scope: !868, file: !371, line: 542, column: 25)
!898 = !DILocation(line: 543, column: 11, scope: !896)
!899 = !DILocation(line: 543, column: 16, scope: !896)
!900 = !DILocation(line: 543, column: 11, scope: !897)
!901 = !DILocation(line: 544, column: 14, scope: !902)
!902 = distinct !DILexicalBlock(scope: !903, file: !371, line: 544, column: 14)
!903 = distinct !DILexicalBlock(scope: !896, file: !371, line: 543, column: 24)
!904 = !DILocation(line: 544, column: 22, scope: !902)
!905 = !DILocation(line: 544, column: 26, scope: !902)
!906 = !DILocation(line: 544, column: 19, scope: !902)
!907 = !DILocation(line: 544, column: 14, scope: !903)
!908 = !DILocation(line: 545, column: 24, scope: !909)
!909 = distinct !DILexicalBlock(scope: !902, file: !371, line: 544, column: 31)
!910 = !DILocation(line: 545, column: 23, scope: !909)
!911 = !DILocation(line: 545, column: 18, scope: !909)
!912 = !DILocation(line: 545, column: 21, scope: !909)
!913 = !DILocation(line: 546, column: 10, scope: !909)
!914 = !DILocation(line: 547, column: 17, scope: !903)
!915 = !DILocation(line: 547, column: 15, scope: !903)
!916 = !DILocation(line: 548, column: 7, scope: !903)
!917 = !DILocation(line: 549, column: 21, scope: !918)
!918 = distinct !DILexicalBlock(scope: !896, file: !371, line: 548, column: 14)
!919 = !DILocation(line: 549, column: 20, scope: !918)
!920 = !DILocation(line: 549, column: 15, scope: !918)
!921 = !DILocation(line: 549, column: 18, scope: !918)
!922 = !DILocation(line: 551, column: 10, scope: !897)
!923 = !DILocation(line: 542, column: 4, scope: !924)
!924 = !DILexicalBlockFile(scope: !868, file: !371, discriminator: 2)
!925 = distinct !{!925, !889}
!926 = !DILocation(line: 554, column: 5, scope: !868)
!927 = !DILocation(line: 554, column: 10, scope: !868)
!928 = !DILocation(line: 556, column: 35, scope: !868)
!929 = !DILocation(line: 556, column: 13, scope: !868)
!930 = !DILocation(line: 556, column: 11, scope: !868)
!931 = !DILocation(line: 558, column: 15, scope: !868)
!932 = !DILocation(line: 558, column: 4, scope: !868)
!933 = !DILocation(line: 560, column: 11, scope: !868)
!934 = !DILocation(line: 560, column: 4, scope: !868)
!935 = distinct !DISubprogram(name: "Unicode_AllocWithUTF8", scope: !848, file: !848, line: 139, type: !774, isLocal: true, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!936 = !DILocalVariable(name: "utf8String", arg: 1, scope: !935, file: !848, line: 139, type: !375)
!937 = !DILocation(line: 139, column: 35, scope: !935)
!938 = !DILocation(line: 141, column: 35, scope: !935)
!939 = !DILocation(line: 141, column: 11, scope: !935)
!940 = !DILocation(line: 141, column: 4, scope: !935)
!941 = distinct !DISubprogram(name: "File_FullPath", scope: !371, file: !371, line: 594, type: !774, isLocal: false, isDefinition: true, scopeLine: 595, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!942 = !DILocalVariable(name: "pathName", arg: 1, scope: !941, file: !371, line: 594, type: !375)
!943 = !DILocation(line: 594, column: 27, scope: !941)
!944 = !DILocalVariable(name: "cwd", scope: !941, file: !371, line: 596, type: !458)
!945 = !DILocation(line: 596, column: 10, scope: !941)
!946 = !DILocalVariable(name: "ret", scope: !941, file: !371, line: 597, type: !458)
!947 = !DILocation(line: 597, column: 10, scope: !941)
!948 = !DILocation(line: 599, column: 9, scope: !949)
!949 = distinct !DILexicalBlock(scope: !941, file: !371, line: 599, column: 8)
!950 = !DILocation(line: 599, column: 18, scope: !949)
!951 = !DILocation(line: 599, column: 26, scope: !949)
!952 = !DILocation(line: 599, column: 45, scope: !953)
!953 = !DILexicalBlockFile(scope: !949, file: !371, discriminator: 1)
!954 = !DILocation(line: 599, column: 29, scope: !953)
!955 = !DILocation(line: 599, column: 8, scope: !953)
!956 = !DILocation(line: 600, column: 11, scope: !957)
!957 = distinct !DILexicalBlock(scope: !949, file: !371, line: 599, column: 56)
!958 = !DILocation(line: 601, column: 4, scope: !957)
!959 = !DILocation(line: 602, column: 13, scope: !960)
!960 = distinct !DILexicalBlock(scope: !949, file: !371, line: 601, column: 11)
!961 = !DILocation(line: 602, column: 11, scope: !960)
!962 = !DILocation(line: 603, column: 11, scope: !963)
!963 = distinct !DILexicalBlock(scope: !960, file: !371, line: 603, column: 11)
!964 = !DILocation(line: 603, column: 15, scope: !963)
!965 = !DILocation(line: 603, column: 11, scope: !960)
!966 = !DILocation(line: 604, column: 10, scope: !967)
!967 = distinct !DILexicalBlock(scope: !963, file: !371, line: 603, column: 23)
!968 = !DILocation(line: 608, column: 9, scope: !969)
!969 = distinct !DILexicalBlock(scope: !941, file: !371, line: 608, column: 8)
!970 = !DILocation(line: 608, column: 18, scope: !969)
!971 = !DILocation(line: 608, column: 26, scope: !969)
!972 = !DILocation(line: 608, column: 45, scope: !973)
!973 = !DILexicalBlockFile(scope: !969, file: !371, discriminator: 1)
!974 = !DILocation(line: 608, column: 29, scope: !973)
!975 = !DILocation(line: 608, column: 8, scope: !973)
!976 = !DILocation(line: 609, column: 31, scope: !977)
!977 = distinct !DILexicalBlock(scope: !969, file: !371, line: 608, column: 56)
!978 = !DILocation(line: 609, column: 13, scope: !977)
!979 = !DILocation(line: 609, column: 11, scope: !977)
!980 = !DILocation(line: 610, column: 4, scope: !977)
!981 = !DILocalVariable(name: "path", scope: !982, file: !371, line: 611, type: !458)
!982 = distinct !DILexicalBlock(scope: !969, file: !371, line: 610, column: 11)
!983 = !DILocation(line: 611, column: 13, scope: !982)
!984 = !DILocation(line: 613, column: 27, scope: !985)
!985 = distinct !DILexicalBlock(scope: !982, file: !371, line: 613, column: 11)
!986 = !DILocation(line: 613, column: 11, scope: !985)
!987 = !DILocation(line: 613, column: 11, scope: !982)
!988 = !DILocation(line: 614, column: 35, scope: !989)
!989 = distinct !DILexicalBlock(scope: !985, file: !371, line: 613, column: 38)
!990 = !DILocation(line: 614, column: 17, scope: !989)
!991 = !DILocation(line: 614, column: 15, scope: !989)
!992 = !DILocation(line: 615, column: 7, scope: !989)
!993 = !DILocation(line: 616, column: 30, scope: !994)
!994 = distinct !DILexicalBlock(scope: !985, file: !371, line: 615, column: 14)
!995 = !DILocation(line: 616, column: 40, scope: !994)
!996 = !DILocation(line: 616, column: 17, scope: !994)
!997 = !DILocation(line: 616, column: 15, scope: !994)
!998 = !DILocation(line: 619, column: 28, scope: !982)
!999 = !DILocation(line: 619, column: 13, scope: !982)
!1000 = !DILocation(line: 619, column: 11, scope: !982)
!1001 = !DILocation(line: 620, column: 11, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !982, file: !371, line: 620, column: 11)
!1003 = !DILocation(line: 620, column: 15, scope: !1002)
!1004 = !DILocation(line: 620, column: 11, scope: !982)
!1005 = !DILocalVariable(name: "dir", scope: !1006, file: !371, line: 621, type: !458)
!1006 = distinct !DILexicalBlock(scope: !1002, file: !371, line: 620, column: 23)
!1007 = !DILocation(line: 621, column: 16, scope: !1006)
!1008 = !DILocalVariable(name: "file", scope: !1006, file: !371, line: 622, type: !458)
!1009 = !DILocation(line: 622, column: 16, scope: !1006)
!1010 = !DILocalVariable(name: "ancestorPath", scope: !1006, file: !371, line: 626, type: !458)
!1011 = !DILocation(line: 626, column: 16, scope: !1006)
!1012 = !DILocalVariable(name: "ancestorRealPath", scope: !1006, file: !371, line: 627, type: !458)
!1013 = !DILocation(line: 627, column: 16, scope: !1006)
!1014 = !DILocation(line: 630, column: 27, scope: !1006)
!1015 = !DILocation(line: 630, column: 10, scope: !1006)
!1016 = !DILocation(line: 640, column: 58, scope: !1006)
!1017 = !DILocation(line: 640, column: 25, scope: !1006)
!1018 = !DILocation(line: 640, column: 23, scope: !1006)
!1019 = !DILocation(line: 641, column: 44, scope: !1006)
!1020 = !DILocation(line: 641, column: 29, scope: !1006)
!1021 = !DILocation(line: 641, column: 27, scope: !1006)
!1022 = !DILocation(line: 647, column: 14, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1006, file: !371, line: 647, column: 14)
!1024 = !DILocation(line: 647, column: 31, scope: !1023)
!1025 = !DILocation(line: 647, column: 14, scope: !1006)
!1026 = !DILocation(line: 648, column: 40, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1023, file: !371, line: 647, column: 39)
!1028 = !DILocation(line: 648, column: 19, scope: !1027)
!1029 = !DILocation(line: 648, column: 17, scope: !1027)
!1030 = !DILocation(line: 649, column: 10, scope: !1027)
!1031 = !DILocation(line: 650, column: 33, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1023, file: !371, line: 649, column: 17)
!1033 = !DILocation(line: 650, column: 51, scope: !1032)
!1034 = !DILocation(line: 650, column: 65, scope: !1032)
!1035 = !DILocation(line: 650, column: 58, scope: !1032)
!1036 = !DILocation(line: 650, column: 56, scope: !1032)
!1037 = !DILocation(line: 650, column: 19, scope: !1038)
!1038 = !DILexicalBlockFile(scope: !1032, file: !371, discriminator: 1)
!1039 = !DILocation(line: 650, column: 17, scope: !1032)
!1040 = !DILocation(line: 651, column: 24, scope: !1032)
!1041 = !DILocation(line: 651, column: 13, scope: !1032)
!1042 = !DILocation(line: 654, column: 21, scope: !1006)
!1043 = !DILocation(line: 654, column: 10, scope: !1006)
!1044 = !DILocation(line: 656, column: 21, scope: !1006)
!1045 = !DILocation(line: 656, column: 10, scope: !1006)
!1046 = !DILocation(line: 657, column: 21, scope: !1006)
!1047 = !DILocation(line: 657, column: 10, scope: !1006)
!1048 = !DILocation(line: 658, column: 7, scope: !1006)
!1049 = !DILocation(line: 660, column: 18, scope: !982)
!1050 = !DILocation(line: 660, column: 7, scope: !982)
!1051 = !DILocation(line: 663, column: 15, scope: !941)
!1052 = !DILocation(line: 663, column: 4, scope: !941)
!1053 = !DILocation(line: 665, column: 11, scope: !941)
!1054 = !DILocation(line: 665, column: 4, scope: !941)
!1055 = !DILocation(line: 666, column: 1, scope: !941)
!1056 = distinct !DISubprogram(name: "File_IsFullPath", scope: !371, file: !371, line: 686, type: !684, isLocal: false, isDefinition: true, scopeLine: 687, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!1057 = !DILocalVariable(name: "pathName", arg: 1, scope: !1056, file: !371, line: 686, type: !375)
!1058 = !DILocation(line: 686, column: 29, scope: !1056)
!1059 = !DILocation(line: 689, column: 11, scope: !1056)
!1060 = !DILocation(line: 689, column: 20, scope: !1056)
!1061 = !DILocation(line: 689, column: 27, scope: !1056)
!1062 = !DILocation(line: 689, column: 30, scope: !1063)
!1063 = !DILexicalBlockFile(scope: !1056, file: !371, discriminator: 1)
!1064 = !DILocation(line: 689, column: 42, scope: !1063)
!1065 = !DILocation(line: 689, column: 27, scope: !1066)
!1066 = !DILexicalBlockFile(scope: !1056, file: !371, discriminator: 2)
!1067 = !DILocation(line: 689, column: 11, scope: !1066)
!1068 = !DILocation(line: 689, column: 4, scope: !1066)
!1069 = distinct !DISubprogram(name: "FilePosixNearestExistingAncestor", scope: !371, file: !371, line: 2043, type: !774, isLocal: true, isDefinition: true, scopeLine: 2044, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!1070 = !DILocalVariable(name: "path", arg: 1, scope: !1069, file: !371, line: 2043, type: !375)
!1071 = !DILocation(line: 2043, column: 46, scope: !1069)
!1072 = !DILocalVariable(name: "resultSize", scope: !1069, file: !371, line: 2045, type: !779)
!1073 = !DILocation(line: 2045, column: 11, scope: !1069)
!1074 = !DILocalVariable(name: "result", scope: !1069, file: !371, line: 2046, type: !458)
!1075 = !DILocation(line: 2046, column: 10, scope: !1069)
!1076 = !DILocalVariable(name: "statbuf", scope: !1069, file: !371, line: 2047, type: !564)
!1077 = !DILocation(line: 2047, column: 16, scope: !1069)
!1078 = !DILocation(line: 2049, column: 27, scope: !1069)
!1079 = !DILocation(line: 2049, column: 20, scope: !1069)
!1080 = !DILocation(line: 2049, column: 34, scope: !1069)
!1081 = !DILocation(line: 2049, column: 18, scope: !1069)
!1082 = !DILocation(line: 2049, column: 51, scope: !1083)
!1083 = !DILexicalBlockFile(scope: !1069, file: !371, discriminator: 1)
!1084 = !DILocation(line: 2049, column: 44, scope: !1083)
!1085 = !DILocation(line: 2049, column: 18, scope: !1083)
!1086 = !DILocation(line: 2049, column: 18, scope: !1087)
!1087 = !DILexicalBlockFile(scope: !1069, file: !371, discriminator: 2)
!1088 = !DILocation(line: 2049, column: 18, scope: !1089)
!1089 = !DILexicalBlockFile(scope: !1069, file: !371, discriminator: 3)
!1090 = !DILocation(line: 2049, column: 65, scope: !1089)
!1091 = !DILocation(line: 2049, column: 15, scope: !1089)
!1092 = !DILocation(line: 2050, column: 30, scope: !1069)
!1093 = !DILocation(line: 2050, column: 13, scope: !1069)
!1094 = !DILocation(line: 2050, column: 11, scope: !1069)
!1095 = !DILocation(line: 2051, column: 15, scope: !1069)
!1096 = !DILocation(line: 2051, column: 23, scope: !1069)
!1097 = !DILocation(line: 2051, column: 29, scope: !1069)
!1098 = !DILocation(line: 2051, column: 4, scope: !1069)
!1099 = !DILocation(line: 2053, column: 4, scope: !1069)
!1100 = !DILocalVariable(name: "ptr", scope: !1101, file: !371, line: 2054, type: !458)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !371, line: 2053, column: 13)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !371, line: 2053, column: 4)
!1103 = distinct !DILexicalBlock(scope: !1069, file: !371, line: 2053, column: 4)
!1104 = !DILocation(line: 2054, column: 13, scope: !1101)
!1105 = !DILocation(line: 2056, column: 12, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1101, file: !371, line: 2056, column: 11)
!1107 = !DILocation(line: 2056, column: 11, scope: !1106)
!1108 = !DILocation(line: 2056, column: 19, scope: !1106)
!1109 = !DILocation(line: 2056, column: 11, scope: !1101)
!1110 = !DILocation(line: 2057, column: 21, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1106, file: !371, line: 2056, column: 28)
!1112 = !DILocation(line: 2057, column: 30, scope: !1111)
!1113 = !DILocation(line: 2057, column: 29, scope: !1111)
!1114 = !DILocation(line: 2057, column: 35, scope: !1111)
!1115 = !DILocation(line: 2057, column: 55, scope: !1111)
!1116 = !DILocation(line: 2057, column: 10, scope: !1111)
!1117 = !DILocation(line: 2058, column: 10, scope: !1111)
!1118 = !DILocation(line: 2061, column: 22, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1101, file: !371, line: 2061, column: 11)
!1120 = !DILocation(line: 2061, column: 11, scope: !1119)
!1121 = !DILocation(line: 2061, column: 40, scope: !1119)
!1122 = !DILocation(line: 2061, column: 11, scope: !1101)
!1123 = !DILocation(line: 2062, column: 10, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1119, file: !371, line: 2061, column: 46)
!1125 = !DILocation(line: 2065, column: 21, scope: !1101)
!1126 = !DILocation(line: 2065, column: 13, scope: !1101)
!1127 = !DILocation(line: 2065, column: 11, scope: !1101)
!1128 = !DILocation(line: 2066, column: 11, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1101, file: !371, line: 2066, column: 11)
!1130 = !DILocation(line: 2066, column: 15, scope: !1129)
!1131 = !DILocation(line: 2066, column: 11, scope: !1101)
!1132 = !DILocation(line: 2067, column: 16, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1129, file: !371, line: 2066, column: 23)
!1134 = !DILocation(line: 2067, column: 14, scope: !1133)
!1135 = !DILocation(line: 2068, column: 7, scope: !1133)
!1136 = !DILocation(line: 2069, column: 8, scope: !1101)
!1137 = !DILocation(line: 2069, column: 12, scope: !1101)
!1138 = !DILocation(line: 2053, column: 4, scope: !1139)
!1139 = !DILexicalBlockFile(scope: !1102, file: !371, discriminator: 1)
!1140 = distinct !{!1140, !1099}
!1141 = !DILocation(line: 2072, column: 11, scope: !1069)
!1142 = !DILocation(line: 2072, column: 4, scope: !1069)
!1143 = distinct !DISubprogram(name: "File_GetTimes", scope: !371, file: !371, line: 712, type: !1144, isLocal: false, isDefinition: true, scopeLine: 717, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!436, !375, !1146, !1146, !1146, !1146}
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64, align: 64)
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmTimeType", file: !362, line: 354, baseType: !1148)
!1148 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !362, line: 172, baseType: !1149)
!1149 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !1150, line: 197, baseType: !584)
!1150 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line196")
!1151 = !DILocalVariable(name: "pathName", arg: 1, scope: !1143, file: !371, line: 712, type: !375)
!1152 = !DILocation(line: 712, column: 27, scope: !1143)
!1153 = !DILocalVariable(name: "createTime", arg: 2, scope: !1143, file: !371, line: 713, type: !1146)
!1154 = !DILocation(line: 713, column: 27, scope: !1143)
!1155 = !DILocalVariable(name: "accessTime", arg: 3, scope: !1143, file: !371, line: 714, type: !1146)
!1156 = !DILocation(line: 714, column: 27, scope: !1143)
!1157 = !DILocalVariable(name: "writeTime", arg: 4, scope: !1143, file: !371, line: 715, type: !1146)
!1158 = !DILocation(line: 715, column: 27, scope: !1143)
!1159 = !DILocalVariable(name: "attrChangeTime", arg: 5, scope: !1143, file: !371, line: 716, type: !1146)
!1160 = !DILocation(line: 716, column: 27, scope: !1143)
!1161 = !DILocalVariable(name: "statBuf", scope: !1143, file: !371, line: 718, type: !564)
!1162 = !DILocation(line: 718, column: 16, scope: !1143)
!1163 = !DILocation(line: 722, column: 5, scope: !1143)
!1164 = !DILocation(line: 722, column: 16, scope: !1143)
!1165 = !DILocation(line: 723, column: 5, scope: !1143)
!1166 = !DILocation(line: 723, column: 16, scope: !1143)
!1167 = !DILocation(line: 724, column: 5, scope: !1143)
!1168 = !DILocation(line: 724, column: 15, scope: !1143)
!1169 = !DILocation(line: 725, column: 5, scope: !1143)
!1170 = !DILocation(line: 725, column: 20, scope: !1143)
!1171 = !DILocation(line: 727, column: 20, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1143, file: !371, line: 727, column: 8)
!1173 = !DILocation(line: 727, column: 8, scope: !1172)
!1174 = !DILocation(line: 727, column: 40, scope: !1172)
!1175 = !DILocation(line: 727, column: 8, scope: !1143)
!1176 = !DILocation(line: 729, column: 11, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1172, file: !371, line: 727, column: 47)
!1178 = !DILocation(line: 729, column: 39, scope: !1177)
!1179 = !DILocation(line: 729, column: 38, scope: !1177)
!1180 = !DILocation(line: 729, column: 21, scope: !1181)
!1181 = !DILexicalBlockFile(scope: !1177, file: !371, discriminator: 1)
!1182 = !DILocation(line: 728, column: 7, scope: !1177)
!1183 = !DILocation(line: 731, column: 7, scope: !1177)
!1184 = !DILocation(line: 802, column: 52, scope: !1143)
!1185 = !DILocation(line: 802, column: 18, scope: !1143)
!1186 = !DILocation(line: 802, column: 5, scope: !1143)
!1187 = !DILocation(line: 802, column: 16, scope: !1143)
!1188 = !DILocation(line: 803, column: 51, scope: !1143)
!1189 = !DILocation(line: 803, column: 17, scope: !1143)
!1190 = !DILocation(line: 803, column: 5, scope: !1143)
!1191 = !DILocation(line: 803, column: 15, scope: !1143)
!1192 = !DILocation(line: 804, column: 56, scope: !1143)
!1193 = !DILocation(line: 804, column: 22, scope: !1143)
!1194 = !DILocation(line: 804, column: 5, scope: !1143)
!1195 = !DILocation(line: 804, column: 20, scope: !1143)
!1196 = !DILocation(line: 829, column: 4, scope: !1143)
!1197 = !DILocation(line: 830, column: 1, scope: !1143)
!1198 = distinct !DISubprogram(name: "File_SetTimes", scope: !371, file: !371, line: 852, type: !1199, isLocal: false, isDefinition: true, scopeLine: 857, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!436, !375, !1147, !1147, !1147, !1147}
!1201 = !DILocalVariable(name: "pathName", arg: 1, scope: !1198, file: !371, line: 852, type: !375)
!1202 = !DILocation(line: 852, column: 27, scope: !1198)
!1203 = !DILocalVariable(name: "createTime", arg: 2, scope: !1198, file: !371, line: 853, type: !1147)
!1204 = !DILocation(line: 853, column: 26, scope: !1198)
!1205 = !DILocalVariable(name: "accessTime", arg: 3, scope: !1198, file: !371, line: 854, type: !1147)
!1206 = !DILocation(line: 854, column: 26, scope: !1198)
!1207 = !DILocalVariable(name: "writeTime", arg: 4, scope: !1198, file: !371, line: 855, type: !1147)
!1208 = !DILocation(line: 855, column: 26, scope: !1198)
!1209 = !DILocalVariable(name: "attrChangeTime", arg: 5, scope: !1198, file: !371, line: 856, type: !1147)
!1210 = !DILocation(line: 856, column: 26, scope: !1198)
!1211 = !DILocalVariable(name: "times", scope: !1198, file: !371, line: 858, type: !1212)
!1212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1213, size: 256, align: 64, elements: !714)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !1214, line: 30, size: 128, align: 64, elements: !1215)
!1214 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/open-vm-tools/line196")
!1215 = !{!1216, !1217}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1213, file: !1214, line: 32, baseType: !594, size: 64, align: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !1213, file: !1214, line: 33, baseType: !1218, size: 64, align: 64, offset: 64)
!1218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !569, line: 141, baseType: !584)
!1219 = !DILocation(line: 858, column: 19, scope: !1198)
!1220 = !DILocalVariable(name: "aTime", scope: !1198, file: !371, line: 859, type: !1221)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64, align: 64)
!1222 = !DILocation(line: 859, column: 20, scope: !1198)
!1223 = !DILocalVariable(name: "wTime", scope: !1198, file: !371, line: 859, type: !1221)
!1224 = !DILocation(line: 859, column: 28, scope: !1198)
!1225 = !DILocalVariable(name: "statBuf", scope: !1198, file: !371, line: 860, type: !564)
!1226 = !DILocation(line: 860, column: 16, scope: !1198)
!1227 = !DILocalVariable(name: "path", scope: !1198, file: !371, line: 861, type: !458)
!1228 = !DILocation(line: 861, column: 10, scope: !1198)
!1229 = !DILocalVariable(name: "err", scope: !1198, file: !371, line: 862, type: !374)
!1230 = !DILocation(line: 862, column: 8, scope: !1198)
!1231 = !DILocation(line: 864, column: 8, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1198, file: !371, line: 864, column: 8)
!1233 = !DILocation(line: 864, column: 17, scope: !1232)
!1234 = !DILocation(line: 864, column: 8, scope: !1198)
!1235 = !DILocation(line: 865, column: 7, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1232, file: !371, line: 864, column: 25)
!1237 = !DILocation(line: 868, column: 33, scope: !1198)
!1238 = !DILocation(line: 868, column: 11, scope: !1198)
!1239 = !DILocation(line: 868, column: 9, scope: !1198)
!1240 = !DILocation(line: 869, column: 8, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1198, file: !371, line: 869, column: 8)
!1242 = !DILocation(line: 869, column: 13, scope: !1241)
!1243 = !DILocation(line: 869, column: 8, scope: !1198)
!1244 = !DILocation(line: 871, column: 25, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1241, file: !371, line: 869, column: 21)
!1246 = !DILocation(line: 870, column: 7, scope: !1245)
!1247 = !DILocation(line: 873, column: 7, scope: !1245)
!1248 = !DILocation(line: 876, column: 17, scope: !1198)
!1249 = !DILocation(line: 876, column: 11, scope: !1198)
!1250 = !DILocation(line: 876, column: 33, scope: !1198)
!1251 = !DILocation(line: 876, column: 10, scope: !1198)
!1252 = !DILocation(line: 876, column: 43, scope: !1253)
!1253 = !DILexicalBlockFile(scope: !1198, file: !371, discriminator: 1)
!1254 = !DILocation(line: 876, column: 42, scope: !1253)
!1255 = !DILocation(line: 876, column: 10, scope: !1253)
!1256 = !DILocation(line: 876, column: 10, scope: !1257)
!1257 = !DILexicalBlockFile(scope: !1198, file: !371, discriminator: 2)
!1258 = !DILocation(line: 876, column: 10, scope: !1259)
!1259 = !DILexicalBlockFile(scope: !1198, file: !371, discriminator: 3)
!1260 = !DILocation(line: 876, column: 8, scope: !1259)
!1261 = !DILocation(line: 878, column: 8, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1198, file: !371, line: 878, column: 8)
!1263 = !DILocation(line: 878, column: 12, scope: !1262)
!1264 = !DILocation(line: 878, column: 8, scope: !1198)
!1265 = !DILocation(line: 880, column: 11, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1262, file: !371, line: 878, column: 18)
!1267 = !DILocation(line: 880, column: 38, scope: !1266)
!1268 = !DILocation(line: 880, column: 21, scope: !1266)
!1269 = !DILocation(line: 879, column: 7, scope: !1266)
!1270 = !DILocation(line: 881, column: 18, scope: !1266)
!1271 = !DILocation(line: 881, column: 7, scope: !1266)
!1272 = !DILocation(line: 883, column: 7, scope: !1266)
!1273 = !DILocation(line: 886, column: 13, scope: !1198)
!1274 = !DILocation(line: 886, column: 10, scope: !1198)
!1275 = !DILocation(line: 887, column: 13, scope: !1198)
!1276 = !DILocation(line: 887, column: 10, scope: !1198)
!1277 = !DILocation(line: 894, column: 27, scope: !1198)
!1278 = !DILocation(line: 894, column: 35, scope: !1198)
!1279 = !DILocation(line: 894, column: 4, scope: !1198)
!1280 = !DILocation(line: 894, column: 11, scope: !1198)
!1281 = !DILocation(line: 894, column: 18, scope: !1198)
!1282 = !DILocation(line: 895, column: 4, scope: !1198)
!1283 = !DILocation(line: 895, column: 11, scope: !1198)
!1284 = !DILocation(line: 895, column: 19, scope: !1198)
!1285 = !DILocation(line: 896, column: 27, scope: !1198)
!1286 = !DILocation(line: 896, column: 35, scope: !1198)
!1287 = !DILocation(line: 896, column: 4, scope: !1198)
!1288 = !DILocation(line: 896, column: 11, scope: !1198)
!1289 = !DILocation(line: 896, column: 18, scope: !1198)
!1290 = !DILocation(line: 897, column: 4, scope: !1198)
!1291 = !DILocation(line: 897, column: 11, scope: !1198)
!1292 = !DILocation(line: 897, column: 19, scope: !1198)
!1293 = !DILocation(line: 899, column: 8, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1198, file: !371, line: 899, column: 8)
!1295 = !DILocation(line: 899, column: 19, scope: !1294)
!1296 = !DILocation(line: 899, column: 8, scope: !1198)
!1297 = !DILocalVariable(name: "ts", scope: !1298, file: !371, line: 900, type: !590)
!1298 = distinct !DILexicalBlock(scope: !1294, file: !371, line: 899, column: 24)
!1299 = !DILocation(line: 900, column: 23, scope: !1298)
!1300 = !DILocation(line: 902, column: 38, scope: !1298)
!1301 = !DILocation(line: 902, column: 7, scope: !1298)
!1302 = !DILocation(line: 903, column: 26, scope: !1298)
!1303 = !DILocation(line: 903, column: 7, scope: !1298)
!1304 = !DILocation(line: 903, column: 14, scope: !1298)
!1305 = !DILocation(line: 903, column: 21, scope: !1298)
!1306 = !DILocation(line: 904, column: 27, scope: !1298)
!1307 = !DILocation(line: 904, column: 35, scope: !1298)
!1308 = !DILocation(line: 904, column: 7, scope: !1298)
!1309 = !DILocation(line: 904, column: 14, scope: !1298)
!1310 = !DILocation(line: 904, column: 22, scope: !1298)
!1311 = !DILocation(line: 905, column: 4, scope: !1298)
!1312 = !DILocation(line: 907, column: 8, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1198, file: !371, line: 907, column: 8)
!1314 = !DILocation(line: 907, column: 18, scope: !1313)
!1315 = !DILocation(line: 907, column: 8, scope: !1198)
!1316 = !DILocalVariable(name: "ts", scope: !1317, file: !371, line: 908, type: !590)
!1317 = distinct !DILexicalBlock(scope: !1313, file: !371, line: 907, column: 23)
!1318 = !DILocation(line: 908, column: 23, scope: !1317)
!1319 = !DILocation(line: 910, column: 38, scope: !1317)
!1320 = !DILocation(line: 910, column: 7, scope: !1317)
!1321 = !DILocation(line: 911, column: 26, scope: !1317)
!1322 = !DILocation(line: 911, column: 7, scope: !1317)
!1323 = !DILocation(line: 911, column: 14, scope: !1317)
!1324 = !DILocation(line: 911, column: 21, scope: !1317)
!1325 = !DILocation(line: 912, column: 27, scope: !1317)
!1326 = !DILocation(line: 912, column: 35, scope: !1317)
!1327 = !DILocation(line: 912, column: 7, scope: !1317)
!1328 = !DILocation(line: 912, column: 14, scope: !1317)
!1329 = !DILocation(line: 912, column: 22, scope: !1317)
!1330 = !DILocation(line: 913, column: 4, scope: !1317)
!1331 = !DILocation(line: 915, column: 18, scope: !1198)
!1332 = !DILocation(line: 915, column: 24, scope: !1198)
!1333 = !DILocation(line: 915, column: 11, scope: !1198)
!1334 = !DILocation(line: 915, column: 31, scope: !1198)
!1335 = !DILocation(line: 915, column: 10, scope: !1198)
!1336 = !DILocation(line: 915, column: 41, scope: !1253)
!1337 = !DILocation(line: 915, column: 40, scope: !1253)
!1338 = !DILocation(line: 915, column: 10, scope: !1253)
!1339 = !DILocation(line: 915, column: 10, scope: !1257)
!1340 = !DILocation(line: 915, column: 10, scope: !1259)
!1341 = !DILocation(line: 915, column: 8, scope: !1259)
!1342 = !DILocation(line: 917, column: 15, scope: !1198)
!1343 = !DILocation(line: 917, column: 4, scope: !1198)
!1344 = !DILocation(line: 919, column: 8, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1198, file: !371, line: 919, column: 8)
!1346 = !DILocation(line: 919, column: 12, scope: !1345)
!1347 = !DILocation(line: 919, column: 8, scope: !1198)
!1348 = !DILocation(line: 921, column: 11, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1345, file: !371, line: 919, column: 18)
!1350 = !DILocation(line: 921, column: 38, scope: !1349)
!1351 = !DILocation(line: 921, column: 21, scope: !1349)
!1352 = !DILocation(line: 920, column: 7, scope: !1349)
!1353 = !DILocation(line: 923, column: 7, scope: !1349)
!1354 = !DILocation(line: 926, column: 4, scope: !1198)
!1355 = !DILocation(line: 927, column: 1, scope: !1198)
!1356 = distinct !DISubprogram(name: "File_SetFilePermissions", scope: !371, file: !371, line: 947, type: !1357, isLocal: false, isDefinition: true, scopeLine: 949, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{!436, !375, !374}
!1359 = !DILocalVariable(name: "pathName", arg: 1, scope: !1356, file: !371, line: 947, type: !375)
!1360 = !DILocation(line: 947, column: 37, scope: !1356)
!1361 = !DILocalVariable(name: "perms", arg: 2, scope: !1356, file: !371, line: 948, type: !374)
!1362 = !DILocation(line: 948, column: 29, scope: !1356)
!1363 = !DILocation(line: 952, column: 20, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1356, file: !371, line: 952, column: 8)
!1365 = !DILocation(line: 952, column: 30, scope: !1364)
!1366 = !DILocation(line: 952, column: 8, scope: !1364)
!1367 = !DILocation(line: 952, column: 37, scope: !1364)
!1368 = !DILocation(line: 952, column: 8, scope: !1356)
!1369 = !DILocation(line: 955, column: 25, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1364, file: !371, line: 952, column: 44)
!1371 = !DILocation(line: 955, column: 53, scope: !1370)
!1372 = !DILocation(line: 955, column: 52, scope: !1370)
!1373 = !DILocation(line: 955, column: 35, scope: !1374)
!1374 = !DILexicalBlockFile(scope: !1370, file: !371, discriminator: 1)
!1375 = !DILocation(line: 954, column: 7, scope: !1370)
!1376 = !DILocation(line: 957, column: 7, scope: !1370)
!1377 = !DILocation(line: 960, column: 4, scope: !1356)
!1378 = !DILocation(line: 961, column: 1, scope: !1356)
!1379 = distinct !DISubprogram(name: "File_GetParent", scope: !371, file: !371, line: 1042, type: !1380, isLocal: false, isDefinition: true, scopeLine: 1043, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!436, !1382}
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64, align: 64)
!1383 = !DILocalVariable(name: "canPath", arg: 1, scope: !1379, file: !371, line: 1042, type: !1382)
!1384 = !DILocation(line: 1042, column: 23, scope: !1379)
!1385 = !DILocation(line: 1044, column: 30, scope: !1379)
!1386 = !DILocation(line: 1044, column: 11, scope: !1379)
!1387 = !DILocation(line: 1044, column: 4, scope: !1379)
!1388 = distinct !DISubprogram(name: "FilePosixGetParent", scope: !371, file: !371, line: 992, type: !1380, isLocal: true, isDefinition: true, scopeLine: 993, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!1389 = !DILocalVariable(name: "canPath", arg: 1, scope: !1388, file: !371, line: 992, type: !1382)
!1390 = !DILocation(line: 992, column: 27, scope: !1388)
!1391 = !DILocalVariable(name: "pathName", scope: !1388, file: !371, line: 994, type: !458)
!1392 = !DILocation(line: 994, column: 10, scope: !1388)
!1393 = !DILocalVariable(name: "baseName", scope: !1388, file: !371, line: 995, type: !458)
!1394 = !DILocation(line: 995, column: 10, scope: !1388)
!1395 = !DILocation(line: 1000, column: 25, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1388, file: !371, line: 1000, column: 8)
!1397 = !DILocation(line: 1000, column: 24, scope: !1396)
!1398 = !DILocation(line: 1000, column: 8, scope: !1396)
!1399 = !DILocation(line: 1000, column: 39, scope: !1396)
!1400 = !DILocation(line: 1000, column: 8, scope: !1388)
!1401 = !DILocation(line: 1001, column: 7, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1396, file: !371, line: 1000, column: 45)
!1403 = !DILocation(line: 1004, column: 22, scope: !1388)
!1404 = !DILocation(line: 1004, column: 21, scope: !1388)
!1405 = !DILocation(line: 1004, column: 4, scope: !1388)
!1406 = !DILocation(line: 1006, column: 16, scope: !1388)
!1407 = !DILocation(line: 1006, column: 15, scope: !1388)
!1408 = !DILocation(line: 1006, column: 4, scope: !1388)
!1409 = !DILocation(line: 1008, column: 24, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1388, file: !371, line: 1008, column: 8)
!1411 = !DILocation(line: 1008, column: 8, scope: !1410)
!1412 = !DILocation(line: 1008, column: 8, scope: !1388)
!1413 = !DILocation(line: 1010, column: 18, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1410, file: !371, line: 1008, column: 35)
!1415 = !DILocation(line: 1010, column: 7, scope: !1414)
!1416 = !DILocation(line: 1011, column: 18, scope: !1414)
!1417 = !DILocation(line: 1011, column: 8, scope: !1414)
!1418 = !DILocation(line: 1011, column: 16, scope: !1414)
!1419 = !DILocation(line: 1012, column: 4, scope: !1414)
!1420 = !DILocation(line: 1013, column: 27, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1422, file: !371, line: 1013, column: 11)
!1422 = distinct !DILexicalBlock(scope: !1410, file: !371, line: 1012, column: 11)
!1423 = !DILocation(line: 1013, column: 11, scope: !1421)
!1424 = !DILocation(line: 1013, column: 11, scope: !1422)
!1425 = !DILocation(line: 1014, column: 27, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1421, file: !371, line: 1013, column: 38)
!1427 = !DILocation(line: 1014, column: 37, scope: !1426)
!1428 = !DILocation(line: 1014, column: 10, scope: !1426)
!1429 = !DILocation(line: 1015, column: 21, scope: !1426)
!1430 = !DILocation(line: 1015, column: 10, scope: !1426)
!1431 = !DILocation(line: 1016, column: 7, scope: !1426)
!1432 = !DILocation(line: 1017, column: 21, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1421, file: !371, line: 1016, column: 14)
!1434 = !DILocation(line: 1017, column: 11, scope: !1433)
!1435 = !DILocation(line: 1017, column: 19, scope: !1433)
!1436 = !DILocation(line: 1021, column: 15, scope: !1388)
!1437 = !DILocation(line: 1021, column: 4, scope: !1388)
!1438 = !DILocation(line: 1023, column: 4, scope: !1388)
!1439 = !DILocation(line: 1024, column: 1, scope: !1388)
!1440 = distinct !DISubprogram(name: "File_GetFreeSpace", scope: !371, file: !371, line: 1116, type: !1441, isLocal: false, isDefinition: true, scopeLine: 1118, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{!361, !375, !436}
!1443 = !DILocalVariable(name: "pathName", arg: 1, scope: !1440, file: !371, line: 1116, type: !375)
!1444 = !DILocation(line: 1116, column: 31, scope: !1440)
!1445 = !DILocalVariable(name: "doNotAscend", arg: 2, scope: !1440, file: !371, line: 1117, type: !436)
!1446 = !DILocation(line: 1117, column: 24, scope: !1440)
!1447 = !DILocalVariable(name: "ret", scope: !1440, file: !371, line: 1119, type: !361)
!1448 = !DILocation(line: 1119, column: 11, scope: !1440)
!1449 = !DILocalVariable(name: "fullPath", scope: !1440, file: !371, line: 1120, type: !458)
!1450 = !DILocation(line: 1120, column: 10, scope: !1440)
!1451 = !DILocalVariable(name: "statfsbuf", scope: !1440, file: !371, line: 1121, type: !695)
!1452 = !DILocation(line: 1121, column: 18, scope: !1440)
!1453 = !DILocation(line: 1123, column: 29, scope: !1440)
!1454 = !DILocation(line: 1123, column: 15, scope: !1440)
!1455 = !DILocation(line: 1123, column: 13, scope: !1440)
!1456 = !DILocation(line: 1124, column: 8, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1440, file: !371, line: 1124, column: 8)
!1458 = !DILocation(line: 1124, column: 17, scope: !1457)
!1459 = !DILocation(line: 1124, column: 8, scope: !1440)
!1460 = !DILocation(line: 1125, column: 7, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1457, file: !371, line: 1124, column: 25)
!1462 = !DILocation(line: 1128, column: 21, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1440, file: !371, line: 1128, column: 8)
!1464 = !DILocation(line: 1128, column: 31, scope: !1463)
!1465 = !DILocation(line: 1128, column: 8, scope: !1463)
!1466 = !DILocation(line: 1128, column: 8, scope: !1440)
!1467 = !DILocation(line: 1129, column: 32, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1463, file: !371, line: 1128, column: 57)
!1469 = !DILocation(line: 1129, column: 53, scope: !1468)
!1470 = !DILocation(line: 1129, column: 41, scope: !1468)
!1471 = !DILocation(line: 1129, column: 11, scope: !1468)
!1472 = !DILocation(line: 1130, column: 4, scope: !1468)
!1473 = !DILocation(line: 1131, column: 53, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1463, file: !371, line: 1130, column: 11)
!1475 = !DILocation(line: 1131, column: 7, scope: !1474)
!1476 = !DILocation(line: 1132, column: 11, scope: !1474)
!1477 = !DILocation(line: 1135, column: 15, scope: !1440)
!1478 = !DILocation(line: 1135, column: 4, scope: !1440)
!1479 = !DILocation(line: 1137, column: 11, scope: !1440)
!1480 = !DILocation(line: 1137, column: 4, scope: !1440)
!1481 = !DILocation(line: 1138, column: 1, scope: !1440)
!1482 = distinct !DISubprogram(name: "FileGetStats", scope: !371, file: !371, line: 1068, type: !1483, isLocal: true, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!436, !375, !436, !1485}
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64, align: 64)
!1486 = !DILocalVariable(name: "pathName", arg: 1, scope: !1482, file: !371, line: 1068, type: !375)
!1487 = !DILocation(line: 1068, column: 26, scope: !1482)
!1488 = !DILocalVariable(name: "doNotAscend", arg: 2, scope: !1482, file: !371, line: 1069, type: !436)
!1489 = !DILocation(line: 1069, column: 19, scope: !1482)
!1490 = !DILocalVariable(name: "pstatfsbuf", arg: 3, scope: !1482, file: !371, line: 1070, type: !1485)
!1491 = !DILocation(line: 1070, column: 29, scope: !1482)
!1492 = !DILocalVariable(name: "retval", scope: !1482, file: !371, line: 1072, type: !436)
!1493 = !DILocation(line: 1072, column: 9, scope: !1482)
!1494 = !DILocalVariable(name: "dupPath", scope: !1482, file: !371, line: 1073, type: !458)
!1495 = !DILocation(line: 1073, column: 10, scope: !1482)
!1496 = !DILocation(line: 1075, column: 4, scope: !1482)
!1497 = !DILocation(line: 1075, column: 24, scope: !1498)
!1498 = !DILexicalBlockFile(scope: !1482, file: !371, discriminator: 1)
!1499 = !DILocation(line: 1075, column: 34, scope: !1500)
!1500 = !DILexicalBlockFile(scope: !1482, file: !371, discriminator: 2)
!1501 = !DILocation(line: 1075, column: 24, scope: !1500)
!1502 = !DILocation(line: 1075, column: 44, scope: !1503)
!1503 = !DILexicalBlockFile(scope: !1482, file: !371, discriminator: 3)
!1504 = !DILocation(line: 1075, column: 24, scope: !1503)
!1505 = !DILocation(line: 1075, column: 24, scope: !1506)
!1506 = !DILexicalBlockFile(scope: !1482, file: !371, discriminator: 4)
!1507 = !DILocation(line: 1076, column: 30, scope: !1482)
!1508 = !DILocation(line: 1075, column: 11, scope: !1506)
!1509 = !DILocation(line: 1076, column: 42, scope: !1482)
!1510 = !DILocation(line: 1075, column: 4, scope: !1506)
!1511 = !DILocation(line: 1077, column: 12, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !371, line: 1077, column: 10)
!1513 = distinct !DILexicalBlock(scope: !1482, file: !371, line: 1076, column: 49)
!1514 = !DILocation(line: 1077, column: 11, scope: !1512)
!1515 = !DILocation(line: 1077, column: 16, scope: !1512)
!1516 = !DILocation(line: 1077, column: 26, scope: !1512)
!1517 = !DILocation(line: 1077, column: 29, scope: !1518)
!1518 = !DILexicalBlockFile(scope: !1512, file: !371, discriminator: 1)
!1519 = !DILocation(line: 1077, column: 10, scope: !1518)
!1520 = !DILocation(line: 1078, column: 17, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1512, file: !371, line: 1077, column: 42)
!1522 = !DILocation(line: 1079, column: 10, scope: !1521)
!1523 = !DILocation(line: 1082, column: 11, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1513, file: !371, line: 1082, column: 11)
!1525 = !DILocation(line: 1082, column: 19, scope: !1524)
!1526 = !DILocation(line: 1082, column: 11, scope: !1513)
!1527 = !DILocation(line: 1084, column: 38, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1524, file: !371, line: 1082, column: 27)
!1529 = !DILocation(line: 1084, column: 20, scope: !1528)
!1530 = !DILocation(line: 1084, column: 18, scope: !1528)
!1531 = !DILocation(line: 1085, column: 7, scope: !1528)
!1532 = !DILocation(line: 1087, column: 7, scope: !1513)
!1533 = !DILocation(line: 1075, column: 4, scope: !1534)
!1534 = !DILexicalBlockFile(scope: !1482, file: !371, discriminator: 5)
!1535 = distinct !{!1535, !1496}
!1536 = !DILocation(line: 1090, column: 15, scope: !1482)
!1537 = !DILocation(line: 1090, column: 4, scope: !1482)
!1538 = !DILocation(line: 1092, column: 11, scope: !1482)
!1539 = !DILocation(line: 1092, column: 4, scope: !1482)
!1540 = distinct !DISubprogram(name: "File_SupportsZeroedThick", scope: !371, file: !371, line: 1519, type: !684, isLocal: false, isDefinition: true, scopeLine: 1520, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!1541 = !DILocalVariable(name: "pathName", arg: 1, scope: !1540, file: !371, line: 1519, type: !375)
!1542 = !DILocation(line: 1519, column: 38, scope: !1540)
!1543 = !DILocation(line: 1521, column: 22, scope: !1540)
!1544 = !DILocation(line: 1521, column: 11, scope: !1540)
!1545 = !DILocation(line: 1521, column: 4, scope: !1540)
!1546 = distinct !DISubprogram(name: "FileIsVMFS", scope: !371, file: !371, line: 1474, type: !684, isLocal: true, isDefinition: true, scopeLine: 1475, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!1547 = !DILocalVariable(name: "pathName", arg: 1, scope: !1546, file: !371, line: 1474, type: !375)
!1548 = !DILocation(line: 1474, column: 24, scope: !1546)
!1549 = !DILocalVariable(name: "result", scope: !1546, file: !371, line: 1476, type: !436)
!1550 = !DILocation(line: 1476, column: 9, scope: !1546)
!1551 = !DILocation(line: 1495, column: 11, scope: !1546)
!1552 = !DILocation(line: 1495, column: 4, scope: !1546)
!1553 = distinct !DISubprogram(name: "File_SupportsMultiWriter", scope: !371, file: !371, line: 1545, type: !684, isLocal: false, isDefinition: true, scopeLine: 1546, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!1554 = !DILocalVariable(name: "pathName", arg: 1, scope: !1553, file: !371, line: 1545, type: !375)
!1555 = !DILocation(line: 1545, column: 38, scope: !1553)
!1556 = !DILocation(line: 1547, column: 22, scope: !1553)
!1557 = !DILocation(line: 1547, column: 11, scope: !1553)
!1558 = !DILocation(line: 1547, column: 4, scope: !1553)
!1559 = distinct !DISubprogram(name: "File_SupportsOptimisticLock", scope: !371, file: !371, line: 1569, type: !684, isLocal: false, isDefinition: true, scopeLine: 1570, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!1560 = !DILocalVariable(name: "pathName", arg: 1, scope: !1559, file: !371, line: 1569, type: !375)
!1561 = !DILocation(line: 1569, column: 41, scope: !1559)
!1562 = !DILocation(line: 1596, column: 4, scope: !1559)
!1563 = distinct !DISubprogram(name: "File_GetCapacity", scope: !371, file: !371, line: 1619, type: !1564, isLocal: false, isDefinition: true, scopeLine: 1620, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!361, !375}
!1566 = !DILocalVariable(name: "pathName", arg: 1, scope: !1563, file: !371, line: 1619, type: !375)
!1567 = !DILocation(line: 1619, column: 30, scope: !1563)
!1568 = !DILocalVariable(name: "ret", scope: !1563, file: !371, line: 1621, type: !361)
!1569 = !DILocation(line: 1621, column: 11, scope: !1563)
!1570 = !DILocalVariable(name: "fullPath", scope: !1563, file: !371, line: 1622, type: !458)
!1571 = !DILocation(line: 1622, column: 10, scope: !1563)
!1572 = !DILocalVariable(name: "statfsbuf", scope: !1563, file: !371, line: 1623, type: !695)
!1573 = !DILocation(line: 1623, column: 18, scope: !1563)
!1574 = !DILocation(line: 1625, column: 29, scope: !1563)
!1575 = !DILocation(line: 1625, column: 15, scope: !1563)
!1576 = !DILocation(line: 1625, column: 13, scope: !1563)
!1577 = !DILocation(line: 1626, column: 8, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1563, file: !371, line: 1626, column: 8)
!1579 = !DILocation(line: 1626, column: 17, scope: !1578)
!1580 = !DILocation(line: 1626, column: 8, scope: !1563)
!1581 = !DILocation(line: 1627, column: 7, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1578, file: !371, line: 1626, column: 25)
!1583 = !DILocation(line: 1630, column: 21, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1563, file: !371, line: 1630, column: 8)
!1585 = !DILocation(line: 1630, column: 8, scope: !1584)
!1586 = !DILocation(line: 1630, column: 8, scope: !1563)
!1587 = !DILocation(line: 1631, column: 32, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1584, file: !371, line: 1630, column: 47)
!1589 = !DILocation(line: 1631, column: 53, scope: !1588)
!1590 = !DILocation(line: 1631, column: 41, scope: !1588)
!1591 = !DILocation(line: 1631, column: 11, scope: !1588)
!1592 = !DILocation(line: 1632, column: 4, scope: !1588)
!1593 = !DILocation(line: 1633, column: 7, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1584, file: !371, line: 1632, column: 11)
!1595 = !DILocation(line: 1634, column: 11, scope: !1594)
!1596 = !DILocation(line: 1637, column: 15, scope: !1563)
!1597 = !DILocation(line: 1637, column: 4, scope: !1563)
!1598 = !DILocation(line: 1639, column: 11, scope: !1563)
!1599 = !DILocation(line: 1639, column: 4, scope: !1563)
!1600 = !DILocation(line: 1640, column: 1, scope: !1563)
!1601 = distinct !DISubprogram(name: "File_GetUniqueFileSystemID", scope: !371, file: !371, line: 1670, type: !774, isLocal: false, isDefinition: true, scopeLine: 1671, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!1602 = !DILocalVariable(name: "path", arg: 1, scope: !1601, file: !371, line: 1670, type: !375)
!1603 = !DILocation(line: 1670, column: 40, scope: !1601)
!1604 = !DILocation(line: 1742, column: 35, scope: !1601)
!1605 = !DILocation(line: 1742, column: 11, scope: !1601)
!1606 = !DILocation(line: 1742, column: 4, scope: !1601)
!1607 = distinct !DISubprogram(name: "FilePosixGetBlockDevice", scope: !371, file: !371, line: 1890, type: !774, isLocal: false, isDefinition: true, scopeLine: 1891, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!1608 = !DILocalVariable(name: "path", arg: 1, scope: !1607, file: !371, line: 1890, type: !375)
!1609 = !DILocation(line: 1890, column: 37, scope: !1607)
!1610 = !DILocalVariable(name: "existPath", scope: !1607, file: !371, line: 1892, type: !458)
!1611 = !DILocation(line: 1892, column: 10, scope: !1607)
!1612 = !DILocalVariable(name: "failed", scope: !1607, file: !371, line: 1893, type: !436)
!1613 = !DILocation(line: 1893, column: 9, scope: !1607)
!1614 = !DILocalVariable(name: "canPath", scope: !1607, file: !371, line: 1897, type: !1615)
!1615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 32768, align: 8, elements: !1616)
!1616 = !{!1617}
!1617 = !DISubrange(count: 4096)
!1618 = !DILocation(line: 1897, column: 9, scope: !1607)
!1619 = !DILocalVariable(name: "canPath2", scope: !1607, file: !371, line: 1898, type: !1615)
!1620 = !DILocation(line: 1898, column: 9, scope: !1607)
!1621 = !DILocalVariable(name: "retries", scope: !1607, file: !371, line: 1899, type: !421)
!1622 = !DILocation(line: 1899, column: 17, scope: !1607)
!1623 = !DILocalVariable(name: "realPath", scope: !1607, file: !371, line: 1900, type: !458)
!1624 = !DILocation(line: 1900, column: 10, scope: !1607)
!1625 = !DILocation(line: 1903, column: 49, scope: !1607)
!1626 = !DILocation(line: 1903, column: 16, scope: !1607)
!1627 = !DILocation(line: 1903, column: 14, scope: !1607)
!1628 = !DILocation(line: 1914, column: 30, scope: !1607)
!1629 = !DILocation(line: 1914, column: 15, scope: !1607)
!1630 = !DILocation(line: 1914, column: 13, scope: !1607)
!1631 = !DILocation(line: 1915, column: 15, scope: !1607)
!1632 = !DILocation(line: 1915, column: 4, scope: !1607)
!1633 = !DILocation(line: 1917, column: 8, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1607, file: !371, line: 1917, column: 8)
!1635 = !DILocation(line: 1917, column: 17, scope: !1634)
!1636 = !DILocation(line: 1917, column: 8, scope: !1607)
!1637 = !DILocation(line: 1918, column: 7, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1634, file: !371, line: 1917, column: 25)
!1639 = !DILocation(line: 1920, column: 15, scope: !1607)
!1640 = !DILocation(line: 1920, column: 24, scope: !1607)
!1641 = !DILocation(line: 1920, column: 4, scope: !1607)
!1642 = !DILocation(line: 1921, column: 15, scope: !1607)
!1643 = !DILocation(line: 1921, column: 4, scope: !1607)
!1644 = !DILocation(line: 1924, column: 15, scope: !1607)
!1645 = !DILocation(line: 1924, column: 25, scope: !1607)
!1646 = !DILocation(line: 1924, column: 4, scope: !1607)
!1647 = !DILocation(line: 1927, column: 4, scope: !1607)
!1648 = !DILocalVariable(name: "x", scope: !1649, file: !371, line: 1928, type: !458)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !371, line: 1927, column: 13)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !371, line: 1927, column: 4)
!1651 = distinct !DILexicalBlock(scope: !1607, file: !371, line: 1927, column: 4)
!1652 = !DILocation(line: 1928, column: 13, scope: !1649)
!1653 = !DILocalVariable(name: "bind", scope: !1649, file: !371, line: 1929, type: !436)
!1654 = !DILocation(line: 1929, column: 12, scope: !1649)
!1655 = !DILocalVariable(name: "ptr", scope: !1649, file: !371, line: 1930, type: !458)
!1656 = !DILocation(line: 1930, column: 13, scope: !1649)
!1657 = !DILocation(line: 1932, column: 39, scope: !1649)
!1658 = !DILocation(line: 1932, column: 13, scope: !1649)
!1659 = !DILocation(line: 1932, column: 11, scope: !1649)
!1660 = !DILocation(line: 1933, column: 11, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1649, file: !371, line: 1933, column: 11)
!1662 = !DILocation(line: 1933, column: 11, scope: !1649)
!1663 = !DILocation(line: 1935, column: 14, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !371, line: 1935, column: 14)
!1665 = distinct !DILexicalBlock(scope: !1661, file: !371, line: 1933, column: 16)
!1666 = !DILocation(line: 1935, column: 14, scope: !1665)
!1667 = !DILocalVariable(name: "rbind", scope: !1668, file: !371, line: 1960, type: !436)
!1668 = distinct !DILexicalBlock(scope: !1664, file: !371, line: 1935, column: 20)
!1669 = !DILocation(line: 1960, column: 18, scope: !1668)
!1670 = !DILocation(line: 1962, column: 17, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1668, file: !371, line: 1962, column: 17)
!1672 = !DILocation(line: 1962, column: 17, scope: !1668)
!1673 = !DILocalVariable(name: "canPathLen", scope: !1674, file: !371, line: 1969, type: !779)
!1674 = distinct !DILexicalBlock(scope: !1671, file: !371, line: 1962, column: 24)
!1675 = !DILocation(line: 1969, column: 23, scope: !1674)
!1676 = !DILocation(line: 1969, column: 43, scope: !1674)
!1677 = !DILocation(line: 1969, column: 36, scope: !1674)
!1678 = !DILocalVariable(name: "diff", scope: !1674, file: !371, line: 1970, type: !375)
!1679 = !DILocation(line: 1970, column: 28, scope: !1674)
!1680 = !DILocation(line: 1970, column: 35, scope: !1674)
!1681 = !DILocation(line: 1970, column: 47, scope: !1674)
!1682 = !DILocation(line: 1970, column: 58, scope: !1674)
!1683 = !DILocation(line: 1970, column: 64, scope: !1684)
!1684 = !DILexicalBlockFile(scope: !1674, file: !371, discriminator: 1)
!1685 = !DILocation(line: 1970, column: 47, scope: !1684)
!1686 = !DILocation(line: 1970, column: 47, scope: !1687)
!1687 = !DILexicalBlockFile(scope: !1674, file: !371, discriminator: 2)
!1688 = !DILocation(line: 1970, column: 47, scope: !1689)
!1689 = !DILexicalBlockFile(scope: !1674, file: !371, discriminator: 3)
!1690 = !DILocation(line: 1970, column: 44, scope: !1689)
!1691 = !DILocation(line: 1970, column: 28, scope: !1689)
!1692 = !DILocation(line: 1972, column: 21, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1674, file: !371, line: 1972, column: 20)
!1694 = !DILocation(line: 1972, column: 20, scope: !1693)
!1695 = !DILocation(line: 1972, column: 26, scope: !1693)
!1696 = !DILocation(line: 1972, column: 20, scope: !1674)
!1697 = !DILocation(line: 1973, column: 31, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1693, file: !371, line: 1972, column: 35)
!1699 = !DILocation(line: 1974, column: 38, scope: !1698)
!1700 = !DILocation(line: 1974, column: 31, scope: !1698)
!1701 = !DILocation(line: 1974, column: 43, scope: !1698)
!1702 = !DILocation(line: 1974, column: 49, scope: !1703)
!1703 = !DILexicalBlockFile(scope: !1698, file: !371, discriminator: 1)
!1704 = !DILocation(line: 1974, column: 31, scope: !1703)
!1705 = !DILocation(line: 1974, column: 31, scope: !1706)
!1706 = !DILexicalBlockFile(scope: !1698, file: !371, discriminator: 2)
!1707 = !DILocation(line: 1974, column: 31, scope: !1708)
!1708 = !DILexicalBlockFile(scope: !1698, file: !371, discriminator: 3)
!1709 = !DILocation(line: 1974, column: 59, scope: !1708)
!1710 = !DILocation(line: 1973, column: 19, scope: !1703)
!1711 = !DILocation(line: 1975, column: 16, scope: !1698)
!1712 = !DILocation(line: 1976, column: 30, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1693, file: !371, line: 1975, column: 23)
!1714 = !DILocation(line: 1976, column: 39, scope: !1713)
!1715 = !DILocation(line: 1976, column: 19, scope: !1713)
!1716 = !DILocation(line: 1978, column: 13, scope: !1674)
!1717 = !DILocation(line: 1979, column: 27, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1671, file: !371, line: 1978, column: 20)
!1719 = !DILocation(line: 1979, column: 36, scope: !1718)
!1720 = !DILocation(line: 1979, column: 16, scope: !1718)
!1721 = !DILocation(line: 1982, column: 24, scope: !1668)
!1722 = !DILocation(line: 1982, column: 13, scope: !1668)
!1723 = !DILocation(line: 1990, column: 20, scope: !1668)
!1724 = !DILocation(line: 1991, column: 17, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1668, file: !371, line: 1991, column: 17)
!1726 = !DILocation(line: 1991, column: 25, scope: !1725)
!1727 = !DILocation(line: 1991, column: 17, scope: !1668)
!1728 = !DILocation(line: 1992, column: 16, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1725, file: !371, line: 1991, column: 31)
!1730 = !DILocation(line: 1994, column: 16, scope: !1729)
!1731 = !DILocation(line: 1997, column: 13, scope: !1668)
!1732 = !DILocation(line: 2000, column: 17, scope: !1665)
!1733 = !DILocation(line: 2000, column: 10, scope: !1665)
!1734 = !DILocation(line: 2004, column: 27, scope: !1649)
!1735 = !DILocation(line: 2004, column: 11, scope: !1649)
!1736 = !DILocation(line: 2004, column: 9, scope: !1649)
!1737 = !DILocation(line: 2005, column: 16, scope: !1649)
!1738 = !DILocation(line: 2005, column: 14, scope: !1649)
!1739 = !DILocation(line: 2006, column: 18, scope: !1649)
!1740 = !DILocation(line: 2006, column: 27, scope: !1649)
!1741 = !DILocation(line: 2006, column: 7, scope: !1649)
!1742 = !DILocation(line: 2007, column: 18, scope: !1649)
!1743 = !DILocation(line: 2007, column: 7, scope: !1649)
!1744 = !DILocation(line: 2014, column: 11, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1649, file: !371, line: 2014, column: 11)
!1746 = !DILocation(line: 2014, column: 11, scope: !1649)
!1747 = !DILocation(line: 2015, column: 10, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1745, file: !371, line: 2014, column: 19)
!1749 = !DILocation(line: 1927, column: 4, scope: !1750)
!1750 = !DILexicalBlockFile(scope: !1650, file: !371, discriminator: 1)
!1751 = distinct !{!1751, !1647}
!1752 = !DILocation(line: 2019, column: 1, scope: !1607)
!1753 = distinct !DISubprogram(name: "FilePosixLookupMountPoint", scope: !371, file: !371, line: 1768, type: !1754, isLocal: true, isDefinition: true, scopeLine: 1770, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!458, !375, !1756}
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64, align: 64)
!1757 = !DILocalVariable(name: "canPath", arg: 1, scope: !1753, file: !371, line: 1768, type: !375)
!1758 = !DILocation(line: 1768, column: 39, scope: !1753)
!1759 = !DILocalVariable(name: "bind", arg: 2, scope: !1753, file: !371, line: 1769, type: !1756)
!1760 = !DILocation(line: 1769, column: 33, scope: !1753)
!1761 = !DILocalVariable(name: "f", scope: !1753, file: !371, line: 1776, type: !1762)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64, align: 64)
!1763 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1764, line: 48, baseType: !1765)
!1764 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/open-vm-tools/line196")
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1766, line: 241, size: 1728, align: 64, elements: !1767)
!1766 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/open-vm-tools/line196")
!1767 = !{!1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1788, !1789, !1790, !1791, !1792, !1794, !1796, !1800, !1803, !1805, !1806, !1807, !1808, !1809, !1810, !1811}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1765, file: !1766, line: 242, baseType: !374, size: 32, align: 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1765, file: !1766, line: 247, baseType: !458, size: 64, align: 64, offset: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1765, file: !1766, line: 248, baseType: !458, size: 64, align: 64, offset: 128)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1765, file: !1766, line: 249, baseType: !458, size: 64, align: 64, offset: 192)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1765, file: !1766, line: 250, baseType: !458, size: 64, align: 64, offset: 256)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1765, file: !1766, line: 251, baseType: !458, size: 64, align: 64, offset: 320)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1765, file: !1766, line: 252, baseType: !458, size: 64, align: 64, offset: 384)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1765, file: !1766, line: 253, baseType: !458, size: 64, align: 64, offset: 448)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1765, file: !1766, line: 254, baseType: !458, size: 64, align: 64, offset: 512)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1765, file: !1766, line: 256, baseType: !458, size: 64, align: 64, offset: 576)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1765, file: !1766, line: 257, baseType: !458, size: 64, align: 64, offset: 640)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1765, file: !1766, line: 258, baseType: !458, size: 64, align: 64, offset: 704)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1765, file: !1766, line: 260, baseType: !1781, size: 64, align: 64, offset: 768)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64, align: 64)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1766, line: 156, size: 192, align: 64, elements: !1783)
!1783 = !{!1784, !1785, !1787}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1782, file: !1766, line: 157, baseType: !1781, size: 64, align: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1782, file: !1766, line: 158, baseType: !1786, size: 64, align: 64, offset: 64)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64, align: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1782, file: !1766, line: 162, baseType: !374, size: 32, align: 32, offset: 128)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1765, file: !1766, line: 262, baseType: !1786, size: 64, align: 64, offset: 832)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1765, file: !1766, line: 264, baseType: !374, size: 32, align: 32, offset: 896)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1765, file: !1766, line: 268, baseType: !374, size: 32, align: 32, offset: 928)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1765, file: !1766, line: 270, baseType: !583, size: 64, align: 64, offset: 960)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1765, file: !1766, line: 274, baseType: !1793, size: 16, align: 16, offset: 1024)
!1793 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1765, file: !1766, line: 275, baseType: !1795, size: 8, align: 8, offset: 1040)
!1795 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1765, file: !1766, line: 276, baseType: !1797, size: 8, align: 8, offset: 1048)
!1797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 8, align: 8, elements: !1798)
!1798 = !{!1799}
!1799 = !DISubrange(count: 1)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1765, file: !1766, line: 280, baseType: !1801, size: 64, align: 64, offset: 1088)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64, align: 64)
!1802 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1766, line: 150, baseType: null)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1765, file: !1766, line: 289, baseType: !1804, size: 64, align: 64, offset: 1152)
!1804 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !569, line: 132, baseType: !584)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1765, file: !1766, line: 297, baseType: !360, size: 64, align: 64, offset: 1216)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1765, file: !1766, line: 298, baseType: !360, size: 64, align: 64, offset: 1280)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1765, file: !1766, line: 299, baseType: !360, size: 64, align: 64, offset: 1344)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1765, file: !1766, line: 300, baseType: !360, size: 64, align: 64, offset: 1408)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1765, file: !1766, line: 302, baseType: !779, size: 64, align: 64, offset: 1472)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1765, file: !1766, line: 303, baseType: !374, size: 32, align: 32, offset: 1536)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1765, file: !1766, line: 305, baseType: !1812, size: 160, align: 8, offset: 1568)
!1812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 160, align: 8, elements: !1813)
!1813 = !{!1814}
!1814 = !DISubrange(count: 20)
!1815 = !DILocation(line: 1776, column: 10, scope: !1753)
!1816 = !DILocalVariable(name: "mnt", scope: !1753, file: !371, line: 1777, type: !1817)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mntent", file: !1818, line: 53, size: 320, align: 64, elements: !1819)
!1818 = !DIFile(filename: "/usr/include/mntent.h", directory: "/home/lichi/Desktop/open-vm-tools/line196")
!1819 = !{!1820, !1821, !1822, !1823, !1824, !1825}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_fsname", scope: !1817, file: !1818, line: 55, baseType: !458, size: 64, align: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_dir", scope: !1817, file: !1818, line: 56, baseType: !458, size: 64, align: 64, offset: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_type", scope: !1817, file: !1818, line: 57, baseType: !458, size: 64, align: 64, offset: 128)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_opts", scope: !1817, file: !1818, line: 58, baseType: !458, size: 64, align: 64, offset: 192)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_freq", scope: !1817, file: !1818, line: 59, baseType: !374, size: 32, align: 32, offset: 256)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_passno", scope: !1817, file: !1818, line: 60, baseType: !374, size: 32, align: 32, offset: 288)
!1826 = !DILocation(line: 1777, column: 18, scope: !1753)
!1827 = !DILocalVariable(name: "buf", scope: !1753, file: !371, line: 1778, type: !458)
!1828 = !DILocation(line: 1778, column: 10, scope: !1753)
!1829 = !DILocalVariable(name: "size", scope: !1753, file: !371, line: 1779, type: !779)
!1830 = !DILocation(line: 1779, column: 11, scope: !1753)
!1831 = !DILocalVariable(name: "used", scope: !1753, file: !371, line: 1780, type: !779)
!1832 = !DILocation(line: 1780, column: 11, scope: !1753)
!1833 = !DILocalVariable(name: "ret", scope: !1753, file: !371, line: 1781, type: !458)
!1834 = !DILocation(line: 1781, column: 10, scope: !1753)
!1835 = !DILocation(line: 1786, column: 9, scope: !1753)
!1836 = !DILocation(line: 1786, column: 4, scope: !1753)
!1837 = !DILocation(line: 1789, column: 8, scope: !1753)
!1838 = !DILocation(line: 1789, column: 6, scope: !1753)
!1839 = !DILocation(line: 1790, column: 8, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1753, file: !371, line: 1790, column: 8)
!1841 = !DILocation(line: 1790, column: 10, scope: !1840)
!1842 = !DILocation(line: 1790, column: 8, scope: !1753)
!1843 = !DILocation(line: 1791, column: 7, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1840, file: !371, line: 1790, column: 18)
!1845 = !DILocation(line: 1794, column: 27, scope: !1753)
!1846 = !DILocation(line: 1794, column: 10, scope: !1753)
!1847 = !DILocation(line: 1794, column: 8, scope: !1753)
!1848 = !DILocation(line: 1796, column: 4, scope: !1753)
!1849 = !DILocation(line: 1796, column: 29, scope: !1850)
!1850 = !DILexicalBlockFile(scope: !1753, file: !371, discriminator: 1)
!1851 = !DILocation(line: 1796, column: 38, scope: !1850)
!1852 = !DILocation(line: 1796, column: 43, scope: !1850)
!1853 = !DILocation(line: 1796, column: 11, scope: !1850)
!1854 = !DILocation(line: 1796, column: 49, scope: !1850)
!1855 = !DILocation(line: 1796, column: 4, scope: !1850)
!1856 = !DILocation(line: 1809, column: 12, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1753, file: !371, line: 1796, column: 57)
!1858 = !DILocation(line: 1810, column: 15, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1857, file: !371, line: 1810, column: 11)
!1860 = !DILocation(line: 1810, column: 11, scope: !1859)
!1861 = !DILocation(line: 1810, column: 11, scope: !1857)
!1862 = !DILocation(line: 1811, column: 29, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1859, file: !371, line: 1810, column: 27)
!1864 = !DILocation(line: 1811, column: 18, scope: !1863)
!1865 = !DILocation(line: 1811, column: 41, scope: !1863)
!1866 = !DILocation(line: 1811, column: 15, scope: !1863)
!1867 = !DILocation(line: 1812, column: 7, scope: !1863)
!1868 = !DILocation(line: 1813, column: 15, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1857, file: !371, line: 1813, column: 11)
!1870 = !DILocation(line: 1813, column: 11, scope: !1869)
!1871 = !DILocation(line: 1813, column: 11, scope: !1857)
!1872 = !DILocation(line: 1814, column: 29, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1869, file: !371, line: 1813, column: 24)
!1874 = !DILocation(line: 1814, column: 18, scope: !1873)
!1875 = !DILocation(line: 1814, column: 38, scope: !1873)
!1876 = !DILocation(line: 1814, column: 15, scope: !1873)
!1877 = !DILocation(line: 1815, column: 7, scope: !1873)
!1878 = !DILocation(line: 1816, column: 15, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1857, file: !371, line: 1816, column: 11)
!1880 = !DILocation(line: 1816, column: 11, scope: !1879)
!1881 = !DILocation(line: 1816, column: 11, scope: !1857)
!1882 = !DILocation(line: 1817, column: 29, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1879, file: !371, line: 1816, column: 25)
!1884 = !DILocation(line: 1817, column: 18, scope: !1883)
!1885 = !DILocation(line: 1817, column: 39, scope: !1883)
!1886 = !DILocation(line: 1817, column: 15, scope: !1883)
!1887 = !DILocation(line: 1818, column: 7, scope: !1883)
!1888 = !DILocation(line: 1819, column: 15, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1857, file: !371, line: 1819, column: 11)
!1890 = !DILocation(line: 1819, column: 11, scope: !1889)
!1891 = !DILocation(line: 1819, column: 11, scope: !1857)
!1892 = !DILocation(line: 1820, column: 29, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1889, file: !371, line: 1819, column: 25)
!1894 = !DILocation(line: 1820, column: 18, scope: !1893)
!1895 = !DILocation(line: 1820, column: 39, scope: !1893)
!1896 = !DILocation(line: 1820, column: 15, scope: !1893)
!1897 = !DILocation(line: 1821, column: 7, scope: !1893)
!1898 = !DILocation(line: 1822, column: 11, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1857, file: !371, line: 1822, column: 11)
!1900 = !DILocation(line: 1822, column: 19, scope: !1899)
!1901 = !DILocation(line: 1822, column: 16, scope: !1899)
!1902 = !DILocation(line: 1822, column: 24, scope: !1899)
!1903 = !DILocation(line: 1822, column: 32, scope: !1904)
!1904 = !DILexicalBlockFile(scope: !1899, file: !371, discriminator: 1)
!1905 = !DILocation(line: 1822, column: 28, scope: !1904)
!1906 = !DILocation(line: 1822, column: 43, scope: !1904)
!1907 = !DILocation(line: 1822, column: 51, scope: !1908)
!1908 = !DILexicalBlockFile(scope: !1899, file: !371, discriminator: 2)
!1909 = !DILocation(line: 1822, column: 47, scope: !1908)
!1910 = !DILocation(line: 1822, column: 59, scope: !1908)
!1911 = !DILocation(line: 1823, column: 16, scope: !1899)
!1912 = !DILocation(line: 1823, column: 12, scope: !1899)
!1913 = !DILocation(line: 1823, column: 25, scope: !1899)
!1914 = !DILocation(line: 1823, column: 33, scope: !1904)
!1915 = !DILocation(line: 1823, column: 29, scope: !1904)
!1916 = !DILocation(line: 1822, column: 11, scope: !1917)
!1917 = !DILexicalBlockFile(scope: !1857, file: !371, discriminator: 3)
!1918 = !DILocation(line: 1824, column: 15, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1899, file: !371, line: 1823, column: 43)
!1920 = !DILocation(line: 1826, column: 21, scope: !1919)
!1921 = !DILocation(line: 1826, column: 10, scope: !1919)
!1922 = !DILocation(line: 1827, column: 20, scope: !1919)
!1923 = !DILocation(line: 1827, column: 10, scope: !1919)
!1924 = !DILocation(line: 1828, column: 10, scope: !1919)
!1925 = !DILocation(line: 1840, column: 22, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1857, file: !371, line: 1840, column: 11)
!1927 = !DILocation(line: 1840, column: 31, scope: !1926)
!1928 = !DILocation(line: 1840, column: 11, scope: !1926)
!1929 = !DILocation(line: 1840, column: 40, scope: !1926)
!1930 = !DILocation(line: 1840, column: 11, scope: !1857)
!1931 = !DILocation(line: 1850, column: 29, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1926, file: !371, line: 1840, column: 46)
!1933 = !DILocation(line: 1850, column: 18, scope: !1932)
!1934 = !DILocation(line: 1850, column: 47, scope: !1932)
!1935 = !DILocation(line: 1850, column: 11, scope: !1932)
!1936 = !DILocation(line: 1850, column: 16, scope: !1932)
!1937 = !DILocation(line: 1852, column: 37, scope: !1932)
!1938 = !DILocation(line: 1852, column: 16, scope: !1932)
!1939 = !DILocation(line: 1852, column: 14, scope: !1932)
!1940 = !DILocation(line: 1854, column: 10, scope: !1932)
!1941 = !DILocation(line: 1796, column: 4, scope: !1942)
!1942 = !DILexicalBlockFile(scope: !1753, file: !371, discriminator: 2)
!1943 = distinct !{!1943, !1848}
!1944 = !DILocation(line: 1859, column: 14, scope: !1753)
!1945 = !DILocation(line: 1859, column: 4, scope: !1753)
!1946 = !DILocation(line: 1861, column: 15, scope: !1753)
!1947 = !DILocation(line: 1861, column: 4, scope: !1753)
!1948 = !DILocation(line: 1863, column: 11, scope: !1753)
!1949 = !DILocation(line: 1863, column: 4, scope: !1753)
!1950 = !DILocation(line: 1865, column: 1, scope: !1753)
!1951 = distinct !DISubprogram(name: "File_IsSameFile", scope: !371, file: !371, line: 2106, type: !1952, isLocal: false, isDefinition: true, scopeLine: 2108, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!436, !375, !375}
!1954 = !DILocalVariable(name: "path1", arg: 1, scope: !1951, file: !371, line: 2106, type: !375)
!1955 = !DILocation(line: 2106, column: 29, scope: !1951)
!1956 = !DILocalVariable(name: "path2", arg: 2, scope: !1951, file: !371, line: 2107, type: !375)
!1957 = !DILocation(line: 2107, column: 29, scope: !1951)
!1958 = !DILocalVariable(name: "st1", scope: !1951, file: !371, line: 2109, type: !564)
!1959 = !DILocation(line: 2109, column: 16, scope: !1951)
!1960 = !DILocalVariable(name: "st2", scope: !1951, file: !371, line: 2110, type: !564)
!1961 = !DILocation(line: 2110, column: 16, scope: !1951)
!1962 = !DILocalVariable(name: "stfs1", scope: !1951, file: !371, line: 2112, type: !695)
!1963 = !DILocation(line: 2112, column: 18, scope: !1951)
!1964 = !DILocalVariable(name: "stfs2", scope: !1951, file: !371, line: 2113, type: !695)
!1965 = !DILocation(line: 2113, column: 18, scope: !1951)
!1966 = !DILocation(line: 2124, column: 24, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1951, file: !371, line: 2124, column: 8)
!1968 = !DILocation(line: 2124, column: 31, scope: !1967)
!1969 = !DILocation(line: 2124, column: 8, scope: !1967)
!1970 = !DILocation(line: 2124, column: 38, scope: !1967)
!1971 = !DILocation(line: 2124, column: 8, scope: !1951)
!1972 = !DILocation(line: 2125, column: 7, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1967, file: !371, line: 2124, column: 44)
!1974 = !DILocation(line: 2128, column: 19, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1951, file: !371, line: 2128, column: 8)
!1976 = !DILocation(line: 2128, column: 8, scope: !1975)
!1977 = !DILocation(line: 2128, column: 32, scope: !1975)
!1978 = !DILocation(line: 2128, column: 8, scope: !1951)
!1979 = !DILocation(line: 2129, column: 7, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1975, file: !371, line: 2128, column: 39)
!1981 = !DILocation(line: 2132, column: 19, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1951, file: !371, line: 2132, column: 8)
!1983 = !DILocation(line: 2132, column: 8, scope: !1982)
!1984 = !DILocation(line: 2132, column: 32, scope: !1982)
!1985 = !DILocation(line: 2132, column: 8, scope: !1951)
!1986 = !DILocation(line: 2133, column: 7, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1982, file: !371, line: 2132, column: 39)
!1988 = !DILocation(line: 2136, column: 12, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1951, file: !371, line: 2136, column: 8)
!1990 = !DILocation(line: 2136, column: 26, scope: !1989)
!1991 = !DILocation(line: 2136, column: 19, scope: !1989)
!1992 = !DILocation(line: 2136, column: 8, scope: !1951)
!1993 = !DILocation(line: 2137, column: 7, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1989, file: !371, line: 2136, column: 34)
!1995 = !DILocation(line: 2140, column: 12, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1951, file: !371, line: 2140, column: 8)
!1997 = !DILocation(line: 2140, column: 26, scope: !1996)
!1998 = !DILocation(line: 2140, column: 19, scope: !1996)
!1999 = !DILocation(line: 2140, column: 8, scope: !1951)
!2000 = !DILocation(line: 2141, column: 7, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1996, file: !371, line: 2140, column: 34)
!2002 = !DILocation(line: 2144, column: 8, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1951, file: !371, line: 2144, column: 8)
!2004 = !DILocation(line: 2144, column: 8, scope: !1951)
!2005 = !DILocation(line: 2151, column: 7, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2003, file: !371, line: 2144, column: 28)
!2007 = !DILocation(line: 2155, column: 21, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !1951, file: !371, line: 2155, column: 8)
!2009 = !DILocation(line: 2155, column: 8, scope: !2008)
!2010 = !DILocation(line: 2155, column: 36, scope: !2008)
!2011 = !DILocation(line: 2155, column: 8, scope: !1951)
!2012 = !DILocation(line: 2156, column: 7, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2008, file: !371, line: 2155, column: 42)
!2014 = !DILocation(line: 2159, column: 21, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !1951, file: !371, line: 2159, column: 8)
!2016 = !DILocation(line: 2159, column: 8, scope: !2015)
!2017 = !DILocation(line: 2159, column: 36, scope: !2015)
!2018 = !DILocation(line: 2159, column: 8, scope: !1951)
!2019 = !DILocation(line: 2160, column: 7, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2015, file: !371, line: 2159, column: 42)
!2021 = !DILocation(line: 2168, column: 15, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !1951, file: !371, line: 2168, column: 8)
!2023 = !DILocation(line: 2168, column: 22, scope: !2022)
!2024 = !DILocation(line: 2168, column: 33, scope: !2022)
!2025 = !DILocation(line: 2169, column: 15, scope: !2022)
!2026 = !DILocation(line: 2169, column: 22, scope: !2022)
!2027 = !DILocation(line: 2168, column: 8, scope: !2028)
!2028 = !DILexicalBlockFile(scope: !1951, file: !371, discriminator: 1)
!2029 = !DILocation(line: 2170, column: 7, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2022, file: !371, line: 2169, column: 34)
!2031 = !DILocation(line: 2189, column: 13, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !1951, file: !371, line: 2189, column: 8)
!2033 = !DILocation(line: 2189, column: 28, scope: !2032)
!2034 = !DILocation(line: 2189, column: 21, scope: !2032)
!2035 = !DILocation(line: 2189, column: 37, scope: !2032)
!2036 = !DILocation(line: 2190, column: 13, scope: !2032)
!2037 = !DILocation(line: 2190, column: 29, scope: !2032)
!2038 = !DILocation(line: 2190, column: 22, scope: !2032)
!2039 = !DILocation(line: 2190, column: 39, scope: !2032)
!2040 = !DILocation(line: 2191, column: 13, scope: !2032)
!2041 = !DILocation(line: 2191, column: 27, scope: !2032)
!2042 = !DILocation(line: 2191, column: 20, scope: !2032)
!2043 = !DILocation(line: 2191, column: 35, scope: !2032)
!2044 = !DILocation(line: 2192, column: 13, scope: !2032)
!2045 = !DILocation(line: 2192, column: 27, scope: !2032)
!2046 = !DILocation(line: 2192, column: 20, scope: !2032)
!2047 = !DILocation(line: 2192, column: 35, scope: !2032)
!2048 = !DILocation(line: 2193, column: 13, scope: !2032)
!2049 = !DILocation(line: 2193, column: 28, scope: !2032)
!2050 = !DILocation(line: 2193, column: 21, scope: !2032)
!2051 = !DILocation(line: 2193, column: 37, scope: !2032)
!2052 = !DILocation(line: 2194, column: 13, scope: !2032)
!2053 = !DILocation(line: 2194, column: 28, scope: !2032)
!2054 = !DILocation(line: 2194, column: 21, scope: !2032)
!2055 = !DILocation(line: 2194, column: 37, scope: !2032)
!2056 = !DILocation(line: 2195, column: 13, scope: !2032)
!2057 = !DILocation(line: 2195, column: 31, scope: !2032)
!2058 = !DILocation(line: 2195, column: 24, scope: !2032)
!2059 = !DILocation(line: 2195, column: 43, scope: !2032)
!2060 = !DILocation(line: 2196, column: 13, scope: !2032)
!2061 = !DILocation(line: 2196, column: 30, scope: !2032)
!2062 = !DILocation(line: 2196, column: 23, scope: !2032)
!2063 = !DILocation(line: 2189, column: 8, scope: !2028)
!2064 = !DILocation(line: 2197, column: 7, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2032, file: !371, line: 2196, column: 42)
!2066 = !DILocation(line: 2200, column: 4, scope: !1951)
!2067 = !DILocation(line: 2201, column: 1, scope: !1951)
!2068 = distinct !DISubprogram(name: "Unicode_Compare", scope: !2069, file: !2069, line: 225, type: !396, isLocal: true, isDefinition: true, scopeLine: 227, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!2069 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/unicodeOperations.h", directory: "/home/lichi/Desktop/open-vm-tools/line196")
!2070 = !DILocalVariable(name: "str1", arg: 1, scope: !2068, file: !2069, line: 225, type: !375)
!2071 = !DILocation(line: 225, column: 29, scope: !2068)
!2072 = !DILocalVariable(name: "str2", arg: 2, scope: !2068, file: !2069, line: 226, type: !375)
!2073 = !DILocation(line: 226, column: 29, scope: !2068)
!2074 = !DILocation(line: 228, column: 32, scope: !2068)
!2075 = !DILocation(line: 231, column: 32, scope: !2068)
!2076 = !DILocation(line: 228, column: 11, scope: !2068)
!2077 = !DILocation(line: 228, column: 4, scope: !2068)
!2078 = distinct !DISubprogram(name: "File_Replace", scope: !371, file: !371, line: 2223, type: !1952, isLocal: false, isDefinition: true, scopeLine: 2225, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!2079 = !DILocalVariable(name: "oldName", arg: 1, scope: !2078, file: !371, line: 2223, type: !375)
!2080 = !DILocation(line: 2223, column: 26, scope: !2078)
!2081 = !DILocalVariable(name: "newName", arg: 2, scope: !2078, file: !371, line: 2224, type: !375)
!2082 = !DILocation(line: 2224, column: 26, scope: !2078)
!2083 = !DILocalVariable(name: "status", scope: !2078, file: !371, line: 2226, type: !374)
!2084 = !DILocation(line: 2226, column: 8, scope: !2078)
!2085 = !DILocalVariable(name: "result", scope: !2078, file: !371, line: 2227, type: !436)
!2086 = !DILocation(line: 2227, column: 9, scope: !2078)
!2087 = !DILocalVariable(name: "newPath", scope: !2078, file: !371, line: 2228, type: !458)
!2088 = !DILocation(line: 2228, column: 10, scope: !2078)
!2089 = !DILocalVariable(name: "oldPath", scope: !2078, file: !371, line: 2229, type: !458)
!2090 = !DILocation(line: 2229, column: 10, scope: !2078)
!2091 = !DILocalVariable(name: "st", scope: !2078, file: !371, line: 2230, type: !564)
!2092 = !DILocation(line: 2230, column: 16, scope: !2078)
!2093 = !DILocation(line: 2232, column: 8, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2078, file: !371, line: 2232, column: 8)
!2095 = !DILocation(line: 2232, column: 16, scope: !2094)
!2096 = !DILocation(line: 2232, column: 8, scope: !2078)
!2097 = !DILocation(line: 2233, column: 14, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2094, file: !371, line: 2232, column: 24)
!2099 = !DILocation(line: 2234, column: 7, scope: !2098)
!2100 = !DILocation(line: 2235, column: 48, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2094, file: !371, line: 2235, column: 15)
!2102 = !DILocation(line: 2235, column: 26, scope: !2101)
!2103 = !DILocation(line: 2235, column: 24, scope: !2101)
!2104 = !DILocation(line: 2236, column: 54, scope: !2101)
!2105 = !DILocation(line: 2235, column: 15, scope: !2094)
!2106 = !DILocation(line: 2237, column: 14, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2101, file: !371, line: 2236, column: 62)
!2108 = !DILocation(line: 2240, column: 18, scope: !2107)
!2109 = !DILocation(line: 2238, column: 7, scope: !2107)
!2110 = !DILocation(line: 2241, column: 7, scope: !2107)
!2111 = !DILocation(line: 2243, column: 8, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2078, file: !371, line: 2243, column: 8)
!2113 = !DILocation(line: 2243, column: 16, scope: !2112)
!2114 = !DILocation(line: 2243, column: 8, scope: !2078)
!2115 = !DILocation(line: 2244, column: 14, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2112, file: !371, line: 2243, column: 24)
!2117 = !DILocation(line: 2245, column: 7, scope: !2116)
!2118 = !DILocation(line: 2246, column: 48, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2112, file: !371, line: 2246, column: 15)
!2120 = !DILocation(line: 2246, column: 26, scope: !2119)
!2121 = !DILocation(line: 2246, column: 24, scope: !2119)
!2122 = !DILocation(line: 2247, column: 54, scope: !2119)
!2123 = !DILocation(line: 2246, column: 15, scope: !2112)
!2124 = !DILocation(line: 2248, column: 14, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2119, file: !371, line: 2247, column: 62)
!2126 = !DILocation(line: 2251, column: 18, scope: !2125)
!2127 = !DILocation(line: 2249, column: 7, scope: !2125)
!2128 = !DILocation(line: 2252, column: 7, scope: !2125)
!2129 = !DILocation(line: 2255, column: 14, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2078, file: !371, line: 2255, column: 8)
!2131 = !DILocation(line: 2255, column: 9, scope: !2130)
!2132 = !DILocation(line: 2255, column: 28, scope: !2130)
!2133 = !DILocation(line: 2255, column: 34, scope: !2130)
!2134 = !DILocation(line: 2255, column: 44, scope: !2135)
!2135 = !DILexicalBlockFile(scope: !2130, file: !371, discriminator: 1)
!2136 = !DILocation(line: 2255, column: 56, scope: !2135)
!2137 = !DILocation(line: 2255, column: 38, scope: !2135)
!2138 = !DILocation(line: 2255, column: 65, scope: !2135)
!2139 = !DILocation(line: 2255, column: 8, scope: !2135)
!2140 = !DILocation(line: 2256, column: 17, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2130, file: !371, line: 2255, column: 73)
!2142 = !DILocation(line: 2256, column: 16, scope: !2141)
!2143 = !DILocation(line: 2256, column: 14, scope: !2141)
!2144 = !DILocation(line: 2260, column: 18, scope: !2141)
!2145 = !DILocation(line: 2260, column: 27, scope: !2141)
!2146 = !DILocation(line: 2260, column: 37, scope: !2141)
!2147 = !DILocation(line: 2257, column: 7, scope: !2141)
!2148 = !DILocation(line: 2261, column: 7, scope: !2141)
!2149 = !DILocation(line: 2265, column: 15, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2078, file: !371, line: 2265, column: 8)
!2151 = !DILocation(line: 2265, column: 24, scope: !2150)
!2152 = !DILocation(line: 2265, column: 8, scope: !2150)
!2153 = !DILocation(line: 2265, column: 33, scope: !2150)
!2154 = !DILocation(line: 2265, column: 8, scope: !2078)
!2155 = !DILocation(line: 2266, column: 17, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2150, file: !371, line: 2265, column: 38)
!2157 = !DILocation(line: 2266, column: 16, scope: !2156)
!2158 = !DILocation(line: 2266, column: 14, scope: !2156)
!2159 = !DILocation(line: 2269, column: 18, scope: !2156)
!2160 = !DILocation(line: 2269, column: 27, scope: !2156)
!2161 = !DILocation(line: 2269, column: 37, scope: !2156)
!2162 = !DILocation(line: 2267, column: 7, scope: !2156)
!2163 = !DILocation(line: 2270, column: 7, scope: !2156)
!2164 = !DILocation(line: 2273, column: 11, scope: !2078)
!2165 = !DILocation(line: 2273, column: 4, scope: !2078)
!2166 = !DILocation(line: 2276, column: 15, scope: !2078)
!2167 = !DILocation(line: 2276, column: 4, scope: !2078)
!2168 = !DILocation(line: 2277, column: 15, scope: !2078)
!2169 = !DILocation(line: 2277, column: 4, scope: !2078)
!2170 = !DILocation(line: 2279, column: 11, scope: !2078)
!2171 = !DILocation(line: 2279, column: 5, scope: !2078)
!2172 = !DILocation(line: 2279, column: 9, scope: !2078)
!2173 = !DILocation(line: 2281, column: 11, scope: !2078)
!2174 = !DILocation(line: 2281, column: 4, scope: !2078)
!2175 = distinct !DISubprogram(name: "FileGetMaxOrSupportsFileSize", scope: !371, file: !371, line: 2628, type: !2176, isLocal: false, isDefinition: true, scopeLine: 2631, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!436, !375, !2178, !436}
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64)
!2179 = !DILocalVariable(name: "pathName", arg: 1, scope: !2175, file: !371, line: 2628, type: !375)
!2180 = !DILocation(line: 2628, column: 42, scope: !2175)
!2181 = !DILocalVariable(name: "fileSize", arg: 2, scope: !2175, file: !371, line: 2629, type: !2178)
!2182 = !DILocation(line: 2629, column: 38, scope: !2175)
!2183 = !DILocalVariable(name: "getMaxFileSize", arg: 3, scope: !2175, file: !371, line: 2630, type: !436)
!2184 = !DILocation(line: 2630, column: 35, scope: !2175)
!2185 = !DILocalVariable(name: "fullPath", scope: !2175, file: !371, line: 2632, type: !458)
!2186 = !DILocation(line: 2632, column: 10, scope: !2175)
!2187 = !DILocalVariable(name: "folderPath", scope: !2175, file: !371, line: 2633, type: !458)
!2188 = !DILocation(line: 2633, column: 10, scope: !2175)
!2189 = !DILocalVariable(name: "retval", scope: !2175, file: !371, line: 2634, type: !436)
!2190 = !DILocation(line: 2634, column: 9, scope: !2175)
!2191 = !DILocation(line: 2647, column: 29, scope: !2175)
!2192 = !DILocation(line: 2647, column: 15, scope: !2175)
!2193 = !DILocation(line: 2647, column: 13, scope: !2175)
!2194 = !DILocation(line: 2648, column: 8, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2175, file: !371, line: 2648, column: 8)
!2196 = !DILocation(line: 2648, column: 17, scope: !2195)
!2197 = !DILocation(line: 2648, column: 8, scope: !2175)
!2198 = !DILocation(line: 2650, column: 11, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2195, file: !371, line: 2648, column: 25)
!2200 = !DILocation(line: 2649, column: 7, scope: !2199)
!2201 = !DILocation(line: 2651, column: 7, scope: !2199)
!2202 = !DILocation(line: 2654, column: 8, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2175, file: !371, line: 2654, column: 8)
!2204 = !DILocation(line: 2654, column: 8, scope: !2175)
!2205 = !DILocation(line: 2655, column: 48, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2203, file: !371, line: 2654, column: 28)
!2207 = !DILocation(line: 2655, column: 58, scope: !2206)
!2208 = !DILocation(line: 2656, column: 48, scope: !2206)
!2209 = !DILocation(line: 2655, column: 16, scope: !2206)
!2210 = !DILocation(line: 2655, column: 14, scope: !2206)
!2211 = !DILocation(line: 2657, column: 7, scope: !2206)
!2212 = !DILocation(line: 2660, column: 20, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2175, file: !371, line: 2660, column: 8)
!2214 = !DILocation(line: 2660, column: 8, scope: !2213)
!2215 = !DILocation(line: 2660, column: 8, scope: !2175)
!2216 = !DILocalVariable(name: "res", scope: !2217, file: !371, line: 2661, type: !2218)
!2217 = distinct !DILexicalBlock(scope: !2213, file: !371, line: 2660, column: 31)
!2218 = !DIDerivedType(tag: DW_TAG_typedef, name: "FileIOResult", file: !337, line: 318, baseType: !336)
!2219 = !DILocation(line: 2661, column: 20, scope: !2217)
!2220 = !DILocalVariable(name: "fd", scope: !2217, file: !371, line: 2662, type: !2221)
!2221 = !DIDerivedType(tag: DW_TAG_typedef, name: "FileIODescriptor", file: !337, line: 79, baseType: !2222)
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FileIODescriptor", file: !337, line: 74, size: 192, align: 64, elements: !2223)
!2223 = !{!2224, !2225, !2226, !2227}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "posix", scope: !2222, file: !337, line: 75, baseType: !374, size: 32, align: 32)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2222, file: !337, line: 76, baseType: !374, size: 32, align: 32, offset: 32)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "fileName", scope: !2222, file: !337, line: 77, baseType: !458, size: 64, align: 64, offset: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "lockToken", scope: !2222, file: !337, line: 78, baseType: !2228, size: 64, align: 64, offset: 128)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64, align: 64)
!2229 = !DICompositeType(tag: DW_TAG_structure_type, name: "FileLockToken", file: !337, line: 59, flags: DIFlagFwdDecl)
!2230 = !DILocation(line: 2662, column: 24, scope: !2217)
!2231 = !DILocation(line: 2664, column: 7, scope: !2217)
!2232 = !DILocation(line: 2665, column: 30, scope: !2217)
!2233 = !DILocation(line: 2665, column: 13, scope: !2217)
!2234 = !DILocation(line: 2665, column: 11, scope: !2217)
!2235 = !DILocation(line: 2666, column: 28, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2217, file: !371, line: 2666, column: 11)
!2237 = !DILocation(line: 2666, column: 11, scope: !2236)
!2238 = !DILocation(line: 2666, column: 11, scope: !2217)
!2239 = !DILocation(line: 2667, column: 58, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2236, file: !371, line: 2666, column: 34)
!2241 = !DILocation(line: 2668, column: 53, scope: !2240)
!2242 = !DILocation(line: 2667, column: 19, scope: !2240)
!2243 = !DILocation(line: 2667, column: 17, scope: !2240)
!2244 = !DILocation(line: 2669, column: 10, scope: !2240)
!2245 = !DILocation(line: 2670, column: 10, scope: !2240)
!2246 = !DILocation(line: 2672, column: 4, scope: !2217)
!2247 = !DILocation(line: 2679, column: 25, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2175, file: !371, line: 2679, column: 8)
!2249 = !DILocation(line: 2679, column: 8, scope: !2248)
!2250 = !DILocation(line: 2679, column: 8, scope: !2175)
!2251 = !DILocation(line: 2680, column: 38, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2248, file: !371, line: 2679, column: 36)
!2253 = !DILocation(line: 2680, column: 20, scope: !2252)
!2254 = !DILocation(line: 2680, column: 18, scope: !2252)
!2255 = !DILocation(line: 2681, column: 4, scope: !2252)
!2256 = !DILocation(line: 2682, column: 18, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2248, file: !371, line: 2681, column: 11)
!2258 = !DILocation(line: 2683, column: 22, scope: !2257)
!2259 = !DILocation(line: 2683, column: 7, scope: !2257)
!2260 = !DILocation(line: 2686, column: 57, scope: !2175)
!2261 = !DILocation(line: 2686, column: 69, scope: !2175)
!2262 = !DILocation(line: 2687, column: 57, scope: !2175)
!2263 = !DILocation(line: 2686, column: 13, scope: !2175)
!2264 = !DILocation(line: 2686, column: 11, scope: !2175)
!2265 = !DILocation(line: 2688, column: 15, scope: !2175)
!2266 = !DILocation(line: 2688, column: 4, scope: !2175)
!2267 = !DILocation(line: 2691, column: 15, scope: !2175)
!2268 = !DILocation(line: 2691, column: 4, scope: !2175)
!2269 = !DILocation(line: 2693, column: 11, scope: !2175)
!2270 = !DILocation(line: 2693, column: 4, scope: !2175)
!2271 = distinct !DISubprogram(name: "FileVMKGetMaxOrSupportsFileSize", scope: !371, file: !371, line: 2505, type: !2176, isLocal: true, isDefinition: true, scopeLine: 2508, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!2272 = !DILocalVariable(name: "pathName", arg: 1, scope: !2271, file: !371, line: 2505, type: !375)
!2273 = !DILocation(line: 2505, column: 45, scope: !2271)
!2274 = !DILocalVariable(name: "fileSize", arg: 2, scope: !2271, file: !371, line: 2506, type: !2178)
!2275 = !DILocation(line: 2506, column: 41, scope: !2271)
!2276 = !DILocalVariable(name: "getMaxFileSize", arg: 3, scope: !2271, file: !371, line: 2507, type: !436)
!2277 = !DILocation(line: 2507, column: 38, scope: !2271)
!2278 = !DILocation(line: 2595, column: 4, scope: !2271)
!2279 = !DILocation(line: 2597, column: 4, scope: !2271)
!2280 = distinct !DISubprogram(name: "FileIO_IsSuccess", scope: !337, file: !337, line: 514, type: !2281, isLocal: true, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!436, !2218}
!2283 = !DILocalVariable(name: "res", arg: 1, scope: !2280, file: !337, line: 514, type: !2218)
!2284 = !DILocation(line: 514, column: 31, scope: !2280)
!2285 = !DILocation(line: 516, column: 11, scope: !2280)
!2286 = !DILocation(line: 516, column: 15, scope: !2280)
!2287 = !DILocation(line: 516, column: 4, scope: !2280)
!2288 = distinct !DISubprogram(name: "FilePosixGetMaxOrSupportsFileSize", scope: !371, file: !371, line: 2311, type: !2289, isLocal: true, isDefinition: true, scopeLine: 2314, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!436, !2291, !2178, !436}
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64, align: 64)
!2292 = !DILocalVariable(name: "fd", arg: 1, scope: !2288, file: !371, line: 2311, type: !2291)
!2293 = !DILocation(line: 2311, column: 53, scope: !2288)
!2294 = !DILocalVariable(name: "fileSize", arg: 2, scope: !2288, file: !371, line: 2312, type: !2178)
!2295 = !DILocation(line: 2312, column: 43, scope: !2288)
!2296 = !DILocalVariable(name: "getMaxFileSize", arg: 3, scope: !2288, file: !371, line: 2313, type: !436)
!2297 = !DILocation(line: 2313, column: 40, scope: !2288)
!2298 = !DILocalVariable(name: "value", scope: !2288, file: !371, line: 2315, type: !361)
!2299 = !DILocation(line: 2315, column: 11, scope: !2288)
!2300 = !DILocalVariable(name: "mask", scope: !2288, file: !371, line: 2316, type: !361)
!2301 = !DILocation(line: 2316, column: 11, scope: !2288)
!2302 = !DILocation(line: 2321, column: 9, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2288, file: !371, line: 2321, column: 8)
!2304 = !DILocation(line: 2321, column: 8, scope: !2288)
!2305 = !DILocation(line: 2322, column: 38, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2303, file: !371, line: 2321, column: 25)
!2307 = !DILocation(line: 2322, column: 43, scope: !2306)
!2308 = !DILocation(line: 2322, column: 42, scope: !2306)
!2309 = !DILocation(line: 2322, column: 14, scope: !2306)
!2310 = !DILocation(line: 2322, column: 7, scope: !2306)
!2311 = !DILocation(line: 2328, column: 14, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2288, file: !371, line: 2328, column: 4)
!2313 = !DILocation(line: 2328, column: 9, scope: !2312)
!2314 = !DILocation(line: 2328, column: 30, scope: !2315)
!2315 = !DILexicalBlockFile(scope: !2316, file: !371, discriminator: 1)
!2316 = distinct !DILexicalBlock(scope: !2312, file: !371, line: 2328, column: 4)
!2317 = !DILocation(line: 2328, column: 35, scope: !2315)
!2318 = !DILocation(line: 2328, column: 4, scope: !2315)
!2319 = !DILocation(line: 2329, column: 35, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2321, file: !371, line: 2329, column: 11)
!2321 = distinct !DILexicalBlock(scope: !2316, file: !371, line: 2328, column: 53)
!2322 = !DILocation(line: 2329, column: 39, scope: !2320)
!2323 = !DILocation(line: 2329, column: 47, scope: !2320)
!2324 = !DILocation(line: 2329, column: 45, scope: !2320)
!2325 = !DILocation(line: 2329, column: 11, scope: !2320)
!2326 = !DILocation(line: 2329, column: 11, scope: !2321)
!2327 = !DILocation(line: 2330, column: 19, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2320, file: !371, line: 2329, column: 54)
!2329 = !DILocation(line: 2330, column: 16, scope: !2328)
!2330 = !DILocation(line: 2331, column: 7, scope: !2328)
!2331 = !DILocation(line: 2332, column: 4, scope: !2321)
!2332 = !DILocation(line: 2328, column: 46, scope: !2333)
!2333 = !DILexicalBlockFile(scope: !2316, file: !371, discriminator: 2)
!2334 = !DILocation(line: 2328, column: 4, scope: !2333)
!2335 = distinct !{!2335, !2336}
!2336 = !DILocation(line: 2328, column: 4, scope: !2288)
!2337 = !DILocation(line: 2333, column: 16, scope: !2288)
!2338 = !DILocation(line: 2333, column: 5, scope: !2288)
!2339 = !DILocation(line: 2333, column: 14, scope: !2288)
!2340 = !DILocation(line: 2334, column: 4, scope: !2288)
!2341 = !DILocation(line: 2335, column: 1, scope: !2288)
!2342 = distinct !DISubprogram(name: "FilePosixCreateTestGetMaxOrSupportsFileSize", scope: !371, file: !371, line: 2365, type: !2176, isLocal: true, isDefinition: true, scopeLine: 2368, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!2343 = !DILocalVariable(name: "dirName", arg: 1, scope: !2342, file: !371, line: 2365, type: !375)
!2344 = !DILocation(line: 2365, column: 57, scope: !2342)
!2345 = !DILocalVariable(name: "fileSize", arg: 2, scope: !2342, file: !371, line: 2366, type: !2178)
!2346 = !DILocation(line: 2366, column: 53, scope: !2342)
!2347 = !DILocalVariable(name: "getMaxFileSize", arg: 3, scope: !2342, file: !371, line: 2367, type: !436)
!2348 = !DILocation(line: 2367, column: 50, scope: !2342)
!2349 = !DILocalVariable(name: "retVal", scope: !2342, file: !371, line: 2369, type: !436)
!2350 = !DILocation(line: 2369, column: 9, scope: !2342)
!2351 = !DILocalVariable(name: "posixFD", scope: !2342, file: !371, line: 2370, type: !374)
!2352 = !DILocation(line: 2370, column: 8, scope: !2342)
!2353 = !DILocalVariable(name: "temp", scope: !2342, file: !371, line: 2371, type: !458)
!2354 = !DILocation(line: 2371, column: 10, scope: !2342)
!2355 = !DILocalVariable(name: "path", scope: !2342, file: !371, line: 2372, type: !458)
!2356 = !DILocation(line: 2372, column: 10, scope: !2342)
!2357 = !DILocalVariable(name: "fd", scope: !2342, file: !371, line: 2373, type: !2221)
!2358 = !DILocation(line: 2373, column: 21, scope: !2342)
!2359 = !DILocation(line: 2377, column: 26, scope: !2342)
!2360 = !DILocation(line: 2377, column: 11, scope: !2342)
!2361 = !DILocation(line: 2377, column: 9, scope: !2342)
!2362 = !DILocation(line: 2378, column: 32, scope: !2342)
!2363 = !DILocation(line: 2378, column: 14, scope: !2342)
!2364 = !DILocation(line: 2378, column: 12, scope: !2342)
!2365 = !DILocation(line: 2379, column: 15, scope: !2342)
!2366 = !DILocation(line: 2379, column: 4, scope: !2342)
!2367 = !DILocation(line: 2381, column: 8, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2342, file: !371, line: 2381, column: 8)
!2369 = !DILocation(line: 2381, column: 16, scope: !2368)
!2370 = !DILocation(line: 2381, column: 8, scope: !2342)
!2371 = !DILocation(line: 2383, column: 11, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2368, file: !371, line: 2381, column: 23)
!2373 = !DILocation(line: 2382, column: 7, scope: !2372)
!2374 = !DILocation(line: 2385, column: 7, scope: !2372)
!2375 = !DILocation(line: 2388, column: 30, scope: !2342)
!2376 = !DILocation(line: 2388, column: 9, scope: !2342)
!2377 = !DILocation(line: 2388, column: 9, scope: !2378)
!2378 = !DILexicalBlockFile(scope: !2342, file: !371, discriminator: 1)
!2379 = !DILocation(line: 2390, column: 52, scope: !2342)
!2380 = !DILocation(line: 2391, column: 47, scope: !2342)
!2381 = !DILocation(line: 2390, column: 13, scope: !2342)
!2382 = !DILocation(line: 2390, column: 11, scope: !2342)
!2383 = !DILocation(line: 2394, column: 4, scope: !2342)
!2384 = !DILocation(line: 2395, column: 16, scope: !2342)
!2385 = !DILocation(line: 2395, column: 4, scope: !2342)
!2386 = !DILocation(line: 2396, column: 15, scope: !2342)
!2387 = !DILocation(line: 2396, column: 4, scope: !2342)
!2388 = !DILocation(line: 2398, column: 11, scope: !2342)
!2389 = !DILocation(line: 2398, column: 4, scope: !2342)
!2390 = !DILocation(line: 2399, column: 1, scope: !2342)
!2391 = distinct !DISubprogram(name: "File_GetMaxFileSize", scope: !371, file: !371, line: 2718, type: !2392, isLocal: false, isDefinition: true, scopeLine: 2720, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!436, !375, !2178}
!2394 = !DILocalVariable(name: "pathName", arg: 1, scope: !2391, file: !371, line: 2718, type: !375)
!2395 = !DILocation(line: 2718, column: 33, scope: !2391)
!2396 = !DILocalVariable(name: "maxFileSize", arg: 2, scope: !2391, file: !371, line: 2719, type: !2178)
!2397 = !DILocation(line: 2719, column: 29, scope: !2391)
!2398 = !DILocalVariable(name: "result", scope: !2391, file: !371, line: 2721, type: !436)
!2399 = !DILocation(line: 2721, column: 9, scope: !2391)
!2400 = !DILocation(line: 2723, column: 8, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2391, file: !371, line: 2723, column: 8)
!2402 = !DILocation(line: 2723, column: 20, scope: !2401)
!2403 = !DILocation(line: 2723, column: 8, scope: !2391)
!2404 = !DILocation(line: 2724, column: 7, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2401, file: !371, line: 2723, column: 28)
!2406 = !DILocation(line: 2726, column: 7, scope: !2405)
!2407 = !DILocation(line: 2729, column: 42, scope: !2391)
!2408 = !DILocation(line: 2729, column: 52, scope: !2391)
!2409 = !DILocation(line: 2729, column: 13, scope: !2391)
!2410 = !DILocation(line: 2729, column: 11, scope: !2391)
!2411 = !DILocation(line: 2730, column: 8, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2391, file: !371, line: 2730, column: 8)
!2413 = !DILocation(line: 2730, column: 8, scope: !2391)
!2414 = !DILocation(line: 2734, column: 12, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2416, file: !371, line: 2734, column: 11)
!2416 = distinct !DILexicalBlock(scope: !2412, file: !371, line: 2730, column: 16)
!2417 = !DILocation(line: 2734, column: 11, scope: !2415)
!2418 = !DILocation(line: 2734, column: 24, scope: !2415)
!2419 = !DILocation(line: 2734, column: 11, scope: !2416)
!2420 = !DILocation(line: 2735, column: 11, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2415, file: !371, line: 2734, column: 44)
!2422 = !DILocation(line: 2735, column: 23, scope: !2421)
!2423 = !DILocation(line: 2736, column: 7, scope: !2421)
!2424 = !DILocation(line: 2737, column: 4, scope: !2416)
!2425 = !DILocation(line: 2738, column: 11, scope: !2391)
!2426 = !DILocation(line: 2738, column: 4, scope: !2391)
!2427 = !DILocation(line: 2739, column: 1, scope: !2391)
!2428 = distinct !DISubprogram(name: "File_SupportsFileSize", scope: !371, file: !371, line: 2762, type: !2429, isLocal: false, isDefinition: true, scopeLine: 2764, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!436, !375, !361}
!2431 = !DILocalVariable(name: "pathName", arg: 1, scope: !2428, file: !371, line: 2762, type: !375)
!2432 = !DILocation(line: 2762, column: 35, scope: !2428)
!2433 = !DILocalVariable(name: "fileSize", arg: 2, scope: !2428, file: !371, line: 2763, type: !361)
!2434 = !DILocation(line: 2763, column: 30, scope: !2428)
!2435 = !DILocation(line: 2768, column: 8, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2428, file: !371, line: 2768, column: 8)
!2437 = !DILocation(line: 2768, column: 17, scope: !2436)
!2438 = !DILocation(line: 2768, column: 8, scope: !2428)
!2439 = !DILocation(line: 2769, column: 7, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2436, file: !371, line: 2768, column: 32)
!2441 = !DILocation(line: 2775, column: 8, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2428, file: !371, line: 2775, column: 8)
!2443 = !DILocation(line: 2775, column: 17, scope: !2442)
!2444 = !DILocation(line: 2775, column: 8, scope: !2428)
!2445 = !DILocation(line: 2776, column: 7, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2442, file: !371, line: 2775, column: 37)
!2447 = !DILocation(line: 2779, column: 40, scope: !2428)
!2448 = !DILocation(line: 2779, column: 11, scope: !2428)
!2449 = !DILocation(line: 2779, column: 4, scope: !2428)
!2450 = !DILocation(line: 2780, column: 1, scope: !2428)
!2451 = distinct !DISubprogram(name: "FileCreateDirectory", scope: !371, file: !371, line: 2801, type: !2452, isLocal: false, isDefinition: true, scopeLine: 2803, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!374, !375, !374}
!2454 = !DILocalVariable(name: "pathName", arg: 1, scope: !2451, file: !371, line: 2801, type: !375)
!2455 = !DILocation(line: 2801, column: 33, scope: !2451)
!2456 = !DILocalVariable(name: "mask", arg: 2, scope: !2451, file: !371, line: 2802, type: !374)
!2457 = !DILocation(line: 2802, column: 25, scope: !2451)
!2458 = !DILocalVariable(name: "err", scope: !2451, file: !371, line: 2804, type: !374)
!2459 = !DILocation(line: 2804, column: 8, scope: !2451)
!2460 = !DILocation(line: 2806, column: 8, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2451, file: !371, line: 2806, column: 8)
!2462 = !DILocation(line: 2806, column: 17, scope: !2461)
!2463 = !DILocation(line: 2806, column: 8, scope: !2451)
!2464 = !DILocation(line: 2807, column: 14, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2461, file: !371, line: 2806, column: 25)
!2466 = !DILocation(line: 2807, column: 18, scope: !2465)
!2467 = !DILocation(line: 2807, column: 11, scope: !2465)
!2468 = !DILocation(line: 2808, column: 4, scope: !2465)
!2469 = !DILocation(line: 2809, column: 26, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2461, file: !371, line: 2808, column: 11)
!2471 = !DILocation(line: 2809, column: 36, scope: !2470)
!2472 = !DILocation(line: 2809, column: 14, scope: !2470)
!2473 = !DILocation(line: 2809, column: 42, scope: !2470)
!2474 = !DILocation(line: 2809, column: 13, scope: !2470)
!2475 = !DILocation(line: 2809, column: 52, scope: !2476)
!2476 = !DILexicalBlockFile(scope: !2470, file: !371, discriminator: 1)
!2477 = !DILocation(line: 2809, column: 51, scope: !2476)
!2478 = !DILocation(line: 2809, column: 13, scope: !2476)
!2479 = !DILocation(line: 2809, column: 13, scope: !2480)
!2480 = !DILexicalBlockFile(scope: !2470, file: !371, discriminator: 2)
!2481 = !DILocation(line: 2809, column: 13, scope: !2482)
!2482 = !DILexicalBlockFile(scope: !2470, file: !371, discriminator: 3)
!2483 = !DILocation(line: 2809, column: 11, scope: !2482)
!2484 = !DILocation(line: 2812, column: 11, scope: !2451)
!2485 = !DILocation(line: 2812, column: 4, scope: !2451)
!2486 = distinct !DISubprogram(name: "File_ListDirectory", scope: !371, file: !371, line: 2862, type: !2487, isLocal: false, isDefinition: true, scopeLine: 2864, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!374, !375, !2489}
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64, align: 64)
!2490 = !DILocalVariable(name: "pathName", arg: 1, scope: !2486, file: !371, line: 2862, type: !375)
!2491 = !DILocation(line: 2862, column: 32, scope: !2486)
!2492 = !DILocalVariable(name: "ids", arg: 2, scope: !2486, file: !371, line: 2863, type: !2489)
!2493 = !DILocation(line: 2863, column: 28, scope: !2486)
!2494 = !DILocalVariable(name: "err", scope: !2486, file: !371, line: 2865, type: !374)
!2495 = !DILocation(line: 2865, column: 8, scope: !2486)
!2496 = !DILocalVariable(name: "dir", scope: !2486, file: !371, line: 2866, type: !2497)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64, align: 64)
!2498 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !2499, line: 127, baseType: !2500)
!2499 = !DIFile(filename: "/usr/include/dirent.h", directory: "/home/lichi/Desktop/open-vm-tools/line196")
!2500 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !2499, line: 127, flags: DIFlagFwdDecl)
!2501 = !DILocation(line: 2866, column: 9, scope: !2486)
!2502 = !DILocalVariable(name: "count", scope: !2486, file: !371, line: 2867, type: !374)
!2503 = !DILocation(line: 2867, column: 8, scope: !2486)
!2504 = !DILocalVariable(name: "hash", scope: !2486, file: !371, line: 2868, type: !2505)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64, align: 64)
!2506 = !DIDerivedType(tag: DW_TAG_typedef, name: "HashTable", file: !2507, line: 40, baseType: !2508)
!2507 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/hashTable.h", directory: "/home/lichi/Desktop/open-vm-tools/line196")
!2508 = !DICompositeType(tag: DW_TAG_structure_type, name: "HashTable", file: !2507, line: 40, flags: DIFlagFwdDecl)
!2509 = !DILocation(line: 2868, column: 15, scope: !2486)
!2510 = !DILocation(line: 2872, column: 24, scope: !2486)
!2511 = !DILocation(line: 2872, column: 10, scope: !2486)
!2512 = !DILocation(line: 2872, column: 8, scope: !2486)
!2513 = !DILocation(line: 2874, column: 8, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2486, file: !371, line: 2874, column: 8)
!2515 = !DILocation(line: 2874, column: 12, scope: !2514)
!2516 = !DILocation(line: 2874, column: 8, scope: !2486)
!2517 = !DILocation(line: 2876, column: 7, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2514, file: !371, line: 2874, column: 20)
!2519 = !DILocation(line: 2879, column: 11, scope: !2486)
!2520 = !DILocation(line: 2879, column: 9, scope: !2486)
!2521 = !DILocation(line: 2880, column: 10, scope: !2486)
!2522 = !DILocation(line: 2882, column: 4, scope: !2486)
!2523 = !DILocalVariable(name: "entry", scope: !2524, file: !371, line: 2883, type: !2525)
!2524 = distinct !DILexicalBlock(scope: !2486, file: !371, line: 2882, column: 14)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64, align: 64)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !2527, line: 22, size: 2240, align: 64, elements: !2528)
!2527 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/dirent.h", directory: "/home/lichi/Desktop/open-vm-tools/line196")
!2528 = !{!2529, !2531, !2532, !2533, !2535}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !2526, file: !2527, line: 28, baseType: !2530, size: 64, align: 64)
!2530 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !569, line: 128, baseType: !365)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !2526, file: !2527, line: 29, baseType: !1804, size: 64, align: 64, offset: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !2526, file: !2527, line: 31, baseType: !1793, size: 16, align: 16, offset: 128)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !2526, file: !2527, line: 32, baseType: !2534, size: 8, align: 8, offset: 144)
!2534 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !2526, file: !2527, line: 33, baseType: !2536, size: 2048, align: 8, offset: 152)
!2536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 2048, align: 8, elements: !2537)
!2537 = !{!2538}
!2538 = !DISubrange(count: 256)
!2539 = !DILocation(line: 2883, column: 22, scope: !2524)
!2540 = !DILocation(line: 2885, column: 8, scope: !2524)
!2541 = !DILocation(line: 2885, column: 12, scope: !2524)
!2542 = !DILocation(line: 2886, column: 23, scope: !2524)
!2543 = !DILocation(line: 2886, column: 15, scope: !2524)
!2544 = !DILocation(line: 2886, column: 13, scope: !2524)
!2545 = !DILocation(line: 2887, column: 11, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2524, file: !371, line: 2887, column: 11)
!2547 = !DILocation(line: 2887, column: 17, scope: !2546)
!2548 = !DILocation(line: 2887, column: 11, scope: !2524)
!2549 = !DILocation(line: 2888, column: 17, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2546, file: !371, line: 2887, column: 25)
!2551 = !DILocation(line: 2888, column: 16, scope: !2550)
!2552 = !DILocation(line: 2888, column: 14, scope: !2550)
!2553 = !DILocation(line: 2889, column: 10, scope: !2550)
!2554 = !DILocation(line: 2893, column: 19, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2524, file: !371, line: 2893, column: 11)
!2556 = !DILocation(line: 2893, column: 26, scope: !2555)
!2557 = !DILocation(line: 2893, column: 12, scope: !2555)
!2558 = !DILocation(line: 2893, column: 39, scope: !2555)
!2559 = !DILocation(line: 2893, column: 45, scope: !2555)
!2560 = !DILocation(line: 2894, column: 19, scope: !2555)
!2561 = !DILocation(line: 2894, column: 26, scope: !2555)
!2562 = !DILocation(line: 2894, column: 12, scope: !2555)
!2563 = !DILocation(line: 2894, column: 40, scope: !2555)
!2564 = !DILocation(line: 2893, column: 11, scope: !2565)
!2565 = !DILexicalBlockFile(scope: !2524, file: !371, discriminator: 1)
!2566 = !DILocation(line: 2895, column: 10, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2555, file: !371, line: 2894, column: 47)
!2568 = distinct !{!2568, !2522}
!2569 = !DILocation(line: 2899, column: 11, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2524, file: !371, line: 2899, column: 11)
!2571 = !DILocation(line: 2899, column: 11, scope: !2524)
!2572 = !DILocalVariable(name: "id", scope: !2573, file: !371, line: 2900, type: !458)
!2573 = distinct !DILexicalBlock(scope: !2570, file: !371, line: 2899, column: 16)
!2574 = !DILocation(line: 2900, column: 16, scope: !2573)
!2575 = !DILocation(line: 2902, column: 36, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2573, file: !371, line: 2902, column: 14)
!2577 = !DILocation(line: 2902, column: 43, scope: !2576)
!2578 = !DILocation(line: 2902, column: 14, scope: !2576)
!2579 = !DILocation(line: 2902, column: 14, scope: !2573)
!2580 = !DILocation(line: 2904, column: 32, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2576, file: !371, line: 2903, column: 62)
!2582 = !DILocation(line: 2904, column: 39, scope: !2581)
!2583 = !DILocation(line: 2904, column: 18, scope: !2581)
!2584 = !DILocation(line: 2904, column: 16, scope: !2581)
!2585 = !DILocation(line: 2905, column: 10, scope: !2581)
!2586 = !DILocation(line: 2906, column: 39, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2576, file: !371, line: 2905, column: 17)
!2588 = !DILocation(line: 2906, column: 46, scope: !2587)
!2589 = !DILocation(line: 2906, column: 18, scope: !2587)
!2590 = !DILocation(line: 2906, column: 16, scope: !2587)
!2591 = !DILocation(line: 2910, column: 45, scope: !2587)
!2592 = !DILocation(line: 2910, column: 55, scope: !2587)
!2593 = !DILocation(line: 2909, column: 13, scope: !2587)
!2594 = !DILocation(line: 2912, column: 24, scope: !2587)
!2595 = !DILocation(line: 2912, column: 13, scope: !2587)
!2596 = !DILocation(line: 2914, column: 18, scope: !2587)
!2597 = !DILocation(line: 2914, column: 16, scope: !2587)
!2598 = !DILocation(line: 2928, column: 31, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2573, file: !371, line: 2928, column: 14)
!2600 = !DILocation(line: 2928, column: 37, scope: !2599)
!2601 = !DILocation(line: 2928, column: 14, scope: !2599)
!2602 = !DILocation(line: 2928, column: 14, scope: !2573)
!2603 = !DILocation(line: 2929, column: 18, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2599, file: !371, line: 2928, column: 47)
!2605 = !DILocation(line: 2930, column: 10, scope: !2604)
!2606 = !DILocation(line: 2931, column: 24, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2599, file: !371, line: 2930, column: 17)
!2608 = !DILocation(line: 2931, column: 13, scope: !2607)
!2609 = !DILocation(line: 2933, column: 7, scope: !2573)
!2610 = !DILocation(line: 2934, column: 15, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2570, file: !371, line: 2933, column: 14)
!2612 = !DILocation(line: 2882, column: 4, scope: !2613)
!2613 = !DILexicalBlockFile(scope: !2486, file: !371, discriminator: 1)
!2614 = !DILocation(line: 2938, column: 13, scope: !2486)
!2615 = !DILocation(line: 2938, column: 4, scope: !2486)
!2616 = !DILocation(line: 2940, column: 8, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2486, file: !371, line: 2940, column: 8)
!2618 = !DILocation(line: 2940, column: 8, scope: !2486)
!2619 = !DILocation(line: 2943, column: 11, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2621, file: !371, line: 2943, column: 11)
!2621 = distinct !DILexicalBlock(scope: !2617, file: !371, line: 2940, column: 13)
!2622 = !DILocation(line: 2943, column: 15, scope: !2620)
!2623 = !DILocation(line: 2943, column: 11, scope: !2621)
!2624 = !DILocalVariable(name: "b", scope: !2625, file: !371, line: 2944, type: !2626)
!2625 = distinct !DILexicalBlock(scope: !2620, file: !371, line: 2943, column: 21)
!2626 = !DIDerivedType(tag: DW_TAG_typedef, name: "DynBuf", file: !2627, line: 40, baseType: !2628)
!2627 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/dynbuf.h", directory: "/home/lichi/Desktop/open-vm-tools/line196")
!2628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DynBuf", file: !2627, line: 36, size: 192, align: 64, elements: !2629)
!2629 = !{!2630, !2631, !2632}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2628, file: !2627, line: 37, baseType: !458, size: 64, align: 64)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2628, file: !2627, line: 38, baseType: !779, size: 64, align: 64, offset: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !2628, file: !2627, line: 39, baseType: !779, size: 64, align: 64, offset: 128)
!2633 = !DILocation(line: 2944, column: 17, scope: !2625)
!2634 = !DILocation(line: 2946, column: 10, scope: !2625)
!2635 = !DILocation(line: 2948, column: 28, scope: !2625)
!2636 = !DILocation(line: 2948, column: 46, scope: !2625)
!2637 = !DILocation(line: 2948, column: 10, scope: !2625)
!2638 = !DILocation(line: 2949, column: 17, scope: !2625)
!2639 = !DILocation(line: 2949, column: 11, scope: !2625)
!2640 = !DILocation(line: 2949, column: 15, scope: !2625)
!2641 = !DILocation(line: 2950, column: 10, scope: !2625)
!2642 = !DILocation(line: 2951, column: 7, scope: !2625)
!2643 = !DILocation(line: 2952, column: 28, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2620, file: !371, line: 2951, column: 14)
!2645 = !DILocation(line: 2952, column: 10, scope: !2644)
!2646 = !DILocation(line: 2954, column: 4, scope: !2621)
!2647 = !DILocation(line: 2956, column: 19, scope: !2486)
!2648 = !DILocation(line: 2956, column: 4, scope: !2486)
!2649 = !DILocation(line: 2958, column: 19, scope: !2486)
!2650 = !DILocation(line: 2958, column: 13, scope: !2486)
!2651 = !DILocation(line: 2958, column: 17, scope: !2486)
!2652 = !DILocation(line: 2958, column: 24, scope: !2486)
!2653 = !DILocation(line: 2958, column: 11, scope: !2486)
!2654 = !DILocation(line: 2958, column: 31, scope: !2613)
!2655 = !DILocation(line: 2958, column: 11, scope: !2613)
!2656 = !DILocation(line: 2958, column: 11, scope: !2657)
!2657 = !DILexicalBlockFile(scope: !2486, file: !371, discriminator: 2)
!2658 = !DILocation(line: 2958, column: 11, scope: !2659)
!2659 = !DILexicalBlockFile(scope: !2486, file: !371, discriminator: 3)
!2660 = !DILocation(line: 2958, column: 4, scope: !2659)
!2661 = !DILocation(line: 2959, column: 1, scope: !2486)
!2662 = distinct !DISubprogram(name: "FileUnique", scope: !371, file: !371, line: 2850, type: !2663, isLocal: true, isDefinition: true, scopeLine: 2853, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{!374, !375, !360, !360}
!2665 = !DILocalVariable(name: "key", arg: 1, scope: !2662, file: !371, line: 2850, type: !375)
!2666 = !DILocation(line: 2850, column: 24, scope: !2662)
!2667 = !DILocalVariable(name: "value", arg: 2, scope: !2662, file: !371, line: 2851, type: !360)
!2668 = !DILocation(line: 2851, column: 18, scope: !2662)
!2669 = !DILocalVariable(name: "clientData", arg: 3, scope: !2662, file: !371, line: 2852, type: !360)
!2670 = !DILocation(line: 2852, column: 18, scope: !2662)
!2671 = !DILocalVariable(name: "b", scope: !2662, file: !371, line: 2854, type: !2672)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64, align: 64)
!2673 = !DILocation(line: 2854, column: 12, scope: !2662)
!2674 = !DILocation(line: 2854, column: 16, scope: !2662)
!2675 = !DILocation(line: 2856, column: 18, scope: !2662)
!2676 = !DILocation(line: 2856, column: 21, scope: !2662)
!2677 = !DILocation(line: 2856, column: 4, scope: !2662)
!2678 = !DILocation(line: 2858, column: 4, scope: !2662)
!2679 = distinct !DISubprogram(name: "FileKeyDispose", scope: !371, file: !371, line: 2840, type: !2663, isLocal: true, isDefinition: true, scopeLine: 2843, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!2680 = !DILocalVariable(name: "key", arg: 1, scope: !2679, file: !371, line: 2840, type: !375)
!2681 = !DILocation(line: 2840, column: 28, scope: !2679)
!2682 = !DILocalVariable(name: "value", arg: 2, scope: !2679, file: !371, line: 2841, type: !360)
!2683 = !DILocation(line: 2841, column: 22, scope: !2679)
!2684 = !DILocalVariable(name: "clientData", arg: 3, scope: !2679, file: !371, line: 2842, type: !360)
!2685 = !DILocation(line: 2842, column: 22, scope: !2679)
!2686 = !DILocation(line: 2844, column: 24, scope: !2679)
!2687 = !DILocation(line: 2844, column: 4, scope: !2679)
!2688 = !DILocation(line: 2846, column: 4, scope: !2679)
!2689 = distinct !DISubprogram(name: "File_WalkDirectoryEnd", scope: !371, file: !371, line: 2979, type: !2690, isLocal: false, isDefinition: true, scopeLine: 2980, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{null, !2692}
!2692 = !DIDerivedType(tag: DW_TAG_typedef, name: "WalkDirContext", file: !2693, line: 65, baseType: !2694)
!2693 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/file.h", directory: "/home/lichi/Desktop/open-vm-tools/line196")
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64, align: 64)
!2695 = !DIDerivedType(tag: DW_TAG_typedef, name: "WalkDirContextImpl", file: !2693, line: 64, baseType: !2696)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "WalkDirContextImpl", file: !371, line: 98, size: 128, align: 64, elements: !2697)
!2697 = !{!2698, !2699, !2700}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "cnt", scope: !2696, file: !371, line: 99, baseType: !374, size: 32, align: 32)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !2696, file: !371, line: 100, baseType: !374, size: 32, align: 32, offset: 32)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2696, file: !371, line: 101, baseType: !1382, size: 64, align: 64, offset: 64)
!2701 = !DILocalVariable(name: "context", arg: 1, scope: !2689, file: !371, line: 2979, type: !2692)
!2702 = !DILocation(line: 2979, column: 38, scope: !2689)
!2703 = !DILocation(line: 2981, column: 8, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2689, file: !371, line: 2981, column: 8)
!2705 = !DILocation(line: 2981, column: 16, scope: !2704)
!2706 = !DILocation(line: 2981, column: 8, scope: !2689)
!2707 = !DILocation(line: 2982, column: 11, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2709, file: !371, line: 2982, column: 11)
!2709 = distinct !DILexicalBlock(scope: !2704, file: !371, line: 2981, column: 24)
!2710 = !DILocation(line: 2982, column: 20, scope: !2708)
!2711 = !DILocation(line: 2982, column: 24, scope: !2708)
!2712 = !DILocation(line: 2982, column: 11, scope: !2709)
!2713 = !DILocation(line: 2983, column: 30, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2708, file: !371, line: 2982, column: 29)
!2715 = !DILocation(line: 2983, column: 39, scope: !2714)
!2716 = !DILocation(line: 2983, column: 46, scope: !2714)
!2717 = !DILocation(line: 2983, column: 55, scope: !2714)
!2718 = !DILocation(line: 2983, column: 10, scope: !2714)
!2719 = !DILocation(line: 2984, column: 7, scope: !2714)
!2720 = !DILocation(line: 2985, column: 18, scope: !2709)
!2721 = !DILocation(line: 2985, column: 7, scope: !2709)
!2722 = !DILocation(line: 2986, column: 4, scope: !2709)
!2723 = !DILocation(line: 2987, column: 1, scope: !2689)
!2724 = distinct !DISubprogram(name: "Util_FreeStringList", scope: !2725, file: !2725, line: 368, type: !2726, isLocal: true, isDefinition: true, scopeLine: 370, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!2725 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/util.h", directory: "/home/lichi/Desktop/open-vm-tools/line196")
!2726 = !DISubroutineType(types: !2727)
!2727 = !{null, !1382, !2728}
!2728 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1150, line: 109, baseType: !2729)
!2729 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !569, line: 172, baseType: !584)
!2730 = !DILocalVariable(name: "list", arg: 1, scope: !2724, file: !2725, line: 368, type: !1382)
!2731 = !DILocation(line: 368, column: 28, scope: !2724)
!2732 = !DILocalVariable(name: "length", arg: 2, scope: !2724, file: !2725, line: 369, type: !2728)
!2733 = !DILocation(line: 369, column: 29, scope: !2724)
!2734 = !DILocation(line: 371, column: 28, scope: !2724)
!2735 = !DILocation(line: 371, column: 34, scope: !2724)
!2736 = !DILocation(line: 371, column: 4, scope: !2724)
!2737 = !DILocation(line: 372, column: 1, scope: !2724)
!2738 = distinct !DISubprogram(name: "File_WalkDirectoryStart", scope: !371, file: !371, line: 3014, type: !2739, isLocal: false, isDefinition: true, scopeLine: 3015, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!2692, !375}
!2741 = !DILocalVariable(name: "parentPath", arg: 1, scope: !2738, file: !371, line: 3014, type: !375)
!2742 = !DILocation(line: 3014, column: 37, scope: !2738)
!2743 = !DILocalVariable(name: "context", scope: !2738, file: !371, line: 3016, type: !2694)
!2744 = !DILocation(line: 3016, column: 24, scope: !2738)
!2745 = !DILocation(line: 3016, column: 34, scope: !2738)
!2746 = !DILocation(line: 3018, column: 8, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2738, file: !371, line: 3018, column: 8)
!2748 = !DILocation(line: 3018, column: 16, scope: !2747)
!2749 = !DILocation(line: 3018, column: 8, scope: !2738)
!2750 = !DILocation(line: 3019, column: 7, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2747, file: !371, line: 3018, column: 24)
!2752 = !DILocation(line: 3019, column: 16, scope: !2751)
!2753 = !DILocation(line: 3019, column: 22, scope: !2751)
!2754 = !DILocation(line: 3020, column: 7, scope: !2751)
!2755 = !DILocation(line: 3020, column: 16, scope: !2751)
!2756 = !DILocation(line: 3020, column: 21, scope: !2751)
!2757 = !DILocation(line: 3021, column: 41, scope: !2751)
!2758 = !DILocation(line: 3021, column: 54, scope: !2751)
!2759 = !DILocation(line: 3021, column: 63, scope: !2751)
!2760 = !DILocation(line: 3021, column: 22, scope: !2751)
!2761 = !DILocation(line: 3021, column: 7, scope: !2751)
!2762 = !DILocation(line: 3021, column: 16, scope: !2751)
!2763 = !DILocation(line: 3021, column: 20, scope: !2751)
!2764 = !DILocation(line: 3023, column: 11, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2751, file: !371, line: 3023, column: 11)
!2766 = !DILocation(line: 3023, column: 20, scope: !2765)
!2767 = !DILocation(line: 3023, column: 24, scope: !2765)
!2768 = !DILocation(line: 3023, column: 11, scope: !2751)
!2769 = !DILocation(line: 3024, column: 32, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2765, file: !371, line: 3023, column: 31)
!2771 = !DILocation(line: 3024, column: 10, scope: !2770)
!2772 = !DILocation(line: 3025, column: 18, scope: !2770)
!2773 = !DILocation(line: 3026, column: 7, scope: !2770)
!2774 = !DILocation(line: 3027, column: 4, scope: !2751)
!2775 = !DILocation(line: 3029, column: 11, scope: !2738)
!2776 = !DILocation(line: 3029, column: 4, scope: !2738)
!2777 = distinct !DISubprogram(name: "File_WalkDirectoryNext", scope: !371, file: !371, line: 3056, type: !2778, isLocal: false, isDefinition: true, scopeLine: 3058, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!436, !2692, !1382}
!2780 = !DILocalVariable(name: "context", arg: 1, scope: !2777, file: !371, line: 3056, type: !2692)
!2781 = !DILocation(line: 3056, column: 39, scope: !2777)
!2782 = !DILocalVariable(name: "path", arg: 2, scope: !2777, file: !371, line: 3057, type: !1382)
!2783 = !DILocation(line: 3057, column: 31, scope: !2777)
!2784 = !DILocation(line: 3062, column: 5, scope: !2777)
!2785 = !DILocation(line: 3062, column: 9, scope: !2777)
!2786 = !DILocation(line: 3064, column: 8, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2777, file: !371, line: 3064, column: 8)
!2788 = !DILocation(line: 3064, column: 17, scope: !2787)
!2789 = !DILocation(line: 3064, column: 24, scope: !2787)
!2790 = !DILocation(line: 3064, column: 33, scope: !2787)
!2791 = !DILocation(line: 3064, column: 22, scope: !2787)
!2792 = !DILocation(line: 3064, column: 8, scope: !2777)
!2793 = !DILocation(line: 3065, column: 47, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2787, file: !371, line: 3064, column: 38)
!2795 = !DILocation(line: 3065, column: 56, scope: !2794)
!2796 = !DILocation(line: 3065, column: 60, scope: !2794)
!2797 = !DILocation(line: 3065, column: 32, scope: !2794)
!2798 = !DILocation(line: 3065, column: 41, scope: !2794)
!2799 = !DILocation(line: 3065, column: 15, scope: !2794)
!2800 = !DILocation(line: 3065, column: 8, scope: !2794)
!2801 = !DILocation(line: 3065, column: 13, scope: !2794)
!2802 = !DILocation(line: 3066, column: 7, scope: !2794)
!2803 = !DILocation(line: 3069, column: 4, scope: !2777)
!2804 = !DILocation(line: 3070, column: 1, scope: !2777)
!2805 = distinct !DISubprogram(name: "FileIsWritableDir", scope: !371, file: !371, line: 3164, type: !684, isLocal: false, isDefinition: true, scopeLine: 3165, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!2806 = !DILocalVariable(name: "dirName", arg: 1, scope: !2805, file: !371, line: 3164, type: !375)
!2807 = !DILocation(line: 3164, column: 31, scope: !2805)
!2808 = !DILocalVariable(name: "err", scope: !2805, file: !371, line: 3166, type: !374)
!2809 = !DILocation(line: 3166, column: 8, scope: !2805)
!2810 = !DILocalVariable(name: "euid", scope: !2805, file: !371, line: 3167, type: !2811)
!2811 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !1150, line: 80, baseType: !577)
!2812 = !DILocation(line: 3167, column: 10, scope: !2805)
!2813 = !DILocalVariable(name: "fileData", scope: !2805, file: !371, line: 3168, type: !545)
!2814 = !DILocation(line: 3168, column: 13, scope: !2805)
!2815 = !DILocation(line: 3170, column: 25, scope: !2805)
!2816 = !DILocation(line: 3170, column: 10, scope: !2805)
!2817 = !DILocation(line: 3170, column: 8, scope: !2805)
!2818 = !DILocation(line: 3172, column: 9, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2805, file: !371, line: 3172, column: 8)
!2820 = !DILocation(line: 3172, column: 13, scope: !2819)
!2821 = !DILocation(line: 3172, column: 19, scope: !2819)
!2822 = !DILocation(line: 3172, column: 32, scope: !2823)
!2823 = !DILexicalBlockFile(scope: !2819, file: !371, discriminator: 1)
!2824 = !DILocation(line: 3172, column: 41, scope: !2823)
!2825 = !DILocation(line: 3172, column: 8, scope: !2823)
!2826 = !DILocation(line: 3173, column: 7, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2819, file: !371, line: 3172, column: 48)
!2828 = !DILocation(line: 3176, column: 11, scope: !2805)
!2829 = !DILocation(line: 3176, column: 9, scope: !2805)
!2830 = !DILocation(line: 3177, column: 8, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2805, file: !371, line: 3177, column: 8)
!2832 = !DILocation(line: 3177, column: 13, scope: !2831)
!2833 = !DILocation(line: 3177, column: 8, scope: !2805)
!2834 = !DILocation(line: 3182, column: 7, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2831, file: !371, line: 3177, column: 19)
!2836 = !DILocation(line: 3185, column: 17, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2805, file: !371, line: 3185, column: 8)
!2838 = !DILocation(line: 3185, column: 30, scope: !2837)
!2839 = !DILocation(line: 3185, column: 27, scope: !2837)
!2840 = !DILocation(line: 3185, column: 8, scope: !2805)
!2841 = !DILocation(line: 3186, column: 16, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2837, file: !371, line: 3185, column: 36)
!2843 = !DILocation(line: 3186, column: 25, scope: !2842)
!2844 = !DILocation(line: 3187, column: 4, scope: !2842)
!2845 = !DILocation(line: 3187, column: 43, scope: !2846)
!2846 = !DILexicalBlockFile(scope: !2847, file: !371, discriminator: 1)
!2847 = distinct !DILexicalBlock(scope: !2837, file: !371, line: 3187, column: 15)
!2848 = !DILocation(line: 3187, column: 15, scope: !2846)
!2849 = !DILocation(line: 3188, column: 16, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2847, file: !371, line: 3187, column: 55)
!2851 = !DILocation(line: 3188, column: 25, scope: !2850)
!2852 = !DILocation(line: 3189, column: 4, scope: !2850)
!2853 = !DILocation(line: 3192, column: 21, scope: !2805)
!2854 = !DILocation(line: 3192, column: 30, scope: !2805)
!2855 = !DILocation(line: 3192, column: 35, scope: !2805)
!2856 = !DILocation(line: 3192, column: 11, scope: !2805)
!2857 = !DILocation(line: 3192, column: 4, scope: !2805)
!2858 = !DILocation(line: 3193, column: 1, scope: !2805)
!2859 = distinct !DISubprogram(name: "FileIsGroupsMember", scope: !371, file: !371, line: 3090, type: !2860, isLocal: true, isDefinition: true, scopeLine: 3091, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{!436, !2862}
!2862 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !1150, line: 65, baseType: !579)
!2863 = !DILocalVariable(name: "gid", arg: 1, scope: !2859, file: !371, line: 3090, type: !2862)
!2864 = !DILocation(line: 3090, column: 26, scope: !2859)
!2865 = !DILocalVariable(name: "nr_members", scope: !2859, file: !371, line: 3092, type: !374)
!2866 = !DILocation(line: 3092, column: 8, scope: !2859)
!2867 = !DILocalVariable(name: "members", scope: !2859, file: !371, line: 3093, type: !2868)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64, align: 64)
!2869 = !DILocation(line: 3093, column: 11, scope: !2859)
!2870 = !DILocalVariable(name: "res", scope: !2859, file: !371, line: 3094, type: !374)
!2871 = !DILocation(line: 3094, column: 8, scope: !2859)
!2872 = !DILocalVariable(name: "ret", scope: !2859, file: !371, line: 3095, type: !374)
!2873 = !DILocation(line: 3095, column: 8, scope: !2859)
!2874 = !DILocation(line: 3097, column: 12, scope: !2859)
!2875 = !DILocation(line: 3098, column: 15, scope: !2859)
!2876 = !DILocation(line: 3100, column: 4, scope: !2859)
!2877 = !DILocalVariable(name: "new", scope: !2878, file: !371, line: 3101, type: !2868)
!2878 = distinct !DILexicalBlock(scope: !2879, file: !371, line: 3100, column: 13)
!2879 = distinct !DILexicalBlock(scope: !2880, file: !371, line: 3100, column: 4)
!2880 = distinct !DILexicalBlock(scope: !2859, file: !371, line: 3100, column: 4)
!2881 = !DILocation(line: 3101, column: 14, scope: !2878)
!2882 = !DILocation(line: 3103, column: 23, scope: !2878)
!2883 = !DILocation(line: 3103, column: 35, scope: !2878)
!2884 = !DILocation(line: 3103, column: 13, scope: !2878)
!2885 = !DILocation(line: 3103, column: 11, scope: !2878)
!2886 = !DILocation(line: 3104, column: 11, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2878, file: !371, line: 3104, column: 11)
!2888 = !DILocation(line: 3104, column: 15, scope: !2887)
!2889 = !DILocation(line: 3104, column: 11, scope: !2878)
!2890 = !DILocation(line: 3105, column: 10, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2887, file: !371, line: 3104, column: 22)
!2892 = !DILocation(line: 3106, column: 14, scope: !2891)
!2893 = !DILocation(line: 3107, column: 10, scope: !2891)
!2894 = !DILocation(line: 3110, column: 11, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2878, file: !371, line: 3110, column: 11)
!2896 = !DILocation(line: 3110, column: 18, scope: !2895)
!2897 = !DILocation(line: 3110, column: 15, scope: !2895)
!2898 = !DILocation(line: 3110, column: 11, scope: !2878)
!2899 = !DILocation(line: 3111, column: 10, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2895, file: !371, line: 3110, column: 30)
!2901 = !DILocation(line: 3115, column: 21, scope: !2878)
!2902 = !DILocation(line: 3115, column: 30, scope: !2878)
!2903 = !DILocation(line: 3115, column: 34, scope: !2878)
!2904 = !DILocation(line: 3115, column: 13, scope: !2878)
!2905 = !DILocation(line: 3115, column: 11, scope: !2878)
!2906 = !DILocation(line: 3116, column: 11, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2878, file: !371, line: 3116, column: 11)
!2908 = !DILocation(line: 3116, column: 15, scope: !2907)
!2909 = !DILocation(line: 3116, column: 11, scope: !2878)
!2910 = !DILocation(line: 3117, column: 10, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2907, file: !371, line: 3116, column: 23)
!2912 = !DILocation(line: 3118, column: 14, scope: !2911)
!2913 = !DILocation(line: 3119, column: 10, scope: !2911)
!2914 = !DILocation(line: 3122, column: 17, scope: !2878)
!2915 = !DILocation(line: 3122, column: 15, scope: !2878)
!2916 = !DILocation(line: 3123, column: 20, scope: !2878)
!2917 = !DILocation(line: 3123, column: 18, scope: !2878)
!2918 = !DILocation(line: 3100, column: 4, scope: !2919)
!2919 = !DILexicalBlockFile(scope: !2879, file: !371, discriminator: 1)
!2920 = distinct !{!2920, !2876}
!2921 = !DILocation(line: 3126, column: 13, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2859, file: !371, line: 3126, column: 4)
!2923 = !DILocation(line: 3126, column: 9, scope: !2922)
!2924 = !DILocation(line: 3126, column: 18, scope: !2925)
!2925 = !DILexicalBlockFile(scope: !2926, file: !371, discriminator: 1)
!2926 = distinct !DILexicalBlock(scope: !2922, file: !371, line: 3126, column: 4)
!2927 = !DILocation(line: 3126, column: 24, scope: !2925)
!2928 = !DILocation(line: 3126, column: 22, scope: !2925)
!2929 = !DILocation(line: 3126, column: 4, scope: !2925)
!2930 = !DILocation(line: 3127, column: 19, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2932, file: !371, line: 3127, column: 11)
!2932 = distinct !DILexicalBlock(scope: !2926, file: !371, line: 3126, column: 43)
!2933 = !DILocation(line: 3127, column: 11, scope: !2931)
!2934 = !DILocation(line: 3127, column: 27, scope: !2931)
!2935 = !DILocation(line: 3127, column: 24, scope: !2931)
!2936 = !DILocation(line: 3127, column: 11, scope: !2932)
!2937 = !DILocation(line: 3128, column: 14, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2931, file: !371, line: 3127, column: 32)
!2939 = !DILocation(line: 3129, column: 10, scope: !2938)
!2940 = !DILocation(line: 3131, column: 4, scope: !2932)
!2941 = !DILocation(line: 3126, column: 39, scope: !2942)
!2942 = !DILexicalBlockFile(scope: !2926, file: !371, discriminator: 2)
!2943 = !DILocation(line: 3126, column: 4, scope: !2942)
!2944 = distinct !{!2944, !2945}
!2945 = !DILocation(line: 3126, column: 4, scope: !2859)
!2946 = !DILocation(line: 3132, column: 8, scope: !2859)
!2947 = !DILocation(line: 3132, column: 4, scope: !2859)
!2948 = !DILocation(line: 3135, column: 15, scope: !2859)
!2949 = !DILocation(line: 3135, column: 4, scope: !2859)
!2950 = !DILocation(line: 3137, column: 11, scope: !2859)
!2951 = !DILocation(line: 3137, column: 4, scope: !2859)
!2952 = distinct !DISubprogram(name: "File_MakeCfgFileExecutable", scope: !371, file: !371, line: 3216, type: !684, isLocal: false, isDefinition: true, scopeLine: 3217, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!2953 = !DILocalVariable(name: "pathName", arg: 1, scope: !2952, file: !371, line: 3216, type: !375)
!2954 = !DILocation(line: 3216, column: 40, scope: !2952)
!2955 = !DILocalVariable(name: "s", scope: !2952, file: !371, line: 3218, type: !564)
!2956 = !DILocation(line: 3218, column: 16, scope: !2952)
!2957 = !DILocation(line: 3220, column: 19, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2952, file: !371, line: 3220, column: 8)
!2959 = !DILocation(line: 3220, column: 8, scope: !2958)
!2960 = !DILocation(line: 3220, column: 33, scope: !2958)
!2961 = !DILocation(line: 3220, column: 8, scope: !2952)
!2962 = !DILocalVariable(name: "newMode", scope: !2963, file: !371, line: 3221, type: !2964)
!2963 = distinct !DILexicalBlock(scope: !2958, file: !371, line: 3220, column: 39)
!2964 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !1150, line: 70, baseType: !575)
!2965 = !DILocation(line: 3221, column: 14, scope: !2963)
!2966 = !DILocation(line: 3221, column: 26, scope: !2963)
!2967 = !DILocation(line: 3223, column: 15, scope: !2963)
!2968 = !DILocation(line: 3225, column: 7, scope: !2963)
!2969 = distinct !{!2969, !2968}
!2970 = !DILocation(line: 3225, column: 63, scope: !2971)
!2971 = !DILexicalBlockFile(scope: !2972, file: !371, discriminator: 1)
!2972 = distinct !DILexicalBlock(scope: !2963, file: !371, line: 3225, column: 10)
!2973 = !DILocation(line: 3226, column: 20, scope: !2963)
!2974 = !DILocation(line: 3226, column: 28, scope: !2963)
!2975 = !DILocation(line: 3226, column: 50, scope: !2963)
!2976 = !DILocation(line: 3226, column: 15, scope: !2963)
!2977 = !DILocation(line: 3228, column: 14, scope: !2963)
!2978 = !DILocation(line: 3228, column: 27, scope: !2963)
!2979 = !DILocation(line: 3228, column: 22, scope: !2963)
!2980 = !DILocation(line: 3228, column: 35, scope: !2963)
!2981 = !DILocation(line: 3228, column: 50, scope: !2982)
!2982 = !DILexicalBlockFile(scope: !2963, file: !371, discriminator: 1)
!2983 = !DILocation(line: 3228, column: 60, scope: !2982)
!2984 = !DILocation(line: 3228, column: 38, scope: !2982)
!2985 = !DILocation(line: 3228, column: 35, scope: !2982)
!2986 = !DILocation(line: 3228, column: 35, scope: !2987)
!2987 = !DILexicalBlockFile(scope: !2963, file: !371, discriminator: 2)
!2988 = !DILocation(line: 3228, column: 14, scope: !2987)
!2989 = !DILocation(line: 3228, column: 7, scope: !2987)
!2990 = !DILocation(line: 3230, column: 4, scope: !2952)
!2991 = !DILocation(line: 3231, column: 1, scope: !2952)
!2992 = distinct !DISubprogram(name: "File_GetSizeAlternate", scope: !371, file: !371, line: 3255, type: !2993, isLocal: false, isDefinition: true, scopeLine: 3256, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!1148, !375}
!2995 = !DILocalVariable(name: "pathName", arg: 1, scope: !2992, file: !371, line: 3255, type: !375)
!2996 = !DILocation(line: 3255, column: 35, scope: !2992)
!2997 = !DILocation(line: 3257, column: 24, scope: !2992)
!2998 = !DILocation(line: 3257, column: 11, scope: !2992)
!2999 = !DILocation(line: 3257, column: 4, scope: !2992)
!3000 = distinct !DISubprogram(name: "File_IsCharDevice", scope: !371, file: !371, line: 3282, type: !684, isLocal: false, isDefinition: true, scopeLine: 3283, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!3001 = !DILocalVariable(name: "pathName", arg: 1, scope: !3000, file: !371, line: 3282, type: !375)
!3002 = !DILocation(line: 3282, column: 31, scope: !3000)
!3003 = !DILocalVariable(name: "fileData", scope: !3000, file: !371, line: 3284, type: !545)
!3004 = !DILocation(line: 3284, column: 13, scope: !3000)
!3005 = !DILocation(line: 3286, column: 27, scope: !3000)
!3006 = !DILocation(line: 3286, column: 12, scope: !3000)
!3007 = !DILocation(line: 3286, column: 48, scope: !3000)
!3008 = !DILocation(line: 3286, column: 54, scope: !3000)
!3009 = !DILocation(line: 3287, column: 22, scope: !3000)
!3010 = !DILocation(line: 3287, column: 31, scope: !3000)
!3011 = !DILocation(line: 3286, column: 54, scope: !3012)
!3012 = !DILexicalBlockFile(scope: !3000, file: !371, discriminator: 1)
!3013 = !DILocation(line: 3286, column: 11, scope: !3012)
!3014 = !DILocation(line: 3286, column: 4, scope: !3012)
!3015 = distinct !DISubprogram(name: "File_GetMountPath", scope: !371, file: !371, line: 3312, type: !3016, isLocal: false, isDefinition: true, scopeLine: 3314, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{!458, !375, !436}
!3018 = !DILocalVariable(name: "pathName", arg: 1, scope: !3015, file: !371, line: 3312, type: !375)
!3019 = !DILocation(line: 3312, column: 31, scope: !3015)
!3020 = !DILocalVariable(name: "checkEntirePath", arg: 2, scope: !3015, file: !371, line: 3313, type: !436)
!3021 = !DILocation(line: 3313, column: 24, scope: !3015)
!3022 = !DILocalVariable(name: "mountPath", scope: !3015, file: !371, line: 3315, type: !458)
!3023 = !DILocation(line: 3315, column: 10, scope: !3015)
!3024 = !DILocation(line: 3317, column: 8, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3015, file: !371, line: 3317, column: 8)
!3026 = !DILocation(line: 3317, column: 17, scope: !3025)
!3027 = !DILocation(line: 3317, column: 8, scope: !3015)
!3028 = !DILocation(line: 3318, column: 7, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3025, file: !371, line: 3317, column: 25)
!3030 = !DILocation(line: 3321, column: 8, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !3015, file: !371, line: 3321, column: 8)
!3032 = !DILocation(line: 3321, column: 8, scope: !3015)
!3033 = !DILocation(line: 3322, column: 29, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3031, file: !371, line: 3321, column: 25)
!3035 = !DILocation(line: 3322, column: 14, scope: !3034)
!3036 = !DILocation(line: 3322, column: 7, scope: !3034)
!3037 = !DILocation(line: 3325, column: 31, scope: !3015)
!3038 = !DILocation(line: 3325, column: 16, scope: !3015)
!3039 = !DILocation(line: 3325, column: 14, scope: !3015)
!3040 = !DILocation(line: 3326, column: 8, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3015, file: !371, line: 3326, column: 8)
!3042 = !DILocation(line: 3326, column: 18, scope: !3041)
!3043 = !DILocation(line: 3326, column: 8, scope: !3015)
!3044 = !DILocation(line: 3327, column: 14, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3041, file: !371, line: 3326, column: 26)
!3046 = !DILocation(line: 3327, column: 7, scope: !3045)
!3047 = !DILocation(line: 3330, column: 22, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3015, file: !371, line: 3330, column: 8)
!3049 = !DILocation(line: 3330, column: 9, scope: !3048)
!3050 = !DILocation(line: 3330, column: 8, scope: !3015)
!3051 = !DILocation(line: 3331, column: 31, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3048, file: !371, line: 3330, column: 38)
!3053 = !DILocation(line: 3331, column: 14, scope: !3052)
!3054 = !DILocation(line: 3331, column: 7, scope: !3052)
!3055 = !DILocation(line: 3334, column: 4, scope: !3015)
!3056 = !DILocation(line: 3335, column: 1, scope: !3015)
!3057 = distinct !DISubprogram(name: "Unicode_Append", scope: !2069, file: !2069, line: 159, type: !3058, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{!458, !375, !375}
!3060 = !DILocalVariable(name: "destination", arg: 1, scope: !3057, file: !2069, line: 159, type: !375)
!3061 = !DILocation(line: 159, column: 28, scope: !3057)
!3062 = !DILocalVariable(name: "source", arg: 2, scope: !3057, file: !2069, line: 160, type: !375)
!3063 = !DILocation(line: 160, column: 28, scope: !3057)
!3064 = !DILocation(line: 162, column: 32, scope: !3057)
!3065 = !DILocation(line: 165, column: 32, scope: !3057)
!3066 = !DILocation(line: 162, column: 11, scope: !3057)
!3067 = !DILocation(line: 162, column: 4, scope: !3057)
!3068 = distinct !DISubprogram(name: "Util_FreeList", scope: !2725, file: !2725, line: 335, type: !3069, isLocal: true, isDefinition: true, scopeLine: 337, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{null, !366, !2728}
!3071 = !DILocalVariable(name: "list", arg: 1, scope: !3068, file: !2725, line: 335, type: !366)
!3072 = !DILocation(line: 335, column: 22, scope: !3068)
!3073 = !DILocalVariable(name: "length", arg: 2, scope: !3068, file: !2725, line: 336, type: !2728)
!3074 = !DILocation(line: 336, column: 23, scope: !3068)
!3075 = !DILocalVariable(name: "err", scope: !3068, file: !2725, line: 339, type: !374)
!3076 = !DILocation(line: 339, column: 8, scope: !3068)
!3077 = !DILocation(line: 341, column: 8, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3068, file: !2725, line: 341, column: 8)
!3079 = !DILocation(line: 341, column: 13, scope: !3078)
!3080 = !DILocation(line: 341, column: 8, scope: !3068)
!3081 = !DILocation(line: 343, column: 7, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3078, file: !2725, line: 341, column: 21)
!3083 = !DILocation(line: 346, column: 11, scope: !3068)
!3084 = !DILocation(line: 346, column: 10, scope: !3068)
!3085 = !DILocation(line: 346, column: 8, scope: !3068)
!3086 = !DILocation(line: 348, column: 8, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3068, file: !2725, line: 348, column: 8)
!3088 = !DILocation(line: 348, column: 15, scope: !3087)
!3089 = !DILocation(line: 348, column: 8, scope: !3068)
!3090 = !DILocalVariable(name: "i", scope: !3091, file: !2725, line: 349, type: !2728)
!3091 = distinct !DILexicalBlock(scope: !3087, file: !2725, line: 348, column: 21)
!3092 = !DILocation(line: 349, column: 15, scope: !3091)
!3093 = !DILocation(line: 351, column: 14, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3091, file: !2725, line: 351, column: 7)
!3095 = !DILocation(line: 351, column: 12, scope: !3094)
!3096 = !DILocation(line: 351, column: 19, scope: !3097)
!3097 = !DILexicalBlockFile(scope: !3098, file: !2725, discriminator: 1)
!3098 = distinct !DILexicalBlock(scope: !3094, file: !2725, line: 351, column: 7)
!3099 = !DILocation(line: 351, column: 23, scope: !3097)
!3100 = !DILocation(line: 351, column: 21, scope: !3097)
!3101 = !DILocation(line: 351, column: 7, scope: !3097)
!3102 = !DILocation(line: 352, column: 20, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3098, file: !2725, line: 351, column: 36)
!3104 = !DILocation(line: 352, column: 15, scope: !3103)
!3105 = !DILocation(line: 352, column: 10, scope: !3103)
!3106 = !DILocation(line: 354, column: 7, scope: !3103)
!3107 = !DILocation(line: 351, column: 32, scope: !3108)
!3108 = !DILexicalBlockFile(scope: !3098, file: !2725, discriminator: 2)
!3109 = !DILocation(line: 351, column: 7, scope: !3108)
!3110 = distinct !{!3110, !3111}
!3111 = !DILocation(line: 351, column: 7, scope: !3091)
!3112 = !DILocation(line: 355, column: 4, scope: !3091)
!3113 = !DILocalVariable(name: "s", scope: !3114, file: !2725, line: 356, type: !366)
!3114 = distinct !DILexicalBlock(scope: !3087, file: !2725, line: 355, column: 11)
!3115 = !DILocation(line: 356, column: 14, scope: !3114)
!3116 = !DILocation(line: 358, column: 16, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3114, file: !2725, line: 358, column: 7)
!3118 = !DILocation(line: 358, column: 14, scope: !3117)
!3119 = !DILocation(line: 358, column: 12, scope: !3117)
!3120 = !DILocation(line: 358, column: 23, scope: !3121)
!3121 = !DILexicalBlockFile(scope: !3122, file: !2725, discriminator: 1)
!3122 = distinct !DILexicalBlock(scope: !3117, file: !2725, line: 358, column: 7)
!3123 = !DILocation(line: 358, column: 22, scope: !3121)
!3124 = !DILocation(line: 358, column: 25, scope: !3121)
!3125 = !DILocation(line: 358, column: 7, scope: !3121)
!3126 = !DILocation(line: 359, column: 16, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3122, file: !2725, line: 358, column: 38)
!3128 = !DILocation(line: 359, column: 15, scope: !3127)
!3129 = !DILocation(line: 359, column: 10, scope: !3127)
!3130 = !DILocation(line: 361, column: 7, scope: !3127)
!3131 = !DILocation(line: 358, column: 34, scope: !3132)
!3132 = !DILexicalBlockFile(scope: !3122, file: !2725, discriminator: 2)
!3133 = !DILocation(line: 358, column: 7, scope: !3132)
!3134 = distinct !{!3134, !3135}
!3135 = !DILocation(line: 358, column: 7, scope: !3114)
!3136 = !DILocation(line: 363, column: 9, scope: !3068)
!3137 = !DILocation(line: 363, column: 4, scope: !3068)
!3138 = !DILocation(line: 364, column: 11, scope: !3068)
!3139 = !DILocation(line: 364, column: 5, scope: !3068)
!3140 = !DILocation(line: 364, column: 9, scope: !3068)
!3141 = !DILocation(line: 365, column: 1, scope: !3068)
!3142 = !DILocation(line: 365, column: 1, scope: !3143)
!3143 = !DILexicalBlockFile(scope: !3068, file: !2725, discriminator: 1)
