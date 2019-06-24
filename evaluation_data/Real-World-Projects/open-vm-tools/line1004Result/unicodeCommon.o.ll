; ModuleID = './unicodeCommon.o.i'
source_filename = "./unicodeCommon.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"\5Cx\00", align 1
@NonPrintableBytesToEscape = internal constant [256 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 16
@.str.1 = private unnamed_addr constant [62 x i8] c"%s: Couldn't convert invalid buffer [%s] from %s to Unicode.\0A\00", align 1
@__FUNCTION__.Unicode_AllocWithLength = private unnamed_addr constant [24 x i8] c"Unicode_AllocWithLength\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"(couldn't escape bytes)\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"PANIC %s:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"unicodeCommon.c\00", align 1

; Function Attrs: nounwind uwtable
define i8* @Unicode_EscapeBuffer(i8*, i64, i32) #0 !dbg !359 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !372, metadata !373), !dbg !374
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !375, metadata !373), !dbg !376
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !377, metadata !373), !dbg !378
  %7 = load i32, i32* %6, align 4, !dbg !379
  %8 = call i32 @Unicode_ResolveEncoding(i32 %7), !dbg !380
  store i32 %8, i32* %6, align 4, !dbg !381
  %9 = load i64, i64* %5, align 8, !dbg !382
  %10 = icmp eq i64 %9, -1, !dbg !384
  br i1 %10, label %11, label %15, !dbg !385

; <label>:11:                                     ; preds = %3
  %12 = load i8*, i8** %4, align 8, !dbg !386
  %13 = load i32, i32* %6, align 4, !dbg !388
  %14 = call i64 @Unicode_LengthInBytes(i8* %12, i32 %13), !dbg !389
  store i64 %14, i64* %5, align 8, !dbg !390
  br label %15, !dbg !391

; <label>:15:                                     ; preds = %11, %3
  %16 = load i8*, i8** %4, align 8, !dbg !392
  %17 = load i64, i64* %5, align 8, !dbg !393
  %18 = call i8* @Escape_DoString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* getelementptr inbounds ([256 x i32], [256 x i32]* @NonPrintableBytesToEscape, i32 0, i32 0), i8* %16, i64 %17, i64* null), !dbg !394
  ret i8* %18, !dbg !395
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @Unicode_ResolveEncoding(i32) #2

; Function Attrs: nounwind uwtable
define i64 @Unicode_LengthInBytes(i8*, i32) #0 !dbg !396 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i16*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !399, metadata !373), !dbg !400
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !401, metadata !373), !dbg !402
  call void @llvm.dbg.declare(metadata i64* %5, metadata !403, metadata !373), !dbg !404
  %8 = load i32, i32* %4, align 4, !dbg !405
  %9 = call i32 @Unicode_ResolveEncoding(i32 %8), !dbg !406
  store i32 %9, i32* %4, align 4, !dbg !407
  %10 = load i32, i32* %4, align 4, !dbg !408
  switch i32 %10, label %48 [
    i32 4, label %11
    i32 5, label %11
    i32 6, label %11
    i32 1, label %29
    i32 2, label %29
    i32 3, label %29
  ], !dbg !409

; <label>:11:                                     ; preds = %2, %2, %2
  call void @llvm.dbg.declare(metadata i32** %6, metadata !410, metadata !373), !dbg !417
  %12 = load i8*, i8** %3, align 8, !dbg !418
  %13 = bitcast i8* %12 to i32*, !dbg !418
  store i32* %13, i32** %6, align 8, !dbg !420
  br label %14, !dbg !421

; <label>:14:                                     ; preds = %19, %11
  %15 = load i32*, i32** %6, align 8, !dbg !422
  %16 = load i32, i32* %15, align 4, !dbg !425
  %17 = icmp ne i32 %16, 0, !dbg !426
  br i1 %17, label %18, label %22, !dbg !427

; <label>:18:                                     ; preds = %14
  br label %19, !dbg !428

; <label>:19:                                     ; preds = %18
  %20 = load i32*, i32** %6, align 8, !dbg !430
  %21 = getelementptr inbounds i32, i32* %20, i32 1, !dbg !430
  store i32* %21, i32** %6, align 8, !dbg !430
  br label %14, !dbg !432, !llvm.loop !433

; <label>:22:                                     ; preds = %14
  %23 = load i32*, i32** %6, align 8, !dbg !435
  %24 = bitcast i32* %23 to i8*, !dbg !436
  %25 = load i8*, i8** %3, align 8, !dbg !437
  %26 = ptrtoint i8* %24 to i64, !dbg !438
  %27 = ptrtoint i8* %25 to i64, !dbg !438
  %28 = sub i64 %26, %27, !dbg !438
  store i64 %28, i64* %5, align 8, !dbg !439
  br label %51, !dbg !440

; <label>:29:                                     ; preds = %2, %2, %2
  call void @llvm.dbg.declare(metadata i16** %7, metadata !441, metadata !373), !dbg !449
  %30 = load i8*, i8** %3, align 8, !dbg !450
  %31 = bitcast i8* %30 to i16*, !dbg !450
  store i16* %31, i16** %7, align 8, !dbg !452
  br label %32, !dbg !453

; <label>:32:                                     ; preds = %38, %29
  %33 = load i16*, i16** %7, align 8, !dbg !454
  %34 = load i16, i16* %33, align 2, !dbg !457
  %35 = zext i16 %34 to i32, !dbg !457
  %36 = icmp ne i32 %35, 0, !dbg !458
  br i1 %36, label %37, label %41, !dbg !459

; <label>:37:                                     ; preds = %32
  br label %38, !dbg !460

; <label>:38:                                     ; preds = %37
  %39 = load i16*, i16** %7, align 8, !dbg !462
  %40 = getelementptr inbounds i16, i16* %39, i32 1, !dbg !462
  store i16* %40, i16** %7, align 8, !dbg !462
  br label %32, !dbg !464, !llvm.loop !465

