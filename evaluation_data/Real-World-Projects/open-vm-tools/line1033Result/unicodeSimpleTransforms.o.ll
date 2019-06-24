; ModuleID = './unicodeSimpleTransforms.o.i'
source_filename = "./unicodeSimpleTransforms.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@whitespacePages = internal global [256 x i8*] [i8* getelementptr inbounds ([256 x i8], [256 x i8]* @wspg_00, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @wspg_16, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @wspg_18, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @wspg_20, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @wspg_30, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null], align 16
@wspg_00 = internal constant [256 x i8] c"\00\00\00\00\00\00\00\00\00\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@wspg_16 = internal constant [256 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@wspg_18 = internal constant [256 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@wspg_20 = internal constant [256 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@wspg_30 = internal constant [256 x i8] c"\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16

; Function Attrs: nounwind uwtable
define i8* @Unicode_FoldCase(i8*) #0 !dbg !361 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca i16*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !368, metadata !369), !dbg !370
  call void @llvm.dbg.declare(metadata i8** %3, metadata !371, metadata !369), !dbg !372
  call void @llvm.dbg.declare(metadata i16** %4, metadata !373, metadata !369), !dbg !380
  call void @llvm.dbg.declare(metadata i16** %5, metadata !381, metadata !369), !dbg !382
  %6 = load i8*, i8** %2, align 8, !dbg !383
  %7 = call i8* @Unicode_GetAllocBytes(i8* %6, i32 1), !dbg !384
  %8 = bitcast i8* %7 to i16*, !dbg !384
  store i16* %8, i16** %4, align 8, !dbg !385
  %9 = load i16*, i16** %4, align 8, !dbg !386
  store i16* %9, i16** %5, align 8, !dbg !387
  br label %10, !dbg !388

; <label>:10:                                     ; preds = %14, %1
  %11 = load i16*, i16** %5, align 8, !dbg !389
  %12 = load i16, i16* %11, align 2, !dbg !391
  %13 = icmp ne i16 %12, 0, !dbg !392
  br i1 %13, label %14, label %21, !dbg !392

; <label>:14:                                     ; preds = %10
  %15 = load i16*, i16** %5, align 8, !dbg !393
  %16 = load i16, i16* %15, align 2, !dbg !395
  %17 = call zeroext i16 @UnicodeSimpleCaseFold(i16 zeroext %16), !dbg !396
  %18 = load i16*, i16** %5, align 8, !dbg !397
  store i16 %17, i16* %18, align 2, !dbg !398
  %19 = load i16*, i16** %5, align 8, !dbg !399
  %20 = getelementptr inbounds i16, i16* %19, i32 1, !dbg !399
  store i16* %20, i16** %5, align 8, !dbg !399
  br label %10, !dbg !400, !llvm.loop !402

; <label>:21:                                     ; preds = %10
  %22 = load i16*, i16** %4, align 8, !dbg !403
  %23 = call i8* @Unicode_AllocWithUTF16(i16* %22), !dbg !404
  store i8* %23, i8** %3, align 8, !dbg !405
  %24 = load i16*, i16** %4, align 8, !dbg !406
  %25 = bitcast i16* %24 to i8*, !dbg !406
  call void @free(i8* %25) #5, !dbg !407
  %26 = load i8*, i8** %3, align 8, !dbg !408
  ret i8* %26, !dbg !409
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @Unicode_GetAllocBytes(i8*, i32) #2

declare zeroext i16 @UnicodeSimpleCaseFold(i16 zeroext) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Unicode_AllocWithUTF16(i16*) #3 !dbg !410 {
  %2 = alloca i16*, align 8
  store i16* %0, i16** %2, align 8
  call void @llvm.dbg.declare(metadata i16** %2, metadata !416, metadata !369), !dbg !417
  %3 = load i16*, i16** %2, align 8, !dbg !418
  %4 = bitcast i16* %3 to i8*, !dbg !418
  %5 = call i8* @Unicode_AllocWithLength(i8* %4, i64 -1, i32 1), !dbg !419
  ret i8* %5, !dbg !420
}

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind uwtable
define i8* @Unicode_Trim(i8*) #0 !dbg !421 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !422, metadata !369), !dbg !423
  %3 = load i8*, i8** %2, align 8, !dbg !424
  %4 = call i8* @UnicodeTrimInternal(i8* %3, i32 3), !dbg !425
  ret i8* %4, !dbg !426
}

