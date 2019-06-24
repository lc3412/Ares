; ModuleID = '/home/lichi/Desktop/genwqe/[task]lib--__libzHW.o/[inter]lib--deflate.o.i'
source_filename = "/home/lichi/Desktop/genwqe/[task]lib--__libzHW.o/[inter]lib--deflate.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.zedc_stream_s = type { i32, i32, i32, i32, i32, i32, i32, i8*, i32, i64, i8*, i32, i64, i32, i32, i8*, %struct.ddcb_cmd, i16, i16, i32, i32, i32, %struct.zedc_fifo, %struct.zedc_fifo, i32, i16, i32, i32, i8, i32, i32, i32, i32, i32, %struct.zedc_wsp*, i32, [3 x i32], i32, i32, i32, i32, %struct.gzedc_header_s*, i32, i16, i8, i8, i32, i32, i8, i8, i32, i16, i8, i16, i32, i32, i32, i64, i32, i32, i16, i8, i16, i32, i32, [18 x i8], i16, i32, i32, [18 x i8] }
%struct.ddcb_cmd = type { i64, i64, i8, i8, i8, i8, i16, i16, i16, i16, i32, i64, i64, i64, i64, [64 x i8], %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i64, [96 x i8] }
%struct.zedc_fifo = type { i32, i32, [256 x i8] }
%struct.zedc_wsp = type { [2 x [32784 x i8]], [512 x i8] }
%struct.gzedc_header_s = type { i32, i64, i32, i32, i8*, i32, i32, i8*, i32, i8*, i32, i32, i32 }
%struct.zedc_dev_t = type { i32, i32, %struct.card_dev_t*, i32, i32, i32 }
%struct.card_dev_t = type opaque
%struct.zedc_asiv_defl = type { i64, i32, i32, i64, i32, i32, i64, i32, i32, i64, i64, i64, i32, i32, i64, [7 x i8], i8 }
%struct.zedc_asv_defl = type { i16, [5 x i8], i8, i64, i32, i32, i32, i32, [24 x i8], i8, [7 x i8] }
%union.anon.0 = type { i32 }

@zedc_dbg = external global i32, align 4
@zedc_log = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [107 x i8] c"%08x.%08x %s:%u: Error: deflate failed rc=%d card_rc=%d\0A  DDCB returned (RETC=%03x ATTN=%04x PROGR=%x) %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"deflate.c\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ERR\00", align 1
@.str.4 = private unnamed_addr constant [101 x i8] c"%08x.%08x %s:%u: Warn: [%s] What a pity, optimization did not work\0A  (RETC=%03x ATTN=%04x PROGR=%x)\0A\00", align 1
@__func__.zedc_deflate = private unnamed_addr constant [13 x i8] c"zedc_deflate\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"%08x.%08x %s:%u: Error: DICT_OFFSET too large (%u)\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"%08x.%08x %s:%u: Error: FIFO not empty: %02x\0A\00", align 1
@bmsk = internal constant [8 x i8] c"\FF\01\03\07\0F\1F?\7F", align 1
@.str.7 = private unnamed_addr constant [93 x i8] c"%08x.%08x %s:%u: Error: inp_processed=%d avail_in=%d invalid:   retc=%x attn=%x progress=%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [123 x i8] c"%08x.%08x %s:%u: Error: outp_returned=%u inp_processed=%d avail_in=%d avail_out=%d invalid:   retc=%x attn=%x progress=%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"%08x.%08x %s:%u: Error: onumbits %d too large (O)\0A\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"%08x.%08x %s:%u: Error: onumbits %d too large (N)\0A\00", align 1
@.str.11 = private unnamed_addr constant [56 x i8] c"%08x.%08x %s:%u: Error: ** err: unstored data bytes **\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @zedc_deflateInit2(%struct.zedc_stream_s*, i32, i32, i32, i32, i32) #0 !dbg !125 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.zedc_stream_s*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.zedc_dev_t*, align 8
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %8, metadata !288, metadata !289), !dbg !290
  store i32 %1, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !291, metadata !289), !dbg !292
  store i32 %2, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !293, metadata !289), !dbg !294
  store i32 %3, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !295, metadata !289), !dbg !296
  store i32 %4, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !297, metadata !289), !dbg !298
  store i32 %5, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !299, metadata !289), !dbg !300
  call void @llvm.dbg.declare(metadata i32* %14, metadata !301, metadata !289), !dbg !302
  call void @llvm.dbg.declare(metadata %struct.zedc_dev_t** %15, metadata !303, metadata !289), !dbg !304
  %16 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !305
  %17 = icmp ne %struct.zedc_stream_s* %16, null, !dbg !305
  br i1 %17, label %19, label %18, !dbg !307

; <label>:18:                                     ; preds = %6
  store i32 -2, i32* %7, align 4, !dbg !308
  br label %65, !dbg !308

; <label>:19:                                     ; preds = %6
  %20 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !309
  %21 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %20, i32 0, i32 15, !dbg !310
  %22 = load i8*, i8** %21, align 8, !dbg !310
  %23 = bitcast i8* %22 to %struct.zedc_dev_t*, !dbg !311
  store %struct.zedc_dev_t* %23, %struct.zedc_dev_t** %15, align 8, !dbg !312
  %24 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %15, align 8, !dbg !313
  %25 = icmp ne %struct.zedc_dev_t* %24, null, !dbg !313
  br i1 %25, label %27, label %26, !dbg !315

; <label>:26:                                     ; preds = %19
  store i32 -2, i32* %7, align 4, !dbg !316
  br label %65, !dbg !316

; <label>:27:                                     ; preds = %19
  %28 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %15, align 8, !dbg !317
  %29 = call i32 @is_zedc(%struct.zedc_dev_t* %28), !dbg !319
  %30 = icmp ne i32 %29, 0, !dbg !319
  br i1 %30, label %32, label %31, !dbg !320

; <label>:31:                                     ; preds = %27
  store i32 -319, i32* %7, align 4, !dbg !321
  br label %65, !dbg !321

; <label>:32:                                     ; preds = %27
  %33 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !322
  %34 = call i32 @zedc_alloc_workspace(%struct.zedc_stream_s* %33), !dbg !323
  store i32 %34, i32* %14, align 4, !dbg !324
  %35 = load i32, i32* %14, align 4, !dbg !325
  %36 = icmp ne i32 %35, 0, !dbg !327
  br i1 %36, label %37, label %39, !dbg !328

; <label>:37:                                     ; preds = %32
  %38 = load i32, i32* %14, align 4, !dbg !329
  store i32 %38, i32* %7, align 4, !dbg !330
  br label %65, !dbg !330

; <label>:39:                                     ; preds = %32
  %40 = load i32, i32* %11, align 4, !dbg !331
  %41 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !332
  %42 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %41, i32 0, i32 2, !dbg !333
  store i32 %40, i32* %42, align 8, !dbg !334
  %43 = load i32, i32* %9, align 4, !dbg !335
  %44 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !336
  %45 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %44, i32 0, i32 0, !dbg !337
  store i32 %43, i32* %45, align 8, !dbg !338
  %46 = load i32, i32* %10, align 4, !dbg !339
  %47 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !340
  %48 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %47, i32 0, i32 1, !dbg !341
  store i32 %46, i32* %48, align 4, !dbg !342
  %49 = load i32, i32* %12, align 4, !dbg !343
  %50 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !344
  %51 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %50, i32 0, i32 3, !dbg !345
  store i32 %49, i32* %51, align 4, !dbg !346
  %52 = load i32, i32* %13, align 4, !dbg !347
  %53 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !348
  %54 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %53, i32 0, i32 4, !dbg !349
  store i32 %52, i32* %54, align 8, !dbg !350
  %55 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !351
  call void @__deflateInit_state(%struct.zedc_stream_s* %55), !dbg !352
  %56 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !353
  %57 = call i32 @zedc_format_init(%struct.zedc_stream_s* %56), !dbg !354
  store i32 %57, i32* %14, align 4, !dbg !355
  %58 = load i32, i32* %14, align 4, !dbg !356
  %59 = icmp ne i32 %58, 0, !dbg !358
  br i1 %59, label %60, label %64, !dbg !359

; <label>:60:                                     ; preds = %39
  %61 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !360
  %62 = call i32 @zedc_free_workspace(%struct.zedc_stream_s* %61), !dbg !362
  %63 = load i32, i32* %14, align 4, !dbg !363
  store i32 %63, i32* %7, align 4, !dbg !364
  br label %65, !dbg !364

; <label>:64:                                     ; preds = %39
  store i32 0, i32* %7, align 4, !dbg !365
  br label %65, !dbg !365

; <label>:65:                                     ; preds = %64, %60, %37, %31, %26, %18
  %66 = load i32, i32* %7, align 4, !dbg !366
  ret i32 %66, !dbg !366
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @is_zedc(%struct.zedc_dev_t*) #2 !dbg !367 {
  %2 = alloca %struct.zedc_dev_t*, align 8
  %3 = alloca i64, align 8
  store %struct.zedc_dev_t* %0, %struct.zedc_dev_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_dev_t** %2, metadata !370, metadata !289), !dbg !371
  call void @llvm.dbg.declare(metadata i64* %3, metadata !372, metadata !289), !dbg !373
  %4 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %2, align 8, !dbg !374
  %5 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %4, i32 0, i32 2, !dbg !375
  %6 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !375
  %7 = call i64 @accel_get_app_id(%struct.card_dev_t* %6), !dbg !376
  store i64 %7, i64* %3, align 8, !dbg !373
  %8 = load i64, i64* %3, align 8, !dbg !377
  %9 = and i64 %8, 4294967295, !dbg !378
  %10 = icmp eq i64 %9, 1197099344, !dbg !379
  %11 = zext i1 %10 to i32, !dbg !379
  ret i32 %11, !dbg !380
}

declare i32 @zedc_alloc_workspace(%struct.zedc_stream_s*) #3

; Function Attrs: nounwind uwtable
define internal void @__deflateInit_state(%struct.zedc_stream_s*) #0 !dbg !381 {
  %2 = alloca %struct.zedc_stream_s*, align 8
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %2, metadata !384, metadata !289), !dbg !385
  %3 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !386
  %4 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %3, i32 0, i32 22, !dbg !387
  call void @fifo_init(%struct.zedc_fifo* %4), !dbg !388
  %5 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !389
  %6 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %5, i32 0, i32 23, !dbg !390
  call void @fifo_init(%struct.zedc_fifo* %6), !dbg !391
  %7 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !392
  %8 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %7, i32 0, i32 12, !dbg !393
  store i64 0, i64* %8, align 8, !dbg !394
  %9 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !395
  %10 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %9, i32 0, i32 9, !dbg !396
  store i64 0, i64* %10, align 8, !dbg !397
  %11 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !398
  %12 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %11, i32 0, i32 35, !dbg !399
  store i32 0, i32* %12, align 8, !dbg !400
  %13 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !401
  %14 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %13, i32 0, i32 60, !dbg !402
  store i16 0, i16* %14, align 8, !dbg !403
  %15 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !404
  %16 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %15, i32 0, i32 62, !dbg !405
  store i16 0, i16* %16, align 4, !dbg !406
  %17 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !407
  %18 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %17, i32 0, i32 61, !dbg !408
  store i8 0, i8* %18, align 2, !dbg !409
  %19 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !410
  %20 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %19, i32 0, i32 28, !dbg !411
  store i8 2, i8* %20, align 8, !dbg !412
  %21 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !413
  %22 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %21, i32 0, i32 27, !dbg !414
  store i32 3, i32* %22, align 4, !dbg !415
  %23 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !416
  %24 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %23, i32 0, i32 13, !dbg !417
  store i32 0, i32* %24, align 8, !dbg !418
  %25 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !419
  %26 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %25, i32 0, i32 14, !dbg !420
  store i32 1, i32* %26, align 4, !dbg !421
  %27 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !422
  %28 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %27, i32 0, i32 40, !dbg !423
  store i32 0, i32* %28, align 4, !dbg !424
  %29 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !425
  %30 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %29, i32 0, i32 31, !dbg !426
  store i32 0, i32* %30, align 4, !dbg !427
  %31 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !428
  %32 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %31, i32 0, i32 30, !dbg !429
  store i32 0, i32* %32, align 8, !dbg !430
  %33 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !431
  %34 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %33, i32 0, i32 32, !dbg !432
  store i32 0, i32* %34, align 8, !dbg !433
  %35 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !434
  %36 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %35, i32 0, i32 33, !dbg !435
  store i32 0, i32* %36, align 4, !dbg !436
  %37 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !437
  %38 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %37, i32 0, i32 42, !dbg !438
  store i32 0, i32* %38, align 8, !dbg !439
  %39 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !440
  %40 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %39, i32 0, i32 43, !dbg !441
  store i16 0, i16* %40, align 4, !dbg !442
  %41 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !443
  %42 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %41, i32 0, i32 44, !dbg !444
  store i8 0, i8* %42, align 2, !dbg !445
  %43 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !446
  %44 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %43, i32 0, i32 45, !dbg !447
  store i8 0, i8* %44, align 1, !dbg !448
  %45 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !449
  %46 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %45, i32 0, i32 46, !dbg !450
  store i32 0, i32* %46, align 8, !dbg !451
  %47 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !452
  %48 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %47, i32 0, i32 47, !dbg !453
  store i32 0, i32* %48, align 4, !dbg !454
  %49 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !455
  %50 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %49, i32 0, i32 48, !dbg !456
  store i8 0, i8* %50, align 8, !dbg !457
  %51 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !458
  %52 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %51, i32 0, i32 49, !dbg !459
  store i8 0, i8* %52, align 1, !dbg !460
  %53 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !461
  %54 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %53, i32 0, i32 50, !dbg !462
  store i32 0, i32* %54, align 4, !dbg !463
  %55 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !464
  %56 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %55, i32 0, i32 51, !dbg !465
  store i16 0, i16* %56, align 8, !dbg !466
  %57 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !467
  %58 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %57, i32 0, i32 52, !dbg !468
  store i8 0, i8* %58, align 2, !dbg !469
  %59 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !470
  %60 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %59, i32 0, i32 53, !dbg !471
  store i16 0, i16* %60, align 4, !dbg !472
  %61 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !473
  %62 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %61, i32 0, i32 54, !dbg !474
  store i32 0, i32* %62, align 8, !dbg !475
  %63 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !476
  %64 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %63, i32 0, i32 55, !dbg !477
  store i32 0, i32* %64, align 4, !dbg !478
  %65 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !479
  %66 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %65, i32 0, i32 58, !dbg !480
  store i32 0, i32* %66, align 8, !dbg !481
  %67 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !482
  %68 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %67, i32 0, i32 59, !dbg !483
  store i32 0, i32* %68, align 4, !dbg !484
  ret void, !dbg !485
}

declare i32 @zedc_format_init(%struct.zedc_stream_s*) #3

declare i32 @zedc_free_workspace(%struct.zedc_stream_s*) #3

; Function Attrs: nounwind uwtable
define i32 @zedc_deflateSetDictionary(%struct.zedc_stream_s*, i8*, i32) #0 !dbg !486 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zedc_stream_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %5, metadata !489, metadata !289), !dbg !490
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !491, metadata !289), !dbg !492
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !493, metadata !289), !dbg !494
  %8 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !495
  %9 = icmp ne %struct.zedc_stream_s* %8, null, !dbg !495
  br i1 %9, label %11, label %10, !dbg !497

; <label>:10:                                     ; preds = %3
  store i32 -2, i32* %4, align 4, !dbg !498
  br label %47, !dbg !498

; <label>:11:                                     ; preds = %3
  %12 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !499
  %13 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %12, i32 0, i32 31, !dbg !501
  %14 = load i32, i32* %13, align 4, !dbg !501
  %15 = icmp eq i32 %14, 1, !dbg !502
  br i1 %15, label %16, label %17, !dbg !503

; <label>:16:                                     ; preds = %11
  store i32 -2, i32* %4, align 4, !dbg !504
  br label %47, !dbg !504

; <label>:17:                                     ; preds = %11
  %18 = load i32, i32* %7, align 4, !dbg !505
  %19 = icmp ugt i32 %18, 32784, !dbg !507
  br i1 %19, label %20, label %21, !dbg !508

; <label>:20:                                     ; preds = %17
  store i32 -2, i32* %4, align 4, !dbg !509
  br label %47, !dbg !509

; <label>:21:                                     ; preds = %17
  %22 = load i8*, i8** %6, align 8, !dbg !510
  %23 = icmp eq i8* %22, null, !dbg !512
  br i1 %23, label %24, label %25, !dbg !513

; <label>:24:                                     ; preds = %21
  store i32 -2, i32* %4, align 4, !dbg !514
  br label %47, !dbg !514

; <label>:25:                                     ; preds = %21
  %26 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !515
  %27 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %26, i32 0, i32 34, !dbg !516
  %28 = load %struct.zedc_wsp*, %struct.zedc_wsp** %27, align 8, !dbg !516
  %29 = getelementptr inbounds %struct.zedc_wsp, %struct.zedc_wsp* %28, i32 0, i32 0, !dbg !517
  %30 = getelementptr inbounds [2 x [32784 x i8]], [2 x [32784 x i8]]* %29, i64 0, i64 0, !dbg !515
  %31 = bitcast [32784 x i8]* %30 to i8*, !dbg !518
  %32 = load i8*, i8** %6, align 8, !dbg !519
  %33 = load i32, i32* %7, align 4, !dbg !520
  %34 = zext i32 %33 to i64, !dbg !520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 %34, i32 1, i1 false), !dbg !518
  %35 = load i32, i32* %7, align 4, !dbg !521
  %36 = trunc i32 %35 to i16, !dbg !521
  %37 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !522
  %38 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %37, i32 0, i32 60, !dbg !523
  store i16 %36, i16* %38, align 8, !dbg !524
  %39 = load i8*, i8** %6, align 8, !dbg !525
  %40 = load i32, i32* %7, align 4, !dbg !526
  %41 = call i64 @__adler32(i64 1, i8* %39, i32 %40), !dbg !527
  %42 = trunc i64 %41 to i32, !dbg !527
  %43 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !528
  %44 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %43, i32 0, i32 40, !dbg !529
  store i32 %42, i32* %44, align 4, !dbg !530
  %45 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !531
  %46 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %45, i32 0, i32 33, !dbg !532
  store i32 1, i32* %46, align 4, !dbg !533
  store i32 0, i32* %4, align 4, !dbg !534
  br label %47, !dbg !534

; <label>:47:                                     ; preds = %25, %24, %20, %16, %10
  %48 = load i32, i32* %4, align 4, !dbg !535
  ret i32 %48, !dbg !535
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

declare i64 @__adler32(i64, i8*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @zedc_deflateCopy(%struct.zedc_stream_s*, %struct.zedc_stream_s*) #0 !dbg !536 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zedc_stream_s*, align 8
  %5 = alloca %struct.zedc_stream_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %4, metadata !539, metadata !289), !dbg !540
  store %struct.zedc_stream_s* %1, %struct.zedc_stream_s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %5, metadata !541, metadata !289), !dbg !542
  call void @llvm.dbg.declare(metadata i32* %6, metadata !543, metadata !289), !dbg !544
  %8 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !545
  %9 = bitcast %struct.zedc_stream_s* %8 to i8*, !dbg !546
  %10 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !547
  %11 = bitcast %struct.zedc_stream_s* %10 to i8*, !dbg !546
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %11, i64 1088, i32 8, i1 false), !dbg !546
  %12 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !548
  %13 = call i32 @zedc_alloc_workspace(%struct.zedc_stream_s* %12), !dbg !549
  store i32 %13, i32* %6, align 4, !dbg !550
  %14 = load i32, i32* %6, align 4, !dbg !551
  %15 = icmp ne i32 %14, 0, !dbg !553
  br i1 %15, label %16, label %18, !dbg !554

; <label>:16:                                     ; preds = %2
  %17 = load i32, i32* %6, align 4, !dbg !555
  store i32 %17, i32* %3, align 4, !dbg !556
  br label %48, !dbg !556

; <label>:18:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !557, metadata !289), !dbg !558
  %19 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !559
  %20 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %19, i32 0, i32 35, !dbg !560
  %21 = load i32, i32* %20, align 8, !dbg !560
  store i32 %21, i32* %7, align 4, !dbg !558
  %22 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !561
  %23 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %22, i32 0, i32 34, !dbg !562
  %24 = load %struct.zedc_wsp*, %struct.zedc_wsp** %23, align 8, !dbg !562
  %25 = getelementptr inbounds %struct.zedc_wsp, %struct.zedc_wsp* %24, i32 0, i32 1, !dbg !563
  %26 = getelementptr inbounds [512 x i8], [512 x i8]* %25, i32 0, i32 0, !dbg !564
  %27 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !565
  %28 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %27, i32 0, i32 34, !dbg !566
  %29 = load %struct.zedc_wsp*, %struct.zedc_wsp** %28, align 8, !dbg !566
  %30 = getelementptr inbounds %struct.zedc_wsp, %struct.zedc_wsp* %29, i32 0, i32 1, !dbg !567
  %31 = getelementptr inbounds [512 x i8], [512 x i8]* %30, i32 0, i32 0, !dbg !564
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %31, i64 1, i32 1, i1 false), !dbg !564
  %32 = load i32, i32* %7, align 4, !dbg !568
  %33 = zext i32 %32 to i64, !dbg !569
  %34 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !569
  %35 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %34, i32 0, i32 34, !dbg !570
  %36 = load %struct.zedc_wsp*, %struct.zedc_wsp** %35, align 8, !dbg !570
  %37 = getelementptr inbounds %struct.zedc_wsp, %struct.zedc_wsp* %36, i32 0, i32 0, !dbg !571
  %38 = getelementptr inbounds [2 x [32784 x i8]], [2 x [32784 x i8]]* %37, i64 0, i64 %33, !dbg !569
  %39 = getelementptr inbounds [32784 x i8], [32784 x i8]* %38, i32 0, i32 0, !dbg !572
  %40 = load i32, i32* %7, align 4, !dbg !573
  %41 = zext i32 %40 to i64, !dbg !574
  %42 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !574
  %43 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %42, i32 0, i32 34, !dbg !575
  %44 = load %struct.zedc_wsp*, %struct.zedc_wsp** %43, align 8, !dbg !575
  %45 = getelementptr inbounds %struct.zedc_wsp, %struct.zedc_wsp* %44, i32 0, i32 0, !dbg !576
  %46 = getelementptr inbounds [2 x [32784 x i8]], [2 x [32784 x i8]]* %45, i64 0, i64 %41, !dbg !574
  %47 = getelementptr inbounds [32784 x i8], [32784 x i8]* %46, i32 0, i32 0, !dbg !572
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %47, i64 32784, i32 1, i1 false), !dbg !572
  store i32 0, i32* %3, align 4, !dbg !577
  br label %48, !dbg !577

; <label>:48:                                     ; preds = %18, %16
  %49 = load i32, i32* %3, align 4, !dbg !578
  ret i32 %49, !dbg !578
}

; Function Attrs: nounwind uwtable
define i32 @zedc_deflateReset(%struct.zedc_stream_s*) #0 !dbg !579 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zedc_stream_s*, align 8
  %4 = alloca i32, align 4
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %3, metadata !582, metadata !289), !dbg !583
  call void @llvm.dbg.declare(metadata i32* %4, metadata !584, metadata !289), !dbg !585
  %5 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !586
  %6 = icmp ne %struct.zedc_stream_s* %5, null, !dbg !586
  br i1 %6, label %8, label %7, !dbg !588

; <label>:7:                                      ; preds = %1
  store i32 -2, i32* %2, align 4, !dbg !589
  br label %17, !dbg !589

; <label>:8:                                      ; preds = %1
  %9 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !590
  call void @__deflateInit_state(%struct.zedc_stream_s* %9), !dbg !591
  %10 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !592
  %11 = call i32 @zedc_format_init(%struct.zedc_stream_s* %10), !dbg !593
  store i32 %11, i32* %4, align 4, !dbg !594
  %12 = load i32, i32* %4, align 4, !dbg !595
  %13 = icmp ne i32 %12, 0, !dbg !597
  br i1 %13, label %14, label %16, !dbg !598

; <label>:14:                                     ; preds = %8
  %15 = load i32, i32* %4, align 4, !dbg !599
  store i32 %15, i32* %2, align 4, !dbg !600
  br label %17, !dbg !600

; <label>:16:                                     ; preds = %8
  store i32 0, i32* %2, align 4, !dbg !601
  br label %17, !dbg !601

; <label>:17:                                     ; preds = %16, %14, %7
  %18 = load i32, i32* %2, align 4, !dbg !602
  ret i32 %18, !dbg !602
}

; Function Attrs: nounwind uwtable
define i32 @zedc_deflate(%struct.zedc_stream_s*, i32) #0 !dbg !603 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zedc_stream_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.zedc_asiv_defl*, align 8
  %9 = alloca %struct.zedc_asv_defl*, align 8
  %10 = alloca %struct.zedc_dev_t*, align 8
  %11 = alloca %struct.ddcb_cmd*, align 8
  %12 = alloca %struct.zedc_fifo*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.ddcb_cmd*, align 8
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %4, metadata !606, metadata !289), !dbg !607
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !608, metadata !289), !dbg !609
  call void @llvm.dbg.declare(metadata i32* %6, metadata !610, metadata !289), !dbg !611
  call void @llvm.dbg.declare(metadata i32* %7, metadata !612, metadata !289), !dbg !613
  call void @llvm.dbg.declare(metadata %struct.zedc_asiv_defl** %8, metadata !614, metadata !289), !dbg !615
  call void @llvm.dbg.declare(metadata %struct.zedc_asv_defl** %9, metadata !616, metadata !289), !dbg !617
  call void @llvm.dbg.declare(metadata %struct.zedc_dev_t** %10, metadata !618, metadata !289), !dbg !619
  call void @llvm.dbg.declare(metadata %struct.ddcb_cmd** %11, metadata !620, metadata !289), !dbg !622
  call void @llvm.dbg.declare(metadata %struct.zedc_fifo** %12, metadata !623, metadata !289), !dbg !625
  call void @llvm.dbg.declare(metadata i32* %13, metadata !626, metadata !289), !dbg !627
  call void @llvm.dbg.declare(metadata i32* %14, metadata !628, metadata !289), !dbg !629
  store i32 1, i32* %14, align 4, !dbg !629
  call void @llvm.dbg.declare(metadata i64* %15, metadata !630, metadata !289), !dbg !631
  store i64 0, i64* %15, align 8, !dbg !631
  call void @llvm.dbg.declare(metadata i32* %16, metadata !632, metadata !289), !dbg !633
  store i32 0, i32* %16, align 4, !dbg !633
  %18 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !634
  %19 = icmp ne %struct.zedc_stream_s* %18, null, !dbg !634
  br i1 %19, label %21, label %20, !dbg !636

; <label>:20:                                     ; preds = %2
  store i32 -2, i32* %3, align 4, !dbg !637
  br label %601, !dbg !637

; <label>:21:                                     ; preds = %2
  %22 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !638
  %23 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %22, i32 0, i32 22, !dbg !639
  store %struct.zedc_fifo* %23, %struct.zedc_fifo** %12, align 8, !dbg !640
  %24 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !641
  %25 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %24, i32 0, i32 15, !dbg !642
  %26 = load i8*, i8** %25, align 8, !dbg !642
  %27 = bitcast i8* %26 to %struct.zedc_dev_t*, !dbg !643
  store %struct.zedc_dev_t* %27, %struct.zedc_dev_t** %10, align 8, !dbg !644
  %28 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %10, align 8, !dbg !645
  %29 = icmp ne %struct.zedc_dev_t* %28, null, !dbg !645
  br i1 %29, label %31, label %30, !dbg !647

; <label>:30:                                     ; preds = %21
  store i32 -2, i32* %3, align 4, !dbg !648
  br label %601, !dbg !648

; <label>:31:                                     ; preds = %21
  %32 = load i32, i32* %5, align 4, !dbg !649
  %33 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !650
  %34 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %33, i32 0, i32 5, !dbg !651
  store i32 %32, i32* %34, align 4, !dbg !652
  %35 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !653
  %36 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %35, i32 0, i32 16, !dbg !654
  store %struct.ddcb_cmd* %36, %struct.ddcb_cmd** %11, align 8, !dbg !655
  %37 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !656
  call void @ddcb_cmd_init(%struct.ddcb_cmd* %37), !dbg !657
  %38 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !658
  %39 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %38, i32 0, i32 31, !dbg !660
  %40 = load i32, i32* %39, align 4, !dbg !660
  %41 = icmp eq i32 0, %40, !dbg !661
  br i1 %41, label %42, label %48, !dbg !662

; <label>:42:                                     ; preds = %31
  %43 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !663
  %44 = call i32 @deflate_add_header(%struct.zedc_stream_s* %43), !dbg !666
  %45 = icmp ne i32 %44, 0, !dbg !666
  br i1 %45, label %46, label %47, !dbg !667

; <label>:46:                                     ; preds = %42
  store i32 -2, i32* %3, align 4, !dbg !668
  br label %601, !dbg !668

; <label>:47:                                     ; preds = %42
  br label %48, !dbg !669

; <label>:48:                                     ; preds = %47, %31
  %49 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !670
  call void @deflate_write_out_fifo(%struct.zedc_stream_s* %49), !dbg !671
  %50 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !672
  %51 = call i32 @output_data_avail(%struct.zedc_stream_s* %50), !dbg !674
  %52 = icmp ne i32 %51, 0, !dbg !674
  br i1 %52, label %54, label %53, !dbg !675

; <label>:53:                                     ; preds = %48
  store i32 0, i32* %3, align 4, !dbg !676
  br label %601, !dbg !676

; <label>:54:                                     ; preds = %48
  %55 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !677
  %56 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %55, i32 0, i32 5, !dbg !679
  %57 = load i32, i32* %56, align 4, !dbg !679
  %58 = icmp eq i32 %57, 4, !dbg !680
  br i1 %58, label %59, label %69, !dbg !681

; <label>:59:                                     ; preds = %54
  %60 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !682
  %61 = call i32 @input_data_avail(%struct.zedc_stream_s* %60), !dbg !684
  %62 = icmp ne i32 %61, 0, !dbg !684
  br i1 %62, label %69, label %63, !dbg !685

; <label>:63:                                     ; preds = %59
  %64 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !686
  %65 = call i32 @deflate_write_eob(%struct.zedc_stream_s* %64), !dbg !688
  %66 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !689
  %67 = call i32 @deflate_add_trailer(%struct.zedc_stream_s* %66), !dbg !690
  %68 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !691
  call void @deflate_write_out_fifo(%struct.zedc_stream_s* %68), !dbg !692
  br label %69, !dbg !693

; <label>:69:                                     ; preds = %63, %59, %54
  %70 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !694
  %71 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %70, i32 0, i32 30, !dbg !696
  %72 = load i32, i32* %71, align 8, !dbg !696
  %73 = icmp ne i32 %72, 0, !dbg !697
  br i1 %73, label %74, label %84, !dbg !698

; <label>:74:                                     ; preds = %69
  %75 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !699
  %76 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %75, i32 0, i32 32, !dbg !701
  %77 = load i32, i32* %76, align 8, !dbg !701
  %78 = icmp ne i32 %77, 0, !dbg !702
  br i1 %78, label %79, label %84, !dbg !703

; <label>:79:                                     ; preds = %74
  %80 = load %struct.zedc_fifo*, %struct.zedc_fifo** %12, align 8, !dbg !704
  %81 = call i32 @fifo_empty(%struct.zedc_fifo* %80), !dbg !706
  %82 = icmp ne i32 %81, 0, !dbg !706
  br i1 %82, label %83, label %84, !dbg !707

; <label>:83:                                     ; preds = %79
  store i32 1, i32* %3, align 4, !dbg !708
  br label %601, !dbg !708

; <label>:84:                                     ; preds = %79, %74, %69
  %85 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !709
  %86 = call i32 @output_data_avail(%struct.zedc_stream_s* %85), !dbg !711
  %87 = icmp ne i32 %86, 0, !dbg !711
  br i1 %87, label %89, label %88, !dbg !712

; <label>:88:                                     ; preds = %84
  store i32 0, i32* %3, align 4, !dbg !713
  br label %601, !dbg !713

; <label>:89:                                     ; preds = %84
  %90 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !714
  %91 = call i32 @input_data_avail(%struct.zedc_stream_s* %90), !dbg !716
  %92 = icmp ne i32 %91, 0, !dbg !716
  br i1 %92, label %94, label %93, !dbg !717

; <label>:93:                                     ; preds = %89
  store i32 0, i32* %3, align 4, !dbg !718
  br label %601, !dbg !718

; <label>:94:                                     ; preds = %89
  %95 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !719
  %96 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %95, i32 0, i32 3, !dbg !720
  store i8 2, i8* %96, align 1, !dbg !721
  %97 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !722
  %98 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %97, i32 0, i32 2, !dbg !723
  store i8 1, i8* %98, align 8, !dbg !724
  %99 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !725
  %100 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %99, i32 0, i32 6, !dbg !726
  store i16 4, i16* %100, align 4, !dbg !727
  %101 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !728
  %102 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %101, i32 0, i32 21, !dbg !730
  %103 = load i32, i32* %102, align 4, !dbg !730
  %104 = and i32 %103, 1, !dbg !731
  %105 = icmp ne i32 %104, 0, !dbg !731
  br i1 %105, label %106, label %113, !dbg !732

; <label>:106:                                    ; preds = %94
  %107 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !733
  %108 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %107, i32 0, i32 6, !dbg !734
  %109 = load i16, i16* %108, align 4, !dbg !735
  %110 = zext i16 %109 to i32, !dbg !735
  %111 = or i32 %110, 32768, !dbg !735
  %112 = trunc i32 %111 to i16, !dbg !735
  store i16 %112, i16* %108, align 4, !dbg !735
  br label %113, !dbg !733

; <label>:113:                                    ; preds = %106, %94
  %114 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %10, align 8, !dbg !736
  %115 = call i32 @dyn_huffman_supported(%struct.zedc_dev_t* %114), !dbg !738
  %116 = icmp ne i32 %115, 0, !dbg !738
  br i1 %116, label %117, label %129, !dbg !739

; <label>:117:                                    ; preds = %113
  %118 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !740
  %119 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %118, i32 0, i32 4, !dbg !742
  %120 = load i32, i32* %119, align 8, !dbg !742
  %121 = icmp ne i32 %120, 4, !dbg !743
  br i1 %121, label %122, label %129, !dbg !744

; <label>:122:                                    ; preds = %117
  %123 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !745
  %124 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %123, i32 0, i32 6, !dbg !746
  %125 = load i16, i16* %124, align 4, !dbg !747
  %126 = zext i16 %125 to i32, !dbg !747
  %127 = or i32 %126, 1, !dbg !747
  %128 = trunc i32 %127 to i16, !dbg !747
  store i16 %128, i16* %124, align 4, !dbg !747
  br label %129, !dbg !745

; <label>:129:                                    ; preds = %122, %117, %113
  %130 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !748
  %131 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %130, i32 0, i32 4, !dbg !749
  store i8 88, i8* %131, align 2, !dbg !750
  %132 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !751
  %133 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %132, i32 0, i32 5, !dbg !752
  store i8 64, i8* %133, align 1, !dbg !753
  %134 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !754
  %135 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %134, i32 0, i32 16, !dbg !755
  %136 = bitcast %union.anon* %135 to %struct.anon*, !dbg !755
  %137 = getelementptr inbounds %struct.anon, %struct.anon* %136, i32 0, i32 0, !dbg !755
  store i64 0, i64* %137, align 8, !dbg !756
  %138 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !757
  %139 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %138, i32 0, i32 36, !dbg !759
  %140 = getelementptr inbounds [3 x i32], [3 x i32]* %139, i64 0, i64 0, !dbg !757
  %141 = load i32, i32* %140, align 4, !dbg !757
  %142 = and i32 %141, 24, !dbg !760
  %143 = icmp eq i32 %142, 8, !dbg !761
  br i1 %143, label %144, label %151, !dbg !762

; <label>:144:                                    ; preds = %129
  %145 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !763
  %146 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %145, i32 0, i32 16, !dbg !764
  %147 = bitcast %union.anon* %146 to %struct.anon*, !dbg !764
  %148 = getelementptr inbounds %struct.anon, %struct.anon* %147, i32 0, i32 0, !dbg !764
  %149 = load i64, i64* %148, align 8, !dbg !765
  %150 = or i64 %149, 70368744177664, !dbg !765
  store i64 %150, i64* %148, align 8, !dbg !765
  br label %158, !dbg !763

; <label>:151:                                    ; preds = %129
  %152 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !766
  %153 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %152, i32 0, i32 16, !dbg !767
  %154 = bitcast %union.anon* %153 to %struct.anon*, !dbg !767
  %155 = getelementptr inbounds %struct.anon, %struct.anon* %154, i32 0, i32 0, !dbg !767
  %156 = load i64, i64* %155, align 8, !dbg !768
  %157 = or i64 %156, 105553116266496, !dbg !768
  store i64 %157, i64* %155, align 8, !dbg !768
  br label %158

; <label>:158:                                    ; preds = %151, %144
  %159 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !769
  %160 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %159, i32 0, i32 36, !dbg !771
  %161 = getelementptr inbounds [3 x i32], [3 x i32]* %160, i64 0, i64 1, !dbg !769
  %162 = load i32, i32* %161, align 4, !dbg !769
  %163 = and i32 %162, 24, !dbg !772
  %164 = icmp eq i32 %163, 8, !dbg !773
  br i1 %164, label %165, label %172, !dbg !774

; <label>:165:                                    ; preds = %158
  %166 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !775
  %167 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %166, i32 0, i32 16, !dbg !776
  %168 = bitcast %union.anon* %167 to %struct.anon*, !dbg !776
  %169 = getelementptr inbounds %struct.anon, %struct.anon* %168, i32 0, i32 0, !dbg !776
  %170 = load i64, i64* %169, align 8, !dbg !777
  %171 = or i64 %170, 343597383680, !dbg !777
  store i64 %171, i64* %169, align 8, !dbg !777
  br label %179, !dbg !775

; <label>:172:                                    ; preds = %158
  %173 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !778
  %174 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %173, i32 0, i32 16, !dbg !779
  %175 = bitcast %union.anon* %174 to %struct.anon*, !dbg !779
  %176 = getelementptr inbounds %struct.anon, %struct.anon* %175, i32 0, i32 0, !dbg !779
  %177 = load i64, i64* %176, align 8, !dbg !780
  %178 = or i64 %177, 481036337152, !dbg !780
  store i64 %178, i64* %176, align 8, !dbg !780
  br label %179

; <label>:179:                                    ; preds = %172, %165
  %180 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !781
  %181 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %180, i32 0, i32 36, !dbg !783
  %182 = getelementptr inbounds [3 x i32], [3 x i32]* %181, i64 0, i64 2, !dbg !781
  %183 = load i32, i32* %182, align 4, !dbg !781
  %184 = and i32 %183, 24, !dbg !784
  %185 = icmp eq i32 %184, 8, !dbg !785
  br i1 %185, label %186, label %193, !dbg !786

; <label>:186:                                    ; preds = %179
  %187 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !787
  %188 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %187, i32 0, i32 16, !dbg !789
  %189 = bitcast %union.anon* %188 to %struct.anon*, !dbg !789
  %190 = getelementptr inbounds %struct.anon, %struct.anon* %189, i32 0, i32 0, !dbg !789
  %191 = load i64, i64* %190, align 8, !dbg !790
  %192 = or i64 %191, 1073762304, !dbg !790
  store i64 %192, i64* %190, align 8, !dbg !790
  br label %200, !dbg !791

; <label>:193:                                    ; preds = %179
  %194 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !792
  %195 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %194, i32 0, i32 16, !dbg !794
  %196 = bitcast %union.anon* %195 to %struct.anon*, !dbg !794
  %197 = getelementptr inbounds %struct.anon, %struct.anon* %196, i32 0, i32 0, !dbg !794
  %198 = load i64, i64* %197, align 8, !dbg !795
  %199 = or i64 %198, 1610641408, !dbg !795
  store i64 %199, i64* %197, align 8, !dbg !795
  br label %200

; <label>:200:                                    ; preds = %193, %186
  %201 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !796
  %202 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %201, i32 0, i32 16, !dbg !797
  %203 = bitcast %union.anon* %202 to %struct.anon*, !dbg !797
  %204 = getelementptr inbounds %struct.anon, %struct.anon* %203, i32 0, i32 1, !dbg !797
  %205 = bitcast [96 x i8]* %204 to %struct.zedc_asiv_defl*, !dbg !798
  store %struct.zedc_asiv_defl* %205, %struct.zedc_asiv_defl** %8, align 8, !dbg !799
  %206 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !800
  %207 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %206, i32 0, i32 15, !dbg !801
  %208 = bitcast [64 x i8]* %207 to %struct.zedc_asv_defl*, !dbg !802
  store %struct.zedc_asv_defl* %208, %struct.zedc_asv_defl** %9, align 8, !dbg !803
  %209 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !804
  %210 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %209, i32 0, i32 7, !dbg !805
  %211 = load i8*, i8** %210, align 8, !dbg !805
  %212 = ptrtoint i8* %211 to i64, !dbg !806
  %213 = call i64 @__fswab64(i64 %212), !dbg !807
  %214 = load %struct.zedc_asiv_defl*, %struct.zedc_asiv_defl** %8, align 8, !dbg !808
  %215 = getelementptr inbounds %struct.zedc_asiv_defl, %struct.zedc_asiv_defl* %214, i32 0, i32 0, !dbg !809
  store i64 %213, i64* %215, align 1, !dbg !810
  %216 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !811
  %217 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %216, i32 0, i32 8, !dbg !812
  %218 = load i32, i32* %217, align 8, !dbg !812
  %219 = call i32 @__fswab32(i32 %218), !dbg !813
  %220 = load %struct.zedc_asiv_defl*, %struct.zedc_asiv_defl** %8, align 8, !dbg !814
  %221 = getelementptr inbounds %struct.zedc_asiv_defl, %struct.zedc_asiv_defl* %220, i32 0, i32 1, !dbg !815
  store i32 %219, i32* %221, align 1, !dbg !816
  %222 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !817
  %223 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %222, i32 0, i32 10, !dbg !818
  %224 = load i8*, i8** %223, align 8, !dbg !818
  %225 = ptrtoint i8* %224 to i64, !dbg !819
  %226 = call i64 @__fswab64(i64 %225), !dbg !820
  %227 = load %struct.zedc_asiv_defl*, %struct.zedc_asiv_defl** %8, align 8, !dbg !821
  %228 = getelementptr inbounds %struct.zedc_asiv_defl, %struct.zedc_asiv_defl* %227, i32 0, i32 3, !dbg !822
  store i64 %226, i64* %228, align 1, !dbg !823
  %229 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !824
  %230 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %229, i32 0, i32 11, !dbg !825
  %231 = load i32, i32* %230, align 8, !dbg !825
  %232 = call i32 @__fswab32(i32 %231), !dbg !826
  %233 = load %struct.zedc_asiv_defl*, %struct.zedc_asiv_defl** %8, align 8, !dbg !827
  %234 = getelementptr inbounds %struct.zedc_asiv_defl, %struct.zedc_asiv_defl* %233, i32 0, i32 4, !dbg !828
  store i32 %232, i32* %234, align 1, !dbg !829
  %235 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !830
  %236 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %235, i32 0, i32 35, !dbg !831
  %237 = load i32, i32* %236, align 8, !dbg !831
  store i32 %237, i32* %7, align 4, !dbg !832
  %238 = load i32, i32* %7, align 4, !dbg !833
  %239 = sext i32 %238 to i64, !dbg !834
  %240 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !834
  %241 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %240, i32 0, i32 34, !dbg !835
  %242 = load %struct.zedc_wsp*, %struct.zedc_wsp** %241, align 8, !dbg !835
  %243 = getelementptr inbounds %struct.zedc_wsp, %struct.zedc_wsp* %242, i32 0, i32 0, !dbg !836
  %244 = getelementptr inbounds [2 x [32784 x i8]], [2 x [32784 x i8]]* %243, i64 0, i64 %239, !dbg !834
  %245 = getelementptr inbounds [32784 x i8], [32784 x i8]* %244, i32 0, i32 0, !dbg !834
  %246 = ptrtoint i8* %245 to i64, !dbg !837
  %247 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !838
  %248 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %247, i32 0, i32 61, !dbg !839
  %249 = load i8, i8* %248, align 2, !dbg !839
  %250 = zext i8 %249 to i64, !dbg !838
  %251 = add i64 %246, %250, !dbg !840
  %252 = call i64 @__fswab64(i64 %251), !dbg !841
  %253 = load %struct.zedc_asiv_defl*, %struct.zedc_asiv_defl** %8, align 8, !dbg !842
  %254 = getelementptr inbounds %struct.zedc_asiv_defl, %struct.zedc_asiv_defl* %253, i32 0, i32 6, !dbg !843
  store i64 %252, i64* %254, align 1, !dbg !844
  %255 = load i32, i32* %7, align 4, !dbg !845
  %256 = xor i32 %255, 1, !dbg !846
  %257 = sext i32 %256 to i64, !dbg !847
  %258 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !847
  %259 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %258, i32 0, i32 34, !dbg !848
  %260 = load %struct.zedc_wsp*, %struct.zedc_wsp** %259, align 8, !dbg !848
  %261 = getelementptr inbounds %struct.zedc_wsp, %struct.zedc_wsp* %260, i32 0, i32 0, !dbg !849
  %262 = getelementptr inbounds [2 x [32784 x i8]], [2 x [32784 x i8]]* %261, i64 0, i64 %257, !dbg !847
  %263 = getelementptr inbounds [32784 x i8], [32784 x i8]* %262, i32 0, i32 0, !dbg !847
  %264 = ptrtoint i8* %263 to i64, !dbg !850
  %265 = call i64 @__fswab64(i64 %264), !dbg !851
  %266 = load %struct.zedc_asiv_defl*, %struct.zedc_asiv_defl** %8, align 8, !dbg !852
  %267 = getelementptr inbounds %struct.zedc_asiv_defl, %struct.zedc_asiv_defl* %266, i32 0, i32 11, !dbg !853
  store i64 %265, i64* %267, align 1, !dbg !854
  %268 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !855
  %269 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %268, i32 0, i32 35, !dbg !856
  %270 = load i32, i32* %269, align 8, !dbg !857
  %271 = xor i32 %270, 1, !dbg !857
  store i32 %271, i32* %269, align 8, !dbg !857
  %272 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !858
  %273 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %272, i32 0, i32 60, !dbg !859
  %274 = load i16, i16* %273, align 8, !dbg !859
  %275 = zext i16 %274 to i32, !dbg !860
  %276 = call i32 @__fswab32(i32 %275), !dbg !861
  %277 = load %struct.zedc_asiv_defl*, %struct.zedc_asiv_defl** %8, align 8, !dbg !862
  %278 = getelementptr inbounds %struct.zedc_asiv_defl, %struct.zedc_asiv_defl* %277, i32 0, i32 7, !dbg !863
  store i32 %276, i32* %278, align 1, !dbg !864
  %279 = load %struct.zedc_asiv_defl*, %struct.zedc_asiv_defl** %8, align 8, !dbg !865
  %280 = getelementptr inbounds %struct.zedc_asiv_defl, %struct.zedc_asiv_defl* %279, i32 0, i32 12, !dbg !866
  store i32 276824064, i32* %280, align 1, !dbg !867
  %281 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !868
  %282 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %281, i32 0, i32 28, !dbg !869
  %283 = load i8, i8* %282, align 8, !dbg !869
  %284 = load %struct.zedc_asiv_defl*, %struct.zedc_asiv_defl** %8, align 8, !dbg !870
  %285 = getelementptr inbounds %struct.zedc_asiv_defl, %struct.zedc_asiv_defl* %284, i32 0, i32 15, !dbg !871
  %286 = getelementptr inbounds [7 x i8], [7 x i8]* %285, i64 0, i64 0, !dbg !870
  store i8 %283, i8* %286, align 1, !dbg !872
  %287 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !873
  %288 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %287, i32 0, i32 27, !dbg !874
  %289 = load i32, i32* %288, align 4, !dbg !874
  %290 = trunc i32 %289 to i8, !dbg !873
  %291 = load %struct.zedc_asiv_defl*, %struct.zedc_asiv_defl** %8, align 8, !dbg !875
  %292 = getelementptr inbounds %struct.zedc_asiv_defl, %struct.zedc_asiv_defl* %291, i32 0, i32 16, !dbg !876
  store i8 %290, i8* %292, align 1, !dbg !877
  %293 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !878
  %294 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %293, i32 0, i32 13, !dbg !879
  %295 = load i32, i32* %294, align 8, !dbg !879
  %296 = call i32 @__fswab32(i32 %295), !dbg !880
  %297 = load %struct.zedc_asiv_defl*, %struct.zedc_asiv_defl** %8, align 8, !dbg !881
  %298 = getelementptr inbounds %struct.zedc_asiv_defl, %struct.zedc_asiv_defl* %297, i32 0, i32 2, !dbg !882
  store i32 %296, i32* %298, align 1, !dbg !883
  %299 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !884
  %300 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %299, i32 0, i32 14, !dbg !885
  %301 = load i32, i32* %300, align 4, !dbg !885
  %302 = call i32 @__fswab32(i32 %301), !dbg !886
  %303 = load %struct.zedc_asiv_defl*, %struct.zedc_asiv_defl** %8, align 8, !dbg !887
  %304 = getelementptr inbounds %struct.zedc_asiv_defl, %struct.zedc_asiv_defl* %303, i32 0, i32 5, !dbg !888
  store i32 %302, i32* %304, align 1, !dbg !889
  %305 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !890
  %306 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %305, i32 0, i32 6, !dbg !891
  %307 = load i16, i16* %306, align 4, !dbg !892
  %308 = zext i16 %307 to i32, !dbg !892
  %309 = or i32 %308, 4, !dbg !892
  %310 = trunc i32 %309 to i16, !dbg !892
  store i16 %310, i16* %306, align 4, !dbg !892
  store i32 1, i32* %14, align 4, !dbg !893
  %311 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !894
  %312 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %311, i32 0, i32 21, !dbg !896
  %313 = load i32, i32* %312, align 4, !dbg !896
  %314 = and i32 %313, 4, !dbg !897
  %315 = icmp ne i32 %314, 0, !dbg !897
  br i1 %315, label %316, label %347, !dbg !898

; <label>:316:                                    ; preds = %200
  %317 = load i32, i32* %5, align 4, !dbg !899
  %318 = icmp eq i32 %317, 4, !dbg !900
  br i1 %318, label %322, label %319, !dbg !901

; <label>:319:                                    ; preds = %316
  %320 = load i32, i32* %5, align 4, !dbg !902
  %321 = icmp eq i32 %320, 3, !dbg !904
  br i1 %321, label %322, label %347, !dbg !905

; <label>:322:                                    ; preds = %319, %316
  %323 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !906
  %324 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %323, i32 0, i32 11, !dbg !907
  %325 = load i32, i32* %324, align 8, !dbg !907
  %326 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !908
  %327 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %326, i32 0, i32 8, !dbg !909
  %328 = load i32, i32* %327, align 8, !dbg !909
  %329 = icmp uge i32 %325, %328, !dbg !910
  br i1 %329, label %330, label %347, !dbg !911

; <label>:330:                                    ; preds = %322
  %331 = load %struct.zedc_asiv_defl*, %struct.zedc_asiv_defl** %8, align 8, !dbg !913
  %332 = getelementptr inbounds %struct.zedc_asiv_defl, %struct.zedc_asiv_defl* %331, i32 0, i32 11, !dbg !915
  %333 = load i64, i64* %332, align 1, !dbg !915
  store i64 %333, i64* %15, align 8, !dbg !916
  %334 = load %struct.zedc_asiv_defl*, %struct.zedc_asiv_defl** %8, align 8, !dbg !917
  %335 = getelementptr inbounds %struct.zedc_asiv_defl, %struct.zedc_asiv_defl* %334, i32 0, i32 12, !dbg !918
  %336 = load i32, i32* %335, align 1, !dbg !918
  store i32 %336, i32* %16, align 4, !dbg !919
  %337 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !920
  %338 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %337, i32 0, i32 6, !dbg !921
  %339 = load i16, i16* %338, align 4, !dbg !922
  %340 = zext i16 %339 to i32, !dbg !922
  %341 = and i32 %340, -5, !dbg !922
  %342 = trunc i32 %341 to i16, !dbg !922
  store i16 %342, i16* %338, align 4, !dbg !922
  %343 = load %struct.zedc_asiv_defl*, %struct.zedc_asiv_defl** %8, align 8, !dbg !923
  %344 = getelementptr inbounds %struct.zedc_asiv_defl, %struct.zedc_asiv_defl* %343, i32 0, i32 11, !dbg !924
  store i64 0, i64* %344, align 1, !dbg !925
  %345 = load %struct.zedc_asiv_defl*, %struct.zedc_asiv_defl** %8, align 8, !dbg !926
  %346 = getelementptr inbounds %struct.zedc_asiv_defl, %struct.zedc_asiv_defl* %345, i32 0, i32 12, !dbg !927
  store i32 0, i32* %346, align 1, !dbg !928
  store i32 2, i32* %14, align 4, !dbg !929
  br label %347, !dbg !930

; <label>:347:                                    ; preds = %330, %322, %319, %200
  store i32 0, i32* %13, align 4, !dbg !931
  br label %348, !dbg !933

; <label>:348:                                    ; preds = %491, %347
  %349 = load i32, i32* %13, align 4, !dbg !934
  %350 = load i32, i32* %14, align 4, !dbg !937
  %351 = icmp ult i32 %349, %350, !dbg !938
  br i1 %351, label %352, label %494, !dbg !939

; <label>:352:                                    ; preds = %348
  %353 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !940
  %354 = load i32, i32* @zedc_dbg, align 4, !dbg !942
  call void @zedc_asiv_defl_print(%struct.zedc_stream_s* %353, i32 %354), !dbg !943
  %355 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %10, align 8, !dbg !944
  %356 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !945
  %357 = call i32 @zedc_execute_request(%struct.zedc_dev_t* %355, %struct.ddcb_cmd* %356), !dbg !946
  store i32 %357, i32* %6, align 4, !dbg !947
  %358 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !948
  %359 = load i32, i32* @zedc_dbg, align 4, !dbg !949
  call void @zedc_asv_defl_print(%struct.zedc_stream_s* %358, i32 %359), !dbg !950
  %360 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !951
  %361 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %360, i32 0, i32 7, !dbg !952
  %362 = load i16, i16* %361, align 2, !dbg !952
  %363 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !953
  %364 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %363, i32 0, i32 17, !dbg !954
  store i16 %362, i16* %364, align 8, !dbg !955
  %365 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !956
  %366 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %365, i32 0, i32 8, !dbg !957
  %367 = load i16, i16* %366, align 8, !dbg !957
  %368 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !958
  %369 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %368, i32 0, i32 18, !dbg !959
  store i16 %367, i16* %369, align 2, !dbg !960
  %370 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !961
  %371 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %370, i32 0, i32 10, !dbg !962
  %372 = load i32, i32* %371, align 4, !dbg !962
  %373 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !963
  %374 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %373, i32 0, i32 19, !dbg !964
  store i32 %372, i32* %374, align 4, !dbg !965
  %375 = load i32, i32* %6, align 4, !dbg !966
  %376 = icmp slt i32 %375, 0, !dbg !968
  br i1 %376, label %383, label %377, !dbg !969

; <label>:377:                                    ; preds = %352
  %378 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !970
  %379 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %378, i32 0, i32 7, !dbg !972
  %380 = load i16, i16* %379, align 2, !dbg !972
  %381 = zext i16 %380 to i32, !dbg !970
  %382 = icmp eq i32 %381, 0, !dbg !973
  br i1 %382, label %383, label %417, !dbg !974

; <label>:383:                                    ; preds = %377, %352
  call void @llvm.dbg.declare(metadata %struct.ddcb_cmd** %17, metadata !975, metadata !289), !dbg !977
  %384 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !978
  %385 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %384, i32 0, i32 16, !dbg !979
  store %struct.ddcb_cmd* %385, %struct.ddcb_cmd** %17, align 8, !dbg !977
  br label %386, !dbg !980, !llvm.loop !981

; <label>:386:                                    ; preds = %383
  %387 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !982
  %388 = icmp ne %struct._IO_FILE* %387, null, !dbg !982
  br i1 %388, label %389, label %415, !dbg !982

; <label>:389:                                    ; preds = %386
  %390 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !986
  %391 = call i32 @getpid() #7, !dbg !988
  %392 = call i32 @gettid(), !dbg !989
  %393 = load i32, i32* %6, align 4, !dbg !991
  %394 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %10, align 8, !dbg !992
  %395 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %394, i32 0, i32 3, !dbg !993
  %396 = load i32, i32* %395, align 8, !dbg !993
  %397 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %17, align 8, !dbg !994
  %398 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %397, i32 0, i32 7, !dbg !995
  %399 = load i16, i16* %398, align 2, !dbg !995
  %400 = zext i16 %399 to i32, !dbg !994
  %401 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %17, align 8, !dbg !996
  %402 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %401, i32 0, i32 8, !dbg !997
  %403 = load i16, i16* %402, align 8, !dbg !997
  %404 = zext i16 %403 to i32, !dbg !996
  %405 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %17, align 8, !dbg !998
  %406 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %405, i32 0, i32 10, !dbg !999
  %407 = load i32, i32* %406, align 4, !dbg !999
  %408 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %17, align 8, !dbg !1000
  %409 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %408, i32 0, i32 7, !dbg !1001
  %410 = load i16, i16* %409, align 2, !dbg !1001
  %411 = zext i16 %410 to i32, !dbg !1000
  %412 = icmp eq i32 %411, 258, !dbg !1002
  %413 = select i1 %412, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), !dbg !1000
  %414 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %390, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str, i32 0, i32 0), i32 %391, i32 %392, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 768, i32 %393, i32 %396, i32 %400, i32 %404, i32 %407, i8* %413), !dbg !1003
  br label %415, !dbg !1005

; <label>:415:                                    ; preds = %389, %386
  br label %416, !dbg !1006

; <label>:416:                                    ; preds = %415
  store i32 -2, i32* %3, align 4, !dbg !1008
  br label %601, !dbg !1008

; <label>:417:                                    ; preds = %377
  %418 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1009
  %419 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %418, i32 0, i32 8, !dbg !1011
  %420 = load i32, i32* %419, align 8, !dbg !1011
  %421 = load %struct.zedc_asv_defl*, %struct.zedc_asv_defl** %9, align 8, !dbg !1012
  %422 = getelementptr inbounds %struct.zedc_asv_defl, %struct.zedc_asv_defl* %421, i32 0, i32 6, !dbg !1013
  %423 = load i32, i32* %422, align 1, !dbg !1013
  %424 = call i32 @__fswab32(i32 %423), !dbg !1014
  %425 = icmp eq i32 %420, %424, !dbg !1015
  br i1 %425, label %426, label %436, !dbg !1016

; <label>:426:                                    ; preds = %417
  %427 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1017
  %428 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %427, i32 0, i32 11, !dbg !1018
  %429 = load i32, i32* %428, align 8, !dbg !1018
  %430 = load %struct.zedc_asv_defl*, %struct.zedc_asv_defl** %9, align 8, !dbg !1019
  %431 = getelementptr inbounds %struct.zedc_asv_defl, %struct.zedc_asv_defl* %430, i32 0, i32 7, !dbg !1020
  %432 = load i32, i32* %431, align 1, !dbg !1020
  %433 = call i32 @__fswab32(i32 %432), !dbg !1021
  %434 = icmp uge i32 %429, %433, !dbg !1022
  br i1 %434, label %435, label %436, !dbg !1023

; <label>:435:                                    ; preds = %426
  br label %494, !dbg !1025

; <label>:436:                                    ; preds = %426, %417
  %437 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1026
  %438 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %437, i32 0, i32 21, !dbg !1028
  %439 = load i32, i32* %438, align 4, !dbg !1028
  %440 = and i32 %439, 4, !dbg !1029
  %441 = icmp ne i32 %440, 0, !dbg !1029
  br i1 %441, label %442, label %490, !dbg !1030

; <label>:442:                                    ; preds = %436
  %443 = load i32, i32* %5, align 4, !dbg !1031
  %444 = icmp eq i32 %443, 4, !dbg !1032
  br i1 %444, label %448, label %445, !dbg !1033

; <label>:445:                                    ; preds = %442
  %446 = load i32, i32* %5, align 4, !dbg !1034
  %447 = icmp eq i32 %446, 3, !dbg !1036
  br i1 %447, label %448, label %490, !dbg !1037

; <label>:448:                                    ; preds = %445, %442
  %449 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1038
  %450 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %449, i32 0, i32 11, !dbg !1039
  %451 = load i32, i32* %450, align 8, !dbg !1039
  %452 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1040
  %453 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %452, i32 0, i32 8, !dbg !1041
  %454 = load i32, i32* %453, align 8, !dbg !1041
  %455 = icmp uge i32 %451, %454, !dbg !1042
  br i1 %455, label %456, label %490, !dbg !1043

; <label>:456:                                    ; preds = %448
  %457 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !1044
  %458 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %457, i32 0, i32 6, !dbg !1046
  %459 = load i16, i16* %458, align 4, !dbg !1047
  %460 = zext i16 %459 to i32, !dbg !1047
  %461 = or i32 %460, 4, !dbg !1047
  %462 = trunc i32 %461 to i16, !dbg !1047
  store i16 %462, i16* %458, align 4, !dbg !1047
  %463 = load i64, i64* %15, align 8, !dbg !1048
  %464 = load %struct.zedc_asiv_defl*, %struct.zedc_asiv_defl** %8, align 8, !dbg !1049
  %465 = getelementptr inbounds %struct.zedc_asiv_defl, %struct.zedc_asiv_defl* %464, i32 0, i32 11, !dbg !1050
  store i64 %463, i64* %465, align 1, !dbg !1051
  %466 = load i32, i32* %16, align 4, !dbg !1052
  %467 = load %struct.zedc_asiv_defl*, %struct.zedc_asiv_defl** %8, align 8, !dbg !1053
  %468 = getelementptr inbounds %struct.zedc_asiv_defl, %struct.zedc_asiv_defl* %467, i32 0, i32 12, !dbg !1054
  store i32 %466, i32* %468, align 1, !dbg !1055
  br label %469, !dbg !1056, !llvm.loop !1057

; <label>:469:                                    ; preds = %456
  %470 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1058
  %471 = icmp ne %struct._IO_FILE* %470, null, !dbg !1058
  br i1 %471, label %472, label %488, !dbg !1058

; <label>:472:                                    ; preds = %469
  %473 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1062
  %474 = call i32 @getpid() #7, !dbg !1064
  %475 = call i32 @gettid(), !dbg !1065
  %476 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !1067
  %477 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %476, i32 0, i32 7, !dbg !1068
  %478 = load i16, i16* %477, align 2, !dbg !1068
  %479 = zext i16 %478 to i32, !dbg !1067
  %480 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !1069
  %481 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %480, i32 0, i32 8, !dbg !1070
  %482 = load i16, i16* %481, align 8, !dbg !1070
  %483 = zext i16 %482 to i32, !dbg !1069
  %484 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !1071
  %485 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %484, i32 0, i32 10, !dbg !1072
  %486 = load i32, i32* %485, align 4, !dbg !1072
  %487 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %473, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.4, i32 0, i32 0), i32 %474, i32 %475, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 789, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.zedc_deflate, i32 0, i32 0), i32 %479, i32 %483, i32 %486), !dbg !1073
  br label %488, !dbg !1075

; <label>:488:                                    ; preds = %472, %469
  br label %489, !dbg !1076

; <label>:489:                                    ; preds = %488
  br label %490, !dbg !1078

; <label>:490:                                    ; preds = %489, %448, %445, %436
  br label %491, !dbg !1079

; <label>:491:                                    ; preds = %490
  %492 = load i32, i32* %13, align 4, !dbg !1080
  %493 = add i32 %492, 1, !dbg !1080
  store i32 %493, i32* %13, align 4, !dbg !1080
  br label %348, !dbg !1082, !llvm.loop !1083

; <label>:494:                                    ; preds = %435, %348
  %495 = load %struct.zedc_asv_defl*, %struct.zedc_asv_defl** %9, align 8, !dbg !1085
  %496 = getelementptr inbounds %struct.zedc_asv_defl, %struct.zedc_asv_defl* %495, i32 0, i32 4, !dbg !1086
  %497 = load i32, i32* %496, align 1, !dbg !1086
  %498 = call i32 @__fswab32(i32 %497), !dbg !1087
  %499 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1088
  %500 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %499, i32 0, i32 13, !dbg !1089
  store i32 %498, i32* %500, align 8, !dbg !1090
  %501 = load %struct.zedc_asv_defl*, %struct.zedc_asv_defl** %9, align 8, !dbg !1091
  %502 = getelementptr inbounds %struct.zedc_asv_defl, %struct.zedc_asv_defl* %501, i32 0, i32 5, !dbg !1092
  %503 = load i32, i32* %502, align 1, !dbg !1092
  %504 = call i32 @__fswab32(i32 %503), !dbg !1093
  %505 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1094
  %506 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %505, i32 0, i32 14, !dbg !1095
  store i32 %504, i32* %506, align 4, !dbg !1096
  %507 = load %struct.zedc_asv_defl*, %struct.zedc_asv_defl** %9, align 8, !dbg !1097
  %508 = getelementptr inbounds %struct.zedc_asv_defl, %struct.zedc_asv_defl* %507, i32 0, i32 0, !dbg !1098
  %509 = load i16, i16* %508, align 1, !dbg !1098
  %510 = call zeroext i16 @__fswab16(i16 zeroext %509), !dbg !1099
  %511 = zext i16 %510 to i32, !dbg !1099
  %512 = trunc i32 %511 to i16, !dbg !1097
  %513 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1100
  %514 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %513, i32 0, i32 60, !dbg !1101
  store i16 %512, i16* %514, align 8, !dbg !1102
  %515 = load %struct.zedc_asv_defl*, %struct.zedc_asv_defl** %9, align 8, !dbg !1103
  %516 = getelementptr inbounds %struct.zedc_asv_defl, %struct.zedc_asv_defl* %515, i32 0, i32 9, !dbg !1104
  %517 = load i8, i8* %516, align 1, !dbg !1104
  %518 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1105
  %519 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %518, i32 0, i32 61, !dbg !1106
  store i8 %517, i8* %519, align 2, !dbg !1107
  %520 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1108
  %521 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %520, i32 0, i32 61, !dbg !1110
  %522 = load i8, i8* %521, align 2, !dbg !1110
  %523 = zext i8 %522 to i32, !dbg !1108
  %524 = icmp sge i32 %523, 16, !dbg !1111
  br i1 %524, label %525, label %540, !dbg !1112

; <label>:525:                                    ; preds = %494
  br label %526, !dbg !1113, !llvm.loop !1115

; <label>:526:                                    ; preds = %525
  %527 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1116
  %528 = icmp ne %struct._IO_FILE* %527, null, !dbg !1116
  br i1 %528, label %529, label %538, !dbg !1116

; <label>:529:                                    ; preds = %526
  %530 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1120
  %531 = call i32 @getpid() #7, !dbg !1122
  %532 = call i32 @gettid(), !dbg !1123
  %533 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1125
  %534 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %533, i32 0, i32 61, !dbg !1126
  %535 = load i8, i8* %534, align 2, !dbg !1126
  %536 = zext i8 %535 to i32, !dbg !1125
  %537 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %530, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i32 0, i32 0), i32 %531, i32 %532, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 800, i32 %536), !dbg !1127
  br label %538, !dbg !1129

; <label>:538:                                    ; preds = %529, %526
  br label %539, !dbg !1130

; <label>:539:                                    ; preds = %538
  store i32 -2, i32* %3, align 4, !dbg !1132
  br label %601, !dbg !1132

; <label>:540:                                    ; preds = %494
  %541 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1133
  %542 = load %struct.zedc_asv_defl*, %struct.zedc_asv_defl** %9, align 8, !dbg !1134
  %543 = call i32 @deflate_process_results(%struct.zedc_stream_s* %541, %struct.zedc_asv_defl* %542), !dbg !1135
  store i32 %543, i32* %6, align 4, !dbg !1136
  %544 = load i32, i32* %6, align 4, !dbg !1137
  %545 = icmp slt i32 %544, 0, !dbg !1139
  br i1 %545, label %546, label %547, !dbg !1140

; <label>:546:                                    ; preds = %540
  store i32 -2, i32* %3, align 4, !dbg !1141
  br label %601, !dbg !1141

; <label>:547:                                    ; preds = %540
  %548 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1142
  %549 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %548, i32 0, i32 5, !dbg !1144
  %550 = load i32, i32* %549, align 4, !dbg !1144
  %551 = icmp eq i32 %550, 4, !dbg !1145
  br i1 %551, label %552, label %562, !dbg !1146

; <label>:552:                                    ; preds = %547
  %553 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1147
  %554 = call i32 @input_data_avail(%struct.zedc_stream_s* %553), !dbg !1149
  %555 = icmp ne i32 %554, 0, !dbg !1149
  br i1 %555, label %562, label %556, !dbg !1150

; <label>:556:                                    ; preds = %552
  %557 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1151
  %558 = call i32 @deflate_write_eob(%struct.zedc_stream_s* %557), !dbg !1153
  %559 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1154
  %560 = call i32 @deflate_add_trailer(%struct.zedc_stream_s* %559), !dbg !1155
  %561 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1156
  call void @deflate_write_out_fifo(%struct.zedc_stream_s* %561), !dbg !1157
  br label %562, !dbg !1158

; <label>:562:                                    ; preds = %556, %552, %547
  %563 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1159
  %564 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %563, i32 0, i32 5, !dbg !1161
  %565 = load i32, i32* %564, align 4, !dbg !1161
  %566 = icmp eq i32 %565, 2, !dbg !1162
  br i1 %566, label %572, label %567, !dbg !1163

; <label>:567:                                    ; preds = %562
  %568 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1164
  %569 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %568, i32 0, i32 5, !dbg !1165
  %570 = load i32, i32* %569, align 4, !dbg !1165
  %571 = icmp eq i32 %570, 1, !dbg !1166
  br i1 %571, label %572, label %575, !dbg !1167

; <label>:572:                                    ; preds = %567, %562
  %573 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1168
  call void @deflate_sync_flush(%struct.zedc_stream_s* %573), !dbg !1170
  %574 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1171
  call void @deflate_write_out_fifo(%struct.zedc_stream_s* %574), !dbg !1172
  br label %575, !dbg !1173

; <label>:575:                                    ; preds = %572, %567
  %576 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1174
  %577 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %576, i32 0, i32 5, !dbg !1176
  %578 = load i32, i32* %577, align 4, !dbg !1176
  %579 = icmp eq i32 %578, 3, !dbg !1177
  br i1 %579, label %580, label %585, !dbg !1178

; <label>:580:                                    ; preds = %575
  %581 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1179
  call void @deflate_sync_flush(%struct.zedc_stream_s* %581), !dbg !1181
  %582 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1182
  call void @deflate_write_out_fifo(%struct.zedc_stream_s* %582), !dbg !1183
  %583 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1184
  %584 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %583, i32 0, i32 60, !dbg !1185
  store i16 0, i16* %584, align 8, !dbg !1186
  br label %585, !dbg !1187

; <label>:585:                                    ; preds = %580, %575
  %586 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1188
  %587 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %586, i32 0, i32 30, !dbg !1190
  %588 = load i32, i32* %587, align 8, !dbg !1190
  %589 = icmp ne i32 %588, 0, !dbg !1191
  br i1 %589, label %590, label %600, !dbg !1192

; <label>:590:                                    ; preds = %585
  %591 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1193
  %592 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %591, i32 0, i32 32, !dbg !1195
  %593 = load i32, i32* %592, align 8, !dbg !1195
  %594 = icmp ne i32 %593, 0, !dbg !1196
  br i1 %594, label %595, label %600, !dbg !1197

; <label>:595:                                    ; preds = %590
  %596 = load %struct.zedc_fifo*, %struct.zedc_fifo** %12, align 8, !dbg !1198
  %597 = call i32 @fifo_empty(%struct.zedc_fifo* %596), !dbg !1200
  %598 = icmp ne i32 %597, 0, !dbg !1200
  br i1 %598, label %599, label %600, !dbg !1201

; <label>:599:                                    ; preds = %595
  store i32 1, i32* %3, align 4, !dbg !1202
  br label %601, !dbg !1202

; <label>:600:                                    ; preds = %595, %590, %585
  store i32 0, i32* %3, align 4, !dbg !1203
  br label %601, !dbg !1203

; <label>:601:                                    ; preds = %600, %599, %546, %539, %416, %93, %88, %83, %53, %46, %30, %20
  %602 = load i32, i32* %3, align 4, !dbg !1204
  ret i32 %602, !dbg !1204
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @ddcb_cmd_init(%struct.ddcb_cmd*) #2 !dbg !1205 {
  %2 = alloca %struct.ddcb_cmd*, align 8
  %3 = alloca i64, align 8
  store %struct.ddcb_cmd* %0, %struct.ddcb_cmd** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.ddcb_cmd** %2, metadata !1208, metadata !289), !dbg !1209
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1210, metadata !289), !dbg !1211
  %4 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %2, align 8, !dbg !1212
  %5 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %4, i32 0, i32 13, !dbg !1213
  %6 = load i64, i64* %5, align 8, !dbg !1213
  store i64 %6, i64* %3, align 8, !dbg !1214
  %7 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %2, align 8, !dbg !1215
  %8 = bitcast %struct.ddcb_cmd* %7 to i8*, !dbg !1216
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 232, i32 8, i1 false), !dbg !1216
  %9 = load i64, i64* %3, align 8, !dbg !1217
  %10 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %2, align 8, !dbg !1218
  %11 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %10, i32 0, i32 13, !dbg !1219
  store i64 %9, i64* %11, align 8, !dbg !1220
  ret void, !dbg !1221
}

; Function Attrs: nounwind uwtable
define internal i32 @deflate_add_header(%struct.zedc_stream_s*) #0 !dbg !1222 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zedc_stream_s*, align 8
  %4 = alloca %struct.zedc_fifo*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.gzedc_header_s*, align 8
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %3, metadata !1225, metadata !289), !dbg !1226
  call void @llvm.dbg.declare(metadata %struct.zedc_fifo** %4, metadata !1227, metadata !289), !dbg !1228
  %14 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1229
  %15 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %14, i32 0, i32 22, !dbg !1230
  store %struct.zedc_fifo* %15, %struct.zedc_fifo** %4, align 8, !dbg !1228
  %16 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1231
  %17 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %16, i32 0, i32 20, !dbg !1232
  %18 = load i32, i32* %17, align 8, !dbg !1232
  switch i32 %18, label %260 [
    i32 0, label %19
    i32 2, label %20
    i32 1, label %238
  ], !dbg !1233

; <label>:19:                                     ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !1234
  br label %263, !dbg !1234

; <label>:20:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1236, metadata !289), !dbg !1238
  store i8 0, i8* %5, align 1, !dbg !1238
  call void @llvm.dbg.declare(metadata i8* %6, metadata !1239, metadata !289), !dbg !1240
  store i8 -1, i8* %6, align 1, !dbg !1240
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1241, metadata !289), !dbg !1242
  store i8 4, i8* %7, align 1, !dbg !1242
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1243, metadata !289), !dbg !1244
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1245, metadata !289), !dbg !1246
  store i32 0, i32* %9, align 4, !dbg !1246
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1247, metadata !289), !dbg !1248
  store i32 0, i32* %10, align 4, !dbg !1248
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1249, metadata !289), !dbg !1250
  store i32 0, i32* %11, align 4, !dbg !1250
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1251, metadata !289), !dbg !1252
  %21 = call i64 @time(i64* null) #7, !dbg !1253
  %22 = trunc i64 %21 to i32, !dbg !1254
  store i32 %22, i32* %12, align 4, !dbg !1252
  %23 = load %struct.zedc_fifo*, %struct.zedc_fifo** %4, align 8, !dbg !1255
  %24 = call i32 @fifo_push(%struct.zedc_fifo* %23, i8 zeroext 31), !dbg !1256
  %25 = load %struct.zedc_fifo*, %struct.zedc_fifo** %4, align 8, !dbg !1257
  %26 = call i32 @fifo_push(%struct.zedc_fifo* %25, i8 zeroext -117), !dbg !1258
  %27 = load %struct.zedc_fifo*, %struct.zedc_fifo** %4, align 8, !dbg !1259
  %28 = call i32 @fifo_push(%struct.zedc_fifo* %27, i8 zeroext 8), !dbg !1260
  call void @llvm.dbg.declare(metadata %struct.gzedc_header_s** %13, metadata !1261, metadata !289), !dbg !1262
  %29 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1263
  %30 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %29, i32 0, i32 41, !dbg !1264
  %31 = load %struct.gzedc_header_s*, %struct.gzedc_header_s** %30, align 8, !dbg !1264
  store %struct.gzedc_header_s* %31, %struct.gzedc_header_s** %13, align 8, !dbg !1262
  %32 = load %struct.gzedc_header_s*, %struct.gzedc_header_s** %13, align 8, !dbg !1265
  %33 = icmp ne %struct.gzedc_header_s* %32, null, !dbg !1265
  br i1 %33, label %34, label %124, !dbg !1267

; <label>:34:                                     ; preds = %20
  %35 = load %struct.gzedc_header_s*, %struct.gzedc_header_s** %13, align 8, !dbg !1268
  %36 = getelementptr inbounds %struct.gzedc_header_s, %struct.gzedc_header_s* %35, i32 0, i32 7, !dbg !1271
  %37 = load i8*, i8** %36, align 8, !dbg !1271
  %38 = icmp ne i8* %37, null, !dbg !1268
  br i1 %38, label %39, label %45, !dbg !1272

; <label>:39:                                     ; preds = %34
  %40 = load %struct.gzedc_header_s*, %struct.gzedc_header_s** %13, align 8, !dbg !1273
  %41 = getelementptr inbounds %struct.gzedc_header_s, %struct.gzedc_header_s* %40, i32 0, i32 7, !dbg !1275
  %42 = load i8*, i8** %41, align 8, !dbg !1275
  %43 = call i64 @strlen(i8* %42) #8, !dbg !1276
  %44 = trunc i64 %43 to i32, !dbg !1276
  store i32 %44, i32* %9, align 4, !dbg !1277
  br label %45, !dbg !1278

; <label>:45:                                     ; preds = %39, %34
  %46 = load i32, i32* %9, align 4, !dbg !1279
  %47 = icmp ne i32 %46, 0, !dbg !1279
  br i1 %47, label %48, label %53, !dbg !1281

; <label>:48:                                     ; preds = %45
  %49 = load i8, i8* %5, align 1, !dbg !1282
  %50 = zext i8 %49 to i32, !dbg !1282
  %51 = or i32 %50, 8, !dbg !1282
  %52 = trunc i32 %51 to i8, !dbg !1282
  store i8 %52, i8* %5, align 1, !dbg !1282
  br label %53, !dbg !1284

; <label>:53:                                     ; preds = %48, %45
  %54 = load %struct.gzedc_header_s*, %struct.gzedc_header_s** %13, align 8, !dbg !1285
  %55 = getelementptr inbounds %struct.gzedc_header_s, %struct.gzedc_header_s* %54, i32 0, i32 9, !dbg !1287
  %56 = load i8*, i8** %55, align 8, !dbg !1287
  %57 = icmp ne i8* %56, null, !dbg !1285
  br i1 %57, label %58, label %64, !dbg !1288

; <label>:58:                                     ; preds = %53
  %59 = load %struct.gzedc_header_s*, %struct.gzedc_header_s** %13, align 8, !dbg !1289
  %60 = getelementptr inbounds %struct.gzedc_header_s, %struct.gzedc_header_s* %59, i32 0, i32 9, !dbg !1291
  %61 = load i8*, i8** %60, align 8, !dbg !1291
  %62 = call i64 @strlen(i8* %61) #8, !dbg !1292
  %63 = trunc i64 %62 to i32, !dbg !1292
  store i32 %63, i32* %10, align 4, !dbg !1293
  br label %64, !dbg !1294

; <label>:64:                                     ; preds = %58, %53
  %65 = load i32, i32* %10, align 4, !dbg !1295
  %66 = icmp ne i32 %65, 0, !dbg !1295
  br i1 %66, label %67, label %72, !dbg !1297

; <label>:67:                                     ; preds = %64
  %68 = load i8, i8* %5, align 1, !dbg !1298
  %69 = zext i8 %68 to i32, !dbg !1298
  %70 = or i32 %69, 16, !dbg !1298
  %71 = trunc i32 %70 to i8, !dbg !1298
  store i8 %71, i8* %5, align 1, !dbg !1298
  br label %72, !dbg !1300

; <label>:72:                                     ; preds = %67, %64
  %73 = load %struct.gzedc_header_s*, %struct.gzedc_header_s** %13, align 8, !dbg !1301
  %74 = getelementptr inbounds %struct.gzedc_header_s, %struct.gzedc_header_s* %73, i32 0, i32 4, !dbg !1303
  %75 = load i8*, i8** %74, align 8, !dbg !1303
  %76 = icmp ne i8* %75, null, !dbg !1301
  br i1 %76, label %77, label %85, !dbg !1304

; <label>:77:                                     ; preds = %72
  %78 = load %struct.gzedc_header_s*, %struct.gzedc_header_s** %13, align 8, !dbg !1305
  %79 = getelementptr inbounds %struct.gzedc_header_s, %struct.gzedc_header_s* %78, i32 0, i32 5, !dbg !1307
  %80 = load i32, i32* %79, align 8, !dbg !1307
  store i32 %80, i32* %11, align 4, !dbg !1308
  %81 = load i8, i8* %5, align 1, !dbg !1309
  %82 = zext i8 %81 to i32, !dbg !1309
  %83 = or i32 %82, 4, !dbg !1309
  %84 = trunc i32 %83 to i8, !dbg !1309
  store i8 %84, i8* %5, align 1, !dbg !1309
  br label %85, !dbg !1310

; <label>:85:                                     ; preds = %77, %72
  %86 = load %struct.gzedc_header_s*, %struct.gzedc_header_s** %13, align 8, !dbg !1311
  %87 = getelementptr inbounds %struct.gzedc_header_s, %struct.gzedc_header_s* %86, i32 0, i32 3, !dbg !1312
  %88 = load i32, i32* %87, align 4, !dbg !1312
  %89 = trunc i32 %88 to i8, !dbg !1311
  store i8 %89, i8* %6, align 1, !dbg !1313
  %90 = load %struct.gzedc_header_s*, %struct.gzedc_header_s** %13, align 8, !dbg !1314
  %91 = getelementptr inbounds %struct.gzedc_header_s, %struct.gzedc_header_s* %90, i32 0, i32 1, !dbg !1315
  %92 = load i64, i64* %91, align 8, !dbg !1315
  %93 = trunc i64 %92 to i32, !dbg !1314
  store i32 %93, i32* %12, align 4, !dbg !1316
  %94 = load i32, i32* %9, align 4, !dbg !1317
  %95 = load i32, i32* %10, align 4, !dbg !1319
  %96 = add i32 %94, %95, !dbg !1320
  %97 = load i32, i32* %11, align 4, !dbg !1321
  %98 = add i32 %96, %97, !dbg !1322
  %99 = icmp ugt i32 %98, 240, !dbg !1323
  br i1 %99, label %100, label %101, !dbg !1324

; <label>:100:                                    ; preds = %85
  store i32 1, i32* %2, align 4, !dbg !1325
  br label %263, !dbg !1325

; <label>:101:                                    ; preds = %85
  %102 = load %struct.gzedc_header_s*, %struct.gzedc_header_s** %13, align 8, !dbg !1326
  %103 = getelementptr inbounds %struct.gzedc_header_s, %struct.gzedc_header_s* %102, i32 0, i32 2, !dbg !1328
  %104 = load i32, i32* %103, align 8, !dbg !1328
  %105 = and i32 %104, 1, !dbg !1329
  %106 = icmp ne i32 %105, 0, !dbg !1329
  br i1 %106, label %107, label %112, !dbg !1330

; <label>:107:                                    ; preds = %101
  %108 = load i8, i8* %5, align 1, !dbg !1331
  %109 = zext i8 %108 to i32, !dbg !1331
  %110 = or i32 %109, 1, !dbg !1331
  %111 = trunc i32 %110 to i8, !dbg !1331
  store i8 %111, i8* %5, align 1, !dbg !1331
  br label %112, !dbg !1332

; <label>:112:                                    ; preds = %107, %101
  %113 = load %struct.gzedc_header_s*, %struct.gzedc_header_s** %13, align 8, !dbg !1333
  %114 = getelementptr inbounds %struct.gzedc_header_s, %struct.gzedc_header_s* %113, i32 0, i32 2, !dbg !1335
  %115 = load i32, i32* %114, align 8, !dbg !1335
  %116 = and i32 %115, 2, !dbg !1336
  %117 = icmp ne i32 %116, 0, !dbg !1336
  br i1 %117, label %118, label %123, !dbg !1337

; <label>:118:                                    ; preds = %112
  %119 = load i8, i8* %5, align 1, !dbg !1338
  %120 = zext i8 %119 to i32, !dbg !1338
  %121 = or i32 %120, 2, !dbg !1338
  %122 = trunc i32 %121 to i8, !dbg !1338
  store i8 %122, i8* %5, align 1, !dbg !1338
  br label %123, !dbg !1339

; <label>:123:                                    ; preds = %118, %112
  br label %124, !dbg !1340

; <label>:124:                                    ; preds = %123, %20
  %125 = load %struct.zedc_fifo*, %struct.zedc_fifo** %4, align 8, !dbg !1341
  %126 = load i8, i8* %5, align 1, !dbg !1342
  %127 = call i32 @fifo_push(%struct.zedc_fifo* %125, i8 zeroext %126), !dbg !1343
  %128 = load %struct.zedc_fifo*, %struct.zedc_fifo** %4, align 8, !dbg !1344
  %129 = load i32, i32* %12, align 4, !dbg !1345
  %130 = call i32 @fifo_push32(%struct.zedc_fifo* %128, i32 %129), !dbg !1346
  %131 = load %struct.zedc_fifo*, %struct.zedc_fifo** %4, align 8, !dbg !1347
  %132 = load i8, i8* %7, align 1, !dbg !1348
  %133 = call i32 @fifo_push(%struct.zedc_fifo* %131, i8 zeroext %132), !dbg !1349
  %134 = load %struct.zedc_fifo*, %struct.zedc_fifo** %4, align 8, !dbg !1350
  %135 = load i8, i8* %6, align 1, !dbg !1351
  %136 = call i32 @fifo_push(%struct.zedc_fifo* %134, i8 zeroext %135), !dbg !1352
  %137 = load i8, i8* %5, align 1, !dbg !1353
  %138 = zext i8 %137 to i32, !dbg !1353
  %139 = and i32 %138, 4, !dbg !1355
  %140 = icmp ne i32 %139, 0, !dbg !1355
  br i1 %140, label %141, label %171, !dbg !1356

; <label>:141:                                    ; preds = %124
  %142 = load %struct.zedc_fifo*, %struct.zedc_fifo** %4, align 8, !dbg !1357
  %143 = load i32, i32* %11, align 4, !dbg !1359
  %144 = and i32 %143, 255, !dbg !1360
  %145 = trunc i32 %144 to i8, !dbg !1359
  %146 = call i32 @fifo_push(%struct.zedc_fifo* %142, i8 zeroext %145), !dbg !1361
  %147 = load %struct.zedc_fifo*, %struct.zedc_fifo** %4, align 8, !dbg !1362
  %148 = load i32, i32* %11, align 4, !dbg !1363
  %149 = lshr i32 %148, 8, !dbg !1364
  %150 = and i32 %149, 255, !dbg !1365
  %151 = trunc i32 %150 to i8, !dbg !1366
  %152 = call i32 @fifo_push(%struct.zedc_fifo* %147, i8 zeroext %151), !dbg !1367
  store i32 0, i32* %8, align 4, !dbg !1368
  br label %153, !dbg !1370

; <label>:153:                                    ; preds = %167, %141
  %154 = load i32, i32* %8, align 4, !dbg !1371
  %155 = load i32, i32* %11, align 4, !dbg !1374
  %156 = icmp ult i32 %154, %155, !dbg !1375
  br i1 %156, label %157, label %170, !dbg !1376

; <label>:157:                                    ; preds = %153
  %158 = load %struct.zedc_fifo*, %struct.zedc_fifo** %4, align 8, !dbg !1377
  %159 = load i32, i32* %8, align 4, !dbg !1378
  %160 = zext i32 %159 to i64, !dbg !1379
  %161 = load %struct.gzedc_header_s*, %struct.gzedc_header_s** %13, align 8, !dbg !1379
  %162 = getelementptr inbounds %struct.gzedc_header_s, %struct.gzedc_header_s* %161, i32 0, i32 4, !dbg !1380
  %163 = load i8*, i8** %162, align 8, !dbg !1380
  %164 = getelementptr inbounds i8, i8* %163, i64 %160, !dbg !1379
  %165 = load i8, i8* %164, align 1, !dbg !1379
  %166 = call i32 @fifo_push(%struct.zedc_fifo* %158, i8 zeroext %165), !dbg !1381
  br label %167, !dbg !1381

; <label>:167:                                    ; preds = %157
  %168 = load i32, i32* %8, align 4, !dbg !1382
  %169 = add i32 %168, 1, !dbg !1382
  store i32 %169, i32* %8, align 4, !dbg !1382
  br label %153, !dbg !1384, !llvm.loop !1385

; <label>:170:                                    ; preds = %153
  br label %171, !dbg !1387

; <label>:171:                                    ; preds = %170, %124
  %172 = load i8, i8* %5, align 1, !dbg !1388
  %173 = zext i8 %172 to i32, !dbg !1388
  %174 = and i32 %173, 8, !dbg !1390
  %175 = icmp ne i32 %174, 0, !dbg !1390
  br i1 %175, label %176, label %197, !dbg !1391

; <label>:176:                                    ; preds = %171
  store i32 0, i32* %8, align 4, !dbg !1392
  br label %177, !dbg !1394

; <label>:177:                                    ; preds = %193, %176
  %178 = load i32, i32* %8, align 4, !dbg !1395
  %179 = load i32, i32* %9, align 4, !dbg !1398
  %180 = icmp ule i32 %178, %179, !dbg !1399
  br i1 %180, label %181, label %196, !dbg !1400

; <label>:181:                                    ; preds = %177
  %182 = load %struct.zedc_fifo*, %struct.zedc_fifo** %4, align 8, !dbg !1401
  %183 = load i32, i32* %8, align 4, !dbg !1402
  %184 = zext i32 %183 to i64, !dbg !1403
  %185 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1403
  %186 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %185, i32 0, i32 41, !dbg !1404
  %187 = load %struct.gzedc_header_s*, %struct.gzedc_header_s** %186, align 8, !dbg !1404
  %188 = getelementptr inbounds %struct.gzedc_header_s, %struct.gzedc_header_s* %187, i32 0, i32 7, !dbg !1405
  %189 = load i8*, i8** %188, align 8, !dbg !1405
  %190 = getelementptr inbounds i8, i8* %189, i64 %184, !dbg !1403
  %191 = load i8, i8* %190, align 1, !dbg !1403
  %192 = call i32 @fifo_push(%struct.zedc_fifo* %182, i8 zeroext %191), !dbg !1406
  br label %193, !dbg !1406

; <label>:193:                                    ; preds = %181
  %194 = load i32, i32* %8, align 4, !dbg !1407
  %195 = add i32 %194, 1, !dbg !1407
  store i32 %195, i32* %8, align 4, !dbg !1407
  br label %177, !dbg !1409, !llvm.loop !1410

; <label>:196:                                    ; preds = %177
  br label %197, !dbg !1412

; <label>:197:                                    ; preds = %196, %171
  %198 = load i8, i8* %5, align 1, !dbg !1414
  %199 = zext i8 %198 to i32, !dbg !1414
  %200 = and i32 %199, 16, !dbg !1416
  %201 = icmp ne i32 %200, 0, !dbg !1416
  br i1 %201, label %202, label %223, !dbg !1417

; <label>:202:                                    ; preds = %197
  store i32 0, i32* %8, align 4, !dbg !1418
  br label %203, !dbg !1420

; <label>:203:                                    ; preds = %219, %202
  %204 = load i32, i32* %8, align 4, !dbg !1421
  %205 = load i32, i32* %10, align 4, !dbg !1424
  %206 = icmp ule i32 %204, %205, !dbg !1425
  br i1 %206, label %207, label %222, !dbg !1426

; <label>:207:                                    ; preds = %203
  %208 = load %struct.zedc_fifo*, %struct.zedc_fifo** %4, align 8, !dbg !1427
  %209 = load i32, i32* %8, align 4, !dbg !1428
  %210 = zext i32 %209 to i64, !dbg !1429
  %211 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1429
  %212 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %211, i32 0, i32 41, !dbg !1430
  %213 = load %struct.gzedc_header_s*, %struct.gzedc_header_s** %212, align 8, !dbg !1430
  %214 = getelementptr inbounds %struct.gzedc_header_s, %struct.gzedc_header_s* %213, i32 0, i32 9, !dbg !1431
  %215 = load i8*, i8** %214, align 8, !dbg !1431
  %216 = getelementptr inbounds i8, i8* %215, i64 %210, !dbg !1429
  %217 = load i8, i8* %216, align 1, !dbg !1429
  %218 = call i32 @fifo_push(%struct.zedc_fifo* %208, i8 zeroext %217), !dbg !1432
  br label %219, !dbg !1432

; <label>:219:                                    ; preds = %207
  %220 = load i32, i32* %8, align 4, !dbg !1433
  %221 = add i32 %220, 1, !dbg !1433
  store i32 %221, i32* %8, align 4, !dbg !1433
  br label %203, !dbg !1435, !llvm.loop !1436

; <label>:222:                                    ; preds = %203
  br label %223, !dbg !1438

; <label>:223:                                    ; preds = %222, %197
  %224 = load i8, i8* %5, align 1, !dbg !1440
  %225 = zext i8 %224 to i32, !dbg !1440
  %226 = and i32 %225, 2, !dbg !1442
  %227 = icmp ne i32 %226, 0, !dbg !1442
  br i1 %227, label %228, label %237, !dbg !1443

; <label>:228:                                    ; preds = %223
  %229 = load %struct.gzedc_header_s*, %struct.gzedc_header_s** %13, align 8, !dbg !1444
  %230 = icmp ne %struct.gzedc_header_s* %229, null, !dbg !1444
  br i1 %230, label %231, label %236, !dbg !1447

; <label>:231:                                    ; preds = %228
  %232 = load %struct.zedc_fifo*, %struct.zedc_fifo** %4, align 8, !dbg !1448
  %233 = call i32 @fifo_push(%struct.zedc_fifo* %232, i8 zeroext -34), !dbg !1450
  %234 = load %struct.zedc_fifo*, %struct.zedc_fifo** %4, align 8, !dbg !1451
  %235 = call i32 @fifo_push(%struct.zedc_fifo* %234, i8 zeroext -17), !dbg !1452
  br label %236, !dbg !1453

; <label>:236:                                    ; preds = %231, %228
  br label %237, !dbg !1454

; <label>:237:                                    ; preds = %236, %223
  br label %260, !dbg !1455

; <label>:238:                                    ; preds = %1
  %239 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1456
  %240 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %239, i32 0, i32 33, !dbg !1459
  %241 = load i32, i32* %240, align 4, !dbg !1459
  %242 = icmp ne i32 %241, 0, !dbg !1456
  br i1 %242, label %243, label %254, !dbg !1460

; <label>:243:                                    ; preds = %238
  %244 = load %struct.zedc_fifo*, %struct.zedc_fifo** %4, align 8, !dbg !1461
  %245 = call i32 @fifo_push(%struct.zedc_fifo* %244, i8 zeroext 120), !dbg !1463
  %246 = load %struct.zedc_fifo*, %struct.zedc_fifo** %4, align 8, !dbg !1464
  %247 = call i32 @fifo_push(%struct.zedc_fifo* %246, i8 zeroext -69), !dbg !1465
  %248 = load %struct.zedc_fifo*, %struct.zedc_fifo** %4, align 8, !dbg !1466
  %249 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1467
  %250 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %249, i32 0, i32 40, !dbg !1468
  %251 = load i32, i32* %250, align 4, !dbg !1468
  %252 = call i32 @__fswab32(i32 %251), !dbg !1469
  %253 = call i32 @fifo_push32(%struct.zedc_fifo* %248, i32 %252), !dbg !1470
  br label %259, !dbg !1472

; <label>:254:                                    ; preds = %238
  %255 = load %struct.zedc_fifo*, %struct.zedc_fifo** %4, align 8, !dbg !1473
  %256 = call i32 @fifo_push(%struct.zedc_fifo* %255, i8 zeroext 120), !dbg !1475
  %257 = load %struct.zedc_fifo*, %struct.zedc_fifo** %4, align 8, !dbg !1476
  %258 = call i32 @fifo_push(%struct.zedc_fifo* %257, i8 zeroext -100), !dbg !1477
  br label %259

; <label>:259:                                    ; preds = %254, %243
  br label %260, !dbg !1478

; <label>:260:                                    ; preds = %1, %259, %237
  %261 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1479
  %262 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %261, i32 0, i32 31, !dbg !1480
  store i32 1, i32* %262, align 4, !dbg !1481
  store i32 0, i32* %2, align 4, !dbg !1482
  br label %263, !dbg !1482

; <label>:263:                                    ; preds = %260, %100, %19
  %264 = load i32, i32* %2, align 4, !dbg !1483
  ret i32 %264, !dbg !1483
}

; Function Attrs: nounwind uwtable
define internal void @deflate_write_out_fifo(%struct.zedc_stream_s*) #0 !dbg !1484 {
  %2 = alloca %struct.zedc_stream_s*, align 8
  %3 = alloca i8, align 1
  %4 = alloca %struct.zedc_fifo*, align 8
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %2, metadata !1487, metadata !289), !dbg !1488
  call void @llvm.dbg.declare(metadata i8* %3, metadata !1489, metadata !289), !dbg !1490
  call void @llvm.dbg.declare(metadata %struct.zedc_fifo** %4, metadata !1491, metadata !289), !dbg !1492
  %5 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !1493
  %6 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %5, i32 0, i32 22, !dbg !1494
  store %struct.zedc_fifo* %6, %struct.zedc_fifo** %4, align 8, !dbg !1492
  br label %7, !dbg !1495

; <label>:7:                                      ; preds = %17, %1
  %8 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !1496
  %9 = call i32 @output_data_avail(%struct.zedc_stream_s* %8), !dbg !1498
  %10 = icmp ne i32 %9, 0, !dbg !1498
  br i1 %10, label %11, label %15, !dbg !1499

; <label>:11:                                     ; preds = %7
  %12 = load %struct.zedc_fifo*, %struct.zedc_fifo** %4, align 8, !dbg !1500
  %13 = call i32 @fifo_pop(%struct.zedc_fifo* %12, i8* %3), !dbg !1502
  %14 = icmp eq i32 %13, 1, !dbg !1503
  br label %15

; <label>:15:                                     ; preds = %11, %7
  %16 = phi i1 [ false, %7 ], [ %14, %11 ]
  br i1 %16, label %17, label %21, !dbg !1504

; <label>:17:                                     ; preds = %15
  %18 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !1506
  %19 = load i8, i8* %3, align 1, !dbg !1508
  %20 = call i32 @push_output_byte(%struct.zedc_stream_s* %18, i8 zeroext %19), !dbg !1509
  br label %7, !dbg !1510, !llvm.loop !1512

; <label>:21:                                     ; preds = %15
  ret void, !dbg !1513
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @output_data_avail(%struct.zedc_stream_s*) #2 !dbg !1514 {
  %2 = alloca %struct.zedc_stream_s*, align 8
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %2, metadata !1515, metadata !289), !dbg !1516
  %3 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !1517
  %4 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %3, i32 0, i32 11, !dbg !1518
  %5 = load i32, i32* %4, align 8, !dbg !1518
  ret i32 %5, !dbg !1519
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @input_data_avail(%struct.zedc_stream_s*) #2 !dbg !1520 {
  %2 = alloca %struct.zedc_stream_s*, align 8
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %2, metadata !1521, metadata !289), !dbg !1522
  %3 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !1523
  %4 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %3, i32 0, i32 8, !dbg !1524
  %5 = load i32, i32* %4, align 8, !dbg !1524
  %6 = icmp ne i32 %5, 0, !dbg !1525
  %7 = zext i1 %6 to i32, !dbg !1525
  ret i32 %7, !dbg !1526
}

; Function Attrs: nounwind uwtable
define internal i32 @deflate_write_eob(%struct.zedc_stream_s*) #0 !dbg !1527 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zedc_stream_s*, align 8
  %4 = alloca %struct.zedc_fifo*, align 8
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %3, metadata !1528, metadata !289), !dbg !1529
  call void @llvm.dbg.declare(metadata %struct.zedc_fifo** %4, metadata !1530, metadata !289), !dbg !1531
  %5 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1532
  %6 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %5, i32 0, i32 22, !dbg !1533
  store %struct.zedc_fifo* %6, %struct.zedc_fifo** %4, align 8, !dbg !1531
  %7 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1534
  %8 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %7, i32 0, i32 30, !dbg !1536
  %9 = load i32, i32* %8, align 8, !dbg !1536
  %10 = icmp eq i32 %9, 1, !dbg !1537
  br i1 %10, label %11, label %12, !dbg !1538

; <label>:11:                                     ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !1539
  br label %61, !dbg !1539

; <label>:12:                                     ; preds = %1
  %13 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1540
  %14 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %13, i32 0, i32 27, !dbg !1542
  %15 = load i32, i32* %14, align 4, !dbg !1542
  %16 = icmp sge i32 %15, 8, !dbg !1543
  br i1 %16, label %17, label %18, !dbg !1544

; <label>:17:                                     ; preds = %12
  store i32 0, i32* %2, align 4, !dbg !1545
  br label %61, !dbg !1545

; <label>:18:                                     ; preds = %12
  %19 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1546
  %20 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %19, i32 0, i32 27, !dbg !1548
  %21 = load i32, i32* %20, align 4, !dbg !1548
  %22 = icmp eq i32 %21, 0, !dbg !1549
  br i1 %22, label %23, label %30, !dbg !1550

; <label>:23:                                     ; preds = %18
  %24 = load %struct.zedc_fifo*, %struct.zedc_fifo** %4, align 8, !dbg !1551
  %25 = call i32 @fifo_push(%struct.zedc_fifo* %24, i8 zeroext -128), !dbg !1553
  %26 = load %struct.zedc_fifo*, %struct.zedc_fifo** %4, align 8, !dbg !1554
  %27 = call i32 @fifo_push(%struct.zedc_fifo* %26, i8 zeroext 1), !dbg !1555
  %28 = load %struct.zedc_fifo*, %struct.zedc_fifo** %4, align 8, !dbg !1556
  %29 = call i32 @fifo_push(%struct.zedc_fifo* %28, i8 zeroext 0), !dbg !1557
  br label %56, !dbg !1558

; <label>:30:                                     ; preds = %18
  %31 = load %struct.zedc_fifo*, %struct.zedc_fifo** %4, align 8, !dbg !1559
  %32 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1561
  %33 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %32, i32 0, i32 28, !dbg !1562
  %34 = load i8, i8* %33, align 8, !dbg !1562
  %35 = zext i8 %34 to i32, !dbg !1561
  %36 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1563
  %37 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %36, i32 0, i32 27, !dbg !1564
  %38 = load i32, i32* %37, align 4, !dbg !1564
  %39 = sext i32 %38 to i64, !dbg !1565
  %40 = getelementptr inbounds [8 x i8], [8 x i8]* @bmsk, i64 0, i64 %39, !dbg !1565
  %41 = load i8, i8* %40, align 1, !dbg !1565
  %42 = zext i8 %41 to i32, !dbg !1565
  %43 = and i32 %35, %42, !dbg !1566
  %44 = trunc i32 %43 to i8, !dbg !1561
  %45 = call i32 @fifo_push(%struct.zedc_fifo* %31, i8 zeroext %44), !dbg !1567
  %46 = load %struct.zedc_fifo*, %struct.zedc_fifo** %4, align 8, !dbg !1568
  %47 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1569
  %48 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %47, i32 0, i32 27, !dbg !1570
  %49 = load i32, i32* %48, align 4, !dbg !1570
  %50 = sub nsw i32 %49, 1, !dbg !1571
  %51 = shl i32 3, %50, !dbg !1572
  %52 = trunc i32 %51 to i8, !dbg !1573
  %53 = call i32 @fifo_push(%struct.zedc_fifo* %46, i8 zeroext %52), !dbg !1574
  %54 = load %struct.zedc_fifo*, %struct.zedc_fifo** %4, align 8, !dbg !1575
  %55 = call i32 @fifo_push(%struct.zedc_fifo* %54, i8 zeroext 0), !dbg !1576
  br label %56

; <label>:56:                                     ; preds = %30, %23
  %57 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1577
  %58 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %57, i32 0, i32 27, !dbg !1578
  store i32 0, i32* %58, align 4, !dbg !1579
  %59 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1580
  %60 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %59, i32 0, i32 30, !dbg !1581
  store i32 1, i32* %60, align 8, !dbg !1582
  store i32 1, i32* %2, align 4, !dbg !1583
  br label %61, !dbg !1583

; <label>:61:                                     ; preds = %56, %17, %11
  %62 = load i32, i32* %2, align 4, !dbg !1584
  ret i32 %62, !dbg !1584
}

; Function Attrs: nounwind uwtable
define internal i32 @deflate_add_trailer(%struct.zedc_stream_s*) #0 !dbg !1585 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zedc_stream_s*, align 8
  %4 = alloca %struct.zedc_fifo*, align 8
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %3, metadata !1586, metadata !289), !dbg !1587
  call void @llvm.dbg.declare(metadata %struct.zedc_fifo** %4, metadata !1588, metadata !289), !dbg !1589
  %5 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1590
  %6 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %5, i32 0, i32 22, !dbg !1591
  store %struct.zedc_fifo* %6, %struct.zedc_fifo** %4, align 8, !dbg !1589
  %7 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1592
  %8 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %7, i32 0, i32 30, !dbg !1594
  %9 = load i32, i32* %8, align 8, !dbg !1594
  %10 = icmp ne i32 %9, 0, !dbg !1592
  br i1 %10, label %12, label %11, !dbg !1595

; <label>:11:                                     ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !1596
  br label %45, !dbg !1596

; <label>:12:                                     ; preds = %1
  %13 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1597
  %14 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %13, i32 0, i32 32, !dbg !1599
  %15 = load i32, i32* %14, align 8, !dbg !1599
  %16 = icmp ne i32 %15, 0, !dbg !1597
  br i1 %16, label %17, label %18, !dbg !1600

; <label>:17:                                     ; preds = %12
  store i32 0, i32* %2, align 4, !dbg !1601
  br label %45, !dbg !1601

; <label>:18:                                     ; preds = %12
  %19 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1602
  %20 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %19, i32 0, i32 20, !dbg !1603
  %21 = load i32, i32* %20, align 8, !dbg !1603
  switch i32 %21, label %42 [
    i32 0, label %22
    i32 2, label %23
    i32 1, label %35
  ], !dbg !1604

; <label>:22:                                     ; preds = %18
  br label %42, !dbg !1605

; <label>:23:                                     ; preds = %18
  %24 = load %struct.zedc_fifo*, %struct.zedc_fifo** %4, align 8, !dbg !1607
  %25 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1608
  %26 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %25, i32 0, i32 13, !dbg !1609
  %27 = load i32, i32* %26, align 8, !dbg !1609
  %28 = call i32 @fifo_push32(%struct.zedc_fifo* %24, i32 %27), !dbg !1610
  %29 = load %struct.zedc_fifo*, %struct.zedc_fifo** %4, align 8, !dbg !1611
  %30 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1612
  %31 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %30, i32 0, i32 9, !dbg !1613
  %32 = load i64, i64* %31, align 8, !dbg !1613
  %33 = trunc i64 %32 to i32, !dbg !1614
  %34 = call i32 @fifo_push32(%struct.zedc_fifo* %29, i32 %33), !dbg !1615
  br label %42, !dbg !1616

; <label>:35:                                     ; preds = %18
  %36 = load %struct.zedc_fifo*, %struct.zedc_fifo** %4, align 8, !dbg !1617
  %37 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1618
  %38 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %37, i32 0, i32 14, !dbg !1619
  %39 = load i32, i32* %38, align 4, !dbg !1619
  %40 = call i32 @__fswab32(i32 %39), !dbg !1620
  %41 = call i32 @fifo_push32(%struct.zedc_fifo* %36, i32 %40), !dbg !1621
  br label %42, !dbg !1623

; <label>:42:                                     ; preds = %18, %35, %23, %22
  %43 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1624
  %44 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %43, i32 0, i32 32, !dbg !1625
  store i32 1, i32* %44, align 8, !dbg !1626
  store i32 1, i32* %2, align 4, !dbg !1627
  br label %45, !dbg !1627

; <label>:45:                                     ; preds = %42, %17, %11
  %46 = load i32, i32* %2, align 4, !dbg !1628
  ret i32 %46, !dbg !1628
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fifo_empty(%struct.zedc_fifo*) #2 !dbg !1629 {
  %2 = alloca %struct.zedc_fifo*, align 8
  store %struct.zedc_fifo* %0, %struct.zedc_fifo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_fifo** %2, metadata !1632, metadata !289), !dbg !1633
  %3 = load %struct.zedc_fifo*, %struct.zedc_fifo** %2, align 8, !dbg !1634
  %4 = getelementptr inbounds %struct.zedc_fifo, %struct.zedc_fifo* %3, i32 0, i32 1, !dbg !1635
  %5 = load i32, i32* %4, align 4, !dbg !1635
  %6 = load %struct.zedc_fifo*, %struct.zedc_fifo** %2, align 8, !dbg !1636
  %7 = getelementptr inbounds %struct.zedc_fifo, %struct.zedc_fifo* %6, i32 0, i32 0, !dbg !1637
  %8 = load i32, i32* %7, align 4, !dbg !1637
  %9 = icmp eq i32 %5, %8, !dbg !1638
  %10 = zext i1 %9 to i32, !dbg !1638
  ret i32 %10, !dbg !1639
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @dyn_huffman_supported(%struct.zedc_dev_t*) #2 !dbg !1640 {
  %2 = alloca %struct.zedc_dev_t*, align 8
  %3 = alloca i64, align 8
  store %struct.zedc_dev_t* %0, %struct.zedc_dev_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_dev_t** %2, metadata !1641, metadata !289), !dbg !1642
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1643, metadata !289), !dbg !1644
  %4 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %2, align 8, !dbg !1645
  %5 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %4, i32 0, i32 2, !dbg !1646
  %6 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !1646
  %7 = call i64 @accel_get_app_id(%struct.card_dev_t* %6), !dbg !1647
  store i64 %7, i64* %3, align 8, !dbg !1644
  %8 = load i64, i64* %3, align 8, !dbg !1648
  %9 = and i64 %8, 1095216660480, !dbg !1649
  %10 = icmp uge i64 %9, 8589934592, !dbg !1650
  %11 = zext i1 %10 to i32, !dbg !1650
  ret i32 %11, !dbg !1651
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @__fswab64(i64) #2 !dbg !1652 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !1656, metadata !289), !dbg !1657
  %3 = load i64, i64* %2, align 8, !dbg !1658
  %4 = call i64 @__arch_swab64(i64 %3), !dbg !1659
  ret i64 %4, !dbg !1660
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__fswab32(i32) #2 !dbg !1661 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1664, metadata !289), !dbg !1665
  %3 = load i32, i32* %2, align 4, !dbg !1666
  %4 = call i32 @__arch_swab32(i32 %3), !dbg !1667
  ret i32 %4, !dbg !1668
}

declare void @zedc_asiv_defl_print(%struct.zedc_stream_s*, i32) #3

declare i32 @zedc_execute_request(%struct.zedc_dev_t*, %struct.ddcb_cmd*) #3

declare void @zedc_asv_defl_print(%struct.zedc_stream_s*, i32) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind
declare i32 @getpid() #5

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @gettid() #2 !dbg !1669 {
  %1 = call i64 (i64, ...) @syscall(i64 186) #7, !dbg !1672
  %2 = trunc i64 %1 to i32, !dbg !1673
  ret i32 %2, !dbg !1674
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @__fswab16(i16 zeroext) #2 !dbg !1675 {
  %2 = alloca i16, align 2
  store i16 %0, i16* %2, align 2
  call void @llvm.dbg.declare(metadata i16* %2, metadata !1678, metadata !289), !dbg !1679
  %3 = load i16, i16* %2, align 2, !dbg !1680
  %4 = zext i16 %3 to i32, !dbg !1681
  %5 = and i32 %4, 255, !dbg !1682
  %6 = shl i32 %5, 8, !dbg !1683
  %7 = load i16, i16* %2, align 2, !dbg !1684
  %8 = zext i16 %7 to i32, !dbg !1685
  %9 = and i32 %8, 65280, !dbg !1686
  %10 = ashr i32 %9, 8, !dbg !1687
  %11 = or i32 %6, %10, !dbg !1688
  %12 = trunc i32 %11 to i16, !dbg !1689
  ret i16 %12, !dbg !1690
}

; Function Attrs: nounwind uwtable
define internal i32 @deflate_process_results(%struct.zedc_stream_s*, %struct.zedc_asv_defl*) #0 !dbg !1691 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zedc_stream_s*, align 8
  %5 = alloca %struct.zedc_asv_defl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.zedc_dev_t*, align 8
  %9 = alloca %struct.zedc_fifo*, align 8
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %4, metadata !1694, metadata !289), !dbg !1695
  store %struct.zedc_asv_defl* %1, %struct.zedc_asv_defl** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_asv_defl** %5, metadata !1696, metadata !289), !dbg !1697
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1698, metadata !289), !dbg !1699
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1700, metadata !289), !dbg !1701
  call void @llvm.dbg.declare(metadata %struct.zedc_dev_t** %8, metadata !1702, metadata !289), !dbg !1703
  %10 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1704
  %11 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %10, i32 0, i32 15, !dbg !1705
  %12 = load i8*, i8** %11, align 8, !dbg !1705
  %13 = bitcast i8* %12 to %struct.zedc_dev_t*, !dbg !1706
  store %struct.zedc_dev_t* %13, %struct.zedc_dev_t** %8, align 8, !dbg !1703
  call void @llvm.dbg.declare(metadata %struct.zedc_fifo** %9, metadata !1707, metadata !289), !dbg !1708
  %14 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1709
  %15 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %14, i32 0, i32 22, !dbg !1710
  store %struct.zedc_fifo* %15, %struct.zedc_fifo** %9, align 8, !dbg !1708
  %16 = load %struct.zedc_asv_defl*, %struct.zedc_asv_defl** %5, align 8, !dbg !1711
  %17 = getelementptr inbounds %struct.zedc_asv_defl, %struct.zedc_asv_defl* %16, i32 0, i32 6, !dbg !1712
  %18 = load i32, i32* %17, align 1, !dbg !1712
  %19 = call i32 @__fswab32(i32 %18), !dbg !1713
  %20 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1714
  %21 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %20, i32 0, i32 46, !dbg !1715
  store i32 %19, i32* %21, align 8, !dbg !1716
  store i32 %19, i32* %6, align 4, !dbg !1717
  %22 = load %struct.zedc_asv_defl*, %struct.zedc_asv_defl** %5, align 8, !dbg !1718
  %23 = getelementptr inbounds %struct.zedc_asv_defl, %struct.zedc_asv_defl* %22, i32 0, i32 7, !dbg !1719
  %24 = load i32, i32* %23, align 1, !dbg !1719
  %25 = call i32 @__fswab32(i32 %24), !dbg !1720
  %26 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1721
  %27 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %26, i32 0, i32 47, !dbg !1722
  store i32 %25, i32* %27, align 4, !dbg !1723
  %28 = load i32, i32* %6, align 4, !dbg !1724
  %29 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1726
  %30 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %29, i32 0, i32 8, !dbg !1727
  %31 = load i32, i32* %30, align 8, !dbg !1727
  %32 = icmp ugt i32 %28, %31, !dbg !1728
  br i1 %32, label %33, label %68, !dbg !1729

; <label>:33:                                     ; preds = %2
  br label %34, !dbg !1730, !llvm.loop !1732

; <label>:34:                                     ; preds = %33
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1733
  %36 = icmp ne %struct._IO_FILE* %35, null, !dbg !1733
  br i1 %36, label %37, label %59, !dbg !1733

; <label>:37:                                     ; preds = %34
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1737
  %39 = call i32 @getpid() #7, !dbg !1739
  %40 = call i32 @gettid(), !dbg !1740
  %41 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1742
  %42 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %41, i32 0, i32 46, !dbg !1743
  %43 = load i32, i32* %42, align 8, !dbg !1743
  %44 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1744
  %45 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %44, i32 0, i32 8, !dbg !1745
  %46 = load i32, i32* %45, align 8, !dbg !1745
  %47 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1746
  %48 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %47, i32 0, i32 17, !dbg !1747
  %49 = load i16, i16* %48, align 8, !dbg !1747
  %50 = zext i16 %49 to i32, !dbg !1746
  %51 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1748
  %52 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %51, i32 0, i32 18, !dbg !1749
  %53 = load i16, i16* %52, align 2, !dbg !1749
  %54 = zext i16 %53 to i32, !dbg !1748
  %55 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1750
  %56 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %55, i32 0, i32 19, !dbg !1751
  %57 = load i32, i32* %56, align 4, !dbg !1751
  %58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.7, i32 0, i32 0), i32 %39, i32 %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 477, i32 %43, i32 %46, i32 %50, i32 %54, i32 %57), !dbg !1752
  br label %59, !dbg !1754

; <label>:59:                                     ; preds = %37, %34
  br label %60, !dbg !1755

; <label>:60:                                     ; preds = %59
  %61 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1757
  call void @zedc_asiv_defl_print(%struct.zedc_stream_s* %61, i32 1), !dbg !1758
  %62 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1759
  call void @zedc_asv_defl_print(%struct.zedc_stream_s* %62, i32 1), !dbg !1760
  %63 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %8, align 8, !dbg !1761
  %64 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %63, i32 0, i32 1, !dbg !1762
  store i32 -309, i32* %64, align 4, !dbg !1763
  %65 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %8, align 8, !dbg !1764
  %66 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %65, i32 0, i32 1, !dbg !1765
  %67 = load i32, i32* %66, align 4, !dbg !1765
  store i32 %67, i32* %3, align 4, !dbg !1766
  br label %388, !dbg !1766

; <label>:68:                                     ; preds = %2
  %69 = load i32, i32* %6, align 4, !dbg !1767
  %70 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1768
  %71 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %70, i32 0, i32 8, !dbg !1769
  %72 = load i32, i32* %71, align 8, !dbg !1770
  %73 = sub i32 %72, %69, !dbg !1770
  store i32 %73, i32* %71, align 8, !dbg !1770
  %74 = load i32, i32* %6, align 4, !dbg !1771
  %75 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1772
  %76 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %75, i32 0, i32 7, !dbg !1773
  %77 = load i8*, i8** %76, align 8, !dbg !1774
  %78 = zext i32 %74 to i64, !dbg !1774
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !1774
  store i8* %79, i8** %76, align 8, !dbg !1774
  %80 = load i32, i32* %6, align 4, !dbg !1775
  %81 = zext i32 %80 to i64, !dbg !1775
  %82 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1776
  %83 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %82, i32 0, i32 9, !dbg !1777
  %84 = load i64, i64* %83, align 8, !dbg !1778
  %85 = add i64 %84, %81, !dbg !1778
  store i64 %85, i64* %83, align 8, !dbg !1778
  %86 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1779
  %87 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %86, i32 0, i32 47, !dbg !1780
  %88 = load i32, i32* %87, align 4, !dbg !1780
  store i32 %88, i32* %6, align 4, !dbg !1781
  %89 = load i32, i32* %6, align 4, !dbg !1782
  %90 = icmp eq i32 %89, 0, !dbg !1784
  br i1 %90, label %97, label %91, !dbg !1785

; <label>:91:                                     ; preds = %68
  %92 = load i32, i32* %6, align 4, !dbg !1786
  %93 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1788
  %94 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %93, i32 0, i32 11, !dbg !1789
  %95 = load i32, i32* %94, align 8, !dbg !1789
  %96 = icmp ugt i32 %92, %95, !dbg !1790
  br i1 %96, label %97, label %138, !dbg !1791

; <label>:97:                                     ; preds = %91, %68
  br label %98, !dbg !1792, !llvm.loop !1794

; <label>:98:                                     ; preds = %97
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1795
  %100 = icmp ne %struct._IO_FILE* %99, null, !dbg !1795
  br i1 %100, label %101, label %129, !dbg !1795

; <label>:101:                                    ; preds = %98
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1799
  %103 = call i32 @getpid() #7, !dbg !1801
  %104 = call i32 @gettid(), !dbg !1802
  %105 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1804
  %106 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %105, i32 0, i32 47, !dbg !1805
  %107 = load i32, i32* %106, align 4, !dbg !1805
  %108 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1806
  %109 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %108, i32 0, i32 46, !dbg !1807
  %110 = load i32, i32* %109, align 8, !dbg !1807
  %111 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1808
  %112 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %111, i32 0, i32 8, !dbg !1809
  %113 = load i32, i32* %112, align 8, !dbg !1809
  %114 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1810
  %115 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %114, i32 0, i32 11, !dbg !1811
  %116 = load i32, i32* %115, align 8, !dbg !1811
  %117 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1812
  %118 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %117, i32 0, i32 17, !dbg !1813
  %119 = load i16, i16* %118, align 8, !dbg !1813
  %120 = zext i16 %119 to i32, !dbg !1812
  %121 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1814
  %122 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %121, i32 0, i32 18, !dbg !1815
  %123 = load i16, i16* %122, align 2, !dbg !1815
  %124 = zext i16 %123 to i32, !dbg !1814
  %125 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1816
  %126 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %125, i32 0, i32 19, !dbg !1817
  %127 = load i32, i32* %126, align 4, !dbg !1817
  %128 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %102, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.8, i32 0, i32 0), i32 %103, i32 %104, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 500, i32 %107, i32 %110, i32 %113, i32 %116, i32 %120, i32 %124, i32 %127), !dbg !1818
  br label %129, !dbg !1820

; <label>:129:                                    ; preds = %101, %98
  br label %130, !dbg !1821

; <label>:130:                                    ; preds = %129
  %131 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1823
  call void @zedc_asiv_defl_print(%struct.zedc_stream_s* %131, i32 1), !dbg !1824
  %132 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1825
  call void @zedc_asv_defl_print(%struct.zedc_stream_s* %132, i32 1), !dbg !1826
  %133 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %8, align 8, !dbg !1827
  %134 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %133, i32 0, i32 1, !dbg !1828
  store i32 -309, i32* %134, align 4, !dbg !1829
  %135 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %8, align 8, !dbg !1830
  %136 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %135, i32 0, i32 1, !dbg !1831
  %137 = load i32, i32* %136, align 4, !dbg !1831
  store i32 %137, i32* %3, align 4, !dbg !1832
  br label %388, !dbg !1832

; <label>:138:                                    ; preds = %91
  %139 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %8, align 8, !dbg !1833
  %140 = call i32 @dyn_huffman_supported(%struct.zedc_dev_t* %139), !dbg !1835
  %141 = icmp ne i32 %140, 0, !dbg !1835
  br i1 %141, label %142, label %169, !dbg !1836

; <label>:142:                                    ; preds = %138
  %143 = load %struct.zedc_asv_defl*, %struct.zedc_asv_defl** %5, align 8, !dbg !1837
  %144 = getelementptr inbounds %struct.zedc_asv_defl, %struct.zedc_asv_defl* %143, i32 0, i32 2, !dbg !1840
  %145 = load i8, i8* %144, align 1, !dbg !1840
  %146 = zext i8 %145 to i32, !dbg !1837
  %147 = icmp sgt i32 %146, 248, !dbg !1841
  br i1 %147, label %148, label %168, !dbg !1842

; <label>:148:                                    ; preds = %142
  br label %149, !dbg !1843, !llvm.loop !1845

; <label>:149:                                    ; preds = %148
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1846
  %151 = icmp ne %struct._IO_FILE* %150, null, !dbg !1846
  br i1 %151, label %152, label %161, !dbg !1846

; <label>:152:                                    ; preds = %149
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1850
  %154 = call i32 @getpid() #7, !dbg !1852
  %155 = call i32 @gettid(), !dbg !1853
  %156 = load %struct.zedc_asv_defl*, %struct.zedc_asv_defl** %5, align 8, !dbg !1855
  %157 = getelementptr inbounds %struct.zedc_asv_defl, %struct.zedc_asv_defl* %156, i32 0, i32 2, !dbg !1856
  %158 = load i8, i8* %157, align 1, !dbg !1856
  %159 = zext i8 %158 to i32, !dbg !1855
  %160 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %153, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i32 0, i32 0), i32 %154, i32 %155, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 514, i32 %159), !dbg !1857
  br label %161, !dbg !1859

; <label>:161:                                    ; preds = %152, %149
  br label %162, !dbg !1860

; <label>:162:                                    ; preds = %161
  %163 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %8, align 8, !dbg !1862
  %164 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %163, i32 0, i32 1, !dbg !1863
  store i32 -310, i32* %164, align 4, !dbg !1864
  %165 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %8, align 8, !dbg !1865
  %166 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %165, i32 0, i32 1, !dbg !1866
  %167 = load i32, i32* %166, align 4, !dbg !1866
  store i32 %167, i32* %3, align 4, !dbg !1867
  br label %388, !dbg !1867

; <label>:168:                                    ; preds = %142
  br label %196, !dbg !1868

; <label>:169:                                    ; preds = %138
  %170 = load %struct.zedc_asv_defl*, %struct.zedc_asv_defl** %5, align 8, !dbg !1869
  %171 = getelementptr inbounds %struct.zedc_asv_defl, %struct.zedc_asv_defl* %170, i32 0, i32 2, !dbg !1872
  %172 = load i8, i8* %171, align 1, !dbg !1872
  %173 = zext i8 %172 to i32, !dbg !1869
  %174 = icmp sgt i32 %173, 184, !dbg !1873
  br i1 %174, label %175, label %195, !dbg !1874

; <label>:175:                                    ; preds = %169
  br label %176, !dbg !1875, !llvm.loop !1877

; <label>:176:                                    ; preds = %175
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1878
  %178 = icmp ne %struct._IO_FILE* %177, null, !dbg !1878
  br i1 %178, label %179, label %188, !dbg !1878

; <label>:179:                                    ; preds = %176
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1882
  %181 = call i32 @getpid() #7, !dbg !1884
  %182 = call i32 @gettid(), !dbg !1885
  %183 = load %struct.zedc_asv_defl*, %struct.zedc_asv_defl** %5, align 8, !dbg !1887
  %184 = getelementptr inbounds %struct.zedc_asv_defl, %struct.zedc_asv_defl* %183, i32 0, i32 2, !dbg !1888
  %185 = load i8, i8* %184, align 1, !dbg !1888
  %186 = zext i8 %185 to i32, !dbg !1887
  %187 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %180, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i32 0, i32 0), i32 %181, i32 %182, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 520, i32 %186), !dbg !1889
  br label %188, !dbg !1891

; <label>:188:                                    ; preds = %179, %176
  br label %189, !dbg !1892

; <label>:189:                                    ; preds = %188
  %190 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %8, align 8, !dbg !1894
  %191 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %190, i32 0, i32 1, !dbg !1895
  store i32 -310, i32* %191, align 4, !dbg !1896
  %192 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %8, align 8, !dbg !1897
  %193 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %192, i32 0, i32 1, !dbg !1898
  %194 = load i32, i32* %193, align 4, !dbg !1898
  store i32 %194, i32* %3, align 4, !dbg !1899
  br label %388, !dbg !1899

; <label>:195:                                    ; preds = %169
  br label %196

; <label>:196:                                    ; preds = %195, %168
  %197 = load i32, i32* %6, align 4, !dbg !1900
  %198 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1901
  %199 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %198, i32 0, i32 10, !dbg !1902
  %200 = load i8*, i8** %199, align 8, !dbg !1903
  %201 = zext i32 %197 to i64, !dbg !1903
  %202 = getelementptr inbounds i8, i8* %200, i64 %201, !dbg !1903
  store i8* %202, i8** %199, align 8, !dbg !1903
  %203 = load i32, i32* %6, align 4, !dbg !1904
  %204 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1905
  %205 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %204, i32 0, i32 11, !dbg !1906
  %206 = load i32, i32* %205, align 8, !dbg !1907
  %207 = sub i32 %206, %203, !dbg !1907
  store i32 %207, i32* %205, align 8, !dbg !1907
  %208 = load i32, i32* %6, align 4, !dbg !1908
  %209 = zext i32 %208 to i64, !dbg !1908
  %210 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1909
  %211 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %210, i32 0, i32 12, !dbg !1910
  %212 = load i64, i64* %211, align 8, !dbg !1911
  %213 = add i64 %212, %209, !dbg !1911
  store i64 %213, i64* %211, align 8, !dbg !1911
  %214 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1912
  %215 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %214, i32 0, i32 11, !dbg !1914
  %216 = load i32, i32* %215, align 8, !dbg !1914
  %217 = icmp ne i32 %216, 0, !dbg !1915
  br i1 %217, label %218, label %240, !dbg !1916

; <label>:218:                                    ; preds = %196
  %219 = load %struct.zedc_asv_defl*, %struct.zedc_asv_defl** %5, align 8, !dbg !1917
  %220 = getelementptr inbounds %struct.zedc_asv_defl, %struct.zedc_asv_defl* %219, i32 0, i32 2, !dbg !1919
  %221 = load i8, i8* %220, align 1, !dbg !1919
  %222 = zext i8 %221 to i32, !dbg !1917
  %223 = icmp sgt i32 %222, 7, !dbg !1920
  br i1 %223, label %224, label %240, !dbg !1921

; <label>:224:                                    ; preds = %218
  br label %225, !dbg !1922, !llvm.loop !1924

; <label>:225:                                    ; preds = %224
  %226 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1925
  %227 = icmp ne %struct._IO_FILE* %226, null, !dbg !1925
  br i1 %227, label %228, label %233, !dbg !1925

; <label>:228:                                    ; preds = %225
  %229 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1929
  %230 = call i32 @getpid() #7, !dbg !1931
  %231 = call i32 @gettid(), !dbg !1932
  %232 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %229, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.11, i32 0, i32 0), i32 %230, i32 %231, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 547), !dbg !1934
  br label %233, !dbg !1936

; <label>:233:                                    ; preds = %228, %225
  br label %234, !dbg !1937

; <label>:234:                                    ; preds = %233
  %235 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %8, align 8, !dbg !1939
  %236 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %235, i32 0, i32 1, !dbg !1940
  store i32 -310, i32* %236, align 4, !dbg !1941
  %237 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %8, align 8, !dbg !1942
  %238 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %237, i32 0, i32 1, !dbg !1943
  %239 = load i32, i32* %238, align 4, !dbg !1943
  store i32 %239, i32* %3, align 4, !dbg !1944
  br label %388, !dbg !1944

; <label>:240:                                    ; preds = %218, %196
  %241 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %8, align 8, !dbg !1945
  %242 = call i32 @dyn_huffman_supported(%struct.zedc_dev_t* %241), !dbg !1947
  %243 = icmp ne i32 %242, 0, !dbg !1947
  br i1 %243, label %244, label %339, !dbg !1948

; <label>:244:                                    ; preds = %240
  store i32 0, i32* %7, align 4, !dbg !1949
  %245 = load %struct.zedc_asv_defl*, %struct.zedc_asv_defl** %5, align 8, !dbg !1952
  %246 = getelementptr inbounds %struct.zedc_asv_defl, %struct.zedc_asv_defl* %245, i32 0, i32 2, !dbg !1953
  %247 = load i8, i8* %246, align 1, !dbg !1953
  %248 = zext i8 %247 to i32, !dbg !1952
  %249 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1954
  %250 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %249, i32 0, i32 27, !dbg !1955
  store i32 %248, i32* %250, align 4, !dbg !1956
  br label %251, !dbg !1957

; <label>:251:                                    ; preds = %270, %244
  %252 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1958
  %253 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %252, i32 0, i32 27, !dbg !1960
  %254 = load i32, i32* %253, align 4, !dbg !1960
  %255 = icmp sgt i32 %254, 7, !dbg !1961
  br i1 %255, label %256, label %259, !dbg !1962

; <label>:256:                                    ; preds = %251
  %257 = load i32, i32* %7, align 4, !dbg !1963
  %258 = icmp ult i32 %257, 24, !dbg !1965
  br label %259

; <label>:259:                                    ; preds = %256, %251
  %260 = phi i1 [ false, %251 ], [ %258, %256 ]
  br i1 %260, label %261, label %277, !dbg !1966

; <label>:261:                                    ; preds = %259
  %262 = load %struct.zedc_fifo*, %struct.zedc_fifo** %9, align 8, !dbg !1968
  %263 = load i32, i32* %7, align 4, !dbg !1970
  %264 = zext i32 %263 to i64, !dbg !1971
  %265 = load %struct.zedc_asv_defl*, %struct.zedc_asv_defl** %5, align 8, !dbg !1971
  %266 = getelementptr inbounds %struct.zedc_asv_defl, %struct.zedc_asv_defl* %265, i32 0, i32 8, !dbg !1972
  %267 = getelementptr inbounds [24 x i8], [24 x i8]* %266, i64 0, i64 %264, !dbg !1971
  %268 = load i8, i8* %267, align 1, !dbg !1971
  %269 = call i32 @fifo_push(%struct.zedc_fifo* %262, i8 zeroext %268), !dbg !1973
  br label %270, !dbg !1974

; <label>:270:                                    ; preds = %261
  %271 = load i32, i32* %7, align 4, !dbg !1975
  %272 = add i32 %271, 1, !dbg !1975
  store i32 %272, i32* %7, align 4, !dbg !1975
  %273 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1976
  %274 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %273, i32 0, i32 27, !dbg !1977
  %275 = load i32, i32* %274, align 4, !dbg !1978
  %276 = sub nsw i32 %275, 8, !dbg !1978
  store i32 %276, i32* %274, align 4, !dbg !1978
  br label %251, !dbg !1979, !llvm.loop !1981

; <label>:277:                                    ; preds = %259
  %278 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1983
  %279 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %278, i32 0, i32 27, !dbg !1985
  %280 = load i32, i32* %279, align 4, !dbg !1985
  %281 = icmp ne i32 %280, 0, !dbg !1986
  br i1 %281, label %282, label %294, !dbg !1987

; <label>:282:                                    ; preds = %277
  %283 = load i32, i32* %7, align 4, !dbg !1988
  %284 = icmp ult i32 %283, 24, !dbg !1990
  br i1 %284, label %285, label %294, !dbg !1991

; <label>:285:                                    ; preds = %282
  %286 = load i32, i32* %7, align 4, !dbg !1992
  %287 = zext i32 %286 to i64, !dbg !1994
  %288 = load %struct.zedc_asv_defl*, %struct.zedc_asv_defl** %5, align 8, !dbg !1994
  %289 = getelementptr inbounds %struct.zedc_asv_defl, %struct.zedc_asv_defl* %288, i32 0, i32 8, !dbg !1995
  %290 = getelementptr inbounds [24 x i8], [24 x i8]* %289, i64 0, i64 %287, !dbg !1994
  %291 = load i8, i8* %290, align 1, !dbg !1994
  %292 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1996
  %293 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %292, i32 0, i32 28, !dbg !1997
  store i8 %291, i8* %293, align 8, !dbg !1998
  store i32 0, i32* %3, align 4, !dbg !1999
  br label %388, !dbg !1999

; <label>:294:                                    ; preds = %282, %277
  store i32 0, i32* %7, align 4, !dbg !2000
  br label %295, !dbg !2002

; <label>:295:                                    ; preds = %314, %294
  %296 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !2003
  %297 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %296, i32 0, i32 27, !dbg !2005
  %298 = load i32, i32* %297, align 4, !dbg !2005
  %299 = icmp sgt i32 %298, 7, !dbg !2006
  br i1 %299, label %300, label %303, !dbg !2007

; <label>:300:                                    ; preds = %295
  %301 = load i32, i32* %7, align 4, !dbg !2008
  %302 = icmp ult i32 %301, 7, !dbg !2010
  br label %303

; <label>:303:                                    ; preds = %300, %295
  %304 = phi i1 [ false, %295 ], [ %302, %300 ]
  br i1 %304, label %305, label %321, !dbg !2011

; <label>:305:                                    ; preds = %303
  %306 = load %struct.zedc_fifo*, %struct.zedc_fifo** %9, align 8, !dbg !2013
  %307 = load i32, i32* %7, align 4, !dbg !2015
  %308 = zext i32 %307 to i64, !dbg !2016
  %309 = load %struct.zedc_asv_defl*, %struct.zedc_asv_defl** %5, align 8, !dbg !2016
  %310 = getelementptr inbounds %struct.zedc_asv_defl, %struct.zedc_asv_defl* %309, i32 0, i32 10, !dbg !2017
  %311 = getelementptr inbounds [7 x i8], [7 x i8]* %310, i64 0, i64 %308, !dbg !2016
  %312 = load i8, i8* %311, align 1, !dbg !2016
  %313 = call i32 @fifo_push(%struct.zedc_fifo* %306, i8 zeroext %312), !dbg !2018
  br label %314, !dbg !2019

; <label>:314:                                    ; preds = %305
  %315 = load i32, i32* %7, align 4, !dbg !2020
  %316 = add i32 %315, 1, !dbg !2020
  store i32 %316, i32* %7, align 4, !dbg !2020
  %317 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !2021
  %318 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %317, i32 0, i32 27, !dbg !2022
  %319 = load i32, i32* %318, align 4, !dbg !2023
  %320 = sub nsw i32 %319, 8, !dbg !2023
  store i32 %320, i32* %318, align 4, !dbg !2023
  br label %295, !dbg !2024, !llvm.loop !2026

; <label>:321:                                    ; preds = %303
  %322 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !2028
  %323 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %322, i32 0, i32 27, !dbg !2030
  %324 = load i32, i32* %323, align 4, !dbg !2030
  %325 = icmp ne i32 %324, 0, !dbg !2031
  br i1 %325, label %326, label %338, !dbg !2032

; <label>:326:                                    ; preds = %321
  %327 = load i32, i32* %7, align 4, !dbg !2033
  %328 = icmp ult i32 %327, 7, !dbg !2035
  br i1 %328, label %329, label %338, !dbg !2036

; <label>:329:                                    ; preds = %326
  %330 = load i32, i32* %7, align 4, !dbg !2037
  %331 = zext i32 %330 to i64, !dbg !2039
  %332 = load %struct.zedc_asv_defl*, %struct.zedc_asv_defl** %5, align 8, !dbg !2039
  %333 = getelementptr inbounds %struct.zedc_asv_defl, %struct.zedc_asv_defl* %332, i32 0, i32 10, !dbg !2040
  %334 = getelementptr inbounds [7 x i8], [7 x i8]* %333, i64 0, i64 %331, !dbg !2039
  %335 = load i8, i8* %334, align 1, !dbg !2039
  %336 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !2041
  %337 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %336, i32 0, i32 28, !dbg !2042
  store i8 %335, i8* %337, align 8, !dbg !2043
  store i32 0, i32* %3, align 4, !dbg !2044
  br label %388, !dbg !2044

; <label>:338:                                    ; preds = %326, %321
  br label %387, !dbg !2045

; <label>:339:                                    ; preds = %240
  store i32 0, i32* %7, align 4, !dbg !2046
  %340 = load %struct.zedc_asv_defl*, %struct.zedc_asv_defl** %5, align 8, !dbg !2049
  %341 = getelementptr inbounds %struct.zedc_asv_defl, %struct.zedc_asv_defl* %340, i32 0, i32 2, !dbg !2050
  %342 = load i8, i8* %341, align 1, !dbg !2050
  %343 = zext i8 %342 to i32, !dbg !2049
  %344 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !2051
  %345 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %344, i32 0, i32 27, !dbg !2052
  store i32 %343, i32* %345, align 4, !dbg !2053
  br label %346, !dbg !2054

; <label>:346:                                    ; preds = %365, %339
  %347 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !2055
  %348 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %347, i32 0, i32 27, !dbg !2057
  %349 = load i32, i32* %348, align 4, !dbg !2057
  %350 = icmp sgt i32 %349, 7, !dbg !2058
  br i1 %350, label %351, label %354, !dbg !2059

; <label>:351:                                    ; preds = %346
  %352 = load i32, i32* %7, align 4, !dbg !2060
  %353 = icmp ult i32 %352, 23, !dbg !2062
  br label %354

; <label>:354:                                    ; preds = %351, %346
  %355 = phi i1 [ false, %346 ], [ %353, %351 ]
  br i1 %355, label %356, label %372, !dbg !2063

; <label>:356:                                    ; preds = %354
  %357 = load %struct.zedc_fifo*, %struct.zedc_fifo** %9, align 8, !dbg !2065
  %358 = load i32, i32* %7, align 4, !dbg !2067
  %359 = zext i32 %358 to i64, !dbg !2068
  %360 = load %struct.zedc_asv_defl*, %struct.zedc_asv_defl** %5, align 8, !dbg !2068
  %361 = getelementptr inbounds %struct.zedc_asv_defl, %struct.zedc_asv_defl* %360, i32 0, i32 8, !dbg !2069
  %362 = getelementptr inbounds [24 x i8], [24 x i8]* %361, i64 0, i64 %359, !dbg !2068
  %363 = load i8, i8* %362, align 1, !dbg !2068
  %364 = call i32 @fifo_push(%struct.zedc_fifo* %357, i8 zeroext %363), !dbg !2070
  br label %365, !dbg !2071

; <label>:365:                                    ; preds = %356
  %366 = load i32, i32* %7, align 4, !dbg !2072
  %367 = add i32 %366, 1, !dbg !2072
  store i32 %367, i32* %7, align 4, !dbg !2072
  %368 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !2073
  %369 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %368, i32 0, i32 27, !dbg !2074
  %370 = load i32, i32* %369, align 4, !dbg !2075
  %371 = sub nsw i32 %370, 8, !dbg !2075
  store i32 %371, i32* %369, align 4, !dbg !2075
  br label %346, !dbg !2076, !llvm.loop !2078

; <label>:372:                                    ; preds = %354
  %373 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !2080
  %374 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %373, i32 0, i32 27, !dbg !2082
  %375 = load i32, i32* %374, align 4, !dbg !2082
  %376 = icmp ne i32 %375, 0, !dbg !2080
  br i1 %376, label %377, label %386, !dbg !2083

; <label>:377:                                    ; preds = %372
  %378 = load i32, i32* %7, align 4, !dbg !2084
  %379 = zext i32 %378 to i64, !dbg !2085
  %380 = load %struct.zedc_asv_defl*, %struct.zedc_asv_defl** %5, align 8, !dbg !2085
  %381 = getelementptr inbounds %struct.zedc_asv_defl, %struct.zedc_asv_defl* %380, i32 0, i32 8, !dbg !2086
  %382 = getelementptr inbounds [24 x i8], [24 x i8]* %381, i64 0, i64 %379, !dbg !2085
  %383 = load i8, i8* %382, align 1, !dbg !2085
  %384 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !2087
  %385 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %384, i32 0, i32 28, !dbg !2088
  store i8 %383, i8* %385, align 8, !dbg !2089
  br label %386, !dbg !2087

; <label>:386:                                    ; preds = %377, %372
  br label %387

; <label>:387:                                    ; preds = %386, %338
  store i32 0, i32* %3, align 4, !dbg !2090
  br label %388, !dbg !2090

; <label>:388:                                    ; preds = %387, %329, %285, %234, %189, %162, %130, %60
  %389 = load i32, i32* %3, align 4, !dbg !2091
  ret i32 %389, !dbg !2091
}

; Function Attrs: nounwind uwtable
define internal void @deflate_sync_flush(%struct.zedc_stream_s*) #0 !dbg !2092 {
  %2 = alloca %struct.zedc_stream_s*, align 8
  %3 = alloca %struct.zedc_fifo*, align 8
  %4 = alloca i8, align 1
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %2, metadata !2093, metadata !289), !dbg !2094
  call void @llvm.dbg.declare(metadata %struct.zedc_fifo** %3, metadata !2095, metadata !289), !dbg !2096
  %5 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2097
  %6 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %5, i32 0, i32 22, !dbg !2098
  store %struct.zedc_fifo* %6, %struct.zedc_fifo** %3, align 8, !dbg !2096
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2099, metadata !289), !dbg !2100
  store i8 0, i8* %4, align 1, !dbg !2100
  %7 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2101
  %8 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %7, i32 0, i32 27, !dbg !2103
  %9 = load i32, i32* %8, align 4, !dbg !2103
  %10 = icmp eq i32 %9, 0, !dbg !2104
  br i1 %10, label %11, label %16, !dbg !2105

; <label>:11:                                     ; preds = %1
  %12 = load %struct.zedc_fifo*, %struct.zedc_fifo** %3, align 8, !dbg !2106
  %13 = call i32 @fifo_push(%struct.zedc_fifo* %12, i8 zeroext 0), !dbg !2108
  %14 = load %struct.zedc_fifo*, %struct.zedc_fifo** %3, align 8, !dbg !2109
  %15 = call i32 @fifo_push(%struct.zedc_fifo* %14, i8 zeroext 0), !dbg !2110
  br label %45, !dbg !2111

; <label>:16:                                     ; preds = %1
  %17 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2112
  %18 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %17, i32 0, i32 28, !dbg !2114
  %19 = load i8, i8* %18, align 8, !dbg !2114
  %20 = zext i8 %19 to i32, !dbg !2112
  %21 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2115
  %22 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %21, i32 0, i32 27, !dbg !2116
  %23 = load i32, i32* %22, align 4, !dbg !2116
  %24 = sext i32 %23 to i64, !dbg !2117
  %25 = getelementptr inbounds [8 x i8], [8 x i8]* @bmsk, i64 0, i64 %24, !dbg !2117
  %26 = load i8, i8* %25, align 1, !dbg !2117
  %27 = zext i8 %26 to i32, !dbg !2117
  %28 = and i32 %20, %27, !dbg !2118
  %29 = trunc i32 %28 to i8, !dbg !2112
  store i8 %29, i8* %4, align 1, !dbg !2119
  %30 = load %struct.zedc_fifo*, %struct.zedc_fifo** %3, align 8, !dbg !2120
  %31 = load i8, i8* %4, align 1, !dbg !2121
  %32 = call i32 @fifo_push(%struct.zedc_fifo* %30, i8 zeroext %31), !dbg !2122
  %33 = load %struct.zedc_fifo*, %struct.zedc_fifo** %3, align 8, !dbg !2123
  %34 = call i32 @fifo_push(%struct.zedc_fifo* %33, i8 zeroext 0), !dbg !2124
  %35 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2125
  %36 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %35, i32 0, i32 27, !dbg !2127
  %37 = load i32, i32* %36, align 4, !dbg !2127
  %38 = icmp sgt i32 %37, 6, !dbg !2128
  br i1 %38, label %39, label %42, !dbg !2129

; <label>:39:                                     ; preds = %16
  %40 = load %struct.zedc_fifo*, %struct.zedc_fifo** %3, align 8, !dbg !2130
  %41 = call i32 @fifo_push(%struct.zedc_fifo* %40, i8 zeroext 0), !dbg !2131
  br label %42, !dbg !2131

; <label>:42:                                     ; preds = %39, %16
  %43 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2132
  %44 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %43, i32 0, i32 27, !dbg !2133
  store i32 0, i32* %44, align 4, !dbg !2134
  br label %45

; <label>:45:                                     ; preds = %42, %11
  %46 = load %struct.zedc_fifo*, %struct.zedc_fifo** %3, align 8, !dbg !2135
  %47 = call i32 @fifo_push(%struct.zedc_fifo* %46, i8 zeroext 0), !dbg !2136
  %48 = load %struct.zedc_fifo*, %struct.zedc_fifo** %3, align 8, !dbg !2137
  %49 = call i32 @fifo_push(%struct.zedc_fifo* %48, i8 zeroext 0), !dbg !2138
  %50 = load %struct.zedc_fifo*, %struct.zedc_fifo** %3, align 8, !dbg !2139
  %51 = call i32 @fifo_push(%struct.zedc_fifo* %50, i8 zeroext -1), !dbg !2140
  %52 = load %struct.zedc_fifo*, %struct.zedc_fifo** %3, align 8, !dbg !2141
  %53 = call i32 @fifo_push(%struct.zedc_fifo* %52, i8 zeroext -1), !dbg !2142
  %54 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2143
  %55 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %54, i32 0, i32 28, !dbg !2144
  store i8 2, i8* %55, align 8, !dbg !2145
  %56 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2146
  %57 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %56, i32 0, i32 27, !dbg !2147
  store i32 3, i32* %57, align 4, !dbg !2148
  ret void, !dbg !2149
}

; Function Attrs: nounwind uwtable
define i32 @zedc_deflateEnd(%struct.zedc_stream_s*) #0 !dbg !2150 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zedc_stream_s*, align 8
  %4 = alloca %struct.zedc_dev_t*, align 8
  %5 = alloca %struct.zedc_fifo*, align 8
  %6 = alloca i8, align 1
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %3, metadata !2151, metadata !289), !dbg !2152
  call void @llvm.dbg.declare(metadata %struct.zedc_dev_t** %4, metadata !2153, metadata !289), !dbg !2154
  call void @llvm.dbg.declare(metadata %struct.zedc_fifo** %5, metadata !2155, metadata !289), !dbg !2156
  %7 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2157
  %8 = icmp ne %struct.zedc_stream_s* %7, null, !dbg !2157
  br i1 %8, label %10, label %9, !dbg !2159

; <label>:9:                                      ; preds = %1
  store i32 -2, i32* %2, align 4, !dbg !2160
  br label %44, !dbg !2160

; <label>:10:                                     ; preds = %1
  %11 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2161
  %12 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %11, i32 0, i32 22, !dbg !2162
  store %struct.zedc_fifo* %12, %struct.zedc_fifo** %5, align 8, !dbg !2163
  %13 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2164
  %14 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %13, i32 0, i32 15, !dbg !2165
  %15 = load i8*, i8** %14, align 8, !dbg !2165
  %16 = bitcast i8* %15 to %struct.zedc_dev_t*, !dbg !2166
  store %struct.zedc_dev_t* %16, %struct.zedc_dev_t** %4, align 8, !dbg !2167
  %17 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %4, align 8, !dbg !2168
  %18 = icmp ne %struct.zedc_dev_t* %17, null, !dbg !2168
  br i1 %18, label %20, label %19, !dbg !2170

; <label>:19:                                     ; preds = %10
  store i32 -2, i32* %2, align 4, !dbg !2171
  br label %44, !dbg !2171

; <label>:20:                                     ; preds = %10
  br label %21, !dbg !2172

; <label>:21:                                     ; preds = %40, %20
  %22 = load %struct.zedc_fifo*, %struct.zedc_fifo** %5, align 8, !dbg !2173
  %23 = call i32 @fifo_empty(%struct.zedc_fifo* %22), !dbg !2175
  %24 = icmp ne i32 %23, 0, !dbg !2176
  %25 = xor i1 %24, true, !dbg !2176
  br i1 %25, label %26, label %41, !dbg !2177

; <label>:26:                                     ; preds = %21
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2178, metadata !289), !dbg !2180
  %27 = load %struct.zedc_fifo*, %struct.zedc_fifo** %5, align 8, !dbg !2181
  %28 = call i32 @fifo_pop(%struct.zedc_fifo* %27, i8* %6), !dbg !2182
  br label %29, !dbg !2183, !llvm.loop !2184

; <label>:29:                                     ; preds = %26
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !2185
  %31 = icmp ne %struct._IO_FILE* %30, null, !dbg !2185
  br i1 %31, label %32, label %39, !dbg !2185

; <label>:32:                                     ; preds = %29
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !2189
  %34 = call i32 @getpid() #7, !dbg !2191
  %35 = call i32 @gettid(), !dbg !2192
  %36 = load i8, i8* %6, align 1, !dbg !2194
  %37 = zext i8 %36 to i32, !dbg !2194
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i32 0, i32 0), i32 %34, i32 %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 858, i32 %37), !dbg !2195
  br label %39, !dbg !2197

; <label>:39:                                     ; preds = %32, %29
  br label %40, !dbg !2198

; <label>:40:                                     ; preds = %39
  br label %21, !dbg !2200, !llvm.loop !2202

; <label>:41:                                     ; preds = %21
  %42 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2203
  %43 = call i32 @zedc_free_workspace(%struct.zedc_stream_s* %42), !dbg !2204
  store i32 0, i32* %2, align 4, !dbg !2205
  br label %44, !dbg !2205

; <label>:44:                                     ; preds = %41, %19, %9
  %45 = load i32, i32* %2, align 4, !dbg !2206
  ret i32 %45, !dbg !2206
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fifo_pop(%struct.zedc_fifo*, i8*) #2 !dbg !2207 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zedc_fifo*, align 8
  %5 = alloca i8*, align 8
  store %struct.zedc_fifo* %0, %struct.zedc_fifo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_fifo** %4, metadata !2210, metadata !289), !dbg !2211
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2212, metadata !289), !dbg !2213
  %6 = load %struct.zedc_fifo*, %struct.zedc_fifo** %4, align 8, !dbg !2214
  %7 = call i32 @fifo_empty(%struct.zedc_fifo* %6), !dbg !2216
  %8 = icmp ne i32 %7, 0, !dbg !2216
  br i1 %8, label %9, label %10, !dbg !2217

; <label>:9:                                      ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !2218
  br label %27, !dbg !2218

; <label>:10:                                     ; preds = %2
  %11 = load %struct.zedc_fifo*, %struct.zedc_fifo** %4, align 8, !dbg !2219
  %12 = getelementptr inbounds %struct.zedc_fifo, %struct.zedc_fifo* %11, i32 0, i32 1, !dbg !2220
  %13 = load i32, i32* %12, align 4, !dbg !2220
  %14 = zext i32 %13 to i64, !dbg !2221
  %15 = load %struct.zedc_fifo*, %struct.zedc_fifo** %4, align 8, !dbg !2221
  %16 = getelementptr inbounds %struct.zedc_fifo, %struct.zedc_fifo* %15, i32 0, i32 2, !dbg !2222
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 %14, !dbg !2221
  %18 = load i8, i8* %17, align 1, !dbg !2221
  %19 = load i8*, i8** %5, align 8, !dbg !2223
  store i8 %18, i8* %19, align 1, !dbg !2224
  %20 = load %struct.zedc_fifo*, %struct.zedc_fifo** %4, align 8, !dbg !2225
  %21 = getelementptr inbounds %struct.zedc_fifo, %struct.zedc_fifo* %20, i32 0, i32 1, !dbg !2226
  %22 = load i32, i32* %21, align 4, !dbg !2226
  %23 = add i32 %22, 1, !dbg !2227
  %24 = and i32 %23, 255, !dbg !2228
  %25 = load %struct.zedc_fifo*, %struct.zedc_fifo** %4, align 8, !dbg !2229
  %26 = getelementptr inbounds %struct.zedc_fifo, %struct.zedc_fifo* %25, i32 0, i32 1, !dbg !2230
  store i32 %24, i32* %26, align 4, !dbg !2231
  store i32 1, i32* %3, align 4, !dbg !2232
  br label %27, !dbg !2232

; <label>:27:                                     ; preds = %10, %9
  %28 = load i32, i32* %3, align 4, !dbg !2233
  ret i32 %28, !dbg !2233
}

; Function Attrs: nounwind uwtable
define i32 @zedc_deflateSetHeader(%struct.zedc_stream_s*, %struct.gzedc_header_s*) #0 !dbg !2234 {
  %3 = alloca %struct.zedc_stream_s*, align 8
  %4 = alloca %struct.gzedc_header_s*, align 8
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %3, metadata !2240, metadata !289), !dbg !2241
  store %struct.gzedc_header_s* %1, %struct.gzedc_header_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.gzedc_header_s** %4, metadata !2242, metadata !289), !dbg !2243
  %5 = load %struct.gzedc_header_s*, %struct.gzedc_header_s** %4, align 8, !dbg !2244
  %6 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2245
  %7 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %6, i32 0, i32 41, !dbg !2246
  store %struct.gzedc_header_s* %5, %struct.gzedc_header_s** %7, align 8, !dbg !2247
  ret i32 0, !dbg !2248
}

declare i64 @accel_get_app_id(%struct.card_dev_t*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @fifo_init(%struct.zedc_fifo*) #2 !dbg !2249 {
  %2 = alloca %struct.zedc_fifo*, align 8
  store %struct.zedc_fifo* %0, %struct.zedc_fifo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_fifo** %2, metadata !2252, metadata !289), !dbg !2253
  %3 = load %struct.zedc_fifo*, %struct.zedc_fifo** %2, align 8, !dbg !2254
  %4 = getelementptr inbounds %struct.zedc_fifo, %struct.zedc_fifo* %3, i32 0, i32 2, !dbg !2255
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i32 0, i32 0, !dbg !2256
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 256, i32 4, i1 false), !dbg !2256
  %6 = load %struct.zedc_fifo*, %struct.zedc_fifo** %2, align 8, !dbg !2257
  %7 = getelementptr inbounds %struct.zedc_fifo, %struct.zedc_fifo* %6, i32 0, i32 0, !dbg !2258
  store i32 0, i32* %7, align 4, !dbg !2259
  %8 = load %struct.zedc_fifo*, %struct.zedc_fifo** %2, align 8, !dbg !2260
  %9 = getelementptr inbounds %struct.zedc_fifo, %struct.zedc_fifo* %8, i32 0, i32 1, !dbg !2261
  store i32 0, i32* %9, align 4, !dbg !2262
  ret void, !dbg !2263
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

; Function Attrs: nounwind
declare i64 @time(i64*) #5

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fifo_push(%struct.zedc_fifo*, i8 zeroext) #2 !dbg !2264 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zedc_fifo*, align 8
  %5 = alloca i8, align 1
  store %struct.zedc_fifo* %0, %struct.zedc_fifo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_fifo** %4, metadata !2267, metadata !289), !dbg !2268
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !2269, metadata !289), !dbg !2270
  %6 = load %struct.zedc_fifo*, %struct.zedc_fifo** %4, align 8, !dbg !2271
  %7 = call i32 @fifo_free(%struct.zedc_fifo* %6), !dbg !2273
  %8 = icmp ult i32 %7, 1, !dbg !2274
  br i1 %8, label %9, label %10, !dbg !2275

; <label>:9:                                      ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !2276
  br label %26, !dbg !2276

; <label>:10:                                     ; preds = %2
  %11 = load i8, i8* %5, align 1, !dbg !2277
  %12 = load %struct.zedc_fifo*, %struct.zedc_fifo** %4, align 8, !dbg !2278
  %13 = getelementptr inbounds %struct.zedc_fifo, %struct.zedc_fifo* %12, i32 0, i32 0, !dbg !2279
  %14 = load i32, i32* %13, align 4, !dbg !2279
  %15 = zext i32 %14 to i64, !dbg !2280
  %16 = load %struct.zedc_fifo*, %struct.zedc_fifo** %4, align 8, !dbg !2280
  %17 = getelementptr inbounds %struct.zedc_fifo, %struct.zedc_fifo* %16, i32 0, i32 2, !dbg !2281
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 %15, !dbg !2280
  store i8 %11, i8* %18, align 1, !dbg !2282
  %19 = load %struct.zedc_fifo*, %struct.zedc_fifo** %4, align 8, !dbg !2283
  %20 = getelementptr inbounds %struct.zedc_fifo, %struct.zedc_fifo* %19, i32 0, i32 0, !dbg !2284
  %21 = load i32, i32* %20, align 4, !dbg !2284
  %22 = add i32 %21, 1, !dbg !2285
  %23 = and i32 %22, 255, !dbg !2286
  %24 = load %struct.zedc_fifo*, %struct.zedc_fifo** %4, align 8, !dbg !2287
  %25 = getelementptr inbounds %struct.zedc_fifo, %struct.zedc_fifo* %24, i32 0, i32 0, !dbg !2288
  store i32 %23, i32* %25, align 4, !dbg !2289
  store i32 1, i32* %3, align 4, !dbg !2290
  br label %26, !dbg !2290

; <label>:26:                                     ; preds = %10, %9
  %27 = load i32, i32* %3, align 4, !dbg !2291
  ret i32 %27, !dbg !2291
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fifo_push32(%struct.zedc_fifo*, i32) #2 !dbg !2292 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zedc_fifo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.anon.0, align 4
  store %struct.zedc_fifo* %0, %struct.zedc_fifo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_fifo** %4, metadata !2295, metadata !289), !dbg !2296
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2297, metadata !289), !dbg !2298
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2299, metadata !289), !dbg !2300
  call void @llvm.dbg.declare(metadata %union.anon.0* %7, metadata !2301, metadata !289), !dbg !2309
  %8 = load %struct.zedc_fifo*, %struct.zedc_fifo** %4, align 8, !dbg !2310
  %9 = call i32 @fifo_free(%struct.zedc_fifo* %8), !dbg !2312
  %10 = zext i32 %9 to i64, !dbg !2312
  %11 = icmp ult i64 %10, 4, !dbg !2313
  br i1 %11, label %12, label %13, !dbg !2314

; <label>:12:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !2315
  br label %44, !dbg !2315

; <label>:13:                                     ; preds = %2
  %14 = load i32, i32* %5, align 4, !dbg !2316
  %15 = bitcast %union.anon.0* %7 to i32*, !dbg !2317
  store i32 %14, i32* %15, align 4, !dbg !2318
  store i32 0, i32* %6, align 4, !dbg !2319
  br label %16, !dbg !2321

; <label>:16:                                     ; preds = %40, %13
  %17 = load i32, i32* %6, align 4, !dbg !2322
  %18 = zext i32 %17 to i64, !dbg !2322
  %19 = icmp ult i64 %18, 4, !dbg !2325
  br i1 %19, label %20, label %43, !dbg !2326

; <label>:20:                                     ; preds = %16
  %21 = load i32, i32* %6, align 4, !dbg !2327
  %22 = zext i32 %21 to i64, !dbg !2329
  %23 = bitcast %union.anon.0* %7 to [4 x i8]*, !dbg !2330
  %24 = getelementptr inbounds [4 x i8], [4 x i8]* %23, i64 0, i64 %22, !dbg !2329
  %25 = load i8, i8* %24, align 1, !dbg !2329
  %26 = load %struct.zedc_fifo*, %struct.zedc_fifo** %4, align 8, !dbg !2331
  %27 = getelementptr inbounds %struct.zedc_fifo, %struct.zedc_fifo* %26, i32 0, i32 0, !dbg !2332
  %28 = load i32, i32* %27, align 4, !dbg !2332
  %29 = zext i32 %28 to i64, !dbg !2333
  %30 = load %struct.zedc_fifo*, %struct.zedc_fifo** %4, align 8, !dbg !2333
  %31 = getelementptr inbounds %struct.zedc_fifo, %struct.zedc_fifo* %30, i32 0, i32 2, !dbg !2334
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %31, i64 0, i64 %29, !dbg !2333
  store i8 %25, i8* %32, align 1, !dbg !2335
  %33 = load %struct.zedc_fifo*, %struct.zedc_fifo** %4, align 8, !dbg !2336
  %34 = getelementptr inbounds %struct.zedc_fifo, %struct.zedc_fifo* %33, i32 0, i32 0, !dbg !2337
  %35 = load i32, i32* %34, align 4, !dbg !2337
  %36 = add i32 %35, 1, !dbg !2338
  %37 = and i32 %36, 255, !dbg !2339
  %38 = load %struct.zedc_fifo*, %struct.zedc_fifo** %4, align 8, !dbg !2340
  %39 = getelementptr inbounds %struct.zedc_fifo, %struct.zedc_fifo* %38, i32 0, i32 0, !dbg !2341
  store i32 %37, i32* %39, align 4, !dbg !2342
  br label %40, !dbg !2343

; <label>:40:                                     ; preds = %20
  %41 = load i32, i32* %6, align 4, !dbg !2344
  %42 = add i32 %41, 1, !dbg !2344
  store i32 %42, i32* %6, align 4, !dbg !2344
  br label %16, !dbg !2346, !llvm.loop !2347

; <label>:43:                                     ; preds = %16
  store i32 1, i32* %3, align 4, !dbg !2349
  br label %44, !dbg !2349

; <label>:44:                                     ; preds = %43, %12
  %45 = load i32, i32* %3, align 4, !dbg !2350
  ret i32 %45, !dbg !2350
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fifo_free(%struct.zedc_fifo*) #2 !dbg !2351 {
  %2 = alloca %struct.zedc_fifo*, align 8
  store %struct.zedc_fifo* %0, %struct.zedc_fifo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_fifo** %2, metadata !2354, metadata !289), !dbg !2355
  %3 = load %struct.zedc_fifo*, %struct.zedc_fifo** %2, align 8, !dbg !2356
  %4 = call i32 @fifo_used(%struct.zedc_fifo* %3), !dbg !2357
  %5 = sub i32 256, %4, !dbg !2358
  %6 = sub i32 %5, 1, !dbg !2359
  ret i32 %6, !dbg !2360
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fifo_used(%struct.zedc_fifo*) #2 !dbg !2361 {
  %2 = alloca %struct.zedc_fifo*, align 8
  store %struct.zedc_fifo* %0, %struct.zedc_fifo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_fifo** %2, metadata !2362, metadata !289), !dbg !2363
  %3 = load %struct.zedc_fifo*, %struct.zedc_fifo** %2, align 8, !dbg !2364
  %4 = getelementptr inbounds %struct.zedc_fifo, %struct.zedc_fifo* %3, i32 0, i32 0, !dbg !2365
  %5 = load i32, i32* %4, align 4, !dbg !2365
  %6 = load %struct.zedc_fifo*, %struct.zedc_fifo** %2, align 8, !dbg !2366
  %7 = getelementptr inbounds %struct.zedc_fifo, %struct.zedc_fifo* %6, i32 0, i32 1, !dbg !2367
  %8 = load i32, i32* %7, align 4, !dbg !2367
  %9 = sub i32 %5, %8, !dbg !2368
  %10 = and i32 %9, 255, !dbg !2369
  ret i32 %10, !dbg !2370
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @push_output_byte(%struct.zedc_stream_s*, i8 zeroext) #2 !dbg !2371 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zedc_stream_s*, align 8
  %5 = alloca i8, align 1
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %4, metadata !2374, metadata !289), !dbg !2375
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !2376, metadata !289), !dbg !2377
  %6 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !2378
  %7 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %6, i32 0, i32 11, !dbg !2380
  %8 = load i32, i32* %7, align 8, !dbg !2380
  %9 = icmp eq i32 %8, 0, !dbg !2381
  br i1 %9, label %10, label %11, !dbg !2382

; <label>:10:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !2383
  br label %28, !dbg !2383

; <label>:11:                                     ; preds = %2
  %12 = load i8, i8* %5, align 1, !dbg !2384
  %13 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !2385
  %14 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %13, i32 0, i32 10, !dbg !2386
  %15 = load i8*, i8** %14, align 8, !dbg !2386
  store i8 %12, i8* %15, align 1, !dbg !2387
  %16 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !2388
  %17 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %16, i32 0, i32 12, !dbg !2389
  %18 = load i64, i64* %17, align 8, !dbg !2390
  %19 = add i64 %18, 1, !dbg !2390
  store i64 %19, i64* %17, align 8, !dbg !2390
  %20 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !2391
  %21 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %20, i32 0, i32 10, !dbg !2392
  %22 = load i8*, i8** %21, align 8, !dbg !2393
  %23 = getelementptr inbounds i8, i8* %22, i32 1, !dbg !2393
  store i8* %23, i8** %21, align 8, !dbg !2393
  %24 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !2394
  %25 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %24, i32 0, i32 11, !dbg !2395
  %26 = load i32, i32* %25, align 8, !dbg !2396
  %27 = add i32 %26, -1, !dbg !2396
  store i32 %27, i32* %25, align 8, !dbg !2396
  store i32 1, i32* %3, align 4, !dbg !2397
  br label %28, !dbg !2397

; <label>:28:                                     ; preds = %11, %10
  %29 = load i32, i32* %3, align 4, !dbg !2398
  ret i32 %29, !dbg !2398
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @__arch_swab64(i64) #2 !dbg !2399 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !2401, metadata !289), !dbg !2402
  %3 = load i64, i64* %2, align 8, !dbg !2403
  %4 = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %3) #1, !dbg !2404, !srcloc !2405
  store i64 %4, i64* %2, align 8, !dbg !2404
  %5 = load i64, i64* %2, align 8, !dbg !2406
  ret i64 %5, !dbg !2407
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__arch_swab32(i32) #2 !dbg !2408 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2409, metadata !289), !dbg !2410
  %3 = load i32, i32* %2, align 4, !dbg !2411
  %4 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %3) #1, !dbg !2412, !srcloc !2413
  store i32 %4, i32* %2, align 4, !dbg !2412
  %5 = load i32, i32* %2, align 4, !dbg !2414
  ret i32 %5, !dbg !2415
}

; Function Attrs: nounwind
declare i64 @syscall(i64, ...) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!122, !123}
!llvm.ident = !{!124}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !29, globals: !115)
!1 = !DIFile(filename: "/home/lichi/Desktop/genwqe/[task]lib--__libzHW.o/[inter]lib--deflate.o.i", directory: "/home/lichi/Desktop")
!2 = !{!3, !22}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "e_head_state", file: !4, line: 152, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../include/libzHW.h", directory: "/home/lichi/Desktop")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21}
!6 = !DIEnumerator(name: "HEADER_START", value: 0)
!7 = !DIEnumerator(name: "FLAGS_CHECK_EMPTY", value: 1)
!8 = !DIEnumerator(name: "FLAGS_CHECK_EXTRA", value: 2)
!9 = !DIEnumerator(name: "FLAGS_GET_EXTRA_LEN1", value: 3)
!10 = !DIEnumerator(name: "FLAGS_GET_EXTRA_LEN2", value: 4)
!11 = !DIEnumerator(name: "FLAGS_GET_EXTRA", value: 5)
!12 = !DIEnumerator(name: "FLAGS_CHECK_FNAME", value: 6)
!13 = !DIEnumerator(name: "FLAGS_GET_FNAME", value: 7)
!14 = !DIEnumerator(name: "FLAGS_CHECK_FCOMMENT", value: 8)
!15 = !DIEnumerator(name: "FLAGS_GET_FCOMMENT", value: 9)
!16 = !DIEnumerator(name: "FLAGS_CHECK_FHCRC", value: 10)
!17 = !DIEnumerator(name: "FLAGS_GET_FHCRC1", value: 11)
!18 = !DIEnumerator(name: "FLAGS_GET_FHCRC2", value: 12)
!19 = !DIEnumerator(name: "FLAGS_CHECK_FTEXT", value: 13)
!20 = !DIEnumerator(name: "ZLIB_ADLER", value: 14)
!21 = !DIEnumerator(name: "HEADER_DONE", value: 15)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "zedc_mtype", file: !4, line: 131, size: 32, align: 32, elements: !23)
!23 = !{!24, !25, !26, !27, !28}
!24 = !DIEnumerator(name: "DDCB_DMA_TYPE_MASK", value: 24)
!25 = !DIEnumerator(name: "DDCB_DMA_TYPE_FLAT", value: 8)
!26 = !DIEnumerator(name: "DDCB_DMA_TYPE_SGLIST", value: 16)
!27 = !DIEnumerator(name: "DDCB_DMA_WRITEABLE", value: 4)
!28 = !DIEnumerator(name: "DDCB_DMA_PIN_MEMORY", value: 32)
!29 = !{!30, !47, !48, !79, !101, !55, !106, !107, !108, !109, !57, !110, !111}
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "zedc_handle_t", file: !4, line: 354, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zedc_dev_t", file: !33, line: 82, size: 256, align: 64, elements: !34)
!33 = !DIFile(filename: "hw_defs.h", directory: "/home/lichi/Desktop")
!34 = !{!35, !37, !38, !44, !45, !46}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !32, file: !33, line: 83, baseType: !36, size: 32, align: 32)
!36 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "zedc_rc", scope: !32, file: !33, line: 84, baseType: !36, size: 32, align: 32, offset: 32)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !32, file: !33, line: 87, baseType: !39, size: 64, align: 64, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "accel_t", file: !40, line: 198, baseType: !41)
!40 = !DIFile(filename: "../include/libddcb.h", directory: "/home/lichi/Desktop")
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DICompositeType(tag: DW_TAG_structure_type, name: "card_dev_t", file: !43, line: 95, flags: DIFlagFwdDecl)
!43 = !DIFile(filename: "../include/libcard.h", directory: "/home/lichi/Desktop")
!44 = !DIDerivedType(tag: DW_TAG_member, name: "card_rc", scope: !32, file: !33, line: 88, baseType: !36, size: 32, align: 32, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "card_errno", scope: !32, file: !33, line: 89, baseType: !36, size: 32, align: 32, offset: 160)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "collect_debug_data", scope: !32, file: !33, line: 90, baseType: !36, size: 32, align: 32, offset: 192)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zedc_asiv_defl", file: !50, line: 179, size: 768, align: 8, elements: !51)
!50 = !DIFile(filename: "../include/deflate_ddcb.h", directory: "/home/lichi/Desktop")
!51 = !{!52, !56, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !78}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "in_buff", scope: !49, file: !50, line: 180, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !54, line: 55, baseType: !55)
!54 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop")
!55 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "in_buff_len", scope: !49, file: !50, line: 181, baseType: !57, size: 32, align: 32, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !54, line: 51, baseType: !58)
!58 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "in_crc32", scope: !49, file: !50, line: 182, baseType: !57, size: 32, align: 32, offset: 96)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "out_buff", scope: !49, file: !50, line: 184, baseType: !53, size: 64, align: 64, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "out_buff_len", scope: !49, file: !50, line: 185, baseType: !57, size: 32, align: 32, offset: 192)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "in_adler32", scope: !49, file: !50, line: 186, baseType: !57, size: 32, align: 32, offset: 224)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "in_dict", scope: !49, file: !50, line: 188, baseType: !53, size: 64, align: 64, offset: 256)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "in_dict_len", scope: !49, file: !50, line: 189, baseType: !57, size: 32, align: 32, offset: 320)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_0", scope: !49, file: !50, line: 190, baseType: !57, size: 32, align: 32, offset: 352)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_1", scope: !49, file: !50, line: 192, baseType: !53, size: 64, align: 64, offset: 384)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_2", scope: !49, file: !50, line: 193, baseType: !53, size: 64, align: 64, offset: 448)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "out_dict", scope: !49, file: !50, line: 195, baseType: !53, size: 64, align: 64, offset: 512)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "out_dict_len", scope: !49, file: !50, line: 196, baseType: !57, size: 32, align: 32, offset: 576)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_3", scope: !49, file: !50, line: 197, baseType: !57, size: 32, align: 32, offset: 608)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_4", scope: !49, file: !50, line: 199, baseType: !53, size: 64, align: 64, offset: 640)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "ibits", scope: !49, file: !50, line: 201, baseType: !73, size: 56, align: 8, offset: 704)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 56, align: 8, elements: !76)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !54, line: 48, baseType: !75)
!75 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!76 = !{!77}
!77 = !DISubrange(count: 7)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "inumbits", scope: !49, file: !50, line: 202, baseType: !74, size: 8, align: 8, offset: 760)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zedc_asv_defl", file: !50, line: 206, size: 512, align: 8, elements: !81)
!81 = !{!82, !85, !89, !90, !91, !92, !93, !94, !95, !99, !100}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "out_dict_used", scope: !80, file: !50, line: 207, baseType: !83, size: 16, align: 16)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !54, line: 49, baseType: !84)
!84 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "resrv_1", scope: !80, file: !50, line: 208, baseType: !86, size: 40, align: 8, offset: 16)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 40, align: 8, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 5)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "onumbits", scope: !80, file: !50, line: 209, baseType: !74, size: 8, align: 8, offset: 56)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "resrv_2", scope: !80, file: !50, line: 210, baseType: !53, size: 64, align: 64, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "out_crc32", scope: !80, file: !50, line: 212, baseType: !57, size: 32, align: 32, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "out_adler32", scope: !80, file: !50, line: 213, baseType: !57, size: 32, align: 32, offset: 160)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "inp_processed", scope: !80, file: !50, line: 214, baseType: !57, size: 32, align: 32, offset: 192)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "outp_returned", scope: !80, file: !50, line: 215, baseType: !57, size: 32, align: 32, offset: 224)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "obits", scope: !80, file: !50, line: 217, baseType: !96, size: 192, align: 8, offset: 256)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 192, align: 8, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 24)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "out_dict_offs", scope: !80, file: !50, line: 218, baseType: !74, size: 8, align: 8, offset: 448)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "obits_extra", scope: !80, file: !50, line: 219, baseType: !73, size: 56, align: 8, offset: 456)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be64", file: !102, line: 32, baseType: !103)
!102 = !DIFile(filename: "/usr/include/linux/types.h", directory: "/home/lichi/Desktop")
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !104, line: 30, baseType: !105)
!104 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "/home/lichi/Desktop")
!105 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !102, line: 30, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !104, line: 26, baseType: !58)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !104, line: 23, baseType: !84)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !102, line: 28, baseType: !108)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !102, line: 29, baseType: !107)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !112, line: 98, baseType: !113)
!112 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop")
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !114, line: 133, baseType: !36)
!114 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop")
!115 = !{!116}
!116 = distinct !DIGlobalVariable(name: "bmsk", scope: !0, file: !117, line: 376, type: !118, isLocal: true, isDefinition: true, variable: [8 x i8]* @bmsk)
!117 = !DIFile(filename: "deflate.c", directory: "/home/lichi/Desktop")
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 64, align: 8, elements: !120)
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!120 = !{!121}
!121 = !DISubrange(count: 8)
!122 = !{i32 2, !"Dwarf Version", i32 4}
!123 = !{i32 2, !"Debug Info Version", i32 3}
!124 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!125 = distinct !DISubprogram(name: "zedc_deflateInit2", scope: !117, file: !117, line: 241, type: !126, isLocal: false, isDefinition: true, scopeLine: 247, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!126 = !DISubroutineType(types: !127)
!127 = !{!36, !128, !36, !36, !36, !36, !36}
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "zedc_streamp", file: !4, line: 347, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zedc_stream_s", file: !4, line: 218, size: 8704, align: 64, elements: !131)
!131 = !{!132, !133, !134, !135, !136, !137, !138, !139, !141, !142, !143, !145, !146, !147, !148, !149, !150, !188, !189, !190, !191, !192, !193, !203, !204, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !228, !229, !233, !234, !235, !236, !237, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !283, !284, !285, !286}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !130, file: !4, line: 220, baseType: !36, size: 32, align: 32)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !130, file: !4, line: 221, baseType: !36, size: 32, align: 32, offset: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "windowBits", scope: !130, file: !4, line: 222, baseType: !36, size: 32, align: 32, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "memLevel", scope: !130, file: !4, line: 227, baseType: !36, size: 32, align: 32, offset: 96)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "strategy", scope: !130, file: !4, line: 228, baseType: !36, size: 32, align: 32, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !130, file: !4, line: 229, baseType: !36, size: 32, align: 32, offset: 160)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "data_type", scope: !130, file: !4, line: 230, baseType: !36, size: 32, align: 32, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !130, file: !4, line: 233, baseType: !140, size: 64, align: 64, offset: 256)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64, align: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !130, file: !4, line: 234, baseType: !58, size: 32, align: 32, offset: 320)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !130, file: !4, line: 235, baseType: !55, size: 64, align: 64, offset: 384)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !130, file: !4, line: 237, baseType: !144, size: 64, align: 64, offset: 448)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !130, file: !4, line: 238, baseType: !58, size: 32, align: 32, offset: 512)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !130, file: !4, line: 239, baseType: !55, size: 64, align: 64, offset: 576)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !130, file: !4, line: 241, baseType: !57, size: 32, align: 32, offset: 640)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "adler32", scope: !130, file: !4, line: 242, baseType: !57, size: 32, align: 32, offset: 672)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !130, file: !4, line: 255, baseType: !47, size: 64, align: 64, offset: 704)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !130, file: !4, line: 256, baseType: !151, size: 1856, align: 64, offset: 768)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ddcb_cmd", file: !40, line: 154, size: 1856, align: 64, elements: !152)
!152 = !{!153, !154, !155, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !173}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "next_addr", scope: !151, file: !40, line: 155, baseType: !103, size: 64, align: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !151, file: !40, line: 156, baseType: !103, size: 64, align: 64, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "acfunc", scope: !151, file: !40, line: 158, baseType: !156, size: 8, align: 8, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !104, line: 20, baseType: !75)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !151, file: !40, line: 159, baseType: !156, size: 8, align: 8, offset: 136)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "asiv_length", scope: !151, file: !40, line: 160, baseType: !156, size: 8, align: 8, offset: 144)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "asv_length", scope: !151, file: !40, line: 161, baseType: !156, size: 8, align: 8, offset: 152)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "cmdopts", scope: !151, file: !40, line: 162, baseType: !108, size: 16, align: 16, offset: 160)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "retc", scope: !151, file: !40, line: 163, baseType: !108, size: 16, align: 16, offset: 176)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "attn", scope: !151, file: !40, line: 165, baseType: !108, size: 16, align: 16, offset: 192)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "vcrc", scope: !151, file: !40, line: 166, baseType: !108, size: 16, align: 16, offset: 208)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !151, file: !40, line: 167, baseType: !107, size: 32, align: 32, offset: 224)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "deque_ts", scope: !151, file: !40, line: 169, baseType: !103, size: 64, align: 64, offset: 256)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "cmplt_ts", scope: !151, file: !40, line: 170, baseType: !103, size: 64, align: 64, offset: 320)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "disp_ts", scope: !151, file: !40, line: 171, baseType: !103, size: 64, align: 64, offset: 384)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "ddata_addr", scope: !151, file: !40, line: 173, baseType: !103, size: 64, align: 64, offset: 448)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "asv", scope: !151, file: !40, line: 175, baseType: !170, size: 512, align: 8, offset: 512)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 512, align: 8, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, scope: !151, file: !40, line: 177, baseType: !174, size: 832, align: 64, offset: 1024)
!174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !151, file: !40, line: 177, size: 832, align: 64, elements: !175)
!175 = !{!176, !184}
!176 = !DIDerivedType(tag: DW_TAG_member, scope: !174, file: !40, line: 179, baseType: !177, size: 832, align: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !174, file: !40, line: 179, size: 832, align: 64, elements: !178)
!178 = !{!179, !180}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "ats", scope: !177, file: !40, line: 180, baseType: !103, size: 64, align: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "asiv", scope: !177, file: !40, line: 181, baseType: !181, size: 768, align: 8, offset: 64)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 768, align: 8, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 96)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "__asiv", scope: !174, file: !40, line: 184, baseType: !185, size: 832, align: 8)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 832, align: 8, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 104)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "retc", scope: !130, file: !4, line: 257, baseType: !83, size: 16, align: 16, offset: 2624)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "attn", scope: !130, file: !4, line: 258, baseType: !83, size: 16, align: 16, offset: 2640)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !130, file: !4, line: 259, baseType: !57, size: 32, align: 32, offset: 2656)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !130, file: !4, line: 262, baseType: !36, size: 32, align: 32, offset: 2688)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !130, file: !4, line: 263, baseType: !36, size: 32, align: 32, offset: 2720)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "out_fifo", scope: !130, file: !4, line: 266, baseType: !194, size: 2112, align: 32, offset: 2752)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zedc_fifo", file: !195, line: 45, size: 2112, align: 32, elements: !196)
!195 = !DIFile(filename: "../include/deflate_fifo.h", directory: "/home/lichi/Desktop")
!196 = !{!197, !198, !199}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !194, file: !195, line: 46, baseType: !58, size: 32, align: 32)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "pop", scope: !194, file: !195, line: 47, baseType: !58, size: 32, align: 32, offset: 32)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "fifo", scope: !194, file: !195, line: 48, baseType: !200, size: 2048, align: 8, offset: 64)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 2048, align: 8, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 256)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "in_fifo", scope: !130, file: !4, line: 267, baseType: !194, size: 2112, align: 32, offset: 4864)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "header_state", scope: !130, file: !4, line: 268, baseType: !205, size: 32, align: 32, offset: 6976)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "head_state", file: !4, line: 163, baseType: !3)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_hcrc", scope: !130, file: !4, line: 269, baseType: !83, size: 16, align: 16, offset: 7008)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_header_idx", scope: !130, file: !4, line: 270, baseType: !36, size: 32, align: 32, offset: 7040)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "onumbits", scope: !130, file: !4, line: 273, baseType: !36, size: 32, align: 32, offset: 7072)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "obyte", scope: !130, file: !4, line: 274, baseType: !74, size: 8, align: 8, offset: 7104)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "eob_seen", scope: !130, file: !4, line: 277, baseType: !36, size: 32, align: 32, offset: 7136)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "eob_added", scope: !130, file: !4, line: 278, baseType: !36, size: 32, align: 32, offset: 7168)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "header_added", scope: !130, file: !4, line: 279, baseType: !36, size: 32, align: 32, offset: 7200)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "trailer_added", scope: !130, file: !4, line: 280, baseType: !36, size: 32, align: 32, offset: 7232)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "havedict", scope: !130, file: !4, line: 281, baseType: !36, size: 32, align: 32, offset: 7264)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "wsp", scope: !130, file: !4, line: 284, baseType: !216, size: 64, align: 64, offset: 7296)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zedc_wsp", file: !50, line: 93, size: 528640, align: 8, elements: !218)
!218 = !{!219, !224}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !217, file: !50, line: 94, baseType: !220, size: 524544, align: 8)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 524544, align: 8, elements: !221)
!221 = !{!222, !223}
!222 = !DISubrange(count: 2)
!223 = !DISubrange(count: 32784)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !217, file: !50, line: 95, baseType: !225, size: 4096, align: 8, offset: 524544)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 4096, align: 8, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 512)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "wsp_page", scope: !130, file: !4, line: 285, baseType: !36, size: 32, align: 32, offset: 7360)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "dma_type", scope: !130, file: !4, line: 286, baseType: !230, size: 96, align: 32, offset: 7392)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 96, align: 32, elements: !231)
!231 = !{!232}
!232 = !DISubrange(count: 3)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "file_size", scope: !130, file: !4, line: 289, baseType: !57, size: 32, align: 32, offset: 7488)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "file_adler32", scope: !130, file: !4, line: 290, baseType: !57, size: 32, align: 32, offset: 7520)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "file_crc32", scope: !130, file: !4, line: 291, baseType: !57, size: 32, align: 32, offset: 7552)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "dict_adler32", scope: !130, file: !4, line: 292, baseType: !57, size: 32, align: 32, offset: 7584)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_head", scope: !130, file: !4, line: 293, baseType: !238, size: 64, align: 64, offset: 7616)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gzedc_header_s", file: !4, line: 169, size: 640, align: 64, elements: !240)
!240 = !{!241, !242, !243, !244, !245, !246, !247, !248, !251, !252, !253, !254, !255}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !239, file: !4, line: 170, baseType: !36, size: 32, align: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !239, file: !4, line: 171, baseType: !55, size: 64, align: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "xflags", scope: !239, file: !4, line: 172, baseType: !36, size: 32, align: 32, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "os", scope: !239, file: !4, line: 173, baseType: !36, size: 32, align: 32, offset: 160)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !239, file: !4, line: 174, baseType: !144, size: 64, align: 64, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "extra_len", scope: !239, file: !4, line: 175, baseType: !58, size: 32, align: 32, offset: 256)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "extra_max", scope: !239, file: !4, line: 176, baseType: !58, size: 32, align: 32, offset: 288)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !239, file: !4, line: 177, baseType: !249, size: 64, align: 64, offset: 320)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64, align: 64)
!250 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "name_max", scope: !239, file: !4, line: 178, baseType: !58, size: 32, align: 32, offset: 384)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !239, file: !4, line: 179, baseType: !249, size: 64, align: 64, offset: 448)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "comm_max", scope: !239, file: !4, line: 180, baseType: !58, size: 32, align: 32, offset: 512)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "hcrc", scope: !239, file: !4, line: 181, baseType: !36, size: 32, align: 32, offset: 544)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !239, file: !4, line: 182, baseType: !36, size: 32, align: 32, offset: 576)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "in_hdr_scratch_len", scope: !130, file: !4, line: 297, baseType: !57, size: 32, align: 32, offset: 7680)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "in_hdr_bits", scope: !130, file: !4, line: 298, baseType: !83, size: 16, align: 16, offset: 7712)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_ib", scope: !130, file: !4, line: 299, baseType: !74, size: 8, align: 8, offset: 7728)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_ib", scope: !130, file: !4, line: 300, baseType: !74, size: 8, align: 8, offset: 7736)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "inp_processed", scope: !130, file: !4, line: 303, baseType: !57, size: 32, align: 32, offset: 7744)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "outp_returned", scope: !130, file: !4, line: 304, baseType: !57, size: 32, align: 32, offset: 7776)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "proc_bits", scope: !130, file: !4, line: 305, baseType: !74, size: 8, align: 8, offset: 7808)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "infl_stat", scope: !130, file: !4, line: 313, baseType: !74, size: 8, align: 8, offset: 7816)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_start", scope: !130, file: !4, line: 318, baseType: !57, size: 32, align: 32, offset: 7840)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "out_hdr_bits", scope: !130, file: !4, line: 319, baseType: !83, size: 16, align: 16, offset: 7872)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "out_hdr_start_bits", scope: !130, file: !4, line: 320, baseType: !74, size: 8, align: 8, offset: 7888)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "copyblock_len", scope: !130, file: !4, line: 321, baseType: !83, size: 16, align: 16, offset: 7904)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tree_bits", scope: !130, file: !4, line: 324, baseType: !57, size: 32, align: 32, offset: 7936)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "pad_bits", scope: !130, file: !4, line: 325, baseType: !57, size: 32, align: 32, offset: 7968)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_bits", scope: !130, file: !4, line: 326, baseType: !57, size: 32, align: 32, offset: 8000)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "pre_scratch_bits", scope: !130, file: !4, line: 327, baseType: !53, size: 64, align: 64, offset: 8064)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "inp_data_offs", scope: !130, file: !4, line: 328, baseType: !57, size: 32, align: 32, offset: 8128)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "in_data_used", scope: !130, file: !4, line: 329, baseType: !57, size: 32, align: 32, offset: 8160)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "dict_len", scope: !130, file: !4, line: 332, baseType: !83, size: 16, align: 16, offset: 8192)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "out_dict_offs", scope: !130, file: !4, line: 333, baseType: !74, size: 8, align: 8, offset: 8208)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "obytes_in_dict", scope: !130, file: !4, line: 334, baseType: !83, size: 16, align: 16, offset: 8224)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "prefx_len", scope: !130, file: !4, line: 337, baseType: !36, size: 32, align: 32, offset: 8256)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "prefx_idx", scope: !130, file: !4, line: 338, baseType: !36, size: 32, align: 32, offset: 8288)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "prefx", scope: !130, file: !4, line: 339, baseType: !280, size: 144, align: 8, offset: 8320)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 144, align: 8, elements: !281)
!281 = !{!282}
!282 = !DISubrange(count: 18)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "xlen", scope: !130, file: !4, line: 340, baseType: !83, size: 16, align: 16, offset: 8464)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "postfx_len", scope: !130, file: !4, line: 342, baseType: !36, size: 32, align: 32, offset: 8480)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "postfx_idx", scope: !130, file: !4, line: 343, baseType: !36, size: 32, align: 32, offset: 8512)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "postfx", scope: !130, file: !4, line: 344, baseType: !280, size: 144, align: 8, offset: 8544)
!287 = !{}
!288 = !DILocalVariable(name: "strm", arg: 1, scope: !125, file: !117, line: 241, type: !128)
!289 = !DIExpression()
!290 = !DILocation(line: 241, column: 36, scope: !125)
!291 = !DILocalVariable(name: "level", arg: 2, scope: !125, file: !117, line: 242, type: !36)
!292 = !DILocation(line: 242, column: 13, scope: !125)
!293 = !DILocalVariable(name: "method", arg: 3, scope: !125, file: !117, line: 243, type: !36)
!294 = !DILocation(line: 243, column: 13, scope: !125)
!295 = !DILocalVariable(name: "windowBits", arg: 4, scope: !125, file: !117, line: 244, type: !36)
!296 = !DILocation(line: 244, column: 13, scope: !125)
!297 = !DILocalVariable(name: "memLevel", arg: 5, scope: !125, file: !117, line: 245, type: !36)
!298 = !DILocation(line: 245, column: 13, scope: !125)
!299 = !DILocalVariable(name: "strategy", arg: 6, scope: !125, file: !117, line: 246, type: !36)
!300 = !DILocation(line: 246, column: 13, scope: !125)
!301 = !DILocalVariable(name: "rc", scope: !125, file: !117, line: 248, type: !36)
!302 = !DILocation(line: 248, column: 6, scope: !125)
!303 = !DILocalVariable(name: "zedc", scope: !125, file: !117, line: 249, type: !30)
!304 = !DILocation(line: 249, column: 16, scope: !125)
!305 = !DILocation(line: 251, column: 7, scope: !306)
!306 = distinct !DILexicalBlock(scope: !125, file: !117, line: 251, column: 6)
!307 = !DILocation(line: 251, column: 6, scope: !125)
!308 = !DILocation(line: 252, column: 3, scope: !306)
!309 = !DILocation(line: 254, column: 24, scope: !125)
!310 = !DILocation(line: 254, column: 30, scope: !125)
!311 = !DILocation(line: 254, column: 9, scope: !125)
!312 = !DILocation(line: 254, column: 7, scope: !125)
!313 = !DILocation(line: 255, column: 7, scope: !314)
!314 = distinct !DILexicalBlock(scope: !125, file: !117, line: 255, column: 6)
!315 = !DILocation(line: 255, column: 6, scope: !125)
!316 = !DILocation(line: 256, column: 3, scope: !314)
!317 = !DILocation(line: 258, column: 15, scope: !318)
!318 = distinct !DILexicalBlock(scope: !125, file: !117, line: 258, column: 6)
!319 = !DILocation(line: 258, column: 7, scope: !318)
!320 = !DILocation(line: 258, column: 6, scope: !125)
!321 = !DILocation(line: 259, column: 3, scope: !318)
!322 = !DILocation(line: 261, column: 28, scope: !125)
!323 = !DILocation(line: 261, column: 7, scope: !125)
!324 = !DILocation(line: 261, column: 5, scope: !125)
!325 = !DILocation(line: 262, column: 6, scope: !326)
!326 = distinct !DILexicalBlock(scope: !125, file: !117, line: 262, column: 6)
!327 = !DILocation(line: 262, column: 9, scope: !326)
!328 = !DILocation(line: 262, column: 6, scope: !125)
!329 = !DILocation(line: 263, column: 10, scope: !326)
!330 = !DILocation(line: 263, column: 3, scope: !326)
!331 = !DILocation(line: 265, column: 21, scope: !125)
!332 = !DILocation(line: 265, column: 2, scope: !125)
!333 = !DILocation(line: 265, column: 8, scope: !125)
!334 = !DILocation(line: 265, column: 19, scope: !125)
!335 = !DILocation(line: 266, column: 16, scope: !125)
!336 = !DILocation(line: 266, column: 2, scope: !125)
!337 = !DILocation(line: 266, column: 8, scope: !125)
!338 = !DILocation(line: 266, column: 14, scope: !125)
!339 = !DILocation(line: 267, column: 17, scope: !125)
!340 = !DILocation(line: 267, column: 2, scope: !125)
!341 = !DILocation(line: 267, column: 8, scope: !125)
!342 = !DILocation(line: 267, column: 15, scope: !125)
!343 = !DILocation(line: 268, column: 19, scope: !125)
!344 = !DILocation(line: 268, column: 2, scope: !125)
!345 = !DILocation(line: 268, column: 8, scope: !125)
!346 = !DILocation(line: 268, column: 17, scope: !125)
!347 = !DILocation(line: 269, column: 19, scope: !125)
!348 = !DILocation(line: 269, column: 2, scope: !125)
!349 = !DILocation(line: 269, column: 8, scope: !125)
!350 = !DILocation(line: 269, column: 17, scope: !125)
!351 = !DILocation(line: 270, column: 22, scope: !125)
!352 = !DILocation(line: 270, column: 2, scope: !125)
!353 = !DILocation(line: 272, column: 24, scope: !125)
!354 = !DILocation(line: 272, column: 7, scope: !125)
!355 = !DILocation(line: 272, column: 5, scope: !125)
!356 = !DILocation(line: 273, column: 6, scope: !357)
!357 = distinct !DILexicalBlock(scope: !125, file: !117, line: 273, column: 6)
!358 = !DILocation(line: 273, column: 9, scope: !357)
!359 = !DILocation(line: 273, column: 6, scope: !125)
!360 = !DILocation(line: 274, column: 23, scope: !361)
!361 = distinct !DILexicalBlock(scope: !357, file: !117, line: 273, column: 15)
!362 = !DILocation(line: 274, column: 3, scope: !361)
!363 = !DILocation(line: 275, column: 10, scope: !361)
!364 = !DILocation(line: 275, column: 3, scope: !361)
!365 = !DILocation(line: 277, column: 2, scope: !125)
!366 = !DILocation(line: 278, column: 1, scope: !125)
!367 = distinct !DISubprogram(name: "is_zedc", scope: !33, file: !33, line: 101, type: !368, isLocal: true, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!368 = !DISubroutineType(types: !369)
!369 = !{!36, !30}
!370 = !DILocalVariable(name: "zedc", arg: 1, scope: !367, file: !33, line: 101, type: !30)
!371 = !DILocation(line: 101, column: 41, scope: !367)
!372 = !DILocalVariable(name: "app_id", scope: !367, file: !33, line: 103, type: !53)
!373 = !DILocation(line: 103, column: 11, scope: !367)
!374 = !DILocation(line: 103, column: 37, scope: !367)
!375 = !DILocation(line: 103, column: 43, scope: !367)
!376 = !DILocation(line: 103, column: 20, scope: !367)
!377 = !DILocation(line: 104, column: 10, scope: !367)
!378 = !DILocation(line: 104, column: 17, scope: !367)
!379 = !DILocation(line: 104, column: 31, scope: !367)
!380 = !DILocation(line: 104, column: 2, scope: !367)
!381 = distinct !DISubprogram(name: "__deflateInit_state", scope: !117, file: !117, line: 189, type: !382, isLocal: true, isDefinition: true, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!382 = !DISubroutineType(types: !383)
!383 = !{null, !128}
!384 = !DILocalVariable(name: "strm", arg: 1, scope: !381, file: !117, line: 189, type: !128)
!385 = !DILocation(line: 189, column: 46, scope: !381)
!386 = !DILocation(line: 193, column: 13, scope: !381)
!387 = !DILocation(line: 193, column: 19, scope: !381)
!388 = !DILocation(line: 193, column: 2, scope: !381)
!389 = !DILocation(line: 194, column: 13, scope: !381)
!390 = !DILocation(line: 194, column: 19, scope: !381)
!391 = !DILocation(line: 194, column: 2, scope: !381)
!392 = !DILocation(line: 195, column: 19, scope: !381)
!393 = !DILocation(line: 195, column: 25, scope: !381)
!394 = !DILocation(line: 195, column: 35, scope: !381)
!395 = !DILocation(line: 195, column: 2, scope: !381)
!396 = !DILocation(line: 195, column: 8, scope: !381)
!397 = !DILocation(line: 195, column: 17, scope: !381)
!398 = !DILocation(line: 198, column: 2, scope: !381)
!399 = !DILocation(line: 198, column: 8, scope: !381)
!400 = !DILocation(line: 198, column: 17, scope: !381)
!401 = !DILocation(line: 199, column: 2, scope: !381)
!402 = !DILocation(line: 199, column: 8, scope: !381)
!403 = !DILocation(line: 199, column: 17, scope: !381)
!404 = !DILocation(line: 200, column: 2, scope: !381)
!405 = !DILocation(line: 200, column: 8, scope: !381)
!406 = !DILocation(line: 200, column: 23, scope: !381)
!407 = !DILocation(line: 201, column: 2, scope: !381)
!408 = !DILocation(line: 201, column: 8, scope: !381)
!409 = !DILocation(line: 201, column: 22, scope: !381)
!410 = !DILocation(line: 204, column: 2, scope: !381)
!411 = !DILocation(line: 204, column: 8, scope: !381)
!412 = !DILocation(line: 204, column: 14, scope: !381)
!413 = !DILocation(line: 205, column: 2, scope: !381)
!414 = !DILocation(line: 205, column: 8, scope: !381)
!415 = !DILocation(line: 205, column: 17, scope: !381)
!416 = !DILocation(line: 207, column: 2, scope: !381)
!417 = !DILocation(line: 207, column: 8, scope: !381)
!418 = !DILocation(line: 207, column: 14, scope: !381)
!419 = !DILocation(line: 208, column: 2, scope: !381)
!420 = !DILocation(line: 208, column: 8, scope: !381)
!421 = !DILocation(line: 208, column: 16, scope: !381)
!422 = !DILocation(line: 209, column: 2, scope: !381)
!423 = !DILocation(line: 209, column: 8, scope: !381)
!424 = !DILocation(line: 209, column: 21, scope: !381)
!425 = !DILocation(line: 211, column: 2, scope: !381)
!426 = !DILocation(line: 211, column: 8, scope: !381)
!427 = !DILocation(line: 211, column: 21, scope: !381)
!428 = !DILocation(line: 212, column: 2, scope: !381)
!429 = !DILocation(line: 212, column: 8, scope: !381)
!430 = !DILocation(line: 212, column: 18, scope: !381)
!431 = !DILocation(line: 213, column: 2, scope: !381)
!432 = !DILocation(line: 213, column: 8, scope: !381)
!433 = !DILocation(line: 213, column: 22, scope: !381)
!434 = !DILocation(line: 214, column: 2, scope: !381)
!435 = !DILocation(line: 214, column: 8, scope: !381)
!436 = !DILocation(line: 214, column: 17, scope: !381)
!437 = !DILocation(line: 216, column: 2, scope: !381)
!438 = !DILocation(line: 216, column: 8, scope: !381)
!439 = !DILocation(line: 216, column: 27, scope: !381)
!440 = !DILocation(line: 217, column: 2, scope: !381)
!441 = !DILocation(line: 217, column: 8, scope: !381)
!442 = !DILocation(line: 217, column: 20, scope: !381)
!443 = !DILocation(line: 218, column: 2, scope: !381)
!444 = !DILocation(line: 218, column: 8, scope: !381)
!445 = !DILocation(line: 218, column: 15, scope: !381)
!446 = !DILocation(line: 219, column: 2, scope: !381)
!447 = !DILocation(line: 219, column: 8, scope: !381)
!448 = !DILocation(line: 219, column: 19, scope: !381)
!449 = !DILocation(line: 221, column: 2, scope: !381)
!450 = !DILocation(line: 221, column: 8, scope: !381)
!451 = !DILocation(line: 221, column: 22, scope: !381)
!452 = !DILocation(line: 222, column: 2, scope: !381)
!453 = !DILocation(line: 222, column: 8, scope: !381)
!454 = !DILocation(line: 222, column: 22, scope: !381)
!455 = !DILocation(line: 223, column: 2, scope: !381)
!456 = !DILocation(line: 223, column: 8, scope: !381)
!457 = !DILocation(line: 223, column: 18, scope: !381)
!458 = !DILocation(line: 224, column: 2, scope: !381)
!459 = !DILocation(line: 224, column: 8, scope: !381)
!460 = !DILocation(line: 224, column: 18, scope: !381)
!461 = !DILocation(line: 225, column: 2, scope: !381)
!462 = !DILocation(line: 225, column: 8, scope: !381)
!463 = !DILocation(line: 225, column: 18, scope: !381)
!464 = !DILocation(line: 226, column: 2, scope: !381)
!465 = !DILocation(line: 226, column: 8, scope: !381)
!466 = !DILocation(line: 226, column: 21, scope: !381)
!467 = !DILocation(line: 227, column: 2, scope: !381)
!468 = !DILocation(line: 227, column: 8, scope: !381)
!469 = !DILocation(line: 227, column: 27, scope: !381)
!470 = !DILocation(line: 228, column: 2, scope: !381)
!471 = !DILocation(line: 228, column: 8, scope: !381)
!472 = !DILocation(line: 228, column: 22, scope: !381)
!473 = !DILocation(line: 230, column: 2, scope: !381)
!474 = !DILocation(line: 230, column: 8, scope: !381)
!475 = !DILocation(line: 230, column: 18, scope: !381)
!476 = !DILocation(line: 231, column: 2, scope: !381)
!477 = !DILocation(line: 231, column: 8, scope: !381)
!478 = !DILocation(line: 231, column: 17, scope: !381)
!479 = !DILocation(line: 232, column: 2, scope: !381)
!480 = !DILocation(line: 232, column: 8, scope: !381)
!481 = !DILocation(line: 232, column: 22, scope: !381)
!482 = !DILocation(line: 233, column: 2, scope: !381)
!483 = !DILocation(line: 233, column: 8, scope: !381)
!484 = !DILocation(line: 233, column: 21, scope: !381)
!485 = !DILocation(line: 234, column: 1, scope: !381)
!486 = distinct !DISubprogram(name: "zedc_deflateSetDictionary", scope: !117, file: !117, line: 280, type: !487, isLocal: false, isDefinition: true, scopeLine: 283, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!487 = !DISubroutineType(types: !488)
!488 = !{!36, !128, !140, !58}
!489 = !DILocalVariable(name: "strm", arg: 1, scope: !486, file: !117, line: 280, type: !128)
!490 = !DILocation(line: 280, column: 44, scope: !486)
!491 = !DILocalVariable(name: "dictionary", arg: 2, scope: !486, file: !117, line: 281, type: !140)
!492 = !DILocation(line: 281, column: 25, scope: !486)
!493 = !DILocalVariable(name: "dictLength", arg: 3, scope: !486, file: !117, line: 282, type: !58)
!494 = !DILocation(line: 282, column: 23, scope: !486)
!495 = !DILocation(line: 284, column: 7, scope: !496)
!496 = distinct !DILexicalBlock(scope: !486, file: !117, line: 284, column: 6)
!497 = !DILocation(line: 284, column: 6, scope: !486)
!498 = !DILocation(line: 285, column: 3, scope: !496)
!499 = !DILocation(line: 289, column: 6, scope: !500)
!500 = distinct !DILexicalBlock(scope: !486, file: !117, line: 289, column: 6)
!501 = !DILocation(line: 289, column: 12, scope: !500)
!502 = !DILocation(line: 289, column: 25, scope: !500)
!503 = !DILocation(line: 289, column: 6, scope: !486)
!504 = !DILocation(line: 290, column: 3, scope: !500)
!505 = !DILocation(line: 292, column: 6, scope: !506)
!506 = distinct !DILexicalBlock(scope: !486, file: !117, line: 292, column: 6)
!507 = !DILocation(line: 292, column: 17, scope: !506)
!508 = !DILocation(line: 292, column: 6, scope: !486)
!509 = !DILocation(line: 293, column: 3, scope: !506)
!510 = !DILocation(line: 295, column: 6, scope: !511)
!511 = distinct !DILexicalBlock(scope: !486, file: !117, line: 295, column: 6)
!512 = !DILocation(line: 295, column: 17, scope: !511)
!513 = !DILocation(line: 295, column: 6, scope: !486)
!514 = !DILocation(line: 296, column: 3, scope: !511)
!515 = !DILocation(line: 298, column: 10, scope: !486)
!516 = !DILocation(line: 298, column: 16, scope: !486)
!517 = !DILocation(line: 298, column: 21, scope: !486)
!518 = !DILocation(line: 298, column: 2, scope: !486)
!519 = !DILocation(line: 298, column: 30, scope: !486)
!520 = !DILocation(line: 298, column: 42, scope: !486)
!521 = !DILocation(line: 299, column: 19, scope: !486)
!522 = !DILocation(line: 299, column: 2, scope: !486)
!523 = !DILocation(line: 299, column: 8, scope: !486)
!524 = !DILocation(line: 299, column: 17, scope: !486)
!525 = !DILocation(line: 300, column: 36, scope: !486)
!526 = !DILocation(line: 300, column: 48, scope: !486)
!527 = !DILocation(line: 300, column: 23, scope: !486)
!528 = !DILocation(line: 300, column: 2, scope: !486)
!529 = !DILocation(line: 300, column: 8, scope: !486)
!530 = !DILocation(line: 300, column: 21, scope: !486)
!531 = !DILocation(line: 301, column: 2, scope: !486)
!532 = !DILocation(line: 301, column: 8, scope: !486)
!533 = !DILocation(line: 301, column: 17, scope: !486)
!534 = !DILocation(line: 303, column: 2, scope: !486)
!535 = !DILocation(line: 304, column: 1, scope: !486)
!536 = distinct !DISubprogram(name: "zedc_deflateCopy", scope: !117, file: !117, line: 306, type: !537, isLocal: false, isDefinition: true, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!537 = !DISubroutineType(types: !538)
!538 = !{!36, !128, !128}
!539 = !DILocalVariable(name: "dest", arg: 1, scope: !536, file: !117, line: 306, type: !128)
!540 = !DILocation(line: 306, column: 35, scope: !536)
!541 = !DILocalVariable(name: "source", arg: 2, scope: !536, file: !117, line: 306, type: !128)
!542 = !DILocation(line: 306, column: 54, scope: !536)
!543 = !DILocalVariable(name: "rc", scope: !536, file: !117, line: 308, type: !36)
!544 = !DILocation(line: 308, column: 6, scope: !536)
!545 = !DILocation(line: 310, column: 9, scope: !536)
!546 = !DILocation(line: 310, column: 2, scope: !536)
!547 = !DILocation(line: 310, column: 15, scope: !536)
!548 = !DILocation(line: 311, column: 28, scope: !536)
!549 = !DILocation(line: 311, column: 7, scope: !536)
!550 = !DILocation(line: 311, column: 5, scope: !536)
!551 = !DILocation(line: 312, column: 6, scope: !552)
!552 = distinct !DILexicalBlock(scope: !536, file: !117, line: 312, column: 6)
!553 = !DILocation(line: 312, column: 9, scope: !552)
!554 = !DILocation(line: 312, column: 6, scope: !536)
!555 = !DILocation(line: 313, column: 10, scope: !552)
!556 = !DILocation(line: 313, column: 3, scope: !552)
!557 = !DILocalVariable(name: "p", scope: !536, file: !117, line: 316, type: !58)
!558 = !DILocation(line: 316, column: 15, scope: !536)
!559 = !DILocation(line: 316, column: 19, scope: !536)
!560 = !DILocation(line: 316, column: 25, scope: !536)
!561 = !DILocation(line: 317, column: 9, scope: !536)
!562 = !DILocation(line: 317, column: 15, scope: !536)
!563 = !DILocation(line: 317, column: 20, scope: !536)
!564 = !DILocation(line: 317, column: 2, scope: !536)
!565 = !DILocation(line: 317, column: 26, scope: !536)
!566 = !DILocation(line: 317, column: 34, scope: !536)
!567 = !DILocation(line: 317, column: 39, scope: !536)
!568 = !DILocation(line: 318, column: 25, scope: !536)
!569 = !DILocation(line: 318, column: 9, scope: !536)
!570 = !DILocation(line: 318, column: 15, scope: !536)
!571 = !DILocation(line: 318, column: 20, scope: !536)
!572 = !DILocation(line: 318, column: 2, scope: !536)
!573 = !DILocation(line: 318, column: 47, scope: !536)
!574 = !DILocation(line: 318, column: 29, scope: !536)
!575 = !DILocation(line: 318, column: 37, scope: !536)
!576 = !DILocation(line: 318, column: 42, scope: !536)
!577 = !DILocation(line: 321, column: 2, scope: !536)
!578 = !DILocation(line: 322, column: 1, scope: !536)
!579 = distinct !DISubprogram(name: "zedc_deflateReset", scope: !117, file: !117, line: 324, type: !580, isLocal: false, isDefinition: true, scopeLine: 325, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!580 = !DISubroutineType(types: !581)
!581 = !{!36, !128}
!582 = !DILocalVariable(name: "strm", arg: 1, scope: !579, file: !117, line: 324, type: !128)
!583 = !DILocation(line: 324, column: 36, scope: !579)
!584 = !DILocalVariable(name: "rc", scope: !579, file: !117, line: 326, type: !36)
!585 = !DILocation(line: 326, column: 6, scope: !579)
!586 = !DILocation(line: 328, column: 7, scope: !587)
!587 = distinct !DILexicalBlock(scope: !579, file: !117, line: 328, column: 6)
!588 = !DILocation(line: 328, column: 6, scope: !579)
!589 = !DILocation(line: 329, column: 3, scope: !587)
!590 = !DILocation(line: 331, column: 22, scope: !579)
!591 = !DILocation(line: 331, column: 2, scope: !579)
!592 = !DILocation(line: 333, column: 24, scope: !579)
!593 = !DILocation(line: 333, column: 7, scope: !579)
!594 = !DILocation(line: 333, column: 5, scope: !579)
!595 = !DILocation(line: 334, column: 6, scope: !596)
!596 = distinct !DILexicalBlock(scope: !579, file: !117, line: 334, column: 6)
!597 = !DILocation(line: 334, column: 9, scope: !596)
!598 = !DILocation(line: 334, column: 6, scope: !579)
!599 = !DILocation(line: 335, column: 10, scope: !596)
!600 = !DILocation(line: 335, column: 3, scope: !596)
!601 = !DILocation(line: 337, column: 2, scope: !579)
!602 = !DILocation(line: 338, column: 1, scope: !579)
!603 = distinct !DISubprogram(name: "zedc_deflate", scope: !117, file: !117, line: 598, type: !604, isLocal: false, isDefinition: true, scopeLine: 599, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!604 = !DISubroutineType(types: !605)
!605 = !{!36, !128, !36}
!606 = !DILocalVariable(name: "strm", arg: 1, scope: !603, file: !117, line: 598, type: !128)
!607 = !DILocation(line: 598, column: 31, scope: !603)
!608 = !DILocalVariable(name: "flush", arg: 2, scope: !603, file: !117, line: 598, type: !36)
!609 = !DILocation(line: 598, column: 41, scope: !603)
!610 = !DILocalVariable(name: "rc", scope: !603, file: !117, line: 600, type: !36)
!611 = !DILocation(line: 600, column: 6, scope: !603)
!612 = !DILocalVariable(name: "p", scope: !603, file: !117, line: 600, type: !36)
!613 = !DILocation(line: 600, column: 10, scope: !603)
!614 = !DILocalVariable(name: "asiv", scope: !603, file: !117, line: 601, type: !48)
!615 = !DILocation(line: 601, column: 25, scope: !603)
!616 = !DILocalVariable(name: "asv", scope: !603, file: !117, line: 602, type: !79)
!617 = !DILocation(line: 602, column: 24, scope: !603)
!618 = !DILocalVariable(name: "zedc", scope: !603, file: !117, line: 603, type: !30)
!619 = !DILocation(line: 603, column: 16, scope: !603)
!620 = !DILocalVariable(name: "cmd", scope: !603, file: !117, line: 604, type: !621)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!622 = !DILocation(line: 604, column: 19, scope: !603)
!623 = !DILocalVariable(name: "f", scope: !603, file: !117, line: 605, type: !624)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64, align: 64)
!625 = !DILocation(line: 605, column: 20, scope: !603)
!626 = !DILocalVariable(name: "i", scope: !603, file: !117, line: 607, type: !58)
!627 = !DILocation(line: 607, column: 15, scope: !603)
!628 = !DILocalVariable(name: "tries", scope: !603, file: !117, line: 607, type: !58)
!629 = !DILocation(line: 607, column: 18, scope: !603)
!630 = !DILocalVariable(name: "out_dict", scope: !603, file: !117, line: 608, type: !53)
!631 = !DILocation(line: 608, column: 11, scope: !603)
!632 = !DILocalVariable(name: "out_dict_len", scope: !603, file: !117, line: 609, type: !57)
!633 = !DILocation(line: 609, column: 11, scope: !603)
!634 = !DILocation(line: 611, column: 7, scope: !635)
!635 = distinct !DILexicalBlock(scope: !603, file: !117, line: 611, column: 6)
!636 = !DILocation(line: 611, column: 6, scope: !603)
!637 = !DILocation(line: 612, column: 3, scope: !635)
!638 = !DILocation(line: 614, column: 7, scope: !603)
!639 = !DILocation(line: 614, column: 13, scope: !603)
!640 = !DILocation(line: 614, column: 4, scope: !603)
!641 = !DILocation(line: 615, column: 24, scope: !603)
!642 = !DILocation(line: 615, column: 30, scope: !603)
!643 = !DILocation(line: 615, column: 9, scope: !603)
!644 = !DILocation(line: 615, column: 7, scope: !603)
!645 = !DILocation(line: 616, column: 7, scope: !646)
!646 = distinct !DILexicalBlock(scope: !603, file: !117, line: 616, column: 6)
!647 = !DILocation(line: 616, column: 6, scope: !603)
!648 = !DILocation(line: 617, column: 3, scope: !646)
!649 = !DILocation(line: 619, column: 16, scope: !603)
!650 = !DILocation(line: 619, column: 2, scope: !603)
!651 = !DILocation(line: 619, column: 8, scope: !603)
!652 = !DILocation(line: 619, column: 14, scope: !603)
!653 = !DILocation(line: 620, column: 9, scope: !603)
!654 = !DILocation(line: 620, column: 15, scope: !603)
!655 = !DILocation(line: 620, column: 6, scope: !603)
!656 = !DILocation(line: 621, column: 16, scope: !603)
!657 = !DILocation(line: 621, column: 2, scope: !603)
!658 = !DILocation(line: 624, column: 11, scope: !659)
!659 = distinct !DILexicalBlock(scope: !603, file: !117, line: 624, column: 6)
!660 = !DILocation(line: 624, column: 17, scope: !659)
!661 = !DILocation(line: 624, column: 8, scope: !659)
!662 = !DILocation(line: 624, column: 6, scope: !603)
!663 = !DILocation(line: 625, column: 26, scope: !664)
!664 = distinct !DILexicalBlock(scope: !665, file: !117, line: 625, column: 7)
!665 = distinct !DILexicalBlock(scope: !659, file: !117, line: 624, column: 31)
!666 = !DILocation(line: 625, column: 7, scope: !664)
!667 = !DILocation(line: 625, column: 7, scope: !665)
!668 = !DILocation(line: 626, column: 4, scope: !664)
!669 = !DILocation(line: 627, column: 2, scope: !665)
!670 = !DILocation(line: 630, column: 25, scope: !603)
!671 = !DILocation(line: 630, column: 2, scope: !603)
!672 = !DILocation(line: 631, column: 25, scope: !673)
!673 = distinct !DILexicalBlock(scope: !603, file: !117, line: 631, column: 6)
!674 = !DILocation(line: 631, column: 7, scope: !673)
!675 = !DILocation(line: 631, column: 6, scope: !603)
!676 = !DILocation(line: 632, column: 3, scope: !673)
!677 = !DILocation(line: 635, column: 7, scope: !678)
!678 = distinct !DILexicalBlock(scope: !603, file: !117, line: 635, column: 6)
!679 = !DILocation(line: 635, column: 13, scope: !678)
!680 = !DILocation(line: 635, column: 19, scope: !678)
!681 = !DILocation(line: 635, column: 25, scope: !678)
!682 = !DILocation(line: 635, column: 46, scope: !683)
!683 = !DILexicalBlockFile(scope: !678, file: !117, discriminator: 1)
!684 = !DILocation(line: 635, column: 29, scope: !683)
!685 = !DILocation(line: 635, column: 6, scope: !683)
!686 = !DILocation(line: 636, column: 21, scope: !687)
!687 = distinct !DILexicalBlock(scope: !678, file: !117, line: 635, column: 53)
!688 = !DILocation(line: 636, column: 3, scope: !687)
!689 = !DILocation(line: 637, column: 23, scope: !687)
!690 = !DILocation(line: 637, column: 3, scope: !687)
!691 = !DILocation(line: 638, column: 26, scope: !687)
!692 = !DILocation(line: 638, column: 3, scope: !687)
!693 = !DILocation(line: 639, column: 2, scope: !687)
!694 = !DILocation(line: 642, column: 7, scope: !695)
!695 = distinct !DILexicalBlock(scope: !603, file: !117, line: 642, column: 6)
!696 = !DILocation(line: 642, column: 13, scope: !695)
!697 = !DILocation(line: 642, column: 6, scope: !695)
!698 = !DILocation(line: 642, column: 24, scope: !695)
!699 = !DILocation(line: 642, column: 28, scope: !700)
!700 = !DILexicalBlockFile(scope: !695, file: !117, discriminator: 1)
!701 = !DILocation(line: 642, column: 34, scope: !700)
!702 = !DILocation(line: 642, column: 27, scope: !700)
!703 = !DILocation(line: 642, column: 49, scope: !700)
!704 = !DILocation(line: 642, column: 63, scope: !705)
!705 = !DILexicalBlockFile(scope: !695, file: !117, discriminator: 2)
!706 = !DILocation(line: 642, column: 52, scope: !705)
!707 = !DILocation(line: 642, column: 6, scope: !705)
!708 = !DILocation(line: 643, column: 3, scope: !695)
!709 = !DILocation(line: 646, column: 25, scope: !710)
!710 = distinct !DILexicalBlock(scope: !603, file: !117, line: 646, column: 6)
!711 = !DILocation(line: 646, column: 7, scope: !710)
!712 = !DILocation(line: 646, column: 6, scope: !603)
!713 = !DILocation(line: 647, column: 3, scope: !710)
!714 = !DILocation(line: 650, column: 24, scope: !715)
!715 = distinct !DILexicalBlock(scope: !603, file: !117, line: 650, column: 6)
!716 = !DILocation(line: 650, column: 7, scope: !715)
!717 = !DILocation(line: 650, column: 6, scope: !603)
!718 = !DILocation(line: 651, column: 3, scope: !715)
!719 = !DILocation(line: 654, column: 2, scope: !603)
!720 = !DILocation(line: 654, column: 7, scope: !603)
!721 = !DILocation(line: 654, column: 11, scope: !603)
!722 = !DILocation(line: 655, column: 2, scope: !603)
!723 = !DILocation(line: 655, column: 7, scope: !603)
!724 = !DILocation(line: 655, column: 14, scope: !603)
!725 = !DILocation(line: 656, column: 2, scope: !603)
!726 = !DILocation(line: 656, column: 7, scope: !603)
!727 = !DILocation(line: 656, column: 15, scope: !603)
!728 = !DILocation(line: 658, column: 6, scope: !729)
!729 = distinct !DILexicalBlock(scope: !603, file: !117, line: 658, column: 6)
!730 = !DILocation(line: 658, column: 12, scope: !729)
!731 = !DILocation(line: 658, column: 18, scope: !729)
!732 = !DILocation(line: 658, column: 6, scope: !603)
!733 = !DILocation(line: 659, column: 3, scope: !729)
!734 = !DILocation(line: 659, column: 8, scope: !729)
!735 = !DILocation(line: 659, column: 16, scope: !729)
!736 = !DILocation(line: 662, column: 28, scope: !737)
!737 = distinct !DILexicalBlock(scope: !603, file: !117, line: 662, column: 6)
!738 = !DILocation(line: 662, column: 6, scope: !737)
!739 = !DILocation(line: 662, column: 34, scope: !737)
!740 = !DILocation(line: 662, column: 38, scope: !741)
!741 = !DILexicalBlockFile(scope: !737, file: !117, discriminator: 1)
!742 = !DILocation(line: 662, column: 44, scope: !741)
!743 = !DILocation(line: 662, column: 53, scope: !741)
!744 = !DILocation(line: 662, column: 6, scope: !741)
!745 = !DILocation(line: 663, column: 3, scope: !737)
!746 = !DILocation(line: 663, column: 8, scope: !737)
!747 = !DILocation(line: 663, column: 16, scope: !737)
!748 = !DILocation(line: 665, column: 2, scope: !603)
!749 = !DILocation(line: 665, column: 7, scope: !603)
!750 = !DILocation(line: 665, column: 19, scope: !603)
!751 = !DILocation(line: 666, column: 2, scope: !603)
!752 = !DILocation(line: 666, column: 7, scope: !603)
!753 = !DILocation(line: 666, column: 18, scope: !603)
!754 = !DILocation(line: 667, column: 2, scope: !603)
!755 = !DILocation(line: 667, column: 7, scope: !603)
!756 = !DILocation(line: 667, column: 11, scope: !603)
!757 = !DILocation(line: 670, column: 7, scope: !758)
!758 = distinct !DILexicalBlock(scope: !603, file: !117, line: 670, column: 6)
!759 = !DILocation(line: 670, column: 13, scope: !758)
!760 = !DILocation(line: 670, column: 25, scope: !758)
!761 = !DILocation(line: 670, column: 47, scope: !758)
!762 = !DILocation(line: 670, column: 6, scope: !603)
!763 = !DILocation(line: 672, column: 3, scope: !758)
!764 = !DILocation(line: 672, column: 8, scope: !758)
!765 = !DILocation(line: 672, column: 12, scope: !758)
!766 = !DILocation(line: 674, column: 7, scope: !758)
!767 = !DILocation(line: 674, column: 12, scope: !758)
!768 = !DILocation(line: 674, column: 16, scope: !758)
!769 = !DILocation(line: 678, column: 7, scope: !770)
!770 = distinct !DILexicalBlock(scope: !603, file: !117, line: 678, column: 6)
!771 = !DILocation(line: 678, column: 13, scope: !770)
!772 = !DILocation(line: 678, column: 25, scope: !770)
!773 = !DILocation(line: 678, column: 47, scope: !770)
!774 = !DILocation(line: 678, column: 6, scope: !603)
!775 = !DILocation(line: 680, column: 3, scope: !770)
!776 = !DILocation(line: 680, column: 8, scope: !770)
!777 = !DILocation(line: 680, column: 12, scope: !770)
!778 = !DILocation(line: 682, column: 7, scope: !770)
!779 = !DILocation(line: 682, column: 12, scope: !770)
!780 = !DILocation(line: 682, column: 16, scope: !770)
!781 = !DILocation(line: 686, column: 7, scope: !782)
!782 = distinct !DILexicalBlock(scope: !603, file: !117, line: 686, column: 6)
!783 = !DILocation(line: 686, column: 13, scope: !782)
!784 = !DILocation(line: 686, column: 25, scope: !782)
!785 = !DILocation(line: 686, column: 47, scope: !782)
!786 = !DILocation(line: 686, column: 6, scope: !603)
!787 = !DILocation(line: 688, column: 3, scope: !788)
!788 = distinct !DILexicalBlock(scope: !782, file: !117, line: 687, column: 26)
!789 = !DILocation(line: 688, column: 8, scope: !788)
!790 = !DILocation(line: 688, column: 12, scope: !788)
!791 = !DILocation(line: 692, column: 2, scope: !788)
!792 = !DILocation(line: 693, column: 3, scope: !793)
!793 = distinct !DILexicalBlock(scope: !782, file: !117, line: 692, column: 9)
!794 = !DILocation(line: 693, column: 8, scope: !793)
!795 = !DILocation(line: 693, column: 12, scope: !793)
!796 = !DILocation(line: 700, column: 35, scope: !603)
!797 = !DILocation(line: 700, column: 40, scope: !603)
!798 = !DILocation(line: 700, column: 9, scope: !603)
!799 = !DILocation(line: 700, column: 7, scope: !603)
!800 = !DILocation(line: 701, column: 33, scope: !603)
!801 = !DILocation(line: 701, column: 38, scope: !603)
!802 = !DILocation(line: 701, column: 8, scope: !603)
!803 = !DILocation(line: 701, column: 6, scope: !603)
!804 = !DILocation(line: 702, column: 37, scope: !603)
!805 = !DILocation(line: 702, column: 43, scope: !603)
!806 = !DILocation(line: 702, column: 22, scope: !603)
!807 = !DILocation(line: 702, column: 68, scope: !603)
!808 = !DILocation(line: 702, column: 2, scope: !603)
!809 = !DILocation(line: 702, column: 8, scope: !603)
!810 = !DILocation(line: 702, column: 16, scope: !603)
!811 = !DILocation(line: 703, column: 22, scope: !603)
!812 = !DILocation(line: 703, column: 28, scope: !603)
!813 = !DILocation(line: 703, column: 59, scope: !603)
!814 = !DILocation(line: 703, column: 2, scope: !603)
!815 = !DILocation(line: 703, column: 8, scope: !603)
!816 = !DILocation(line: 703, column: 20, scope: !603)
!817 = !DILocation(line: 704, column: 37, scope: !603)
!818 = !DILocation(line: 704, column: 43, scope: !603)
!819 = !DILocation(line: 704, column: 22, scope: !603)
!820 = !DILocation(line: 704, column: 68, scope: !603)
!821 = !DILocation(line: 704, column: 2, scope: !603)
!822 = !DILocation(line: 704, column: 8, scope: !603)
!823 = !DILocation(line: 704, column: 17, scope: !603)
!824 = !DILocation(line: 705, column: 22, scope: !603)
!825 = !DILocation(line: 705, column: 28, scope: !603)
!826 = !DILocation(line: 705, column: 59, scope: !603)
!827 = !DILocation(line: 705, column: 2, scope: !603)
!828 = !DILocation(line: 705, column: 8, scope: !603)
!829 = !DILocation(line: 705, column: 21, scope: !603)
!830 = !DILocation(line: 708, column: 6, scope: !603)
!831 = !DILocation(line: 708, column: 12, scope: !603)
!832 = !DILocation(line: 708, column: 4, scope: !603)
!833 = !DILocation(line: 709, column: 49, scope: !603)
!834 = !DILocation(line: 709, column: 33, scope: !603)
!835 = !DILocation(line: 709, column: 39, scope: !603)
!836 = !DILocation(line: 709, column: 44, scope: !603)
!837 = !DILocation(line: 709, column: 18, scope: !603)
!838 = !DILocation(line: 709, column: 54, scope: !603)
!839 = !DILocation(line: 709, column: 60, scope: !603)
!840 = !DILocation(line: 709, column: 52, scope: !603)
!841 = !DILocation(line: 709, column: 64, scope: !603)
!842 = !DILocation(line: 709, column: 2, scope: !603)
!843 = !DILocation(line: 709, column: 8, scope: !603)
!844 = !DILocation(line: 709, column: 16, scope: !603)
!845 = !DILocation(line: 711, column: 49, scope: !603)
!846 = !DILocation(line: 711, column: 51, scope: !603)
!847 = !DILocation(line: 711, column: 33, scope: !603)
!848 = !DILocation(line: 711, column: 39, scope: !603)
!849 = !DILocation(line: 711, column: 44, scope: !603)
!850 = !DILocation(line: 711, column: 18, scope: !603)
!851 = !DILocation(line: 711, column: 64, scope: !603)
!852 = !DILocation(line: 711, column: 2, scope: !603)
!853 = !DILocation(line: 711, column: 8, scope: !603)
!854 = !DILocation(line: 711, column: 17, scope: !603)
!855 = !DILocation(line: 712, column: 2, scope: !603)
!856 = !DILocation(line: 712, column: 8, scope: !603)
!857 = !DILocation(line: 712, column: 17, scope: !603)
!858 = !DILocation(line: 714, column: 21, scope: !603)
!859 = !DILocation(line: 714, column: 27, scope: !603)
!860 = !DILocation(line: 714, column: 68, scope: !603)
!861 = !DILocation(line: 714, column: 58, scope: !603)
!862 = !DILocation(line: 714, column: 2, scope: !603)
!863 = !DILocation(line: 714, column: 8, scope: !603)
!864 = !DILocation(line: 714, column: 20, scope: !603)
!865 = !DILocation(line: 715, column: 2, scope: !603)
!866 = !DILocation(line: 715, column: 8, scope: !603)
!867 = !DILocation(line: 715, column: 21, scope: !603)
!868 = !DILocation(line: 717, column: 19, scope: !603)
!869 = !DILocation(line: 717, column: 25, scope: !603)
!870 = !DILocation(line: 717, column: 2, scope: !603)
!871 = !DILocation(line: 717, column: 8, scope: !603)
!872 = !DILocation(line: 717, column: 17, scope: !603)
!873 = !DILocation(line: 718, column: 19, scope: !603)
!874 = !DILocation(line: 718, column: 25, scope: !603)
!875 = !DILocation(line: 718, column: 2, scope: !603)
!876 = !DILocation(line: 718, column: 8, scope: !603)
!877 = !DILocation(line: 718, column: 17, scope: !603)
!878 = !DILocation(line: 719, column: 18, scope: !603)
!879 = !DILocation(line: 719, column: 24, scope: !603)
!880 = !DILocation(line: 719, column: 55, scope: !603)
!881 = !DILocation(line: 719, column: 2, scope: !603)
!882 = !DILocation(line: 719, column: 8, scope: !603)
!883 = !DILocation(line: 719, column: 17, scope: !603)
!884 = !DILocation(line: 720, column: 20, scope: !603)
!885 = !DILocation(line: 720, column: 26, scope: !603)
!886 = !DILocation(line: 720, column: 57, scope: !603)
!887 = !DILocation(line: 720, column: 2, scope: !603)
!888 = !DILocation(line: 720, column: 8, scope: !603)
!889 = !DILocation(line: 720, column: 19, scope: !603)
!890 = !DILocation(line: 734, column: 2, scope: !603)
!891 = !DILocation(line: 734, column: 7, scope: !603)
!892 = !DILocation(line: 734, column: 15, scope: !603)
!893 = !DILocation(line: 735, column: 8, scope: !603)
!894 = !DILocation(line: 737, column: 7, scope: !895)
!895 = distinct !DILexicalBlock(scope: !603, file: !117, line: 737, column: 6)
!896 = !DILocation(line: 737, column: 13, scope: !895)
!897 = !DILocation(line: 737, column: 19, scope: !895)
!898 = !DILocation(line: 737, column: 31, scope: !895)
!899 = !DILocation(line: 738, column: 9, scope: !895)
!900 = !DILocation(line: 738, column: 15, scope: !895)
!901 = !DILocation(line: 738, column: 21, scope: !895)
!902 = !DILocation(line: 738, column: 25, scope: !903)
!903 = !DILexicalBlockFile(scope: !895, file: !117, discriminator: 1)
!904 = !DILocation(line: 738, column: 31, scope: !903)
!905 = !DILocation(line: 738, column: 38, scope: !903)
!906 = !DILocation(line: 739, column: 8, scope: !895)
!907 = !DILocation(line: 739, column: 14, scope: !895)
!908 = !DILocation(line: 739, column: 27, scope: !895)
!909 = !DILocation(line: 739, column: 33, scope: !895)
!910 = !DILocation(line: 739, column: 24, scope: !895)
!911 = !DILocation(line: 737, column: 6, scope: !912)
!912 = !DILexicalBlockFile(scope: !603, file: !117, discriminator: 1)
!913 = !DILocation(line: 741, column: 14, scope: !914)
!914 = distinct !DILexicalBlock(scope: !895, file: !117, line: 739, column: 45)
!915 = !DILocation(line: 741, column: 20, scope: !914)
!916 = !DILocation(line: 741, column: 12, scope: !914)
!917 = !DILocation(line: 742, column: 18, scope: !914)
!918 = !DILocation(line: 742, column: 24, scope: !914)
!919 = !DILocation(line: 742, column: 16, scope: !914)
!920 = !DILocation(line: 744, column: 3, scope: !914)
!921 = !DILocation(line: 744, column: 8, scope: !914)
!922 = !DILocation(line: 744, column: 16, scope: !914)
!923 = !DILocation(line: 745, column: 3, scope: !914)
!924 = !DILocation(line: 745, column: 9, scope: !914)
!925 = !DILocation(line: 745, column: 18, scope: !914)
!926 = !DILocation(line: 746, column: 3, scope: !914)
!927 = !DILocation(line: 746, column: 9, scope: !914)
!928 = !DILocation(line: 746, column: 22, scope: !914)
!929 = !DILocation(line: 747, column: 9, scope: !914)
!930 = !DILocation(line: 748, column: 2, scope: !914)
!931 = !DILocation(line: 750, column: 9, scope: !932)
!932 = distinct !DILexicalBlock(scope: !603, file: !117, line: 750, column: 2)
!933 = !DILocation(line: 750, column: 7, scope: !932)
!934 = !DILocation(line: 750, column: 14, scope: !935)
!935 = !DILexicalBlockFile(scope: !936, file: !117, discriminator: 1)
!936 = distinct !DILexicalBlock(scope: !932, file: !117, line: 750, column: 2)
!937 = !DILocation(line: 750, column: 18, scope: !935)
!938 = !DILocation(line: 750, column: 16, scope: !935)
!939 = !DILocation(line: 750, column: 2, scope: !935)
!940 = !DILocation(line: 751, column: 24, scope: !941)
!941 = distinct !DILexicalBlock(scope: !936, file: !117, line: 750, column: 30)
!942 = !DILocation(line: 751, column: 30, scope: !941)
!943 = !DILocation(line: 751, column: 3, scope: !941)
!944 = !DILocation(line: 752, column: 29, scope: !941)
!945 = !DILocation(line: 752, column: 35, scope: !941)
!946 = !DILocation(line: 752, column: 8, scope: !941)
!947 = !DILocation(line: 752, column: 6, scope: !941)
!948 = !DILocation(line: 753, column: 23, scope: !941)
!949 = !DILocation(line: 753, column: 29, scope: !941)
!950 = !DILocation(line: 753, column: 3, scope: !941)
!951 = !DILocation(line: 755, column: 16, scope: !941)
!952 = !DILocation(line: 755, column: 21, scope: !941)
!953 = !DILocation(line: 755, column: 3, scope: !941)
!954 = !DILocation(line: 755, column: 9, scope: !941)
!955 = !DILocation(line: 755, column: 14, scope: !941)
!956 = !DILocation(line: 756, column: 16, scope: !941)
!957 = !DILocation(line: 756, column: 21, scope: !941)
!958 = !DILocation(line: 756, column: 3, scope: !941)
!959 = !DILocation(line: 756, column: 9, scope: !941)
!960 = !DILocation(line: 756, column: 14, scope: !941)
!961 = !DILocation(line: 757, column: 20, scope: !941)
!962 = !DILocation(line: 757, column: 25, scope: !941)
!963 = !DILocation(line: 757, column: 3, scope: !941)
!964 = !DILocation(line: 757, column: 9, scope: !941)
!965 = !DILocation(line: 757, column: 18, scope: !941)
!966 = !DILocation(line: 760, column: 8, scope: !967)
!967 = distinct !DILexicalBlock(scope: !941, file: !117, line: 760, column: 7)
!968 = !DILocation(line: 760, column: 11, scope: !967)
!969 = !DILocation(line: 760, column: 16, scope: !967)
!970 = !DILocation(line: 760, column: 20, scope: !971)
!971 = !DILexicalBlockFile(scope: !967, file: !117, discriminator: 1)
!972 = !DILocation(line: 760, column: 25, scope: !971)
!973 = !DILocation(line: 760, column: 30, scope: !971)
!974 = !DILocation(line: 760, column: 7, scope: !971)
!975 = !DILocalVariable(name: "cmd", scope: !976, file: !117, line: 761, type: !621)
!976 = distinct !DILexicalBlock(scope: !967, file: !117, line: 760, column: 41)
!977 = !DILocation(line: 761, column: 21, scope: !976)
!978 = !DILocation(line: 761, column: 28, scope: !976)
!979 = !DILocation(line: 761, column: 34, scope: !976)
!980 = !DILocation(line: 763, column: 4, scope: !976)
!981 = distinct !{!981, !980}
!982 = !DILocation(line: 763, column: 13, scope: !983)
!983 = !DILexicalBlockFile(scope: !984, file: !117, discriminator: 1)
!984 = distinct !DILexicalBlock(scope: !985, file: !117, line: 763, column: 13)
!985 = distinct !DILexicalBlock(scope: !976, file: !117, line: 763, column: 7)
!986 = !DILocation(line: 763, column: 31, scope: !987)
!987 = !DILexicalBlockFile(scope: !984, file: !117, discriminator: 2)
!988 = !DILocation(line: 763, column: 162, scope: !987)
!989 = !DILocation(line: 763, column: 172, scope: !990)
!990 = !DILexicalBlockFile(scope: !987, file: !117, discriminator: 4)
!991 = !DILocation(line: 763, column: 6, scope: !987)
!992 = !DILocation(line: 763, column: 10, scope: !987)
!993 = !DILocation(line: 763, column: 16, scope: !987)
!994 = !DILocation(line: 763, column: 25, scope: !987)
!995 = !DILocation(line: 763, column: 30, scope: !987)
!996 = !DILocation(line: 763, column: 36, scope: !987)
!997 = !DILocation(line: 763, column: 41, scope: !987)
!998 = !DILocation(line: 763, column: 47, scope: !987)
!999 = !DILocation(line: 763, column: 52, scope: !987)
!1000 = !DILocation(line: 763, column: 62, scope: !987)
!1001 = !DILocation(line: 763, column: 67, scope: !987)
!1002 = !DILocation(line: 763, column: 72, scope: !987)
!1003 = !DILocation(line: 763, column: 23, scope: !1004)
!1004 = !DILexicalBlockFile(scope: !987, file: !117, discriminator: 5)
!1005 = !DILocation(line: 763, column: 23, scope: !987)
!1006 = !DILocation(line: 763, column: 96, scope: !1007)
!1007 = !DILexicalBlockFile(scope: !985, file: !117, discriminator: 3)
!1008 = !DILocation(line: 770, column: 4, scope: !976)
!1009 = !DILocation(line: 774, column: 8, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !941, file: !117, line: 774, column: 7)
!1011 = !DILocation(line: 774, column: 14, scope: !1010)
!1012 = !DILocation(line: 774, column: 26, scope: !1010)
!1013 = !DILocation(line: 774, column: 31, scope: !1010)
!1014 = !DILocation(line: 774, column: 63, scope: !1010)
!1015 = !DILocation(line: 774, column: 23, scope: !1010)
!1016 = !DILocation(line: 774, column: 61, scope: !1010)
!1017 = !DILocation(line: 775, column: 8, scope: !1010)
!1018 = !DILocation(line: 775, column: 14, scope: !1010)
!1019 = !DILocation(line: 775, column: 26, scope: !1010)
!1020 = !DILocation(line: 775, column: 31, scope: !1010)
!1021 = !DILocation(line: 775, column: 63, scope: !1010)
!1022 = !DILocation(line: 775, column: 24, scope: !1010)
!1023 = !DILocation(line: 774, column: 7, scope: !1024)
!1024 = !DILexicalBlockFile(scope: !941, file: !117, discriminator: 1)
!1025 = !DILocation(line: 776, column: 4, scope: !1010)
!1026 = !DILocation(line: 779, column: 8, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !941, file: !117, line: 779, column: 7)
!1028 = !DILocation(line: 779, column: 14, scope: !1027)
!1029 = !DILocation(line: 779, column: 20, scope: !1027)
!1030 = !DILocation(line: 779, column: 32, scope: !1027)
!1031 = !DILocation(line: 780, column: 10, scope: !1027)
!1032 = !DILocation(line: 780, column: 16, scope: !1027)
!1033 = !DILocation(line: 780, column: 22, scope: !1027)
!1034 = !DILocation(line: 780, column: 26, scope: !1035)
!1035 = !DILexicalBlockFile(scope: !1027, file: !117, discriminator: 1)
!1036 = !DILocation(line: 780, column: 32, scope: !1035)
!1037 = !DILocation(line: 780, column: 39, scope: !1035)
!1038 = !DILocation(line: 781, column: 9, scope: !1027)
!1039 = !DILocation(line: 781, column: 15, scope: !1027)
!1040 = !DILocation(line: 781, column: 28, scope: !1027)
!1041 = !DILocation(line: 781, column: 34, scope: !1027)
!1042 = !DILocation(line: 781, column: 25, scope: !1027)
!1043 = !DILocation(line: 779, column: 7, scope: !1024)
!1044 = !DILocation(line: 782, column: 4, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1027, file: !117, line: 781, column: 46)
!1046 = !DILocation(line: 782, column: 9, scope: !1045)
!1047 = !DILocation(line: 782, column: 17, scope: !1045)
!1048 = !DILocation(line: 783, column: 21, scope: !1045)
!1049 = !DILocation(line: 783, column: 4, scope: !1045)
!1050 = !DILocation(line: 783, column: 10, scope: !1045)
!1051 = !DILocation(line: 783, column: 19, scope: !1045)
!1052 = !DILocation(line: 784, column: 25, scope: !1045)
!1053 = !DILocation(line: 784, column: 4, scope: !1045)
!1054 = !DILocation(line: 784, column: 10, scope: !1045)
!1055 = !DILocation(line: 784, column: 23, scope: !1045)
!1056 = !DILocation(line: 786, column: 4, scope: !1045)
!1057 = distinct !{!1057, !1056}
!1058 = !DILocation(line: 786, column: 13, scope: !1059)
!1059 = !DILexicalBlockFile(scope: !1060, file: !117, discriminator: 1)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !117, line: 786, column: 13)
!1061 = distinct !DILexicalBlock(scope: !1045, file: !117, line: 786, column: 7)
!1062 = !DILocation(line: 786, column: 31, scope: !1063)
!1063 = !DILexicalBlockFile(scope: !1060, file: !117, discriminator: 2)
!1064 = !DILocation(line: 786, column: 156, scope: !1063)
!1065 = !DILocation(line: 786, column: 166, scope: !1066)
!1066 = !DILexicalBlockFile(scope: !1063, file: !117, discriminator: 4)
!1067 = !DILocation(line: 786, column: 16, scope: !1063)
!1068 = !DILocation(line: 786, column: 21, scope: !1063)
!1069 = !DILocation(line: 786, column: 27, scope: !1063)
!1070 = !DILocation(line: 786, column: 32, scope: !1063)
!1071 = !DILocation(line: 786, column: 38, scope: !1063)
!1072 = !DILocation(line: 786, column: 43, scope: !1063)
!1073 = !DILocation(line: 786, column: 23, scope: !1074)
!1074 = !DILexicalBlockFile(scope: !1063, file: !117, discriminator: 5)
!1075 = !DILocation(line: 786, column: 23, scope: !1063)
!1076 = !DILocation(line: 786, column: 54, scope: !1077)
!1077 = !DILexicalBlockFile(scope: !1061, file: !117, discriminator: 3)
!1078 = !DILocation(line: 790, column: 3, scope: !1045)
!1079 = !DILocation(line: 791, column: 2, scope: !941)
!1080 = !DILocation(line: 750, column: 26, scope: !1081)
!1081 = !DILexicalBlockFile(scope: !936, file: !117, discriminator: 2)
!1082 = !DILocation(line: 750, column: 2, scope: !1081)
!1083 = distinct !{!1083, !1084}
!1084 = !DILocation(line: 750, column: 2, scope: !603)
!1085 = !DILocation(line: 794, column: 15, scope: !603)
!1086 = !DILocation(line: 794, column: 20, scope: !603)
!1087 = !DILocation(line: 794, column: 52, scope: !603)
!1088 = !DILocation(line: 794, column: 2, scope: !603)
!1089 = !DILocation(line: 794, column: 8, scope: !603)
!1090 = !DILocation(line: 794, column: 14, scope: !603)
!1091 = !DILocation(line: 795, column: 17, scope: !603)
!1092 = !DILocation(line: 795, column: 22, scope: !603)
!1093 = !DILocation(line: 795, column: 54, scope: !603)
!1094 = !DILocation(line: 795, column: 2, scope: !603)
!1095 = !DILocation(line: 795, column: 8, scope: !603)
!1096 = !DILocation(line: 795, column: 16, scope: !603)
!1097 = !DILocation(line: 796, column: 18, scope: !603)
!1098 = !DILocation(line: 796, column: 23, scope: !603)
!1099 = !DILocation(line: 796, column: 49, scope: !603)
!1100 = !DILocation(line: 796, column: 2, scope: !603)
!1101 = !DILocation(line: 796, column: 8, scope: !603)
!1102 = !DILocation(line: 796, column: 17, scope: !603)
!1103 = !DILocation(line: 797, column: 24, scope: !603)
!1104 = !DILocation(line: 797, column: 29, scope: !603)
!1105 = !DILocation(line: 797, column: 2, scope: !603)
!1106 = !DILocation(line: 797, column: 8, scope: !603)
!1107 = !DILocation(line: 797, column: 22, scope: !603)
!1108 = !DILocation(line: 799, column: 6, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !603, file: !117, line: 799, column: 6)
!1110 = !DILocation(line: 799, column: 12, scope: !1109)
!1111 = !DILocation(line: 799, column: 26, scope: !1109)
!1112 = !DILocation(line: 799, column: 6, scope: !603)
!1113 = !DILocation(line: 800, column: 3, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1109, file: !117, line: 799, column: 33)
!1115 = distinct !{!1115, !1113}
!1116 = !DILocation(line: 800, column: 12, scope: !1117)
!1117 = !DILexicalBlockFile(scope: !1118, file: !117, discriminator: 1)
!1118 = distinct !DILexicalBlock(scope: !1119, file: !117, line: 800, column: 12)
!1119 = distinct !DILexicalBlock(scope: !1114, file: !117, line: 800, column: 6)
!1120 = !DILocation(line: 800, column: 30, scope: !1121)
!1121 = !DILexicalBlockFile(scope: !1118, file: !117, discriminator: 2)
!1122 = !DILocation(line: 800, column: 99, scope: !1121)
!1123 = !DILocation(line: 800, column: 109, scope: !1124)
!1124 = !DILexicalBlockFile(scope: !1121, file: !117, discriminator: 4)
!1125 = !DILocation(line: 800, column: 137, scope: !1121)
!1126 = !DILocation(line: 800, column: 143, scope: !1121)
!1127 = !DILocation(line: 800, column: 22, scope: !1128)
!1128 = !DILexicalBlockFile(scope: !1121, file: !117, discriminator: 5)
!1129 = !DILocation(line: 800, column: 22, scope: !1121)
!1130 = !DILocation(line: 800, column: 159, scope: !1131)
!1131 = !DILexicalBlockFile(scope: !1119, file: !117, discriminator: 3)
!1132 = !DILocation(line: 801, column: 3, scope: !1114)
!1133 = !DILocation(line: 805, column: 31, scope: !603)
!1134 = !DILocation(line: 805, column: 37, scope: !603)
!1135 = !DILocation(line: 805, column: 7, scope: !603)
!1136 = !DILocation(line: 805, column: 5, scope: !603)
!1137 = !DILocation(line: 806, column: 6, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !603, file: !117, line: 806, column: 6)
!1139 = !DILocation(line: 806, column: 9, scope: !1138)
!1140 = !DILocation(line: 806, column: 6, scope: !603)
!1141 = !DILocation(line: 807, column: 3, scope: !1138)
!1142 = !DILocation(line: 810, column: 7, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !603, file: !117, line: 810, column: 6)
!1144 = !DILocation(line: 810, column: 13, scope: !1143)
!1145 = !DILocation(line: 810, column: 19, scope: !1143)
!1146 = !DILocation(line: 810, column: 25, scope: !1143)
!1147 = !DILocation(line: 810, column: 46, scope: !1148)
!1148 = !DILexicalBlockFile(scope: !1143, file: !117, discriminator: 1)
!1149 = !DILocation(line: 810, column: 29, scope: !1148)
!1150 = !DILocation(line: 810, column: 6, scope: !1148)
!1151 = !DILocation(line: 811, column: 21, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1143, file: !117, line: 810, column: 53)
!1153 = !DILocation(line: 811, column: 3, scope: !1152)
!1154 = !DILocation(line: 812, column: 23, scope: !1152)
!1155 = !DILocation(line: 812, column: 3, scope: !1152)
!1156 = !DILocation(line: 813, column: 26, scope: !1152)
!1157 = !DILocation(line: 813, column: 3, scope: !1152)
!1158 = !DILocation(line: 814, column: 2, scope: !1152)
!1159 = !DILocation(line: 818, column: 7, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !603, file: !117, line: 818, column: 6)
!1161 = !DILocation(line: 818, column: 13, scope: !1160)
!1162 = !DILocation(line: 818, column: 19, scope: !1160)
!1163 = !DILocation(line: 818, column: 25, scope: !1160)
!1164 = !DILocation(line: 819, column: 4, scope: !1160)
!1165 = !DILocation(line: 819, column: 10, scope: !1160)
!1166 = !DILocation(line: 819, column: 16, scope: !1160)
!1167 = !DILocation(line: 818, column: 6, scope: !912)
!1168 = !DILocation(line: 820, column: 22, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1160, file: !117, line: 819, column: 23)
!1170 = !DILocation(line: 820, column: 3, scope: !1169)
!1171 = !DILocation(line: 821, column: 26, scope: !1169)
!1172 = !DILocation(line: 821, column: 3, scope: !1169)
!1173 = !DILocation(line: 822, column: 2, scope: !1169)
!1174 = !DILocation(line: 825, column: 6, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !603, file: !117, line: 825, column: 6)
!1176 = !DILocation(line: 825, column: 12, scope: !1175)
!1177 = !DILocation(line: 825, column: 18, scope: !1175)
!1178 = !DILocation(line: 825, column: 6, scope: !603)
!1179 = !DILocation(line: 826, column: 22, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1175, file: !117, line: 825, column: 24)
!1181 = !DILocation(line: 826, column: 3, scope: !1180)
!1182 = !DILocation(line: 827, column: 26, scope: !1180)
!1183 = !DILocation(line: 827, column: 3, scope: !1180)
!1184 = !DILocation(line: 828, column: 3, scope: !1180)
!1185 = !DILocation(line: 828, column: 9, scope: !1180)
!1186 = !DILocation(line: 828, column: 18, scope: !1180)
!1187 = !DILocation(line: 829, column: 2, scope: !1180)
!1188 = !DILocation(line: 832, column: 7, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !603, file: !117, line: 832, column: 6)
!1190 = !DILocation(line: 832, column: 13, scope: !1189)
!1191 = !DILocation(line: 832, column: 6, scope: !1189)
!1192 = !DILocation(line: 832, column: 24, scope: !1189)
!1193 = !DILocation(line: 832, column: 28, scope: !1194)
!1194 = !DILexicalBlockFile(scope: !1189, file: !117, discriminator: 1)
!1195 = !DILocation(line: 832, column: 34, scope: !1194)
!1196 = !DILocation(line: 832, column: 27, scope: !1194)
!1197 = !DILocation(line: 832, column: 49, scope: !1194)
!1198 = !DILocation(line: 832, column: 63, scope: !1199)
!1199 = !DILexicalBlockFile(scope: !1189, file: !117, discriminator: 2)
!1200 = !DILocation(line: 832, column: 52, scope: !1199)
!1201 = !DILocation(line: 832, column: 6, scope: !1199)
!1202 = !DILocation(line: 833, column: 3, scope: !1189)
!1203 = !DILocation(line: 835, column: 2, scope: !603)
!1204 = !DILocation(line: 836, column: 1, scope: !603)
!1205 = distinct !DISubprogram(name: "ddcb_cmd_init", scope: !40, file: !40, line: 188, type: !1206, isLocal: true, isDefinition: true, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{null, !621}
!1208 = !DILocalVariable(name: "cmd", arg: 1, scope: !1205, file: !40, line: 188, type: !621)
!1209 = !DILocation(line: 188, column: 51, scope: !1205)
!1210 = !DILocalVariable(name: "tstamp", scope: !1205, file: !40, line: 190, type: !103)
!1211 = !DILocation(line: 190, column: 8, scope: !1205)
!1212 = !DILocation(line: 192, column: 11, scope: !1205)
!1213 = !DILocation(line: 192, column: 16, scope: !1205)
!1214 = !DILocation(line: 192, column: 9, scope: !1205)
!1215 = !DILocation(line: 193, column: 9, scope: !1205)
!1216 = !DILocation(line: 193, column: 2, scope: !1205)
!1217 = !DILocation(line: 194, column: 17, scope: !1205)
!1218 = !DILocation(line: 194, column: 2, scope: !1205)
!1219 = !DILocation(line: 194, column: 7, scope: !1205)
!1220 = !DILocation(line: 194, column: 15, scope: !1205)
!1221 = !DILocation(line: 195, column: 1, scope: !1205)
!1222 = distinct !DISubprogram(name: "deflate_add_header", scope: !117, file: !117, line: 73, type: !1223, isLocal: true, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!36, !129}
!1225 = !DILocalVariable(name: "strm", arg: 1, scope: !1222, file: !117, line: 73, type: !129)
!1226 = !DILocation(line: 73, column: 53, scope: !1222)
!1227 = !DILocalVariable(name: "f", scope: !1222, file: !117, line: 75, type: !624)
!1228 = !DILocation(line: 75, column: 20, scope: !1222)
!1229 = !DILocation(line: 75, column: 25, scope: !1222)
!1230 = !DILocation(line: 75, column: 31, scope: !1222)
!1231 = !DILocation(line: 77, column: 10, scope: !1222)
!1232 = !DILocation(line: 77, column: 16, scope: !1222)
!1233 = !DILocation(line: 77, column: 2, scope: !1222)
!1234 = !DILocation(line: 79, column: 3, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1222, file: !117, line: 77, column: 24)
!1236 = !DILocalVariable(name: "flg", scope: !1237, file: !117, line: 82, type: !74)
!1237 = distinct !DILexicalBlock(scope: !1235, file: !117, line: 81, column: 10)
!1238 = !DILocation(line: 82, column: 11, scope: !1237)
!1239 = !DILocalVariable(name: "os", scope: !1237, file: !117, line: 82, type: !74)
!1240 = !DILocation(line: 82, column: 23, scope: !1237)
!1241 = !DILocalVariable(name: "xfl", scope: !1237, file: !117, line: 83, type: !74)
!1242 = !DILocation(line: 83, column: 11, scope: !1237)
!1243 = !DILocalVariable(name: "i", scope: !1237, file: !117, line: 84, type: !58)
!1244 = !DILocation(line: 84, column: 16, scope: !1237)
!1245 = !DILocalVariable(name: "name_len", scope: !1237, file: !117, line: 84, type: !58)
!1246 = !DILocation(line: 84, column: 19, scope: !1237)
!1247 = !DILocalVariable(name: "c_len", scope: !1237, file: !117, line: 84, type: !58)
!1248 = !DILocation(line: 84, column: 33, scope: !1237)
!1249 = !DILocalVariable(name: "e_len", scope: !1237, file: !117, line: 84, type: !58)
!1250 = !DILocation(line: 84, column: 44, scope: !1237)
!1251 = !DILocalVariable(name: "mt", scope: !1237, file: !117, line: 85, type: !57)
!1252 = !DILocation(line: 85, column: 12, scope: !1237)
!1253 = !DILocation(line: 85, column: 27, scope: !1237)
!1254 = !DILocation(line: 85, column: 17, scope: !1237)
!1255 = !DILocation(line: 88, column: 13, scope: !1237)
!1256 = !DILocation(line: 88, column: 3, scope: !1237)
!1257 = !DILocation(line: 89, column: 13, scope: !1237)
!1258 = !DILocation(line: 89, column: 3, scope: !1237)
!1259 = !DILocation(line: 90, column: 13, scope: !1237)
!1260 = !DILocation(line: 90, column: 3, scope: !1237)
!1261 = !DILocalVariable(name: "gz_h", scope: !1237, file: !117, line: 91, type: !238)
!1262 = !DILocation(line: 91, column: 26, scope: !1237)
!1263 = !DILocation(line: 91, column: 33, scope: !1237)
!1264 = !DILocation(line: 91, column: 39, scope: !1237)
!1265 = !DILocation(line: 92, column: 7, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1237, file: !117, line: 92, column: 7)
!1267 = !DILocation(line: 92, column: 7, scope: !1237)
!1268 = !DILocation(line: 93, column: 8, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !117, line: 93, column: 8)
!1270 = distinct !DILexicalBlock(scope: !1266, file: !117, line: 92, column: 13)
!1271 = !DILocation(line: 93, column: 14, scope: !1269)
!1272 = !DILocation(line: 93, column: 8, scope: !1270)
!1273 = !DILocation(line: 93, column: 38, scope: !1274)
!1274 = !DILexicalBlockFile(scope: !1269, file: !117, discriminator: 1)
!1275 = !DILocation(line: 93, column: 44, scope: !1274)
!1276 = !DILocation(line: 93, column: 31, scope: !1274)
!1277 = !DILocation(line: 93, column: 29, scope: !1274)
!1278 = !DILocation(line: 93, column: 20, scope: !1274)
!1279 = !DILocation(line: 94, column: 8, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1270, file: !117, line: 94, column: 8)
!1281 = !DILocation(line: 94, column: 8, scope: !1270)
!1282 = !DILocation(line: 94, column: 22, scope: !1283)
!1283 = !DILexicalBlockFile(scope: !1280, file: !117, discriminator: 1)
!1284 = !DILocation(line: 94, column: 18, scope: !1283)
!1285 = !DILocation(line: 95, column: 8, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1270, file: !117, line: 95, column: 8)
!1287 = !DILocation(line: 95, column: 14, scope: !1286)
!1288 = !DILocation(line: 95, column: 8, scope: !1270)
!1289 = !DILocation(line: 95, column: 38, scope: !1290)
!1290 = !DILexicalBlockFile(scope: !1286, file: !117, discriminator: 1)
!1291 = !DILocation(line: 95, column: 44, scope: !1290)
!1292 = !DILocation(line: 95, column: 31, scope: !1290)
!1293 = !DILocation(line: 95, column: 29, scope: !1290)
!1294 = !DILocation(line: 95, column: 23, scope: !1290)
!1295 = !DILocation(line: 96, column: 8, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1270, file: !117, line: 96, column: 8)
!1297 = !DILocation(line: 96, column: 8, scope: !1270)
!1298 = !DILocation(line: 96, column: 19, scope: !1299)
!1299 = !DILexicalBlockFile(scope: !1296, file: !117, discriminator: 1)
!1300 = !DILocation(line: 96, column: 15, scope: !1299)
!1301 = !DILocation(line: 97, column: 8, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1270, file: !117, line: 97, column: 8)
!1303 = !DILocation(line: 97, column: 14, scope: !1302)
!1304 = !DILocation(line: 97, column: 8, scope: !1270)
!1305 = !DILocation(line: 98, column: 13, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1302, file: !117, line: 97, column: 21)
!1307 = !DILocation(line: 98, column: 19, scope: !1306)
!1308 = !DILocation(line: 98, column: 11, scope: !1306)
!1309 = !DILocation(line: 99, column: 9, scope: !1306)
!1310 = !DILocation(line: 100, column: 4, scope: !1306)
!1311 = !DILocation(line: 101, column: 9, scope: !1270)
!1312 = !DILocation(line: 101, column: 15, scope: !1270)
!1313 = !DILocation(line: 101, column: 7, scope: !1270)
!1314 = !DILocation(line: 102, column: 9, scope: !1270)
!1315 = !DILocation(line: 102, column: 15, scope: !1270)
!1316 = !DILocation(line: 102, column: 7, scope: !1270)
!1317 = !DILocation(line: 105, column: 9, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1270, file: !117, line: 105, column: 8)
!1319 = !DILocation(line: 105, column: 20, scope: !1318)
!1320 = !DILocation(line: 105, column: 18, scope: !1318)
!1321 = !DILocation(line: 105, column: 28, scope: !1318)
!1322 = !DILocation(line: 105, column: 26, scope: !1318)
!1323 = !DILocation(line: 105, column: 35, scope: !1318)
!1324 = !DILocation(line: 105, column: 8, scope: !1270)
!1325 = !DILocation(line: 106, column: 5, scope: !1318)
!1326 = !DILocation(line: 107, column: 8, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1270, file: !117, line: 107, column: 8)
!1328 = !DILocation(line: 107, column: 14, scope: !1327)
!1329 = !DILocation(line: 107, column: 21, scope: !1327)
!1330 = !DILocation(line: 107, column: 8, scope: !1270)
!1331 = !DILocation(line: 108, column: 9, scope: !1327)
!1332 = !DILocation(line: 108, column: 5, scope: !1327)
!1333 = !DILocation(line: 109, column: 8, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1270, file: !117, line: 109, column: 8)
!1335 = !DILocation(line: 109, column: 14, scope: !1334)
!1336 = !DILocation(line: 109, column: 21, scope: !1334)
!1337 = !DILocation(line: 109, column: 8, scope: !1270)
!1338 = !DILocation(line: 110, column: 9, scope: !1334)
!1339 = !DILocation(line: 110, column: 5, scope: !1334)
!1340 = !DILocation(line: 111, column: 3, scope: !1270)
!1341 = !DILocation(line: 113, column: 13, scope: !1237)
!1342 = !DILocation(line: 113, column: 16, scope: !1237)
!1343 = !DILocation(line: 113, column: 3, scope: !1237)
!1344 = !DILocation(line: 114, column: 15, scope: !1237)
!1345 = !DILocation(line: 114, column: 17, scope: !1237)
!1346 = !DILocation(line: 114, column: 3, scope: !1237)
!1347 = !DILocation(line: 115, column: 13, scope: !1237)
!1348 = !DILocation(line: 115, column: 16, scope: !1237)
!1349 = !DILocation(line: 115, column: 3, scope: !1237)
!1350 = !DILocation(line: 116, column: 13, scope: !1237)
!1351 = !DILocation(line: 116, column: 16, scope: !1237)
!1352 = !DILocation(line: 116, column: 3, scope: !1237)
!1353 = !DILocation(line: 117, column: 7, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1237, file: !117, line: 117, column: 7)
!1355 = !DILocation(line: 117, column: 11, scope: !1354)
!1356 = !DILocation(line: 117, column: 7, scope: !1237)
!1357 = !DILocation(line: 118, column: 14, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1354, file: !117, line: 117, column: 19)
!1359 = !DILocation(line: 118, column: 17, scope: !1358)
!1360 = !DILocation(line: 118, column: 23, scope: !1358)
!1361 = !DILocation(line: 118, column: 4, scope: !1358)
!1362 = !DILocation(line: 119, column: 14, scope: !1358)
!1363 = !DILocation(line: 119, column: 18, scope: !1358)
!1364 = !DILocation(line: 119, column: 24, scope: !1358)
!1365 = !DILocation(line: 119, column: 30, scope: !1358)
!1366 = !DILocation(line: 119, column: 17, scope: !1358)
!1367 = !DILocation(line: 119, column: 4, scope: !1358)
!1368 = !DILocation(line: 120, column: 11, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1358, file: !117, line: 120, column: 4)
!1370 = !DILocation(line: 120, column: 9, scope: !1369)
!1371 = !DILocation(line: 120, column: 16, scope: !1372)
!1372 = !DILexicalBlockFile(scope: !1373, file: !117, discriminator: 1)
!1373 = distinct !DILexicalBlock(scope: !1369, file: !117, line: 120, column: 4)
!1374 = !DILocation(line: 120, column: 20, scope: !1372)
!1375 = !DILocation(line: 120, column: 18, scope: !1372)
!1376 = !DILocation(line: 120, column: 4, scope: !1372)
!1377 = !DILocation(line: 121, column: 15, scope: !1373)
!1378 = !DILocation(line: 121, column: 30, scope: !1373)
!1379 = !DILocation(line: 121, column: 18, scope: !1373)
!1380 = !DILocation(line: 121, column: 24, scope: !1373)
!1381 = !DILocation(line: 121, column: 5, scope: !1373)
!1382 = !DILocation(line: 120, column: 28, scope: !1383)
!1383 = !DILexicalBlockFile(scope: !1373, file: !117, discriminator: 2)
!1384 = !DILocation(line: 120, column: 4, scope: !1383)
!1385 = distinct !{!1385, !1386}
!1386 = !DILocation(line: 120, column: 4, scope: !1358)
!1387 = !DILocation(line: 122, column: 3, scope: !1358)
!1388 = !DILocation(line: 124, column: 7, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1237, file: !117, line: 124, column: 7)
!1390 = !DILocation(line: 124, column: 11, scope: !1389)
!1391 = !DILocation(line: 124, column: 7, scope: !1237)
!1392 = !DILocation(line: 125, column: 11, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1389, file: !117, line: 125, column: 4)
!1394 = !DILocation(line: 125, column: 9, scope: !1393)
!1395 = !DILocation(line: 125, column: 16, scope: !1396)
!1396 = !DILexicalBlockFile(scope: !1397, file: !117, discriminator: 1)
!1397 = distinct !DILexicalBlock(scope: !1393, file: !117, line: 125, column: 4)
!1398 = !DILocation(line: 125, column: 21, scope: !1396)
!1399 = !DILocation(line: 125, column: 18, scope: !1396)
!1400 = !DILocation(line: 125, column: 4, scope: !1396)
!1401 = !DILocation(line: 126, column: 15, scope: !1397)
!1402 = !DILocation(line: 126, column: 40, scope: !1397)
!1403 = !DILocation(line: 126, column: 18, scope: !1397)
!1404 = !DILocation(line: 126, column: 24, scope: !1397)
!1405 = !DILocation(line: 126, column: 35, scope: !1397)
!1406 = !DILocation(line: 126, column: 5, scope: !1397)
!1407 = !DILocation(line: 125, column: 32, scope: !1408)
!1408 = !DILexicalBlockFile(scope: !1397, file: !117, discriminator: 2)
!1409 = !DILocation(line: 125, column: 4, scope: !1408)
!1410 = distinct !{!1410, !1411}
!1411 = !DILocation(line: 125, column: 4, scope: !1389)
!1412 = !DILocation(line: 126, column: 42, scope: !1413)
!1413 = !DILexicalBlockFile(scope: !1393, file: !117, discriminator: 1)
!1414 = !DILocation(line: 127, column: 7, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1237, file: !117, line: 127, column: 7)
!1416 = !DILocation(line: 127, column: 11, scope: !1415)
!1417 = !DILocation(line: 127, column: 7, scope: !1237)
!1418 = !DILocation(line: 128, column: 11, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1415, file: !117, line: 128, column: 4)
!1420 = !DILocation(line: 128, column: 9, scope: !1419)
!1421 = !DILocation(line: 128, column: 16, scope: !1422)
!1422 = !DILexicalBlockFile(scope: !1423, file: !117, discriminator: 1)
!1423 = distinct !DILexicalBlock(scope: !1419, file: !117, line: 128, column: 4)
!1424 = !DILocation(line: 128, column: 21, scope: !1422)
!1425 = !DILocation(line: 128, column: 18, scope: !1422)
!1426 = !DILocation(line: 128, column: 4, scope: !1422)
!1427 = !DILocation(line: 129, column: 15, scope: !1423)
!1428 = !DILocation(line: 129, column: 43, scope: !1423)
!1429 = !DILocation(line: 129, column: 18, scope: !1423)
!1430 = !DILocation(line: 129, column: 24, scope: !1423)
!1431 = !DILocation(line: 129, column: 35, scope: !1423)
!1432 = !DILocation(line: 129, column: 5, scope: !1423)
!1433 = !DILocation(line: 128, column: 29, scope: !1434)
!1434 = !DILexicalBlockFile(scope: !1423, file: !117, discriminator: 2)
!1435 = !DILocation(line: 128, column: 4, scope: !1434)
!1436 = distinct !{!1436, !1437}
!1437 = !DILocation(line: 128, column: 4, scope: !1415)
!1438 = !DILocation(line: 129, column: 45, scope: !1439)
!1439 = !DILexicalBlockFile(scope: !1419, file: !117, discriminator: 1)
!1440 = !DILocation(line: 130, column: 7, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1237, file: !117, line: 130, column: 7)
!1442 = !DILocation(line: 130, column: 11, scope: !1441)
!1443 = !DILocation(line: 130, column: 7, scope: !1237)
!1444 = !DILocation(line: 131, column: 8, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1446, file: !117, line: 131, column: 8)
!1446 = distinct !DILexicalBlock(scope: !1441, file: !117, line: 130, column: 19)
!1447 = !DILocation(line: 131, column: 8, scope: !1446)
!1448 = !DILocation(line: 134, column: 15, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1445, file: !117, line: 131, column: 14)
!1450 = !DILocation(line: 134, column: 5, scope: !1449)
!1451 = !DILocation(line: 135, column: 15, scope: !1449)
!1452 = !DILocation(line: 135, column: 5, scope: !1449)
!1453 = !DILocation(line: 136, column: 4, scope: !1449)
!1454 = !DILocation(line: 137, column: 3, scope: !1446)
!1455 = !DILocation(line: 138, column: 3, scope: !1237)
!1456 = !DILocation(line: 160, column: 7, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !117, line: 160, column: 7)
!1458 = distinct !DILexicalBlock(scope: !1235, file: !117, line: 140, column: 10)
!1459 = !DILocation(line: 160, column: 13, scope: !1457)
!1460 = !DILocation(line: 160, column: 7, scope: !1458)
!1461 = !DILocation(line: 161, column: 14, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1457, file: !117, line: 160, column: 23)
!1463 = !DILocation(line: 161, column: 4, scope: !1462)
!1464 = !DILocation(line: 162, column: 14, scope: !1462)
!1465 = !DILocation(line: 162, column: 4, scope: !1462)
!1466 = !DILocation(line: 163, column: 16, scope: !1462)
!1467 = !DILocation(line: 163, column: 18, scope: !1462)
!1468 = !DILocation(line: 163, column: 24, scope: !1462)
!1469 = !DILocation(line: 163, column: 55, scope: !1462)
!1470 = !DILocation(line: 163, column: 4, scope: !1471)
!1471 = !DILexicalBlockFile(scope: !1462, file: !117, discriminator: 1)
!1472 = !DILocation(line: 164, column: 3, scope: !1462)
!1473 = !DILocation(line: 165, column: 14, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1457, file: !117, line: 164, column: 10)
!1475 = !DILocation(line: 165, column: 4, scope: !1474)
!1476 = !DILocation(line: 166, column: 14, scope: !1474)
!1477 = !DILocation(line: 166, column: 4, scope: !1474)
!1478 = !DILocation(line: 168, column: 3, scope: !1458)
!1479 = !DILocation(line: 171, column: 2, scope: !1222)
!1480 = !DILocation(line: 171, column: 8, scope: !1222)
!1481 = !DILocation(line: 171, column: 21, scope: !1222)
!1482 = !DILocation(line: 172, column: 2, scope: !1222)
!1483 = !DILocation(line: 173, column: 1, scope: !1222)
!1484 = distinct !DISubprogram(name: "deflate_write_out_fifo", scope: !117, file: !117, line: 178, type: !1485, isLocal: true, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{null, !129}
!1487 = !DILocalVariable(name: "strm", arg: 1, scope: !1484, file: !117, line: 178, type: !129)
!1488 = !DILocation(line: 178, column: 58, scope: !1484)
!1489 = !DILocalVariable(name: "data", scope: !1484, file: !117, line: 180, type: !74)
!1490 = !DILocation(line: 180, column: 10, scope: !1484)
!1491 = !DILocalVariable(name: "f", scope: !1484, file: !117, line: 181, type: !624)
!1492 = !DILocation(line: 181, column: 20, scope: !1484)
!1493 = !DILocation(line: 181, column: 25, scope: !1484)
!1494 = !DILocation(line: 181, column: 31, scope: !1484)
!1495 = !DILocation(line: 183, column: 2, scope: !1484)
!1496 = !DILocation(line: 183, column: 27, scope: !1497)
!1497 = !DILexicalBlockFile(scope: !1484, file: !117, discriminator: 1)
!1498 = !DILocation(line: 183, column: 9, scope: !1497)
!1499 = !DILocation(line: 183, column: 33, scope: !1497)
!1500 = !DILocation(line: 183, column: 45, scope: !1501)
!1501 = !DILexicalBlockFile(scope: !1484, file: !117, discriminator: 2)
!1502 = !DILocation(line: 183, column: 36, scope: !1501)
!1503 = !DILocation(line: 183, column: 55, scope: !1501)
!1504 = !DILocation(line: 183, column: 2, scope: !1505)
!1505 = !DILexicalBlockFile(scope: !1484, file: !117, discriminator: 3)
!1506 = !DILocation(line: 184, column: 20, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1484, file: !117, line: 183, column: 61)
!1508 = !DILocation(line: 184, column: 26, scope: !1507)
!1509 = !DILocation(line: 184, column: 3, scope: !1507)
!1510 = !DILocation(line: 183, column: 2, scope: !1511)
!1511 = !DILexicalBlockFile(scope: !1484, file: !117, discriminator: 4)
!1512 = distinct !{!1512, !1495}
!1513 = !DILocation(line: 186, column: 2, scope: !1484)
!1514 = distinct !DISubprogram(name: "output_data_avail", scope: !117, file: !117, line: 46, type: !1223, isLocal: true, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!1515 = !DILocalVariable(name: "strm", arg: 1, scope: !1514, file: !117, line: 46, type: !129)
!1516 = !DILocation(line: 46, column: 59, scope: !1514)
!1517 = !DILocation(line: 48, column: 9, scope: !1514)
!1518 = !DILocation(line: 48, column: 15, scope: !1514)
!1519 = !DILocation(line: 48, column: 2, scope: !1514)
!1520 = distinct !DISubprogram(name: "input_data_avail", scope: !117, file: !117, line: 51, type: !1223, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!1521 = !DILocalVariable(name: "strm", arg: 1, scope: !1520, file: !117, line: 51, type: !129)
!1522 = !DILocation(line: 51, column: 58, scope: !1520)
!1523 = !DILocation(line: 53, column: 9, scope: !1520)
!1524 = !DILocation(line: 53, column: 15, scope: !1520)
!1525 = !DILocation(line: 53, column: 24, scope: !1520)
!1526 = !DILocation(line: 53, column: 2, scope: !1520)
!1527 = distinct !DISubprogram(name: "deflate_write_eob", scope: !117, file: !117, line: 391, type: !1223, isLocal: true, isDefinition: true, scopeLine: 392, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!1528 = !DILocalVariable(name: "strm", arg: 1, scope: !1527, file: !117, line: 391, type: !129)
!1529 = !DILocation(line: 391, column: 52, scope: !1527)
!1530 = !DILocalVariable(name: "f", scope: !1527, file: !117, line: 393, type: !624)
!1531 = !DILocation(line: 393, column: 20, scope: !1527)
!1532 = !DILocation(line: 393, column: 25, scope: !1527)
!1533 = !DILocation(line: 393, column: 31, scope: !1527)
!1534 = !DILocation(line: 397, column: 6, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1527, file: !117, line: 397, column: 6)
!1536 = !DILocation(line: 397, column: 12, scope: !1535)
!1537 = !DILocation(line: 397, column: 22, scope: !1535)
!1538 = !DILocation(line: 397, column: 6, scope: !1527)
!1539 = !DILocation(line: 398, column: 3, scope: !1535)
!1540 = !DILocation(line: 401, column: 6, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1527, file: !117, line: 401, column: 6)
!1542 = !DILocation(line: 401, column: 12, scope: !1541)
!1543 = !DILocation(line: 401, column: 21, scope: !1541)
!1544 = !DILocation(line: 401, column: 6, scope: !1527)
!1545 = !DILocation(line: 402, column: 3, scope: !1541)
!1546 = !DILocation(line: 404, column: 6, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1527, file: !117, line: 404, column: 6)
!1548 = !DILocation(line: 404, column: 12, scope: !1547)
!1549 = !DILocation(line: 404, column: 21, scope: !1547)
!1550 = !DILocation(line: 404, column: 6, scope: !1527)
!1551 = !DILocation(line: 405, column: 13, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1547, file: !117, line: 404, column: 27)
!1553 = !DILocation(line: 405, column: 3, scope: !1552)
!1554 = !DILocation(line: 406, column: 13, scope: !1552)
!1555 = !DILocation(line: 406, column: 3, scope: !1552)
!1556 = !DILocation(line: 407, column: 13, scope: !1552)
!1557 = !DILocation(line: 407, column: 3, scope: !1552)
!1558 = !DILocation(line: 408, column: 2, scope: !1552)
!1559 = !DILocation(line: 409, column: 13, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1547, file: !117, line: 408, column: 9)
!1561 = !DILocation(line: 409, column: 16, scope: !1560)
!1562 = !DILocation(line: 409, column: 22, scope: !1560)
!1563 = !DILocation(line: 409, column: 35, scope: !1560)
!1564 = !DILocation(line: 409, column: 41, scope: !1560)
!1565 = !DILocation(line: 409, column: 30, scope: !1560)
!1566 = !DILocation(line: 409, column: 28, scope: !1560)
!1567 = !DILocation(line: 409, column: 3, scope: !1560)
!1568 = !DILocation(line: 410, column: 13, scope: !1560)
!1569 = !DILocation(line: 410, column: 25, scope: !1560)
!1570 = !DILocation(line: 410, column: 31, scope: !1560)
!1571 = !DILocation(line: 410, column: 40, scope: !1560)
!1572 = !DILocation(line: 410, column: 21, scope: !1560)
!1573 = !DILocation(line: 410, column: 16, scope: !1560)
!1574 = !DILocation(line: 410, column: 3, scope: !1560)
!1575 = !DILocation(line: 411, column: 13, scope: !1560)
!1576 = !DILocation(line: 411, column: 3, scope: !1560)
!1577 = !DILocation(line: 414, column: 2, scope: !1527)
!1578 = !DILocation(line: 414, column: 8, scope: !1527)
!1579 = !DILocation(line: 414, column: 17, scope: !1527)
!1580 = !DILocation(line: 415, column: 2, scope: !1527)
!1581 = !DILocation(line: 415, column: 8, scope: !1527)
!1582 = !DILocation(line: 415, column: 18, scope: !1527)
!1583 = !DILocation(line: 416, column: 2, scope: !1527)
!1584 = !DILocation(line: 417, column: 1, scope: !1527)
!1585 = distinct !DISubprogram(name: "deflate_add_trailer", scope: !117, file: !117, line: 346, type: !1223, isLocal: true, isDefinition: true, scopeLine: 347, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!1586 = !DILocalVariable(name: "strm", arg: 1, scope: !1585, file: !117, line: 346, type: !129)
!1587 = !DILocation(line: 346, column: 54, scope: !1585)
!1588 = !DILocalVariable(name: "f", scope: !1585, file: !117, line: 348, type: !624)
!1589 = !DILocation(line: 348, column: 20, scope: !1585)
!1590 = !DILocation(line: 348, column: 25, scope: !1585)
!1591 = !DILocation(line: 348, column: 31, scope: !1585)
!1592 = !DILocation(line: 350, column: 7, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1585, file: !117, line: 350, column: 6)
!1594 = !DILocation(line: 350, column: 13, scope: !1593)
!1595 = !DILocation(line: 350, column: 6, scope: !1585)
!1596 = !DILocation(line: 351, column: 3, scope: !1593)
!1597 = !DILocation(line: 353, column: 6, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1585, file: !117, line: 353, column: 6)
!1599 = !DILocation(line: 353, column: 12, scope: !1598)
!1600 = !DILocation(line: 353, column: 6, scope: !1585)
!1601 = !DILocation(line: 354, column: 3, scope: !1598)
!1602 = !DILocation(line: 356, column: 10, scope: !1585)
!1603 = !DILocation(line: 356, column: 16, scope: !1585)
!1604 = !DILocation(line: 356, column: 2, scope: !1585)
!1605 = !DILocation(line: 358, column: 3, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1585, file: !117, line: 356, column: 24)
!1607 = !DILocation(line: 362, column: 15, scope: !1606)
!1608 = !DILocation(line: 362, column: 17, scope: !1606)
!1609 = !DILocation(line: 362, column: 23, scope: !1606)
!1610 = !DILocation(line: 362, column: 3, scope: !1606)
!1611 = !DILocation(line: 363, column: 15, scope: !1606)
!1612 = !DILocation(line: 363, column: 17, scope: !1606)
!1613 = !DILocation(line: 363, column: 23, scope: !1606)
!1614 = !DILocation(line: 363, column: 26, scope: !1606)
!1615 = !DILocation(line: 363, column: 3, scope: !1606)
!1616 = !DILocation(line: 364, column: 3, scope: !1606)
!1617 = !DILocation(line: 368, column: 15, scope: !1606)
!1618 = !DILocation(line: 368, column: 17, scope: !1606)
!1619 = !DILocation(line: 368, column: 23, scope: !1606)
!1620 = !DILocation(line: 368, column: 54, scope: !1606)
!1621 = !DILocation(line: 368, column: 3, scope: !1622)
!1622 = !DILexicalBlockFile(scope: !1606, file: !117, discriminator: 1)
!1623 = !DILocation(line: 369, column: 3, scope: !1606)
!1624 = !DILocation(line: 371, column: 2, scope: !1585)
!1625 = !DILocation(line: 371, column: 8, scope: !1585)
!1626 = !DILocation(line: 371, column: 22, scope: !1585)
!1627 = !DILocation(line: 372, column: 2, scope: !1585)
!1628 = !DILocation(line: 373, column: 1, scope: !1585)
!1629 = distinct !DISubprogram(name: "fifo_empty", scope: !195, file: !195, line: 57, type: !1630, isLocal: true, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!36, !624}
!1632 = !DILocalVariable(name: "fifo", arg: 1, scope: !1629, file: !195, line: 57, type: !624)
!1633 = !DILocation(line: 57, column: 48, scope: !1629)
!1634 = !DILocation(line: 59, column: 10, scope: !1629)
!1635 = !DILocation(line: 59, column: 16, scope: !1629)
!1636 = !DILocation(line: 59, column: 23, scope: !1629)
!1637 = !DILocation(line: 59, column: 29, scope: !1629)
!1638 = !DILocation(line: 59, column: 20, scope: !1629)
!1639 = !DILocation(line: 59, column: 2, scope: !1629)
!1640 = distinct !DISubprogram(name: "dyn_huffman_supported", scope: !33, file: !33, line: 107, type: !368, isLocal: true, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!1641 = !DILocalVariable(name: "zedc", arg: 1, scope: !1640, file: !33, line: 107, type: !30)
!1642 = !DILocation(line: 107, column: 55, scope: !1640)
!1643 = !DILocalVariable(name: "app_id", scope: !1640, file: !33, line: 109, type: !53)
!1644 = !DILocation(line: 109, column: 11, scope: !1640)
!1645 = !DILocation(line: 109, column: 37, scope: !1640)
!1646 = !DILocation(line: 109, column: 43, scope: !1640)
!1647 = !DILocation(line: 109, column: 20, scope: !1640)
!1648 = !DILocation(line: 110, column: 10, scope: !1640)
!1649 = !DILocation(line: 110, column: 17, scope: !1640)
!1650 = !DILocation(line: 110, column: 36, scope: !1640)
!1651 = !DILocation(line: 110, column: 2, scope: !1640)
!1652 = distinct !DISubprogram(name: "__fswab64", scope: !1653, file: !1653, line: 68, type: !1654, isLocal: true, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!1653 = !DIFile(filename: "/usr/include/linux/swab.h", directory: "/home/lichi/Desktop")
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!103, !103}
!1656 = !DILocalVariable(name: "val", arg: 1, scope: !1652, file: !1653, line: 68, type: !103)
!1657 = !DILocation(line: 68, column: 41, scope: !1652)
!1658 = !DILocation(line: 73, column: 23, scope: !1652)
!1659 = !DILocation(line: 73, column: 9, scope: !1652)
!1660 = !DILocation(line: 73, column: 2, scope: !1652)
!1661 = distinct !DISubprogram(name: "__fswab32", scope: !1653, file: !1653, line: 57, type: !1662, isLocal: true, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!107, !107}
!1664 = !DILocalVariable(name: "val", arg: 1, scope: !1661, file: !1653, line: 57, type: !107)
!1665 = !DILocation(line: 57, column: 41, scope: !1661)
!1666 = !DILocation(line: 62, column: 23, scope: !1661)
!1667 = !DILocation(line: 62, column: 9, scope: !1661)
!1668 = !DILocation(line: 62, column: 2, scope: !1661)
!1669 = distinct !DISubprogram(name: "gettid", scope: !33, file: !33, line: 36, type: !1670, isLocal: true, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!111}
!1672 = !DILocation(line: 38, column: 16, scope: !1669)
!1673 = !DILocation(line: 38, column: 9, scope: !1669)
!1674 = !DILocation(line: 38, column: 2, scope: !1669)
!1675 = distinct !DISubprogram(name: "__fswab16", scope: !1653, file: !1653, line: 46, type: !1676, isLocal: true, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!108, !108}
!1678 = !DILocalVariable(name: "val", arg: 1, scope: !1675, file: !1653, line: 46, type: !108)
!1679 = !DILocation(line: 46, column: 41, scope: !1675)
!1680 = !DILocation(line: 53, column: 29, scope: !1675)
!1681 = !DILocation(line: 53, column: 21, scope: !1675)
!1682 = !DILocation(line: 53, column: 34, scope: !1675)
!1683 = !DILocation(line: 53, column: 52, scope: !1675)
!1684 = !DILocation(line: 53, column: 70, scope: !1675)
!1685 = !DILocation(line: 53, column: 62, scope: !1675)
!1686 = !DILocation(line: 53, column: 75, scope: !1675)
!1687 = !DILocation(line: 53, column: 93, scope: !1675)
!1688 = !DILocation(line: 53, column: 58, scope: !1675)
!1689 = !DILocation(line: 53, column: 10, scope: !1675)
!1690 = !DILocation(line: 53, column: 2, scope: !1675)
!1691 = distinct !DISubprogram(name: "deflate_process_results", scope: !117, file: !117, line: 462, type: !1692, isLocal: true, isDefinition: true, scopeLine: 464, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{!36, !129, !79}
!1694 = !DILocalVariable(name: "strm", arg: 1, scope: !1691, file: !117, line: 462, type: !129)
!1695 = !DILocation(line: 462, column: 58, scope: !1691)
!1696 = !DILocalVariable(name: "asv", arg: 2, scope: !1691, file: !117, line: 463, type: !79)
!1697 = !DILocation(line: 463, column: 30, scope: !1691)
!1698 = !DILocalVariable(name: "len", scope: !1691, file: !117, line: 465, type: !58)
!1699 = !DILocation(line: 465, column: 15, scope: !1691)
!1700 = !DILocalVariable(name: "i", scope: !1691, file: !117, line: 465, type: !58)
!1701 = !DILocation(line: 465, column: 20, scope: !1691)
!1702 = !DILocalVariable(name: "zedc", scope: !1691, file: !117, line: 466, type: !30)
!1703 = !DILocation(line: 466, column: 16, scope: !1691)
!1704 = !DILocation(line: 466, column: 38, scope: !1691)
!1705 = !DILocation(line: 466, column: 44, scope: !1691)
!1706 = !DILocation(line: 466, column: 23, scope: !1691)
!1707 = !DILocalVariable(name: "f", scope: !1691, file: !117, line: 467, type: !624)
!1708 = !DILocation(line: 467, column: 20, scope: !1691)
!1709 = !DILocation(line: 467, column: 25, scope: !1691)
!1710 = !DILocation(line: 467, column: 31, scope: !1691)
!1711 = !DILocation(line: 469, column: 29, scope: !1691)
!1712 = !DILocation(line: 469, column: 34, scope: !1691)
!1713 = !DILocation(line: 469, column: 66, scope: !1691)
!1714 = !DILocation(line: 469, column: 8, scope: !1691)
!1715 = !DILocation(line: 469, column: 14, scope: !1691)
!1716 = !DILocation(line: 469, column: 28, scope: !1691)
!1717 = !DILocation(line: 469, column: 6, scope: !1691)
!1718 = !DILocation(line: 470, column: 23, scope: !1691)
!1719 = !DILocation(line: 470, column: 28, scope: !1691)
!1720 = !DILocation(line: 470, column: 60, scope: !1691)
!1721 = !DILocation(line: 470, column: 2, scope: !1691)
!1722 = !DILocation(line: 470, column: 8, scope: !1691)
!1723 = !DILocation(line: 470, column: 22, scope: !1691)
!1724 = !DILocation(line: 473, column: 6, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1691, file: !117, line: 473, column: 6)
!1726 = !DILocation(line: 473, column: 12, scope: !1725)
!1727 = !DILocation(line: 473, column: 18, scope: !1725)
!1728 = !DILocation(line: 473, column: 10, scope: !1725)
!1729 = !DILocation(line: 473, column: 6, scope: !1691)
!1730 = !DILocation(line: 474, column: 3, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1725, file: !117, line: 473, column: 28)
!1732 = distinct !{!1732, !1730}
!1733 = !DILocation(line: 474, column: 12, scope: !1734)
!1734 = !DILexicalBlockFile(scope: !1735, file: !117, discriminator: 1)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !117, line: 474, column: 12)
!1736 = distinct !DILexicalBlock(scope: !1731, file: !117, line: 474, column: 6)
!1737 = !DILocation(line: 474, column: 30, scope: !1738)
!1738 = !DILexicalBlockFile(scope: !1735, file: !117, discriminator: 2)
!1739 = !DILocation(line: 474, column: 143, scope: !1738)
!1740 = !DILocation(line: 474, column: 153, scope: !1741)
!1741 = !DILexicalBlockFile(scope: !1738, file: !117, discriminator: 4)
!1742 = !DILocation(line: 474, column: 5, scope: !1738)
!1743 = !DILocation(line: 474, column: 11, scope: !1738)
!1744 = !DILocation(line: 474, column: 26, scope: !1738)
!1745 = !DILocation(line: 474, column: 32, scope: !1738)
!1746 = !DILocation(line: 474, column: 42, scope: !1738)
!1747 = !DILocation(line: 474, column: 48, scope: !1738)
!1748 = !DILocation(line: 474, column: 54, scope: !1738)
!1749 = !DILocation(line: 474, column: 60, scope: !1738)
!1750 = !DILocation(line: 474, column: 66, scope: !1738)
!1751 = !DILocation(line: 474, column: 72, scope: !1738)
!1752 = !DILocation(line: 474, column: 22, scope: !1753)
!1753 = !DILexicalBlockFile(scope: !1738, file: !117, discriminator: 5)
!1754 = !DILocation(line: 474, column: 22, scope: !1738)
!1755 = !DILocation(line: 474, column: 83, scope: !1756)
!1756 = !DILexicalBlockFile(scope: !1736, file: !117, discriminator: 3)
!1757 = !DILocation(line: 480, column: 24, scope: !1731)
!1758 = !DILocation(line: 480, column: 3, scope: !1731)
!1759 = !DILocation(line: 481, column: 23, scope: !1731)
!1760 = !DILocation(line: 481, column: 3, scope: !1731)
!1761 = !DILocation(line: 483, column: 3, scope: !1731)
!1762 = !DILocation(line: 483, column: 9, scope: !1731)
!1763 = !DILocation(line: 483, column: 17, scope: !1731)
!1764 = !DILocation(line: 484, column: 10, scope: !1731)
!1765 = !DILocation(line: 484, column: 16, scope: !1731)
!1766 = !DILocation(line: 484, column: 3, scope: !1731)
!1767 = !DILocation(line: 486, column: 20, scope: !1691)
!1768 = !DILocation(line: 486, column: 2, scope: !1691)
!1769 = !DILocation(line: 486, column: 8, scope: !1691)
!1770 = !DILocation(line: 486, column: 17, scope: !1691)
!1771 = !DILocation(line: 487, column: 19, scope: !1691)
!1772 = !DILocation(line: 487, column: 2, scope: !1691)
!1773 = !DILocation(line: 487, column: 8, scope: !1691)
!1774 = !DILocation(line: 487, column: 16, scope: !1691)
!1775 = !DILocation(line: 488, column: 20, scope: !1691)
!1776 = !DILocation(line: 488, column: 2, scope: !1691)
!1777 = !DILocation(line: 488, column: 8, scope: !1691)
!1778 = !DILocation(line: 488, column: 17, scope: !1691)
!1779 = !DILocation(line: 491, column: 8, scope: !1691)
!1780 = !DILocation(line: 491, column: 14, scope: !1691)
!1781 = !DILocation(line: 491, column: 6, scope: !1691)
!1782 = !DILocation(line: 494, column: 7, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1691, file: !117, line: 494, column: 6)
!1784 = !DILocation(line: 494, column: 11, scope: !1783)
!1785 = !DILocation(line: 494, column: 17, scope: !1783)
!1786 = !DILocation(line: 494, column: 21, scope: !1787)
!1787 = !DILexicalBlockFile(scope: !1783, file: !117, discriminator: 1)
!1788 = !DILocation(line: 494, column: 27, scope: !1787)
!1789 = !DILocation(line: 494, column: 33, scope: !1787)
!1790 = !DILocation(line: 494, column: 25, scope: !1787)
!1791 = !DILocation(line: 494, column: 6, scope: !1787)
!1792 = !DILocation(line: 495, column: 3, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1783, file: !117, line: 494, column: 45)
!1794 = distinct !{!1794, !1792}
!1795 = !DILocation(line: 495, column: 12, scope: !1796)
!1796 = !DILexicalBlockFile(scope: !1797, file: !117, discriminator: 1)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !117, line: 495, column: 12)
!1798 = distinct !DILexicalBlock(scope: !1793, file: !117, line: 495, column: 6)
!1799 = !DILocation(line: 495, column: 30, scope: !1800)
!1800 = !DILexicalBlockFile(scope: !1797, file: !117, discriminator: 2)
!1801 = !DILocation(line: 495, column: 176, scope: !1800)
!1802 = !DILocation(line: 495, column: 186, scope: !1803)
!1803 = !DILexicalBlockFile(scope: !1800, file: !117, discriminator: 4)
!1804 = !DILocation(line: 495, column: 5, scope: !1800)
!1805 = !DILocation(line: 495, column: 11, scope: !1800)
!1806 = !DILocation(line: 495, column: 26, scope: !1800)
!1807 = !DILocation(line: 495, column: 32, scope: !1800)
!1808 = !DILocation(line: 495, column: 47, scope: !1800)
!1809 = !DILocation(line: 495, column: 53, scope: !1800)
!1810 = !DILocation(line: 495, column: 63, scope: !1800)
!1811 = !DILocation(line: 495, column: 69, scope: !1800)
!1812 = !DILocation(line: 495, column: 80, scope: !1800)
!1813 = !DILocation(line: 495, column: 86, scope: !1800)
!1814 = !DILocation(line: 495, column: 92, scope: !1800)
!1815 = !DILocation(line: 495, column: 98, scope: !1800)
!1816 = !DILocation(line: 495, column: 104, scope: !1800)
!1817 = !DILocation(line: 495, column: 110, scope: !1800)
!1818 = !DILocation(line: 495, column: 22, scope: !1819)
!1819 = !DILexicalBlockFile(scope: !1800, file: !117, discriminator: 5)
!1820 = !DILocation(line: 495, column: 22, scope: !1800)
!1821 = !DILocation(line: 495, column: 121, scope: !1822)
!1822 = !DILexicalBlockFile(scope: !1798, file: !117, discriminator: 3)
!1823 = !DILocation(line: 503, column: 24, scope: !1793)
!1824 = !DILocation(line: 503, column: 3, scope: !1793)
!1825 = !DILocation(line: 504, column: 23, scope: !1793)
!1826 = !DILocation(line: 504, column: 3, scope: !1793)
!1827 = !DILocation(line: 506, column: 3, scope: !1793)
!1828 = !DILocation(line: 506, column: 9, scope: !1793)
!1829 = !DILocation(line: 506, column: 17, scope: !1793)
!1830 = !DILocation(line: 507, column: 10, scope: !1793)
!1831 = !DILocation(line: 507, column: 16, scope: !1793)
!1832 = !DILocation(line: 507, column: 3, scope: !1793)
!1833 = !DILocation(line: 511, column: 28, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1691, file: !117, line: 511, column: 6)
!1835 = !DILocation(line: 511, column: 6, scope: !1834)
!1836 = !DILocation(line: 511, column: 6, scope: !1691)
!1837 = !DILocation(line: 512, column: 7, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1839, file: !117, line: 512, column: 7)
!1839 = distinct !DILexicalBlock(scope: !1834, file: !117, line: 511, column: 35)
!1840 = !DILocation(line: 512, column: 12, scope: !1838)
!1841 = !DILocation(line: 512, column: 21, scope: !1838)
!1842 = !DILocation(line: 512, column: 7, scope: !1839)
!1843 = !DILocation(line: 514, column: 4, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1838, file: !117, line: 513, column: 20)
!1845 = distinct !{!1845, !1843}
!1846 = !DILocation(line: 514, column: 13, scope: !1847)
!1847 = !DILexicalBlockFile(scope: !1848, file: !117, discriminator: 1)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !117, line: 514, column: 13)
!1849 = distinct !DILexicalBlock(scope: !1844, file: !117, line: 514, column: 7)
!1850 = !DILocation(line: 514, column: 31, scope: !1851)
!1851 = !DILexicalBlockFile(scope: !1848, file: !117, discriminator: 2)
!1852 = !DILocation(line: 514, column: 99, scope: !1851)
!1853 = !DILocation(line: 514, column: 109, scope: !1854)
!1854 = !DILexicalBlockFile(scope: !1851, file: !117, discriminator: 4)
!1855 = !DILocation(line: 514, column: 137, scope: !1851)
!1856 = !DILocation(line: 514, column: 142, scope: !1851)
!1857 = !DILocation(line: 514, column: 23, scope: !1858)
!1858 = !DILexicalBlockFile(scope: !1851, file: !117, discriminator: 5)
!1859 = !DILocation(line: 514, column: 23, scope: !1851)
!1860 = !DILocation(line: 514, column: 153, scope: !1861)
!1861 = !DILexicalBlockFile(scope: !1849, file: !117, discriminator: 3)
!1862 = !DILocation(line: 515, column: 4, scope: !1844)
!1863 = !DILocation(line: 515, column: 10, scope: !1844)
!1864 = !DILocation(line: 515, column: 18, scope: !1844)
!1865 = !DILocation(line: 516, column: 11, scope: !1844)
!1866 = !DILocation(line: 516, column: 17, scope: !1844)
!1867 = !DILocation(line: 516, column: 4, scope: !1844)
!1868 = !DILocation(line: 518, column: 2, scope: !1839)
!1869 = !DILocation(line: 519, column: 7, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1871, file: !117, line: 519, column: 7)
!1871 = distinct !DILexicalBlock(scope: !1834, file: !117, line: 518, column: 9)
!1872 = !DILocation(line: 519, column: 12, scope: !1870)
!1873 = !DILocation(line: 519, column: 21, scope: !1870)
!1874 = !DILocation(line: 519, column: 7, scope: !1871)
!1875 = !DILocation(line: 520, column: 4, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1870, file: !117, line: 519, column: 33)
!1877 = distinct !{!1877, !1875}
!1878 = !DILocation(line: 520, column: 13, scope: !1879)
!1879 = !DILexicalBlockFile(scope: !1880, file: !117, discriminator: 1)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !117, line: 520, column: 13)
!1881 = distinct !DILexicalBlock(scope: !1876, file: !117, line: 520, column: 7)
!1882 = !DILocation(line: 520, column: 31, scope: !1883)
!1883 = !DILexicalBlockFile(scope: !1880, file: !117, discriminator: 2)
!1884 = !DILocation(line: 520, column: 99, scope: !1883)
!1885 = !DILocation(line: 520, column: 109, scope: !1886)
!1886 = !DILexicalBlockFile(scope: !1883, file: !117, discriminator: 4)
!1887 = !DILocation(line: 520, column: 137, scope: !1883)
!1888 = !DILocation(line: 520, column: 142, scope: !1883)
!1889 = !DILocation(line: 520, column: 23, scope: !1890)
!1890 = !DILexicalBlockFile(scope: !1883, file: !117, discriminator: 5)
!1891 = !DILocation(line: 520, column: 23, scope: !1883)
!1892 = !DILocation(line: 520, column: 153, scope: !1893)
!1893 = !DILexicalBlockFile(scope: !1881, file: !117, discriminator: 3)
!1894 = !DILocation(line: 521, column: 4, scope: !1876)
!1895 = !DILocation(line: 521, column: 10, scope: !1876)
!1896 = !DILocation(line: 521, column: 18, scope: !1876)
!1897 = !DILocation(line: 522, column: 11, scope: !1876)
!1898 = !DILocation(line: 522, column: 17, scope: !1876)
!1899 = !DILocation(line: 522, column: 4, scope: !1876)
!1900 = !DILocation(line: 526, column: 20, scope: !1691)
!1901 = !DILocation(line: 526, column: 2, scope: !1691)
!1902 = !DILocation(line: 526, column: 8, scope: !1691)
!1903 = !DILocation(line: 526, column: 17, scope: !1691)
!1904 = !DILocation(line: 527, column: 21, scope: !1691)
!1905 = !DILocation(line: 527, column: 2, scope: !1691)
!1906 = !DILocation(line: 527, column: 8, scope: !1691)
!1907 = !DILocation(line: 527, column: 18, scope: !1691)
!1908 = !DILocation(line: 528, column: 21, scope: !1691)
!1909 = !DILocation(line: 528, column: 2, scope: !1691)
!1910 = !DILocation(line: 528, column: 8, scope: !1691)
!1911 = !DILocation(line: 528, column: 18, scope: !1691)
!1912 = !DILocation(line: 546, column: 7, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1691, file: !117, line: 546, column: 6)
!1914 = !DILocation(line: 546, column: 13, scope: !1913)
!1915 = !DILocation(line: 546, column: 23, scope: !1913)
!1916 = !DILocation(line: 546, column: 29, scope: !1913)
!1917 = !DILocation(line: 546, column: 33, scope: !1918)
!1918 = !DILexicalBlockFile(scope: !1913, file: !117, discriminator: 1)
!1919 = !DILocation(line: 546, column: 38, scope: !1918)
!1920 = !DILocation(line: 546, column: 47, scope: !1918)
!1921 = !DILocation(line: 546, column: 6, scope: !1918)
!1922 = !DILocation(line: 547, column: 3, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1913, file: !117, line: 546, column: 53)
!1924 = distinct !{!1924, !1922}
!1925 = !DILocation(line: 547, column: 12, scope: !1926)
!1926 = !DILexicalBlockFile(scope: !1927, file: !117, discriminator: 1)
!1927 = distinct !DILexicalBlock(scope: !1928, file: !117, line: 547, column: 12)
!1928 = distinct !DILexicalBlock(scope: !1923, file: !117, line: 547, column: 6)
!1929 = !DILocation(line: 547, column: 30, scope: !1930)
!1930 = !DILexicalBlockFile(scope: !1927, file: !117, discriminator: 2)
!1931 = !DILocation(line: 547, column: 103, scope: !1930)
!1932 = !DILocation(line: 547, column: 113, scope: !1933)
!1933 = !DILexicalBlockFile(scope: !1930, file: !117, discriminator: 4)
!1934 = !DILocation(line: 547, column: 22, scope: !1935)
!1935 = !DILexicalBlockFile(scope: !1930, file: !117, discriminator: 5)
!1936 = !DILocation(line: 547, column: 22, scope: !1930)
!1937 = !DILocation(line: 547, column: 142, scope: !1938)
!1938 = !DILexicalBlockFile(scope: !1928, file: !117, discriminator: 3)
!1939 = !DILocation(line: 548, column: 3, scope: !1923)
!1940 = !DILocation(line: 548, column: 9, scope: !1923)
!1941 = !DILocation(line: 548, column: 17, scope: !1923)
!1942 = !DILocation(line: 549, column: 10, scope: !1923)
!1943 = !DILocation(line: 549, column: 16, scope: !1923)
!1944 = !DILocation(line: 549, column: 3, scope: !1923)
!1945 = !DILocation(line: 553, column: 28, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1691, file: !117, line: 553, column: 6)
!1947 = !DILocation(line: 553, column: 6, scope: !1946)
!1948 = !DILocation(line: 553, column: 6, scope: !1691)
!1949 = !DILocation(line: 561, column: 10, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !117, line: 561, column: 3)
!1951 = distinct !DILexicalBlock(scope: !1946, file: !117, line: 553, column: 35)
!1952 = !DILocation(line: 561, column: 32, scope: !1950)
!1953 = !DILocation(line: 561, column: 37, scope: !1950)
!1954 = !DILocation(line: 561, column: 15, scope: !1950)
!1955 = !DILocation(line: 561, column: 21, scope: !1950)
!1956 = !DILocation(line: 561, column: 30, scope: !1950)
!1957 = !DILocation(line: 561, column: 8, scope: !1950)
!1958 = !DILocation(line: 562, column: 9, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1950, file: !117, line: 561, column: 3)
!1960 = !DILocation(line: 562, column: 15, scope: !1959)
!1961 = !DILocation(line: 562, column: 24, scope: !1959)
!1962 = !DILocation(line: 562, column: 29, scope: !1959)
!1963 = !DILocation(line: 562, column: 33, scope: !1964)
!1964 = !DILexicalBlockFile(scope: !1959, file: !117, discriminator: 1)
!1965 = !DILocation(line: 562, column: 35, scope: !1964)
!1966 = !DILocation(line: 561, column: 3, scope: !1967)
!1967 = !DILexicalBlockFile(scope: !1950, file: !117, discriminator: 1)
!1968 = !DILocation(line: 564, column: 14, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1959, file: !117, line: 563, column: 34)
!1970 = !DILocation(line: 564, column: 28, scope: !1969)
!1971 = !DILocation(line: 564, column: 17, scope: !1969)
!1972 = !DILocation(line: 564, column: 22, scope: !1969)
!1973 = !DILocation(line: 564, column: 4, scope: !1969)
!1974 = !DILocation(line: 565, column: 3, scope: !1969)
!1975 = !DILocation(line: 563, column: 9, scope: !1959)
!1976 = !DILocation(line: 563, column: 13, scope: !1959)
!1977 = !DILocation(line: 563, column: 19, scope: !1959)
!1978 = !DILocation(line: 563, column: 28, scope: !1959)
!1979 = !DILocation(line: 561, column: 3, scope: !1980)
!1980 = !DILexicalBlockFile(scope: !1959, file: !117, discriminator: 2)
!1981 = distinct !{!1981, !1982}
!1982 = !DILocation(line: 561, column: 3, scope: !1951)
!1983 = !DILocation(line: 566, column: 8, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1951, file: !117, line: 566, column: 7)
!1985 = !DILocation(line: 566, column: 14, scope: !1984)
!1986 = !DILocation(line: 566, column: 7, scope: !1984)
!1987 = !DILocation(line: 566, column: 24, scope: !1984)
!1988 = !DILocation(line: 566, column: 28, scope: !1989)
!1989 = !DILexicalBlockFile(scope: !1984, file: !117, discriminator: 1)
!1990 = !DILocation(line: 566, column: 30, scope: !1989)
!1991 = !DILocation(line: 566, column: 7, scope: !1989)
!1992 = !DILocation(line: 567, column: 29, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1984, file: !117, line: 566, column: 39)
!1994 = !DILocation(line: 567, column: 18, scope: !1993)
!1995 = !DILocation(line: 567, column: 23, scope: !1993)
!1996 = !DILocation(line: 567, column: 4, scope: !1993)
!1997 = !DILocation(line: 567, column: 10, scope: !1993)
!1998 = !DILocation(line: 567, column: 16, scope: !1993)
!1999 = !DILocation(line: 568, column: 4, scope: !1993)
!2000 = !DILocation(line: 571, column: 10, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1951, file: !117, line: 571, column: 3)
!2002 = !DILocation(line: 571, column: 8, scope: !2001)
!2003 = !DILocation(line: 572, column: 9, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2001, file: !117, line: 571, column: 3)
!2005 = !DILocation(line: 572, column: 15, scope: !2004)
!2006 = !DILocation(line: 572, column: 24, scope: !2004)
!2007 = !DILocation(line: 572, column: 29, scope: !2004)
!2008 = !DILocation(line: 572, column: 33, scope: !2009)
!2009 = !DILexicalBlockFile(scope: !2004, file: !117, discriminator: 1)
!2010 = !DILocation(line: 572, column: 35, scope: !2009)
!2011 = !DILocation(line: 571, column: 3, scope: !2012)
!2012 = !DILexicalBlockFile(scope: !2001, file: !117, discriminator: 1)
!2013 = !DILocation(line: 574, column: 14, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2004, file: !117, line: 573, column: 34)
!2015 = !DILocation(line: 574, column: 34, scope: !2014)
!2016 = !DILocation(line: 574, column: 17, scope: !2014)
!2017 = !DILocation(line: 574, column: 22, scope: !2014)
!2018 = !DILocation(line: 574, column: 4, scope: !2014)
!2019 = !DILocation(line: 575, column: 3, scope: !2014)
!2020 = !DILocation(line: 573, column: 9, scope: !2004)
!2021 = !DILocation(line: 573, column: 13, scope: !2004)
!2022 = !DILocation(line: 573, column: 19, scope: !2004)
!2023 = !DILocation(line: 573, column: 28, scope: !2004)
!2024 = !DILocation(line: 571, column: 3, scope: !2025)
!2025 = !DILexicalBlockFile(scope: !2004, file: !117, discriminator: 2)
!2026 = distinct !{!2026, !2027}
!2027 = !DILocation(line: 571, column: 3, scope: !1951)
!2028 = !DILocation(line: 576, column: 8, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !1951, file: !117, line: 576, column: 7)
!2030 = !DILocation(line: 576, column: 14, scope: !2029)
!2031 = !DILocation(line: 576, column: 7, scope: !2029)
!2032 = !DILocation(line: 576, column: 24, scope: !2029)
!2033 = !DILocation(line: 576, column: 28, scope: !2034)
!2034 = !DILexicalBlockFile(scope: !2029, file: !117, discriminator: 1)
!2035 = !DILocation(line: 576, column: 30, scope: !2034)
!2036 = !DILocation(line: 576, column: 7, scope: !2034)
!2037 = !DILocation(line: 577, column: 35, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2029, file: !117, line: 576, column: 38)
!2039 = !DILocation(line: 577, column: 18, scope: !2038)
!2040 = !DILocation(line: 577, column: 23, scope: !2038)
!2041 = !DILocation(line: 577, column: 4, scope: !2038)
!2042 = !DILocation(line: 577, column: 10, scope: !2038)
!2043 = !DILocation(line: 577, column: 16, scope: !2038)
!2044 = !DILocation(line: 578, column: 4, scope: !2038)
!2045 = !DILocation(line: 580, column: 2, scope: !1951)
!2046 = !DILocation(line: 581, column: 10, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !117, line: 581, column: 3)
!2048 = distinct !DILexicalBlock(scope: !1946, file: !117, line: 580, column: 9)
!2049 = !DILocation(line: 581, column: 32, scope: !2047)
!2050 = !DILocation(line: 581, column: 37, scope: !2047)
!2051 = !DILocation(line: 581, column: 15, scope: !2047)
!2052 = !DILocation(line: 581, column: 21, scope: !2047)
!2053 = !DILocation(line: 581, column: 30, scope: !2047)
!2054 = !DILocation(line: 581, column: 8, scope: !2047)
!2055 = !DILocation(line: 582, column: 9, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2047, file: !117, line: 581, column: 3)
!2057 = !DILocation(line: 582, column: 15, scope: !2056)
!2058 = !DILocation(line: 582, column: 24, scope: !2056)
!2059 = !DILocation(line: 582, column: 29, scope: !2056)
!2060 = !DILocation(line: 582, column: 33, scope: !2061)
!2061 = !DILexicalBlockFile(scope: !2056, file: !117, discriminator: 1)
!2062 = !DILocation(line: 582, column: 35, scope: !2061)
!2063 = !DILocation(line: 581, column: 3, scope: !2064)
!2064 = !DILexicalBlockFile(scope: !2047, file: !117, discriminator: 1)
!2065 = !DILocation(line: 584, column: 14, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2056, file: !117, line: 583, column: 34)
!2067 = !DILocation(line: 584, column: 28, scope: !2066)
!2068 = !DILocation(line: 584, column: 17, scope: !2066)
!2069 = !DILocation(line: 584, column: 22, scope: !2066)
!2070 = !DILocation(line: 584, column: 4, scope: !2066)
!2071 = !DILocation(line: 585, column: 3, scope: !2066)
!2072 = !DILocation(line: 583, column: 9, scope: !2056)
!2073 = !DILocation(line: 583, column: 13, scope: !2056)
!2074 = !DILocation(line: 583, column: 19, scope: !2056)
!2075 = !DILocation(line: 583, column: 28, scope: !2056)
!2076 = !DILocation(line: 581, column: 3, scope: !2077)
!2077 = !DILexicalBlockFile(scope: !2056, file: !117, discriminator: 2)
!2078 = distinct !{!2078, !2079}
!2079 = !DILocation(line: 581, column: 3, scope: !2048)
!2080 = !DILocation(line: 587, column: 7, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2048, file: !117, line: 587, column: 7)
!2082 = !DILocation(line: 587, column: 13, scope: !2081)
!2083 = !DILocation(line: 587, column: 7, scope: !2048)
!2084 = !DILocation(line: 588, column: 29, scope: !2081)
!2085 = !DILocation(line: 588, column: 18, scope: !2081)
!2086 = !DILocation(line: 588, column: 23, scope: !2081)
!2087 = !DILocation(line: 588, column: 4, scope: !2081)
!2088 = !DILocation(line: 588, column: 10, scope: !2081)
!2089 = !DILocation(line: 588, column: 16, scope: !2081)
!2090 = !DILocation(line: 590, column: 2, scope: !1691)
!2091 = !DILocation(line: 591, column: 1, scope: !1691)
!2092 = distinct !DISubprogram(name: "deflate_sync_flush", scope: !117, file: !117, line: 427, type: !1485, isLocal: true, isDefinition: true, scopeLine: 428, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!2093 = !DILocalVariable(name: "strm", arg: 1, scope: !2092, file: !117, line: 427, type: !129)
!2094 = !DILocation(line: 427, column: 54, scope: !2092)
!2095 = !DILocalVariable(name: "f", scope: !2092, file: !117, line: 429, type: !624)
!2096 = !DILocation(line: 429, column: 20, scope: !2092)
!2097 = !DILocation(line: 429, column: 25, scope: !2092)
!2098 = !DILocation(line: 429, column: 31, scope: !2092)
!2099 = !DILocalVariable(name: "data", scope: !2092, file: !117, line: 430, type: !74)
!2100 = !DILocation(line: 430, column: 10, scope: !2092)
!2101 = !DILocation(line: 432, column: 6, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2092, file: !117, line: 432, column: 6)
!2103 = !DILocation(line: 432, column: 12, scope: !2102)
!2104 = !DILocation(line: 432, column: 21, scope: !2102)
!2105 = !DILocation(line: 432, column: 6, scope: !2092)
!2106 = !DILocation(line: 433, column: 13, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2102, file: !117, line: 432, column: 27)
!2108 = !DILocation(line: 433, column: 3, scope: !2107)
!2109 = !DILocation(line: 434, column: 13, scope: !2107)
!2110 = !DILocation(line: 434, column: 3, scope: !2107)
!2111 = !DILocation(line: 435, column: 2, scope: !2107)
!2112 = !DILocation(line: 436, column: 10, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2102, file: !117, line: 435, column: 9)
!2114 = !DILocation(line: 436, column: 16, scope: !2113)
!2115 = !DILocation(line: 436, column: 29, scope: !2113)
!2116 = !DILocation(line: 436, column: 35, scope: !2113)
!2117 = !DILocation(line: 436, column: 24, scope: !2113)
!2118 = !DILocation(line: 436, column: 22, scope: !2113)
!2119 = !DILocation(line: 436, column: 8, scope: !2113)
!2120 = !DILocation(line: 437, column: 13, scope: !2113)
!2121 = !DILocation(line: 437, column: 16, scope: !2113)
!2122 = !DILocation(line: 437, column: 3, scope: !2113)
!2123 = !DILocation(line: 438, column: 13, scope: !2113)
!2124 = !DILocation(line: 438, column: 3, scope: !2113)
!2125 = !DILocation(line: 439, column: 7, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2113, file: !117, line: 439, column: 7)
!2127 = !DILocation(line: 439, column: 13, scope: !2126)
!2128 = !DILocation(line: 439, column: 22, scope: !2126)
!2129 = !DILocation(line: 439, column: 7, scope: !2113)
!2130 = !DILocation(line: 440, column: 14, scope: !2126)
!2131 = !DILocation(line: 440, column: 4, scope: !2126)
!2132 = !DILocation(line: 441, column: 3, scope: !2113)
!2133 = !DILocation(line: 441, column: 9, scope: !2113)
!2134 = !DILocation(line: 441, column: 18, scope: !2113)
!2135 = !DILocation(line: 444, column: 12, scope: !2092)
!2136 = !DILocation(line: 444, column: 2, scope: !2092)
!2137 = !DILocation(line: 445, column: 12, scope: !2092)
!2138 = !DILocation(line: 445, column: 2, scope: !2092)
!2139 = !DILocation(line: 446, column: 12, scope: !2092)
!2140 = !DILocation(line: 446, column: 2, scope: !2092)
!2141 = !DILocation(line: 447, column: 12, scope: !2092)
!2142 = !DILocation(line: 447, column: 2, scope: !2092)
!2143 = !DILocation(line: 448, column: 2, scope: !2092)
!2144 = !DILocation(line: 448, column: 8, scope: !2092)
!2145 = !DILocation(line: 448, column: 14, scope: !2092)
!2146 = !DILocation(line: 449, column: 2, scope: !2092)
!2147 = !DILocation(line: 449, column: 8, scope: !2092)
!2148 = !DILocation(line: 449, column: 17, scope: !2092)
!2149 = !DILocation(line: 450, column: 2, scope: !2092)
!2150 = distinct !DISubprogram(name: "zedc_deflateEnd", scope: !117, file: !117, line: 842, type: !580, isLocal: false, isDefinition: true, scopeLine: 843, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!2151 = !DILocalVariable(name: "strm", arg: 1, scope: !2150, file: !117, line: 842, type: !128)
!2152 = !DILocation(line: 842, column: 34, scope: !2150)
!2153 = !DILocalVariable(name: "zedc", scope: !2150, file: !117, line: 844, type: !30)
!2154 = !DILocation(line: 844, column: 16, scope: !2150)
!2155 = !DILocalVariable(name: "f", scope: !2150, file: !117, line: 845, type: !624)
!2156 = !DILocation(line: 845, column: 20, scope: !2150)
!2157 = !DILocation(line: 847, column: 7, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2150, file: !117, line: 847, column: 6)
!2159 = !DILocation(line: 847, column: 6, scope: !2150)
!2160 = !DILocation(line: 848, column: 3, scope: !2158)
!2161 = !DILocation(line: 850, column: 7, scope: !2150)
!2162 = !DILocation(line: 850, column: 13, scope: !2150)
!2163 = !DILocation(line: 850, column: 4, scope: !2150)
!2164 = !DILocation(line: 851, column: 24, scope: !2150)
!2165 = !DILocation(line: 851, column: 30, scope: !2150)
!2166 = !DILocation(line: 851, column: 9, scope: !2150)
!2167 = !DILocation(line: 851, column: 7, scope: !2150)
!2168 = !DILocation(line: 852, column: 7, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2150, file: !117, line: 852, column: 6)
!2170 = !DILocation(line: 852, column: 6, scope: !2150)
!2171 = !DILocation(line: 853, column: 3, scope: !2169)
!2172 = !DILocation(line: 855, column: 2, scope: !2150)
!2173 = !DILocation(line: 855, column: 21, scope: !2174)
!2174 = !DILexicalBlockFile(scope: !2150, file: !117, discriminator: 1)
!2175 = !DILocation(line: 855, column: 10, scope: !2174)
!2176 = !DILocation(line: 855, column: 9, scope: !2174)
!2177 = !DILocation(line: 855, column: 2, scope: !2174)
!2178 = !DILocalVariable(name: "data", scope: !2179, file: !117, line: 856, type: !74)
!2179 = distinct !DILexicalBlock(scope: !2150, file: !117, line: 855, column: 25)
!2180 = !DILocation(line: 856, column: 11, scope: !2179)
!2181 = !DILocation(line: 857, column: 12, scope: !2179)
!2182 = !DILocation(line: 857, column: 3, scope: !2179)
!2183 = !DILocation(line: 858, column: 3, scope: !2179)
!2184 = distinct !{!2184, !2183}
!2185 = !DILocation(line: 858, column: 12, scope: !2186)
!2186 = !DILexicalBlockFile(scope: !2187, file: !117, discriminator: 1)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !117, line: 858, column: 12)
!2188 = distinct !DILexicalBlock(scope: !2179, file: !117, line: 858, column: 6)
!2189 = !DILocation(line: 858, column: 30, scope: !2190)
!2190 = !DILexicalBlockFile(scope: !2187, file: !117, discriminator: 2)
!2191 = !DILocation(line: 858, column: 93, scope: !2190)
!2192 = !DILocation(line: 858, column: 103, scope: !2193)
!2193 = !DILexicalBlockFile(scope: !2190, file: !117, discriminator: 4)
!2194 = !DILocation(line: 858, column: 131, scope: !2190)
!2195 = !DILocation(line: 858, column: 22, scope: !2196)
!2196 = !DILexicalBlockFile(scope: !2190, file: !117, discriminator: 5)
!2197 = !DILocation(line: 858, column: 22, scope: !2190)
!2198 = !DILocation(line: 858, column: 138, scope: !2199)
!2199 = !DILexicalBlockFile(scope: !2188, file: !117, discriminator: 3)
!2200 = !DILocation(line: 855, column: 2, scope: !2201)
!2201 = !DILexicalBlockFile(scope: !2150, file: !117, discriminator: 2)
!2202 = distinct !{!2202, !2172}
!2203 = !DILocation(line: 861, column: 22, scope: !2150)
!2204 = !DILocation(line: 861, column: 2, scope: !2150)
!2205 = !DILocation(line: 862, column: 2, scope: !2150)
!2206 = !DILocation(line: 863, column: 1, scope: !2150)
!2207 = distinct !DISubprogram(name: "fifo_pop", scope: !195, file: !195, line: 101, type: !2208, isLocal: true, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{!36, !624, !144}
!2210 = !DILocalVariable(name: "fifo", arg: 1, scope: !2207, file: !195, line: 101, type: !624)
!2211 = !DILocation(line: 101, column: 46, scope: !2207)
!2212 = !DILocalVariable(name: "data", arg: 2, scope: !2207, file: !195, line: 101, type: !144)
!2213 = !DILocation(line: 101, column: 61, scope: !2207)
!2214 = !DILocation(line: 103, column: 17, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2207, file: !195, line: 103, column: 6)
!2216 = !DILocation(line: 103, column: 6, scope: !2215)
!2217 = !DILocation(line: 103, column: 6, scope: !2207)
!2218 = !DILocation(line: 104, column: 3, scope: !2215)
!2219 = !DILocation(line: 106, column: 21, scope: !2207)
!2220 = !DILocation(line: 106, column: 27, scope: !2207)
!2221 = !DILocation(line: 106, column: 10, scope: !2207)
!2222 = !DILocation(line: 106, column: 16, scope: !2207)
!2223 = !DILocation(line: 106, column: 3, scope: !2207)
!2224 = !DILocation(line: 106, column: 8, scope: !2207)
!2225 = !DILocation(line: 107, column: 15, scope: !2207)
!2226 = !DILocation(line: 107, column: 21, scope: !2207)
!2227 = !DILocation(line: 107, column: 25, scope: !2207)
!2228 = !DILocation(line: 107, column: 30, scope: !2207)
!2229 = !DILocation(line: 107, column: 2, scope: !2207)
!2230 = !DILocation(line: 107, column: 8, scope: !2207)
!2231 = !DILocation(line: 107, column: 12, scope: !2207)
!2232 = !DILocation(line: 108, column: 2, scope: !2207)
!2233 = !DILocation(line: 109, column: 1, scope: !2207)
!2234 = distinct !DISubprogram(name: "zedc_deflateSetHeader", scope: !117, file: !117, line: 865, type: !2235, isLocal: false, isDefinition: true, scopeLine: 866, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!2235 = !DISubroutineType(types: !2236)
!2236 = !{!36, !128, !2237}
!2237 = !DIDerivedType(tag: DW_TAG_typedef, name: "gzedc_headerp", file: !4, line: 187, baseType: !2238)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64, align: 64)
!2239 = !DIDerivedType(tag: DW_TAG_typedef, name: "gzedc_header", file: !4, line: 185, baseType: !239)
!2240 = !DILocalVariable(name: "strm", arg: 1, scope: !2234, file: !117, line: 865, type: !128)
!2241 = !DILocation(line: 865, column: 40, scope: !2234)
!2242 = !DILocalVariable(name: "head", arg: 2, scope: !2234, file: !117, line: 865, type: !2237)
!2243 = !DILocation(line: 865, column: 60, scope: !2234)
!2244 = !DILocation(line: 867, column: 20, scope: !2234)
!2245 = !DILocation(line: 867, column: 2, scope: !2234)
!2246 = !DILocation(line: 867, column: 8, scope: !2234)
!2247 = !DILocation(line: 867, column: 18, scope: !2234)
!2248 = !DILocation(line: 868, column: 2, scope: !2234)
!2249 = distinct !DISubprogram(name: "fifo_init", scope: !195, file: !195, line: 51, type: !2250, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{null, !624}
!2252 = !DILocalVariable(name: "fifo", arg: 1, scope: !2249, file: !195, line: 51, type: !624)
!2253 = !DILocation(line: 51, column: 48, scope: !2249)
!2254 = !DILocation(line: 53, column: 9, scope: !2249)
!2255 = !DILocation(line: 53, column: 15, scope: !2249)
!2256 = !DILocation(line: 53, column: 2, scope: !2249)
!2257 = !DILocation(line: 54, column: 14, scope: !2249)
!2258 = !DILocation(line: 54, column: 20, scope: !2249)
!2259 = !DILocation(line: 54, column: 25, scope: !2249)
!2260 = !DILocation(line: 54, column: 2, scope: !2249)
!2261 = !DILocation(line: 54, column: 8, scope: !2249)
!2262 = !DILocation(line: 54, column: 12, scope: !2249)
!2263 = !DILocation(line: 55, column: 1, scope: !2249)
!2264 = distinct !DISubprogram(name: "fifo_push", scope: !195, file: !195, line: 72, type: !2265, isLocal: true, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!36, !624, !74}
!2267 = !DILocalVariable(name: "fifo", arg: 1, scope: !2264, file: !195, line: 72, type: !624)
!2268 = !DILocation(line: 72, column: 47, scope: !2264)
!2269 = !DILocalVariable(name: "data", arg: 2, scope: !2264, file: !195, line: 72, type: !74)
!2270 = !DILocation(line: 72, column: 61, scope: !2264)
!2271 = !DILocation(line: 74, column: 16, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2264, file: !195, line: 74, column: 6)
!2273 = !DILocation(line: 74, column: 6, scope: !2272)
!2274 = !DILocation(line: 74, column: 22, scope: !2272)
!2275 = !DILocation(line: 74, column: 6, scope: !2264)
!2276 = !DILocation(line: 75, column: 3, scope: !2272)
!2277 = !DILocation(line: 77, column: 27, scope: !2264)
!2278 = !DILocation(line: 77, column: 13, scope: !2264)
!2279 = !DILocation(line: 77, column: 19, scope: !2264)
!2280 = !DILocation(line: 77, column: 2, scope: !2264)
!2281 = !DILocation(line: 77, column: 8, scope: !2264)
!2282 = !DILocation(line: 77, column: 25, scope: !2264)
!2283 = !DILocation(line: 78, column: 16, scope: !2264)
!2284 = !DILocation(line: 78, column: 22, scope: !2264)
!2285 = !DILocation(line: 78, column: 27, scope: !2264)
!2286 = !DILocation(line: 78, column: 32, scope: !2264)
!2287 = !DILocation(line: 78, column: 2, scope: !2264)
!2288 = !DILocation(line: 78, column: 8, scope: !2264)
!2289 = !DILocation(line: 78, column: 13, scope: !2264)
!2290 = !DILocation(line: 79, column: 2, scope: !2264)
!2291 = !DILocation(line: 80, column: 1, scope: !2264)
!2292 = distinct !DISubprogram(name: "fifo_push32", scope: !195, file: !195, line: 82, type: !2293, isLocal: true, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!36, !624, !57}
!2295 = !DILocalVariable(name: "fifo", arg: 1, scope: !2292, file: !195, line: 82, type: !624)
!2296 = !DILocation(line: 82, column: 49, scope: !2292)
!2297 = !DILocalVariable(name: "data", arg: 2, scope: !2292, file: !195, line: 82, type: !57)
!2298 = !DILocation(line: 82, column: 64, scope: !2292)
!2299 = !DILocalVariable(name: "i", scope: !2292, file: !195, line: 84, type: !58)
!2300 = !DILocation(line: 84, column: 15, scope: !2292)
!2301 = !DILocalVariable(name: "d", scope: !2292, file: !195, line: 88, type: !2302)
!2302 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2292, file: !195, line: 85, size: 32, align: 32, elements: !2303)
!2303 = !{!2304, !2305}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "u32", scope: !2302, file: !195, line: 86, baseType: !57, size: 32, align: 32)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "u8", scope: !2302, file: !195, line: 87, baseType: !2306, size: 32, align: 8)
!2306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 32, align: 8, elements: !2307)
!2307 = !{!2308}
!2308 = !DISubrange(count: 4)
!2309 = !DILocation(line: 88, column: 4, scope: !2292)
!2310 = !DILocation(line: 90, column: 16, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2292, file: !195, line: 90, column: 6)
!2312 = !DILocation(line: 90, column: 6, scope: !2311)
!2313 = !DILocation(line: 90, column: 22, scope: !2311)
!2314 = !DILocation(line: 90, column: 6, scope: !2292)
!2315 = !DILocation(line: 91, column: 3, scope: !2311)
!2316 = !DILocation(line: 93, column: 10, scope: !2292)
!2317 = !DILocation(line: 93, column: 4, scope: !2292)
!2318 = !DILocation(line: 93, column: 8, scope: !2292)
!2319 = !DILocation(line: 94, column: 9, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2292, file: !195, line: 94, column: 2)
!2321 = !DILocation(line: 94, column: 7, scope: !2320)
!2322 = !DILocation(line: 94, column: 14, scope: !2323)
!2323 = !DILexicalBlockFile(scope: !2324, file: !195, discriminator: 1)
!2324 = distinct !DILexicalBlock(scope: !2320, file: !195, line: 94, column: 2)
!2325 = !DILocation(line: 94, column: 16, scope: !2323)
!2326 = !DILocation(line: 94, column: 2, scope: !2323)
!2327 = !DILocation(line: 95, column: 33, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2324, file: !195, line: 94, column: 61)
!2329 = !DILocation(line: 95, column: 28, scope: !2328)
!2330 = !DILocation(line: 95, column: 30, scope: !2328)
!2331 = !DILocation(line: 95, column: 14, scope: !2328)
!2332 = !DILocation(line: 95, column: 20, scope: !2328)
!2333 = !DILocation(line: 95, column: 3, scope: !2328)
!2334 = !DILocation(line: 95, column: 9, scope: !2328)
!2335 = !DILocation(line: 95, column: 26, scope: !2328)
!2336 = !DILocation(line: 96, column: 17, scope: !2328)
!2337 = !DILocation(line: 96, column: 23, scope: !2328)
!2338 = !DILocation(line: 96, column: 28, scope: !2328)
!2339 = !DILocation(line: 96, column: 33, scope: !2328)
!2340 = !DILocation(line: 96, column: 3, scope: !2328)
!2341 = !DILocation(line: 96, column: 9, scope: !2328)
!2342 = !DILocation(line: 96, column: 14, scope: !2328)
!2343 = !DILocation(line: 97, column: 2, scope: !2328)
!2344 = !DILocation(line: 94, column: 57, scope: !2345)
!2345 = !DILexicalBlockFile(scope: !2324, file: !195, discriminator: 2)
!2346 = !DILocation(line: 94, column: 2, scope: !2345)
!2347 = distinct !{!2347, !2348}
!2348 = !DILocation(line: 94, column: 2, scope: !2292)
!2349 = !DILocation(line: 98, column: 2, scope: !2292)
!2350 = !DILocation(line: 99, column: 1, scope: !2292)
!2351 = distinct !DISubprogram(name: "fifo_free", scope: !195, file: !195, line: 67, type: !2352, isLocal: true, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!58, !624}
!2354 = !DILocalVariable(name: "fifo", arg: 1, scope: !2351, file: !195, line: 67, type: !624)
!2355 = !DILocation(line: 67, column: 56, scope: !2351)
!2356 = !DILocation(line: 69, column: 25, scope: !2351)
!2357 = !DILocation(line: 69, column: 15, scope: !2351)
!2358 = !DILocation(line: 69, column: 13, scope: !2351)
!2359 = !DILocation(line: 69, column: 31, scope: !2351)
!2360 = !DILocation(line: 69, column: 2, scope: !2351)
!2361 = distinct !DISubprogram(name: "fifo_used", scope: !195, file: !195, line: 62, type: !2352, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!2362 = !DILocalVariable(name: "fifo", arg: 1, scope: !2361, file: !195, line: 62, type: !624)
!2363 = !DILocation(line: 62, column: 56, scope: !2361)
!2364 = !DILocation(line: 64, column: 11, scope: !2361)
!2365 = !DILocation(line: 64, column: 17, scope: !2361)
!2366 = !DILocation(line: 64, column: 24, scope: !2361)
!2367 = !DILocation(line: 64, column: 30, scope: !2361)
!2368 = !DILocation(line: 64, column: 22, scope: !2361)
!2369 = !DILocation(line: 64, column: 35, scope: !2361)
!2370 = !DILocation(line: 64, column: 2, scope: !2361)
!2371 = distinct !DISubprogram(name: "push_output_byte", scope: !117, file: !117, line: 56, type: !2372, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!36, !129, !74}
!2374 = !DILocalVariable(name: "strm", arg: 1, scope: !2371, file: !117, line: 56, type: !129)
!2375 = !DILocation(line: 56, column: 58, scope: !2371)
!2376 = !DILocalVariable(name: "data", arg: 2, scope: !2371, file: !117, line: 56, type: !74)
!2377 = !DILocation(line: 56, column: 72, scope: !2371)
!2378 = !DILocation(line: 58, column: 6, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2371, file: !117, line: 58, column: 6)
!2380 = !DILocation(line: 58, column: 12, scope: !2379)
!2381 = !DILocation(line: 58, column: 22, scope: !2379)
!2382 = !DILocation(line: 58, column: 6, scope: !2371)
!2383 = !DILocation(line: 59, column: 3, scope: !2379)
!2384 = !DILocation(line: 61, column: 20, scope: !2371)
!2385 = !DILocation(line: 61, column: 3, scope: !2371)
!2386 = !DILocation(line: 61, column: 9, scope: !2371)
!2387 = !DILocation(line: 61, column: 18, scope: !2371)
!2388 = !DILocation(line: 62, column: 2, scope: !2371)
!2389 = !DILocation(line: 62, column: 8, scope: !2371)
!2390 = !DILocation(line: 62, column: 17, scope: !2371)
!2391 = !DILocation(line: 63, column: 2, scope: !2371)
!2392 = !DILocation(line: 63, column: 8, scope: !2371)
!2393 = !DILocation(line: 63, column: 16, scope: !2371)
!2394 = !DILocation(line: 64, column: 2, scope: !2371)
!2395 = !DILocation(line: 64, column: 8, scope: !2371)
!2396 = !DILocation(line: 64, column: 17, scope: !2371)
!2397 = !DILocation(line: 65, column: 2, scope: !2371)
!2398 = !DILocation(line: 66, column: 1, scope: !2371)
!2399 = distinct !DISubprogram(name: "__arch_swab64", scope: !2400, file: !2400, line: 14, type: !1654, isLocal: true, isDefinition: true, scopeLine: 15, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!2400 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/asm/swab.h", directory: "/home/lichi/Desktop")
!2401 = !DILocalVariable(name: "val", arg: 1, scope: !2399, file: !2400, line: 14, type: !103)
!2402 = !DILocation(line: 14, column: 45, scope: !2399)
!2403 = !DILocation(line: 30, column: 42, scope: !2399)
!2404 = !DILocation(line: 30, column: 2, scope: !2399)
!2405 = !{i32 99502}
!2406 = !DILocation(line: 31, column: 9, scope: !2399)
!2407 = !DILocation(line: 31, column: 2, scope: !2399)
!2408 = distinct !DISubprogram(name: "__arch_swab32", scope: !2400, file: !2400, line: 7, type: !1662, isLocal: true, isDefinition: true, scopeLine: 8, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!2409 = !DILocalVariable(name: "val", arg: 1, scope: !2408, file: !2400, line: 7, type: !107)
!2410 = !DILocation(line: 7, column: 45, scope: !2408)
!2411 = !DILocation(line: 9, column: 42, scope: !2408)
!2412 = !DILocation(line: 9, column: 2, scope: !2408)
!2413 = !{i32 99334}
!2414 = !DILocation(line: 10, column: 9, scope: !2408)
!2415 = !DILocation(line: 10, column: 2, scope: !2408)
