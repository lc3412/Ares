; ModuleID = './wiperPosix.o.i'
source_filename = "./wiperPosix.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.PartitionInfo = type { i8*, i32, i8*, i8 }
%struct.WiperPartition = type { [256 x i8], i32, i8, i8*, %struct.DblLnkLst_Links }
%struct.DblLnkLst_Links = type { %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.mntent = type { i8*, i8*, i8*, i8*, i32, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.statfs = type { i64, i64, i64, i64, i64, i64, i64, %struct.__fsid_t, i64, i64, i64, [4 x i64] }
%struct.__fsid_t = type { [2 x i32] }
%struct.WiperPartition_List = type { %struct.DblLnkLst_Links }
%struct.Wiper_State = type opaque
%struct.WiperState = type { i32, %struct.WiperPartition*, %struct.File*, i32, [65536 x i8], i32 }
%struct.File = type { [256 x i8], %struct.FileIODescriptor, i64, %struct.File* }
%struct.FileIODescriptor = type { i32, i32, i8*, %struct.FileLockToken* }
%struct.FileLockToken = type opaque
%struct.WiperInitData = type {}

@.str = private unnamed_addr constant [10 x i8] c"/etc/mtab\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Could not open %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Not enough memory while opening a partition.\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"NATIVE_MAX_PATH is too small.\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Could not find a mount point for %s in %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Unable to statfs() the mount point\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Unable to open mount file.\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"Not enough memory\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"%s/wiper%d\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"NATIVE_MAX_PATH is too small\0A\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"error.create\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"User's disk quota exceeded\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"Unable to write to a wiper file\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"state is %u\0A\00", align 1
@initDone = internal global i8 0, align 1
@WiperCollectDiskMajors.diskDevNames = internal constant [43 x i8] c"|ide0|ide1|sd|md|nbd|device-mapper|blkext|\00", align 16
@WiperCollectDiskMajors.blockSeparator = internal constant [15 x i8] c"Block devices:\00", align 1
@numDiskMajors = internal global i32 0, align 4
@.str.17 = private unnamed_addr constant [14 x i8] c"/proc/devices\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"%d %61s\0A\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@knownDiskMajor = internal global [256 x i32] [i32 3, i32 8, i32 22, i32 43, i32 259, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@gKnownPartitions = internal constant [20 x %struct.PartitionInfo] [%struct.PartitionInfo { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i32 0, i32 0), i8 0 }, %struct.PartitionInfo { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i32 0, i32 0), i8 0 }, %struct.PartitionInfo { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @gRemoteFS, i32 0, i32 0), i8 0 }, %struct.PartitionInfo { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @gRemoteFS, i32 0, i32 0), i8 0 }, %struct.PartitionInfo { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0), i8 0 }, %struct.PartitionInfo { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @gRemoteFS, i32 0, i32 0), i8 0 }, %struct.PartitionInfo { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i32 0, i32 0), i8 0 }, %struct.PartitionInfo { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i32 1, i8* null, i8 1 }, %struct.PartitionInfo { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 2, i8* null, i8 1 }, %struct.PartitionInfo { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i32 8, i8* null, i8 1 }, %struct.PartitionInfo { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), i32 9, i8* null, i8 1 }, %struct.PartitionInfo { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i32 5, i8* null, i8 1 }, %struct.PartitionInfo { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i32 4, i8* null, i8 1 }, %struct.PartitionInfo { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), i32 7, i8* null, i8 1 }, %struct.PartitionInfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0), i32 3, i8* null, i8 1 }, %struct.PartitionInfo { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0), i32 6, i8* null, i8 1 }, %struct.PartitionInfo { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 5, i8* null, i8 1 }, %struct.PartitionInfo { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i32 0, i32 0), i32 10, i8* null, i8 0 }, %struct.PartitionInfo { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i32 0, i32 0), i32 11, i8* null, i8 1 }, %struct.PartitionInfo { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), i32 12, i8* null, i8 1 }], align 16
@.str.20 = private unnamed_addr constant [36 x i8] c"Unknown filesystem. Contact VMware.\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"Unknown device.\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"Not a block device.\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"Not a disk device.\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"rw\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"Not writable.\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"Mount point not writable.\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"autofs\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"autofs filesystem.\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"devpts\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"devpts filesystem.\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"nfs\00", align 1
@gRemoteFS = internal constant [19 x i8] c"Remote filesystem.\00", align 16
@.str.32 = private unnamed_addr constant [6 x i8] c"smbfs\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"swap\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"Swap partition.\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"vmhgfs\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"proc\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"proc filesystem.\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"ext2\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"ext3\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"ext4\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"hfs\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"msdos\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"ntfs\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"pcfs\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"reiserfs\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"ufs\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"vfat\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"zfs\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"xfs\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"btrfs\00", align 1

; Function Attrs: nounwind uwtable
define %struct.WiperPartition* @WiperSinglePartition_Open(i8*, i8 signext) #0 !dbg !162 {
  %3 = alloca %struct.WiperPartition*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mntent*, align 8
  %10 = alloca %struct.WiperPartition*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !166, metadata !167), !dbg !168
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !169, metadata !167), !dbg !170
  call void @llvm.dbg.declare(metadata i8** %6, metadata !171, metadata !167), !dbg !172
  store i8* null, i8** %6, align 8, !dbg !172
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !173, metadata !167), !dbg !229
  call void @llvm.dbg.declare(metadata i32* %8, metadata !230, metadata !167), !dbg !231
  store i32 0, i32* %8, align 4, !dbg !231
  call void @llvm.dbg.declare(metadata %struct.mntent** %9, metadata !232, metadata !167), !dbg !243
  call void @llvm.dbg.declare(metadata %struct.WiperPartition** %10, metadata !244, metadata !167), !dbg !245
  store %struct.WiperPartition* null, %struct.WiperPartition** %10, align 8, !dbg !245
  %12 = call %struct._IO_FILE* @Posix_Setmntent(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)), !dbg !246
  store %struct._IO_FILE* %12, %struct._IO_FILE** %7, align 8, !dbg !247
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !248
  %14 = icmp eq %struct._IO_FILE* %13, null, !dbg !250
  br i1 %14, label %15, label %16, !dbg !251

; <label>:15:                                     ; preds = %2
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0)), !dbg !252
  store %struct.WiperPartition* null, %struct.WiperPartition** %3, align 8, !dbg !254
  br label %79, !dbg !254

; <label>:16:                                     ; preds = %2
  %17 = load i8*, i8** %4, align 8, !dbg !255
  %18 = call i8* @UtilSafeStrdup0(i8* %17), !dbg !256
  store i8* %18, i8** %6, align 8, !dbg !257
  call void @llvm.dbg.declare(metadata i8** %11, metadata !258, metadata !167), !dbg !260
  %19 = load i8*, i8** %6, align 8, !dbg !261
  %20 = call i64 @strlen(i8* %19) #8, !dbg !262
  %21 = sub i64 %20, 1, !dbg !263
  %22 = load i8*, i8** %6, align 8, !dbg !264
  %23 = getelementptr inbounds i8, i8* %22, i64 %21, !dbg !264
  store i8* %23, i8** %11, align 8, !dbg !260
  %24 = load i8*, i8** %11, align 8, !dbg !265
  %25 = load i8, i8* %24, align 1, !dbg !267
  %26 = sext i8 %25 to i32, !dbg !267
  %27 = icmp eq i32 %26, 47, !dbg !268
  br i1 %27, label %28, label %30, !dbg !269

; <label>:28:                                     ; preds = %16
  %29 = load i8*, i8** %11, align 8, !dbg !270
  store i8 0, i8* %29, align 1, !dbg !272
  br label %30, !dbg !273

; <label>:30:                                     ; preds = %28, %16
  %31 = load i8*, i8** %6, align 8, !dbg !274
  %32 = call i64 @strlen(i8* %31) #8, !dbg !275
  %33 = trunc i64 %32 to i32, !dbg !275
  store i32 %33, i32* %8, align 4, !dbg !276
  br label %34, !dbg !277

; <label>:34:                                     ; preds = %69, %30
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !278
  %36 = call %struct.mntent* @Posix_Getmntent(%struct._IO_FILE* %35), !dbg !280
  store %struct.mntent* %36, %struct.mntent** %9, align 8, !dbg !281
  %37 = icmp ne %struct.mntent* %36, null, !dbg !282
  br i1 %37, label %38, label %70, !dbg !283

; <label>:38:                                     ; preds = %34
  %39 = load %struct.mntent*, %struct.mntent** %9, align 8, !dbg !284
  %40 = getelementptr inbounds %struct.mntent, %struct.mntent* %39, i32 0, i32 1, !dbg !287
  %41 = load i8*, i8** %40, align 8, !dbg !287
  %42 = load i8*, i8** %6, align 8, !dbg !288
  %43 = load i32, i32* %8, align 4, !dbg !289
  %44 = sext i32 %43 to i64, !dbg !289
  %45 = call i32 @strncmp(i8* %41, i8* %42, i64 %44) #8, !dbg !290
  %46 = icmp eq i32 %45, 0, !dbg !291
  br i1 %46, label %47, label %69, !dbg !292

; <label>:47:                                     ; preds = %38
  %48 = call %struct.WiperPartition* @WiperSinglePartition_Allocate(), !dbg !293
  store %struct.WiperPartition* %48, %struct.WiperPartition** %10, align 8, !dbg !295
  %49 = load %struct.WiperPartition*, %struct.WiperPartition** %10, align 8, !dbg !296
  %50 = icmp eq %struct.WiperPartition* %49, null, !dbg !298
  br i1 %50, label %51, label %52, !dbg !299

; <label>:51:                                     ; preds = %47
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i32 0, i32 0)), !dbg !300
  br label %68, !dbg !302

; <label>:52:                                     ; preds = %47
  %53 = load %struct.WiperPartition*, %struct.WiperPartition** %10, align 8, !dbg !303
  %54 = getelementptr inbounds %struct.WiperPartition, %struct.WiperPartition* %53, i32 0, i32 0, !dbg !306
  %55 = getelementptr inbounds [256 x i8], [256 x i8]* %54, i32 0, i32 0, !dbg !303
  %56 = load %struct.mntent*, %struct.mntent** %9, align 8, !dbg !307
  %57 = getelementptr inbounds %struct.mntent, %struct.mntent* %56, i32 0, i32 1, !dbg !308
  %58 = load i8*, i8** %57, align 8, !dbg !308
  %59 = call i32 (i8*, i64, i8*, ...) @Str_Snprintf(i8* %55, i64 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* %58), !dbg !309
  %60 = icmp eq i32 %59, -1, !dbg !310
  br i1 %60, label %61, label %63, !dbg !309

; <label>:61:                                     ; preds = %52
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0)), !dbg !311
  %62 = load %struct.WiperPartition*, %struct.WiperPartition** %10, align 8, !dbg !313
  call void @WiperSinglePartition_Close(%struct.WiperPartition* %62), !dbg !314
  store %struct.WiperPartition* null, %struct.WiperPartition** %10, align 8, !dbg !315
  br label %67, !dbg !316

; <label>:63:                                     ; preds = %52
  call void @WiperCollectDiskMajors(), !dbg !317
  %64 = load %struct.WiperPartition*, %struct.WiperPartition** %10, align 8, !dbg !319
  %65 = load %struct.mntent*, %struct.mntent** %9, align 8, !dbg !320
  %66 = load i8, i8* %5, align 1, !dbg !321
  call void @WiperPartitionFilter(%struct.WiperPartition* %64, %struct.mntent* %65, i8 signext %66), !dbg !322
  br label %67

; <label>:67:                                     ; preds = %63, %61
  br label %68

; <label>:68:                                     ; preds = %67, %51
  br label %72, !dbg !323

; <label>:69:                                     ; preds = %38
  br label %34, !dbg !324, !llvm.loop !326

; <label>:70:                                     ; preds = %34
  %71 = load i8*, i8** %6, align 8, !dbg !327
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i32 0, i32 0), i8* %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0)), !dbg !328
  br label %72, !dbg !328

; <label>:72:                                     ; preds = %70, %68
  %73 = load i8*, i8** %6, align 8, !dbg !329
  call void @free(i8* %73) #9, !dbg !330
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !331
  %75 = call i32 @endmntent(%struct._IO_FILE* %74) #9, !dbg !332
  %76 = icmp eq i32 %75, 1, !dbg !333
  %77 = zext i1 %76 to i32, !dbg !333
  %78 = load %struct.WiperPartition*, %struct.WiperPartition** %10, align 8, !dbg !334
  store %struct.WiperPartition* %78, %struct.WiperPartition** %3, align 8, !dbg !335
  br label %79, !dbg !335

; <label>:79:                                     ; preds = %72, %15
  %80 = load %struct.WiperPartition*, %struct.WiperPartition** %3, align 8, !dbg !336
  ret %struct.WiperPartition* %80, !dbg !336
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._IO_FILE* @Posix_Setmntent(i8*, i8*) #2

declare void @Log(i8*, ...) #2

declare i8* @UtilSafeStrdup0(i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare %struct.mntent* @Posix_Getmntent(%struct._IO_FILE*) #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

declare %struct.WiperPartition* @WiperSinglePartition_Allocate() #2

declare i32 @Str_Snprintf(i8*, i64, i8*, ...) #2

declare void @WiperSinglePartition_Close(%struct.WiperPartition*) #2

; Function Attrs: nounwind uwtable
define internal void @WiperCollectDiskMajors() #0 !dbg !128 {
  %1 = alloca i8, align 1
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [64 x i8], align 16
  %5 = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8* %1, metadata !337, metadata !167), !dbg !338
  store i8 0, i8* %1, align 1, !dbg !338
  call void @llvm.dbg.declare(metadata i8** %2, metadata !339, metadata !167), !dbg !340
  call void @llvm.dbg.declare(metadata i32* %3, metadata !341, metadata !167), !dbg !342
  call void @llvm.dbg.declare(metadata [64 x i8]* %4, metadata !343, metadata !167), !dbg !347
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !348, metadata !167), !dbg !349
  store i32 5, i32* @numDiskMajors, align 4, !dbg !350
  %6 = call %struct._IO_FILE* @Posix_Fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)), !dbg !351
  store %struct._IO_FILE* %6, %struct._IO_FILE** %5, align 8, !dbg !352
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !353
  %8 = icmp ne %struct._IO_FILE* %7, null, !dbg !353
  br i1 %8, label %10, label %9, !dbg !355

; <label>:9:                                      ; preds = %0
  br label %55, !dbg !356

; <label>:10:                                     ; preds = %0
  br label %11, !dbg !358

; <label>:11:                                     ; preds = %51, %10
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !359
  %13 = call i32 @StdIO_ReadNextLine(%struct._IO_FILE* %12, i8** %2, i64 0, i64* null), !dbg !361
  %14 = icmp eq i32 %13, 2, !dbg !362
  br i1 %14, label %15, label %52, !dbg !363

; <label>:15:                                     ; preds = %11
  %16 = load i8, i8* %1, align 1, !dbg !364
  %17 = icmp ne i8 %16, 0, !dbg !364
  br i1 %17, label %24, label %18, !dbg !367

; <label>:18:                                     ; preds = %15
  %19 = load i8*, i8** %2, align 8, !dbg !368
  %20 = call i32 @memcmp(i8* %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @WiperCollectDiskMajors.blockSeparator, i32 0, i32 0), i64 14) #8, !dbg !371
  %21 = icmp ne i32 %20, 0, !dbg !371
  br i1 %21, label %23, label %22, !dbg !372

; <label>:22:                                     ; preds = %18
  store i8 1, i8* %1, align 1, !dbg !373
  br label %23, !dbg !375

; <label>:23:                                     ; preds = %22, %18
  br label %46, !dbg !376

; <label>:24:                                     ; preds = %15
  %25 = load i8*, i8** %2, align 8, !dbg !377
  %26 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i32 0, i32 0, !dbg !380
  %27 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !381
  %28 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i32* %3, i8* %27) #9, !dbg !382
  %29 = icmp eq i32 %28, 2, !dbg !383
  br i1 %29, label %30, label %45, !dbg !382

; <label>:30:                                     ; preds = %24
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0, !dbg !384
  store i8 124, i8* %31, align 16, !dbg !386
  %32 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 62, !dbg !387
  store i8 0, i8* %32, align 2, !dbg !388
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i32 0, i32 0, !dbg !389
  %34 = call i8* @Str_Strcat(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i64 64), !dbg !390
  %35 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i32 0, i32 0, !dbg !391
  %36 = call i8* @strstr(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @WiperCollectDiskMajors.diskDevNames, i32 0, i32 0), i8* %35) #8, !dbg !393
  %37 = icmp ne i8* %36, null, !dbg !393
  br i1 %37, label %38, label %44, !dbg !394

; <label>:38:                                     ; preds = %30
  %39 = load i32, i32* %3, align 4, !dbg !395
  %40 = load i32, i32* @numDiskMajors, align 4, !dbg !397
  %41 = add nsw i32 %40, 1, !dbg !397
  store i32 %41, i32* @numDiskMajors, align 4, !dbg !397
  %42 = sext i32 %40 to i64, !dbg !398
  %43 = getelementptr inbounds [256 x i32], [256 x i32]* @knownDiskMajor, i64 0, i64 %42, !dbg !398
  store i32 %39, i32* %43, align 4, !dbg !399
  br label %44, !dbg !400

; <label>:44:                                     ; preds = %38, %30
  br label %45, !dbg !401

; <label>:45:                                     ; preds = %44, %24
  br label %46

; <label>:46:                                     ; preds = %45, %23
  %47 = load i8*, i8** %2, align 8, !dbg !402
  call void @free(i8* %47) #9, !dbg !403
  %48 = load i32, i32* @numDiskMajors, align 4, !dbg !404
  %49 = icmp sge i32 %48, 256, !dbg !406
  br i1 %49, label %50, label %51, !dbg !407

; <label>:50:                                     ; preds = %46
  br label %52, !dbg !408

; <label>:51:                                     ; preds = %46
  br label %11, !dbg !410, !llvm.loop !412

; <label>:52:                                     ; preds = %50, %11
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !413
  %54 = call i32 @fclose(%struct._IO_FILE* %53), !dbg !414
  br label %55, !dbg !415

; <label>:55:                                     ; preds = %52, %9
  ret void, !dbg !416
}

; Function Attrs: nounwind uwtable
define internal void @WiperPartitionFilter(%struct.WiperPartition*, %struct.mntent*, i8 signext) #0 !dbg !417 {
  %4 = alloca %struct.WiperPartition*, align 8
  %5 = alloca %struct.mntent*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.stat, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.PartitionInfo*, align 8
  %11 = alloca i64, align 8
  store %struct.WiperPartition* %0, %struct.WiperPartition** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.WiperPartition** %4, metadata !420, metadata !167), !dbg !421
  store %struct.mntent* %1, %struct.mntent** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.mntent** %5, metadata !422, metadata !167), !dbg !423
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !424, metadata !167), !dbg !425
  call void @llvm.dbg.declare(metadata %struct.stat* %7, metadata !426, metadata !167), !dbg !462
  call void @llvm.dbg.declare(metadata i8** %8, metadata !463, metadata !167), !dbg !464
  store i8* null, i8** %8, align 8, !dbg !464
  call void @llvm.dbg.declare(metadata i8** %9, metadata !465, metadata !167), !dbg !466
  %12 = load %struct.mntent*, %struct.mntent** %5, align 8, !dbg !467
  %13 = getelementptr inbounds %struct.mntent, %struct.mntent* %12, i32 0, i32 2, !dbg !468
  %14 = load i8*, i8** %13, align 8, !dbg !468
  store i8* %14, i8** %9, align 8, !dbg !466
  call void @llvm.dbg.declare(metadata %struct.PartitionInfo** %10, metadata !469, metadata !167), !dbg !471
  call void @llvm.dbg.declare(metadata i64* %11, metadata !472, metadata !167), !dbg !473
  %15 = load %struct.WiperPartition*, %struct.WiperPartition** %4, align 8, !dbg !474
  %16 = getelementptr inbounds %struct.WiperPartition, %struct.WiperPartition* %15, i32 0, i32 1, !dbg !475
  store i32 0, i32* %16, align 8, !dbg !476
  store i64 0, i64* %11, align 8, !dbg !477
  br label %17, !dbg !479

; <label>:17:                                     ; preds = %39, %3
  %18 = load i64, i64* %11, align 8, !dbg !480
  %19 = icmp ult i64 %18, 20, !dbg !483
  br i1 %19, label %20, label %42, !dbg !484

; <label>:20:                                     ; preds = %17
  %21 = load i64, i64* %11, align 8, !dbg !485
  %22 = getelementptr inbounds [20 x %struct.PartitionInfo], [20 x %struct.PartitionInfo]* @gKnownPartitions, i64 0, i64 %21, !dbg !487
  store %struct.PartitionInfo* %22, %struct.PartitionInfo** %10, align 8, !dbg !488
  %23 = load %struct.PartitionInfo*, %struct.PartitionInfo** %10, align 8, !dbg !489
  %24 = getelementptr inbounds %struct.PartitionInfo, %struct.PartitionInfo* %23, i32 0, i32 0, !dbg !491
  %25 = load i8*, i8** %24, align 8, !dbg !491
  %26 = load i8*, i8** %9, align 8, !dbg !492
  %27 = call i32 @strcmp(i8* %25, i8* %26) #8, !dbg !493
  %28 = icmp eq i32 %27, 0, !dbg !494
  br i1 %28, label %29, label %38, !dbg !495