; Function Attrs: nounwind uwtable
define internal i8* @UnicodeTrimInternal(i8*, i32) #0 !dbg !427 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i16*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !431, metadata !369), !dbg !432
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !433, metadata !369), !dbg !434
  call void @llvm.dbg.declare(metadata i8** %5, metadata !435, metadata !369), !dbg !436
  call void @llvm.dbg.declare(metadata i16** %6, metadata !437, metadata !369), !dbg !438
  call void @llvm.dbg.declare(metadata i16** %7, metadata !439, metadata !369), !dbg !440
  call void @llvm.dbg.declare(metadata i16** %8, metadata !441, metadata !369), !dbg !442
  %9 = load i8*, i8** %3, align 8, !dbg !443
  %10 = call i8* @Unicode_GetAllocBytes(i8* %9, i32 1), !dbg !444
  %11 = bitcast i8* %10 to i16*, !dbg !444
  store i16* %11, i16** %6, align 8, !dbg !445
  %12 = load i16*, i16** %6, align 8, !dbg !446
  store i16* %12, i16** %7, align 8, !dbg !447
  %13 = load i16*, i16** %6, align 8, !dbg !448
  %14 = load i16*, i16** %6, align 8, !dbg !449
  %15 = call i64 @Unicode_UTF16Strlen(i16* %14), !dbg !450
  %16 = getelementptr inbounds i16, i16* %13, i64 %15, !dbg !451
  store i16* %16, i16** %8, align 8, !dbg !452
  %17 = load i32, i32* %4, align 4, !dbg !453
  %18 = and i32 %17, 1, !dbg !455
  %19 = icmp ne i32 %18, 0, !dbg !455
  br i1 %19, label %20, label %37, !dbg !456

; <label>:20:                                     ; preds = %2
  br label %21, !dbg !457

; <label>:21:                                     ; preds = %33, %20
  %22 = load i16*, i16** %7, align 8, !dbg !459
  %23 = load i16*, i16** %8, align 8, !dbg !461
  %24 = icmp ne i16* %22, %23, !dbg !462
  br i1 %24, label %25, label %31, !dbg !463

; <label>:25:                                     ; preds = %21
  %26 = load i16*, i16** %7, align 8, !dbg !464
  %27 = load i16, i16* %26, align 2, !dbg !466
  %28 = call signext i8 @UnicodeSimpleIsWhiteSpace(i16 zeroext %27), !dbg !467
  %29 = sext i8 %28 to i32, !dbg !467
  %30 = icmp ne i32 %29, 0, !dbg !468
  br label %31

; <label>:31:                                     ; preds = %25, %21
  %32 = phi i1 [ false, %21 ], [ %30, %25 ]
  br i1 %32, label %33, label %36, !dbg !469

; <label>:33:                                     ; preds = %31
  %34 = load i16*, i16** %7, align 8, !dbg !471
  %35 = getelementptr inbounds i16, i16* %34, i32 1, !dbg !471
  store i16* %35, i16** %7, align 8, !dbg !471
  br label %21, !dbg !473, !llvm.loop !475

; <label>:36:                                     ; preds = %31
  br label %37, !dbg !476

; <label>:37:                                     ; preds = %36, %2
  %38 = load i32, i32* %4, align 4, !dbg !477
  %39 = and i32 %38, 2, !dbg !479
  %40 = icmp ne i32 %39, 0, !dbg !479
  br i1 %40, label %41, label %59, !dbg !480

; <label>:41:                                     ; preds = %37
  br label %42, !dbg !481

; <label>:42:                                     ; preds = %55, %41
  %43 = load i16*, i16** %8, align 8, !dbg !483
  %44 = load i16*, i16** %7, align 8, !dbg !485
  %45 = icmp ne i16* %43, %44, !dbg !486
  br i1 %45, label %46, label %53, !dbg !487

