; ModuleID = './unicodeSimpleBase.o.i'
source_filename = "./unicodeSimpleBase.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"NOT_IMPLEMENTED %s:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"unicodeSimpleBase.c\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"VERIFY %s:%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i8* @UnicodeAllocInternal(i8*, i64, i32, i8 signext) #0 !dbg !374 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !387, metadata !388), !dbg !389
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !390, metadata !388), !dbg !391
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !392, metadata !388), !dbg !393
  store i8 %3, i8* %9, align 1
  call void @llvm.dbg.declare(metadata i8* %9, metadata !394, metadata !388), !dbg !395
  call void @llvm.dbg.declare(metadata i8** %10, metadata !396, metadata !388), !dbg !397
  store i8* null, i8** %10, align 8, !dbg !397
  %11 = load i8, i8* %9, align 1, !dbg !398
  %12 = icmp ne i8 %11, 0, !dbg !398
  br i1 %12, label %20, label %13, !dbg !400

; <label>:13:                                     ; preds = %4
  %14 = load i32, i32* %8, align 4, !dbg !401
  %15 = call i8* @Unicode_EncodingEnumToName(i32 %14), !dbg !403
  %16 = load i8*, i8** %6, align 8, !dbg !404
  %17 = load i64, i64* %7, align 8, !dbg !405
  %18 = call signext i8 @CodeSet_GenericToGeneric(i8* %15, i8* %16, i64 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 1, i8** %10, i64* null), !dbg !406
  %19 = load i8*, i8** %10, align 8, !dbg !408
  store i8* %19, i8** %5, align 8, !dbg !409
  br label %45, !dbg !409

; <label>:20:                                     ; preds = %4
  %21 = load i32, i32* %8, align 4, !dbg !410
  switch i32 %21, label %37 [
    i32 7, label %22
    i32 0, label %22
    i32 1, label %33
  ], !dbg !411

; <label>:22:                                     ; preds = %20, %20
  %23 = load i8*, i8** %6, align 8, !dbg !412
  %24 = load i64, i64* %7, align 8, !dbg !415
  %25 = load i32, i32* %8, align 4, !dbg !416
  %26 = call signext i8 @Unicode_IsBufferValid(i8* %23, i64 %24, i32 %25), !dbg !417
  %27 = icmp ne i8 %26, 0, !dbg !417
  br i1 %27, label %28, label %32, !dbg !418

; <label>:28:                                     ; preds = %22
  %29 = load i8*, i8** %6, align 8, !dbg !419
  %30 = load i64, i64* %7, align 8, !dbg !421
  %31 = call i8* @UtilSafeStrndup0(i8* %29, i64 %30), !dbg !422
  store i8* %31, i8** %10, align 8, !dbg !423
  br label %32, !dbg !424

; <label>:32:                                     ; preds = %28, %22
  br label %43, !dbg !425

; <label>:33:                                     ; preds = %20
  %34 = load i8*, i8** %6, align 8, !dbg !426
  %35 = load i64, i64* %7, align 8, !dbg !427
  %36 = call signext i8 @CodeSet_Utf16leToUtf8(i8* %34, i64 %35, i8** %10, i64* null), !dbg !428
  br label %43, !dbg !429

; <label>:37:                                     ; preds = %20
  %38 = load i32, i32* %8, align 4, !dbg !430
  %39 = call i8* @Unicode_EncodingEnumToName(i32 %38), !dbg !431
  %40 = load i8*, i8** %6, align 8, !dbg !432
  %41 = load i64, i64* %7, align 8, !dbg !433
  %42 = call signext i8 @CodeSet_GenericToGeneric(i8* %39, i8* %40, i64 %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 0, i8** %10, i64* null), !dbg !434
  br label %43, !dbg !436

; <label>:43:                                     ; preds = %37, %33, %32
  %44 = load i8*, i8** %10, align 8, !dbg !437
  store i8* %44, i8** %5, align 8, !dbg !438
  br label %45, !dbg !438

; <label>:45:                                     ; preds = %43, %13
  %46 = load i8*, i8** %5, align 8, !dbg !439
  ret i8* %46, !dbg !439
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare signext i8 @CodeSet_GenericToGeneric(i8*, i8*, i64, i8*, i32, i8**, i64*) #2

declare i8* @Unicode_EncodingEnumToName(i32) #2

; Function Attrs: nounwind uwtable
define signext i8 @Unicode_IsBufferValid(i8*, i64, i32) #0 !dbg !440 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !443, metadata !388), !dbg !444
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !445, metadata !388), !dbg !446
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !447, metadata !388), !dbg !448
  %8 = load i8*, i8** %5, align 8, !dbg !449
  %9 = icmp eq i8* %8, null, !dbg !451
  br i1 %9, label %10, label %11, !dbg !452

; <label>:10:                                     ; preds = %3
  store i8 1, i8* %4, align 1, !dbg !453
  br label %43, !dbg !453

; <label>:11:                                     ; preds = %3
  %12 = load i32, i32* %7, align 4, !dbg !455
  %13 = call i32 @Unicode_ResolveEncoding(i32 %12), !dbg !456
  store i32 %13, i32* %7, align 4, !dbg !457
  %14 = load i32, i32* %7, align 4, !dbg !458
  switch i32 %14, label %30 [
    i32 7, label %15
    i32 0, label %20
  ], !dbg !459

; <label>:15:                                     ; preds = %11
  %16 = load i8*, i8** %5, align 8, !dbg !460
  %17 = load i64, i64* %6, align 8, !dbg !462
  %18 = load i32, i32* %7, align 4, !dbg !463
  %19 = call signext i8 @UnicodeSanityCheck(i8* %16, i64 %17, i32 %18), !dbg !464
  store i8 %19, i8* %4, align 1, !dbg !465
  br label %43, !dbg !465

; <label>:20:                                     ; preds = %11
  %21 = load i64, i64* %6, align 8, !dbg !466
  %22 = icmp eq i64 %21, -1, !dbg !468
  br i1 %22, label %23, label %26, !dbg !469

; <label>:23:                                     ; preds = %20
  %24 = load i8*, i8** %5, align 8, !dbg !470
  %25 = call signext i8 @CodeSet_IsStringValidUTF8(i8* %24), !dbg !472
  store i8 %25, i8* %4, align 1, !dbg !473
  br label %43, !dbg !473

; <label>:26:                                     ; preds = %20
  %27 = load i8*, i8** %5, align 8, !dbg !474
  %28 = load i64, i64* %6, align 8, !dbg !476
  %29 = call signext i8 @CodeSet_IsValidUTF8(i8* %27, i64 %28), !dbg !477
  store i8 %29, i8* %4, align 1, !dbg !478
  br label %43, !dbg !478

; <label>:30:                                     ; preds = %11
  %31 = load i64, i64* %6, align 8, !dbg !479
  %32 = icmp eq i64 %31, -1, !dbg !481
  br i1 %32, label %33, label %37, !dbg !482

; <label>:33:                                     ; preds = %30
  %34 = load i8*, i8** %5, align 8, !dbg !483
  %35 = load i32, i32* %7, align 4, !dbg !485
  %36 = call i64 @Unicode_LengthInBytes(i8* %34, i32 %35), !dbg !486
  store i64 %36, i64* %6, align 8, !dbg !487
  br label %37, !dbg !488

; <label>:37:                                     ; preds = %33, %30
  %38 = load i8*, i8** %5, align 8, !dbg !489
  %39 = load i64, i64* %6, align 8, !dbg !490
  %40 = load i32, i32* %7, align 4, !dbg !491
  %41 = call i8* @Unicode_EncodingEnumToName(i32 %40), !dbg !492
  %42 = call signext i8 @CodeSet_Validate(i8* %38, i64 %39, i8* %41), !dbg !493
  store i8 %42, i8* %4, align 1, !dbg !494
  br label %43, !dbg !494

; <label>:43:                                     ; preds = %37, %26, %23, %15, %10
  %44 = load i8, i8* %4, align 1, !dbg !495
  ret i8 %44, !dbg !495
}

declare i8* @UtilSafeStrndup0(i8*, i64) #2

declare signext i8 @CodeSet_Utf16leToUtf8(i8*, i64, i8**, i64*) #2

; Function Attrs: nounwind uwtable
define signext i8 @Unicode_IsStringValidUTF8(i8*) #0 !dbg !496 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !499, metadata !388), !dbg !500
  %3 = load i8*, i8** %2, align 8, !dbg !501
  %4 = call signext i8 @CodeSet_IsStringValidUTF8(i8* %3), !dbg !502
  ret i8 %4, !dbg !503
}

declare signext i8 @CodeSet_IsStringValidUTF8(i8*) #2

declare i32 @Unicode_ResolveEncoding(i32) #2

declare signext i8 @UnicodeSanityCheck(i8*, i64, i32) #2

declare signext i8 @CodeSet_IsValidUTF8(i8*, i64) #2

declare i64 @Unicode_LengthInBytes(i8*, i32) #2

declare signext i8 @CodeSet_Validate(i8*, i64, i8*) #2

; Function Attrs: nounwind uwtable
define i8* @Unicode_Duplicate(i8*) #0 !dbg !504 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !507, metadata !388), !dbg !508
  %3 = load i8*, i8** %2, align 8, !dbg !509
  %4 = call i8* @UtilSafeStrdup0(i8* %3), !dbg !510
  ret i8* %4, !dbg !511
}

declare i8* @UtilSafeStrdup0(i8*) #2

; Function Attrs: nounwind uwtable
define i8** @Unicode_AllocList(i8**, i64, i32) #0 !dbg !512 {
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  store i8** %0, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !516, metadata !388), !dbg !517
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !518, metadata !388), !dbg !519
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !520, metadata !388), !dbg !521
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !522, metadata !388), !dbg !523
  store i8** null, i8*** %7, align 8, !dbg !523
  call void @llvm.dbg.declare(metadata i64* %8, metadata !524, metadata !388), !dbg !525
  %9 = load i32, i32* %6, align 4, !dbg !526
  %10 = call i32 @Unicode_ResolveEncoding(i32 %9), !dbg !527
  store i32 %10, i32* %6, align 4, !dbg !528
  %11 = load i64, i64* %5, align 8, !dbg !529
  %12 = icmp slt i64 %11, 0, !dbg !531
  br i1 %12, label %13, label %26, !dbg !532

; <label>:13:                                     ; preds = %3
  store i64 0, i64* %5, align 8, !dbg !533
  br label %14, !dbg !535

; <label>:14:                                     ; preds = %20, %13
  %15 = load i64, i64* %5, align 8, !dbg !536
  %16 = load i8**, i8*** %4, align 8, !dbg !538
  %17 = getelementptr inbounds i8*, i8** %16, i64 %15, !dbg !538
  %18 = load i8*, i8** %17, align 8, !dbg !538
  %19 = icmp ne i8* %18, null, !dbg !539
  br i1 %19, label %20, label %23, !dbg !540

; <label>:20:                                     ; preds = %14
  %21 = load i64, i64* %5, align 8, !dbg !541
  %22 = add nsw i64 %21, 1, !dbg !541
  store i64 %22, i64* %5, align 8, !dbg !541
  br label %14, !dbg !543, !llvm.loop !545

; <label>:23:                                     ; preds = %14
  %24 = load i64, i64* %5, align 8, !dbg !546
  %25 = add nsw i64 %24, 1, !dbg !546
  store i64 %25, i64* %5, align 8, !dbg !546
  br label %26, !dbg !547

; <label>:26:                                     ; preds = %23, %3
  %27 = load i64, i64* %5, align 8, !dbg !548
  %28 = mul i64 %27, 8, !dbg !549
  %29 = call i8* @UtilSafeMalloc0(i64 %28), !dbg !550
  %30 = bitcast i8* %29 to i8**, !dbg !550
  store i8** %30, i8*** %7, align 8, !dbg !551
  store i64 0, i64* %8, align 8, !dbg !552
  br label %31, !dbg !554

; <label>:31:                                     ; preds = %45, %26
  %32 = load i64, i64* %8, align 8, !dbg !555
  %33 = load i64, i64* %5, align 8, !dbg !558
  %34 = icmp slt i64 %32, %33, !dbg !559
  br i1 %34, label %35, label %48, !dbg !560

; <label>:35:                                     ; preds = %31
  %36 = load i64, i64* %8, align 8, !dbg !561
  %37 = load i8**, i8*** %4, align 8, !dbg !563
  %38 = getelementptr inbounds i8*, i8** %37, i64 %36, !dbg !563
  %39 = load i8*, i8** %38, align 8, !dbg !563
  %40 = load i32, i32* %6, align 4, !dbg !564
  %41 = call i8* @Unicode_Alloc(i8* %39, i32 %40), !dbg !565
  %42 = load i64, i64* %8, align 8, !dbg !566
  %43 = load i8**, i8*** %7, align 8, !dbg !567
  %44 = getelementptr inbounds i8*, i8** %43, i64 %42, !dbg !567
  store i8* %41, i8** %44, align 8, !dbg !568
  br label %45, !dbg !569

; <label>:45:                                     ; preds = %35
  %46 = load i64, i64* %8, align 8, !dbg !570
  %47 = add nsw i64 %46, 1, !dbg !570
  store i64 %47, i64* %8, align 8, !dbg !570
  br label %31, !dbg !572, !llvm.loop !573

; <label>:48:                                     ; preds = %31
  %49 = load i8**, i8*** %7, align 8, !dbg !575
  ret i8** %49, !dbg !576
}

declare i8* @UtilSafeMalloc0(i64) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Unicode_Alloc(i8*, i32) #3 !dbg !577 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !581, metadata !388), !dbg !582
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !583, metadata !388), !dbg !584
  %5 = load i8*, i8** %3, align 8, !dbg !585
  %6 = load i32, i32* %4, align 4, !dbg !586
  %7 = call i8* @Unicode_AllocWithLength(i8* %5, i64 -1, i32 %6), !dbg !587
  ret i8* %7, !dbg !588
}

; Function Attrs: nounwind uwtable
define i8** @Unicode_GetAllocList(i8**, i64, i32) #0 !dbg !589 {
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  store i8** %0, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !594, metadata !388), !dbg !595
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !596, metadata !388), !dbg !597
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !598, metadata !388), !dbg !599
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !600, metadata !388), !dbg !601
  store i8** null, i8*** %8, align 8, !dbg !601
  call void @llvm.dbg.declare(metadata i64* %9, metadata !602, metadata !388), !dbg !603
  %10 = load i32, i32* %7, align 4, !dbg !604
  %11 = call i32 @Unicode_ResolveEncoding(i32 %10), !dbg !605
  store i32 %11, i32* %7, align 4, !dbg !606
  %12 = load i64, i64* %6, align 8, !dbg !607
  %13 = icmp slt i64 %12, 0, !dbg !609
  br i1 %13, label %14, label %27, !dbg !610

; <label>:14:                                     ; preds = %3
  store i64 0, i64* %6, align 8, !dbg !611
  br label %15, !dbg !613

; <label>:15:                                     ; preds = %21, %14
  %16 = load i64, i64* %6, align 8, !dbg !614
  %17 = load i8**, i8*** %5, align 8, !dbg !616
  %18 = getelementptr inbounds i8*, i8** %17, i64 %16, !dbg !616
  %19 = load i8*, i8** %18, align 8, !dbg !616
  %20 = icmp ne i8* %19, null, !dbg !617
  br i1 %20, label %21, label %24, !dbg !618

; <label>:21:                                     ; preds = %15
  %22 = load i64, i64* %6, align 8, !dbg !619
  %23 = add nsw i64 %22, 1, !dbg !619
  store i64 %23, i64* %6, align 8, !dbg !619
  br label %15, !dbg !621, !llvm.loop !623

; <label>:24:                                     ; preds = %15
  %25 = load i64, i64* %6, align 8, !dbg !624
  %26 = add nsw i64 %25, 1, !dbg !624
  store i64 %26, i64* %6, align 8, !dbg !624
  br label %27, !dbg !625

; <label>:27:                                     ; preds = %24, %3
  %28 = load i64, i64* %6, align 8, !dbg !626
  %29 = mul i64 %28, 8, !dbg !627
  %30 = call i8* @UtilSafeMalloc0(i64 %29), !dbg !628
  %31 = bitcast i8* %30 to i8**, !dbg !628
  store i8** %31, i8*** %8, align 8, !dbg !629
  store i64 0, i64* %9, align 8, !dbg !630
  br label %32, !dbg !632

; <label>:32:                                     ; preds = %71, %27
  %33 = load i64, i64* %9, align 8, !dbg !633
  %34 = load i64, i64* %6, align 8, !dbg !636
  %35 = icmp slt i64 %33, %34, !dbg !637
  br i1 %35, label %36, label %74, !dbg !638

; <label>:36:                                     ; preds = %32
  %37 = load i64, i64* %9, align 8, !dbg !639
  %38 = load i8**, i8*** %5, align 8, !dbg !641
  %39 = getelementptr inbounds i8*, i8** %38, i64 %37, !dbg !641
  %40 = load i8*, i8** %39, align 8, !dbg !641
  %41 = load i32, i32* %7, align 4, !dbg !642
  %42 = call i8* @Unicode_GetAllocBytes(i8* %40, i32 %41), !dbg !643
  %43 = load i64, i64* %9, align 8, !dbg !644
  %44 = load i8**, i8*** %8, align 8, !dbg !645
  %45 = getelementptr inbounds i8*, i8** %44, i64 %43, !dbg !645
  store i8* %42, i8** %45, align 8, !dbg !646
  %46 = load i64, i64* %9, align 8, !dbg !647
  %47 = load i8**, i8*** %8, align 8, !dbg !649
  %48 = getelementptr inbounds i8*, i8** %47, i64 %46, !dbg !649
  %49 = load i8*, i8** %48, align 8, !dbg !649
  %50 = icmp eq i8* %49, null, !dbg !650
  br i1 %50, label %51, label %70, !dbg !651

; <label>:51:                                     ; preds = %36
  %52 = load i64, i64* %9, align 8, !dbg !652
  %53 = load i8**, i8*** %5, align 8, !dbg !654
  %54 = getelementptr inbounds i8*, i8** %53, i64 %52, !dbg !654
  %55 = load i8*, i8** %54, align 8, !dbg !654
  %56 = icmp ne i8* %55, null, !dbg !655
  br i1 %56, label %57, label %70, !dbg !656

; <label>:57:                                     ; preds = %51
  br label %58, !dbg !657

; <label>:58:                                     ; preds = %62, %57
  %59 = load i64, i64* %9, align 8, !dbg !659
  %60 = add nsw i64 %59, -1, !dbg !659
  store i64 %60, i64* %9, align 8, !dbg !659
  %61 = icmp sge i64 %60, 0, !dbg !661
  br i1 %61, label %62, label %67, !dbg !662

; <label>:62:                                     ; preds = %58
  %63 = load i64, i64* %9, align 8, !dbg !663
  %64 = load i8**, i8*** %8, align 8, !dbg !665
  %65 = getelementptr inbounds i8*, i8** %64, i64 %63, !dbg !665
  %66 = load i8*, i8** %65, align 8, !dbg !665
  call void @free(i8* %66) #8, !dbg !666
  br label %58, !dbg !667, !llvm.loop !669