; <label>:41:                                     ; preds = %32
  %42 = load i16*, i16** %7, align 8, !dbg !467
  %43 = bitcast i16* %42 to i8*, !dbg !468
  %44 = load i8*, i8** %3, align 8, !dbg !469
  %45 = ptrtoint i8* %43 to i64, !dbg !470
  %46 = ptrtoint i8* %44 to i64, !dbg !470
  %47 = sub i64 %45, %46, !dbg !470
  store i64 %47, i64* %5, align 8, !dbg !471
  br label %51, !dbg !472

; <label>:48:                                     ; preds = %2
  %49 = load i8*, i8** %3, align 8, !dbg !473
  %50 = call i64 @strlen(i8* %49) #7, !dbg !474
  store i64 %50, i64* %5, align 8, !dbg !475
  br label %51, !dbg !476

; <label>:51:                                     ; preds = %48, %41, %22
  %52 = load i64, i64* %5, align 8, !dbg !477
  ret i64 %52, !dbg !478
}

declare i8* @Escape_DoString(i8*, i32*, i8*, i64, i64*) #2

; Function Attrs: nounwind uwtable
define signext i8 @UnicodeSanityCheck(i8*, i64, i32) #0 !dbg !479 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !483, metadata !373), !dbg !484
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !485, metadata !373), !dbg !486
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !487, metadata !373), !dbg !488
  %10 = load i32, i32* %7, align 4, !dbg !489
  %11 = icmp eq i32 %10, 7, !dbg !491
  br i1 %11, label %12, label %52, !dbg !492

; <label>:12:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata i8** %8, metadata !493, metadata !373), !dbg !495
  %13 = load i8*, i8** %5, align 8, !dbg !496
  store i8* %13, i8** %8, align 8, !dbg !495
  %14 = load i64, i64* %6, align 8, !dbg !497
  %15 = icmp eq i64 %14, -1, !dbg !499
  br i1 %15, label %16, label %33, !dbg !500

; <label>:16:                                     ; preds = %12
  br label %17, !dbg !501

; <label>:17:                                     ; preds = %29, %16
  %18 = load i8*, i8** %8, align 8, !dbg !503
  %19 = load i8, i8* %18, align 1, !dbg !507
  %20 = zext i8 %19 to i32, !dbg !507
  %21 = icmp ne i32 %20, 0, !dbg !508
  br i1 %21, label %22, label %32, !dbg !509

; <label>:22:                                     ; preds = %17
  %23 = load i8*, i8** %8, align 8, !dbg !510
  %24 = load i8, i8* %23, align 1, !dbg !513
  %25 = zext i8 %24 to i32, !dbg !513
  %26 = icmp sge i32 %25, 128, !dbg !514
  br i1 %26, label %27, label %28, !dbg !515

; <label>:27:                                     ; preds = %22
  store i8 0, i8* %4, align 1, !dbg !516
  br label %53, !dbg !516

; <label>:28:                                     ; preds = %22
  br label %29, !dbg !518

; <label>:29:                                     ; preds = %28
  %30 = load i8*, i8** %8, align 8, !dbg !519
  %31 = getelementptr inbounds i8, i8* %30, i32 1, !dbg !519
  store i8* %31, i8** %8, align 8, !dbg !519
  br label %17, !dbg !521, !llvm.loop !522

; <label>:32:                                     ; preds = %17
  br label %51, !dbg !523

; <label>:33:                                     ; preds = %12
  call void @llvm.dbg.declare(metadata i64* %9, metadata !524, metadata !373), !dbg !526
  store i64 0, i64* %9, align 8, !dbg !527
  br label %34, !dbg !529

; <label>:34:                                     ; preds = %47, %33
  %35 = load i64, i64* %9, align 8, !dbg !530
  %36 = load i64, i64* %6, align 8, !dbg !533
  %37 = icmp slt i64 %35, %36, !dbg !534
  br i1 %37, label %38, label %50, !dbg !535

; <label>:38:                                     ; preds = %34
  %39 = load i64, i64* %9, align 8, !dbg !536
  %40 = load i8*, i8** %8, align 8, !dbg !539
  %41 = getelementptr inbounds i8, i8* %40, i64 %39, !dbg !539
  %42 = load i8, i8* %41, align 1, !dbg !539
  %43 = zext i8 %42 to i32, !dbg !539
  %44 = icmp sge i32 %43, 128, !dbg !540
  br i1 %44, label %45, label %46, !dbg !541

; <label>:45:                                     ; preds = %38
  store i8 0, i8* %4, align 1, !dbg !542
  br label %53, !dbg !542

; <label>:46:                                     ; preds = %38
  br label %47, !dbg !544

; <label>:47:                                     ; preds = %46
  %48 = load i64, i64* %9, align 8, !dbg !545
  %49 = add nsw i64 %48, 1, !dbg !545
  store i64 %49, i64* %9, align 8, !dbg !545
  br label %34, !dbg !547, !llvm.loop !548

; <label>:50:                                     ; preds = %34
  br label %51

; <label>:51:                                     ; preds = %50, %32
  br label %52, !dbg !550

; <label>:52:                                     ; preds = %51, %3
  store i8 1, i8* %4, align 1, !dbg !551
  br label %53, !dbg !551

; <label>:53:                                     ; preds = %52, %45, %27
  %54 = load i8, i8* %4, align 1, !dbg !552
  ret i8 %54, !dbg !552
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define i64 @Unicode_UTF16Strlen(i16*) #0 !dbg !553 {
  %2 = alloca i16*, align 8
  %3 = alloca i64, align 8
  store i16* %0, i16** %2, align 8
  call void @llvm.dbg.declare(metadata i16** %2, metadata !556, metadata !373), !dbg !557
  call void @llvm.dbg.declare(metadata i64* %3, metadata !558, metadata !373), !dbg !559
  store i64 0, i64* %3, align 8, !dbg !560
  br label %4, !dbg !562