; <label>:46:                                     ; preds = %42
  %47 = load i16*, i16** %8, align 8, !dbg !488
  %48 = getelementptr inbounds i16, i16* %47, i64 -1, !dbg !490
  %49 = load i16, i16* %48, align 2, !dbg !491
  %50 = call signext i8 @UnicodeSimpleIsWhiteSpace(i16 zeroext %49), !dbg !492
  %51 = sext i8 %50 to i32, !dbg !492
  %52 = icmp ne i32 %51, 0, !dbg !493
  br label %53

; <label>:53:                                     ; preds = %46, %42
  %54 = phi i1 [ false, %42 ], [ %52, %46 ]
  br i1 %54, label %55, label %58, !dbg !494

; <label>:55:                                     ; preds = %53
  %56 = load i16*, i16** %8, align 8, !dbg !496
  %57 = getelementptr inbounds i16, i16* %56, i32 -1, !dbg !496
  store i16* %57, i16** %8, align 8, !dbg !496
  br label %42, !dbg !498, !llvm.loop !500

; <label>:58:                                     ; preds = %53
  br label %59, !dbg !501

; <label>:59:                                     ; preds = %58, %37
  %60 = load i16*, i16** %8, align 8, !dbg !502
  store i16 0, i16* %60, align 2, !dbg !503
  %61 = load i16*, i16** %7, align 8, !dbg !504
  %62 = call i8* @Unicode_AllocWithUTF16(i16* %61), !dbg !505
  store i8* %62, i8** %5, align 8, !dbg !506
  %63 = load i16*, i16** %6, align 8, !dbg !507
  %64 = bitcast i16* %63 to i8*, !dbg !507
  call void @free(i8* %64) #5, !dbg !508
  %65 = load i8*, i8** %5, align 8, !dbg !509
  ret i8* %65, !dbg !510
}

; Function Attrs: nounwind uwtable
define i8* @Unicode_TrimLeft(i8*) #0 !dbg !511 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !512, metadata !369), !dbg !513
  %3 = load i8*, i8** %2, align 8, !dbg !514
  %4 = call i8* @UnicodeTrimInternal(i8* %3, i32 1), !dbg !515
  ret i8* %4, !dbg !516
}

; Function Attrs: nounwind uwtable
define i8* @Unicode_TrimRight(i8*) #0 !dbg !517 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !518, metadata !369), !dbg !519
  %3 = load i8*, i8** %2, align 8, !dbg !520
  %4 = call i8* @UnicodeTrimInternal(i8* %3, i32 2), !dbg !521
  ret i8* %4, !dbg !522
}

declare i8* @Unicode_AllocWithLength(i8*, i64, i32) #2