; <label>:67:                                     ; preds = %58
  %68 = load i8**, i8*** %8, align 8, !dbg !670
  %69 = bitcast i8** %68 to i8*, !dbg !670
  call void @free(i8* %69) #8, !dbg !671
  store i8** null, i8*** %4, align 8, !dbg !672
  br label %76, !dbg !672

; <label>:70:                                     ; preds = %51, %36
  br label %71, !dbg !673

; <label>:71:                                     ; preds = %70
  %72 = load i64, i64* %9, align 8, !dbg !674
  %73 = add nsw i64 %72, 1, !dbg !674
  store i64 %73, i64* %9, align 8, !dbg !674
  br label %32, !dbg !676, !llvm.loop !677

; <label>:74:                                     ; preds = %32
  %75 = load i8**, i8*** %8, align 8, !dbg !679
  store i8** %75, i8*** %4, align 8, !dbg !680
  br label %76, !dbg !680

; <label>:76:                                     ; preds = %74, %67
  %77 = load i8**, i8*** %4, align 8, !dbg !681
  ret i8** %77, !dbg !681
}

; Function Attrs: nounwind uwtable
define i8* @Unicode_GetAllocBytes(i8*, i32) #0 !dbg !682 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !685, metadata !388), !dbg !686
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !687, metadata !388), !dbg !688
  %6 = load i8*, i8** %4, align 8, !dbg !689
  %7 = icmp eq i8* %6, null, !dbg !691
  br i1 %7, label %8, label %9, !dbg !692

; <label>:8:                                      ; preds = %2
  store i8* null, i8** %3, align 8, !dbg !693
  br label %13, !dbg !693

; <label>:9:                                      ; preds = %2
  %10 = load i8*, i8** %4, align 8, !dbg !695
  %11 = load i32, i32* %5, align 4, !dbg !696
  %12 = call i8* @UnicodeGetAllocBytesInternal(i8* %10, i32 %11, i64 -1, i64* null), !dbg !697
  store i8* %12, i8** %3, align 8, !dbg !698
  br label %13, !dbg !698

; <label>:13:                                     ; preds = %9, %8
  %14 = load i8*, i8** %3, align 8, !dbg !699
  ret i8* %14, !dbg !699
}

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind uwtable
define i64 @Unicode_LengthInCodeUnits(i8*) #0 !dbg !700 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !704, metadata !388), !dbg !705
  %3 = load i8*, i8** %2, align 8, !dbg !706
  %4 = call i64 @strlen(i8* %3) #9, !dbg !707
  ret i64 %4, !dbg !708
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind uwtable
define i64 @Unicode_BytesRequired(i8*, i32) #0 !dbg !709 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !712, metadata !388), !dbg !713
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !714, metadata !388), !dbg !715
  call void @llvm.dbg.declare(metadata i8** %6, metadata !716, metadata !388), !dbg !717
  %11 = load i8*, i8** %4, align 8, !dbg !718
  store i8* %11, i8** %6, align 8, !dbg !717
  call void @llvm.dbg.declare(metadata i64* %7, metadata !719, metadata !388), !dbg !720
  call void @llvm.dbg.declare(metadata i64* %8, metadata !721, metadata !388), !dbg !722
  call void @llvm.dbg.declare(metadata i64* %9, metadata !723, metadata !388), !dbg !724
  store i64 0, i64* %9, align 8, !dbg !724
  %12 = load i32, i32* %5, align 4, !dbg !725
  %13 = call i32 @Unicode_ResolveEncoding(i32 %12), !dbg !726
  store i32 %13, i32* %5, align 4, !dbg !727
  %14 = load i32, i32* %5, align 4, !dbg !728
  switch i32 %14, label %22 [
    i32 0, label %15
    i32 7, label %19
    i32 8, label %19
    i32 35, label %19
    i32 1, label %20
    i32 2, label %20
    i32 3, label %20
    i32 4, label %21
    i32 5, label %21
    i32 6, label %21
  ], !dbg !729

; <label>:15:                                     ; preds = %2
  %16 = load i8*, i8** %6, align 8, !dbg !730
  %17 = call i64 @strlen(i8* %16) #9, !dbg !732
  %18 = add i64 %17, 1, !dbg !733
  store i64 %18, i64* %3, align 8, !dbg !734
  br label %98, !dbg !734

; <label>:19:                                     ; preds = %2, %2, %2
  store i64 1, i64* %8, align 8, !dbg !735
  store i64 1, i64* %7, align 8, !dbg !736
  br label %23, !dbg !737

; <label>:20:                                     ; preds = %2, %2, %2
  store i64 2, i64* %7, align 8, !dbg !738
  store i64 4, i64* %8, align 8, !dbg !739
  br label %23, !dbg !740

; <label>:21:                                     ; preds = %2, %2, %2
  store i64 4, i64* %7, align 8, !dbg !741
  store i64 4, i64* %8, align 8, !dbg !742
  br label %23, !dbg !743

; <label>:22:                                     ; preds = %2
  store i64 7, i64* %7, align 8, !dbg !744
  store i64 7, i64* %8, align 8, !dbg !745
  br label %23, !dbg !746

; <label>:23:                                     ; preds = %22, %21, %20, %19
  br label %24, !dbg !747

; <label>:24:                                     ; preds = %91, %23
  %25 = load i8*, i8** %6, align 8, !dbg !748
  %26 = load i8, i8* %25, align 1, !dbg !750
  %27 = icmp ne i8 %26, 0, !dbg !751
  br i1 %27, label %28, label %92, !dbg !751

; <label>:28:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata i64* %10, metadata !752, metadata !388), !dbg !754
  %29 = load i8*, i8** %6, align 8, !dbg !755
  %30 = load i8, i8* %29, align 1, !dbg !757
  %31 = zext i8 %30 to i32, !dbg !757
  %32 = icmp sle i32 %31, 127, !dbg !758
  br i1 %32, label %33, label %37, !dbg !759

; <label>:33:                                     ; preds = %28
  store i64 1, i64* %10, align 8, !dbg !760
  %34 = load i64, i64* %7, align 8, !dbg !762
  %35 = load i64, i64* %9, align 8, !dbg !763
  %36 = add i64 %35, %34, !dbg !763
  store i64 %36, i64* %9, align 8, !dbg !763
  br label %71, !dbg !764

; <label>:37:                                     ; preds = %28
  %38 = load i8*, i8** %6, align 8, !dbg !765
  %39 = load i8, i8* %38, align 1, !dbg !768
  %40 = zext i8 %39 to i32, !dbg !768
  %41 = and i32 %40, 192, !dbg !769
  %42 = icmp ne i32 %41, 0, !dbg !769
  br i1 %42, label %43, label %47, !dbg !768

; <label>:43:                                     ; preds = %37
  store i64 2, i64* %10, align 8, !dbg !770
  %44 = load i64, i64* %7, align 8, !dbg !772
  %45 = load i64, i64* %9, align 8, !dbg !773
  %46 = add i64 %45, %44, !dbg !773
  store i64 %46, i64* %9, align 8, !dbg !773
  br label %70, !dbg !774

; <label>:47:                                     ; preds = %37
  %48 = load i8*, i8** %6, align 8, !dbg !775
  %49 = load i8, i8* %48, align 1, !dbg !778
  %50 = zext i8 %49 to i32, !dbg !778
  %51 = and i32 %50, 224, !dbg !779
  %52 = icmp ne i32 %51, 0, !dbg !779
  br i1 %52, label %53, label %57, !dbg !778

; <label>:53:                                     ; preds = %47
  store i64 3, i64* %10, align 8, !dbg !780
  %54 = load i64, i64* %7, align 8, !dbg !782
  %55 = load i64, i64* %9, align 8, !dbg !783
  %56 = add i64 %55, %54, !dbg !783
  store i64 %56, i64* %9, align 8, !dbg !783
  br label %69, !dbg !784

; <label>:57:                                     ; preds = %47
  %58 = load i8*, i8** %6, align 8, !dbg !785
  %59 = load i8, i8* %58, align 1, !dbg !788
  %60 = zext i8 %59 to i32, !dbg !788
  %61 = and i32 %60, 240, !dbg !789
  %62 = icmp ne i32 %61, 0, !dbg !789
  br i1 %62, label %63, label %67, !dbg !788

; <label>:63:                                     ; preds = %57
  store i64 4, i64* %10, align 8, !dbg !790
  %64 = load i64, i64* %8, align 8, !dbg !792
  %65 = load i64, i64* %9, align 8, !dbg !793
  %66 = add i64 %65, %64, !dbg !793
  store i64 %66, i64* %9, align 8, !dbg !793
  br label %68, !dbg !794

; <label>:67:                                     ; preds = %57
  br label %92, !dbg !795

; <label>:68:                                     ; preds = %63
  br label %69

; <label>:69:                                     ; preds = %68, %53
  br label %70

; <label>:70:                                     ; preds = %69, %43
  br label %71

; <label>:71:                                     ; preds = %70, %33
  br label %72, !dbg !797

; <label>:72:                                     ; preds = %82, %71
  %73 = load i8*, i8** %6, align 8, !dbg !798
  %74 = load i8, i8* %73, align 1, !dbg !800
  %75 = zext i8 %74 to i32, !dbg !800
  %76 = icmp ne i32 %75, 0, !dbg !800
  br i1 %76, label %77, label %80, !dbg !801

; <label>:77:                                     ; preds = %72
  %78 = load i64, i64* %10, align 8, !dbg !802
  %79 = icmp ne i64 %78, 0, !dbg !804
  br label %80

; <label>:80:                                     ; preds = %77, %72
  %81 = phi i1 [ false, %72 ], [ %79, %77 ]
  br i1 %81, label %82, label %87, !dbg !805

; <label>:82:                                     ; preds = %80
  %83 = load i64, i64* %10, align 8, !dbg !807
  %84 = add i64 %83, -1, !dbg !807
  store i64 %84, i64* %10, align 8, !dbg !807
  %85 = load i8*, i8** %6, align 8, !dbg !809
  %86 = getelementptr inbounds i8, i8* %85, i32 1, !dbg !809
  store i8* %86, i8** %6, align 8, !dbg !809
  br label %72, !dbg !810, !llvm.loop !812

; <label>:87:                                     ; preds = %80
  %88 = load i64, i64* %10, align 8, !dbg !813
  %89 = icmp ugt i64 %88, 0, !dbg !815
  br i1 %89, label %90, label %91, !dbg !816

; <label>:90:                                     ; preds = %87
  br label %92, !dbg !817

; <label>:91:                                     ; preds = %87
  br label %24, !dbg !819, !llvm.loop !821

; <label>:92:                                     ; preds = %90, %67, %24
  %93 = load i64, i64* %7, align 8, !dbg !822
  %94 = mul i64 10, %93, !dbg !823
  %95 = load i64, i64* %9, align 8, !dbg !824
  %96 = add i64 %95, %94, !dbg !824
  store i64 %96, i64* %9, align 8, !dbg !824
  %97 = load i64, i64* %9, align 8, !dbg !825
  store i64 %97, i64* %3, align 8, !dbg !826
  br label %98, !dbg !826

; <label>:98:                                     ; preds = %92, %15
  %99 = load i64, i64* %3, align 8, !dbg !827
  ret i64 %99, !dbg !827
}

; Function Attrs: nounwind uwtable
define signext i8 @Unicode_CopyBytes(i8*, i8*, i64, i64*, i32) #0 !dbg !828 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !832, metadata !388), !dbg !833
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !834, metadata !388), !dbg !835
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !836, metadata !388), !dbg !837
  store i64* %3, i64** %9, align 8
  call void @llvm.dbg.declare(metadata i64** %9, metadata !838, metadata !388), !dbg !839
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !840, metadata !388), !dbg !841
  call void @llvm.dbg.declare(metadata i8** %11, metadata !842, metadata !388), !dbg !843
  %19 = load i8*, i8** %7, align 8, !dbg !844
  store i8* %19, i8** %11, align 8, !dbg !843
  call void @llvm.dbg.declare(metadata i8* %12, metadata !845, metadata !388), !dbg !846
  store i8 0, i8* %12, align 1, !dbg !846
  call void @llvm.dbg.declare(metadata i64* %13, metadata !847, metadata !388), !dbg !848
  store i64 0, i64* %13, align 8, !dbg !848
  %20 = load i32, i32* %10, align 4, !dbg !849
  %21 = call i32 @Unicode_ResolveEncoding(i32 %20), !dbg !850
  store i32 %21, i32* %10, align 4, !dbg !851
  %22 = load i32, i32* %10, align 4, !dbg !852
  switch i32 %22, label %99 [
    i32 7, label %23
    i32 0, label %30
    i32 1, label %63
  ], !dbg !853

; <label>:23:                                     ; preds = %5
  %24 = load i8*, i8** %11, align 8, !dbg !854
  %25 = load i32, i32* %10, align 4, !dbg !857
  %26 = call signext i8 @UnicodeSanityCheck(i8* %24, i64 -1, i32 %25), !dbg !858
  %27 = icmp ne i8 %26, 0, !dbg !858
  br i1 %27, label %29, label %28, !dbg !859

; <label>:28:                                     ; preds = %23
  br label %132, !dbg !860

; <label>:29:                                     ; preds = %23
  br label %30, !dbg !862

; <label>:30:                                     ; preds = %5, %29
  call void @llvm.dbg.declare(metadata i64* %14, metadata !864, metadata !388), !dbg !866
  %31 = load i8*, i8** %11, align 8, !dbg !867
  %32 = call i64 @strlen(i8* %31) #9, !dbg !868
  store i64 %32, i64* %14, align 8, !dbg !866
  %33 = load i64, i64* %14, align 8, !dbg !869
  %34 = load i64, i64* %8, align 8, !dbg !870
  %35 = sub i64 %34, 1, !dbg !871
  %36 = icmp ult i64 %33, %35, !dbg !872
  br i1 %36, label %37, label %39, !dbg !873

; <label>:37:                                     ; preds = %30
  %38 = load i64, i64* %14, align 8, !dbg !874
  br label %42, !dbg !876

; <label>:39:                                     ; preds = %30
  %40 = load i64, i64* %8, align 8, !dbg !877
  %41 = sub i64 %40, 1, !dbg !879
  br label %42, !dbg !880

; <label>:42:                                     ; preds = %39, %37
  %43 = phi i64 [ %38, %37 ], [ %41, %39 ], !dbg !881
  store i64 %43, i64* %13, align 8, !dbg !883
  %44 = load i8*, i8** %6, align 8, !dbg !884
  %45 = load i8*, i8** %11, align 8, !dbg !885
  %46 = load i64, i64* %13, align 8, !dbg !886
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 %46, i32 1, i1 false), !dbg !887
  %47 = load i64, i64* %13, align 8, !dbg !888
  %48 = load i64, i64* %14, align 8, !dbg !890
  %49 = icmp uge i64 %47, %48, !dbg !891
  br i1 %49, label %50, label %51, !dbg !892

; <label>:50:                                     ; preds = %42
  store i8 1, i8* %12, align 1, !dbg !893
  br label %59, !dbg !895

; <label>:51:                                     ; preds = %42
  %52 = load i32, i32* %10, align 4, !dbg !896
  %53 = icmp eq i32 %52, 0, !dbg !899
  br i1 %53, label %54, label %58, !dbg !900

; <label>:54:                                     ; preds = %51
  %55 = load i8*, i8** %6, align 8, !dbg !901
  %56 = load i64, i64* %13, align 8, !dbg !903
  %57 = call i64 @CodeSet_Utf8FindCodePointBoundary(i8* %55, i64 %56), !dbg !904
  store i64 %57, i64* %13, align 8, !dbg !905
  br label %58, !dbg !906

; <label>:58:                                     ; preds = %54, %51
  br label %59

; <label>:59:                                     ; preds = %58, %50
  %60 = load i64, i64* %13, align 8, !dbg !907
  %61 = load i8*, i8** %6, align 8, !dbg !908
  %62 = getelementptr inbounds i8, i8* %61, i64 %60, !dbg !909
  store i8 0, i8* %62, align 1, !dbg !910
  br label %132, !dbg !911

; <label>:63:                                     ; preds = %5
  call void @llvm.dbg.declare(metadata i8** %15, metadata !912, metadata !388), !dbg !914
  call void @llvm.dbg.declare(metadata i64* %16, metadata !915, metadata !388), !dbg !916
  %64 = load i8*, i8** %11, align 8, !dbg !917
  %65 = load i8*, i8** %11, align 8, !dbg !919
  %66 = call i64 @strlen(i8* %65) #9, !dbg !920
  %67 = call signext i8 @CodeSet_Utf8ToUtf16le(i8* %64, i64 %66, i8** %15, i64* %16), !dbg !921
  %68 = icmp ne i8 %67, 0, !dbg !921
  br i1 %68, label %70, label %69, !dbg !922

; <label>:69:                                     ; preds = %63
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 568) #10, !dbg !923
  unreachable, !dbg !923

; <label>:70:                                     ; preds = %63
  %71 = load i64, i64* %16, align 8, !dbg !925
  %72 = load i64, i64* %8, align 8, !dbg !926
  %73 = sub i64 %72, 2, !dbg !927
  %74 = icmp ult i64 %71, %73, !dbg !928
  br i1 %74, label %75, label %77, !dbg !929

; <label>:75:                                     ; preds = %70
  %76 = load i64, i64* %16, align 8, !dbg !930
  br label %80, !dbg !932

; <label>:77:                                     ; preds = %70
  %78 = load i64, i64* %8, align 8, !dbg !933
  %79 = sub i64 %78, 2, !dbg !935
  br label %80, !dbg !936

; <label>:80:                                     ; preds = %77, %75
  %81 = phi i64 [ %76, %75 ], [ %79, %77 ], !dbg !937
  store i64 %81, i64* %13, align 8, !dbg !939
  %82 = load i8*, i8** %6, align 8, !dbg !940
  %83 = load i8*, i8** %15, align 8, !dbg !941
  %84 = load i64, i64* %13, align 8, !dbg !942
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %82, i8* %83, i64 %84, i32 1, i1 false), !dbg !943
  %85 = load i8*, i8** %6, align 8, !dbg !944
  %86 = load i64, i64* %13, align 8, !dbg !945
  %87 = call i64 @CodeSet_Utf16FindCodePointBoundary(i8* %85, i64 %86), !dbg !946
  store i64 %87, i64* %13, align 8, !dbg !947
  %88 = load i64, i64* %13, align 8, !dbg !948
  %89 = udiv i64 %88, 2, !dbg !949
  %90 = load i8*, i8** %6, align 8, !dbg !950
  %91 = bitcast i8* %90 to i16*, !dbg !951
  %92 = getelementptr inbounds i16, i16* %91, i64 %89, !dbg !952
  store i16 0, i16* %92, align 2, !dbg !953
  %93 = load i8*, i8** %15, align 8, !dbg !954
  call void @free(i8* %93) #8, !dbg !955
  %94 = load i64, i64* %13, align 8, !dbg !956
  %95 = load i64, i64* %16, align 8, !dbg !958
  %96 = icmp uge i64 %94, %95, !dbg !959
  br i1 %96, label %97, label %98, !dbg !960

; <label>:97:                                     ; preds = %80
  store i8 1, i8* %12, align 1, !dbg !961
  br label %98, !dbg !963

; <label>:98:                                     ; preds = %97, %80
  br label %132, !dbg !964