; <label>:4:                                      ; preds = %11, %1
  %5 = load i64, i64* %3, align 8, !dbg !563
  %6 = load i16*, i16** %2, align 8, !dbg !566
  %7 = getelementptr inbounds i16, i16* %6, i64 %5, !dbg !566
  %8 = load i16, i16* %7, align 2, !dbg !566
  %9 = icmp ne i16 %8, 0, !dbg !567
  br i1 %9, label %10, label %14, !dbg !567

; <label>:10:                                     ; preds = %4
  br label %11, !dbg !568

; <label>:11:                                     ; preds = %10
  %12 = load i64, i64* %3, align 8, !dbg !570
  %13 = add nsw i64 %12, 1, !dbg !570
  store i64 %13, i64* %3, align 8, !dbg !570
  br label %4, !dbg !572, !llvm.loop !573

; <label>:14:                                     ; preds = %4
  %15 = load i64, i64* %3, align 8, !dbg !575
  ret i64 %15, !dbg !576
}

; Function Attrs: nounwind uwtable
define i16* @Unicode_UTF16Strdup(i16*) #0 !dbg !577 {
  %2 = alloca i16*, align 8
  %3 = alloca i16*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca i64, align 8
  store i16* %0, i16** %3, align 8
  call void @llvm.dbg.declare(metadata i16** %3, metadata !581, metadata !373), !dbg !582
  call void @llvm.dbg.declare(metadata i16** %4, metadata !583, metadata !373), !dbg !584
  call void @llvm.dbg.declare(metadata i64* %5, metadata !585, metadata !373), !dbg !586
  %6 = load i16*, i16** %3, align 8, !dbg !587
  %7 = icmp eq i16* %6, null, !dbg !589
  br i1 %7, label %8, label %9, !dbg !590

; <label>:8:                                      ; preds = %1
  store i16* null, i16** %2, align 8, !dbg !591
  br label %23, !dbg !591

; <label>:9:                                      ; preds = %1
  %10 = load i16*, i16** %3, align 8, !dbg !593
  %11 = call i64 @Unicode_UTF16Strlen(i16* %10), !dbg !594
  %12 = add nsw i64 %11, 1, !dbg !595
  %13 = mul i64 %12, 2, !dbg !596
  store i64 %13, i64* %5, align 8, !dbg !597
  %14 = load i64, i64* %5, align 8, !dbg !598
  %15 = call i8* @UtilSafeMalloc0(i64 %14), !dbg !599
  %16 = bitcast i8* %15 to i16*, !dbg !599
  store i16* %16, i16** %4, align 8, !dbg !600
  %17 = load i16*, i16** %4, align 8, !dbg !601
  %18 = bitcast i16* %17 to i8*, !dbg !602
  %19 = load i16*, i16** %3, align 8, !dbg !603
  %20 = bitcast i16* %19 to i8*, !dbg !602
  %21 = load i64, i64* %5, align 8, !dbg !604
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %20, i64 %21, i32 2, i1 false), !dbg !602
  %22 = load i16*, i16** %4, align 8, !dbg !605
  store i16* %22, i16** %2, align 8, !dbg !606
  br label %23, !dbg !606

; <label>:23:                                     ; preds = %9, %8
  %24 = load i16*, i16** %2, align 8, !dbg !607
  ret i16* %24, !dbg !607
}

declare i8* @UtilSafeMalloc0(i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define i8* @Unicode_AllocWithLength(i8*, i64, i32) #0 !dbg !608 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !609, metadata !373), !dbg !610
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !611, metadata !373), !dbg !612
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !613, metadata !373), !dbg !614
  call void @llvm.dbg.declare(metadata i8** %8, metadata !615, metadata !373), !dbg !616
  %10 = load i8*, i8** %5, align 8, !dbg !617
  %11 = icmp eq i8* %10, null, !dbg !619
  br i1 %11, label %12, label %13, !dbg !620

; <label>:12:                                     ; preds = %3
  store i8* null, i8** %4, align 8, !dbg !621
  br label %46, !dbg !621

; <label>:13:                                     ; preds = %3
  %14 = load i32, i32* %7, align 4, !dbg !623
  %15 = call i32 @Unicode_ResolveEncoding(i32 %14), !dbg !624
  store i32 %15, i32* %7, align 4, !dbg !625
  %16 = load i64, i64* %6, align 8, !dbg !626
  %17 = icmp eq i64 %16, -1, !dbg !628
  br i1 %17, label %18, label %22, !dbg !629

; <label>:18:                                     ; preds = %13
  %19 = load i8*, i8** %5, align 8, !dbg !630
  %20 = load i32, i32* %7, align 4, !dbg !632
  %21 = call i64 @Unicode_LengthInBytes(i8* %19, i32 %20), !dbg !633
  store i64 %21, i64* %6, align 8, !dbg !634
  br label %22, !dbg !635

; <label>:22:                                     ; preds = %18, %13
  %23 = load i8*, i8** %5, align 8, !dbg !636
  %24 = load i64, i64* %6, align 8, !dbg !637
  %25 = load i32, i32* %7, align 4, !dbg !638
  %26 = call i8* @UnicodeAllocInternal(i8* %23, i64 %24, i32 %25, i8 signext 0), !dbg !639
  store i8* %26, i8** %8, align 8, !dbg !640
  %27 = load i8*, i8** %8, align 8, !dbg !641
  %28 = icmp eq i8* %27, null, !dbg !643
  br i1 %28, label %29, label %44, !dbg !644

; <label>:29:                                     ; preds = %22
  call void @llvm.dbg.declare(metadata i8** %9, metadata !645, metadata !373), !dbg !647
  %30 = load i8*, i8** %5, align 8, !dbg !648
  %31 = load i64, i64* %6, align 8, !dbg !649
  %32 = load i32, i32* %7, align 4, !dbg !650
  %33 = call i8* @Unicode_EscapeBuffer(i8* %30, i64 %31, i32 %32), !dbg !651
  store i8* %33, i8** %9, align 8, !dbg !647
  %34 = load i8*, i8** %9, align 8, !dbg !652
  %35 = icmp ne i8* %34, null, !dbg !652
  br i1 %35, label %36, label %38, !dbg !652