; <label>:29:                                     ; preds = %20
  %30 = load %struct.PartitionInfo*, %struct.PartitionInfo** %10, align 8, !dbg !496
  %31 = getelementptr inbounds %struct.PartitionInfo, %struct.PartitionInfo* %30, i32 0, i32 1, !dbg !498
  %32 = load i32, i32* %31, align 8, !dbg !498
  %33 = load %struct.WiperPartition*, %struct.WiperPartition** %4, align 8, !dbg !499
  %34 = getelementptr inbounds %struct.WiperPartition, %struct.WiperPartition* %33, i32 0, i32 1, !dbg !500
  store i32 %32, i32* %34, align 8, !dbg !501
  %35 = load %struct.PartitionInfo*, %struct.PartitionInfo** %10, align 8, !dbg !502
  %36 = getelementptr inbounds %struct.PartitionInfo, %struct.PartitionInfo* %35, i32 0, i32 2, !dbg !503
  %37 = load i8*, i8** %36, align 8, !dbg !503
  store i8* %37, i8** %8, align 8, !dbg !504
  br label %42, !dbg !505

; <label>:38:                                     ; preds = %20
  br label %39, !dbg !506

; <label>:39:                                     ; preds = %38
  %40 = load i64, i64* %11, align 8, !dbg !507
  %41 = add i64 %40, 1, !dbg !507
  store i64 %41, i64* %11, align 8, !dbg !507
  br label %17, !dbg !509, !llvm.loop !510

; <label>:42:                                     ; preds = %29, %17
  %43 = load i64, i64* %11, align 8, !dbg !512
  %44 = icmp eq i64 %43, 20, !dbg !514
  br i1 %44, label %45, label %46, !dbg !515

; <label>:45:                                     ; preds = %42
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i32 0, i32 0), i8** %8, align 8, !dbg !516
  br label %103, !dbg !518

; <label>:46:                                     ; preds = %42
  %47 = load %struct.WiperPartition*, %struct.WiperPartition** %4, align 8, !dbg !519
  %48 = getelementptr inbounds %struct.WiperPartition, %struct.WiperPartition* %47, i32 0, i32 1, !dbg !522
  %49 = load i32, i32* %48, align 8, !dbg !522
  %50 = icmp ne i32 %49, 0, !dbg !523
  br i1 %50, label %51, label %102, !dbg !524

; <label>:51:                                     ; preds = %46
  %52 = load i8, i8* %6, align 1, !dbg !525
  %53 = sext i8 %52 to i32, !dbg !525
  %54 = icmp ne i32 %53, 0, !dbg !525
  br i1 %54, label %55, label %102, !dbg !526

; <label>:55:                                     ; preds = %51
  %56 = load %struct.PartitionInfo*, %struct.PartitionInfo** %10, align 8, !dbg !528
  %57 = getelementptr inbounds %struct.PartitionInfo, %struct.PartitionInfo* %56, i32 0, i32 3, !dbg !531
  %58 = load i8, i8* %57, align 8, !dbg !531
  %59 = icmp ne i8 %58, 0, !dbg !528
  br i1 %59, label %60, label %87, !dbg !532

; <label>:60:                                     ; preds = %55
  %61 = load %struct.mntent*, %struct.mntent** %5, align 8, !dbg !533
  %62 = getelementptr inbounds %struct.mntent, %struct.mntent* %61, i32 0, i32 0, !dbg !536
  %63 = load i8*, i8** %62, align 8, !dbg !536
  %64 = call i32 @Posix_Stat(i8* %63, %struct.stat* %7), !dbg !537
  %65 = icmp slt i32 %64, 0, !dbg !538
  br i1 %65, label %66, label %67, !dbg !539

; <label>:66:                                     ; preds = %60
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i8** %8, align 8, !dbg !540
  br label %86, !dbg !542

; <label>:67:                                     ; preds = %60
  %68 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 3, !dbg !543
  %69 = load i32, i32* %68, align 8, !dbg !543
  %70 = and i32 %69, 61440, !dbg !546
  %71 = icmp eq i32 %70, 24576, !dbg !547
  br i1 %71, label %73, label %72, !dbg !548

; <label>:72:                                     ; preds = %67
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0), i8** %8, align 8, !dbg !549
  br label %85, !dbg !551

; <label>:73:                                     ; preds = %67
  %74 = load %struct.mntent*, %struct.mntent** %5, align 8, !dbg !552
  %75 = call signext i8 @WiperIsDiskDevice(%struct.mntent* %74, %struct.stat* %7), !dbg !555
  %76 = icmp ne i8 %75, 0, !dbg !555
  br i1 %76, label %78, label %77, !dbg !556

; <label>:77:                                     ; preds = %73
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i32 0, i32 0), i8** %8, align 8, !dbg !557
  br label %84, !dbg !559

; <label>:78:                                     ; preds = %73
  %79 = load %struct.mntent*, %struct.mntent** %5, align 8, !dbg !560
  %80 = call i8* @hasmntopt(%struct.mntent* %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0)) #9, !dbg !563
  %81 = icmp eq i8* %80, null, !dbg !564
  br i1 %81, label %82, label %83, !dbg !565

; <label>:82:                                     ; preds = %78
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0), i8** %8, align 8, !dbg !566
  br label %83, !dbg !568

; <label>:83:                                     ; preds = %82, %78
  br label %84

; <label>:84:                                     ; preds = %83, %77
  br label %85

; <label>:85:                                     ; preds = %84, %72
  br label %86

; <label>:86:                                     ; preds = %85, %66
  br label %95, !dbg !569

; <label>:87:                                     ; preds = %55
  %88 = load %struct.mntent*, %struct.mntent** %5, align 8, !dbg !570
  %89 = getelementptr inbounds %struct.mntent, %struct.mntent* %88, i32 0, i32 1, !dbg !573
  %90 = load i8*, i8** %89, align 8, !dbg !573
  %91 = call i32 @Posix_Access(i8* %90, i32 2), !dbg !574
  %92 = icmp ne i32 %91, 0, !dbg !575
  br i1 %92, label %93, label %94, !dbg !574

; <label>:93:                                     ; preds = %87
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i32 0, i32 0), i8** %8, align 8, !dbg !576
  br label %94, !dbg !578

; <label>:94:                                     ; preds = %93, %87
  br label %95

; <label>:95:                                     ; preds = %94, %86
  %96 = load i8*, i8** %8, align 8, !dbg !579
  %97 = icmp ne i8* %96, null, !dbg !581
  br i1 %97, label %98, label %101, !dbg !582

; <label>:98:                                     ; preds = %95
  %99 = load %struct.WiperPartition*, %struct.WiperPartition** %4, align 8, !dbg !583
  %100 = getelementptr inbounds %struct.WiperPartition, %struct.WiperPartition* %99, i32 0, i32 1, !dbg !585
  store i32 0, i32* %100, align 8, !dbg !586
  br label %101, !dbg !587

; <label>:101:                                    ; preds = %98, %95
  br label %102, !dbg !588

; <label>:102:                                    ; preds = %101, %51, %46
  br label %103

; <label>:103:                                    ; preds = %102, %45
  %104 = load %struct.WiperPartition*, %struct.WiperPartition** %4, align 8, !dbg !589
  %105 = getelementptr inbounds %struct.WiperPartition, %struct.WiperPartition* %104, i32 0, i32 1, !dbg !591
  %106 = load i32, i32* %105, align 8, !dbg !591
  %107 = icmp eq i32 %106, 0, !dbg !592
  br i1 %107, label %108, label %113, !dbg !593

; <label>:108:                                    ; preds = %103
  %109 = load i8*, i8** %8, align 8, !dbg !594
  %110 = call i8* @UtilSafeStrdup0(i8* %109), !dbg !596
  %111 = load %struct.WiperPartition*, %struct.WiperPartition** %4, align 8, !dbg !597
  %112 = getelementptr inbounds %struct.WiperPartition, %struct.WiperPartition* %111, i32 0, i32 3, !dbg !598
  store i8* %110, i8** %112, align 8, !dbg !599
  br label %113, !dbg !600

; <label>:113:                                    ; preds = %108, %103
  ret void, !dbg !601
}

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind
declare i32 @endmntent(%struct._IO_FILE*) #4

; Function Attrs: nounwind uwtable
define i8* @WiperSinglePartition_GetSpace(%struct.WiperPartition*, i64*, i64*, i64*) #0 !dbg !602 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.WiperPartition*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.statfs, align 8
  %11 = alloca i64, align 8
  store %struct.WiperPartition* %0, %struct.WiperPartition** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.WiperPartition** %6, metadata !607, metadata !167), !dbg !608
  store i64* %1, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !609, metadata !167), !dbg !610
  store i64* %2, i64** %8, align 8
  call void @llvm.dbg.declare(metadata i64** %8, metadata !611, metadata !167), !dbg !612
  store i64* %3, i64** %9, align 8
  call void @llvm.dbg.declare(metadata i64** %9, metadata !613, metadata !167), !dbg !614
  call void @llvm.dbg.declare(metadata %struct.statfs* %10, metadata !615, metadata !167), !dbg !644
  call void @llvm.dbg.declare(metadata i64* %11, metadata !645, metadata !167), !dbg !646
  %12 = load %struct.WiperPartition*, %struct.WiperPartition** %6, align 8, !dbg !647
  %13 = getelementptr inbounds %struct.WiperPartition, %struct.WiperPartition* %12, i32 0, i32 0, !dbg !649
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i32 0, i32 0, !dbg !647
  %15 = call i32 @Posix_Statfs(i8* %14, %struct.statfs* %10), !dbg !650
  %16 = icmp slt i32 %15, 0, !dbg !651
  br i1 %16, label %17, label %18, !dbg !652

; <label>:17:                                     ; preds = %4
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0), i8** %5, align 8, !dbg !653
  br label %54, !dbg !653

; <label>:18:                                     ; preds = %4
  %19 = getelementptr inbounds %struct.statfs, %struct.statfs* %10, i32 0, i32 1, !dbg !655
  %20 = load i64, i64* %19, align 8, !dbg !655
  store i64 %20, i64* %11, align 8, !dbg !656
  %21 = load i64*, i64** %7, align 8, !dbg !657
  %22 = icmp ne i64* %21, null, !dbg !657
  br i1 %22, label %23, label %29, !dbg !659

; <label>:23:                                     ; preds = %18
  %24 = getelementptr inbounds %struct.statfs, %struct.statfs* %10, i32 0, i32 4, !dbg !660
  %25 = load i64, i64* %24, align 8, !dbg !660
  %26 = load i64, i64* %11, align 8, !dbg !662
  %27 = mul i64 %25, %26, !dbg !663
  %28 = load i64*, i64** %7, align 8, !dbg !664
  store i64 %27, i64* %28, align 8, !dbg !665
  br label %29, !dbg !666

; <label>:29:                                     ; preds = %23, %18
  %30 = load i64*, i64** %8, align 8, !dbg !667
  %31 = icmp ne i64* %30, null, !dbg !667
  br i1 %31, label %32, label %48, !dbg !669

; <label>:32:                                     ; preds = %29
  %33 = call i32 @geteuid() #9, !dbg !670
  %34 = icmp eq i32 %33, 0, !dbg !673
  br i1 %34, label %35, label %41, !dbg !674

; <label>:35:                                     ; preds = %32
  %36 = getelementptr inbounds %struct.statfs, %struct.statfs* %10, i32 0, i32 3, !dbg !675
  %37 = load i64, i64* %36, align 8, !dbg !675
  %38 = load i64, i64* %11, align 8, !dbg !677
  %39 = mul i64 %37, %38, !dbg !678
  %40 = load i64*, i64** %8, align 8, !dbg !679
  store i64 %39, i64* %40, align 8, !dbg !680
  br label %47, !dbg !681

; <label>:41:                                     ; preds = %32
  %42 = getelementptr inbounds %struct.statfs, %struct.statfs* %10, i32 0, i32 4, !dbg !682
  %43 = load i64, i64* %42, align 8, !dbg !682
  %44 = load i64, i64* %11, align 8, !dbg !684
  %45 = mul i64 %43, %44, !dbg !685
  %46 = load i64*, i64** %8, align 8, !dbg !686
  store i64 %45, i64* %46, align 8, !dbg !687
  br label %47

; <label>:47:                                     ; preds = %41, %35
  br label %48, !dbg !688

; <label>:48:                                     ; preds = %47, %29
  %49 = getelementptr inbounds %struct.statfs, %struct.statfs* %10, i32 0, i32 2, !dbg !689
  %50 = load i64, i64* %49, align 8, !dbg !689
  %51 = load i64, i64* %11, align 8, !dbg !690
  %52 = mul i64 %50, %51, !dbg !691
  %53 = load i64*, i64** %9, align 8, !dbg !692
  store i64 %52, i64* %53, align 8, !dbg !693
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), i8** %5, align 8, !dbg !694
  br label %54, !dbg !694

; <label>:54:                                     ; preds = %48, %17
  %55 = load i8*, i8** %5, align 8, !dbg !695
  ret i8* %55, !dbg !695
}

declare i32 @Posix_Statfs(i8*, %struct.statfs*) #2

; Function Attrs: nounwind
declare i32 @geteuid() #4

; Function Attrs: nounwind uwtable
define signext i8 @WiperPartition_Open(%struct.WiperPartition_List*, i8 signext) #0 !dbg !696 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.WiperPartition_List*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca %struct.mntent*, align 8
  %8 = alloca i8, align 1
  %9 = alloca %struct.WiperPartition*, align 8
  store %struct.WiperPartition_List* %0, %struct.WiperPartition_List** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.WiperPartition_List** %4, metadata !704, metadata !167), !dbg !705
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !706, metadata !167), !dbg !707
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !708, metadata !167), !dbg !709
  call void @llvm.dbg.declare(metadata %struct.mntent** %7, metadata !710, metadata !167), !dbg !711
  call void @llvm.dbg.declare(metadata i8* %8, metadata !712, metadata !167), !dbg !713
  store i8 1, i8* %8, align 1, !dbg !713
  %10 = load %struct.WiperPartition_List*, %struct.WiperPartition_List** %4, align 8, !dbg !714
  %11 = getelementptr inbounds %struct.WiperPartition_List, %struct.WiperPartition_List* %10, i32 0, i32 0, !dbg !715
  call void @DblLnkLst_Init(%struct.DblLnkLst_Links* %11), !dbg !716
  %12 = call %struct._IO_FILE* @Posix_Setmntent(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)), !dbg !717
  store %struct._IO_FILE* %12, %struct._IO_FILE** %6, align 8, !dbg !718
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !719
  %14 = icmp eq %struct._IO_FILE* %13, null, !dbg !721
  br i1 %14, label %15, label %16, !dbg !722

; <label>:15:                                     ; preds = %2
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0)), !dbg !723
  store i8 0, i8* %3, align 1, !dbg !725
  br label %56, !dbg !725

; <label>:16:                                     ; preds = %2
  call void @WiperCollectDiskMajors(), !dbg !726
  br label %17, !dbg !727

; <label>:17:                                     ; preds = %37, %16
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !728
  %19 = call %struct.mntent* @Posix_Getmntent(%struct._IO_FILE* %18), !dbg !730
  store %struct.mntent* %19, %struct.mntent** %7, align 8, !dbg !731
  %20 = icmp ne %struct.mntent* %19, null, !dbg !732
  br i1 %20, label %21, label %45, !dbg !733

; <label>:21:                                     ; preds = %17
  call void @llvm.dbg.declare(metadata %struct.WiperPartition** %9, metadata !734, metadata !167), !dbg !736
  %22 = call %struct.WiperPartition* @WiperSinglePartition_Allocate(), !dbg !737
  store %struct.WiperPartition* %22, %struct.WiperPartition** %9, align 8, !dbg !736
  %23 = load %struct.WiperPartition*, %struct.WiperPartition** %9, align 8, !dbg !738
  %24 = icmp eq %struct.WiperPartition* %23, null, !dbg !740
  br i1 %24, label %25, label %26, !dbg !741

; <label>:25:                                     ; preds = %21
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i32 0, i32 0)), !dbg !742
  store i8 0, i8* %8, align 1, !dbg !744
  br label %45, !dbg !745

; <label>:26:                                     ; preds = %21
  %27 = load %struct.WiperPartition*, %struct.WiperPartition** %9, align 8, !dbg !746
  %28 = getelementptr inbounds %struct.WiperPartition, %struct.WiperPartition* %27, i32 0, i32 0, !dbg !748
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %28, i32 0, i32 0, !dbg !746
  %30 = load %struct.mntent*, %struct.mntent** %7, align 8, !dbg !749
  %31 = getelementptr inbounds %struct.mntent, %struct.mntent* %30, i32 0, i32 1, !dbg !750
  %32 = load i8*, i8** %31, align 8, !dbg !750
  %33 = call i32 (i8*, i64, i8*, ...) @Str_Snprintf(i8* %29, i64 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* %32), !dbg !751
  %34 = icmp eq i32 %33, -1, !dbg !752
  br i1 %34, label %35, label %37, !dbg !753

; <label>:35:                                     ; preds = %26
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0)), !dbg !754
  %36 = load %struct.WiperPartition*, %struct.WiperPartition** %9, align 8, !dbg !756
  call void @WiperSinglePartition_Close(%struct.WiperPartition* %36), !dbg !757
  store i8 0, i8* %8, align 1, !dbg !758
  br label %45, !dbg !759

; <label>:37:                                     ; preds = %26
  %38 = load %struct.WiperPartition*, %struct.WiperPartition** %9, align 8, !dbg !760
  %39 = load %struct.mntent*, %struct.mntent** %7, align 8, !dbg !761
  %40 = load i8, i8* %5, align 1, !dbg !762
  call void @WiperPartitionFilter(%struct.WiperPartition* %38, %struct.mntent* %39, i8 signext %40), !dbg !763
  %41 = load %struct.WiperPartition_List*, %struct.WiperPartition_List** %4, align 8, !dbg !764
  %42 = getelementptr inbounds %struct.WiperPartition_List, %struct.WiperPartition_List* %41, i32 0, i32 0, !dbg !765
  %43 = load %struct.WiperPartition*, %struct.WiperPartition** %9, align 8, !dbg !766
  %44 = getelementptr inbounds %struct.WiperPartition, %struct.WiperPartition* %43, i32 0, i32 4, !dbg !767
  call void @DblLnkLst_LinkLast(%struct.DblLnkLst_Links* %42, %struct.DblLnkLst_Links* %44), !dbg !768
  br label %17, !dbg !769, !llvm.loop !771

; <label>:45:                                     ; preds = %35, %25, %17
  %46 = load i8, i8* %8, align 1, !dbg !772
  %47 = icmp ne i8 %46, 0, !dbg !772
  br i1 %47, label %50, label %48, !dbg !774

; <label>:48:                                     ; preds = %45
  %49 = load %struct.WiperPartition_List*, %struct.WiperPartition_List** %4, align 8, !dbg !775
  call void @WiperPartition_Close(%struct.WiperPartition_List* %49), !dbg !776
  br label %50, !dbg !776

; <label>:50:                                     ; preds = %48, %45
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !777
  %52 = call i32 @endmntent(%struct._IO_FILE* %51) #9, !dbg !778
  %53 = icmp eq i32 %52, 1, !dbg !779
  %54 = zext i1 %53 to i32, !dbg !779
  %55 = load i8, i8* %8, align 1, !dbg !780
  store i8 %55, i8* %3, align 1, !dbg !781
  br label %56, !dbg !781

; <label>:56:                                     ; preds = %50, %15
  %57 = load i8, i8* %3, align 1, !dbg !782
  ret i8 %57, !dbg !782
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @DblLnkLst_Init(%struct.DblLnkLst_Links*) #5 !dbg !783 {
  %2 = alloca %struct.DblLnkLst_Links*, align 8
  store %struct.DblLnkLst_Links* %0, %struct.DblLnkLst_Links** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DblLnkLst_Links** %2, metadata !787, metadata !167), !dbg !788
  %3 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %2, align 8, !dbg !789
  %4 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %2, align 8, !dbg !790
  %5 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %4, i32 0, i32 1, !dbg !791
  store %struct.DblLnkLst_Links* %3, %struct.DblLnkLst_Links** %5, align 8, !dbg !792
  %6 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %2, align 8, !dbg !793
  %7 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %6, i32 0, i32 0, !dbg !794
  store %struct.DblLnkLst_Links* %3, %struct.DblLnkLst_Links** %7, align 8, !dbg !795
  ret void, !dbg !796
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @DblLnkLst_LinkLast(%struct.DblLnkLst_Links*, %struct.DblLnkLst_Links*) #5 !dbg !797 {
  %3 = alloca %struct.DblLnkLst_Links*, align 8
  %4 = alloca %struct.DblLnkLst_Links*, align 8
  store %struct.DblLnkLst_Links* %0, %struct.DblLnkLst_Links** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.DblLnkLst_Links** %3, metadata !800, metadata !167), !dbg !801
  store %struct.DblLnkLst_Links* %1, %struct.DblLnkLst_Links** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.DblLnkLst_Links** %4, metadata !802, metadata !167), !dbg !803
  %5 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %3, align 8, !dbg !804
  %6 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %4, align 8, !dbg !805
  call void @DblLnkLst_Link(%struct.DblLnkLst_Links* %5, %struct.DblLnkLst_Links* %6), !dbg !806
  ret void, !dbg !807
}