; <label>:99:                                     ; preds = %5
  call void @llvm.dbg.declare(metadata i8** %17, metadata !965, metadata !388), !dbg !967
  call void @llvm.dbg.declare(metadata i64* %18, metadata !968, metadata !388), !dbg !969
  %100 = load i8*, i8** %11, align 8, !dbg !970
  %101 = load i8*, i8** %11, align 8, !dbg !972
  %102 = call i64 @strlen(i8* %101) #9, !dbg !973
  %103 = load i32, i32* %10, align 4, !dbg !974
  %104 = call i8* @Unicode_EncodingEnumToName(i32 %103), !dbg !975
  %105 = call signext i8 @CodeSet_GenericToGeneric(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* %100, i64 %102, i8* %104, i32 0, i8** %17, i64* %18), !dbg !976
  %106 = icmp ne i8 %105, 0, !dbg !978
  br i1 %106, label %108, label %107, !dbg !979

; <label>:107:                                    ; preds = %99
  br label %132, !dbg !980

; <label>:108:                                    ; preds = %99
  %109 = load i64, i64* %18, align 8, !dbg !982
  %110 = load i64, i64* %8, align 8, !dbg !983
  %111 = sub i64 %110, 1, !dbg !984
  %112 = icmp ult i64 %109, %111, !dbg !985
  br i1 %112, label %113, label %115, !dbg !986

; <label>:113:                                    ; preds = %108
  %114 = load i64, i64* %18, align 8, !dbg !987
  br label %118, !dbg !989

; <label>:115:                                    ; preds = %108
  %116 = load i64, i64* %8, align 8, !dbg !990
  %117 = sub i64 %116, 1, !dbg !992
  br label %118, !dbg !993

; <label>:118:                                    ; preds = %115, %113
  %119 = phi i64 [ %114, %113 ], [ %117, %115 ], !dbg !994
  store i64 %119, i64* %13, align 8, !dbg !996
  %120 = load i8*, i8** %6, align 8, !dbg !997
  %121 = load i8*, i8** %17, align 8, !dbg !998
  %122 = load i64, i64* %13, align 8, !dbg !999
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %120, i8* %121, i64 %122, i32 1, i1 false), !dbg !1000
  %123 = load i8*, i8** %17, align 8, !dbg !1001
  call void @free(i8* %123) #8, !dbg !1002
  %124 = load i64, i64* %13, align 8, !dbg !1003
  %125 = load i8*, i8** %6, align 8, !dbg !1004
  %126 = getelementptr inbounds i8, i8* %125, i64 %124, !dbg !1005
  store i8 0, i8* %126, align 1, !dbg !1006
  %127 = load i64, i64* %13, align 8, !dbg !1007
  %128 = load i64, i64* %18, align 8, !dbg !1009
  %129 = icmp uge i64 %127, %128, !dbg !1010
  br i1 %129, label %130, label %131, !dbg !1011

; <label>:130:                                    ; preds = %118
  store i8 1, i8* %12, align 1, !dbg !1012
  br label %131, !dbg !1014

; <label>:131:                                    ; preds = %130, %118
  br label %132, !dbg !1015

; <label>:132:                                    ; preds = %131, %107, %98, %59, %28
  %133 = load i64*, i64** %9, align 8, !dbg !1016
  %134 = icmp ne i64* %133, null, !dbg !1016
  br i1 %134, label %135, label %138, !dbg !1018

; <label>:135:                                    ; preds = %132
  %136 = load i64, i64* %13, align 8, !dbg !1019
  %137 = load i64*, i64** %9, align 8, !dbg !1021
  store i64 %136, i64* %137, align 8, !dbg !1022
  br label %138, !dbg !1023

; <label>:138:                                    ; preds = %135, %132
  %139 = load i8, i8* %12, align 1, !dbg !1024
  ret i8 %139, !dbg !1025
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @CodeSet_Utf8FindCodePointBoundary(i8*, i64) #3 !dbg !1026 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1030, metadata !388), !dbg !1031
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1032, metadata !388), !dbg !1033
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1034, metadata !388), !dbg !1035
  %8 = load i64, i64* %5, align 8, !dbg !1036
  store i64 %8, i64* %6, align 8, !dbg !1035
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1037, metadata !388), !dbg !1038
  %9 = load i64, i64* %5, align 8, !dbg !1039
  %10 = icmp ugt i64 %9, 0, !dbg !1041
  br i1 %10, label %11, label %51, !dbg !1042

; <label>:11:                                     ; preds = %2
  %12 = load i64, i64* %5, align 8, !dbg !1043
  %13 = add i64 %12, -1, !dbg !1043
  store i64 %13, i64* %5, align 8, !dbg !1043
  br label %14, !dbg !1045

; <label>:14:                                     ; preds = %27, %11
  %15 = load i64, i64* %5, align 8, !dbg !1046
  %16 = icmp ugt i64 %15, 0, !dbg !1048
  br i1 %16, label %17, label %25, !dbg !1049

; <label>:17:                                     ; preds = %14
  %18 = load i64, i64* %5, align 8, !dbg !1050
  %19 = load i8*, i8** %4, align 8, !dbg !1052
  %20 = getelementptr inbounds i8, i8* %19, i64 %18, !dbg !1052
  %21 = load i8, i8* %20, align 1, !dbg !1052
  %22 = sext i8 %21 to i32, !dbg !1052
  %23 = and i32 %22, 192, !dbg !1053
  %24 = icmp eq i32 %23, 128, !dbg !1054
  br label %25

; <label>:25:                                     ; preds = %17, %14
  %26 = phi i1 [ false, %14 ], [ %24, %17 ]
  br i1 %26, label %27, label %30, !dbg !1055

; <label>:27:                                     ; preds = %25
  %28 = load i64, i64* %5, align 8, !dbg !1057
  %29 = add i64 %28, -1, !dbg !1057
  store i64 %29, i64* %5, align 8, !dbg !1057
  br label %14, !dbg !1059, !llvm.loop !1061

; <label>:30:                                     ; preds = %25
  %31 = load i64, i64* %5, align 8, !dbg !1062
  %32 = load i8*, i8** %4, align 8, !dbg !1063
  %33 = getelementptr inbounds i8, i8* %32, i64 %31, !dbg !1063
  %34 = load i8, i8* %33, align 1, !dbg !1063
  store i8 %34, i8* %7, align 1, !dbg !1064
  %35 = load i8, i8* %7, align 1, !dbg !1065
  %36 = sext i8 %35 to i32, !dbg !1065
  %37 = icmp sge i32 %36, 0, !dbg !1067
  br i1 %37, label %48, label %38, !dbg !1068

; <label>:38:                                     ; preds = %30
  %39 = load i8, i8* %7, align 1, !dbg !1069
  %40 = sext i8 %39 to i32, !dbg !1069
  %41 = load i64, i64* %6, align 8, !dbg !1071
  %42 = sub i64 7, %41, !dbg !1072
  %43 = load i64, i64* %5, align 8, !dbg !1073
  %44 = add i64 %42, %43, !dbg !1074
  %45 = trunc i64 %44 to i32, !dbg !1075
  %46 = ashr i32 %40, %45, !dbg !1075
  %47 = icmp eq i32 %46, -2, !dbg !1076
  br i1 %47, label %48, label %50, !dbg !1077

; <label>:48:                                     ; preds = %38, %30
  %49 = load i64, i64* %6, align 8, !dbg !1078
  store i64 %49, i64* %3, align 8, !dbg !1080
  br label %53, !dbg !1080

; <label>:50:                                     ; preds = %38
  br label %51, !dbg !1081

; <label>:51:                                     ; preds = %50, %2
  %52 = load i64, i64* %5, align 8, !dbg !1082
  store i64 %52, i64* %3, align 8, !dbg !1083
  br label %53, !dbg !1083

; <label>:53:                                     ; preds = %51, %48
  %54 = load i64, i64* %3, align 8, !dbg !1084
  ret i64 %54, !dbg !1084
}

declare signext i8 @CodeSet_Utf8ToUtf16le(i8*, i64, i8**, i64*) #2

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #7

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @CodeSet_Utf16FindCodePointBoundary(i8*, i64) #3 !dbg !1085 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i16*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1086, metadata !388), !dbg !1087
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1088, metadata !388), !dbg !1089
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1090, metadata !388), !dbg !1091
  call void @llvm.dbg.declare(metadata i16** %7, metadata !1092, metadata !388), !dbg !1093
  %8 = load i8*, i8** %4, align 8, !dbg !1094
  %9 = bitcast i8* %8 to i16*, !dbg !1095
  store i16* %9, i16** %7, align 8, !dbg !1093
  %10 = load i64, i64* %5, align 8, !dbg !1096
  %11 = udiv i64 %10, 2, !dbg !1097
  store i64 %11, i64* %6, align 8, !dbg !1098
  %12 = load i64, i64* %6, align 8, !dbg !1099
  %13 = sub i64 %12, 1, !dbg !1100
  store i64 %13, i64* %5, align 8, !dbg !1101
  %14 = load i64, i64* %6, align 8, !dbg !1102
  %15 = icmp ugt i64 %14, 0, !dbg !1104
  br i1 %15, label %16, label %27, !dbg !1105

; <label>:16:                                     ; preds = %2
  %17 = load i64, i64* %5, align 8, !dbg !1106
  %18 = load i16*, i16** %7, align 8, !dbg !1108
  %19 = getelementptr inbounds i16, i16* %18, i64 %17, !dbg !1108
  %20 = load i16, i16* %19, align 2, !dbg !1108
  %21 = zext i16 %20 to i32, !dbg !1109
  %22 = and i32 %21, -1024, !dbg !1110
  %23 = icmp eq i32 %22, 55296, !dbg !1111
  br i1 %23, label %24, label %27, !dbg !1112

; <label>:24:                                     ; preds = %16
  %25 = load i64, i64* %5, align 8, !dbg !1113
  %26 = mul i64 %25, 2, !dbg !1115
  store i64 %26, i64* %3, align 8, !dbg !1116
  br label %30, !dbg !1116

; <label>:27:                                     ; preds = %16, %2
  %28 = load i64, i64* %6, align 8, !dbg !1117
  %29 = mul i64 %28, 2, !dbg !1118
  store i64 %29, i64* %3, align 8, !dbg !1119
  br label %30, !dbg !1119

; <label>:30:                                     ; preds = %27, %24
  %31 = load i64, i64* %3, align 8, !dbg !1120
  ret i64 %31, !dbg !1120
}

; Function Attrs: nounwind uwtable
define i8* @UnicodeGetAllocBytesInternal(i8*, i32, i64, i64*) #0 !dbg !1121 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1124, metadata !388), !dbg !1125
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1126, metadata !388), !dbg !1127
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1128, metadata !388), !dbg !1129
  store i64* %3, i64** %8, align 8
  call void @llvm.dbg.declare(metadata i64** %8, metadata !1130, metadata !388), !dbg !1131
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1132, metadata !388), !dbg !1133
  %11 = load i8*, i8** %5, align 8, !dbg !1134
  store i8* %11, i8** %9, align 8, !dbg !1133
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1135, metadata !388), !dbg !1136
  store i8* null, i8** %10, align 8, !dbg !1136
  %12 = load i32, i32* %6, align 4, !dbg !1137
  %13 = call i32 @Unicode_ResolveEncoding(i32 %12), !dbg !1138
  store i32 %13, i32* %6, align 4, !dbg !1139
  %14 = load i64, i64* %7, align 8, !dbg !1140
  %15 = icmp eq i64 %14, -1, !dbg !1142
  br i1 %15, label %16, label %19, !dbg !1143

; <label>:16:                                     ; preds = %4
  %17 = load i8*, i8** %5, align 8, !dbg !1144
  %18 = call i64 @Unicode_LengthInBytes(i8* %17, i32 0), !dbg !1146
  store i64 %18, i64* %7, align 8, !dbg !1147
  br label %19, !dbg !1148

; <label>:19:                                     ; preds = %16, %4
  %20 = load i32, i32* %6, align 4, !dbg !1149
  switch i32 %20, label %51 [
    i32 7, label %21
    i32 0, label %29
    i32 1, label %43
  ], !dbg !1150

; <label>:21:                                     ; preds = %19
  %22 = load i8*, i8** %9, align 8, !dbg !1151
  %23 = load i64, i64* %7, align 8, !dbg !1154
  %24 = load i32, i32* %6, align 4, !dbg !1155
  %25 = call signext i8 @UnicodeSanityCheck(i8* %22, i64 %23, i32 %24), !dbg !1156
  %26 = icmp ne i8 %25, 0, !dbg !1156
  br i1 %26, label %28, label %27, !dbg !1157

; <label>:27:                                     ; preds = %21
  br label %61, !dbg !1158

; <label>:28:                                     ; preds = %21
  br label %29, !dbg !1160

; <label>:29:                                     ; preds = %19, %28
  %30 = load i64, i64* %7, align 8, !dbg !1162
  %31 = add nsw i64 %30, 1, !dbg !1163
  %32 = call i8* @UtilSafeMalloc0(i64 %31), !dbg !1164
  store i8* %32, i8** %10, align 8, !dbg !1165
  %33 = load i8*, i8** %10, align 8, !dbg !1166
  %34 = load i8*, i8** %9, align 8, !dbg !1167
  %35 = load i64, i64* %7, align 8, !dbg !1168
  %36 = add nsw i64 %35, 1, !dbg !1169
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 %36, i32 1, i1 false), !dbg !1170
  %37 = load i64*, i64** %8, align 8, !dbg !1171
  %38 = icmp ne i64* %37, null, !dbg !1173
  br i1 %38, label %39, label %42, !dbg !1174

; <label>:39:                                     ; preds = %29
  %40 = load i64, i64* %7, align 8, !dbg !1175
  %41 = load i64*, i64** %8, align 8, !dbg !1177
  store i64 %40, i64* %41, align 8, !dbg !1178
  br label %42, !dbg !1179

; <label>:42:                                     ; preds = %39, %29
  br label %61, !dbg !1180

; <label>:43:                                     ; preds = %19
  %44 = load i8*, i8** %9, align 8, !dbg !1181
  %45 = load i64, i64* %7, align 8, !dbg !1183
  %46 = load i64*, i64** %8, align 8, !dbg !1184
  %47 = call signext i8 @CodeSet_Utf8ToUtf16le(i8* %44, i64 %45, i8** %10, i64* %46), !dbg !1185
  %48 = icmp ne i8 %47, 0, !dbg !1185
  br i1 %48, label %50, label %49, !dbg !1186

; <label>:49:                                     ; preds = %43
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 755) #10, !dbg !1187
  unreachable, !dbg !1187

; <label>:50:                                     ; preds = %43
  br label %61, !dbg !1189

; <label>:51:                                     ; preds = %19
  %52 = load i8*, i8** %9, align 8, !dbg !1190
  %53 = load i64, i64* %7, align 8, !dbg !1192
  %54 = load i32, i32* %6, align 4, !dbg !1193
  %55 = call i8* @Unicode_EncodingEnumToName(i32 %54), !dbg !1194
  %56 = load i64*, i64** %8, align 8, !dbg !1195
  %57 = call signext i8 @CodeSet_GenericToGeneric(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* %52, i64 %53, i8* %55, i32 0, i8** %10, i64* %56), !dbg !1196
  %58 = icmp ne i8 %57, 0, !dbg !1196
  br i1 %58, label %60, label %59, !dbg !1197

; <label>:59:                                     ; preds = %51
  br label %60, !dbg !1198

; <label>:60:                                     ; preds = %59, %51
  br label %61, !dbg !1200

; <label>:61:                                     ; preds = %60, %50, %42, %27
  %62 = load i8*, i8** %10, align 8, !dbg !1201
  ret i8* %62, !dbg !1202
}

; Function Attrs: nounwind uwtable
define i8* @Unicode_GetAllocBytesWithLength(i8*, i32, i64) #0 !dbg !1203 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1206, metadata !388), !dbg !1207
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1208, metadata !388), !dbg !1209
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1210, metadata !388), !dbg !1211
  %8 = load i8*, i8** %5, align 8, !dbg !1212
  %9 = icmp eq i8* %8, null, !dbg !1214
  br i1 %9, label %10, label %11, !dbg !1215

; <label>:10:                                     ; preds = %3
  store i8* null, i8** %4, align 8, !dbg !1216
  br label %16, !dbg !1216

; <label>:11:                                     ; preds = %3
  %12 = load i8*, i8** %5, align 8, !dbg !1218
  %13 = load i32, i32* %6, align 4, !dbg !1219
  %14 = load i64, i64* %7, align 8, !dbg !1220
  %15 = call i8* @UnicodeGetAllocBytesInternal(i8* %12, i32 %13, i64 %14, i64* null), !dbg !1221
  store i8* %15, i8** %4, align 8, !dbg !1222
  br label %16, !dbg !1222

; <label>:16:                                     ; preds = %11, %10
  %17 = load i8*, i8** %4, align 8, !dbg !1223
  ret i8* %17, !dbg !1223
}

; Function Attrs: nounwind uwtable
define i8* @UnicodeAllocStatic(i8*, i8 signext) #0 !dbg !1224 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i16*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1227, metadata !388), !dbg !1228
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1229, metadata !388), !dbg !1230
  call void @llvm.dbg.declare(metadata i16** %6, metadata !1231, metadata !388), !dbg !1232
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1233, metadata !388), !dbg !1234
  %14 = load i8*, i8** %4, align 8, !dbg !1235
  store i8* %14, i8** %7, align 8, !dbg !1234
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1236, metadata !388), !dbg !1237
  store i64 0, i64* %8, align 8, !dbg !1237
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1238, metadata !388), !dbg !1239
  %15 = load i8, i8* %5, align 1, !dbg !1240
  %16 = icmp ne i8 %15, 0, !dbg !1240
  br i1 %16, label %20, label %17, !dbg !1242

; <label>:17:                                     ; preds = %2
  %18 = load i8*, i8** %4, align 8, !dbg !1243
  %19 = call i8* @UtilSafeStrdup0(i8* %18), !dbg !1245
  store i8* %19, i8** %3, align 8, !dbg !1246
  br label %210, !dbg !1246

; <label>:20:                                     ; preds = %2
  %21 = load i8*, i8** %4, align 8, !dbg !1247
  %22 = call i64 @strlen(i8* %21) #9, !dbg !1248
  %23 = add i64 %22, 1, !dbg !1249
  %24 = mul i64 2, %23, !dbg !1250
  %25 = call i8* @UtilSafeMalloc0(i64 %24), !dbg !1251
  %26 = bitcast i8* %25 to i16*, !dbg !1253
  store i16* %26, i16** %6, align 8, !dbg !1254
  br label %27, !dbg !1255

; <label>:27:                                     ; preds = %20, %51, %68, %203
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1256, metadata !388), !dbg !1258
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1259, metadata !388), !dbg !1260
  store i32 0, i32* %11, align 4, !dbg !1260
  call void @llvm.dbg.declare(metadata i8* %12, metadata !1261, metadata !388), !dbg !1262
  store i8 0, i8* %12, align 1, !dbg !1262
  %28 = load i8*, i8** %7, align 8, !dbg !1263
  %29 = load i8, i8* %28, align 1, !dbg !1265
  %30 = sext i8 %29 to i32, !dbg !1265
  %31 = icmp eq i32 %30, 0, !dbg !1266
  br i1 %31, label %32, label %36, !dbg !1267

