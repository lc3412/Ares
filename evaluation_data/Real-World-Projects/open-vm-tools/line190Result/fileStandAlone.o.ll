; ModuleID = './fileStandAlone.o.i'
source_filename = "./fileStandAlone.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1

; Function Attrs: nounwind uwtable
define i64 @File_GetModTime(i8*) #0 !dbg !343 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.stat, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !355, metadata !356), !dbg !357
  call void @llvm.dbg.declare(metadata i64* %3, metadata !358, metadata !356), !dbg !359
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !360, metadata !356), !dbg !402
  %5 = load i8*, i8** %2, align 8, !dbg !403
  %6 = call i32 @Posix_Stat(i8* %5, %struct.stat* %4), !dbg !405
  %7 = icmp eq i32 %6, 0, !dbg !406
  br i1 %7, label %8, label %12, !dbg !407

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 12, !dbg !408
  %10 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 0, !dbg !410
  %11 = load i64, i64* %10, align 8, !dbg !410
  store i64 %11, i64* %3, align 8, !dbg !411
  br label %13, !dbg !412

; <label>:12:                                     ; preds = %1
  store i64 -1, i64* %3, align 8, !dbg !413
  br label %13

; <label>:13:                                     ; preds = %12, %8
  %14 = load i64, i64* %3, align 8, !dbg !415
  ret i64 %14, !dbg !416
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @Posix_Stat(i8*, %struct.stat*) #2

; Function Attrs: nounwind uwtable
define void @File_SplitName(i8*, i8**, i8**, i8**) #0 !dbg !417 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !421, metadata !356), !dbg !422
  store i8** %1, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !423, metadata !356), !dbg !424
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !425, metadata !356), !dbg !426
  store i8** %3, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !427, metadata !356), !dbg !428
  call void @llvm.dbg.declare(metadata i8** %9, metadata !429, metadata !356), !dbg !430
  call void @llvm.dbg.declare(metadata i8** %10, metadata !431, metadata !356), !dbg !432
  call void @llvm.dbg.declare(metadata i8** %11, metadata !433, metadata !356), !dbg !434
  call void @llvm.dbg.declare(metadata i8** %12, metadata !435, metadata !356), !dbg !436
  call void @llvm.dbg.declare(metadata i8** %13, metadata !437, metadata !356), !dbg !438
  call void @llvm.dbg.declare(metadata i32* %14, metadata !439, metadata !356), !dbg !440
  call void @llvm.dbg.declare(metadata i32* %15, metadata !441, metadata !356), !dbg !442
  call void @llvm.dbg.declare(metadata i32* %16, metadata !443, metadata !356), !dbg !444
  %17 = load i8*, i8** %5, align 8, !dbg !445
  %18 = call i64 @strlen(i8* %17) #9, !dbg !446
  %19 = trunc i64 %18 to i32, !dbg !446
  store i32 %19, i32* %16, align 4, !dbg !444
  %20 = load i8*, i8** %5, align 8, !dbg !447
  store i8* %20, i8** %13, align 8, !dbg !448
  %21 = load i8*, i8** %13, align 8, !dbg !449
  %22 = load i8*, i8** %5, align 8, !dbg !450
  %23 = ptrtoint i8* %21 to i64, !dbg !451
  %24 = ptrtoint i8* %22 to i64, !dbg !451
  %25 = sub i64 %23, %24, !dbg !451
  %26 = trunc i64 %25 to i32, !dbg !449
  store i32 %26, i32* %14, align 4, !dbg !452
  %27 = load i32, i32* %14, align 4, !dbg !453
  %28 = add nsw i32 %27, 1, !dbg !454
  %29 = sext i32 %28 to i64, !dbg !455
  %30 = call i8* @UtilSafeMalloc0(i64 %29), !dbg !456
  store i8* %30, i8** %9, align 8, !dbg !457
  %31 = load i8*, i8** %9, align 8, !dbg !458
  %32 = load i8*, i8** %5, align 8, !dbg !459
  %33 = load i32, i32* %14, align 4, !dbg !460
  %34 = sext i32 %33 to i64, !dbg !460
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 %34, i32 1, i1 false), !dbg !461
  %35 = load i32, i32* %14, align 4, !dbg !462
  %36 = sext i32 %35 to i64, !dbg !463
  %37 = load i8*, i8** %9, align 8, !dbg !463
  %38 = getelementptr inbounds i8, i8* %37, i64 %36, !dbg !463
  store i8 0, i8* %38, align 1, !dbg !464
  %39 = load i8*, i8** %5, align 8, !dbg !465
  %40 = load i32, i32* %16, align 4, !dbg !466
  %41 = sext i32 %40 to i64, !dbg !466
  %42 = call i8* @FileFindLastDirsep(i8* %39, i64 %41), !dbg !467
  store i8* %42, i8** %12, align 8, !dbg !468
  %43 = load i8*, i8** %12, align 8, !dbg !469
  %44 = icmp eq i8* %43, null, !dbg !470
  br i1 %44, label %45, label %47, !dbg !471

; <label>:45:                                     ; preds = %4
  %46 = load i8*, i8** %5, align 8, !dbg !472
  br label %50, !dbg !474

; <label>:47:                                     ; preds = %4
  %48 = load i8*, i8** %12, align 8, !dbg !475
  %49 = getelementptr inbounds i8, i8* %48, i64 1, !dbg !477
  br label %50, !dbg !478

; <label>:50:                                     ; preds = %47, %45
  %51 = phi i8* [ %46, %45 ], [ %49, %47 ], !dbg !479
  store i8* %51, i8** %12, align 8, !dbg !481
  %52 = load i8*, i8** %12, align 8, !dbg !482
  %53 = load i8*, i8** %13, align 8, !dbg !484
  %54 = icmp ult i8* %52, %53, !dbg !485
  br i1 %54, label %55, label %60, !dbg !486

; <label>:55:                                     ; preds = %50
  %56 = load i8*, i8** %5, align 8, !dbg !487
  %57 = load i32, i32* %16, align 4, !dbg !489
  %58 = sext i32 %57 to i64, !dbg !490
  %59 = getelementptr inbounds i8, i8* %56, i64 %58, !dbg !490
  store i8* %59, i8** %12, align 8, !dbg !491
  br label %60, !dbg !492

; <label>:60:                                     ; preds = %55, %50
  %61 = load i8*, i8** %12, align 8, !dbg !493
  %62 = call i8* @UtilSafeStrdup0(i8* %61), !dbg !494
  store i8* %62, i8** %11, align 8, !dbg !495
  %63 = load i8*, i8** %12, align 8, !dbg !496
  %64 = load i8*, i8** %13, align 8, !dbg !497
  %65 = ptrtoint i8* %63 to i64, !dbg !498
  %66 = ptrtoint i8* %64 to i64, !dbg !498
  %67 = sub i64 %65, %66, !dbg !498
  %68 = trunc i64 %67 to i32, !dbg !496
  store i32 %68, i32* %15, align 4, !dbg !499
  %69 = load i32, i32* %15, align 4, !dbg !500
  %70 = add nsw i32 %69, 1, !dbg !501
  %71 = sext i32 %70 to i64, !dbg !502
  %72 = call i8* @UtilSafeMalloc0(i64 %71), !dbg !503
  store i8* %72, i8** %10, align 8, !dbg !504
  %73 = load i8*, i8** %10, align 8, !dbg !505
  %74 = load i8*, i8** %13, align 8, !dbg !506
  %75 = load i32, i32* %15, align 4, !dbg !507
  %76 = sext i32 %75 to i64, !dbg !507
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* %74, i64 %76, i32 1, i1 false), !dbg !508
  %77 = load i32, i32* %15, align 4, !dbg !509
  %78 = sext i32 %77 to i64, !dbg !510
  %79 = load i8*, i8** %10, align 8, !dbg !510
  %80 = getelementptr inbounds i8, i8* %79, i64 %78, !dbg !510
  store i8 0, i8* %80, align 1, !dbg !511
  %81 = load i8**, i8*** %6, align 8, !dbg !512
  %82 = icmp eq i8** %81, null, !dbg !514
  br i1 %82, label %83, label %85, !dbg !515

; <label>:83:                                     ; preds = %60
  %84 = load i8*, i8** %9, align 8, !dbg !516
  call void @free(i8* %84) #7, !dbg !518
  br label %88, !dbg !519

; <label>:85:                                     ; preds = %60
  %86 = load i8*, i8** %9, align 8, !dbg !520
  %87 = load i8**, i8*** %6, align 8, !dbg !522
  store i8* %86, i8** %87, align 8, !dbg !523
  br label %88

; <label>:88:                                     ; preds = %85, %83
  %89 = load i8**, i8*** %7, align 8, !dbg !524
  %90 = icmp eq i8** %89, null, !dbg !526
  br i1 %90, label %91, label %93, !dbg !527

; <label>:91:                                     ; preds = %88
  %92 = load i8*, i8** %10, align 8, !dbg !528
  call void @free(i8* %92) #7, !dbg !530
  br label %96, !dbg !531

; <label>:93:                                     ; preds = %88
  %94 = load i8*, i8** %10, align 8, !dbg !532
  %95 = load i8**, i8*** %7, align 8, !dbg !534
  store i8* %94, i8** %95, align 8, !dbg !535
  br label %96

; <label>:96:                                     ; preds = %93, %91
  %97 = load i8**, i8*** %8, align 8, !dbg !536
  %98 = icmp eq i8** %97, null, !dbg !538
  br i1 %98, label %99, label %101, !dbg !539

; <label>:99:                                     ; preds = %96
  %100 = load i8*, i8** %11, align 8, !dbg !540
  call void @free(i8* %100) #7, !dbg !542
  br label %104, !dbg !543

; <label>:101:                                    ; preds = %96
  %102 = load i8*, i8** %11, align 8, !dbg !544
  %103 = load i8**, i8*** %8, align 8, !dbg !546
  store i8* %102, i8** %103, align 8, !dbg !547
  br label %104

; <label>:104:                                    ; preds = %101, %99
  ret void, !dbg !548
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i8* @UtilSafeMalloc0(i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal i8* @FileFindLastDirsep(i8*, i64) #0 !dbg !549 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !554, metadata !356), !dbg !555
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !556, metadata !356), !dbg !557
  call void @llvm.dbg.declare(metadata i8** %6, metadata !558, metadata !356), !dbg !559
  %7 = load i8*, i8** %4, align 8, !dbg !560
  %8 = load i64, i64* %5, align 8, !dbg !561
  %9 = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !562
  store i8* %9, i8** %6, align 8, !dbg !563
  br label %10, !dbg !564

; <label>:10:                                     ; preds = %23, %2
  %11 = load i8*, i8** %6, align 8, !dbg !565
  %12 = getelementptr inbounds i8, i8* %11, i32 -1, !dbg !565
  store i8* %12, i8** %6, align 8, !dbg !565
  %13 = load i8*, i8** %4, align 8, !dbg !567
  %14 = icmp ne i8* %11, %13, !dbg !568
  br i1 %14, label %15, label %24, !dbg !569

; <label>:15:                                     ; preds = %10
  %16 = load i8*, i8** %6, align 8, !dbg !570
  %17 = load i8, i8* %16, align 1, !dbg !573
  %18 = sext i8 %17 to i32, !dbg !573
  %19 = call signext i8 @File_IsDirsep(i32 %18), !dbg !574
  %20 = icmp ne i8 %19, 0, !dbg !574
  br i1 %20, label %21, label %23, !dbg !575

; <label>:21:                                     ; preds = %15
  %22 = load i8*, i8** %6, align 8, !dbg !576
  store i8* %22, i8** %3, align 8, !dbg !578
  br label %25, !dbg !578

; <label>:23:                                     ; preds = %15
  br label %10, !dbg !579, !llvm.loop !581

; <label>:24:                                     ; preds = %10
  store i8* null, i8** %3, align 8, !dbg !582
  br label %25, !dbg !582

; <label>:25:                                     ; preds = %24, %21
  %26 = load i8*, i8** %3, align 8, !dbg !583
  ret i8* %26, !dbg !583
}

declare i8* @UtilSafeStrdup0(i8*) #2

; Function Attrs: nounwind
declare void @free(i8*) #5

; Function Attrs: nounwind uwtable
define i8* @File_PathJoin(i8*, i8*) #0 !dbg !584 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !587, metadata !356), !dbg !588
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !589, metadata !356), !dbg !590
  call void @llvm.dbg.declare(metadata i8** %5, metadata !591, metadata !356), !dbg !592
  call void @llvm.dbg.declare(metadata i8** %6, metadata !593, metadata !356), !dbg !594
  store i8* null, i8** %6, align 8, !dbg !594
  br label %7, !dbg !595

; <label>:7:                                      ; preds = %12, %2
  %8 = load i8*, i8** %4, align 8, !dbg !596
  %9 = load i8, i8* %8, align 1, !dbg !598
  %10 = sext i8 %9 to i32, !dbg !598
  %11 = icmp eq i32 %10, 47, !dbg !599
  br i1 %11, label %12, label %15, !dbg !600

; <label>:12:                                     ; preds = %7
  %13 = load i8*, i8** %4, align 8, !dbg !601
  %14 = getelementptr inbounds i8, i8* %13, i32 1, !dbg !601
  store i8* %14, i8** %4, align 8, !dbg !601
  br label %7, !dbg !603, !llvm.loop !605

; <label>:15:                                     ; preds = %7
  %16 = load i8*, i8** %3, align 8, !dbg !606
  %17 = call i8* @File_StripSlashes(i8* %16), !dbg !607
  store i8* %17, i8** %6, align 8, !dbg !608
  %18 = load i8*, i8** %6, align 8, !dbg !609
  %19 = load i8*, i8** %4, align 8, !dbg !610
  %20 = call i8* (i8*, ...) @Unicode_Join(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* %19, i8* null), !dbg !611
  store i8* %20, i8** %5, align 8, !dbg !612
  %21 = load i8*, i8** %6, align 8, !dbg !613
  call void @Posix_Free(i8* %21), !dbg !614
  %22 = load i8*, i8** %5, align 8, !dbg !615
  ret i8* %22, !dbg !616
}

