; ModuleID = './posixPosix.o.i'
source_filename = "./posixPosix.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mntent = type { i8*, i8*, i8*, i8*, i32, i32 }
%struct.Atomic_uint64 = type { i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.utimbuf = type { i64, i64 }
%struct.timeval = type { i64, i64 }
%struct.__dirstream = type opaque
%struct.HashTable = type opaque
%struct.PosixEnvEntry = type { %struct.Atomic_uint64, %struct.Atomic_uint64 }
%struct.statfs = type { i64, i64, i64, i64, i64, i64, i64, %struct.__fsid_t, i64, i64, i64, [4 x i64] }
%struct.__fsid_t = type { [2 x i32] }

@Posix_Getmntent.sm = internal global %struct.mntent zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@PosixGetenvHash.htPtr = internal global %struct.Atomic_uint64 zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"NOT_REACHED %s:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"posixInt.h\00", align 1

; Function Attrs: nounwind uwtable
define i32 @Posix_Open(i8*, i32, ...) #0 !dbg !441 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !444, metadata !445), !dbg !446
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !447, metadata !445), !dbg !448
  call void @llvm.dbg.declare(metadata i8** %6, metadata !449, metadata !445), !dbg !450
  call void @llvm.dbg.declare(metadata i32* %7, metadata !451, metadata !445), !dbg !456
  store i32 0, i32* %7, align 4, !dbg !456
  call void @llvm.dbg.declare(metadata i32* %8, metadata !457, metadata !445), !dbg !458
  %10 = load i8*, i8** %4, align 8, !dbg !459
  %11 = call signext i8 @PosixConvertToCurrent(i8* %10, i8** %6), !dbg !461
  %12 = icmp ne i8 %11, 0, !dbg !461
  br i1 %12, label %14, label %13, !dbg !462

; <label>:13:                                     ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !463
  br label %50, !dbg !463

; <label>:14:                                     ; preds = %2
  %15 = load i32, i32* %5, align 4, !dbg !465
  %16 = and i32 %15, 64, !dbg !467
  %17 = icmp ne i32 %16, 0, !dbg !468
  br i1 %17, label %18, label %43, !dbg !469

; <label>:18:                                     ; preds = %14
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %9, metadata !470, metadata !445), !dbg !483
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i32 0, i32 0, !dbg !484
  %20 = bitcast %struct.__va_list_tag* %19 to i8*, !dbg !484
  call void @llvm.va_start(i8* %20), !dbg !484
  br label %21, !dbg !485, !llvm.loop !486

; <label>:21:                                     ; preds = %18
  br label %22, !dbg !487

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i32 0, i32 0, !dbg !490
  %24 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %23, i32 0, i32 0, !dbg !490
  %25 = load i32, i32* %24, align 16, !dbg !490
  %26 = icmp ule i32 %25, 40, !dbg !490
  br i1 %26, label %27, label %33, !dbg !490

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %23, i32 0, i32 3, !dbg !491
  %29 = load i8*, i8** %28, align 16, !dbg !491
  %30 = getelementptr i8, i8* %29, i32 %25, !dbg !491
  %31 = bitcast i8* %30 to i32*, !dbg !491
  %32 = add i32 %25, 8, !dbg !491
  store i32 %32, i32* %24, align 16, !dbg !491
  br label %38, !dbg !491

; <label>:33:                                     ; preds = %22
  %34 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %23, i32 0, i32 2, !dbg !493
  %35 = load i8*, i8** %34, align 8, !dbg !493
  %36 = bitcast i8* %35 to i32*, !dbg !493
  %37 = getelementptr i8, i8* %35, i32 8, !dbg !493
  store i8* %37, i8** %34, align 8, !dbg !493
  br label %38, !dbg !493

; <label>:38:                                     ; preds = %33, %27
  %39 = phi i32* [ %31, %27 ], [ %36, %33 ], !dbg !495
  %40 = load i32, i32* %39, align 4, !dbg !495
  store i32 %40, i32* %7, align 4, !dbg !497
  %41 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i32 0, i32 0, !dbg !498
  %42 = bitcast %struct.__va_list_tag* %41 to i8*, !dbg !498
  call void @llvm.va_end(i8* %42), !dbg !498
  br label %43, !dbg !499

; <label>:43:                                     ; preds = %38, %14
  %44 = load i8*, i8** %6, align 8, !dbg !500
  %45 = load i32, i32* %5, align 4, !dbg !501
  %46 = load i32, i32* %7, align 4, !dbg !502
  %47 = call i32 (i8*, i32, ...) @open64(i8* %44, i32 %45, i32 %46), !dbg !503
  store i32 %47, i32* %8, align 4, !dbg !504
  %48 = load i8*, i8** %6, align 8, !dbg !505
  call void @Posix_Free(i8* %48), !dbg !506
  %49 = load i32, i32* %8, align 4, !dbg !507
  store i32 %49, i32* %3, align 4, !dbg !508
  br label %50, !dbg !508

; <label>:50:                                     ; preds = %43, %13
  %51 = load i32, i32* %3, align 4, !dbg !509
  ret i32 %51, !dbg !509
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @PosixConvertToCurrent(i8*, i8**) #2 !dbg !510 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !514, metadata !445), !dbg !515
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !516, metadata !445), !dbg !517
  call void @llvm.dbg.declare(metadata i32* %5, metadata !518, metadata !445), !dbg !519
  %8 = call i32* @__errno_location() #1, !dbg !520
  %9 = load i32, i32* %8, align 4, !dbg !521
  store i32 %9, i32* %5, align 4, !dbg !519
  call void @llvm.dbg.declare(metadata i8** %6, metadata !522, metadata !445), !dbg !523
  %10 = load i8*, i8** %3, align 8, !dbg !524
  %11 = call i8* @Unicode_GetAllocBytes(i8* %10, i32 -1), !dbg !525
  store i8* %11, i8** %6, align 8, !dbg !523
  call void @llvm.dbg.declare(metadata i8* %7, metadata !526, metadata !445), !dbg !527
  %12 = load i8*, i8** %6, align 8, !dbg !528
  %13 = icmp ne i8* %12, null, !dbg !529
  br i1 %13, label %17, label %14, !dbg !530

; <label>:14:                                     ; preds = %2
  %15 = load i8*, i8** %3, align 8, !dbg !531
  %16 = icmp eq i8* %15, null, !dbg !533
  br label %17, !dbg !534

; <label>:17:                                     ; preds = %14, %2
  %18 = phi i1 [ true, %2 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32, !dbg !535
  %20 = trunc i32 %19 to i8, !dbg !537
  store i8 %20, i8* %7, align 1, !dbg !538
  %21 = load i8, i8* %7, align 1, !dbg !539
  %22 = icmp ne i8 %21, 0, !dbg !539
  br i1 %22, label %23, label %28, !dbg !541

; <label>:23:                                     ; preds = %17
  %24 = load i32, i32* %5, align 4, !dbg !542
  %25 = call i32* @__errno_location() #1, !dbg !544
  store i32 %24, i32* %25, align 4, !dbg !545
  %26 = load i8*, i8** %6, align 8, !dbg !546
  %27 = load i8**, i8*** %4, align 8, !dbg !547
  store i8* %26, i8** %27, align 8, !dbg !548
  br label %31, !dbg !549

; <label>:28:                                     ; preds = %17
  %29 = call i32* @__errno_location() #1, !dbg !550
  store i32 22, i32* %29, align 4, !dbg !552
  %30 = load i8**, i8*** %4, align 8, !dbg !553
  store i8* null, i8** %30, align 8, !dbg !554
  br label %31

; <label>:31:                                     ; preds = %28, %23
  %32 = load i8, i8* %7, align 1, !dbg !555
  ret i8 %32, !dbg !556
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

declare i32 @open64(i8*, i32, ...) #4

; Function Attrs: inlinehint nounwind uwtable
define internal void @Posix_Free(i8*) #2 !dbg !557 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !561, metadata !445), !dbg !562
  call void @llvm.dbg.declare(metadata i32* %3, metadata !563, metadata !445), !dbg !564
  %4 = call i32* @__errno_location() #1, !dbg !565
  %5 = load i32, i32* %4, align 4, !dbg !566
  store i32 %5, i32* %3, align 4, !dbg !564
  %6 = load i8*, i8** %2, align 8, !dbg !567
  call void @free(i8* %6) #3, !dbg !568
  %7 = load i32, i32* %3, align 4, !dbg !569
  %8 = call i32* @__errno_location() #1, !dbg !570
  store i32 %7, i32* %8, align 4, !dbg !571
  ret void, !dbg !572
}

; Function Attrs: nounwind uwtable
define i32 @Posix_Creat(i8*, i32) #0 !dbg !573 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !576, metadata !445), !dbg !577
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !578, metadata !445), !dbg !579
  %5 = load i8*, i8** %3, align 8, !dbg !580
  %6 = load i32, i32* %4, align 4, !dbg !581
  %7 = call i32 (i8*, i32, ...) @Posix_Open(i8* %5, i32 577, i32 %6), !dbg !582
  ret i32 %7, !dbg !583
}

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @Posix_Fopen(i8*, i8*) #0 !dbg !584 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !587, metadata !445), !dbg !588
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !589, metadata !445), !dbg !590
  call void @llvm.dbg.declare(metadata i8** %6, metadata !591, metadata !445), !dbg !592
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !593, metadata !445), !dbg !594
  %8 = load i8*, i8** %4, align 8, !dbg !595
  %9 = call signext i8 @PosixConvertToCurrent(i8* %8, i8** %6), !dbg !597
  %10 = icmp ne i8 %9, 0, !dbg !597
  br i1 %10, label %12, label %11, !dbg !598

; <label>:11:                                     ; preds = %2
  store %struct._IO_FILE* null, %struct._IO_FILE** %3, align 8, !dbg !599
  br label %18, !dbg !599

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %6, align 8, !dbg !601
  %14 = load i8*, i8** %5, align 8, !dbg !602
  %15 = call %struct._IO_FILE* @fopen64(i8* %13, i8* %14), !dbg !603
  store %struct._IO_FILE* %15, %struct._IO_FILE** %7, align 8, !dbg !604
  %16 = load i8*, i8** %6, align 8, !dbg !605
  call void @Posix_Free(i8* %16), !dbg !606
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !607
  store %struct._IO_FILE* %17, %struct._IO_FILE** %3, align 8, !dbg !608
  br label %18, !dbg !608

; <label>:18:                                     ; preds = %12, %11
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !609
  ret %struct._IO_FILE* %19, !dbg !609
}

declare %struct._IO_FILE* @fopen64(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define i32 @Posix_Stat(i8*, %struct.stat*) #0 !dbg !610 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stat*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !649, metadata !445), !dbg !650
  store %struct.stat* %1, %struct.stat** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.stat** %5, metadata !651, metadata !445), !dbg !652
  call void @llvm.dbg.declare(metadata i8** %6, metadata !653, metadata !445), !dbg !654
  call void @llvm.dbg.declare(metadata i32* %7, metadata !655, metadata !445), !dbg !656
  %8 = load i8*, i8** %4, align 8, !dbg !657
  %9 = call signext i8 @PosixConvertToCurrent(i8* %8, i8** %6), !dbg !659
  %10 = icmp ne i8 %9, 0, !dbg !659
  br i1 %10, label %12, label %11, !dbg !660

; <label>:11:                                     ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !661
  br label %18, !dbg !661

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %6, align 8, !dbg !663
  %14 = load %struct.stat*, %struct.stat** %5, align 8, !dbg !664
  %15 = call i32 @stat64(i8* %13, %struct.stat* %14) #3, !dbg !665
  store i32 %15, i32* %7, align 4, !dbg !666
  %16 = load i8*, i8** %6, align 8, !dbg !667
  call void @Posix_Free(i8* %16), !dbg !668
  %17 = load i32, i32* %7, align 4, !dbg !669
  store i32 %17, i32* %3, align 4, !dbg !670
  br label %18, !dbg !670

; <label>:18:                                     ; preds = %12, %11
  %19 = load i32, i32* %3, align 4, !dbg !671
  ret i32 %19, !dbg !671
}

; Function Attrs: nounwind
declare i32 @stat64(i8*, %struct.stat*) #5

; Function Attrs: nounwind uwtable
define i32 @Posix_Chmod(i8*, i32) #0 !dbg !672 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !673, metadata !445), !dbg !674
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !675, metadata !445), !dbg !676
  call void @llvm.dbg.declare(metadata i8** %6, metadata !677, metadata !445), !dbg !678
  call void @llvm.dbg.declare(metadata i32* %7, metadata !679, metadata !445), !dbg !680
  %8 = load i8*, i8** %4, align 8, !dbg !681
  %9 = call signext i8 @PosixConvertToCurrent(i8* %8, i8** %6), !dbg !683
  %10 = icmp ne i8 %9, 0, !dbg !683
  br i1 %10, label %12, label %11, !dbg !684

; <label>:11:                                     ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !685
  br label %18, !dbg !685

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %6, align 8, !dbg !687
  %14 = load i32, i32* %5, align 4, !dbg !688
  %15 = call i32 @chmod(i8* %13, i32 %14) #3, !dbg !689
  store i32 %15, i32* %7, align 4, !dbg !690
  %16 = load i8*, i8** %6, align 8, !dbg !691
  call void @Posix_Free(i8* %16), !dbg !692
  %17 = load i32, i32* %7, align 4, !dbg !693
  store i32 %17, i32* %3, align 4, !dbg !694
  br label %18, !dbg !694

; <label>:18:                                     ; preds = %12, %11
  %19 = load i32, i32* %3, align 4, !dbg !695
  ret i32 %19, !dbg !695
}

; Function Attrs: nounwind
declare i32 @chmod(i8*, i32) #5

; Function Attrs: nounwind uwtable
define i32 @Posix_Rename(i8*, i8*) #0 !dbg !696 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !699, metadata !445), !dbg !700
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !701, metadata !445), !dbg !702
  call void @llvm.dbg.declare(metadata i8** %6, metadata !703, metadata !445), !dbg !704
  call void @llvm.dbg.declare(metadata i8** %7, metadata !705, metadata !445), !dbg !706
  call void @llvm.dbg.declare(metadata i32* %8, metadata !707, metadata !445), !dbg !708
  %9 = load i8*, i8** %4, align 8, !dbg !709
  %10 = call signext i8 @PosixConvertToCurrent(i8* %9, i8** %7), !dbg !711
  %11 = icmp ne i8 %10, 0, !dbg !711
  br i1 %11, label %13, label %12, !dbg !712

; <label>:12:                                     ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !713
  br label %26, !dbg !713

; <label>:13:                                     ; preds = %2
  %14 = load i8*, i8** %5, align 8, !dbg !715
  %15 = call signext i8 @PosixConvertToCurrent(i8* %14, i8** %6), !dbg !717
  %16 = icmp ne i8 %15, 0, !dbg !717
  br i1 %16, label %19, label %17, !dbg !718

; <label>:17:                                     ; preds = %13
  %18 = load i8*, i8** %7, align 8, !dbg !719
  call void @Posix_Free(i8* %18), !dbg !721
  store i32 -1, i32* %3, align 4, !dbg !722
  br label %26, !dbg !722

; <label>:19:                                     ; preds = %13
  %20 = load i8*, i8** %7, align 8, !dbg !723
  %21 = load i8*, i8** %6, align 8, !dbg !724
  %22 = call i32 @rename(i8* %20, i8* %21) #3, !dbg !725
  store i32 %22, i32* %8, align 4, !dbg !726
  %23 = load i8*, i8** %6, align 8, !dbg !727
  call void @Posix_Free(i8* %23), !dbg !728
  %24 = load i8*, i8** %7, align 8, !dbg !729
  call void @Posix_Free(i8* %24), !dbg !730
  %25 = load i32, i32* %8, align 4, !dbg !731
  store i32 %25, i32* %3, align 4, !dbg !732
  br label %26, !dbg !732

; <label>:26:                                     ; preds = %19, %17, %12
  %27 = load i32, i32* %3, align 4, !dbg !733
  ret i32 %27, !dbg !733
}

; Function Attrs: nounwind
declare i32 @rename(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define i32 @Posix_Unlink(i8*) #0 !dbg !734 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !737, metadata !445), !dbg !738
  call void @llvm.dbg.declare(metadata i8** %4, metadata !739, metadata !445), !dbg !740
  call void @llvm.dbg.declare(metadata i32* %5, metadata !741, metadata !445), !dbg !742
  %6 = load i8*, i8** %3, align 8, !dbg !743
  %7 = call signext i8 @PosixConvertToCurrent(i8* %6, i8** %4), !dbg !745
  %8 = icmp ne i8 %7, 0, !dbg !745
  br i1 %8, label %10, label %9, !dbg !746

; <label>:9:                                      ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !747
  br label %15, !dbg !747

; <label>:10:                                     ; preds = %1
  %11 = load i8*, i8** %4, align 8, !dbg !749
  %12 = call i32 @unlink(i8* %11) #3, !dbg !750
  store i32 %12, i32* %5, align 4, !dbg !751
  %13 = load i8*, i8** %4, align 8, !dbg !752
  call void @Posix_Free(i8* %13), !dbg !753
  %14 = load i32, i32* %5, align 4, !dbg !754
  store i32 %14, i32* %2, align 4, !dbg !755
  br label %15, !dbg !755

; <label>:15:                                     ; preds = %10, %9
  %16 = load i32, i32* %2, align 4, !dbg !756
  ret i32 %16, !dbg !756
}

; Function Attrs: nounwind
declare i32 @unlink(i8*) #5

; Function Attrs: nounwind uwtable
define i32 @Posix_Rmdir(i8*) #0 !dbg !757 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !758, metadata !445), !dbg !759
  call void @llvm.dbg.declare(metadata i8** %4, metadata !760, metadata !445), !dbg !761
  call void @llvm.dbg.declare(metadata i32* %5, metadata !762, metadata !445), !dbg !763
  %6 = load i8*, i8** %3, align 8, !dbg !764
  %7 = call signext i8 @PosixConvertToCurrent(i8* %6, i8** %4), !dbg !766
  %8 = icmp ne i8 %7, 0, !dbg !766
  br i1 %8, label %10, label %9, !dbg !767

; <label>:9:                                      ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !768
  br label %15, !dbg !768

; <label>:10:                                     ; preds = %1
  %11 = load i8*, i8** %4, align 8, !dbg !770
  %12 = call i32 @rmdir(i8* %11) #3, !dbg !771
  store i32 %12, i32* %5, align 4, !dbg !772
  %13 = load i8*, i8** %4, align 8, !dbg !773
  call void @Posix_Free(i8* %13), !dbg !774
  %14 = load i32, i32* %5, align 4, !dbg !775
  store i32 %14, i32* %2, align 4, !dbg !776
  br label %15, !dbg !776

; <label>:15:                                     ; preds = %10, %9
  %16 = load i32, i32* %2, align 4, !dbg !777
  ret i32 %16, !dbg !777
}

; Function Attrs: nounwind
declare i32 @rmdir(i8*) #5

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @Posix_Freopen(i8*, i8*, %struct._IO_FILE*) #0 !dbg !778 {
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !781, metadata !445), !dbg !782
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !783, metadata !445), !dbg !784
  store %struct._IO_FILE* %2, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !785, metadata !445), !dbg !786
  call void @llvm.dbg.declare(metadata i8** %8, metadata !787, metadata !445), !dbg !788
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %9, metadata !789, metadata !445), !dbg !790
  %10 = load i8*, i8** %5, align 8, !dbg !791
  %11 = call signext i8 @PosixConvertToCurrent(i8* %10, i8** %8), !dbg !793
  %12 = icmp ne i8 %11, 0, !dbg !793
  br i1 %12, label %14, label %13, !dbg !794

; <label>:13:                                     ; preds = %3
  store %struct._IO_FILE* null, %struct._IO_FILE** %4, align 8, !dbg !795
  br label %21, !dbg !795

; <label>:14:                                     ; preds = %3
  %15 = load i8*, i8** %8, align 8, !dbg !797
  %16 = load i8*, i8** %6, align 8, !dbg !798
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !799
  %18 = call %struct._IO_FILE* @freopen64(i8* %15, i8* %16, %struct._IO_FILE* %17), !dbg !800
  store %struct._IO_FILE* %18, %struct._IO_FILE** %9, align 8, !dbg !801
  %19 = load i8*, i8** %8, align 8, !dbg !802
  call void @Posix_Free(i8* %19), !dbg !803
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !804
  store %struct._IO_FILE* %20, %struct._IO_FILE** %4, align 8, !dbg !805
  br label %21, !dbg !805

; <label>:21:                                     ; preds = %14, %13
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !806
  ret %struct._IO_FILE* %22, !dbg !806
}

declare %struct._IO_FILE* @freopen64(i8*, i8*, %struct._IO_FILE*) #4

; Function Attrs: nounwind uwtable
define i32 @Posix_Access(i8*, i32) #0 !dbg !807 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !810, metadata !445), !dbg !811
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !812, metadata !445), !dbg !813
  call void @llvm.dbg.declare(metadata i8** %6, metadata !814, metadata !445), !dbg !815
  call void @llvm.dbg.declare(metadata i32* %7, metadata !816, metadata !445), !dbg !817
  %8 = load i8*, i8** %4, align 8, !dbg !818
  %9 = call signext i8 @PosixConvertToCurrent(i8* %8, i8** %6), !dbg !820
  %10 = icmp ne i8 %9, 0, !dbg !820
  br i1 %10, label %12, label %11, !dbg !821

; <label>:11:                                     ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !822
  br label %18, !dbg !822

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %6, align 8, !dbg !824
  %14 = load i32, i32* %5, align 4, !dbg !825
  %15 = call i32 @access(i8* %13, i32 %14) #3, !dbg !826
  store i32 %15, i32* %7, align 4, !dbg !827
  %16 = load i8*, i8** %6, align 8, !dbg !828
  call void @Posix_Free(i8* %16), !dbg !829
  %17 = load i32, i32* %7, align 4, !dbg !830
  store i32 %17, i32* %3, align 4, !dbg !831
  br label %18, !dbg !831

; <label>:18:                                     ; preds = %12, %11
  %19 = load i32, i32* %3, align 4, !dbg !832
  ret i32 %19, !dbg !832
}

; Function Attrs: nounwind
declare i32 @access(i8*, i32) #5

; Function Attrs: nounwind uwtable
define i32 @Posix_EuidAccess(i8*, i32) #0 !dbg !833 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !834, metadata !445), !dbg !835
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !836, metadata !445), !dbg !837
  call void @llvm.dbg.declare(metadata i8** %6, metadata !838, metadata !445), !dbg !839
  call void @llvm.dbg.declare(metadata i32* %7, metadata !840, metadata !445), !dbg !841
  %8 = load i8*, i8** %4, align 8, !dbg !842
  %9 = call signext i8 @PosixConvertToCurrent(i8* %8, i8** %6), !dbg !844
  %10 = icmp ne i8 %9, 0, !dbg !844
  br i1 %10, label %12, label %11, !dbg !845

; <label>:11:                                     ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !846
  br label %18, !dbg !846

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %6, align 8, !dbg !848
  %14 = load i32, i32* %5, align 4, !dbg !849
  %15 = call i32 @euidaccess(i8* %13, i32 %14) #3, !dbg !850
  store i32 %15, i32* %7, align 4, !dbg !851
  %16 = load i8*, i8** %6, align 8, !dbg !852
  call void @Posix_Free(i8* %16), !dbg !853
  %17 = load i32, i32* %7, align 4, !dbg !854
  store i32 %17, i32* %3, align 4, !dbg !855
  br label %18, !dbg !855

; <label>:18:                                     ; preds = %12, %11
  %19 = load i32, i32* %3, align 4, !dbg !856
  ret i32 %19, !dbg !856
}

; Function Attrs: nounwind
declare i32 @euidaccess(i8*, i32) #5

; Function Attrs: nounwind uwtable
define i32 @Posix_Utime(i8*, %struct.utimbuf*) #0 !dbg !857 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.utimbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !867, metadata !445), !dbg !868
  store %struct.utimbuf* %1, %struct.utimbuf** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.utimbuf** %5, metadata !869, metadata !445), !dbg !870
  call void @llvm.dbg.declare(metadata i8** %6, metadata !871, metadata !445), !dbg !872
  call void @llvm.dbg.declare(metadata i32* %7, metadata !873, metadata !445), !dbg !874
  %8 = load i8*, i8** %4, align 8, !dbg !875
  %9 = call signext i8 @PosixConvertToCurrent(i8* %8, i8** %6), !dbg !877
  %10 = icmp ne i8 %9, 0, !dbg !877
  br i1 %10, label %12, label %11, !dbg !878

; <label>:11:                                     ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !879
  br label %18, !dbg !879

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %6, align 8, !dbg !881
  %14 = load %struct.utimbuf*, %struct.utimbuf** %5, align 8, !dbg !882
  %15 = call i32 @utime(i8* %13, %struct.utimbuf* %14) #3, !dbg !883
  store i32 %15, i32* %7, align 4, !dbg !884
  %16 = load i8*, i8** %6, align 8, !dbg !885
  call void @Posix_Free(i8* %16), !dbg !886
  %17 = load i32, i32* %7, align 4, !dbg !887
  store i32 %17, i32* %3, align 4, !dbg !888
  br label %18, !dbg !888

; <label>:18:                                     ; preds = %12, %11
  %19 = load i32, i32* %3, align 4, !dbg !889
  ret i32 %19, !dbg !889
}

; Function Attrs: nounwind
declare i32 @utime(i8*, %struct.utimbuf*) #5

; Function Attrs: nounwind uwtable
define void @Posix_Perror(i8*) #0 !dbg !890 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !893, metadata !445), !dbg !894
  call void @llvm.dbg.declare(metadata i8** %3, metadata !895, metadata !445), !dbg !896
  %4 = load i8*, i8** %2, align 8, !dbg !897
  %5 = call i8* @Unicode_GetAllocBytes(i8* %4, i32 -1), !dbg !898
  store i8* %5, i8** %3, align 8, !dbg !896
  %6 = load i8*, i8** %3, align 8, !dbg !899
  call void @perror(i8* %6), !dbg !900
  %7 = load i8*, i8** %3, align 8, !dbg !901
  call void @Posix_Free(i8* %7), !dbg !902
  ret void, !dbg !903
}

declare i8* @Unicode_GetAllocBytes(i8*, i32) #4

declare void @perror(i8*) #4

; Function Attrs: nounwind uwtable
define i64 @Posix_Pathconf(i8*, i32) #0 !dbg !904 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !907, metadata !445), !dbg !908
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !909, metadata !445), !dbg !910
  call void @llvm.dbg.declare(metadata i8** %6, metadata !911, metadata !445), !dbg !912
  call void @llvm.dbg.declare(metadata i64* %7, metadata !913, metadata !445), !dbg !914
  %8 = load i8*, i8** %4, align 8, !dbg !915
  %9 = call signext i8 @PosixConvertToCurrent(i8* %8, i8** %6), !dbg !917
  %10 = icmp ne i8 %9, 0, !dbg !917
  br i1 %10, label %12, label %11, !dbg !918

; <label>:11:                                     ; preds = %2
  store i64 -1, i64* %3, align 8, !dbg !919
  br label %18, !dbg !919

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %6, align 8, !dbg !921
  %14 = load i32, i32* %5, align 4, !dbg !922
  %15 = call i64 @pathconf(i8* %13, i32 %14) #3, !dbg !923
  store i64 %15, i64* %7, align 8, !dbg !924
  %16 = load i8*, i8** %6, align 8, !dbg !925
  call void @Posix_Free(i8* %16), !dbg !926
  %17 = load i64, i64* %7, align 8, !dbg !927
  store i64 %17, i64* %3, align 8, !dbg !928
  br label %18, !dbg !928

; <label>:18:                                     ; preds = %12, %11
  %19 = load i64, i64* %3, align 8, !dbg !929
  ret i64 %19, !dbg !929
}

; Function Attrs: nounwind
declare i64 @pathconf(i8*, i32) #5

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @Posix_Popen(i8*, i8*) #0 !dbg !930 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !931, metadata !445), !dbg !932
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !933, metadata !445), !dbg !934
  call void @llvm.dbg.declare(metadata i8** %6, metadata !935, metadata !445), !dbg !936
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !937, metadata !445), !dbg !938
  %8 = load i8*, i8** %4, align 8, !dbg !939
  %9 = call signext i8 @PosixConvertToCurrent(i8* %8, i8** %6), !dbg !941
  %10 = icmp ne i8 %9, 0, !dbg !941
  br i1 %10, label %12, label %11, !dbg !942

; <label>:11:                                     ; preds = %2
  store %struct._IO_FILE* null, %struct._IO_FILE** %3, align 8, !dbg !943
  br label %18, !dbg !943

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %6, align 8, !dbg !945
  %14 = load i8*, i8** %5, align 8, !dbg !946
  %15 = call %struct._IO_FILE* @popen(i8* %13, i8* %14), !dbg !947
  store %struct._IO_FILE* %15, %struct._IO_FILE** %7, align 8, !dbg !948
  %16 = load i8*, i8** %6, align 8, !dbg !949
  call void @Posix_Free(i8* %16), !dbg !950
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !951
  store %struct._IO_FILE* %17, %struct._IO_FILE** %3, align 8, !dbg !952
  br label %18, !dbg !952

; <label>:18:                                     ; preds = %12, %11
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !953
  ret %struct._IO_FILE* %19, !dbg !953
}

declare %struct._IO_FILE* @popen(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define i32 @Posix_Mknod(i8*, i32, i64) #0 !dbg !954 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !958, metadata !445), !dbg !959
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !960, metadata !445), !dbg !961
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !962, metadata !445), !dbg !963
  call void @llvm.dbg.declare(metadata i8** %8, metadata !964, metadata !445), !dbg !965
  call void @llvm.dbg.declare(metadata i32* %9, metadata !966, metadata !445), !dbg !967
  %10 = load i8*, i8** %5, align 8, !dbg !968
  %11 = call signext i8 @PosixConvertToCurrent(i8* %10, i8** %8), !dbg !970
  %12 = icmp ne i8 %11, 0, !dbg !970
  br i1 %12, label %14, label %13, !dbg !971

; <label>:13:                                     ; preds = %3
  store i32 -1, i32* %4, align 4, !dbg !972
  br label %21, !dbg !972

; <label>:14:                                     ; preds = %3
  %15 = load i8*, i8** %8, align 8, !dbg !974
  %16 = load i32, i32* %6, align 4, !dbg !975
  %17 = load i64, i64* %7, align 8, !dbg !976
  %18 = call i32 @mknod(i8* %15, i32 %16, i64 %17) #3, !dbg !977
  store i32 %18, i32* %9, align 4, !dbg !978
  %19 = load i8*, i8** %8, align 8, !dbg !979
  call void @Posix_Free(i8* %19), !dbg !980
  %20 = load i32, i32* %9, align 4, !dbg !981
  store i32 %20, i32* %4, align 4, !dbg !982
  br label %21, !dbg !982

; <label>:21:                                     ; preds = %14, %13
  %22 = load i32, i32* %4, align 4, !dbg !983
  ret i32 %22, !dbg !983
}

; Function Attrs: nounwind
declare i32 @mknod(i8*, i32, i64) #5

; Function Attrs: nounwind uwtable
define i32 @Posix_Chown(i8*, i32, i32) #0 !dbg !984 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !989, metadata !445), !dbg !990
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !991, metadata !445), !dbg !992
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !993, metadata !445), !dbg !994
  call void @llvm.dbg.declare(metadata i8** %8, metadata !995, metadata !445), !dbg !996
  call void @llvm.dbg.declare(metadata i32* %9, metadata !997, metadata !445), !dbg !998
  %10 = load i8*, i8** %5, align 8, !dbg !999
  %11 = call signext i8 @PosixConvertToCurrent(i8* %10, i8** %8), !dbg !1001
  %12 = icmp ne i8 %11, 0, !dbg !1001
  br i1 %12, label %14, label %13, !dbg !1002

; <label>:13:                                     ; preds = %3
  store i32 -1, i32* %4, align 4, !dbg !1003
  br label %21, !dbg !1003

; <label>:14:                                     ; preds = %3
  %15 = load i8*, i8** %8, align 8, !dbg !1005
  %16 = load i32, i32* %6, align 4, !dbg !1006
  %17 = load i32, i32* %7, align 4, !dbg !1007
  %18 = call i32 @chown(i8* %15, i32 %16, i32 %17) #3, !dbg !1008
  store i32 %18, i32* %9, align 4, !dbg !1009
  %19 = load i8*, i8** %8, align 8, !dbg !1010
  call void @Posix_Free(i8* %19), !dbg !1011
  %20 = load i32, i32* %9, align 4, !dbg !1012
  store i32 %20, i32* %4, align 4, !dbg !1013
  br label %21, !dbg !1013

; <label>:21:                                     ; preds = %14, %13
  %22 = load i32, i32* %4, align 4, !dbg !1014
  ret i32 %22, !dbg !1014
}

; Function Attrs: nounwind
declare i32 @chown(i8*, i32, i32) #5

; Function Attrs: nounwind uwtable
define i32 @Posix_Lchown(i8*, i32, i32) #0 !dbg !1015 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1016, metadata !445), !dbg !1017
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1018, metadata !445), !dbg !1019
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1020, metadata !445), !dbg !1021
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1022, metadata !445), !dbg !1023
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1024, metadata !445), !dbg !1025
  %10 = load i8*, i8** %5, align 8, !dbg !1026
  %11 = call signext i8 @PosixConvertToCurrent(i8* %10, i8** %8), !dbg !1028
  %12 = icmp ne i8 %11, 0, !dbg !1028
  br i1 %12, label %14, label %13, !dbg !1029

; <label>:13:                                     ; preds = %3
  store i32 -1, i32* %4, align 4, !dbg !1030
  br label %21, !dbg !1030

; <label>:14:                                     ; preds = %3
  %15 = load i8*, i8** %8, align 8, !dbg !1032
  %16 = load i32, i32* %6, align 4, !dbg !1033
  %17 = load i32, i32* %7, align 4, !dbg !1034
  %18 = call i32 @lchown(i8* %15, i32 %16, i32 %17) #3, !dbg !1035
  store i32 %18, i32* %9, align 4, !dbg !1036
  %19 = load i8*, i8** %8, align 8, !dbg !1037
  call void @Posix_Free(i8* %19), !dbg !1038
  %20 = load i32, i32* %9, align 4, !dbg !1039
  store i32 %20, i32* %4, align 4, !dbg !1040
  br label %21, !dbg !1040

; <label>:21:                                     ; preds = %14, %13
  %22 = load i32, i32* %4, align 4, !dbg !1041
  ret i32 %22, !dbg !1041
}

; Function Attrs: nounwind
declare i32 @lchown(i8*, i32, i32) #5

; Function Attrs: nounwind uwtable
define i32 @Posix_Link(i8*, i8*) #0 !dbg !1042 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1043, metadata !445), !dbg !1044
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1045, metadata !445), !dbg !1046
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1047, metadata !445), !dbg !1048
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1049, metadata !445), !dbg !1050
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1051, metadata !445), !dbg !1052
  %9 = load i8*, i8** %4, align 8, !dbg !1053
  %10 = call signext i8 @PosixConvertToCurrent(i8* %9, i8** %6), !dbg !1055
  %11 = icmp ne i8 %10, 0, !dbg !1055
  br i1 %11, label %13, label %12, !dbg !1056

; <label>:12:                                     ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !1057
  br label %26, !dbg !1057

; <label>:13:                                     ; preds = %2
  %14 = load i8*, i8** %5, align 8, !dbg !1059
  %15 = call signext i8 @PosixConvertToCurrent(i8* %14, i8** %7), !dbg !1061
  %16 = icmp ne i8 %15, 0, !dbg !1061
  br i1 %16, label %19, label %17, !dbg !1062

; <label>:17:                                     ; preds = %13
  %18 = load i8*, i8** %6, align 8, !dbg !1063
  call void @Posix_Free(i8* %18), !dbg !1065
  store i32 -1, i32* %3, align 4, !dbg !1066
  br label %26, !dbg !1066

; <label>:19:                                     ; preds = %13
  %20 = load i8*, i8** %6, align 8, !dbg !1067
  %21 = load i8*, i8** %7, align 8, !dbg !1068
  %22 = call i32 @link(i8* %20, i8* %21) #3, !dbg !1069
  store i32 %22, i32* %8, align 4, !dbg !1070
  %23 = load i8*, i8** %6, align 8, !dbg !1071
  call void @Posix_Free(i8* %23), !dbg !1072
  %24 = load i8*, i8** %7, align 8, !dbg !1073
  call void @Posix_Free(i8* %24), !dbg !1074
  %25 = load i32, i32* %8, align 4, !dbg !1075
  store i32 %25, i32* %3, align 4, !dbg !1076
  br label %26, !dbg !1076

; <label>:26:                                     ; preds = %19, %17, %12
  %27 = load i32, i32* %3, align 4, !dbg !1077
  ret i32 %27, !dbg !1077
}

; Function Attrs: nounwind
declare i32 @link(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define i32 @Posix_Symlink(i8*, i8*) #0 !dbg !1078 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1079, metadata !445), !dbg !1080
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1081, metadata !445), !dbg !1082
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1083, metadata !445), !dbg !1084
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1085, metadata !445), !dbg !1086
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1087, metadata !445), !dbg !1088
  %9 = load i8*, i8** %4, align 8, !dbg !1089
  %10 = call signext i8 @PosixConvertToCurrent(i8* %9, i8** %6), !dbg !1091
  %11 = icmp ne i8 %10, 0, !dbg !1091
  br i1 %11, label %13, label %12, !dbg !1092

; <label>:12:                                     ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !1093
  br label %26, !dbg !1093

; <label>:13:                                     ; preds = %2
  %14 = load i8*, i8** %5, align 8, !dbg !1095
  %15 = call signext i8 @PosixConvertToCurrent(i8* %14, i8** %7), !dbg !1097
  %16 = icmp ne i8 %15, 0, !dbg !1097
  br i1 %16, label %19, label %17, !dbg !1098

; <label>:17:                                     ; preds = %13
  %18 = load i8*, i8** %6, align 8, !dbg !1099
  call void @Posix_Free(i8* %18), !dbg !1101
  store i32 -1, i32* %3, align 4, !dbg !1102
  br label %26, !dbg !1102

; <label>:19:                                     ; preds = %13
  %20 = load i8*, i8** %6, align 8, !dbg !1103
  %21 = load i8*, i8** %7, align 8, !dbg !1104
  %22 = call i32 @symlink(i8* %20, i8* %21) #3, !dbg !1105
  store i32 %22, i32* %8, align 4, !dbg !1106
  %23 = load i8*, i8** %6, align 8, !dbg !1107
  call void @Posix_Free(i8* %23), !dbg !1108
  %24 = load i8*, i8** %7, align 8, !dbg !1109
  call void @Posix_Free(i8* %24), !dbg !1110
  %25 = load i32, i32* %8, align 4, !dbg !1111
  store i32 %25, i32* %3, align 4, !dbg !1112
  br label %26, !dbg !1112

; <label>:26:                                     ; preds = %19, %17, %12
  %27 = load i32, i32* %3, align 4, !dbg !1113
  ret i32 %27, !dbg !1113
}

; Function Attrs: nounwind
declare i32 @symlink(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define i32 @Posix_Mkfifo(i8*, i32) #0 !dbg !1114 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1115, metadata !445), !dbg !1116
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1117, metadata !445), !dbg !1118
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1119, metadata !445), !dbg !1120
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1121, metadata !445), !dbg !1122
  %8 = load i8*, i8** %4, align 8, !dbg !1123
  %9 = call signext i8 @PosixConvertToCurrent(i8* %8, i8** %6), !dbg !1125
  %10 = icmp ne i8 %9, 0, !dbg !1125
  br i1 %10, label %12, label %11, !dbg !1126

; <label>:11:                                     ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !1127
  br label %18, !dbg !1127

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %6, align 8, !dbg !1129
  %14 = load i32, i32* %5, align 4, !dbg !1130
  %15 = call i32 @mkfifo(i8* %13, i32 %14) #3, !dbg !1131
  store i32 %15, i32* %7, align 4, !dbg !1132
  %16 = load i8*, i8** %6, align 8, !dbg !1133
  call void @Posix_Free(i8* %16), !dbg !1134
  %17 = load i32, i32* %7, align 4, !dbg !1135
  store i32 %17, i32* %3, align 4, !dbg !1136
  br label %18, !dbg !1136

; <label>:18:                                     ; preds = %12, %11
  %19 = load i32, i32* %3, align 4, !dbg !1137
  ret i32 %19, !dbg !1137
}

; Function Attrs: nounwind
declare i32 @mkfifo(i8*, i32) #5

; Function Attrs: nounwind uwtable
define i32 @Posix_Truncate(i8*, i64) #0 !dbg !1138 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1142, metadata !445), !dbg !1143
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1144, metadata !445), !dbg !1145
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1146, metadata !445), !dbg !1147
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1148, metadata !445), !dbg !1149
  %8 = load i8*, i8** %4, align 8, !dbg !1150
  %9 = call signext i8 @PosixConvertToCurrent(i8* %8, i8** %6), !dbg !1152
  %10 = icmp ne i8 %9, 0, !dbg !1152
  br i1 %10, label %12, label %11, !dbg !1153

; <label>:11:                                     ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !1154
  br label %18, !dbg !1154

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %6, align 8, !dbg !1156
  %14 = load i64, i64* %5, align 8, !dbg !1157
  %15 = call i32 @truncate64(i8* %13, i64 %14) #3, !dbg !1158
  store i32 %15, i32* %7, align 4, !dbg !1159
  %16 = load i8*, i8** %6, align 8, !dbg !1160
  call void @Posix_Free(i8* %16), !dbg !1161
  %17 = load i32, i32* %7, align 4, !dbg !1162
  store i32 %17, i32* %3, align 4, !dbg !1163
  br label %18, !dbg !1163

; <label>:18:                                     ; preds = %12, %11
  %19 = load i32, i32* %3, align 4, !dbg !1164
  ret i32 %19, !dbg !1164
}

; Function Attrs: nounwind
declare i32 @truncate64(i8*, i64) #5

; Function Attrs: nounwind uwtable
define i32 @Posix_Utimes(i8*, %struct.timeval*) #0 !dbg !1165 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.timeval*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1176, metadata !445), !dbg !1177
  store %struct.timeval* %1, %struct.timeval** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.timeval** %5, metadata !1178, metadata !445), !dbg !1179
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1180, metadata !445), !dbg !1181
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1182, metadata !445), !dbg !1183
  %8 = load i8*, i8** %4, align 8, !dbg !1184
  %9 = call signext i8 @PosixConvertToCurrent(i8* %8, i8** %6), !dbg !1186
  %10 = icmp ne i8 %9, 0, !dbg !1186
  br i1 %10, label %12, label %11, !dbg !1187

; <label>:11:                                     ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !1188
  br label %18, !dbg !1188

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %6, align 8, !dbg !1190
  %14 = load %struct.timeval*, %struct.timeval** %5, align 8, !dbg !1191
  %15 = call i32 @utimes(i8* %13, %struct.timeval* %14) #3, !dbg !1192
  store i32 %15, i32* %7, align 4, !dbg !1193
  %16 = load i8*, i8** %6, align 8, !dbg !1194
  call void @Posix_Free(i8* %16), !dbg !1195
  %17 = load i32, i32* %7, align 4, !dbg !1196
  store i32 %17, i32* %3, align 4, !dbg !1197
  br label %18, !dbg !1197

; <label>:18:                                     ; preds = %12, %11
  %19 = load i32, i32* %3, align 4, !dbg !1198
  ret i32 %19, !dbg !1198
}

; Function Attrs: nounwind
declare i32 @utimes(i8*, %struct.timeval*) #5

; Function Attrs: nounwind uwtable
define i32 @Posix_Execl(i8*, i8*, ...) #0 !dbg !1199 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1202, metadata !445), !dbg !1203
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1204, metadata !445), !dbg !1205
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1206, metadata !445), !dbg !1207
  store i32 -1, i32* %5, align 4, !dbg !1207
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1208, metadata !445), !dbg !1209
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !1210, metadata !445), !dbg !1211
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !1212, metadata !445), !dbg !1213
  store i8** null, i8*** %8, align 8, !dbg !1213
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1214, metadata !445), !dbg !1215
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1216, metadata !445), !dbg !1217
  store i32 0, i32* %10, align 4, !dbg !1217
  %11 = load i8*, i8** %3, align 8, !dbg !1218
  %12 = call signext i8 @PosixConvertToCurrent(i8* %11, i8** %6), !dbg !1220
  %13 = icmp ne i8 %12, 0, !dbg !1220
  br i1 %13, label %15, label %14, !dbg !1221

; <label>:14:                                     ; preds = %2
  br label %128, !dbg !1222

; <label>:15:                                     ; preds = %2
  %16 = load i8*, i8** %4, align 8, !dbg !1224
  %17 = icmp ne i8* %16, null, !dbg !1224
  br i1 %17, label %18, label %47, !dbg !1226

; <label>:18:                                     ; preds = %15
  store i32 1, i32* %10, align 4, !dbg !1227
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !1229
  %20 = bitcast %struct.__va_list_tag* %19 to i8*, !dbg !1229
  call void @llvm.va_start(i8* %20), !dbg !1229
  br label %21, !dbg !1230

; <label>:21:                                     ; preds = %41, %18
  %22 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !1231
  %23 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %22, i32 0, i32 0, !dbg !1231
  %24 = load i32, i32* %23, align 16, !dbg !1231
  %25 = icmp ule i32 %24, 40, !dbg !1231
  br i1 %25, label %26, label %32, !dbg !1231

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %22, i32 0, i32 3, !dbg !1233
  %28 = load i8*, i8** %27, align 16, !dbg !1233
  %29 = getelementptr i8, i8* %28, i32 %24, !dbg !1233
  %30 = bitcast i8* %29 to i8**, !dbg !1233
  %31 = add i32 %24, 8, !dbg !1233
  store i32 %31, i32* %23, align 16, !dbg !1233
  br label %37, !dbg !1233

; <label>:32:                                     ; preds = %21
  %33 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %22, i32 0, i32 2, !dbg !1235
  %34 = load i8*, i8** %33, align 8, !dbg !1235
  %35 = bitcast i8* %34 to i8**, !dbg !1235
  %36 = getelementptr i8, i8* %34, i32 8, !dbg !1235
  store i8* %36, i8** %33, align 8, !dbg !1235
  br label %37, !dbg !1235

; <label>:37:                                     ; preds = %32, %26
  %38 = phi i8** [ %30, %26 ], [ %35, %32 ], !dbg !1237
  %39 = load i8*, i8** %38, align 8, !dbg !1237
  %40 = icmp ne i8* %39, null, !dbg !1239
  br i1 %40, label %41, label %44, !dbg !1239

; <label>:41:                                     ; preds = %37
  %42 = load i32, i32* %10, align 4, !dbg !1240
  %43 = add nsw i32 %42, 1, !dbg !1240
  store i32 %43, i32* %10, align 4, !dbg !1240
  br label %21, !dbg !1242, !llvm.loop !1244

; <label>:44:                                     ; preds = %37
  %45 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !1245
  %46 = bitcast %struct.__va_list_tag* %45 to i8*, !dbg !1245
  call void @llvm.va_end(i8* %46), !dbg !1245
  br label %47, !dbg !1246

; <label>:47:                                     ; preds = %44, %15
  %48 = load i32, i32* %10, align 4, !dbg !1247
  %49 = add nsw i32 %48, 1, !dbg !1248
  %50 = sext i32 %49 to i64, !dbg !1249
  %51 = mul i64 8, %50, !dbg !1250
  %52 = call noalias i8* @malloc(i64 %51) #3, !dbg !1251
  %53 = bitcast i8* %52 to i8**, !dbg !1252
  store i8** %53, i8*** %8, align 8, !dbg !1253
  %54 = load i8**, i8*** %8, align 8, !dbg !1254
  %55 = icmp eq i8** %54, null, !dbg !1256
  br i1 %55, label %56, label %58, !dbg !1257

; <label>:56:                                     ; preds = %47
  %57 = call i32* @__errno_location() #1, !dbg !1258
  store i32 12, i32* %57, align 4, !dbg !1260
  br label %128, !dbg !1261

; <label>:58:                                     ; preds = %47
  %59 = load i8**, i8*** %8, align 8, !dbg !1262
  %60 = icmp ne i8** %59, null, !dbg !1262
  br i1 %60, label %61, label %124, !dbg !1264

; <label>:61:                                     ; preds = %58
  %62 = call i32* @__errno_location() #1, !dbg !1265
  store i32 0, i32* %62, align 4, !dbg !1267
  %63 = load i32, i32* %10, align 4, !dbg !1268
  %64 = icmp sgt i32 %63, 0, !dbg !1270
  br i1 %64, label %65, label %114, !dbg !1271

; <label>:65:                                     ; preds = %61
  %66 = load i8*, i8** %4, align 8, !dbg !1272
  %67 = load i8**, i8*** %8, align 8, !dbg !1275
  %68 = getelementptr inbounds i8*, i8** %67, i64 0, !dbg !1275
  %69 = call signext i8 @PosixConvertToCurrent(i8* %66, i8** %68), !dbg !1276
  %70 = icmp ne i8 %69, 0, !dbg !1276
  br i1 %70, label %72, label %71, !dbg !1277

; <label>:71:                                     ; preds = %65
  br label %128, !dbg !1278

; <label>:72:                                     ; preds = %65
  %73 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !1280
  %74 = bitcast %struct.__va_list_tag* %73 to i8*, !dbg !1280
  call void @llvm.va_start(i8* %74), !dbg !1280
  store i32 1, i32* %9, align 4, !dbg !1281
  br label %75, !dbg !1283

; <label>:75:                                     ; preds = %108, %72
  %76 = load i32, i32* %9, align 4, !dbg !1284
  %77 = load i32, i32* %10, align 4, !dbg !1287
  %78 = icmp slt i32 %76, %77, !dbg !1288
  br i1 %78, label %79, label %111, !dbg !1289

; <label>:79:                                     ; preds = %75
  %80 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !1290
  %81 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %80, i32 0, i32 0, !dbg !1290
  %82 = load i32, i32* %81, align 16, !dbg !1290
  %83 = icmp ule i32 %82, 40, !dbg !1290
  br i1 %83, label %84, label %90, !dbg !1290

; <label>:84:                                     ; preds = %79
  %85 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %80, i32 0, i32 3, !dbg !1293
  %86 = load i8*, i8** %85, align 16, !dbg !1293
  %87 = getelementptr i8, i8* %86, i32 %82, !dbg !1293
  %88 = bitcast i8* %87 to i8**, !dbg !1293
  %89 = add i32 %82, 8, !dbg !1293
  store i32 %89, i32* %81, align 16, !dbg !1293
  br label %95, !dbg !1293

; <label>:90:                                     ; preds = %79
  %91 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %80, i32 0, i32 2, !dbg !1295
  %92 = load i8*, i8** %91, align 8, !dbg !1295
  %93 = bitcast i8* %92 to i8**, !dbg !1295
  %94 = getelementptr i8, i8* %92, i32 8, !dbg !1295
  store i8* %94, i8** %91, align 8, !dbg !1295
  br label %95, !dbg !1295

; <label>:95:                                     ; preds = %90, %84
  %96 = phi i8** [ %88, %84 ], [ %93, %90 ], !dbg !1297
  %97 = load i8*, i8** %96, align 8, !dbg !1297
  %98 = load i32, i32* %9, align 4, !dbg !1299
  %99 = sext i32 %98 to i64, !dbg !1300
  %100 = load i8**, i8*** %8, align 8, !dbg !1300
  %101 = getelementptr inbounds i8*, i8** %100, i64 %99, !dbg !1300
  %102 = call signext i8 @PosixConvertToCurrent(i8* %97, i8** %101), !dbg !1301
  %103 = icmp ne i8 %102, 0, !dbg !1301
  br i1 %103, label %107, label %104, !dbg !1302

; <label>:104:                                    ; preds = %95
  %105 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !1303
  %106 = bitcast %struct.__va_list_tag* %105 to i8*, !dbg !1303
  call void @llvm.va_end(i8* %106), !dbg !1303
  br label %128, !dbg !1305

; <label>:107:                                    ; preds = %95
  br label %108, !dbg !1306

; <label>:108:                                    ; preds = %107
  %109 = load i32, i32* %9, align 4, !dbg !1307
  %110 = add nsw i32 %109, 1, !dbg !1307
  store i32 %110, i32* %9, align 4, !dbg !1307
  br label %75, !dbg !1309, !llvm.loop !1310

; <label>:111:                                    ; preds = %75
  %112 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !1312
  %113 = bitcast %struct.__va_list_tag* %112 to i8*, !dbg !1312
  call void @llvm.va_end(i8* %113), !dbg !1312
  br label %114, !dbg !1313

; <label>:114:                                    ; preds = %111, %61
  %115 = load i32, i32* %10, align 4, !dbg !1314
  %116 = sext i32 %115 to i64, !dbg !1315
  %117 = load i8**, i8*** %8, align 8, !dbg !1315
  %118 = getelementptr inbounds i8*, i8** %117, i64 %116, !dbg !1315
  store i8* null, i8** %118, align 8, !dbg !1316
  %119 = call i32* @__errno_location() #1, !dbg !1317
  %120 = load i32, i32* %119, align 4, !dbg !1319
  %121 = icmp ne i32 %120, 0, !dbg !1320
  br i1 %121, label %122, label %123, !dbg !1321

; <label>:122:                                    ; preds = %114
  br label %128, !dbg !1322

; <label>:123:                                    ; preds = %114
  br label %124, !dbg !1324

; <label>:124:                                    ; preds = %123, %58
  %125 = load i8*, i8** %6, align 8, !dbg !1325
  %126 = load i8**, i8*** %8, align 8, !dbg !1326
  %127 = call i32 @execv(i8* %125, i8** %126) #3, !dbg !1327
  store i32 %127, i32* %5, align 4, !dbg !1328
  br label %128, !dbg !1329

; <label>:128:                                    ; preds = %124, %122, %104, %71, %56, %14
  %129 = load i8**, i8*** %8, align 8, !dbg !1330
  call void @Util_FreeStringList(i8** %129, i64 -1), !dbg !1331
  %130 = load i8*, i8** %6, align 8, !dbg !1332
  call void @Posix_Free(i8* %130), !dbg !1333
  %131 = load i32, i32* %5, align 4, !dbg !1334
  ret i32 %131, !dbg !1335
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #5

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

; Function Attrs: nounwind
declare i32 @execv(i8*, i8**) #5

; Function Attrs: inlinehint nounwind uwtable
define internal void @Util_FreeStringList(i8**, i64) #2 !dbg !1336 {
  %3 = alloca i8**, align 8
  %4 = alloca i64, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !1342, metadata !445), !dbg !1343
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1344, metadata !445), !dbg !1345
  %5 = load i8**, i8*** %3, align 8, !dbg !1346
  %6 = load i64, i64* %4, align 8, !dbg !1347
  call void @Util_FreeList(i8** %5, i64 %6), !dbg !1348
  ret void, !dbg !1349
}

; Function Attrs: nounwind uwtable
define i32 @Posix_Execlp(i8*, i8*, ...) #0 !dbg !1350 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1351, metadata !445), !dbg !1352
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1353, metadata !445), !dbg !1354
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1355, metadata !445), !dbg !1356
  store i32 -1, i32* %5, align 4, !dbg !1356
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1357, metadata !445), !dbg !1358
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !1359, metadata !445), !dbg !1360
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !1361, metadata !445), !dbg !1362
  store i8** null, i8*** %8, align 8, !dbg !1362
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1363, metadata !445), !dbg !1364
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1365, metadata !445), !dbg !1366
  store i32 0, i32* %10, align 4, !dbg !1366
  %11 = load i8*, i8** %3, align 8, !dbg !1367
  %12 = call signext i8 @PosixConvertToCurrent(i8* %11, i8** %6), !dbg !1369
  %13 = icmp ne i8 %12, 0, !dbg !1369
  br i1 %13, label %15, label %14, !dbg !1370

; <label>:14:                                     ; preds = %2
  br label %128, !dbg !1371

; <label>:15:                                     ; preds = %2
  %16 = load i8*, i8** %4, align 8, !dbg !1373
  %17 = icmp ne i8* %16, null, !dbg !1373
  br i1 %17, label %18, label %47, !dbg !1375

; <label>:18:                                     ; preds = %15
  store i32 1, i32* %10, align 4, !dbg !1376
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !1378
  %20 = bitcast %struct.__va_list_tag* %19 to i8*, !dbg !1378
  call void @llvm.va_start(i8* %20), !dbg !1378
  br label %21, !dbg !1379

; <label>:21:                                     ; preds = %41, %18
  %22 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !1380
  %23 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %22, i32 0, i32 0, !dbg !1380
  %24 = load i32, i32* %23, align 16, !dbg !1380
  %25 = icmp ule i32 %24, 40, !dbg !1380
  br i1 %25, label %26, label %32, !dbg !1380

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %22, i32 0, i32 3, !dbg !1382
  %28 = load i8*, i8** %27, align 16, !dbg !1382
  %29 = getelementptr i8, i8* %28, i32 %24, !dbg !1382
  %30 = bitcast i8* %29 to i8**, !dbg !1382
  %31 = add i32 %24, 8, !dbg !1382
  store i32 %31, i32* %23, align 16, !dbg !1382
  br label %37, !dbg !1382

; <label>:32:                                     ; preds = %21
  %33 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %22, i32 0, i32 2, !dbg !1384
  %34 = load i8*, i8** %33, align 8, !dbg !1384
  %35 = bitcast i8* %34 to i8**, !dbg !1384
  %36 = getelementptr i8, i8* %34, i32 8, !dbg !1384
  store i8* %36, i8** %33, align 8, !dbg !1384
  br label %37, !dbg !1384

; <label>:37:                                     ; preds = %32, %26
  %38 = phi i8** [ %30, %26 ], [ %35, %32 ], !dbg !1386
  %39 = load i8*, i8** %38, align 8, !dbg !1386
  %40 = icmp ne i8* %39, null, !dbg !1388
  br i1 %40, label %41, label %44, !dbg !1388

; <label>:41:                                     ; preds = %37
  %42 = load i32, i32* %10, align 4, !dbg !1389
  %43 = add nsw i32 %42, 1, !dbg !1389
  store i32 %43, i32* %10, align 4, !dbg !1389
  br label %21, !dbg !1391, !llvm.loop !1393

; <label>:44:                                     ; preds = %37
  %45 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !1394
  %46 = bitcast %struct.__va_list_tag* %45 to i8*, !dbg !1394
  call void @llvm.va_end(i8* %46), !dbg !1394
  br label %47, !dbg !1395

; <label>:47:                                     ; preds = %44, %15
  %48 = load i32, i32* %10, align 4, !dbg !1396
  %49 = add nsw i32 %48, 1, !dbg !1397
  %50 = sext i32 %49 to i64, !dbg !1398
  %51 = mul i64 8, %50, !dbg !1399
  %52 = call noalias i8* @malloc(i64 %51) #3, !dbg !1400
  %53 = bitcast i8* %52 to i8**, !dbg !1401
  store i8** %53, i8*** %8, align 8, !dbg !1402
  %54 = load i8**, i8*** %8, align 8, !dbg !1403
  %55 = icmp eq i8** %54, null, !dbg !1405
  br i1 %55, label %56, label %58, !dbg !1406

; <label>:56:                                     ; preds = %47
  %57 = call i32* @__errno_location() #1, !dbg !1407
  store i32 12, i32* %57, align 4, !dbg !1409
  br label %128, !dbg !1410

; <label>:58:                                     ; preds = %47
  %59 = load i8**, i8*** %8, align 8, !dbg !1411
  %60 = icmp ne i8** %59, null, !dbg !1411
  br i1 %60, label %61, label %124, !dbg !1413

; <label>:61:                                     ; preds = %58
  %62 = call i32* @__errno_location() #1, !dbg !1414
  store i32 0, i32* %62, align 4, !dbg !1416
  %63 = load i32, i32* %10, align 4, !dbg !1417
  %64 = icmp sgt i32 %63, 0, !dbg !1419
  br i1 %64, label %65, label %114, !dbg !1420

; <label>:65:                                     ; preds = %61
  %66 = load i8*, i8** %4, align 8, !dbg !1421
  %67 = load i8**, i8*** %8, align 8, !dbg !1424
  %68 = getelementptr inbounds i8*, i8** %67, i64 0, !dbg !1424
  %69 = call signext i8 @PosixConvertToCurrent(i8* %66, i8** %68), !dbg !1425
  %70 = icmp ne i8 %69, 0, !dbg !1425
  br i1 %70, label %72, label %71, !dbg !1426

; <label>:71:                                     ; preds = %65
  br label %128, !dbg !1427

; <label>:72:                                     ; preds = %65
  %73 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !1429
  %74 = bitcast %struct.__va_list_tag* %73 to i8*, !dbg !1429
  call void @llvm.va_start(i8* %74), !dbg !1429
  store i32 1, i32* %9, align 4, !dbg !1430
  br label %75, !dbg !1432

; <label>:75:                                     ; preds = %108, %72
  %76 = load i32, i32* %9, align 4, !dbg !1433
  %77 = load i32, i32* %10, align 4, !dbg !1436
  %78 = icmp slt i32 %76, %77, !dbg !1437
  br i1 %78, label %79, label %111, !dbg !1438

; <label>:79:                                     ; preds = %75
  %80 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !1439
  %81 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %80, i32 0, i32 0, !dbg !1439
  %82 = load i32, i32* %81, align 16, !dbg !1439
  %83 = icmp ule i32 %82, 40, !dbg !1439
  br i1 %83, label %84, label %90, !dbg !1439

; <label>:84:                                     ; preds = %79
  %85 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %80, i32 0, i32 3, !dbg !1442
  %86 = load i8*, i8** %85, align 16, !dbg !1442
  %87 = getelementptr i8, i8* %86, i32 %82, !dbg !1442
  %88 = bitcast i8* %87 to i8**, !dbg !1442
  %89 = add i32 %82, 8, !dbg !1442
  store i32 %89, i32* %81, align 16, !dbg !1442
  br label %95, !dbg !1442

; <label>:90:                                     ; preds = %79
  %91 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %80, i32 0, i32 2, !dbg !1444
  %92 = load i8*, i8** %91, align 8, !dbg !1444
  %93 = bitcast i8* %92 to i8**, !dbg !1444
  %94 = getelementptr i8, i8* %92, i32 8, !dbg !1444
  store i8* %94, i8** %91, align 8, !dbg !1444
  br label %95, !dbg !1444

; <label>:95:                                     ; preds = %90, %84
  %96 = phi i8** [ %88, %84 ], [ %93, %90 ], !dbg !1446
  %97 = load i8*, i8** %96, align 8, !dbg !1446
  %98 = load i32, i32* %9, align 4, !dbg !1448
  %99 = sext i32 %98 to i64, !dbg !1449
  %100 = load i8**, i8*** %8, align 8, !dbg !1449
  %101 = getelementptr inbounds i8*, i8** %100, i64 %99, !dbg !1449
  %102 = call signext i8 @PosixConvertToCurrent(i8* %97, i8** %101), !dbg !1450
  %103 = icmp ne i8 %102, 0, !dbg !1450
  br i1 %103, label %107, label %104, !dbg !1451

; <label>:104:                                    ; preds = %95
  %105 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !1452
  %106 = bitcast %struct.__va_list_tag* %105 to i8*, !dbg !1452
  call void @llvm.va_end(i8* %106), !dbg !1452
  br label %128, !dbg !1454

; <label>:107:                                    ; preds = %95
  br label %108, !dbg !1455

; <label>:108:                                    ; preds = %107
  %109 = load i32, i32* %9, align 4, !dbg !1456
  %110 = add nsw i32 %109, 1, !dbg !1456
  store i32 %110, i32* %9, align 4, !dbg !1456
  br label %75, !dbg !1458, !llvm.loop !1459

; <label>:111:                                    ; preds = %75
  %112 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !1461
  %113 = bitcast %struct.__va_list_tag* %112 to i8*, !dbg !1461
  call void @llvm.va_end(i8* %113), !dbg !1461
  br label %114, !dbg !1462

; <label>:114:                                    ; preds = %111, %61
  %115 = load i32, i32* %10, align 4, !dbg !1463
  %116 = sext i32 %115 to i64, !dbg !1464
  %117 = load i8**, i8*** %8, align 8, !dbg !1464
  %118 = getelementptr inbounds i8*, i8** %117, i64 %116, !dbg !1464
  store i8* null, i8** %118, align 8, !dbg !1465
  %119 = call i32* @__errno_location() #1, !dbg !1466
  %120 = load i32, i32* %119, align 4, !dbg !1468
  %121 = icmp ne i32 %120, 0, !dbg !1469
  br i1 %121, label %122, label %123, !dbg !1470

; <label>:122:                                    ; preds = %114
  br label %128, !dbg !1471

; <label>:123:                                    ; preds = %114
  br label %124, !dbg !1473

; <label>:124:                                    ; preds = %123, %58
  %125 = load i8*, i8** %6, align 8, !dbg !1474
  %126 = load i8**, i8*** %8, align 8, !dbg !1475
  %127 = call i32 @execvp(i8* %125, i8** %126) #3, !dbg !1476
  store i32 %127, i32* %5, align 4, !dbg !1477
  br label %128, !dbg !1478

; <label>:128:                                    ; preds = %124, %122, %104, %71, %56, %14
  %129 = load i8**, i8*** %8, align 8, !dbg !1479
  call void @Util_FreeStringList(i8** %129, i64 -1), !dbg !1480
  %130 = load i8*, i8** %6, align 8, !dbg !1481
  call void @Posix_Free(i8* %130), !dbg !1482
  %131 = load i32, i32* %5, align 4, !dbg !1483
  ret i32 %131, !dbg !1484
}

; Function Attrs: nounwind
declare i32 @execvp(i8*, i8**) #5

; Function Attrs: nounwind uwtable
define i32 @Posix_Execv(i8*, i8**) #0 !dbg !1485 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1490, metadata !445), !dbg !1491
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !1492, metadata !445), !dbg !1493
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1494, metadata !445), !dbg !1495
  store i32 -1, i32* %5, align 4, !dbg !1495
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1496, metadata !445), !dbg !1497
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !1498, metadata !445), !dbg !1499
  store i8** null, i8*** %7, align 8, !dbg !1499
  %8 = load i8*, i8** %3, align 8, !dbg !1500
  %9 = call signext i8 @PosixConvertToCurrent(i8* %8, i8** %6), !dbg !1502
  %10 = icmp ne i8 %9, 0, !dbg !1502
  br i1 %10, label %12, label %11, !dbg !1503

; <label>:11:                                     ; preds = %2
  br label %21, !dbg !1504

; <label>:12:                                     ; preds = %2
  %13 = load i8**, i8*** %4, align 8, !dbg !1506
  %14 = call signext i8 @PosixConvertToCurrentList(i8** %13, i8*** %7), !dbg !1508
  %15 = icmp ne i8 %14, 0, !dbg !1508
  br i1 %15, label %17, label %16, !dbg !1509

; <label>:16:                                     ; preds = %12
  br label %21, !dbg !1510

; <label>:17:                                     ; preds = %12
  %18 = load i8*, i8** %6, align 8, !dbg !1512
  %19 = load i8**, i8*** %7, align 8, !dbg !1513
  %20 = call i32 @execv(i8* %18, i8** %19) #3, !dbg !1514
  store i32 %20, i32* %5, align 4, !dbg !1515
  br label %21, !dbg !1516

; <label>:21:                                     ; preds = %17, %16, %11
  %22 = load i8**, i8*** %7, align 8, !dbg !1517
  call void @Util_FreeStringList(i8** %22, i64 -1), !dbg !1518
  %23 = load i8*, i8** %6, align 8, !dbg !1519
  call void @Posix_Free(i8* %23), !dbg !1520
  %24 = load i32, i32* %5, align 4, !dbg !1521
  ret i32 %24, !dbg !1522
}

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @PosixConvertToCurrentList(i8**, i8***) #2 !dbg !1523 {
  %3 = alloca i8**, align 8
  %4 = alloca i8***, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8, align 1
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !1527, metadata !445), !dbg !1528
  store i8*** %1, i8**** %4, align 8
  call void @llvm.dbg.declare(metadata i8**** %4, metadata !1529, metadata !445), !dbg !1530
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1531, metadata !445), !dbg !1532
  %8 = call i32* @__errno_location() #1, !dbg !1533
  %9 = load i32, i32* %8, align 4, !dbg !1534
  store i32 %9, i32* %5, align 4, !dbg !1532
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !1535, metadata !445), !dbg !1536
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1537, metadata !445), !dbg !1538
  %10 = load i8**, i8*** %3, align 8, !dbg !1539
  %11 = icmp eq i8** %10, null, !dbg !1541
  br i1 %11, label %12, label %13, !dbg !1542

; <label>:12:                                     ; preds = %2
  store i8** null, i8*** %6, align 8, !dbg !1543
  store i8 1, i8* %7, align 1, !dbg !1545
  br label %20, !dbg !1546

; <label>:13:                                     ; preds = %2
  %14 = load i8**, i8*** %3, align 8, !dbg !1547
  %15 = call i8** @Unicode_GetAllocList(i8** %14, i64 -1, i32 -1), !dbg !1549
  store i8** %15, i8*** %6, align 8, !dbg !1550
  %16 = load i8**, i8*** %6, align 8, !dbg !1551
  %17 = icmp ne i8** %16, null, !dbg !1552
  %18 = zext i1 %17 to i32, !dbg !1552
  %19 = trunc i32 %18 to i8, !dbg !1551
  store i8 %19, i8* %7, align 1, !dbg !1553
  br label %20

; <label>:20:                                     ; preds = %13, %12
  %21 = load i8, i8* %7, align 1, !dbg !1554
  %22 = icmp ne i8 %21, 0, !dbg !1554
  br i1 %22, label %24, label %23, !dbg !1556

; <label>:23:                                     ; preds = %20
  store i32 22, i32* %5, align 4, !dbg !1557
  br label %24, !dbg !1559

; <label>:24:                                     ; preds = %23, %20
  %25 = load i8**, i8*** %6, align 8, !dbg !1560
  %26 = load i8***, i8**** %4, align 8, !dbg !1561
  store i8** %25, i8*** %26, align 8, !dbg !1562
  %27 = load i32, i32* %5, align 4, !dbg !1563
  %28 = call i32* @__errno_location() #1, !dbg !1564
  store i32 %27, i32* %28, align 4, !dbg !1565
  %29 = load i8, i8* %7, align 1, !dbg !1566
  ret i8 %29, !dbg !1567
}

; Function Attrs: nounwind uwtable
define i32 @Posix_Execve(i8*, i8**, i8**) #0 !dbg !1568 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1571, metadata !445), !dbg !1572
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !1573, metadata !445), !dbg !1574
  store i8** %2, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !1575, metadata !445), !dbg !1576
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1577, metadata !445), !dbg !1578
  store i32 -1, i32* %7, align 4, !dbg !1578
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1579, metadata !445), !dbg !1580
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !1581, metadata !445), !dbg !1582
  store i8** null, i8*** %9, align 8, !dbg !1582
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !1583, metadata !445), !dbg !1584
  store i8** null, i8*** %10, align 8, !dbg !1584
  %11 = load i8*, i8** %4, align 8, !dbg !1585
  %12 = call signext i8 @PosixConvertToCurrent(i8* %11, i8** %8), !dbg !1587
  %13 = icmp ne i8 %12, 0, !dbg !1587
  br i1 %13, label %15, label %14, !dbg !1588

; <label>:14:                                     ; preds = %3
  br label %30, !dbg !1589

; <label>:15:                                     ; preds = %3
  %16 = load i8**, i8*** %5, align 8, !dbg !1591
  %17 = call signext i8 @PosixConvertToCurrentList(i8** %16, i8*** %9), !dbg !1593
  %18 = icmp ne i8 %17, 0, !dbg !1593
  br i1 %18, label %20, label %19, !dbg !1594

; <label>:19:                                     ; preds = %15
  br label %30, !dbg !1595

; <label>:20:                                     ; preds = %15
  %21 = load i8**, i8*** %6, align 8, !dbg !1597
  %22 = call signext i8 @PosixConvertToCurrentList(i8** %21, i8*** %10), !dbg !1599
  %23 = icmp ne i8 %22, 0, !dbg !1599
  br i1 %23, label %25, label %24, !dbg !1600

; <label>:24:                                     ; preds = %20
  br label %30, !dbg !1601

; <label>:25:                                     ; preds = %20
  %26 = load i8*, i8** %8, align 8, !dbg !1603
  %27 = load i8**, i8*** %9, align 8, !dbg !1604
  %28 = load i8**, i8*** %10, align 8, !dbg !1605
  %29 = call i32 @execve(i8* %26, i8** %27, i8** %28) #3, !dbg !1606
  store i32 %29, i32* %7, align 4, !dbg !1607
  br label %30, !dbg !1608

; <label>:30:                                     ; preds = %25, %24, %19, %14
  %31 = load i8**, i8*** %9, align 8, !dbg !1609
  call void @Util_FreeStringList(i8** %31, i64 -1), !dbg !1610
  %32 = load i8**, i8*** %10, align 8, !dbg !1611
  call void @Util_FreeStringList(i8** %32, i64 -1), !dbg !1612
  %33 = load i8*, i8** %8, align 8, !dbg !1613
  call void @Posix_Free(i8* %33), !dbg !1614
  %34 = load i32, i32* %7, align 4, !dbg !1615
  ret i32 %34, !dbg !1616
}

; Function Attrs: nounwind
declare i32 @execve(i8*, i8**, i8**) #5

; Function Attrs: nounwind uwtable
define i32 @Posix_Execvp(i8*, i8**) #0 !dbg !1617 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1618, metadata !445), !dbg !1619
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !1620, metadata !445), !dbg !1621
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1622, metadata !445), !dbg !1623
  store i32 -1, i32* %5, align 4, !dbg !1623
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1624, metadata !445), !dbg !1625
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !1626, metadata !445), !dbg !1627
  store i8** null, i8*** %7, align 8, !dbg !1627
  %8 = load i8*, i8** %3, align 8, !dbg !1628
  %9 = call signext i8 @PosixConvertToCurrent(i8* %8, i8** %6), !dbg !1630
  %10 = icmp ne i8 %9, 0, !dbg !1630
  br i1 %10, label %12, label %11, !dbg !1631

; <label>:11:                                     ; preds = %2
  br label %21, !dbg !1632

; <label>:12:                                     ; preds = %2
  %13 = load i8**, i8*** %4, align 8, !dbg !1634
  %14 = call signext i8 @PosixConvertToCurrentList(i8** %13, i8*** %7), !dbg !1636
  %15 = icmp ne i8 %14, 0, !dbg !1636
  br i1 %15, label %17, label %16, !dbg !1637

; <label>:16:                                     ; preds = %12
  br label %21, !dbg !1638

; <label>:17:                                     ; preds = %12
  %18 = load i8*, i8** %6, align 8, !dbg !1640
  %19 = load i8**, i8*** %7, align 8, !dbg !1641
  %20 = call i32 @execvp(i8* %18, i8** %19) #3, !dbg !1642
  store i32 %20, i32* %5, align 4, !dbg !1643
  br label %21, !dbg !1644

; <label>:21:                                     ; preds = %17, %16, %11
  %22 = load i8**, i8*** %7, align 8, !dbg !1645
  call void @Util_FreeStringList(i8** %22, i64 -1), !dbg !1646
  %23 = load i8*, i8** %6, align 8, !dbg !1647
  call void @Posix_Free(i8* %23), !dbg !1648
  %24 = load i32, i32* %5, align 4, !dbg !1649
  ret i32 %24, !dbg !1650
}

; Function Attrs: nounwind uwtable
define i32 @Posix_System(i8*) #0 !dbg !1651 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1652, metadata !445), !dbg !1653
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1654, metadata !445), !dbg !1655
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1656, metadata !445), !dbg !1657
  %6 = load i8*, i8** %3, align 8, !dbg !1658
  %7 = call signext i8 @PosixConvertToCurrent(i8* %6, i8** %4), !dbg !1660
  %8 = icmp ne i8 %7, 0, !dbg !1660
  br i1 %8, label %10, label %9, !dbg !1661

; <label>:9:                                      ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !1662
  br label %15, !dbg !1662

; <label>:10:                                     ; preds = %1
  %11 = load i8*, i8** %4, align 8, !dbg !1664
  %12 = call i32 @system(i8* %11), !dbg !1665
  store i32 %12, i32* %5, align 4, !dbg !1666
  %13 = load i8*, i8** %4, align 8, !dbg !1667
  call void @Posix_Free(i8* %13), !dbg !1668
  %14 = load i32, i32* %5, align 4, !dbg !1669
  store i32 %14, i32* %2, align 4, !dbg !1670
  br label %15, !dbg !1670

; <label>:15:                                     ; preds = %10, %9
  %16 = load i32, i32* %2, align 4, !dbg !1671
  ret i32 %16, !dbg !1671
}

declare i32 @system(i8*) #4

; Function Attrs: nounwind uwtable
define i32 @Posix_Mkdir(i8*, i32) #0 !dbg !1672 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1673, metadata !445), !dbg !1674
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1675, metadata !445), !dbg !1676
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1677, metadata !445), !dbg !1678
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1679, metadata !445), !dbg !1680
  %8 = load i8*, i8** %4, align 8, !dbg !1681
  %9 = call signext i8 @PosixConvertToCurrent(i8* %8, i8** %6), !dbg !1683
  %10 = icmp ne i8 %9, 0, !dbg !1683
  br i1 %10, label %12, label %11, !dbg !1684

; <label>:11:                                     ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !1685
  br label %18, !dbg !1685

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %6, align 8, !dbg !1687
  %14 = load i32, i32* %5, align 4, !dbg !1688
  %15 = call i32 @mkdir(i8* %13, i32 %14) #3, !dbg !1689
  store i32 %15, i32* %7, align 4, !dbg !1690
  %16 = load i8*, i8** %6, align 8, !dbg !1691
  call void @Posix_Free(i8* %16), !dbg !1692
  %17 = load i32, i32* %7, align 4, !dbg !1693
  store i32 %17, i32* %3, align 4, !dbg !1694
  br label %18, !dbg !1694

; <label>:18:                                     ; preds = %12, %11
  %19 = load i32, i32* %3, align 4, !dbg !1695
  ret i32 %19, !dbg !1695
}

; Function Attrs: nounwind
declare i32 @mkdir(i8*, i32) #5

; Function Attrs: nounwind uwtable
define i32 @Posix_Chdir(i8*) #0 !dbg !1696 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1697, metadata !445), !dbg !1698
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1699, metadata !445), !dbg !1700
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1701, metadata !445), !dbg !1702
  %6 = load i8*, i8** %3, align 8, !dbg !1703
  %7 = call signext i8 @PosixConvertToCurrent(i8* %6, i8** %4), !dbg !1705
  %8 = icmp ne i8 %7, 0, !dbg !1705
  br i1 %8, label %10, label %9, !dbg !1706

; <label>:9:                                      ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !1707
  br label %15, !dbg !1707

; <label>:10:                                     ; preds = %1
  %11 = load i8*, i8** %4, align 8, !dbg !1709
  %12 = call i32 @chdir(i8* %11) #3, !dbg !1710
  store i32 %12, i32* %5, align 4, !dbg !1711
  %13 = load i8*, i8** %4, align 8, !dbg !1712
  call void @Posix_Free(i8* %13), !dbg !1713
  %14 = load i32, i32* %5, align 4, !dbg !1714
  store i32 %14, i32* %2, align 4, !dbg !1715
  br label %15, !dbg !1715

; <label>:15:                                     ; preds = %10, %9
  %16 = load i32, i32* %2, align 4, !dbg !1716
  ret i32 %16, !dbg !1716
}

; Function Attrs: nounwind
declare i32 @chdir(i8*) #5

; Function Attrs: nounwind uwtable
define i8* @Posix_RealPath(i8*) #0 !dbg !1717 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [4096 x i8], align 16
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1720, metadata !445), !dbg !1721
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1722, metadata !445), !dbg !1723
  call void @llvm.dbg.declare(metadata [4096 x i8]* %5, metadata !1724, metadata !445), !dbg !1728
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1729, metadata !445), !dbg !1730
  %7 = load i8*, i8** %3, align 8, !dbg !1731
  %8 = call signext i8 @PosixConvertToCurrent(i8* %7, i8** %4), !dbg !1733
  %9 = icmp ne i8 %8, 0, !dbg !1733
  br i1 %9, label %11, label %10, !dbg !1734

; <label>:10:                                     ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !1735
  br label %24, !dbg !1735

; <label>:11:                                     ; preds = %1
  %12 = load i8*, i8** %4, align 8, !dbg !1737
  %13 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i32 0, i32 0, !dbg !1738
  %14 = call i8* @realpath(i8* %12, i8* %13) #3, !dbg !1739
  store i8* %14, i8** %6, align 8, !dbg !1740
  %15 = load i8*, i8** %4, align 8, !dbg !1741
  call void @Posix_Free(i8* %15), !dbg !1742
  %16 = load i8*, i8** %6, align 8, !dbg !1743
  %17 = icmp eq i8* %16, null, !dbg !1744
  br i1 %17, label %18, label %19, !dbg !1743

; <label>:18:                                     ; preds = %11
  br label %22, !dbg !1745

; <label>:19:                                     ; preds = %11
  %20 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i32 0, i32 0, !dbg !1747
  %21 = call i8* @Unicode_Alloc(i8* %20, i32 -1), !dbg !1749
  br label %22, !dbg !1750

; <label>:22:                                     ; preds = %19, %18
  %23 = phi i8* [ null, %18 ], [ %21, %19 ], !dbg !1751
  store i8* %23, i8** %2, align 8, !dbg !1753
  br label %24, !dbg !1753

; <label>:24:                                     ; preds = %22, %10
  %25 = load i8*, i8** %2, align 8, !dbg !1754
  ret i8* %25, !dbg !1754
}

; Function Attrs: nounwind
declare i8* @realpath(i8*, i8*) #5

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Unicode_Alloc(i8*, i32) #2 !dbg !1755 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1762, metadata !445), !dbg !1763
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1764, metadata !445), !dbg !1765
  %5 = load i8*, i8** %3, align 8, !dbg !1766
  %6 = load i32, i32* %4, align 4, !dbg !1767
  %7 = call i8* @Unicode_AllocWithLength(i8* %5, i64 -1, i32 %6), !dbg !1768
  ret i8* %7, !dbg !1769
}

; Function Attrs: nounwind uwtable
define i8* @Posix_ReadLink(i8*) #0 !dbg !1770 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1771, metadata !445), !dbg !1772
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1773, metadata !445), !dbg !1774
  store i8* null, i8** %3, align 8, !dbg !1774
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1775, metadata !445), !dbg !1776
  store i8* null, i8** %4, align 8, !dbg !1776
  %8 = load i8*, i8** %2, align 8, !dbg !1777
  %9 = call signext i8 @PosixConvertToCurrent(i8* %8, i8** %3), !dbg !1779
  %10 = icmp ne i8 %9, 0, !dbg !1779
  br i1 %10, label %11, label %39, !dbg !1780

; <label>:11:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1781, metadata !445), !dbg !1783
  store i64 2048, i64* %5, align 8, !dbg !1783
  br label %12, !dbg !1784

; <label>:12:                                     ; preds = %11, %34
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1785, metadata !445), !dbg !1787
  %13 = load i64, i64* %5, align 8, !dbg !1788
  %14 = call i8* @UtilSafeMalloc0(i64 %13), !dbg !1789
  store i8* %14, i8** %6, align 8, !dbg !1787
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1790, metadata !445), !dbg !1791
  %15 = load i8*, i8** %3, align 8, !dbg !1792
  %16 = load i8*, i8** %6, align 8, !dbg !1793
  %17 = load i64, i64* %5, align 8, !dbg !1794
  %18 = call i64 @readlink(i8* %15, i8* %16, i64 %17) #3, !dbg !1795
  store i64 %18, i64* %7, align 8, !dbg !1791
  %19 = load i64, i64* %7, align 8, !dbg !1796
  %20 = icmp eq i64 %19, -1, !dbg !1798
  br i1 %20, label %21, label %23, !dbg !1799

; <label>:21:                                     ; preds = %12
  %22 = load i8*, i8** %6, align 8, !dbg !1800
  call void @Posix_Free(i8* %22), !dbg !1802
  br label %38, !dbg !1803

; <label>:23:                                     ; preds = %12
  %24 = load i64, i64* %7, align 8, !dbg !1804
  %25 = load i64, i64* %5, align 8, !dbg !1806
  %26 = icmp ult i64 %24, %25, !dbg !1807
  br i1 %26, label %27, label %34, !dbg !1808

; <label>:27:                                     ; preds = %23
  %28 = load i64, i64* %7, align 8, !dbg !1809
  %29 = load i8*, i8** %6, align 8, !dbg !1811
  %30 = getelementptr inbounds i8, i8* %29, i64 %28, !dbg !1811
  store i8 0, i8* %30, align 1, !dbg !1812
  %31 = load i8*, i8** %6, align 8, !dbg !1813
  %32 = call i8* @Unicode_Alloc(i8* %31, i32 -1), !dbg !1814
  store i8* %32, i8** %4, align 8, !dbg !1815
  %33 = load i8*, i8** %6, align 8, !dbg !1816
  call void @Posix_Free(i8* %33), !dbg !1817
  br label %38, !dbg !1818

; <label>:34:                                     ; preds = %23
  %35 = load i8*, i8** %6, align 8, !dbg !1819
  call void @Posix_Free(i8* %35), !dbg !1820
  %36 = load i64, i64* %5, align 8, !dbg !1821
  %37 = add i64 %36, 1024, !dbg !1821
  store i64 %37, i64* %5, align 8, !dbg !1821
  br label %12, !dbg !1822, !llvm.loop !1824

; <label>:38:                                     ; preds = %27, %21
  br label %39, !dbg !1825

; <label>:39:                                     ; preds = %38, %1
  %40 = load i8*, i8** %3, align 8, !dbg !1826
  call void @Posix_Free(i8* %40), !dbg !1827
  %41 = load i8*, i8** %4, align 8, !dbg !1828
  ret i8* %41, !dbg !1829
}

declare i8* @UtilSafeMalloc0(i64) #4

; Function Attrs: nounwind
declare i64 @readlink(i8*, i8*, i64) #5

; Function Attrs: nounwind uwtable
define i32 @Posix_Lstat(i8*, %struct.stat*) #0 !dbg !1830 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stat*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1831, metadata !445), !dbg !1832
  store %struct.stat* %1, %struct.stat** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.stat** %5, metadata !1833, metadata !445), !dbg !1834
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1835, metadata !445), !dbg !1836
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1837, metadata !445), !dbg !1838
  %8 = load i8*, i8** %4, align 8, !dbg !1839
  %9 = call signext i8 @PosixConvertToCurrent(i8* %8, i8** %6), !dbg !1841
  %10 = icmp ne i8 %9, 0, !dbg !1841
  br i1 %10, label %12, label %11, !dbg !1842

; <label>:11:                                     ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !1843
  br label %18, !dbg !1843

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %6, align 8, !dbg !1845
  %14 = load %struct.stat*, %struct.stat** %5, align 8, !dbg !1846
  %15 = call i32 @lstat64(i8* %13, %struct.stat* %14) #3, !dbg !1847
  store i32 %15, i32* %7, align 4, !dbg !1848
  %16 = load i8*, i8** %6, align 8, !dbg !1849
  call void @Posix_Free(i8* %16), !dbg !1850
  %17 = load i32, i32* %7, align 4, !dbg !1851
  store i32 %17, i32* %3, align 4, !dbg !1852
  br label %18, !dbg !1852

; <label>:18:                                     ; preds = %12, %11
  %19 = load i32, i32* %3, align 4, !dbg !1853
  ret i32 %19, !dbg !1853
}

; Function Attrs: nounwind
declare i32 @lstat64(i8*, %struct.stat*) #5

; Function Attrs: nounwind uwtable
define %struct.__dirstream* @Posix_OpenDir(i8*) #0 !dbg !1854 {
  %2 = alloca %struct.__dirstream*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.__dirstream*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1861, metadata !445), !dbg !1862
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1863, metadata !445), !dbg !1864
  call void @llvm.dbg.declare(metadata %struct.__dirstream** %5, metadata !1865, metadata !445), !dbg !1866
  %6 = load i8*, i8** %3, align 8, !dbg !1867
  %7 = call signext i8 @PosixConvertToCurrent(i8* %6, i8** %4), !dbg !1869
  %8 = icmp ne i8 %7, 0, !dbg !1869
  br i1 %8, label %10, label %9, !dbg !1870

; <label>:9:                                      ; preds = %1
  store %struct.__dirstream* null, %struct.__dirstream** %2, align 8, !dbg !1871
  br label %15, !dbg !1871

; <label>:10:                                     ; preds = %1
  %11 = load i8*, i8** %4, align 8, !dbg !1873
  %12 = call %struct.__dirstream* @opendir(i8* %11), !dbg !1874
  store %struct.__dirstream* %12, %struct.__dirstream** %5, align 8, !dbg !1875
  %13 = load i8*, i8** %4, align 8, !dbg !1876
  call void @Posix_Free(i8* %13), !dbg !1877
  %14 = load %struct.__dirstream*, %struct.__dirstream** %5, align 8, !dbg !1878
  store %struct.__dirstream* %14, %struct.__dirstream** %2, align 8, !dbg !1879
  br label %15, !dbg !1879

; <label>:15:                                     ; preds = %10, %9
  %16 = load %struct.__dirstream*, %struct.__dirstream** %2, align 8, !dbg !1880
  ret %struct.__dirstream* %16, !dbg !1880
}

declare %struct.__dirstream* @opendir(i8*) #4

; Function Attrs: nounwind uwtable
define i8* @Posix_Getenv(i8*) #0 !dbg !1881 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1882, metadata !445), !dbg !1883
  %4 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1886, metadata !445), !dbg !1887
  %5 = alloca %struct.HashTable*, align 8
  call void @llvm.dbg.declare(metadata %struct.HashTable** %5, metadata !1888, metadata !445), !dbg !1893
  %6 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1894, metadata !445), !dbg !1895
  %7 = alloca %struct.PosixEnvEntry*, align 8
  call void @llvm.dbg.declare(metadata %struct.PosixEnvEntry** %7, metadata !1896, metadata !445), !dbg !1903
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1904, metadata !445), !dbg !1905
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1906, metadata !445), !dbg !1907
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1908, metadata !445), !dbg !1909
  %12 = load i8*, i8** %9, align 8, !dbg !1910
  %13 = call signext i8 @PosixConvertToCurrent(i8* %12, i8** %10), !dbg !1912
  %14 = icmp ne i8 %13, 0, !dbg !1912
  br i1 %14, label %16, label %15, !dbg !1913

; <label>:15:                                     ; preds = %1
  store i8* null, i8** %8, align 8, !dbg !1914
  br label %87, !dbg !1914

; <label>:16:                                     ; preds = %1
  %17 = load i8*, i8** %10, align 8, !dbg !1916
  %18 = call i8* @getenv(i8* %17) #3, !dbg !1917
  store i8* %18, i8** %11, align 8, !dbg !1918
  %19 = load i8*, i8** %10, align 8, !dbg !1919
  call void @Posix_Free(i8* %19), !dbg !1920
  %20 = load i8*, i8** %11, align 8, !dbg !1921
  %21 = icmp eq i8* %20, null, !dbg !1923
  br i1 %21, label %22, label %23, !dbg !1924

; <label>:22:                                     ; preds = %16
  store i8* null, i8** %8, align 8, !dbg !1925
  br label %87, !dbg !1925

; <label>:23:                                     ; preds = %16
  %24 = load i8*, i8** %9, align 8, !dbg !1927
  %25 = load i8*, i8** %11, align 8, !dbg !1928
  %26 = call i8* @Unicode_Alloc(i8* %25, i32 -1), !dbg !1929
  store i8* %24, i8** %3, align 8, !dbg !1930
  store i8* %26, i8** %4, align 8, !dbg !1930
  %27 = load i8*, i8** %4, align 8, !dbg !1931
  %28 = icmp eq i8* %27, null, !dbg !1933
  br i1 %28, label %29, label %31, !dbg !1934

; <label>:29:                                     ; preds = %23
  %30 = load i8*, i8** %4, align 8, !dbg !1935
  store i8* %30, i8** %2, align 8, !dbg !1937
  br label %85, !dbg !1937

; <label>:31:                                     ; preds = %23
  %32 = call %struct.HashTable* @HashTable_AllocOnce(%struct.Atomic_uint64* @PosixGetenvHash.htPtr, i32 128, i32 24, void (i8*)* @PosixEnvFree) #3, !dbg !1938
  store %struct.HashTable* %32, %struct.HashTable** %5, align 8, !dbg !1939
  br label %33, !dbg !1940

; <label>:33:                                     ; preds = %82, %53, %31
  %34 = load %struct.HashTable*, %struct.HashTable** %5, align 8, !dbg !1941
  %35 = load i8*, i8** %3, align 8, !dbg !1946
  %36 = bitcast %struct.PosixEnvEntry** %7 to i8**, !dbg !1947
  %37 = call signext i8 @HashTable_Lookup(%struct.HashTable* %34, i8* %35, i8** %36) #3, !dbg !1948
  %38 = icmp ne i8 %37, 0, !dbg !1948
  br i1 %38, label %57, label %39, !dbg !1949

; <label>:39:                                     ; preds = %33
  %40 = call i8* @UtilSafeMalloc0(i64 16) #3, !dbg !1950
  %41 = bitcast i8* %40 to %struct.PosixEnvEntry*, !dbg !1950
  store %struct.PosixEnvEntry* %41, %struct.PosixEnvEntry** %7, align 8, !dbg !1952
  %42 = load %struct.PosixEnvEntry*, %struct.PosixEnvEntry** %7, align 8, !dbg !1953
  %43 = getelementptr inbounds %struct.PosixEnvEntry, %struct.PosixEnvEntry* %42, i32 0, i32 0, !dbg !1954
  %44 = load i8*, i8** %4, align 8, !dbg !1955
  call void @Atomic_WritePtr(%struct.Atomic_uint64* %43, i8* %44) #3, !dbg !1956
  %45 = load %struct.PosixEnvEntry*, %struct.PosixEnvEntry** %7, align 8, !dbg !1957
  %46 = getelementptr inbounds %struct.PosixEnvEntry, %struct.PosixEnvEntry* %45, i32 0, i32 1, !dbg !1958
  call void @Atomic_WritePtr(%struct.Atomic_uint64* %46, i8* null) #3, !dbg !1959
  %47 = load %struct.HashTable*, %struct.HashTable** %5, align 8, !dbg !1960
  %48 = load i8*, i8** %3, align 8, !dbg !1962
  %49 = load %struct.PosixEnvEntry*, %struct.PosixEnvEntry** %7, align 8, !dbg !1963
  %50 = bitcast %struct.PosixEnvEntry* %49 to i8*, !dbg !1963
  %51 = call signext i8 @HashTable_Insert(%struct.HashTable* %47, i8* %48, i8* %50) #3, !dbg !1964
  %52 = icmp ne i8 %51, 0, !dbg !1964
  br i1 %52, label %56, label %53, !dbg !1965

; <label>:53:                                     ; preds = %39
  %54 = load %struct.PosixEnvEntry*, %struct.PosixEnvEntry** %7, align 8, !dbg !1966
  %55 = bitcast %struct.PosixEnvEntry* %54 to i8*, !dbg !1966
  call void @Posix_Free(i8* %55) #3, !dbg !1968
  br label %33, !dbg !1969, !llvm.loop !1970

; <label>:56:                                     ; preds = %39
  br label %83, !dbg !1972

; <label>:57:                                     ; preds = %33
  %58 = load %struct.PosixEnvEntry*, %struct.PosixEnvEntry** %7, align 8, !dbg !1973
  %59 = getelementptr inbounds %struct.PosixEnvEntry, %struct.PosixEnvEntry* %58, i32 0, i32 0, !dbg !1974
  %60 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %59) #3, !dbg !1975
  store i8* %60, i8** %6, align 8, !dbg !1976
  %61 = load i8*, i8** %6, align 8, !dbg !1977
  %62 = load i8*, i8** %4, align 8, !dbg !1979
  %63 = call i32 @strcmp(i8* %61, i8* %62) #10, !dbg !1980
  %64 = icmp eq i32 %63, 0, !dbg !1981
  br i1 %64, label %65, label %68, !dbg !1982

; <label>:65:                                     ; preds = %57
  %66 = load i8*, i8** %4, align 8, !dbg !1983
  call void @Posix_Free(i8* %66) #3, !dbg !1985
  %67 = load i8*, i8** %6, align 8, !dbg !1986
  store i8* %67, i8** %4, align 8, !dbg !1987
  br label %83, !dbg !1988

; <label>:68:                                     ; preds = %57
  %69 = load %struct.PosixEnvEntry*, %struct.PosixEnvEntry** %7, align 8, !dbg !1989
  %70 = getelementptr inbounds %struct.PosixEnvEntry, %struct.PosixEnvEntry* %69, i32 0, i32 0, !dbg !1991
  %71 = load i8*, i8** %6, align 8, !dbg !1992
  %72 = load i8*, i8** %4, align 8, !dbg !1993
  %73 = call i8* @Atomic_ReadIfEqualWritePtr(%struct.Atomic_uint64* %70, i8* %71, i8* %72) #3, !dbg !1994
  %74 = load i8*, i8** %6, align 8, !dbg !1995
  %75 = icmp eq i8* %73, %74, !dbg !1996
  br i1 %75, label %76, label %82, !dbg !1997

; <label>:76:                                     ; preds = %68
  %77 = load %struct.PosixEnvEntry*, %struct.PosixEnvEntry** %7, align 8, !dbg !1998
  %78 = getelementptr inbounds %struct.PosixEnvEntry, %struct.PosixEnvEntry* %77, i32 0, i32 1, !dbg !2000
  %79 = load i8*, i8** %6, align 8, !dbg !2001
  %80 = call i8* @Atomic_ReadWritePtr(%struct.Atomic_uint64* %78, i8* %79) #3, !dbg !2002
  store i8* %80, i8** %6, align 8, !dbg !2003
  %81 = load i8*, i8** %6, align 8, !dbg !2004
  call void @Posix_Free(i8* %81) #3, !dbg !2005
  br label %83, !dbg !2006

; <label>:82:                                     ; preds = %68
  br label %33, !dbg !2007, !llvm.loop !1970

; <label>:83:                                     ; preds = %76, %65, %56
  %84 = load i8*, i8** %4, align 8, !dbg !2009
  store i8* %84, i8** %2, align 8, !dbg !2010
  br label %85, !dbg !2010

; <label>:85:                                     ; preds = %29, %83
  %86 = load i8*, i8** %2, align 8, !dbg !2011
  store i8* %86, i8** %8, align 8, !dbg !2012
  br label %87, !dbg !2012

; <label>:87:                                     ; preds = %85, %22, %15
  %88 = load i8*, i8** %8, align 8, !dbg !2013
  ret i8* %88, !dbg !2013
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #5

; Function Attrs: nounwind uwtable
define i32 @Posix_Putenv(i8*) #0 !dbg !2014 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2017, metadata !445), !dbg !2018
  %3 = load i8*, i8** %2, align 8, !dbg !2019
  %4 = call i32 @putenv(i8* %3) #3, !dbg !2020
  ret i32 %4, !dbg !2021
}

; Function Attrs: nounwind
declare i32 @putenv(i8*) #5

; Function Attrs: nounwind uwtable
define i32 @Posix_Statfs(i8*, %struct.statfs*) #0 !dbg !2022 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.statfs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2054, metadata !445), !dbg !2055
  store %struct.statfs* %1, %struct.statfs** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.statfs** %5, metadata !2056, metadata !445), !dbg !2057
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2058, metadata !445), !dbg !2059
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2060, metadata !445), !dbg !2061
  %8 = load i8*, i8** %4, align 8, !dbg !2062
  %9 = call signext i8 @PosixConvertToCurrent(i8* %8, i8** %6), !dbg !2064
  %10 = icmp ne i8 %9, 0, !dbg !2064
  br i1 %10, label %12, label %11, !dbg !2065

; <label>:11:                                     ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !2066
  br label %18, !dbg !2066

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %6, align 8, !dbg !2068
  %14 = load %struct.statfs*, %struct.statfs** %5, align 8, !dbg !2069
  %15 = call i32 @statfs64(i8* %13, %struct.statfs* %14) #3, !dbg !2070
  store i32 %15, i32* %7, align 4, !dbg !2071
  %16 = load i8*, i8** %6, align 8, !dbg !2072
  call void @Posix_Free(i8* %16), !dbg !2073
  %17 = load i32, i32* %7, align 4, !dbg !2074
  store i32 %17, i32* %3, align 4, !dbg !2075
  br label %18, !dbg !2075

; <label>:18:                                     ; preds = %12, %11
  %19 = load i32, i32* %3, align 4, !dbg !2076
  ret i32 %19, !dbg !2076
}

; Function Attrs: nounwind
declare i32 @statfs64(i8*, %struct.statfs*) #5

; Function Attrs: nounwind uwtable
define i32 @Posix_Setenv(i8*, i8*, i32) #0 !dbg !2077 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2080, metadata !445), !dbg !2081
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2082, metadata !445), !dbg !2083
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2084, metadata !445), !dbg !2085
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2086, metadata !445), !dbg !2087
  store i32 -1, i32* %7, align 4, !dbg !2087
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2088, metadata !445), !dbg !2089
  store i8* null, i8** %8, align 8, !dbg !2089
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2090, metadata !445), !dbg !2091
  store i8* null, i8** %9, align 8, !dbg !2091
  %10 = load i8*, i8** %4, align 8, !dbg !2092
  %11 = call signext i8 @PosixConvertToCurrent(i8* %10, i8** %8), !dbg !2094
  %12 = icmp ne i8 %11, 0, !dbg !2094
  br i1 %12, label %14, label %13, !dbg !2095

; <label>:13:                                     ; preds = %3
  br label %24, !dbg !2096

; <label>:14:                                     ; preds = %3
  %15 = load i8*, i8** %5, align 8, !dbg !2098
  %16 = call signext i8 @PosixConvertToCurrent(i8* %15, i8** %9), !dbg !2100
  %17 = icmp ne i8 %16, 0, !dbg !2100
  br i1 %17, label %19, label %18, !dbg !2101

; <label>:18:                                     ; preds = %14
  br label %24, !dbg !2102

; <label>:19:                                     ; preds = %14
  %20 = load i8*, i8** %8, align 8, !dbg !2104
  %21 = load i8*, i8** %9, align 8, !dbg !2105
  %22 = load i32, i32* %6, align 4, !dbg !2106
  %23 = call i32 @setenv(i8* %20, i8* %21, i32 %22) #3, !dbg !2107
  store i32 %23, i32* %7, align 4, !dbg !2108
  br label %24, !dbg !2109

; <label>:24:                                     ; preds = %19, %18, %13
  %25 = load i8*, i8** %8, align 8, !dbg !2110
  call void @Posix_Free(i8* %25), !dbg !2111
  %26 = load i8*, i8** %9, align 8, !dbg !2112
  call void @Posix_Free(i8* %26), !dbg !2113
  %27 = load i32, i32* %7, align 4, !dbg !2114
  ret i32 %27, !dbg !2115
}

; Function Attrs: nounwind
declare i32 @setenv(i8*, i8*, i32) #5

; Function Attrs: nounwind uwtable
define i32 @Posix_Unsetenv(i8*) #0 !dbg !2116 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2117, metadata !445), !dbg !2118
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2119, metadata !445), !dbg !2120
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2121, metadata !445), !dbg !2122
  %6 = load i8*, i8** %3, align 8, !dbg !2123
  %7 = call signext i8 @PosixConvertToCurrent(i8* %6, i8** %4), !dbg !2125
  %8 = icmp ne i8 %7, 0, !dbg !2125
  br i1 %8, label %10, label %9, !dbg !2126

; <label>:9:                                      ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !2127
  br label %15, !dbg !2127

; <label>:10:                                     ; preds = %1
  %11 = load i8*, i8** %4, align 8, !dbg !2129
  %12 = call i32 @unsetenv(i8* %11) #3, !dbg !2130
  store i32 %12, i32* %5, align 4, !dbg !2131
  %13 = load i8*, i8** %4, align 8, !dbg !2132
  call void @Posix_Free(i8* %13), !dbg !2133
  %14 = load i32, i32* %5, align 4, !dbg !2134
  store i32 %14, i32* %2, align 4, !dbg !2135
  br label %15, !dbg !2135

; <label>:15:                                     ; preds = %10, %9
  %16 = load i32, i32* %2, align 4, !dbg !2136
  ret i32 %16, !dbg !2136
}

; Function Attrs: nounwind
declare i32 @unsetenv(i8*) #5

; Function Attrs: nounwind uwtable
define i32 @Posix_Mount(i8*, i8*, i8*, i64, i8*) #0 !dbg !2137 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2140, metadata !445), !dbg !2141
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2142, metadata !445), !dbg !2143
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2144, metadata !445), !dbg !2145
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !2146, metadata !445), !dbg !2147
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2148, metadata !445), !dbg !2149
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2150, metadata !445), !dbg !2151
  store i32 -1, i32* %11, align 4, !dbg !2151
  call void @llvm.dbg.declare(metadata i8** %12, metadata !2152, metadata !445), !dbg !2153
  store i8* null, i8** %12, align 8, !dbg !2153
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2154, metadata !445), !dbg !2155
  store i8* null, i8** %13, align 8, !dbg !2155
  %14 = load i8*, i8** %6, align 8, !dbg !2156
  %15 = call signext i8 @PosixConvertToCurrent(i8* %14, i8** %12), !dbg !2158
  %16 = icmp ne i8 %15, 0, !dbg !2158
  br i1 %16, label %18, label %17, !dbg !2159

; <label>:17:                                     ; preds = %5
  br label %30, !dbg !2160

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %7, align 8, !dbg !2162
  %20 = call signext i8 @PosixConvertToCurrent(i8* %19, i8** %13), !dbg !2164
  %21 = icmp ne i8 %20, 0, !dbg !2164
  br i1 %21, label %23, label %22, !dbg !2165

; <label>:22:                                     ; preds = %18
  br label %30, !dbg !2166

; <label>:23:                                     ; preds = %18
  %24 = load i8*, i8** %12, align 8, !dbg !2168
  %25 = load i8*, i8** %13, align 8, !dbg !2169
  %26 = load i8*, i8** %8, align 8, !dbg !2170
  %27 = load i64, i64* %9, align 8, !dbg !2171
  %28 = load i8*, i8** %10, align 8, !dbg !2172
  %29 = call i32 @mount(i8* %24, i8* %25, i8* %26, i64 %27, i8* %28) #3, !dbg !2173
  store i32 %29, i32* %11, align 4, !dbg !2174
  br label %30, !dbg !2175

; <label>:30:                                     ; preds = %23, %22, %17
  %31 = load i8*, i8** %12, align 8, !dbg !2176
  call void @Posix_Free(i8* %31), !dbg !2177
  %32 = load i8*, i8** %13, align 8, !dbg !2178
  call void @Posix_Free(i8* %32), !dbg !2179
  %33 = load i32, i32* %11, align 4, !dbg !2180
  ret i32 %33, !dbg !2181
}

; Function Attrs: nounwind
declare i32 @mount(i8*, i8*, i8*, i64, i8*) #5

; Function Attrs: nounwind uwtable
define i32 @Posix_Umount(i8*) #0 !dbg !2182 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2183, metadata !445), !dbg !2184
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2185, metadata !445), !dbg !2186
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2187, metadata !445), !dbg !2188
  %6 = load i8*, i8** %3, align 8, !dbg !2189
  %7 = call signext i8 @PosixConvertToCurrent(i8* %6, i8** %4), !dbg !2191
  %8 = icmp ne i8 %7, 0, !dbg !2191
  br i1 %8, label %10, label %9, !dbg !2192

; <label>:9:                                      ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !2193
  br label %15, !dbg !2193

; <label>:10:                                     ; preds = %1
  %11 = load i8*, i8** %4, align 8, !dbg !2195
  %12 = call i32 @umount(i8* %11) #3, !dbg !2196
  store i32 %12, i32* %5, align 4, !dbg !2197
  %13 = load i8*, i8** %4, align 8, !dbg !2198
  call void @Posix_Free(i8* %13), !dbg !2199
  %14 = load i32, i32* %5, align 4, !dbg !2200
  store i32 %14, i32* %2, align 4, !dbg !2201
  br label %15, !dbg !2201

; <label>:15:                                     ; preds = %10, %9
  %16 = load i32, i32* %2, align 4, !dbg !2202
  ret i32 %16, !dbg !2202
}

; Function Attrs: nounwind
declare i32 @umount(i8*) #5

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @Posix_Setmntent(i8*, i8*) #0 !dbg !2203 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2204, metadata !445), !dbg !2205
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2206, metadata !445), !dbg !2207
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2208, metadata !445), !dbg !2209
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !2210, metadata !445), !dbg !2211
  %8 = load i8*, i8** %4, align 8, !dbg !2212
  %9 = call signext i8 @PosixConvertToCurrent(i8* %8, i8** %6), !dbg !2214
  %10 = icmp ne i8 %9, 0, !dbg !2214
  br i1 %10, label %12, label %11, !dbg !2215

; <label>:11:                                     ; preds = %2
  store %struct._IO_FILE* null, %struct._IO_FILE** %3, align 8, !dbg !2216
  br label %18, !dbg !2216

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %6, align 8, !dbg !2218
  %14 = load i8*, i8** %5, align 8, !dbg !2219
  %15 = call %struct._IO_FILE* @setmntent(i8* %13, i8* %14) #3, !dbg !2220
  store %struct._IO_FILE* %15, %struct._IO_FILE** %7, align 8, !dbg !2221
  %16 = load i8*, i8** %6, align 8, !dbg !2222
  call void @Posix_Free(i8* %16), !dbg !2223
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2224
  store %struct._IO_FILE* %17, %struct._IO_FILE** %3, align 8, !dbg !2225
  br label %18, !dbg !2225

; <label>:18:                                     ; preds = %12, %11
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2226
  ret %struct._IO_FILE* %19, !dbg !2226
}

; Function Attrs: nounwind
declare %struct._IO_FILE* @setmntent(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define %struct.mntent* @Posix_Getmntent(%struct._IO_FILE*) #0 !dbg !350 {
  %2 = alloca %struct.mntent*, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mntent*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !2227, metadata !445), !dbg !2228
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2229, metadata !445), !dbg !2230
  call void @llvm.dbg.declare(metadata %struct.mntent** %5, metadata !2231, metadata !445), !dbg !2232
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2233
  %7 = call %struct.mntent* @getmntent(%struct._IO_FILE* %6) #3, !dbg !2234
  store %struct.mntent* %7, %struct.mntent** %5, align 8, !dbg !2235
  %8 = load %struct.mntent*, %struct.mntent** %5, align 8, !dbg !2236
  %9 = icmp ne %struct.mntent* %8, null, !dbg !2236
  br i1 %9, label %11, label %10, !dbg !2238

; <label>:10:                                     ; preds = %1
  store %struct.mntent* null, %struct.mntent** %2, align 8, !dbg !2239
  br label %77, !dbg !2239

; <label>:11:                                     ; preds = %1
  %12 = load i8*, i8** getelementptr inbounds (%struct.mntent, %struct.mntent* @Posix_Getmntent.sm, i32 0, i32 0), align 8, !dbg !2241
  call void @Posix_Free(i8* %12), !dbg !2242
  store i8* null, i8** getelementptr inbounds (%struct.mntent, %struct.mntent* @Posix_Getmntent.sm, i32 0, i32 0), align 8, !dbg !2243
  %13 = load i8*, i8** getelementptr inbounds (%struct.mntent, %struct.mntent* @Posix_Getmntent.sm, i32 0, i32 1), align 8, !dbg !2244
  call void @Posix_Free(i8* %13), !dbg !2245
  store i8* null, i8** getelementptr inbounds (%struct.mntent, %struct.mntent* @Posix_Getmntent.sm, i32 0, i32 1), align 8, !dbg !2246
  %14 = load i8*, i8** getelementptr inbounds (%struct.mntent, %struct.mntent* @Posix_Getmntent.sm, i32 0, i32 2), align 8, !dbg !2247
  call void @Posix_Free(i8* %14), !dbg !2248
  store i8* null, i8** getelementptr inbounds (%struct.mntent, %struct.mntent* @Posix_Getmntent.sm, i32 0, i32 2), align 8, !dbg !2249
  %15 = load i8*, i8** getelementptr inbounds (%struct.mntent, %struct.mntent* @Posix_Getmntent.sm, i32 0, i32 3), align 8, !dbg !2250
  call void @Posix_Free(i8* %15), !dbg !2251
  store i8* null, i8** getelementptr inbounds (%struct.mntent, %struct.mntent* @Posix_Getmntent.sm, i32 0, i32 3), align 8, !dbg !2252
  %16 = load %struct.mntent*, %struct.mntent** %5, align 8, !dbg !2253
  %17 = getelementptr inbounds %struct.mntent, %struct.mntent* %16, i32 0, i32 4, !dbg !2254
  %18 = load i32, i32* %17, align 8, !dbg !2254
  store i32 %18, i32* getelementptr inbounds (%struct.mntent, %struct.mntent* @Posix_Getmntent.sm, i32 0, i32 4), align 8, !dbg !2255
  %19 = load %struct.mntent*, %struct.mntent** %5, align 8, !dbg !2256
  %20 = getelementptr inbounds %struct.mntent, %struct.mntent* %19, i32 0, i32 5, !dbg !2257
  %21 = load i32, i32* %20, align 4, !dbg !2257
  store i32 %21, i32* getelementptr inbounds (%struct.mntent, %struct.mntent* @Posix_Getmntent.sm, i32 0, i32 5), align 4, !dbg !2258
  store i32 12, i32* %4, align 4, !dbg !2259
  %22 = load %struct.mntent*, %struct.mntent** %5, align 8, !dbg !2260
  %23 = getelementptr inbounds %struct.mntent, %struct.mntent* %22, i32 0, i32 0, !dbg !2262
  %24 = load i8*, i8** %23, align 8, !dbg !2262
  %25 = icmp ne i8* %24, null, !dbg !2260
  br i1 %25, label %26, label %33, !dbg !2263

; <label>:26:                                     ; preds = %11
  %27 = load %struct.mntent*, %struct.mntent** %5, align 8, !dbg !2264
  %28 = getelementptr inbounds %struct.mntent, %struct.mntent* %27, i32 0, i32 0, !dbg !2265
  %29 = load i8*, i8** %28, align 8, !dbg !2265
  %30 = call i8* @Unicode_Alloc(i8* %29, i32 -1), !dbg !2266
  store i8* %30, i8** getelementptr inbounds (%struct.mntent, %struct.mntent* @Posix_Getmntent.sm, i32 0, i32 0), align 8, !dbg !2267
  %31 = icmp eq i8* %30, null, !dbg !2268
  br i1 %31, label %32, label %33, !dbg !2269

; <label>:32:                                     ; preds = %26
  br label %70, !dbg !2271

; <label>:33:                                     ; preds = %26, %11
  %34 = load %struct.mntent*, %struct.mntent** %5, align 8, !dbg !2273
  %35 = getelementptr inbounds %struct.mntent, %struct.mntent* %34, i32 0, i32 1, !dbg !2275
  %36 = load i8*, i8** %35, align 8, !dbg !2275
  %37 = icmp ne i8* %36, null, !dbg !2273
  br i1 %37, label %38, label %45, !dbg !2276

; <label>:38:                                     ; preds = %33
  %39 = load %struct.mntent*, %struct.mntent** %5, align 8, !dbg !2277
  %40 = getelementptr inbounds %struct.mntent, %struct.mntent* %39, i32 0, i32 1, !dbg !2278
  %41 = load i8*, i8** %40, align 8, !dbg !2278
  %42 = call i8* @Unicode_Alloc(i8* %41, i32 -1), !dbg !2279
  store i8* %42, i8** getelementptr inbounds (%struct.mntent, %struct.mntent* @Posix_Getmntent.sm, i32 0, i32 1), align 8, !dbg !2280
  %43 = icmp eq i8* %42, null, !dbg !2281
  br i1 %43, label %44, label %45, !dbg !2282

; <label>:44:                                     ; preds = %38
  br label %70, !dbg !2283

; <label>:45:                                     ; preds = %38, %33
  %46 = load %struct.mntent*, %struct.mntent** %5, align 8, !dbg !2285
  %47 = getelementptr inbounds %struct.mntent, %struct.mntent* %46, i32 0, i32 2, !dbg !2287
  %48 = load i8*, i8** %47, align 8, !dbg !2287
  %49 = icmp ne i8* %48, null, !dbg !2285
  br i1 %49, label %50, label %57, !dbg !2288

; <label>:50:                                     ; preds = %45
  %51 = load %struct.mntent*, %struct.mntent** %5, align 8, !dbg !2289
  %52 = getelementptr inbounds %struct.mntent, %struct.mntent* %51, i32 0, i32 2, !dbg !2290
  %53 = load i8*, i8** %52, align 8, !dbg !2290
  %54 = call i8* @Unicode_Alloc(i8* %53, i32 -1), !dbg !2291
  store i8* %54, i8** getelementptr inbounds (%struct.mntent, %struct.mntent* @Posix_Getmntent.sm, i32 0, i32 2), align 8, !dbg !2292
  %55 = icmp eq i8* %54, null, !dbg !2293
  br i1 %55, label %56, label %57, !dbg !2294

; <label>:56:                                     ; preds = %50
  br label %70, !dbg !2295

; <label>:57:                                     ; preds = %50, %45
  %58 = load %struct.mntent*, %struct.mntent** %5, align 8, !dbg !2297
  %59 = getelementptr inbounds %struct.mntent, %struct.mntent* %58, i32 0, i32 3, !dbg !2299
  %60 = load i8*, i8** %59, align 8, !dbg !2299
  %61 = icmp ne i8* %60, null, !dbg !2297
  br i1 %61, label %62, label %69, !dbg !2300

; <label>:62:                                     ; preds = %57
  %63 = load %struct.mntent*, %struct.mntent** %5, align 8, !dbg !2301
  %64 = getelementptr inbounds %struct.mntent, %struct.mntent* %63, i32 0, i32 3, !dbg !2302
  %65 = load i8*, i8** %64, align 8, !dbg !2302
  %66 = call i8* @Unicode_Alloc(i8* %65, i32 -1), !dbg !2303
  store i8* %66, i8** getelementptr inbounds (%struct.mntent, %struct.mntent* @Posix_Getmntent.sm, i32 0, i32 3), align 8, !dbg !2304
  %67 = icmp eq i8* %66, null, !dbg !2305
  br i1 %67, label %68, label %69, !dbg !2306

; <label>:68:                                     ; preds = %62
  br label %70, !dbg !2307

; <label>:69:                                     ; preds = %62, %57
  store i32 0, i32* %4, align 4, !dbg !2309
  br label %70, !dbg !2310

; <label>:70:                                     ; preds = %69, %68, %56, %44, %32
  %71 = load i32, i32* %4, align 4, !dbg !2311
  %72 = icmp ne i32 %71, 0, !dbg !2313
  br i1 %72, label %73, label %76, !dbg !2314

; <label>:73:                                     ; preds = %70
  %74 = load i32, i32* %4, align 4, !dbg !2315
  %75 = call i32* @__errno_location() #1, !dbg !2317
  store i32 %74, i32* %75, align 4, !dbg !2318
  store %struct.mntent* null, %struct.mntent** %2, align 8, !dbg !2319
  br label %77, !dbg !2319

; <label>:76:                                     ; preds = %70
  store %struct.mntent* @Posix_Getmntent.sm, %struct.mntent** %2, align 8, !dbg !2320
  br label %77, !dbg !2320

; <label>:77:                                     ; preds = %76, %73, %10
  %78 = load %struct.mntent*, %struct.mntent** %2, align 8, !dbg !2321
  ret %struct.mntent* %78, !dbg !2321
}

; Function Attrs: nounwind
declare %struct.mntent* @getmntent(%struct._IO_FILE*) #5

; Function Attrs: nounwind uwtable
define %struct.mntent* @Posix_Getmntent_r(%struct._IO_FILE*, %struct.mntent*, i8*, i32) #0 !dbg !2322 {
  %5 = alloca %struct.mntent*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca %struct.mntent*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !2325, metadata !445), !dbg !2326
  store %struct.mntent* %1, %struct.mntent** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.mntent** %7, metadata !2327, metadata !445), !dbg !2328
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2329, metadata !445), !dbg !2330
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2331, metadata !445), !dbg !2332
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2333, metadata !445), !dbg !2334
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2335, metadata !445), !dbg !2336
  store i8* null, i8** %11, align 8, !dbg !2336
  call void @llvm.dbg.declare(metadata i8** %12, metadata !2337, metadata !445), !dbg !2338
  store i8* null, i8** %12, align 8, !dbg !2338
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2339, metadata !445), !dbg !2340
  store i8* null, i8** %13, align 8, !dbg !2340
  call void @llvm.dbg.declare(metadata i8** %14, metadata !2341, metadata !445), !dbg !2342
  store i8* null, i8** %14, align 8, !dbg !2342
  call void @llvm.dbg.declare(metadata i64* %15, metadata !2343, metadata !445), !dbg !2344
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !2345
  %21 = load %struct.mntent*, %struct.mntent** %7, align 8, !dbg !2347
  %22 = load i8*, i8** %8, align 8, !dbg !2348
  %23 = load i32, i32* %9, align 4, !dbg !2349
  %24 = call %struct.mntent* @getmntent_r(%struct._IO_FILE* %20, %struct.mntent* %21, i8* %22, i32 %23) #3, !dbg !2350
  %25 = icmp ne %struct.mntent* %24, null, !dbg !2350
  br i1 %25, label %27, label %26, !dbg !2351

; <label>:26:                                     ; preds = %4
  store %struct.mntent* null, %struct.mntent** %5, align 8, !dbg !2352
  br label %227, !dbg !2352

; <label>:27:                                     ; preds = %4
  store i32 12, i32* %10, align 4, !dbg !2354
  %28 = load %struct.mntent*, %struct.mntent** %7, align 8, !dbg !2355
  %29 = getelementptr inbounds %struct.mntent, %struct.mntent* %28, i32 0, i32 0, !dbg !2357
  %30 = load i8*, i8** %29, align 8, !dbg !2357
  %31 = icmp ne i8* %30, null, !dbg !2355
  br i1 %31, label %32, label %39, !dbg !2358

; <label>:32:                                     ; preds = %27
  %33 = load %struct.mntent*, %struct.mntent** %7, align 8, !dbg !2359
  %34 = getelementptr inbounds %struct.mntent, %struct.mntent* %33, i32 0, i32 0, !dbg !2360
  %35 = load i8*, i8** %34, align 8, !dbg !2360
  %36 = call i8* @Unicode_Alloc(i8* %35, i32 -1), !dbg !2361
  store i8* %36, i8** %11, align 8, !dbg !2362
  %37 = icmp eq i8* %36, null, !dbg !2363
  br i1 %37, label %38, label %39, !dbg !2364

; <label>:38:                                     ; preds = %32
  br label %215, !dbg !2366

; <label>:39:                                     ; preds = %32, %27
  %40 = load %struct.mntent*, %struct.mntent** %7, align 8, !dbg !2368
  %41 = getelementptr inbounds %struct.mntent, %struct.mntent* %40, i32 0, i32 1, !dbg !2370
  %42 = load i8*, i8** %41, align 8, !dbg !2370
  %43 = icmp ne i8* %42, null, !dbg !2368
  br i1 %43, label %44, label %51, !dbg !2371

; <label>:44:                                     ; preds = %39
  %45 = load %struct.mntent*, %struct.mntent** %7, align 8, !dbg !2372
  %46 = getelementptr inbounds %struct.mntent, %struct.mntent* %45, i32 0, i32 1, !dbg !2373
  %47 = load i8*, i8** %46, align 8, !dbg !2373
  %48 = call i8* @Unicode_Alloc(i8* %47, i32 -1), !dbg !2374
  store i8* %48, i8** %12, align 8, !dbg !2375
  %49 = icmp eq i8* %48, null, !dbg !2376
  br i1 %49, label %50, label %51, !dbg !2377

; <label>:50:                                     ; preds = %44
  br label %215, !dbg !2378

; <label>:51:                                     ; preds = %44, %39
  %52 = load %struct.mntent*, %struct.mntent** %7, align 8, !dbg !2380
  %53 = getelementptr inbounds %struct.mntent, %struct.mntent* %52, i32 0, i32 2, !dbg !2382
  %54 = load i8*, i8** %53, align 8, !dbg !2382
  %55 = icmp ne i8* %54, null, !dbg !2380
  br i1 %55, label %56, label %63, !dbg !2383

; <label>:56:                                     ; preds = %51
  %57 = load %struct.mntent*, %struct.mntent** %7, align 8, !dbg !2384
  %58 = getelementptr inbounds %struct.mntent, %struct.mntent* %57, i32 0, i32 2, !dbg !2385
  %59 = load i8*, i8** %58, align 8, !dbg !2385
  %60 = call i8* @Unicode_Alloc(i8* %59, i32 -1), !dbg !2386
  store i8* %60, i8** %13, align 8, !dbg !2387
  %61 = icmp eq i8* %60, null, !dbg !2388
  br i1 %61, label %62, label %63, !dbg !2389

; <label>:62:                                     ; preds = %56
  br label %215, !dbg !2390

; <label>:63:                                     ; preds = %56, %51
  %64 = load %struct.mntent*, %struct.mntent** %7, align 8, !dbg !2392
  %65 = getelementptr inbounds %struct.mntent, %struct.mntent* %64, i32 0, i32 3, !dbg !2394
  %66 = load i8*, i8** %65, align 8, !dbg !2394
  %67 = icmp ne i8* %66, null, !dbg !2392
  br i1 %67, label %68, label %75, !dbg !2395

; <label>:68:                                     ; preds = %63
  %69 = load %struct.mntent*, %struct.mntent** %7, align 8, !dbg !2396
  %70 = getelementptr inbounds %struct.mntent, %struct.mntent* %69, i32 0, i32 3, !dbg !2397
  %71 = load i8*, i8** %70, align 8, !dbg !2397
  %72 = call i8* @Unicode_Alloc(i8* %71, i32 -1), !dbg !2398
  store i8* %72, i8** %14, align 8, !dbg !2399
  %73 = icmp eq i8* %72, null, !dbg !2400
  br i1 %73, label %74, label %75, !dbg !2401

; <label>:74:                                     ; preds = %68
  br label %215, !dbg !2402

; <label>:75:                                     ; preds = %68, %63
  store i32 34, i32* %10, align 4, !dbg !2404
  store i64 0, i64* %15, align 8, !dbg !2405
  %76 = load i8*, i8** %11, align 8, !dbg !2406
  %77 = icmp ne i8* %76, null, !dbg !2406
  br i1 %77, label %78, label %111, !dbg !2408

; <label>:78:                                     ; preds = %75
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2409, metadata !445), !dbg !2411
  %79 = load i8*, i8** %11, align 8, !dbg !2412
  %80 = call i64 @strlen(i8* %79) #10, !dbg !2413
  %81 = add i64 %80, 1, !dbg !2414
  %82 = trunc i64 %81 to i32, !dbg !2413
  store i32 %82, i32* %16, align 4, !dbg !2411
  %83 = load i64, i64* %15, align 8, !dbg !2415
  %84 = load i32, i32* %16, align 4, !dbg !2417
  %85 = sext i32 %84 to i64, !dbg !2417
  %86 = add i64 %83, %85, !dbg !2418
  %87 = load i32, i32* %9, align 4, !dbg !2419
  %88 = sext i32 %87 to i64, !dbg !2419
  %89 = icmp ugt i64 %86, %88, !dbg !2420
  br i1 %89, label %97, label %90, !dbg !2421

; <label>:90:                                     ; preds = %78
  %91 = load i64, i64* %15, align 8, !dbg !2422
  %92 = load i32, i32* %16, align 4, !dbg !2424
  %93 = sext i32 %92 to i64, !dbg !2424
  %94 = add i64 %91, %93, !dbg !2425
  %95 = load i64, i64* %15, align 8, !dbg !2426
  %96 = icmp ult i64 %94, %95, !dbg !2427
  br i1 %96, label %97, label %98, !dbg !2428

; <label>:97:                                     ; preds = %90, %78
  br label %215, !dbg !2429

; <label>:98:                                     ; preds = %90
  %99 = load i8*, i8** %8, align 8, !dbg !2431
  %100 = load i64, i64* %15, align 8, !dbg !2432
  %101 = getelementptr inbounds i8, i8* %99, i64 %100, !dbg !2433
  %102 = load i8*, i8** %11, align 8, !dbg !2434
  %103 = load i32, i32* %16, align 4, !dbg !2435
  %104 = sext i32 %103 to i64, !dbg !2435
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %101, i8* %102, i64 %104, i32 1, i1 false), !dbg !2436
  %105 = load %struct.mntent*, %struct.mntent** %7, align 8, !dbg !2437
  %106 = getelementptr inbounds %struct.mntent, %struct.mntent* %105, i32 0, i32 0, !dbg !2438
  store i8* %101, i8** %106, align 8, !dbg !2439
  %107 = load i32, i32* %16, align 4, !dbg !2440
  %108 = sext i32 %107 to i64, !dbg !2440
  %109 = load i64, i64* %15, align 8, !dbg !2441
  %110 = add i64 %109, %108, !dbg !2441
  store i64 %110, i64* %15, align 8, !dbg !2441
  br label %111, !dbg !2442

; <label>:111:                                    ; preds = %98, %75
  %112 = load i8*, i8** %12, align 8, !dbg !2443
  %113 = icmp ne i8* %112, null, !dbg !2445
  br i1 %113, label %114, label %147, !dbg !2446

; <label>:114:                                    ; preds = %111
  call void @llvm.dbg.declare(metadata i32* %17, metadata !2447, metadata !445), !dbg !2449
  %115 = load i8*, i8** %12, align 8, !dbg !2450
  %116 = call i64 @strlen(i8* %115) #10, !dbg !2451
  %117 = add i64 %116, 1, !dbg !2452
  %118 = trunc i64 %117 to i32, !dbg !2451
  store i32 %118, i32* %17, align 4, !dbg !2449
  %119 = load i64, i64* %15, align 8, !dbg !2453
  %120 = load i32, i32* %17, align 4, !dbg !2455
  %121 = sext i32 %120 to i64, !dbg !2455
  %122 = add i64 %119, %121, !dbg !2456
  %123 = load i32, i32* %9, align 4, !dbg !2457
  %124 = sext i32 %123 to i64, !dbg !2457
  %125 = icmp ugt i64 %122, %124, !dbg !2458
  br i1 %125, label %133, label %126, !dbg !2459

; <label>:126:                                    ; preds = %114
  %127 = load i64, i64* %15, align 8, !dbg !2460
  %128 = load i32, i32* %17, align 4, !dbg !2462
  %129 = sext i32 %128 to i64, !dbg !2462
  %130 = add i64 %127, %129, !dbg !2463
  %131 = load i64, i64* %15, align 8, !dbg !2464
  %132 = icmp ult i64 %130, %131, !dbg !2465
  br i1 %132, label %133, label %134, !dbg !2466

; <label>:133:                                    ; preds = %126, %114
  br label %215, !dbg !2467

; <label>:134:                                    ; preds = %126
  %135 = load i8*, i8** %8, align 8, !dbg !2469
  %136 = load i64, i64* %15, align 8, !dbg !2470
  %137 = getelementptr inbounds i8, i8* %135, i64 %136, !dbg !2471
  %138 = load i8*, i8** %12, align 8, !dbg !2472
  %139 = load i32, i32* %17, align 4, !dbg !2473
  %140 = sext i32 %139 to i64, !dbg !2473
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %137, i8* %138, i64 %140, i32 1, i1 false), !dbg !2474
  %141 = load %struct.mntent*, %struct.mntent** %7, align 8, !dbg !2475
  %142 = getelementptr inbounds %struct.mntent, %struct.mntent* %141, i32 0, i32 1, !dbg !2476
  store i8* %137, i8** %142, align 8, !dbg !2477
  %143 = load i32, i32* %17, align 4, !dbg !2478
  %144 = sext i32 %143 to i64, !dbg !2478
  %145 = load i64, i64* %15, align 8, !dbg !2479
  %146 = add i64 %145, %144, !dbg !2479
  store i64 %146, i64* %15, align 8, !dbg !2479
  br label %147, !dbg !2480

; <label>:147:                                    ; preds = %134, %111
  %148 = load i8*, i8** %13, align 8, !dbg !2481
  %149 = icmp ne i8* %148, null, !dbg !2481
  br i1 %149, label %150, label %183, !dbg !2483

; <label>:150:                                    ; preds = %147
  call void @llvm.dbg.declare(metadata i32* %18, metadata !2484, metadata !445), !dbg !2486
  %151 = load i8*, i8** %13, align 8, !dbg !2487
  %152 = call i64 @strlen(i8* %151) #10, !dbg !2488
  %153 = add i64 %152, 1, !dbg !2489
  %154 = trunc i64 %153 to i32, !dbg !2488
  store i32 %154, i32* %18, align 4, !dbg !2486
  %155 = load i64, i64* %15, align 8, !dbg !2490
  %156 = load i32, i32* %18, align 4, !dbg !2492
  %157 = sext i32 %156 to i64, !dbg !2492
  %158 = add i64 %155, %157, !dbg !2493
  %159 = load i32, i32* %9, align 4, !dbg !2494
  %160 = sext i32 %159 to i64, !dbg !2494
  %161 = icmp ugt i64 %158, %160, !dbg !2495
  br i1 %161, label %169, label %162, !dbg !2496

; <label>:162:                                    ; preds = %150
  %163 = load i64, i64* %15, align 8, !dbg !2497
  %164 = load i32, i32* %18, align 4, !dbg !2499
  %165 = sext i32 %164 to i64, !dbg !2499
  %166 = add i64 %163, %165, !dbg !2500
  %167 = load i64, i64* %15, align 8, !dbg !2501
  %168 = icmp ult i64 %166, %167, !dbg !2502
  br i1 %168, label %169, label %170, !dbg !2503

; <label>:169:                                    ; preds = %162, %150
  br label %215, !dbg !2504

; <label>:170:                                    ; preds = %162
  %171 = load i8*, i8** %8, align 8, !dbg !2506
  %172 = load i64, i64* %15, align 8, !dbg !2507
  %173 = getelementptr inbounds i8, i8* %171, i64 %172, !dbg !2508
  %174 = load i8*, i8** %13, align 8, !dbg !2509
  %175 = load i32, i32* %18, align 4, !dbg !2510
  %176 = sext i32 %175 to i64, !dbg !2510
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %173, i8* %174, i64 %176, i32 1, i1 false), !dbg !2511
  %177 = load %struct.mntent*, %struct.mntent** %7, align 8, !dbg !2512
  %178 = getelementptr inbounds %struct.mntent, %struct.mntent* %177, i32 0, i32 2, !dbg !2513
  store i8* %173, i8** %178, align 8, !dbg !2514
  %179 = load i32, i32* %18, align 4, !dbg !2515
  %180 = sext i32 %179 to i64, !dbg !2515
  %181 = load i64, i64* %15, align 8, !dbg !2516
  %182 = add i64 %181, %180, !dbg !2516
  store i64 %182, i64* %15, align 8, !dbg !2516
  br label %183, !dbg !2517

; <label>:183:                                    ; preds = %170, %147
  %184 = load i8*, i8** %14, align 8, !dbg !2518
  %185 = icmp ne i8* %184, null, !dbg !2518
  br i1 %185, label %186, label %214, !dbg !2520

; <label>:186:                                    ; preds = %183
  call void @llvm.dbg.declare(metadata i64* %19, metadata !2521, metadata !445), !dbg !2523
  %187 = load i8*, i8** %14, align 8, !dbg !2524
  %188 = call i64 @strlen(i8* %187) #10, !dbg !2525
  %189 = add i64 %188, 1, !dbg !2526
  store i64 %189, i64* %19, align 8, !dbg !2523
  %190 = load i64, i64* %15, align 8, !dbg !2527
  %191 = load i64, i64* %19, align 8, !dbg !2529
  %192 = add i64 %190, %191, !dbg !2530
  %193 = load i32, i32* %9, align 4, !dbg !2531
  %194 = sext i32 %193 to i64, !dbg !2531
  %195 = icmp ugt i64 %192, %194, !dbg !2532
  br i1 %195, label %202, label %196, !dbg !2533

; <label>:196:                                    ; preds = %186
  %197 = load i64, i64* %15, align 8, !dbg !2534
  %198 = load i64, i64* %19, align 8, !dbg !2536
  %199 = add i64 %197, %198, !dbg !2537
  %200 = load i64, i64* %15, align 8, !dbg !2538
  %201 = icmp ult i64 %199, %200, !dbg !2539
  br i1 %201, label %202, label %203, !dbg !2540

; <label>:202:                                    ; preds = %196, %186
  br label %215, !dbg !2541

; <label>:203:                                    ; preds = %196
  %204 = load i8*, i8** %8, align 8, !dbg !2543
  %205 = load i64, i64* %15, align 8, !dbg !2544
  %206 = getelementptr inbounds i8, i8* %204, i64 %205, !dbg !2545
  %207 = load i8*, i8** %14, align 8, !dbg !2546
  %208 = load i64, i64* %19, align 8, !dbg !2547
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %206, i8* %207, i64 %208, i32 1, i1 false), !dbg !2548
  %209 = load %struct.mntent*, %struct.mntent** %7, align 8, !dbg !2549
  %210 = getelementptr inbounds %struct.mntent, %struct.mntent* %209, i32 0, i32 3, !dbg !2550
  store i8* %206, i8** %210, align 8, !dbg !2551
  %211 = load i64, i64* %19, align 8, !dbg !2552
  %212 = load i64, i64* %15, align 8, !dbg !2553
  %213 = add i64 %212, %211, !dbg !2553
  store i64 %213, i64* %15, align 8, !dbg !2553
  br label %214, !dbg !2554

; <label>:214:                                    ; preds = %203, %183
  store i32 0, i32* %10, align 4, !dbg !2555
  br label %215, !dbg !2556

; <label>:215:                                    ; preds = %214, %202, %169, %133, %97, %74, %62, %50, %38
  %216 = load i8*, i8** %11, align 8, !dbg !2557
  call void @Posix_Free(i8* %216), !dbg !2558
  %217 = load i8*, i8** %12, align 8, !dbg !2559
  call void @Posix_Free(i8* %217), !dbg !2560
  %218 = load i8*, i8** %13, align 8, !dbg !2561
  call void @Posix_Free(i8* %218), !dbg !2562
  %219 = load i8*, i8** %14, align 8, !dbg !2563
  call void @Posix_Free(i8* %219), !dbg !2564
  %220 = load i32, i32* %10, align 4, !dbg !2565
  %221 = icmp ne i32 %220, 0, !dbg !2567
  br i1 %221, label %222, label %225, !dbg !2568

; <label>:222:                                    ; preds = %215
  %223 = load i32, i32* %10, align 4, !dbg !2569
  %224 = call i32* @__errno_location() #1, !dbg !2571
  store i32 %223, i32* %224, align 4, !dbg !2572
  store %struct.mntent* null, %struct.mntent** %5, align 8, !dbg !2573
  br label %227, !dbg !2573

; <label>:225:                                    ; preds = %215
  %226 = load %struct.mntent*, %struct.mntent** %7, align 8, !dbg !2574
  store %struct.mntent* %226, %struct.mntent** %5, align 8, !dbg !2575
  br label %227, !dbg !2575

; <label>:227:                                    ; preds = %225, %222, %26
  %228 = load %struct.mntent*, %struct.mntent** %5, align 8, !dbg !2576
  ret %struct.mntent* %228, !dbg !2576
}

; Function Attrs: nounwind
declare %struct.mntent* @getmntent_r(%struct._IO_FILE*, %struct.mntent*, i8*, i32) #5

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: nounwind uwtable
define i32 @Posix_Printf(i8*, ...) #0 !dbg !2577 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2580, metadata !445), !dbg !2581
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %4, metadata !2582, metadata !445), !dbg !2583
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2584, metadata !445), !dbg !2585
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2586, metadata !445), !dbg !2587
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2588, metadata !445), !dbg !2589
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !2590
  %9 = bitcast %struct.__va_list_tag* %8 to i8*, !dbg !2590
  call void @llvm.va_start(i8* %9), !dbg !2590
  %10 = load i8*, i8** %3, align 8, !dbg !2591
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !2592
  %12 = call i8* @Str_Vasprintf(i64* null, i8* %10, %struct.__va_list_tag* %11), !dbg !2593
  store i8* %12, i8** %5, align 8, !dbg !2594
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !2595
  %14 = bitcast %struct.__va_list_tag* %13 to i8*, !dbg !2595
  call void @llvm.va_end(i8* %14), !dbg !2595
  %15 = load i8*, i8** %5, align 8, !dbg !2596
  %16 = call signext i8 @PosixConvertToCurrent(i8* %15, i8** %6), !dbg !2598
  %17 = icmp ne i8 %16, 0, !dbg !2598
  br i1 %17, label %19, label %18, !dbg !2599

; <label>:18:                                     ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !2600
  br label %25, !dbg !2600

; <label>:19:                                     ; preds = %1
  %20 = load i8*, i8** %6, align 8, !dbg !2602
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* %20), !dbg !2603
  store i32 %21, i32* %7, align 4, !dbg !2604
  %22 = load i8*, i8** %5, align 8, !dbg !2605
  call void @Posix_Free(i8* %22), !dbg !2606
  %23 = load i8*, i8** %6, align 8, !dbg !2607
  call void @Posix_Free(i8* %23), !dbg !2608
  %24 = load i32, i32* %7, align 4, !dbg !2609
  store i32 %24, i32* %2, align 4, !dbg !2610
  br label %25, !dbg !2610

; <label>:25:                                     ; preds = %19, %18
  %26 = load i32, i32* %2, align 4, !dbg !2611
  ret i32 %26, !dbg !2611
}

declare i8* @Str_Vasprintf(i64*, i8*, %struct.__va_list_tag*) #4

declare i32 @printf(i8*, ...) #4

; Function Attrs: nounwind uwtable
define i32 @Posix_Fprintf(%struct._IO_FILE*, i8*, ...) #0 !dbg !2612 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %4, metadata !2615, metadata !445), !dbg !2616
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2617, metadata !445), !dbg !2618
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %6, metadata !2619, metadata !445), !dbg !2620
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2621, metadata !445), !dbg !2622
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2623, metadata !445), !dbg !2624
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2625, metadata !445), !dbg !2626
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0, !dbg !2627
  %11 = bitcast %struct.__va_list_tag* %10 to i8*, !dbg !2627
  call void @llvm.va_start(i8* %11), !dbg !2627
  %12 = load i8*, i8** %5, align 8, !dbg !2628
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0, !dbg !2629
  %14 = call i8* @Str_Vasprintf(i64* null, i8* %12, %struct.__va_list_tag* %13), !dbg !2630
  store i8* %14, i8** %7, align 8, !dbg !2631
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0, !dbg !2632
  %16 = bitcast %struct.__va_list_tag* %15 to i8*, !dbg !2632
  call void @llvm.va_end(i8* %16), !dbg !2632
  %17 = load i8*, i8** %7, align 8, !dbg !2633
  %18 = call signext i8 @PosixConvertToCurrent(i8* %17, i8** %8), !dbg !2635
  %19 = icmp ne i8 %18, 0, !dbg !2635
  br i1 %19, label %21, label %20, !dbg !2636

; <label>:20:                                     ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !2637
  br label %28, !dbg !2637

; <label>:21:                                     ; preds = %2
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !2639
  %23 = load i8*, i8** %8, align 8, !dbg !2640
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* %23), !dbg !2641
  store i32 %24, i32* %9, align 4, !dbg !2642
  %25 = load i8*, i8** %7, align 8, !dbg !2643
  call void @Posix_Free(i8* %25), !dbg !2644
  %26 = load i8*, i8** %8, align 8, !dbg !2645
  call void @Posix_Free(i8* %26), !dbg !2646
  %27 = load i32, i32* %9, align 4, !dbg !2647
  store i32 %27, i32* %3, align 4, !dbg !2648
  br label %28, !dbg !2648

; <label>:28:                                     ; preds = %21, %20
  %29 = load i32, i32* %3, align 4, !dbg !2649
  ret i32 %29, !dbg !2649
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: nounwind uwtable
define i8* @Posix_MkTemp(i8*) #0 !dbg !2650 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2651, metadata !445), !dbg !2652
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2653, metadata !445), !dbg !2654
  store i8* null, i8** %4, align 8, !dbg !2654
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2655, metadata !445), !dbg !2656
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2657, metadata !445), !dbg !2658
  %7 = load i8*, i8** %3, align 8, !dbg !2659
  %8 = call signext i8 @PosixConvertToCurrent(i8* %7, i8** %5), !dbg !2661
  %9 = icmp ne i8 %8, 0, !dbg !2661
  br i1 %9, label %11, label %10, !dbg !2662

; <label>:10:                                     ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !2663
  br label %26, !dbg !2663

; <label>:11:                                     ; preds = %1
  %12 = load i8*, i8** %5, align 8, !dbg !2665
  %13 = call i32 @mkstemp64(i8* %12), !dbg !2666
  store i32 %13, i32* %6, align 4, !dbg !2667
  %14 = load i32, i32* %6, align 4, !dbg !2668
  %15 = icmp sge i32 %14, 0, !dbg !2670
  br i1 %15, label %16, label %23, !dbg !2671

; <label>:16:                                     ; preds = %11
  %17 = load i32, i32* %6, align 4, !dbg !2672
  %18 = call i32 @close(i32 %17), !dbg !2674
  %19 = load i8*, i8** %5, align 8, !dbg !2675
  %20 = call i32 @unlink(i8* %19) #3, !dbg !2676
  %21 = load i8*, i8** %5, align 8, !dbg !2677
  %22 = call i8* @Unicode_Alloc(i8* %21, i32 -1), !dbg !2678
  store i8* %22, i8** %4, align 8, !dbg !2679
  br label %23, !dbg !2680

; <label>:23:                                     ; preds = %16, %11
  %24 = load i8*, i8** %5, align 8, !dbg !2681
  call void @Posix_Free(i8* %24), !dbg !2682
  %25 = load i8*, i8** %4, align 8, !dbg !2683
  store i8* %25, i8** %2, align 8, !dbg !2684
  br label %26, !dbg !2684

; <label>:26:                                     ; preds = %23, %10
  %27 = load i8*, i8** %2, align 8, !dbg !2685
  ret i8* %27, !dbg !2685
}

declare i32 @mkstemp64(i8*) #4

declare i32 @close(i32) #4

; Function Attrs: nounwind
declare void @free(i8*) #5

; Function Attrs: inlinehint nounwind uwtable
define internal void @Util_FreeList(i8**, i64) #2 !dbg !2686 {
  %3 = alloca i8**, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !2689, metadata !445), !dbg !2690
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2691, metadata !445), !dbg !2692
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2693, metadata !445), !dbg !2694
  %8 = load i8**, i8*** %3, align 8, !dbg !2695
  %9 = icmp eq i8** %8, null, !dbg !2697
  br i1 %9, label %10, label %11, !dbg !2698

; <label>:10:                                     ; preds = %2
  br label %48, !dbg !2699

; <label>:11:                                     ; preds = %2
  %12 = call i32* @__errno_location() #1, !dbg !2701
  %13 = load i32, i32* %12, align 4, !dbg !2702
  store i32 %13, i32* %5, align 4, !dbg !2703
  %14 = load i64, i64* %4, align 8, !dbg !2704
  %15 = icmp sge i64 %14, 0, !dbg !2706
  br i1 %15, label %16, label %30, !dbg !2707

; <label>:16:                                     ; preds = %11
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2708, metadata !445), !dbg !2710
  store i64 0, i64* %6, align 8, !dbg !2711
  br label %17, !dbg !2713

; <label>:17:                                     ; preds = %26, %16
  %18 = load i64, i64* %6, align 8, !dbg !2714
  %19 = load i64, i64* %4, align 8, !dbg !2717
  %20 = icmp slt i64 %18, %19, !dbg !2718
  br i1 %20, label %21, label %29, !dbg !2719

; <label>:21:                                     ; preds = %17
  %22 = load i64, i64* %6, align 8, !dbg !2720
  %23 = load i8**, i8*** %3, align 8, !dbg !2722
  %24 = getelementptr inbounds i8*, i8** %23, i64 %22, !dbg !2722
  %25 = load i8*, i8** %24, align 8, !dbg !2722
  call void @free(i8* %25) #3, !dbg !2723
  br label %26, !dbg !2724

; <label>:26:                                     ; preds = %21
  %27 = load i64, i64* %6, align 8, !dbg !2725
  %28 = add nsw i64 %27, 1, !dbg !2725
  store i64 %28, i64* %6, align 8, !dbg !2725
  br label %17, !dbg !2727, !llvm.loop !2728

; <label>:29:                                     ; preds = %17
  br label %43, !dbg !2730

; <label>:30:                                     ; preds = %11
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !2731, metadata !445), !dbg !2733
  %31 = load i8**, i8*** %3, align 8, !dbg !2734
  store i8** %31, i8*** %7, align 8, !dbg !2736
  br label %32, !dbg !2737

; <label>:32:                                     ; preds = %39, %30
  %33 = load i8**, i8*** %7, align 8, !dbg !2738
  %34 = load i8*, i8** %33, align 8, !dbg !2741
  %35 = icmp ne i8* %34, null, !dbg !2742
  br i1 %35, label %36, label %42, !dbg !2743

; <label>:36:                                     ; preds = %32
  %37 = load i8**, i8*** %7, align 8, !dbg !2744
  %38 = load i8*, i8** %37, align 8, !dbg !2746
  call void @free(i8* %38) #3, !dbg !2747
  br label %39, !dbg !2748

; <label>:39:                                     ; preds = %36
  %40 = load i8**, i8*** %7, align 8, !dbg !2749
  %41 = getelementptr inbounds i8*, i8** %40, i32 1, !dbg !2749
  store i8** %41, i8*** %7, align 8, !dbg !2749
  br label %32, !dbg !2751, !llvm.loop !2752

; <label>:42:                                     ; preds = %32
  br label %43

; <label>:43:                                     ; preds = %42, %29
  %44 = load i8**, i8*** %3, align 8, !dbg !2754
  %45 = bitcast i8** %44 to i8*, !dbg !2754
  call void @free(i8* %45) #3, !dbg !2755
  %46 = load i32, i32* %5, align 4, !dbg !2756
  %47 = call i32* @__errno_location() #1, !dbg !2757
  store i32 %46, i32* %47, align 4, !dbg !2758
  br label %48, !dbg !2759

; <label>:48:                                     ; preds = %43, %10
  ret void, !dbg !2760
}

declare i8** @Unicode_GetAllocList(i8**, i64, i32) #4

declare i8* @Unicode_AllocWithLength(i8*, i64, i32) #4

declare %struct.HashTable* @HashTable_AllocOnce(%struct.Atomic_uint64*, i32, i32, void (i8*)*) #4

; Function Attrs: inlinehint nounwind uwtable
define internal void @PosixEnvFree(i8*) #2 !dbg !2762 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2763, metadata !445), !dbg !2764
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 139) #11, !dbg !2765
  unreachable, !dbg !2765
                                                  ; No predecessors!
  ret void, !dbg !2766
}

declare signext i8 @HashTable_Lookup(%struct.HashTable*, i8*, i8**) #4

; Function Attrs: inlinehint nounwind uwtable
define internal void @Atomic_WritePtr(%struct.Atomic_uint64*, i8*) #2 !dbg !2767 {
  %3 = alloca %struct.Atomic_uint64*, align 8
  %4 = alloca i8*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %3, metadata !2771, metadata !445), !dbg !2772
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2773, metadata !445), !dbg !2774
  %5 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %3, align 8, !dbg !2775
  %6 = load i8*, i8** %4, align 8, !dbg !2776
  %7 = ptrtoint i8* %6 to i64, !dbg !2777
  call void @Atomic_Write64(%struct.Atomic_uint64* %5, i64 %7), !dbg !2778
  ret void, !dbg !2779
}

declare signext i8 @HashTable_Insert(%struct.HashTable*, i8*, i8*) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Atomic_ReadPtr(%struct.Atomic_uint64*) #2 !dbg !2780 {
  %2 = alloca %struct.Atomic_uint64*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %2, metadata !2785, metadata !445), !dbg !2786
  %3 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %2, align 8, !dbg !2787
  %4 = call i64 @Atomic_Read64(%struct.Atomic_uint64* %3), !dbg !2788
  %5 = inttoptr i64 %4 to i8*, !dbg !2789
  ret i8* %5, !dbg !2790
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #7

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Atomic_ReadIfEqualWritePtr(%struct.Atomic_uint64*, i8*, i8*) #2 !dbg !2791 {
  %4 = alloca %struct.Atomic_uint64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %4, metadata !2794, metadata !445), !dbg !2795
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2796, metadata !445), !dbg !2797
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2798, metadata !445), !dbg !2799
  %7 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !2800
  %8 = load i8*, i8** %5, align 8, !dbg !2801
  %9 = ptrtoint i8* %8 to i64, !dbg !2802
  %10 = load i8*, i8** %6, align 8, !dbg !2803
  %11 = ptrtoint i8* %10 to i64, !dbg !2804
  %12 = call i64 @Atomic_ReadIfEqualWrite64(%struct.Atomic_uint64* %7, i64 %9, i64 %11), !dbg !2805
  %13 = inttoptr i64 %12 to i8*, !dbg !2806
  ret i8* %13, !dbg !2807
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Atomic_ReadWritePtr(%struct.Atomic_uint64*, i8*) #2 !dbg !2808 {
  %3 = alloca %struct.Atomic_uint64*, align 8
  %4 = alloca i8*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %3, metadata !2811, metadata !445), !dbg !2812
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2813, metadata !445), !dbg !2814
  %5 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %3, align 8, !dbg !2815
  %6 = load i8*, i8** %4, align 8, !dbg !2816
  %7 = ptrtoint i8* %6 to i64, !dbg !2817
  %8 = call i64 @Atomic_ReadWrite64(%struct.Atomic_uint64* %5, i64 %7), !dbg !2818
  %9 = inttoptr i64 %8 to i8*, !dbg !2819
  ret i8* %9, !dbg !2820
}

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #9

; Function Attrs: inlinehint nounwind uwtable
define internal void @Atomic_Write64(%struct.Atomic_uint64*, i64) #2 !dbg !2821 {
  %3 = alloca %struct.Atomic_uint64*, align 8
  %4 = alloca i64, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %3, metadata !2825, metadata !445), !dbg !2826
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2827, metadata !445), !dbg !2828
  %5 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %3, align 8, !dbg !2829
  %6 = getelementptr inbounds %struct.Atomic_uint64, %struct.Atomic_uint64* %5, i32 0, i32 0, !dbg !2830
  %7 = load i64, i64* %4, align 8, !dbg !2831
  call void asm sideeffect "movq $1, $0", "=*m,r,~{dirflag},~{fpsr},~{flags}"(i64* %6, i64 %7) #3, !dbg !2832, !srcloc !2833
  ret void, !dbg !2834
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @Atomic_Read64(%struct.Atomic_uint64*) #2 !dbg !2835 {
  %2 = alloca %struct.Atomic_uint64*, align 8
  %3 = alloca i64, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %2, metadata !2840, metadata !445), !dbg !2841
  call void @llvm.dbg.declare(metadata i64* %3, metadata !2842, metadata !445), !dbg !2843
  %4 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %2, align 8, !dbg !2844
  %5 = getelementptr inbounds %struct.Atomic_uint64, %struct.Atomic_uint64* %4, i32 0, i32 0, !dbg !2845
  %6 = call i64 asm sideeffect "movq $1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i64* %5) #3, !dbg !2846, !srcloc !2847
  store i64 %6, i64* %3, align 8, !dbg !2846
  %7 = load i64, i64* %3, align 8, !dbg !2848
  ret i64 %7, !dbg !2849
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @Atomic_ReadIfEqualWrite64(%struct.Atomic_uint64*, i64, i64) #2 !dbg !2850 {
  %4 = alloca %struct.Atomic_uint64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %4, metadata !2853, metadata !445), !dbg !2854
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2855, metadata !445), !dbg !2856
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2857, metadata !445), !dbg !2858
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2859, metadata !445), !dbg !2860
  %8 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !2861
  %9 = getelementptr inbounds %struct.Atomic_uint64, %struct.Atomic_uint64* %8, i32 0, i32 0, !dbg !2862
  %10 = load i64, i64* %6, align 8, !dbg !2863
  %11 = load i64, i64* %5, align 8, !dbg !2864
  %12 = call i64 asm sideeffect "lock; cmpxchgq $2, $1", "={ax},=*m,r,0,*m,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10, i64 %11, i64* %9) #3, !dbg !2865, !srcloc !2866
  store i64 %12, i64* %7, align 8, !dbg !2865
  %13 = load i64, i64* %7, align 8, !dbg !2867
  ret i64 %13, !dbg !2868
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @Atomic_ReadWrite64(%struct.Atomic_uint64*, i64) #2 !dbg !2869 {
  %3 = alloca %struct.Atomic_uint64*, align 8
  %4 = alloca i64, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %3, metadata !2872, metadata !445), !dbg !2873
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2874, metadata !445), !dbg !2875
  %5 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %3, align 8, !dbg !2876
  %6 = getelementptr inbounds %struct.Atomic_uint64, %struct.Atomic_uint64* %5, i32 0, i32 0, !dbg !2877
  %7 = load i64, i64* %4, align 8, !dbg !2878
  %8 = call i64 asm sideeffect "xchgq $0, $1", "=r,=*m,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %6, i64 %7, i64* %6) #3, !dbg !2879, !srcloc !2880
  store i64 %8, i64* %4, align 8, !dbg !2879
  %9 = load i64, i64* %4, align 8, !dbg !2881
  ret i64 %9, !dbg !2882
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind }
attributes #9 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readonly }
attributes #11 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!438, !439}
!llvm.ident = !{!440}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !336, globals: !348)
!1 = !DIFile(filename: "posixPosix.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line663")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 58, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/unicodeTypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line663")
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
!336 = !{!337, !340, !341, !342, !347}
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64, align: 64)
!339 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64, align: 64)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !343, line: 171, baseType: !344)
!343 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line663")
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !345, line: 55, baseType: !346)
!345 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line663")
!346 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !345, line: 122, baseType: !346)
!348 = !{!349, !424}
!349 = distinct !DIGlobalVariable(name: "sm", scope: !350, file: !351, line: 1953, type: !355, isLocal: true, isDefinition: true, variable: %struct.mntent* @Posix_Getmntent.sm)
!350 = distinct !DISubprogram(name: "Posix_Getmntent", scope: !351, file: !351, line: 1949, type: !352, isLocal: false, isDefinition: true, scopeLine: 1950, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!351 = !DIFile(filename: "posixPosix.c", directory: "/home/lichi/Desktop/open-vm-tools/line663")
!352 = !DISubroutineType(types: !353)
!353 = !{!354, !365}
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64, align: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mntent", file: !356, line: 53, size: 320, align: 64, elements: !357)
!356 = !DIFile(filename: "/usr/include/mntent.h", directory: "/home/lichi/Desktop/open-vm-tools/line663")
!357 = !{!358, !359, !360, !361, !362, !364}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_fsname", scope: !355, file: !356, line: 55, baseType: !338, size: 64, align: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_dir", scope: !355, file: !356, line: 56, baseType: !338, size: 64, align: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_type", scope: !355, file: !356, line: 57, baseType: !338, size: 64, align: 64, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_opts", scope: !355, file: !356, line: 58, baseType: !338, size: 64, align: 64, offset: 192)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_freq", scope: !355, file: !356, line: 59, baseType: !363, size: 32, align: 32, offset: 256)
!363 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_passno", scope: !355, file: !356, line: 60, baseType: !363, size: 32, align: 32, offset: 288)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64, align: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !367, line: 48, baseType: !368)
!367 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/open-vm-tools/line663")
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !369, line: 241, size: 1728, align: 64, elements: !370)
!369 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/open-vm-tools/line663")
!370 = !{!371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !391, !392, !393, !394, !398, !400, !402, !406, !409, !411, !412, !413, !414, !415, !418, !419}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !368, file: !369, line: 242, baseType: !363, size: 32, align: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !368, file: !369, line: 247, baseType: !338, size: 64, align: 64, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !368, file: !369, line: 248, baseType: !338, size: 64, align: 64, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !368, file: !369, line: 249, baseType: !338, size: 64, align: 64, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !368, file: !369, line: 250, baseType: !338, size: 64, align: 64, offset: 256)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !368, file: !369, line: 251, baseType: !338, size: 64, align: 64, offset: 320)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !368, file: !369, line: 252, baseType: !338, size: 64, align: 64, offset: 384)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !368, file: !369, line: 253, baseType: !338, size: 64, align: 64, offset: 448)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !368, file: !369, line: 254, baseType: !338, size: 64, align: 64, offset: 512)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !368, file: !369, line: 256, baseType: !338, size: 64, align: 64, offset: 576)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !368, file: !369, line: 257, baseType: !338, size: 64, align: 64, offset: 640)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !368, file: !369, line: 258, baseType: !338, size: 64, align: 64, offset: 704)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !368, file: !369, line: 260, baseType: !384, size: 64, align: 64, offset: 768)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64, align: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !369, line: 156, size: 192, align: 64, elements: !386)
!386 = !{!387, !388, !390}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !385, file: !369, line: 157, baseType: !384, size: 64, align: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !385, file: !369, line: 158, baseType: !389, size: 64, align: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64, align: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !385, file: !369, line: 162, baseType: !363, size: 32, align: 32, offset: 128)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !368, file: !369, line: 262, baseType: !389, size: 64, align: 64, offset: 832)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !368, file: !369, line: 264, baseType: !363, size: 32, align: 32, offset: 896)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !368, file: !369, line: 268, baseType: !363, size: 32, align: 32, offset: 928)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !368, file: !369, line: 270, baseType: !395, size: 64, align: 64, offset: 960)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !396, line: 131, baseType: !397)
!396 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line663")
!397 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !368, file: !369, line: 274, baseType: !399, size: 16, align: 16, offset: 1024)
!399 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !368, file: !369, line: 275, baseType: !401, size: 8, align: 8, offset: 1040)
!401 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !368, file: !369, line: 276, baseType: !403, size: 8, align: 8, offset: 1048)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 8, align: 8, elements: !404)
!404 = !{!405}
!405 = !DISubrange(count: 1)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !368, file: !369, line: 280, baseType: !407, size: 64, align: 64, offset: 1088)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64, align: 64)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !369, line: 150, baseType: null)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !368, file: !369, line: 289, baseType: !410, size: 64, align: 64, offset: 1152)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !396, line: 132, baseType: !397)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !368, file: !369, line: 297, baseType: !340, size: 64, align: 64, offset: 1216)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !368, file: !369, line: 298, baseType: !340, size: 64, align: 64, offset: 1280)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !368, file: !369, line: 299, baseType: !340, size: 64, align: 64, offset: 1344)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !368, file: !369, line: 300, baseType: !340, size: 64, align: 64, offset: 1408)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !368, file: !369, line: 302, baseType: !416, size: 64, align: 64, offset: 1472)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !417, line: 216, baseType: !346)
!417 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line663")
!418 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !368, file: !369, line: 303, baseType: !363, size: 32, align: 32, offset: 1536)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !368, file: !369, line: 305, baseType: !420, size: 160, align: 8, offset: 1568)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 160, align: 8, elements: !421)
!421 = !{!422}
!422 = !DISubrange(count: 20)
!423 = !{}
!424 = distinct !DIGlobalVariable(name: "htPtr", scope: !425, file: !426, line: 164, type: !431, isLocal: true, isDefinition: true, variable: %struct.Atomic_uint64* @PosixGetenvHash.htPtr)
!425 = distinct !DISubprogram(name: "PosixGetenvHash", scope: !426, file: !426, line: 161, type: !427, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!426 = !DIFile(filename: "posixInt.h", directory: "/home/lichi/Desktop/open-vm-tools/line663")
!427 = !DISubroutineType(types: !428)
!428 = !{!338, !429, !338}
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64, align: 64)
!430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_Ptr", file: !432, line: 3829, baseType: !433)
!432 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_atomic.h", directory: "/home/lichi/Desktop/open-vm-tools/line663")
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_uint64", file: !432, line: 139, baseType: !434)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Atomic_uint64", file: !432, line: 137, size: 64, align: 64, elements: !435)
!435 = !{!436}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !434, file: !432, line: 138, baseType: !437, size: 64, align: 64)
!437 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !342)
!438 = !{i32 2, !"Dwarf Version", i32 4}
!439 = !{i32 2, !"Debug Info Version", i32 3}
!440 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!441 = distinct !DISubprogram(name: "Posix_Open", scope: !351, file: !351, line: 116, type: !442, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!442 = !DISubroutineType(types: !443)
!443 = !{!363, !429, !363, null}
!444 = !DILocalVariable(name: "pathName", arg: 1, scope: !441, file: !351, line: 116, type: !429)
!445 = !DIExpression()
!446 = !DILocation(line: 116, column: 24, scope: !441)
!447 = !DILocalVariable(name: "flags", arg: 2, scope: !441, file: !351, line: 117, type: !363)
!448 = !DILocation(line: 117, column: 16, scope: !441)
!449 = !DILocalVariable(name: "path", scope: !441, file: !351, line: 120, type: !338)
!450 = !DILocation(line: 120, column: 10, scope: !441)
!451 = !DILocalVariable(name: "mode", scope: !441, file: !351, line: 121, type: !452)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !453, line: 70, baseType: !454)
!453 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line663")
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !396, line: 129, baseType: !455)
!455 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!456 = !DILocation(line: 121, column: 11, scope: !441)
!457 = !DILocalVariable(name: "fd", scope: !441, file: !351, line: 122, type: !363)
!458 = !DILocation(line: 122, column: 8, scope: !441)
!459 = !DILocation(line: 124, column: 31, scope: !460)
!460 = distinct !DILexicalBlock(scope: !441, file: !351, line: 124, column: 8)
!461 = !DILocation(line: 124, column: 9, scope: !460)
!462 = !DILocation(line: 124, column: 8, scope: !441)
!463 = !DILocation(line: 125, column: 7, scope: !464)
!464 = distinct !DILexicalBlock(scope: !460, file: !351, line: 124, column: 49)
!465 = !DILocation(line: 128, column: 9, scope: !466)
!466 = distinct !DILexicalBlock(scope: !441, file: !351, line: 128, column: 8)
!467 = !DILocation(line: 128, column: 15, scope: !466)
!468 = !DILocation(line: 128, column: 25, scope: !466)
!469 = !DILocation(line: 128, column: 8, scope: !441)
!470 = !DILocalVariable(name: "a", scope: !471, file: !351, line: 129, type: !472)
!471 = distinct !DILexicalBlock(scope: !466, file: !351, line: 128, column: 31)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !367, line: 79, baseType: !473)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !474, line: 40, baseType: !475)
!474 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/open-vm-tools/line663")
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 129, baseType: !476)
!476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !477, size: 192, align: 64, elements: !404)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 129, size: 192, align: 64, elements: !478)
!478 = !{!479, !480, !481, !482}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !477, file: !1, line: 129, baseType: !455, size: 32, align: 32)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !477, file: !1, line: 129, baseType: !455, size: 32, align: 32, offset: 32)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !477, file: !1, line: 129, baseType: !340, size: 64, align: 64, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !477, file: !1, line: 129, baseType: !340, size: 64, align: 64, offset: 128)
!483 = !DILocation(line: 129, column: 15, scope: !471)
!484 = !DILocation(line: 138, column: 6, scope: !471)
!485 = !DILocation(line: 139, column: 7, scope: !471)
!486 = distinct !{!486, !485}
!487 = !DILocation(line: 139, column: 94, scope: !488)
!488 = !DILexicalBlockFile(scope: !489, file: !351, discriminator: 1)
!489 = distinct !DILexicalBlock(scope: !471, file: !351, line: 139, column: 10)
!490 = !DILocation(line: 140, column: 13, scope: !471)
!491 = !DILocation(line: 140, column: 13, scope: !492)
!492 = !DILexicalBlockFile(scope: !471, file: !351, discriminator: 1)
!493 = !DILocation(line: 140, column: 13, scope: !494)
!494 = !DILexicalBlockFile(scope: !471, file: !351, discriminator: 2)
!495 = !DILocation(line: 140, column: 13, scope: !496)
!496 = !DILexicalBlockFile(scope: !471, file: !351, discriminator: 3)
!497 = !DILocation(line: 140, column: 12, scope: !496)
!498 = !DILocation(line: 141, column: 6, scope: !471)
!499 = !DILocation(line: 142, column: 4, scope: !471)
!500 = !DILocation(line: 144, column: 14, scope: !441)
!501 = !DILocation(line: 144, column: 20, scope: !441)
!502 = !DILocation(line: 144, column: 27, scope: !441)
!503 = !DILocation(line: 144, column: 9, scope: !441)
!504 = !DILocation(line: 144, column: 7, scope: !441)
!505 = !DILocation(line: 146, column: 15, scope: !441)
!506 = !DILocation(line: 146, column: 4, scope: !441)
!507 = !DILocation(line: 148, column: 11, scope: !441)
!508 = !DILocation(line: 148, column: 4, scope: !441)
!509 = !DILocation(line: 149, column: 1, scope: !441)
!510 = distinct !DISubprogram(name: "PosixConvertToCurrent", scope: !426, file: !426, line: 61, type: !511, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!511 = !DISubroutineType(types: !512)
!512 = !{!513, !429, !337}
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !343, line: 230, baseType: !339)
!514 = !DILocalVariable(name: "in", arg: 1, scope: !510, file: !426, line: 61, type: !429)
!515 = !DILocation(line: 61, column: 35, scope: !510)
!516 = !DILocalVariable(name: "out", arg: 2, scope: !510, file: !426, line: 62, type: !337)
!517 = !DILocation(line: 62, column: 30, scope: !510)
!518 = !DILocalVariable(name: "e", scope: !510, file: !426, line: 64, type: !363)
!519 = !DILocation(line: 64, column: 8, scope: !510)
!520 = !DILocation(line: 64, column: 13, scope: !510)
!521 = !DILocation(line: 64, column: 12, scope: !510)
!522 = !DILocalVariable(name: "p", scope: !510, file: !426, line: 65, type: !338)
!523 = !DILocation(line: 65, column: 10, scope: !510)
!524 = !DILocation(line: 65, column: 36, scope: !510)
!525 = !DILocation(line: 65, column: 14, scope: !510)
!526 = !DILocalVariable(name: "success", scope: !510, file: !426, line: 66, type: !513)
!527 = !DILocation(line: 66, column: 9, scope: !510)
!528 = !DILocation(line: 66, column: 19, scope: !510)
!529 = !DILocation(line: 66, column: 21, scope: !510)
!530 = !DILocation(line: 66, column: 28, scope: !510)
!531 = !DILocation(line: 66, column: 31, scope: !532)
!532 = !DILexicalBlockFile(scope: !510, file: !426, discriminator: 1)
!533 = !DILocation(line: 66, column: 34, scope: !532)
!534 = !DILocation(line: 66, column: 28, scope: !532)
!535 = !DILocation(line: 66, column: 28, scope: !536)
!536 = !DILexicalBlockFile(scope: !510, file: !426, discriminator: 2)
!537 = !DILocation(line: 66, column: 19, scope: !536)
!538 = !DILocation(line: 66, column: 9, scope: !536)
!539 = !DILocation(line: 68, column: 8, scope: !540)
!540 = distinct !DILexicalBlock(scope: !510, file: !426, line: 68, column: 8)
!541 = !DILocation(line: 68, column: 8, scope: !510)
!542 = !DILocation(line: 69, column: 14, scope: !543)
!543 = distinct !DILexicalBlock(scope: !540, file: !426, line: 68, column: 17)
!544 = !DILocation(line: 69, column: 8, scope: !543)
!545 = !DILocation(line: 69, column: 12, scope: !543)
!546 = !DILocation(line: 70, column: 14, scope: !543)
!547 = !DILocation(line: 70, column: 8, scope: !543)
!548 = !DILocation(line: 70, column: 12, scope: !543)
!549 = !DILocation(line: 71, column: 4, scope: !543)
!550 = !DILocation(line: 72, column: 8, scope: !551)
!551 = distinct !DILexicalBlock(scope: !540, file: !426, line: 71, column: 11)
!552 = !DILocation(line: 72, column: 12, scope: !551)
!553 = !DILocation(line: 73, column: 8, scope: !551)
!554 = !DILocation(line: 73, column: 12, scope: !551)
!555 = !DILocation(line: 75, column: 11, scope: !510)
!556 = !DILocation(line: 75, column: 4, scope: !510)
!557 = distinct !DISubprogram(name: "Posix_Free", scope: !558, file: !558, line: 129, type: !559, isLocal: true, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!558 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/posix.h", directory: "/home/lichi/Desktop/open-vm-tools/line663")
!559 = !DISubroutineType(types: !560)
!560 = !{null, !340}
!561 = !DILocalVariable(name: "p", arg: 1, scope: !557, file: !558, line: 129, type: !340)
!562 = !DILocation(line: 129, column: 18, scope: !557)
!563 = !DILocalVariable(name: "err", scope: !557, file: !558, line: 131, type: !363)
!564 = !DILocation(line: 131, column: 8, scope: !557)
!565 = !DILocation(line: 131, column: 15, scope: !557)
!566 = !DILocation(line: 131, column: 14, scope: !557)
!567 = !DILocation(line: 132, column: 9, scope: !557)
!568 = !DILocation(line: 132, column: 4, scope: !557)
!569 = !DILocation(line: 133, column: 11, scope: !557)
!570 = !DILocation(line: 133, column: 5, scope: !557)
!571 = !DILocation(line: 133, column: 9, scope: !557)
!572 = !DILocation(line: 134, column: 1, scope: !557)
!573 = distinct !DISubprogram(name: "Posix_Creat", scope: !351, file: !351, line: 170, type: !574, isLocal: false, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!574 = !DISubroutineType(types: !575)
!575 = !{!363, !429, !452}
!576 = !DILocalVariable(name: "pathName", arg: 1, scope: !573, file: !351, line: 170, type: !429)
!577 = !DILocation(line: 170, column: 25, scope: !573)
!578 = !DILocalVariable(name: "mode", arg: 2, scope: !573, file: !351, line: 171, type: !452)
!579 = !DILocation(line: 171, column: 20, scope: !573)
!580 = !DILocation(line: 173, column: 22, scope: !573)
!581 = !DILocation(line: 173, column: 61, scope: !573)
!582 = !DILocation(line: 173, column: 11, scope: !573)
!583 = !DILocation(line: 173, column: 4, scope: !573)
!584 = distinct !DISubprogram(name: "Posix_Fopen", scope: !351, file: !351, line: 194, type: !585, isLocal: false, isDefinition: true, scopeLine: 196, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!585 = !DISubroutineType(types: !586)
!586 = !{!365, !429, !429}
!587 = !DILocalVariable(name: "pathName", arg: 1, scope: !584, file: !351, line: 194, type: !429)
!588 = !DILocation(line: 194, column: 25, scope: !584)
!589 = !DILocalVariable(name: "mode", arg: 2, scope: !584, file: !351, line: 195, type: !429)
!590 = !DILocation(line: 195, column: 25, scope: !584)
!591 = !DILocalVariable(name: "path", scope: !584, file: !351, line: 197, type: !338)
!592 = !DILocation(line: 197, column: 10, scope: !584)
!593 = !DILocalVariable(name: "stream", scope: !584, file: !351, line: 198, type: !365)
!594 = !DILocation(line: 198, column: 10, scope: !584)
!595 = !DILocation(line: 202, column: 31, scope: !596)
!596 = distinct !DILexicalBlock(scope: !584, file: !351, line: 202, column: 8)
!597 = !DILocation(line: 202, column: 9, scope: !596)
!598 = !DILocation(line: 202, column: 8, scope: !584)
!599 = !DILocation(line: 203, column: 7, scope: !600)
!600 = distinct !DILexicalBlock(scope: !596, file: !351, line: 202, column: 49)
!601 = !DILocation(line: 206, column: 19, scope: !584)
!602 = !DILocation(line: 206, column: 25, scope: !584)
!603 = !DILocation(line: 206, column: 13, scope: !584)
!604 = !DILocation(line: 206, column: 11, scope: !584)
!605 = !DILocation(line: 208, column: 15, scope: !584)
!606 = !DILocation(line: 208, column: 4, scope: !584)
!607 = !DILocation(line: 210, column: 11, scope: !584)
!608 = !DILocation(line: 210, column: 4, scope: !584)
!609 = !DILocation(line: 211, column: 1, scope: !584)
!610 = distinct !DISubprogram(name: "Posix_Stat", scope: !351, file: !351, line: 232, type: !611, isLocal: false, isDefinition: true, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!611 = !DISubroutineType(types: !612)
!612 = !{!363, !429, !613}
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64, align: 64)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !615, line: 46, size: 1152, align: 64, elements: !616)
!615 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/open-vm-tools/line663")
!616 = !{!617, !619, !621, !623, !624, !626, !628, !629, !630, !631, !633, !635, !643, !644, !645}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !614, file: !615, line: 48, baseType: !618, size: 64, align: 64)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !396, line: 124, baseType: !346)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !614, file: !615, line: 53, baseType: !620, size: 64, align: 64, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !396, line: 127, baseType: !346)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !614, file: !615, line: 61, baseType: !622, size: 64, align: 64, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !396, line: 130, baseType: !346)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !614, file: !615, line: 62, baseType: !454, size: 32, align: 32, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !614, file: !615, line: 64, baseType: !625, size: 32, align: 32, offset: 224)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !396, line: 125, baseType: !455)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !614, file: !615, line: 65, baseType: !627, size: 32, align: 32, offset: 256)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !396, line: 126, baseType: !455)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !614, file: !615, line: 67, baseType: !363, size: 32, align: 32, offset: 288)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !614, file: !615, line: 69, baseType: !618, size: 64, align: 64, offset: 320)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !614, file: !615, line: 74, baseType: !395, size: 64, align: 64, offset: 384)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !614, file: !615, line: 78, baseType: !632, size: 64, align: 64, offset: 448)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !396, line: 153, baseType: !397)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !614, file: !615, line: 80, baseType: !634, size: 64, align: 64, offset: 512)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !396, line: 158, baseType: !397)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !614, file: !615, line: 91, baseType: !636, size: 128, align: 64, offset: 576)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !637, line: 120, size: 128, align: 64, elements: !638)
!637 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/open-vm-tools/line663")
!638 = !{!639, !641}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !636, file: !637, line: 122, baseType: !640, size: 64, align: 64)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !396, line: 139, baseType: !397)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !636, file: !637, line: 123, baseType: !642, size: 64, align: 64, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !396, line: 175, baseType: !397)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !614, file: !615, line: 92, baseType: !636, size: 128, align: 64, offset: 704)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !614, file: !615, line: 93, baseType: !636, size: 128, align: 64, offset: 832)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !614, file: !615, line: 106, baseType: !646, size: 192, align: 64, offset: 960)
!646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !642, size: 192, align: 64, elements: !647)
!647 = !{!648}
!648 = !DISubrange(count: 3)
!649 = !DILocalVariable(name: "pathName", arg: 1, scope: !610, file: !351, line: 232, type: !429)
!650 = !DILocation(line: 232, column: 24, scope: !610)
!651 = !DILocalVariable(name: "statbuf", arg: 2, scope: !610, file: !351, line: 233, type: !613)
!652 = !DILocation(line: 233, column: 25, scope: !610)
!653 = !DILocalVariable(name: "path", scope: !610, file: !351, line: 235, type: !338)
!654 = !DILocation(line: 235, column: 10, scope: !610)
!655 = !DILocalVariable(name: "ret", scope: !610, file: !351, line: 236, type: !363)
!656 = !DILocation(line: 236, column: 8, scope: !610)
!657 = !DILocation(line: 238, column: 31, scope: !658)
!658 = distinct !DILexicalBlock(scope: !610, file: !351, line: 238, column: 8)
!659 = !DILocation(line: 238, column: 9, scope: !658)
!660 = !DILocation(line: 238, column: 8, scope: !610)
!661 = !DILocation(line: 239, column: 7, scope: !662)
!662 = distinct !DILexicalBlock(scope: !658, file: !351, line: 238, column: 49)
!663 = !DILocation(line: 242, column: 15, scope: !610)
!664 = !DILocation(line: 242, column: 21, scope: !610)
!665 = !DILocation(line: 242, column: 10, scope: !610)
!666 = !DILocation(line: 242, column: 8, scope: !610)
!667 = !DILocation(line: 244, column: 15, scope: !610)
!668 = !DILocation(line: 244, column: 4, scope: !610)
!669 = !DILocation(line: 246, column: 11, scope: !610)
!670 = !DILocation(line: 246, column: 4, scope: !610)
!671 = !DILocation(line: 247, column: 1, scope: !610)
!672 = distinct !DISubprogram(name: "Posix_Chmod", scope: !351, file: !351, line: 268, type: !574, isLocal: false, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!673 = !DILocalVariable(name: "pathName", arg: 1, scope: !672, file: !351, line: 268, type: !429)
!674 = !DILocation(line: 268, column: 25, scope: !672)
!675 = !DILocalVariable(name: "mode", arg: 2, scope: !672, file: !351, line: 269, type: !452)
!676 = !DILocation(line: 269, column: 20, scope: !672)
!677 = !DILocalVariable(name: "path", scope: !672, file: !351, line: 271, type: !338)
!678 = !DILocation(line: 271, column: 10, scope: !672)
!679 = !DILocalVariable(name: "ret", scope: !672, file: !351, line: 272, type: !363)
!680 = !DILocation(line: 272, column: 8, scope: !672)
!681 = !DILocation(line: 274, column: 31, scope: !682)
!682 = distinct !DILexicalBlock(scope: !672, file: !351, line: 274, column: 8)
!683 = !DILocation(line: 274, column: 9, scope: !682)
!684 = !DILocation(line: 274, column: 8, scope: !672)
!685 = !DILocation(line: 275, column: 7, scope: !686)
!686 = distinct !DILexicalBlock(scope: !682, file: !351, line: 274, column: 49)
!687 = !DILocation(line: 278, column: 16, scope: !672)
!688 = !DILocation(line: 278, column: 22, scope: !672)
!689 = !DILocation(line: 278, column: 10, scope: !672)
!690 = !DILocation(line: 278, column: 8, scope: !672)
!691 = !DILocation(line: 280, column: 15, scope: !672)
!692 = !DILocation(line: 280, column: 4, scope: !672)
!693 = !DILocation(line: 281, column: 11, scope: !672)
!694 = !DILocation(line: 281, column: 4, scope: !672)
!695 = !DILocation(line: 282, column: 1, scope: !672)
!696 = distinct !DISubprogram(name: "Posix_Rename", scope: !351, file: !351, line: 303, type: !697, isLocal: false, isDefinition: true, scopeLine: 305, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!697 = !DISubroutineType(types: !698)
!698 = !{!363, !429, !429}
!699 = !DILocalVariable(name: "fromPathName", arg: 1, scope: !696, file: !351, line: 303, type: !429)
!700 = !DILocation(line: 303, column: 26, scope: !696)
!701 = !DILocalVariable(name: "toPathName", arg: 2, scope: !696, file: !351, line: 304, type: !429)
!702 = !DILocation(line: 304, column: 26, scope: !696)
!703 = !DILocalVariable(name: "toPath", scope: !696, file: !351, line: 306, type: !338)
!704 = !DILocation(line: 306, column: 10, scope: !696)
!705 = !DILocalVariable(name: "fromPath", scope: !696, file: !351, line: 307, type: !338)
!706 = !DILocation(line: 307, column: 10, scope: !696)
!707 = !DILocalVariable(name: "result", scope: !696, file: !351, line: 308, type: !363)
!708 = !DILocation(line: 308, column: 8, scope: !696)
!709 = !DILocation(line: 310, column: 31, scope: !710)
!710 = distinct !DILexicalBlock(scope: !696, file: !351, line: 310, column: 8)
!711 = !DILocation(line: 310, column: 9, scope: !710)
!712 = !DILocation(line: 310, column: 8, scope: !696)
!713 = !DILocation(line: 311, column: 7, scope: !714)
!714 = distinct !DILexicalBlock(scope: !710, file: !351, line: 310, column: 57)
!715 = !DILocation(line: 313, column: 31, scope: !716)
!716 = distinct !DILexicalBlock(scope: !696, file: !351, line: 313, column: 8)
!717 = !DILocation(line: 313, column: 9, scope: !716)
!718 = !DILocation(line: 313, column: 8, scope: !696)
!719 = !DILocation(line: 314, column: 18, scope: !720)
!720 = distinct !DILexicalBlock(scope: !716, file: !351, line: 313, column: 53)
!721 = !DILocation(line: 314, column: 7, scope: !720)
!722 = !DILocation(line: 315, column: 7, scope: !720)
!723 = !DILocation(line: 318, column: 20, scope: !696)
!724 = !DILocation(line: 318, column: 30, scope: !696)
!725 = !DILocation(line: 318, column: 13, scope: !696)
!726 = !DILocation(line: 318, column: 11, scope: !696)
!727 = !DILocation(line: 320, column: 15, scope: !696)
!728 = !DILocation(line: 320, column: 4, scope: !696)
!729 = !DILocation(line: 321, column: 15, scope: !696)
!730 = !DILocation(line: 321, column: 4, scope: !696)
!731 = !DILocation(line: 322, column: 11, scope: !696)
!732 = !DILocation(line: 322, column: 4, scope: !696)
!733 = !DILocation(line: 323, column: 1, scope: !696)
!734 = distinct !DISubprogram(name: "Posix_Unlink", scope: !351, file: !351, line: 344, type: !735, isLocal: false, isDefinition: true, scopeLine: 345, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!735 = !DISubroutineType(types: !736)
!736 = !{!363, !429}
!737 = !DILocalVariable(name: "pathName", arg: 1, scope: !734, file: !351, line: 344, type: !429)
!738 = !DILocation(line: 344, column: 26, scope: !734)
!739 = !DILocalVariable(name: "path", scope: !734, file: !351, line: 346, type: !338)
!740 = !DILocation(line: 346, column: 10, scope: !734)
!741 = !DILocalVariable(name: "ret", scope: !734, file: !351, line: 347, type: !363)
!742 = !DILocation(line: 347, column: 8, scope: !734)
!743 = !DILocation(line: 349, column: 31, scope: !744)
!744 = distinct !DILexicalBlock(scope: !734, file: !351, line: 349, column: 8)
!745 = !DILocation(line: 349, column: 9, scope: !744)
!746 = !DILocation(line: 349, column: 8, scope: !734)
!747 = !DILocation(line: 350, column: 7, scope: !748)
!748 = distinct !DILexicalBlock(scope: !744, file: !351, line: 349, column: 49)
!749 = !DILocation(line: 353, column: 17, scope: !734)
!750 = !DILocation(line: 353, column: 10, scope: !734)
!751 = !DILocation(line: 353, column: 8, scope: !734)
!752 = !DILocation(line: 355, column: 15, scope: !734)
!753 = !DILocation(line: 355, column: 4, scope: !734)
!754 = !DILocation(line: 356, column: 11, scope: !734)
!755 = !DILocation(line: 356, column: 4, scope: !734)
!756 = !DILocation(line: 357, column: 1, scope: !734)
!757 = distinct !DISubprogram(name: "Posix_Rmdir", scope: !351, file: !351, line: 378, type: !735, isLocal: false, isDefinition: true, scopeLine: 379, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!758 = !DILocalVariable(name: "pathName", arg: 1, scope: !757, file: !351, line: 378, type: !429)
!759 = !DILocation(line: 378, column: 25, scope: !757)
!760 = !DILocalVariable(name: "path", scope: !757, file: !351, line: 380, type: !338)
!761 = !DILocation(line: 380, column: 10, scope: !757)
!762 = !DILocalVariable(name: "ret", scope: !757, file: !351, line: 381, type: !363)
!763 = !DILocation(line: 381, column: 8, scope: !757)
!764 = !DILocation(line: 383, column: 31, scope: !765)
!765 = distinct !DILexicalBlock(scope: !757, file: !351, line: 383, column: 8)
!766 = !DILocation(line: 383, column: 9, scope: !765)
!767 = !DILocation(line: 383, column: 8, scope: !757)
!768 = !DILocation(line: 384, column: 7, scope: !769)
!769 = distinct !DILexicalBlock(scope: !765, file: !351, line: 383, column: 49)
!770 = !DILocation(line: 387, column: 16, scope: !757)
!771 = !DILocation(line: 387, column: 10, scope: !757)
!772 = !DILocation(line: 387, column: 8, scope: !757)
!773 = !DILocation(line: 389, column: 15, scope: !757)
!774 = !DILocation(line: 389, column: 4, scope: !757)
!775 = !DILocation(line: 391, column: 11, scope: !757)
!776 = !DILocation(line: 391, column: 4, scope: !757)
!777 = !DILocation(line: 392, column: 1, scope: !757)
!778 = distinct !DISubprogram(name: "Posix_Freopen", scope: !351, file: !351, line: 413, type: !779, isLocal: false, isDefinition: true, scopeLine: 416, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!779 = !DISubroutineType(types: !780)
!780 = !{!365, !429, !429, !365}
!781 = !DILocalVariable(name: "pathName", arg: 1, scope: !778, file: !351, line: 413, type: !429)
!782 = !DILocation(line: 413, column: 27, scope: !778)
!783 = !DILocalVariable(name: "mode", arg: 2, scope: !778, file: !351, line: 414, type: !429)
!784 = !DILocation(line: 414, column: 27, scope: !778)
!785 = !DILocalVariable(name: "input_stream", arg: 3, scope: !778, file: !351, line: 415, type: !365)
!786 = !DILocation(line: 415, column: 21, scope: !778)
!787 = !DILocalVariable(name: "path", scope: !778, file: !351, line: 417, type: !338)
!788 = !DILocation(line: 417, column: 10, scope: !778)
!789 = !DILocalVariable(name: "stream", scope: !778, file: !351, line: 418, type: !365)
!790 = !DILocation(line: 418, column: 10, scope: !778)
!791 = !DILocation(line: 422, column: 31, scope: !792)
!792 = distinct !DILexicalBlock(scope: !778, file: !351, line: 422, column: 8)
!793 = !DILocation(line: 422, column: 9, scope: !792)
!794 = !DILocation(line: 422, column: 8, scope: !778)
!795 = !DILocation(line: 423, column: 7, scope: !796)
!796 = distinct !DILexicalBlock(scope: !792, file: !351, line: 422, column: 49)
!797 = !DILocation(line: 426, column: 21, scope: !778)
!798 = !DILocation(line: 426, column: 27, scope: !778)
!799 = !DILocation(line: 426, column: 33, scope: !778)
!800 = !DILocation(line: 426, column: 13, scope: !778)
!801 = !DILocation(line: 426, column: 11, scope: !778)
!802 = !DILocation(line: 428, column: 15, scope: !778)
!803 = !DILocation(line: 428, column: 4, scope: !778)
!804 = !DILocation(line: 429, column: 11, scope: !778)
!805 = !DILocation(line: 429, column: 4, scope: !778)
!806 = !DILocation(line: 430, column: 1, scope: !778)
!807 = distinct !DISubprogram(name: "Posix_Access", scope: !351, file: !351, line: 451, type: !808, isLocal: false, isDefinition: true, scopeLine: 453, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!808 = !DISubroutineType(types: !809)
!809 = !{!363, !429, !363}
!810 = !DILocalVariable(name: "pathName", arg: 1, scope: !807, file: !351, line: 451, type: !429)
!811 = !DILocation(line: 451, column: 26, scope: !807)
!812 = !DILocalVariable(name: "mode", arg: 2, scope: !807, file: !351, line: 452, type: !363)
!813 = !DILocation(line: 452, column: 18, scope: !807)
!814 = !DILocalVariable(name: "path", scope: !807, file: !351, line: 454, type: !338)
!815 = !DILocation(line: 454, column: 10, scope: !807)
!816 = !DILocalVariable(name: "ret", scope: !807, file: !351, line: 455, type: !363)
!817 = !DILocation(line: 455, column: 8, scope: !807)
!818 = !DILocation(line: 457, column: 31, scope: !819)
!819 = distinct !DILexicalBlock(scope: !807, file: !351, line: 457, column: 8)
!820 = !DILocation(line: 457, column: 9, scope: !819)
!821 = !DILocation(line: 457, column: 8, scope: !807)
!822 = !DILocation(line: 458, column: 7, scope: !823)
!823 = distinct !DILexicalBlock(scope: !819, file: !351, line: 457, column: 49)
!824 = !DILocation(line: 472, column: 17, scope: !807)
!825 = !DILocation(line: 472, column: 23, scope: !807)
!826 = !DILocation(line: 472, column: 10, scope: !807)
!827 = !DILocation(line: 472, column: 8, scope: !807)
!828 = !DILocation(line: 475, column: 15, scope: !807)
!829 = !DILocation(line: 475, column: 4, scope: !807)
!830 = !DILocation(line: 477, column: 11, scope: !807)
!831 = !DILocation(line: 477, column: 4, scope: !807)
!832 = !DILocation(line: 478, column: 1, scope: !807)
!833 = distinct !DISubprogram(name: "Posix_EuidAccess", scope: !351, file: !351, line: 499, type: !808, isLocal: false, isDefinition: true, scopeLine: 501, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!834 = !DILocalVariable(name: "pathName", arg: 1, scope: !833, file: !351, line: 499, type: !429)
!835 = !DILocation(line: 499, column: 30, scope: !833)
!836 = !DILocalVariable(name: "mode", arg: 2, scope: !833, file: !351, line: 500, type: !363)
!837 = !DILocation(line: 500, column: 22, scope: !833)
!838 = !DILocalVariable(name: "path", scope: !833, file: !351, line: 503, type: !338)
!839 = !DILocation(line: 503, column: 10, scope: !833)
!840 = !DILocalVariable(name: "ret", scope: !833, file: !351, line: 504, type: !363)
!841 = !DILocation(line: 504, column: 8, scope: !833)
!842 = !DILocation(line: 506, column: 31, scope: !843)
!843 = distinct !DILexicalBlock(scope: !833, file: !351, line: 506, column: 8)
!844 = !DILocation(line: 506, column: 9, scope: !843)
!845 = !DILocation(line: 506, column: 8, scope: !833)
!846 = !DILocation(line: 507, column: 7, scope: !847)
!847 = distinct !DILexicalBlock(scope: !843, file: !351, line: 506, column: 49)
!848 = !DILocation(line: 510, column: 21, scope: !833)
!849 = !DILocation(line: 510, column: 27, scope: !833)
!850 = !DILocation(line: 510, column: 10, scope: !833)
!851 = !DILocation(line: 510, column: 8, scope: !833)
!852 = !DILocation(line: 512, column: 15, scope: !833)
!853 = !DILocation(line: 512, column: 4, scope: !833)
!854 = !DILocation(line: 513, column: 11, scope: !833)
!855 = !DILocation(line: 513, column: 4, scope: !833)
!856 = !DILocation(line: 518, column: 1, scope: !833)
!857 = distinct !DISubprogram(name: "Posix_Utime", scope: !351, file: !351, line: 539, type: !858, isLocal: false, isDefinition: true, scopeLine: 541, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!858 = !DISubroutineType(types: !859)
!859 = !{!363, !429, !860}
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64, align: 64)
!861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !862)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utimbuf", file: !863, line: 37, size: 128, align: 64, elements: !864)
!863 = !DIFile(filename: "/usr/include/utime.h", directory: "/home/lichi/Desktop/open-vm-tools/line663")
!864 = !{!865, !866}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "actime", scope: !862, file: !863, line: 39, baseType: !640, size: 64, align: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "modtime", scope: !862, file: !863, line: 40, baseType: !640, size: 64, align: 64, offset: 64)
!867 = !DILocalVariable(name: "pathName", arg: 1, scope: !857, file: !351, line: 539, type: !429)
!868 = !DILocation(line: 539, column: 25, scope: !857)
!869 = !DILocalVariable(name: "times", arg: 2, scope: !857, file: !351, line: 540, type: !860)
!870 = !DILocation(line: 540, column: 35, scope: !857)
!871 = !DILocalVariable(name: "path", scope: !857, file: !351, line: 542, type: !338)
!872 = !DILocation(line: 542, column: 10, scope: !857)
!873 = !DILocalVariable(name: "ret", scope: !857, file: !351, line: 543, type: !363)
!874 = !DILocation(line: 543, column: 8, scope: !857)
!875 = !DILocation(line: 545, column: 31, scope: !876)
!876 = distinct !DILexicalBlock(scope: !857, file: !351, line: 545, column: 8)
!877 = !DILocation(line: 545, column: 9, scope: !876)
!878 = !DILocation(line: 545, column: 8, scope: !857)
!879 = !DILocation(line: 546, column: 7, scope: !880)
!880 = distinct !DILexicalBlock(scope: !876, file: !351, line: 545, column: 49)
!881 = !DILocation(line: 549, column: 16, scope: !857)
!882 = !DILocation(line: 549, column: 22, scope: !857)
!883 = !DILocation(line: 549, column: 10, scope: !857)
!884 = !DILocation(line: 549, column: 8, scope: !857)
!885 = !DILocation(line: 551, column: 15, scope: !857)
!886 = !DILocation(line: 551, column: 4, scope: !857)
!887 = !DILocation(line: 553, column: 11, scope: !857)
!888 = !DILocation(line: 553, column: 4, scope: !857)
!889 = !DILocation(line: 554, column: 1, scope: !857)
!890 = distinct !DISubprogram(name: "Posix_Perror", scope: !351, file: !351, line: 575, type: !891, isLocal: false, isDefinition: true, scopeLine: 576, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!891 = !DISubroutineType(types: !892)
!892 = !{null, !429}
!893 = !DILocalVariable(name: "str", arg: 1, scope: !890, file: !351, line: 575, type: !429)
!894 = !DILocation(line: 575, column: 26, scope: !890)
!895 = !DILocalVariable(name: "tmpstr", scope: !890, file: !351, line: 577, type: !338)
!896 = !DILocation(line: 577, column: 10, scope: !890)
!897 = !DILocation(line: 577, column: 41, scope: !890)
!898 = !DILocation(line: 577, column: 19, scope: !890)
!899 = !DILocation(line: 580, column: 11, scope: !890)
!900 = !DILocation(line: 580, column: 4, scope: !890)
!901 = !DILocation(line: 582, column: 15, scope: !890)
!902 = !DILocation(line: 582, column: 4, scope: !890)
!903 = !DILocation(line: 583, column: 1, scope: !890)
!904 = distinct !DISubprogram(name: "Posix_Pathconf", scope: !351, file: !351, line: 603, type: !905, isLocal: false, isDefinition: true, scopeLine: 605, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!905 = !DISubroutineType(types: !906)
!906 = !{!397, !429, !363}
!907 = !DILocalVariable(name: "pathName", arg: 1, scope: !904, file: !351, line: 603, type: !429)
!908 = !DILocation(line: 603, column: 28, scope: !904)
!909 = !DILocalVariable(name: "name", arg: 2, scope: !904, file: !351, line: 604, type: !363)
!910 = !DILocation(line: 604, column: 20, scope: !904)
!911 = !DILocalVariable(name: "path", scope: !904, file: !351, line: 606, type: !338)
!912 = !DILocation(line: 606, column: 10, scope: !904)
!913 = !DILocalVariable(name: "ret", scope: !904, file: !351, line: 607, type: !397)
!914 = !DILocation(line: 607, column: 9, scope: !904)
!915 = !DILocation(line: 609, column: 31, scope: !916)
!916 = distinct !DILexicalBlock(scope: !904, file: !351, line: 609, column: 8)
!917 = !DILocation(line: 609, column: 9, scope: !916)
!918 = !DILocation(line: 609, column: 8, scope: !904)
!919 = !DILocation(line: 610, column: 7, scope: !920)
!920 = distinct !DILexicalBlock(scope: !916, file: !351, line: 609, column: 49)
!921 = !DILocation(line: 613, column: 19, scope: !904)
!922 = !DILocation(line: 613, column: 25, scope: !904)
!923 = !DILocation(line: 613, column: 10, scope: !904)
!924 = !DILocation(line: 613, column: 8, scope: !904)
!925 = !DILocation(line: 615, column: 15, scope: !904)
!926 = !DILocation(line: 615, column: 4, scope: !904)
!927 = !DILocation(line: 617, column: 11, scope: !904)
!928 = !DILocation(line: 617, column: 4, scope: !904)
!929 = !DILocation(line: 618, column: 1, scope: !904)
!930 = distinct !DISubprogram(name: "Posix_Popen", scope: !351, file: !351, line: 638, type: !585, isLocal: false, isDefinition: true, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!931 = !DILocalVariable(name: "pathName", arg: 1, scope: !930, file: !351, line: 638, type: !429)
!932 = !DILocation(line: 638, column: 25, scope: !930)
!933 = !DILocalVariable(name: "mode", arg: 2, scope: !930, file: !351, line: 639, type: !429)
!934 = !DILocation(line: 639, column: 25, scope: !930)
!935 = !DILocalVariable(name: "path", scope: !930, file: !351, line: 641, type: !338)
!936 = !DILocation(line: 641, column: 10, scope: !930)
!937 = !DILocalVariable(name: "stream", scope: !930, file: !351, line: 642, type: !365)
!938 = !DILocation(line: 642, column: 10, scope: !930)
!939 = !DILocation(line: 646, column: 31, scope: !940)
!940 = distinct !DILexicalBlock(scope: !930, file: !351, line: 646, column: 8)
!941 = !DILocation(line: 646, column: 9, scope: !940)
!942 = !DILocation(line: 646, column: 8, scope: !930)
!943 = !DILocation(line: 647, column: 7, scope: !944)
!944 = distinct !DILexicalBlock(scope: !940, file: !351, line: 646, column: 49)
!945 = !DILocation(line: 650, column: 19, scope: !930)
!946 = !DILocation(line: 650, column: 25, scope: !930)
!947 = !DILocation(line: 650, column: 13, scope: !930)
!948 = !DILocation(line: 650, column: 11, scope: !930)
!949 = !DILocation(line: 652, column: 15, scope: !930)
!950 = !DILocation(line: 652, column: 4, scope: !930)
!951 = !DILocation(line: 654, column: 11, scope: !930)
!952 = !DILocation(line: 654, column: 4, scope: !930)
!953 = !DILocation(line: 655, column: 1, scope: !930)
!954 = distinct !DISubprogram(name: "Posix_Mknod", scope: !351, file: !351, line: 676, type: !955, isLocal: false, isDefinition: true, scopeLine: 679, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!955 = !DISubroutineType(types: !956)
!956 = !{!363, !429, !452, !957}
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !453, line: 60, baseType: !618)
!958 = !DILocalVariable(name: "pathName", arg: 1, scope: !954, file: !351, line: 676, type: !429)
!959 = !DILocation(line: 676, column: 25, scope: !954)
!960 = !DILocalVariable(name: "mode", arg: 2, scope: !954, file: !351, line: 677, type: !452)
!961 = !DILocation(line: 677, column: 20, scope: !954)
!962 = !DILocalVariable(name: "dev", arg: 3, scope: !954, file: !351, line: 678, type: !957)
!963 = !DILocation(line: 678, column: 19, scope: !954)
!964 = !DILocalVariable(name: "path", scope: !954, file: !351, line: 680, type: !338)
!965 = !DILocation(line: 680, column: 10, scope: !954)
!966 = !DILocalVariable(name: "ret", scope: !954, file: !351, line: 681, type: !363)
!967 = !DILocation(line: 681, column: 8, scope: !954)
!968 = !DILocation(line: 683, column: 31, scope: !969)
!969 = distinct !DILexicalBlock(scope: !954, file: !351, line: 683, column: 8)
!970 = !DILocation(line: 683, column: 9, scope: !969)
!971 = !DILocation(line: 683, column: 8, scope: !954)
!972 = !DILocation(line: 684, column: 7, scope: !973)
!973 = distinct !DILexicalBlock(scope: !969, file: !351, line: 683, column: 49)
!974 = !DILocation(line: 687, column: 16, scope: !954)
!975 = !DILocation(line: 687, column: 22, scope: !954)
!976 = !DILocation(line: 687, column: 28, scope: !954)
!977 = !DILocation(line: 687, column: 10, scope: !954)
!978 = !DILocation(line: 687, column: 8, scope: !954)
!979 = !DILocation(line: 689, column: 15, scope: !954)
!980 = !DILocation(line: 689, column: 4, scope: !954)
!981 = !DILocation(line: 691, column: 11, scope: !954)
!982 = !DILocation(line: 691, column: 4, scope: !954)
!983 = !DILocation(line: 692, column: 1, scope: !954)
!984 = distinct !DISubprogram(name: "Posix_Chown", scope: !351, file: !351, line: 713, type: !985, isLocal: false, isDefinition: true, scopeLine: 716, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!985 = !DISubroutineType(types: !986)
!986 = !{!363, !429, !987, !988}
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !453, line: 80, baseType: !625)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !453, line: 65, baseType: !627)
!989 = !DILocalVariable(name: "pathName", arg: 1, scope: !984, file: !351, line: 713, type: !429)
!990 = !DILocation(line: 713, column: 25, scope: !984)
!991 = !DILocalVariable(name: "owner", arg: 2, scope: !984, file: !351, line: 714, type: !987)
!992 = !DILocation(line: 714, column: 19, scope: !984)
!993 = !DILocalVariable(name: "group", arg: 3, scope: !984, file: !351, line: 715, type: !988)
!994 = !DILocation(line: 715, column: 19, scope: !984)
!995 = !DILocalVariable(name: "path", scope: !984, file: !351, line: 717, type: !338)
!996 = !DILocation(line: 717, column: 10, scope: !984)
!997 = !DILocalVariable(name: "ret", scope: !984, file: !351, line: 718, type: !363)
!998 = !DILocation(line: 718, column: 8, scope: !984)
!999 = !DILocation(line: 720, column: 31, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !984, file: !351, line: 720, column: 8)
!1001 = !DILocation(line: 720, column: 9, scope: !1000)
!1002 = !DILocation(line: 720, column: 8, scope: !984)
!1003 = !DILocation(line: 721, column: 7, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1000, file: !351, line: 720, column: 49)
!1005 = !DILocation(line: 724, column: 16, scope: !984)
!1006 = !DILocation(line: 724, column: 22, scope: !984)
!1007 = !DILocation(line: 724, column: 29, scope: !984)
!1008 = !DILocation(line: 724, column: 10, scope: !984)
!1009 = !DILocation(line: 724, column: 8, scope: !984)
!1010 = !DILocation(line: 726, column: 15, scope: !984)
!1011 = !DILocation(line: 726, column: 4, scope: !984)
!1012 = !DILocation(line: 728, column: 11, scope: !984)
!1013 = !DILocation(line: 728, column: 4, scope: !984)
!1014 = !DILocation(line: 729, column: 1, scope: !984)
!1015 = distinct !DISubprogram(name: "Posix_Lchown", scope: !351, file: !351, line: 750, type: !985, isLocal: false, isDefinition: true, scopeLine: 753, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!1016 = !DILocalVariable(name: "pathName", arg: 1, scope: !1015, file: !351, line: 750, type: !429)
!1017 = !DILocation(line: 750, column: 26, scope: !1015)
!1018 = !DILocalVariable(name: "owner", arg: 2, scope: !1015, file: !351, line: 751, type: !987)
!1019 = !DILocation(line: 751, column: 20, scope: !1015)
!1020 = !DILocalVariable(name: "group", arg: 3, scope: !1015, file: !351, line: 752, type: !988)
!1021 = !DILocation(line: 752, column: 20, scope: !1015)
!1022 = !DILocalVariable(name: "path", scope: !1015, file: !351, line: 754, type: !338)
!1023 = !DILocation(line: 754, column: 10, scope: !1015)
!1024 = !DILocalVariable(name: "ret", scope: !1015, file: !351, line: 755, type: !363)
!1025 = !DILocation(line: 755, column: 8, scope: !1015)
!1026 = !DILocation(line: 757, column: 31, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1015, file: !351, line: 757, column: 8)
!1028 = !DILocation(line: 757, column: 9, scope: !1027)
!1029 = !DILocation(line: 757, column: 8, scope: !1015)
!1030 = !DILocation(line: 758, column: 7, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1027, file: !351, line: 757, column: 49)
!1032 = !DILocation(line: 761, column: 17, scope: !1015)
!1033 = !DILocation(line: 761, column: 23, scope: !1015)
!1034 = !DILocation(line: 761, column: 30, scope: !1015)
!1035 = !DILocation(line: 761, column: 10, scope: !1015)
!1036 = !DILocation(line: 761, column: 8, scope: !1015)
!1037 = !DILocation(line: 763, column: 15, scope: !1015)
!1038 = !DILocation(line: 763, column: 4, scope: !1015)
!1039 = !DILocation(line: 765, column: 11, scope: !1015)
!1040 = !DILocation(line: 765, column: 4, scope: !1015)
!1041 = !DILocation(line: 766, column: 1, scope: !1015)
!1042 = distinct !DISubprogram(name: "Posix_Link", scope: !351, file: !351, line: 787, type: !697, isLocal: false, isDefinition: true, scopeLine: 789, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!1043 = !DILocalVariable(name: "uOldPath", arg: 1, scope: !1042, file: !351, line: 787, type: !429)
!1044 = !DILocation(line: 787, column: 24, scope: !1042)
!1045 = !DILocalVariable(name: "uNewPath", arg: 2, scope: !1042, file: !351, line: 788, type: !429)
!1046 = !DILocation(line: 788, column: 24, scope: !1042)
!1047 = !DILocalVariable(name: "oldPath", scope: !1042, file: !351, line: 790, type: !338)
!1048 = !DILocation(line: 790, column: 10, scope: !1042)
!1049 = !DILocalVariable(name: "newPath", scope: !1042, file: !351, line: 791, type: !338)
!1050 = !DILocation(line: 791, column: 10, scope: !1042)
!1051 = !DILocalVariable(name: "ret", scope: !1042, file: !351, line: 792, type: !363)
!1052 = !DILocation(line: 792, column: 8, scope: !1042)
!1053 = !DILocation(line: 794, column: 31, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1042, file: !351, line: 794, column: 8)
!1055 = !DILocation(line: 794, column: 9, scope: !1054)
!1056 = !DILocation(line: 794, column: 8, scope: !1042)
!1057 = !DILocation(line: 795, column: 7, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1054, file: !351, line: 794, column: 52)
!1059 = !DILocation(line: 797, column: 31, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1042, file: !351, line: 797, column: 8)
!1061 = !DILocation(line: 797, column: 9, scope: !1060)
!1062 = !DILocation(line: 797, column: 8, scope: !1042)
!1063 = !DILocation(line: 798, column: 18, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1060, file: !351, line: 797, column: 52)
!1065 = !DILocation(line: 798, column: 7, scope: !1064)
!1066 = !DILocation(line: 799, column: 7, scope: !1064)
!1067 = !DILocation(line: 802, column: 15, scope: !1042)
!1068 = !DILocation(line: 802, column: 24, scope: !1042)
!1069 = !DILocation(line: 802, column: 10, scope: !1042)
!1070 = !DILocation(line: 802, column: 8, scope: !1042)
!1071 = !DILocation(line: 804, column: 15, scope: !1042)
!1072 = !DILocation(line: 804, column: 4, scope: !1042)
!1073 = !DILocation(line: 805, column: 15, scope: !1042)
!1074 = !DILocation(line: 805, column: 4, scope: !1042)
!1075 = !DILocation(line: 807, column: 11, scope: !1042)
!1076 = !DILocation(line: 807, column: 4, scope: !1042)
!1077 = !DILocation(line: 808, column: 1, scope: !1042)
!1078 = distinct !DISubprogram(name: "Posix_Symlink", scope: !351, file: !351, line: 829, type: !697, isLocal: false, isDefinition: true, scopeLine: 831, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!1079 = !DILocalVariable(name: "uOldPath", arg: 1, scope: !1078, file: !351, line: 829, type: !429)
!1080 = !DILocation(line: 829, column: 27, scope: !1078)
!1081 = !DILocalVariable(name: "uNewPath", arg: 2, scope: !1078, file: !351, line: 830, type: !429)
!1082 = !DILocation(line: 830, column: 27, scope: !1078)
!1083 = !DILocalVariable(name: "oldPath", scope: !1078, file: !351, line: 832, type: !338)
!1084 = !DILocation(line: 832, column: 10, scope: !1078)
!1085 = !DILocalVariable(name: "newPath", scope: !1078, file: !351, line: 833, type: !338)
!1086 = !DILocation(line: 833, column: 10, scope: !1078)
!1087 = !DILocalVariable(name: "ret", scope: !1078, file: !351, line: 834, type: !363)
!1088 = !DILocation(line: 834, column: 8, scope: !1078)
!1089 = !DILocation(line: 836, column: 31, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1078, file: !351, line: 836, column: 8)
!1091 = !DILocation(line: 836, column: 9, scope: !1090)
!1092 = !DILocation(line: 836, column: 8, scope: !1078)
!1093 = !DILocation(line: 837, column: 7, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1090, file: !351, line: 836, column: 52)
!1095 = !DILocation(line: 839, column: 31, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1078, file: !351, line: 839, column: 8)
!1097 = !DILocation(line: 839, column: 9, scope: !1096)
!1098 = !DILocation(line: 839, column: 8, scope: !1078)
!1099 = !DILocation(line: 840, column: 18, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1096, file: !351, line: 839, column: 52)
!1101 = !DILocation(line: 840, column: 7, scope: !1100)
!1102 = !DILocation(line: 841, column: 7, scope: !1100)
!1103 = !DILocation(line: 844, column: 18, scope: !1078)
!1104 = !DILocation(line: 844, column: 27, scope: !1078)
!1105 = !DILocation(line: 844, column: 10, scope: !1078)
!1106 = !DILocation(line: 844, column: 8, scope: !1078)
!1107 = !DILocation(line: 846, column: 15, scope: !1078)
!1108 = !DILocation(line: 846, column: 4, scope: !1078)
!1109 = !DILocation(line: 847, column: 15, scope: !1078)
!1110 = !DILocation(line: 847, column: 4, scope: !1078)
!1111 = !DILocation(line: 849, column: 11, scope: !1078)
!1112 = !DILocation(line: 849, column: 4, scope: !1078)
!1113 = !DILocation(line: 850, column: 1, scope: !1078)
!1114 = distinct !DISubprogram(name: "Posix_Mkfifo", scope: !351, file: !351, line: 871, type: !574, isLocal: false, isDefinition: true, scopeLine: 873, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!1115 = !DILocalVariable(name: "pathName", arg: 1, scope: !1114, file: !351, line: 871, type: !429)
!1116 = !DILocation(line: 871, column: 26, scope: !1114)
!1117 = !DILocalVariable(name: "mode", arg: 2, scope: !1114, file: !351, line: 872, type: !452)
!1118 = !DILocation(line: 872, column: 21, scope: !1114)
!1119 = !DILocalVariable(name: "path", scope: !1114, file: !351, line: 874, type: !338)
!1120 = !DILocation(line: 874, column: 10, scope: !1114)
!1121 = !DILocalVariable(name: "ret", scope: !1114, file: !351, line: 875, type: !363)
!1122 = !DILocation(line: 875, column: 8, scope: !1114)
!1123 = !DILocation(line: 877, column: 31, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1114, file: !351, line: 877, column: 8)
!1125 = !DILocation(line: 877, column: 9, scope: !1124)
!1126 = !DILocation(line: 877, column: 8, scope: !1114)
!1127 = !DILocation(line: 878, column: 7, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1124, file: !351, line: 877, column: 49)
!1129 = !DILocation(line: 881, column: 17, scope: !1114)
!1130 = !DILocation(line: 881, column: 23, scope: !1114)
!1131 = !DILocation(line: 881, column: 10, scope: !1114)
!1132 = !DILocation(line: 881, column: 8, scope: !1114)
!1133 = !DILocation(line: 883, column: 15, scope: !1114)
!1134 = !DILocation(line: 883, column: 4, scope: !1114)
!1135 = !DILocation(line: 885, column: 11, scope: !1114)
!1136 = !DILocation(line: 885, column: 4, scope: !1114)
!1137 = !DILocation(line: 886, column: 1, scope: !1114)
!1138 = distinct !DISubprogram(name: "Posix_Truncate", scope: !351, file: !351, line: 907, type: !1139, isLocal: false, isDefinition: true, scopeLine: 909, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!363, !429, !1141}
!1141 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !367, line: 92, baseType: !410)
!1142 = !DILocalVariable(name: "pathName", arg: 1, scope: !1138, file: !351, line: 907, type: !429)
!1143 = !DILocation(line: 907, column: 28, scope: !1138)
!1144 = !DILocalVariable(name: "length", arg: 2, scope: !1138, file: !351, line: 908, type: !1141)
!1145 = !DILocation(line: 908, column: 22, scope: !1138)
!1146 = !DILocalVariable(name: "path", scope: !1138, file: !351, line: 910, type: !338)
!1147 = !DILocation(line: 910, column: 10, scope: !1138)
!1148 = !DILocalVariable(name: "ret", scope: !1138, file: !351, line: 911, type: !363)
!1149 = !DILocation(line: 911, column: 8, scope: !1138)
!1150 = !DILocation(line: 913, column: 31, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1138, file: !351, line: 913, column: 8)
!1152 = !DILocation(line: 913, column: 9, scope: !1151)
!1153 = !DILocation(line: 913, column: 8, scope: !1138)
!1154 = !DILocation(line: 914, column: 7, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1151, file: !351, line: 913, column: 49)
!1156 = !DILocation(line: 917, column: 19, scope: !1138)
!1157 = !DILocation(line: 917, column: 25, scope: !1138)
!1158 = !DILocation(line: 917, column: 10, scope: !1138)
!1159 = !DILocation(line: 917, column: 8, scope: !1138)
!1160 = !DILocation(line: 919, column: 15, scope: !1138)
!1161 = !DILocation(line: 919, column: 4, scope: !1138)
!1162 = !DILocation(line: 921, column: 11, scope: !1138)
!1163 = !DILocation(line: 921, column: 4, scope: !1138)
!1164 = !DILocation(line: 922, column: 1, scope: !1138)
!1165 = distinct !DISubprogram(name: "Posix_Utimes", scope: !351, file: !351, line: 943, type: !1166, isLocal: false, isDefinition: true, scopeLine: 945, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!363, !429, !1168}
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64, align: 64)
!1169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1170)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !1171, line: 30, size: 128, align: 64, elements: !1172)
!1171 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/open-vm-tools/line663")
!1172 = !{!1173, !1174}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1170, file: !1171, line: 32, baseType: !640, size: 64, align: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !1170, file: !1171, line: 33, baseType: !1175, size: 64, align: 64, offset: 64)
!1175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !396, line: 141, baseType: !397)
!1176 = !DILocalVariable(name: "pathName", arg: 1, scope: !1165, file: !351, line: 943, type: !429)
!1177 = !DILocation(line: 943, column: 26, scope: !1165)
!1178 = !DILocalVariable(name: "times", arg: 2, scope: !1165, file: !351, line: 944, type: !1168)
!1179 = !DILocation(line: 944, column: 36, scope: !1165)
!1180 = !DILocalVariable(name: "path", scope: !1165, file: !351, line: 946, type: !338)
!1181 = !DILocation(line: 946, column: 10, scope: !1165)
!1182 = !DILocalVariable(name: "ret", scope: !1165, file: !351, line: 947, type: !363)
!1183 = !DILocation(line: 947, column: 8, scope: !1165)
!1184 = !DILocation(line: 949, column: 31, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1165, file: !351, line: 949, column: 8)
!1186 = !DILocation(line: 949, column: 9, scope: !1185)
!1187 = !DILocation(line: 949, column: 8, scope: !1165)
!1188 = !DILocation(line: 950, column: 7, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1185, file: !351, line: 949, column: 49)
!1190 = !DILocation(line: 953, column: 17, scope: !1165)
!1191 = !DILocation(line: 953, column: 23, scope: !1165)
!1192 = !DILocation(line: 953, column: 10, scope: !1165)
!1193 = !DILocation(line: 953, column: 8, scope: !1165)
!1194 = !DILocation(line: 955, column: 15, scope: !1165)
!1195 = !DILocation(line: 955, column: 4, scope: !1165)
!1196 = !DILocation(line: 957, column: 11, scope: !1165)
!1197 = !DILocation(line: 957, column: 4, scope: !1165)
!1198 = !DILocation(line: 958, column: 1, scope: !1165)
!1199 = distinct !DISubprogram(name: "Posix_Execl", scope: !351, file: !351, line: 979, type: !1200, isLocal: false, isDefinition: true, scopeLine: 982, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!363, !429, !429, null}
!1202 = !DILocalVariable(name: "pathName", arg: 1, scope: !1199, file: !351, line: 979, type: !429)
!1203 = !DILocation(line: 979, column: 25, scope: !1199)
!1204 = !DILocalVariable(name: "arg0", arg: 2, scope: !1199, file: !351, line: 980, type: !429)
!1205 = !DILocation(line: 980, column: 25, scope: !1199)
!1206 = !DILocalVariable(name: "ret", scope: !1199, file: !351, line: 983, type: !363)
!1207 = !DILocation(line: 983, column: 8, scope: !1199)
!1208 = !DILocalVariable(name: "path", scope: !1199, file: !351, line: 984, type: !338)
!1209 = !DILocation(line: 984, column: 10, scope: !1199)
!1210 = !DILocalVariable(name: "vl", scope: !1199, file: !351, line: 985, type: !472)
!1211 = !DILocation(line: 985, column: 12, scope: !1199)
!1212 = !DILocalVariable(name: "argv", scope: !1199, file: !351, line: 986, type: !337)
!1213 = !DILocation(line: 986, column: 11, scope: !1199)
!1214 = !DILocalVariable(name: "i", scope: !1199, file: !351, line: 987, type: !363)
!1215 = !DILocation(line: 987, column: 8, scope: !1199)
!1216 = !DILocalVariable(name: "count", scope: !1199, file: !351, line: 987, type: !363)
!1217 = !DILocation(line: 987, column: 11, scope: !1199)
!1218 = !DILocation(line: 989, column: 31, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1199, file: !351, line: 989, column: 8)
!1220 = !DILocation(line: 989, column: 9, scope: !1219)
!1221 = !DILocation(line: 989, column: 8, scope: !1199)
!1222 = !DILocation(line: 990, column: 7, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1219, file: !351, line: 989, column: 49)
!1224 = !DILocation(line: 993, column: 8, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1199, file: !351, line: 993, column: 8)
!1226 = !DILocation(line: 993, column: 8, scope: !1199)
!1227 = !DILocation(line: 994, column: 13, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1225, file: !351, line: 993, column: 14)
!1229 = !DILocation(line: 995, column: 6, scope: !1228)
!1230 = !DILocation(line: 996, column: 7, scope: !1228)
!1231 = !DILocation(line: 996, column: 13, scope: !1232)
!1232 = !DILexicalBlockFile(scope: !1228, file: !351, discriminator: 1)
!1233 = !DILocation(line: 996, column: 13, scope: !1234)
!1234 = !DILexicalBlockFile(scope: !1228, file: !351, discriminator: 2)
!1235 = !DILocation(line: 996, column: 13, scope: !1236)
!1236 = !DILexicalBlockFile(scope: !1228, file: !351, discriminator: 3)
!1237 = !DILocation(line: 996, column: 13, scope: !1238)
!1238 = !DILexicalBlockFile(scope: !1228, file: !351, discriminator: 4)
!1239 = !DILocation(line: 996, column: 7, scope: !1238)
!1240 = !DILocation(line: 997, column: 16, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1228, file: !351, line: 996, column: 33)
!1242 = !DILocation(line: 996, column: 7, scope: !1243)
!1243 = !DILexicalBlockFile(scope: !1228, file: !351, discriminator: 5)
!1244 = distinct !{!1244, !1230}
!1245 = !DILocation(line: 999, column: 6, scope: !1228)
!1246 = !DILocation(line: 1000, column: 4, scope: !1228)
!1247 = !DILocation(line: 1002, column: 46, scope: !1199)
!1248 = !DILocation(line: 1002, column: 52, scope: !1199)
!1249 = !DILocation(line: 1002, column: 45, scope: !1199)
!1250 = !DILocation(line: 1002, column: 43, scope: !1199)
!1251 = !DILocation(line: 1002, column: 21, scope: !1199)
!1252 = !DILocation(line: 1002, column: 11, scope: !1199)
!1253 = !DILocation(line: 1002, column: 9, scope: !1199)
!1254 = !DILocation(line: 1003, column: 8, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1199, file: !351, line: 1003, column: 8)
!1256 = !DILocation(line: 1003, column: 13, scope: !1255)
!1257 = !DILocation(line: 1003, column: 8, scope: !1199)
!1258 = !DILocation(line: 1004, column: 8, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1255, file: !351, line: 1003, column: 21)
!1260 = !DILocation(line: 1004, column: 12, scope: !1259)
!1261 = !DILocation(line: 1005, column: 7, scope: !1259)
!1262 = !DILocation(line: 1007, column: 8, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1199, file: !351, line: 1007, column: 8)
!1264 = !DILocation(line: 1007, column: 8, scope: !1199)
!1265 = !DILocation(line: 1008, column: 8, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1263, file: !351, line: 1007, column: 14)
!1267 = !DILocation(line: 1008, column: 12, scope: !1266)
!1268 = !DILocation(line: 1009, column: 11, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1266, file: !351, line: 1009, column: 11)
!1270 = !DILocation(line: 1009, column: 17, scope: !1269)
!1271 = !DILocation(line: 1009, column: 11, scope: !1266)
!1272 = !DILocation(line: 1010, column: 37, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !351, line: 1010, column: 14)
!1274 = distinct !DILexicalBlock(scope: !1269, file: !351, line: 1009, column: 22)
!1275 = !DILocation(line: 1010, column: 44, scope: !1273)
!1276 = !DILocation(line: 1010, column: 15, scope: !1273)
!1277 = !DILocation(line: 1010, column: 14, scope: !1274)
!1278 = !DILocation(line: 1011, column: 13, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1273, file: !351, line: 1010, column: 54)
!1280 = !DILocation(line: 1013, column: 9, scope: !1274)
!1281 = !DILocation(line: 1014, column: 17, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1274, file: !351, line: 1014, column: 10)
!1283 = !DILocation(line: 1014, column: 15, scope: !1282)
!1284 = !DILocation(line: 1014, column: 22, scope: !1285)
!1285 = !DILexicalBlockFile(scope: !1286, file: !351, discriminator: 1)
!1286 = distinct !DILexicalBlock(scope: !1282, file: !351, line: 1014, column: 10)
!1287 = !DILocation(line: 1014, column: 26, scope: !1285)
!1288 = !DILocation(line: 1014, column: 24, scope: !1285)
!1289 = !DILocation(line: 1014, column: 10, scope: !1285)
!1290 = !DILocation(line: 1015, column: 39, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !351, line: 1015, column: 17)
!1292 = distinct !DILexicalBlock(scope: !1286, file: !351, line: 1014, column: 38)
!1293 = !DILocation(line: 1015, column: 39, scope: !1294)
!1294 = !DILexicalBlockFile(scope: !1291, file: !351, discriminator: 1)
!1295 = !DILocation(line: 1015, column: 39, scope: !1296)
!1296 = !DILexicalBlockFile(scope: !1291, file: !351, discriminator: 2)
!1297 = !DILocation(line: 1015, column: 39, scope: !1298)
!1298 = !DILexicalBlockFile(scope: !1291, file: !351, discriminator: 3)
!1299 = !DILocation(line: 1015, column: 65, scope: !1298)
!1300 = !DILocation(line: 1015, column: 60, scope: !1298)
!1301 = !DILocation(line: 1015, column: 18, scope: !1298)
!1302 = !DILocation(line: 1015, column: 17, scope: !1298)
!1303 = !DILocation(line: 1016, column: 15, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1291, file: !351, line: 1015, column: 70)
!1305 = !DILocation(line: 1017, column: 16, scope: !1304)
!1306 = !DILocation(line: 1019, column: 10, scope: !1292)
!1307 = !DILocation(line: 1014, column: 34, scope: !1308)
!1308 = !DILexicalBlockFile(scope: !1286, file: !351, discriminator: 2)
!1309 = !DILocation(line: 1014, column: 10, scope: !1308)
!1310 = distinct !{!1310, !1311}
!1311 = !DILocation(line: 1014, column: 10, scope: !1274)
!1312 = !DILocation(line: 1020, column: 9, scope: !1274)
!1313 = !DILocation(line: 1021, column: 7, scope: !1274)
!1314 = !DILocation(line: 1022, column: 12, scope: !1266)
!1315 = !DILocation(line: 1022, column: 7, scope: !1266)
!1316 = !DILocation(line: 1022, column: 19, scope: !1266)
!1317 = !DILocation(line: 1023, column: 12, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1266, file: !351, line: 1023, column: 10)
!1319 = !DILocation(line: 1023, column: 11, scope: !1318)
!1320 = !DILocation(line: 1023, column: 16, scope: !1318)
!1321 = !DILocation(line: 1023, column: 10, scope: !1266)
!1322 = !DILocation(line: 1024, column: 10, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1318, file: !351, line: 1023, column: 22)
!1324 = !DILocation(line: 1026, column: 4, scope: !1266)
!1325 = !DILocation(line: 1028, column: 16, scope: !1199)
!1326 = !DILocation(line: 1028, column: 22, scope: !1199)
!1327 = !DILocation(line: 1028, column: 10, scope: !1199)
!1328 = !DILocation(line: 1028, column: 8, scope: !1199)
!1329 = !DILocation(line: 1028, column: 4, scope: !1199)
!1330 = !DILocation(line: 1031, column: 24, scope: !1199)
!1331 = !DILocation(line: 1031, column: 4, scope: !1199)
!1332 = !DILocation(line: 1032, column: 15, scope: !1199)
!1333 = !DILocation(line: 1032, column: 4, scope: !1199)
!1334 = !DILocation(line: 1034, column: 11, scope: !1199)
!1335 = !DILocation(line: 1034, column: 4, scope: !1199)
!1336 = distinct !DISubprogram(name: "Util_FreeStringList", scope: !1337, file: !1337, line: 368, type: !1338, isLocal: true, isDefinition: true, scopeLine: 370, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!1337 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/util.h", directory: "/home/lichi/Desktop/open-vm-tools/line663")
!1338 = !DISubroutineType(types: !1339)
!1339 = !{null, !337, !1340}
!1340 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !367, line: 102, baseType: !1341)
!1341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !396, line: 172, baseType: !397)
!1342 = !DILocalVariable(name: "list", arg: 1, scope: !1336, file: !1337, line: 368, type: !337)
!1343 = !DILocation(line: 368, column: 28, scope: !1336)
!1344 = !DILocalVariable(name: "length", arg: 2, scope: !1336, file: !1337, line: 369, type: !1340)
!1345 = !DILocation(line: 369, column: 29, scope: !1336)
!1346 = !DILocation(line: 371, column: 28, scope: !1336)
!1347 = !DILocation(line: 371, column: 34, scope: !1336)
!1348 = !DILocation(line: 371, column: 4, scope: !1336)
!1349 = !DILocation(line: 372, column: 1, scope: !1336)
!1350 = distinct !DISubprogram(name: "Posix_Execlp", scope: !351, file: !351, line: 1056, type: !1200, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!1351 = !DILocalVariable(name: "fileName", arg: 1, scope: !1350, file: !351, line: 1056, type: !429)
!1352 = !DILocation(line: 1056, column: 26, scope: !1350)
!1353 = !DILocalVariable(name: "arg0", arg: 2, scope: !1350, file: !351, line: 1057, type: !429)
!1354 = !DILocation(line: 1057, column: 26, scope: !1350)
!1355 = !DILocalVariable(name: "ret", scope: !1350, file: !351, line: 1060, type: !363)
!1356 = !DILocation(line: 1060, column: 8, scope: !1350)
!1357 = !DILocalVariable(name: "file", scope: !1350, file: !351, line: 1061, type: !338)
!1358 = !DILocation(line: 1061, column: 10, scope: !1350)
!1359 = !DILocalVariable(name: "vl", scope: !1350, file: !351, line: 1062, type: !472)
!1360 = !DILocation(line: 1062, column: 12, scope: !1350)
!1361 = !DILocalVariable(name: "argv", scope: !1350, file: !351, line: 1063, type: !337)
!1362 = !DILocation(line: 1063, column: 11, scope: !1350)
!1363 = !DILocalVariable(name: "i", scope: !1350, file: !351, line: 1064, type: !363)
!1364 = !DILocation(line: 1064, column: 8, scope: !1350)
!1365 = !DILocalVariable(name: "count", scope: !1350, file: !351, line: 1064, type: !363)
!1366 = !DILocation(line: 1064, column: 11, scope: !1350)
!1367 = !DILocation(line: 1066, column: 31, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1350, file: !351, line: 1066, column: 8)
!1369 = !DILocation(line: 1066, column: 9, scope: !1368)
!1370 = !DILocation(line: 1066, column: 8, scope: !1350)
!1371 = !DILocation(line: 1067, column: 7, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1368, file: !351, line: 1066, column: 49)
!1373 = !DILocation(line: 1070, column: 8, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1350, file: !351, line: 1070, column: 8)
!1375 = !DILocation(line: 1070, column: 8, scope: !1350)
!1376 = !DILocation(line: 1071, column: 13, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1374, file: !351, line: 1070, column: 14)
!1378 = !DILocation(line: 1072, column: 6, scope: !1377)
!1379 = !DILocation(line: 1073, column: 7, scope: !1377)
!1380 = !DILocation(line: 1073, column: 13, scope: !1381)
!1381 = !DILexicalBlockFile(scope: !1377, file: !351, discriminator: 1)
!1382 = !DILocation(line: 1073, column: 13, scope: !1383)
!1383 = !DILexicalBlockFile(scope: !1377, file: !351, discriminator: 2)
!1384 = !DILocation(line: 1073, column: 13, scope: !1385)
!1385 = !DILexicalBlockFile(scope: !1377, file: !351, discriminator: 3)
!1386 = !DILocation(line: 1073, column: 13, scope: !1387)
!1387 = !DILexicalBlockFile(scope: !1377, file: !351, discriminator: 4)
!1388 = !DILocation(line: 1073, column: 7, scope: !1387)
!1389 = !DILocation(line: 1074, column: 16, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1377, file: !351, line: 1073, column: 33)
!1391 = !DILocation(line: 1073, column: 7, scope: !1392)
!1392 = !DILexicalBlockFile(scope: !1377, file: !351, discriminator: 5)
!1393 = distinct !{!1393, !1379}
!1394 = !DILocation(line: 1076, column: 6, scope: !1377)
!1395 = !DILocation(line: 1077, column: 4, scope: !1377)
!1396 = !DILocation(line: 1079, column: 46, scope: !1350)
!1397 = !DILocation(line: 1079, column: 52, scope: !1350)
!1398 = !DILocation(line: 1079, column: 45, scope: !1350)
!1399 = !DILocation(line: 1079, column: 43, scope: !1350)
!1400 = !DILocation(line: 1079, column: 21, scope: !1350)
!1401 = !DILocation(line: 1079, column: 11, scope: !1350)
!1402 = !DILocation(line: 1079, column: 9, scope: !1350)
!1403 = !DILocation(line: 1080, column: 8, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1350, file: !351, line: 1080, column: 8)
!1405 = !DILocation(line: 1080, column: 13, scope: !1404)
!1406 = !DILocation(line: 1080, column: 8, scope: !1350)
!1407 = !DILocation(line: 1081, column: 8, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1404, file: !351, line: 1080, column: 21)
!1409 = !DILocation(line: 1081, column: 12, scope: !1408)
!1410 = !DILocation(line: 1082, column: 7, scope: !1408)
!1411 = !DILocation(line: 1084, column: 8, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1350, file: !351, line: 1084, column: 8)
!1413 = !DILocation(line: 1084, column: 8, scope: !1350)
!1414 = !DILocation(line: 1085, column: 8, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1412, file: !351, line: 1084, column: 14)
!1416 = !DILocation(line: 1085, column: 12, scope: !1415)
!1417 = !DILocation(line: 1086, column: 11, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1415, file: !351, line: 1086, column: 11)
!1419 = !DILocation(line: 1086, column: 17, scope: !1418)
!1420 = !DILocation(line: 1086, column: 11, scope: !1415)
!1421 = !DILocation(line: 1087, column: 37, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !351, line: 1087, column: 14)
!1423 = distinct !DILexicalBlock(scope: !1418, file: !351, line: 1086, column: 22)
!1424 = !DILocation(line: 1087, column: 44, scope: !1422)
!1425 = !DILocation(line: 1087, column: 15, scope: !1422)
!1426 = !DILocation(line: 1087, column: 14, scope: !1423)
!1427 = !DILocation(line: 1088, column: 13, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1422, file: !351, line: 1087, column: 54)
!1429 = !DILocation(line: 1090, column: 9, scope: !1423)
!1430 = !DILocation(line: 1091, column: 17, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1423, file: !351, line: 1091, column: 10)
!1432 = !DILocation(line: 1091, column: 15, scope: !1431)
!1433 = !DILocation(line: 1091, column: 22, scope: !1434)
!1434 = !DILexicalBlockFile(scope: !1435, file: !351, discriminator: 1)
!1435 = distinct !DILexicalBlock(scope: !1431, file: !351, line: 1091, column: 10)
!1436 = !DILocation(line: 1091, column: 26, scope: !1434)
!1437 = !DILocation(line: 1091, column: 24, scope: !1434)
!1438 = !DILocation(line: 1091, column: 10, scope: !1434)
!1439 = !DILocation(line: 1092, column: 39, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !351, line: 1092, column: 17)
!1441 = distinct !DILexicalBlock(scope: !1435, file: !351, line: 1091, column: 38)
!1442 = !DILocation(line: 1092, column: 39, scope: !1443)
!1443 = !DILexicalBlockFile(scope: !1440, file: !351, discriminator: 1)
!1444 = !DILocation(line: 1092, column: 39, scope: !1445)
!1445 = !DILexicalBlockFile(scope: !1440, file: !351, discriminator: 2)
!1446 = !DILocation(line: 1092, column: 39, scope: !1447)
!1447 = !DILexicalBlockFile(scope: !1440, file: !351, discriminator: 3)
!1448 = !DILocation(line: 1092, column: 65, scope: !1447)
!1449 = !DILocation(line: 1092, column: 60, scope: !1447)
!1450 = !DILocation(line: 1092, column: 18, scope: !1447)
!1451 = !DILocation(line: 1092, column: 17, scope: !1447)
!1452 = !DILocation(line: 1093, column: 15, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1440, file: !351, line: 1092, column: 70)
!1454 = !DILocation(line: 1094, column: 16, scope: !1453)
!1455 = !DILocation(line: 1096, column: 10, scope: !1441)
!1456 = !DILocation(line: 1091, column: 34, scope: !1457)
!1457 = !DILexicalBlockFile(scope: !1435, file: !351, discriminator: 2)
!1458 = !DILocation(line: 1091, column: 10, scope: !1457)
!1459 = distinct !{!1459, !1460}
!1460 = !DILocation(line: 1091, column: 10, scope: !1423)
!1461 = !DILocation(line: 1097, column: 9, scope: !1423)
!1462 = !DILocation(line: 1098, column: 7, scope: !1423)
!1463 = !DILocation(line: 1099, column: 12, scope: !1415)
!1464 = !DILocation(line: 1099, column: 7, scope: !1415)
!1465 = !DILocation(line: 1099, column: 19, scope: !1415)
!1466 = !DILocation(line: 1100, column: 12, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1415, file: !351, line: 1100, column: 10)
!1468 = !DILocation(line: 1100, column: 11, scope: !1467)
!1469 = !DILocation(line: 1100, column: 16, scope: !1467)
!1470 = !DILocation(line: 1100, column: 10, scope: !1415)
!1471 = !DILocation(line: 1101, column: 10, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1467, file: !351, line: 1100, column: 22)
!1473 = !DILocation(line: 1103, column: 4, scope: !1415)
!1474 = !DILocation(line: 1105, column: 17, scope: !1350)
!1475 = !DILocation(line: 1105, column: 23, scope: !1350)
!1476 = !DILocation(line: 1105, column: 10, scope: !1350)
!1477 = !DILocation(line: 1105, column: 8, scope: !1350)
!1478 = !DILocation(line: 1105, column: 4, scope: !1350)
!1479 = !DILocation(line: 1108, column: 24, scope: !1350)
!1480 = !DILocation(line: 1108, column: 4, scope: !1350)
!1481 = !DILocation(line: 1109, column: 15, scope: !1350)
!1482 = !DILocation(line: 1109, column: 4, scope: !1350)
!1483 = !DILocation(line: 1111, column: 11, scope: !1350)
!1484 = !DILocation(line: 1111, column: 4, scope: !1350)
!1485 = distinct !DISubprogram(name: "Posix_Execv", scope: !351, file: !351, line: 1133, type: !1486, isLocal: false, isDefinition: true, scopeLine: 1135, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!363, !429, !1488}
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64, align: 64)
!1489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!1490 = !DILocalVariable(name: "pathName", arg: 1, scope: !1485, file: !351, line: 1133, type: !429)
!1491 = !DILocation(line: 1133, column: 25, scope: !1485)
!1492 = !DILocalVariable(name: "argVal", arg: 2, scope: !1485, file: !351, line: 1134, type: !1488)
!1493 = !DILocation(line: 1134, column: 25, scope: !1485)
!1494 = !DILocalVariable(name: "ret", scope: !1485, file: !351, line: 1136, type: !363)
!1495 = !DILocation(line: 1136, column: 8, scope: !1485)
!1496 = !DILocalVariable(name: "path", scope: !1485, file: !351, line: 1137, type: !338)
!1497 = !DILocation(line: 1137, column: 10, scope: !1485)
!1498 = !DILocalVariable(name: "argv", scope: !1485, file: !351, line: 1138, type: !337)
!1499 = !DILocation(line: 1138, column: 11, scope: !1485)
!1500 = !DILocation(line: 1140, column: 31, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1485, file: !351, line: 1140, column: 8)
!1502 = !DILocation(line: 1140, column: 9, scope: !1501)
!1503 = !DILocation(line: 1140, column: 8, scope: !1485)
!1504 = !DILocation(line: 1141, column: 7, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1501, file: !351, line: 1140, column: 49)
!1506 = !DILocation(line: 1143, column: 35, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1485, file: !351, line: 1143, column: 8)
!1508 = !DILocation(line: 1143, column: 9, scope: !1507)
!1509 = !DILocation(line: 1143, column: 8, scope: !1485)
!1510 = !DILocation(line: 1144, column: 7, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1507, file: !351, line: 1143, column: 51)
!1512 = !DILocation(line: 1147, column: 16, scope: !1485)
!1513 = !DILocation(line: 1147, column: 22, scope: !1485)
!1514 = !DILocation(line: 1147, column: 10, scope: !1485)
!1515 = !DILocation(line: 1147, column: 8, scope: !1485)
!1516 = !DILocation(line: 1147, column: 4, scope: !1485)
!1517 = !DILocation(line: 1150, column: 24, scope: !1485)
!1518 = !DILocation(line: 1150, column: 4, scope: !1485)
!1519 = !DILocation(line: 1151, column: 15, scope: !1485)
!1520 = !DILocation(line: 1151, column: 4, scope: !1485)
!1521 = !DILocation(line: 1153, column: 11, scope: !1485)
!1522 = !DILocation(line: 1153, column: 4, scope: !1485)
!1523 = distinct !DISubprogram(name: "PosixConvertToCurrentList", scope: !426, file: !426, line: 100, type: !1524, isLocal: true, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!513, !1488, !1526}
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64, align: 64)
!1527 = !DILocalVariable(name: "in", arg: 1, scope: !1523, file: !426, line: 100, type: !1488)
!1528 = !DILocation(line: 100, column: 40, scope: !1523)
!1529 = !DILocalVariable(name: "out", arg: 2, scope: !1523, file: !426, line: 101, type: !1526)
!1530 = !DILocation(line: 101, column: 35, scope: !1523)
!1531 = !DILocalVariable(name: "e", scope: !1523, file: !426, line: 103, type: !363)
!1532 = !DILocation(line: 103, column: 8, scope: !1523)
!1533 = !DILocation(line: 103, column: 13, scope: !1523)
!1534 = !DILocation(line: 103, column: 12, scope: !1523)
!1535 = !DILocalVariable(name: "p", scope: !1523, file: !426, line: 104, type: !337)
!1536 = !DILocation(line: 104, column: 11, scope: !1523)
!1537 = !DILocalVariable(name: "success", scope: !1523, file: !426, line: 105, type: !513)
!1538 = !DILocation(line: 105, column: 9, scope: !1523)
!1539 = !DILocation(line: 107, column: 8, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1523, file: !426, line: 107, column: 8)
!1541 = !DILocation(line: 107, column: 11, scope: !1540)
!1542 = !DILocation(line: 107, column: 8, scope: !1523)
!1543 = !DILocation(line: 108, column: 9, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1540, file: !426, line: 107, column: 19)
!1545 = !DILocation(line: 109, column: 15, scope: !1544)
!1546 = !DILocation(line: 110, column: 4, scope: !1544)
!1547 = !DILocation(line: 111, column: 32, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1540, file: !426, line: 110, column: 11)
!1549 = !DILocation(line: 111, column: 11, scope: !1548)
!1550 = !DILocation(line: 111, column: 9, scope: !1548)
!1551 = !DILocation(line: 112, column: 17, scope: !1548)
!1552 = !DILocation(line: 112, column: 19, scope: !1548)
!1553 = !DILocation(line: 112, column: 15, scope: !1548)
!1554 = !DILocation(line: 115, column: 9, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1523, file: !426, line: 115, column: 8)
!1556 = !DILocation(line: 115, column: 8, scope: !1523)
!1557 = !DILocation(line: 116, column: 9, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1555, file: !426, line: 115, column: 18)
!1559 = !DILocation(line: 117, column: 4, scope: !1558)
!1560 = !DILocation(line: 118, column: 11, scope: !1523)
!1561 = !DILocation(line: 118, column: 5, scope: !1523)
!1562 = !DILocation(line: 118, column: 9, scope: !1523)
!1563 = !DILocation(line: 119, column: 11, scope: !1523)
!1564 = !DILocation(line: 119, column: 5, scope: !1523)
!1565 = !DILocation(line: 119, column: 9, scope: !1523)
!1566 = !DILocation(line: 120, column: 11, scope: !1523)
!1567 = !DILocation(line: 120, column: 4, scope: !1523)
!1568 = distinct !DISubprogram(name: "Posix_Execve", scope: !351, file: !351, line: 1175, type: !1569, isLocal: false, isDefinition: true, scopeLine: 1178, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!363, !429, !1488, !1488}
!1571 = !DILocalVariable(name: "pathName", arg: 1, scope: !1568, file: !351, line: 1175, type: !429)
!1572 = !DILocation(line: 1175, column: 26, scope: !1568)
!1573 = !DILocalVariable(name: "argVal", arg: 2, scope: !1568, file: !351, line: 1176, type: !1488)
!1574 = !DILocation(line: 1176, column: 26, scope: !1568)
!1575 = !DILocalVariable(name: "envPtr", arg: 3, scope: !1568, file: !351, line: 1177, type: !1488)
!1576 = !DILocation(line: 1177, column: 26, scope: !1568)
!1577 = !DILocalVariable(name: "ret", scope: !1568, file: !351, line: 1179, type: !363)
!1578 = !DILocation(line: 1179, column: 8, scope: !1568)
!1579 = !DILocalVariable(name: "path", scope: !1568, file: !351, line: 1180, type: !338)
!1580 = !DILocation(line: 1180, column: 10, scope: !1568)
!1581 = !DILocalVariable(name: "argv", scope: !1568, file: !351, line: 1181, type: !337)
!1582 = !DILocation(line: 1181, column: 11, scope: !1568)
!1583 = !DILocalVariable(name: "envp", scope: !1568, file: !351, line: 1182, type: !337)
!1584 = !DILocation(line: 1182, column: 11, scope: !1568)
!1585 = !DILocation(line: 1184, column: 31, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1568, file: !351, line: 1184, column: 8)
!1587 = !DILocation(line: 1184, column: 9, scope: !1586)
!1588 = !DILocation(line: 1184, column: 8, scope: !1568)
!1589 = !DILocation(line: 1185, column: 7, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1586, file: !351, line: 1184, column: 49)
!1591 = !DILocation(line: 1187, column: 35, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1568, file: !351, line: 1187, column: 8)
!1593 = !DILocation(line: 1187, column: 9, scope: !1592)
!1594 = !DILocation(line: 1187, column: 8, scope: !1568)
!1595 = !DILocation(line: 1188, column: 7, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1592, file: !351, line: 1187, column: 51)
!1597 = !DILocation(line: 1190, column: 35, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1568, file: !351, line: 1190, column: 8)
!1599 = !DILocation(line: 1190, column: 9, scope: !1598)
!1600 = !DILocation(line: 1190, column: 8, scope: !1568)
!1601 = !DILocation(line: 1191, column: 7, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1598, file: !351, line: 1190, column: 51)
!1603 = !DILocation(line: 1194, column: 17, scope: !1568)
!1604 = !DILocation(line: 1194, column: 23, scope: !1568)
!1605 = !DILocation(line: 1194, column: 29, scope: !1568)
!1606 = !DILocation(line: 1194, column: 10, scope: !1568)
!1607 = !DILocation(line: 1194, column: 8, scope: !1568)
!1608 = !DILocation(line: 1194, column: 4, scope: !1568)
!1609 = !DILocation(line: 1197, column: 24, scope: !1568)
!1610 = !DILocation(line: 1197, column: 4, scope: !1568)
!1611 = !DILocation(line: 1198, column: 24, scope: !1568)
!1612 = !DILocation(line: 1198, column: 4, scope: !1568)
!1613 = !DILocation(line: 1199, column: 15, scope: !1568)
!1614 = !DILocation(line: 1199, column: 4, scope: !1568)
!1615 = !DILocation(line: 1201, column: 11, scope: !1568)
!1616 = !DILocation(line: 1201, column: 4, scope: !1568)
!1617 = distinct !DISubprogram(name: "Posix_Execvp", scope: !351, file: !351, line: 1223, type: !1486, isLocal: false, isDefinition: true, scopeLine: 1225, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!1618 = !DILocalVariable(name: "fileName", arg: 1, scope: !1617, file: !351, line: 1223, type: !429)
!1619 = !DILocation(line: 1223, column: 26, scope: !1617)
!1620 = !DILocalVariable(name: "argVal", arg: 2, scope: !1617, file: !351, line: 1224, type: !1488)
!1621 = !DILocation(line: 1224, column: 26, scope: !1617)
!1622 = !DILocalVariable(name: "ret", scope: !1617, file: !351, line: 1226, type: !363)
!1623 = !DILocation(line: 1226, column: 8, scope: !1617)
!1624 = !DILocalVariable(name: "file", scope: !1617, file: !351, line: 1227, type: !338)
!1625 = !DILocation(line: 1227, column: 10, scope: !1617)
!1626 = !DILocalVariable(name: "argv", scope: !1617, file: !351, line: 1228, type: !337)
!1627 = !DILocation(line: 1228, column: 11, scope: !1617)
!1628 = !DILocation(line: 1230, column: 31, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1617, file: !351, line: 1230, column: 8)
!1630 = !DILocation(line: 1230, column: 9, scope: !1629)
!1631 = !DILocation(line: 1230, column: 8, scope: !1617)
!1632 = !DILocation(line: 1231, column: 7, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1629, file: !351, line: 1230, column: 49)
!1634 = !DILocation(line: 1233, column: 35, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1617, file: !351, line: 1233, column: 8)
!1636 = !DILocation(line: 1233, column: 9, scope: !1635)
!1637 = !DILocation(line: 1233, column: 8, scope: !1617)
!1638 = !DILocation(line: 1234, column: 7, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1635, file: !351, line: 1233, column: 51)
!1640 = !DILocation(line: 1237, column: 17, scope: !1617)
!1641 = !DILocation(line: 1237, column: 23, scope: !1617)
!1642 = !DILocation(line: 1237, column: 10, scope: !1617)
!1643 = !DILocation(line: 1237, column: 8, scope: !1617)
!1644 = !DILocation(line: 1237, column: 4, scope: !1617)
!1645 = !DILocation(line: 1240, column: 24, scope: !1617)
!1646 = !DILocation(line: 1240, column: 4, scope: !1617)
!1647 = !DILocation(line: 1241, column: 15, scope: !1617)
!1648 = !DILocation(line: 1241, column: 4, scope: !1617)
!1649 = !DILocation(line: 1243, column: 11, scope: !1617)
!1650 = !DILocation(line: 1243, column: 4, scope: !1617)
!1651 = distinct !DISubprogram(name: "Posix_System", scope: !351, file: !351, line: 1306, type: !735, isLocal: false, isDefinition: true, scopeLine: 1307, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!1652 = !DILocalVariable(name: "command", arg: 1, scope: !1651, file: !351, line: 1306, type: !429)
!1653 = !DILocation(line: 1306, column: 26, scope: !1651)
!1654 = !DILocalVariable(name: "tmpcommand", scope: !1651, file: !351, line: 1308, type: !338)
!1655 = !DILocation(line: 1308, column: 10, scope: !1651)
!1656 = !DILocalVariable(name: "ret", scope: !1651, file: !351, line: 1309, type: !363)
!1657 = !DILocation(line: 1309, column: 8, scope: !1651)
!1658 = !DILocation(line: 1311, column: 31, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1651, file: !351, line: 1311, column: 8)
!1660 = !DILocation(line: 1311, column: 9, scope: !1659)
!1661 = !DILocation(line: 1311, column: 8, scope: !1651)
!1662 = !DILocation(line: 1312, column: 7, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1659, file: !351, line: 1311, column: 54)
!1664 = !DILocation(line: 1332, column: 17, scope: !1651)
!1665 = !DILocation(line: 1332, column: 10, scope: !1651)
!1666 = !DILocation(line: 1332, column: 8, scope: !1651)
!1667 = !DILocation(line: 1335, column: 15, scope: !1651)
!1668 = !DILocation(line: 1335, column: 4, scope: !1651)
!1669 = !DILocation(line: 1337, column: 11, scope: !1651)
!1670 = !DILocation(line: 1337, column: 4, scope: !1651)
!1671 = !DILocation(line: 1338, column: 1, scope: !1651)
!1672 = distinct !DISubprogram(name: "Posix_Mkdir", scope: !351, file: !351, line: 1359, type: !574, isLocal: false, isDefinition: true, scopeLine: 1361, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!1673 = !DILocalVariable(name: "pathName", arg: 1, scope: !1672, file: !351, line: 1359, type: !429)
!1674 = !DILocation(line: 1359, column: 25, scope: !1672)
!1675 = !DILocalVariable(name: "mode", arg: 2, scope: !1672, file: !351, line: 1360, type: !452)
!1676 = !DILocation(line: 1360, column: 20, scope: !1672)
!1677 = !DILocalVariable(name: "path", scope: !1672, file: !351, line: 1362, type: !338)
!1678 = !DILocation(line: 1362, column: 10, scope: !1672)
!1679 = !DILocalVariable(name: "ret", scope: !1672, file: !351, line: 1363, type: !363)
!1680 = !DILocation(line: 1363, column: 8, scope: !1672)
!1681 = !DILocation(line: 1365, column: 31, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1672, file: !351, line: 1365, column: 8)
!1683 = !DILocation(line: 1365, column: 9, scope: !1682)
!1684 = !DILocation(line: 1365, column: 8, scope: !1672)
!1685 = !DILocation(line: 1366, column: 7, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1682, file: !351, line: 1365, column: 49)
!1687 = !DILocation(line: 1369, column: 16, scope: !1672)
!1688 = !DILocation(line: 1369, column: 22, scope: !1672)
!1689 = !DILocation(line: 1369, column: 10, scope: !1672)
!1690 = !DILocation(line: 1369, column: 8, scope: !1672)
!1691 = !DILocation(line: 1371, column: 15, scope: !1672)
!1692 = !DILocation(line: 1371, column: 4, scope: !1672)
!1693 = !DILocation(line: 1373, column: 11, scope: !1672)
!1694 = !DILocation(line: 1373, column: 4, scope: !1672)
!1695 = !DILocation(line: 1374, column: 1, scope: !1672)
!1696 = distinct !DISubprogram(name: "Posix_Chdir", scope: !351, file: !351, line: 1395, type: !735, isLocal: false, isDefinition: true, scopeLine: 1396, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!1697 = !DILocalVariable(name: "pathName", arg: 1, scope: !1696, file: !351, line: 1395, type: !429)
!1698 = !DILocation(line: 1395, column: 25, scope: !1696)
!1699 = !DILocalVariable(name: "path", scope: !1696, file: !351, line: 1397, type: !338)
!1700 = !DILocation(line: 1397, column: 10, scope: !1696)
!1701 = !DILocalVariable(name: "ret", scope: !1696, file: !351, line: 1398, type: !363)
!1702 = !DILocation(line: 1398, column: 8, scope: !1696)
!1703 = !DILocation(line: 1400, column: 31, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1696, file: !351, line: 1400, column: 8)
!1705 = !DILocation(line: 1400, column: 9, scope: !1704)
!1706 = !DILocation(line: 1400, column: 8, scope: !1696)
!1707 = !DILocation(line: 1401, column: 7, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1704, file: !351, line: 1400, column: 49)
!1709 = !DILocation(line: 1404, column: 16, scope: !1696)
!1710 = !DILocation(line: 1404, column: 10, scope: !1696)
!1711 = !DILocation(line: 1404, column: 8, scope: !1696)
!1712 = !DILocation(line: 1406, column: 15, scope: !1696)
!1713 = !DILocation(line: 1406, column: 4, scope: !1696)
!1714 = !DILocation(line: 1408, column: 11, scope: !1696)
!1715 = !DILocation(line: 1408, column: 4, scope: !1696)
!1716 = !DILocation(line: 1409, column: 1, scope: !1696)
!1717 = distinct !DISubprogram(name: "Posix_RealPath", scope: !351, file: !351, line: 1430, type: !1718, isLocal: false, isDefinition: true, scopeLine: 1431, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!338, !429}
!1720 = !DILocalVariable(name: "pathName", arg: 1, scope: !1717, file: !351, line: 1430, type: !429)
!1721 = !DILocation(line: 1430, column: 28, scope: !1717)
!1722 = !DILocalVariable(name: "path", scope: !1717, file: !351, line: 1432, type: !338)
!1723 = !DILocation(line: 1432, column: 10, scope: !1717)
!1724 = !DILocalVariable(name: "rpath", scope: !1717, file: !351, line: 1433, type: !1725)
!1725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 32768, align: 8, elements: !1726)
!1726 = !{!1727}
!1727 = !DISubrange(count: 4096)
!1728 = !DILocation(line: 1433, column: 9, scope: !1717)
!1729 = !DILocalVariable(name: "p", scope: !1717, file: !351, line: 1434, type: !338)
!1730 = !DILocation(line: 1434, column: 10, scope: !1717)
!1731 = !DILocation(line: 1436, column: 31, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1717, file: !351, line: 1436, column: 8)
!1733 = !DILocation(line: 1436, column: 9, scope: !1732)
!1734 = !DILocation(line: 1436, column: 8, scope: !1717)
!1735 = !DILocation(line: 1437, column: 7, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1732, file: !351, line: 1436, column: 49)
!1737 = !DILocation(line: 1440, column: 17, scope: !1717)
!1738 = !DILocation(line: 1440, column: 23, scope: !1717)
!1739 = !DILocation(line: 1440, column: 8, scope: !1717)
!1740 = !DILocation(line: 1440, column: 6, scope: !1717)
!1741 = !DILocation(line: 1442, column: 15, scope: !1717)
!1742 = !DILocation(line: 1442, column: 4, scope: !1717)
!1743 = !DILocation(line: 1444, column: 11, scope: !1717)
!1744 = !DILocation(line: 1444, column: 13, scope: !1717)
!1745 = !DILocation(line: 1444, column: 11, scope: !1746)
!1746 = !DILexicalBlockFile(scope: !1717, file: !351, discriminator: 1)
!1747 = !DILocation(line: 1444, column: 43, scope: !1748)
!1748 = !DILexicalBlockFile(scope: !1717, file: !351, discriminator: 2)
!1749 = !DILocation(line: 1444, column: 29, scope: !1748)
!1750 = !DILocation(line: 1444, column: 11, scope: !1748)
!1751 = !DILocation(line: 1444, column: 11, scope: !1752)
!1752 = !DILexicalBlockFile(scope: !1717, file: !351, discriminator: 3)
!1753 = !DILocation(line: 1444, column: 4, scope: !1752)
!1754 = !DILocation(line: 1445, column: 1, scope: !1717)
!1755 = distinct !DISubprogram(name: "Unicode_Alloc", scope: !1756, file: !1756, line: 111, type: !1757, isLocal: true, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!1756 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/unicodeBase.h", directory: "/home/lichi/Desktop/open-vm-tools/line663")
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!338, !1759, !1761}
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64, align: 64)
!1760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1761 = !DIDerivedType(tag: DW_TAG_typedef, name: "StringEncoding", file: !4, line: 445, baseType: !3)
!1762 = !DILocalVariable(name: "buffer", arg: 1, scope: !1755, file: !1756, line: 111, type: !1759)
!1763 = !DILocation(line: 111, column: 27, scope: !1755)
!1764 = !DILocalVariable(name: "encoding", arg: 2, scope: !1755, file: !1756, line: 112, type: !1761)
!1765 = !DILocation(line: 112, column: 30, scope: !1755)
!1766 = !DILocation(line: 114, column: 35, scope: !1755)
!1767 = !DILocation(line: 114, column: 47, scope: !1755)
!1768 = !DILocation(line: 114, column: 11, scope: !1755)
!1769 = !DILocation(line: 114, column: 4, scope: !1755)
!1770 = distinct !DISubprogram(name: "Posix_ReadLink", scope: !351, file: !351, line: 1466, type: !1718, isLocal: false, isDefinition: true, scopeLine: 1467, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!1771 = !DILocalVariable(name: "pathName", arg: 1, scope: !1770, file: !351, line: 1466, type: !429)
!1772 = !DILocation(line: 1466, column: 28, scope: !1770)
!1773 = !DILocalVariable(name: "path", scope: !1770, file: !351, line: 1468, type: !338)
!1774 = !DILocation(line: 1468, column: 10, scope: !1770)
!1775 = !DILocalVariable(name: "result", scope: !1770, file: !351, line: 1469, type: !338)
!1776 = !DILocation(line: 1469, column: 10, scope: !1770)
!1777 = !DILocation(line: 1471, column: 30, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1770, file: !351, line: 1471, column: 8)
!1779 = !DILocation(line: 1471, column: 8, scope: !1778)
!1780 = !DILocation(line: 1471, column: 8, scope: !1770)
!1781 = !DILocalVariable(name: "size", scope: !1782, file: !351, line: 1472, type: !416)
!1782 = distinct !DILexicalBlock(scope: !1778, file: !351, line: 1471, column: 48)
!1783 = !DILocation(line: 1472, column: 14, scope: !1782)
!1784 = !DILocation(line: 1474, column: 7, scope: !1782)
!1785 = !DILocalVariable(name: "linkPath", scope: !1786, file: !351, line: 1475, type: !338)
!1786 = distinct !DILexicalBlock(scope: !1782, file: !351, line: 1474, column: 17)
!1787 = !DILocation(line: 1475, column: 16, scope: !1786)
!1788 = !DILocation(line: 1475, column: 44, scope: !1786)
!1789 = !DILocation(line: 1475, column: 27, scope: !1786)
!1790 = !DILocalVariable(name: "len", scope: !1786, file: !351, line: 1476, type: !1340)
!1791 = !DILocation(line: 1476, column: 18, scope: !1786)
!1792 = !DILocation(line: 1476, column: 33, scope: !1786)
!1793 = !DILocation(line: 1476, column: 39, scope: !1786)
!1794 = !DILocation(line: 1476, column: 49, scope: !1786)
!1795 = !DILocation(line: 1476, column: 24, scope: !1786)
!1796 = !DILocation(line: 1478, column: 14, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1786, file: !351, line: 1478, column: 14)
!1798 = !DILocation(line: 1478, column: 18, scope: !1797)
!1799 = !DILocation(line: 1478, column: 14, scope: !1786)
!1800 = !DILocation(line: 1479, column: 24, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1797, file: !351, line: 1478, column: 25)
!1802 = !DILocation(line: 1479, column: 13, scope: !1801)
!1803 = !DILocation(line: 1480, column: 13, scope: !1801)
!1804 = !DILocation(line: 1483, column: 14, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1786, file: !351, line: 1483, column: 14)
!1806 = !DILocation(line: 1483, column: 20, scope: !1805)
!1807 = !DILocation(line: 1483, column: 18, scope: !1805)
!1808 = !DILocation(line: 1483, column: 14, scope: !1786)
!1809 = !DILocation(line: 1484, column: 22, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1805, file: !351, line: 1483, column: 26)
!1811 = !DILocation(line: 1484, column: 13, scope: !1810)
!1812 = !DILocation(line: 1484, column: 27, scope: !1810)
!1813 = !DILocation(line: 1485, column: 36, scope: !1810)
!1814 = !DILocation(line: 1485, column: 22, scope: !1810)
!1815 = !DILocation(line: 1485, column: 20, scope: !1810)
!1816 = !DILocation(line: 1486, column: 24, scope: !1810)
!1817 = !DILocation(line: 1486, column: 13, scope: !1810)
!1818 = !DILocation(line: 1487, column: 13, scope: !1810)
!1819 = !DILocation(line: 1489, column: 21, scope: !1786)
!1820 = !DILocation(line: 1489, column: 10, scope: !1786)
!1821 = !DILocation(line: 1491, column: 15, scope: !1786)
!1822 = !DILocation(line: 1474, column: 7, scope: !1823)
!1823 = !DILexicalBlockFile(scope: !1782, file: !351, discriminator: 1)
!1824 = distinct !{!1824, !1784}
!1825 = !DILocation(line: 1493, column: 4, scope: !1782)
!1826 = !DILocation(line: 1495, column: 15, scope: !1770)
!1827 = !DILocation(line: 1495, column: 4, scope: !1770)
!1828 = !DILocation(line: 1497, column: 11, scope: !1770)
!1829 = !DILocation(line: 1497, column: 4, scope: !1770)
!1830 = distinct !DISubprogram(name: "Posix_Lstat", scope: !351, file: !351, line: 1519, type: !611, isLocal: false, isDefinition: true, scopeLine: 1521, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!1831 = !DILocalVariable(name: "pathName", arg: 1, scope: !1830, file: !351, line: 1519, type: !429)
!1832 = !DILocation(line: 1519, column: 25, scope: !1830)
!1833 = !DILocalVariable(name: "statbuf", arg: 2, scope: !1830, file: !351, line: 1520, type: !613)
!1834 = !DILocation(line: 1520, column: 26, scope: !1830)
!1835 = !DILocalVariable(name: "path", scope: !1830, file: !351, line: 1522, type: !338)
!1836 = !DILocation(line: 1522, column: 10, scope: !1830)
!1837 = !DILocalVariable(name: "ret", scope: !1830, file: !351, line: 1523, type: !363)
!1838 = !DILocation(line: 1523, column: 8, scope: !1830)
!1839 = !DILocation(line: 1525, column: 31, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1830, file: !351, line: 1525, column: 8)
!1841 = !DILocation(line: 1525, column: 9, scope: !1840)
!1842 = !DILocation(line: 1525, column: 8, scope: !1830)
!1843 = !DILocation(line: 1526, column: 7, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1840, file: !351, line: 1525, column: 49)
!1845 = !DILocation(line: 1529, column: 16, scope: !1830)
!1846 = !DILocation(line: 1529, column: 22, scope: !1830)
!1847 = !DILocation(line: 1529, column: 10, scope: !1830)
!1848 = !DILocation(line: 1529, column: 8, scope: !1830)
!1849 = !DILocation(line: 1531, column: 15, scope: !1830)
!1850 = !DILocation(line: 1531, column: 4, scope: !1830)
!1851 = !DILocation(line: 1533, column: 11, scope: !1830)
!1852 = !DILocation(line: 1533, column: 4, scope: !1830)
!1853 = !DILocation(line: 1534, column: 1, scope: !1830)
!1854 = distinct !DISubprogram(name: "Posix_OpenDir", scope: !351, file: !351, line: 1555, type: !1855, isLocal: false, isDefinition: true, scopeLine: 1556, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!1857, !429}
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64, align: 64)
!1858 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !1859, line: 127, baseType: !1860)
!1859 = !DIFile(filename: "/usr/include/dirent.h", directory: "/home/lichi/Desktop/open-vm-tools/line663")
!1860 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !1859, line: 127, flags: DIFlagFwdDecl)
!1861 = !DILocalVariable(name: "pathName", arg: 1, scope: !1854, file: !351, line: 1555, type: !429)
!1862 = !DILocation(line: 1555, column: 27, scope: !1854)
!1863 = !DILocalVariable(name: "path", scope: !1854, file: !351, line: 1557, type: !338)
!1864 = !DILocation(line: 1557, column: 10, scope: !1854)
!1865 = !DILocalVariable(name: "ret", scope: !1854, file: !351, line: 1558, type: !1857)
!1866 = !DILocation(line: 1558, column: 9, scope: !1854)
!1867 = !DILocation(line: 1560, column: 31, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1854, file: !351, line: 1560, column: 8)
!1869 = !DILocation(line: 1560, column: 9, scope: !1868)
!1870 = !DILocation(line: 1560, column: 8, scope: !1854)
!1871 = !DILocation(line: 1561, column: 7, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1868, file: !351, line: 1560, column: 49)
!1873 = !DILocation(line: 1564, column: 18, scope: !1854)
!1874 = !DILocation(line: 1564, column: 10, scope: !1854)
!1875 = !DILocation(line: 1564, column: 8, scope: !1854)
!1876 = !DILocation(line: 1566, column: 15, scope: !1854)
!1877 = !DILocation(line: 1566, column: 4, scope: !1854)
!1878 = !DILocation(line: 1568, column: 11, scope: !1854)
!1879 = !DILocation(line: 1568, column: 4, scope: !1854)
!1880 = !DILocation(line: 1569, column: 1, scope: !1854)
!1881 = distinct !DISubprogram(name: "Posix_Getenv", scope: !351, file: !351, line: 1591, type: !1718, isLocal: false, isDefinition: true, scopeLine: 1592, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!1882 = !DILocalVariable(name: "name", arg: 1, scope: !425, file: !426, line: 161, type: !429)
!1883 = !DILocation(line: 161, column: 29, scope: !425, inlinedAt: !1884)
!1884 = distinct !DILocation(line: 1606, column: 11, scope: !1885)
!1885 = !DILexicalBlockFile(scope: !1881, file: !351, discriminator: 1)
!1886 = !DILocalVariable(name: "value", arg: 2, scope: !425, file: !426, line: 162, type: !338)
!1887 = !DILocation(line: 162, column: 23, scope: !425, inlinedAt: !1884)
!1888 = !DILocalVariable(name: "ht", scope: !425, file: !426, line: 165, type: !1889)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64, align: 64)
!1890 = !DIDerivedType(tag: DW_TAG_typedef, name: "HashTable", file: !1891, line: 40, baseType: !1892)
!1891 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/hashTable.h", directory: "/home/lichi/Desktop/open-vm-tools/line663")
!1892 = !DICompositeType(tag: DW_TAG_structure_type, name: "HashTable", file: !1891, line: 40, flags: DIFlagFwdDecl)
!1893 = !DILocation(line: 165, column: 15, scope: !425, inlinedAt: !1884)
!1894 = !DILocalVariable(name: "oldValue", scope: !425, file: !426, line: 166, type: !338)
!1895 = !DILocation(line: 166, column: 10, scope: !425, inlinedAt: !1884)
!1896 = !DILocalVariable(name: "e", scope: !425, file: !426, line: 167, type: !1897)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64, align: 64)
!1898 = !DIDerivedType(tag: DW_TAG_typedef, name: "PosixEnvEntry", file: !426, line: 133, baseType: !1899)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PosixEnvEntry", file: !426, line: 130, size: 128, align: 64, elements: !1900)
!1900 = !{!1901, !1902}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1899, file: !426, line: 131, baseType: !431, size: 64, align: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "lastValue", scope: !1899, file: !426, line: 132, baseType: !431, size: 64, align: 64, offset: 64)
!1903 = !DILocation(line: 167, column: 19, scope: !425, inlinedAt: !1884)
!1904 = !DILocalVariable(name: "name", arg: 1, scope: !1881, file: !351, line: 1591, type: !429)
!1905 = !DILocation(line: 1591, column: 26, scope: !1881)
!1906 = !DILocalVariable(name: "rawName", scope: !1881, file: !351, line: 1593, type: !338)
!1907 = !DILocation(line: 1593, column: 10, scope: !1881)
!1908 = !DILocalVariable(name: "rawValue", scope: !1881, file: !351, line: 1594, type: !338)
!1909 = !DILocation(line: 1594, column: 10, scope: !1881)
!1910 = !DILocation(line: 1596, column: 31, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1881, file: !351, line: 1596, column: 8)
!1912 = !DILocation(line: 1596, column: 9, scope: !1911)
!1913 = !DILocation(line: 1596, column: 8, scope: !1881)
!1914 = !DILocation(line: 1597, column: 7, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1911, file: !351, line: 1596, column: 48)
!1916 = !DILocation(line: 1599, column: 22, scope: !1881)
!1917 = !DILocation(line: 1599, column: 15, scope: !1881)
!1918 = !DILocation(line: 1599, column: 13, scope: !1881)
!1919 = !DILocation(line: 1600, column: 15, scope: !1881)
!1920 = !DILocation(line: 1600, column: 4, scope: !1881)
!1921 = !DILocation(line: 1602, column: 8, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1881, file: !351, line: 1602, column: 8)
!1923 = !DILocation(line: 1602, column: 17, scope: !1922)
!1924 = !DILocation(line: 1602, column: 8, scope: !1881)
!1925 = !DILocation(line: 1603, column: 7, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1922, file: !351, line: 1602, column: 25)
!1927 = !DILocation(line: 1606, column: 27, scope: !1881)
!1928 = !DILocation(line: 1606, column: 47, scope: !1881)
!1929 = !DILocation(line: 1606, column: 33, scope: !1881)
!1930 = !DILocation(line: 1606, column: 11, scope: !1885)
!1931 = !DILocation(line: 173, column: 8, scope: !1932, inlinedAt: !1884)
!1932 = distinct !DILexicalBlock(scope: !425, file: !426, line: 173, column: 8)
!1933 = !DILocation(line: 173, column: 14, scope: !1932, inlinedAt: !1884)
!1934 = !DILocation(line: 173, column: 8, scope: !425, inlinedAt: !1884)
!1935 = !DILocation(line: 174, column: 14, scope: !1936, inlinedAt: !1884)
!1936 = distinct !DILexicalBlock(scope: !1932, file: !426, line: 173, column: 22)
!1937 = !DILocation(line: 174, column: 7, scope: !1936, inlinedAt: !1884)
!1938 = !DILocation(line: 177, column: 9, scope: !425, inlinedAt: !1884)
!1939 = !DILocation(line: 177, column: 7, scope: !425, inlinedAt: !1884)
!1940 = !DILocation(line: 192, column: 4, scope: !425, inlinedAt: !1884)
!1941 = !DILocation(line: 197, column: 29, scope: !1942, inlinedAt: !1884)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !426, line: 197, column: 11)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !426, line: 192, column: 13)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !426, line: 192, column: 4)
!1945 = distinct !DILexicalBlock(scope: !425, file: !426, line: 192, column: 4)
!1946 = !DILocation(line: 197, column: 33, scope: !1942, inlinedAt: !1884)
!1947 = !DILocation(line: 197, column: 39, scope: !1942, inlinedAt: !1884)
!1948 = !DILocation(line: 197, column: 12, scope: !1942, inlinedAt: !1884)
!1949 = !DILocation(line: 197, column: 11, scope: !1943, inlinedAt: !1884)
!1950 = !DILocation(line: 198, column: 14, scope: !1951, inlinedAt: !1884)
!1951 = distinct !DILexicalBlock(scope: !1942, file: !426, line: 197, column: 54)
!1952 = !DILocation(line: 198, column: 12, scope: !1951, inlinedAt: !1884)
!1953 = !DILocation(line: 199, column: 27, scope: !1951, inlinedAt: !1884)
!1954 = !DILocation(line: 199, column: 30, scope: !1951, inlinedAt: !1884)
!1955 = !DILocation(line: 199, column: 37, scope: !1951, inlinedAt: !1884)
!1956 = !DILocation(line: 199, column: 10, scope: !1951, inlinedAt: !1884)
!1957 = !DILocation(line: 200, column: 27, scope: !1951, inlinedAt: !1884)
!1958 = !DILocation(line: 200, column: 30, scope: !1951, inlinedAt: !1884)
!1959 = !DILocation(line: 200, column: 10, scope: !1951, inlinedAt: !1884)
!1960 = !DILocation(line: 201, column: 32, scope: !1961, inlinedAt: !1884)
!1961 = distinct !DILexicalBlock(scope: !1951, file: !426, line: 201, column: 14)
!1962 = !DILocation(line: 201, column: 36, scope: !1961, inlinedAt: !1884)
!1963 = !DILocation(line: 201, column: 42, scope: !1961, inlinedAt: !1884)
!1964 = !DILocation(line: 201, column: 15, scope: !1961, inlinedAt: !1884)
!1965 = !DILocation(line: 201, column: 14, scope: !1951, inlinedAt: !1884)
!1966 = !DILocation(line: 202, column: 24, scope: !1967, inlinedAt: !1884)
!1967 = distinct !DILexicalBlock(scope: !1961, file: !426, line: 201, column: 46)
!1968 = !DILocation(line: 202, column: 13, scope: !1967, inlinedAt: !1884)
!1969 = !DILocation(line: 203, column: 13, scope: !1967, inlinedAt: !1884)
!1970 = distinct !{!1970, !1971}
!1971 = !DILocation(line: 192, column: 4, scope: !425)
!1972 = !DILocation(line: 205, column: 10, scope: !1951, inlinedAt: !1884)
!1973 = !DILocation(line: 212, column: 34, scope: !1943, inlinedAt: !1884)
!1974 = !DILocation(line: 212, column: 37, scope: !1943, inlinedAt: !1884)
!1975 = !DILocation(line: 212, column: 18, scope: !1943, inlinedAt: !1884)
!1976 = !DILocation(line: 212, column: 16, scope: !1943, inlinedAt: !1884)
!1977 = !DILocation(line: 213, column: 18, scope: !1978, inlinedAt: !1884)
!1978 = distinct !DILexicalBlock(scope: !1943, file: !426, line: 213, column: 11)
!1979 = !DILocation(line: 213, column: 28, scope: !1978, inlinedAt: !1884)
!1980 = !DILocation(line: 213, column: 11, scope: !1978, inlinedAt: !1884)
!1981 = !DILocation(line: 213, column: 35, scope: !1978, inlinedAt: !1884)
!1982 = !DILocation(line: 213, column: 11, scope: !1943, inlinedAt: !1884)
!1983 = !DILocation(line: 214, column: 21, scope: !1984, inlinedAt: !1884)
!1984 = distinct !DILexicalBlock(scope: !1978, file: !426, line: 213, column: 41)
!1985 = !DILocation(line: 214, column: 10, scope: !1984, inlinedAt: !1884)
!1986 = !DILocation(line: 215, column: 18, scope: !1984, inlinedAt: !1884)
!1987 = !DILocation(line: 215, column: 16, scope: !1984, inlinedAt: !1884)
!1988 = !DILocation(line: 216, column: 10, scope: !1984, inlinedAt: !1884)
!1989 = !DILocation(line: 227, column: 39, scope: !1990, inlinedAt: !1884)
!1990 = distinct !DILexicalBlock(scope: !1943, file: !426, line: 227, column: 11)
!1991 = !DILocation(line: 227, column: 42, scope: !1990, inlinedAt: !1884)
!1992 = !DILocation(line: 227, column: 49, scope: !1990, inlinedAt: !1884)
!1993 = !DILocation(line: 227, column: 59, scope: !1990, inlinedAt: !1884)
!1994 = !DILocation(line: 227, column: 11, scope: !1990, inlinedAt: !1884)
!1995 = !DILocation(line: 227, column: 69, scope: !1990, inlinedAt: !1884)
!1996 = !DILocation(line: 227, column: 66, scope: !1990, inlinedAt: !1884)
!1997 = !DILocation(line: 227, column: 11, scope: !1943, inlinedAt: !1884)
!1998 = !DILocation(line: 228, column: 42, scope: !1999, inlinedAt: !1884)
!1999 = distinct !DILexicalBlock(scope: !1990, file: !426, line: 227, column: 79)
!2000 = !DILocation(line: 228, column: 45, scope: !1999, inlinedAt: !1884)
!2001 = !DILocation(line: 228, column: 56, scope: !1999, inlinedAt: !1884)
!2002 = !DILocation(line: 228, column: 21, scope: !1999, inlinedAt: !1884)
!2003 = !DILocation(line: 228, column: 19, scope: !1999, inlinedAt: !1884)
!2004 = !DILocation(line: 229, column: 21, scope: !1999, inlinedAt: !1884)
!2005 = !DILocation(line: 229, column: 10, scope: !1999, inlinedAt: !1884)
!2006 = !DILocation(line: 230, column: 10, scope: !1999, inlinedAt: !1884)
!2007 = !DILocation(line: 192, column: 4, scope: !2008, inlinedAt: !1884)
!2008 = !DILexicalBlockFile(scope: !1944, file: !426, discriminator: 1)
!2009 = !DILocation(line: 234, column: 11, scope: !425, inlinedAt: !1884)
!2010 = !DILocation(line: 234, column: 4, scope: !425, inlinedAt: !1884)
!2011 = !DILocation(line: 235, column: 1, scope: !425, inlinedAt: !1884)
!2012 = !DILocation(line: 1606, column: 4, scope: !1881)
!2013 = !DILocation(line: 1608, column: 1, scope: !1881)
!2014 = distinct !DISubprogram(name: "Posix_Putenv", scope: !351, file: !351, line: 1630, type: !2015, isLocal: false, isDefinition: true, scopeLine: 1631, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!363, !338}
!2017 = !DILocalVariable(name: "name", arg: 1, scope: !2014, file: !351, line: 1630, type: !338)
!2018 = !DILocation(line: 1630, column: 20, scope: !2014)
!2019 = !DILocation(line: 1634, column: 18, scope: !2014)
!2020 = !DILocation(line: 1634, column: 11, scope: !2014)
!2021 = !DILocation(line: 1634, column: 4, scope: !2014)
!2022 = distinct !DISubprogram(name: "Posix_Statfs", scope: !351, file: !351, line: 1658, type: !2023, isLocal: false, isDefinition: true, scopeLine: 1660, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!363, !429, !2025}
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64, align: 64)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "statfs", file: !2027, line: 24, size: 960, align: 64, elements: !2028)
!2027 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/statfs.h", directory: "/home/lichi/Desktop/open-vm-tools/line663")
!2028 = !{!2029, !2031, !2032, !2034, !2035, !2036, !2038, !2039, !2047, !2048, !2049, !2050}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "f_type", scope: !2026, file: !2027, line: 26, baseType: !2030, size: 64, align: 64)
!2030 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fsword_t", file: !396, line: 170, baseType: !397)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "f_bsize", scope: !2026, file: !2027, line: 27, baseType: !2030, size: 64, align: 64, offset: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "f_blocks", scope: !2026, file: !2027, line: 35, baseType: !2033, size: 64, align: 64, offset: 128)
!2033 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fsblkcnt64_t", file: !396, line: 163, baseType: !346)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "f_bfree", scope: !2026, file: !2027, line: 36, baseType: !2033, size: 64, align: 64, offset: 192)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "f_bavail", scope: !2026, file: !2027, line: 37, baseType: !2033, size: 64, align: 64, offset: 256)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "f_files", scope: !2026, file: !2027, line: 38, baseType: !2037, size: 64, align: 64, offset: 320)
!2037 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fsfilcnt64_t", file: !396, line: 167, baseType: !346)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "f_ffree", scope: !2026, file: !2027, line: 39, baseType: !2037, size: 64, align: 64, offset: 384)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "f_fsid", scope: !2026, file: !2027, line: 41, baseType: !2040, size: 64, align: 32, offset: 448)
!2040 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fsid_t", file: !396, line: 134, baseType: !2041)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !396, line: 134, size: 64, align: 32, elements: !2042)
!2042 = !{!2043}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !2041, file: !396, line: 134, baseType: !2044, size: 64, align: 32)
!2044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 64, align: 32, elements: !2045)
!2045 = !{!2046}
!2046 = !DISubrange(count: 2)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "f_namelen", scope: !2026, file: !2027, line: 42, baseType: !2030, size: 64, align: 64, offset: 512)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "f_frsize", scope: !2026, file: !2027, line: 43, baseType: !2030, size: 64, align: 64, offset: 576)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !2026, file: !2027, line: 44, baseType: !2030, size: 64, align: 64, offset: 640)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "f_spare", scope: !2026, file: !2027, line: 45, baseType: !2051, size: 256, align: 64, offset: 704)
!2051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2030, size: 256, align: 64, elements: !2052)
!2052 = !{!2053}
!2053 = !DISubrange(count: 4)
!2054 = !DILocalVariable(name: "pathName", arg: 1, scope: !2022, file: !351, line: 1658, type: !429)
!2055 = !DILocation(line: 1658, column: 26, scope: !2022)
!2056 = !DILocalVariable(name: "statfsbuf", arg: 2, scope: !2022, file: !351, line: 1659, type: !2025)
!2057 = !DILocation(line: 1659, column: 29, scope: !2022)
!2058 = !DILocalVariable(name: "path", scope: !2022, file: !351, line: 1661, type: !338)
!2059 = !DILocation(line: 1661, column: 10, scope: !2022)
!2060 = !DILocalVariable(name: "ret", scope: !2022, file: !351, line: 1662, type: !363)
!2061 = !DILocation(line: 1662, column: 8, scope: !2022)
!2062 = !DILocation(line: 1664, column: 31, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2022, file: !351, line: 1664, column: 8)
!2064 = !DILocation(line: 1664, column: 9, scope: !2063)
!2065 = !DILocation(line: 1664, column: 8, scope: !2022)
!2066 = !DILocation(line: 1665, column: 7, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2063, file: !351, line: 1664, column: 49)
!2068 = !DILocation(line: 1668, column: 17, scope: !2022)
!2069 = !DILocation(line: 1668, column: 23, scope: !2022)
!2070 = !DILocation(line: 1668, column: 10, scope: !2022)
!2071 = !DILocation(line: 1668, column: 8, scope: !2022)
!2072 = !DILocation(line: 1670, column: 15, scope: !2022)
!2073 = !DILocation(line: 1670, column: 4, scope: !2022)
!2074 = !DILocation(line: 1672, column: 11, scope: !2022)
!2075 = !DILocation(line: 1672, column: 4, scope: !2022)
!2076 = !DILocation(line: 1673, column: 1, scope: !2022)
!2077 = distinct !DISubprogram(name: "Posix_Setenv", scope: !351, file: !351, line: 1695, type: !2078, isLocal: false, isDefinition: true, scopeLine: 1698, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!363, !429, !429, !363}
!2080 = !DILocalVariable(name: "name", arg: 1, scope: !2077, file: !351, line: 1695, type: !429)
!2081 = !DILocation(line: 1695, column: 26, scope: !2077)
!2082 = !DILocalVariable(name: "value", arg: 2, scope: !2077, file: !351, line: 1696, type: !429)
!2083 = !DILocation(line: 1696, column: 26, scope: !2077)
!2084 = !DILocalVariable(name: "overWrite", arg: 3, scope: !2077, file: !351, line: 1697, type: !363)
!2085 = !DILocation(line: 1697, column: 18, scope: !2077)
!2086 = !DILocalVariable(name: "ret", scope: !2077, file: !351, line: 1699, type: !363)
!2087 = !DILocation(line: 1699, column: 8, scope: !2077)
!2088 = !DILocalVariable(name: "rawName", scope: !2077, file: !351, line: 1700, type: !338)
!2089 = !DILocation(line: 1700, column: 10, scope: !2077)
!2090 = !DILocalVariable(name: "rawValue", scope: !2077, file: !351, line: 1701, type: !338)
!2091 = !DILocation(line: 1701, column: 10, scope: !2077)
!2092 = !DILocation(line: 1703, column: 31, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2077, file: !351, line: 1703, column: 8)
!2094 = !DILocation(line: 1703, column: 9, scope: !2093)
!2095 = !DILocation(line: 1703, column: 8, scope: !2077)
!2096 = !DILocation(line: 1704, column: 7, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2093, file: !351, line: 1703, column: 48)
!2098 = !DILocation(line: 1706, column: 31, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2077, file: !351, line: 1706, column: 8)
!2100 = !DILocation(line: 1706, column: 9, scope: !2099)
!2101 = !DILocation(line: 1706, column: 8, scope: !2077)
!2102 = !DILocation(line: 1707, column: 7, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2099, file: !351, line: 1706, column: 50)
!2104 = !DILocation(line: 1752, column: 17, scope: !2077)
!2105 = !DILocation(line: 1752, column: 26, scope: !2077)
!2106 = !DILocation(line: 1752, column: 36, scope: !2077)
!2107 = !DILocation(line: 1752, column: 10, scope: !2077)
!2108 = !DILocation(line: 1752, column: 8, scope: !2077)
!2109 = !DILocation(line: 1752, column: 4, scope: !2077)
!2110 = !DILocation(line: 1756, column: 15, scope: !2077)
!2111 = !DILocation(line: 1756, column: 4, scope: !2077)
!2112 = !DILocation(line: 1757, column: 15, scope: !2077)
!2113 = !DILocation(line: 1757, column: 4, scope: !2077)
!2114 = !DILocation(line: 1759, column: 11, scope: !2077)
!2115 = !DILocation(line: 1759, column: 4, scope: !2077)
!2116 = distinct !DISubprogram(name: "Posix_Unsetenv", scope: !351, file: !351, line: 1780, type: !735, isLocal: false, isDefinition: true, scopeLine: 1781, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!2117 = !DILocalVariable(name: "name", arg: 1, scope: !2116, file: !351, line: 1780, type: !429)
!2118 = !DILocation(line: 1780, column: 28, scope: !2116)
!2119 = !DILocalVariable(name: "rawName", scope: !2116, file: !351, line: 1782, type: !338)
!2120 = !DILocation(line: 1782, column: 10, scope: !2116)
!2121 = !DILocalVariable(name: "ret", scope: !2116, file: !351, line: 1783, type: !363)
!2122 = !DILocation(line: 1783, column: 8, scope: !2116)
!2123 = !DILocation(line: 1785, column: 31, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2116, file: !351, line: 1785, column: 8)
!2125 = !DILocation(line: 1785, column: 9, scope: !2124)
!2126 = !DILocation(line: 1785, column: 8, scope: !2116)
!2127 = !DILocation(line: 1786, column: 7, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2124, file: !351, line: 1785, column: 48)
!2129 = !DILocation(line: 1799, column: 19, scope: !2116)
!2130 = !DILocation(line: 1799, column: 10, scope: !2116)
!2131 = !DILocation(line: 1799, column: 8, scope: !2116)
!2132 = !DILocation(line: 1801, column: 15, scope: !2116)
!2133 = !DILocation(line: 1801, column: 4, scope: !2116)
!2134 = !DILocation(line: 1803, column: 11, scope: !2116)
!2135 = !DILocation(line: 1803, column: 4, scope: !2116)
!2136 = !DILocation(line: 1804, column: 1, scope: !2116)
!2137 = distinct !DISubprogram(name: "Posix_Mount", scope: !351, file: !351, line: 1828, type: !2138, isLocal: false, isDefinition: true, scopeLine: 1833, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!363, !429, !429, !429, !346, !1759}
!2140 = !DILocalVariable(name: "source", arg: 1, scope: !2137, file: !351, line: 1828, type: !429)
!2141 = !DILocation(line: 1828, column: 25, scope: !2137)
!2142 = !DILocalVariable(name: "target", arg: 2, scope: !2137, file: !351, line: 1829, type: !429)
!2143 = !DILocation(line: 1829, column: 25, scope: !2137)
!2144 = !DILocalVariable(name: "filesystemtype", arg: 3, scope: !2137, file: !351, line: 1830, type: !429)
!2145 = !DILocation(line: 1830, column: 25, scope: !2137)
!2146 = !DILocalVariable(name: "mountflags", arg: 4, scope: !2137, file: !351, line: 1831, type: !346)
!2147 = !DILocation(line: 1831, column: 27, scope: !2137)
!2148 = !DILocalVariable(name: "data", arg: 5, scope: !2137, file: !351, line: 1832, type: !1759)
!2149 = !DILocation(line: 1832, column: 25, scope: !2137)
!2150 = !DILocalVariable(name: "ret", scope: !2137, file: !351, line: 1834, type: !363)
!2151 = !DILocation(line: 1834, column: 8, scope: !2137)
!2152 = !DILocalVariable(name: "tmpsource", scope: !2137, file: !351, line: 1835, type: !338)
!2153 = !DILocation(line: 1835, column: 10, scope: !2137)
!2154 = !DILocalVariable(name: "tmptarget", scope: !2137, file: !351, line: 1836, type: !338)
!2155 = !DILocation(line: 1836, column: 10, scope: !2137)
!2156 = !DILocation(line: 1838, column: 31, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2137, file: !351, line: 1838, column: 8)
!2158 = !DILocation(line: 1838, column: 9, scope: !2157)
!2159 = !DILocation(line: 1838, column: 8, scope: !2137)
!2160 = !DILocation(line: 1839, column: 7, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2157, file: !351, line: 1838, column: 52)
!2162 = !DILocation(line: 1841, column: 31, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2137, file: !351, line: 1841, column: 8)
!2164 = !DILocation(line: 1841, column: 9, scope: !2163)
!2165 = !DILocation(line: 1841, column: 8, scope: !2137)
!2166 = !DILocation(line: 1842, column: 7, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2163, file: !351, line: 1841, column: 52)
!2168 = !DILocation(line: 1845, column: 16, scope: !2137)
!2169 = !DILocation(line: 1845, column: 27, scope: !2137)
!2170 = !DILocation(line: 1845, column: 38, scope: !2137)
!2171 = !DILocation(line: 1845, column: 54, scope: !2137)
!2172 = !DILocation(line: 1845, column: 66, scope: !2137)
!2173 = !DILocation(line: 1845, column: 10, scope: !2137)
!2174 = !DILocation(line: 1845, column: 8, scope: !2137)
!2175 = !DILocation(line: 1845, column: 4, scope: !2137)
!2176 = !DILocation(line: 1848, column: 15, scope: !2137)
!2177 = !DILocation(line: 1848, column: 4, scope: !2137)
!2178 = !DILocation(line: 1849, column: 15, scope: !2137)
!2179 = !DILocation(line: 1849, column: 4, scope: !2137)
!2180 = !DILocation(line: 1851, column: 11, scope: !2137)
!2181 = !DILocation(line: 1851, column: 4, scope: !2137)
!2182 = distinct !DISubprogram(name: "Posix_Umount", scope: !351, file: !351, line: 1873, type: !735, isLocal: false, isDefinition: true, scopeLine: 1874, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!2183 = !DILocalVariable(name: "target", arg: 1, scope: !2182, file: !351, line: 1873, type: !429)
!2184 = !DILocation(line: 1873, column: 26, scope: !2182)
!2185 = !DILocalVariable(name: "tmptarget", scope: !2182, file: !351, line: 1875, type: !338)
!2186 = !DILocation(line: 1875, column: 10, scope: !2182)
!2187 = !DILocalVariable(name: "ret", scope: !2182, file: !351, line: 1876, type: !363)
!2188 = !DILocation(line: 1876, column: 8, scope: !2182)
!2189 = !DILocation(line: 1878, column: 31, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2182, file: !351, line: 1878, column: 8)
!2191 = !DILocation(line: 1878, column: 9, scope: !2190)
!2192 = !DILocation(line: 1878, column: 8, scope: !2182)
!2193 = !DILocation(line: 1879, column: 7, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2190, file: !351, line: 1878, column: 52)
!2195 = !DILocation(line: 1882, column: 17, scope: !2182)
!2196 = !DILocation(line: 1882, column: 10, scope: !2182)
!2197 = !DILocation(line: 1882, column: 8, scope: !2182)
!2198 = !DILocation(line: 1884, column: 15, scope: !2182)
!2199 = !DILocation(line: 1884, column: 4, scope: !2182)
!2200 = !DILocation(line: 1886, column: 11, scope: !2182)
!2201 = !DILocation(line: 1886, column: 4, scope: !2182)
!2202 = !DILocation(line: 1887, column: 1, scope: !2182)
!2203 = distinct !DISubprogram(name: "Posix_Setmntent", scope: !351, file: !351, line: 1908, type: !585, isLocal: false, isDefinition: true, scopeLine: 1910, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!2204 = !DILocalVariable(name: "pathName", arg: 1, scope: !2203, file: !351, line: 1908, type: !429)
!2205 = !DILocation(line: 1908, column: 29, scope: !2203)
!2206 = !DILocalVariable(name: "mode", arg: 2, scope: !2203, file: !351, line: 1909, type: !429)
!2207 = !DILocation(line: 1909, column: 29, scope: !2203)
!2208 = !DILocalVariable(name: "path", scope: !2203, file: !351, line: 1916, type: !338)
!2209 = !DILocation(line: 1916, column: 10, scope: !2203)
!2210 = !DILocalVariable(name: "stream", scope: !2203, file: !351, line: 1917, type: !365)
!2211 = !DILocation(line: 1917, column: 10, scope: !2203)
!2212 = !DILocation(line: 1921, column: 31, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2203, file: !351, line: 1921, column: 8)
!2214 = !DILocation(line: 1921, column: 9, scope: !2213)
!2215 = !DILocation(line: 1921, column: 8, scope: !2203)
!2216 = !DILocation(line: 1922, column: 7, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2213, file: !351, line: 1921, column: 49)
!2218 = !DILocation(line: 1924, column: 23, scope: !2203)
!2219 = !DILocation(line: 1924, column: 29, scope: !2203)
!2220 = !DILocation(line: 1924, column: 13, scope: !2203)
!2221 = !DILocation(line: 1924, column: 11, scope: !2203)
!2222 = !DILocation(line: 1925, column: 15, scope: !2203)
!2223 = !DILocation(line: 1925, column: 4, scope: !2203)
!2224 = !DILocation(line: 1927, column: 11, scope: !2203)
!2225 = !DILocation(line: 1927, column: 4, scope: !2203)
!2226 = !DILocation(line: 1929, column: 1, scope: !2203)
!2227 = !DILocalVariable(name: "fp", arg: 1, scope: !350, file: !351, line: 1949, type: !365)
!2228 = !DILocation(line: 1949, column: 23, scope: !350)
!2229 = !DILocalVariable(name: "ret", scope: !350, file: !351, line: 1951, type: !363)
!2230 = !DILocation(line: 1951, column: 8, scope: !350)
!2231 = !DILocalVariable(name: "m", scope: !350, file: !351, line: 1952, type: !354)
!2232 = !DILocation(line: 1952, column: 19, scope: !350)
!2233 = !DILocation(line: 1955, column: 18, scope: !350)
!2234 = !DILocation(line: 1955, column: 8, scope: !350)
!2235 = !DILocation(line: 1955, column: 6, scope: !350)
!2236 = !DILocation(line: 1956, column: 9, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !350, file: !351, line: 1956, column: 8)
!2238 = !DILocation(line: 1956, column: 8, scope: !350)
!2239 = !DILocation(line: 1957, column: 7, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2237, file: !351, line: 1956, column: 12)
!2241 = !DILocation(line: 1961, column: 18, scope: !350)
!2242 = !DILocation(line: 1961, column: 4, scope: !350)
!2243 = !DILocation(line: 1962, column: 18, scope: !350)
!2244 = !DILocation(line: 1963, column: 18, scope: !350)
!2245 = !DILocation(line: 1963, column: 4, scope: !350)
!2246 = !DILocation(line: 1964, column: 15, scope: !350)
!2247 = !DILocation(line: 1965, column: 18, scope: !350)
!2248 = !DILocation(line: 1965, column: 4, scope: !350)
!2249 = !DILocation(line: 1966, column: 16, scope: !350)
!2250 = !DILocation(line: 1967, column: 18, scope: !350)
!2251 = !DILocation(line: 1967, column: 4, scope: !350)
!2252 = !DILocation(line: 1968, column: 16, scope: !350)
!2253 = !DILocation(line: 1971, column: 18, scope: !350)
!2254 = !DILocation(line: 1971, column: 21, scope: !350)
!2255 = !DILocation(line: 1971, column: 16, scope: !350)
!2256 = !DILocation(line: 1972, column: 20, scope: !350)
!2257 = !DILocation(line: 1972, column: 23, scope: !350)
!2258 = !DILocation(line: 1972, column: 18, scope: !350)
!2259 = !DILocation(line: 1974, column: 8, scope: !350)
!2260 = !DILocation(line: 1975, column: 8, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !350, file: !351, line: 1975, column: 8)
!2262 = !DILocation(line: 1975, column: 11, scope: !2261)
!2263 = !DILocation(line: 1975, column: 22, scope: !2261)
!2264 = !DILocation(line: 1976, column: 39, scope: !2261)
!2265 = !DILocation(line: 1976, column: 42, scope: !2261)
!2266 = !DILocation(line: 1976, column: 25, scope: !2261)
!2267 = !DILocation(line: 1976, column: 23, scope: !2261)
!2268 = !DILocation(line: 1977, column: 65, scope: !2261)
!2269 = !DILocation(line: 1975, column: 8, scope: !2270)
!2270 = !DILexicalBlockFile(scope: !350, file: !351, discriminator: 1)
!2271 = !DILocation(line: 1978, column: 7, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2261, file: !351, line: 1977, column: 73)
!2273 = !DILocation(line: 1980, column: 8, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !350, file: !351, line: 1980, column: 8)
!2275 = !DILocation(line: 1980, column: 11, scope: !2274)
!2276 = !DILocation(line: 1980, column: 19, scope: !2274)
!2277 = !DILocation(line: 1981, column: 36, scope: !2274)
!2278 = !DILocation(line: 1981, column: 39, scope: !2274)
!2279 = !DILocation(line: 1981, column: 22, scope: !2274)
!2280 = !DILocation(line: 1981, column: 20, scope: !2274)
!2281 = !DILocation(line: 1982, column: 62, scope: !2274)
!2282 = !DILocation(line: 1980, column: 8, scope: !2270)
!2283 = !DILocation(line: 1983, column: 7, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2274, file: !351, line: 1982, column: 70)
!2285 = !DILocation(line: 1985, column: 8, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !350, file: !351, line: 1985, column: 8)
!2287 = !DILocation(line: 1985, column: 11, scope: !2286)
!2288 = !DILocation(line: 1985, column: 20, scope: !2286)
!2289 = !DILocation(line: 1986, column: 37, scope: !2286)
!2290 = !DILocation(line: 1986, column: 40, scope: !2286)
!2291 = !DILocation(line: 1986, column: 23, scope: !2286)
!2292 = !DILocation(line: 1986, column: 21, scope: !2286)
!2293 = !DILocation(line: 1987, column: 63, scope: !2286)
!2294 = !DILocation(line: 1985, column: 8, scope: !2270)
!2295 = !DILocation(line: 1988, column: 7, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2286, file: !351, line: 1987, column: 71)
!2297 = !DILocation(line: 1990, column: 8, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !350, file: !351, line: 1990, column: 8)
!2299 = !DILocation(line: 1990, column: 11, scope: !2298)
!2300 = !DILocation(line: 1990, column: 20, scope: !2298)
!2301 = !DILocation(line: 1991, column: 37, scope: !2298)
!2302 = !DILocation(line: 1991, column: 40, scope: !2298)
!2303 = !DILocation(line: 1991, column: 23, scope: !2298)
!2304 = !DILocation(line: 1991, column: 21, scope: !2298)
!2305 = !DILocation(line: 1992, column: 63, scope: !2298)
!2306 = !DILocation(line: 1990, column: 8, scope: !2270)
!2307 = !DILocation(line: 1993, column: 7, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2298, file: !351, line: 1992, column: 71)
!2309 = !DILocation(line: 1995, column: 8, scope: !350)
!2310 = !DILocation(line: 1995, column: 4, scope: !350)
!2311 = !DILocation(line: 1998, column: 8, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !350, file: !351, line: 1998, column: 8)
!2313 = !DILocation(line: 1998, column: 12, scope: !2312)
!2314 = !DILocation(line: 1998, column: 8, scope: !350)
!2315 = !DILocation(line: 1999, column: 14, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2312, file: !351, line: 1998, column: 18)
!2317 = !DILocation(line: 1999, column: 8, scope: !2316)
!2318 = !DILocation(line: 1999, column: 12, scope: !2316)
!2319 = !DILocation(line: 2000, column: 7, scope: !2316)
!2320 = !DILocation(line: 2003, column: 4, scope: !350)
!2321 = !DILocation(line: 2004, column: 1, scope: !350)
!2322 = distinct !DISubprogram(name: "Posix_Getmntent_r", scope: !351, file: !351, line: 2024, type: !2323, isLocal: false, isDefinition: true, scopeLine: 2028, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{!354, !365, !354, !338, !363}
!2325 = !DILocalVariable(name: "fp", arg: 1, scope: !2322, file: !351, line: 2024, type: !365)
!2326 = !DILocation(line: 2024, column: 25, scope: !2322)
!2327 = !DILocalVariable(name: "m", arg: 2, scope: !2322, file: !351, line: 2025, type: !354)
!2328 = !DILocation(line: 2025, column: 34, scope: !2322)
!2329 = !DILocalVariable(name: "buf", arg: 3, scope: !2322, file: !351, line: 2026, type: !338)
!2330 = !DILocation(line: 2026, column: 25, scope: !2322)
!2331 = !DILocalVariable(name: "size", arg: 4, scope: !2322, file: !351, line: 2027, type: !363)
!2332 = !DILocation(line: 2027, column: 23, scope: !2322)
!2333 = !DILocalVariable(name: "ret", scope: !2322, file: !351, line: 2034, type: !363)
!2334 = !DILocation(line: 2034, column: 8, scope: !2322)
!2335 = !DILocalVariable(name: "fsname", scope: !2322, file: !351, line: 2035, type: !338)
!2336 = !DILocation(line: 2035, column: 10, scope: !2322)
!2337 = !DILocalVariable(name: "dir", scope: !2322, file: !351, line: 2036, type: !338)
!2338 = !DILocation(line: 2036, column: 10, scope: !2322)
!2339 = !DILocalVariable(name: "type", scope: !2322, file: !351, line: 2037, type: !338)
!2340 = !DILocation(line: 2037, column: 10, scope: !2322)
!2341 = !DILocalVariable(name: "opts", scope: !2322, file: !351, line: 2038, type: !338)
!2342 = !DILocation(line: 2038, column: 10, scope: !2322)
!2343 = !DILocalVariable(name: "n", scope: !2322, file: !351, line: 2039, type: !416)
!2344 = !DILocation(line: 2039, column: 11, scope: !2322)
!2345 = !DILocation(line: 2041, column: 21, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2322, file: !351, line: 2041, column: 8)
!2347 = !DILocation(line: 2041, column: 25, scope: !2346)
!2348 = !DILocation(line: 2041, column: 28, scope: !2346)
!2349 = !DILocation(line: 2041, column: 33, scope: !2346)
!2350 = !DILocation(line: 2041, column: 9, scope: !2346)
!2351 = !DILocation(line: 2041, column: 8, scope: !2322)
!2352 = !DILocation(line: 2042, column: 7, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2346, file: !351, line: 2041, column: 40)
!2354 = !DILocation(line: 2049, column: 8, scope: !2322)
!2355 = !DILocation(line: 2050, column: 8, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2322, file: !351, line: 2050, column: 8)
!2357 = !DILocation(line: 2050, column: 11, scope: !2356)
!2358 = !DILocation(line: 2050, column: 22, scope: !2356)
!2359 = !DILocation(line: 2051, column: 32, scope: !2356)
!2360 = !DILocation(line: 2051, column: 35, scope: !2356)
!2361 = !DILocation(line: 2051, column: 18, scope: !2356)
!2362 = !DILocation(line: 2051, column: 16, scope: !2356)
!2363 = !DILocation(line: 2052, column: 58, scope: !2356)
!2364 = !DILocation(line: 2050, column: 8, scope: !2365)
!2365 = !DILexicalBlockFile(scope: !2322, file: !351, discriminator: 1)
!2366 = !DILocation(line: 2053, column: 7, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2356, file: !351, line: 2052, column: 66)
!2368 = !DILocation(line: 2055, column: 8, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2322, file: !351, line: 2055, column: 8)
!2370 = !DILocation(line: 2055, column: 11, scope: !2369)
!2371 = !DILocation(line: 2055, column: 19, scope: !2369)
!2372 = !DILocation(line: 2056, column: 29, scope: !2369)
!2373 = !DILocation(line: 2056, column: 32, scope: !2369)
!2374 = !DILocation(line: 2056, column: 15, scope: !2369)
!2375 = !DILocation(line: 2056, column: 13, scope: !2369)
!2376 = !DILocation(line: 2057, column: 55, scope: !2369)
!2377 = !DILocation(line: 2055, column: 8, scope: !2365)
!2378 = !DILocation(line: 2058, column: 7, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2369, file: !351, line: 2057, column: 63)
!2380 = !DILocation(line: 2060, column: 8, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2322, file: !351, line: 2060, column: 8)
!2382 = !DILocation(line: 2060, column: 11, scope: !2381)
!2383 = !DILocation(line: 2060, column: 20, scope: !2381)
!2384 = !DILocation(line: 2061, column: 30, scope: !2381)
!2385 = !DILocation(line: 2061, column: 33, scope: !2381)
!2386 = !DILocation(line: 2061, column: 16, scope: !2381)
!2387 = !DILocation(line: 2061, column: 14, scope: !2381)
!2388 = !DILocation(line: 2062, column: 56, scope: !2381)
!2389 = !DILocation(line: 2060, column: 8, scope: !2365)
!2390 = !DILocation(line: 2063, column: 7, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2381, file: !351, line: 2062, column: 64)
!2392 = !DILocation(line: 2065, column: 8, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2322, file: !351, line: 2065, column: 8)
!2394 = !DILocation(line: 2065, column: 11, scope: !2393)
!2395 = !DILocation(line: 2065, column: 20, scope: !2393)
!2396 = !DILocation(line: 2066, column: 30, scope: !2393)
!2397 = !DILocation(line: 2066, column: 33, scope: !2393)
!2398 = !DILocation(line: 2066, column: 16, scope: !2393)
!2399 = !DILocation(line: 2066, column: 14, scope: !2393)
!2400 = !DILocation(line: 2066, column: 69, scope: !2393)
!2401 = !DILocation(line: 2065, column: 8, scope: !2365)
!2402 = !DILocation(line: 2067, column: 7, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2393, file: !351, line: 2066, column: 77)
!2404 = !DILocation(line: 2074, column: 8, scope: !2322)
!2405 = !DILocation(line: 2075, column: 6, scope: !2322)
!2406 = !DILocation(line: 2077, column: 8, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2322, file: !351, line: 2077, column: 8)
!2408 = !DILocation(line: 2077, column: 8, scope: !2322)
!2409 = !DILocalVariable(name: "len", scope: !2410, file: !351, line: 2078, type: !363)
!2410 = distinct !DILexicalBlock(scope: !2407, file: !351, line: 2077, column: 16)
!2411 = !DILocation(line: 2078, column: 11, scope: !2410)
!2412 = !DILocation(line: 2078, column: 24, scope: !2410)
!2413 = !DILocation(line: 2078, column: 17, scope: !2410)
!2414 = !DILocation(line: 2078, column: 32, scope: !2410)
!2415 = !DILocation(line: 2080, column: 11, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2410, file: !351, line: 2080, column: 11)
!2417 = !DILocation(line: 2080, column: 15, scope: !2416)
!2418 = !DILocation(line: 2080, column: 13, scope: !2416)
!2419 = !DILocation(line: 2080, column: 21, scope: !2416)
!2420 = !DILocation(line: 2080, column: 19, scope: !2416)
!2421 = !DILocation(line: 2080, column: 26, scope: !2416)
!2422 = !DILocation(line: 2080, column: 29, scope: !2423)
!2423 = !DILexicalBlockFile(scope: !2416, file: !351, discriminator: 1)
!2424 = !DILocation(line: 2080, column: 33, scope: !2423)
!2425 = !DILocation(line: 2080, column: 31, scope: !2423)
!2426 = !DILocation(line: 2080, column: 39, scope: !2423)
!2427 = !DILocation(line: 2080, column: 37, scope: !2423)
!2428 = !DILocation(line: 2080, column: 11, scope: !2423)
!2429 = !DILocation(line: 2081, column: 10, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2416, file: !351, line: 2080, column: 42)
!2431 = !DILocation(line: 2083, column: 30, scope: !2410)
!2432 = !DILocation(line: 2083, column: 36, scope: !2410)
!2433 = !DILocation(line: 2083, column: 34, scope: !2410)
!2434 = !DILocation(line: 2083, column: 39, scope: !2410)
!2435 = !DILocation(line: 2083, column: 47, scope: !2410)
!2436 = !DILocation(line: 2083, column: 23, scope: !2410)
!2437 = !DILocation(line: 2083, column: 7, scope: !2410)
!2438 = !DILocation(line: 2083, column: 10, scope: !2410)
!2439 = !DILocation(line: 2083, column: 21, scope: !2410)
!2440 = !DILocation(line: 2084, column: 12, scope: !2410)
!2441 = !DILocation(line: 2084, column: 9, scope: !2410)
!2442 = !DILocation(line: 2085, column: 4, scope: !2410)
!2443 = !DILocation(line: 2087, column: 8, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2322, file: !351, line: 2087, column: 8)
!2445 = !DILocation(line: 2087, column: 12, scope: !2444)
!2446 = !DILocation(line: 2087, column: 8, scope: !2322)
!2447 = !DILocalVariable(name: "len", scope: !2448, file: !351, line: 2088, type: !363)
!2448 = distinct !DILexicalBlock(scope: !2444, file: !351, line: 2087, column: 20)
!2449 = !DILocation(line: 2088, column: 11, scope: !2448)
!2450 = !DILocation(line: 2088, column: 24, scope: !2448)
!2451 = !DILocation(line: 2088, column: 17, scope: !2448)
!2452 = !DILocation(line: 2088, column: 29, scope: !2448)
!2453 = !DILocation(line: 2090, column: 11, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2448, file: !351, line: 2090, column: 11)
!2455 = !DILocation(line: 2090, column: 15, scope: !2454)
!2456 = !DILocation(line: 2090, column: 13, scope: !2454)
!2457 = !DILocation(line: 2090, column: 21, scope: !2454)
!2458 = !DILocation(line: 2090, column: 19, scope: !2454)
!2459 = !DILocation(line: 2090, column: 26, scope: !2454)
!2460 = !DILocation(line: 2090, column: 29, scope: !2461)
!2461 = !DILexicalBlockFile(scope: !2454, file: !351, discriminator: 1)
!2462 = !DILocation(line: 2090, column: 33, scope: !2461)
!2463 = !DILocation(line: 2090, column: 31, scope: !2461)
!2464 = !DILocation(line: 2090, column: 39, scope: !2461)
!2465 = !DILocation(line: 2090, column: 37, scope: !2461)
!2466 = !DILocation(line: 2090, column: 11, scope: !2461)
!2467 = !DILocation(line: 2091, column: 10, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2454, file: !351, line: 2090, column: 42)
!2469 = !DILocation(line: 2093, column: 27, scope: !2448)
!2470 = !DILocation(line: 2093, column: 33, scope: !2448)
!2471 = !DILocation(line: 2093, column: 31, scope: !2448)
!2472 = !DILocation(line: 2093, column: 36, scope: !2448)
!2473 = !DILocation(line: 2093, column: 41, scope: !2448)
!2474 = !DILocation(line: 2093, column: 20, scope: !2448)
!2475 = !DILocation(line: 2093, column: 7, scope: !2448)
!2476 = !DILocation(line: 2093, column: 10, scope: !2448)
!2477 = !DILocation(line: 2093, column: 18, scope: !2448)
!2478 = !DILocation(line: 2094, column: 12, scope: !2448)
!2479 = !DILocation(line: 2094, column: 9, scope: !2448)
!2480 = !DILocation(line: 2095, column: 4, scope: !2448)
!2481 = !DILocation(line: 2097, column: 8, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2322, file: !351, line: 2097, column: 8)
!2483 = !DILocation(line: 2097, column: 8, scope: !2322)
!2484 = !DILocalVariable(name: "len", scope: !2485, file: !351, line: 2098, type: !363)
!2485 = distinct !DILexicalBlock(scope: !2482, file: !351, line: 2097, column: 14)
!2486 = !DILocation(line: 2098, column: 11, scope: !2485)
!2487 = !DILocation(line: 2098, column: 24, scope: !2485)
!2488 = !DILocation(line: 2098, column: 17, scope: !2485)
!2489 = !DILocation(line: 2098, column: 30, scope: !2485)
!2490 = !DILocation(line: 2100, column: 11, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2485, file: !351, line: 2100, column: 11)
!2492 = !DILocation(line: 2100, column: 15, scope: !2491)
!2493 = !DILocation(line: 2100, column: 13, scope: !2491)
!2494 = !DILocation(line: 2100, column: 21, scope: !2491)
!2495 = !DILocation(line: 2100, column: 19, scope: !2491)
!2496 = !DILocation(line: 2100, column: 26, scope: !2491)
!2497 = !DILocation(line: 2100, column: 29, scope: !2498)
!2498 = !DILexicalBlockFile(scope: !2491, file: !351, discriminator: 1)
!2499 = !DILocation(line: 2100, column: 33, scope: !2498)
!2500 = !DILocation(line: 2100, column: 31, scope: !2498)
!2501 = !DILocation(line: 2100, column: 39, scope: !2498)
!2502 = !DILocation(line: 2100, column: 37, scope: !2498)
!2503 = !DILocation(line: 2100, column: 11, scope: !2498)
!2504 = !DILocation(line: 2101, column: 10, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2491, file: !351, line: 2100, column: 42)
!2506 = !DILocation(line: 2103, column: 28, scope: !2485)
!2507 = !DILocation(line: 2103, column: 34, scope: !2485)
!2508 = !DILocation(line: 2103, column: 32, scope: !2485)
!2509 = !DILocation(line: 2103, column: 37, scope: !2485)
!2510 = !DILocation(line: 2103, column: 43, scope: !2485)
!2511 = !DILocation(line: 2103, column: 21, scope: !2485)
!2512 = !DILocation(line: 2103, column: 7, scope: !2485)
!2513 = !DILocation(line: 2103, column: 10, scope: !2485)
!2514 = !DILocation(line: 2103, column: 19, scope: !2485)
!2515 = !DILocation(line: 2104, column: 12, scope: !2485)
!2516 = !DILocation(line: 2104, column: 9, scope: !2485)
!2517 = !DILocation(line: 2105, column: 4, scope: !2485)
!2518 = !DILocation(line: 2107, column: 8, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2322, file: !351, line: 2107, column: 8)
!2520 = !DILocation(line: 2107, column: 8, scope: !2322)
!2521 = !DILocalVariable(name: "len", scope: !2522, file: !351, line: 2108, type: !416)
!2522 = distinct !DILexicalBlock(scope: !2519, file: !351, line: 2107, column: 14)
!2523 = !DILocation(line: 2108, column: 14, scope: !2522)
!2524 = !DILocation(line: 2108, column: 27, scope: !2522)
!2525 = !DILocation(line: 2108, column: 20, scope: !2522)
!2526 = !DILocation(line: 2108, column: 33, scope: !2522)
!2527 = !DILocation(line: 2110, column: 11, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2522, file: !351, line: 2110, column: 11)
!2529 = !DILocation(line: 2110, column: 15, scope: !2528)
!2530 = !DILocation(line: 2110, column: 13, scope: !2528)
!2531 = !DILocation(line: 2110, column: 21, scope: !2528)
!2532 = !DILocation(line: 2110, column: 19, scope: !2528)
!2533 = !DILocation(line: 2110, column: 26, scope: !2528)
!2534 = !DILocation(line: 2110, column: 29, scope: !2535)
!2535 = !DILexicalBlockFile(scope: !2528, file: !351, discriminator: 1)
!2536 = !DILocation(line: 2110, column: 33, scope: !2535)
!2537 = !DILocation(line: 2110, column: 31, scope: !2535)
!2538 = !DILocation(line: 2110, column: 39, scope: !2535)
!2539 = !DILocation(line: 2110, column: 37, scope: !2535)
!2540 = !DILocation(line: 2110, column: 11, scope: !2535)
!2541 = !DILocation(line: 2111, column: 10, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2528, file: !351, line: 2110, column: 42)
!2543 = !DILocation(line: 2113, column: 28, scope: !2522)
!2544 = !DILocation(line: 2113, column: 34, scope: !2522)
!2545 = !DILocation(line: 2113, column: 32, scope: !2522)
!2546 = !DILocation(line: 2113, column: 37, scope: !2522)
!2547 = !DILocation(line: 2113, column: 43, scope: !2522)
!2548 = !DILocation(line: 2113, column: 21, scope: !2522)
!2549 = !DILocation(line: 2113, column: 7, scope: !2522)
!2550 = !DILocation(line: 2113, column: 10, scope: !2522)
!2551 = !DILocation(line: 2113, column: 19, scope: !2522)
!2552 = !DILocation(line: 2114, column: 12, scope: !2522)
!2553 = !DILocation(line: 2114, column: 9, scope: !2522)
!2554 = !DILocation(line: 2115, column: 4, scope: !2522)
!2555 = !DILocation(line: 2116, column: 8, scope: !2322)
!2556 = !DILocation(line: 2116, column: 4, scope: !2322)
!2557 = !DILocation(line: 2120, column: 15, scope: !2322)
!2558 = !DILocation(line: 2120, column: 4, scope: !2322)
!2559 = !DILocation(line: 2121, column: 15, scope: !2322)
!2560 = !DILocation(line: 2121, column: 4, scope: !2322)
!2561 = !DILocation(line: 2122, column: 15, scope: !2322)
!2562 = !DILocation(line: 2122, column: 4, scope: !2322)
!2563 = !DILocation(line: 2123, column: 15, scope: !2322)
!2564 = !DILocation(line: 2123, column: 4, scope: !2322)
!2565 = !DILocation(line: 2125, column: 8, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2322, file: !351, line: 2125, column: 8)
!2567 = !DILocation(line: 2125, column: 12, scope: !2566)
!2568 = !DILocation(line: 2125, column: 8, scope: !2322)
!2569 = !DILocation(line: 2126, column: 14, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2566, file: !351, line: 2125, column: 18)
!2571 = !DILocation(line: 2126, column: 8, scope: !2570)
!2572 = !DILocation(line: 2126, column: 12, scope: !2570)
!2573 = !DILocation(line: 2128, column: 7, scope: !2570)
!2574 = !DILocation(line: 2131, column: 11, scope: !2322)
!2575 = !DILocation(line: 2131, column: 4, scope: !2322)
!2576 = !DILocation(line: 2133, column: 1, scope: !2322)
!2577 = distinct !DISubprogram(name: "Posix_Printf", scope: !351, file: !351, line: 2154, type: !2578, isLocal: false, isDefinition: true, scopeLine: 2156, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!363, !429, null}
!2580 = !DILocalVariable(name: "format", arg: 1, scope: !2577, file: !351, line: 2154, type: !429)
!2581 = !DILocation(line: 2154, column: 26, scope: !2577)
!2582 = !DILocalVariable(name: "args", scope: !2577, file: !351, line: 2157, type: !472)
!2583 = !DILocation(line: 2157, column: 12, scope: !2577)
!2584 = !DILocalVariable(name: "output", scope: !2577, file: !351, line: 2158, type: !338)
!2585 = !DILocation(line: 2158, column: 10, scope: !2577)
!2586 = !DILocalVariable(name: "outCurr", scope: !2577, file: !351, line: 2159, type: !338)
!2587 = !DILocation(line: 2159, column: 10, scope: !2577)
!2588 = !DILocalVariable(name: "numChars", scope: !2577, file: !351, line: 2160, type: !363)
!2589 = !DILocation(line: 2160, column: 8, scope: !2577)
!2590 = !DILocation(line: 2162, column: 3, scope: !2577)
!2591 = !DILocation(line: 2163, column: 32, scope: !2577)
!2592 = !DILocation(line: 2163, column: 40, scope: !2577)
!2593 = !DILocation(line: 2163, column: 13, scope: !2577)
!2594 = !DILocation(line: 2163, column: 11, scope: !2577)
!2595 = !DILocation(line: 2164, column: 3, scope: !2577)
!2596 = !DILocation(line: 2166, column: 31, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2577, file: !351, line: 2166, column: 8)
!2598 = !DILocation(line: 2166, column: 9, scope: !2597)
!2599 = !DILocation(line: 2166, column: 8, scope: !2577)
!2600 = !DILocation(line: 2167, column: 7, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2597, file: !351, line: 2166, column: 50)
!2602 = !DILocation(line: 2169, column: 28, scope: !2577)
!2603 = !DILocation(line: 2169, column: 15, scope: !2577)
!2604 = !DILocation(line: 2169, column: 13, scope: !2577)
!2605 = !DILocation(line: 2171, column: 15, scope: !2577)
!2606 = !DILocation(line: 2171, column: 4, scope: !2577)
!2607 = !DILocation(line: 2172, column: 15, scope: !2577)
!2608 = !DILocation(line: 2172, column: 4, scope: !2577)
!2609 = !DILocation(line: 2174, column: 11, scope: !2577)
!2610 = !DILocation(line: 2174, column: 4, scope: !2577)
!2611 = !DILocation(line: 2175, column: 1, scope: !2577)
!2612 = distinct !DISubprogram(name: "Posix_Fprintf", scope: !351, file: !351, line: 2196, type: !2613, isLocal: false, isDefinition: true, scopeLine: 2199, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{!363, !365, !429, null}
!2615 = !DILocalVariable(name: "stream", arg: 1, scope: !2612, file: !351, line: 2196, type: !365)
!2616 = !DILocation(line: 2196, column: 21, scope: !2612)
!2617 = !DILocalVariable(name: "format", arg: 2, scope: !2612, file: !351, line: 2197, type: !429)
!2618 = !DILocation(line: 2197, column: 27, scope: !2612)
!2619 = !DILocalVariable(name: "args", scope: !2612, file: !351, line: 2200, type: !472)
!2620 = !DILocation(line: 2200, column: 12, scope: !2612)
!2621 = !DILocalVariable(name: "output", scope: !2612, file: !351, line: 2201, type: !338)
!2622 = !DILocation(line: 2201, column: 10, scope: !2612)
!2623 = !DILocalVariable(name: "outCurr", scope: !2612, file: !351, line: 2202, type: !338)
!2624 = !DILocation(line: 2202, column: 10, scope: !2612)
!2625 = !DILocalVariable(name: "nOutput", scope: !2612, file: !351, line: 2203, type: !363)
!2626 = !DILocation(line: 2203, column: 8, scope: !2612)
!2627 = !DILocation(line: 2205, column: 3, scope: !2612)
!2628 = !DILocation(line: 2206, column: 32, scope: !2612)
!2629 = !DILocation(line: 2206, column: 40, scope: !2612)
!2630 = !DILocation(line: 2206, column: 13, scope: !2612)
!2631 = !DILocation(line: 2206, column: 11, scope: !2612)
!2632 = !DILocation(line: 2207, column: 3, scope: !2612)
!2633 = !DILocation(line: 2209, column: 31, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2612, file: !351, line: 2209, column: 8)
!2635 = !DILocation(line: 2209, column: 9, scope: !2634)
!2636 = !DILocation(line: 2209, column: 8, scope: !2612)
!2637 = !DILocation(line: 2210, column: 7, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2634, file: !351, line: 2209, column: 50)
!2639 = !DILocation(line: 2212, column: 22, scope: !2612)
!2640 = !DILocation(line: 2212, column: 36, scope: !2612)
!2641 = !DILocation(line: 2212, column: 14, scope: !2612)
!2642 = !DILocation(line: 2212, column: 12, scope: !2612)
!2643 = !DILocation(line: 2214, column: 15, scope: !2612)
!2644 = !DILocation(line: 2214, column: 4, scope: !2612)
!2645 = !DILocation(line: 2215, column: 15, scope: !2612)
!2646 = !DILocation(line: 2215, column: 4, scope: !2612)
!2647 = !DILocation(line: 2217, column: 11, scope: !2612)
!2648 = !DILocation(line: 2217, column: 4, scope: !2612)
!2649 = !DILocation(line: 2218, column: 1, scope: !2612)
!2650 = distinct !DISubprogram(name: "Posix_MkTemp", scope: !351, file: !351, line: 2295, type: !1718, isLocal: false, isDefinition: true, scopeLine: 2296, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!2651 = !DILocalVariable(name: "pathName", arg: 1, scope: !2650, file: !351, line: 2295, type: !429)
!2652 = !DILocation(line: 2295, column: 26, scope: !2650)
!2653 = !DILocalVariable(name: "result", scope: !2650, file: !351, line: 2297, type: !338)
!2654 = !DILocation(line: 2297, column: 10, scope: !2650)
!2655 = !DILocalVariable(name: "path", scope: !2650, file: !351, line: 2298, type: !338)
!2656 = !DILocation(line: 2298, column: 10, scope: !2650)
!2657 = !DILocalVariable(name: "fd", scope: !2650, file: !351, line: 2299, type: !363)
!2658 = !DILocation(line: 2299, column: 8, scope: !2650)
!2659 = !DILocation(line: 2301, column: 31, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2650, file: !351, line: 2301, column: 8)
!2661 = !DILocation(line: 2301, column: 9, scope: !2660)
!2662 = !DILocation(line: 2301, column: 8, scope: !2650)
!2663 = !DILocation(line: 2302, column: 7, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2660, file: !351, line: 2301, column: 49)
!2665 = !DILocation(line: 2304, column: 17, scope: !2650)
!2666 = !DILocation(line: 2304, column: 9, scope: !2650)
!2667 = !DILocation(line: 2304, column: 7, scope: !2650)
!2668 = !DILocation(line: 2305, column: 8, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2650, file: !351, line: 2305, column: 8)
!2670 = !DILocation(line: 2305, column: 11, scope: !2669)
!2671 = !DILocation(line: 2305, column: 8, scope: !2650)
!2672 = !DILocation(line: 2306, column: 13, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2669, file: !351, line: 2305, column: 17)
!2674 = !DILocation(line: 2306, column: 7, scope: !2673)
!2675 = !DILocation(line: 2307, column: 14, scope: !2673)
!2676 = !DILocation(line: 2307, column: 7, scope: !2673)
!2677 = !DILocation(line: 2308, column: 30, scope: !2673)
!2678 = !DILocation(line: 2308, column: 16, scope: !2673)
!2679 = !DILocation(line: 2308, column: 14, scope: !2673)
!2680 = !DILocation(line: 2309, column: 4, scope: !2673)
!2681 = !DILocation(line: 2310, column: 15, scope: !2650)
!2682 = !DILocation(line: 2310, column: 4, scope: !2650)
!2683 = !DILocation(line: 2311, column: 11, scope: !2650)
!2684 = !DILocation(line: 2311, column: 4, scope: !2650)
!2685 = !DILocation(line: 2312, column: 1, scope: !2650)
!2686 = distinct !DISubprogram(name: "Util_FreeList", scope: !1337, file: !1337, line: 335, type: !2687, isLocal: true, isDefinition: true, scopeLine: 337, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!2687 = !DISubroutineType(types: !2688)
!2688 = !{null, !341, !1340}
!2689 = !DILocalVariable(name: "list", arg: 1, scope: !2686, file: !1337, line: 335, type: !341)
!2690 = !DILocation(line: 335, column: 22, scope: !2686)
!2691 = !DILocalVariable(name: "length", arg: 2, scope: !2686, file: !1337, line: 336, type: !1340)
!2692 = !DILocation(line: 336, column: 23, scope: !2686)
!2693 = !DILocalVariable(name: "err", scope: !2686, file: !1337, line: 339, type: !363)
!2694 = !DILocation(line: 339, column: 8, scope: !2686)
!2695 = !DILocation(line: 341, column: 8, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2686, file: !1337, line: 341, column: 8)
!2697 = !DILocation(line: 341, column: 13, scope: !2696)
!2698 = !DILocation(line: 341, column: 8, scope: !2686)
!2699 = !DILocation(line: 343, column: 7, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2696, file: !1337, line: 341, column: 21)
!2701 = !DILocation(line: 346, column: 11, scope: !2686)
!2702 = !DILocation(line: 346, column: 10, scope: !2686)
!2703 = !DILocation(line: 346, column: 8, scope: !2686)
!2704 = !DILocation(line: 348, column: 8, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2686, file: !1337, line: 348, column: 8)
!2706 = !DILocation(line: 348, column: 15, scope: !2705)
!2707 = !DILocation(line: 348, column: 8, scope: !2686)
!2708 = !DILocalVariable(name: "i", scope: !2709, file: !1337, line: 349, type: !1340)
!2709 = distinct !DILexicalBlock(scope: !2705, file: !1337, line: 348, column: 21)
!2710 = !DILocation(line: 349, column: 15, scope: !2709)
!2711 = !DILocation(line: 351, column: 14, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2709, file: !1337, line: 351, column: 7)
!2713 = !DILocation(line: 351, column: 12, scope: !2712)
!2714 = !DILocation(line: 351, column: 19, scope: !2715)
!2715 = !DILexicalBlockFile(scope: !2716, file: !1337, discriminator: 1)
!2716 = distinct !DILexicalBlock(scope: !2712, file: !1337, line: 351, column: 7)
!2717 = !DILocation(line: 351, column: 23, scope: !2715)
!2718 = !DILocation(line: 351, column: 21, scope: !2715)
!2719 = !DILocation(line: 351, column: 7, scope: !2715)
!2720 = !DILocation(line: 352, column: 20, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2716, file: !1337, line: 351, column: 36)
!2722 = !DILocation(line: 352, column: 15, scope: !2721)
!2723 = !DILocation(line: 352, column: 10, scope: !2721)
!2724 = !DILocation(line: 354, column: 7, scope: !2721)
!2725 = !DILocation(line: 351, column: 32, scope: !2726)
!2726 = !DILexicalBlockFile(scope: !2716, file: !1337, discriminator: 2)
!2727 = !DILocation(line: 351, column: 7, scope: !2726)
!2728 = distinct !{!2728, !2729}
!2729 = !DILocation(line: 351, column: 7, scope: !2709)
!2730 = !DILocation(line: 355, column: 4, scope: !2709)
!2731 = !DILocalVariable(name: "s", scope: !2732, file: !1337, line: 356, type: !341)
!2732 = distinct !DILexicalBlock(scope: !2705, file: !1337, line: 355, column: 11)
!2733 = !DILocation(line: 356, column: 14, scope: !2732)
!2734 = !DILocation(line: 358, column: 16, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2732, file: !1337, line: 358, column: 7)
!2736 = !DILocation(line: 358, column: 14, scope: !2735)
!2737 = !DILocation(line: 358, column: 12, scope: !2735)
!2738 = !DILocation(line: 358, column: 23, scope: !2739)
!2739 = !DILexicalBlockFile(scope: !2740, file: !1337, discriminator: 1)
!2740 = distinct !DILexicalBlock(scope: !2735, file: !1337, line: 358, column: 7)
!2741 = !DILocation(line: 358, column: 22, scope: !2739)
!2742 = !DILocation(line: 358, column: 25, scope: !2739)
!2743 = !DILocation(line: 358, column: 7, scope: !2739)
!2744 = !DILocation(line: 359, column: 16, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2740, file: !1337, line: 358, column: 38)
!2746 = !DILocation(line: 359, column: 15, scope: !2745)
!2747 = !DILocation(line: 359, column: 10, scope: !2745)
!2748 = !DILocation(line: 361, column: 7, scope: !2745)
!2749 = !DILocation(line: 358, column: 34, scope: !2750)
!2750 = !DILexicalBlockFile(scope: !2740, file: !1337, discriminator: 2)
!2751 = !DILocation(line: 358, column: 7, scope: !2750)
!2752 = distinct !{!2752, !2753}
!2753 = !DILocation(line: 358, column: 7, scope: !2732)
!2754 = !DILocation(line: 363, column: 9, scope: !2686)
!2755 = !DILocation(line: 363, column: 4, scope: !2686)
!2756 = !DILocation(line: 364, column: 11, scope: !2686)
!2757 = !DILocation(line: 364, column: 5, scope: !2686)
!2758 = !DILocation(line: 364, column: 9, scope: !2686)
!2759 = !DILocation(line: 365, column: 1, scope: !2686)
!2760 = !DILocation(line: 365, column: 1, scope: !2761)
!2761 = !DILexicalBlockFile(scope: !2686, file: !1337, discriminator: 1)
!2762 = distinct !DISubprogram(name: "PosixEnvFree", scope: !426, file: !426, line: 136, type: !559, isLocal: true, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!2763 = !DILocalVariable(name: "v", arg: 1, scope: !2762, file: !426, line: 136, type: !340)
!2764 = !DILocation(line: 136, column: 20, scope: !2762)
!2765 = !DILocation(line: 139, column: 4, scope: !2762)
!2766 = !DILocation(line: 140, column: 1, scope: !2762)
!2767 = distinct !DISubprogram(name: "Atomic_WritePtr", scope: !432, file: !432, line: 3829, type: !2768, isLocal: true, isDefinition: true, scopeLine: 3829, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{null, !2770, !1759}
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64, align: 64)
!2771 = !DILocalVariable(name: "var", arg: 1, scope: !2767, file: !432, line: 3829, type: !2770)
!2772 = !DILocation(line: 3829, column: 470, scope: !2767)
!2773 = !DILocalVariable(name: "val", arg: 2, scope: !2767, file: !432, line: 3829, type: !1759)
!2774 = !DILocation(line: 3829, column: 488, scope: !2767)
!2775 = !DILocation(line: 3829, column: 510, scope: !2767)
!2776 = !DILocation(line: 3829, column: 534, scope: !2767)
!2777 = !DILocation(line: 3829, column: 523, scope: !2767)
!2778 = !DILocation(line: 3829, column: 495, scope: !2767)
!2779 = !DILocation(line: 3829, column: 540, scope: !2767)
!2780 = distinct !DISubprogram(name: "Atomic_ReadPtr", scope: !432, file: !432, line: 3829, type: !2781, isLocal: true, isDefinition: true, scopeLine: 3829, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{!340, !2783}
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64, align: 64)
!2784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !431)
!2785 = !DILocalVariable(name: "var", arg: 1, scope: !2780, file: !432, line: 3829, type: !2783)
!2786 = !DILocation(line: 3829, column: 368, scope: !2780)
!2787 = !DILocation(line: 3829, column: 415, scope: !2780)
!2788 = !DILocation(line: 3829, column: 401, scope: !2780)
!2789 = !DILocation(line: 3829, column: 382, scope: !2780)
!2790 = !DILocation(line: 3829, column: 375, scope: !2780)
!2791 = distinct !DISubprogram(name: "Atomic_ReadIfEqualWritePtr", scope: !432, file: !432, line: 3829, type: !2792, isLocal: true, isDefinition: true, scopeLine: 3829, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{!340, !2770, !1759, !1759}
!2794 = !DILocalVariable(name: "var", arg: 1, scope: !2791, file: !432, line: 3829, type: !2770)
!2795 = !DILocation(line: 3829, column: 757, scope: !2791)
!2796 = !DILocalVariable(name: "oldVal", arg: 2, scope: !2791, file: !432, line: 3829, type: !1759)
!2797 = !DILocation(line: 3829, column: 775, scope: !2791)
!2798 = !DILocalVariable(name: "newVal", arg: 3, scope: !2791, file: !432, line: 3829, type: !1759)
!2799 = !DILocation(line: 3829, column: 796, scope: !2791)
!2800 = !DILocation(line: 3829, column: 858, scope: !2791)
!2801 = !DILocation(line: 3829, column: 882, scope: !2791)
!2802 = !DILocation(line: 3829, column: 871, scope: !2791)
!2803 = !DILocation(line: 3829, column: 909, scope: !2791)
!2804 = !DILocation(line: 3829, column: 898, scope: !2791)
!2805 = !DILocation(line: 3829, column: 832, scope: !2791)
!2806 = !DILocation(line: 3829, column: 813, scope: !2791)
!2807 = !DILocation(line: 3829, column: 806, scope: !2791)
!2808 = distinct !DISubprogram(name: "Atomic_ReadWritePtr", scope: !432, file: !432, line: 3829, type: !2809, isLocal: true, isDefinition: true, scopeLine: 3829, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!340, !2770, !1759}
!2811 = !DILocalVariable(name: "var", arg: 1, scope: !2808, file: !432, line: 3829, type: !2770)
!2812 = !DILocation(line: 3829, column: 595, scope: !2808)
!2813 = !DILocalVariable(name: "val", arg: 2, scope: !2808, file: !432, line: 3829, type: !1759)
!2814 = !DILocation(line: 3829, column: 613, scope: !2808)
!2815 = !DILocation(line: 3829, column: 665, scope: !2808)
!2816 = !DILocation(line: 3829, column: 689, scope: !2808)
!2817 = !DILocation(line: 3829, column: 678, scope: !2808)
!2818 = !DILocation(line: 3829, column: 646, scope: !2808)
!2819 = !DILocation(line: 3829, column: 627, scope: !2808)
!2820 = !DILocation(line: 3829, column: 620, scope: !2808)
!2821 = distinct !DISubprogram(name: "Atomic_Write64", scope: !432, file: !432, line: 2604, type: !2822, isLocal: true, isDefinition: true, scopeLine: 2606, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{null, !2824, !342}
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64, align: 64)
!2825 = !DILocalVariable(name: "var", arg: 1, scope: !2821, file: !432, line: 2604, type: !2824)
!2826 = !DILocation(line: 2604, column: 31, scope: !2821)
!2827 = !DILocalVariable(name: "val", arg: 2, scope: !2821, file: !432, line: 2605, type: !342)
!2828 = !DILocation(line: 2605, column: 23, scope: !2821)
!2829 = !DILocation(line: 2622, column: 15, scope: !2821)
!2830 = !DILocation(line: 2622, column: 20, scope: !2821)
!2831 = !DILocation(line: 2623, column: 14, scope: !2821)
!2832 = !DILocation(line: 2620, column: 4, scope: !2821)
!2833 = !{i32 234190}
!2834 = !DILocation(line: 2643, column: 1, scope: !2821)
!2835 = distinct !DISubprogram(name: "Atomic_Read64", scope: !432, file: !432, line: 2143, type: !2836, isLocal: true, isDefinition: true, scopeLine: 2144, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{!342, !2838}
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64, align: 64)
!2839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !433)
!2840 = !DILocalVariable(name: "var", arg: 1, scope: !2835, file: !432, line: 2143, type: !2838)
!2841 = !DILocation(line: 2143, column: 36, scope: !2835)
!2842 = !DILocalVariable(name: "value", scope: !2835, file: !432, line: 2146, type: !342)
!2843 = !DILocation(line: 2146, column: 11, scope: !2835)
!2844 = !DILocation(line: 2160, column: 14, scope: !2835)
!2845 = !DILocation(line: 2160, column: 19, scope: !2835)
!2846 = !DILocation(line: 2157, column: 4, scope: !2835)
!2847 = !{i32 230516}
!2848 = !DILocation(line: 2213, column: 11, scope: !2835)
!2849 = !DILocation(line: 2213, column: 4, scope: !2835)
!2850 = distinct !DISubprogram(name: "Atomic_ReadIfEqualWrite64", scope: !432, file: !432, line: 1190, type: !2851, isLocal: true, isDefinition: true, scopeLine: 1193, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!342, !2824, !342, !342}
!2853 = !DILocalVariable(name: "var", arg: 1, scope: !2850, file: !432, line: 1190, type: !2824)
!2854 = !DILocation(line: 1190, column: 42, scope: !2850)
!2855 = !DILocalVariable(name: "oldVal", arg: 2, scope: !2850, file: !432, line: 1191, type: !342)
!2856 = !DILocation(line: 1191, column: 34, scope: !2850)
!2857 = !DILocalVariable(name: "newVal", arg: 3, scope: !2850, file: !432, line: 1192, type: !342)
!2858 = !DILocation(line: 1192, column: 34, scope: !2850)
!2859 = !DILocalVariable(name: "val", scope: !2850, file: !432, line: 1240, type: !342)
!2860 = !DILocation(line: 1240, column: 11, scope: !2850)
!2861 = !DILocation(line: 1246, column: 15, scope: !2850)
!2862 = !DILocation(line: 1246, column: 20, scope: !2850)
!2863 = !DILocation(line: 1247, column: 14, scope: !2850)
!2864 = !DILocation(line: 1248, column: 14, scope: !2850)
!2865 = !DILocation(line: 1243, column: 4, scope: !2850)
!2866 = !{i32 222958}
!2867 = !DILocation(line: 1251, column: 11, scope: !2850)
!2868 = !DILocation(line: 1251, column: 4, scope: !2850)
!2869 = distinct !DISubprogram(name: "Atomic_ReadWrite64", scope: !432, file: !432, line: 2554, type: !2870, isLocal: true, isDefinition: true, scopeLine: 2556, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{!342, !2824, !342}
!2872 = !DILocalVariable(name: "var", arg: 1, scope: !2869, file: !432, line: 2554, type: !2824)
!2873 = !DILocation(line: 2554, column: 35, scope: !2869)
!2874 = !DILocalVariable(name: "val", arg: 2, scope: !2869, file: !432, line: 2555, type: !342)
!2875 = !DILocation(line: 2555, column: 27, scope: !2869)
!2876 = !DILocation(line: 2563, column: 15, scope: !2869)
!2877 = !DILocation(line: 2563, column: 20, scope: !2869)
!2878 = !DILocation(line: 2564, column: 14, scope: !2869)
!2879 = !DILocation(line: 2560, column: 4, scope: !2869)
!2880 = !{i32 233618}
!2881 = !DILocation(line: 2567, column: 11, scope: !2869)
!2882 = !DILocation(line: 2567, column: 4, scope: !2869)
