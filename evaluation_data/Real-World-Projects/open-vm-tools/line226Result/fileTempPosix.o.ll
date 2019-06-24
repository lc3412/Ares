; ModuleID = './fileTempPosix.o.i'
source_filename = "./fileTempPosix.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Atomic_uint64 = type { i64 }
%struct.MXUserExclLock = type opaque
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }

@FileGetSafeTmpDir.lckStorage = internal global %struct.Atomic_uint64 zeroinitializer, align 8
@FileGetSafeTmpDir.cachedDir = internal global i8* null, align 8
@FileGetSafeTmpDir.cachedEuid = internal global i32 0, align 4
@FileGetSafeTmpDir.cachedPidDir = internal global i8* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"getSafeTmpDirLock\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%s%s%s-%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"vmware\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"tmpDirectory\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"%s: Couldn't get a temporary directory\0A\00", align 1
@__FUNCTION__.FileGetTmpDir = private unnamed_addr constant [14 x i8] c"FileGetTmpDir\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"%s: Failed to get user name, using UID.\0A\00", align 1
@__FUNCTION__.FileGetUserIdentifier = private unnamed_addr constant [22 x i8] c"FileGetUserIdentifier\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"uid_%u\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"%s_%u\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"%s: sysconf(_SC_GETPW_R_SIZE_MAX) failed.\0A\00", align 1
@__FUNCTION__.FileGetUserName = private unnamed_addr constant [16 x i8] c"FileGetUserName\00", align 1
@.str.13 = private unnamed_addr constant [62 x i8] c"%s: Unable to retrieve the user name associated with UID %u.\0A\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"%s-%s-\00", align 1
@FileCreateSafeTmpDir.MAX_DIR_ITERS = internal constant i32 250, align 4
@.str.15 = private unnamed_addr constant [13 x i8] c"%s%s%s-%s-%u\00", align 1
@.str.16 = private unnamed_addr constant [106 x i8] c"%s: Failed to create a safe temporary directory, path \22%s\22. The maximum number of attempts was exceeded.\0A\00", align 1
@__FUNCTION__.FileCreateSafeTmpDir = private unnamed_addr constant [21 x i8] c"FileCreateSafeTmpDir\00", align 1
@FileAcceptableSafeTmpDir.mode = internal constant i32 448, align 4

; Function Attrs: nounwind uwtable
define i8* @File_GetSafeTmpDir(i8 signext) #0 !dbg !277 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !280, metadata !281), !dbg !282
  %3 = load i8, i8* %2, align 1, !dbg !283
  %4 = call i8* @FileGetSafeTmpDir(i8 signext %3, i8 signext 0), !dbg !284
  ret i8* %4, !dbg !285
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal i8* @FileGetSafeTmpDir(i8 signext, i8 signext) #0 !dbg !235 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.MXUserExclLock*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8 %0, i8* %3, align 1
  call void @llvm.dbg.declare(metadata i8* %3, metadata !286, metadata !281), !dbg !287
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !288, metadata !281), !dbg !289
  call void @llvm.dbg.declare(metadata i8** %5, metadata !290, metadata !281), !dbg !291
  store i8* null, i8** %5, align 8, !dbg !291
  call void @llvm.dbg.declare(metadata i32* %6, metadata !292, metadata !281), !dbg !293
  call void @llvm.dbg.declare(metadata i8** %7, metadata !294, metadata !281), !dbg !295
  call void @llvm.dbg.declare(metadata %struct.MXUserExclLock** %8, metadata !296, metadata !281), !dbg !297
  call void @llvm.dbg.declare(metadata i8** %9, metadata !298, metadata !281), !dbg !299
  store i8* null, i8** %9, align 8, !dbg !299
  call void @llvm.dbg.declare(metadata i8** %10, metadata !300, metadata !281), !dbg !301
  store i8* null, i8** %10, align 8, !dbg !301
  %12 = call %struct.MXUserExclLock* @MXUser_CreateSingletonExclLock(%struct.Atomic_uint64* @FileGetSafeTmpDir.lckStorage, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 -268406650), !dbg !302
  store %struct.MXUserExclLock* %12, %struct.MXUserExclLock** %8, align 8, !dbg !303
  %13 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %8, align 8, !dbg !304
  call void @MXUser_AcquireExclLock(%struct.MXUserExclLock* %13), !dbg !305
  %14 = call i32 @geteuid() #6, !dbg !306
  store i32 %14, i32* %6, align 4, !dbg !307
  %15 = load i8, i8* %4, align 1, !dbg !308
  %16 = sext i8 %15 to i32, !dbg !308
  %17 = icmp ne i32 %16, 0, !dbg !308
  br i1 %17, label %18, label %20, !dbg !308

; <label>:18:                                     ; preds = %2
  %19 = load i8*, i8** @FileGetSafeTmpDir.cachedPidDir, align 8, !dbg !309
  br label %22, !dbg !311

; <label>:20:                                     ; preds = %2
  %21 = load i8*, i8** @FileGetSafeTmpDir.cachedDir, align 8, !dbg !312
  br label %22, !dbg !314

; <label>:22:                                     ; preds = %20, %18
  %23 = phi i8* [ %19, %18 ], [ %21, %20 ], !dbg !315
  store i8* %23, i8** %7, align 8, !dbg !317
  %24 = load i32, i32* %6, align 4, !dbg !318
  %25 = load i32, i32* @FileGetSafeTmpDir.cachedEuid, align 4, !dbg !320
  %26 = icmp eq i32 %24, %25, !dbg !321
  br i1 %26, label %27, label %39, !dbg !322

; <label>:27:                                     ; preds = %22
  %28 = load i8*, i8** %7, align 8, !dbg !323
  %29 = icmp ne i8* %28, null, !dbg !324
  br i1 %29, label %30, label %39, !dbg !325

; <label>:30:                                     ; preds = %27
  %31 = load i8*, i8** %7, align 8, !dbg !326
  %32 = load i32, i32* %6, align 4, !dbg !327
  %33 = call signext i8 @FileAcceptableSafeTmpDir(i8* %31, i32 %32), !dbg !328
  %34 = sext i8 %33 to i32, !dbg !328
  %35 = icmp ne i32 %34, 0, !dbg !328
  br i1 %35, label %36, label %39, !dbg !329

; <label>:36:                                     ; preds = %30
  %37 = load i8*, i8** %7, align 8, !dbg !330
  %38 = call i8* @UtilSafeStrdup0(i8* %37), !dbg !332
  store i8* %38, i8** %5, align 8, !dbg !333
  br label %106, !dbg !334

; <label>:39:                                     ; preds = %30, %27, %22
  %40 = load i8, i8* %3, align 1, !dbg !335
  %41 = call i8* @FileGetTmpDir(i8 signext %40), !dbg !336
  store i8* %41, i8** %10, align 8, !dbg !337
  %42 = load i8*, i8** %10, align 8, !dbg !338
  %43 = icmp eq i8* %42, null, !dbg !340
  br i1 %43, label %44, label %45, !dbg !341

; <label>:44:                                     ; preds = %39
  br label %106, !dbg !342

; <label>:45:                                     ; preds = %39
  %46 = load i32, i32* %6, align 4, !dbg !344
  %47 = load i8, i8* %4, align 1, !dbg !345
  %48 = call i8* @FileGetUserIdentifier(i32 %46, i8 signext %47), !dbg !346
  store i8* %48, i8** %9, align 8, !dbg !347
  %49 = load i8*, i8** %10, align 8, !dbg !348
  %50 = load i8*, i8** %9, align 8, !dbg !349
  %51 = call i8* (i64*, i8*, ...) @Str_SafeAsprintf(i64* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* %50), !dbg !350
  store i8* %51, i8** %5, align 8, !dbg !351
  %52 = load i8, i8* %4, align 1, !dbg !352
  %53 = sext i8 %52 to i32, !dbg !352
  %54 = icmp ne i32 %53, 0, !dbg !352
  br i1 %54, label %60, label %55, !dbg !354

; <label>:55:                                     ; preds = %45
  %56 = load i8*, i8** %5, align 8, !dbg !355
  %57 = load i32, i32* %6, align 4, !dbg !357
  %58 = call signext i8 @FileAcceptableSafeTmpDir(i8* %56, i32 %57), !dbg !358
  %59 = icmp ne i8 %58, 0, !dbg !358
  br i1 %59, label %74, label %60, !dbg !359

; <label>:60:                                     ; preds = %55, %45
  %61 = load i8*, i8** %5, align 8, !dbg !360
  call void @Posix_Free(i8* %61), !dbg !362
  %62 = load i8*, i8** %10, align 8, !dbg !363
  %63 = load i8*, i8** %9, align 8, !dbg !364
  %64 = load i32, i32* %6, align 4, !dbg !365
  %65 = call i8* @FileFindExistingSafeTmpDir(i8* %62, i8* %63, i32 %64), !dbg !366
  store i8* %65, i8** %5, align 8, !dbg !367
  %66 = load i8*, i8** %5, align 8, !dbg !368
  %67 = icmp eq i8* %66, null, !dbg !370
  br i1 %67, label %68, label %73, !dbg !371

; <label>:68:                                     ; preds = %60
  %69 = load i8*, i8** %10, align 8, !dbg !372
  %70 = load i8*, i8** %9, align 8, !dbg !374
  %71 = load i32, i32* %6, align 4, !dbg !375
  %72 = call i8* @FileCreateSafeTmpDir(i8* %69, i8* %70, i32 %71), !dbg !376
  store i8* %72, i8** %5, align 8, !dbg !377
  br label %73, !dbg !378

; <label>:73:                                     ; preds = %68, %60
  br label %74, !dbg !379

; <label>:74:                                     ; preds = %73, %55
  %75 = load i8*, i8** %5, align 8, !dbg !380
  %76 = icmp ne i8* %75, null, !dbg !382
  br i1 %76, label %77, label %105, !dbg !383

; <label>:77:                                     ; preds = %74
  call void @llvm.dbg.declare(metadata i8** %11, metadata !384, metadata !281), !dbg !386
  %78 = load i8*, i8** %5, align 8, !dbg !387
  %79 = call i8* @UtilSafeStrdup0(i8* %78), !dbg !388
  store i8* %79, i8** %11, align 8, !dbg !386
  %80 = load i32, i32* %6, align 4, !dbg !389
  %81 = load i32, i32* @FileGetSafeTmpDir.cachedEuid, align 4, !dbg !391
  %82 = icmp eq i32 %80, %81, !dbg !392
  br i1 %82, label %83, label %93, !dbg !393

; <label>:83:                                     ; preds = %77
  %84 = load i8, i8* %4, align 1, !dbg !394
  %85 = icmp ne i8 %84, 0, !dbg !394
  br i1 %85, label %86, label %89, !dbg !397

; <label>:86:                                     ; preds = %83
  %87 = load i8*, i8** @FileGetSafeTmpDir.cachedPidDir, align 8, !dbg !398
  call void @Posix_Free(i8* %87), !dbg !400
  %88 = load i8*, i8** %11, align 8, !dbg !401
  store i8* %88, i8** @FileGetSafeTmpDir.cachedPidDir, align 8, !dbg !402
  br label %92, !dbg !403

; <label>:89:                                     ; preds = %83
  %90 = load i8*, i8** @FileGetSafeTmpDir.cachedDir, align 8, !dbg !404
  call void @Posix_Free(i8* %90), !dbg !406
  %91 = load i8*, i8** %11, align 8, !dbg !407
  store i8* %91, i8** @FileGetSafeTmpDir.cachedDir, align 8, !dbg !408
  br label %92

; <label>:92:                                     ; preds = %89, %86
  br label %104, !dbg !409

; <label>:93:                                     ; preds = %77
  %94 = load i8*, i8** @FileGetSafeTmpDir.cachedPidDir, align 8, !dbg !410
  call void @Posix_Free(i8* %94), !dbg !412
  %95 = load i8*, i8** @FileGetSafeTmpDir.cachedDir, align 8, !dbg !413
  call void @Posix_Free(i8* %95), !dbg !414
  %96 = load i8, i8* %4, align 1, !dbg !415
  %97 = icmp ne i8 %96, 0, !dbg !415
  br i1 %97, label %98, label %100, !dbg !417

; <label>:98:                                     ; preds = %93
  %99 = load i8*, i8** %11, align 8, !dbg !418
  store i8* %99, i8** @FileGetSafeTmpDir.cachedPidDir, align 8, !dbg !420
  store i8* null, i8** @FileGetSafeTmpDir.cachedDir, align 8, !dbg !421
  br label %102, !dbg !422

; <label>:100:                                    ; preds = %93
  %101 = load i8*, i8** %11, align 8, !dbg !423
  store i8* %101, i8** @FileGetSafeTmpDir.cachedDir, align 8, !dbg !425
  store i8* null, i8** @FileGetSafeTmpDir.cachedPidDir, align 8, !dbg !426
  br label %102

; <label>:102:                                    ; preds = %100, %98
  %103 = load i32, i32* %6, align 4, !dbg !427
  store i32 %103, i32* @FileGetSafeTmpDir.cachedEuid, align 4, !dbg !428
  br label %104

; <label>:104:                                    ; preds = %102, %92
  br label %105, !dbg !429

; <label>:105:                                    ; preds = %104, %74
  br label %106, !dbg !430

; <label>:106:                                    ; preds = %105, %44, %36
  %107 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %8, align 8, !dbg !432
  call void @MXUser_ReleaseExclLock(%struct.MXUserExclLock* %107), !dbg !433
  %108 = load i8*, i8** %10, align 8, !dbg !434
  call void @Posix_Free(i8* %108), !dbg !435
  %109 = load i8*, i8** %9, align 8, !dbg !436
  call void @Posix_Free(i8* %109), !dbg !437
  %110 = load i8*, i8** %5, align 8, !dbg !438
  ret i8* %110, !dbg !439
}

; Function Attrs: nounwind uwtable
define i8* @File_GetSafeRandomTmpDir(i8 signext) #0 !dbg !440 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !441, metadata !281), !dbg !442
  %3 = load i8, i8* %2, align 1, !dbg !443
  %4 = call i8* @FileGetSafeTmpDir(i8 signext %3, i8 signext 1), !dbg !444
  ret i8* %4, !dbg !445
}

; Function Attrs: nounwind uwtable
define i8* @File_MakeSafeTempSubdir(i8*, i8*) #0 !dbg !446 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !449, metadata !281), !dbg !450
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !451, metadata !281), !dbg !452
  call void @llvm.dbg.declare(metadata i32* %6, metadata !453, metadata !281), !dbg !454
  %8 = call i32 @geteuid() #6, !dbg !455
  store i32 %8, i32* %6, align 4, !dbg !454
  call void @llvm.dbg.declare(metadata i8** %7, metadata !456, metadata !281), !dbg !457
  %9 = load i8*, i8** %4, align 8, !dbg !458
  %10 = call signext i8 @File_Exists(i8* %9), !dbg !460
  %11 = icmp ne i8 %10, 0, !dbg !460
  br i1 %11, label %12, label %17, !dbg !461

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %4, align 8, !dbg !462
  %14 = load i32, i32* %6, align 4, !dbg !463
  %15 = call signext i8 @FileAcceptableSafeTmpDir(i8* %13, i32 %14), !dbg !464
  %16 = icmp ne i8 %15, 0, !dbg !464
  br i1 %16, label %18, label %17, !dbg !465

; <label>:17:                                     ; preds = %12, %2
  store i8* null, i8** %3, align 8, !dbg !467
  br label %30, !dbg !467