; Function Attrs: nounwind uwtable
define i8* @File_StripSlashes(i8*) #0 !dbg !617 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !620, metadata !356), !dbg !621
  call void @llvm.dbg.declare(metadata i8** %3, metadata !622, metadata !356), !dbg !623
  call void @llvm.dbg.declare(metadata i8** %4, metadata !624, metadata !356), !dbg !625
  call void @llvm.dbg.declare(metadata i8** %5, metadata !626, metadata !356), !dbg !627
  call void @llvm.dbg.declare(metadata i8** %6, metadata !628, metadata !356), !dbg !629
  %9 = load i8*, i8** %2, align 8, !dbg !630
  call void @File_SplitName(i8* %9, i8** %4, i8** %5, i8** %6), !dbg !631
  %10 = load i8*, i8** %5, align 8, !dbg !632
  %11 = call signext i8 @Unicode_IsEmpty(i8* %10), !dbg !634
  %12 = icmp ne i8 %11, 0, !dbg !634
  br i1 %12, label %47, label %13, !dbg !635

; <label>:13:                                     ; preds = %1
  %14 = load i8*, i8** %6, align 8, !dbg !636
  %15 = call signext i8 @Unicode_IsEmpty(i8* %14), !dbg !638
  %16 = sext i8 %15 to i32, !dbg !638
  %17 = icmp ne i32 %16, 0, !dbg !638
  br i1 %17, label %18, label %47, !dbg !639

; <label>:18:                                     ; preds = %13
  call void @llvm.dbg.declare(metadata i8** %7, metadata !640, metadata !356), !dbg !642
  %19 = load i8*, i8** %5, align 8, !dbg !643
  %20 = call i8* @Unicode_GetAllocBytes(i8* %19, i32 0), !dbg !644
  store i8* %20, i8** %7, align 8, !dbg !642
  call void @llvm.dbg.declare(metadata i64* %8, metadata !645, metadata !356), !dbg !646
  %21 = load i8*, i8** %7, align 8, !dbg !647
  %22 = call i64 @strlen(i8* %21) #9, !dbg !648
  store i64 %22, i64* %8, align 8, !dbg !646
  br label %23, !dbg !649

; <label>:23:                                     ; preds = %38, %18
  %24 = load i64, i64* %8, align 8, !dbg !650
  %25 = icmp ugt i64 %24, 0, !dbg !652
  br i1 %25, label %26, label %36, !dbg !653

; <label>:26:                                     ; preds = %23
  %27 = load i64, i64* %8, align 8, !dbg !654
  %28 = sub i64 %27, 1, !dbg !656
  %29 = load i8*, i8** %7, align 8, !dbg !657
  %30 = getelementptr inbounds i8, i8* %29, i64 %28, !dbg !657
  %31 = load i8, i8* %30, align 1, !dbg !657
  %32 = sext i8 %31 to i32, !dbg !657
  %33 = call signext i8 @File_IsDirsep(i32 %32), !dbg !658
  %34 = sext i8 %33 to i32, !dbg !658
  %35 = icmp ne i32 %34, 0, !dbg !659
  br label %36

; <label>:36:                                     ; preds = %26, %23
  %37 = phi i1 [ false, %23 ], [ %35, %26 ]
  br i1 %37, label %38, label %41, !dbg !660

; <label>:38:                                     ; preds = %36
  %39 = load i64, i64* %8, align 8, !dbg !662
  %40 = add i64 %39, -1, !dbg !662
  store i64 %40, i64* %8, align 8, !dbg !662
  br label %23, !dbg !664, !llvm.loop !666

; <label>:41:                                     ; preds = %36
  %42 = load i8*, i8** %5, align 8, !dbg !667
  call void @Posix_Free(i8* %42), !dbg !668
  %43 = load i8*, i8** %7, align 8, !dbg !669
  %44 = load i64, i64* %8, align 8, !dbg !670
  %45 = call i8* @Unicode_AllocWithLength(i8* %43, i64 %44, i32 0), !dbg !671
  store i8* %45, i8** %5, align 8, !dbg !672
  %46 = load i8*, i8** %7, align 8, !dbg !673
  call void @Posix_Free(i8* %46), !dbg !674
  br label %47, !dbg !675

; <label>:47:                                     ; preds = %41, %13, %1
  %48 = load i8*, i8** %4, align 8, !dbg !676
  %49 = load i8*, i8** %5, align 8, !dbg !677
  %50 = load i8*, i8** %6, align 8, !dbg !678
  %51 = call i8* (i8*, ...) @Unicode_Join(i8* %48, i8* %49, i8* %50, i8* null), !dbg !679
  store i8* %51, i8** %3, align 8, !dbg !680
  %52 = load i8*, i8** %4, align 8, !dbg !681
  call void @Posix_Free(i8* %52), !dbg !682
  %53 = load i8*, i8** %5, align 8, !dbg !683
  call void @Posix_Free(i8* %53), !dbg !684
  %54 = load i8*, i8** %6, align 8, !dbg !685
  call void @Posix_Free(i8* %54), !dbg !686
  %55 = load i8*, i8** %3, align 8, !dbg !687
  ret i8* %55, !dbg !688
}

declare i8* @Unicode_Join(i8*, ...) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @Posix_Free(i8*) #6 !dbg !689 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !693, metadata !356), !dbg !694
  call void @llvm.dbg.declare(metadata i32* %3, metadata !695, metadata !356), !dbg !696
  %4 = call i32* @__errno_location() #1, !dbg !697
  %5 = load i32, i32* %4, align 4, !dbg !698
  store i32 %5, i32* %3, align 4, !dbg !696
  %6 = load i8*, i8** %2, align 8, !dbg !699
  call void @free(i8* %6) #7, !dbg !700
  %7 = load i32, i32* %3, align 4, !dbg !701
  %8 = call i32* @__errno_location() #1, !dbg !702
  store i32 %7, i32* %8, align 4, !dbg !703
  ret void, !dbg !704
}

; Function Attrs: nounwind uwtable
define void @File_GetPathName(i8*, i8**, i8**) #0 !dbg !705 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !708, metadata !356), !dbg !709
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !710, metadata !356), !dbg !711
  store i8** %2, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !712, metadata !356), !dbg !713
  call void @llvm.dbg.declare(metadata i8** %7, metadata !714, metadata !356), !dbg !715
  call void @llvm.dbg.declare(metadata i8** %8, metadata !716, metadata !356), !dbg !717
  call void @llvm.dbg.declare(metadata i8** %9, metadata !718, metadata !356), !dbg !719
  %10 = load i8*, i8** %4, align 8, !dbg !720
  %11 = load i8*, i8** %4, align 8, !dbg !721
  %12 = call i64 @strlen(i8* %11) #9, !dbg !722
  %13 = call i8* @FileFindLastDirsep(i8* %10, i64 %12), !dbg !723
  store i8* %13, i8** %7, align 8, !dbg !725
  %14 = load i8*, i8** %7, align 8, !dbg !726
  %15 = icmp eq i8* %14, null, !dbg !728
  br i1 %15, label %16, label %20, !dbg !729

; <label>:16:                                     ; preds = %3
  %17 = call i8* @UtilSafeStrdup0(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0)), !dbg !730
  store i8* %17, i8** %8, align 8, !dbg !732
  %18 = load i8*, i8** %4, align 8, !dbg !733
  %19 = call i8* @UtilSafeStrdup0(i8* %18), !dbg !734
  store i8* %19, i8** %9, align 8, !dbg !735
  br label %62, !dbg !736

; <label>:20:                                     ; preds = %3
  %21 = load i8*, i8** %7, align 8, !dbg !737
  %22 = load i8*, i8** %4, align 8, !dbg !739
  %23 = ptrtoint i8* %21 to i64, !dbg !740
  %24 = ptrtoint i8* %22 to i64, !dbg !740
  %25 = sub i64 %23, %24, !dbg !740
  %26 = add nsw i64 %25, 1, !dbg !741
  %27 = load i8*, i8** %4, align 8, !dbg !742
  %28 = getelementptr inbounds i8, i8* %27, i64 %26, !dbg !742
  %29 = call i8* @UtilSafeStrdup0(i8* %28), !dbg !743
  store i8* %29, i8** %9, align 8, !dbg !744
  %30 = load i8*, i8** %4, align 8, !dbg !745
  %31 = call i8* @UtilSafeStrdup0(i8* %30), !dbg !746
  store i8* %31, i8** %8, align 8, !dbg !747
  %32 = load i8*, i8** %7, align 8, !dbg !748
  %33 = load i8*, i8** %4, align 8, !dbg !749
  %34 = ptrtoint i8* %32 to i64, !dbg !750
  %35 = ptrtoint i8* %33 to i64, !dbg !750
  %36 = sub i64 %34, %35, !dbg !750
  %37 = load i8*, i8** %8, align 8, !dbg !751
  %38 = getelementptr inbounds i8, i8* %37, i64 %36, !dbg !751
  store i8 0, i8* %38, align 1, !dbg !752
  %39 = load i8*, i8** %7, align 8, !dbg !753
  %40 = load i8*, i8** %4, align 8, !dbg !754
  %41 = ptrtoint i8* %39 to i64, !dbg !755
  %42 = ptrtoint i8* %40 to i64, !dbg !755
  %43 = sub i64 %41, %42, !dbg !755
  %44 = load i8*, i8** %8, align 8, !dbg !756
  %45 = getelementptr inbounds i8, i8* %44, i64 %43, !dbg !756
  store i8* %45, i8** %7, align 8, !dbg !757
  br label %46, !dbg !758

; <label>:46:                                     ; preds = %60, %20
  %47 = load i8*, i8** %7, align 8, !dbg !759
  %48 = getelementptr inbounds i8, i8* %47, i32 -1, !dbg !759
  store i8* %48, i8** %7, align 8, !dbg !759
  %49 = load i8*, i8** %8, align 8, !dbg !761
  %50 = icmp ne i8* %47, %49, !dbg !762
  br i1 %50, label %51, label %61, !dbg !763

; <label>:51:                                     ; preds = %46
  %52 = load i8*, i8** %7, align 8, !dbg !764
  %53 = load i8, i8* %52, align 1, !dbg !767
  %54 = sext i8 %53 to i32, !dbg !767
  %55 = call signext i8 @File_IsDirsep(i32 %54), !dbg !768
  %56 = icmp ne i8 %55, 0, !dbg !768
  br i1 %56, label %57, label %59, !dbg !769

; <label>:57:                                     ; preds = %51
  %58 = load i8*, i8** %7, align 8, !dbg !770
  store i8 0, i8* %58, align 1, !dbg !772
  br label %60, !dbg !773

; <label>:59:                                     ; preds = %51
  br label %61, !dbg !774

; <label>:60:                                     ; preds = %57
  br label %46, !dbg !776, !llvm.loop !778

; <label>:61:                                     ; preds = %59, %46
  br label %62

; <label>:62:                                     ; preds = %61, %16
  %63 = load i8**, i8*** %5, align 8, !dbg !779
  %64 = icmp eq i8** %63, null, !dbg !781
  br i1 %64, label %65, label %67, !dbg !782

; <label>:65:                                     ; preds = %62
  %66 = load i8*, i8** %8, align 8, !dbg !783
  call void @free(i8* %66) #7, !dbg !785
  br label %70, !dbg !786

; <label>:67:                                     ; preds = %62
  %68 = load i8*, i8** %8, align 8, !dbg !787
  %69 = load i8**, i8*** %5, align 8, !dbg !789
  store i8* %68, i8** %69, align 8, !dbg !790
  br label %70

; <label>:70:                                     ; preds = %67, %65
  %71 = load i8**, i8*** %6, align 8, !dbg !791
  %72 = icmp eq i8** %71, null, !dbg !793
  br i1 %72, label %73, label %75, !dbg !794

; <label>:73:                                     ; preds = %70
  %74 = load i8*, i8** %9, align 8, !dbg !795
  call void @free(i8* %74) #7, !dbg !797
  br label %78, !dbg !798

; <label>:75:                                     ; preds = %70
  %76 = load i8*, i8** %9, align 8, !dbg !799
  %77 = load i8**, i8*** %6, align 8, !dbg !801
  store i8* %76, i8** %77, align 8, !dbg !802
  br label %78

; <label>:78:                                     ; preds = %75, %73
  ret void, !dbg !803
}

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @File_IsDirsep(i32) #6 !dbg !804 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !809, metadata !356), !dbg !810
  %3 = load i32, i32* %2, align 4, !dbg !811
  %4 = icmp eq i32 %3, 47, !dbg !812
  %5 = zext i1 %4 to i32, !dbg !812
  %6 = trunc i32 %5 to i8, !dbg !811
  ret i8 %6, !dbg !813
}

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @Unicode_IsEmpty(i8*) #6 !dbg !814 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !818, metadata !356), !dbg !819
  %3 = load i8*, i8** %2, align 8, !dbg !820
  %4 = getelementptr inbounds i8, i8* %3, i64 0, !dbg !820
  %5 = load i8, i8* %4, align 1, !dbg !820
  %6 = sext i8 %5 to i32, !dbg !820
  %7 = icmp eq i32 %6, 0, !dbg !821
  %8 = zext i1 %7 to i32, !dbg !821
  %9 = trunc i32 %8 to i8, !dbg !820
  ret i8 %9, !dbg !822
}

declare i8* @Unicode_GetAllocBytes(i8*, i32) #2

declare i8* @Unicode_AllocWithLength(i8*, i64, i32) #2

; Function Attrs: nounwind uwtable
define i8* @File_MapPathPrefix(i8*, i8**, i8**, i64) #0 !dbg !823 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !827, metadata !356), !dbg !828
  store i8** %1, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !829, metadata !356), !dbg !830
  store i8** %2, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !831, metadata !356), !dbg !832
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !833, metadata !356), !dbg !834
  call void @llvm.dbg.declare(metadata i32* %10, metadata !835, metadata !356), !dbg !836
  call void @llvm.dbg.declare(metadata i64* %11, metadata !837, metadata !356), !dbg !838
  %18 = load i8*, i8** %6, align 8, !dbg !839
  %19 = call i64 @strlen(i8* %18) #9, !dbg !840
  store i64 %19, i64* %11, align 8, !dbg !838
  store i32 0, i32* %10, align 4, !dbg !841
  br label %20, !dbg !843

; <label>:20:                                     ; preds = %95, %4
  %21 = load i32, i32* %10, align 4, !dbg !844
  %22 = sext i32 %21 to i64, !dbg !844
  %23 = load i64, i64* %9, align 8, !dbg !847
  %24 = icmp ult i64 %22, %23, !dbg !848
  br i1 %24, label %25, label %98, !dbg !849