declare i64 @Unicode_UTF16Strlen(i16*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @UnicodeSimpleIsWhiteSpace(i16 zeroext) #3 !dbg !523 {
  %2 = alloca i8, align 1
  %3 = alloca i16, align 2
  %4 = alloca i8*, align 8
  store i16 %0, i16* %3, align 2
  call void @llvm.dbg.declare(metadata i16* %3, metadata !526, metadata !369), !dbg !527
  call void @llvm.dbg.declare(metadata i8** %4, metadata !528, metadata !369), !dbg !529
  %5 = load i16, i16* %3, align 2, !dbg !530
  %6 = zext i16 %5 to i32, !dbg !530
  %7 = ashr i32 %6, 8, !dbg !531
  %8 = sext i32 %7 to i64, !dbg !532
  %9 = getelementptr inbounds [256 x i8*], [256 x i8*]* @whitespacePages, i64 0, i64 %8, !dbg !532
  %10 = load i8*, i8** %9, align 8, !dbg !532
  store i8* %10, i8** %4, align 8, !dbg !529
  %11 = load i8*, i8** %4, align 8, !dbg !533
  %12 = icmp ne i8* %11, null, !dbg !533
  br i1 %12, label %14, label %13, !dbg !535

; <label>:13:                                     ; preds = %1
  store i8 0, i8* %2, align 1, !dbg !536
  br label %22, !dbg !536

; <label>:14:                                     ; preds = %1
  %15 = load i16, i16* %3, align 2, !dbg !538
  %16 = zext i16 %15 to i32, !dbg !538
  %17 = and i32 %16, 255, !dbg !539
  %18 = sext i32 %17 to i64, !dbg !540
  %19 = load i8*, i8** %4, align 8, !dbg !540
  %20 = getelementptr inbounds i8, i8* %19, i64 %18, !dbg !540
  %21 = load i8, i8* %20, align 1, !dbg !540
  store i8 %21, i8* %2, align 1, !dbg !541
  br label %22, !dbg !541

; <label>:22:                                     ; preds = %14, %13
  %23 = load i8, i8* %2, align 1, !dbg !542
  ret i8 %23, !dbg !542
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!358, !359}
!llvm.ident = !{!360}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !342)
!1 = !DIFile(filename: "unicodeSimpleTransforms.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1033")
!2 = !{!3, !336}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 58, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/unicodeTypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1033")
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
!336 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !337, line: 262, size: 32, align: 32, elements: !338)
!337 = !DIFile(filename: "unicodeSimpleTransforms.c", directory: "/home/lichi/Desktop/open-vm-tools/line1033")
!338 = !{!339, !340, !341}
!339 = !DIEnumerator(name: "UNICODE_TRIMLEFT", value: 1)
!340 = !DIEnumerator(name: "UNICODE_TRIMRIGHT", value: 2)
!341 = !DIEnumerator(name: "UNICODE_TRIMBOTH", value: 3)
!342 = !{!343, !352, !354, !355, !356, !357}
!343 = distinct !DIGlobalVariable(name: "whitespacePages", scope: !0, file: !337, line: 226, type: !344, isLocal: true, isDefinition: true, variable: [256 x i8*]* @whitespacePages)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 16384, align: 64, elements: !350)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64, align: 64)
!346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !348, line: 230, baseType: !349)
!348 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1033")
!349 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!350 = !{!351}
!351 = !DISubrange(count: 256)
!352 = distinct !DIGlobalVariable(name: "wspg_00", scope: !0, file: !337, line: 42, type: !353, isLocal: true, isDefinition: true, variable: [256 x i8]* @wspg_00)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 2048, align: 8, elements: !350)
!354 = distinct !DIGlobalVariable(name: "wspg_16", scope: !0, file: !337, line: 82, type: !353, isLocal: true, isDefinition: true, variable: [256 x i8]* @wspg_16)
!355 = distinct !DIGlobalVariable(name: "wspg_18", scope: !0, file: !337, line: 118, type: !353, isLocal: true, isDefinition: true, variable: [256 x i8]* @wspg_18)
!356 = distinct !DIGlobalVariable(name: "wspg_20", scope: !0, file: !337, line: 154, type: !353, isLocal: true, isDefinition: true, variable: [256 x i8]* @wspg_20)
!357 = distinct !DIGlobalVariable(name: "wspg_30", scope: !0, file: !337, line: 190, type: !353, isLocal: true, isDefinition: true, variable: [256 x i8]* @wspg_30)
!358 = !{i32 2, !"Dwarf Version", i32 4}
!359 = !{i32 2, !"Debug Info Version", i32 3}
!360 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!361 = distinct !DISubprogram(name: "Unicode_FoldCase", scope: !337, file: !337, line: 317, type: !362, isLocal: false, isDefinition: true, scopeLine: 318, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !367)
!362 = !DISubroutineType(types: !363)
!363 = !{!364, !365}
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64, align: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64, align: 64)
!366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !349)
!367 = !{}
!368 = !DILocalVariable(name: "str", arg: 1, scope: !361, file: !337, line: 317, type: !365)
!369 = !DIExpression()
!370 = !DILocation(line: 317, column: 30, scope: !361)
!371 = !DILocalVariable(name: "folded", scope: !361, file: !337, line: 319, type: !364)
!372 = !DILocation(line: 319, column: 10, scope: !361)
!373 = !DILocalVariable(name: "utf16", scope: !361, file: !337, line: 320, type: !374)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64, align: 64)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "utf16_t", file: !348, line: 1139, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !348, line: 175, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !378, line: 49, baseType: !379)
!378 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line1033")
!379 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!380 = !DILocation(line: 320, column: 13, scope: !361)
!381 = !DILocalVariable(name: "utf16Current", scope: !361, file: !337, line: 321, type: !374)
!382 = !DILocation(line: 321, column: 13, scope: !361)
!383 = !DILocation(line: 325, column: 34, scope: !361)
!384 = !DILocation(line: 325, column: 12, scope: !361)
!385 = !DILocation(line: 325, column: 10, scope: !361)
!386 = !DILocation(line: 327, column: 19, scope: !361)
!387 = !DILocation(line: 327, column: 17, scope: !361)
!388 = !DILocation(line: 328, column: 4, scope: !361)
!389 = !DILocation(line: 328, column: 12, scope: !390)
!390 = !DILexicalBlockFile(scope: !361, file: !337, discriminator: 1)
!391 = !DILocation(line: 328, column: 11, scope: !390)
!392 = !DILocation(line: 328, column: 4, scope: !390)
!393 = !DILocation(line: 329, column: 46, scope: !394)
!394 = distinct !DILexicalBlock(scope: !361, file: !337, line: 328, column: 26)
!395 = !DILocation(line: 329, column: 45, scope: !394)
!396 = !DILocation(line: 329, column: 23, scope: !394)
!397 = !DILocation(line: 329, column: 8, scope: !394)
!398 = !DILocation(line: 329, column: 21, scope: !394)
!399 = !DILocation(line: 330, column: 19, scope: !394)
!400 = !DILocation(line: 328, column: 4, scope: !401)
!401 = !DILexicalBlockFile(scope: !361, file: !337, discriminator: 2)
!402 = distinct !{!402, !388}
!403 = !DILocation(line: 333, column: 36, scope: !361)
!404 = !DILocation(line: 333, column: 13, scope: !361)
!405 = !DILocation(line: 333, column: 11, scope: !361)
!406 = !DILocation(line: 334, column: 9, scope: !361)
!407 = !DILocation(line: 334, column: 4, scope: !361)
!408 = !DILocation(line: 336, column: 11, scope: !361)
!409 = !DILocation(line: 336, column: 4, scope: !361)
!410 = distinct !DISubprogram(name: "Unicode_AllocWithUTF16", scope: !411, file: !411, line: 167, type: !412, isLocal: true, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !367)
!411 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/unicodeBase.h", directory: "/home/lichi/Desktop/open-vm-tools/line1033")
!412 = !DISubroutineType(types: !413)
!413 = !{!364, !414}
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64, align: 64)
!415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !375)
!416 = !DILocalVariable(name: "utf16String", arg: 1, scope: !410, file: !411, line: 167, type: !414)
!417 = !DILocation(line: 167, column: 39, scope: !410)
!418 = !DILocation(line: 169, column: 35, scope: !410)
!419 = !DILocation(line: 169, column: 11, scope: !410)
!420 = !DILocation(line: 169, column: 4, scope: !410)
!421 = distinct !DISubprogram(name: "Unicode_Trim", scope: !337, file: !337, line: 411, type: !362, isLocal: false, isDefinition: true, scopeLine: 412, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !367)
!422 = !DILocalVariable(name: "str", arg: 1, scope: !421, file: !337, line: 411, type: !365)
!423 = !DILocation(line: 411, column: 26, scope: !421)
!424 = !DILocation(line: 413, column: 31, scope: !421)
!425 = !DILocation(line: 413, column: 11, scope: !421)
!426 = !DILocation(line: 413, column: 4, scope: !421)
!427 = distinct !DISubprogram(name: "UnicodeTrimInternal", scope: !337, file: !337, line: 358, type: !428, isLocal: true, isDefinition: true, scopeLine: 360, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !367)
!428 = !DISubroutineType(types: !429)
!429 = !{!364, !365, !430}
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "UnicodeTrimSide", file: !337, line: 266, baseType: !336)
!431 = !DILocalVariable(name: "str", arg: 1, scope: !427, file: !337, line: 358, type: !365)
!432 = !DILocation(line: 358, column: 33, scope: !427)
!433 = !DILocalVariable(name: "side", arg: 2, scope: !427, file: !337, line: 359, type: !430)
!434 = !DILocation(line: 359, column: 37, scope: !427)
!435 = !DILocalVariable(name: "trimmed", scope: !427, file: !337, line: 361, type: !364)
!436 = !DILocation(line: 361, column: 10, scope: !427)
!437 = !DILocalVariable(name: "utf16", scope: !427, file: !337, line: 362, type: !374)
!438 = !DILocation(line: 362, column: 13, scope: !427)
!439 = !DILocalVariable(name: "utf16Start", scope: !427, file: !337, line: 363, type: !374)
!440 = !DILocation(line: 363, column: 13, scope: !427)
!441 = !DILocalVariable(name: "utf16End", scope: !427, file: !337, line: 364, type: !374)
!442 = !DILocation(line: 364, column: 13, scope: !427)
!443 = !DILocation(line: 368, column: 34, scope: !427)
!444 = !DILocation(line: 368, column: 12, scope: !427)
!445 = !DILocation(line: 368, column: 10, scope: !427)
!446 = !DILocation(line: 369, column: 17, scope: !427)
!447 = !DILocation(line: 369, column: 15, scope: !427)
!448 = !DILocation(line: 370, column: 15, scope: !427)
!449 = !DILocation(line: 370, column: 43, scope: !427)
!450 = !DILocation(line: 370, column: 23, scope: !427)
!451 = !DILocation(line: 370, column: 21, scope: !427)
!452 = !DILocation(line: 370, column: 13, scope: !427)
!453 = !DILocation(line: 372, column: 8, scope: !454)
!454 = distinct !DILexicalBlock(scope: !427, file: !337, line: 372, column: 8)
!455 = !DILocation(line: 372, column: 13, scope: !454)
!456 = !DILocation(line: 372, column: 8, scope: !427)
!457 = !DILocation(line: 373, column: 7, scope: !458)
!458 = distinct !DILexicalBlock(scope: !454, file: !337, line: 372, column: 33)
!459 = !DILocation(line: 373, column: 14, scope: !460)
!460 = !DILexicalBlockFile(scope: !458, file: !337, discriminator: 1)
!461 = !DILocation(line: 373, column: 28, scope: !460)
!462 = !DILocation(line: 373, column: 25, scope: !460)
!463 = !DILocation(line: 373, column: 37, scope: !460)
!464 = !DILocation(line: 373, column: 67, scope: !465)
!465 = !DILexicalBlockFile(scope: !458, file: !337, discriminator: 2)
!466 = !DILocation(line: 373, column: 66, scope: !465)
!467 = !DILocation(line: 373, column: 40, scope: !465)
!468 = !DILocation(line: 373, column: 37, scope: !465)
!469 = !DILocation(line: 373, column: 7, scope: !470)
!470 = !DILexicalBlockFile(scope: !458, file: !337, discriminator: 3)
!471 = !DILocation(line: 374, column: 20, scope: !472)
!472 = distinct !DILexicalBlock(scope: !458, file: !337, line: 373, column: 80)
!473 = !DILocation(line: 373, column: 7, scope: !474)
!474 = !DILexicalBlockFile(scope: !458, file: !337, discriminator: 4)
!475 = distinct !{!475, !457}
!476 = !DILocation(line: 376, column: 4, scope: !458)
!477 = !DILocation(line: 378, column: 8, scope: !478)
!478 = distinct !DILexicalBlock(scope: !427, file: !337, line: 378, column: 8)
!479 = !DILocation(line: 378, column: 13, scope: !478)
!480 = !DILocation(line: 378, column: 8, scope: !427)
!481 = !DILocation(line: 379, column: 7, scope: !482)
!482 = distinct !DILexicalBlock(scope: !478, file: !337, line: 378, column: 34)
!483 = !DILocation(line: 379, column: 14, scope: !484)
!484 = !DILexicalBlockFile(scope: !482, file: !337, discriminator: 1)
!485 = !DILocation(line: 379, column: 26, scope: !484)
!486 = !DILocation(line: 379, column: 23, scope: !484)
!487 = !DILocation(line: 379, column: 37, scope: !484)
!488 = !DILocation(line: 379, column: 68, scope: !489)
!489 = !DILexicalBlockFile(scope: !482, file: !337, discriminator: 2)
!490 = !DILocation(line: 379, column: 77, scope: !489)
!491 = !DILocation(line: 379, column: 66, scope: !489)
!492 = !DILocation(line: 379, column: 40, scope: !489)
!493 = !DILocation(line: 379, column: 37, scope: !489)
!494 = !DILocation(line: 379, column: 7, scope: !495)
!495 = !DILexicalBlockFile(scope: !482, file: !337, discriminator: 3)
!496 = !DILocation(line: 380, column: 18, scope: !497)
!497 = distinct !DILexicalBlock(scope: !482, file: !337, line: 379, column: 84)
!498 = !DILocation(line: 379, column: 7, scope: !499)
!499 = !DILexicalBlockFile(scope: !482, file: !337, discriminator: 4)
!500 = distinct !{!500, !481}
!501 = !DILocation(line: 382, column: 4, scope: !482)
!502 = !DILocation(line: 384, column: 5, scope: !427)
!503 = !DILocation(line: 384, column: 14, scope: !427)
!504 = !DILocation(line: 386, column: 37, scope: !427)
!505 = !DILocation(line: 386, column: 14, scope: !427)
!506 = !DILocation(line: 386, column: 12, scope: !427)
!507 = !DILocation(line: 387, column: 9, scope: !427)
!508 = !DILocation(line: 387, column: 4, scope: !427)
!509 = !DILocation(line: 389, column: 11, scope: !427)
!510 = !DILocation(line: 389, column: 4, scope: !427)
!511 = distinct !DISubprogram(name: "Unicode_TrimLeft", scope: !337, file: !337, line: 435, type: !362, isLocal: false, isDefinition: true, scopeLine: 436, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !367)
!512 = !DILocalVariable(name: "str", arg: 1, scope: !511, file: !337, line: 435, type: !365)
!513 = !DILocation(line: 435, column: 30, scope: !511)
!514 = !DILocation(line: 437, column: 31, scope: !511)
!515 = !DILocation(line: 437, column: 11, scope: !511)
!516 = !DILocation(line: 437, column: 4, scope: !511)
!517 = distinct !DISubprogram(name: "Unicode_TrimRight", scope: !337, file: !337, line: 459, type: !362, isLocal: false, isDefinition: true, scopeLine: 460, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !367)
!518 = !DILocalVariable(name: "str", arg: 1, scope: !517, file: !337, line: 459, type: !365)
!519 = !DILocation(line: 459, column: 31, scope: !517)
!520 = !DILocation(line: 461, column: 31, scope: !517)
!521 = !DILocation(line: 461, column: 11, scope: !517)
!522 = !DILocation(line: 461, column: 4, scope: !517)
!523 = distinct !DISubprogram(name: "UnicodeSimpleIsWhiteSpace", scope: !337, file: !337, line: 286, type: !524, isLocal: true, isDefinition: true, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !367)
!524 = !DISubroutineType(types: !525)
!525 = !{!347, !375}
!526 = !DILocalVariable(name: "codeUnit", arg: 1, scope: !523, file: !337, line: 286, type: !375)
!527 = !DILocation(line: 286, column: 35, scope: !523)
!528 = !DILocalVariable(name: "page", scope: !523, file: !337, line: 288, type: !345)
!529 = !DILocation(line: 288, column: 16, scope: !523)
!530 = !DILocation(line: 288, column: 39, scope: !523)
!531 = !DILocation(line: 288, column: 48, scope: !523)
!532 = !DILocation(line: 288, column: 23, scope: !523)
!533 = !DILocation(line: 290, column: 9, scope: !534)
!534 = distinct !DILexicalBlock(scope: !523, file: !337, line: 290, column: 8)
!535 = !DILocation(line: 290, column: 8, scope: !523)
!536 = !DILocation(line: 291, column: 7, scope: !537)
!537 = distinct !DILexicalBlock(scope: !534, file: !337, line: 290, column: 15)
!538 = !DILocation(line: 294, column: 16, scope: !523)
!539 = !DILocation(line: 294, column: 25, scope: !523)
!540 = !DILocation(line: 294, column: 11, scope: !523)
!541 = !DILocation(line: 294, column: 4, scope: !523)
!542 = !DILocation(line: 295, column: 1, scope: !523)