; <label>:18:                                     ; preds = %12
  %19 = load i8*, i8** %4, align 8, !dbg !469
  %20 = load i8*, i8** %5, align 8, !dbg !470
  %21 = call i8* @File_PathJoin(i8* %19, i8* %20), !dbg !471
  store i8* %21, i8** %7, align 8, !dbg !472
  %22 = load i8*, i8** %7, align 8, !dbg !473
  %23 = load i32, i32* %6, align 4, !dbg !475
  %24 = call signext i8 @FileAcceptableSafeTmpDir(i8* %22, i32 %23), !dbg !476
  %25 = icmp ne i8 %24, 0, !dbg !476
  br i1 %25, label %28, label %26, !dbg !477

; <label>:26:                                     ; preds = %18
  %27 = load i8*, i8** %7, align 8, !dbg !478
  call void @free(i8* %27) #6, !dbg !480
  store i8* null, i8** %3, align 8, !dbg !481
  br label %30, !dbg !481

; <label>:28:                                     ; preds = %18
  %29 = load i8*, i8** %7, align 8, !dbg !482
  store i8* %29, i8** %3, align 8, !dbg !483
  br label %30, !dbg !483

; <label>:30:                                     ; preds = %28, %26, %17
  %31 = load i8*, i8** %3, align 8, !dbg !484
  ret i8* %31, !dbg !484
}

; Function Attrs: nounwind
declare i32 @geteuid() #2

declare signext i8 @File_Exists(i8*) #3

; Function Attrs: nounwind uwtable
define internal signext i8 @FileAcceptableSafeTmpDir(i8*, i32) #0 !dbg !268 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.stat, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !485, metadata !281), !dbg !486
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !487, metadata !281), !dbg !488
  call void @llvm.dbg.declare(metadata i8* %5, metadata !489, metadata !281), !dbg !490
  %8 = load i8*, i8** %3, align 8, !dbg !491
  %9 = call i32 @Posix_Mkdir(i8* %8, i32 448), !dbg !492
  %10 = icmp eq i32 %9, 0, !dbg !493
  %11 = zext i1 %10 to i32, !dbg !493
  %12 = trunc i32 %11 to i8, !dbg !494
  store i8 %12, i8* %5, align 1, !dbg !495
  %13 = load i8, i8* %5, align 1, !dbg !496
  %14 = icmp ne i8 %13, 0, !dbg !496
  br i1 %14, label %43, label %15, !dbg !498

; <label>:15:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %6, metadata !499, metadata !281), !dbg !501
  %16 = call i32* @__errno_location() #1, !dbg !502
  %17 = load i32, i32* %16, align 4, !dbg !503
  store i32 %17, i32* %6, align 4, !dbg !501
  %18 = load i32, i32* %6, align 4, !dbg !504
  %19 = icmp eq i32 17, %18, !dbg !506
  br i1 %19, label %20, label %42, !dbg !507

; <label>:20:                                     ; preds = %15
  call void @llvm.dbg.declare(metadata %struct.stat* %7, metadata !508, metadata !281), !dbg !546
  %21 = load i8*, i8** %3, align 8, !dbg !547
  %22 = call i32 @Posix_Lstat(i8* %21, %struct.stat* %7), !dbg !549
  %23 = icmp eq i32 %22, 0, !dbg !550
  br i1 %23, label %24, label %41, !dbg !551

; <label>:24:                                     ; preds = %20
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 3, !dbg !552
  %26 = load i32, i32* %25, align 8, !dbg !552
  %27 = and i32 %26, 61440, !dbg !552
  %28 = icmp eq i32 %27, 16384, !dbg !555
  br i1 %28, label %29, label %40, !dbg !556

; <label>:29:                                     ; preds = %24
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 4, !dbg !557
  %31 = load i32, i32* %30, align 4, !dbg !557
  %32 = load i32, i32* %4, align 4, !dbg !558
  %33 = icmp eq i32 %31, %32, !dbg !559
  br i1 %33, label %34, label %40, !dbg !560

; <label>:34:                                     ; preds = %29
  %35 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 3, !dbg !561
  %36 = load i32, i32* %35, align 8, !dbg !561
  %37 = and i32 %36, 3071, !dbg !562
  %38 = icmp eq i32 %37, 448, !dbg !563
  br i1 %38, label %39, label %40, !dbg !564

; <label>:39:                                     ; preds = %34
  store i8 1, i8* %5, align 1, !dbg !566
  br label %40, !dbg !568

; <label>:40:                                     ; preds = %39, %34, %29, %24
  br label %41, !dbg !569

; <label>:41:                                     ; preds = %40, %20
  br label %42, !dbg !570

; <label>:42:                                     ; preds = %41, %15
  br label %43, !dbg !571

; <label>:43:                                     ; preds = %42, %2
  %44 = load i8, i8* %5, align 1, !dbg !572
  ret i8 %44, !dbg !573
}

declare i8* @File_PathJoin(i8*, i8*) #3

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.MXUserExclLock* @MXUser_CreateSingletonExclLock(%struct.Atomic_uint64*, i8*, i32) #4 !dbg !574 {
  %4 = alloca %struct.Atomic_uint64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.MXUserExclLock*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %4, metadata !581, metadata !281), !dbg !582
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !583, metadata !281), !dbg !584
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !585, metadata !281), !dbg !586
  call void @llvm.dbg.declare(metadata %struct.MXUserExclLock** %7, metadata !587, metadata !281), !dbg !588
  %8 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !589
  %9 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %8), !dbg !590
  %10 = bitcast i8* %9 to %struct.MXUserExclLock*, !dbg !591
  store %struct.MXUserExclLock* %10, %struct.MXUserExclLock** %7, align 8, !dbg !592
  %11 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %7, align 8, !dbg !593
  %12 = icmp eq %struct.MXUserExclLock* %11, null, !dbg !595
  %13 = zext i1 %12 to i32, !dbg !595
  %14 = sext i32 %13 to i64, !dbg !596
  %15 = icmp ne i64 %14, 0, !dbg !597
  br i1 %15, label %16, label %21, !dbg !598

; <label>:16:                                     ; preds = %3
  %17 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !599
  %18 = load i8*, i8** %5, align 8, !dbg !601
  %19 = load i32, i32* %6, align 4, !dbg !602
  %20 = call %struct.MXUserExclLock* @MXUser_CreateSingletonExclLockInt(%struct.Atomic_uint64* %17, i8* %18, i32 %19), !dbg !603
  store %struct.MXUserExclLock* %20, %struct.MXUserExclLock** %7, align 8, !dbg !604
  br label %21, !dbg !605

; <label>:21:                                     ; preds = %16, %3
  %22 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %7, align 8, !dbg !606
  ret %struct.MXUserExclLock* %22, !dbg !607
}

declare void @MXUser_AcquireExclLock(%struct.MXUserExclLock*) #3

declare i8* @UtilSafeStrdup0(i8*) #3

; Function Attrs: nounwind uwtable
define internal i8* @FileGetTmpDir(i8 signext) #0 !dbg !608 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8 %0, i8* %3, align 1
  call void @llvm.dbg.declare(metadata i8* %3, metadata !609, metadata !281), !dbg !610
  call void @llvm.dbg.declare(metadata i8** %4, metadata !611, metadata !281), !dbg !612
  call void @llvm.dbg.declare(metadata i8** %5, metadata !613, metadata !281), !dbg !614
  %6 = load i8, i8* %3, align 1, !dbg !615
  %7 = icmp ne i8 %6, 0, !dbg !615
  br i1 %7, label %8, label %18, !dbg !617

; <label>:8:                                      ; preds = %1
  %9 = call i8* @Preference_GetString(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0)), !dbg !618
  store i8* %9, i8** %4, align 8, !dbg !620
  %10 = load i8*, i8** %4, align 8, !dbg !621
  %11 = call i8* @FileTryDir(i8* %10), !dbg !622
  store i8* %11, i8** %5, align 8, !dbg !623
  %12 = load i8*, i8** %4, align 8, !dbg !624
  call void @Posix_Free(i8* %12), !dbg !625
  %13 = load i8*, i8** %5, align 8, !dbg !626
  %14 = icmp ne i8* %13, null, !dbg !628
  br i1 %14, label %15, label %17, !dbg !629

; <label>:15:                                     ; preds = %8
  %16 = load i8*, i8** %5, align 8, !dbg !630
  store i8* %16, i8** %2, align 8, !dbg !632
  br label %63, !dbg !632

; <label>:17:                                     ; preds = %8
  br label %18, !dbg !633

; <label>:18:                                     ; preds = %17, %1
  %19 = call i8* @Posix_Getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0)), !dbg !634
  %20 = call i8* @FileTryDir(i8* %19), !dbg !635
  store i8* %20, i8** %5, align 8, !dbg !637
  %21 = load i8*, i8** %5, align 8, !dbg !638
  %22 = icmp ne i8* %21, null, !dbg !640
  br i1 %22, label %23, label %25, !dbg !641

; <label>:23:                                     ; preds = %18
  %24 = load i8*, i8** %5, align 8, !dbg !642
  store i8* %24, i8** %2, align 8, !dbg !644
  br label %63, !dbg !644

; <label>:25:                                     ; preds = %18
  %26 = call i8* @FileTryDir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0)), !dbg !645
  store i8* %26, i8** %5, align 8, !dbg !646
  %27 = load i8*, i8** %5, align 8, !dbg !647
  %28 = icmp ne i8* %27, null, !dbg !649
  br i1 %28, label %29, label %31, !dbg !650

; <label>:29:                                     ; preds = %25
  %30 = load i8*, i8** %5, align 8, !dbg !651
  store i8* %30, i8** %2, align 8, !dbg !653
  br label %63, !dbg !653

; <label>:31:                                     ; preds = %25
  %32 = call i8* @FileTryDir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0)), !dbg !654
  store i8* %32, i8** %5, align 8, !dbg !655
  %33 = load i8*, i8** %5, align 8, !dbg !656
  %34 = icmp ne i8* %33, null, !dbg !658
  br i1 %34, label %35, label %37, !dbg !659

; <label>:35:                                     ; preds = %31
  %36 = load i8*, i8** %5, align 8, !dbg !660
  store i8* %36, i8** %2, align 8, !dbg !662
  br label %63, !dbg !662

; <label>:37:                                     ; preds = %31
  %38 = call i8* @FileTryDir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !dbg !663
  store i8* %38, i8** %5, align 8, !dbg !664
  %39 = load i8*, i8** %5, align 8, !dbg !665
  %40 = icmp ne i8* %39, null, !dbg !667
  br i1 %40, label %41, label %43, !dbg !668

; <label>:41:                                     ; preds = %37
  %42 = load i8*, i8** %5, align 8, !dbg !669
  store i8* %42, i8** %2, align 8, !dbg !671
  br label %63, !dbg !671

; <label>:43:                                     ; preds = %37
  %44 = call i8* @File_Cwd(i8* null), !dbg !672
  store i8* %44, i8** %4, align 8, !dbg !673
  %45 = load i8*, i8** %4, align 8, !dbg !674
  %46 = icmp ne i8* %45, null, !dbg !676
  br i1 %46, label %47, label %56, !dbg !677

; <label>:47:                                     ; preds = %43
  %48 = load i8*, i8** %4, align 8, !dbg !678
  %49 = call i8* @FileTryDir(i8* %48), !dbg !680
  store i8* %49, i8** %5, align 8, !dbg !681
  %50 = load i8*, i8** %4, align 8, !dbg !682
  call void @Posix_Free(i8* %50), !dbg !683
  %51 = load i8*, i8** %5, align 8, !dbg !684
  %52 = icmp ne i8* %51, null, !dbg !686
  br i1 %52, label %53, label %55, !dbg !687

; <label>:53:                                     ; preds = %47
  %54 = load i8*, i8** %5, align 8, !dbg !688
  store i8* %54, i8** %2, align 8, !dbg !690
  br label %63, !dbg !690

; <label>:55:                                     ; preds = %47
  br label %56, !dbg !691

; <label>:56:                                     ; preds = %55, %43
  %57 = call i8* @FileTryDir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !692
  store i8* %57, i8** %5, align 8, !dbg !693
  %58 = load i8*, i8** %5, align 8, !dbg !694
  %59 = icmp ne i8* %58, null, !dbg !696
  br i1 %59, label %60, label %62, !dbg !697

; <label>:60:                                     ; preds = %56
  %61 = load i8*, i8** %5, align 8, !dbg !698
  store i8* %61, i8** %2, align 8, !dbg !700
  br label %63, !dbg !700

; <label>:62:                                     ; preds = %56
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.FileGetTmpDir, i32 0, i32 0)), !dbg !701
  store i8* null, i8** %2, align 8, !dbg !702
  br label %63, !dbg !702

; <label>:63:                                     ; preds = %62, %60, %53, %41, %35, %29, %23, %15
  %64 = load i8*, i8** %2, align 8, !dbg !703
  ret i8* %64, !dbg !703
}

; Function Attrs: nounwind uwtable
define internal i8* @FileGetUserIdentifier(i32, i8 signext) #0 !dbg !704 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !707, metadata !281), !dbg !708
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !709, metadata !281), !dbg !710
  call void @llvm.dbg.declare(metadata i8** %5, metadata !711, metadata !281), !dbg !712
  %7 = load i32, i32* %3, align 4, !dbg !713
  %8 = call i8* @FileGetUserName(i32 %7), !dbg !714
  store i8* %8, i8** %5, align 8, !dbg !712
  %9 = load i8*, i8** %5, align 8, !dbg !715
  %10 = icmp eq i8* %9, null, !dbg !717
  br i1 %10, label %11, label %14, !dbg !718

; <label>:11:                                     ; preds = %2
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.FileGetUserIdentifier, i32 0, i32 0)), !dbg !719
  %12 = load i32, i32* %3, align 4, !dbg !721
  %13 = call i8* (i64*, i8*, ...) @Str_SafeAsprintf(i64* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 %12), !dbg !722
  store i8* %13, i8** %5, align 8, !dbg !723
  br label %14, !dbg !724

; <label>:14:                                     ; preds = %11, %2
  %15 = load i8, i8* %4, align 1, !dbg !725
  %16 = icmp ne i8 %15, 0, !dbg !725
  br i1 %16, label %17, label %23, !dbg !727

; <label>:17:                                     ; preds = %14
  call void @llvm.dbg.declare(metadata i8** %6, metadata !728, metadata !281), !dbg !730
  %18 = load i8*, i8** %5, align 8, !dbg !731
  %19 = call i32 @getpid() #6, !dbg !732
  %20 = call i8* (i64*, i8*, ...) @Str_SafeAsprintf(i64* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* %18, i32 %19), !dbg !733
  store i8* %20, i8** %6, align 8, !dbg !730
  %21 = load i8*, i8** %5, align 8, !dbg !735
  call void @Posix_Free(i8* %21), !dbg !736
  %22 = load i8*, i8** %6, align 8, !dbg !737
  store i8* %22, i8** %5, align 8, !dbg !738
  br label %23, !dbg !739

; <label>:23:                                     ; preds = %17, %14
  %24 = load i8*, i8** %5, align 8, !dbg !740
  ret i8* %24, !dbg !741
}

declare i8* @Str_SafeAsprintf(i64*, i8*, ...) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @Posix_Free(i8*) #4 !dbg !742 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !746, metadata !281), !dbg !747
  call void @llvm.dbg.declare(metadata i32* %3, metadata !748, metadata !281), !dbg !749
  %4 = call i32* @__errno_location() #1, !dbg !750
  %5 = load i32, i32* %4, align 4, !dbg !751
  store i32 %5, i32* %3, align 4, !dbg !749
  %6 = load i8*, i8** %2, align 8, !dbg !752
  call void @free(i8* %6) #6, !dbg !753
  %7 = load i32, i32* %3, align 4, !dbg !754
  %8 = call i32* @__errno_location() #1, !dbg !755
  store i32 %7, i32* %8, align 4, !dbg !756
  ret void, !dbg !757
}