; <label>:25:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata i8** %12, metadata !850, metadata !356), !dbg !852
  call void @llvm.dbg.declare(metadata i8** %13, metadata !853, metadata !356), !dbg !854
  call void @llvm.dbg.declare(metadata i8** %14, metadata !855, metadata !356), !dbg !856
  call void @llvm.dbg.declare(metadata i64* %15, metadata !857, metadata !356), !dbg !858
  %26 = load i32, i32* %10, align 4, !dbg !859
  %27 = sext i32 %26 to i64, !dbg !860
  %28 = load i8**, i8*** %7, align 8, !dbg !860
  %29 = getelementptr inbounds i8*, i8** %28, i64 %27, !dbg !860
  %30 = load i8*, i8** %29, align 8, !dbg !860
  %31 = call i8* @File_StripSlashes(i8* %30), !dbg !861
  store i8* %31, i8** %13, align 8, !dbg !862
  %32 = load i32, i32* %10, align 4, !dbg !863
  %33 = sext i32 %32 to i64, !dbg !864
  %34 = load i8**, i8*** %8, align 8, !dbg !864
  %35 = getelementptr inbounds i8*, i8** %34, i64 %33, !dbg !864
  %36 = load i8*, i8** %35, align 8, !dbg !864
  %37 = call i8* @File_StripSlashes(i8* %36), !dbg !865
  store i8* %37, i8** %14, align 8, !dbg !866
  %38 = load i8*, i8** %13, align 8, !dbg !867
  %39 = call i64 @strlen(i8* %38) #9, !dbg !868
  store i64 %39, i64* %15, align 8, !dbg !869
  %40 = load i64, i64* %11, align 8, !dbg !870
  %41 = load i64, i64* %15, align 8, !dbg !872
  %42 = icmp uge i64 %40, %41, !dbg !873
  br i1 %42, label %43, label %92, !dbg !874

; <label>:43:                                     ; preds = %25
  %44 = load i8*, i8** %6, align 8, !dbg !875
  %45 = load i8*, i8** %13, align 8, !dbg !876
  %46 = load i64, i64* %15, align 8, !dbg !877
  %47 = call i32 @strncmp(i8* %44, i8* %45, i64 %46) #9, !dbg !878
  %48 = icmp eq i32 %47, 0, !dbg !879
  br i1 %48, label %49, label %92, !dbg !880

; <label>:49:                                     ; preds = %43
  %50 = load i64, i64* %15, align 8, !dbg !881
  %51 = load i8*, i8** %6, align 8, !dbg !882
  %52 = getelementptr inbounds i8, i8* %51, i64 %50, !dbg !882
  %53 = load i8, i8* %52, align 1, !dbg !882
  %54 = sext i8 %53 to i32, !dbg !882
  %55 = call i8* @strchr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i32 %54) #9, !dbg !883
  %56 = icmp ne i8* %55, null, !dbg !883
  br i1 %56, label %64, label %57, !dbg !884

; <label>:57:                                     ; preds = %49
  %58 = load i64, i64* %15, align 8, !dbg !885
  %59 = load i8*, i8** %6, align 8, !dbg !886
  %60 = getelementptr inbounds i8, i8* %59, i64 %58, !dbg !886
  %61 = load i8, i8* %60, align 1, !dbg !886
  %62 = sext i8 %61 to i32, !dbg !886
  %63 = icmp eq i32 %62, 0, !dbg !887
  br i1 %63, label %64, label %92, !dbg !888

; <label>:64:                                     ; preds = %57, %49
  call void @llvm.dbg.declare(metadata i64* %16, metadata !890, metadata !356), !dbg !892
  %65 = load i8*, i8** %14, align 8, !dbg !893
  %66 = call i64 @strlen(i8* %65) #9, !dbg !894
  store i64 %66, i64* %16, align 8, !dbg !892
  call void @llvm.dbg.declare(metadata i64* %17, metadata !895, metadata !356), !dbg !896
  %67 = load i64, i64* %11, align 8, !dbg !897
  %68 = load i64, i64* %15, align 8, !dbg !898
  %69 = sub i64 %67, %68, !dbg !899
  %70 = load i64, i64* %16, align 8, !dbg !900
  %71 = add i64 %69, %70, !dbg !901
  store i64 %71, i64* %17, align 8, !dbg !896
  %72 = load i64, i64* %17, align 8, !dbg !902
  %73 = add i64 %72, 1, !dbg !903
  %74 = mul i64 %73, 1, !dbg !904
  %75 = call i8* @UtilSafeMalloc0(i64 %74), !dbg !905
  store i8* %75, i8** %12, align 8, !dbg !906
  %76 = load i8*, i8** %12, align 8, !dbg !907
  %77 = load i8*, i8** %14, align 8, !dbg !908
  %78 = load i64, i64* %16, align 8, !dbg !909
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %76, i8* %77, i64 %78, i32 1, i1 false), !dbg !910
  %79 = load i8*, i8** %12, align 8, !dbg !911
  %80 = load i64, i64* %16, align 8, !dbg !912
  %81 = getelementptr inbounds i8, i8* %79, i64 %80, !dbg !913
  %82 = load i8*, i8** %6, align 8, !dbg !914
  %83 = load i64, i64* %15, align 8, !dbg !915
  %84 = getelementptr inbounds i8, i8* %82, i64 %83, !dbg !916
  %85 = load i64, i64* %11, align 8, !dbg !917
  %86 = load i64, i64* %15, align 8, !dbg !918
  %87 = sub i64 %85, %86, !dbg !919
  %88 = add i64 %87, 1, !dbg !920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %81, i8* %84, i64 %88, i32 1, i1 false), !dbg !921
  %89 = load i8*, i8** %13, align 8, !dbg !922
  call void @Posix_Free(i8* %89), !dbg !923
  %90 = load i8*, i8** %14, align 8, !dbg !924
  call void @Posix_Free(i8* %90), !dbg !925
  %91 = load i8*, i8** %12, align 8, !dbg !926
  store i8* %91, i8** %5, align 8, !dbg !927
  br label %99, !dbg !927

; <label>:92:                                     ; preds = %57, %43, %25
  %93 = load i8*, i8** %13, align 8, !dbg !928
  call void @Posix_Free(i8* %93), !dbg !929
  %94 = load i8*, i8** %14, align 8, !dbg !930
  call void @Posix_Free(i8* %94), !dbg !931
  br label %95, !dbg !932

; <label>:95:                                     ; preds = %92
  %96 = load i32, i32* %10, align 4, !dbg !933
  %97 = add nsw i32 %96, 1, !dbg !933
  store i32 %97, i32* %10, align 4, !dbg !933
  br label %20, !dbg !935, !llvm.loop !936

; <label>:98:                                     ; preds = %20
  store i8* null, i8** %5, align 8, !dbg !938
  br label %99, !dbg !938

; <label>:99:                                     ; preds = %98, %64
  %100 = load i8*, i8** %5, align 8, !dbg !939
  ret i8* %100, !dbg !939
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind uwtable
define i8* @File_PrependToPath(i8*, i8*) #0 !dbg !940 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !941, metadata !356), !dbg !942
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !943, metadata !356), !dbg !944
  call void @llvm.dbg.declare(metadata i8* %5, metadata !945, metadata !356), !dbg !946
  %11 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), align 1, !dbg !947
  store i8 %11, i8* %5, align 1, !dbg !946
  call void @llvm.dbg.declare(metadata i8** %6, metadata !948, metadata !356), !dbg !949
  call void @llvm.dbg.declare(metadata i8** %7, metadata !950, metadata !356), !dbg !951
  call void @llvm.dbg.declare(metadata i64* %8, metadata !952, metadata !356), !dbg !953
  %12 = load i8*, i8** %4, align 8, !dbg !954
  %13 = load i8*, i8** %3, align 8, !dbg !955
  %14 = call i8* (i64*, i8*, ...) @Str_SafeAsprintf(i64* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* %13), !dbg !956
  store i8* %14, i8** %6, align 8, !dbg !957
  %15 = load i8*, i8** %4, align 8, !dbg !958
  %16 = call i64 @strlen(i8* %15) #9, !dbg !959
  store i64 %16, i64* %8, align 8, !dbg !960
  %17 = load i8*, i8** %6, align 8, !dbg !961
  %18 = load i64, i64* %8, align 8, !dbg !962
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !963
  %20 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !964
  store i8* %20, i8** %7, align 8, !dbg !965
  br label %21, !dbg !966

; <label>:21:                                     ; preds = %65, %2
  call void @llvm.dbg.declare(metadata i8** %9, metadata !967, metadata !356), !dbg !971
  %22 = load i8*, i8** %7, align 8, !dbg !972
  %23 = call i8* @strchr(i8* %22, i32 59) #9, !dbg !973
  store i8* %23, i8** %9, align 8, !dbg !971
  call void @llvm.dbg.declare(metadata i64* %10, metadata !974, metadata !356), !dbg !975
  %24 = load i8*, i8** %9, align 8, !dbg !976
  %25 = icmp ne i8* %24, null, !dbg !976
  br i1 %25, label %26, label %32, !dbg !976

; <label>:26:                                     ; preds = %21
  %27 = load i8*, i8** %9, align 8, !dbg !977
  %28 = load i8*, i8** %7, align 8, !dbg !979
  %29 = ptrtoint i8* %27 to i64, !dbg !980
  %30 = ptrtoint i8* %28 to i64, !dbg !980
  %31 = sub i64 %29, %30, !dbg !980
  br label %35, !dbg !981

; <label>:32:                                     ; preds = %21
  %33 = load i8*, i8** %7, align 8, !dbg !982
  %34 = call i64 @strlen(i8* %33) #9, !dbg !984
  br label %35, !dbg !985

; <label>:35:                                     ; preds = %32, %26
  %36 = phi i64 [ %31, %26 ], [ %34, %32 ], !dbg !986
  store i64 %36, i64* %10, align 8, !dbg !988
  %37 = load i64, i64* %10, align 8, !dbg !989
  %38 = load i64, i64* %8, align 8, !dbg !991
  %39 = icmp eq i64 %37, %38, !dbg !992
  br i1 %39, label %40, label %61, !dbg !993

; <label>:40:                                     ; preds = %35
  %41 = load i8*, i8** %7, align 8, !dbg !994
  %42 = load i8*, i8** %4, align 8, !dbg !996
  %43 = load i64, i64* %10, align 8, !dbg !997
  %44 = call i32 @strncmp(i8* %41, i8* %42, i64 %43) #9, !dbg !998
  %45 = icmp eq i32 %44, 0, !dbg !999
  br i1 %45, label %46, label %61, !dbg !1000

; <label>:46:                                     ; preds = %40
  %47 = load i8*, i8** %9, align 8, !dbg !1001
  %48 = icmp ne i8* %47, null, !dbg !1001
  br i1 %48, label %49, label %57, !dbg !1004

; <label>:49:                                     ; preds = %46
  %50 = load i8*, i8** %7, align 8, !dbg !1005
  %51 = load i8*, i8** %9, align 8, !dbg !1007
  %52 = getelementptr inbounds i8, i8* %51, i64 1, !dbg !1008
  %53 = load i8*, i8** %9, align 8, !dbg !1009
  %54 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !1010
  %55 = call i64 @strlen(i8* %54) #9, !dbg !1011
  %56 = add i64 %55, 1, !dbg !1012
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %50, i8* %52, i64 %56, i32 1, i1 false), !dbg !1013
  br label %60, !dbg !1015

; <label>:57:                                     ; preds = %46
  %58 = load i8*, i8** %7, align 8, !dbg !1016
  %59 = getelementptr inbounds i8, i8* %58, i32 -1, !dbg !1016
  store i8* %59, i8** %7, align 8, !dbg !1016
  store i8 0, i8* %59, align 1, !dbg !1018
  br label %60

; <label>:60:                                     ; preds = %57, %49
  br label %68, !dbg !1019

; <label>:61:                                     ; preds = %40, %35
  %62 = load i8*, i8** %9, align 8, !dbg !1020
  %63 = icmp ne i8* %62, null, !dbg !1020
  br i1 %63, label %65, label %64, !dbg !1022

; <label>:64:                                     ; preds = %61
  br label %68, !dbg !1023

; <label>:65:                                     ; preds = %61
  %66 = load i8*, i8** %9, align 8, !dbg !1025
  %67 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !1026
  store i8* %67, i8** %7, align 8, !dbg !1027
  br label %21, !dbg !1028, !llvm.loop !1030

; <label>:68:                                     ; preds = %64, %60
  %69 = load i8*, i8** %6, align 8, !dbg !1031
  ret i8* %69, !dbg !1032
}

declare i8* @Str_SafeAsprintf(i64*, i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define i8* @File_ReplaceExtension(i8*, i8*, i32, ...) #0 !dbg !1033 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca [1 x %struct.__va_list_tag], align 16
  %15 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1039, metadata !356), !dbg !1040
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1041, metadata !356), !dbg !1042
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1043, metadata !356), !dbg !1044
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1045, metadata !356), !dbg !1046
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1047, metadata !356), !dbg !1048
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1049, metadata !356), !dbg !1050
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1051, metadata !356), !dbg !1052
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1053, metadata !356), !dbg !1054
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1055, metadata !356), !dbg !1056
  %16 = load i8*, i8** %4, align 8, !dbg !1057
  %17 = call i64 @strlen(i8* %16) #9, !dbg !1058
  store i64 %17, i64* %12, align 8, !dbg !1059
  %18 = load i8*, i8** %5, align 8, !dbg !1060
  %19 = call i64 @strlen(i8* %18) #9, !dbg !1061
  store i64 %19, i64* %10, align 8, !dbg !1062
  %20 = load i64, i64* %12, align 8, !dbg !1063
  %21 = load i64, i64* %10, align 8, !dbg !1064
  %22 = add i64 %20, %21, !dbg !1065
  %23 = add i64 %22, 1, !dbg !1066
  store i64 %23, i64* %11, align 8, !dbg !1067
  %24 = load i64, i64* %11, align 8, !dbg !1068
  %25 = call i8* @UtilSafeMalloc0(i64 %24), !dbg !1069
  store i8* %25, i8** %9, align 8, !dbg !1070
  %26 = load i8*, i8** %9, align 8, !dbg !1071
  %27 = load i8*, i8** %4, align 8, !dbg !1072
  %28 = load i64, i64* %12, align 8, !dbg !1073
  %29 = add i64 %28, 1, !dbg !1074
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 %29, i32 1, i1 false), !dbg !1075
  %30 = load i8*, i8** %9, align 8, !dbg !1076
  %31 = load i64, i64* %12, align 8, !dbg !1077
  %32 = call i8* @FileFindLastDirsep(i8* %30, i64 %31), !dbg !1078
  store i8* %32, i8** %7, align 8, !dbg !1079
  %33 = load i8*, i8** %7, align 8, !dbg !1080
  %34 = icmp eq i8* %33, null, !dbg !1082
  br i1 %34, label %35, label %38, !dbg !1083