; <label>:32:                                     ; preds = %27
  %33 = load i64, i64* %8, align 8, !dbg !1268
  %34 = load i16*, i16** %6, align 8, !dbg !1270
  %35 = getelementptr inbounds i16, i16* %34, i64 %33, !dbg !1270
  store i16 0, i16* %35, align 2, !dbg !1271
  br label %204, !dbg !1272

; <label>:36:                                     ; preds = %27
  %37 = load i8*, i8** %7, align 8, !dbg !1273
  %38 = load i8, i8* %37, align 1, !dbg !1276
  %39 = sext i8 %38 to i32, !dbg !1276
  %40 = icmp sgt i32 %39, 0, !dbg !1277
  %41 = xor i1 %40, true, !dbg !1278
  %42 = zext i1 %41 to i32, !dbg !1278
  %43 = sext i32 %42 to i64, !dbg !1279
  %44 = icmp ne i64 %43, 0, !dbg !1280
  br i1 %44, label %45, label %46, !dbg !1281

; <label>:45:                                     ; preds = %36
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 829) #10, !dbg !1282
  unreachable, !dbg !1282

; <label>:46:                                     ; preds = %36
  %47 = load i8*, i8** %7, align 8, !dbg !1285
  %48 = load i8, i8* %47, align 1, !dbg !1287
  %49 = sext i8 %48 to i32, !dbg !1287
  %50 = icmp ne i32 %49, 92, !dbg !1288
  br i1 %50, label %51, label %61, !dbg !1289

; <label>:51:                                     ; preds = %46
  %52 = load i8*, i8** %7, align 8, !dbg !1290
  %53 = load i8, i8* %52, align 1, !dbg !1292
  %54 = sext i8 %53 to i16, !dbg !1292
  %55 = load i64, i64* %8, align 8, !dbg !1293
  %56 = add i64 %55, 1, !dbg !1293
  store i64 %56, i64* %8, align 8, !dbg !1293
  %57 = load i16*, i16** %6, align 8, !dbg !1294
  %58 = getelementptr inbounds i16, i16* %57, i64 %55, !dbg !1294
  store i16 %54, i16* %58, align 2, !dbg !1295
  %59 = load i8*, i8** %7, align 8, !dbg !1296
  %60 = getelementptr inbounds i8, i8* %59, i32 1, !dbg !1296
  store i8* %60, i8** %7, align 8, !dbg !1296
  br label %27, !dbg !1297, !llvm.loop !1298

; <label>:61:                                     ; preds = %46
  %62 = load i8*, i8** %7, align 8, !dbg !1299
  %63 = getelementptr inbounds i8, i8* %62, i32 1, !dbg !1299
  store i8* %63, i8** %7, align 8, !dbg !1299
  %64 = load i8*, i8** %7, align 8, !dbg !1300
  %65 = load i8, i8* %64, align 1, !dbg !1302
  %66 = sext i8 %65 to i32, !dbg !1302
  %67 = icmp eq i32 %66, 0, !dbg !1303
  br i1 %67, label %68, label %69, !dbg !1304

; <label>:68:                                     ; preds = %61
  br label %27, !dbg !1305, !llvm.loop !1298

; <label>:69:                                     ; preds = %61
  %70 = load i8*, i8** %7, align 8, !dbg !1307
  %71 = load i8, i8* %70, align 1, !dbg !1310
  %72 = sext i8 %71 to i32, !dbg !1310
  %73 = icmp sgt i32 %72, 0, !dbg !1311
  %74 = xor i1 %73, true, !dbg !1312
  %75 = zext i1 %74 to i32, !dbg !1312
  %76 = sext i32 %75 to i64, !dbg !1313
  %77 = icmp ne i64 %76, 0, !dbg !1314
  br i1 %77, label %78, label %79, !dbg !1315

; <label>:78:                                     ; preds = %69
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 845) #10, !dbg !1316
  unreachable, !dbg !1316

; <label>:79:                                     ; preds = %69
  %80 = load i8*, i8** %7, align 8, !dbg !1319
  %81 = load i8, i8* %80, align 1, !dbg !1320
  %82 = sext i8 %81 to i32, !dbg !1320
  switch i32 %82, label %85 [
    i32 117, label %83
    i32 85, label %84
  ], !dbg !1321

; <label>:83:                                     ; preds = %79
  store i8 1, i8* %12, align 1, !dbg !1322
  store i64 4, i64* %10, align 8, !dbg !1324
  br label %93, !dbg !1325

; <label>:84:                                     ; preds = %79
  store i8 1, i8* %12, align 1, !dbg !1326
  store i64 8, i64* %10, align 8, !dbg !1327
  br label %93, !dbg !1328

; <label>:85:                                     ; preds = %79
  store i64 0, i64* %10, align 8, !dbg !1329
  %86 = load i8*, i8** %7, align 8, !dbg !1330
  %87 = load i8, i8* %86, align 1, !dbg !1331
  %88 = sext i8 %87 to i16, !dbg !1331
  %89 = load i64, i64* %8, align 8, !dbg !1332
  %90 = add i64 %89, 1, !dbg !1332
  store i64 %90, i64* %8, align 8, !dbg !1332
  %91 = load i16*, i16** %6, align 8, !dbg !1333
  %92 = getelementptr inbounds i16, i16* %91, i64 %89, !dbg !1333
  store i16 %88, i16* %92, align 2, !dbg !1334
  br label %93, !dbg !1335

; <label>:93:                                     ; preds = %85, %84, %83
  %94 = load i8*, i8** %7, align 8, !dbg !1336
  %95 = getelementptr inbounds i8, i8* %94, i32 1, !dbg !1336
  store i8* %95, i8** %7, align 8, !dbg !1336
  br label %96, !dbg !1337

; <label>:96:                                     ; preds = %152, %93
  %97 = load i64, i64* %10, align 8, !dbg !1338
  %98 = icmp ne i64 %97, 0, !dbg !1340
  br i1 %98, label %99, label %162, !dbg !1340

; <label>:99:                                     ; preds = %96
  call void @llvm.dbg.declare(metadata i8* %13, metadata !1341, metadata !388), !dbg !1343
  %100 = load i8*, i8** %7, align 8, !dbg !1344
  %101 = load i8, i8* %100, align 1, !dbg !1346
  %102 = sext i8 %101 to i32, !dbg !1346
  %103 = icmp sge i32 %102, 48, !dbg !1347
  br i1 %103, label %104, label %115, !dbg !1348

; <label>:104:                                    ; preds = %99
  %105 = load i8*, i8** %7, align 8, !dbg !1349
  %106 = load i8, i8* %105, align 1, !dbg !1351
  %107 = sext i8 %106 to i32, !dbg !1351
  %108 = icmp sle i32 %107, 57, !dbg !1352
  br i1 %108, label %109, label %115, !dbg !1353

; <label>:109:                                    ; preds = %104
  %110 = load i8*, i8** %7, align 8, !dbg !1354
  %111 = load i8, i8* %110, align 1, !dbg !1356
  %112 = sext i8 %111 to i32, !dbg !1356
  %113 = sub nsw i32 %112, 48, !dbg !1357
  %114 = trunc i32 %113 to i8, !dbg !1356
  store i8 %114, i8* %13, align 1, !dbg !1358
  br label %152, !dbg !1359

; <label>:115:                                    ; preds = %104, %99
  %116 = load i8*, i8** %7, align 8, !dbg !1360
  %117 = load i8, i8* %116, align 1, !dbg !1363
  %118 = sext i8 %117 to i32, !dbg !1363
  %119 = icmp sge i32 %118, 65, !dbg !1364
  br i1 %119, label %120, label %132, !dbg !1365

; <label>:120:                                    ; preds = %115
  %121 = load i8*, i8** %7, align 8, !dbg !1366
  %122 = load i8, i8* %121, align 1, !dbg !1368
  %123 = sext i8 %122 to i32, !dbg !1368
  %124 = icmp sle i32 %123, 70, !dbg !1369
  br i1 %124, label %125, label %132, !dbg !1370

; <label>:125:                                    ; preds = %120
  %126 = load i8*, i8** %7, align 8, !dbg !1371
  %127 = load i8, i8* %126, align 1, !dbg !1373
  %128 = sext i8 %127 to i32, !dbg !1373
  %129 = sub nsw i32 %128, 65, !dbg !1374
  %130 = add nsw i32 %129, 10, !dbg !1375
  %131 = trunc i32 %130 to i8, !dbg !1373
  store i8 %131, i8* %13, align 1, !dbg !1376
  br label %151, !dbg !1377

; <label>:132:                                    ; preds = %120, %115
  %133 = load i8*, i8** %7, align 8, !dbg !1378
  %134 = load i8, i8* %133, align 1, !dbg !1381
  %135 = sext i8 %134 to i32, !dbg !1381
  %136 = icmp sge i32 %135, 97, !dbg !1382
  br i1 %136, label %137, label %149, !dbg !1383

; <label>:137:                                    ; preds = %132
  %138 = load i8*, i8** %7, align 8, !dbg !1384
  %139 = load i8, i8* %138, align 1, !dbg !1386
  %140 = sext i8 %139 to i32, !dbg !1386
  %141 = icmp sle i32 %140, 102, !dbg !1387
  br i1 %141, label %142, label %149, !dbg !1388

; <label>:142:                                    ; preds = %137
  %143 = load i8*, i8** %7, align 8, !dbg !1389
  %144 = load i8, i8* %143, align 1, !dbg !1391
  %145 = sext i8 %144 to i32, !dbg !1391
  %146 = sub nsw i32 %145, 97, !dbg !1392
  %147 = add nsw i32 %146, 10, !dbg !1393
  %148 = trunc i32 %147 to i8, !dbg !1391
  store i8 %148, i8* %13, align 1, !dbg !1394
  br label %150, !dbg !1395

; <label>:149:                                    ; preds = %137, %132
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 883) #10, !dbg !1396
  unreachable, !dbg !1396

; <label>:150:                                    ; preds = %142
  br label %151

; <label>:151:                                    ; preds = %150, %125
  br label %152

; <label>:152:                                    ; preds = %151, %109
  %153 = load i32, i32* %11, align 4, !dbg !1398
  %154 = shl i32 %153, 4, !dbg !1399
  %155 = load i8, i8* %13, align 1, !dbg !1400
  %156 = zext i8 %155 to i32, !dbg !1400
  %157 = or i32 %154, %156, !dbg !1401
  store i32 %157, i32* %11, align 4, !dbg !1402
  %158 = load i8*, i8** %7, align 8, !dbg !1403
  %159 = getelementptr inbounds i8, i8* %158, i32 1, !dbg !1403
  store i8* %159, i8** %7, align 8, !dbg !1403
  %160 = load i64, i64* %10, align 8, !dbg !1404
  %161 = add i64 %160, -1, !dbg !1404
  store i64 %161, i64* %10, align 8, !dbg !1404
  br label %96, !dbg !1405, !llvm.loop !1407

; <label>:162:                                    ; preds = %96
  %163 = load i8, i8* %12, align 1, !dbg !1408
  %164 = icmp ne i8 %163, 0, !dbg !1408
  br i1 %164, label %165, label %203, !dbg !1410

; <label>:165:                                    ; preds = %162
  %166 = load i32, i32* %11, align 4, !dbg !1411
  %167 = icmp ule i32 %166, 1114111, !dbg !1415
  %168 = xor i1 %167, true, !dbg !1416
  %169 = zext i1 %168 to i32, !dbg !1416
  %170 = sext i32 %169 to i64, !dbg !1417
  %171 = icmp ne i64 %170, 0, !dbg !1418
  br i1 %171, label %172, label %173, !dbg !1419

; <label>:172:                                    ; preds = %165
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 893) #10, !dbg !1420
  unreachable, !dbg !1420

; <label>:173:                                    ; preds = %165
  %174 = load i32, i32* %11, align 4, !dbg !1423
  %175 = icmp ule i32 %174, 65535, !dbg !1425
  %176 = select i1 %175, i32 1, i32 2, !dbg !1426
  %177 = icmp eq i32 %176, 1, !dbg !1427
  br i1 %177, label %178, label %185, !dbg !1428

; <label>:178:                                    ; preds = %173
  %179 = load i32, i32* %11, align 4, !dbg !1429
  %180 = trunc i32 %179 to i16, !dbg !1431
  %181 = load i64, i64* %8, align 8, !dbg !1432
  %182 = add i64 %181, 1, !dbg !1432
  store i64 %182, i64* %8, align 8, !dbg !1432
  %183 = load i16*, i16** %6, align 8, !dbg !1433
  %184 = getelementptr inbounds i16, i16* %183, i64 %181, !dbg !1433
  store i16 %180, i16* %184, align 2, !dbg !1434
  br label %202, !dbg !1435

; <label>:185:                                    ; preds = %173
  %186 = load i32, i32* %11, align 4, !dbg !1436
  %187 = lshr i32 %186, 10, !dbg !1438
  %188 = add i32 %187, 55232, !dbg !1439
  %189 = trunc i32 %188 to i16, !dbg !1440
  %190 = load i64, i64* %8, align 8, !dbg !1441
  %191 = add i64 %190, 1, !dbg !1441
  store i64 %191, i64* %8, align 8, !dbg !1441
  %192 = load i16*, i16** %6, align 8, !dbg !1442
  %193 = getelementptr inbounds i16, i16* %192, i64 %190, !dbg !1442
  store i16 %189, i16* %193, align 2, !dbg !1443
  %194 = load i32, i32* %11, align 4, !dbg !1444
  %195 = and i32 %194, 1023, !dbg !1445
  %196 = or i32 %195, 56320, !dbg !1446
  %197 = trunc i32 %196 to i16, !dbg !1447
  %198 = load i64, i64* %8, align 8, !dbg !1448
  %199 = add i64 %198, 1, !dbg !1448
  store i64 %199, i64* %8, align 8, !dbg !1448
  %200 = load i16*, i16** %6, align 8, !dbg !1449
  %201 = getelementptr inbounds i16, i16* %200, i64 %198, !dbg !1449
  store i16 %197, i16* %201, align 2, !dbg !1450
  br label %202

; <label>:202:                                    ; preds = %185, %178
  br label %203, !dbg !1451

; <label>:203:                                    ; preds = %202, %162
  br label %27, !dbg !1452, !llvm.loop !1298

; <label>:204:                                    ; preds = %32
  %205 = load i16*, i16** %6, align 8, !dbg !1453
  %206 = call i8* @Unicode_AllocWithUTF16(i16* %205), !dbg !1454
  store i8* %206, i8** %9, align 8, !dbg !1455
  %207 = load i16*, i16** %6, align 8, !dbg !1456
  %208 = bitcast i16* %207 to i8*, !dbg !1456
  call void @free(i8* %208) #8, !dbg !1457
  %209 = load i8*, i8** %9, align 8, !dbg !1458
  store i8* %209, i8** %3, align 8, !dbg !1459
  br label %210, !dbg !1459

; <label>:210:                                    ; preds = %204, %17
  %211 = load i8*, i8** %3, align 8, !dbg !1460
  ret i8* %211, !dbg !1460
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Unicode_AllocWithUTF16(i16*) #3 !dbg !1461 {
  %2 = alloca i16*, align 8
  store i16* %0, i16** %2, align 8
  call void @llvm.dbg.declare(metadata i16** %2, metadata !1464, metadata !388), !dbg !1465
  %3 = load i16*, i16** %2, align 8, !dbg !1466
  %4 = bitcast i16* %3 to i8*, !dbg !1466
  %5 = call i8* @Unicode_AllocWithLength(i8* %4, i64 -1, i32 1), !dbg !1467
  ret i8* %5, !dbg !1468
}