; Function Attrs: nounwind uwtable
define internal i8* @FileFindExistingSafeTmpDir(i8*, i8*, i32) #0 !dbg !758 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !759, metadata !281), !dbg !760
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !761, metadata !281), !dbg !762
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !763, metadata !281), !dbg !764
  call void @llvm.dbg.declare(metadata i32* %8, metadata !765, metadata !281), !dbg !766
  call void @llvm.dbg.declare(metadata i32* %9, metadata !767, metadata !281), !dbg !768
  call void @llvm.dbg.declare(metadata i8** %10, metadata !769, metadata !281), !dbg !770
  call void @llvm.dbg.declare(metadata i8** %11, metadata !771, metadata !281), !dbg !772
  store i8* null, i8** %11, align 8, !dbg !772
  call void @llvm.dbg.declare(metadata i8*** %12, metadata !773, metadata !281), !dbg !775
  store i8** null, i8*** %12, align 8, !dbg !775
  %14 = load i8*, i8** %6, align 8, !dbg !776
  %15 = call i8* (i8*, ...) @Unicode_Format(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* %14), !dbg !777
  store i8* %15, i8** %10, align 8, !dbg !778
  %16 = load i8*, i8** %10, align 8, !dbg !779
  %17 = icmp eq i8* %16, null, !dbg !781
  br i1 %17, label %18, label %19, !dbg !782

; <label>:18:                                     ; preds = %3
  store i8* null, i8** %4, align 8, !dbg !783
  br label %72, !dbg !783

; <label>:19:                                     ; preds = %3
  %20 = load i8*, i8** %5, align 8, !dbg !785
  %21 = call i32 @File_ListDirectory(i8* %20, i8*** %12), !dbg !786
  store i32 %21, i32* %9, align 4, !dbg !787
  %22 = load i32, i32* %9, align 4, !dbg !788
  %23 = icmp eq i32 %22, -1, !dbg !790
  br i1 %23, label %24, label %26, !dbg !791

; <label>:24:                                     ; preds = %19
  %25 = load i8*, i8** %10, align 8, !dbg !792
  call void @Posix_Free(i8* %25), !dbg !794
  store i8* null, i8** %4, align 8, !dbg !795
  br label %72, !dbg !795

; <label>:26:                                     ; preds = %19
  store i32 0, i32* %8, align 4, !dbg !796
  br label %27, !dbg !798

; <label>:27:                                     ; preds = %63, %26
  %28 = load i32, i32* %8, align 4, !dbg !799
  %29 = load i32, i32* %9, align 4, !dbg !802
  %30 = icmp slt i32 %28, %29, !dbg !803
  br i1 %30, label %31, label %66, !dbg !804

; <label>:31:                                     ; preds = %27
  %32 = load i32, i32* %8, align 4, !dbg !805
  %33 = sext i32 %32 to i64, !dbg !808
  %34 = load i8**, i8*** %12, align 8, !dbg !808
  %35 = getelementptr inbounds i8*, i8** %34, i64 %33, !dbg !808
  %36 = load i8*, i8** %35, align 8, !dbg !808
  %37 = load i8*, i8** %10, align 8, !dbg !809
  %38 = call signext i8 @Unicode_StartsWith(i8* %36, i8* %37), !dbg !810
  %39 = icmp ne i8 %38, 0, !dbg !810
  br i1 %39, label %40, label %62, !dbg !811

; <label>:40:                                     ; preds = %31
  call void @llvm.dbg.declare(metadata i8** %13, metadata !812, metadata !281), !dbg !814
  %41 = load i8*, i8** %5, align 8, !dbg !815
  %42 = load i32, i32* %8, align 4, !dbg !816
  %43 = sext i32 %42 to i64, !dbg !817
  %44 = load i8**, i8*** %12, align 8, !dbg !817
  %45 = getelementptr inbounds i8*, i8** %44, i64 %43, !dbg !817
  %46 = load i8*, i8** %45, align 8, !dbg !817
  %47 = call i8* (i8*, ...) @Unicode_Join(i8* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* %46, i8* null), !dbg !818
  store i8* %47, i8** %13, align 8, !dbg !814
  %48 = load i8*, i8** %13, align 8, !dbg !819
  %49 = call signext i8 @File_IsDirectory(i8* %48), !dbg !821
  %50 = sext i8 %49 to i32, !dbg !821
  %51 = icmp ne i32 %50, 0, !dbg !821
  br i1 %51, label %52, label %60, !dbg !822

; <label>:52:                                     ; preds = %40
  %53 = load i8*, i8** %13, align 8, !dbg !823
  %54 = load i32, i32* %7, align 4, !dbg !824
  %55 = call signext i8 @FileAcceptableSafeTmpDir(i8* %53, i32 %54), !dbg !825
  %56 = sext i8 %55 to i32, !dbg !825
  %57 = icmp ne i32 %56, 0, !dbg !825
  br i1 %57, label %58, label %60, !dbg !826

; <label>:58:                                     ; preds = %52
  %59 = load i8*, i8** %13, align 8, !dbg !828
  store i8* %59, i8** %11, align 8, !dbg !830
  br label %66, !dbg !831

; <label>:60:                                     ; preds = %52, %40
  %61 = load i8*, i8** %13, align 8, !dbg !832
  call void @Posix_Free(i8* %61), !dbg !833
  br label %62, !dbg !834

; <label>:62:                                     ; preds = %60, %31
  br label %63, !dbg !835

; <label>:63:                                     ; preds = %62
  %64 = load i32, i32* %8, align 4, !dbg !836
  %65 = add nsw i32 %64, 1, !dbg !836
  store i32 %65, i32* %8, align 4, !dbg !836
  br label %27, !dbg !838, !llvm.loop !839

; <label>:66:                                     ; preds = %58, %27
  %67 = load i8**, i8*** %12, align 8, !dbg !841
  %68 = load i32, i32* %9, align 4, !dbg !842
  %69 = sext i32 %68 to i64, !dbg !842
  call void @Util_FreeStringList(i8** %67, i64 %69), !dbg !843
  %70 = load i8*, i8** %10, align 8, !dbg !844
  call void @Posix_Free(i8* %70), !dbg !845
  %71 = load i8*, i8** %11, align 8, !dbg !846
  store i8* %71, i8** %4, align 8, !dbg !847
  br label %72, !dbg !847

; <label>:72:                                     ; preds = %66, %24, %18
  %73 = load i8*, i8** %4, align 8, !dbg !848
  ret i8* %73, !dbg !848
}

; Function Attrs: nounwind uwtable
define internal i8* @FileCreateSafeTmpDir(i8*, i8*, i32) #0 !dbg !260 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !849, metadata !281), !dbg !850
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !851, metadata !281), !dbg !852
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !853, metadata !281), !dbg !854
  call void @llvm.dbg.declare(metadata i32* %7, metadata !855, metadata !281), !dbg !856
  store i32 0, i32* %7, align 4, !dbg !856
  call void @llvm.dbg.declare(metadata i8** %8, metadata !857, metadata !281), !dbg !858
  store i8* null, i8** %8, align 8, !dbg !858
  br label %9, !dbg !859

; <label>:9:                                      ; preds = %3, %26
  %10 = load i8*, i8** %4, align 8, !dbg !860
  %11 = load i8*, i8** %5, align 8, !dbg !862
  %12 = call i32 @FileSimpleRandom(), !dbg !863
  %13 = call i8* (i64*, i8*, ...) @Str_SafeAsprintf(i64* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* %11, i32 %12), !dbg !864
  store i8* %13, i8** %8, align 8, !dbg !865
  %14 = load i8*, i8** %8, align 8, !dbg !866
  %15 = load i32, i32* %6, align 4, !dbg !868
  %16 = call signext i8 @FileAcceptableSafeTmpDir(i8* %14, i32 %15), !dbg !869
  %17 = icmp ne i8 %16, 0, !dbg !869
  br i1 %17, label %18, label %19, !dbg !870

; <label>:18:                                     ; preds = %9
  br label %28, !dbg !871

; <label>:19:                                     ; preds = %9
  %20 = load i32, i32* %7, align 4, !dbg !873
  %21 = add nsw i32 %20, 1, !dbg !873
  store i32 %21, i32* %7, align 4, !dbg !873
  %22 = icmp sgt i32 %21, 250, !dbg !875
  br i1 %22, label %23, label %26, !dbg !876

; <label>:23:                                     ; preds = %19
  %24 = load i8*, i8** %8, align 8, !dbg !877
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.FileCreateSafeTmpDir, i32 0, i32 0), i8* %24), !dbg !879
  %25 = load i8*, i8** %8, align 8, !dbg !880
  call void @Posix_Free(i8* %25), !dbg !881
  store i8* null, i8** %8, align 8, !dbg !882
  br label %28, !dbg !883

; <label>:26:                                     ; preds = %19
  %27 = load i8*, i8** %8, align 8, !dbg !884
  call void @Posix_Free(i8* %27), !dbg !885
  br label %9, !dbg !886, !llvm.loop !888

; <label>:28:                                     ; preds = %23, %18
  %29 = load i8*, i8** %8, align 8, !dbg !889
  ret i8* %29, !dbg !890
}

declare void @MXUser_ReleaseExclLock(%struct.MXUserExclLock*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Atomic_ReadPtr(%struct.Atomic_uint64*) #4 !dbg !891 {
  %2 = alloca %struct.Atomic_uint64*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %2, metadata !896, metadata !281), !dbg !897
  %3 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %2, align 8, !dbg !898
  %4 = call i64 @Atomic_Read64(%struct.Atomic_uint64* %3), !dbg !899
  %5 = inttoptr i64 %4 to i8*, !dbg !900
  ret i8* %5, !dbg !901
}

declare %struct.MXUserExclLock* @MXUser_CreateSingletonExclLockInt(%struct.Atomic_uint64*, i8*, i32) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @Atomic_Read64(%struct.Atomic_uint64*) #4 !dbg !902 {
  %2 = alloca %struct.Atomic_uint64*, align 8
  %3 = alloca i64, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %2, metadata !907, metadata !281), !dbg !908
  call void @llvm.dbg.declare(metadata i64* %3, metadata !909, metadata !281), !dbg !910
  %4 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %2, align 8, !dbg !911
  %5 = getelementptr inbounds %struct.Atomic_uint64, %struct.Atomic_uint64* %4, i32 0, i32 0, !dbg !912
  %6 = call i64 asm sideeffect "movq $1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i64* %5) #6, !dbg !913, !srcloc !914
  store i64 %6, i64* %3, align 8, !dbg !913
  %7 = load i64, i64* %3, align 8, !dbg !915
  ret i64 %7, !dbg !916
}

declare i8* @Preference_GetString(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i8* @FileTryDir(i8*) #0 !dbg !917 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !920, metadata !281), !dbg !921
  call void @llvm.dbg.declare(metadata i8** %4, metadata !922, metadata !281), !dbg !923
  %5 = load i8*, i8** %3, align 8, !dbg !924
  %6 = icmp ne i8* %5, null, !dbg !926
  br i1 %6, label %7, label %21, !dbg !927

; <label>:7:                                      ; preds = %1
  %8 = load i8*, i8** %3, align 8, !dbg !928
  %9 = call i8* @Util_ExpandString(i8* %8), !dbg !930
  store i8* %9, i8** %4, align 8, !dbg !931
  %10 = load i8*, i8** %4, align 8, !dbg !932
  %11 = icmp ne i8* %10, null, !dbg !934
  br i1 %11, label %12, label %19, !dbg !935

; <label>:12:                                     ; preds = %7
  %13 = load i8*, i8** %4, align 8, !dbg !936
  %14 = call signext i8 @FileIsWritableDir(i8* %13), !dbg !938
  %15 = sext i8 %14 to i32, !dbg !938
  %16 = icmp ne i32 %15, 0, !dbg !938
  br i1 %16, label %17, label %19, !dbg !939

; <label>:17:                                     ; preds = %12
  %18 = load i8*, i8** %4, align 8, !dbg !940
  store i8* %18, i8** %2, align 8, !dbg !942
  br label %22, !dbg !942

; <label>:19:                                     ; preds = %12, %7
  %20 = load i8*, i8** %4, align 8, !dbg !943
  call void @Posix_Free(i8* %20), !dbg !944
  br label %21, !dbg !945

; <label>:21:                                     ; preds = %19, %1
  store i8* null, i8** %2, align 8, !dbg !946
  br label %22, !dbg !946

; <label>:22:                                     ; preds = %21, %17
  %23 = load i8*, i8** %2, align 8, !dbg !947
  ret i8* %23, !dbg !947
}

declare i8* @Posix_Getenv(i8*) #3

declare i8* @File_Cwd(i8*) #3

declare void @Warning(i8*, ...) #3

declare i8* @Util_ExpandString(i8*) #3

declare signext i8 @FileIsWritableDir(i8*) #3

; Function Attrs: nounwind uwtable
define internal i8* @FileGetUserName(i32) #0 !dbg !948 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.passwd, align 8
  %7 = alloca %struct.passwd*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !951, metadata !281), !dbg !952
  call void @llvm.dbg.declare(metadata i8** %4, metadata !953, metadata !281), !dbg !954
  call void @llvm.dbg.declare(metadata i64* %5, metadata !955, metadata !281), !dbg !956
  call void @llvm.dbg.declare(metadata %struct.passwd* %6, metadata !957, metadata !281), !dbg !968
  call void @llvm.dbg.declare(metadata %struct.passwd** %7, metadata !969, metadata !281), !dbg !971
  call void @llvm.dbg.declare(metadata i8** %8, metadata !972, metadata !281), !dbg !973
  store i8* null, i8** %8, align 8, !dbg !973
  %9 = call i32* @__errno_location() #1, !dbg !974
  store i32 0, i32* %9, align 4, !dbg !975
  %10 = call i64 @sysconf(i32 70) #6, !dbg !976
  store i64 %10, i64* %5, align 8, !dbg !977
  %11 = call i32* @__errno_location() #1, !dbg !978
  %12 = load i32, i32* %11, align 4, !dbg !980
  %13 = icmp ne i32 %12, 0, !dbg !981
  br i1 %13, label %17, label %14, !dbg !982

; <label>:14:                                     ; preds = %1
  %15 = load i64, i64* %5, align 8, !dbg !983
  %16 = icmp eq i64 %15, 0, !dbg !985
  br i1 %16, label %17, label %18, !dbg !986

; <label>:17:                                     ; preds = %14, %1
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.FileGetUserName, i32 0, i32 0)), !dbg !987
  store i8* null, i8** %2, align 8, !dbg !989
  br label %43, !dbg !989

; <label>:18:                                     ; preds = %14
  %19 = load i64, i64* %5, align 8, !dbg !990
  %20 = icmp eq i64 %19, -1, !dbg !992
  br i1 %20, label %21, label %22, !dbg !993

; <label>:21:                                     ; preds = %18
  store i64 16384, i64* %5, align 8, !dbg !994
  br label %22, !dbg !996

; <label>:22:                                     ; preds = %21, %18
  %23 = load i64, i64* %5, align 8, !dbg !997
  %24 = call i8* @UtilSafeMalloc0(i64 %23), !dbg !998
  store i8* %24, i8** %4, align 8, !dbg !999
  %25 = load i32, i32* %3, align 4, !dbg !1000
  %26 = load i8*, i8** %4, align 8, !dbg !1002
  %27 = load i64, i64* %5, align 8, !dbg !1003
  %28 = call i32 @Posix_Getpwuid_r(i32 %25, %struct.passwd* %6, i8* %26, i64 %27, %struct.passwd** %7), !dbg !1004
  %29 = icmp ne i32 %28, 0, !dbg !1005
  br i1 %29, label %33, label %30, !dbg !1006

; <label>:30:                                     ; preds = %22
  %31 = load %struct.passwd*, %struct.passwd** %7, align 8, !dbg !1007
  %32 = icmp eq %struct.passwd* %31, null, !dbg !1008
  br i1 %32, label %33, label %35, !dbg !1009