; <label>:35:                                     ; preds = %3
  %36 = load i8*, i8** %9, align 8, !dbg !1084
  %37 = call i8* @strrchr(i8* %36, i32 46) #9, !dbg !1086
  store i8* %37, i8** %7, align 8, !dbg !1087
  br label %41, !dbg !1088

; <label>:38:                                     ; preds = %3
  %39 = load i8*, i8** %7, align 8, !dbg !1089
  %40 = call i8* @strrchr(i8* %39, i32 46) #9, !dbg !1091
  store i8* %40, i8** %7, align 8, !dbg !1092
  br label %41

; <label>:41:                                     ; preds = %38, %35
  %42 = load i8*, i8** %7, align 8, !dbg !1093
  %43 = icmp eq i8* %42, null, !dbg !1095
  br i1 %43, label %44, label %48, !dbg !1096

; <label>:44:                                     ; preds = %41
  %45 = load i64, i64* %12, align 8, !dbg !1097
  %46 = load i8*, i8** %9, align 8, !dbg !1099
  %47 = getelementptr inbounds i8, i8* %46, i64 %45, !dbg !1099
  store i8* %47, i8** %8, align 8, !dbg !1100
  br label %96, !dbg !1101

; <label>:48:                                     ; preds = %41
  %49 = load i32, i32* %6, align 4, !dbg !1102
  %50 = icmp eq i32 %49, 0, !dbg !1105
  br i1 %50, label %51, label %53, !dbg !1102

; <label>:51:                                     ; preds = %48
  %52 = load i8*, i8** %7, align 8, !dbg !1106
  store i8* %52, i8** %8, align 8, !dbg !1108
  br label %95, !dbg !1109

; <label>:53:                                     ; preds = %48
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1110, metadata !356), !dbg !1112
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %14, metadata !1113, metadata !356), !dbg !1128
  %54 = load i64, i64* %12, align 8, !dbg !1129
  %55 = load i8*, i8** %9, align 8, !dbg !1130
  %56 = getelementptr inbounds i8, i8* %55, i64 %54, !dbg !1130
  store i8* %56, i8** %8, align 8, !dbg !1131
  %57 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %14, i32 0, i32 0, !dbg !1132
  %58 = bitcast %struct.__va_list_tag* %57 to i8*, !dbg !1132
  call void @llvm.va_start(i8* %58), !dbg !1132
  store i32 0, i32* %13, align 4, !dbg !1133
  br label %59, !dbg !1135

; <label>:59:                                     ; preds = %89, %53
  %60 = load i32, i32* %13, align 4, !dbg !1136
  %61 = load i32, i32* %6, align 4, !dbg !1139
  %62 = icmp ult i32 %60, %61, !dbg !1140
  br i1 %62, label %63, label %92, !dbg !1141

; <label>:63:                                     ; preds = %59
  call void @llvm.dbg.declare(metadata i8** %15, metadata !1142, metadata !356), !dbg !1144
  %64 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %14, i32 0, i32 0, !dbg !1145
  %65 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %64, i32 0, i32 0, !dbg !1145
  %66 = load i32, i32* %65, align 16, !dbg !1145
  %67 = icmp ule i32 %66, 40, !dbg !1145
  br i1 %67, label %68, label %74, !dbg !1145

; <label>:68:                                     ; preds = %63
  %69 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %64, i32 0, i32 3, !dbg !1146
  %70 = load i8*, i8** %69, align 16, !dbg !1146
  %71 = getelementptr i8, i8* %70, i32 %66, !dbg !1146
  %72 = bitcast i8* %71 to i8**, !dbg !1146
  %73 = add i32 %66, 8, !dbg !1146
  store i32 %73, i32* %65, align 16, !dbg !1146
  br label %79, !dbg !1146

; <label>:74:                                     ; preds = %63
  %75 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %64, i32 0, i32 2, !dbg !1148
  %76 = load i8*, i8** %75, align 8, !dbg !1148
  %77 = bitcast i8* %76 to i8**, !dbg !1148
  %78 = getelementptr i8, i8* %76, i32 8, !dbg !1148
  store i8* %78, i8** %75, align 8, !dbg !1148
  br label %79, !dbg !1148

; <label>:79:                                     ; preds = %74, %68
  %80 = phi i8** [ %72, %68 ], [ %77, %74 ], !dbg !1150
  %81 = load i8*, i8** %80, align 8, !dbg !1150
  store i8* %81, i8** %15, align 8, !dbg !1152
  %82 = load i8*, i8** %7, align 8, !dbg !1153
  %83 = load i8*, i8** %15, align 8, !dbg !1155
  %84 = call i32 @strcmp(i8* %82, i8* %83) #9, !dbg !1156
  %85 = icmp eq i32 %84, 0, !dbg !1157
  br i1 %85, label %86, label %88, !dbg !1158

; <label>:86:                                     ; preds = %79
  %87 = load i8*, i8** %7, align 8, !dbg !1159
  store i8* %87, i8** %8, align 8, !dbg !1161
  br label %92, !dbg !1162

; <label>:88:                                     ; preds = %79
  br label %89, !dbg !1163

; <label>:89:                                     ; preds = %88
  %90 = load i32, i32* %13, align 4, !dbg !1164
  %91 = add i32 %90, 1, !dbg !1164
  store i32 %91, i32* %13, align 4, !dbg !1164
  br label %59, !dbg !1166, !llvm.loop !1167

; <label>:92:                                     ; preds = %86, %59
  %93 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %14, i32 0, i32 0, !dbg !1169
  %94 = bitcast %struct.__va_list_tag* %93 to i8*, !dbg !1169
  call void @llvm.va_end(i8* %94), !dbg !1169
  br label %95

; <label>:95:                                     ; preds = %92, %51
  br label %96

; <label>:96:                                     ; preds = %95, %44
  %97 = load i8*, i8** %8, align 8, !dbg !1170
  %98 = load i8*, i8** %5, align 8, !dbg !1171
  %99 = load i64, i64* %10, align 8, !dbg !1172
  %100 = add i64 %99, 1, !dbg !1173
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %97, i8* %98, i64 %100, i32 1, i1 false), !dbg !1174
  %101 = load i8*, i8** %9, align 8, !dbg !1175
  ret i8* %101, !dbg !1176
}

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #7

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #7

; Function Attrs: nounwind uwtable
define i8* @File_RemoveExtension(i8*) #0 !dbg !1177 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1178, metadata !356), !dbg !1179
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1180, metadata !356), !dbg !1181
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1182, metadata !356), !dbg !1183
  %5 = load i8*, i8** %2, align 8, !dbg !1184
  %6 = call i8* @UtilSafeStrdup0(i8* %5), !dbg !1185
  store i8* %6, i8** %4, align 8, !dbg !1186
  %7 = load i8*, i8** %4, align 8, !dbg !1187
  %8 = load i8*, i8** %2, align 8, !dbg !1188
  %9 = call i64 @strlen(i8* %8) #9, !dbg !1189
  %10 = call i8* @FileFindLastDirsep(i8* %7, i64 %9), !dbg !1190
  store i8* %10, i8** %3, align 8, !dbg !1192
  %11 = load i8*, i8** %3, align 8, !dbg !1193
  %12 = icmp eq i8* %11, null, !dbg !1195
  br i1 %12, label %13, label %16, !dbg !1196

; <label>:13:                                     ; preds = %1
  %14 = load i8*, i8** %4, align 8, !dbg !1197
  %15 = call i8* @strrchr(i8* %14, i32 46) #9, !dbg !1199
  store i8* %15, i8** %3, align 8, !dbg !1200
  br label %19, !dbg !1201

; <label>:16:                                     ; preds = %1
  %17 = load i8*, i8** %3, align 8, !dbg !1202
  %18 = call i8* @strrchr(i8* %17, i32 46) #9, !dbg !1204
  store i8* %18, i8** %3, align 8, !dbg !1205
  br label %19

; <label>:19:                                     ; preds = %16, %13
  %20 = load i8*, i8** %3, align 8, !dbg !1206
  %21 = icmp ne i8* %20, null, !dbg !1208
  br i1 %21, label %22, label %24, !dbg !1209

; <label>:22:                                     ; preds = %19
  %23 = load i8*, i8** %3, align 8, !dbg !1210
  store i8 0, i8* %23, align 1, !dbg !1212
  br label %24, !dbg !1213