declare void @WiperPartition_Close(%struct.WiperPartition_List*) #2

; Function Attrs: nounwind uwtable
define signext i8 @Wiper_IsWipeSupported(%struct.WiperPartition*) #0 !dbg !808 {
  %2 = alloca %struct.WiperPartition*, align 8
  store %struct.WiperPartition* %0, %struct.WiperPartition** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.WiperPartition** %2, metadata !811, metadata !167), !dbg !812
  ret i8 0, !dbg !813
}

; Function Attrs: nounwind uwtable
define %struct.Wiper_State* @Wiper_Start(%struct.WiperPartition*, i32) #0 !dbg !814 {
  %3 = alloca %struct.Wiper_State*, align 8
  %4 = alloca %struct.WiperPartition*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.WiperState*, align 8
  store %struct.WiperPartition* %0, %struct.WiperPartition** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.WiperPartition** %4, metadata !820, metadata !167), !dbg !821
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !822, metadata !167), !dbg !823
  call void @llvm.dbg.declare(metadata %struct.WiperState** %6, metadata !824, metadata !167), !dbg !825
  %7 = call noalias i8* @malloc(i64 65568) #9, !dbg !826
  %8 = bitcast i8* %7 to %struct.WiperState*, !dbg !827
  store %struct.WiperState* %8, %struct.WiperState** %6, align 8, !dbg !828
  %9 = load %struct.WiperState*, %struct.WiperState** %6, align 8, !dbg !829
  %10 = icmp eq %struct.WiperState* %9, null, !dbg !831
  br i1 %10, label %11, label %12, !dbg !832

; <label>:11:                                     ; preds = %2
  store %struct.Wiper_State* null, %struct.Wiper_State** %3, align 8, !dbg !833
  br label %31, !dbg !833

; <label>:12:                                     ; preds = %2
  %13 = load %struct.WiperState*, %struct.WiperState** %6, align 8, !dbg !835
  %14 = getelementptr inbounds %struct.WiperState, %struct.WiperState* %13, i32 0, i32 0, !dbg !836
  store i32 0, i32* %14, align 8, !dbg !837
  %15 = load %struct.WiperPartition*, %struct.WiperPartition** %4, align 8, !dbg !838
  %16 = load %struct.WiperState*, %struct.WiperState** %6, align 8, !dbg !839
  %17 = getelementptr inbounds %struct.WiperState, %struct.WiperState* %16, i32 0, i32 1, !dbg !840
  store %struct.WiperPartition* %15, %struct.WiperPartition** %17, align 8, !dbg !841
  %18 = load %struct.WiperState*, %struct.WiperState** %6, align 8, !dbg !842
  %19 = getelementptr inbounds %struct.WiperState, %struct.WiperState* %18, i32 0, i32 2, !dbg !843
  store %struct.File* null, %struct.File** %19, align 8, !dbg !844
  %20 = load %struct.WiperState*, %struct.WiperState** %6, align 8, !dbg !845
  %21 = getelementptr inbounds %struct.WiperState, %struct.WiperState* %20, i32 0, i32 3, !dbg !846
  store i32 0, i32* %21, align 8, !dbg !847
  %22 = load %struct.WiperState*, %struct.WiperState** %6, align 8, !dbg !848
  %23 = getelementptr inbounds %struct.WiperState, %struct.WiperState* %22, i32 0, i32 4, !dbg !849
  %24 = getelementptr inbounds [65536 x i8], [65536 x i8]* %23, i32 0, i32 0, !dbg !850
  call void @llvm.memset.p0i8.i64(i8* %24, i8 0, i64 65536, i32 4, i1 false), !dbg !850
  %25 = call i32 @geteuid() #9, !dbg !851
  %26 = load %struct.WiperState*, %struct.WiperState** %6, align 8, !dbg !852
  %27 = getelementptr inbounds %struct.WiperState, %struct.WiperState* %26, i32 0, i32 5, !dbg !853
  store i32 %25, i32* %27, align 4, !dbg !854
  %28 = load %struct.WiperState*, %struct.WiperState** %6, align 8, !dbg !855
  %29 = bitcast %struct.WiperState* %28 to i8*, !dbg !856
  %30 = bitcast i8* %29 to %struct.Wiper_State*, !dbg !856
  store %struct.Wiper_State* %30, %struct.Wiper_State** %3, align 8, !dbg !857
  br label %31, !dbg !857

; <label>:31:                                     ; preds = %12, %11
  %32 = load %struct.Wiper_State*, %struct.Wiper_State** %3, align 8, !dbg !858
  ret %struct.Wiper_State* %32, !dbg !858
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #6

; Function Attrs: nounwind uwtable
define i8* @Wiper_Next(%struct.Wiper_State**, i32*) #0 !dbg !859 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.Wiper_State**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.WiperState**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.File*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.Wiper_State** %0, %struct.Wiper_State*** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.Wiper_State*** %4, metadata !864, metadata !167), !dbg !865
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !866, metadata !167), !dbg !867
  call void @llvm.dbg.declare(metadata %struct.WiperState*** %6, metadata !868, metadata !167), !dbg !869
  call void @llvm.dbg.declare(metadata i64* %7, metadata !870, metadata !167), !dbg !871
  call void @llvm.dbg.declare(metadata i64* %8, metadata !872, metadata !167), !dbg !873
  call void @llvm.dbg.declare(metadata i8** %9, metadata !874, metadata !167), !dbg !875
  %14 = load %struct.Wiper_State**, %struct.Wiper_State*** %4, align 8, !dbg !876
  %15 = bitcast %struct.Wiper_State** %14 to %struct.WiperState**, !dbg !877
  store %struct.WiperState** %15, %struct.WiperState*** %6, align 8, !dbg !878
  %16 = load %struct.WiperState**, %struct.WiperState*** %6, align 8, !dbg !879
  %17 = load %struct.WiperState*, %struct.WiperState** %16, align 8, !dbg !880
  %18 = call i8* @WiperGetSpace(%struct.WiperState* %17, i64* %7, i64* %8), !dbg !881
  store i8* %18, i8** %9, align 8, !dbg !882
  %19 = load i8*, i8** %9, align 8, !dbg !883
  %20 = load i8, i8* %19, align 1, !dbg !885
  %21 = zext i8 %20 to i32, !dbg !885
  %22 = icmp ne i32 %21, 0, !dbg !886
  br i1 %22, label %23, label %28, !dbg !887

; <label>:23:                                     ; preds = %2
  %24 = load %struct.WiperState**, %struct.WiperState*** %6, align 8, !dbg !888
  %25 = load %struct.WiperState*, %struct.WiperState** %24, align 8, !dbg !890
  call void @WiperClean(%struct.WiperState* %25), !dbg !891
  %26 = load %struct.WiperState**, %struct.WiperState*** %6, align 8, !dbg !892
  store %struct.WiperState* null, %struct.WiperState** %26, align 8, !dbg !893
  %27 = load i8*, i8** %9, align 8, !dbg !894
  store i8* %27, i8** %3, align 8, !dbg !895
  br label %184, !dbg !895

; <label>:28:                                     ; preds = %2
  %29 = load i64, i64* %7, align 8, !dbg !896
  %30 = icmp ule i64 %29, 5242880, !dbg !898
  br i1 %30, label %31, label %36, !dbg !899

; <label>:31:                                     ; preds = %28
  %32 = load %struct.WiperState**, %struct.WiperState*** %6, align 8, !dbg !900
  %33 = load %struct.WiperState*, %struct.WiperState** %32, align 8, !dbg !902
  call void @WiperClean(%struct.WiperState* %33), !dbg !903
  %34 = load %struct.WiperState**, %struct.WiperState*** %6, align 8, !dbg !904
  store %struct.WiperState* null, %struct.WiperState** %34, align 8, !dbg !905
  %35 = load i32*, i32** %5, align 8, !dbg !906
  store i32 100, i32* %35, align 4, !dbg !907
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), i8** %3, align 8, !dbg !908
  br label %184, !dbg !908

; <label>:36:                                     ; preds = %28
  %37 = load %struct.WiperState**, %struct.WiperState*** %6, align 8, !dbg !909
  %38 = load %struct.WiperState*, %struct.WiperState** %37, align 8, !dbg !910
  %39 = getelementptr inbounds %struct.WiperState, %struct.WiperState* %38, i32 0, i32 0, !dbg !911
  %40 = load i32, i32* %39, align 8, !dbg !911
  switch i32 %40, label %171 [
    i32 0, label %41
    i32 1, label %106
  ], !dbg !912

; <label>:41:                                     ; preds = %36
  call void @llvm.dbg.declare(metadata %struct.File** %10, metadata !913, metadata !167), !dbg !916
  %42 = call noalias i8* @malloc(i64 296) #9, !dbg !917
  %43 = bitcast i8* %42 to %struct.File*, !dbg !918
  store %struct.File* %43, %struct.File** %10, align 8, !dbg !919
  %44 = load %struct.File*, %struct.File** %10, align 8, !dbg !920
  %45 = icmp eq %struct.File* %44, null, !dbg !922
  br i1 %45, label %46, label %50, !dbg !923

; <label>:46:                                     ; preds = %41
  %47 = load %struct.WiperState**, %struct.WiperState*** %6, align 8, !dbg !924
  %48 = load %struct.WiperState*, %struct.WiperState** %47, align 8, !dbg !926
  call void @WiperClean(%struct.WiperState* %48), !dbg !927
  %49 = load %struct.WiperState**, %struct.WiperState*** %6, align 8, !dbg !928
  store %struct.WiperState* null, %struct.WiperState** %49, align 8, !dbg !929
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i8** %3, align 8, !dbg !930
  br label %184, !dbg !930

; <label>:50:                                     ; preds = %41
  br label %51, !dbg !931

; <label>:51:                                     ; preds = %89, %50
  call void @llvm.dbg.declare(metadata i32* %11, metadata !932, metadata !167), !dbg !937
  %52 = load %struct.File*, %struct.File** %10, align 8, !dbg !938
  %53 = getelementptr inbounds %struct.File, %struct.File* %52, i32 0, i32 1, !dbg !939
  call void @FileIO_Invalidate(%struct.FileIODescriptor* %53), !dbg !940
  %54 = load %struct.File*, %struct.File** %10, align 8, !dbg !941
  %55 = getelementptr inbounds %struct.File, %struct.File* %54, i32 0, i32 0, !dbg !943
  %56 = getelementptr inbounds [256 x i8], [256 x i8]* %55, i32 0, i32 0, !dbg !941
  %57 = load %struct.WiperState**, %struct.WiperState*** %6, align 8, !dbg !944
  %58 = load %struct.WiperState*, %struct.WiperState** %57, align 8, !dbg !945
  %59 = getelementptr inbounds %struct.WiperState, %struct.WiperState* %58, i32 0, i32 1, !dbg !946
  %60 = load %struct.WiperPartition*, %struct.WiperPartition** %59, align 8, !dbg !946
  %61 = getelementptr inbounds %struct.WiperPartition, %struct.WiperPartition* %60, i32 0, i32 0, !dbg !947
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* %61, i32 0, i32 0, !dbg !948
  %63 = load %struct.WiperState**, %struct.WiperState*** %6, align 8, !dbg !949
  %64 = load %struct.WiperState*, %struct.WiperState** %63, align 8, !dbg !950
  %65 = getelementptr inbounds %struct.WiperState, %struct.WiperState* %64, i32 0, i32 3, !dbg !951
  %66 = load i32, i32* %65, align 8, !dbg !952
  %67 = add i32 %66, 1, !dbg !952
  store i32 %67, i32* %65, align 8, !dbg !952
  %68 = call i32 (i8*, i64, i8*, ...) @Str_Snprintf(i8* %56, i64 256, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* %62, i32 %66), !dbg !953
  %69 = icmp eq i32 %68, -1, !dbg !954
  br i1 %69, label %70, label %71, !dbg !955

; <label>:70:                                     ; preds = %51
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i32 0, i32 0)), !dbg !956
  br label %71, !dbg !958

; <label>:71:                                     ; preds = %70, %51
  %72 = load %struct.File*, %struct.File** %10, align 8, !dbg !959
  %73 = getelementptr inbounds %struct.File, %struct.File* %72, i32 0, i32 1, !dbg !960
  %74 = load %struct.File*, %struct.File** %10, align 8, !dbg !961
  %75 = getelementptr inbounds %struct.File, %struct.File* %74, i32 0, i32 0, !dbg !962
  %76 = getelementptr inbounds [256 x i8], [256 x i8]* %75, i32 0, i32 0, !dbg !961
  %77 = call i32 @FileIO_Open(%struct.FileIODescriptor* %73, i8* %76, i32 10, i32 3), !dbg !963
  store i32 %77, i32* %11, align 4, !dbg !964
  %78 = load i32, i32* %11, align 4, !dbg !965
  %79 = call signext i8 @FileIO_IsSuccess(i32 %78), !dbg !967
  %80 = icmp ne i8 %79, 0, !dbg !967
  br i1 %80, label %81, label %82, !dbg !968

; <label>:81:                                     ; preds = %71
  br label %90, !dbg !969

; <label>:82:                                     ; preds = %71
  %83 = load i32, i32* %11, align 4, !dbg !971
  %84 = icmp ne i32 %83, 3, !dbg !973
  br i1 %84, label %85, label %89, !dbg !974

; <label>:85:                                     ; preds = %82
  %86 = load %struct.WiperState**, %struct.WiperState*** %6, align 8, !dbg !975
  %87 = load %struct.WiperState*, %struct.WiperState** %86, align 8, !dbg !977
  call void @WiperClean(%struct.WiperState* %87), !dbg !978
  %88 = load %struct.WiperState**, %struct.WiperState*** %6, align 8, !dbg !979
  store %struct.WiperState* null, %struct.WiperState** %88, align 8, !dbg !980
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i8** %3, align 8, !dbg !981
  br label %184, !dbg !981

; <label>:89:                                     ; preds = %82
  br label %51, !dbg !982, !llvm.loop !984

; <label>:90:                                     ; preds = %81
  %91 = load %struct.File*, %struct.File** %10, align 8, !dbg !985
  %92 = getelementptr inbounds %struct.File, %struct.File* %91, i32 0, i32 2, !dbg !986
  store i64 0, i64* %92, align 8, !dbg !987
  %93 = load %struct.WiperState**, %struct.WiperState*** %6, align 8, !dbg !988
  %94 = load %struct.WiperState*, %struct.WiperState** %93, align 8, !dbg !989
  %95 = getelementptr inbounds %struct.WiperState, %struct.WiperState* %94, i32 0, i32 2, !dbg !990
  %96 = load %struct.File*, %struct.File** %95, align 8, !dbg !990
  %97 = load %struct.File*, %struct.File** %10, align 8, !dbg !991
  %98 = getelementptr inbounds %struct.File, %struct.File* %97, i32 0, i32 3, !dbg !992
  store %struct.File* %96, %struct.File** %98, align 8, !dbg !993
  %99 = load %struct.File*, %struct.File** %10, align 8, !dbg !994
  %100 = load %struct.WiperState**, %struct.WiperState*** %6, align 8, !dbg !995
  %101 = load %struct.WiperState*, %struct.WiperState** %100, align 8, !dbg !996
  %102 = getelementptr inbounds %struct.WiperState, %struct.WiperState* %101, i32 0, i32 2, !dbg !997
  store %struct.File* %99, %struct.File** %102, align 8, !dbg !998
  %103 = load %struct.WiperState**, %struct.WiperState*** %6, align 8, !dbg !999
  %104 = load %struct.WiperState*, %struct.WiperState** %103, align 8, !dbg !1000
  %105 = getelementptr inbounds %struct.WiperState, %struct.WiperState* %104, i32 0, i32 0, !dbg !1001
  store i32 1, i32* %105, align 8, !dbg !1002
  br label %176, !dbg !1003

; <label>:106:                                    ; preds = %36
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1004, metadata !167), !dbg !1006
  store i32 0, i32* %12, align 4, !dbg !1007
  br label %107, !dbg !1009

; <label>:107:                                    ; preds = %167, %106
  %108 = load i32, i32* %12, align 4, !dbg !1010
  %109 = icmp ult i32 %108, 32, !dbg !1013
  br i1 %109, label %110, label %170, !dbg !1014

; <label>:110:                                    ; preds = %107
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1015, metadata !167), !dbg !1017
  %111 = load %struct.WiperState**, %struct.WiperState*** %6, align 8, !dbg !1018
  %112 = load %struct.WiperState*, %struct.WiperState** %111, align 8, !dbg !1020
  %113 = getelementptr inbounds %struct.WiperState, %struct.WiperState* %112, i32 0, i32 2, !dbg !1021
  %114 = load %struct.File*, %struct.File** %113, align 8, !dbg !1021
  %115 = getelementptr inbounds %struct.File, %struct.File* %114, i32 0, i32 2, !dbg !1022
  %116 = load i64, i64* %115, align 8, !dbg !1022
  %117 = add i64 %116, 65536, !dbg !1023
  %118 = icmp uge i64 %117, 2147483648, !dbg !1024
  br i1 %118, label %119, label %123, !dbg !1025

; <label>:119:                                    ; preds = %110
  %120 = load %struct.WiperState**, %struct.WiperState*** %6, align 8, !dbg !1026
  %121 = load %struct.WiperState*, %struct.WiperState** %120, align 8, !dbg !1028
  %122 = getelementptr inbounds %struct.WiperState, %struct.WiperState* %121, i32 0, i32 0, !dbg !1029
  store i32 0, i32* %122, align 8, !dbg !1030
  br label %170, !dbg !1031

; <label>:123:                                    ; preds = %110
  %124 = load %struct.WiperState**, %struct.WiperState*** %6, align 8, !dbg !1032
  %125 = load %struct.WiperState*, %struct.WiperState** %124, align 8, !dbg !1033
  %126 = getelementptr inbounds %struct.WiperState, %struct.WiperState* %125, i32 0, i32 2, !dbg !1034
  %127 = load %struct.File*, %struct.File** %126, align 8, !dbg !1034
  %128 = getelementptr inbounds %struct.File, %struct.File* %127, i32 0, i32 1, !dbg !1035
  %129 = load %struct.WiperState**, %struct.WiperState*** %6, align 8, !dbg !1036
  %130 = load %struct.WiperState*, %struct.WiperState** %129, align 8, !dbg !1037
  %131 = getelementptr inbounds %struct.WiperState, %struct.WiperState* %130, i32 0, i32 4, !dbg !1038
  %132 = getelementptr inbounds [65536 x i8], [65536 x i8]* %131, i32 0, i32 0, !dbg !1039
  %133 = call i32 @FileIO_Write(%struct.FileIODescriptor* %128, i8* %132, i64 65536, i64* null), !dbg !1040
  store i32 %133, i32* %13, align 4, !dbg !1041
  %134 = load i32, i32* %13, align 4, !dbg !1042
  %135 = call signext i8 @FileIO_IsSuccess(i32 %134), !dbg !1044
  %136 = icmp ne i8 %135, 0, !dbg !1044
  br i1 %136, label %159, label %137, !dbg !1045

; <label>:137:                                    ; preds = %123
  %138 = load i32, i32* %13, align 4, !dbg !1046
  %139 = icmp eq i32 %138, 9, !dbg !1049
  br i1 %139, label %140, label %144, !dbg !1050

; <label>:140:                                    ; preds = %137
  %141 = load %struct.WiperState**, %struct.WiperState*** %6, align 8, !dbg !1051
  %142 = load %struct.WiperState*, %struct.WiperState** %141, align 8, !dbg !1053
  %143 = getelementptr inbounds %struct.WiperState, %struct.WiperState* %142, i32 0, i32 0, !dbg !1054
  store i32 0, i32* %143, align 8, !dbg !1055
  br label %170, !dbg !1056

; <label>:144:                                    ; preds = %137
  %145 = load i32, i32* %13, align 4, !dbg !1057
  %146 = icmp eq i32 %145, 10, !dbg !1059
  br i1 %146, label %147, label %152, !dbg !1060

; <label>:147:                                    ; preds = %144
  %148 = load %struct.WiperState**, %struct.WiperState*** %6, align 8, !dbg !1061
  %149 = load %struct.WiperState*, %struct.WiperState** %148, align 8, !dbg !1063
  call void @WiperClean(%struct.WiperState* %149), !dbg !1064
  %150 = load %struct.WiperState**, %struct.WiperState*** %6, align 8, !dbg !1065
  store %struct.WiperState* null, %struct.WiperState** %150, align 8, !dbg !1066
  %151 = load i32*, i32** %5, align 8, !dbg !1067
  store i32 100, i32* %151, align 4, !dbg !1068
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), i8** %3, align 8, !dbg !1069
  br label %184, !dbg !1069