; <label>:33:                                     ; preds = %30, %22
  %34 = load i32, i32* %3, align 4, !dbg !1011
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.FileGetUserName, i32 0, i32 0), i32 %34), !dbg !1013
  br label %40, !dbg !1014

; <label>:35:                                     ; preds = %30
  %36 = load %struct.passwd*, %struct.passwd** %7, align 8, !dbg !1015
  %37 = getelementptr inbounds %struct.passwd, %struct.passwd* %36, i32 0, i32 0, !dbg !1017
  %38 = load i8*, i8** %37, align 8, !dbg !1017
  %39 = call i8* @UtilSafeStrdup0(i8* %38), !dbg !1018
  store i8* %39, i8** %8, align 8, !dbg !1019
  br label %40

; <label>:40:                                     ; preds = %35, %33
  %41 = load i8*, i8** %4, align 8, !dbg !1020
  call void @Posix_Free(i8* %41), !dbg !1021
  %42 = load i8*, i8** %8, align 8, !dbg !1022
  store i8* %42, i8** %2, align 8, !dbg !1023
  br label %43, !dbg !1023

; <label>:43:                                     ; preds = %40, %17
  %44 = load i8*, i8** %2, align 8, !dbg !1024
  ret i8* %44, !dbg !1024
}

; Function Attrs: nounwind
declare i32 @getpid() #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: nounwind
declare i64 @sysconf(i32) #2

declare i8* @UtilSafeMalloc0(i64) #3

declare i32 @Posix_Getpwuid_r(i32, %struct.passwd*, i8*, i64, %struct.passwd**) #3

declare i8* @Unicode_Format(i8*, ...) #3

declare i32 @File_ListDirectory(i8*, i8***) #3

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @Unicode_StartsWith(i8*, i8*) #4 !dbg !1025 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1029, metadata !281), !dbg !1030
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1031, metadata !281), !dbg !1032
  %5 = load i8*, i8** %3, align 8, !dbg !1033
  %6 = load i8*, i8** %4, align 8, !dbg !1034
  %7 = call signext i8 @UnicodeStartsWith(i8* %5, i8* %6, i8 signext 0), !dbg !1035
  ret i8 %7, !dbg !1036
}

declare i8* @Unicode_Join(i8*, ...) #3

declare signext i8 @File_IsDirectory(i8*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @Util_FreeStringList(i8**, i64) #4 !dbg !1037 {
  %3 = alloca i8**, align 8
  %4 = alloca i64, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !1044, metadata !281), !dbg !1045
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1046, metadata !281), !dbg !1047
  %5 = load i8**, i8*** %3, align 8, !dbg !1048
  %6 = load i64, i64* %4, align 8, !dbg !1049
  call void @Util_FreeList(i8** %5, i64 %6), !dbg !1050
  ret void, !dbg !1051
}

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @UnicodeStartsWith(i8*, i8*, i8 signext) #4 !dbg !1052 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1055, metadata !281), !dbg !1056
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1057, metadata !281), !dbg !1058
  store i8 %2, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1059, metadata !281), !dbg !1060
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1061, metadata !281), !dbg !1064
  %10 = load i8*, i8** %5, align 8, !dbg !1065
  %11 = call i64 @Unicode_LengthInCodePoints(i8* %10), !dbg !1066
  store i64 %11, i64* %8, align 8, !dbg !1064
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1067, metadata !281), !dbg !1068
  %12 = load i8*, i8** %6, align 8, !dbg !1069
  %13 = call i64 @Unicode_LengthInCodePoints(i8* %12), !dbg !1070
  store i64 %13, i64* %9, align 8, !dbg !1068
  %14 = load i64, i64* %9, align 8, !dbg !1071
  %15 = load i64, i64* %8, align 8, !dbg !1073
  %16 = icmp sgt i64 %14, %15, !dbg !1074
  br i1 %16, label %17, label %18, !dbg !1075

; <label>:17:                                     ; preds = %3
  store i8 0, i8* %4, align 1, !dbg !1076
  br label %28, !dbg !1076

; <label>:18:                                     ; preds = %3
  %19 = load i8*, i8** %5, align 8, !dbg !1078
  %20 = load i64, i64* %9, align 8, !dbg !1079
  %21 = load i8*, i8** %6, align 8, !dbg !1080
  %22 = load i64, i64* %9, align 8, !dbg !1081
  %23 = load i8, i8* %7, align 1, !dbg !1082
  %24 = call i32 @Unicode_CompareRange(i8* %19, i64 0, i64 %20, i8* %21, i64 0, i64 %22, i8 signext %23), !dbg !1083
  %25 = icmp eq i32 %24, 0, !dbg !1084
  %26 = zext i1 %25 to i32, !dbg !1084
  %27 = trunc i32 %26 to i8, !dbg !1083
  store i8 %27, i8* %4, align 1, !dbg !1085
  br label %28, !dbg !1085

; <label>:28:                                     ; preds = %18, %17
  %29 = load i8, i8* %4, align 1, !dbg !1086
  ret i8 %29, !dbg !1086
}

declare i64 @Unicode_LengthInCodePoints(i8*) #3

declare i32 @Unicode_CompareRange(i8*, i64, i64, i8*, i64, i64, i8 signext) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @Util_FreeList(i8**, i64) #4 !dbg !1087 {
  %3 = alloca i8**, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !1090, metadata !281), !dbg !1091
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1092, metadata !281), !dbg !1093
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1094, metadata !281), !dbg !1095
  %8 = load i8**, i8*** %3, align 8, !dbg !1096
  %9 = icmp eq i8** %8, null, !dbg !1098
  br i1 %9, label %10, label %11, !dbg !1099

; <label>:10:                                     ; preds = %2
  br label %48, !dbg !1100

; <label>:11:                                     ; preds = %2
  %12 = call i32* @__errno_location() #1, !dbg !1102
  %13 = load i32, i32* %12, align 4, !dbg !1103
  store i32 %13, i32* %5, align 4, !dbg !1104
  %14 = load i64, i64* %4, align 8, !dbg !1105
  %15 = icmp sge i64 %14, 0, !dbg !1107
  br i1 %15, label %16, label %30, !dbg !1108

; <label>:16:                                     ; preds = %11
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1109, metadata !281), !dbg !1111
  store i64 0, i64* %6, align 8, !dbg !1112
  br label %17, !dbg !1114

; <label>:17:                                     ; preds = %26, %16
  %18 = load i64, i64* %6, align 8, !dbg !1115
  %19 = load i64, i64* %4, align 8, !dbg !1118
  %20 = icmp slt i64 %18, %19, !dbg !1119
  br i1 %20, label %21, label %29, !dbg !1120

; <label>:21:                                     ; preds = %17
  %22 = load i64, i64* %6, align 8, !dbg !1121
  %23 = load i8**, i8*** %3, align 8, !dbg !1123
  %24 = getelementptr inbounds i8*, i8** %23, i64 %22, !dbg !1123
  %25 = load i8*, i8** %24, align 8, !dbg !1123
  call void @free(i8* %25) #6, !dbg !1124
  br label %26, !dbg !1125

; <label>:26:                                     ; preds = %21
  %27 = load i64, i64* %6, align 8, !dbg !1126
  %28 = add nsw i64 %27, 1, !dbg !1126
  store i64 %28, i64* %6, align 8, !dbg !1126
  br label %17, !dbg !1128, !llvm.loop !1129

; <label>:29:                                     ; preds = %17
  br label %43, !dbg !1131

; <label>:30:                                     ; preds = %11
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !1132, metadata !281), !dbg !1134
  %31 = load i8**, i8*** %3, align 8, !dbg !1135
  store i8** %31, i8*** %7, align 8, !dbg !1137
  br label %32, !dbg !1138

; <label>:32:                                     ; preds = %39, %30
  %33 = load i8**, i8*** %7, align 8, !dbg !1139
  %34 = load i8*, i8** %33, align 8, !dbg !1142
  %35 = icmp ne i8* %34, null, !dbg !1143
  br i1 %35, label %36, label %42, !dbg !1144

; <label>:36:                                     ; preds = %32
  %37 = load i8**, i8*** %7, align 8, !dbg !1145
  %38 = load i8*, i8** %37, align 8, !dbg !1147
  call void @free(i8* %38) #6, !dbg !1148
  br label %39, !dbg !1149

; <label>:39:                                     ; preds = %36
  %40 = load i8**, i8*** %7, align 8, !dbg !1150
  %41 = getelementptr inbounds i8*, i8** %40, i32 1, !dbg !1150
  store i8** %41, i8*** %7, align 8, !dbg !1150
  br label %32, !dbg !1152, !llvm.loop !1153

; <label>:42:                                     ; preds = %32
  br label %43

; <label>:43:                                     ; preds = %42, %29
  %44 = load i8**, i8*** %3, align 8, !dbg !1155
  %45 = bitcast i8** %44 to i8*, !dbg !1155
  call void @free(i8* %45) #6, !dbg !1156
  %46 = load i32, i32* %5, align 4, !dbg !1157
  %47 = call i32* @__errno_location() #1, !dbg !1158
  store i32 %46, i32* %47, align 4, !dbg !1159
  br label %48, !dbg !1160

; <label>:48:                                     ; preds = %43, %10
  ret void, !dbg !1161
}

declare i32 @FileSimpleRandom() #3

declare i32 @Posix_Mkdir(i8*, i32) #3