; <label>:24:                                     ; preds = %22, %19
  %25 = load i8*, i8** %4, align 8, !dbg !1214
  ret i8* %25, !dbg !1215
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #8

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!340, !341}
!llvm.ident = !{!342}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !336)
!1 = !DIFile(filename: "fileStandAlone.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line190")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 58, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/unicodeTypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line190")
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
!336 = !{!337, !339}
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!340 = !{i32 2, !"Dwarf Version", i32 4}
!341 = !{i32 2, !"Debug Info Version", i32 3}
!342 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!343 = distinct !DISubprogram(name: "File_GetModTime", scope: !344, file: !344, line: 70, type: !345, isLocal: false, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !354)
!344 = !DIFile(filename: "fileStandAlone.c", directory: "/home/lichi/Desktop/open-vm-tools/line190")
!345 = !DISubroutineType(types: !346)
!346 = !{!347, !352}
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !348, line: 172, baseType: !349)
!348 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line190")
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !350, line: 197, baseType: !351)
!350 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line190")
!351 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64, align: 64)
!353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!354 = !{}
!355 = !DILocalVariable(name: "pathName", arg: 1, scope: !343, file: !344, line: 70, type: !352)
!356 = !DIExpression()
!357 = !DILocation(line: 70, column: 29, scope: !343)
!358 = !DILocalVariable(name: "theTime", scope: !343, file: !344, line: 72, type: !347)
!359 = !DILocation(line: 72, column: 10, scope: !343)
!360 = !DILocalVariable(name: "statbuf", scope: !343, file: !344, line: 73, type: !361)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !362, line: 46, size: 1152, align: 64, elements: !363)
!362 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/open-vm-tools/line190")
!363 = !{!364, !368, !370, !372, !375, !377, !379, !381, !382, !384, !386, !388, !396, !397, !398}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !361, file: !362, line: 48, baseType: !365, size: 64, align: 64)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !366, line: 124, baseType: !367)
!366 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line190")
!367 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !361, file: !362, line: 53, baseType: !369, size: 64, align: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !366, line: 127, baseType: !367)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !361, file: !362, line: 61, baseType: !371, size: 64, align: 64, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !366, line: 130, baseType: !367)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !361, file: !362, line: 62, baseType: !373, size: 32, align: 32, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !366, line: 129, baseType: !374)
!374 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !361, file: !362, line: 64, baseType: !376, size: 32, align: 32, offset: 224)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !366, line: 125, baseType: !374)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !361, file: !362, line: 65, baseType: !378, size: 32, align: 32, offset: 256)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !366, line: 126, baseType: !374)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !361, file: !362, line: 67, baseType: !380, size: 32, align: 32, offset: 288)
!380 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !361, file: !362, line: 69, baseType: !365, size: 64, align: 64, offset: 320)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !361, file: !362, line: 74, baseType: !383, size: 64, align: 64, offset: 384)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !366, line: 131, baseType: !351)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !361, file: !362, line: 78, baseType: !385, size: 64, align: 64, offset: 448)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !366, line: 153, baseType: !351)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !361, file: !362, line: 80, baseType: !387, size: 64, align: 64, offset: 512)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !366, line: 158, baseType: !351)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !361, file: !362, line: 91, baseType: !389, size: 128, align: 64, offset: 576)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !390, line: 120, size: 128, align: 64, elements: !391)
!390 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/open-vm-tools/line190")
!391 = !{!392, !394}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !389, file: !390, line: 122, baseType: !393, size: 64, align: 64)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !366, line: 139, baseType: !351)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !389, file: !390, line: 123, baseType: !395, size: 64, align: 64, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !366, line: 175, baseType: !351)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !361, file: !362, line: 92, baseType: !389, size: 128, align: 64, offset: 704)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !361, file: !362, line: 93, baseType: !389, size: 128, align: 64, offset: 832)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !361, file: !362, line: 106, baseType: !399, size: 192, align: 64, offset: 960)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, size: 192, align: 64, elements: !400)
!400 = !{!401}
!401 = !DISubrange(count: 3)
!402 = !DILocation(line: 73, column: 16, scope: !343)
!403 = !DILocation(line: 75, column: 19, scope: !404)
!404 = distinct !DILexicalBlock(scope: !343, file: !344, line: 75, column: 8)
!405 = !DILocation(line: 75, column: 8, scope: !404)
!406 = !DILocation(line: 75, column: 39, scope: !404)
!407 = !DILocation(line: 75, column: 8, scope: !343)
!408 = !DILocation(line: 76, column: 24, scope: !409)
!409 = distinct !DILexicalBlock(scope: !404, file: !344, line: 75, column: 45)
!410 = !DILocation(line: 76, column: 32, scope: !409)
!411 = !DILocation(line: 76, column: 15, scope: !409)
!412 = !DILocation(line: 77, column: 4, scope: !409)
!413 = !DILocation(line: 78, column: 15, scope: !414)
!414 = distinct !DILexicalBlock(scope: !404, file: !344, line: 77, column: 11)
!415 = !DILocation(line: 81, column: 11, scope: !343)
!416 = !DILocation(line: 81, column: 4, scope: !343)
!417 = distinct !DISubprogram(name: "File_SplitName", scope: !344, file: !344, line: 197, type: !418, isLocal: false, isDefinition: true, scopeLine: 201, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !354)
!418 = !DISubroutineType(types: !419)
!419 = !{null, !352, !420, !420, !420}
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64, align: 64)
!421 = !DILocalVariable(name: "pathName", arg: 1, scope: !417, file: !344, line: 197, type: !352)
!422 = !DILocation(line: 197, column: 28, scope: !417)
!423 = !DILocalVariable(name: "volume", arg: 2, scope: !417, file: !344, line: 198, type: !420)
!424 = !DILocation(line: 198, column: 23, scope: !417)
!425 = !DILocalVariable(name: "directory", arg: 3, scope: !417, file: !344, line: 199, type: !420)
!426 = !DILocation(line: 199, column: 23, scope: !417)
!427 = !DILocalVariable(name: "base", arg: 4, scope: !417, file: !344, line: 200, type: !420)
!428 = !DILocation(line: 200, column: 23, scope: !417)
!429 = !DILocalVariable(name: "vol", scope: !417, file: !344, line: 202, type: !337)
!430 = !DILocation(line: 202, column: 10, scope: !417)
!431 = !DILocalVariable(name: "dir", scope: !417, file: !344, line: 203, type: !337)
!432 = !DILocation(line: 203, column: 10, scope: !417)
!433 = !DILocalVariable(name: "bas", scope: !417, file: !344, line: 204, type: !337)
!434 = !DILocation(line: 204, column: 10, scope: !417)
!435 = !DILocalVariable(name: "baseBegin", scope: !417, file: !344, line: 205, type: !337)
!436 = !DILocation(line: 205, column: 10, scope: !417)
!437 = !DILocalVariable(name: "volEnd", scope: !417, file: !344, line: 206, type: !337)
!438 = !DILocation(line: 206, column: 10, scope: !417)
!439 = !DILocalVariable(name: "volLen", scope: !417, file: !344, line: 207, type: !380)
!440 = !DILocation(line: 207, column: 8, scope: !417)
!441 = !DILocalVariable(name: "dirLen", scope: !417, file: !344, line: 207, type: !380)
!442 = !DILocation(line: 207, column: 16, scope: !417)
!443 = !DILocalVariable(name: "len", scope: !417, file: !344, line: 208, type: !380)
!444 = !DILocation(line: 208, column: 8, scope: !417)
!445 = !DILocation(line: 208, column: 21, scope: !417)
!446 = !DILocation(line: 208, column: 14, scope: !417)
!447 = !DILocation(line: 216, column: 22, scope: !417)
!448 = !DILocation(line: 216, column: 11, scope: !417)
!449 = !DILocation(line: 243, column: 13, scope: !417)
!450 = !DILocation(line: 243, column: 22, scope: !417)
!451 = !DILocation(line: 243, column: 20, scope: !417)
!452 = !DILocation(line: 243, column: 11, scope: !417)
!453 = !DILocation(line: 244, column: 27, scope: !417)
!454 = !DILocation(line: 244, column: 34, scope: !417)
!455 = !DILocation(line: 244, column: 26, scope: !417)
!456 = !DILocation(line: 244, column: 10, scope: !417)
!457 = !DILocation(line: 244, column: 8, scope: !417)
!458 = !DILocation(line: 245, column: 11, scope: !417)
!459 = !DILocation(line: 245, column: 16, scope: !417)
!460 = !DILocation(line: 245, column: 26, scope: !417)
!461 = !DILocation(line: 245, column: 4, scope: !417)
!462 = !DILocation(line: 246, column: 8, scope: !417)
!463 = !DILocation(line: 246, column: 4, scope: !417)
!464 = !DILocation(line: 246, column: 16, scope: !417)
!465 = !DILocation(line: 252, column: 35, scope: !417)
!466 = !DILocation(line: 252, column: 45, scope: !417)
!467 = !DILocation(line: 252, column: 16, scope: !417)
!468 = !DILocation(line: 252, column: 14, scope: !417)
!469 = !DILocation(line: 253, column: 17, scope: !417)
!470 = !DILocation(line: 253, column: 27, scope: !417)
!471 = !DILocation(line: 253, column: 16, scope: !417)
!472 = !DILocation(line: 253, column: 46, scope: !473)
!473 = !DILexicalBlockFile(scope: !417, file: !344, discriminator: 1)
!474 = !DILocation(line: 253, column: 16, scope: !473)
!475 = !DILocation(line: 253, column: 57, scope: !476)
!476 = !DILexicalBlockFile(scope: !417, file: !344, discriminator: 2)
!477 = !DILocation(line: 253, column: 67, scope: !476)
!478 = !DILocation(line: 253, column: 16, scope: !476)
!479 = !DILocation(line: 253, column: 16, scope: !480)
!480 = !DILexicalBlockFile(scope: !417, file: !344, discriminator: 3)
!481 = !DILocation(line: 253, column: 14, scope: !480)
!482 = !DILocation(line: 255, column: 8, scope: !483)
!483 = distinct !DILexicalBlock(scope: !417, file: !344, line: 255, column: 8)
!484 = !DILocation(line: 255, column: 20, scope: !483)
!485 = !DILocation(line: 255, column: 18, scope: !483)
!486 = !DILocation(line: 255, column: 8, scope: !417)
!487 = !DILocation(line: 256, column: 28, scope: !488)
!488 = distinct !DILexicalBlock(scope: !483, file: !344, line: 255, column: 28)
!489 = !DILocation(line: 256, column: 39, scope: !488)
!490 = !DILocation(line: 256, column: 37, scope: !488)
!491 = !DILocation(line: 256, column: 17, scope: !488)
!492 = !DILocation(line: 257, column: 4, scope: !488)
!493 = !DILocation(line: 259, column: 27, scope: !417)
!494 = !DILocation(line: 259, column: 10, scope: !417)
!495 = !DILocation(line: 259, column: 8, scope: !417)
!496 = !DILocation(line: 265, column: 13, scope: !417)
!497 = !DILocation(line: 265, column: 25, scope: !417)
!498 = !DILocation(line: 265, column: 23, scope: !417)
!499 = !DILocation(line: 265, column: 11, scope: !417)
!500 = !DILocation(line: 266, column: 27, scope: !417)
!501 = !DILocation(line: 266, column: 34, scope: !417)
!502 = !DILocation(line: 266, column: 26, scope: !417)
!503 = !DILocation(line: 266, column: 10, scope: !417)
!504 = !DILocation(line: 266, column: 8, scope: !417)
!505 = !DILocation(line: 267, column: 11, scope: !417)
!506 = !DILocation(line: 267, column: 16, scope: !417)
!507 = !DILocation(line: 267, column: 24, scope: !417)
!508 = !DILocation(line: 267, column: 4, scope: !417)
!509 = !DILocation(line: 268, column: 8, scope: !417)
!510 = !DILocation(line: 268, column: 4, scope: !417)
!511 = !DILocation(line: 268, column: 16, scope: !417)
!512 = !DILocation(line: 274, column: 8, scope: !513)
!513 = distinct !DILexicalBlock(scope: !417, file: !344, line: 274, column: 8)
!514 = !DILocation(line: 274, column: 15, scope: !513)
!515 = !DILocation(line: 274, column: 8, scope: !417)
!516 = !DILocation(line: 275, column: 12, scope: !517)
!517 = distinct !DILexicalBlock(scope: !513, file: !344, line: 274, column: 23)
!518 = !DILocation(line: 275, column: 7, scope: !517)
!519 = !DILocation(line: 276, column: 4, scope: !517)
!520 = !DILocation(line: 277, column: 17, scope: !521)
!521 = distinct !DILexicalBlock(scope: !513, file: !344, line: 276, column: 11)
!522 = !DILocation(line: 277, column: 8, scope: !521)
!523 = !DILocation(line: 277, column: 15, scope: !521)
!524 = !DILocation(line: 280, column: 8, scope: !525)
!525 = distinct !DILexicalBlock(scope: !417, file: !344, line: 280, column: 8)
!526 = !DILocation(line: 280, column: 18, scope: !525)
!527 = !DILocation(line: 280, column: 8, scope: !417)
!528 = !DILocation(line: 281, column: 12, scope: !529)
!529 = distinct !DILexicalBlock(scope: !525, file: !344, line: 280, column: 26)
!530 = !DILocation(line: 281, column: 7, scope: !529)
!531 = !DILocation(line: 282, column: 4, scope: !529)
!532 = !DILocation(line: 283, column: 20, scope: !533)
!533 = distinct !DILexicalBlock(scope: !525, file: !344, line: 282, column: 11)
!534 = !DILocation(line: 283, column: 8, scope: !533)
!535 = !DILocation(line: 283, column: 18, scope: !533)
!536 = !DILocation(line: 286, column: 8, scope: !537)
!537 = distinct !DILexicalBlock(scope: !417, file: !344, line: 286, column: 8)
!538 = !DILocation(line: 286, column: 13, scope: !537)
!539 = !DILocation(line: 286, column: 8, scope: !417)
!540 = !DILocation(line: 287, column: 12, scope: !541)
!541 = distinct !DILexicalBlock(scope: !537, file: !344, line: 286, column: 21)
!542 = !DILocation(line: 287, column: 7, scope: !541)
!543 = !DILocation(line: 288, column: 4, scope: !541)
!544 = !DILocation(line: 289, column: 15, scope: !545)
!545 = distinct !DILexicalBlock(scope: !537, file: !344, line: 288, column: 11)
!546 = !DILocation(line: 289, column: 8, scope: !545)
!547 = !DILocation(line: 289, column: 13, scope: !545)
!548 = !DILocation(line: 291, column: 1, scope: !417)
!549 = distinct !DISubprogram(name: "FileFindLastDirsep", scope: !344, file: !344, line: 143, type: !550, isLocal: true, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !354)
!550 = !DISubroutineType(types: !551)
!551 = !{!337, !352, !552}
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !553, line: 216, baseType: !367)
!553 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line190")
!554 = !DILocalVariable(name: "pathName", arg: 1, scope: !549, file: !344, line: 143, type: !352)
!555 = !DILocation(line: 143, column: 32, scope: !549)
!556 = !DILocalVariable(name: "len", arg: 2, scope: !549, file: !344, line: 144, type: !552)
!557 = !DILocation(line: 144, column: 27, scope: !549)
!558 = !DILocalVariable(name: "p", scope: !549, file: !344, line: 146, type: !337)
!559 = !DILocation(line: 146, column: 10, scope: !549)
!560 = !DILocation(line: 150, column: 17, scope: !549)
!561 = !DILocation(line: 150, column: 28, scope: !549)
!562 = !DILocation(line: 150, column: 26, scope: !549)
!563 = !DILocation(line: 150, column: 6, scope: !549)
!564 = !DILocation(line: 152, column: 4, scope: !549)
!565 = !DILocation(line: 152, column: 12, scope: !566)
!566 = !DILexicalBlockFile(scope: !549, file: !344, discriminator: 1)
!567 = !DILocation(line: 152, column: 18, scope: !566)
!568 = !DILocation(line: 152, column: 15, scope: !566)
!569 = !DILocation(line: 152, column: 4, scope: !566)
!570 = !DILocation(line: 153, column: 26, scope: !571)
!571 = distinct !DILexicalBlock(scope: !572, file: !344, line: 153, column: 11)
!572 = distinct !DILexicalBlock(scope: !549, file: !344, line: 152, column: 28)
!573 = !DILocation(line: 153, column: 25, scope: !571)
!574 = !DILocation(line: 153, column: 11, scope: !571)
!575 = !DILocation(line: 153, column: 11, scope: !572)
!576 = !DILocation(line: 154, column: 17, scope: !577)
!577 = distinct !DILexicalBlock(scope: !571, file: !344, line: 153, column: 30)
!578 = !DILocation(line: 154, column: 10, scope: !577)
!579 = !DILocation(line: 152, column: 4, scope: !580)
!580 = !DILexicalBlockFile(scope: !549, file: !344, discriminator: 2)
!581 = distinct !{!581, !564}
!582 = !DILocation(line: 158, column: 4, scope: !549)
!583 = !DILocation(line: 159, column: 1, scope: !549)
!584 = distinct !DISubprogram(name: "File_PathJoin", scope: !344, file: !344, line: 331, type: !585, isLocal: false, isDefinition: true, scopeLine: 333, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !354)
!585 = !DISubroutineType(types: !586)
!586 = !{!337, !352, !352}
!587 = !DILocalVariable(name: "dirName", arg: 1, scope: !584, file: !344, line: 331, type: !352)
!588 = !DILocation(line: 331, column: 27, scope: !584)
!589 = !DILocalVariable(name: "baseName", arg: 2, scope: !584, file: !344, line: 332, type: !352)
!590 = !DILocation(line: 332, column: 27, scope: !584)
!591 = !DILocalVariable(name: "result", scope: !584, file: !344, line: 334, type: !337)
!592 = !DILocation(line: 334, column: 10, scope: !584)
!593 = !DILocalVariable(name: "newDir", scope: !584, file: !344, line: 335, type: !337)
!594 = !DILocation(line: 335, column: 10, scope: !584)
!595 = !DILocation(line: 364, column: 4, scope: !584)
!596 = !DILocation(line: 364, column: 12, scope: !597)
!597 = !DILexicalBlockFile(scope: !584, file: !344, discriminator: 1)
!598 = !DILocation(line: 364, column: 11, scope: !597)
!599 = !DILocation(line: 364, column: 21, scope: !597)
!600 = !DILocation(line: 364, column: 4, scope: !597)
!601 = !DILocation(line: 365, column: 15, scope: !602)
!602 = distinct !DILexicalBlock(scope: !584, file: !344, line: 364, column: 29)
!603 = !DILocation(line: 364, column: 4, scope: !604)
!604 = !DILexicalBlockFile(scope: !584, file: !344, discriminator: 2)
!605 = distinct !{!605, !595}
!606 = !DILocation(line: 372, column: 31, scope: !584)
!607 = !DILocation(line: 372, column: 13, scope: !584)
!608 = !DILocation(line: 372, column: 11, scope: !584)
!609 = !DILocation(line: 374, column: 26, scope: !584)
!610 = !DILocation(line: 374, column: 39, scope: !584)
!611 = !DILocation(line: 374, column: 13, scope: !584)
!612 = !DILocation(line: 374, column: 11, scope: !584)
!613 = !DILocation(line: 375, column: 15, scope: !584)
!614 = !DILocation(line: 375, column: 4, scope: !584)
!615 = !DILocation(line: 377, column: 11, scope: !584)
!616 = !DILocation(line: 377, column: 4, scope: !584)
!617 = distinct !DISubprogram(name: "File_StripSlashes", scope: !344, file: !344, line: 470, type: !618, isLocal: false, isDefinition: true, scopeLine: 471, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !354)
!618 = !DISubroutineType(types: !619)
!619 = !{!337, !352}
!620 = !DILocalVariable(name: "path", arg: 1, scope: !617, file: !344, line: 470, type: !352)
!621 = !DILocation(line: 470, column: 31, scope: !617)
!622 = !DILocalVariable(name: "result", scope: !617, file: !344, line: 472, type: !337)
!623 = !DILocation(line: 472, column: 10, scope: !617)
!624 = !DILocalVariable(name: "volume", scope: !617, file: !344, line: 473, type: !337)
!625 = !DILocation(line: 473, column: 10, scope: !617)
!626 = !DILocalVariable(name: "dir", scope: !617, file: !344, line: 474, type: !337)
!627 = !DILocation(line: 474, column: 10, scope: !617)
!628 = !DILocalVariable(name: "base", scope: !617, file: !344, line: 475, type: !337)
!629 = !DILocation(line: 475, column: 10, scope: !617)
!630 = !DILocation(line: 483, column: 19, scope: !617)
!631 = !DILocation(line: 483, column: 4, scope: !617)
!632 = !DILocation(line: 485, column: 25, scope: !633)
!633 = distinct !DILexicalBlock(scope: !617, file: !344, line: 485, column: 8)
!634 = !DILocation(line: 485, column: 9, scope: !633)
!635 = !DILocation(line: 485, column: 30, scope: !633)
!636 = !DILocation(line: 485, column: 49, scope: !637)
!637 = !DILexicalBlockFile(scope: !633, file: !344, discriminator: 1)
!638 = !DILocation(line: 485, column: 33, scope: !637)
!639 = !DILocation(line: 485, column: 8, scope: !637)
!640 = !DILocalVariable(name: "dir2", scope: !641, file: !344, line: 486, type: !337)
!641 = distinct !DILexicalBlock(scope: !633, file: !344, line: 485, column: 56)
!642 = !DILocation(line: 486, column: 13, scope: !641)
!643 = !DILocation(line: 486, column: 42, scope: !641)
!644 = !DILocation(line: 486, column: 20, scope: !641)
!645 = !DILocalVariable(name: "i", scope: !641, file: !344, line: 487, type: !552)
!646 = !DILocation(line: 487, column: 14, scope: !641)
!647 = !DILocation(line: 487, column: 25, scope: !641)
!648 = !DILocation(line: 487, column: 18, scope: !641)
!649 = !DILocation(line: 497, column: 7, scope: !641)
!650 = !DILocation(line: 497, column: 15, scope: !651)
!651 = !DILexicalBlockFile(scope: !641, file: !344, discriminator: 1)
!652 = !DILocation(line: 497, column: 17, scope: !651)
!653 = !DILocation(line: 497, column: 22, scope: !651)
!654 = !DILocation(line: 497, column: 44, scope: !655)
!655 = !DILexicalBlockFile(scope: !641, file: !344, discriminator: 2)
!656 = !DILocation(line: 497, column: 46, scope: !655)
!657 = !DILocation(line: 497, column: 39, scope: !655)
!658 = !DILocation(line: 497, column: 25, scope: !655)
!659 = !DILocation(line: 497, column: 22, scope: !655)
!660 = !DILocation(line: 497, column: 7, scope: !661)
!661 = !DILexicalBlockFile(scope: !641, file: !344, discriminator: 3)
!662 = !DILocation(line: 499, column: 11, scope: !663)
!663 = distinct !DILexicalBlock(scope: !641, file: !344, line: 497, column: 53)
!664 = !DILocation(line: 497, column: 7, scope: !665)
!665 = !DILexicalBlockFile(scope: !641, file: !344, discriminator: 4)
!666 = distinct !{!666, !649}
!667 = !DILocation(line: 502, column: 18, scope: !641)
!668 = !DILocation(line: 502, column: 7, scope: !641)
!669 = !DILocation(line: 503, column: 37, scope: !641)
!670 = !DILocation(line: 503, column: 43, scope: !641)
!671 = !DILocation(line: 503, column: 13, scope: !641)
!672 = !DILocation(line: 503, column: 11, scope: !641)
!673 = !DILocation(line: 504, column: 18, scope: !641)
!674 = !DILocation(line: 504, column: 7, scope: !641)
!675 = !DILocation(line: 505, column: 4, scope: !641)
!676 = !DILocation(line: 507, column: 26, scope: !617)
!677 = !DILocation(line: 507, column: 34, scope: !617)
!678 = !DILocation(line: 507, column: 39, scope: !617)
!679 = !DILocation(line: 507, column: 13, scope: !617)
!680 = !DILocation(line: 507, column: 11, scope: !617)
!681 = !DILocation(line: 509, column: 15, scope: !617)
!682 = !DILocation(line: 509, column: 4, scope: !617)
!683 = !DILocation(line: 510, column: 15, scope: !617)
!684 = !DILocation(line: 510, column: 4, scope: !617)
!685 = !DILocation(line: 511, column: 15, scope: !617)
!686 = !DILocation(line: 511, column: 4, scope: !617)
!687 = !DILocation(line: 513, column: 11, scope: !617)
!688 = !DILocation(line: 513, column: 4, scope: !617)
!689 = distinct !DISubprogram(name: "Posix_Free", scope: !690, file: !690, line: 129, type: !691, isLocal: true, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !354)
!690 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/posix.h", directory: "/home/lichi/Desktop/open-vm-tools/line190")
!691 = !DISubroutineType(types: !692)
!692 = !{null, !339}
!693 = !DILocalVariable(name: "p", arg: 1, scope: !689, file: !690, line: 129, type: !339)
!694 = !DILocation(line: 129, column: 18, scope: !689)
!695 = !DILocalVariable(name: "err", scope: !689, file: !690, line: 131, type: !380)
!696 = !DILocation(line: 131, column: 8, scope: !689)
!697 = !DILocation(line: 131, column: 15, scope: !689)
!698 = !DILocation(line: 131, column: 14, scope: !689)
!699 = !DILocation(line: 132, column: 9, scope: !689)
!700 = !DILocation(line: 132, column: 4, scope: !689)
!701 = !DILocation(line: 133, column: 11, scope: !689)
!702 = !DILocation(line: 133, column: 5, scope: !689)
!703 = !DILocation(line: 133, column: 9, scope: !689)
!704 = !DILocation(line: 134, column: 1, scope: !689)
!705 = distinct !DISubprogram(name: "File_GetPathName", scope: !344, file: !344, line: 409, type: !706, isLocal: false, isDefinition: true, scopeLine: 412, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !354)
!706 = !DISubroutineType(types: !707)
!707 = !{null, !352, !420, !420}
!708 = !DILocalVariable(name: "fullPath", arg: 1, scope: !705, file: !344, line: 409, type: !352)
!709 = !DILocation(line: 409, column: 30, scope: !705)
!710 = !DILocalVariable(name: "pathName", arg: 2, scope: !705, file: !344, line: 410, type: !420)
!711 = !DILocation(line: 410, column: 25, scope: !705)
!712 = !DILocalVariable(name: "baseName", arg: 3, scope: !705, file: !344, line: 411, type: !420)
!713 = !DILocation(line: 411, column: 25, scope: !705)
!714 = !DILocalVariable(name: "p", scope: !705, file: !344, line: 413, type: !337)
!715 = !DILocation(line: 413, column: 10, scope: !705)
!716 = !DILocalVariable(name: "pName", scope: !705, file: !344, line: 414, type: !337)
!717 = !DILocation(line: 414, column: 10, scope: !705)
!718 = !DILocalVariable(name: "bName", scope: !705, file: !344, line: 415, type: !337)
!719 = !DILocation(line: 415, column: 10, scope: !705)
!720 = !DILocation(line: 418, column: 27, scope: !705)
!721 = !DILocation(line: 418, column: 44, scope: !705)
!722 = !DILocation(line: 418, column: 37, scope: !705)
!723 = !DILocation(line: 418, column: 8, scope: !724)
!724 = !DILexicalBlockFile(scope: !705, file: !344, discriminator: 1)
!725 = !DILocation(line: 418, column: 6, scope: !705)
!726 = !DILocation(line: 420, column: 8, scope: !727)
!727 = distinct !DILexicalBlock(scope: !705, file: !344, line: 420, column: 8)
!728 = !DILocation(line: 420, column: 10, scope: !727)
!729 = !DILocation(line: 420, column: 8, scope: !705)
!730 = !DILocation(line: 421, column: 15, scope: !731)
!731 = distinct !DILexicalBlock(scope: !727, file: !344, line: 420, column: 18)
!732 = !DILocation(line: 421, column: 13, scope: !731)
!733 = !DILocation(line: 422, column: 32, scope: !731)
!734 = !DILocation(line: 422, column: 15, scope: !731)
!735 = !DILocation(line: 422, column: 13, scope: !731)
!736 = !DILocation(line: 423, column: 4, scope: !731)
!737 = !DILocation(line: 424, column: 42, scope: !738)
!738 = distinct !DILexicalBlock(scope: !727, file: !344, line: 423, column: 11)
!739 = !DILocation(line: 424, column: 46, scope: !738)
!740 = !DILocation(line: 424, column: 44, scope: !738)
!741 = !DILocation(line: 424, column: 55, scope: !738)
!742 = !DILocation(line: 424, column: 33, scope: !738)
!743 = !DILocation(line: 424, column: 15, scope: !738)
!744 = !DILocation(line: 424, column: 13, scope: !738)
!745 = !DILocation(line: 425, column: 32, scope: !738)
!746 = !DILocation(line: 425, column: 15, scope: !738)
!747 = !DILocation(line: 425, column: 13, scope: !738)
!748 = !DILocation(line: 426, column: 13, scope: !738)
!749 = !DILocation(line: 426, column: 17, scope: !738)
!750 = !DILocation(line: 426, column: 15, scope: !738)
!751 = !DILocation(line: 426, column: 7, scope: !738)
!752 = !DILocation(line: 426, column: 27, scope: !738)
!753 = !DILocation(line: 428, column: 18, scope: !738)
!754 = !DILocation(line: 428, column: 22, scope: !738)
!755 = !DILocation(line: 428, column: 20, scope: !738)
!756 = !DILocation(line: 428, column: 12, scope: !738)
!757 = !DILocation(line: 428, column: 9, scope: !738)
!758 = !DILocation(line: 430, column: 7, scope: !738)
!759 = !DILocation(line: 430, column: 15, scope: !760)
!760 = !DILexicalBlockFile(scope: !738, file: !344, discriminator: 1)
!761 = !DILocation(line: 430, column: 21, scope: !760)
!762 = !DILocation(line: 430, column: 18, scope: !760)
!763 = !DILocation(line: 430, column: 7, scope: !760)
!764 = !DILocation(line: 431, column: 29, scope: !765)
!765 = distinct !DILexicalBlock(scope: !766, file: !344, line: 431, column: 14)
!766 = distinct !DILexicalBlock(scope: !738, file: !344, line: 430, column: 28)
!767 = !DILocation(line: 431, column: 28, scope: !765)
!768 = !DILocation(line: 431, column: 14, scope: !765)
!769 = !DILocation(line: 431, column: 14, scope: !766)
!770 = !DILocation(line: 432, column: 14, scope: !771)
!771 = distinct !DILexicalBlock(scope: !765, file: !344, line: 431, column: 33)
!772 = !DILocation(line: 432, column: 16, scope: !771)
!773 = !DILocation(line: 433, column: 10, scope: !771)
!774 = !DILocation(line: 434, column: 13, scope: !775)
!775 = distinct !DILexicalBlock(scope: !765, file: !344, line: 433, column: 17)
!776 = !DILocation(line: 430, column: 7, scope: !777)
!777 = !DILexicalBlockFile(scope: !738, file: !344, discriminator: 2)
!778 = distinct !{!778, !758}
!779 = !DILocation(line: 439, column: 8, scope: !780)
!780 = distinct !DILexicalBlock(scope: !705, file: !344, line: 439, column: 8)
!781 = !DILocation(line: 439, column: 17, scope: !780)
!782 = !DILocation(line: 439, column: 8, scope: !705)
!783 = !DILocation(line: 440, column: 12, scope: !784)
!784 = distinct !DILexicalBlock(scope: !780, file: !344, line: 439, column: 25)
!785 = !DILocation(line: 440, column: 7, scope: !784)
!786 = !DILocation(line: 441, column: 4, scope: !784)
!787 = !DILocation(line: 442, column: 19, scope: !788)
!788 = distinct !DILexicalBlock(scope: !780, file: !344, line: 441, column: 11)
!789 = !DILocation(line: 442, column: 8, scope: !788)
!790 = !DILocation(line: 442, column: 17, scope: !788)
!791 = !DILocation(line: 445, column: 8, scope: !792)
!792 = distinct !DILexicalBlock(scope: !705, file: !344, line: 445, column: 8)
!793 = !DILocation(line: 445, column: 17, scope: !792)
!794 = !DILocation(line: 445, column: 8, scope: !705)
!795 = !DILocation(line: 446, column: 12, scope: !796)
!796 = distinct !DILexicalBlock(scope: !792, file: !344, line: 445, column: 25)
!797 = !DILocation(line: 446, column: 7, scope: !796)
!798 = !DILocation(line: 447, column: 4, scope: !796)
!799 = !DILocation(line: 448, column: 19, scope: !800)
!800 = distinct !DILexicalBlock(scope: !792, file: !344, line: 447, column: 11)
!801 = !DILocation(line: 448, column: 8, scope: !800)
!802 = !DILocation(line: 448, column: 17, scope: !800)
!803 = !DILocation(line: 450, column: 1, scope: !705)
!804 = distinct !DISubprogram(name: "File_IsDirsep", scope: !805, file: !805, line: 389, type: !806, isLocal: true, isDefinition: true, scopeLine: 390, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !354)
!805 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/file.h", directory: "/home/lichi/Desktop/open-vm-tools/line190")
!806 = !DISubroutineType(types: !807)
!807 = !{!808, !380}
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !348, line: 230, baseType: !338)
!809 = !DILocalVariable(name: "c", arg: 1, scope: !804, file: !805, line: 389, type: !380)
!810 = !DILocation(line: 389, column: 19, scope: !804)
!811 = !DILocation(line: 394, column: 11, scope: !804)
!812 = !DILocation(line: 394, column: 13, scope: !804)
!813 = !DILocation(line: 394, column: 4, scope: !804)
!814 = distinct !DISubprogram(name: "Unicode_IsEmpty", scope: !815, file: !815, line: 272, type: !816, isLocal: true, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !354)
!815 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/unicodeBase.h", directory: "/home/lichi/Desktop/open-vm-tools/line190")
!816 = !DISubroutineType(types: !817)
!817 = !{!808, !352}
!818 = !DILocalVariable(name: "str", arg: 1, scope: !814, file: !815, line: 272, type: !352)
!819 = !DILocation(line: 272, column: 29, scope: !814)
!820 = !DILocation(line: 275, column: 11, scope: !814)
!821 = !DILocation(line: 275, column: 18, scope: !814)
!822 = !DILocation(line: 275, column: 4, scope: !814)
!823 = distinct !DISubprogram(name: "File_MapPathPrefix", scope: !344, file: !344, line: 535, type: !824, isLocal: false, isDefinition: true, scopeLine: 539, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !354)
!824 = !DISubroutineType(types: !825)
!825 = !{!337, !352, !826, !826, !552}
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!827 = !DILocalVariable(name: "oldPath", arg: 1, scope: !823, file: !344, line: 535, type: !352)
!828 = !DILocation(line: 535, column: 32, scope: !823)
!829 = !DILocalVariable(name: "oldPrefixes", arg: 2, scope: !823, file: !344, line: 536, type: !826)
!830 = !DILocation(line: 536, column: 33, scope: !823)
!831 = !DILocalVariable(name: "newPrefixes", arg: 3, scope: !823, file: !344, line: 537, type: !826)
!832 = !DILocation(line: 537, column: 33, scope: !823)
!833 = !DILocalVariable(name: "numPrefixes", arg: 4, scope: !823, file: !344, line: 538, type: !552)
!834 = !DILocation(line: 538, column: 27, scope: !823)
!835 = !DILocalVariable(name: "i", scope: !823, file: !344, line: 540, type: !380)
!836 = !DILocation(line: 540, column: 8, scope: !823)
!837 = !DILocalVariable(name: "oldPathLen", scope: !823, file: !344, line: 541, type: !552)
!838 = !DILocation(line: 541, column: 11, scope: !823)
!839 = !DILocation(line: 541, column: 31, scope: !823)
!840 = !DILocation(line: 541, column: 24, scope: !823)
!841 = !DILocation(line: 543, column: 11, scope: !842)
!842 = distinct !DILexicalBlock(scope: !823, file: !344, line: 543, column: 4)
!843 = !DILocation(line: 543, column: 9, scope: !842)
!844 = !DILocation(line: 543, column: 16, scope: !845)
!845 = !DILexicalBlockFile(scope: !846, file: !344, discriminator: 1)
!846 = distinct !DILexicalBlock(scope: !842, file: !344, line: 543, column: 4)
!847 = !DILocation(line: 543, column: 20, scope: !845)
!848 = !DILocation(line: 543, column: 18, scope: !845)
!849 = !DILocation(line: 543, column: 4, scope: !845)
!850 = !DILocalVariable(name: "newPath", scope: !851, file: !344, line: 544, type: !337)
!851 = distinct !DILexicalBlock(scope: !846, file: !344, line: 543, column: 38)
!852 = !DILocation(line: 544, column: 13, scope: !851)
!853 = !DILocalVariable(name: "oldPrefix", scope: !851, file: !344, line: 545, type: !337)
!854 = !DILocation(line: 545, column: 13, scope: !851)
!855 = !DILocalVariable(name: "newPrefix", scope: !851, file: !344, line: 546, type: !337)
!856 = !DILocation(line: 546, column: 13, scope: !851)
!857 = !DILocalVariable(name: "oldPrefixLen", scope: !851, file: !344, line: 547, type: !552)
!858 = !DILocation(line: 547, column: 14, scope: !851)
!859 = !DILocation(line: 549, column: 49, scope: !851)
!860 = !DILocation(line: 549, column: 37, scope: !851)
!861 = !DILocation(line: 549, column: 19, scope: !851)
!862 = !DILocation(line: 549, column: 17, scope: !851)
!863 = !DILocation(line: 550, column: 49, scope: !851)
!864 = !DILocation(line: 550, column: 37, scope: !851)
!865 = !DILocation(line: 550, column: 19, scope: !851)
!866 = !DILocation(line: 550, column: 17, scope: !851)
!867 = !DILocation(line: 551, column: 29, scope: !851)
!868 = !DILocation(line: 551, column: 22, scope: !851)
!869 = !DILocation(line: 551, column: 20, scope: !851)
!870 = !DILocation(line: 567, column: 12, scope: !871)
!871 = distinct !DILexicalBlock(scope: !851, file: !344, line: 567, column: 11)
!872 = !DILocation(line: 567, column: 26, scope: !871)
!873 = !DILocation(line: 567, column: 23, scope: !871)
!874 = !DILocation(line: 567, column: 40, scope: !871)
!875 = !DILocation(line: 571, column: 20, scope: !871)
!876 = !DILocation(line: 571, column: 29, scope: !871)
!877 = !DILocation(line: 571, column: 40, scope: !871)
!878 = !DILocation(line: 571, column: 12, scope: !871)
!879 = !DILocation(line: 571, column: 54, scope: !871)
!880 = !DILocation(line: 571, column: 60, scope: !871)
!881 = !DILocation(line: 573, column: 32, scope: !871)
!882 = !DILocation(line: 573, column: 24, scope: !871)
!883 = !DILocation(line: 573, column: 12, scope: !871)
!884 = !DILocation(line: 573, column: 47, scope: !871)
!885 = !DILocation(line: 574, column: 24, scope: !871)
!886 = !DILocation(line: 574, column: 16, scope: !871)
!887 = !DILocation(line: 574, column: 38, scope: !871)
!888 = !DILocation(line: 567, column: 11, scope: !889)
!889 = !DILexicalBlockFile(scope: !851, file: !344, discriminator: 1)
!890 = !DILocalVariable(name: "newPrefixLen", scope: !891, file: !344, line: 575, type: !552)
!891 = distinct !DILexicalBlock(scope: !871, file: !344, line: 574, column: 49)
!892 = !DILocation(line: 575, column: 17, scope: !891)
!893 = !DILocation(line: 575, column: 39, scope: !891)
!894 = !DILocation(line: 575, column: 32, scope: !891)
!895 = !DILocalVariable(name: "newPathLen", scope: !891, file: !344, line: 576, type: !552)
!896 = !DILocation(line: 576, column: 17, scope: !891)
!897 = !DILocation(line: 576, column: 31, scope: !891)
!898 = !DILocation(line: 576, column: 44, scope: !891)
!899 = !DILocation(line: 576, column: 42, scope: !891)
!900 = !DILocation(line: 576, column: 60, scope: !891)
!901 = !DILocation(line: 576, column: 58, scope: !891)
!902 = !DILocation(line: 581, column: 38, scope: !891)
!903 = !DILocation(line: 581, column: 49, scope: !891)
!904 = !DILocation(line: 581, column: 54, scope: !891)
!905 = !DILocation(line: 581, column: 20, scope: !891)
!906 = !DILocation(line: 581, column: 18, scope: !891)
!907 = !DILocation(line: 582, column: 17, scope: !891)
!908 = !DILocation(line: 582, column: 26, scope: !891)
!909 = !DILocation(line: 582, column: 37, scope: !891)
!910 = !DILocation(line: 582, column: 10, scope: !891)
!911 = !DILocation(line: 583, column: 17, scope: !891)
!912 = !DILocation(line: 583, column: 27, scope: !891)
!913 = !DILocation(line: 583, column: 25, scope: !891)
!914 = !DILocation(line: 583, column: 41, scope: !891)
!915 = !DILocation(line: 583, column: 51, scope: !891)
!916 = !DILocation(line: 583, column: 49, scope: !891)
!917 = !DILocation(line: 584, column: 17, scope: !891)
!918 = !DILocation(line: 584, column: 30, scope: !891)
!919 = !DILocation(line: 584, column: 28, scope: !891)
!920 = !DILocation(line: 584, column: 43, scope: !891)
!921 = !DILocation(line: 583, column: 10, scope: !891)
!922 = !DILocation(line: 590, column: 21, scope: !891)
!923 = !DILocation(line: 590, column: 10, scope: !891)
!924 = !DILocation(line: 591, column: 21, scope: !891)
!925 = !DILocation(line: 591, column: 10, scope: !891)
!926 = !DILocation(line: 593, column: 17, scope: !891)
!927 = !DILocation(line: 593, column: 10, scope: !891)
!928 = !DILocation(line: 595, column: 18, scope: !851)
!929 = !DILocation(line: 595, column: 7, scope: !851)
!930 = !DILocation(line: 596, column: 18, scope: !851)
!931 = !DILocation(line: 596, column: 7, scope: !851)
!932 = !DILocation(line: 597, column: 4, scope: !851)
!933 = !DILocation(line: 543, column: 34, scope: !934)
!934 = !DILexicalBlockFile(scope: !846, file: !344, discriminator: 2)
!935 = !DILocation(line: 543, column: 4, scope: !934)
!936 = distinct !{!936, !937}
!937 = !DILocation(line: 543, column: 4, scope: !823)
!938 = !DILocation(line: 599, column: 4, scope: !823)
!939 = !DILocation(line: 600, column: 1, scope: !823)
!940 = distinct !DISubprogram(name: "File_PrependToPath", scope: !344, file: !344, line: 622, type: !585, isLocal: false, isDefinition: true, scopeLine: 624, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !354)
!941 = !DILocalVariable(name: "searchPath", arg: 1, scope: !940, file: !344, line: 622, type: !352)
!942 = !DILocation(line: 622, column: 32, scope: !940)
!943 = !DILocalVariable(name: "elem", arg: 2, scope: !940, file: !344, line: 623, type: !352)
!944 = !DILocation(line: 623, column: 32, scope: !940)
!945 = !DILocalVariable(name: "sep", scope: !940, file: !344, line: 625, type: !353)
!946 = !DILocation(line: 625, column: 15, scope: !940)
!947 = !DILocation(line: 625, column: 21, scope: !940)
!948 = !DILocalVariable(name: "newPath", scope: !940, file: !344, line: 626, type: !337)
!949 = !DILocation(line: 626, column: 10, scope: !940)
!950 = !DILocalVariable(name: "path", scope: !940, file: !344, line: 627, type: !337)
!951 = !DILocation(line: 627, column: 10, scope: !940)
!952 = !DILocalVariable(name: "n", scope: !940, file: !344, line: 628, type: !552)
!953 = !DILocation(line: 628, column: 11, scope: !940)
!954 = !DILocation(line: 633, column: 46, scope: !940)
!955 = !DILocation(line: 634, column: 31, scope: !940)
!956 = !DILocation(line: 633, column: 14, scope: !940)
!957 = !DILocation(line: 633, column: 12, scope: !940)
!958 = !DILocation(line: 636, column: 15, scope: !940)
!959 = !DILocation(line: 636, column: 8, scope: !940)
!960 = !DILocation(line: 636, column: 6, scope: !940)
!961 = !DILocation(line: 637, column: 11, scope: !940)
!962 = !DILocation(line: 637, column: 21, scope: !940)
!963 = !DILocation(line: 637, column: 19, scope: !940)
!964 = !DILocation(line: 637, column: 23, scope: !940)
!965 = !DILocation(line: 637, column: 9, scope: !940)
!966 = !DILocation(line: 639, column: 4, scope: !940)
!967 = !DILocalVariable(name: "next", scope: !968, file: !344, line: 640, type: !337)
!968 = distinct !DILexicalBlock(scope: !969, file: !344, line: 639, column: 13)
!969 = distinct !DILexicalBlock(scope: !970, file: !344, line: 639, column: 4)
!970 = distinct !DILexicalBlock(scope: !940, file: !344, line: 639, column: 4)
!971 = !DILocation(line: 640, column: 13, scope: !968)
!972 = !DILocation(line: 640, column: 27, scope: !968)
!973 = !DILocation(line: 640, column: 20, scope: !968)
!974 = !DILocalVariable(name: "len", scope: !968, file: !344, line: 641, type: !552)
!975 = !DILocation(line: 641, column: 14, scope: !968)
!976 = !DILocation(line: 641, column: 20, scope: !968)
!977 = !DILocation(line: 641, column: 27, scope: !978)
!978 = !DILexicalBlockFile(scope: !968, file: !344, discriminator: 1)
!979 = !DILocation(line: 641, column: 34, scope: !978)
!980 = !DILocation(line: 641, column: 32, scope: !978)
!981 = !DILocation(line: 641, column: 20, scope: !978)
!982 = !DILocation(line: 641, column: 48, scope: !983)
!983 = !DILexicalBlockFile(scope: !968, file: !344, discriminator: 2)
!984 = !DILocation(line: 641, column: 41, scope: !983)
!985 = !DILocation(line: 641, column: 20, scope: !983)
!986 = !DILocation(line: 641, column: 20, scope: !987)
!987 = !DILexicalBlockFile(scope: !968, file: !344, discriminator: 3)
!988 = !DILocation(line: 641, column: 14, scope: !987)
!989 = !DILocation(line: 643, column: 12, scope: !990)
!990 = distinct !DILexicalBlock(scope: !968, file: !344, line: 643, column: 11)
!991 = !DILocation(line: 643, column: 19, scope: !990)
!992 = !DILocation(line: 643, column: 16, scope: !990)
!993 = !DILocation(line: 643, column: 22, scope: !990)
!994 = !DILocation(line: 643, column: 34, scope: !995)
!995 = !DILexicalBlockFile(scope: !990, file: !344, discriminator: 1)
!996 = !DILocation(line: 643, column: 40, scope: !995)
!997 = !DILocation(line: 643, column: 46, scope: !995)
!998 = !DILocation(line: 643, column: 26, scope: !995)
!999 = !DILocation(line: 643, column: 51, scope: !995)
!1000 = !DILocation(line: 643, column: 11, scope: !995)
!1001 = !DILocation(line: 644, column: 14, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !344, line: 644, column: 14)
!1003 = distinct !DILexicalBlock(scope: !990, file: !344, line: 643, column: 58)
!1004 = !DILocation(line: 644, column: 14, scope: !1003)
!1005 = !DILocation(line: 645, column: 21, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1002, file: !344, line: 644, column: 20)
!1007 = !DILocation(line: 645, column: 27, scope: !1006)
!1008 = !DILocation(line: 645, column: 32, scope: !1006)
!1009 = !DILocation(line: 645, column: 44, scope: !1006)
!1010 = !DILocation(line: 645, column: 49, scope: !1006)
!1011 = !DILocation(line: 645, column: 37, scope: !1006)
!1012 = !DILocation(line: 645, column: 54, scope: !1006)
!1013 = !DILocation(line: 645, column: 13, scope: !1014)
!1014 = !DILexicalBlockFile(scope: !1006, file: !344, discriminator: 1)
!1015 = !DILocation(line: 646, column: 10, scope: !1006)
!1016 = !DILocation(line: 647, column: 14, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1002, file: !344, line: 646, column: 17)
!1018 = !DILocation(line: 647, column: 21, scope: !1017)
!1019 = !DILocation(line: 649, column: 10, scope: !1003)
!1020 = !DILocation(line: 652, column: 12, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !968, file: !344, line: 652, column: 11)
!1022 = !DILocation(line: 652, column: 11, scope: !968)
!1023 = !DILocation(line: 653, column: 10, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1021, file: !344, line: 652, column: 18)
!1025 = !DILocation(line: 655, column: 14, scope: !968)
!1026 = !DILocation(line: 655, column: 19, scope: !968)
!1027 = !DILocation(line: 655, column: 12, scope: !968)
!1028 = !DILocation(line: 639, column: 4, scope: !1029)
!1029 = !DILexicalBlockFile(scope: !969, file: !344, discriminator: 1)
!1030 = distinct !{!1030, !966}
!1031 = !DILocation(line: 658, column: 11, scope: !940)
!1032 = !DILocation(line: 658, column: 4, scope: !940)
!1033 = distinct !DISubprogram(name: "File_ReplaceExtension", scope: !344, file: !344, line: 691, type: !1034, isLocal: false, isDefinition: true, scopeLine: 695, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !354)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!337, !352, !352, !1036, null}
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !348, line: 173, baseType: !1037)
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !1038, line: 51, baseType: !374)
!1038 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line190")
!1039 = !DILocalVariable(name: "pathName", arg: 1, scope: !1033, file: !344, line: 691, type: !352)
!1040 = !DILocation(line: 691, column: 35, scope: !1033)
!1041 = !DILocalVariable(name: "newExtension", arg: 2, scope: !1033, file: !344, line: 692, type: !352)
!1042 = !DILocation(line: 692, column: 35, scope: !1033)
!1043 = !DILocalVariable(name: "numExtensions", arg: 3, scope: !1033, file: !344, line: 693, type: !1036)
!1044 = !DILocation(line: 693, column: 30, scope: !1033)
!1045 = !DILocalVariable(name: "p", scope: !1033, file: !344, line: 696, type: !337)
!1046 = !DILocation(line: 696, column: 10, scope: !1033)
!1047 = !DILocalVariable(name: "place", scope: !1033, file: !344, line: 697, type: !337)
!1048 = !DILocation(line: 697, column: 10, scope: !1033)
!1049 = !DILocalVariable(name: "result", scope: !1033, file: !344, line: 698, type: !337)
!1050 = !DILocation(line: 698, column: 10, scope: !1033)
!1051 = !DILocalVariable(name: "newExtLen", scope: !1033, file: !344, line: 699, type: !552)
!1052 = !DILocation(line: 699, column: 11, scope: !1033)
!1053 = !DILocalVariable(name: "resultLen", scope: !1033, file: !344, line: 700, type: !552)
!1054 = !DILocation(line: 700, column: 11, scope: !1033)
!1055 = !DILocalVariable(name: "pathNameLen", scope: !1033, file: !344, line: 701, type: !552)
!1056 = !DILocation(line: 701, column: 11, scope: !1033)
!1057 = !DILocation(line: 707, column: 25, scope: !1033)
!1058 = !DILocation(line: 707, column: 18, scope: !1033)
!1059 = !DILocation(line: 707, column: 16, scope: !1033)
!1060 = !DILocation(line: 708, column: 23, scope: !1033)
!1061 = !DILocation(line: 708, column: 16, scope: !1033)
!1062 = !DILocation(line: 708, column: 14, scope: !1033)
!1063 = !DILocation(line: 709, column: 16, scope: !1033)
!1064 = !DILocation(line: 709, column: 30, scope: !1033)
!1065 = !DILocation(line: 709, column: 28, scope: !1033)
!1066 = !DILocation(line: 709, column: 40, scope: !1033)
!1067 = !DILocation(line: 709, column: 14, scope: !1033)
!1068 = !DILocation(line: 710, column: 30, scope: !1033)
!1069 = !DILocation(line: 710, column: 13, scope: !1033)
!1070 = !DILocation(line: 710, column: 11, scope: !1033)
!1071 = !DILocation(line: 712, column: 11, scope: !1033)
!1072 = !DILocation(line: 712, column: 19, scope: !1033)
!1073 = !DILocation(line: 712, column: 29, scope: !1033)
!1074 = !DILocation(line: 712, column: 41, scope: !1033)
!1075 = !DILocation(line: 712, column: 4, scope: !1033)
!1076 = !DILocation(line: 714, column: 27, scope: !1033)
!1077 = !DILocation(line: 714, column: 35, scope: !1033)
!1078 = !DILocation(line: 714, column: 8, scope: !1033)
!1079 = !DILocation(line: 714, column: 6, scope: !1033)
!1080 = !DILocation(line: 715, column: 8, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1033, file: !344, line: 715, column: 8)
!1082 = !DILocation(line: 715, column: 10, scope: !1081)
!1083 = !DILocation(line: 715, column: 8, scope: !1033)
!1084 = !DILocation(line: 716, column: 20, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1081, file: !344, line: 715, column: 18)
!1086 = !DILocation(line: 716, column: 12, scope: !1085)
!1087 = !DILocation(line: 716, column: 10, scope: !1085)
!1088 = !DILocation(line: 717, column: 4, scope: !1085)
!1089 = !DILocation(line: 718, column: 20, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1081, file: !344, line: 717, column: 11)
!1091 = !DILocation(line: 718, column: 12, scope: !1090)
!1092 = !DILocation(line: 718, column: 10, scope: !1090)
!1093 = !DILocation(line: 721, column: 8, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1033, file: !344, line: 721, column: 8)
!1095 = !DILocation(line: 721, column: 10, scope: !1094)
!1096 = !DILocation(line: 721, column: 8, scope: !1033)
!1097 = !DILocation(line: 723, column: 23, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1094, file: !344, line: 721, column: 18)
!1099 = !DILocation(line: 723, column: 16, scope: !1098)
!1100 = !DILocation(line: 723, column: 13, scope: !1098)
!1101 = !DILocation(line: 724, column: 4, scope: !1098)
!1102 = !DILocation(line: 724, column: 15, scope: !1103)
!1103 = !DILexicalBlockFile(scope: !1104, file: !344, discriminator: 1)
!1104 = distinct !DILexicalBlock(scope: !1094, file: !344, line: 724, column: 15)
!1105 = !DILocation(line: 724, column: 29, scope: !1103)
!1106 = !DILocation(line: 726, column: 15, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1104, file: !344, line: 724, column: 35)
!1108 = !DILocation(line: 726, column: 13, scope: !1107)
!1109 = !DILocation(line: 727, column: 4, scope: !1107)
!1110 = !DILocalVariable(name: "i", scope: !1111, file: !344, line: 728, type: !1036)
!1111 = distinct !DILexicalBlock(scope: !1104, file: !344, line: 727, column: 11)
!1112 = !DILocation(line: 728, column: 14, scope: !1111)
!1113 = !DILocalVariable(name: "arguments", scope: !1111, file: !344, line: 729, type: !1114)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1115, line: 79, baseType: !1116)
!1115 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/open-vm-tools/line190")
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1117, line: 40, baseType: !1118)
!1117 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/open-vm-tools/line190")
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 729, baseType: !1119)
!1119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1120, size: 192, align: 64, elements: !1126)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 729, size: 192, align: 64, elements: !1121)
!1121 = !{!1122, !1123, !1124, !1125}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1120, file: !1, line: 729, baseType: !374, size: 32, align: 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1120, file: !1, line: 729, baseType: !374, size: 32, align: 32, offset: 32)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1120, file: !1, line: 729, baseType: !339, size: 64, align: 64, offset: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1120, file: !1, line: 729, baseType: !339, size: 64, align: 64, offset: 128)
!1126 = !{!1127}
!1127 = !DISubrange(count: 1)
!1128 = !DILocation(line: 729, column: 15, scope: !1111)
!1129 = !DILocation(line: 736, column: 23, scope: !1111)
!1130 = !DILocation(line: 736, column: 16, scope: !1111)
!1131 = !DILocation(line: 736, column: 13, scope: !1111)
!1132 = !DILocation(line: 738, column: 6, scope: !1111)
!1133 = !DILocation(line: 740, column: 14, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1111, file: !344, line: 740, column: 7)
!1135 = !DILocation(line: 740, column: 12, scope: !1134)
!1136 = !DILocation(line: 740, column: 19, scope: !1137)
!1137 = !DILexicalBlockFile(scope: !1138, file: !344, discriminator: 1)
!1138 = distinct !DILexicalBlock(scope: !1134, file: !344, line: 740, column: 7)
!1139 = !DILocation(line: 740, column: 23, scope: !1137)
!1140 = !DILocation(line: 740, column: 21, scope: !1137)
!1141 = !DILocation(line: 740, column: 7, scope: !1137)
!1142 = !DILocalVariable(name: "oldExtension", scope: !1143, file: !344, line: 741, type: !352)
!1143 = distinct !DILexicalBlock(scope: !1138, file: !344, line: 740, column: 44)
!1144 = !DILocation(line: 741, column: 22, scope: !1143)
!1145 = !DILocation(line: 741, column: 36, scope: !1143)
!1146 = !DILocation(line: 741, column: 36, scope: !1147)
!1147 = !DILexicalBlockFile(scope: !1143, file: !344, discriminator: 1)
!1148 = !DILocation(line: 741, column: 36, scope: !1149)
!1149 = !DILexicalBlockFile(scope: !1143, file: !344, discriminator: 2)
!1150 = !DILocation(line: 741, column: 36, scope: !1151)
!1151 = !DILexicalBlockFile(scope: !1143, file: !344, discriminator: 3)
!1152 = !DILocation(line: 741, column: 22, scope: !1151)
!1153 = !DILocation(line: 745, column: 21, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1143, file: !344, line: 745, column: 14)
!1155 = !DILocation(line: 745, column: 24, scope: !1154)
!1156 = !DILocation(line: 745, column: 14, scope: !1154)
!1157 = !DILocation(line: 745, column: 38, scope: !1154)
!1158 = !DILocation(line: 745, column: 14, scope: !1143)
!1159 = !DILocation(line: 746, column: 21, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1154, file: !344, line: 745, column: 44)
!1161 = !DILocation(line: 746, column: 19, scope: !1160)
!1162 = !DILocation(line: 747, column: 13, scope: !1160)
!1163 = !DILocation(line: 749, column: 7, scope: !1143)
!1164 = !DILocation(line: 740, column: 40, scope: !1165)
!1165 = !DILexicalBlockFile(scope: !1138, file: !344, discriminator: 2)
!1166 = !DILocation(line: 740, column: 7, scope: !1165)
!1167 = distinct !{!1167, !1168}
!1168 = !DILocation(line: 740, column: 7, scope: !1111)
!1169 = !DILocation(line: 751, column: 6, scope: !1111)
!1170 = !DILocation(line: 755, column: 11, scope: !1033)
!1171 = !DILocation(line: 755, column: 18, scope: !1033)
!1172 = !DILocation(line: 755, column: 32, scope: !1033)
!1173 = !DILocation(line: 755, column: 42, scope: !1033)
!1174 = !DILocation(line: 755, column: 4, scope: !1033)
!1175 = !DILocation(line: 757, column: 11, scope: !1033)
!1176 = !DILocation(line: 757, column: 4, scope: !1033)
!1177 = distinct !DISubprogram(name: "File_RemoveExtension", scope: !344, file: !344, line: 780, type: !618, isLocal: false, isDefinition: true, scopeLine: 781, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !354)
!1178 = !DILocalVariable(name: "pathName", arg: 1, scope: !1177, file: !344, line: 780, type: !352)
!1179 = !DILocation(line: 780, column: 34, scope: !1177)
!1180 = !DILocalVariable(name: "p", scope: !1177, file: !344, line: 782, type: !337)
!1181 = !DILocation(line: 782, column: 10, scope: !1177)
!1182 = !DILocalVariable(name: "result", scope: !1177, file: !344, line: 783, type: !337)
!1183 = !DILocation(line: 783, column: 10, scope: !1177)
!1184 = !DILocation(line: 787, column: 30, scope: !1177)
!1185 = !DILocation(line: 787, column: 13, scope: !1177)
!1186 = !DILocation(line: 787, column: 11, scope: !1177)
!1187 = !DILocation(line: 789, column: 27, scope: !1177)
!1188 = !DILocation(line: 789, column: 42, scope: !1177)
!1189 = !DILocation(line: 789, column: 35, scope: !1177)
!1190 = !DILocation(line: 789, column: 8, scope: !1191)
!1191 = !DILexicalBlockFile(scope: !1177, file: !344, discriminator: 1)
!1192 = !DILocation(line: 789, column: 6, scope: !1177)
!1193 = !DILocation(line: 790, column: 8, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1177, file: !344, line: 790, column: 8)
!1195 = !DILocation(line: 790, column: 10, scope: !1194)
!1196 = !DILocation(line: 790, column: 8, scope: !1177)
!1197 = !DILocation(line: 791, column: 20, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1194, file: !344, line: 790, column: 18)
!1199 = !DILocation(line: 791, column: 12, scope: !1198)
!1200 = !DILocation(line: 791, column: 10, scope: !1198)
!1201 = !DILocation(line: 792, column: 4, scope: !1198)
!1202 = !DILocation(line: 793, column: 20, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1194, file: !344, line: 792, column: 11)
!1204 = !DILocation(line: 793, column: 12, scope: !1203)
!1205 = !DILocation(line: 793, column: 10, scope: !1203)
!1206 = !DILocation(line: 798, column: 8, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1177, file: !344, line: 798, column: 8)
!1208 = !DILocation(line: 798, column: 10, scope: !1207)
!1209 = !DILocation(line: 798, column: 8, scope: !1177)
!1210 = !DILocation(line: 799, column: 8, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1207, file: !344, line: 798, column: 18)
!1212 = !DILocation(line: 799, column: 10, scope: !1211)
!1213 = !DILocation(line: 800, column: 4, scope: !1211)
!1214 = !DILocation(line: 802, column: 11, scope: !1177)
!1215 = !DILocation(line: 802, column: 4, scope: !1177)