; <label>:152:                                    ; preds = %144
  %153 = load %struct.WiperState**, %struct.WiperState*** %6, align 8, !dbg !1070
  %154 = load %struct.WiperState*, %struct.WiperState** %153, align 8, !dbg !1071
  call void @WiperClean(%struct.WiperState* %154), !dbg !1072
  %155 = load %struct.WiperState**, %struct.WiperState*** %6, align 8, !dbg !1073
  store %struct.WiperState* null, %struct.WiperState** %155, align 8, !dbg !1074
  %156 = load i32, i32* %13, align 4, !dbg !1075
  %157 = icmp eq i32 %156, 11, !dbg !1076
  %158 = select i1 %157, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i32 0, i32 0), !dbg !1075
  store i8* %158, i8** %3, align 8, !dbg !1077
  br label %184, !dbg !1077

; <label>:159:                                    ; preds = %123
  %160 = load %struct.WiperState**, %struct.WiperState*** %6, align 8, !dbg !1078
  %161 = load %struct.WiperState*, %struct.WiperState** %160, align 8, !dbg !1079
  %162 = getelementptr inbounds %struct.WiperState, %struct.WiperState* %161, i32 0, i32 2, !dbg !1080
  %163 = load %struct.File*, %struct.File** %162, align 8, !dbg !1080
  %164 = getelementptr inbounds %struct.File, %struct.File* %163, i32 0, i32 2, !dbg !1081
  %165 = load i64, i64* %164, align 8, !dbg !1082
  %166 = add i64 %165, 65536, !dbg !1082
  store i64 %166, i64* %164, align 8, !dbg !1082
  br label %167, !dbg !1083

; <label>:167:                                    ; preds = %159
  %168 = load i32, i32* %12, align 4, !dbg !1084
  %169 = add i32 %168, 1, !dbg !1084
  store i32 %169, i32* %12, align 4, !dbg !1084
  br label %107, !dbg !1085, !llvm.loop !1087

; <label>:170:                                    ; preds = %140, %119, %107
  br label %176, !dbg !1089

; <label>:171:                                    ; preds = %36
  %172 = load %struct.WiperState**, %struct.WiperState*** %6, align 8, !dbg !1090
  %173 = load %struct.WiperState*, %struct.WiperState** %172, align 8, !dbg !1091
  %174 = getelementptr inbounds %struct.WiperState, %struct.WiperState* %173, i32 0, i32 0, !dbg !1092
  %175 = load i32, i32* %174, align 8, !dbg !1092
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i32 %175), !dbg !1093
  br label %176, !dbg !1094

; <label>:176:                                    ; preds = %171, %170, %90
  %177 = load i64, i64* %7, align 8, !dbg !1095
  %178 = mul i64 99, %177, !dbg !1096
  %179 = load i64, i64* %8, align 8, !dbg !1097
  %180 = udiv i64 %178, %179, !dbg !1098
  %181 = sub i64 99, %180, !dbg !1099
  %182 = trunc i64 %181 to i32, !dbg !1100
  %183 = load i32*, i32** %5, align 8, !dbg !1101
  store i32 %182, i32* %183, align 4, !dbg !1102
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), i8** %3, align 8, !dbg !1103
  br label %184, !dbg !1103

; <label>:184:                                    ; preds = %176, %152, %147, %85, %46, %31, %23
  %185 = load i8*, i8** %3, align 8, !dbg !1104
  ret i8* %185, !dbg !1104
}

; Function Attrs: nounwind uwtable
define internal i8* @WiperGetSpace(%struct.WiperState*, i64*, i64*) #0 !dbg !1105 {
  %4 = alloca %struct.WiperState*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  store %struct.WiperState* %0, %struct.WiperState** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.WiperState** %4, metadata !1108, metadata !167), !dbg !1109
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !1110, metadata !167), !dbg !1111
  store i64* %2, i64** %6, align 8
  call void @llvm.dbg.declare(metadata i64** %6, metadata !1112, metadata !167), !dbg !1113
  %7 = load %struct.WiperState*, %struct.WiperState** %4, align 8, !dbg !1114
  %8 = getelementptr inbounds %struct.WiperState, %struct.WiperState* %7, i32 0, i32 1, !dbg !1115
  %9 = load %struct.WiperPartition*, %struct.WiperPartition** %8, align 8, !dbg !1115
  %10 = load i64*, i64** %5, align 8, !dbg !1116
  %11 = load i64*, i64** %6, align 8, !dbg !1117
  %12 = call i8* @WiperSinglePartition_GetSpace(%struct.WiperPartition* %9, i64* null, i64* %10, i64* %11), !dbg !1118
  ret i8* %12, !dbg !1119
}

; Function Attrs: nounwind uwtable
define internal void @WiperClean(%struct.WiperState*) #0 !dbg !1120 {
  %2 = alloca %struct.WiperState*, align 8
  %3 = alloca %struct.File*, align 8
  store %struct.WiperState* %0, %struct.WiperState** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.WiperState** %2, metadata !1123, metadata !167), !dbg !1124
  br label %4, !dbg !1125

; <label>:4:                                      ; preds = %9, %1
  %5 = load %struct.WiperState*, %struct.WiperState** %2, align 8, !dbg !1126
  %6 = getelementptr inbounds %struct.WiperState, %struct.WiperState* %5, i32 0, i32 2, !dbg !1128
  %7 = load %struct.File*, %struct.File** %6, align 8, !dbg !1128
  %8 = icmp ne %struct.File* %7, null, !dbg !1129
  br i1 %8, label %9, label %27, !dbg !1130

; <label>:9:                                      ; preds = %4
  call void @llvm.dbg.declare(metadata %struct.File** %3, metadata !1131, metadata !167), !dbg !1133
  %10 = load %struct.WiperState*, %struct.WiperState** %2, align 8, !dbg !1134
  %11 = getelementptr inbounds %struct.WiperState, %struct.WiperState* %10, i32 0, i32 2, !dbg !1135
  %12 = load %struct.File*, %struct.File** %11, align 8, !dbg !1135
  %13 = getelementptr inbounds %struct.File, %struct.File* %12, i32 0, i32 1, !dbg !1136
  %14 = call i32 @FileIO_Close(%struct.FileIODescriptor* %13), !dbg !1137
  %15 = load %struct.WiperState*, %struct.WiperState** %2, align 8, !dbg !1138
  %16 = getelementptr inbounds %struct.WiperState, %struct.WiperState* %15, i32 0, i32 2, !dbg !1139
  %17 = load %struct.File*, %struct.File** %16, align 8, !dbg !1139
  %18 = getelementptr inbounds %struct.File, %struct.File* %17, i32 0, i32 3, !dbg !1140
  %19 = load %struct.File*, %struct.File** %18, align 8, !dbg !1140
  store %struct.File* %19, %struct.File** %3, align 8, !dbg !1141
  %20 = load %struct.WiperState*, %struct.WiperState** %2, align 8, !dbg !1142
  %21 = getelementptr inbounds %struct.WiperState, %struct.WiperState* %20, i32 0, i32 2, !dbg !1143
  %22 = load %struct.File*, %struct.File** %21, align 8, !dbg !1143
  %23 = bitcast %struct.File* %22 to i8*, !dbg !1142
  call void @free(i8* %23) #9, !dbg !1144
  %24 = load %struct.File*, %struct.File** %3, align 8, !dbg !1145
  %25 = load %struct.WiperState*, %struct.WiperState** %2, align 8, !dbg !1146
  %26 = getelementptr inbounds %struct.WiperState, %struct.WiperState* %25, i32 0, i32 2, !dbg !1147
  store %struct.File* %24, %struct.File** %26, align 8, !dbg !1148
  br label %4, !dbg !1149, !llvm.loop !1151

; <label>:27:                                     ; preds = %4
  %28 = load %struct.WiperState*, %struct.WiperState** %2, align 8, !dbg !1152
  %29 = bitcast %struct.WiperState* %28 to i8*, !dbg !1152
  call void @free(i8* %29) #9, !dbg !1153
  ret void, !dbg !1154
}

declare void @FileIO_Invalidate(%struct.FileIODescriptor*) #2

declare i32 @FileIO_Open(%struct.FileIODescriptor*, i8*, i32, i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @FileIO_IsSuccess(i32) #5 !dbg !1155 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1158, metadata !167), !dbg !1159
  %3 = load i32, i32* %2, align 4, !dbg !1160
  %4 = icmp eq i32 %3, 0, !dbg !1161
  %5 = zext i1 %4 to i32, !dbg !1161
  %6 = trunc i32 %5 to i8, !dbg !1160
  ret i8 %6, !dbg !1162
}

declare i32 @FileIO_Write(%struct.FileIODescriptor*, i8*, i64, i64*) #2

; Function Attrs: nounwind uwtable
define i8* @Wiper_Cancel(%struct.Wiper_State**) #0 !dbg !1163 {
  %2 = alloca %struct.Wiper_State**, align 8
  store %struct.Wiper_State** %0, %struct.Wiper_State*** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Wiper_State*** %2, metadata !1166, metadata !167), !dbg !1167
  %3 = load %struct.Wiper_State**, %struct.Wiper_State*** %2, align 8, !dbg !1168
  %4 = icmp ne %struct.Wiper_State** %3, null, !dbg !1168
  br i1 %4, label %5, label %14, !dbg !1170

; <label>:5:                                      ; preds = %1
  %6 = load %struct.Wiper_State**, %struct.Wiper_State*** %2, align 8, !dbg !1171
  %7 = load %struct.Wiper_State*, %struct.Wiper_State** %6, align 8, !dbg !1173
  %8 = icmp ne %struct.Wiper_State* %7, null, !dbg !1173
  br i1 %8, label %9, label %14, !dbg !1174

; <label>:9:                                      ; preds = %5
  %10 = load %struct.Wiper_State**, %struct.Wiper_State*** %2, align 8, !dbg !1175
  %11 = load %struct.Wiper_State*, %struct.Wiper_State** %10, align 8, !dbg !1177
  %12 = bitcast %struct.Wiper_State* %11 to %struct.WiperState*, !dbg !1178
  call void @WiperClean(%struct.WiperState* %12), !dbg !1179
  %13 = load %struct.Wiper_State**, %struct.Wiper_State*** %2, align 8, !dbg !1180
  store %struct.Wiper_State* null, %struct.Wiper_State** %13, align 8, !dbg !1181
  br label %14, !dbg !1182

; <label>:14:                                     ; preds = %9, %5, %1
  ret i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), !dbg !1183
}

; Function Attrs: nounwind uwtable
define signext i8 @Wiper_Init(%struct.WiperInitData*) #0 !dbg !1184 {
  %2 = alloca %struct.WiperInitData*, align 8
  store %struct.WiperInitData* %0, %struct.WiperInitData** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.WiperInitData** %2, metadata !1190, metadata !167), !dbg !1191
  store i8 1, i8* @initDone, align 1, !dbg !1192
  ret i8 1, !dbg !1193
}

declare %struct._IO_FILE* @Posix_Fopen(i8*, i8*) #2

declare i32 @StdIO_ReadNextLine(%struct._IO_FILE*, i8**, i64, i64*) #2

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #4

declare i8* @Str_Strcat(i8*, i8*, i64) #2

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #3

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare i32 @Posix_Stat(i8*, %struct.stat*) #2

; Function Attrs: nounwind uwtable
define internal signext i8 @WiperIsDiskDevice(%struct.mntent*, %struct.stat*) #0 !dbg !1194 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.mntent*, align 8
  %5 = alloca %struct.stat*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mntent* %0, %struct.mntent** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.mntent** %4, metadata !1198, metadata !167), !dbg !1199
  store %struct.stat* %1, %struct.stat** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.stat** %5, metadata !1200, metadata !167), !dbg !1201
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1202, metadata !167), !dbg !1203
  %8 = load %struct.stat*, %struct.stat** %5, align 8, !dbg !1204
  %9 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 7, !dbg !1205
  %10 = load i64, i64* %9, align 8, !dbg !1205
  %11 = call i32 @gnu_dev_major(i64 %10) #1, !dbg !1204
  store i32 %11, i32* %6, align 4, !dbg !1203
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1206, metadata !167), !dbg !1207
  store i32 0, i32* %7, align 4, !dbg !1208
  br label %12, !dbg !1210

; <label>:12:                                     ; preds = %25, %2
  %13 = load i32, i32* %7, align 4, !dbg !1211
  %14 = load i32, i32* @numDiskMajors, align 4, !dbg !1214
  %15 = icmp slt i32 %13, %14, !dbg !1215
  br i1 %15, label %16, label %28, !dbg !1216

; <label>:16:                                     ; preds = %12
  %17 = load i32, i32* %6, align 4, !dbg !1217
  %18 = load i32, i32* %7, align 4, !dbg !1220
  %19 = sext i32 %18 to i64, !dbg !1221
  %20 = getelementptr inbounds [256 x i32], [256 x i32]* @knownDiskMajor, i64 0, i64 %19, !dbg !1221
  %21 = load i32, i32* %20, align 4, !dbg !1221
  %22 = icmp eq i32 %17, %21, !dbg !1222
  br i1 %22, label %23, label %24, !dbg !1223

; <label>:23:                                     ; preds = %16
  store i8 1, i8* %3, align 1, !dbg !1224
  br label %29, !dbg !1224

; <label>:24:                                     ; preds = %16
  br label %25, !dbg !1226

; <label>:25:                                     ; preds = %24
  %26 = load i32, i32* %7, align 4, !dbg !1227
  %27 = add nsw i32 %26, 1, !dbg !1227
  store i32 %27, i32* %7, align 4, !dbg !1227
  br label %12, !dbg !1229, !llvm.loop !1230

; <label>:28:                                     ; preds = %12
  store i8 0, i8* %3, align 1, !dbg !1232
  br label %29, !dbg !1232

; <label>:29:                                     ; preds = %28, %23
  %30 = load i8, i8* %3, align 1, !dbg !1233
  ret i8 %30, !dbg !1233
}

; Function Attrs: nounwind
declare i8* @hasmntopt(%struct.mntent*, i8*) #4

declare i32 @Posix_Access(i8*, i32) #2

; Function Attrs: nounwind readnone
declare i32 @gnu_dev_major(i64) #7

; Function Attrs: inlinehint nounwind uwtable
define internal void @DblLnkLst_Link(%struct.DblLnkLst_Links*, %struct.DblLnkLst_Links*) #5 !dbg !1234 {
  %3 = alloca %struct.DblLnkLst_Links*, align 8
  %4 = alloca %struct.DblLnkLst_Links*, align 8
  %5 = alloca %struct.DblLnkLst_Links*, align 8
  store %struct.DblLnkLst_Links* %0, %struct.DblLnkLst_Links** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.DblLnkLst_Links** %3, metadata !1235, metadata !167), !dbg !1236
  store %struct.DblLnkLst_Links* %1, %struct.DblLnkLst_Links** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.DblLnkLst_Links** %4, metadata !1237, metadata !167), !dbg !1238
  call void @llvm.dbg.declare(metadata %struct.DblLnkLst_Links** %5, metadata !1239, metadata !167), !dbg !1240
  %6 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %4, align 8, !dbg !1241
  %7 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %3, align 8, !dbg !1242
  %8 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %7, i32 0, i32 0, !dbg !1243
  %9 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %8, align 8, !dbg !1243
  store %struct.DblLnkLst_Links* %9, %struct.DblLnkLst_Links** %5, align 8, !dbg !1244
  %10 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %9, i32 0, i32 1, !dbg !1245
  store %struct.DblLnkLst_Links* %6, %struct.DblLnkLst_Links** %10, align 8, !dbg !1246
  %11 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %3, align 8, !dbg !1247
  %12 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %4, align 8, !dbg !1248
  %13 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %12, i32 0, i32 0, !dbg !1249
  %14 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %13, align 8, !dbg !1249
  %15 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %3, align 8, !dbg !1250
  %16 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %15, i32 0, i32 0, !dbg !1251
  store %struct.DblLnkLst_Links* %14, %struct.DblLnkLst_Links** %16, align 8, !dbg !1252
  %17 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %14, i32 0, i32 1, !dbg !1253
  store %struct.DblLnkLst_Links* %11, %struct.DblLnkLst_Links** %17, align 8, !dbg !1254
  %18 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %5, align 8, !dbg !1255
  %19 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %4, align 8, !dbg !1256
  %20 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %19, i32 0, i32 0, !dbg !1257
  store %struct.DblLnkLst_Links* %18, %struct.DblLnkLst_Links** %20, align 8, !dbg !1258
  ret void, !dbg !1259
}