; <label>:36:                                     ; preds = %29
  %37 = load i8*, i8** %9, align 8, !dbg !653
  br label %39, !dbg !655

; <label>:38:                                     ; preds = %29
  br label %39, !dbg !656

; <label>:39:                                     ; preds = %38, %36
  %40 = phi i8* [ %37, %36 ], [ getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0), %38 ], !dbg !658
  %41 = load i32, i32* %7, align 4, !dbg !660
  %42 = call i8* @Unicode_EncodingEnumToName(i32 %41), !dbg !661
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.Unicode_AllocWithLength, i32 0, i32 0), i8* %40, i8* %42), !dbg !662
  %43 = load i8*, i8** %9, align 8, !dbg !663
  call void @free(i8* %43) #8, !dbg !664
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i32 343) #9, !dbg !665
  unreachable, !dbg !665

; <label>:44:                                     ; preds = %22
  %45 = load i8*, i8** %8, align 8, !dbg !666
  store i8* %45, i8** %4, align 8, !dbg !667
  br label %46, !dbg !667

; <label>:46:                                     ; preds = %44, %12
  %47 = load i8*, i8** %4, align 8, !dbg !668
  ret i8* %47, !dbg !668
}

declare i8* @UnicodeAllocInternal(i8*, i64, i32, i8 signext) #2

declare void @Log(i8*, ...) #2

declare i8* @Unicode_EncodingEnumToName(i32) #2

; Function Attrs: nounwind
declare void @free(i8*) #5

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #6

; Function Attrs: nounwind uwtable
define signext i8 @Unicode_CanGetBytesWithEncoding(i8*, i32) #0 !dbg !669 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !672, metadata !373), !dbg !673
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !674, metadata !373), !dbg !675
  call void @llvm.dbg.declare(metadata i8** %6, metadata !676, metadata !373), !dbg !677
  %7 = load i8*, i8** %4, align 8, !dbg !678
  %8 = icmp eq i8* %7, null, !dbg !680
  br i1 %8, label %9, label %10, !dbg !681

; <label>:9:                                      ; preds = %2
  store i8 1, i8* %3, align 1, !dbg !682
  br label %19, !dbg !682

; <label>:10:                                     ; preds = %2
  %11 = load i8*, i8** %4, align 8, !dbg !684
  %12 = load i32, i32* %5, align 4, !dbg !685
  %13 = call i8* @UnicodeGetAllocBytesInternal(i8* %11, i32 %12, i64 -1, i64* null), !dbg !686
  store i8* %13, i8** %6, align 8, !dbg !687
  %14 = load i8*, i8** %6, align 8, !dbg !688
  %15 = icmp eq i8* %14, null, !dbg !690
  br i1 %15, label %16, label %17, !dbg !691

; <label>:16:                                     ; preds = %10
  store i8 0, i8* %3, align 1, !dbg !692
  br label %19, !dbg !692

; <label>:17:                                     ; preds = %10
  %18 = load i8*, i8** %6, align 8, !dbg !694
  call void @free(i8* %18) #8, !dbg !695
  store i8 1, i8* %3, align 1, !dbg !696
  br label %19, !dbg !696

; <label>:19:                                     ; preds = %17, %16, %9
  %20 = load i8, i8* %3, align 1, !dbg !697
  ret i8 %20, !dbg !697
}