declare i32 @Posix_Lstat(i8*, %struct.stat*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!274, !275}
!llvm.ident = !{!276}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !221, globals: !233)
!1 = !DIFile(filename: "fileTempPosix.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line226")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 71, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/confname.h", directory: "/home/lichi/Desktop/open-vm-tools/line226")
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
!221 = !{!222, !223, !227, !230, !232}
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, align: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserExclLock", file: !225, line: 38, baseType: !226)
!225 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/userlock.h", directory: "/home/lichi/Desktop/open-vm-tools/line226")
!226 = !DICompositeType(tag: DW_TAG_structure_type, name: "MXUserExclLock", file: !225, line: 38, flags: DIFlagFwdDecl)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !228, line: 122, baseType: !229)
!228 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line226")
!229 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64, align: 64)
!231 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!233 = !{!234, !251, !252, !258, !259, !267}
!234 = distinct !DIGlobalVariable(name: "lckStorage", scope: !235, file: !236, line: 504, type: !242, isLocal: true, isDefinition: true, variable: %struct.Atomic_uint64* @FileGetSafeTmpDir.lckStorage)
!235 = distinct !DISubprogram(name: "FileGetSafeTmpDir", scope: !236, file: !236, line: 496, type: !237, isLocal: true, isDefinition: true, scopeLine: 498, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !241)
!236 = !DIFile(filename: "fileTempPosix.c", directory: "/home/lichi/Desktop/open-vm-tools/line226")
!237 = !DISubroutineType(types: !238)
!238 = !{!230, !239, !239}
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !240, line: 230, baseType: !231)
!240 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line226")
!241 = !{}
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_Ptr", file: !243, line: 3829, baseType: !244)
!243 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_atomic.h", directory: "/home/lichi/Desktop/open-vm-tools/line226")
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_uint64", file: !243, line: 139, baseType: !245)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Atomic_uint64", file: !243, line: 137, size: 64, align: 64, elements: !246)
!246 = !{!247}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !245, file: !243, line: 138, baseType: !248, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !240, line: 171, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !228, line: 55, baseType: !229)
!251 = distinct !DIGlobalVariable(name: "cachedDir", scope: !235, file: !236, line: 505, type: !230, isLocal: true, isDefinition: true, variable: i8** @FileGetSafeTmpDir.cachedDir)
!252 = distinct !DIGlobalVariable(name: "cachedEuid", scope: !235, file: !236, line: 506, type: !253, isLocal: true, isDefinition: true, variable: i32* @FileGetSafeTmpDir.cachedEuid)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !254, line: 81, baseType: !255)
!254 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "/home/lichi/Desktop/open-vm-tools/line226")
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !256, line: 125, baseType: !257)
!256 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line226")
!257 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!258 = distinct !DIGlobalVariable(name: "cachedPidDir", scope: !235, file: !236, line: 507, type: !230, isLocal: true, isDefinition: true, variable: i8** @FileGetSafeTmpDir.cachedPidDir)
!259 = distinct !DIGlobalVariable(name: "MAX_DIR_ITERS", scope: !260, file: !236, line: 436, type: !265, isLocal: true, isDefinition: true, variable: i32* @FileCreateSafeTmpDir.MAX_DIR_ITERS)
!260 = distinct !DISubprogram(name: "FileCreateSafeTmpDir", scope: !236, file: !236, line: 430, type: !261, isLocal: true, isDefinition: true, scopeLine: 433, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !241)
!261 = !DISubroutineType(types: !262)
!262 = !{!230, !263, !263, !253}
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64, align: 64)
!264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !231)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!266 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!267 = distinct !DIGlobalVariable(name: "mode", scope: !268, file: !236, line: 302, type: !271, isLocal: true, isDefinition: true, variable: i32* @FileAcceptableSafeTmpDir.mode)
!268 = distinct !DISubprogram(name: "FileAcceptableSafeTmpDir", scope: !236, file: !236, line: 298, type: !269, isLocal: true, isDefinition: true, scopeLine: 300, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !241)
!269 = !DISubroutineType(types: !270)
!270 = !{!239, !263, !253}
!271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !254, line: 62, baseType: !273)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !256, line: 129, baseType: !257)
!274 = !{i32 2, !"Dwarf Version", i32 4}
!275 = !{i32 2, !"Debug Info Version", i32 3}
!276 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!277 = distinct !DISubprogram(name: "File_GetSafeTmpDir", scope: !236, file: !236, line: 635, type: !278, isLocal: false, isDefinition: true, scopeLine: 636, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !241)
!278 = !DISubroutineType(types: !279)
!279 = !{!230, !239}
!280 = !DILocalVariable(name: "useConf", arg: 1, scope: !277, file: !236, line: 635, type: !239)
!281 = !DIExpression()
!282 = !DILocation(line: 635, column: 25, scope: !277)
!283 = !DILocation(line: 637, column: 29, scope: !277)
!284 = !DILocation(line: 637, column: 11, scope: !277)
!285 = !DILocation(line: 637, column: 4, scope: !277)
!286 = !DILocalVariable(name: "useConf", arg: 1, scope: !235, file: !236, line: 496, type: !239)
!287 = !DILocation(line: 496, column: 24, scope: !235)
!288 = !DILocalVariable(name: "addPid", arg: 2, scope: !235, file: !236, line: 497, type: !239)
!289 = !DILocation(line: 497, column: 24, scope: !235)
!290 = !DILocalVariable(name: "tmpDir", scope: !235, file: !236, line: 499, type: !230)
!291 = !DILocation(line: 499, column: 10, scope: !235)
!292 = !DILocalVariable(name: "euid", scope: !235, file: !236, line: 508, type: !253)
!293 = !DILocation(line: 508, column: 10, scope: !235)
!294 = !DILocalVariable(name: "testSafeDir", scope: !235, file: !236, line: 509, type: !230)
!295 = !DILocation(line: 509, column: 10, scope: !235)
!296 = !DILocalVariable(name: "lck", scope: !235, file: !236, line: 510, type: !223)
!297 = !DILocation(line: 510, column: 20, scope: !235)
!298 = !DILocalVariable(name: "userName", scope: !235, file: !236, line: 511, type: !230)
!299 = !DILocation(line: 511, column: 10, scope: !235)
!300 = !DILocalVariable(name: "baseTmpDir", scope: !235, file: !236, line: 512, type: !230)
!301 = !DILocation(line: 512, column: 10, scope: !235)
!302 = !DILocation(line: 515, column: 10, scope: !235)
!303 = !DILocation(line: 515, column: 8, scope: !235)
!304 = !DILocation(line: 518, column: 27, scope: !235)
!305 = !DILocation(line: 518, column: 4, scope: !235)
!306 = !DILocation(line: 525, column: 11, scope: !235)
!307 = !DILocation(line: 525, column: 9, scope: !235)
!308 = !DILocation(line: 527, column: 18, scope: !235)
!309 = !DILocation(line: 527, column: 27, scope: !310)
!310 = !DILexicalBlockFile(scope: !235, file: !236, discriminator: 1)
!311 = !DILocation(line: 527, column: 18, scope: !310)
!312 = !DILocation(line: 527, column: 42, scope: !313)
!313 = !DILexicalBlockFile(scope: !235, file: !236, discriminator: 2)
!314 = !DILocation(line: 527, column: 18, scope: !313)
!315 = !DILocation(line: 527, column: 18, scope: !316)
!316 = !DILexicalBlockFile(scope: !235, file: !236, discriminator: 3)
!317 = !DILocation(line: 527, column: 16, scope: !316)
!318 = !DILocation(line: 534, column: 9, scope: !319)
!319 = distinct !DILexicalBlock(scope: !235, file: !236, line: 534, column: 8)
!320 = !DILocation(line: 534, column: 17, scope: !319)
!321 = !DILocation(line: 534, column: 14, scope: !319)
!322 = !DILocation(line: 534, column: 29, scope: !319)
!323 = !DILocation(line: 535, column: 9, scope: !319)
!324 = !DILocation(line: 535, column: 21, scope: !319)
!325 = !DILocation(line: 535, column: 29, scope: !319)
!326 = !DILocation(line: 536, column: 33, scope: !319)
!327 = !DILocation(line: 536, column: 46, scope: !319)
!328 = !DILocation(line: 536, column: 8, scope: !319)
!329 = !DILocation(line: 534, column: 8, scope: !310)
!330 = !DILocation(line: 537, column: 33, scope: !331)
!331 = distinct !DILexicalBlock(scope: !319, file: !236, line: 536, column: 53)
!332 = !DILocation(line: 537, column: 16, scope: !331)
!333 = !DILocation(line: 537, column: 14, scope: !331)
!334 = !DILocation(line: 538, column: 7, scope: !331)
!335 = !DILocation(line: 542, column: 31, scope: !235)
!336 = !DILocation(line: 542, column: 17, scope: !235)
!337 = !DILocation(line: 542, column: 15, scope: !235)
!338 = !DILocation(line: 544, column: 8, scope: !339)
!339 = distinct !DILexicalBlock(scope: !235, file: !236, line: 544, column: 8)
!340 = !DILocation(line: 544, column: 19, scope: !339)
!341 = !DILocation(line: 544, column: 8, scope: !235)
!342 = !DILocation(line: 545, column: 7, scope: !343)
!343 = distinct !DILexicalBlock(scope: !339, file: !236, line: 544, column: 27)
!344 = !DILocation(line: 548, column: 37, scope: !235)
!345 = !DILocation(line: 548, column: 43, scope: !235)
!346 = !DILocation(line: 548, column: 15, scope: !235)
!347 = !DILocation(line: 548, column: 13, scope: !235)
!348 = !DILocation(line: 550, column: 48, scope: !235)
!349 = !DILocation(line: 551, column: 40, scope: !235)
!350 = !DILocation(line: 550, column: 13, scope: !235)
!351 = !DILocation(line: 550, column: 11, scope: !235)
!352 = !DILocation(line: 553, column: 8, scope: !353)
!353 = distinct !DILexicalBlock(scope: !235, file: !236, line: 553, column: 8)
!354 = !DILocation(line: 553, column: 15, scope: !353)
!355 = !DILocation(line: 553, column: 44, scope: !356)
!356 = !DILexicalBlockFile(scope: !353, file: !236, discriminator: 1)
!357 = !DILocation(line: 553, column: 52, scope: !356)
!358 = !DILocation(line: 553, column: 19, scope: !356)
!359 = !DILocation(line: 553, column: 8, scope: !356)
!360 = !DILocation(line: 560, column: 18, scope: !361)
!361 = distinct !DILexicalBlock(scope: !353, file: !236, line: 553, column: 59)
!362 = !DILocation(line: 560, column: 7, scope: !361)
!363 = !DILocation(line: 562, column: 43, scope: !361)
!364 = !DILocation(line: 562, column: 55, scope: !361)
!365 = !DILocation(line: 562, column: 65, scope: !361)
!366 = !DILocation(line: 562, column: 16, scope: !361)
!367 = !DILocation(line: 562, column: 14, scope: !361)
!368 = !DILocation(line: 564, column: 11, scope: !369)
!369 = distinct !DILexicalBlock(scope: !361, file: !236, line: 564, column: 11)
!370 = !DILocation(line: 564, column: 18, scope: !369)
!371 = !DILocation(line: 564, column: 11, scope: !361)
!372 = !DILocation(line: 569, column: 40, scope: !373)
!373 = distinct !DILexicalBlock(scope: !369, file: !236, line: 564, column: 26)
!374 = !DILocation(line: 569, column: 52, scope: !373)
!375 = !DILocation(line: 569, column: 62, scope: !373)
!376 = !DILocation(line: 569, column: 19, scope: !373)
!377 = !DILocation(line: 569, column: 17, scope: !373)
!378 = !DILocation(line: 570, column: 7, scope: !373)
!379 = !DILocation(line: 571, column: 4, scope: !361)
!380 = !DILocation(line: 573, column: 8, scope: !381)
!381 = distinct !DILexicalBlock(scope: !235, file: !236, line: 573, column: 8)
!382 = !DILocation(line: 573, column: 15, scope: !381)
!383 = !DILocation(line: 573, column: 8, scope: !235)
!384 = !DILocalVariable(name: "newDir", scope: !385, file: !236, line: 574, type: !230)
!385 = distinct !DILexicalBlock(scope: !381, file: !236, line: 573, column: 23)
!386 = !DILocation(line: 574, column: 13, scope: !385)
!387 = !DILocation(line: 574, column: 39, scope: !385)
!388 = !DILocation(line: 574, column: 22, scope: !385)
!389 = !DILocation(line: 576, column: 11, scope: !390)
!390 = distinct !DILexicalBlock(scope: !385, file: !236, line: 576, column: 11)
!391 = !DILocation(line: 576, column: 19, scope: !390)
!392 = !DILocation(line: 576, column: 16, scope: !390)
!393 = !DILocation(line: 576, column: 11, scope: !385)
!394 = !DILocation(line: 577, column: 14, scope: !395)
!395 = distinct !DILexicalBlock(scope: !396, file: !236, line: 577, column: 14)
!396 = distinct !DILexicalBlock(scope: !390, file: !236, line: 576, column: 31)
!397 = !DILocation(line: 577, column: 14, scope: !396)
!398 = !DILocation(line: 578, column: 24, scope: !399)
!399 = distinct !DILexicalBlock(scope: !395, file: !236, line: 577, column: 22)
!400 = !DILocation(line: 578, column: 13, scope: !399)
!401 = !DILocation(line: 579, column: 28, scope: !399)
!402 = !DILocation(line: 579, column: 26, scope: !399)
!403 = !DILocation(line: 580, column: 10, scope: !399)
!404 = !DILocation(line: 581, column: 24, scope: !405)
!405 = distinct !DILexicalBlock(scope: !395, file: !236, line: 580, column: 17)
!406 = !DILocation(line: 581, column: 13, scope: !405)
!407 = !DILocation(line: 582, column: 25, scope: !405)
!408 = !DILocation(line: 582, column: 23, scope: !405)
!409 = !DILocation(line: 584, column: 7, scope: !396)
!410 = !DILocation(line: 585, column: 21, scope: !411)
!411 = distinct !DILexicalBlock(scope: !390, file: !236, line: 584, column: 14)
!412 = !DILocation(line: 585, column: 10, scope: !411)
!413 = !DILocation(line: 586, column: 21, scope: !411)
!414 = !DILocation(line: 586, column: 10, scope: !411)
!415 = !DILocation(line: 588, column: 14, scope: !416)
!416 = distinct !DILexicalBlock(scope: !411, file: !236, line: 588, column: 14)
!417 = !DILocation(line: 588, column: 14, scope: !411)
!418 = !DILocation(line: 589, column: 28, scope: !419)
!419 = distinct !DILexicalBlock(scope: !416, file: !236, line: 588, column: 22)
!420 = !DILocation(line: 589, column: 26, scope: !419)
!421 = !DILocation(line: 590, column: 23, scope: !419)
!422 = !DILocation(line: 591, column: 10, scope: !419)
!423 = !DILocation(line: 592, column: 25, scope: !424)
!424 = distinct !DILexicalBlock(scope: !416, file: !236, line: 591, column: 17)
!425 = !DILocation(line: 592, column: 23, scope: !424)
!426 = !DILocation(line: 593, column: 26, scope: !424)
!427 = !DILocation(line: 596, column: 23, scope: !411)
!428 = !DILocation(line: 596, column: 21, scope: !411)
!429 = !DILocation(line: 598, column: 4, scope: !385)
!430 = !DILocation(line: 573, column: 27, scope: !431)
!431 = !DILexicalBlockFile(scope: !381, file: !236, discriminator: 1)
!432 = !DILocation(line: 602, column: 27, scope: !235)
!433 = !DILocation(line: 602, column: 4, scope: !235)
!434 = !DILocation(line: 603, column: 15, scope: !235)
!435 = !DILocation(line: 603, column: 4, scope: !235)
!436 = !DILocation(line: 604, column: 15, scope: !235)
!437 = !DILocation(line: 604, column: 4, scope: !235)
!438 = !DILocation(line: 607, column: 11, scope: !235)
!439 = !DILocation(line: 607, column: 4, scope: !235)
!440 = distinct !DISubprogram(name: "File_GetSafeRandomTmpDir", scope: !236, file: !236, line: 665, type: !278, isLocal: false, isDefinition: true, scopeLine: 666, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !241)
!441 = !DILocalVariable(name: "useConf", arg: 1, scope: !440, file: !236, line: 665, type: !239)
!442 = !DILocation(line: 665, column: 31, scope: !440)
!443 = !DILocation(line: 667, column: 29, scope: !440)
!444 = !DILocation(line: 667, column: 11, scope: !440)
!445 = !DILocation(line: 667, column: 4, scope: !440)
!446 = distinct !DISubprogram(name: "File_MakeSafeTempSubdir", scope: !236, file: !236, line: 690, type: !447, isLocal: false, isDefinition: true, scopeLine: 692, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !241)
!447 = !DISubroutineType(types: !448)
!448 = !{!230, !263, !263}
!449 = !DILocalVariable(name: "safeDir", arg: 1, scope: !446, file: !236, line: 690, type: !263)
!450 = !DILocation(line: 690, column: 37, scope: !446)
!451 = !DILocalVariable(name: "subdirName", arg: 2, scope: !446, file: !236, line: 691, type: !263)
!452 = !DILocation(line: 691, column: 37, scope: !446)
!453 = !DILocalVariable(name: "userId", scope: !446, file: !236, line: 700, type: !253)
!454 = !DILocation(line: 700, column: 10, scope: !446)
!455 = !DILocation(line: 700, column: 19, scope: !446)
!456 = !DILocalVariable(name: "fullSafeSubdir", scope: !446, file: !236, line: 701, type: !230)
!457 = !DILocation(line: 701, column: 10, scope: !446)
!458 = !DILocation(line: 703, column: 21, scope: !459)
!459 = distinct !DILexicalBlock(scope: !446, file: !236, line: 703, column: 8)
!460 = !DILocation(line: 703, column: 9, scope: !459)
!461 = !DILocation(line: 703, column: 30, scope: !459)
!462 = !DILocation(line: 704, column: 34, scope: !459)
!463 = !DILocation(line: 704, column: 43, scope: !459)
!464 = !DILocation(line: 704, column: 9, scope: !459)
!465 = !DILocation(line: 703, column: 8, scope: !466)
!466 = !DILexicalBlockFile(scope: !446, file: !236, discriminator: 1)
!467 = !DILocation(line: 705, column: 7, scope: !468)
!468 = distinct !DILexicalBlock(scope: !459, file: !236, line: 704, column: 52)
!469 = !DILocation(line: 708, column: 35, scope: !446)
!470 = !DILocation(line: 708, column: 44, scope: !446)
!471 = !DILocation(line: 708, column: 21, scope: !446)
!472 = !DILocation(line: 708, column: 19, scope: !446)
!473 = !DILocation(line: 709, column: 34, scope: !474)
!474 = distinct !DILexicalBlock(scope: !446, file: !236, line: 709, column: 8)
!475 = !DILocation(line: 709, column: 50, scope: !474)
!476 = !DILocation(line: 709, column: 9, scope: !474)
!477 = !DILocation(line: 709, column: 8, scope: !446)
!478 = !DILocation(line: 710, column: 12, scope: !479)
!479 = distinct !DILexicalBlock(scope: !474, file: !236, line: 709, column: 59)
!480 = !DILocation(line: 710, column: 7, scope: !479)
!481 = !DILocation(line: 711, column: 7, scope: !479)
!482 = !DILocation(line: 714, column: 11, scope: !446)
!483 = !DILocation(line: 714, column: 4, scope: !446)
!484 = !DILocation(line: 716, column: 1, scope: !446)
!485 = !DILocalVariable(name: "dirName", arg: 1, scope: !268, file: !236, line: 298, type: !263)
!486 = !DILocation(line: 298, column: 38, scope: !268)
!487 = !DILocalVariable(name: "uid", arg: 2, scope: !268, file: !236, line: 299, type: !253)
!488 = !DILocation(line: 299, column: 32, scope: !268)
!489 = !DILocalVariable(name: "acceptable", scope: !268, file: !236, line: 301, type: !239)
!490 = !DILocation(line: 301, column: 9, scope: !268)
!491 = !DILocation(line: 304, column: 30, scope: !268)
!492 = !DILocation(line: 304, column: 18, scope: !268)
!493 = !DILocation(line: 304, column: 45, scope: !268)
!494 = !DILocation(line: 304, column: 17, scope: !268)
!495 = !DILocation(line: 304, column: 15, scope: !268)
!496 = !DILocation(line: 306, column: 9, scope: !497)
!497 = distinct !DILexicalBlock(scope: !268, file: !236, line: 306, column: 8)
!498 = !DILocation(line: 306, column: 8, scope: !268)
!499 = !DILocalVariable(name: "error", scope: !500, file: !236, line: 307, type: !266)
!500 = distinct !DILexicalBlock(scope: !497, file: !236, line: 306, column: 21)
!501 = !DILocation(line: 307, column: 11, scope: !500)
!502 = !DILocation(line: 307, column: 20, scope: !500)
!503 = !DILocation(line: 307, column: 19, scope: !500)
!504 = !DILocation(line: 309, column: 20, scope: !505)
!505 = distinct !DILexicalBlock(scope: !500, file: !236, line: 309, column: 10)
!506 = !DILocation(line: 309, column: 17, scope: !505)
!507 = !DILocation(line: 309, column: 10, scope: !500)
!508 = !DILocalVariable(name: "st", scope: !509, file: !236, line: 310, type: !510)
!509 = distinct !DILexicalBlock(scope: !505, file: !236, line: 309, column: 27)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !511, line: 46, size: 1152, align: 64, elements: !512)
!511 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/open-vm-tools/line226")
!512 = !{!513, !515, !517, !519, !520, !521, !523, !524, !525, !528, !530, !532, !540, !541, !542}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !510, file: !511, line: 48, baseType: !514, size: 64, align: 64)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !256, line: 124, baseType: !229)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !510, file: !511, line: 53, baseType: !516, size: 64, align: 64, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !256, line: 127, baseType: !229)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !510, file: !511, line: 61, baseType: !518, size: 64, align: 64, offset: 128)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !256, line: 130, baseType: !229)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !510, file: !511, line: 62, baseType: !273, size: 32, align: 32, offset: 192)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !510, file: !511, line: 64, baseType: !255, size: 32, align: 32, offset: 224)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !510, file: !511, line: 65, baseType: !522, size: 32, align: 32, offset: 256)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !256, line: 126, baseType: !257)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !510, file: !511, line: 67, baseType: !266, size: 32, align: 32, offset: 288)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !510, file: !511, line: 69, baseType: !514, size: 64, align: 64, offset: 320)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !510, file: !511, line: 74, baseType: !526, size: 64, align: 64, offset: 384)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !256, line: 131, baseType: !527)
!527 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !510, file: !511, line: 78, baseType: !529, size: 64, align: 64, offset: 448)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !256, line: 153, baseType: !527)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !510, file: !511, line: 80, baseType: !531, size: 64, align: 64, offset: 512)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !256, line: 158, baseType: !527)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !510, file: !511, line: 91, baseType: !533, size: 128, align: 64, offset: 576)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !534, line: 120, size: 128, align: 64, elements: !535)
!534 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/open-vm-tools/line226")
!535 = !{!536, !538}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !533, file: !534, line: 122, baseType: !537, size: 64, align: 64)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !256, line: 139, baseType: !527)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !533, file: !534, line: 123, baseType: !539, size: 64, align: 64, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !256, line: 175, baseType: !527)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !510, file: !511, line: 92, baseType: !533, size: 128, align: 64, offset: 704)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !510, file: !511, line: 93, baseType: !533, size: 128, align: 64, offset: 832)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !510, file: !511, line: 106, baseType: !543, size: 192, align: 64, offset: 960)
!543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !539, size: 192, align: 64, elements: !544)
!544 = !{!545}
!545 = !DISubrange(count: 3)
!546 = !DILocation(line: 310, column: 22, scope: !509)
!547 = !DILocation(line: 321, column: 26, scope: !548)
!548 = distinct !DILexicalBlock(scope: !509, file: !236, line: 321, column: 14)
!549 = !DILocation(line: 321, column: 14, scope: !548)
!550 = !DILocation(line: 321, column: 40, scope: !548)
!551 = !DILocation(line: 321, column: 14, scope: !509)
!552 = !DILocation(line: 328, column: 19, scope: !553)
!553 = distinct !DILexicalBlock(scope: !554, file: !236, line: 328, column: 16)
!554 = distinct !DILexicalBlock(scope: !548, file: !236, line: 321, column: 46)
!555 = !DILocation(line: 328, column: 30, scope: !553)
!556 = !DILocation(line: 328, column: 36, scope: !553)
!557 = !DILocation(line: 329, column: 21, scope: !553)
!558 = !DILocation(line: 329, column: 31, scope: !553)
!559 = !DILocation(line: 329, column: 28, scope: !553)
!560 = !DILocation(line: 329, column: 36, scope: !553)
!561 = !DILocation(line: 330, column: 22, scope: !553)
!562 = !DILocation(line: 330, column: 30, scope: !553)
!563 = !DILocation(line: 330, column: 39, scope: !553)
!564 = !DILocation(line: 328, column: 16, scope: !565)
!565 = !DILexicalBlockFile(scope: !554, file: !236, discriminator: 1)
!566 = !DILocation(line: 331, column: 27, scope: !567)
!567 = distinct !DILexicalBlock(scope: !553, file: !236, line: 330, column: 49)
!568 = !DILocation(line: 332, column: 13, scope: !567)
!569 = !DILocation(line: 333, column: 10, scope: !554)
!570 = !DILocation(line: 334, column: 7, scope: !509)
!571 = !DILocation(line: 335, column: 4, scope: !500)
!572 = !DILocation(line: 337, column: 11, scope: !268)
!573 = !DILocation(line: 337, column: 4, scope: !268)
!574 = distinct !DISubprogram(name: "MXUser_CreateSingletonExclLock", scope: !225, file: !225, line: 67, type: !575, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !241)
!575 = !DISubroutineType(types: !576)
!576 = !{!223, !577, !263, !578}
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64, align: 64)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "MX_Rank", file: !240, line: 1167, baseType: !579)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !240, line: 173, baseType: !580)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !228, line: 51, baseType: !257)
!581 = !DILocalVariable(name: "lockStorage", arg: 1, scope: !574, file: !225, line: 67, type: !577)
!582 = !DILocation(line: 67, column: 44, scope: !574)
!583 = !DILocalVariable(name: "name", arg: 2, scope: !574, file: !225, line: 68, type: !263)
!584 = !DILocation(line: 68, column: 44, scope: !574)
!585 = !DILocalVariable(name: "rank", arg: 3, scope: !574, file: !225, line: 69, type: !578)
!586 = !DILocation(line: 69, column: 40, scope: !574)
!587 = !DILocalVariable(name: "lock", scope: !574, file: !225, line: 71, type: !223)
!588 = !DILocation(line: 71, column: 20, scope: !574)
!589 = !DILocation(line: 75, column: 45, scope: !574)
!590 = !DILocation(line: 75, column: 30, scope: !574)
!591 = !DILocation(line: 75, column: 11, scope: !574)
!592 = !DILocation(line: 75, column: 9, scope: !574)
!593 = !DILocation(line: 77, column: 26, scope: !594)
!594 = distinct !DILexicalBlock(scope: !574, file: !225, line: 77, column: 8)
!595 = !DILocation(line: 77, column: 31, scope: !594)
!596 = !DILocation(line: 77, column: 25, scope: !594)
!597 = !DILocation(line: 77, column: 8, scope: !594)
!598 = !DILocation(line: 77, column: 8, scope: !574)
!599 = !DILocation(line: 78, column: 48, scope: !600)
!600 = distinct !DILexicalBlock(scope: !594, file: !225, line: 77, column: 14)
!601 = !DILocation(line: 78, column: 61, scope: !600)
!602 = !DILocation(line: 78, column: 67, scope: !600)
!603 = !DILocation(line: 78, column: 14, scope: !600)
!604 = !DILocation(line: 78, column: 12, scope: !600)
!605 = !DILocation(line: 79, column: 4, scope: !600)
!606 = !DILocation(line: 81, column: 11, scope: !574)
!607 = !DILocation(line: 81, column: 4, scope: !574)
!608 = distinct !DISubprogram(name: "FileGetTmpDir", scope: !236, file: !236, line: 117, type: !278, isLocal: true, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !241)
!609 = !DILocalVariable(name: "useConf", arg: 1, scope: !608, file: !236, line: 117, type: !239)
!610 = !DILocation(line: 117, column: 20, scope: !608)
!611 = !DILocalVariable(name: "dirName", scope: !608, file: !236, line: 119, type: !230)
!612 = !DILocation(line: 119, column: 10, scope: !608)
!613 = !DILocalVariable(name: "edirName", scope: !608, file: !236, line: 120, type: !230)
!614 = !DILocation(line: 120, column: 10, scope: !608)
!615 = !DILocation(line: 124, column: 8, scope: !616)
!616 = distinct !DILexicalBlock(scope: !608, file: !236, line: 124, column: 8)
!617 = !DILocation(line: 124, column: 8, scope: !608)
!618 = !DILocation(line: 125, column: 25, scope: !619)
!619 = distinct !DILexicalBlock(scope: !616, file: !236, line: 124, column: 17)
!620 = !DILocation(line: 125, column: 15, scope: !619)
!621 = !DILocation(line: 126, column: 29, scope: !619)
!622 = !DILocation(line: 126, column: 18, scope: !619)
!623 = !DILocation(line: 126, column: 16, scope: !619)
!624 = !DILocation(line: 127, column: 18, scope: !619)
!625 = !DILocation(line: 127, column: 7, scope: !619)
!626 = !DILocation(line: 128, column: 11, scope: !627)
!627 = distinct !DILexicalBlock(scope: !619, file: !236, line: 128, column: 11)
!628 = !DILocation(line: 128, column: 20, scope: !627)
!629 = !DILocation(line: 128, column: 11, scope: !619)
!630 = !DILocation(line: 129, column: 17, scope: !631)
!631 = distinct !DILexicalBlock(scope: !627, file: !236, line: 128, column: 28)
!632 = !DILocation(line: 129, column: 10, scope: !631)
!633 = !DILocation(line: 131, column: 4, scope: !619)
!634 = !DILocation(line: 134, column: 26, scope: !608)
!635 = !DILocation(line: 134, column: 15, scope: !636)
!636 = !DILexicalBlockFile(scope: !608, file: !236, discriminator: 1)
!637 = !DILocation(line: 134, column: 13, scope: !608)
!638 = !DILocation(line: 135, column: 8, scope: !639)
!639 = distinct !DILexicalBlock(scope: !608, file: !236, line: 135, column: 8)
!640 = !DILocation(line: 135, column: 17, scope: !639)
!641 = !DILocation(line: 135, column: 8, scope: !608)
!642 = !DILocation(line: 136, column: 14, scope: !643)
!643 = distinct !DILexicalBlock(scope: !639, file: !236, line: 135, column: 25)
!644 = !DILocation(line: 136, column: 7, scope: !643)
!645 = !DILocation(line: 140, column: 15, scope: !608)
!646 = !DILocation(line: 140, column: 13, scope: !608)
!647 = !DILocation(line: 141, column: 8, scope: !648)
!648 = distinct !DILexicalBlock(scope: !608, file: !236, line: 141, column: 8)
!649 = !DILocation(line: 141, column: 17, scope: !648)
!650 = !DILocation(line: 141, column: 8, scope: !608)
!651 = !DILocation(line: 142, column: 14, scope: !652)
!652 = distinct !DILexicalBlock(scope: !648, file: !236, line: 141, column: 25)
!653 = !DILocation(line: 142, column: 7, scope: !652)
!654 = !DILocation(line: 145, column: 15, scope: !608)
!655 = !DILocation(line: 145, column: 13, scope: !608)
!656 = !DILocation(line: 146, column: 8, scope: !657)
!657 = distinct !DILexicalBlock(scope: !608, file: !236, line: 146, column: 8)
!658 = !DILocation(line: 146, column: 17, scope: !657)
!659 = !DILocation(line: 146, column: 8, scope: !608)
!660 = !DILocation(line: 147, column: 14, scope: !661)
!661 = distinct !DILexicalBlock(scope: !657, file: !236, line: 146, column: 25)
!662 = !DILocation(line: 147, column: 7, scope: !661)
!663 = !DILocation(line: 150, column: 15, scope: !608)
!664 = !DILocation(line: 150, column: 13, scope: !608)
!665 = !DILocation(line: 151, column: 8, scope: !666)
!666 = distinct !DILexicalBlock(scope: !608, file: !236, line: 151, column: 8)
!667 = !DILocation(line: 151, column: 17, scope: !666)
!668 = !DILocation(line: 151, column: 8, scope: !608)
!669 = !DILocation(line: 152, column: 14, scope: !670)
!670 = distinct !DILexicalBlock(scope: !666, file: !236, line: 151, column: 25)
!671 = !DILocation(line: 152, column: 7, scope: !670)
!672 = !DILocation(line: 155, column: 14, scope: !608)
!673 = !DILocation(line: 155, column: 12, scope: !608)
!674 = !DILocation(line: 157, column: 8, scope: !675)
!675 = distinct !DILexicalBlock(scope: !608, file: !236, line: 157, column: 8)
!676 = !DILocation(line: 157, column: 16, scope: !675)
!677 = !DILocation(line: 157, column: 8, scope: !608)
!678 = !DILocation(line: 158, column: 29, scope: !679)
!679 = distinct !DILexicalBlock(scope: !675, file: !236, line: 157, column: 24)
!680 = !DILocation(line: 158, column: 18, scope: !679)
!681 = !DILocation(line: 158, column: 16, scope: !679)
!682 = !DILocation(line: 159, column: 18, scope: !679)
!683 = !DILocation(line: 159, column: 7, scope: !679)
!684 = !DILocation(line: 160, column: 11, scope: !685)
!685 = distinct !DILexicalBlock(scope: !679, file: !236, line: 160, column: 11)
!686 = !DILocation(line: 160, column: 20, scope: !685)
!687 = !DILocation(line: 160, column: 11, scope: !679)
!688 = !DILocation(line: 161, column: 17, scope: !689)
!689 = distinct !DILexicalBlock(scope: !685, file: !236, line: 160, column: 28)
!690 = !DILocation(line: 161, column: 10, scope: !689)
!691 = !DILocation(line: 163, column: 4, scope: !679)
!692 = !DILocation(line: 165, column: 15, scope: !608)
!693 = !DILocation(line: 165, column: 13, scope: !608)
!694 = !DILocation(line: 166, column: 8, scope: !695)
!695 = distinct !DILexicalBlock(scope: !608, file: !236, line: 166, column: 8)
!696 = !DILocation(line: 166, column: 17, scope: !695)
!697 = !DILocation(line: 166, column: 8, scope: !608)
!698 = !DILocation(line: 167, column: 14, scope: !699)
!699 = distinct !DILexicalBlock(scope: !695, file: !236, line: 166, column: 25)
!700 = !DILocation(line: 167, column: 7, scope: !699)
!701 = !DILocation(line: 170, column: 4, scope: !608)
!702 = !DILocation(line: 171, column: 4, scope: !608)
!703 = !DILocation(line: 172, column: 1, scope: !608)
!704 = distinct !DISubprogram(name: "FileGetUserIdentifier", scope: !236, file: !236, line: 255, type: !705, isLocal: true, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !241)
!705 = !DISubroutineType(types: !706)
!706 = !{!230, !253, !239}
!707 = !DILocalVariable(name: "uid", arg: 1, scope: !704, file: !236, line: 255, type: !253)
!708 = !DILocation(line: 255, column: 29, scope: !704)
!709 = !DILocalVariable(name: "addPid", arg: 2, scope: !704, file: !236, line: 256, type: !239)
!710 = !DILocation(line: 256, column: 28, scope: !704)
!711 = !DILocalVariable(name: "userName", scope: !704, file: !236, line: 258, type: !230)
!712 = !DILocation(line: 258, column: 10, scope: !704)
!713 = !DILocation(line: 258, column: 37, scope: !704)
!714 = !DILocation(line: 258, column: 21, scope: !704)
!715 = !DILocation(line: 260, column: 8, scope: !716)
!716 = distinct !DILexicalBlock(scope: !704, file: !236, line: 260, column: 8)
!717 = !DILocation(line: 260, column: 17, scope: !716)
!718 = !DILocation(line: 260, column: 8, scope: !704)
!719 = !DILocation(line: 261, column: 7, scope: !720)
!720 = distinct !DILexicalBlock(scope: !716, file: !236, line: 260, column: 25)
!721 = !DILocation(line: 264, column: 50, scope: !720)
!722 = !DILocation(line: 264, column: 18, scope: !720)
!723 = !DILocation(line: 264, column: 16, scope: !720)
!724 = !DILocation(line: 265, column: 4, scope: !720)
!725 = !DILocation(line: 267, column: 8, scope: !726)
!726 = distinct !DILexicalBlock(scope: !704, file: !236, line: 267, column: 8)
!727 = !DILocation(line: 267, column: 8, scope: !704)
!728 = !DILocalVariable(name: "pidToo", scope: !729, file: !236, line: 268, type: !230)
!729 = distinct !DILexicalBlock(scope: !726, file: !236, line: 267, column: 16)
!730 = !DILocation(line: 268, column: 13, scope: !729)
!731 = !DILocation(line: 268, column: 53, scope: !729)
!732 = !DILocation(line: 268, column: 63, scope: !729)
!733 = !DILocation(line: 268, column: 22, scope: !734)
!734 = !DILexicalBlockFile(scope: !729, file: !236, discriminator: 1)
!735 = !DILocation(line: 270, column: 18, scope: !729)
!736 = !DILocation(line: 270, column: 7, scope: !729)
!737 = !DILocation(line: 271, column: 18, scope: !729)
!738 = !DILocation(line: 271, column: 16, scope: !729)
!739 = !DILocation(line: 272, column: 4, scope: !729)
!740 = !DILocation(line: 274, column: 11, scope: !704)
!741 = !DILocation(line: 274, column: 4, scope: !704)
!742 = distinct !DISubprogram(name: "Posix_Free", scope: !743, file: !743, line: 129, type: !744, isLocal: true, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !241)
!743 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/posix.h", directory: "/home/lichi/Desktop/open-vm-tools/line226")
!744 = !DISubroutineType(types: !745)
!745 = !{null, !222}
!746 = !DILocalVariable(name: "p", arg: 1, scope: !742, file: !743, line: 129, type: !222)
!747 = !DILocation(line: 129, column: 18, scope: !742)
!748 = !DILocalVariable(name: "err", scope: !742, file: !743, line: 131, type: !266)
!749 = !DILocation(line: 131, column: 8, scope: !742)
!750 = !DILocation(line: 131, column: 15, scope: !742)
!751 = !DILocation(line: 131, column: 14, scope: !742)
!752 = !DILocation(line: 132, column: 9, scope: !742)
!753 = !DILocation(line: 132, column: 4, scope: !742)
!754 = !DILocation(line: 133, column: 11, scope: !742)
!755 = !DILocation(line: 133, column: 5, scope: !742)
!756 = !DILocation(line: 133, column: 9, scope: !742)
!757 = !DILocation(line: 134, column: 1, scope: !742)
!758 = distinct !DISubprogram(name: "FileFindExistingSafeTmpDir", scope: !236, file: !236, line: 361, type: !261, isLocal: true, isDefinition: true, scopeLine: 364, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !241)
!759 = !DILocalVariable(name: "baseTmpDir", arg: 1, scope: !758, file: !236, line: 361, type: !263)
!760 = !DILocation(line: 361, column: 40, scope: !758)
!761 = !DILocalVariable(name: "userName", arg: 2, scope: !758, file: !236, line: 362, type: !263)
!762 = !DILocation(line: 362, column: 40, scope: !758)
!763 = !DILocalVariable(name: "uid", arg: 3, scope: !758, file: !236, line: 363, type: !253)
!764 = !DILocation(line: 363, column: 34, scope: !758)
!765 = !DILocalVariable(name: "i", scope: !758, file: !236, line: 365, type: !266)
!766 = !DILocation(line: 365, column: 8, scope: !758)
!767 = !DILocalVariable(name: "numFiles", scope: !758, file: !236, line: 366, type: !266)
!768 = !DILocation(line: 366, column: 8, scope: !758)
!769 = !DILocalVariable(name: "pattern", scope: !758, file: !236, line: 367, type: !230)
!770 = !DILocation(line: 367, column: 10, scope: !758)
!771 = !DILocalVariable(name: "tmpDir", scope: !758, file: !236, line: 368, type: !230)
!772 = !DILocation(line: 368, column: 10, scope: !758)
!773 = !DILocalVariable(name: "fileList", scope: !758, file: !236, line: 369, type: !774)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, align: 64)
!775 = !DILocation(line: 369, column: 11, scope: !758)
!776 = !DILocation(line: 377, column: 49, scope: !758)
!777 = !DILocation(line: 377, column: 14, scope: !758)
!778 = !DILocation(line: 377, column: 12, scope: !758)
!779 = !DILocation(line: 378, column: 8, scope: !780)
!780 = distinct !DILexicalBlock(scope: !758, file: !236, line: 378, column: 8)
!781 = !DILocation(line: 378, column: 16, scope: !780)
!782 = !DILocation(line: 378, column: 8, scope: !758)
!783 = !DILocation(line: 379, column: 7, scope: !784)
!784 = distinct !DILexicalBlock(scope: !780, file: !236, line: 378, column: 24)
!785 = !DILocation(line: 382, column: 34, scope: !758)
!786 = !DILocation(line: 382, column: 15, scope: !758)
!787 = !DILocation(line: 382, column: 13, scope: !758)
!788 = !DILocation(line: 384, column: 8, scope: !789)
!789 = distinct !DILexicalBlock(scope: !758, file: !236, line: 384, column: 8)
!790 = !DILocation(line: 384, column: 17, scope: !789)
!791 = !DILocation(line: 384, column: 8, scope: !758)
!792 = !DILocation(line: 385, column: 18, scope: !793)
!793 = distinct !DILexicalBlock(scope: !789, file: !236, line: 384, column: 24)
!794 = !DILocation(line: 385, column: 7, scope: !793)
!795 = !DILocation(line: 387, column: 7, scope: !793)
!796 = !DILocation(line: 390, column: 11, scope: !797)
!797 = distinct !DILexicalBlock(scope: !758, file: !236, line: 390, column: 4)
!798 = !DILocation(line: 390, column: 9, scope: !797)
!799 = !DILocation(line: 390, column: 16, scope: !800)
!800 = !DILexicalBlockFile(scope: !801, file: !236, discriminator: 1)
!801 = distinct !DILexicalBlock(scope: !797, file: !236, line: 390, column: 4)
!802 = !DILocation(line: 390, column: 20, scope: !800)
!803 = !DILocation(line: 390, column: 18, scope: !800)
!804 = !DILocation(line: 390, column: 4, scope: !800)
!805 = !DILocation(line: 391, column: 40, scope: !806)
!806 = distinct !DILexicalBlock(scope: !807, file: !236, line: 391, column: 12)
!807 = distinct !DILexicalBlock(scope: !801, file: !236, line: 390, column: 35)
!808 = !DILocation(line: 391, column: 31, scope: !806)
!809 = !DILocation(line: 391, column: 44, scope: !806)
!810 = !DILocation(line: 391, column: 12, scope: !806)
!811 = !DILocation(line: 391, column: 12, scope: !807)
!812 = !DILocalVariable(name: "path", scope: !813, file: !236, line: 392, type: !230)
!813 = distinct !DILexicalBlock(scope: !806, file: !236, line: 391, column: 54)
!814 = !DILocation(line: 392, column: 17, scope: !813)
!815 = !DILocation(line: 392, column: 37, scope: !813)
!816 = !DILocation(line: 392, column: 63, scope: !813)
!817 = !DILocation(line: 392, column: 54, scope: !813)
!818 = !DILocation(line: 392, column: 24, scope: !813)
!819 = !DILocation(line: 394, column: 32, scope: !820)
!820 = distinct !DILexicalBlock(scope: !813, file: !236, line: 394, column: 15)
!821 = !DILocation(line: 394, column: 15, scope: !820)
!822 = !DILocation(line: 394, column: 38, scope: !820)
!823 = !DILocation(line: 395, column: 40, scope: !820)
!824 = !DILocation(line: 395, column: 46, scope: !820)
!825 = !DILocation(line: 395, column: 15, scope: !820)
!826 = !DILocation(line: 394, column: 15, scope: !827)
!827 = !DILexicalBlockFile(scope: !813, file: !236, discriminator: 1)
!828 = !DILocation(line: 396, column: 23, scope: !829)
!829 = distinct !DILexicalBlock(scope: !820, file: !236, line: 395, column: 52)
!830 = !DILocation(line: 396, column: 21, scope: !829)
!831 = !DILocation(line: 397, column: 14, scope: !829)
!832 = !DILocation(line: 400, column: 22, scope: !813)
!833 = !DILocation(line: 400, column: 11, scope: !813)
!834 = !DILocation(line: 401, column: 8, scope: !813)
!835 = !DILocation(line: 402, column: 4, scope: !807)
!836 = !DILocation(line: 390, column: 31, scope: !837)
!837 = !DILexicalBlockFile(scope: !801, file: !236, discriminator: 2)
!838 = !DILocation(line: 390, column: 4, scope: !837)
!839 = distinct !{!839, !840}
!840 = !DILocation(line: 390, column: 4, scope: !758)
!841 = !DILocation(line: 404, column: 24, scope: !758)
!842 = !DILocation(line: 404, column: 34, scope: !758)
!843 = !DILocation(line: 404, column: 4, scope: !758)
!844 = !DILocation(line: 405, column: 15, scope: !758)
!845 = !DILocation(line: 405, column: 4, scope: !758)
!846 = !DILocation(line: 407, column: 11, scope: !758)
!847 = !DILocation(line: 407, column: 4, scope: !758)
!848 = !DILocation(line: 408, column: 1, scope: !758)
!849 = !DILocalVariable(name: "baseTmpDir", arg: 1, scope: !260, file: !236, line: 430, type: !263)
!850 = !DILocation(line: 430, column: 34, scope: !260)
!851 = !DILocalVariable(name: "userName", arg: 2, scope: !260, file: !236, line: 431, type: !263)
!852 = !DILocation(line: 431, column: 34, scope: !260)
!853 = !DILocalVariable(name: "uid", arg: 3, scope: !260, file: !236, line: 432, type: !253)
!854 = !DILocation(line: 432, column: 28, scope: !260)
!855 = !DILocalVariable(name: "curDirIter", scope: !260, file: !236, line: 434, type: !266)
!856 = !DILocation(line: 434, column: 8, scope: !260)
!857 = !DILocalVariable(name: "tmpDir", scope: !260, file: !236, line: 435, type: !230)
!858 = !DILocation(line: 435, column: 10, scope: !260)
!859 = !DILocation(line: 438, column: 4, scope: !260)
!860 = !DILocation(line: 444, column: 54, scope: !861)
!861 = distinct !DILexicalBlock(scope: !260, file: !236, line: 438, column: 14)
!862 = !DILocation(line: 445, column: 43, scope: !861)
!863 = !DILocation(line: 446, column: 33, scope: !861)
!864 = !DILocation(line: 444, column: 16, scope: !861)
!865 = !DILocation(line: 444, column: 14, scope: !861)
!866 = !DILocation(line: 448, column: 36, scope: !867)
!867 = distinct !DILexicalBlock(scope: !861, file: !236, line: 448, column: 11)
!868 = !DILocation(line: 448, column: 44, scope: !867)
!869 = !DILocation(line: 448, column: 11, scope: !867)
!870 = !DILocation(line: 448, column: 11, scope: !861)
!871 = !DILocation(line: 449, column: 10, scope: !872)
!872 = distinct !DILexicalBlock(scope: !867, file: !236, line: 448, column: 50)
!873 = !DILocation(line: 452, column: 11, scope: !874)
!874 = distinct !DILexicalBlock(scope: !861, file: !236, line: 452, column: 11)
!875 = !DILocation(line: 452, column: 24, scope: !874)
!876 = !DILocation(line: 452, column: 11, scope: !861)
!877 = !DILocation(line: 455, column: 32, scope: !878)
!878 = distinct !DILexicalBlock(scope: !874, file: !236, line: 452, column: 41)
!879 = !DILocation(line: 453, column: 10, scope: !878)
!880 = !DILocation(line: 456, column: 21, scope: !878)
!881 = !DILocation(line: 456, column: 10, scope: !878)
!882 = !DILocation(line: 457, column: 17, scope: !878)
!883 = !DILocation(line: 458, column: 10, scope: !878)
!884 = !DILocation(line: 461, column: 18, scope: !861)
!885 = !DILocation(line: 461, column: 7, scope: !861)
!886 = !DILocation(line: 438, column: 4, scope: !887)
!887 = !DILexicalBlockFile(scope: !260, file: !236, discriminator: 1)
!888 = distinct !{!888, !859}
!889 = !DILocation(line: 464, column: 11, scope: !260)
!890 = !DILocation(line: 464, column: 4, scope: !260)
!891 = distinct !DISubprogram(name: "Atomic_ReadPtr", scope: !243, file: !243, line: 3829, type: !892, isLocal: true, isDefinition: true, scopeLine: 3829, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !241)
!892 = !DISubroutineType(types: !893)
!893 = !{!222, !894}
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64, align: 64)
!895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!896 = !DILocalVariable(name: "var", arg: 1, scope: !891, file: !243, line: 3829, type: !894)
!897 = !DILocation(line: 3829, column: 368, scope: !891)
!898 = !DILocation(line: 3829, column: 415, scope: !891)
!899 = !DILocation(line: 3829, column: 401, scope: !891)
!900 = !DILocation(line: 3829, column: 382, scope: !891)
!901 = !DILocation(line: 3829, column: 375, scope: !891)
!902 = distinct !DISubprogram(name: "Atomic_Read64", scope: !243, file: !243, line: 2143, type: !903, isLocal: true, isDefinition: true, scopeLine: 2144, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !241)
!903 = !DISubroutineType(types: !904)
!904 = !{!249, !905}
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64, align: 64)
!906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!907 = !DILocalVariable(name: "var", arg: 1, scope: !902, file: !243, line: 2143, type: !905)
!908 = !DILocation(line: 2143, column: 36, scope: !902)
!909 = !DILocalVariable(name: "value", scope: !902, file: !243, line: 2146, type: !249)
!910 = !DILocation(line: 2146, column: 11, scope: !902)
!911 = !DILocation(line: 2160, column: 14, scope: !902)
!912 = !DILocation(line: 2160, column: 19, scope: !902)
!913 = !DILocation(line: 2157, column: 4, scope: !902)
!914 = !{i32 276223}
!915 = !DILocation(line: 2213, column: 11, scope: !902)
!916 = !DILocation(line: 2213, column: 4, scope: !902)
!917 = distinct !DISubprogram(name: "FileTryDir", scope: !236, file: !236, line: 79, type: !918, isLocal: true, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !241)
!918 = !DISubroutineType(types: !919)
!919 = !{!230, !263}
!920 = !DILocalVariable(name: "dirName", arg: 1, scope: !917, file: !236, line: 79, type: !263)
!921 = !DILocation(line: 79, column: 24, scope: !917)
!922 = !DILocalVariable(name: "edirName", scope: !917, file: !236, line: 81, type: !230)
!923 = !DILocation(line: 81, column: 10, scope: !917)
!924 = !DILocation(line: 83, column: 8, scope: !925)
!925 = distinct !DILexicalBlock(scope: !917, file: !236, line: 83, column: 8)
!926 = !DILocation(line: 83, column: 16, scope: !925)
!927 = !DILocation(line: 83, column: 8, scope: !917)
!928 = !DILocation(line: 84, column: 36, scope: !929)
!929 = distinct !DILexicalBlock(scope: !925, file: !236, line: 83, column: 24)
!930 = !DILocation(line: 84, column: 18, scope: !929)
!931 = !DILocation(line: 84, column: 16, scope: !929)
!932 = !DILocation(line: 86, column: 12, scope: !933)
!933 = distinct !DILexicalBlock(scope: !929, file: !236, line: 86, column: 11)
!934 = !DILocation(line: 86, column: 21, scope: !933)
!935 = !DILocation(line: 86, column: 29, scope: !933)
!936 = !DILocation(line: 86, column: 50, scope: !937)
!937 = !DILexicalBlockFile(scope: !933, file: !236, discriminator: 1)
!938 = !DILocation(line: 86, column: 32, scope: !937)
!939 = !DILocation(line: 86, column: 11, scope: !937)
!940 = !DILocation(line: 87, column: 17, scope: !941)
!941 = distinct !DILexicalBlock(scope: !933, file: !236, line: 86, column: 61)
!942 = !DILocation(line: 87, column: 10, scope: !941)
!943 = !DILocation(line: 90, column: 18, scope: !929)
!944 = !DILocation(line: 90, column: 7, scope: !929)
!945 = !DILocation(line: 91, column: 4, scope: !929)
!946 = !DILocation(line: 93, column: 4, scope: !917)
!947 = !DILocation(line: 94, column: 1, scope: !917)
!948 = distinct !DISubprogram(name: "FileGetUserName", scope: !236, file: !236, line: 197, type: !949, isLocal: true, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !241)
!949 = !DISubroutineType(types: !950)
!950 = !{!230, !253}
!951 = !DILocalVariable(name: "uid", arg: 1, scope: !948, file: !236, line: 197, type: !253)
!952 = !DILocation(line: 197, column: 23, scope: !948)
!953 = !DILocalVariable(name: "memPool", scope: !948, file: !236, line: 199, type: !230)
!954 = !DILocation(line: 199, column: 10, scope: !948)
!955 = !DILocalVariable(name: "memPoolSize", scope: !948, file: !236, line: 200, type: !527)
!956 = !DILocation(line: 200, column: 9, scope: !948)
!957 = !DILocalVariable(name: "pw", scope: !948, file: !236, line: 201, type: !958)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !959, line: 49, size: 384, align: 64, elements: !960)
!959 = !DIFile(filename: "/usr/include/pwd.h", directory: "/home/lichi/Desktop/open-vm-tools/line226")
!960 = !{!961, !962, !963, !964, !965, !966, !967}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !958, file: !959, line: 51, baseType: !230, size: 64, align: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !958, file: !959, line: 52, baseType: !230, size: 64, align: 64, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !958, file: !959, line: 53, baseType: !255, size: 32, align: 32, offset: 128)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !958, file: !959, line: 54, baseType: !522, size: 32, align: 32, offset: 160)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !958, file: !959, line: 55, baseType: !230, size: 64, align: 64, offset: 192)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !958, file: !959, line: 56, baseType: !230, size: 64, align: 64, offset: 256)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !958, file: !959, line: 57, baseType: !230, size: 64, align: 64, offset: 320)
!968 = !DILocation(line: 201, column: 18, scope: !948)
!969 = !DILocalVariable(name: "pw_p", scope: !948, file: !236, line: 202, type: !970)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64, align: 64)
!971 = !DILocation(line: 202, column: 19, scope: !948)
!972 = !DILocalVariable(name: "userName", scope: !948, file: !236, line: 203, type: !230)
!973 = !DILocation(line: 203, column: 10, scope: !948)
!974 = !DILocation(line: 208, column: 5, scope: !948)
!975 = !DILocation(line: 208, column: 9, scope: !948)
!976 = !DILocation(line: 209, column: 18, scope: !948)
!977 = !DILocation(line: 209, column: 16, scope: !948)
!978 = !DILocation(line: 211, column: 10, scope: !979)
!979 = distinct !DILexicalBlock(scope: !948, file: !236, line: 211, column: 8)
!980 = !DILocation(line: 211, column: 9, scope: !979)
!981 = !DILocation(line: 211, column: 14, scope: !979)
!982 = !DILocation(line: 211, column: 20, scope: !979)
!983 = !DILocation(line: 211, column: 24, scope: !984)
!984 = !DILexicalBlockFile(scope: !979, file: !236, discriminator: 1)
!985 = !DILocation(line: 211, column: 36, scope: !984)
!986 = !DILocation(line: 211, column: 8, scope: !984)
!987 = !DILocation(line: 212, column: 7, scope: !988)
!988 = distinct !DILexicalBlock(scope: !979, file: !236, line: 211, column: 43)
!989 = !DILocation(line: 214, column: 7, scope: !988)
!990 = !DILocation(line: 217, column: 8, scope: !991)
!991 = distinct !DILexicalBlock(scope: !948, file: !236, line: 217, column: 8)
!992 = !DILocation(line: 217, column: 20, scope: !991)
!993 = !DILocation(line: 217, column: 8, scope: !948)
!994 = !DILocation(line: 218, column: 19, scope: !995)
!995 = distinct !DILexicalBlock(scope: !991, file: !236, line: 217, column: 27)
!996 = !DILocation(line: 219, column: 4, scope: !995)
!997 = !DILocation(line: 222, column: 31, scope: !948)
!998 = !DILocation(line: 222, column: 14, scope: !948)
!999 = !DILocation(line: 222, column: 12, scope: !948)
!1000 = !DILocation(line: 224, column: 26, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !948, file: !236, line: 224, column: 8)
!1002 = !DILocation(line: 224, column: 36, scope: !1001)
!1003 = !DILocation(line: 224, column: 45, scope: !1001)
!1004 = !DILocation(line: 224, column: 9, scope: !1001)
!1005 = !DILocation(line: 224, column: 65, scope: !1001)
!1006 = !DILocation(line: 224, column: 71, scope: !1001)
!1007 = !DILocation(line: 225, column: 8, scope: !1001)
!1008 = !DILocation(line: 225, column: 13, scope: !1001)
!1009 = !DILocation(line: 224, column: 8, scope: !1010)
!1010 = !DILexicalBlockFile(scope: !948, file: !236, discriminator: 1)
!1011 = !DILocation(line: 227, column: 28, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1001, file: !236, line: 225, column: 21)
!1013 = !DILocation(line: 226, column: 7, scope: !1012)
!1014 = !DILocation(line: 228, column: 4, scope: !1012)
!1015 = !DILocation(line: 229, column: 35, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1001, file: !236, line: 228, column: 11)
!1017 = !DILocation(line: 229, column: 41, scope: !1016)
!1018 = !DILocation(line: 229, column: 18, scope: !1016)
!1019 = !DILocation(line: 229, column: 16, scope: !1016)
!1020 = !DILocation(line: 232, column: 15, scope: !948)
!1021 = !DILocation(line: 232, column: 4, scope: !948)
!1022 = !DILocation(line: 234, column: 11, scope: !948)
!1023 = !DILocation(line: 234, column: 4, scope: !948)
!1024 = !DILocation(line: 235, column: 1, scope: !948)
!1025 = distinct !DISubprogram(name: "Unicode_StartsWith", scope: !1026, file: !1026, line: 729, type: !1027, isLocal: true, isDefinition: true, scopeLine: 731, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !241)
!1026 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/unicodeOperations.h", directory: "/home/lichi/Desktop/open-vm-tools/line226")
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!239, !263, !263}
!1029 = !DILocalVariable(name: "str", arg: 1, scope: !1025, file: !1026, line: 729, type: !263)
!1030 = !DILocation(line: 729, column: 32, scope: !1025)
!1031 = !DILocalVariable(name: "prefix", arg: 2, scope: !1025, file: !1026, line: 730, type: !263)
!1032 = !DILocation(line: 730, column: 32, scope: !1025)
!1033 = !DILocation(line: 732, column: 29, scope: !1025)
!1034 = !DILocation(line: 732, column: 34, scope: !1025)
!1035 = !DILocation(line: 732, column: 11, scope: !1025)
!1036 = !DILocation(line: 732, column: 4, scope: !1025)
!1037 = distinct !DISubprogram(name: "Util_FreeStringList", scope: !1038, file: !1038, line: 368, type: !1039, isLocal: true, isDefinition: true, scopeLine: 370, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !241)
!1038 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/util.h", directory: "/home/lichi/Desktop/open-vm-tools/line226")
!1039 = !DISubroutineType(types: !1040)
!1040 = !{null, !774, !1041}
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1042, line: 109, baseType: !1043)
!1042 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line226")
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !256, line: 172, baseType: !527)
!1044 = !DILocalVariable(name: "list", arg: 1, scope: !1037, file: !1038, line: 368, type: !774)
!1045 = !DILocation(line: 368, column: 28, scope: !1037)
!1046 = !DILocalVariable(name: "length", arg: 2, scope: !1037, file: !1038, line: 369, type: !1041)
!1047 = !DILocation(line: 369, column: 29, scope: !1037)
!1048 = !DILocation(line: 371, column: 28, scope: !1037)
!1049 = !DILocation(line: 371, column: 34, scope: !1037)
!1050 = !DILocation(line: 371, column: 4, scope: !1037)
!1051 = !DILocation(line: 372, column: 1, scope: !1037)
!1052 = distinct !DISubprogram(name: "UnicodeStartsWith", scope: !1026, file: !1026, line: 707, type: !1053, isLocal: true, isDefinition: true, scopeLine: 710, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !241)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!239, !263, !263, !239}
!1055 = !DILocalVariable(name: "str", arg: 1, scope: !1052, file: !1026, line: 707, type: !263)
!1056 = !DILocation(line: 707, column: 31, scope: !1052)
!1057 = !DILocalVariable(name: "prefix", arg: 2, scope: !1052, file: !1026, line: 708, type: !263)
!1058 = !DILocation(line: 708, column: 31, scope: !1052)
!1059 = !DILocalVariable(name: "ignoreCase", arg: 3, scope: !1052, file: !1026, line: 709, type: !239)
!1060 = !DILocation(line: 709, column: 24, scope: !1052)
!1061 = !DILocalVariable(name: "strLength", scope: !1052, file: !1026, line: 711, type: !1062)
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "UnicodeIndex", file: !1063, line: 41, baseType: !1041)
!1063 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/unicodeTypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line226")
!1064 = !DILocation(line: 711, column: 17, scope: !1052)
!1065 = !DILocation(line: 711, column: 56, scope: !1052)
!1066 = !DILocation(line: 711, column: 29, scope: !1052)
!1067 = !DILocalVariable(name: "prefixLength", scope: !1052, file: !1026, line: 712, type: !1062)
!1068 = !DILocation(line: 712, column: 17, scope: !1052)
!1069 = !DILocation(line: 712, column: 59, scope: !1052)
!1070 = !DILocation(line: 712, column: 32, scope: !1052)
!1071 = !DILocation(line: 714, column: 8, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1052, file: !1026, line: 714, column: 8)
!1073 = !DILocation(line: 714, column: 23, scope: !1072)
!1074 = !DILocation(line: 714, column: 21, scope: !1072)
!1075 = !DILocation(line: 714, column: 8, scope: !1052)
!1076 = !DILocation(line: 715, column: 7, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1072, file: !1026, line: 714, column: 34)
!1078 = !DILocation(line: 718, column: 32, scope: !1052)
!1079 = !DILocation(line: 720, column: 32, scope: !1052)
!1080 = !DILocation(line: 721, column: 32, scope: !1052)
!1081 = !DILocation(line: 723, column: 32, scope: !1052)
!1082 = !DILocation(line: 724, column: 32, scope: !1052)
!1083 = !DILocation(line: 718, column: 11, scope: !1052)
!1084 = !DILocation(line: 724, column: 44, scope: !1052)
!1085 = !DILocation(line: 718, column: 4, scope: !1052)
!1086 = !DILocation(line: 725, column: 1, scope: !1052)
!1087 = distinct !DISubprogram(name: "Util_FreeList", scope: !1038, file: !1038, line: 335, type: !1088, isLocal: true, isDefinition: true, scopeLine: 337, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !241)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{null, !232, !1041}
!1090 = !DILocalVariable(name: "list", arg: 1, scope: !1087, file: !1038, line: 335, type: !232)
!1091 = !DILocation(line: 335, column: 22, scope: !1087)
!1092 = !DILocalVariable(name: "length", arg: 2, scope: !1087, file: !1038, line: 336, type: !1041)
!1093 = !DILocation(line: 336, column: 23, scope: !1087)
!1094 = !DILocalVariable(name: "err", scope: !1087, file: !1038, line: 339, type: !266)
!1095 = !DILocation(line: 339, column: 8, scope: !1087)
!1096 = !DILocation(line: 341, column: 8, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1087, file: !1038, line: 341, column: 8)
!1098 = !DILocation(line: 341, column: 13, scope: !1097)
!1099 = !DILocation(line: 341, column: 8, scope: !1087)
!1100 = !DILocation(line: 343, column: 7, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1097, file: !1038, line: 341, column: 21)
!1102 = !DILocation(line: 346, column: 11, scope: !1087)
!1103 = !DILocation(line: 346, column: 10, scope: !1087)
!1104 = !DILocation(line: 346, column: 8, scope: !1087)
!1105 = !DILocation(line: 348, column: 8, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1087, file: !1038, line: 348, column: 8)
!1107 = !DILocation(line: 348, column: 15, scope: !1106)
!1108 = !DILocation(line: 348, column: 8, scope: !1087)
!1109 = !DILocalVariable(name: "i", scope: !1110, file: !1038, line: 349, type: !1041)
!1110 = distinct !DILexicalBlock(scope: !1106, file: !1038, line: 348, column: 21)
!1111 = !DILocation(line: 349, column: 15, scope: !1110)
!1112 = !DILocation(line: 351, column: 14, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1110, file: !1038, line: 351, column: 7)
!1114 = !DILocation(line: 351, column: 12, scope: !1113)
!1115 = !DILocation(line: 351, column: 19, scope: !1116)
!1116 = !DILexicalBlockFile(scope: !1117, file: !1038, discriminator: 1)
!1117 = distinct !DILexicalBlock(scope: !1113, file: !1038, line: 351, column: 7)
!1118 = !DILocation(line: 351, column: 23, scope: !1116)
!1119 = !DILocation(line: 351, column: 21, scope: !1116)
!1120 = !DILocation(line: 351, column: 7, scope: !1116)
!1121 = !DILocation(line: 352, column: 20, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1117, file: !1038, line: 351, column: 36)
!1123 = !DILocation(line: 352, column: 15, scope: !1122)
!1124 = !DILocation(line: 352, column: 10, scope: !1122)
!1125 = !DILocation(line: 354, column: 7, scope: !1122)
!1126 = !DILocation(line: 351, column: 32, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !1117, file: !1038, discriminator: 2)
!1128 = !DILocation(line: 351, column: 7, scope: !1127)
!1129 = distinct !{!1129, !1130}
!1130 = !DILocation(line: 351, column: 7, scope: !1110)
!1131 = !DILocation(line: 355, column: 4, scope: !1110)
!1132 = !DILocalVariable(name: "s", scope: !1133, file: !1038, line: 356, type: !232)
!1133 = distinct !DILexicalBlock(scope: !1106, file: !1038, line: 355, column: 11)
!1134 = !DILocation(line: 356, column: 14, scope: !1133)
!1135 = !DILocation(line: 358, column: 16, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1133, file: !1038, line: 358, column: 7)
!1137 = !DILocation(line: 358, column: 14, scope: !1136)
!1138 = !DILocation(line: 358, column: 12, scope: !1136)
!1139 = !DILocation(line: 358, column: 23, scope: !1140)
!1140 = !DILexicalBlockFile(scope: !1141, file: !1038, discriminator: 1)
!1141 = distinct !DILexicalBlock(scope: !1136, file: !1038, line: 358, column: 7)
!1142 = !DILocation(line: 358, column: 22, scope: !1140)
!1143 = !DILocation(line: 358, column: 25, scope: !1140)
!1144 = !DILocation(line: 358, column: 7, scope: !1140)
!1145 = !DILocation(line: 359, column: 16, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1141, file: !1038, line: 358, column: 38)
!1147 = !DILocation(line: 359, column: 15, scope: !1146)
!1148 = !DILocation(line: 359, column: 10, scope: !1146)
!1149 = !DILocation(line: 361, column: 7, scope: !1146)
!1150 = !DILocation(line: 358, column: 34, scope: !1151)
!1151 = !DILexicalBlockFile(scope: !1141, file: !1038, discriminator: 2)
!1152 = !DILocation(line: 358, column: 7, scope: !1151)
!1153 = distinct !{!1153, !1154}
!1154 = !DILocation(line: 358, column: 7, scope: !1133)
!1155 = !DILocation(line: 363, column: 9, scope: !1087)
!1156 = !DILocation(line: 363, column: 4, scope: !1087)
!1157 = !DILocation(line: 364, column: 11, scope: !1087)
!1158 = !DILocation(line: 364, column: 5, scope: !1087)
!1159 = !DILocation(line: 364, column: 9, scope: !1087)
!1160 = !DILocation(line: 365, column: 1, scope: !1087)
!1161 = !DILocation(line: 365, column: 1, scope: !1162)
!1162 = !DILexicalBlockFile(scope: !1087, file: !1038, discriminator: 1)