declare i32 @FileIO_Close(%struct.FileIODescriptor*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!159, !160}
!llvm.ident = !{!161}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !53, globals: !126)
!1 = !DIFile(filename: "wiperPosix.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1100")
!2 = !{!3, !19, !24, !40, !47}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 42, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/wiper.h", directory: "/home/lichi/Desktop/open-vm-tools/line1100")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!6 = !DIEnumerator(name: "PARTITION_UNSUPPORTED", value: 0)
!7 = !DIEnumerator(name: "PARTITION_EXT2", value: 1)
!8 = !DIEnumerator(name: "PARTITION_EXT3", value: 2)
!9 = !DIEnumerator(name: "PARTITION_REISERFS", value: 3)
!10 = !DIEnumerator(name: "PARTITION_NTFS", value: 4)
!11 = !DIEnumerator(name: "PARTITION_FAT", value: 5)
!12 = !DIEnumerator(name: "PARTITION_UFS", value: 6)
!13 = !DIEnumerator(name: "PARTITION_PCFS", value: 7)
!14 = !DIEnumerator(name: "PARTITION_EXT4", value: 8)
!15 = !DIEnumerator(name: "PARTITION_HFS", value: 9)
!16 = !DIEnumerator(name: "PARTITION_ZFS", value: 10)
!17 = !DIEnumerator(name: "PARTITION_XFS", value: 11)
!18 = !DIEnumerator(name: "PARTITION_BTRFS", value: 12)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 83, size: 32, align: 32, elements: !21)
!20 = !DIFile(filename: "wiperPosix.c", directory: "/home/lichi/Desktop/open-vm-tools/line1100")
!21 = !{!22, !23}
!22 = !DIEnumerator(name: "WIPER_PHASE_CREATE", value: 0)
!23 = !DIEnumerator(name: "WIPER_PHASE_FILL", value: 1)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !25, line: 264, size: 32, align: 32, elements: !26)
!25 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/fileIO.h", directory: "/home/lichi/Desktop/open-vm-tools/line1100")
!26 = !{!27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39}
!27 = !DIEnumerator(name: "FILEIO_SUCCESS", value: 0)
!28 = !DIEnumerator(name: "FILEIO_CANCELLED", value: 1)
!29 = !DIEnumerator(name: "FILEIO_ERROR", value: 2)
!30 = !DIEnumerator(name: "FILEIO_OPEN_ERROR_EXIST", value: 3)
!31 = !DIEnumerator(name: "FILEIO_LOCK_FAILED", value: 4)
!32 = !DIEnumerator(name: "FILEIO_READ_ERROR_EOF", value: 5)
!33 = !DIEnumerator(name: "FILEIO_FILE_NOT_FOUND", value: 6)
!34 = !DIEnumerator(name: "FILEIO_NO_PERMISSION", value: 7)
!35 = !DIEnumerator(name: "FILEIO_FILE_NAME_TOO_LONG", value: 8)
!36 = !DIEnumerator(name: "FILEIO_WRITE_ERROR_FBIG", value: 9)
!37 = !DIEnumerator(name: "FILEIO_WRITE_ERROR_NOSPC", value: 10)
!38 = !DIEnumerator(name: "FILEIO_WRITE_ERROR_DQUOT", value: 11)
!39 = !DIEnumerator(name: "FILEIO_ERROR_LAST", value: 12)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !25, line: 256, size: 32, align: 32, elements: !41)
!41 = !{!42, !43, !44, !45, !46}
!42 = !DIEnumerator(name: "FILEIO_OPEN", value: 0)
!43 = !DIEnumerator(name: "FILEIO_OPEN_EMPTY", value: 1)
!44 = !DIEnumerator(name: "FILEIO_OPEN_CREATE", value: 2)
!45 = !DIEnumerator(name: "FILEIO_OPEN_CREATE_SAFE", value: 3)
!46 = !DIEnumerator(name: "FILEIO_OPEN_CREATE_EMPTY", value: 4)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !48, line: 34, size: 32, align: 32, elements: !49)
!48 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmstdio.h", directory: "/home/lichi/Desktop/open-vm-tools/line1100")
!49 = !{!50, !51, !52}
!50 = !DIEnumerator(name: "StdIO_Error", value: 0)
!51 = !DIEnumerator(name: "StdIO_EOF", value: 1)
!52 = !DIEnumerator(name: "StdIO_Success", value: 2)
!53 = !{!54, !55, !60, !125, !94}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !56, line: 171, baseType: !57)
!56 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1100")
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !58, line: 55, baseType: !59)
!58 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line1100")
!59 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "WiperState", file: !20, line: 109, baseType: !62)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "WiperState", file: !20, line: 96, size: 524544, align: 64, elements: !63)
!63 = !{!64, !66, !93, !114, !116, !120}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !62, file: !20, line: 98, baseType: !65, size: 32, align: 32)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "WiperPhase", file: !20, line: 86, baseType: !19)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !62, file: !20, line: 100, baseType: !67, size: 64, align: 64, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "WiperPartition", file: !4, line: 86, baseType: !70)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "WiperPartition", file: !4, line: 62, size: 2304, align: 64, elements: !71)
!71 = !{!72, !77, !79, !82, !85}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "mountPoint", scope: !70, file: !4, line: 63, baseType: !73, size: 2048, align: 8)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 2048, align: 8, elements: !75)
!74 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!75 = !{!76}
!76 = !DISubrange(count: 256)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !70, file: !4, line: 66, baseType: !78, size: 32, align: 32, offset: 2048)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "WiperPartition_Type", file: !4, line: 56, baseType: !3)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "attemptUnmaps", scope: !70, file: !4, line: 72, baseType: !80, size: 8, align: 8, offset: 2080)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !56, line: 230, baseType: !81)
!81 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !70, file: !4, line: 78, baseType: !83, size: 64, align: 64, offset: 2112)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !70, file: !4, line: 85, baseType: !86, size: 128, align: 64, offset: 2176)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "DblLnkLst_Links", file: !87, line: 94, baseType: !88)
!87 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/dbllnklst.h", directory: "/home/lichi/Desktop/open-vm-tools/line1100")
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DblLnkLst_Links", file: !87, line: 91, size: 128, align: 64, elements: !89)
!89 = !{!90, !92}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !88, file: !87, line: 92, baseType: !91, size: 64, align: 64)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, align: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !88, file: !87, line: 93, baseType: !91, size: 64, align: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !62, file: !20, line: 102, baseType: !94, size: 64, align: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "File", file: !20, line: 93, baseType: !96)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "File", file: !20, line: 88, size: 2368, align: 64, elements: !97)
!97 = !{!98, !99, !111, !112}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !96, file: !20, line: 89, baseType: !73, size: 2048, align: 8)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !96, file: !20, line: 90, baseType: !100, size: 192, align: 64, offset: 2048)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "FileIODescriptor", file: !25, line: 79, baseType: !101)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FileIODescriptor", file: !25, line: 74, size: 192, align: 64, elements: !102)
!102 = !{!103, !105, !106, !108}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "posix", scope: !101, file: !25, line: 75, baseType: !104, size: 32, align: 32)
!104 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !101, file: !25, line: 76, baseType: !104, size: 32, align: 32, offset: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "fileName", scope: !101, file: !25, line: 77, baseType: !107, size: 64, align: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "lockToken", scope: !101, file: !25, line: 78, baseType: !109, size: 64, align: 64, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DICompositeType(tag: DW_TAG_structure_type, name: "FileLockToken", file: !25, line: 59, flags: DIFlagFwdDecl)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !96, file: !20, line: 91, baseType: !55, size: 64, align: 64, offset: 2240)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !96, file: !20, line: 92, baseType: !113, size: 64, align: 64, offset: 2304)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !62, file: !20, line: 104, baseType: !115, size: 32, align: 32, offset: 192)
!115 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !62, file: !20, line: 106, baseType: !117, size: 524288, align: 8, offset: 224)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 524288, align: 8, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 65536)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !62, file: !20, line: 108, baseType: !121, size: 32, align: 32, offset: 524512)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !122, line: 81, baseType: !123)
!122 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "/home/lichi/Desktop/open-vm-tools/line1100")
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !124, line: 125, baseType: !115)
!124 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1100")
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!126 = !{!127, !135, !139, !140, !142, !154, !158}
!127 = distinct !DIGlobalVariable(name: "diskDevNames", scope: !128, file: !20, line: 207, type: !132, isLocal: true, isDefinition: true, variable: [43 x i8]* @WiperCollectDiskMajors.diskDevNames)
!128 = distinct !DISubprogram(name: "WiperCollectDiskMajors", scope: !20, file: !20, line: 205, type: !129, isLocal: true, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !131)
!129 = !DISubroutineType(types: !130)
!130 = !{null}
!131 = !{}
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 344, align: 8, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 43)
!135 = distinct !DIGlobalVariable(name: "blockSeparator", scope: !128, file: !20, line: 208, type: !136, isLocal: true, isDefinition: true, variable: [15 x i8]* @WiperCollectDiskMajors.blockSeparator)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 120, align: 8, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 15)
!139 = distinct !DIGlobalVariable(name: "numDiskMajors", scope: !0, file: !20, line: 183, type: !104, isLocal: true, isDefinition: true, variable: i32* @numDiskMajors)
!140 = distinct !DIGlobalVariable(name: "knownDiskMajor", scope: !0, file: !20, line: 168, type: !141, isLocal: true, isDefinition: true, variable: [256 x i32]* @knownDiskMajor)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 8192, align: 32, elements: !75)
!142 = distinct !DIGlobalVariable(name: "gKnownPartitions", scope: !0, file: !20, line: 130, type: !143, isLocal: true, isDefinition: true, variable: [20 x %struct.PartitionInfo]* @gKnownPartitions)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 5120, align: 64, elements: !152)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "PartitionInfo", file: !20, line: 123, baseType: !146)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PartitionInfo", file: !20, line: 118, size: 256, align: 64, elements: !147)
!147 = !{!148, !149, !150, !151}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !146, file: !20, line: 119, baseType: !83, size: 64, align: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !146, file: !20, line: 120, baseType: !78, size: 32, align: 32, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !146, file: !20, line: 121, baseType: !83, size: 64, align: 64, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "diskBacked", scope: !146, file: !20, line: 122, baseType: !80, size: 8, align: 8, offset: 192)
!152 = !{!153}
!153 = !DISubrange(count: 20)
!154 = distinct !DIGlobalVariable(name: "gRemoteFS", scope: !0, file: !20, line: 128, type: !155, isLocal: true, isDefinition: true, variable: [19 x i8]* @gRemoteFS)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 152, align: 8, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 19)
!158 = distinct !DIGlobalVariable(name: "initDone", scope: !0, file: !20, line: 153, type: !80, isLocal: true, isDefinition: true, variable: i8* @initDone)
!159 = !{i32 2, !"Dwarf Version", i32 4}
!160 = !{i32 2, !"Debug Info Version", i32 3}
!161 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!162 = distinct !DISubprogram(name: "WiperSinglePartition_Open", scope: !20, file: !20, line: 503, type: !163, isLocal: false, isDefinition: true, scopeLine: 505, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !131)
!163 = !DISubroutineType(types: !164)
!164 = !{!165, !83, !80}
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!166 = !DILocalVariable(name: "mountPoint", arg: 1, scope: !162, file: !20, line: 503, type: !83)
!167 = !DIExpression()
!168 = !DILocation(line: 503, column: 39, scope: !162)
!169 = !DILocalVariable(name: "shrinkableOnly", arg: 2, scope: !162, file: !20, line: 504, type: !80)
!170 = !DILocation(line: 504, column: 32, scope: !162)
!171 = !DILocalVariable(name: "mntpt", scope: !162, file: !20, line: 506, type: !107)
!172 = !DILocation(line: 506, column: 10, scope: !162)
!173 = !DILocalVariable(name: "fp", scope: !162, file: !20, line: 507, type: !174)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, align: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !176, line: 48, baseType: !177)
!176 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/open-vm-tools/line1100")
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !178, line: 241, size: 1728, align: 64, elements: !179)
!178 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/open-vm-tools/line1100")
!179 = !{!180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !200, !201, !202, !203, !206, !208, !210, !214, !217, !219, !220, !221, !222, !223, !226, !227}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !177, file: !178, line: 242, baseType: !104, size: 32, align: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !177, file: !178, line: 247, baseType: !107, size: 64, align: 64, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !177, file: !178, line: 248, baseType: !107, size: 64, align: 64, offset: 128)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !177, file: !178, line: 249, baseType: !107, size: 64, align: 64, offset: 192)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !177, file: !178, line: 250, baseType: !107, size: 64, align: 64, offset: 256)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !177, file: !178, line: 251, baseType: !107, size: 64, align: 64, offset: 320)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !177, file: !178, line: 252, baseType: !107, size: 64, align: 64, offset: 384)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !177, file: !178, line: 253, baseType: !107, size: 64, align: 64, offset: 448)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !177, file: !178, line: 254, baseType: !107, size: 64, align: 64, offset: 512)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !177, file: !178, line: 256, baseType: !107, size: 64, align: 64, offset: 576)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !177, file: !178, line: 257, baseType: !107, size: 64, align: 64, offset: 640)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !177, file: !178, line: 258, baseType: !107, size: 64, align: 64, offset: 704)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !177, file: !178, line: 260, baseType: !193, size: 64, align: 64, offset: 768)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64, align: 64)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !178, line: 156, size: 192, align: 64, elements: !195)
!195 = !{!196, !197, !199}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !194, file: !178, line: 157, baseType: !193, size: 64, align: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !194, file: !178, line: 158, baseType: !198, size: 64, align: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !194, file: !178, line: 162, baseType: !104, size: 32, align: 32, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !177, file: !178, line: 262, baseType: !198, size: 64, align: 64, offset: 832)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !177, file: !178, line: 264, baseType: !104, size: 32, align: 32, offset: 896)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !177, file: !178, line: 268, baseType: !104, size: 32, align: 32, offset: 928)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !177, file: !178, line: 270, baseType: !204, size: 64, align: 64, offset: 960)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !124, line: 131, baseType: !205)
!205 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !177, file: !178, line: 274, baseType: !207, size: 16, align: 16, offset: 1024)
!207 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !177, file: !178, line: 275, baseType: !209, size: 8, align: 8, offset: 1040)
!209 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !177, file: !178, line: 276, baseType: !211, size: 8, align: 8, offset: 1048)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 8, align: 8, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 1)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !177, file: !178, line: 280, baseType: !215, size: 64, align: 64, offset: 1088)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !178, line: 150, baseType: null)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !177, file: !178, line: 289, baseType: !218, size: 64, align: 64, offset: 1152)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !124, line: 132, baseType: !205)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !177, file: !178, line: 297, baseType: !54, size: 64, align: 64, offset: 1216)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !177, file: !178, line: 298, baseType: !54, size: 64, align: 64, offset: 1280)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !177, file: !178, line: 299, baseType: !54, size: 64, align: 64, offset: 1344)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !177, file: !178, line: 300, baseType: !54, size: 64, align: 64, offset: 1408)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !177, file: !178, line: 302, baseType: !224, size: 64, align: 64, offset: 1472)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !225, line: 216, baseType: !59)
!225 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line1100")
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !177, file: !178, line: 303, baseType: !104, size: 32, align: 32, offset: 1536)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !177, file: !178, line: 305, baseType: !228, size: 160, align: 8, offset: 1568)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 160, align: 8, elements: !152)
!229 = !DILocation(line: 507, column: 11, scope: !162)
!230 = !DILocalVariable(name: "len", scope: !162, file: !20, line: 508, type: !104)
!231 = !DILocation(line: 508, column: 8, scope: !162)
!232 = !DILocalVariable(name: "mnt", scope: !162, file: !20, line: 509, type: !233)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64, align: 64)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mntent", file: !235, line: 53, size: 320, align: 64, elements: !236)
!235 = !DIFile(filename: "/usr/include/mntent.h", directory: "/home/lichi/Desktop/open-vm-tools/line1100")
!236 = !{!237, !238, !239, !240, !241, !242}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_fsname", scope: !234, file: !235, line: 55, baseType: !107, size: 64, align: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_dir", scope: !234, file: !235, line: 56, baseType: !107, size: 64, align: 64, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_type", scope: !234, file: !235, line: 57, baseType: !107, size: 64, align: 64, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_opts", scope: !234, file: !235, line: 58, baseType: !107, size: 64, align: 64, offset: 192)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_freq", scope: !234, file: !235, line: 59, baseType: !104, size: 32, align: 32, offset: 256)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_passno", scope: !234, file: !235, line: 60, baseType: !104, size: 32, align: 32, offset: 288)
!243 = !DILocation(line: 509, column: 19, scope: !162)
!244 = !DILocalVariable(name: "p", scope: !162, file: !20, line: 510, type: !165)
!245 = !DILocation(line: 510, column: 20, scope: !162)
!246 = !DILocation(line: 514, column: 9, scope: !162)
!247 = !DILocation(line: 514, column: 7, scope: !162)
!248 = !DILocation(line: 515, column: 8, scope: !249)
!249 = distinct !DILexicalBlock(scope: !162, file: !20, line: 515, column: 8)
!250 = !DILocation(line: 515, column: 11, scope: !249)
!251 = !DILocation(line: 515, column: 8, scope: !162)
!252 = !DILocation(line: 516, column: 7, scope: !253)
!253 = distinct !DILexicalBlock(scope: !249, file: !20, line: 515, column: 19)
!254 = !DILocation(line: 517, column: 7, scope: !253)
!255 = !DILocation(line: 520, column: 29, scope: !162)
!256 = !DILocation(line: 520, column: 12, scope: !162)
!257 = !DILocation(line: 520, column: 10, scope: !162)
!258 = !DILocalVariable(name: "tmp", scope: !259, file: !20, line: 526, type: !107)
!259 = distinct !DILexicalBlock(scope: !162, file: !20, line: 525, column: 4)
!260 = !DILocation(line: 526, column: 13, scope: !259)
!261 = !DILocation(line: 526, column: 33, scope: !259)
!262 = !DILocation(line: 526, column: 26, scope: !259)
!263 = !DILocation(line: 526, column: 40, scope: !259)
!264 = !DILocation(line: 526, column: 20, scope: !259)
!265 = !DILocation(line: 527, column: 12, scope: !266)
!266 = distinct !DILexicalBlock(scope: !259, file: !20, line: 527, column: 11)
!267 = !DILocation(line: 527, column: 11, scope: !266)
!268 = !DILocation(line: 527, column: 16, scope: !266)
!269 = !DILocation(line: 527, column: 11, scope: !259)
!270 = !DILocation(line: 528, column: 11, scope: !271)
!271 = distinct !DILexicalBlock(scope: !266, file: !20, line: 527, column: 24)
!272 = !DILocation(line: 528, column: 15, scope: !271)
!273 = !DILocation(line: 529, column: 7, scope: !271)
!274 = !DILocation(line: 532, column: 17, scope: !162)
!275 = !DILocation(line: 532, column: 10, scope: !162)
!276 = !DILocation(line: 532, column: 8, scope: !162)
!277 = !DILocation(line: 533, column: 4, scope: !162)
!278 = !DILocation(line: 533, column: 35, scope: !279)
!279 = !DILexicalBlockFile(scope: !162, file: !20, discriminator: 1)
!280 = !DILocation(line: 533, column: 19, scope: !279)
!281 = !DILocation(line: 533, column: 17, scope: !279)
!282 = !DILocation(line: 533, column: 40, scope: !279)
!283 = !DILocation(line: 533, column: 4, scope: !279)
!284 = !DILocation(line: 534, column: 19, scope: !285)
!285 = distinct !DILexicalBlock(scope: !286, file: !20, line: 534, column: 11)
!286 = distinct !DILexicalBlock(scope: !162, file: !20, line: 533, column: 13)
!287 = !DILocation(line: 534, column: 24, scope: !285)
!288 = !DILocation(line: 534, column: 33, scope: !285)
!289 = !DILocation(line: 534, column: 40, scope: !285)
!290 = !DILocation(line: 534, column: 11, scope: !285)
!291 = !DILocation(line: 534, column: 45, scope: !285)
!292 = !DILocation(line: 534, column: 11, scope: !286)
!293 = !DILocation(line: 536, column: 14, scope: !294)
!294 = distinct !DILexicalBlock(scope: !285, file: !20, line: 534, column: 51)
!295 = !DILocation(line: 536, column: 12, scope: !294)
!296 = !DILocation(line: 537, column: 14, scope: !297)
!297 = distinct !DILexicalBlock(scope: !294, file: !20, line: 537, column: 14)
!298 = !DILocation(line: 537, column: 16, scope: !297)
!299 = !DILocation(line: 537, column: 14, scope: !294)
!300 = !DILocation(line: 538, column: 13, scope: !301)
!301 = distinct !DILexicalBlock(scope: !297, file: !20, line: 537, column: 24)
!302 = !DILocation(line: 539, column: 10, scope: !301)
!303 = !DILocation(line: 539, column: 34, scope: !304)
!304 = !DILexicalBlockFile(scope: !305, file: !20, discriminator: 1)
!305 = distinct !DILexicalBlock(scope: !297, file: !20, line: 539, column: 21)
!306 = !DILocation(line: 539, column: 37, scope: !304)
!307 = !DILocation(line: 540, column: 40, scope: !305)
!308 = !DILocation(line: 540, column: 45, scope: !305)
!309 = !DILocation(line: 539, column: 21, scope: !304)
!310 = !DILocation(line: 540, column: 54, scope: !305)
!311 = !DILocation(line: 541, column: 13, scope: !312)
!312 = distinct !DILexicalBlock(scope: !305, file: !20, line: 540, column: 61)
!313 = !DILocation(line: 542, column: 40, scope: !312)
!314 = !DILocation(line: 542, column: 13, scope: !312)
!315 = !DILocation(line: 543, column: 15, scope: !312)
!316 = !DILocation(line: 544, column: 10, scope: !312)
!317 = !DILocation(line: 545, column: 13, scope: !318)
!318 = distinct !DILexicalBlock(scope: !305, file: !20, line: 544, column: 17)
!319 = !DILocation(line: 546, column: 34, scope: !318)
!320 = !DILocation(line: 546, column: 37, scope: !318)
!321 = !DILocation(line: 546, column: 42, scope: !318)
!322 = !DILocation(line: 546, column: 13, scope: !318)
!323 = !DILocation(line: 549, column: 10, scope: !294)
!324 = !DILocation(line: 533, column: 4, scope: !325)
!325 = !DILexicalBlockFile(scope: !162, file: !20, discriminator: 2)
!326 = distinct !{!326, !277}
!327 = !DILocation(line: 553, column: 55, scope: !162)
!328 = !DILocation(line: 553, column: 4, scope: !162)
!329 = !DILocation(line: 556, column: 9, scope: !162)
!330 = !DILocation(line: 556, column: 4, scope: !162)
!331 = !DILocation(line: 557, column: 22, scope: !162)
!332 = !DILocation(line: 557, column: 12, scope: !162)
!333 = !DILocation(line: 557, column: 26, scope: !162)
!334 = !DILocation(line: 558, column: 11, scope: !162)
!335 = !DILocation(line: 558, column: 4, scope: !162)
!336 = !DILocation(line: 559, column: 1, scope: !162)
!337 = !DILocalVariable(name: "seenBlockSeparator", scope: !128, file: !20, line: 209, type: !80)
!338 = !DILocation(line: 209, column: 9, scope: !128)
!339 = !DILocalVariable(name: "buf", scope: !128, file: !20, line: 210, type: !107)
!340 = !DILocation(line: 210, column: 10, scope: !128)
!341 = !DILocalVariable(name: "major", scope: !128, file: !20, line: 211, type: !104)
!342 = !DILocation(line: 211, column: 8, scope: !128)
!343 = !DILocalVariable(name: "device", scope: !128, file: !20, line: 212, type: !344)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 512, align: 8, elements: !345)
!345 = !{!346}
!346 = !DISubrange(count: 64)
!347 = !DILocation(line: 212, column: 9, scope: !128)
!348 = !DILocalVariable(name: "f", scope: !128, file: !20, line: 213, type: !174)
!349 = !DILocation(line: 213, column: 10, scope: !128)
!350 = !DILocation(line: 215, column: 18, scope: !128)
!351 = !DILocation(line: 217, column: 8, scope: !128)
!352 = !DILocation(line: 217, column: 6, scope: !128)
!353 = !DILocation(line: 218, column: 9, scope: !354)
!354 = distinct !DILexicalBlock(scope: !128, file: !20, line: 218, column: 8)
!355 = !DILocation(line: 218, column: 8, scope: !128)
!356 = !DILocation(line: 219, column: 7, scope: !357)
!357 = distinct !DILexicalBlock(scope: !354, file: !20, line: 218, column: 12)
!358 = !DILocation(line: 222, column: 4, scope: !128)
!359 = !DILocation(line: 222, column: 30, scope: !360)
!360 = !DILexicalBlockFile(scope: !128, file: !20, discriminator: 1)
!361 = !DILocation(line: 222, column: 11, scope: !360)
!362 = !DILocation(line: 222, column: 47, scope: !360)
!363 = !DILocation(line: 222, column: 4, scope: !360)
!364 = !DILocation(line: 224, column: 12, scope: !365)
!365 = distinct !DILexicalBlock(scope: !366, file: !20, line: 224, column: 11)
!366 = distinct !DILexicalBlock(scope: !128, file: !20, line: 222, column: 65)
!367 = !DILocation(line: 224, column: 11, scope: !366)
!368 = !DILocation(line: 225, column: 22, scope: !369)
!369 = distinct !DILexicalBlock(scope: !370, file: !20, line: 225, column: 14)
!370 = distinct !DILexicalBlock(scope: !365, file: !20, line: 224, column: 32)
!371 = !DILocation(line: 225, column: 15, scope: !369)
!372 = !DILocation(line: 225, column: 14, scope: !370)
!373 = !DILocation(line: 226, column: 32, scope: !374)
!374 = distinct !DILexicalBlock(scope: !369, file: !20, line: 225, column: 72)
!375 = !DILocation(line: 227, column: 10, scope: !374)
!376 = !DILocation(line: 228, column: 7, scope: !370)
!377 = !DILocation(line: 228, column: 25, scope: !378)
!378 = !DILexicalBlockFile(scope: !379, file: !20, discriminator: 1)
!379 = distinct !DILexicalBlock(scope: !365, file: !20, line: 228, column: 18)
!380 = !DILocation(line: 228, column: 51, scope: !378)
!381 = !DILocation(line: 228, column: 58, scope: !378)
!382 = !DILocation(line: 228, column: 18, scope: !378)
!383 = !DILocation(line: 228, column: 63, scope: !378)
!384 = !DILocation(line: 230, column: 10, scope: !385)
!385 = distinct !DILexicalBlock(scope: !379, file: !20, line: 228, column: 69)
!386 = !DILocation(line: 230, column: 20, scope: !385)
!387 = !DILocation(line: 231, column: 10, scope: !385)
!388 = !DILocation(line: 231, column: 37, scope: !385)
!389 = !DILocation(line: 232, column: 21, scope: !385)
!390 = !DILocation(line: 232, column: 10, scope: !385)
!391 = !DILocation(line: 234, column: 35, scope: !392)
!392 = distinct !DILexicalBlock(scope: !385, file: !20, line: 234, column: 14)
!393 = !DILocation(line: 234, column: 14, scope: !392)
!394 = !DILocation(line: 234, column: 14, scope: !385)
!395 = !DILocation(line: 235, column: 47, scope: !396)
!396 = distinct !DILexicalBlock(scope: !392, file: !20, line: 234, column: 44)
!397 = !DILocation(line: 235, column: 41, scope: !396)
!398 = !DILocation(line: 235, column: 13, scope: !396)
!399 = !DILocation(line: 235, column: 45, scope: !396)
!400 = !DILocation(line: 236, column: 10, scope: !396)
!401 = !DILocation(line: 237, column: 7, scope: !385)
!402 = !DILocation(line: 239, column: 12, scope: !366)
!403 = !DILocation(line: 239, column: 7, scope: !366)
!404 = !DILocation(line: 241, column: 11, scope: !405)
!405 = distinct !DILexicalBlock(scope: !366, file: !20, line: 241, column: 11)
!406 = !DILocation(line: 241, column: 25, scope: !405)
!407 = !DILocation(line: 241, column: 11, scope: !366)
!408 = !DILocation(line: 242, column: 10, scope: !409)
!409 = distinct !DILexicalBlock(scope: !405, file: !20, line: 241, column: 33)
!410 = !DILocation(line: 222, column: 4, scope: !411)
!411 = !DILexicalBlockFile(scope: !128, file: !20, discriminator: 2)
!412 = distinct !{!412, !358}
!413 = !DILocation(line: 246, column: 11, scope: !128)
!414 = !DILocation(line: 246, column: 4, scope: !128)
!415 = !DILocation(line: 247, column: 1, scope: !128)
!416 = !DILocation(line: 247, column: 1, scope: !360)
!417 = distinct !DISubprogram(name: "WiperPartitionFilter", scope: !20, file: !20, line: 427, type: !418, isLocal: true, isDefinition: true, scopeLine: 430, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !131)
!418 = !DISubroutineType(types: !419)
!419 = !{null, !165, !233, !80}
!420 = !DILocalVariable(name: "item", arg: 1, scope: !417, file: !20, line: 427, type: !165)
!421 = !DILocation(line: 427, column: 38, scope: !417)
!422 = !DILocalVariable(name: "mnt", arg: 2, scope: !417, file: !20, line: 428, type: !233)
!423 = !DILocation(line: 428, column: 37, scope: !417)
!424 = !DILocalVariable(name: "shrinkableOnly", arg: 3, scope: !417, file: !20, line: 429, type: !80)
!425 = !DILocation(line: 429, column: 27, scope: !417)
!426 = !DILocalVariable(name: "s", scope: !417, file: !20, line: 431, type: !427)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !428, line: 46, size: 1152, align: 64, elements: !429)
!428 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/open-vm-tools/line1100")
!429 = !{!430, !432, !434, !436, !438, !439, !441, !442, !443, !444, !446, !448, !456, !457, !458}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !427, file: !428, line: 48, baseType: !431, size: 64, align: 64)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !124, line: 124, baseType: !59)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !427, file: !428, line: 53, baseType: !433, size: 64, align: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !124, line: 127, baseType: !59)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !427, file: !428, line: 61, baseType: !435, size: 64, align: 64, offset: 128)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !124, line: 130, baseType: !59)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !427, file: !428, line: 62, baseType: !437, size: 32, align: 32, offset: 192)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !124, line: 129, baseType: !115)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !427, file: !428, line: 64, baseType: !123, size: 32, align: 32, offset: 224)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !427, file: !428, line: 65, baseType: !440, size: 32, align: 32, offset: 256)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !124, line: 126, baseType: !115)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !427, file: !428, line: 67, baseType: !104, size: 32, align: 32, offset: 288)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !427, file: !428, line: 69, baseType: !431, size: 64, align: 64, offset: 320)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !427, file: !428, line: 74, baseType: !204, size: 64, align: 64, offset: 384)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !427, file: !428, line: 78, baseType: !445, size: 64, align: 64, offset: 448)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !124, line: 153, baseType: !205)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !427, file: !428, line: 80, baseType: !447, size: 64, align: 64, offset: 512)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !124, line: 158, baseType: !205)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !427, file: !428, line: 91, baseType: !449, size: 128, align: 64, offset: 576)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !450, line: 120, size: 128, align: 64, elements: !451)
!450 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/open-vm-tools/line1100")
!451 = !{!452, !454}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !449, file: !450, line: 122, baseType: !453, size: 64, align: 64)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !124, line: 139, baseType: !205)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !449, file: !450, line: 123, baseType: !455, size: 64, align: 64, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !124, line: 175, baseType: !205)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !427, file: !428, line: 92, baseType: !449, size: 128, align: 64, offset: 704)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !427, file: !428, line: 93, baseType: !449, size: 128, align: 64, offset: 832)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !427, file: !428, line: 106, baseType: !459, size: 192, align: 64, offset: 960)
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, size: 192, align: 64, elements: !460)
!460 = !{!461}
!461 = !DISubrange(count: 3)
!462 = !DILocation(line: 431, column: 16, scope: !417)
!463 = !DILocalVariable(name: "comment", scope: !417, file: !20, line: 432, type: !83)
!464 = !DILocation(line: 432, column: 16, scope: !417)
!465 = !DILocalVariable(name: "fsname", scope: !417, file: !20, line: 433, type: !83)
!466 = !DILocation(line: 433, column: 16, scope: !417)
!467 = !DILocation(line: 433, column: 25, scope: !417)
!468 = !DILocation(line: 433, column: 30, scope: !417)
!469 = !DILocalVariable(name: "info", scope: !417, file: !20, line: 434, type: !470)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!471 = !DILocation(line: 434, column: 25, scope: !417)
!472 = !DILocalVariable(name: "i", scope: !417, file: !20, line: 435, type: !224)
!473 = !DILocation(line: 435, column: 11, scope: !417)
!474 = !DILocation(line: 437, column: 4, scope: !417)
!475 = !DILocation(line: 437, column: 10, scope: !417)
!476 = !DILocation(line: 437, column: 15, scope: !417)
!477 = !DILocation(line: 439, column: 11, scope: !478)
!478 = distinct !DILexicalBlock(scope: !417, file: !20, line: 439, column: 4)
!479 = !DILocation(line: 439, column: 9, scope: !478)
!480 = !DILocation(line: 439, column: 16, scope: !481)
!481 = !DILexicalBlockFile(scope: !482, file: !20, discriminator: 1)
!482 = distinct !DILexicalBlock(scope: !478, file: !20, line: 439, column: 4)
!483 = !DILocation(line: 439, column: 18, scope: !481)
!484 = !DILocation(line: 439, column: 4, scope: !481)
!485 = !DILocation(line: 440, column: 32, scope: !486)
!486 = distinct !DILexicalBlock(scope: !482, file: !20, line: 439, column: 83)
!487 = !DILocation(line: 440, column: 15, scope: !486)
!488 = !DILocation(line: 440, column: 12, scope: !486)
!489 = !DILocation(line: 441, column: 18, scope: !490)
!490 = distinct !DILexicalBlock(scope: !486, file: !20, line: 441, column: 11)
!491 = !DILocation(line: 441, column: 24, scope: !490)
!492 = !DILocation(line: 441, column: 30, scope: !490)
!493 = !DILocation(line: 441, column: 11, scope: !490)
!494 = !DILocation(line: 441, column: 38, scope: !490)
!495 = !DILocation(line: 441, column: 11, scope: !486)
!496 = !DILocation(line: 442, column: 23, scope: !497)
!497 = distinct !DILexicalBlock(scope: !490, file: !20, line: 441, column: 44)
!498 = !DILocation(line: 442, column: 29, scope: !497)
!499 = !DILocation(line: 442, column: 10, scope: !497)
!500 = !DILocation(line: 442, column: 16, scope: !497)
!501 = !DILocation(line: 442, column: 21, scope: !497)
!502 = !DILocation(line: 443, column: 20, scope: !497)
!503 = !DILocation(line: 443, column: 26, scope: !497)
!504 = !DILocation(line: 443, column: 18, scope: !497)
!505 = !DILocation(line: 444, column: 10, scope: !497)
!506 = !DILocation(line: 446, column: 4, scope: !486)
!507 = !DILocation(line: 439, column: 79, scope: !508)
!508 = !DILexicalBlockFile(scope: !482, file: !20, discriminator: 2)
!509 = !DILocation(line: 439, column: 4, scope: !508)
!510 = distinct !{!510, !511}
!511 = !DILocation(line: 439, column: 4, scope: !417)
!512 = !DILocation(line: 448, column: 8, scope: !513)
!513 = distinct !DILexicalBlock(scope: !417, file: !20, line: 448, column: 8)
!514 = !DILocation(line: 448, column: 10, scope: !513)
!515 = !DILocation(line: 448, column: 8, scope: !417)
!516 = !DILocation(line: 449, column: 15, scope: !517)
!517 = distinct !DILexicalBlock(scope: !513, file: !20, line: 448, column: 71)
!518 = !DILocation(line: 450, column: 4, scope: !517)
!519 = !DILocation(line: 450, column: 15, scope: !520)
!520 = !DILexicalBlockFile(scope: !521, file: !20, discriminator: 1)
!521 = distinct !DILexicalBlock(scope: !513, file: !20, line: 450, column: 15)
!522 = !DILocation(line: 450, column: 21, scope: !520)
!523 = !DILocation(line: 450, column: 26, scope: !520)
!524 = !DILocation(line: 450, column: 51, scope: !520)
!525 = !DILocation(line: 451, column: 15, scope: !521)
!526 = !DILocation(line: 450, column: 15, scope: !527)
!527 = !DILexicalBlockFile(scope: !513, file: !20, discriminator: 2)
!528 = !DILocation(line: 457, column: 11, scope: !529)
!529 = distinct !DILexicalBlock(scope: !530, file: !20, line: 457, column: 11)
!530 = distinct !DILexicalBlock(scope: !521, file: !20, line: 451, column: 31)
!531 = !DILocation(line: 457, column: 17, scope: !529)
!532 = !DILocation(line: 457, column: 11, scope: !530)
!533 = !DILocation(line: 458, column: 25, scope: !534)
!534 = distinct !DILexicalBlock(scope: !535, file: !20, line: 458, column: 14)
!535 = distinct !DILexicalBlock(scope: !529, file: !20, line: 457, column: 29)
!536 = !DILocation(line: 458, column: 30, scope: !534)
!537 = !DILocation(line: 458, column: 14, scope: !534)
!538 = !DILocation(line: 458, column: 46, scope: !534)
!539 = !DILocation(line: 458, column: 14, scope: !535)
!540 = !DILocation(line: 459, column: 21, scope: !541)
!541 = distinct !DILexicalBlock(scope: !534, file: !20, line: 458, column: 51)
!542 = !DILocation(line: 461, column: 10, scope: !541)
!543 = !DILocation(line: 461, column: 23, scope: !544)
!544 = !DILexicalBlockFile(scope: !545, file: !20, discriminator: 1)
!545 = distinct !DILexicalBlock(scope: !534, file: !20, line: 461, column: 21)
!546 = !DILocation(line: 461, column: 24, scope: !544)
!547 = !DILocation(line: 461, column: 35, scope: !544)
!548 = !DILocation(line: 461, column: 21, scope: !544)
!549 = !DILocation(line: 462, column: 21, scope: !550)
!550 = distinct !DILexicalBlock(scope: !545, file: !20, line: 461, column: 41)
!551 = !DILocation(line: 464, column: 10, scope: !550)
!552 = !DILocation(line: 464, column: 40, scope: !553)
!553 = !DILexicalBlockFile(scope: !554, file: !20, discriminator: 1)
!554 = distinct !DILexicalBlock(scope: !545, file: !20, line: 464, column: 21)
!555 = !DILocation(line: 464, column: 22, scope: !553)
!556 = !DILocation(line: 464, column: 21, scope: !553)
!557 = !DILocation(line: 465, column: 21, scope: !558)
!558 = distinct !DILexicalBlock(scope: !554, file: !20, line: 464, column: 50)
!559 = !DILocation(line: 466, column: 10, scope: !558)
!560 = !DILocation(line: 466, column: 33, scope: !561)
!561 = !DILexicalBlockFile(scope: !562, file: !20, discriminator: 1)
!562 = distinct !DILexicalBlock(scope: !554, file: !20, line: 466, column: 21)
!563 = !DILocation(line: 466, column: 22, scope: !561)
!564 = !DILocation(line: 466, column: 45, scope: !561)
!565 = !DILocation(line: 466, column: 21, scope: !561)
!566 = !DILocation(line: 467, column: 21, scope: !567)
!567 = distinct !DILexicalBlock(scope: !562, file: !20, line: 466, column: 23)
!568 = !DILocation(line: 468, column: 10, scope: !567)
!569 = !DILocation(line: 469, column: 7, scope: !535)
!570 = !DILocation(line: 469, column: 31, scope: !571)
!571 = !DILexicalBlockFile(scope: !572, file: !20, discriminator: 1)
!572 = distinct !DILexicalBlock(scope: !529, file: !20, line: 469, column: 18)
!573 = !DILocation(line: 469, column: 36, scope: !571)
!574 = !DILocation(line: 469, column: 18, scope: !571)
!575 = !DILocation(line: 469, column: 56, scope: !571)
!576 = !DILocation(line: 470, column: 18, scope: !577)
!577 = distinct !DILexicalBlock(scope: !572, file: !20, line: 469, column: 62)
!578 = !DILocation(line: 471, column: 7, scope: !577)
!579 = !DILocation(line: 473, column: 11, scope: !580)
!580 = distinct !DILexicalBlock(scope: !530, file: !20, line: 473, column: 11)
!581 = !DILocation(line: 473, column: 19, scope: !580)
!582 = !DILocation(line: 473, column: 11, scope: !530)
!583 = !DILocation(line: 474, column: 10, scope: !584)
!584 = distinct !DILexicalBlock(scope: !580, file: !20, line: 473, column: 27)
!585 = !DILocation(line: 474, column: 16, scope: !584)
!586 = !DILocation(line: 474, column: 21, scope: !584)
!587 = !DILocation(line: 475, column: 7, scope: !584)
!588 = !DILocation(line: 476, column: 4, scope: !530)
!589 = !DILocation(line: 478, column: 8, scope: !590)
!590 = distinct !DILexicalBlock(scope: !417, file: !20, line: 478, column: 8)
!591 = !DILocation(line: 478, column: 14, scope: !590)
!592 = !DILocation(line: 478, column: 19, scope: !590)
!593 = !DILocation(line: 478, column: 8, scope: !417)
!594 = !DILocation(line: 480, column: 40, scope: !595)
!595 = distinct !DILexicalBlock(scope: !590, file: !20, line: 478, column: 45)
!596 = !DILocation(line: 480, column: 23, scope: !595)
!597 = !DILocation(line: 480, column: 7, scope: !595)
!598 = !DILocation(line: 480, column: 13, scope: !595)
!599 = !DILocation(line: 480, column: 21, scope: !595)
!600 = !DILocation(line: 481, column: 4, scope: !595)
!601 = !DILocation(line: 482, column: 1, scope: !417)
!602 = distinct !DISubprogram(name: "WiperSinglePartition_GetSpace", scope: !20, file: !20, line: 579, type: !603, isLocal: false, isDefinition: true, scopeLine: 583, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !131)
!603 = !DISubroutineType(types: !604)
!604 = !{!605, !67, !606, !606, !606}
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!607 = !DILocalVariable(name: "p", arg: 1, scope: !602, file: !20, line: 579, type: !67)
!608 = !DILocation(line: 579, column: 53, scope: !602)
!609 = !DILocalVariable(name: "avail", arg: 2, scope: !602, file: !20, line: 580, type: !606)
!610 = !DILocation(line: 580, column: 39, scope: !602)
!611 = !DILocalVariable(name: "free", arg: 3, scope: !602, file: !20, line: 581, type: !606)
!612 = !DILocation(line: 581, column: 39, scope: !602)
!613 = !DILocalVariable(name: "total", arg: 4, scope: !602, file: !20, line: 582, type: !606)
!614 = !DILocation(line: 582, column: 39, scope: !602)
!615 = !DILocalVariable(name: "statfsbuf", scope: !602, file: !20, line: 587, type: !616)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "statfs", file: !617, line: 24, size: 960, align: 64, elements: !618)
!617 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/statfs.h", directory: "/home/lichi/Desktop/open-vm-tools/line1100")
!618 = !{!619, !621, !622, !624, !625, !626, !628, !629, !637, !638, !639, !640}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "f_type", scope: !616, file: !617, line: 26, baseType: !620, size: 64, align: 64)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fsword_t", file: !124, line: 170, baseType: !205)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "f_bsize", scope: !616, file: !617, line: 27, baseType: !620, size: 64, align: 64, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "f_blocks", scope: !616, file: !617, line: 35, baseType: !623, size: 64, align: 64, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fsblkcnt64_t", file: !124, line: 163, baseType: !59)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "f_bfree", scope: !616, file: !617, line: 36, baseType: !623, size: 64, align: 64, offset: 192)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "f_bavail", scope: !616, file: !617, line: 37, baseType: !623, size: 64, align: 64, offset: 256)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "f_files", scope: !616, file: !617, line: 38, baseType: !627, size: 64, align: 64, offset: 320)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fsfilcnt64_t", file: !124, line: 167, baseType: !59)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "f_ffree", scope: !616, file: !617, line: 39, baseType: !627, size: 64, align: 64, offset: 384)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "f_fsid", scope: !616, file: !617, line: 41, baseType: !630, size: 64, align: 32, offset: 448)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fsid_t", file: !124, line: 134, baseType: !631)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !124, line: 134, size: 64, align: 32, elements: !632)
!632 = !{!633}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !631, file: !124, line: 134, baseType: !634, size: 64, align: 32)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 64, align: 32, elements: !635)
!635 = !{!636}
!636 = !DISubrange(count: 2)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "f_namelen", scope: !616, file: !617, line: 42, baseType: !620, size: 64, align: 64, offset: 512)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "f_frsize", scope: !616, file: !617, line: 43, baseType: !620, size: 64, align: 64, offset: 576)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !616, file: !617, line: 44, baseType: !620, size: 64, align: 64, offset: 640)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "f_spare", scope: !616, file: !617, line: 45, baseType: !641, size: 256, align: 64, offset: 704)
!641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !620, size: 256, align: 64, elements: !642)
!642 = !{!643}
!643 = !DISubrange(count: 4)
!644 = !DILocation(line: 587, column: 18, scope: !602)
!645 = !DILocalVariable(name: "blockSize", scope: !602, file: !20, line: 589, type: !55)
!646 = !DILocation(line: 589, column: 11, scope: !602)
!647 = !DILocation(line: 596, column: 21, scope: !648)
!648 = distinct !DILexicalBlock(scope: !602, file: !20, line: 596, column: 8)
!649 = !DILocation(line: 596, column: 24, scope: !648)
!650 = !DILocation(line: 596, column: 8, scope: !648)
!651 = !DILocation(line: 596, column: 48, scope: !648)
!652 = !DILocation(line: 596, column: 8, scope: !602)
!653 = !DILocation(line: 598, column: 7, scope: !654)
!654 = distinct !DILexicalBlock(scope: !648, file: !20, line: 596, column: 53)
!655 = !DILocation(line: 604, column: 26, scope: !602)
!656 = !DILocation(line: 604, column: 14, scope: !602)
!657 = !DILocation(line: 607, column: 8, scope: !658)
!658 = distinct !DILexicalBlock(scope: !602, file: !20, line: 607, column: 8)
!659 = !DILocation(line: 607, column: 8, scope: !602)
!660 = !DILocation(line: 614, column: 34, scope: !661)
!661 = distinct !DILexicalBlock(scope: !658, file: !20, line: 607, column: 15)
!662 = !DILocation(line: 614, column: 45, scope: !661)
!663 = !DILocation(line: 614, column: 43, scope: !661)
!664 = !DILocation(line: 614, column: 8, scope: !661)
!665 = !DILocation(line: 614, column: 14, scope: !661)
!666 = !DILocation(line: 615, column: 4, scope: !661)
!667 = !DILocation(line: 617, column: 8, scope: !668)
!668 = distinct !DILexicalBlock(scope: !602, file: !20, line: 617, column: 8)
!669 = !DILocation(line: 617, column: 8, scope: !602)
!670 = !DILocation(line: 618, column: 11, scope: !671)
!671 = distinct !DILexicalBlock(scope: !672, file: !20, line: 618, column: 11)
!672 = distinct !DILexicalBlock(scope: !668, file: !20, line: 617, column: 14)
!673 = !DILocation(line: 618, column: 20, scope: !671)
!674 = !DILocation(line: 618, column: 11, scope: !672)
!675 = !DILocation(line: 623, column: 36, scope: !676)
!676 = distinct !DILexicalBlock(scope: !671, file: !20, line: 618, column: 26)
!677 = !DILocation(line: 623, column: 46, scope: !676)
!678 = !DILocation(line: 623, column: 44, scope: !676)
!679 = !DILocation(line: 623, column: 11, scope: !676)
!680 = !DILocation(line: 623, column: 16, scope: !676)
!681 = !DILocation(line: 624, column: 7, scope: !676)
!682 = !DILocation(line: 629, column: 36, scope: !683)
!683 = distinct !DILexicalBlock(scope: !671, file: !20, line: 624, column: 14)
!684 = !DILocation(line: 629, column: 47, scope: !683)
!685 = !DILocation(line: 629, column: 45, scope: !683)
!686 = !DILocation(line: 629, column: 11, scope: !683)
!687 = !DILocation(line: 629, column: 16, scope: !683)
!688 = !DILocation(line: 631, column: 4, scope: !672)
!689 = !DILocation(line: 633, column: 31, scope: !602)
!690 = !DILocation(line: 633, column: 42, scope: !602)
!691 = !DILocation(line: 633, column: 40, scope: !602)
!692 = !DILocation(line: 633, column: 5, scope: !602)
!693 = !DILocation(line: 633, column: 11, scope: !602)
!694 = !DILocation(line: 635, column: 4, scope: !602)
!695 = !DILocation(line: 636, column: 1, scope: !602)
!696 = distinct !DISubprogram(name: "WiperPartition_Open", scope: !20, file: !20, line: 656, type: !697, isLocal: false, isDefinition: true, scopeLine: 658, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !131)
!697 = !DISubroutineType(types: !698)
!698 = !{!80, !699, !80}
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64, align: 64)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "WiperPartition_List", file: !4, line: 90, baseType: !701)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "WiperPartition_List", file: !4, line: 88, size: 128, align: 64, elements: !702)
!702 = !{!703}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !701, file: !4, line: 89, baseType: !86, size: 128, align: 64)
!704 = !DILocalVariable(name: "pl", arg: 1, scope: !696, file: !20, line: 656, type: !699)
!705 = !DILocation(line: 656, column: 42, scope: !696)
!706 = !DILocalVariable(name: "shrinkableOnly", arg: 2, scope: !696, file: !20, line: 657, type: !80)
!707 = !DILocation(line: 657, column: 26, scope: !696)
!708 = !DILocalVariable(name: "fp", scope: !696, file: !20, line: 659, type: !174)
!709 = !DILocation(line: 659, column: 11, scope: !696)
!710 = !DILocalVariable(name: "mnt", scope: !696, file: !20, line: 660, type: !233)
!711 = !DILocation(line: 660, column: 19, scope: !696)
!712 = !DILocalVariable(name: "rc", scope: !696, file: !20, line: 661, type: !80)
!713 = !DILocation(line: 661, column: 9, scope: !696)
!714 = !DILocation(line: 665, column: 20, scope: !696)
!715 = !DILocation(line: 665, column: 24, scope: !696)
!716 = !DILocation(line: 665, column: 4, scope: !696)
!717 = !DILocation(line: 668, column: 9, scope: !696)
!718 = !DILocation(line: 668, column: 7, scope: !696)
!719 = !DILocation(line: 669, column: 8, scope: !720)
!720 = distinct !DILexicalBlock(scope: !696, file: !20, line: 669, column: 8)
!721 = !DILocation(line: 669, column: 11, scope: !720)
!722 = !DILocation(line: 669, column: 8, scope: !696)
!723 = !DILocation(line: 670, column: 7, scope: !724)
!724 = distinct !DILexicalBlock(scope: !720, file: !20, line: 669, column: 19)
!725 = !DILocation(line: 671, column: 7, scope: !724)
!726 = !DILocation(line: 674, column: 4, scope: !696)
!727 = !DILocation(line: 676, column: 4, scope: !696)
!728 = !DILocation(line: 676, column: 35, scope: !729)
!729 = !DILexicalBlockFile(scope: !696, file: !20, discriminator: 1)
!730 = !DILocation(line: 676, column: 19, scope: !729)
!731 = !DILocation(line: 676, column: 17, scope: !729)
!732 = !DILocation(line: 676, column: 40, scope: !729)
!733 = !DILocation(line: 676, column: 4, scope: !729)
!734 = !DILocalVariable(name: "part", scope: !735, file: !20, line: 677, type: !165)
!735 = distinct !DILexicalBlock(scope: !696, file: !20, line: 676, column: 13)
!736 = !DILocation(line: 677, column: 23, scope: !735)
!737 = !DILocation(line: 677, column: 30, scope: !735)
!738 = !DILocation(line: 679, column: 11, scope: !739)
!739 = distinct !DILexicalBlock(scope: !735, file: !20, line: 679, column: 11)
!740 = !DILocation(line: 679, column: 16, scope: !739)
!741 = !DILocation(line: 679, column: 11, scope: !735)
!742 = !DILocation(line: 680, column: 10, scope: !743)
!743 = distinct !DILexicalBlock(scope: !739, file: !20, line: 679, column: 24)
!744 = !DILocation(line: 681, column: 13, scope: !743)
!745 = !DILocation(line: 682, column: 10, scope: !743)
!746 = !DILocation(line: 685, column: 24, scope: !747)
!747 = distinct !DILexicalBlock(scope: !735, file: !20, line: 685, column: 11)
!748 = !DILocation(line: 685, column: 30, scope: !747)
!749 = !DILocation(line: 686, column: 24, scope: !747)
!750 = !DILocation(line: 686, column: 29, scope: !747)
!751 = !DILocation(line: 685, column: 11, scope: !747)
!752 = !DILocation(line: 686, column: 38, scope: !747)
!753 = !DILocation(line: 685, column: 11, scope: !735)
!754 = !DILocation(line: 687, column: 10, scope: !755)
!755 = distinct !DILexicalBlock(scope: !747, file: !20, line: 686, column: 45)
!756 = !DILocation(line: 688, column: 37, scope: !755)
!757 = !DILocation(line: 688, column: 10, scope: !755)
!758 = !DILocation(line: 689, column: 13, scope: !755)
!759 = !DILocation(line: 690, column: 10, scope: !755)
!760 = !DILocation(line: 693, column: 28, scope: !735)
!761 = !DILocation(line: 693, column: 34, scope: !735)
!762 = !DILocation(line: 693, column: 39, scope: !735)
!763 = !DILocation(line: 693, column: 7, scope: !735)
!764 = !DILocation(line: 694, column: 27, scope: !735)
!765 = !DILocation(line: 694, column: 31, scope: !735)
!766 = !DILocation(line: 694, column: 38, scope: !735)
!767 = !DILocation(line: 694, column: 44, scope: !735)
!768 = !DILocation(line: 694, column: 7, scope: !735)
!769 = !DILocation(line: 676, column: 4, scope: !770)
!770 = !DILexicalBlockFile(scope: !696, file: !20, discriminator: 2)
!771 = distinct !{!771, !727}
!772 = !DILocation(line: 697, column: 9, scope: !773)
!773 = distinct !DILexicalBlock(scope: !696, file: !20, line: 697, column: 8)
!774 = !DILocation(line: 697, column: 8, scope: !696)
!775 = !DILocation(line: 698, column: 28, scope: !773)
!776 = !DILocation(line: 698, column: 7, scope: !773)
!777 = !DILocation(line: 700, column: 22, scope: !696)
!778 = !DILocation(line: 700, column: 12, scope: !696)
!779 = !DILocation(line: 700, column: 26, scope: !696)
!780 = !DILocation(line: 701, column: 11, scope: !696)
!781 = !DILocation(line: 701, column: 4, scope: !696)
!782 = !DILocation(line: 702, column: 1, scope: !696)
!783 = distinct !DISubprogram(name: "DblLnkLst_Init", scope: !87, file: !87, line: 122, type: !784, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !131)
!784 = !DISubroutineType(types: !785)
!785 = !{null, !786}
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!787 = !DILocalVariable(name: "l", arg: 1, scope: !783, file: !87, line: 122, type: !786)
!788 = !DILocation(line: 122, column: 33, scope: !783)
!789 = !DILocation(line: 124, column: 24, scope: !783)
!790 = !DILocation(line: 124, column: 14, scope: !783)
!791 = !DILocation(line: 124, column: 17, scope: !783)
!792 = !DILocation(line: 124, column: 22, scope: !783)
!793 = !DILocation(line: 124, column: 4, scope: !783)
!794 = !DILocation(line: 124, column: 7, scope: !783)
!795 = !DILocation(line: 124, column: 12, scope: !783)
!796 = !DILocation(line: 125, column: 1, scope: !783)
!797 = distinct !DISubprogram(name: "DblLnkLst_LinkLast", scope: !87, file: !87, line: 284, type: !798, isLocal: true, isDefinition: true, scopeLine: 286, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !131)
!798 = !DISubroutineType(types: !799)
!799 = !{null, !786, !786}
!800 = !DILocalVariable(name: "head", arg: 1, scope: !797, file: !87, line: 284, type: !786)
!801 = !DILocation(line: 284, column: 37, scope: !797)
!802 = !DILocalVariable(name: "l", arg: 2, scope: !797, file: !87, line: 285, type: !786)
!803 = !DILocation(line: 285, column: 37, scope: !797)
!804 = !DILocation(line: 287, column: 19, scope: !797)
!805 = !DILocation(line: 287, column: 25, scope: !797)
!806 = !DILocation(line: 287, column: 4, scope: !797)
!807 = !DILocation(line: 288, column: 1, scope: !797)
!808 = distinct !DISubprogram(name: "Wiper_IsWipeSupported", scope: !20, file: !20, line: 722, type: !809, isLocal: false, isDefinition: true, scopeLine: 723, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !131)
!809 = !DISubroutineType(types: !810)
!810 = !{!80, !67}
!811 = !DILocalVariable(name: "part", arg: 1, scope: !808, file: !20, line: 722, type: !67)
!812 = !DILocation(line: 722, column: 45, scope: !808)
!813 = !DILocation(line: 724, column: 4, scope: !808)
!814 = distinct !DISubprogram(name: "Wiper_Start", scope: !20, file: !20, line: 746, type: !815, isLocal: false, isDefinition: true, scopeLine: 748, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !131)
!815 = !DISubroutineType(types: !816)
!816 = !{!817, !67, !115}
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64, align: 64)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "Wiper_State", file: !4, line: 114, baseType: !819)
!819 = !DICompositeType(tag: DW_TAG_structure_type, name: "Wiper_State", file: !4, line: 113, flags: DIFlagFwdDecl)
!820 = !DILocalVariable(name: "p", arg: 1, scope: !814, file: !20, line: 746, type: !67)
!821 = !DILocation(line: 746, column: 35, scope: !814)
!822 = !DILocalVariable(name: "maxWiperFileSize", arg: 2, scope: !814, file: !20, line: 747, type: !115)
!823 = !DILocation(line: 747, column: 26, scope: !814)
!824 = !DILocalVariable(name: "state", scope: !814, file: !20, line: 749, type: !60)
!825 = !DILocation(line: 749, column: 16, scope: !814)
!826 = !DILocation(line: 751, column: 26, scope: !814)
!827 = !DILocation(line: 751, column: 12, scope: !814)
!828 = !DILocation(line: 751, column: 10, scope: !814)
!829 = !DILocation(line: 752, column: 8, scope: !830)
!830 = distinct !DILexicalBlock(scope: !814, file: !20, line: 752, column: 8)
!831 = !DILocation(line: 752, column: 14, scope: !830)
!832 = !DILocation(line: 752, column: 8, scope: !814)
!833 = !DILocation(line: 753, column: 7, scope: !834)
!834 = distinct !DILexicalBlock(scope: !830, file: !20, line: 752, column: 22)
!835 = !DILocation(line: 757, column: 4, scope: !814)
!836 = !DILocation(line: 757, column: 11, scope: !814)
!837 = !DILocation(line: 757, column: 17, scope: !814)
!838 = !DILocation(line: 758, column: 15, scope: !814)
!839 = !DILocation(line: 758, column: 4, scope: !814)
!840 = !DILocation(line: 758, column: 11, scope: !814)
!841 = !DILocation(line: 758, column: 13, scope: !814)
!842 = !DILocation(line: 759, column: 4, scope: !814)
!843 = !DILocation(line: 759, column: 11, scope: !814)
!844 = !DILocation(line: 759, column: 13, scope: !814)
!845 = !DILocation(line: 760, column: 4, scope: !814)
!846 = !DILocation(line: 760, column: 11, scope: !814)
!847 = !DILocation(line: 760, column: 14, scope: !814)
!848 = !DILocation(line: 761, column: 11, scope: !814)
!849 = !DILocation(line: 761, column: 18, scope: !814)
!850 = !DILocation(line: 761, column: 4, scope: !814)
!851 = !DILocation(line: 762, column: 18, scope: !814)
!852 = !DILocation(line: 762, column: 4, scope: !814)
!853 = !DILocation(line: 762, column: 11, scope: !814)
!854 = !DILocation(line: 762, column: 16, scope: !814)
!855 = !DILocation(line: 764, column: 19, scope: !814)
!856 = !DILocation(line: 764, column: 11, scope: !814)
!857 = !DILocation(line: 764, column: 4, scope: !814)
!858 = !DILocation(line: 765, column: 1, scope: !814)
!859 = distinct !DISubprogram(name: "Wiper_Next", scope: !20, file: !20, line: 853, type: !860, isLocal: false, isDefinition: true, scopeLine: 855, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !131)
!860 = !DISubroutineType(types: !861)
!861 = !{!605, !862, !863}
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64, align: 64)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, align: 64)
!864 = !DILocalVariable(name: "s", arg: 1, scope: !859, file: !20, line: 853, type: !862)
!865 = !DILocation(line: 853, column: 26, scope: !859)
!866 = !DILocalVariable(name: "progress", arg: 2, scope: !859, file: !20, line: 854, type: !863)
!867 = !DILocation(line: 854, column: 26, scope: !859)
!868 = !DILocalVariable(name: "state", scope: !859, file: !20, line: 856, type: !125)
!869 = !DILocation(line: 856, column: 17, scope: !859)
!870 = !DILocalVariable(name: "free", scope: !859, file: !20, line: 857, type: !55)
!871 = !DILocation(line: 857, column: 11, scope: !859)
!872 = !DILocalVariable(name: "total", scope: !859, file: !20, line: 858, type: !55)
!873 = !DILocation(line: 858, column: 11, scope: !859)
!874 = !DILocalVariable(name: "error", scope: !859, file: !20, line: 859, type: !605)
!875 = !DILocation(line: 859, column: 19, scope: !859)
!876 = !DILocation(line: 863, column: 27, scope: !859)
!877 = !DILocation(line: 863, column: 12, scope: !859)
!878 = !DILocation(line: 863, column: 10, scope: !859)
!879 = !DILocation(line: 865, column: 27, scope: !859)
!880 = !DILocation(line: 865, column: 26, scope: !859)
!881 = !DILocation(line: 865, column: 12, scope: !859)
!882 = !DILocation(line: 865, column: 10, scope: !859)
!883 = !DILocation(line: 866, column: 9, scope: !884)
!884 = distinct !DILexicalBlock(scope: !859, file: !20, line: 866, column: 8)
!885 = !DILocation(line: 866, column: 8, scope: !884)
!886 = !DILocation(line: 866, column: 15, scope: !884)
!887 = !DILocation(line: 866, column: 8, scope: !859)
!888 = !DILocation(line: 867, column: 19, scope: !889)
!889 = distinct !DILexicalBlock(scope: !884, file: !20, line: 866, column: 24)
!890 = !DILocation(line: 867, column: 18, scope: !889)
!891 = !DILocation(line: 867, column: 7, scope: !889)
!892 = !DILocation(line: 868, column: 8, scope: !889)
!893 = !DILocation(line: 868, column: 14, scope: !889)
!894 = !DILocation(line: 869, column: 14, scope: !889)
!895 = !DILocation(line: 869, column: 7, scope: !889)
!896 = !DILocation(line: 874, column: 8, scope: !897)
!897 = distinct !DILexicalBlock(scope: !859, file: !20, line: 874, column: 8)
!898 = !DILocation(line: 874, column: 13, scope: !897)
!899 = !DILocation(line: 874, column: 8, scope: !859)
!900 = !DILocation(line: 876, column: 19, scope: !901)
!901 = distinct !DILexicalBlock(scope: !897, file: !20, line: 874, column: 38)
!902 = !DILocation(line: 876, column: 18, scope: !901)
!903 = !DILocation(line: 876, column: 7, scope: !901)
!904 = !DILocation(line: 877, column: 8, scope: !901)
!905 = !DILocation(line: 877, column: 14, scope: !901)
!906 = !DILocation(line: 878, column: 8, scope: !901)
!907 = !DILocation(line: 878, column: 17, scope: !901)
!908 = !DILocation(line: 879, column: 7, scope: !901)
!909 = !DILocation(line: 883, column: 14, scope: !859)
!910 = !DILocation(line: 883, column: 13, scope: !859)
!911 = !DILocation(line: 883, column: 22, scope: !859)
!912 = !DILocation(line: 883, column: 4, scope: !859)
!913 = !DILocalVariable(name: "new", scope: !914, file: !20, line: 886, type: !94)
!914 = distinct !DILexicalBlock(scope: !915, file: !20, line: 885, column: 7)
!915 = distinct !DILexicalBlock(scope: !859, file: !20, line: 883, column: 29)
!916 = !DILocation(line: 886, column: 16, scope: !914)
!917 = !DILocation(line: 888, column: 24, scope: !914)
!918 = !DILocation(line: 888, column: 16, scope: !914)
!919 = !DILocation(line: 888, column: 14, scope: !914)
!920 = !DILocation(line: 889, column: 14, scope: !921)
!921 = distinct !DILexicalBlock(scope: !914, file: !20, line: 889, column: 14)
!922 = !DILocation(line: 889, column: 18, scope: !921)
!923 = !DILocation(line: 889, column: 14, scope: !914)
!924 = !DILocation(line: 890, column: 25, scope: !925)
!925 = distinct !DILexicalBlock(scope: !921, file: !20, line: 889, column: 26)
!926 = !DILocation(line: 890, column: 24, scope: !925)
!927 = !DILocation(line: 890, column: 13, scope: !925)
!928 = !DILocation(line: 891, column: 14, scope: !925)
!929 = !DILocation(line: 891, column: 20, scope: !925)
!930 = !DILocation(line: 892, column: 13, scope: !925)
!931 = !DILocation(line: 901, column: 10, scope: !914)
!932 = !DILocalVariable(name: "fret", scope: !933, file: !20, line: 902, type: !936)
!933 = distinct !DILexicalBlock(scope: !934, file: !20, line: 901, column: 19)
!934 = distinct !DILexicalBlock(scope: !935, file: !20, line: 901, column: 10)
!935 = distinct !DILexicalBlock(scope: !914, file: !20, line: 901, column: 10)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "FileIOResult", file: !25, line: 318, baseType: !24)
!937 = !DILocation(line: 902, column: 26, scope: !933)
!938 = !DILocation(line: 903, column: 32, scope: !933)
!939 = !DILocation(line: 903, column: 37, scope: !933)
!940 = !DILocation(line: 903, column: 13, scope: !933)
!941 = !DILocation(line: 905, column: 30, scope: !942)
!942 = distinct !DILexicalBlock(scope: !933, file: !20, line: 905, column: 17)
!943 = !DILocation(line: 905, column: 35, scope: !942)
!944 = !DILocation(line: 906, column: 32, scope: !942)
!945 = !DILocation(line: 906, column: 31, scope: !942)
!946 = !DILocation(line: 906, column: 40, scope: !942)
!947 = !DILocation(line: 906, column: 43, scope: !942)
!948 = !DILocation(line: 906, column: 30, scope: !942)
!949 = !DILocation(line: 906, column: 57, scope: !942)
!950 = !DILocation(line: 906, column: 56, scope: !942)
!951 = !DILocation(line: 906, column: 65, scope: !942)
!952 = !DILocation(line: 906, column: 67, scope: !942)
!953 = !DILocation(line: 905, column: 17, scope: !942)
!954 = !DILocation(line: 906, column: 71, scope: !942)
!955 = !DILocation(line: 905, column: 17, scope: !933)
!956 = !DILocation(line: 907, column: 16, scope: !957)
!957 = distinct !DILexicalBlock(scope: !942, file: !20, line: 906, column: 78)
!958 = !DILocation(line: 909, column: 13, scope: !957)
!959 = !DILocation(line: 911, column: 33, scope: !933)
!960 = !DILocation(line: 911, column: 38, scope: !933)
!961 = !DILocation(line: 912, column: 32, scope: !933)
!962 = !DILocation(line: 912, column: 37, scope: !933)
!963 = !DILocation(line: 911, column: 20, scope: !933)
!964 = !DILocation(line: 911, column: 18, scope: !933)
!965 = !DILocation(line: 916, column: 34, scope: !966)
!966 = distinct !DILexicalBlock(scope: !933, file: !20, line: 916, column: 17)
!967 = !DILocation(line: 916, column: 17, scope: !966)
!968 = !DILocation(line: 916, column: 17, scope: !933)
!969 = !DILocation(line: 917, column: 16, scope: !970)
!970 = distinct !DILexicalBlock(scope: !966, file: !20, line: 916, column: 41)
!971 = !DILocation(line: 920, column: 17, scope: !972)
!972 = distinct !DILexicalBlock(scope: !933, file: !20, line: 920, column: 17)
!973 = !DILocation(line: 920, column: 22, scope: !972)
!974 = !DILocation(line: 920, column: 17, scope: !933)
!975 = !DILocation(line: 921, column: 28, scope: !976)
!976 = distinct !DILexicalBlock(scope: !972, file: !20, line: 920, column: 50)
!977 = !DILocation(line: 921, column: 27, scope: !976)
!978 = !DILocation(line: 921, column: 16, scope: !976)
!979 = !DILocation(line: 922, column: 17, scope: !976)
!980 = !DILocation(line: 922, column: 23, scope: !976)
!981 = !DILocation(line: 923, column: 16, scope: !976)
!982 = !DILocation(line: 901, column: 10, scope: !983)
!983 = !DILexicalBlockFile(scope: !934, file: !20, discriminator: 1)
!984 = distinct !{!984, !931}
!985 = !DILocation(line: 926, column: 10, scope: !914)
!986 = !DILocation(line: 926, column: 15, scope: !914)
!987 = !DILocation(line: 926, column: 20, scope: !914)
!988 = !DILocation(line: 928, column: 24, scope: !914)
!989 = !DILocation(line: 928, column: 23, scope: !914)
!990 = !DILocation(line: 928, column: 32, scope: !914)
!991 = !DILocation(line: 928, column: 10, scope: !914)
!992 = !DILocation(line: 928, column: 15, scope: !914)
!993 = !DILocation(line: 928, column: 20, scope: !914)
!994 = !DILocation(line: 929, column: 24, scope: !914)
!995 = !DILocation(line: 929, column: 12, scope: !914)
!996 = !DILocation(line: 929, column: 11, scope: !914)
!997 = !DILocation(line: 929, column: 20, scope: !914)
!998 = !DILocation(line: 929, column: 22, scope: !914)
!999 = !DILocation(line: 931, column: 9, scope: !915)
!1000 = !DILocation(line: 931, column: 8, scope: !915)
!1001 = !DILocation(line: 931, column: 17, scope: !915)
!1002 = !DILocation(line: 931, column: 23, scope: !915)
!1003 = !DILocation(line: 932, column: 7, scope: !915)
!1004 = !DILocalVariable(name: "i", scope: !1005, file: !20, line: 936, type: !115)
!1005 = distinct !DILexicalBlock(scope: !915, file: !20, line: 935, column: 7)
!1006 = !DILocation(line: 936, column: 23, scope: !1005)
!1007 = !DILocation(line: 939, column: 17, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1005, file: !20, line: 939, column: 10)
!1009 = !DILocation(line: 939, column: 15, scope: !1008)
!1010 = !DILocation(line: 939, column: 22, scope: !1011)
!1011 = !DILexicalBlockFile(scope: !1012, file: !20, discriminator: 1)
!1012 = distinct !DILexicalBlock(scope: !1008, file: !20, line: 939, column: 10)
!1013 = !DILocation(line: 939, column: 24, scope: !1011)
!1014 = !DILocation(line: 939, column: 10, scope: !1011)
!1015 = !DILocalVariable(name: "fret", scope: !1016, file: !20, line: 941, type: !936)
!1016 = distinct !DILexicalBlock(scope: !1012, file: !20, line: 940, column: 46)
!1017 = !DILocation(line: 941, column: 26, scope: !1016)
!1018 = !DILocation(line: 943, column: 19, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1016, file: !20, line: 943, column: 17)
!1020 = !DILocation(line: 943, column: 18, scope: !1019)
!1021 = !DILocation(line: 943, column: 27, scope: !1019)
!1022 = !DILocation(line: 943, column: 30, scope: !1019)
!1023 = !DILocation(line: 943, column: 35, scope: !1019)
!1024 = !DILocation(line: 943, column: 47, scope: !1019)
!1025 = !DILocation(line: 943, column: 17, scope: !1016)
!1026 = !DILocation(line: 947, column: 18, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1019, file: !20, line: 944, column: 39)
!1028 = !DILocation(line: 947, column: 17, scope: !1027)
!1029 = !DILocation(line: 947, column: 26, scope: !1027)
!1030 = !DILocation(line: 947, column: 32, scope: !1027)
!1031 = !DILocation(line: 948, column: 16, scope: !1027)
!1032 = !DILocation(line: 951, column: 36, scope: !1016)
!1033 = !DILocation(line: 951, column: 35, scope: !1016)
!1034 = !DILocation(line: 951, column: 44, scope: !1016)
!1035 = !DILocation(line: 951, column: 47, scope: !1016)
!1036 = !DILocation(line: 951, column: 53, scope: !1016)
!1037 = !DILocation(line: 951, column: 52, scope: !1016)
!1038 = !DILocation(line: 951, column: 61, scope: !1016)
!1039 = !DILocation(line: 951, column: 51, scope: !1016)
!1040 = !DILocation(line: 951, column: 20, scope: !1016)
!1041 = !DILocation(line: 951, column: 18, scope: !1016)
!1042 = !DILocation(line: 957, column: 35, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1016, file: !20, line: 957, column: 17)
!1044 = !DILocation(line: 957, column: 18, scope: !1043)
!1045 = !DILocation(line: 957, column: 17, scope: !1016)
!1046 = !DILocation(line: 959, column: 20, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !20, line: 959, column: 20)
!1048 = distinct !DILexicalBlock(scope: !1043, file: !20, line: 957, column: 42)
!1049 = !DILocation(line: 959, column: 25, scope: !1047)
!1050 = !DILocation(line: 959, column: 20, scope: !1048)
!1051 = !DILocation(line: 960, column: 21, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1047, file: !20, line: 959, column: 53)
!1053 = !DILocation(line: 960, column: 20, scope: !1052)
!1054 = !DILocation(line: 960, column: 29, scope: !1052)
!1055 = !DILocation(line: 960, column: 35, scope: !1052)
!1056 = !DILocation(line: 962, column: 19, scope: !1052)
!1057 = !DILocation(line: 969, column: 20, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1048, file: !20, line: 969, column: 20)
!1059 = !DILocation(line: 969, column: 25, scope: !1058)
!1060 = !DILocation(line: 969, column: 20, scope: !1048)
!1061 = !DILocation(line: 970, column: 31, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1058, file: !20, line: 969, column: 54)
!1063 = !DILocation(line: 970, column: 30, scope: !1062)
!1064 = !DILocation(line: 970, column: 19, scope: !1062)
!1065 = !DILocation(line: 971, column: 20, scope: !1062)
!1066 = !DILocation(line: 971, column: 26, scope: !1062)
!1067 = !DILocation(line: 972, column: 20, scope: !1062)
!1068 = !DILocation(line: 972, column: 29, scope: !1062)
!1069 = !DILocation(line: 973, column: 19, scope: !1062)
!1070 = !DILocation(line: 977, column: 28, scope: !1048)
!1071 = !DILocation(line: 977, column: 27, scope: !1048)
!1072 = !DILocation(line: 977, column: 16, scope: !1048)
!1073 = !DILocation(line: 978, column: 17, scope: !1048)
!1074 = !DILocation(line: 978, column: 23, scope: !1048)
!1075 = !DILocation(line: 979, column: 23, scope: !1048)
!1076 = !DILocation(line: 979, column: 27, scope: !1048)
!1077 = !DILocation(line: 979, column: 16, scope: !1048)
!1078 = !DILocation(line: 983, column: 15, scope: !1016)
!1079 = !DILocation(line: 983, column: 14, scope: !1016)
!1080 = !DILocation(line: 983, column: 23, scope: !1016)
!1081 = !DILocation(line: 983, column: 26, scope: !1016)
!1082 = !DILocation(line: 983, column: 31, scope: !1016)
!1083 = !DILocation(line: 984, column: 10, scope: !1016)
!1084 = !DILocation(line: 940, column: 42, scope: !1012)
!1085 = !DILocation(line: 939, column: 10, scope: !1086)
!1086 = !DILexicalBlockFile(scope: !1012, file: !20, discriminator: 2)
!1087 = distinct !{!1087, !1088}
!1088 = !DILocation(line: 939, column: 10, scope: !1005)
!1089 = !DILocation(line: 986, column: 7, scope: !915)
!1090 = !DILocation(line: 989, column: 30, scope: !915)
!1091 = !DILocation(line: 989, column: 29, scope: !915)
!1092 = !DILocation(line: 989, column: 38, scope: !915)
!1093 = !DILocation(line: 989, column: 7, scope: !915)
!1094 = !DILocation(line: 991, column: 7, scope: !915)
!1095 = !DILocation(line: 994, column: 26, scope: !859)
!1096 = !DILocation(line: 994, column: 24, scope: !859)
!1097 = !DILocation(line: 994, column: 33, scope: !859)
!1098 = !DILocation(line: 994, column: 31, scope: !859)
!1099 = !DILocation(line: 994, column: 19, scope: !859)
!1100 = !DILocation(line: 994, column: 16, scope: !859)
!1101 = !DILocation(line: 994, column: 5, scope: !859)
!1102 = !DILocation(line: 994, column: 14, scope: !859)
!1103 = !DILocation(line: 995, column: 4, scope: !859)
!1104 = !DILocation(line: 996, column: 1, scope: !859)
!1105 = distinct !DISubprogram(name: "WiperGetSpace", scope: !20, file: !20, line: 786, type: !1106, isLocal: true, isDefinition: true, scopeLine: 789, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !131)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!605, !60, !606, !606}
!1108 = !DILocalVariable(name: "state", arg: 1, scope: !1105, file: !20, line: 786, type: !60)
!1109 = !DILocation(line: 786, column: 27, scope: !1105)
!1110 = !DILocalVariable(name: "free", arg: 2, scope: !1105, file: !20, line: 787, type: !606)
!1111 = !DILocation(line: 787, column: 23, scope: !1105)
!1112 = !DILocalVariable(name: "total", arg: 3, scope: !1105, file: !20, line: 788, type: !606)
!1113 = !DILocation(line: 788, column: 23, scope: !1105)
!1114 = !DILocation(line: 791, column: 41, scope: !1105)
!1115 = !DILocation(line: 791, column: 48, scope: !1105)
!1116 = !DILocation(line: 791, column: 56, scope: !1105)
!1117 = !DILocation(line: 791, column: 62, scope: !1105)
!1118 = !DILocation(line: 791, column: 11, scope: !1105)
!1119 = !DILocation(line: 791, column: 4, scope: !1105)
!1120 = distinct !DISubprogram(name: "WiperClean", scope: !20, file: !20, line: 812, type: !1121, isLocal: true, isDefinition: true, scopeLine: 813, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !131)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{null, !60}
!1123 = !DILocalVariable(name: "state", arg: 1, scope: !1120, file: !20, line: 812, type: !60)
!1124 = !DILocation(line: 812, column: 24, scope: !1120)
!1125 = !DILocation(line: 816, column: 4, scope: !1120)
!1126 = !DILocation(line: 816, column: 11, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !1120, file: !20, discriminator: 1)
!1128 = !DILocation(line: 816, column: 18, scope: !1127)
!1129 = !DILocation(line: 816, column: 20, scope: !1127)
!1130 = !DILocation(line: 816, column: 4, scope: !1127)
!1131 = !DILocalVariable(name: "next", scope: !1132, file: !20, line: 817, type: !94)
!1132 = distinct !DILexicalBlock(scope: !1120, file: !20, line: 816, column: 28)
!1133 = !DILocation(line: 817, column: 13, scope: !1132)
!1134 = !DILocation(line: 819, column: 21, scope: !1132)
!1135 = !DILocation(line: 819, column: 28, scope: !1132)
!1136 = !DILocation(line: 819, column: 31, scope: !1132)
!1137 = !DILocation(line: 819, column: 7, scope: !1132)
!1138 = !DILocation(line: 820, column: 14, scope: !1132)
!1139 = !DILocation(line: 820, column: 21, scope: !1132)
!1140 = !DILocation(line: 820, column: 24, scope: !1132)
!1141 = !DILocation(line: 820, column: 12, scope: !1132)
!1142 = !DILocation(line: 821, column: 12, scope: !1132)
!1143 = !DILocation(line: 821, column: 19, scope: !1132)
!1144 = !DILocation(line: 821, column: 7, scope: !1132)
!1145 = !DILocation(line: 822, column: 18, scope: !1132)
!1146 = !DILocation(line: 822, column: 7, scope: !1132)
!1147 = !DILocation(line: 822, column: 14, scope: !1132)
!1148 = !DILocation(line: 822, column: 16, scope: !1132)
!1149 = !DILocation(line: 816, column: 4, scope: !1150)
!1150 = !DILexicalBlockFile(scope: !1120, file: !20, discriminator: 2)
!1151 = distinct !{!1151, !1125}
!1152 = !DILocation(line: 825, column: 9, scope: !1120)
!1153 = !DILocation(line: 825, column: 4, scope: !1120)
!1154 = !DILocation(line: 826, column: 1, scope: !1120)
!1155 = distinct !DISubprogram(name: "FileIO_IsSuccess", scope: !25, file: !25, line: 514, type: !1156, isLocal: true, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !131)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!80, !936}
!1158 = !DILocalVariable(name: "res", arg: 1, scope: !1155, file: !25, line: 514, type: !936)
!1159 = !DILocation(line: 514, column: 31, scope: !1155)
!1160 = !DILocation(line: 516, column: 11, scope: !1155)
!1161 = !DILocation(line: 516, column: 15, scope: !1155)
!1162 = !DILocation(line: 516, column: 4, scope: !1155)
!1163 = distinct !DISubprogram(name: "Wiper_Cancel", scope: !20, file: !20, line: 1017, type: !1164, isLocal: false, isDefinition: true, scopeLine: 1018, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !131)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!605, !862}
!1166 = !DILocalVariable(name: "s", arg: 1, scope: !1163, file: !20, line: 1017, type: !862)
!1167 = !DILocation(line: 1017, column: 28, scope: !1163)
!1168 = !DILocation(line: 1019, column: 8, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1163, file: !20, line: 1019, column: 8)
!1170 = !DILocation(line: 1019, column: 10, scope: !1169)
!1171 = !DILocation(line: 1019, column: 14, scope: !1172)
!1172 = !DILexicalBlockFile(scope: !1169, file: !20, discriminator: 1)
!1173 = !DILocation(line: 1019, column: 13, scope: !1172)
!1174 = !DILocation(line: 1019, column: 8, scope: !1172)
!1175 = !DILocation(line: 1020, column: 33, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1169, file: !20, line: 1019, column: 17)
!1177 = !DILocation(line: 1020, column: 32, scope: !1176)
!1178 = !DILocation(line: 1020, column: 18, scope: !1176)
!1179 = !DILocation(line: 1020, column: 7, scope: !1176)
!1180 = !DILocation(line: 1021, column: 8, scope: !1176)
!1181 = !DILocation(line: 1021, column: 10, scope: !1176)
!1182 = !DILocation(line: 1022, column: 4, scope: !1176)
!1183 = !DILocation(line: 1023, column: 4, scope: !1163)
!1184 = distinct !DISubprogram(name: "Wiper_Init", scope: !20, file: !20, line: 1048, type: !1185, isLocal: false, isDefinition: true, scopeLine: 1049, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !131)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!80, !1187}
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64, align: 64)
!1188 = !DIDerivedType(tag: DW_TAG_typedef, name: "WiperInitData", file: !4, line: 96, baseType: !1189)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "WiperInitData", file: !4, line: 92, align: 8, elements: !131)
!1190 = !DILocalVariable(name: "clientData", arg: 1, scope: !1184, file: !20, line: 1048, type: !1187)
!1191 = !DILocation(line: 1048, column: 27, scope: !1184)
!1192 = !DILocation(line: 1050, column: 20, scope: !1184)
!1193 = !DILocation(line: 1050, column: 4, scope: !1184)
!1194 = distinct !DISubprogram(name: "WiperIsDiskDevice", scope: !20, file: !20, line: 318, type: !1195, isLocal: true, isDefinition: true, scopeLine: 320, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !131)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!80, !233, !1197}
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64, align: 64)
!1198 = !DILocalVariable(name: "mnt", arg: 1, scope: !1194, file: !20, line: 318, type: !233)
!1199 = !DILocation(line: 318, column: 34, scope: !1194)
!1200 = !DILocalVariable(name: "s", arg: 2, scope: !1194, file: !20, line: 319, type: !1197)
!1201 = !DILocation(line: 319, column: 32, scope: !1194)
!1202 = !DILocalVariable(name: "majorN", scope: !1194, file: !20, line: 321, type: !104)
!1203 = !DILocation(line: 321, column: 8, scope: !1194)
!1204 = !DILocation(line: 321, column: 16, scope: !1194)
!1205 = !DILocation(line: 321, column: 19, scope: !1194)
!1206 = !DILocalVariable(name: "i", scope: !1194, file: !20, line: 322, type: !104)
!1207 = !DILocation(line: 322, column: 8, scope: !1194)
!1208 = !DILocation(line: 324, column: 11, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1194, file: !20, line: 324, column: 4)
!1210 = !DILocation(line: 324, column: 9, scope: !1209)
!1211 = !DILocation(line: 324, column: 16, scope: !1212)
!1212 = !DILexicalBlockFile(scope: !1213, file: !20, discriminator: 1)
!1213 = distinct !DILexicalBlock(scope: !1209, file: !20, line: 324, column: 4)
!1214 = !DILocation(line: 324, column: 20, scope: !1212)
!1215 = !DILocation(line: 324, column: 18, scope: !1212)
!1216 = !DILocation(line: 324, column: 4, scope: !1212)
!1217 = !DILocation(line: 325, column: 11, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1219, file: !20, line: 325, column: 11)
!1219 = distinct !DILexicalBlock(scope: !1213, file: !20, line: 324, column: 40)
!1220 = !DILocation(line: 325, column: 36, scope: !1218)
!1221 = !DILocation(line: 325, column: 21, scope: !1218)
!1222 = !DILocation(line: 325, column: 18, scope: !1218)
!1223 = !DILocation(line: 325, column: 11, scope: !1219)
!1224 = !DILocation(line: 326, column: 10, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1218, file: !20, line: 325, column: 40)
!1226 = !DILocation(line: 328, column: 4, scope: !1219)
!1227 = !DILocation(line: 324, column: 36, scope: !1228)
!1228 = !DILexicalBlockFile(scope: !1213, file: !20, discriminator: 2)
!1229 = !DILocation(line: 324, column: 4, scope: !1228)
!1230 = distinct !{!1230, !1231}
!1231 = !DILocation(line: 324, column: 4, scope: !1194)
!1232 = !DILocation(line: 330, column: 4, scope: !1194)
!1233 = !DILocation(line: 331, column: 1, scope: !1194)
!1234 = distinct !DISubprogram(name: "DblLnkLst_Link", scope: !87, file: !87, line: 148, type: !798, isLocal: true, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !131)
!1235 = !DILocalVariable(name: "l1", arg: 1, scope: !1234, file: !87, line: 148, type: !786)
!1236 = !DILocation(line: 148, column: 33, scope: !1234)
!1237 = !DILocalVariable(name: "l2", arg: 2, scope: !1234, file: !87, line: 149, type: !786)
!1238 = !DILocation(line: 149, column: 33, scope: !1234)
!1239 = !DILocalVariable(name: "tmp", scope: !1234, file: !87, line: 151, type: !786)
!1240 = !DILocation(line: 151, column: 21, scope: !1234)
!1241 = !DILocation(line: 153, column: 29, scope: !1234)
!1242 = !DILocation(line: 153, column: 11, scope: !1234)
!1243 = !DILocation(line: 153, column: 15, scope: !1234)
!1244 = !DILocation(line: 153, column: 9, scope: !1234)
!1245 = !DILocation(line: 153, column: 22, scope: !1234)
!1246 = !DILocation(line: 153, column: 27, scope: !1234)
!1247 = !DILocation(line: 154, column: 34, scope: !1234)
!1248 = !DILocation(line: 154, column: 16, scope: !1234)
!1249 = !DILocation(line: 154, column: 20, scope: !1234)
!1250 = !DILocation(line: 154, column: 5, scope: !1234)
!1251 = !DILocation(line: 154, column: 9, scope: !1234)
!1252 = !DILocation(line: 154, column: 14, scope: !1234)
!1253 = !DILocation(line: 154, column: 27, scope: !1234)
!1254 = !DILocation(line: 154, column: 32, scope: !1234)
!1255 = !DILocation(line: 155, column: 16, scope: !1234)
!1256 = !DILocation(line: 155, column: 5, scope: !1234)
!1257 = !DILocation(line: 155, column: 9, scope: !1234)
!1258 = !DILocation(line: 155, column: 14, scope: !1234)
!1259 = !DILocation(line: 156, column: 1, scope: !1234)