declare i8* @UnicodeGetAllocBytesInternal(i8*, i32, i64, i64*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!356, !357}
!llvm.ident = !{!358}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !336, globals: !348)
!1 = !DIFile(filename: "unicodeCommon.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1004")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 58, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/unicodeTypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1004")
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
!336 = !{!337, !344, !347}
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !340, line: 177, baseType: !341)
!340 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1004")
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !342, line: 48, baseType: !343)
!342 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line1004")
!343 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64, align: 64)
!345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !346)
!346 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!348 = !{!349}
!349 = distinct !DIGlobalVariable(name: "NonPrintableBytesToEscape", scope: !0, file: !350, line: 38, type: !351, isLocal: true, isDefinition: true, variable: [256 x i32]* @NonPrintableBytesToEscape)
!350 = !DIFile(filename: "unicodeCommon.c", directory: "/home/lichi/Desktop/open-vm-tools/line1004")
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 8192, align: 32, elements: !354)
!352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !353)
!353 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!354 = !{!355}
!355 = !DISubrange(count: 256)
!356 = !{i32 2, !"Dwarf Version", i32 4}
!357 = !{i32 2, !"Debug Info Version", i32 3}
!358 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!359 = distinct !DISubprogram(name: "Unicode_EscapeBuffer", scope: !350, file: !350, line: 77, type: !360, isLocal: false, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !371)
!360 = !DISubroutineType(types: !361)
!361 = !{!362, !363, !365, !370}
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64, align: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64, align: 64)
!364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !366, line: 109, baseType: !367)
!366 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1004")
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !368, line: 172, baseType: !369)
!368 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1004")
!369 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "StringEncoding", file: !4, line: 445, baseType: !3)
!371 = !{}
!372 = !DILocalVariable(name: "buffer", arg: 1, scope: !359, file: !350, line: 77, type: !363)
!373 = !DIExpression()
!374 = !DILocation(line: 77, column: 34, scope: !359)
!375 = !DILocalVariable(name: "lengthInBytes", arg: 2, scope: !359, file: !350, line: 78, type: !365)
!376 = !DILocation(line: 78, column: 30, scope: !359)
!377 = !DILocalVariable(name: "encoding", arg: 3, scope: !359, file: !350, line: 79, type: !370)
!378 = !DILocation(line: 79, column: 37, scope: !359)
!379 = !DILocation(line: 81, column: 39, scope: !359)
!380 = !DILocation(line: 81, column: 15, scope: !359)
!381 = !DILocation(line: 81, column: 13, scope: !359)
!382 = !DILocation(line: 83, column: 8, scope: !383)
!383 = distinct !DILexicalBlock(scope: !359, file: !350, line: 83, column: 8)
!384 = !DILocation(line: 83, column: 22, scope: !383)
!385 = !DILocation(line: 83, column: 8, scope: !359)
!386 = !DILocation(line: 84, column: 45, scope: !387)
!387 = distinct !DILexicalBlock(scope: !383, file: !350, line: 83, column: 29)
!388 = !DILocation(line: 84, column: 53, scope: !387)
!389 = !DILocation(line: 84, column: 23, scope: !387)
!390 = !DILocation(line: 84, column: 21, scope: !387)
!391 = !DILocation(line: 85, column: 4, scope: !387)
!392 = !DILocation(line: 92, column: 27, scope: !359)
!393 = !DILocation(line: 93, column: 27, scope: !359)
!394 = !DILocation(line: 90, column: 11, scope: !359)
!395 = !DILocation(line: 90, column: 4, scope: !359)
!396 = distinct !DISubprogram(name: "Unicode_LengthInBytes", scope: !350, file: !350, line: 168, type: !397, isLocal: false, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !371)
!397 = !DISubroutineType(types: !398)
!398 = !{!365, !363, !370}
!399 = !DILocalVariable(name: "buffer", arg: 1, scope: !396, file: !350, line: 168, type: !363)
!400 = !DILocation(line: 168, column: 35, scope: !396)
!401 = !DILocalVariable(name: "encoding", arg: 2, scope: !396, file: !350, line: 169, type: !370)
!402 = !DILocation(line: 169, column: 38, scope: !396)
!403 = !DILocalVariable(name: "len", scope: !396, file: !350, line: 171, type: !365)
!404 = !DILocation(line: 171, column: 12, scope: !396)
!405 = !DILocation(line: 173, column: 39, scope: !396)
!406 = !DILocation(line: 173, column: 15, scope: !396)
!407 = !DILocation(line: 173, column: 13, scope: !396)
!408 = !DILocation(line: 175, column: 12, scope: !396)
!409 = !DILocation(line: 175, column: 4, scope: !396)
!410 = !DILocalVariable(name: "p", scope: !411, file: !350, line: 180, type: !413)
!411 = distinct !DILexicalBlock(scope: !412, file: !350, line: 179, column: 4)
!412 = distinct !DILexicalBlock(scope: !396, file: !350, line: 175, column: 22)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64, align: 64)
!414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !415)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32", file: !340, line: 174, baseType: !416)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !366, line: 196, baseType: !353)
!417 = !DILocation(line: 180, column: 20, scope: !411)
!418 = !DILocation(line: 182, column: 16, scope: !419)
!419 = distinct !DILexicalBlock(scope: !411, file: !350, line: 182, column: 7)
!420 = !DILocation(line: 182, column: 14, scope: !419)
!421 = !DILocation(line: 182, column: 12, scope: !419)
!422 = !DILocation(line: 182, column: 25, scope: !423)
!423 = !DILexicalBlockFile(scope: !424, file: !350, discriminator: 1)
!424 = distinct !DILexicalBlock(scope: !419, file: !350, line: 182, column: 7)
!425 = !DILocation(line: 182, column: 24, scope: !423)
!426 = !DILocation(line: 182, column: 27, scope: !423)
!427 = !DILocation(line: 182, column: 7, scope: !423)
!428 = !DILocation(line: 183, column: 7, scope: !429)
!429 = distinct !DILexicalBlock(scope: !424, file: !350, line: 182, column: 38)
!430 = !DILocation(line: 182, column: 34, scope: !431)
!431 = !DILexicalBlockFile(scope: !424, file: !350, discriminator: 2)
!432 = !DILocation(line: 182, column: 7, scope: !431)
!433 = distinct !{!433, !434}
!434 = !DILocation(line: 182, column: 7, scope: !411)
!435 = !DILocation(line: 184, column: 28, scope: !411)
!436 = !DILocation(line: 184, column: 13, scope: !411)
!437 = !DILocation(line: 184, column: 47, scope: !411)
!438 = !DILocation(line: 184, column: 30, scope: !411)
!439 = !DILocation(line: 184, column: 11, scope: !411)
!440 = !DILocation(line: 185, column: 7, scope: !411)
!441 = !DILocalVariable(name: "p", scope: !442, file: !350, line: 191, type: !443)
!442 = distinct !DILexicalBlock(scope: !412, file: !350, line: 190, column: 4)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64, align: 64)
!444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !445)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "utf16_t", file: !340, line: 1139, baseType: !446)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !340, line: 175, baseType: !447)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !342, line: 49, baseType: !448)
!448 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!449 = !DILocation(line: 191, column: 22, scope: !442)
!450 = !DILocation(line: 193, column: 16, scope: !451)
!451 = distinct !DILexicalBlock(scope: !442, file: !350, line: 193, column: 7)
!452 = !DILocation(line: 193, column: 14, scope: !451)
!453 = !DILocation(line: 193, column: 12, scope: !451)
!454 = !DILocation(line: 193, column: 25, scope: !455)
!455 = !DILexicalBlockFile(scope: !456, file: !350, discriminator: 1)
!456 = distinct !DILexicalBlock(scope: !451, file: !350, line: 193, column: 7)
!457 = !DILocation(line: 193, column: 24, scope: !455)
!458 = !DILocation(line: 193, column: 27, scope: !455)
!459 = !DILocation(line: 193, column: 7, scope: !455)
!460 = !DILocation(line: 194, column: 7, scope: !461)
!461 = distinct !DILexicalBlock(scope: !456, file: !350, line: 193, column: 38)
!462 = !DILocation(line: 193, column: 34, scope: !463)
!463 = !DILexicalBlockFile(scope: !456, file: !350, discriminator: 2)
!464 = !DILocation(line: 193, column: 7, scope: !463)
!465 = distinct !{!465, !466}
!466 = !DILocation(line: 193, column: 7, scope: !442)
!467 = !DILocation(line: 195, column: 28, scope: !442)
!468 = !DILocation(line: 195, column: 13, scope: !442)
!469 = !DILocation(line: 195, column: 47, scope: !442)
!470 = !DILocation(line: 195, column: 30, scope: !442)
!471 = !DILocation(line: 195, column: 11, scope: !442)
!472 = !DILocation(line: 196, column: 7, scope: !442)
!473 = !DILocation(line: 200, column: 20, scope: !412)
!474 = !DILocation(line: 200, column: 13, scope: !412)
!475 = !DILocation(line: 200, column: 11, scope: !412)
!476 = !DILocation(line: 201, column: 4, scope: !412)
!477 = !DILocation(line: 203, column: 11, scope: !396)
!478 = !DILocation(line: 203, column: 4, scope: !396)
!479 = distinct !DISubprogram(name: "UnicodeSanityCheck", scope: !350, file: !350, line: 116, type: !480, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !371)
!480 = !DISubroutineType(types: !481)
!481 = !{!482, !363, !365, !370}
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !340, line: 230, baseType: !346)
!483 = !DILocalVariable(name: "buffer", arg: 1, scope: !479, file: !350, line: 116, type: !363)
!484 = !DILocation(line: 116, column: 32, scope: !479)
!485 = !DILocalVariable(name: "lengthInBytes", arg: 2, scope: !479, file: !350, line: 117, type: !365)
!486 = !DILocation(line: 117, column: 28, scope: !479)
!487 = !DILocalVariable(name: "encoding", arg: 3, scope: !479, file: !350, line: 118, type: !370)
!488 = !DILocation(line: 118, column: 35, scope: !479)
!489 = !DILocation(line: 127, column: 8, scope: !490)
!490 = distinct !DILexicalBlock(scope: !479, file: !350, line: 127, column: 8)
!491 = !DILocation(line: 127, column: 17, scope: !490)
!492 = !DILocation(line: 127, column: 8, scope: !479)
!493 = !DILocalVariable(name: "asciiBytes", scope: !494, file: !350, line: 128, type: !337)
!494 = distinct !DILexicalBlock(scope: !490, file: !350, line: 127, column: 46)
!495 = !DILocation(line: 128, column: 20, scope: !494)
!496 = !DILocation(line: 128, column: 49, scope: !494)
!497 = !DILocation(line: 130, column: 11, scope: !498)
!498 = distinct !DILexicalBlock(scope: !494, file: !350, line: 130, column: 11)
!499 = !DILocation(line: 130, column: 25, scope: !498)
!500 = !DILocation(line: 130, column: 11, scope: !494)
!501 = !DILocation(line: 131, column: 3, scope: !502)
!502 = distinct !DILexicalBlock(scope: !498, file: !350, line: 130, column: 32)
!503 = !DILocation(line: 131, column: 11, scope: !504)
!504 = !DILexicalBlockFile(scope: !505, file: !350, discriminator: 1)
!505 = distinct !DILexicalBlock(scope: !506, file: !350, line: 131, column: 3)
!506 = distinct !DILexicalBlock(scope: !502, file: !350, line: 131, column: 3)
!507 = !DILocation(line: 131, column: 10, scope: !504)
!508 = !DILocation(line: 131, column: 22, scope: !504)
!509 = !DILocation(line: 131, column: 3, scope: !504)
!510 = !DILocation(line: 132, column: 11, scope: !511)
!511 = distinct !DILexicalBlock(scope: !512, file: !350, line: 132, column: 10)
!512 = distinct !DILexicalBlock(scope: !505, file: !350, line: 131, column: 45)
!513 = !DILocation(line: 132, column: 10, scope: !511)
!514 = !DILocation(line: 132, column: 22, scope: !511)
!515 = !DILocation(line: 132, column: 10, scope: !512)
!516 = !DILocation(line: 133, column: 9, scope: !517)
!517 = distinct !DILexicalBlock(scope: !511, file: !350, line: 132, column: 31)
!518 = !DILocation(line: 135, column: 3, scope: !512)
!519 = !DILocation(line: 131, column: 41, scope: !520)
!520 = !DILexicalBlockFile(scope: !505, file: !350, discriminator: 2)
!521 = !DILocation(line: 131, column: 3, scope: !520)
!522 = distinct !{!522, !501}
!523 = !DILocation(line: 136, column: 7, scope: !502)
!524 = !DILocalVariable(name: "i", scope: !525, file: !350, line: 137, type: !365)
!525 = distinct !DILexicalBlock(scope: !498, file: !350, line: 136, column: 14)
!526 = !DILocation(line: 137, column: 11, scope: !525)
!527 = !DILocation(line: 139, column: 10, scope: !528)
!528 = distinct !DILexicalBlock(scope: !525, file: !350, line: 139, column: 3)
!529 = !DILocation(line: 139, column: 8, scope: !528)
!530 = !DILocation(line: 139, column: 15, scope: !531)
!531 = !DILexicalBlockFile(scope: !532, file: !350, discriminator: 1)
!532 = distinct !DILexicalBlock(scope: !528, file: !350, line: 139, column: 3)
!533 = !DILocation(line: 139, column: 19, scope: !531)
!534 = !DILocation(line: 139, column: 17, scope: !531)
!535 = !DILocation(line: 139, column: 3, scope: !531)
!536 = !DILocation(line: 140, column: 21, scope: !537)
!537 = distinct !DILexicalBlock(scope: !538, file: !350, line: 140, column: 10)
!538 = distinct !DILexicalBlock(scope: !532, file: !350, line: 139, column: 39)
!539 = !DILocation(line: 140, column: 10, scope: !537)
!540 = !DILocation(line: 140, column: 24, scope: !537)
!541 = !DILocation(line: 140, column: 10, scope: !538)
!542 = !DILocation(line: 141, column: 9, scope: !543)
!543 = distinct !DILexicalBlock(scope: !537, file: !350, line: 140, column: 33)
!544 = !DILocation(line: 143, column: 3, scope: !538)
!545 = !DILocation(line: 139, column: 35, scope: !546)
!546 = !DILexicalBlockFile(scope: !532, file: !350, discriminator: 2)
!547 = !DILocation(line: 139, column: 3, scope: !546)
!548 = distinct !{!548, !549}
!549 = !DILocation(line: 139, column: 3, scope: !525)
!550 = !DILocation(line: 145, column: 4, scope: !494)
!551 = !DILocation(line: 147, column: 4, scope: !479)
!552 = !DILocation(line: 148, column: 1, scope: !479)
!553 = distinct !DISubprogram(name: "Unicode_UTF16Strlen", scope: !350, file: !350, line: 224, type: !554, isLocal: false, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !371)
!554 = !DISubroutineType(types: !555)
!555 = !{!365, !443}
!556 = !DILocalVariable(name: "utf16", arg: 1, scope: !553, file: !350, line: 224, type: !443)
!557 = !DILocation(line: 224, column: 36, scope: !553)
!558 = !DILocalVariable(name: "length", scope: !553, file: !350, line: 226, type: !365)
!559 = !DILocation(line: 226, column: 12, scope: !553)
!560 = !DILocation(line: 228, column: 16, scope: !561)
!561 = distinct !DILexicalBlock(scope: !553, file: !350, line: 228, column: 4)
!562 = !DILocation(line: 228, column: 9, scope: !561)
!563 = !DILocation(line: 228, column: 27, scope: !564)
!564 = !DILexicalBlockFile(scope: !565, file: !350, discriminator: 1)
!565 = distinct !DILexicalBlock(scope: !561, file: !350, line: 228, column: 4)
!566 = !DILocation(line: 228, column: 21, scope: !564)
!567 = !DILocation(line: 228, column: 4, scope: !564)
!568 = !DILocation(line: 230, column: 4, scope: !569)
!569 = distinct !DILexicalBlock(scope: !565, file: !350, line: 228, column: 46)
!570 = !DILocation(line: 228, column: 42, scope: !571)
!571 = !DILexicalBlockFile(scope: !565, file: !350, discriminator: 2)
!572 = !DILocation(line: 228, column: 4, scope: !571)
!573 = distinct !{!573, !574}
!574 = !DILocation(line: 228, column: 4, scope: !553)
!575 = !DILocation(line: 232, column: 11, scope: !553)
!576 = !DILocation(line: 232, column: 4, scope: !553)
!577 = distinct !DISubprogram(name: "Unicode_UTF16Strdup", scope: !350, file: !350, line: 256, type: !578, isLocal: false, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !371)
!578 = !DISubroutineType(types: !579)
!579 = !{!580, !443}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64, align: 64)
!581 = !DILocalVariable(name: "utf16", arg: 1, scope: !577, file: !350, line: 256, type: !443)
!582 = !DILocation(line: 256, column: 36, scope: !577)
!583 = !DILocalVariable(name: "copy", scope: !577, file: !350, line: 258, type: !580)
!584 = !DILocation(line: 258, column: 13, scope: !577)
!585 = !DILocalVariable(name: "numBytes", scope: !577, file: !350, line: 259, type: !365)
!586 = !DILocation(line: 259, column: 12, scope: !577)
!587 = !DILocation(line: 262, column: 8, scope: !588)
!588 = distinct !DILexicalBlock(scope: !577, file: !350, line: 262, column: 8)
!589 = !DILocation(line: 262, column: 14, scope: !588)
!590 = !DILocation(line: 262, column: 8, scope: !577)
!591 = !DILocation(line: 263, column: 7, scope: !592)
!592 = distinct !DILexicalBlock(scope: !588, file: !350, line: 262, column: 22)
!593 = !DILocation(line: 266, column: 36, scope: !577)
!594 = !DILocation(line: 266, column: 16, scope: !577)
!595 = !DILocation(line: 266, column: 43, scope: !577)
!596 = !DILocation(line: 266, column: 49, scope: !577)
!597 = !DILocation(line: 266, column: 13, scope: !577)
!598 = !DILocation(line: 267, column: 28, scope: !577)
!599 = !DILocation(line: 267, column: 11, scope: !577)
!600 = !DILocation(line: 267, column: 9, scope: !577)
!601 = !DILocation(line: 268, column: 11, scope: !577)
!602 = !DILocation(line: 268, column: 4, scope: !577)
!603 = !DILocation(line: 268, column: 17, scope: !577)
!604 = !DILocation(line: 268, column: 24, scope: !577)
!605 = !DILocation(line: 270, column: 11, scope: !577)
!606 = !DILocation(line: 270, column: 4, scope: !577)
!607 = !DILocation(line: 271, column: 1, scope: !577)
!608 = distinct !DISubprogram(name: "Unicode_AllocWithLength", scope: !350, file: !350, line: 309, type: !360, isLocal: false, isDefinition: true, scopeLine: 312, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !371)
!609 = !DILocalVariable(name: "buffer", arg: 1, scope: !608, file: !350, line: 309, type: !363)
!610 = !DILocation(line: 309, column: 37, scope: !608)
!611 = !DILocalVariable(name: "lengthInBytes", arg: 2, scope: !608, file: !350, line: 310, type: !365)
!612 = !DILocation(line: 310, column: 33, scope: !608)
!613 = !DILocalVariable(name: "encoding", arg: 3, scope: !608, file: !350, line: 311, type: !370)
!614 = !DILocation(line: 311, column: 40, scope: !608)
!615 = !DILocalVariable(name: "result", scope: !608, file: !350, line: 313, type: !362)
!616 = !DILocation(line: 313, column: 10, scope: !608)
!617 = !DILocation(line: 317, column: 8, scope: !618)
!618 = distinct !DILexicalBlock(scope: !608, file: !350, line: 317, column: 8)
!619 = !DILocation(line: 317, column: 15, scope: !618)
!620 = !DILocation(line: 317, column: 8, scope: !608)
!621 = !DILocation(line: 319, column: 7, scope: !622)
!622 = distinct !DILexicalBlock(scope: !618, file: !350, line: 317, column: 23)
!623 = !DILocation(line: 322, column: 39, scope: !608)
!624 = !DILocation(line: 322, column: 15, scope: !608)
!625 = !DILocation(line: 322, column: 13, scope: !608)
!626 = !DILocation(line: 324, column: 8, scope: !627)
!627 = distinct !DILexicalBlock(scope: !608, file: !350, line: 324, column: 8)
!628 = !DILocation(line: 324, column: 22, scope: !627)
!629 = !DILocation(line: 324, column: 8, scope: !608)
!630 = !DILocation(line: 325, column: 45, scope: !631)
!631 = distinct !DILexicalBlock(scope: !627, file: !350, line: 324, column: 29)
!632 = !DILocation(line: 325, column: 53, scope: !631)
!633 = !DILocation(line: 325, column: 23, scope: !631)
!634 = !DILocation(line: 325, column: 21, scope: !631)
!635 = !DILocation(line: 326, column: 4, scope: !631)
!636 = !DILocation(line: 328, column: 34, scope: !608)
!637 = !DILocation(line: 328, column: 42, scope: !608)
!638 = !DILocation(line: 328, column: 57, scope: !608)
!639 = !DILocation(line: 328, column: 13, scope: !608)
!640 = !DILocation(line: 328, column: 11, scope: !608)
!641 = !DILocation(line: 330, column: 8, scope: !642)
!642 = distinct !DILexicalBlock(scope: !608, file: !350, line: 330, column: 8)
!643 = !DILocation(line: 330, column: 15, scope: !642)
!644 = !DILocation(line: 330, column: 8, scope: !608)
!645 = !DILocalVariable(name: "escapedBuffer", scope: !646, file: !350, line: 331, type: !362)
!646 = distinct !DILexicalBlock(scope: !642, file: !350, line: 330, column: 23)
!647 = !DILocation(line: 331, column: 13, scope: !646)
!648 = !DILocation(line: 331, column: 50, scope: !646)
!649 = !DILocation(line: 331, column: 58, scope: !646)
!650 = !DILocation(line: 332, column: 50, scope: !646)
!651 = !DILocation(line: 331, column: 29, scope: !646)
!652 = !DILocation(line: 340, column: 11, scope: !646)
!653 = !DILocation(line: 340, column: 27, scope: !654)
!654 = !DILexicalBlockFile(scope: !646, file: !350, discriminator: 1)
!655 = !DILocation(line: 340, column: 11, scope: !654)
!656 = !DILocation(line: 340, column: 11, scope: !657)
!657 = !DILexicalBlockFile(scope: !646, file: !350, discriminator: 2)
!658 = !DILocation(line: 340, column: 11, scope: !659)
!659 = !DILexicalBlockFile(scope: !646, file: !350, discriminator: 3)
!660 = !DILocation(line: 341, column: 38, scope: !646)
!661 = !DILocation(line: 341, column: 11, scope: !646)
!662 = !DILocation(line: 338, column: 7, scope: !646)
!663 = !DILocation(line: 342, column: 12, scope: !646)
!664 = !DILocation(line: 342, column: 7, scope: !646)
!665 = !DILocation(line: 343, column: 7, scope: !646)
!666 = !DILocation(line: 346, column: 11, scope: !608)
!667 = !DILocation(line: 346, column: 4, scope: !608)
!668 = !DILocation(line: 347, column: 1, scope: !608)
!669 = distinct !DISubprogram(name: "Unicode_CanGetBytesWithEncoding", scope: !350, file: !350, line: 368, type: !670, isLocal: false, isDefinition: true, scopeLine: 370, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !371)
!670 = !DISubroutineType(types: !671)
!671 = !{!482, !344, !370}
!672 = !DILocalVariable(name: "ustr", arg: 1, scope: !669, file: !350, line: 368, type: !344)
!673 = !DILocation(line: 368, column: 45, scope: !669)
!674 = !DILocalVariable(name: "encoding", arg: 2, scope: !669, file: !350, line: 369, type: !370)
!675 = !DILocation(line: 369, column: 48, scope: !669)
!676 = !DILocalVariable(name: "tmp", scope: !669, file: !350, line: 371, type: !347)
!677 = !DILocation(line: 371, column: 10, scope: !669)
!678 = !DILocation(line: 373, column: 8, scope: !679)
!679 = distinct !DILexicalBlock(scope: !669, file: !350, line: 373, column: 8)
!680 = !DILocation(line: 373, column: 13, scope: !679)
!681 = !DILocation(line: 373, column: 8, scope: !669)
!682 = !DILocation(line: 374, column: 7, scope: !683)
!683 = distinct !DILexicalBlock(scope: !679, file: !350, line: 373, column: 21)
!684 = !DILocation(line: 377, column: 39, scope: !669)
!685 = !DILocation(line: 377, column: 45, scope: !669)
!686 = !DILocation(line: 377, column: 10, scope: !669)
!687 = !DILocation(line: 377, column: 8, scope: !669)
!688 = !DILocation(line: 379, column: 8, scope: !689)
!689 = distinct !DILexicalBlock(scope: !669, file: !350, line: 379, column: 8)
!690 = !DILocation(line: 379, column: 12, scope: !689)
!691 = !DILocation(line: 379, column: 8, scope: !669)
!692 = !DILocation(line: 380, column: 7, scope: !693)
!693 = distinct !DILexicalBlock(scope: !689, file: !350, line: 379, column: 20)
!694 = !DILocation(line: 382, column: 9, scope: !669)
!695 = !DILocation(line: 382, column: 4, scope: !669)
!696 = !DILocation(line: 384, column: 4, scope: !669)
!697 = !DILocation(line: 385, column: 1, scope: !669)