declare i8* @Unicode_AllocWithLength(i8*, i64, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!371, !372}
!llvm.ident = !{!373}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !336, globals: !364)
!1 = !DIFile(filename: "unicodeSimpleBase.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1010")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 58, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/unicodeTypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1010")
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
!336 = !{!337, !340, !341, !348, !349, !354, !359, !350, !362}
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!339 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64, align: 64)
!342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !344, line: 177, baseType: !345)
!344 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1010")
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !346, line: 48, baseType: !347)
!346 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line1010")
!347 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64, align: 64)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64, align: 64)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "utf16_t", file: !344, line: 1139, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !344, line: 175, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !346, line: 49, baseType: !353)
!353 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64, align: 64)
!355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !356)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8", file: !344, line: 178, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !346, line: 36, baseType: !358)
!358 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !344, line: 173, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !346, line: 51, baseType: !361)
!361 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64, align: 64)
!363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !350)
!364 = !{!365}
!365 = distinct !DIGlobalVariable(name: "UNICODE_UTF16_CODE_UNITS_PADDING", scope: !0, file: !366, line: 53, type: !367, isLocal: true, isDefinition: true, variable: i64 10)
!366 = !DIFile(filename: "unicodeSimpleBase.c", directory: "/home/lichi/Desktop/open-vm-tools/line1010")
!367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !369, line: 216, baseType: !370)
!369 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line1010")
!370 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!371 = !{i32 2, !"Dwarf Version", i32 4}
!372 = !{i32 2, !"Debug Info Version", i32 3}
!373 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!374 = distinct !DISubprogram(name: "UnicodeAllocInternal", scope: !366, file: !366, line: 90, type: !375, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !386)
!375 = !DISubroutineType(types: !376)
!376 = !{!348, !377, !379, !384, !385}
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64, align: 64)
!378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !380, line: 109, baseType: !381)
!380 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1010")
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !382, line: 172, baseType: !383)
!382 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1010")
!383 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "StringEncoding", file: !4, line: 445, baseType: !3)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !344, line: 230, baseType: !339)
!386 = !{}
!387 = !DILocalVariable(name: "buffer", arg: 1, scope: !374, file: !366, line: 90, type: !377)
!388 = !DIExpression()
!389 = !DILocation(line: 90, column: 34, scope: !374)
!390 = !DILocalVariable(name: "lengthInBytes", arg: 2, scope: !374, file: !366, line: 91, type: !379)
!391 = !DILocation(line: 91, column: 30, scope: !374)
!392 = !DILocalVariable(name: "encoding", arg: 3, scope: !374, file: !366, line: 92, type: !384)
!393 = !DILocation(line: 92, column: 37, scope: !374)
!394 = !DILocalVariable(name: "strict", arg: 4, scope: !374, file: !366, line: 93, type: !385)
!395 = !DILocation(line: 93, column: 27, scope: !374)
!396 = !DILocalVariable(name: "utf8Result", scope: !374, file: !366, line: 95, type: !348)
!397 = !DILocation(line: 95, column: 10, scope: !374)
!398 = !DILocation(line: 101, column: 9, scope: !399)
!399 = distinct !DILexicalBlock(scope: !374, file: !366, line: 101, column: 8)
!400 = !DILocation(line: 101, column: 8, scope: !374)
!401 = !DILocation(line: 102, column: 59, scope: !402)
!402 = distinct !DILexicalBlock(scope: !399, file: !366, line: 101, column: 17)
!403 = !DILocation(line: 102, column: 32, scope: !402)
!404 = !DILocation(line: 103, column: 32, scope: !402)
!405 = !DILocation(line: 103, column: 40, scope: !402)
!406 = !DILocation(line: 102, column: 7, scope: !407)
!407 = !DILexicalBlockFile(scope: !402, file: !366, discriminator: 1)
!408 = !DILocation(line: 105, column: 14, scope: !402)
!409 = !DILocation(line: 105, column: 7, scope: !402)
!410 = !DILocation(line: 108, column: 12, scope: !374)
!411 = !DILocation(line: 108, column: 4, scope: !374)
!412 = !DILocation(line: 111, column: 33, scope: !413)
!413 = distinct !DILexicalBlock(scope: !414, file: !366, line: 111, column: 11)
!414 = distinct !DILexicalBlock(scope: !374, file: !366, line: 108, column: 22)
!415 = !DILocation(line: 111, column: 41, scope: !413)
!416 = !DILocation(line: 111, column: 56, scope: !413)
!417 = !DILocation(line: 111, column: 11, scope: !413)
!418 = !DILocation(line: 111, column: 11, scope: !414)
!419 = !DILocation(line: 112, column: 41, scope: !420)
!420 = distinct !DILexicalBlock(scope: !413, file: !366, line: 111, column: 67)
!421 = !DILocation(line: 112, column: 51, scope: !420)
!422 = !DILocation(line: 112, column: 23, scope: !420)
!423 = !DILocation(line: 112, column: 21, scope: !420)
!424 = !DILocation(line: 113, column: 7, scope: !420)
!425 = !DILocation(line: 114, column: 7, scope: !414)
!426 = !DILocation(line: 117, column: 43, scope: !414)
!427 = !DILocation(line: 118, column: 29, scope: !414)
!428 = !DILocation(line: 117, column: 7, scope: !414)
!429 = !DILocation(line: 121, column: 7, scope: !414)
!430 = !DILocation(line: 123, column: 59, scope: !414)
!431 = !DILocation(line: 123, column: 32, scope: !414)
!432 = !DILocation(line: 124, column: 32, scope: !414)
!433 = !DILocation(line: 124, column: 40, scope: !414)
!434 = !DILocation(line: 123, column: 7, scope: !435)
!435 = !DILexicalBlockFile(scope: !414, file: !366, discriminator: 1)
!436 = !DILocation(line: 126, column: 7, scope: !414)
!437 = !DILocation(line: 129, column: 11, scope: !374)
!438 = !DILocation(line: 129, column: 4, scope: !374)
!439 = !DILocation(line: 130, column: 1, scope: !374)
!440 = distinct !DISubprogram(name: "Unicode_IsBufferValid", scope: !366, file: !366, line: 186, type: !441, isLocal: false, isDefinition: true, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !386)
!441 = !DISubroutineType(types: !442)
!442 = !{!385, !377, !379, !384}
!443 = !DILocalVariable(name: "buffer", arg: 1, scope: !440, file: !366, line: 186, type: !377)
!444 = !DILocation(line: 186, column: 35, scope: !440)
!445 = !DILocalVariable(name: "lengthInBytes", arg: 2, scope: !440, file: !366, line: 187, type: !379)
!446 = !DILocation(line: 187, column: 31, scope: !440)
!447 = !DILocalVariable(name: "encoding", arg: 3, scope: !440, file: !366, line: 188, type: !384)
!448 = !DILocation(line: 188, column: 38, scope: !440)
!449 = !DILocation(line: 190, column: 8, scope: !450)
!450 = distinct !DILexicalBlock(scope: !440, file: !366, line: 190, column: 8)
!451 = !DILocation(line: 190, column: 15, scope: !450)
!452 = !DILocation(line: 190, column: 8, scope: !440)
!453 = !DILocation(line: 192, column: 7, scope: !454)
!454 = distinct !DILexicalBlock(scope: !450, file: !366, line: 190, column: 23)
!455 = !DILocation(line: 195, column: 39, scope: !440)
!456 = !DILocation(line: 195, column: 15, scope: !440)
!457 = !DILocation(line: 195, column: 13, scope: !440)
!458 = !DILocation(line: 197, column: 12, scope: !440)
!459 = !DILocation(line: 197, column: 4, scope: !440)
!460 = !DILocation(line: 199, column: 33, scope: !461)
!461 = distinct !DILexicalBlock(scope: !440, file: !366, line: 197, column: 22)
!462 = !DILocation(line: 199, column: 41, scope: !461)
!463 = !DILocation(line: 199, column: 56, scope: !461)
!464 = !DILocation(line: 199, column: 14, scope: !461)
!465 = !DILocation(line: 199, column: 7, scope: !461)
!466 = !DILocation(line: 202, column: 11, scope: !467)
!467 = distinct !DILexicalBlock(scope: !461, file: !366, line: 202, column: 11)
!468 = !DILocation(line: 202, column: 25, scope: !467)
!469 = !DILocation(line: 202, column: 11, scope: !461)
!470 = !DILocation(line: 203, column: 43, scope: !471)
!471 = distinct !DILexicalBlock(scope: !467, file: !366, line: 202, column: 32)
!472 = !DILocation(line: 203, column: 17, scope: !471)
!473 = !DILocation(line: 203, column: 10, scope: !471)
!474 = !DILocation(line: 205, column: 37, scope: !475)
!475 = distinct !DILexicalBlock(scope: !467, file: !366, line: 204, column: 14)
!476 = !DILocation(line: 205, column: 45, scope: !475)
!477 = !DILocation(line: 205, column: 17, scope: !475)
!478 = !DILocation(line: 205, column: 10, scope: !475)
!479 = !DILocation(line: 209, column: 11, scope: !480)
!480 = distinct !DILexicalBlock(scope: !461, file: !366, line: 209, column: 11)
!481 = !DILocation(line: 209, column: 25, scope: !480)
!482 = !DILocation(line: 209, column: 11, scope: !461)
!483 = !DILocation(line: 210, column: 48, scope: !484)
!484 = distinct !DILexicalBlock(scope: !480, file: !366, line: 209, column: 32)
!485 = !DILocation(line: 210, column: 56, scope: !484)
!486 = !DILocation(line: 210, column: 26, scope: !484)
!487 = !DILocation(line: 210, column: 24, scope: !484)
!488 = !DILocation(line: 211, column: 7, scope: !484)
!489 = !DILocation(line: 213, column: 31, scope: !461)
!490 = !DILocation(line: 213, column: 39, scope: !461)
!491 = !DILocation(line: 214, column: 58, scope: !461)
!492 = !DILocation(line: 214, column: 31, scope: !461)
!493 = !DILocation(line: 213, column: 14, scope: !461)
!494 = !DILocation(line: 213, column: 7, scope: !461)
!495 = !DILocation(line: 216, column: 1, scope: !440)
!496 = distinct !DISubprogram(name: "Unicode_IsStringValidUTF8", scope: !366, file: !366, line: 151, type: !497, isLocal: false, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !386)
!497 = !DISubroutineType(types: !498)
!498 = !{!385, !337}
!499 = !DILocalVariable(name: "str", arg: 1, scope: !496, file: !366, line: 151, type: !337)
!500 = !DILocation(line: 151, column: 39, scope: !496)
!501 = !DILocation(line: 153, column: 37, scope: !496)
!502 = !DILocation(line: 153, column: 11, scope: !496)
!503 = !DILocation(line: 153, column: 4, scope: !496)
!504 = distinct !DISubprogram(name: "Unicode_Duplicate", scope: !366, file: !366, line: 237, type: !505, isLocal: false, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !386)
!505 = !DISubroutineType(types: !506)
!506 = !{!348, !337}
!507 = !DILocalVariable(name: "str", arg: 1, scope: !504, file: !366, line: 237, type: !337)
!508 = !DILocation(line: 237, column: 31, scope: !504)
!509 = !DILocation(line: 239, column: 28, scope: !504)
!510 = !DILocation(line: 239, column: 11, scope: !504)
!511 = !DILocation(line: 239, column: 4, scope: !504)
!512 = distinct !DISubprogram(name: "Unicode_AllocList", scope: !366, file: !366, line: 265, type: !513, isLocal: false, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !386)
!513 = !DISubroutineType(types: !514)
!514 = !{!515, !515, !379, !384}
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, align: 64)
!516 = !DILocalVariable(name: "srcList", arg: 1, scope: !512, file: !366, line: 265, type: !515)
!517 = !DILocation(line: 265, column: 26, scope: !512)
!518 = !DILocalVariable(name: "length", arg: 2, scope: !512, file: !366, line: 266, type: !379)
!519 = !DILocation(line: 266, column: 27, scope: !512)
!520 = !DILocalVariable(name: "encoding", arg: 3, scope: !512, file: !366, line: 267, type: !384)
!521 = !DILocation(line: 267, column: 34, scope: !512)
!522 = !DILocalVariable(name: "dstList", scope: !512, file: !366, line: 269, type: !515)
!523 = !DILocation(line: 269, column: 11, scope: !512)
!524 = !DILocalVariable(name: "i", scope: !512, file: !366, line: 270, type: !379)
!525 = !DILocation(line: 270, column: 12, scope: !512)
!526 = !DILocation(line: 274, column: 39, scope: !512)
!527 = !DILocation(line: 274, column: 15, scope: !512)
!528 = !DILocation(line: 274, column: 13, scope: !512)
!529 = !DILocation(line: 276, column: 8, scope: !530)
!530 = distinct !DILexicalBlock(scope: !512, file: !366, line: 276, column: 8)
!531 = !DILocation(line: 276, column: 15, scope: !530)
!532 = !DILocation(line: 276, column: 8, scope: !512)
!533 = !DILocation(line: 277, column: 14, scope: !534)
!534 = distinct !DILexicalBlock(scope: !530, file: !366, line: 276, column: 20)
!535 = !DILocation(line: 278, column: 7, scope: !534)
!536 = !DILocation(line: 278, column: 22, scope: !537)
!537 = !DILexicalBlockFile(scope: !534, file: !366, discriminator: 1)
!538 = !DILocation(line: 278, column: 14, scope: !537)
!539 = !DILocation(line: 278, column: 30, scope: !537)
!540 = !DILocation(line: 278, column: 7, scope: !537)
!541 = !DILocation(line: 279, column: 16, scope: !542)
!542 = distinct !DILexicalBlock(scope: !534, file: !366, line: 278, column: 38)
!543 = !DILocation(line: 278, column: 7, scope: !544)
!544 = !DILexicalBlockFile(scope: !534, file: !366, discriminator: 2)
!545 = distinct !{!545, !535}
!546 = !DILocation(line: 283, column: 13, scope: !534)
!547 = !DILocation(line: 284, column: 4, scope: !534)
!548 = !DILocation(line: 286, column: 31, scope: !512)
!549 = !DILocation(line: 286, column: 38, scope: !512)
!550 = !DILocation(line: 286, column: 14, scope: !512)
!551 = !DILocation(line: 286, column: 12, scope: !512)
!552 = !DILocation(line: 288, column: 11, scope: !553)
!553 = distinct !DILexicalBlock(scope: !512, file: !366, line: 288, column: 4)
!554 = !DILocation(line: 288, column: 9, scope: !553)
!555 = !DILocation(line: 288, column: 16, scope: !556)
!556 = !DILexicalBlockFile(scope: !557, file: !366, discriminator: 1)
!557 = distinct !DILexicalBlock(scope: !553, file: !366, line: 288, column: 4)
!558 = !DILocation(line: 288, column: 20, scope: !556)
!559 = !DILocation(line: 288, column: 18, scope: !556)
!560 = !DILocation(line: 288, column: 4, scope: !556)
!561 = !DILocation(line: 289, column: 42, scope: !562)
!562 = distinct !DILexicalBlock(scope: !557, file: !366, line: 288, column: 33)
!563 = !DILocation(line: 289, column: 34, scope: !562)
!564 = !DILocation(line: 289, column: 46, scope: !562)
!565 = !DILocation(line: 289, column: 20, scope: !562)
!566 = !DILocation(line: 289, column: 15, scope: !562)
!567 = !DILocation(line: 289, column: 7, scope: !562)
!568 = !DILocation(line: 289, column: 18, scope: !562)
!569 = !DILocation(line: 290, column: 4, scope: !562)
!570 = !DILocation(line: 288, column: 29, scope: !571)
!571 = !DILexicalBlockFile(scope: !557, file: !366, discriminator: 2)
!572 = !DILocation(line: 288, column: 4, scope: !571)
!573 = distinct !{!573, !574}
!574 = !DILocation(line: 288, column: 4, scope: !512)
!575 = !DILocation(line: 292, column: 11, scope: !512)
!576 = !DILocation(line: 292, column: 4, scope: !512)
!577 = distinct !DISubprogram(name: "Unicode_Alloc", scope: !578, file: !578, line: 111, type: !579, isLocal: true, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !386)
!578 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/unicodeBase.h", directory: "/home/lichi/Desktop/open-vm-tools/line1010")
!579 = !DISubroutineType(types: !580)
!580 = !{!348, !377, !384}
!581 = !DILocalVariable(name: "buffer", arg: 1, scope: !577, file: !578, line: 111, type: !377)
!582 = !DILocation(line: 111, column: 27, scope: !577)
!583 = !DILocalVariable(name: "encoding", arg: 2, scope: !577, file: !578, line: 112, type: !384)
!584 = !DILocation(line: 112, column: 30, scope: !577)
!585 = !DILocation(line: 114, column: 35, scope: !577)
!586 = !DILocation(line: 114, column: 47, scope: !577)
!587 = !DILocation(line: 114, column: 11, scope: !577)
!588 = !DILocation(line: 114, column: 4, scope: !577)
!589 = distinct !DISubprogram(name: "Unicode_GetAllocList", scope: !366, file: !366, line: 321, type: !590, isLocal: false, isDefinition: true, scopeLine: 324, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !386)
!590 = !DISubroutineType(types: !591)
!591 = !{!515, !592, !379, !384}
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64, align: 64)
!593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !348)
!594 = !DILocalVariable(name: "srcList", arg: 1, scope: !589, file: !366, line: 321, type: !592)
!595 = !DILocation(line: 321, column: 34, scope: !589)
!596 = !DILocalVariable(name: "length", arg: 2, scope: !589, file: !366, line: 322, type: !379)
!597 = !DILocation(line: 322, column: 30, scope: !589)
!598 = !DILocalVariable(name: "encoding", arg: 3, scope: !589, file: !366, line: 323, type: !384)
!599 = !DILocation(line: 323, column: 37, scope: !589)
!600 = !DILocalVariable(name: "dstList", scope: !589, file: !366, line: 325, type: !515)
!601 = !DILocation(line: 325, column: 11, scope: !589)
!602 = !DILocalVariable(name: "i", scope: !589, file: !366, line: 326, type: !379)
!603 = !DILocation(line: 326, column: 12, scope: !589)
!604 = !DILocation(line: 330, column: 39, scope: !589)
!605 = !DILocation(line: 330, column: 15, scope: !589)
!606 = !DILocation(line: 330, column: 13, scope: !589)
!607 = !DILocation(line: 332, column: 8, scope: !608)
!608 = distinct !DILexicalBlock(scope: !589, file: !366, line: 332, column: 8)
!609 = !DILocation(line: 332, column: 15, scope: !608)
!610 = !DILocation(line: 332, column: 8, scope: !589)
!611 = !DILocation(line: 333, column: 14, scope: !612)
!612 = distinct !DILexicalBlock(scope: !608, file: !366, line: 332, column: 20)
!613 = !DILocation(line: 334, column: 7, scope: !612)
!614 = !DILocation(line: 334, column: 22, scope: !615)
!615 = !DILexicalBlockFile(scope: !612, file: !366, discriminator: 1)
!616 = !DILocation(line: 334, column: 14, scope: !615)
!617 = !DILocation(line: 334, column: 30, scope: !615)
!618 = !DILocation(line: 334, column: 7, scope: !615)
!619 = !DILocation(line: 335, column: 16, scope: !620)
!620 = distinct !DILexicalBlock(scope: !612, file: !366, line: 334, column: 38)
!621 = !DILocation(line: 334, column: 7, scope: !622)
!622 = !DILexicalBlockFile(scope: !612, file: !366, discriminator: 2)
!623 = distinct !{!623, !613}
!624 = !DILocation(line: 339, column: 13, scope: !612)
!625 = !DILocation(line: 340, column: 4, scope: !612)
!626 = !DILocation(line: 342, column: 31, scope: !589)
!627 = !DILocation(line: 342, column: 38, scope: !589)
!628 = !DILocation(line: 342, column: 14, scope: !589)
!629 = !DILocation(line: 342, column: 12, scope: !589)
!630 = !DILocation(line: 344, column: 11, scope: !631)
!631 = distinct !DILexicalBlock(scope: !589, file: !366, line: 344, column: 4)
!632 = !DILocation(line: 344, column: 9, scope: !631)
!633 = !DILocation(line: 344, column: 16, scope: !634)
!634 = !DILexicalBlockFile(scope: !635, file: !366, discriminator: 1)
!635 = distinct !DILexicalBlock(scope: !631, file: !366, line: 344, column: 4)
!636 = !DILocation(line: 344, column: 20, scope: !634)
!637 = !DILocation(line: 344, column: 18, scope: !634)
!638 = !DILocation(line: 344, column: 4, scope: !634)
!639 = !DILocation(line: 345, column: 50, scope: !640)
!640 = distinct !DILexicalBlock(scope: !635, file: !366, line: 344, column: 33)
!641 = !DILocation(line: 345, column: 42, scope: !640)
!642 = !DILocation(line: 345, column: 54, scope: !640)
!643 = !DILocation(line: 345, column: 20, scope: !640)
!644 = !DILocation(line: 345, column: 15, scope: !640)
!645 = !DILocation(line: 345, column: 7, scope: !640)
!646 = !DILocation(line: 345, column: 18, scope: !640)
!647 = !DILocation(line: 346, column: 19, scope: !648)
!648 = distinct !DILexicalBlock(scope: !640, file: !366, line: 346, column: 11)
!649 = !DILocation(line: 346, column: 11, scope: !648)
!650 = !DILocation(line: 346, column: 22, scope: !648)
!651 = !DILocation(line: 346, column: 29, scope: !648)
!652 = !DILocation(line: 346, column: 40, scope: !653)
!653 = !DILexicalBlockFile(scope: !648, file: !366, discriminator: 1)
!654 = !DILocation(line: 346, column: 32, scope: !653)
!655 = !DILocation(line: 346, column: 43, scope: !653)
!656 = !DILocation(line: 346, column: 11, scope: !653)
!657 = !DILocation(line: 347, column: 10, scope: !658)
!658 = distinct !DILexicalBlock(scope: !648, file: !366, line: 346, column: 52)
!659 = !DILocation(line: 347, column: 17, scope: !660)
!660 = !DILexicalBlockFile(scope: !658, file: !366, discriminator: 1)
!661 = !DILocation(line: 347, column: 21, scope: !660)
!662 = !DILocation(line: 347, column: 10, scope: !660)
!663 = !DILocation(line: 348, column: 26, scope: !664)
!664 = distinct !DILexicalBlock(scope: !658, file: !366, line: 347, column: 27)
!665 = !DILocation(line: 348, column: 18, scope: !664)
!666 = !DILocation(line: 348, column: 13, scope: !664)
!667 = !DILocation(line: 347, column: 10, scope: !668)
!668 = !DILexicalBlockFile(scope: !658, file: !366, discriminator: 2)
!669 = distinct !{!669, !657}
!670 = !DILocation(line: 350, column: 15, scope: !658)
!671 = !DILocation(line: 350, column: 10, scope: !658)
!672 = !DILocation(line: 351, column: 10, scope: !658)
!673 = !DILocation(line: 353, column: 4, scope: !640)
!674 = !DILocation(line: 344, column: 29, scope: !675)
!675 = !DILexicalBlockFile(scope: !635, file: !366, discriminator: 2)
!676 = !DILocation(line: 344, column: 4, scope: !675)
!677 = distinct !{!677, !678}
!678 = !DILocation(line: 344, column: 4, scope: !589)
!679 = !DILocation(line: 355, column: 11, scope: !589)
!680 = !DILocation(line: 355, column: 4, scope: !589)
!681 = !DILocation(line: 356, column: 1, scope: !589)
!682 = distinct !DISubprogram(name: "Unicode_GetAllocBytes", scope: !366, file: !366, line: 648, type: !683, isLocal: false, isDefinition: true, scopeLine: 650, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !386)
!683 = !DISubroutineType(types: !684)
!684 = !{!340, !337, !384}
!685 = !DILocalVariable(name: "str", arg: 1, scope: !682, file: !366, line: 648, type: !337)
!686 = !DILocation(line: 648, column: 35, scope: !682)
!687 = !DILocalVariable(name: "encoding", arg: 2, scope: !682, file: !366, line: 649, type: !384)
!688 = !DILocation(line: 649, column: 38, scope: !682)
!689 = !DILocation(line: 651, column: 8, scope: !690)
!690 = distinct !DILexicalBlock(scope: !682, file: !366, line: 651, column: 8)
!691 = !DILocation(line: 651, column: 12, scope: !690)
!692 = !DILocation(line: 651, column: 8, scope: !682)
!693 = !DILocation(line: 652, column: 7, scope: !694)
!694 = distinct !DILexicalBlock(scope: !690, file: !366, line: 651, column: 20)
!695 = !DILocation(line: 655, column: 40, scope: !682)
!696 = !DILocation(line: 655, column: 45, scope: !682)
!697 = !DILocation(line: 655, column: 11, scope: !682)
!698 = !DILocation(line: 655, column: 4, scope: !682)
!699 = !DILocation(line: 656, column: 1, scope: !682)
!700 = distinct !DISubprogram(name: "Unicode_LengthInCodeUnits", scope: !366, file: !366, line: 376, type: !701, isLocal: false, isDefinition: true, scopeLine: 377, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !386)
!701 = !DISubroutineType(types: !702)
!702 = !{!703, !337}
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "UnicodeIndex", file: !4, line: 41, baseType: !379)
!704 = !DILocalVariable(name: "str", arg: 1, scope: !700, file: !366, line: 376, type: !337)
!705 = !DILocation(line: 376, column: 39, scope: !700)
!706 = !DILocation(line: 378, column: 32, scope: !700)
!707 = !DILocation(line: 378, column: 11, scope: !700)
!708 = !DILocation(line: 378, column: 4, scope: !700)
!709 = distinct !DISubprogram(name: "Unicode_BytesRequired", scope: !366, file: !366, line: 404, type: !710, isLocal: false, isDefinition: true, scopeLine: 406, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !386)
!710 = !DISubroutineType(types: !711)
!711 = !{!368, !337, !384}
!712 = !DILocalVariable(name: "str", arg: 1, scope: !709, file: !366, line: 404, type: !337)
!713 = !DILocation(line: 404, column: 35, scope: !709)
!714 = !DILocalVariable(name: "encoding", arg: 2, scope: !709, file: !366, line: 405, type: !384)
!715 = !DILocation(line: 405, column: 38, scope: !709)
!716 = !DILocalVariable(name: "utf8", scope: !709, file: !366, line: 407, type: !341)
!717 = !DILocation(line: 407, column: 17, scope: !709)
!718 = !DILocation(line: 407, column: 39, scope: !709)
!719 = !DILocalVariable(name: "basicCodePointSize", scope: !709, file: !366, line: 410, type: !368)
!720 = !DILocation(line: 410, column: 11, scope: !709)
!721 = !DILocalVariable(name: "supplementaryCodePointSize", scope: !709, file: !366, line: 413, type: !368)
!722 = !DILocation(line: 413, column: 11, scope: !709)
!723 = !DILocalVariable(name: "result", scope: !709, file: !366, line: 415, type: !368)
!724 = !DILocation(line: 415, column: 11, scope: !709)
!725 = !DILocation(line: 417, column: 39, scope: !709)
!726 = !DILocation(line: 417, column: 15, scope: !709)
!727 = !DILocation(line: 417, column: 13, scope: !709)
!728 = !DILocation(line: 419, column: 12, scope: !709)
!729 = !DILocation(line: 419, column: 4, scope: !709)
!730 = !DILocation(line: 421, column: 35, scope: !731)
!731 = distinct !DILexicalBlock(scope: !709, file: !366, line: 419, column: 22)
!732 = !DILocation(line: 421, column: 14, scope: !731)
!733 = !DILocation(line: 421, column: 41, scope: !731)
!734 = !DILocation(line: 421, column: 7, scope: !731)
!735 = !DILocation(line: 426, column: 55, scope: !731)
!736 = !DILocation(line: 426, column: 26, scope: !731)
!737 = !DILocation(line: 427, column: 7, scope: !731)
!738 = !DILocation(line: 431, column: 26, scope: !731)
!739 = !DILocation(line: 432, column: 34, scope: !731)
!740 = !DILocation(line: 433, column: 7, scope: !731)
!741 = !DILocation(line: 437, column: 26, scope: !731)
!742 = !DILocation(line: 438, column: 34, scope: !731)
!743 = !DILocation(line: 439, column: 7, scope: !731)
!744 = !DILocation(line: 444, column: 26, scope: !731)
!745 = !DILocation(line: 445, column: 34, scope: !731)
!746 = !DILocation(line: 446, column: 7, scope: !731)
!747 = !DILocation(line: 454, column: 4, scope: !709)
!748 = !DILocation(line: 454, column: 12, scope: !749)
!749 = !DILexicalBlockFile(scope: !709, file: !366, discriminator: 1)
!750 = !DILocation(line: 454, column: 11, scope: !749)
!751 = !DILocation(line: 454, column: 4, scope: !749)
!752 = !DILocalVariable(name: "utf8NumBytesRemaining", scope: !753, file: !366, line: 455, type: !368)
!753 = distinct !DILexicalBlock(scope: !709, file: !366, line: 454, column: 18)
!754 = !DILocation(line: 455, column: 14, scope: !753)
!755 = !DILocation(line: 458, column: 12, scope: !756)
!756 = distinct !DILexicalBlock(scope: !753, file: !366, line: 458, column: 11)
!757 = !DILocation(line: 458, column: 11, scope: !756)
!758 = !DILocation(line: 458, column: 17, scope: !756)
!759 = !DILocation(line: 458, column: 11, scope: !753)
!760 = !DILocation(line: 459, column: 32, scope: !761)
!761 = distinct !DILexicalBlock(scope: !756, file: !366, line: 458, column: 26)
!762 = !DILocation(line: 460, column: 20, scope: !761)
!763 = !DILocation(line: 460, column: 17, scope: !761)
!764 = !DILocation(line: 461, column: 7, scope: !761)
!765 = !DILocation(line: 461, column: 19, scope: !766)
!766 = !DILexicalBlockFile(scope: !767, file: !366, discriminator: 1)
!767 = distinct !DILexicalBlock(scope: !756, file: !366, line: 461, column: 18)
!768 = !DILocation(line: 461, column: 18, scope: !766)
!769 = !DILocation(line: 461, column: 24, scope: !766)
!770 = !DILocation(line: 462, column: 32, scope: !771)
!771 = distinct !DILexicalBlock(scope: !767, file: !366, line: 461, column: 32)
!772 = !DILocation(line: 463, column: 20, scope: !771)
!773 = !DILocation(line: 463, column: 17, scope: !771)
!774 = !DILocation(line: 464, column: 7, scope: !771)
!775 = !DILocation(line: 464, column: 19, scope: !776)
!776 = !DILexicalBlockFile(scope: !777, file: !366, discriminator: 1)
!777 = distinct !DILexicalBlock(scope: !767, file: !366, line: 464, column: 18)
!778 = !DILocation(line: 464, column: 18, scope: !776)
!779 = !DILocation(line: 464, column: 24, scope: !776)
!780 = !DILocation(line: 465, column: 32, scope: !781)
!781 = distinct !DILexicalBlock(scope: !777, file: !366, line: 464, column: 32)
!782 = !DILocation(line: 466, column: 20, scope: !781)
!783 = !DILocation(line: 466, column: 17, scope: !781)
!784 = !DILocation(line: 467, column: 7, scope: !781)
!785 = !DILocation(line: 467, column: 19, scope: !786)
!786 = !DILexicalBlockFile(scope: !787, file: !366, discriminator: 1)
!787 = distinct !DILexicalBlock(scope: !777, file: !366, line: 467, column: 18)
!788 = !DILocation(line: 467, column: 18, scope: !786)
!789 = !DILocation(line: 467, column: 24, scope: !786)
!790 = !DILocation(line: 468, column: 32, scope: !791)
!791 = distinct !DILexicalBlock(scope: !787, file: !366, line: 467, column: 32)
!792 = !DILocation(line: 469, column: 20, scope: !791)
!793 = !DILocation(line: 469, column: 17, scope: !791)
!794 = !DILocation(line: 470, column: 7, scope: !791)
!795 = !DILocation(line: 472, column: 10, scope: !796)
!796 = distinct !DILexicalBlock(scope: !787, file: !366, line: 470, column: 14)
!797 = !DILocation(line: 475, column: 7, scope: !753)
!798 = !DILocation(line: 475, column: 15, scope: !799)
!799 = !DILexicalBlockFile(scope: !753, file: !366, discriminator: 1)
!800 = !DILocation(line: 475, column: 14, scope: !799)
!801 = !DILocation(line: 475, column: 20, scope: !799)
!802 = !DILocation(line: 475, column: 23, scope: !803)
!803 = !DILexicalBlockFile(scope: !753, file: !366, discriminator: 2)
!804 = !DILocation(line: 475, column: 20, scope: !803)
!805 = !DILocation(line: 475, column: 7, scope: !806)
!806 = !DILexicalBlockFile(scope: !753, file: !366, discriminator: 3)
!807 = !DILocation(line: 476, column: 31, scope: !808)
!808 = distinct !DILexicalBlock(scope: !753, file: !366, line: 475, column: 46)
!809 = !DILocation(line: 477, column: 14, scope: !808)
!810 = !DILocation(line: 475, column: 7, scope: !811)
!811 = !DILexicalBlockFile(scope: !753, file: !366, discriminator: 4)
!812 = distinct !{!812, !797}
!813 = !DILocation(line: 480, column: 11, scope: !814)
!814 = distinct !DILexicalBlock(scope: !753, file: !366, line: 480, column: 11)
!815 = !DILocation(line: 480, column: 33, scope: !814)
!816 = !DILocation(line: 480, column: 11, scope: !753)
!817 = !DILocation(line: 482, column: 10, scope: !818)
!818 = distinct !DILexicalBlock(scope: !814, file: !366, line: 480, column: 38)
!819 = !DILocation(line: 454, column: 4, scope: !820)
!820 = !DILexicalBlockFile(scope: !709, file: !366, discriminator: 2)
!821 = distinct !{!821, !747}
!822 = !DILocation(line: 487, column: 49, scope: !709)
!823 = !DILocation(line: 487, column: 47, scope: !709)
!824 = !DILocation(line: 487, column: 11, scope: !709)
!825 = !DILocation(line: 489, column: 11, scope: !709)
!826 = !DILocation(line: 489, column: 4, scope: !709)
!827 = !DILocation(line: 490, column: 1, scope: !709)
!828 = distinct !DISubprogram(name: "Unicode_CopyBytes", scope: !366, file: !366, line: 518, type: !829, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !386)
!829 = !DISubroutineType(types: !830)
!830 = !{!385, !340, !337, !368, !831, !384}
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64, align: 64)
!832 = !DILocalVariable(name: "destBuffer", arg: 1, scope: !828, file: !366, line: 518, type: !340)
!833 = !DILocation(line: 518, column: 25, scope: !828)
!834 = !DILocalVariable(name: "srcBuffer", arg: 2, scope: !828, file: !366, line: 519, type: !337)
!835 = !DILocation(line: 519, column: 31, scope: !828)
!836 = !DILocalVariable(name: "maxLengthInBytes", arg: 3, scope: !828, file: !366, line: 520, type: !368)
!837 = !DILocation(line: 520, column: 26, scope: !828)
!838 = !DILocalVariable(name: "retLength", arg: 4, scope: !828, file: !366, line: 521, type: !831)
!839 = !DILocation(line: 521, column: 27, scope: !828)
!840 = !DILocalVariable(name: "encoding", arg: 5, scope: !828, file: !366, line: 522, type: !384)
!841 = !DILocation(line: 522, column: 34, scope: !828)
!842 = !DILocalVariable(name: "utf8Str", scope: !828, file: !366, line: 524, type: !337)
!843 = !DILocation(line: 524, column: 16, scope: !828)
!844 = !DILocation(line: 524, column: 40, scope: !828)
!845 = !DILocalVariable(name: "success", scope: !828, file: !366, line: 525, type: !385)
!846 = !DILocation(line: 525, column: 9, scope: !828)
!847 = !DILocalVariable(name: "copyBytes", scope: !828, file: !366, line: 526, type: !368)
!848 = !DILocation(line: 526, column: 11, scope: !828)
!849 = !DILocation(line: 528, column: 39, scope: !828)
!850 = !DILocation(line: 528, column: 15, scope: !828)
!851 = !DILocation(line: 528, column: 13, scope: !828)
!852 = !DILocation(line: 530, column: 12, scope: !828)
!853 = !DILocation(line: 530, column: 4, scope: !828)
!854 = !DILocation(line: 532, column: 31, scope: !855)
!855 = distinct !DILexicalBlock(scope: !856, file: !366, line: 532, column: 11)
!856 = distinct !DILexicalBlock(scope: !828, file: !366, line: 530, column: 22)
!857 = !DILocation(line: 532, column: 44, scope: !855)
!858 = !DILocation(line: 532, column: 12, scope: !855)
!859 = !DILocation(line: 532, column: 11, scope: !856)
!860 = !DILocation(line: 533, column: 10, scope: !861)
!861 = distinct !DILexicalBlock(scope: !855, file: !366, line: 532, column: 55)
!862 = !DILocation(line: 532, column: 52, scope: !863)
!863 = !DILexicalBlockFile(scope: !855, file: !366, discriminator: 1)
!864 = !DILocalVariable(name: "len", scope: !865, file: !366, line: 538, type: !368)
!865 = distinct !DILexicalBlock(scope: !856, file: !366, line: 537, column: 7)
!866 = !DILocation(line: 538, column: 17, scope: !865)
!867 = !DILocation(line: 538, column: 30, scope: !865)
!868 = !DILocation(line: 538, column: 23, scope: !865)
!869 = !DILocation(line: 539, column: 25, scope: !865)
!870 = !DILocation(line: 539, column: 33, scope: !865)
!871 = !DILocation(line: 539, column: 50, scope: !865)
!872 = !DILocation(line: 539, column: 30, scope: !865)
!873 = !DILocation(line: 539, column: 23, scope: !865)
!874 = !DILocation(line: 539, column: 59, scope: !875)
!875 = !DILexicalBlockFile(scope: !865, file: !366, discriminator: 1)
!876 = !DILocation(line: 539, column: 23, scope: !875)
!877 = !DILocation(line: 539, column: 67, scope: !878)
!878 = !DILexicalBlockFile(scope: !865, file: !366, discriminator: 2)
!879 = !DILocation(line: 539, column: 84, scope: !878)
!880 = !DILocation(line: 539, column: 23, scope: !878)
!881 = !DILocation(line: 539, column: 23, scope: !882)
!882 = !DILexicalBlockFile(scope: !865, file: !366, discriminator: 3)
!883 = !DILocation(line: 539, column: 20, scope: !882)
!884 = !DILocation(line: 540, column: 17, scope: !865)
!885 = !DILocation(line: 540, column: 29, scope: !865)
!886 = !DILocation(line: 540, column: 38, scope: !865)
!887 = !DILocation(line: 540, column: 10, scope: !865)
!888 = !DILocation(line: 546, column: 14, scope: !889)
!889 = distinct !DILexicalBlock(scope: !865, file: !366, line: 546, column: 14)
!890 = !DILocation(line: 546, column: 27, scope: !889)
!891 = !DILocation(line: 546, column: 24, scope: !889)
!892 = !DILocation(line: 546, column: 14, scope: !865)
!893 = !DILocation(line: 547, column: 21, scope: !894)
!894 = distinct !DILexicalBlock(scope: !889, file: !366, line: 546, column: 32)
!895 = !DILocation(line: 548, column: 10, scope: !894)
!896 = !DILocation(line: 549, column: 17, scope: !897)
!897 = distinct !DILexicalBlock(scope: !898, file: !366, line: 549, column: 17)
!898 = distinct !DILexicalBlock(scope: !889, file: !366, line: 548, column: 17)
!899 = !DILocation(line: 549, column: 26, scope: !897)
!900 = !DILocation(line: 549, column: 17, scope: !898)
!901 = !DILocation(line: 551, column: 53, scope: !902)
!902 = distinct !DILexicalBlock(scope: !897, file: !366, line: 549, column: 51)
!903 = !DILocation(line: 551, column: 65, scope: !902)
!904 = !DILocation(line: 551, column: 19, scope: !902)
!905 = !DILocation(line: 550, column: 26, scope: !902)
!906 = !DILocation(line: 552, column: 13, scope: !902)
!907 = !DILocation(line: 555, column: 30, scope: !865)
!908 = !DILocation(line: 555, column: 18, scope: !865)
!909 = !DILocation(line: 555, column: 10, scope: !865)
!910 = !DILocation(line: 555, column: 41, scope: !865)
!911 = !DILocation(line: 557, column: 7, scope: !856)
!912 = !DILocalVariable(name: "utf16Buf", scope: !913, file: !366, line: 560, type: !348)
!913 = distinct !DILexicalBlock(scope: !856, file: !366, line: 559, column: 7)
!914 = !DILocation(line: 560, column: 16, scope: !913)
!915 = !DILocalVariable(name: "utf16BufLen", scope: !913, file: !366, line: 561, type: !368)
!916 = !DILocation(line: 561, column: 17, scope: !913)
!917 = !DILocation(line: 563, column: 37, scope: !918)
!918 = distinct !DILexicalBlock(scope: !913, file: !366, line: 563, column: 14)
!919 = !DILocation(line: 564, column: 44, scope: !918)
!920 = !DILocation(line: 564, column: 37, scope: !918)
!921 = !DILocation(line: 563, column: 15, scope: !918)
!922 = !DILocation(line: 563, column: 14, scope: !913)
!923 = !DILocation(line: 568, column: 13, scope: !924)
!924 = distinct !DILexicalBlock(scope: !918, file: !366, line: 566, column: 52)
!925 = !DILocation(line: 571, column: 25, scope: !913)
!926 = !DILocation(line: 571, column: 41, scope: !913)
!927 = !DILocation(line: 571, column: 58, scope: !913)
!928 = !DILocation(line: 571, column: 38, scope: !913)
!929 = !DILocation(line: 571, column: 23, scope: !913)
!930 = !DILocation(line: 571, column: 67, scope: !931)
!931 = !DILexicalBlockFile(scope: !913, file: !366, discriminator: 1)
!932 = !DILocation(line: 571, column: 23, scope: !931)
!933 = !DILocation(line: 571, column: 83, scope: !934)
!934 = !DILexicalBlockFile(scope: !913, file: !366, discriminator: 2)
!935 = !DILocation(line: 571, column: 100, scope: !934)
!936 = !DILocation(line: 571, column: 23, scope: !934)
!937 = !DILocation(line: 571, column: 23, scope: !938)
!938 = !DILexicalBlockFile(scope: !913, file: !366, discriminator: 3)
!939 = !DILocation(line: 571, column: 20, scope: !938)
!940 = !DILocation(line: 572, column: 17, scope: !913)
!941 = !DILocation(line: 572, column: 29, scope: !913)
!942 = !DILocation(line: 572, column: 39, scope: !913)
!943 = !DILocation(line: 572, column: 10, scope: !913)
!944 = !DILocation(line: 573, column: 57, scope: !913)
!945 = !DILocation(line: 573, column: 69, scope: !913)
!946 = !DILocation(line: 573, column: 22, scope: !913)
!947 = !DILocation(line: 573, column: 20, scope: !913)
!948 = !DILocation(line: 574, column: 33, scope: !913)
!949 = !DILocation(line: 574, column: 43, scope: !913)
!950 = !DILocation(line: 574, column: 21, scope: !913)
!951 = !DILocation(line: 574, column: 11, scope: !913)
!952 = !DILocation(line: 574, column: 10, scope: !913)
!953 = !DILocation(line: 574, column: 48, scope: !913)
!954 = !DILocation(line: 575, column: 15, scope: !913)
!955 = !DILocation(line: 575, column: 10, scope: !913)
!956 = !DILocation(line: 577, column: 14, scope: !957)
!957 = distinct !DILexicalBlock(scope: !913, file: !366, line: 577, column: 14)
!958 = !DILocation(line: 577, column: 27, scope: !957)
!959 = !DILocation(line: 577, column: 24, scope: !957)
!960 = !DILocation(line: 577, column: 14, scope: !913)
!961 = !DILocation(line: 578, column: 21, scope: !962)
!962 = distinct !DILexicalBlock(scope: !957, file: !366, line: 577, column: 40)
!963 = !DILocation(line: 579, column: 10, scope: !962)
!964 = !DILocation(line: 581, column: 10, scope: !913)
!965 = !DILocalVariable(name: "currentBuf", scope: !966, file: !366, line: 585, type: !348)
!966 = distinct !DILexicalBlock(scope: !856, file: !366, line: 584, column: 7)
!967 = !DILocation(line: 585, column: 16, scope: !966)
!968 = !DILocalVariable(name: "currentBufSize", scope: !966, file: !366, line: 586, type: !368)
!969 = !DILocation(line: 586, column: 17, scope: !966)
!970 = !DILocation(line: 588, column: 49, scope: !971)
!971 = distinct !DILexicalBlock(scope: !966, file: !366, line: 588, column: 14)
!972 = !DILocation(line: 588, column: 65, scope: !971)
!973 = !DILocation(line: 588, column: 58, scope: !971)
!974 = !DILocation(line: 589, column: 67, scope: !971)
!975 = !DILocation(line: 589, column: 40, scope: !971)
!976 = !DILocation(line: 588, column: 15, scope: !977)
!977 = !DILexicalBlockFile(scope: !971, file: !366, discriminator: 1)
!978 = !DILocation(line: 588, column: 15, scope: !971)
!979 = !DILocation(line: 588, column: 14, scope: !966)
!980 = !DILocation(line: 593, column: 13, scope: !981)
!981 = distinct !DILexicalBlock(scope: !971, file: !366, line: 591, column: 71)
!982 = !DILocation(line: 595, column: 25, scope: !966)
!983 = !DILocation(line: 595, column: 44, scope: !966)
!984 = !DILocation(line: 595, column: 61, scope: !966)
!985 = !DILocation(line: 595, column: 41, scope: !966)
!986 = !DILocation(line: 595, column: 23, scope: !966)
!987 = !DILocation(line: 595, column: 70, scope: !988)
!988 = !DILexicalBlockFile(scope: !966, file: !366, discriminator: 1)
!989 = !DILocation(line: 595, column: 23, scope: !988)
!990 = !DILocation(line: 595, column: 89, scope: !991)
!991 = !DILexicalBlockFile(scope: !966, file: !366, discriminator: 2)
!992 = !DILocation(line: 595, column: 106, scope: !991)
!993 = !DILocation(line: 595, column: 23, scope: !991)
!994 = !DILocation(line: 595, column: 23, scope: !995)
!995 = !DILexicalBlockFile(scope: !966, file: !366, discriminator: 3)
!996 = !DILocation(line: 595, column: 20, scope: !995)
!997 = !DILocation(line: 596, column: 17, scope: !966)
!998 = !DILocation(line: 596, column: 29, scope: !966)
!999 = !DILocation(line: 596, column: 41, scope: !966)
!1000 = !DILocation(line: 596, column: 10, scope: !966)
!1001 = !DILocation(line: 597, column: 15, scope: !966)
!1002 = !DILocation(line: 597, column: 10, scope: !966)
!1003 = !DILocation(line: 605, column: 30, scope: !966)
!1004 = !DILocation(line: 605, column: 18, scope: !966)
!1005 = !DILocation(line: 605, column: 10, scope: !966)
!1006 = !DILocation(line: 605, column: 41, scope: !966)
!1007 = !DILocation(line: 607, column: 14, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !966, file: !366, line: 607, column: 14)
!1009 = !DILocation(line: 607, column: 27, scope: !1008)
!1010 = !DILocation(line: 607, column: 24, scope: !1008)
!1011 = !DILocation(line: 607, column: 14, scope: !966)
!1012 = !DILocation(line: 608, column: 21, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1008, file: !366, line: 607, column: 43)
!1014 = !DILocation(line: 609, column: 10, scope: !1013)
!1015 = !DILocation(line: 611, column: 7, scope: !856)
!1016 = !DILocation(line: 614, column: 8, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !828, file: !366, line: 614, column: 8)
!1018 = !DILocation(line: 614, column: 8, scope: !828)
!1019 = !DILocation(line: 615, column: 20, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1017, file: !366, line: 614, column: 19)
!1021 = !DILocation(line: 615, column: 8, scope: !1020)
!1022 = !DILocation(line: 615, column: 18, scope: !1020)
!1023 = !DILocation(line: 616, column: 4, scope: !1020)
!1024 = !DILocation(line: 617, column: 11, scope: !828)
!1025 = !DILocation(line: 617, column: 4, scope: !828)
!1026 = distinct !DISubprogram(name: "CodeSet_Utf8FindCodePointBoundary", scope: !1027, file: !1027, line: 484, type: !1028, isLocal: true, isDefinition: true, scopeLine: 486, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !386)
!1027 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/codeset.h", directory: "/home/lichi/Desktop/open-vm-tools/line1010")
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!368, !337, !368}
!1030 = !DILocalVariable(name: "buf", arg: 1, scope: !1026, file: !1027, line: 484, type: !337)
!1031 = !DILocation(line: 484, column: 47, scope: !1026)
!1032 = !DILocalVariable(name: "offset", arg: 2, scope: !1026, file: !1027, line: 485, type: !368)
!1033 = !DILocation(line: 485, column: 42, scope: !1026)
!1034 = !DILocalVariable(name: "origOffset", scope: !1026, file: !1027, line: 487, type: !368)
!1035 = !DILocation(line: 487, column: 11, scope: !1026)
!1036 = !DILocation(line: 487, column: 24, scope: !1026)
!1037 = !DILocalVariable(name: "c", scope: !1026, file: !1027, line: 488, type: !358)
!1038 = !DILocation(line: 488, column: 16, scope: !1026)
!1039 = !DILocation(line: 490, column: 8, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1026, file: !1027, line: 490, column: 8)
!1041 = !DILocation(line: 490, column: 15, scope: !1040)
!1042 = !DILocation(line: 490, column: 8, scope: !1026)
!1043 = !DILocation(line: 497, column: 13, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1040, file: !1027, line: 490, column: 20)
!1045 = !DILocation(line: 498, column: 7, scope: !1044)
!1046 = !DILocation(line: 498, column: 14, scope: !1047)
!1047 = !DILexicalBlockFile(scope: !1044, file: !1027, discriminator: 1)
!1048 = !DILocation(line: 498, column: 21, scope: !1047)
!1049 = !DILocation(line: 498, column: 25, scope: !1047)
!1050 = !DILocation(line: 498, column: 33, scope: !1051)
!1051 = !DILexicalBlockFile(scope: !1044, file: !1027, discriminator: 2)
!1052 = !DILocation(line: 498, column: 29, scope: !1051)
!1053 = !DILocation(line: 498, column: 41, scope: !1051)
!1054 = !DILocation(line: 498, column: 49, scope: !1051)
!1055 = !DILocation(line: 498, column: 7, scope: !1056)
!1056 = !DILexicalBlockFile(scope: !1044, file: !1027, discriminator: 3)
!1057 = !DILocation(line: 499, column: 16, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1044, file: !1027, line: 498, column: 58)
!1059 = !DILocation(line: 498, column: 7, scope: !1060)
!1060 = !DILexicalBlockFile(scope: !1044, file: !1027, discriminator: 4)
!1061 = distinct !{!1061, !1045}
!1062 = !DILocation(line: 508, column: 15, scope: !1044)
!1063 = !DILocation(line: 508, column: 11, scope: !1044)
!1064 = !DILocation(line: 508, column: 9, scope: !1044)
!1065 = !DILocation(line: 532, column: 11, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1044, file: !1027, line: 532, column: 11)
!1067 = !DILocation(line: 532, column: 13, scope: !1066)
!1068 = !DILocation(line: 532, column: 18, scope: !1066)
!1069 = !DILocation(line: 532, column: 22, scope: !1070)
!1070 = !DILexicalBlockFile(scope: !1066, file: !1027, discriminator: 1)
!1071 = !DILocation(line: 532, column: 32, scope: !1070)
!1072 = !DILocation(line: 532, column: 30, scope: !1070)
!1073 = !DILocation(line: 532, column: 45, scope: !1070)
!1074 = !DILocation(line: 532, column: 43, scope: !1070)
!1075 = !DILocation(line: 532, column: 24, scope: !1070)
!1076 = !DILocation(line: 532, column: 54, scope: !1070)
!1077 = !DILocation(line: 532, column: 11, scope: !1070)
!1078 = !DILocation(line: 533, column: 17, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1066, file: !1027, line: 532, column: 61)
!1080 = !DILocation(line: 533, column: 10, scope: !1079)
!1081 = !DILocation(line: 539, column: 4, scope: !1044)
!1082 = !DILocation(line: 540, column: 11, scope: !1026)
!1083 = !DILocation(line: 540, column: 4, scope: !1026)
!1084 = !DILocation(line: 541, column: 1, scope: !1026)
!1085 = distinct !DISubprogram(name: "CodeSet_Utf16FindCodePointBoundary", scope: !1027, file: !1027, line: 569, type: !1028, isLocal: true, isDefinition: true, scopeLine: 571, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !386)
!1086 = !DILocalVariable(name: "buf", arg: 1, scope: !1085, file: !1027, line: 569, type: !337)
!1087 = !DILocation(line: 569, column: 48, scope: !1085)
!1088 = !DILocalVariable(name: "offset", arg: 2, scope: !1085, file: !1027, line: 570, type: !368)
!1089 = !DILocation(line: 570, column: 43, scope: !1085)
!1090 = !DILocalVariable(name: "origOffset", scope: !1085, file: !1027, line: 572, type: !368)
!1091 = !DILocation(line: 572, column: 11, scope: !1085)
!1092 = !DILocalVariable(name: "utf16Buf", scope: !1085, file: !1027, line: 573, type: !362)
!1093 = !DILocation(line: 573, column: 19, scope: !1085)
!1094 = !DILocation(line: 573, column: 47, scope: !1085)
!1095 = !DILocation(line: 573, column: 30, scope: !1085)
!1096 = !DILocation(line: 575, column: 17, scope: !1085)
!1097 = !DILocation(line: 575, column: 24, scope: !1085)
!1098 = !DILocation(line: 575, column: 15, scope: !1085)
!1099 = !DILocation(line: 576, column: 13, scope: !1085)
!1100 = !DILocation(line: 576, column: 24, scope: !1085)
!1101 = !DILocation(line: 576, column: 11, scope: !1085)
!1102 = !DILocation(line: 578, column: 8, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1085, file: !1027, line: 578, column: 8)
!1104 = !DILocation(line: 578, column: 19, scope: !1103)
!1105 = !DILocation(line: 578, column: 23, scope: !1103)
!1106 = !DILocation(line: 578, column: 38, scope: !1107)
!1107 = !DILexicalBlockFile(scope: !1103, file: !1027, discriminator: 1)
!1108 = !DILocation(line: 578, column: 29, scope: !1107)
!1109 = !DILocation(line: 578, column: 28, scope: !1107)
!1110 = !DILocation(line: 578, column: 46, scope: !1107)
!1111 = !DILocation(line: 578, column: 58, scope: !1107)
!1112 = !DILocation(line: 578, column: 8, scope: !1107)
!1113 = !DILocation(line: 579, column: 14, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1103, file: !1027, line: 578, column: 69)
!1115 = !DILocation(line: 579, column: 21, scope: !1114)
!1116 = !DILocation(line: 579, column: 7, scope: !1114)
!1117 = !DILocation(line: 582, column: 11, scope: !1085)
!1118 = !DILocation(line: 582, column: 22, scope: !1085)
!1119 = !DILocation(line: 582, column: 4, scope: !1085)
!1120 = !DILocation(line: 583, column: 1, scope: !1085)
!1121 = distinct !DISubprogram(name: "UnicodeGetAllocBytesInternal", scope: !366, file: !366, line: 722, type: !1122, isLocal: false, isDefinition: true, scopeLine: 726, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !386)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!340, !337, !384, !379, !831}
!1124 = !DILocalVariable(name: "ustr", arg: 1, scope: !1121, file: !366, line: 722, type: !337)
!1125 = !DILocation(line: 722, column: 42, scope: !1121)
!1126 = !DILocalVariable(name: "encoding", arg: 2, scope: !1121, file: !366, line: 723, type: !384)
!1127 = !DILocation(line: 723, column: 45, scope: !1121)
!1128 = !DILocalVariable(name: "lengthInBytes", arg: 3, scope: !1121, file: !366, line: 724, type: !379)
!1129 = !DILocation(line: 724, column: 38, scope: !1121)
!1130 = !DILocalVariable(name: "retLength", arg: 4, scope: !1121, file: !366, line: 725, type: !831)
!1131 = !DILocation(line: 725, column: 38, scope: !1121)
!1132 = !DILocalVariable(name: "utf8Str", scope: !1121, file: !366, line: 727, type: !337)
!1133 = !DILocation(line: 727, column: 16, scope: !1121)
!1134 = !DILocation(line: 727, column: 26, scope: !1121)
!1135 = !DILocalVariable(name: "result", scope: !1121, file: !366, line: 728, type: !348)
!1136 = !DILocation(line: 728, column: 10, scope: !1121)
!1137 = !DILocation(line: 732, column: 39, scope: !1121)
!1138 = !DILocation(line: 732, column: 15, scope: !1121)
!1139 = !DILocation(line: 732, column: 13, scope: !1121)
!1140 = !DILocation(line: 734, column: 8, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1121, file: !366, line: 734, column: 8)
!1142 = !DILocation(line: 734, column: 22, scope: !1141)
!1143 = !DILocation(line: 734, column: 8, scope: !1121)
!1144 = !DILocation(line: 735, column: 45, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1141, file: !366, line: 734, column: 29)
!1146 = !DILocation(line: 735, column: 23, scope: !1145)
!1147 = !DILocation(line: 735, column: 21, scope: !1145)
!1148 = !DILocation(line: 736, column: 4, scope: !1145)
!1149 = !DILocation(line: 738, column: 12, scope: !1121)
!1150 = !DILocation(line: 738, column: 4, scope: !1121)
!1151 = !DILocation(line: 740, column: 31, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !366, line: 740, column: 11)
!1153 = distinct !DILexicalBlock(scope: !1121, file: !366, line: 738, column: 22)
!1154 = !DILocation(line: 740, column: 40, scope: !1152)
!1155 = !DILocation(line: 740, column: 55, scope: !1152)
!1156 = !DILocation(line: 740, column: 12, scope: !1152)
!1157 = !DILocation(line: 740, column: 11, scope: !1153)
!1158 = !DILocation(line: 741, column: 10, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1152, file: !366, line: 740, column: 66)
!1160 = !DILocation(line: 740, column: 63, scope: !1161)
!1161 = !DILexicalBlockFile(scope: !1152, file: !366, discriminator: 1)
!1162 = !DILocation(line: 745, column: 33, scope: !1153)
!1163 = !DILocation(line: 745, column: 47, scope: !1153)
!1164 = !DILocation(line: 745, column: 16, scope: !1153)
!1165 = !DILocation(line: 745, column: 14, scope: !1153)
!1166 = !DILocation(line: 746, column: 14, scope: !1153)
!1167 = !DILocation(line: 746, column: 22, scope: !1153)
!1168 = !DILocation(line: 746, column: 31, scope: !1153)
!1169 = !DILocation(line: 746, column: 45, scope: !1153)
!1170 = !DILocation(line: 746, column: 7, scope: !1153)
!1171 = !DILocation(line: 747, column: 11, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1153, file: !366, line: 747, column: 11)
!1173 = !DILocation(line: 747, column: 21, scope: !1172)
!1174 = !DILocation(line: 747, column: 11, scope: !1153)
!1175 = !DILocation(line: 748, column: 23, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1172, file: !366, line: 747, column: 29)
!1177 = !DILocation(line: 748, column: 11, scope: !1176)
!1178 = !DILocation(line: 748, column: 21, scope: !1176)
!1179 = !DILocation(line: 749, column: 7, scope: !1176)
!1180 = !DILocation(line: 750, column: 7, scope: !1153)
!1181 = !DILocation(line: 753, column: 34, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1153, file: !366, line: 753, column: 11)
!1183 = !DILocation(line: 753, column: 43, scope: !1182)
!1184 = !DILocation(line: 753, column: 67, scope: !1182)
!1185 = !DILocation(line: 753, column: 12, scope: !1182)
!1186 = !DILocation(line: 753, column: 11, scope: !1153)
!1187 = !DILocation(line: 755, column: 10, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1182, file: !366, line: 753, column: 79)
!1189 = !DILocation(line: 757, column: 7, scope: !1153)
!1190 = !DILocation(line: 760, column: 46, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1153, file: !366, line: 760, column: 11)
!1192 = !DILocation(line: 760, column: 55, scope: !1191)
!1193 = !DILocation(line: 761, column: 64, scope: !1191)
!1194 = !DILocation(line: 761, column: 37, scope: !1191)
!1195 = !DILocation(line: 763, column: 46, scope: !1191)
!1196 = !DILocation(line: 760, column: 12, scope: !1191)
!1197 = !DILocation(line: 760, column: 11, scope: !1153)
!1198 = !DILocation(line: 766, column: 7, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1191, file: !366, line: 763, column: 58)
!1200 = !DILocation(line: 767, column: 4, scope: !1153)
!1201 = !DILocation(line: 769, column: 11, scope: !1121)
!1202 = !DILocation(line: 769, column: 4, scope: !1121)
!1203 = distinct !DISubprogram(name: "Unicode_GetAllocBytesWithLength", scope: !366, file: !366, line: 688, type: !1204, isLocal: false, isDefinition: true, scopeLine: 691, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !386)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!340, !337, !384, !379}
!1206 = !DILocalVariable(name: "str", arg: 1, scope: !1203, file: !366, line: 688, type: !337)
!1207 = !DILocation(line: 688, column: 45, scope: !1203)
!1208 = !DILocalVariable(name: "encoding", arg: 2, scope: !1203, file: !366, line: 689, type: !384)
!1209 = !DILocation(line: 689, column: 48, scope: !1203)
!1210 = !DILocalVariable(name: "lengthInBytes", arg: 3, scope: !1203, file: !366, line: 690, type: !379)
!1211 = !DILocation(line: 690, column: 41, scope: !1203)
!1212 = !DILocation(line: 692, column: 8, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1203, file: !366, line: 692, column: 8)
!1214 = !DILocation(line: 692, column: 12, scope: !1213)
!1215 = !DILocation(line: 692, column: 8, scope: !1203)
!1216 = !DILocation(line: 693, column: 7, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1213, file: !366, line: 692, column: 20)
!1218 = !DILocation(line: 697, column: 40, scope: !1203)
!1219 = !DILocation(line: 697, column: 45, scope: !1203)
!1220 = !DILocation(line: 697, column: 55, scope: !1203)
!1221 = !DILocation(line: 697, column: 11, scope: !1203)
!1222 = !DILocation(line: 697, column: 4, scope: !1203)
!1223 = !DILocation(line: 698, column: 1, scope: !1203)
!1224 = distinct !DISubprogram(name: "UnicodeAllocStatic", scope: !366, file: !366, line: 794, type: !1225, isLocal: false, isDefinition: true, scopeLine: 796, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !386)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!348, !337, !385}
!1227 = !DILocalVariable(name: "asciiBytes", arg: 1, scope: !1224, file: !366, line: 794, type: !337)
!1228 = !DILocation(line: 794, column: 32, scope: !1224)
!1229 = !DILocalVariable(name: "unescape", arg: 2, scope: !1224, file: !366, line: 795, type: !385)
!1230 = !DILocation(line: 795, column: 25, scope: !1224)
!1231 = !DILocalVariable(name: "utf16", scope: !1224, file: !366, line: 797, type: !349)
!1232 = !DILocation(line: 797, column: 13, scope: !1224)
!1233 = !DILocalVariable(name: "byte", scope: !1224, file: !366, line: 799, type: !354)
!1234 = !DILocation(line: 799, column: 16, scope: !1224)
!1235 = !DILocation(line: 799, column: 37, scope: !1224)
!1236 = !DILocalVariable(name: "utf16Offset", scope: !1224, file: !366, line: 800, type: !368)
!1237 = !DILocation(line: 800, column: 11, scope: !1224)
!1238 = !DILocalVariable(name: "result", scope: !1224, file: !366, line: 801, type: !348)
!1239 = !DILocation(line: 801, column: 10, scope: !1224)
!1240 = !DILocation(line: 805, column: 9, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1224, file: !366, line: 805, column: 8)
!1242 = !DILocation(line: 805, column: 8, scope: !1224)
!1243 = !DILocation(line: 813, column: 31, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1241, file: !366, line: 805, column: 19)
!1245 = !DILocation(line: 813, column: 14, scope: !1244)
!1246 = !DILocation(line: 813, column: 7, scope: !1244)
!1247 = !DILocation(line: 816, column: 53, scope: !1224)
!1248 = !DILocation(line: 816, column: 46, scope: !1224)
!1249 = !DILocation(line: 816, column: 65, scope: !1224)
!1250 = !DILocation(line: 816, column: 43, scope: !1224)
!1251 = !DILocation(line: 816, column: 12, scope: !1252)
!1252 = !DILexicalBlockFile(scope: !1224, file: !366, discriminator: 1)
!1253 = !DILocation(line: 816, column: 12, scope: !1224)
!1254 = !DILocation(line: 816, column: 10, scope: !1224)
!1255 = !DILocation(line: 818, column: 4, scope: !1224)
!1256 = !DILocalVariable(name: "hexDigitsRemaining", scope: !1257, file: !366, line: 819, type: !368)
!1257 = distinct !DILexicalBlock(scope: !1224, file: !366, line: 818, column: 14)
!1258 = !DILocation(line: 819, column: 14, scope: !1257)
!1259 = !DILocalVariable(name: "escapedCodePoint", scope: !1257, file: !366, line: 820, type: !359)
!1260 = !DILocation(line: 820, column: 14, scope: !1257)
!1261 = !DILocalVariable(name: "foundEscapedCodePoint", scope: !1257, file: !366, line: 821, type: !385)
!1262 = !DILocation(line: 821, column: 12, scope: !1257)
!1263 = !DILocation(line: 823, column: 12, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1257, file: !366, line: 823, column: 11)
!1265 = !DILocation(line: 823, column: 11, scope: !1264)
!1266 = !DILocation(line: 823, column: 17, scope: !1264)
!1267 = !DILocation(line: 823, column: 11, scope: !1257)
!1268 = !DILocation(line: 824, column: 16, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1264, file: !366, line: 823, column: 26)
!1270 = !DILocation(line: 824, column: 10, scope: !1269)
!1271 = !DILocation(line: 824, column: 29, scope: !1269)
!1272 = !DILocation(line: 825, column: 10, scope: !1269)
!1273 = !DILocation(line: 829, column: 34, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !366, line: 829, column: 13)
!1275 = distinct !DILexicalBlock(scope: !1257, file: !366, line: 829, column: 8)
!1276 = !DILocation(line: 829, column: 33, scope: !1274)
!1277 = !DILocation(line: 829, column: 39, scope: !1274)
!1278 = !DILocation(line: 829, column: 31, scope: !1274)
!1279 = !DILocation(line: 829, column: 30, scope: !1274)
!1280 = !DILocation(line: 829, column: 13, scope: !1274)
!1281 = !DILocation(line: 829, column: 13, scope: !1275)
!1282 = !DILocation(line: 829, column: 52, scope: !1283)
!1283 = !DILexicalBlockFile(scope: !1284, file: !366, discriminator: 1)
!1284 = distinct !DILexicalBlock(scope: !1274, file: !366, line: 829, column: 50)
!1285 = !DILocation(line: 831, column: 12, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1257, file: !366, line: 831, column: 11)
!1287 = !DILocation(line: 831, column: 11, scope: !1286)
!1288 = !DILocation(line: 831, column: 17, scope: !1286)
!1289 = !DILocation(line: 831, column: 11, scope: !1257)
!1290 = !DILocation(line: 832, column: 34, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1286, file: !366, line: 831, column: 26)
!1292 = !DILocation(line: 832, column: 33, scope: !1291)
!1293 = !DILocation(line: 832, column: 27, scope: !1291)
!1294 = !DILocation(line: 832, column: 10, scope: !1291)
!1295 = !DILocation(line: 832, column: 31, scope: !1291)
!1296 = !DILocation(line: 833, column: 14, scope: !1291)
!1297 = !DILocation(line: 834, column: 10, scope: !1291)
!1298 = distinct !{!1298, !1255}
!1299 = !DILocation(line: 838, column: 11, scope: !1257)
!1300 = !DILocation(line: 840, column: 12, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1257, file: !366, line: 840, column: 11)
!1302 = !DILocation(line: 840, column: 11, scope: !1301)
!1303 = !DILocation(line: 840, column: 17, scope: !1301)
!1304 = !DILocation(line: 840, column: 11, scope: !1257)
!1305 = !DILocation(line: 842, column: 10, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1301, file: !366, line: 840, column: 26)
!1307 = !DILocation(line: 845, column: 34, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !366, line: 845, column: 13)
!1309 = distinct !DILexicalBlock(scope: !1257, file: !366, line: 845, column: 8)
!1310 = !DILocation(line: 845, column: 33, scope: !1308)
!1311 = !DILocation(line: 845, column: 39, scope: !1308)
!1312 = !DILocation(line: 845, column: 31, scope: !1308)
!1313 = !DILocation(line: 845, column: 30, scope: !1308)
!1314 = !DILocation(line: 845, column: 13, scope: !1308)
!1315 = !DILocation(line: 845, column: 13, scope: !1309)
!1316 = !DILocation(line: 845, column: 52, scope: !1317)
!1317 = !DILexicalBlockFile(scope: !1318, file: !366, discriminator: 1)
!1318 = distinct !DILexicalBlock(scope: !1308, file: !366, line: 845, column: 50)
!1319 = !DILocation(line: 847, column: 16, scope: !1257)
!1320 = !DILocation(line: 847, column: 15, scope: !1257)
!1321 = !DILocation(line: 847, column: 7, scope: !1257)
!1322 = !DILocation(line: 853, column: 32, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1257, file: !366, line: 847, column: 22)
!1324 = !DILocation(line: 854, column: 29, scope: !1323)
!1325 = !DILocation(line: 855, column: 10, scope: !1323)
!1326 = !DILocation(line: 861, column: 32, scope: !1323)
!1327 = !DILocation(line: 862, column: 29, scope: !1323)
!1328 = !DILocation(line: 863, column: 10, scope: !1323)
!1329 = !DILocation(line: 866, column: 29, scope: !1323)
!1330 = !DILocation(line: 867, column: 34, scope: !1323)
!1331 = !DILocation(line: 867, column: 33, scope: !1323)
!1332 = !DILocation(line: 867, column: 27, scope: !1323)
!1333 = !DILocation(line: 867, column: 10, scope: !1323)
!1334 = !DILocation(line: 867, column: 31, scope: !1323)
!1335 = !DILocation(line: 868, column: 10, scope: !1323)
!1336 = !DILocation(line: 871, column: 11, scope: !1257)
!1337 = !DILocation(line: 873, column: 7, scope: !1257)
!1338 = !DILocation(line: 873, column: 14, scope: !1339)
!1339 = !DILexicalBlockFile(scope: !1257, file: !366, discriminator: 1)
!1340 = !DILocation(line: 873, column: 7, scope: !1339)
!1341 = !DILocalVariable(name: "hexValue", scope: !1342, file: !366, line: 874, type: !343)
!1342 = distinct !DILexicalBlock(scope: !1257, file: !366, line: 873, column: 34)
!1343 = !DILocation(line: 874, column: 16, scope: !1342)
!1344 = !DILocation(line: 876, column: 15, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1342, file: !366, line: 876, column: 14)
!1346 = !DILocation(line: 876, column: 14, scope: !1345)
!1347 = !DILocation(line: 876, column: 20, scope: !1345)
!1348 = !DILocation(line: 876, column: 27, scope: !1345)
!1349 = !DILocation(line: 876, column: 31, scope: !1350)
!1350 = !DILexicalBlockFile(scope: !1345, file: !366, discriminator: 1)
!1351 = !DILocation(line: 876, column: 30, scope: !1350)
!1352 = !DILocation(line: 876, column: 36, scope: !1350)
!1353 = !DILocation(line: 876, column: 14, scope: !1350)
!1354 = !DILocation(line: 877, column: 25, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1345, file: !366, line: 876, column: 44)
!1356 = !DILocation(line: 877, column: 24, scope: !1355)
!1357 = !DILocation(line: 877, column: 30, scope: !1355)
!1358 = !DILocation(line: 877, column: 22, scope: !1355)
!1359 = !DILocation(line: 878, column: 10, scope: !1355)
!1360 = !DILocation(line: 878, column: 22, scope: !1361)
!1361 = !DILexicalBlockFile(scope: !1362, file: !366, discriminator: 1)
!1362 = distinct !DILexicalBlock(scope: !1345, file: !366, line: 878, column: 21)
!1363 = !DILocation(line: 878, column: 21, scope: !1361)
!1364 = !DILocation(line: 878, column: 27, scope: !1361)
!1365 = !DILocation(line: 878, column: 34, scope: !1361)
!1366 = !DILocation(line: 878, column: 38, scope: !1367)
!1367 = !DILexicalBlockFile(scope: !1362, file: !366, discriminator: 2)
!1368 = !DILocation(line: 878, column: 37, scope: !1367)
!1369 = !DILocation(line: 878, column: 43, scope: !1367)
!1370 = !DILocation(line: 878, column: 21, scope: !1367)
!1371 = !DILocation(line: 879, column: 25, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1362, file: !366, line: 878, column: 51)
!1373 = !DILocation(line: 879, column: 24, scope: !1372)
!1374 = !DILocation(line: 879, column: 30, scope: !1372)
!1375 = !DILocation(line: 879, column: 36, scope: !1372)
!1376 = !DILocation(line: 879, column: 22, scope: !1372)
!1377 = !DILocation(line: 880, column: 10, scope: !1372)
!1378 = !DILocation(line: 880, column: 22, scope: !1379)
!1379 = !DILexicalBlockFile(scope: !1380, file: !366, discriminator: 1)
!1380 = distinct !DILexicalBlock(scope: !1362, file: !366, line: 880, column: 21)
!1381 = !DILocation(line: 880, column: 21, scope: !1379)
!1382 = !DILocation(line: 880, column: 27, scope: !1379)
!1383 = !DILocation(line: 880, column: 34, scope: !1379)
!1384 = !DILocation(line: 880, column: 38, scope: !1385)
!1385 = !DILexicalBlockFile(scope: !1380, file: !366, discriminator: 2)
!1386 = !DILocation(line: 880, column: 37, scope: !1385)
!1387 = !DILocation(line: 880, column: 43, scope: !1385)
!1388 = !DILocation(line: 880, column: 21, scope: !1385)
!1389 = !DILocation(line: 881, column: 25, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1380, file: !366, line: 880, column: 51)
!1391 = !DILocation(line: 881, column: 24, scope: !1390)
!1392 = !DILocation(line: 881, column: 30, scope: !1390)
!1393 = !DILocation(line: 881, column: 36, scope: !1390)
!1394 = !DILocation(line: 881, column: 22, scope: !1390)
!1395 = !DILocation(line: 882, column: 10, scope: !1390)
!1396 = !DILocation(line: 883, column: 13, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1380, file: !366, line: 882, column: 17)
!1398 = !DILocation(line: 886, column: 30, scope: !1342)
!1399 = !DILocation(line: 886, column: 47, scope: !1342)
!1400 = !DILocation(line: 886, column: 55, scope: !1342)
!1401 = !DILocation(line: 886, column: 53, scope: !1342)
!1402 = !DILocation(line: 886, column: 27, scope: !1342)
!1403 = !DILocation(line: 888, column: 14, scope: !1342)
!1404 = !DILocation(line: 889, column: 28, scope: !1342)
!1405 = !DILocation(line: 873, column: 7, scope: !1406)
!1406 = !DILexicalBlockFile(scope: !1257, file: !366, discriminator: 2)
!1407 = distinct !{!1407, !1337}
!1408 = !DILocation(line: 892, column: 11, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1257, file: !366, line: 892, column: 11)
!1410 = !DILocation(line: 892, column: 11, scope: !1257)
!1411 = !DILocation(line: 893, column: 36, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !366, line: 893, column: 16)
!1413 = distinct !DILexicalBlock(scope: !1414, file: !366, line: 893, column: 11)
!1414 = distinct !DILexicalBlock(scope: !1409, file: !366, line: 892, column: 34)
!1415 = !DILocation(line: 893, column: 53, scope: !1412)
!1416 = !DILocation(line: 893, column: 34, scope: !1412)
!1417 = !DILocation(line: 893, column: 33, scope: !1412)
!1418 = !DILocation(line: 893, column: 16, scope: !1412)
!1419 = !DILocation(line: 893, column: 16, scope: !1413)
!1420 = !DILocation(line: 893, column: 74, scope: !1421)
!1421 = !DILexicalBlockFile(scope: !1422, file: !366, discriminator: 1)
!1422 = distinct !DILexicalBlock(scope: !1412, file: !366, line: 893, column: 72)
!1423 = !DILocation(line: 895, column: 24, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1414, file: !366, line: 895, column: 14)
!1425 = !DILocation(line: 895, column: 41, scope: !1424)
!1426 = !DILocation(line: 895, column: 15, scope: !1424)
!1427 = !DILocation(line: 895, column: 59, scope: !1424)
!1428 = !DILocation(line: 895, column: 14, scope: !1414)
!1429 = !DILocation(line: 896, column: 45, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1424, file: !366, line: 895, column: 65)
!1431 = !DILocation(line: 896, column: 36, scope: !1430)
!1432 = !DILocation(line: 896, column: 30, scope: !1430)
!1433 = !DILocation(line: 896, column: 13, scope: !1430)
!1434 = !DILocation(line: 896, column: 34, scope: !1430)
!1435 = !DILocation(line: 897, column: 10, scope: !1430)
!1436 = !DILocation(line: 898, column: 49, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1424, file: !366, line: 897, column: 17)
!1438 = !DILocation(line: 898, column: 66, scope: !1437)
!1439 = !DILocation(line: 898, column: 71, scope: !1437)
!1440 = !DILocation(line: 898, column: 37, scope: !1437)
!1441 = !DILocation(line: 898, column: 30, scope: !1437)
!1442 = !DILocation(line: 898, column: 13, scope: !1437)
!1443 = !DILocation(line: 898, column: 34, scope: !1437)
!1444 = !DILocation(line: 899, column: 49, scope: !1437)
!1445 = !DILocation(line: 899, column: 66, scope: !1437)
!1446 = !DILocation(line: 899, column: 73, scope: !1437)
!1447 = !DILocation(line: 899, column: 37, scope: !1437)
!1448 = !DILocation(line: 899, column: 30, scope: !1437)
!1449 = !DILocation(line: 899, column: 13, scope: !1437)
!1450 = !DILocation(line: 899, column: 34, scope: !1437)
!1451 = !DILocation(line: 901, column: 7, scope: !1414)
!1452 = !DILocation(line: 818, column: 4, scope: !1252)
!1453 = !DILocation(line: 904, column: 36, scope: !1224)
!1454 = !DILocation(line: 904, column: 13, scope: !1224)
!1455 = !DILocation(line: 904, column: 11, scope: !1224)
!1456 = !DILocation(line: 905, column: 9, scope: !1224)
!1457 = !DILocation(line: 905, column: 4, scope: !1224)
!1458 = !DILocation(line: 907, column: 11, scope: !1224)
!1459 = !DILocation(line: 907, column: 4, scope: !1224)
!1460 = !DILocation(line: 908, column: 1, scope: !1224)
!1461 = distinct !DISubprogram(name: "Unicode_AllocWithUTF16", scope: !578, file: !578, line: 167, type: !1462, isLocal: true, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !386)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!348, !362}
!1464 = !DILocalVariable(name: "utf16String", arg: 1, scope: !1461, file: !578, line: 167, type: !362)
!1465 = !DILocation(line: 167, column: 39, scope: !1461)
!1466 = !DILocation(line: 169, column: 35, scope: !1461)
!1467 = !DILocation(line: 169, column: 11, scope: !1461)
!1468 = !DILocation(line: 169, column: 4, scope: !1461)
