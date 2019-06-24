; ModuleID = '/home/lichi/Desktop/genwqe/[task]lib--__libzHW.o/[inter]lib--inflate.o.i'
source_filename = "/home/lichi/Desktop/genwqe/[task]lib--__libzHW.o/[inter]lib--inflate.o.i"
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
%struct.zedc_asiv_infl = type { i64, i32, i32, i64, i32, i32, i64, i32, i32, i64, i32, i16, i8, i8, i64, i32, i32, i64, i64 }
%struct.zedc_asv_infl = type { i16, i16, i8, i8, i8, i8, i32, i8, i8, i16, i32, i32, i32, i32, [3 x i64], i8, i8, i16, i16, i16 }
%struct.zedc_dev_t = type { i32, i32, %struct.card_dev_t*, i32, i32, i32 }
%struct.card_dev_t = type opaque

@.str = private unnamed_addr constant [15 x i8] c"%s_in_buff.bin\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%s_out_buf.bin\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%s_in_dict.bin\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"%s_out_dict.bin\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"%s_inp_scratch.bin\00", align 1
@zedc_log = external global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [48 x i8] c"%08x.%08x %s:%u: Error: input buffer too large\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"inflate.c\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"%08x.%08x %s:%u: Error: inflate failed rc=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"%08x.%08x %s:%u: Error: inflate ZEDC_NEED_DICT\0A\00", align 1
@.str.9 = private unnamed_addr constant [94 x i8] c"%08x.%08x %s:%u: Error: inflate failed rc=%d\0ADDCB returned (RETC=%03x ATTN=%04x PROGR=%x) %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"ERR\00", align 1
@.str.12 = private unnamed_addr constant [78 x i8] c"%08x.%08x %s:%u: Warn: [%s] What a pity, we guessed wrong and need to repeat\0A\00", align 1
@__func__.zedc_inflate = private unnamed_addr constant [13 x i8] c"zedc_inflate\00", align 1
@.str.13 = private unnamed_addr constant [61 x i8] c"%08x.%08x %s:%u: Error: inflate scratch update failed rc=%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [56 x i8] c"%08x.%08x %s:%u: Error: OUTP_RETURNED too large (0x%x)\0A\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"%08x.%08x %s:%u: Error: consumed=%u/avail_in=%u\0A\00", align 1
@.str.16 = private unnamed_addr constant [94 x i8] c"%08x.%08x %s:%u: Warn: [%s] input not completely processed (avail_in=%d avail_out=%d zrc=%d)\0A\00", align 1
@.str.17 = private unnamed_addr constant [52 x i8] c"%08x.%08x %s:%u: Error: preserving %s %d bytes ...\0A\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.19 = private unnamed_addr constant [49 x i8] c"%08x.%08x %s:%u: Error: Cannot open file %s: %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [51 x i8] c"%08x.%08x %s:%u: Error: Cannot write all data: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [72 x i8] c"%08x.%08x %s:%u: Error: invalid 'obytes_in_dict' ZEDC_ERR_DICT_OVERRUN\0A\00", align 1
@.str.22 = private unnamed_addr constant [57 x i8] c"%08x.%08x %s:%u: Error: ADLER32 mismatch: %08llx/%08llx\0A\00", align 1
@.str.23 = private unnamed_addr constant [54 x i8] c"%08x.%08x %s:%u: Error: ZLIB header invalid (FCHECK)\0A\00", align 1
@.str.24 = private unnamed_addr constant [51 x i8] c"%08x.%08x %s:%u: Error: ZLIB header invalid (CMF)\0A\00", align 1
@.str.25 = private unnamed_addr constant [93 x i8] c"%08x.%08x %s:%u: Warn: [%s] in_hdr_scratch_len: 0x%llx not consistent (0x%x 0x%x 0x%x 0x%x)\0A\00", align 1
@__func__.set_inflate_asiv = private unnamed_addr constant [17 x i8] c"set_inflate_asiv\00", align 1
@.str.26 = private unnamed_addr constant [72 x i8] c"%08x.%08x %s:%u: Warn: [%s] in_scratch_len=%d exceeds ZEDC_TREE_LEN=%d\0A\00", align 1
@.str.27 = private unnamed_addr constant [50 x i8] c"%08x.%08x %s:%u: Error: scratch buffer too small\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @zedc_inflate_pending_output(%struct.zedc_stream_s*) #0 !dbg !127 {
  %2 = alloca %struct.zedc_stream_s*, align 8
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %2, metadata !288, metadata !289), !dbg !290
  %3 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !291
  %4 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %3, i32 0, i32 62, !dbg !292
  %5 = load i16, i16* %4, align 4, !dbg !292
  %6 = zext i16 %5 to i32, !dbg !291
  ret i32 %6, !dbg !293
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @zedc_read_pending_output(%struct.zedc_stream_s*, i8*, i32) #0 !dbg !294 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zedc_stream_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %5, metadata !297, metadata !289), !dbg !298
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !299, metadata !289), !dbg !300
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !301, metadata !289), !dbg !302
  call void @llvm.dbg.declare(metadata i8** %8, metadata !303, metadata !289), !dbg !304
  call void @llvm.dbg.declare(metadata i32* %9, metadata !305, metadata !289), !dbg !306
  store i32 0, i32* %9, align 4, !dbg !306
  %10 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !307
  %11 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %10, i32 0, i32 62, !dbg !309
  %12 = load i16, i16* %11, align 4, !dbg !309
  %13 = zext i16 %12 to i32, !dbg !307
  %14 = icmp eq i32 %13, 0, !dbg !310
  br i1 %14, label %15, label %16, !dbg !311

; <label>:15:                                     ; preds = %3
  store i32 0, i32* %4, align 4, !dbg !312
  br label %84, !dbg !312

; <label>:16:                                     ; preds = %3
  %17 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !313
  %18 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %17, i32 0, i32 60, !dbg !315
  %19 = load i16, i16* %18, align 8, !dbg !315
  %20 = zext i16 %19 to i32, !dbg !313
  %21 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !316
  %22 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %21, i32 0, i32 62, !dbg !317
  %23 = load i16, i16* %22, align 4, !dbg !317
  %24 = zext i16 %23 to i32, !dbg !316
  %25 = icmp slt i32 %20, %24, !dbg !318
  br i1 %25, label %26, label %27, !dbg !319

; <label>:26:                                     ; preds = %16
  store i32 -317, i32* %4, align 4, !dbg !320
  br label %84, !dbg !320

; <label>:27:                                     ; preds = %16
  %28 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !321
  %29 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %28, i32 0, i32 35, !dbg !322
  %30 = load i32, i32* %29, align 8, !dbg !322
  %31 = sext i32 %30 to i64, !dbg !323
  %32 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !323
  %33 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %32, i32 0, i32 34, !dbg !324
  %34 = load %struct.zedc_wsp*, %struct.zedc_wsp** %33, align 8, !dbg !324
  %35 = getelementptr inbounds %struct.zedc_wsp, %struct.zedc_wsp* %34, i32 0, i32 0, !dbg !325
  %36 = getelementptr inbounds [2 x [32784 x i8]], [2 x [32784 x i8]]* %35, i64 0, i64 %31, !dbg !323
  %37 = getelementptr inbounds [32784 x i8], [32784 x i8]* %36, i32 0, i32 0, !dbg !323
  %38 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !326
  %39 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %38, i32 0, i32 61, !dbg !327
  %40 = load i8, i8* %39, align 2, !dbg !327
  %41 = zext i8 %40 to i32, !dbg !326
  %42 = sext i32 %41 to i64, !dbg !328
  %43 = getelementptr inbounds i8, i8* %37, i64 %42, !dbg !328
  %44 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !329
  %45 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %44, i32 0, i32 60, !dbg !330
  %46 = load i16, i16* %45, align 8, !dbg !330
  %47 = zext i16 %46 to i32, !dbg !329
  %48 = sext i32 %47 to i64, !dbg !331
  %49 = getelementptr inbounds i8, i8* %43, i64 %48, !dbg !331
  %50 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !332
  %51 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %50, i32 0, i32 62, !dbg !333
  %52 = load i16, i16* %51, align 4, !dbg !333
  %53 = zext i16 %52 to i32, !dbg !332
  %54 = sext i32 %53 to i64, !dbg !334
  %55 = sub i64 0, %54, !dbg !334
  %56 = getelementptr inbounds i8, i8* %49, i64 %55, !dbg !334
  store i8* %56, i8** %8, align 8, !dbg !335
  br label %57, !dbg !336

; <label>:57:                                     ; preds = %68, %27
  %58 = load i32, i32* %7, align 4, !dbg !337
  %59 = icmp ne i32 %58, 0, !dbg !337
  br i1 %59, label %60, label %66, !dbg !339

; <label>:60:                                     ; preds = %57
  %61 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !340
  %62 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %61, i32 0, i32 62, !dbg !342
  %63 = load i16, i16* %62, align 4, !dbg !342
  %64 = zext i16 %63 to i32, !dbg !340
  %65 = icmp ne i32 %64, 0, !dbg !343
  br label %66

; <label>:66:                                     ; preds = %60, %57
  %67 = phi i1 [ false, %57 ], [ %65, %60 ]
  br i1 %67, label %68, label %82, !dbg !344

; <label>:68:                                     ; preds = %66
  %69 = load i8*, i8** %8, align 8, !dbg !346
  %70 = getelementptr inbounds i8, i8* %69, i32 1, !dbg !346
  store i8* %70, i8** %8, align 8, !dbg !346
  %71 = load i8, i8* %69, align 1, !dbg !348
  %72 = load i8*, i8** %6, align 8, !dbg !349
  %73 = getelementptr inbounds i8, i8* %72, i32 1, !dbg !349
  store i8* %73, i8** %6, align 8, !dbg !349
  store i8 %71, i8* %72, align 1, !dbg !350
  %74 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !351
  %75 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %74, i32 0, i32 62, !dbg !352
  %76 = load i16, i16* %75, align 4, !dbg !353
  %77 = add i16 %76, -1, !dbg !353
  store i16 %77, i16* %75, align 4, !dbg !353
  %78 = load i32, i32* %7, align 4, !dbg !354
  %79 = add i32 %78, -1, !dbg !354
  store i32 %79, i32* %7, align 4, !dbg !354
  %80 = load i32, i32* %9, align 4, !dbg !355
  %81 = add i32 %80, 1, !dbg !355
  store i32 %81, i32* %9, align 4, !dbg !355
  br label %57, !dbg !356, !llvm.loop !358

; <label>:82:                                     ; preds = %66
  %83 = load i32, i32* %9, align 4, !dbg !359
  store i32 %83, i32* %4, align 4, !dbg !360
  br label %84, !dbg !360

; <label>:84:                                     ; preds = %82, %26, %15
  %85 = load i32, i32* %4, align 4, !dbg !361
  ret i32 %85, !dbg !361
}

; Function Attrs: nounwind uwtable
define i32 @zedc_inflateSaveBuffers(%struct.zedc_stream_s*, i8*) #0 !dbg !362 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zedc_stream_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.zedc_asiv_infl*, align 8
  %8 = alloca %struct.ddcb_cmd*, align 8
  %9 = alloca [256 x i8], align 16
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %4, metadata !368, metadata !289), !dbg !369
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !370, metadata !289), !dbg !371
  call void @llvm.dbg.declare(metadata i32* %6, metadata !372, metadata !289), !dbg !373
  call void @llvm.dbg.declare(metadata %struct.zedc_asiv_infl** %7, metadata !374, metadata !289), !dbg !375
  call void @llvm.dbg.declare(metadata %struct.ddcb_cmd** %8, metadata !376, metadata !289), !dbg !378
  call void @llvm.dbg.declare(metadata [256 x i8]* %9, metadata !379, metadata !289), !dbg !381
  %10 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !382
  %11 = icmp ne %struct.zedc_stream_s* %10, null, !dbg !382
  br i1 %11, label %13, label %12, !dbg !384

; <label>:12:                                     ; preds = %2
  store i32 -2, i32* %3, align 4, !dbg !385
  br label %116, !dbg !385

; <label>:13:                                     ; preds = %2
  %14 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !386
  %15 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %14, i32 0, i32 16, !dbg !387
  store %struct.ddcb_cmd* %15, %struct.ddcb_cmd** %8, align 8, !dbg !388
  %16 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %8, align 8, !dbg !389
  %17 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %16, i32 0, i32 16, !dbg !390
  %18 = bitcast %union.anon* %17 to %struct.anon*, !dbg !390
  %19 = getelementptr inbounds %struct.anon, %struct.anon* %18, i32 0, i32 1, !dbg !390
  %20 = bitcast [96 x i8]* %19 to %struct.zedc_asiv_infl*, !dbg !391
  store %struct.zedc_asiv_infl* %20, %struct.zedc_asiv_infl** %7, align 8, !dbg !392
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i32 0, i32 0, !dbg !393
  %22 = load i8*, i8** %5, align 8, !dbg !394
  %23 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %21, i64 255, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* %22) #7, !dbg !395
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i32 0, i32 0, !dbg !396
  %25 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %7, align 8, !dbg !397
  %26 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %25, i32 0, i32 0, !dbg !398
  %27 = load i64, i64* %26, align 1, !dbg !398
  %28 = call i64 @__fswab64(i64 %27), !dbg !399
  %29 = inttoptr i64 %28 to i8*, !dbg !400
  %30 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %7, align 8, !dbg !401
  %31 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %30, i32 0, i32 1, !dbg !402
  %32 = load i32, i32* %31, align 1, !dbg !402
  %33 = call i32 @__fswab32(i32 %32), !dbg !403
  %34 = call i32 @__save_buf_to_file(i8* %24, i8* %29, i32 %33), !dbg !404
  store i32 %34, i32* %6, align 4, !dbg !405
  %35 = load i32, i32* %6, align 4, !dbg !406
  %36 = icmp ne i32 %35, 0, !dbg !408
  br i1 %36, label %37, label %39, !dbg !409

; <label>:37:                                     ; preds = %13
  %38 = load i32, i32* %6, align 4, !dbg !410
  store i32 %38, i32* %3, align 4, !dbg !411
  br label %116, !dbg !411

; <label>:39:                                     ; preds = %13
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i32 0, i32 0, !dbg !412
  %41 = load i8*, i8** %5, align 8, !dbg !413
  %42 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %40, i64 255, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* %41) #7, !dbg !414
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i32 0, i32 0, !dbg !415
  %44 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %7, align 8, !dbg !416
  %45 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %44, i32 0, i32 3, !dbg !417
  %46 = load i64, i64* %45, align 1, !dbg !417
  %47 = call i64 @__fswab64(i64 %46), !dbg !418
  %48 = inttoptr i64 %47 to i8*, !dbg !419
  %49 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %7, align 8, !dbg !420
  %50 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %49, i32 0, i32 4, !dbg !421
  %51 = load i32, i32* %50, align 1, !dbg !421
  %52 = call i32 @__fswab32(i32 %51), !dbg !422
  %53 = call i32 @__save_buf_to_file(i8* %43, i8* %48, i32 %52), !dbg !423
  store i32 %53, i32* %6, align 4, !dbg !424
  %54 = load i32, i32* %6, align 4, !dbg !425
  %55 = icmp ne i32 %54, 0, !dbg !427
  br i1 %55, label %56, label %58, !dbg !428

; <label>:56:                                     ; preds = %39
  %57 = load i32, i32* %6, align 4, !dbg !429
  store i32 %57, i32* %3, align 4, !dbg !430
  br label %116, !dbg !430

; <label>:58:                                     ; preds = %39
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i32 0, i32 0, !dbg !431
  %60 = load i8*, i8** %5, align 8, !dbg !432
  %61 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %59, i64 255, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* %60) #7, !dbg !433
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i32 0, i32 0, !dbg !434
  %63 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %7, align 8, !dbg !435
  %64 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %63, i32 0, i32 6, !dbg !436
  %65 = load i64, i64* %64, align 1, !dbg !436
  %66 = call i64 @__fswab64(i64 %65), !dbg !437
  %67 = inttoptr i64 %66 to i8*, !dbg !438
  %68 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %7, align 8, !dbg !439
  %69 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %68, i32 0, i32 7, !dbg !440
  %70 = load i32, i32* %69, align 1, !dbg !440
  %71 = call i32 @__fswab32(i32 %70), !dbg !441
  %72 = call i32 @__save_buf_to_file(i8* %62, i8* %67, i32 %71), !dbg !442
  store i32 %72, i32* %6, align 4, !dbg !443
  %73 = load i32, i32* %6, align 4, !dbg !444
  %74 = icmp ne i32 %73, 0, !dbg !446
  br i1 %74, label %75, label %77, !dbg !447

; <label>:75:                                     ; preds = %58
  %76 = load i32, i32* %6, align 4, !dbg !448
  store i32 %76, i32* %3, align 4, !dbg !449
  br label %116, !dbg !449

; <label>:77:                                     ; preds = %58
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i32 0, i32 0, !dbg !450
  %79 = load i8*, i8** %5, align 8, !dbg !451
  %80 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %78, i64 255, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i8* %79) #7, !dbg !452
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i32 0, i32 0, !dbg !453
  %82 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %7, align 8, !dbg !454
  %83 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %82, i32 0, i32 14, !dbg !455
  %84 = load i64, i64* %83, align 1, !dbg !455
  %85 = call i64 @__fswab64(i64 %84), !dbg !456
  %86 = inttoptr i64 %85 to i8*, !dbg !457
  %87 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %7, align 8, !dbg !458
  %88 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %87, i32 0, i32 15, !dbg !459
  %89 = load i32, i32* %88, align 1, !dbg !459
  %90 = call i32 @__fswab32(i32 %89), !dbg !460
  %91 = call i32 @__save_buf_to_file(i8* %81, i8* %86, i32 %90), !dbg !461
  store i32 %91, i32* %6, align 4, !dbg !462
  %92 = load i32, i32* %6, align 4, !dbg !463
  %93 = icmp ne i32 %92, 0, !dbg !465
  br i1 %93, label %94, label %96, !dbg !466

; <label>:94:                                     ; preds = %77
  %95 = load i32, i32* %6, align 4, !dbg !467
  store i32 %95, i32* %3, align 4, !dbg !468
  br label %116, !dbg !468

; <label>:96:                                     ; preds = %77
  %97 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i32 0, i32 0, !dbg !469
  %98 = load i8*, i8** %5, align 8, !dbg !470
  %99 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %97, i64 255, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i8* %98) #7, !dbg !471
  %100 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i32 0, i32 0, !dbg !472
  %101 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %7, align 8, !dbg !473
  %102 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %101, i32 0, i32 9, !dbg !474
  %103 = load i64, i64* %102, align 1, !dbg !474
  %104 = call i64 @__fswab64(i64 %103), !dbg !475
  %105 = inttoptr i64 %104 to i8*, !dbg !476
  %106 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %7, align 8, !dbg !477
  %107 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %106, i32 0, i32 10, !dbg !478
  %108 = load i32, i32* %107, align 1, !dbg !478
  %109 = call i32 @__fswab32(i32 %108), !dbg !479
  %110 = call i32 @__save_buf_to_file(i8* %100, i8* %105, i32 %109), !dbg !480
  store i32 %110, i32* %6, align 4, !dbg !481
  %111 = load i32, i32* %6, align 4, !dbg !482
  %112 = icmp ne i32 %111, 0, !dbg !484
  br i1 %112, label %113, label %115, !dbg !485

; <label>:113:                                    ; preds = %96
  %114 = load i32, i32* %6, align 4, !dbg !486
  store i32 %114, i32* %3, align 4, !dbg !487
  br label %116, !dbg !487

; <label>:115:                                    ; preds = %96
  store i32 0, i32* %3, align 4, !dbg !488
  br label %116, !dbg !488

; <label>:116:                                    ; preds = %115, %113, %94, %75, %56, %37, %12
  %117 = load i32, i32* %3, align 4, !dbg !489
  ret i32 %117, !dbg !489
}

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i32 @__save_buf_to_file(i8*, i8*, i32) #0 !dbg !490 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !493, metadata !289), !dbg !494
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !495, metadata !289), !dbg !496
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !497, metadata !289), !dbg !498
  call void @llvm.dbg.declare(metadata i32* %8, metadata !499, metadata !289), !dbg !500
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %9, metadata !501, metadata !289), !dbg !558
  %10 = load i8*, i8** %6, align 8, !dbg !559
  %11 = icmp eq i8* %10, null, !dbg !561
  br i1 %11, label %12, label %13, !dbg !562

; <label>:12:                                     ; preds = %3
  store i32 -308, i32* %4, align 4, !dbg !563
  br label %75, !dbg !563

; <label>:13:                                     ; preds = %3
  %14 = load i32, i32* %7, align 4, !dbg !564
  %15 = icmp eq i32 %14, 0, !dbg !566
  br i1 %15, label %16, label %17, !dbg !567

; <label>:16:                                     ; preds = %13
  store i32 -308, i32* %4, align 4, !dbg !568
  br label %75, !dbg !568

; <label>:17:                                     ; preds = %13
  br label %18, !dbg !569, !llvm.loop !570

; <label>:18:                                     ; preds = %17
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !571
  %20 = icmp ne %struct._IO_FILE* %19, null, !dbg !571
  br i1 %20, label %21, label %28, !dbg !571

; <label>:21:                                     ; preds = %18
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !575
  %23 = call i32 @getpid() #7, !dbg !577
  %24 = call i32 @gettid(), !dbg !578
  %25 = load i8*, i8** %5, align 8, !dbg !580
  %26 = load i32, i32* %7, align 4, !dbg !581
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.17, i32 0, i32 0), i32 %23, i32 %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i32 959, i8* %25, i32 %26), !dbg !582
  br label %28, !dbg !584

; <label>:28:                                     ; preds = %21, %18
  br label %29, !dbg !585

; <label>:29:                                     ; preds = %28
  %30 = load i8*, i8** %5, align 8, !dbg !587
  %31 = call %struct._IO_FILE* @fopen(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0)), !dbg !588
  store %struct._IO_FILE* %31, %struct._IO_FILE** %9, align 8, !dbg !589
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !590
  %33 = icmp ne %struct._IO_FILE* %32, null, !dbg !590
  br i1 %33, label %49, label %34, !dbg !592

; <label>:34:                                     ; preds = %29
  br label %35, !dbg !593, !llvm.loop !595

; <label>:35:                                     ; preds = %34
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !596
  %37 = icmp ne %struct._IO_FILE* %36, null, !dbg !596
  br i1 %37, label %38, label %47, !dbg !596

; <label>:38:                                     ; preds = %35
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !600
  %40 = call i32 @getpid() #7, !dbg !602
  %41 = call i32 @gettid(), !dbg !603
  %42 = load i8*, i8** %5, align 8, !dbg !605
  %43 = call i32* @__errno_location() #1, !dbg !606
  %44 = load i32, i32* %43, align 4, !dbg !608
  %45 = call i8* @strerror(i32 %44) #7, !dbg !609
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.19, i32 0, i32 0), i32 %40, i32 %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i32 963, i8* %42, i8* %45), !dbg !611
  br label %47, !dbg !613

; <label>:47:                                     ; preds = %38, %35
  br label %48, !dbg !614

; <label>:48:                                     ; preds = %47
  store i32 -1, i32* %4, align 4, !dbg !616
  br label %75, !dbg !616

; <label>:49:                                     ; preds = %29
  %50 = load i8*, i8** %6, align 8, !dbg !617
  %51 = load i32, i32* %7, align 4, !dbg !618
  %52 = sext i32 %51 to i64, !dbg !618
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !619
  %54 = call i64 @fwrite(i8* %50, i64 %52, i64 1, %struct._IO_FILE* %53), !dbg !620
  %55 = trunc i64 %54 to i32, !dbg !620
  store i32 %55, i32* %8, align 4, !dbg !621
  %56 = load i32, i32* %8, align 4, !dbg !622
  %57 = icmp ne i32 %56, 1, !dbg !624
  br i1 %57, label %58, label %72, !dbg !625

; <label>:58:                                     ; preds = %49
  br label %59, !dbg !626, !llvm.loop !628

; <label>:59:                                     ; preds = %58
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !629
  %61 = icmp ne %struct._IO_FILE* %60, null, !dbg !629
  br i1 %61, label %62, label %68, !dbg !629

; <label>:62:                                     ; preds = %59
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !633
  %64 = call i32 @getpid() #7, !dbg !635
  %65 = call i32 @gettid(), !dbg !636
  %66 = load i32, i32* %8, align 4, !dbg !638
  %67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.20, i32 0, i32 0), i32 %64, i32 %65, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i32 968, i32 %66), !dbg !639
  br label %68, !dbg !641

; <label>:68:                                     ; preds = %62, %59
  br label %69, !dbg !642

; <label>:69:                                     ; preds = %68
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !644
  %71 = call i32 @fclose(%struct._IO_FILE* %70), !dbg !645
  store i32 -1, i32* %4, align 4, !dbg !646
  br label %75, !dbg !646

; <label>:72:                                     ; preds = %49
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !647
  %74 = call i32 @fclose(%struct._IO_FILE* %73), !dbg !648
  store i32 0, i32* %4, align 4, !dbg !649
  br label %75, !dbg !649

; <label>:75:                                     ; preds = %72, %69, %48, %16, %12
  %76 = load i32, i32* %4, align 4, !dbg !650
  ret i32 %76, !dbg !650
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @__fswab64(i64) #3 !dbg !651 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !655, metadata !289), !dbg !656
  %3 = load i64, i64* %2, align 8, !dbg !657
  %4 = call i64 @__arch_swab64(i64 %3), !dbg !658
  ret i64 %4, !dbg !659
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__fswab32(i32) #3 !dbg !660 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !663, metadata !289), !dbg !664
  %3 = load i32, i32* %2, align 4, !dbg !665
  %4 = call i32 @__arch_swab32(i32 %3), !dbg !666
  ret i32 %4, !dbg !667
}

; Function Attrs: nounwind uwtable
define i32 @zedc_inflate(%struct.zedc_stream_s*, i32) #0 !dbg !668 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zedc_stream_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.zedc_asiv_infl*, align 8
  %10 = alloca %struct.zedc_asv_infl*, align 8
  %11 = alloca %struct.zedc_dev_t*, align 8
  %12 = alloca %struct.ddcb_cmd*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.ddcb_cmd*, align 8
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %4, metadata !671, metadata !289), !dbg !672
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !673, metadata !289), !dbg !674
  call void @llvm.dbg.declare(metadata i32* %6, metadata !675, metadata !289), !dbg !676
  call void @llvm.dbg.declare(metadata i32* %7, metadata !677, metadata !289), !dbg !678
  call void @llvm.dbg.declare(metadata i32* %8, metadata !679, metadata !289), !dbg !680
  call void @llvm.dbg.declare(metadata %struct.zedc_asiv_infl** %9, metadata !681, metadata !289), !dbg !682
  call void @llvm.dbg.declare(metadata %struct.zedc_asv_infl** %10, metadata !683, metadata !289), !dbg !684
  call void @llvm.dbg.declare(metadata %struct.zedc_dev_t** %11, metadata !685, metadata !289), !dbg !686
  call void @llvm.dbg.declare(metadata %struct.ddcb_cmd** %12, metadata !687, metadata !289), !dbg !688
  call void @llvm.dbg.declare(metadata i32* %13, metadata !689, metadata !289), !dbg !690
  call void @llvm.dbg.declare(metadata i32* %14, metadata !691, metadata !289), !dbg !692
  store i32 1, i32* %14, align 4, !dbg !692
  call void @llvm.dbg.declare(metadata i64* %15, metadata !693, metadata !289), !dbg !694
  store i64 0, i64* %15, align 8, !dbg !694
  call void @llvm.dbg.declare(metadata i32* %16, metadata !695, metadata !289), !dbg !696
  store i32 0, i32* %16, align 4, !dbg !696
  %18 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !697
  %19 = icmp ne %struct.zedc_stream_s* %18, null, !dbg !697
  br i1 %19, label %21, label %20, !dbg !699

; <label>:20:                                     ; preds = %2
  store i32 -2, i32* %3, align 4, !dbg !700
  br label %610, !dbg !700

; <label>:21:                                     ; preds = %2
  %22 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !701
  %23 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %22, i32 0, i32 15, !dbg !702
  %24 = load i8*, i8** %23, align 8, !dbg !702
  %25 = bitcast i8* %24 to %struct.zedc_dev_t*, !dbg !703
  store %struct.zedc_dev_t* %25, %struct.zedc_dev_t** %11, align 8, !dbg !704
  %26 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %11, align 8, !dbg !705
  %27 = icmp ne %struct.zedc_dev_t* %26, null, !dbg !705
  br i1 %27, label %29, label %28, !dbg !707

; <label>:28:                                     ; preds = %21
  store i32 -2, i32* %3, align 4, !dbg !708
  br label %610, !dbg !708

; <label>:29:                                     ; preds = %21
  %30 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !709
  %31 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %30, i32 0, i32 16, !dbg !710
  store %struct.ddcb_cmd* %31, %struct.ddcb_cmd** %12, align 8, !dbg !711
  %32 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %12, align 8, !dbg !712
  call void @ddcb_cmd_init(%struct.ddcb_cmd* %32), !dbg !713
  %33 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !714
  %34 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %33, i32 0, i32 8, !dbg !716
  %35 = load i32, i32* %34, align 8, !dbg !716
  %36 = icmp ugt i32 %35, -1024, !dbg !717
  br i1 %36, label %37, label %48, !dbg !718

; <label>:37:                                     ; preds = %29
  br label %38, !dbg !719, !llvm.loop !721

; <label>:38:                                     ; preds = %37
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !722
  %40 = icmp ne %struct._IO_FILE* %39, null, !dbg !722
  br i1 %40, label %41, label %46, !dbg !722

; <label>:41:                                     ; preds = %38
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !726
  %43 = call i32 @getpid() #7, !dbg !728
  %44 = call i32 @gettid(), !dbg !729
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i32 0, i32 0), i32 %43, i32 %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i32 1068), !dbg !731
  br label %46, !dbg !733

; <label>:46:                                     ; preds = %41, %38
  br label %47, !dbg !734

; <label>:47:                                     ; preds = %46
  store i32 -4, i32* %3, align 4, !dbg !736
  br label %610, !dbg !736

; <label>:48:                                     ; preds = %29
  %49 = load i32, i32* %5, align 4, !dbg !737
  %50 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !738
  %51 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %50, i32 0, i32 5, !dbg !739
  store i32 %49, i32* %51, align 4, !dbg !740
  %52 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !741
  %53 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %52, i32 0, i32 58, !dbg !742
  store i32 0, i32* %53, align 8, !dbg !743
  %54 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !744
  %55 = call i32 @inflate_flush_output_buffer(%struct.zedc_stream_s* %54), !dbg !745
  store i32 %55, i32* %6, align 4, !dbg !746
  %56 = load i32, i32* %6, align 4, !dbg !747
  %57 = icmp ne i32 %56, 0, !dbg !747
  br i1 %57, label %58, label %70, !dbg !749

; <label>:58:                                     ; preds = %48
  br label %59, !dbg !750, !llvm.loop !752

; <label>:59:                                     ; preds = %58
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !753
  %61 = icmp ne %struct._IO_FILE* %60, null, !dbg !753
  br i1 %61, label %62, label %68, !dbg !753

; <label>:62:                                     ; preds = %59
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !757
  %64 = call i32 @getpid() #7, !dbg !759
  %65 = call i32 @gettid(), !dbg !760
  %66 = load i32, i32* %6, align 4, !dbg !762
  %67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i32 0, i32 0), i32 %64, i32 %65, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i32 1081, i32 %66), !dbg !763
  br label %68, !dbg !765

; <label>:68:                                     ; preds = %62, %59
  br label %69, !dbg !766

; <label>:69:                                     ; preds = %68
  store i32 -2, i32* %3, align 4, !dbg !768
  br label %610, !dbg !768

; <label>:70:                                     ; preds = %48
  %71 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !769
  %72 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %71, i32 0, i32 49, !dbg !771
  %73 = load i8, i8* %72, align 1, !dbg !771
  %74 = zext i8 %73 to i32, !dbg !769
  %75 = and i32 %74, 4, !dbg !772
  %76 = icmp ne i32 %75, 0, !dbg !772
  br i1 %76, label %77, label %80, !dbg !773

; <label>:77:                                     ; preds = %70
  %78 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !774
  %79 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %78, i32 0, i32 29, !dbg !775
  store i32 1, i32* %79, align 4, !dbg !776
  br label %80, !dbg !774

; <label>:80:                                     ; preds = %77, %70
  %81 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !777
  %82 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %81, i32 0, i32 29, !dbg !779
  %83 = load i32, i32* %82, align 4, !dbg !779
  %84 = icmp ne i32 %83, 0, !dbg !777
  br i1 %84, label %85, label %103, !dbg !780

; <label>:85:                                     ; preds = %80
  %86 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !781
  %87 = call i32 @inflate_format_rem_trailer(%struct.zedc_stream_s* %86), !dbg !783
  store i32 %87, i32* %6, align 4, !dbg !784
  %88 = load i32, i32* %6, align 4, !dbg !785
  %89 = icmp slt i32 %88, 0, !dbg !787
  br i1 %89, label %90, label %91, !dbg !788

; <label>:90:                                     ; preds = %85
  store i32 -3, i32* %3, align 4, !dbg !789
  br label %610, !dbg !789

; <label>:91:                                     ; preds = %85
  %92 = load i32, i32* %6, align 4, !dbg !790
  %93 = icmp eq i32 %92, 1, !dbg !792
  br i1 %93, label %94, label %95, !dbg !793

; <label>:94:                                     ; preds = %91
  store i32 0, i32* %3, align 4, !dbg !794
  br label %610, !dbg !794

; <label>:95:                                     ; preds = %91
  %96 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !795
  %97 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %96, i32 0, i32 62, !dbg !797
  %98 = load i16, i16* %97, align 4, !dbg !797
  %99 = zext i16 %98 to i32, !dbg !795
  %100 = icmp eq i32 %99, 0, !dbg !798
  br i1 %100, label %101, label %102, !dbg !799

; <label>:101:                                    ; preds = %95
  store i32 1, i32* %3, align 4, !dbg !800
  br label %610, !dbg !800

; <label>:102:                                    ; preds = %95
  store i32 0, i32* %3, align 4, !dbg !801
  br label %610, !dbg !801

; <label>:103:                                    ; preds = %80
  %104 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !802
  %105 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %104, i32 0, i32 11, !dbg !804
  %106 = load i32, i32* %105, align 8, !dbg !804
  %107 = icmp eq i32 %106, 0, !dbg !805
  br i1 %107, label %108, label %109, !dbg !806

; <label>:108:                                    ; preds = %103
  store i32 0, i32* %3, align 4, !dbg !807
  br label %610, !dbg !807

; <label>:109:                                    ; preds = %103
  %110 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !808
  %111 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %110, i32 0, i32 24, !dbg !810
  %112 = load i32, i32* %111, align 8, !dbg !810
  %113 = icmp ne i32 15, %112, !dbg !811
  br i1 %113, label %114, label %123, !dbg !812

; <label>:114:                                    ; preds = %109
  %115 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !813
  %116 = load i32, i32* %5, align 4, !dbg !815
  %117 = call i32 @inflate_format_rem_header(%struct.zedc_stream_s* %115, i32 %116), !dbg !816
  store i32 %117, i32* %6, align 4, !dbg !817
  %118 = load i32, i32* %6, align 4, !dbg !818
  %119 = icmp ne i32 0, %118, !dbg !820
  br i1 %119, label %120, label %122, !dbg !821

; <label>:120:                                    ; preds = %114
  %121 = load i32, i32* %6, align 4, !dbg !822
  store i32 %121, i32* %3, align 4, !dbg !823
  br label %610, !dbg !823

; <label>:122:                                    ; preds = %114
  br label %123, !dbg !824

; <label>:123:                                    ; preds = %122, %109
  %124 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !825
  %125 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %124, i32 0, i32 6, !dbg !827
  %126 = load i32, i32* %125, align 8, !dbg !827
  %127 = and i32 %126, 128, !dbg !828
  %128 = icmp ne i32 %127, 0, !dbg !828
  br i1 %128, label %129, label %130, !dbg !829

; <label>:129:                                    ; preds = %123
  store i32 0, i32* %3, align 4, !dbg !830
  br label %610, !dbg !830

; <label>:130:                                    ; preds = %123
  %131 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !831
  %132 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %131, i32 0, i32 8, !dbg !833
  %133 = load i32, i32* %132, align 8, !dbg !833
  %134 = icmp eq i32 %133, 0, !dbg !834
  br i1 %134, label %135, label %141, !dbg !835

; <label>:135:                                    ; preds = %130
  %136 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !836
  %137 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %136, i32 0, i32 56, !dbg !838
  %138 = load i32, i32* %137, align 8, !dbg !838
  %139 = icmp eq i32 %138, 0, !dbg !839
  br i1 %139, label %140, label %141, !dbg !840

; <label>:140:                                    ; preds = %135
  br label %594, !dbg !841

; <label>:141:                                    ; preds = %135, %130
  %142 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %12, align 8, !dbg !842
  %143 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %142, i32 0, i32 3, !dbg !843
  store i8 1, i8* %143, align 1, !dbg !844
  %144 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %12, align 8, !dbg !845
  %145 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %144, i32 0, i32 2, !dbg !846
  store i8 1, i8* %145, align 8, !dbg !847
  %146 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %12, align 8, !dbg !848
  %147 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %146, i32 0, i32 4, !dbg !849
  store i8 88, i8* %147, align 2, !dbg !850
  %148 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %12, align 8, !dbg !851
  %149 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %148, i32 0, i32 5, !dbg !852
  store i8 64, i8* %149, align 1, !dbg !853
  %150 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %12, align 8, !dbg !854
  %151 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %150, i32 0, i32 16, !dbg !855
  %152 = bitcast %union.anon* %151 to %struct.anon*, !dbg !855
  %153 = getelementptr inbounds %struct.anon, %struct.anon* %152, i32 0, i32 0, !dbg !855
  store i64 0, i64* %153, align 8, !dbg !856
  %154 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %12, align 8, !dbg !857
  %155 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %154, i32 0, i32 6, !dbg !858
  store i16 0, i16* %155, align 4, !dbg !859
  %156 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %12, align 8, !dbg !860
  %157 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %156, i32 0, i32 16, !dbg !861
  %158 = bitcast %union.anon* %157 to %struct.anon*, !dbg !861
  %159 = getelementptr inbounds %struct.anon, %struct.anon* %158, i32 0, i32 1, !dbg !861
  %160 = bitcast [96 x i8]* %159 to %struct.zedc_asiv_infl*, !dbg !862
  store %struct.zedc_asiv_infl* %160, %struct.zedc_asiv_infl** %9, align 8, !dbg !863
  %161 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %12, align 8, !dbg !864
  %162 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %161, i32 0, i32 15, !dbg !865
  %163 = bitcast [64 x i8]* %162 to %struct.zedc_asv_infl*, !dbg !866
  store %struct.zedc_asv_infl* %163, %struct.zedc_asv_infl** %10, align 8, !dbg !867
  %164 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !868
  %165 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %164, i32 0, i32 36, !dbg !870
  %166 = getelementptr inbounds [3 x i32], [3 x i32]* %165, i64 0, i64 0, !dbg !868
  %167 = load i32, i32* %166, align 4, !dbg !868
  %168 = and i32 %167, 24, !dbg !871
  %169 = icmp eq i32 %168, 8, !dbg !872
  br i1 %169, label %170, label %177, !dbg !873

; <label>:170:                                    ; preds = %141
  %171 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %12, align 8, !dbg !874
  %172 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %171, i32 0, i32 16, !dbg !875
  %173 = bitcast %union.anon* %172 to %struct.anon*, !dbg !875
  %174 = getelementptr inbounds %struct.anon, %struct.anon* %173, i32 0, i32 0, !dbg !875
  %175 = load i64, i64* %174, align 8, !dbg !876
  %176 = or i64 %175, 70368744177664, !dbg !876
  store i64 %176, i64* %174, align 8, !dbg !876
  br label %184, !dbg !874

; <label>:177:                                    ; preds = %141
  %178 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %12, align 8, !dbg !877
  %179 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %178, i32 0, i32 16, !dbg !878
  %180 = bitcast %union.anon* %179 to %struct.anon*, !dbg !878
  %181 = getelementptr inbounds %struct.anon, %struct.anon* %180, i32 0, i32 0, !dbg !878
  %182 = load i64, i64* %181, align 8, !dbg !879
  %183 = or i64 %182, 105553116266496, !dbg !879
  store i64 %183, i64* %181, align 8, !dbg !879
  br label %184

; <label>:184:                                    ; preds = %177, %170
  %185 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !880
  %186 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %185, i32 0, i32 36, !dbg !882
  %187 = getelementptr inbounds [3 x i32], [3 x i32]* %186, i64 0, i64 1, !dbg !880
  %188 = load i32, i32* %187, align 4, !dbg !880
  %189 = and i32 %188, 24, !dbg !883
  %190 = icmp eq i32 %189, 8, !dbg !884
  br i1 %190, label %191, label %198, !dbg !885

; <label>:191:                                    ; preds = %184
  %192 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %12, align 8, !dbg !886
  %193 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %192, i32 0, i32 16, !dbg !887
  %194 = bitcast %union.anon* %193 to %struct.anon*, !dbg !887
  %195 = getelementptr inbounds %struct.anon, %struct.anon* %194, i32 0, i32 0, !dbg !887
  %196 = load i64, i64* %195, align 8, !dbg !888
  %197 = or i64 %196, 343597383680, !dbg !888
  store i64 %197, i64* %195, align 8, !dbg !888
  br label %205, !dbg !886

; <label>:198:                                    ; preds = %184
  %199 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %12, align 8, !dbg !889
  %200 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %199, i32 0, i32 16, !dbg !890
  %201 = bitcast %union.anon* %200 to %struct.anon*, !dbg !890
  %202 = getelementptr inbounds %struct.anon, %struct.anon* %201, i32 0, i32 0, !dbg !890
  %203 = load i64, i64* %202, align 8, !dbg !891
  %204 = or i64 %203, 481036337152, !dbg !891
  store i64 %204, i64* %202, align 8, !dbg !891
  br label %205

; <label>:205:                                    ; preds = %198, %191
  %206 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !892
  %207 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %206, i32 0, i32 36, !dbg !894
  %208 = getelementptr inbounds [3 x i32], [3 x i32]* %207, i64 0, i64 2, !dbg !892
  %209 = load i32, i32* %208, align 4, !dbg !892
  %210 = and i32 %209, 24, !dbg !895
  %211 = icmp eq i32 %210, 8, !dbg !896
  br i1 %211, label %212, label %219, !dbg !897

; <label>:212:                                    ; preds = %205
  %213 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %12, align 8, !dbg !898
  %214 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %213, i32 0, i32 16, !dbg !900
  %215 = bitcast %union.anon* %214 to %struct.anon*, !dbg !900
  %216 = getelementptr inbounds %struct.anon, %struct.anon* %215, i32 0, i32 0, !dbg !900
  %217 = load i64, i64* %216, align 8, !dbg !901
  %218 = or i64 %217, 1079005184, !dbg !901
  store i64 %218, i64* %216, align 8, !dbg !901
  br label %226, !dbg !902

; <label>:219:                                    ; preds = %205
  %220 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %12, align 8, !dbg !903
  %221 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %220, i32 0, i32 16, !dbg !905
  %222 = bitcast %union.anon* %221 to %struct.anon*, !dbg !905
  %223 = getelementptr inbounds %struct.anon, %struct.anon* %222, i32 0, i32 0, !dbg !905
  %224 = load i64, i64* %223, align 8, !dbg !906
  %225 = or i64 %224, 1617981440, !dbg !906
  store i64 %225, i64* %223, align 8, !dbg !906
  br label %226

; <label>:226:                                    ; preds = %219, %212
  %227 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !907
  %228 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %227, i32 0, i32 21, !dbg !909
  %229 = load i32, i32* %228, align 4, !dbg !909
  %230 = and i32 %229, 1, !dbg !910
  %231 = icmp ne i32 %230, 0, !dbg !910
  br i1 %231, label %232, label %239, !dbg !911

; <label>:232:                                    ; preds = %226
  %233 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %12, align 8, !dbg !912
  %234 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %233, i32 0, i32 6, !dbg !913
  %235 = load i16, i16* %234, align 4, !dbg !914
  %236 = zext i16 %235 to i32, !dbg !914
  %237 = or i32 %236, 32768, !dbg !914
  %238 = trunc i32 %237 to i16, !dbg !914
  store i16 %238, i16* %234, align 4, !dbg !914
  br label %239, !dbg !912

; <label>:239:                                    ; preds = %232, %226
  %240 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !915
  %241 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %12, align 8, !dbg !916
  %242 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %241, i32 0, i32 16, !dbg !917
  %243 = bitcast %union.anon* %242 to %struct.anon*, !dbg !917
  %244 = getelementptr inbounds %struct.anon, %struct.anon* %243, i32 0, i32 1, !dbg !917
  %245 = bitcast [96 x i8]* %244 to %struct.zedc_asiv_infl*, !dbg !918
  call void @set_inflate_asiv(%struct.zedc_stream_s* %240, %struct.zedc_asiv_infl* %245), !dbg !919
  %246 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %12, align 8, !dbg !920
  %247 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %246, i32 0, i32 6, !dbg !921
  %248 = load i16, i16* %247, align 4, !dbg !922
  %249 = zext i16 %248 to i32, !dbg !922
  %250 = or i32 %249, 4, !dbg !922
  %251 = trunc i32 %250 to i16, !dbg !922
  store i16 %251, i16* %247, align 4, !dbg !922
  store i32 1, i32* %14, align 4, !dbg !923
  %252 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !924
  %253 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %252, i32 0, i32 21, !dbg !926
  %254 = load i32, i32* %253, align 4, !dbg !926
  %255 = and i32 %254, 4, !dbg !927
  %256 = icmp ne i32 %255, 0, !dbg !927
  br i1 %256, label %257, label %286, !dbg !928

; <label>:257:                                    ; preds = %239
  %258 = load i32, i32* %5, align 4, !dbg !929
  %259 = icmp eq i32 %258, 4, !dbg !930
  br i1 %259, label %260, label %286, !dbg !931

; <label>:260:                                    ; preds = %257
  %261 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !932
  %262 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %261, i32 0, i32 11, !dbg !934
  %263 = load i32, i32* %262, align 8, !dbg !934
  %264 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !935
  %265 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %264, i32 0, i32 8, !dbg !936
  %266 = load i32, i32* %265, align 8, !dbg !936
  %267 = mul i32 %266, 2, !dbg !937
  %268 = icmp ugt i32 %263, %267, !dbg !938
  br i1 %268, label %269, label %286, !dbg !939

; <label>:269:                                    ; preds = %260
  %270 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %9, align 8, !dbg !941
  %271 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %270, i32 0, i32 14, !dbg !943
  %272 = load i64, i64* %271, align 1, !dbg !943
  store i64 %272, i64* %15, align 8, !dbg !944
  %273 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %9, align 8, !dbg !945
  %274 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %273, i32 0, i32 15, !dbg !946
  %275 = load i32, i32* %274, align 1, !dbg !946
  store i32 %275, i32* %16, align 4, !dbg !947
  %276 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %12, align 8, !dbg !948
  %277 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %276, i32 0, i32 6, !dbg !949
  %278 = load i16, i16* %277, align 4, !dbg !950
  %279 = zext i16 %278 to i32, !dbg !950
  %280 = and i32 %279, -5, !dbg !950
  %281 = trunc i32 %280 to i16, !dbg !950
  store i16 %281, i16* %277, align 4, !dbg !950
  %282 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %9, align 8, !dbg !951
  %283 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %282, i32 0, i32 14, !dbg !952
  store i64 0, i64* %283, align 1, !dbg !953
  %284 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %9, align 8, !dbg !954
  %285 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %284, i32 0, i32 15, !dbg !955
  store i32 0, i32* %285, align 1, !dbg !956
  store i32 2, i32* %14, align 4, !dbg !957
  br label %286, !dbg !958

; <label>:286:                                    ; preds = %269, %260, %257, %239
  store i32 0, i32* %13, align 4, !dbg !959
  br label %287, !dbg !961

; <label>:287:                                    ; preds = %423, %286
  %288 = load i32, i32* %13, align 4, !dbg !962
  %289 = load i32, i32* %14, align 4, !dbg !965
  %290 = icmp ult i32 %288, %289, !dbg !966
  br i1 %290, label %291, label %426, !dbg !967

; <label>:291:                                    ; preds = %287
  %292 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !968
  call void @zedc_asiv_infl_print(%struct.zedc_stream_s* %292), !dbg !970
  %293 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %11, align 8, !dbg !971
  %294 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %12, align 8, !dbg !972
  %295 = call i32 @zedc_execute_request(%struct.zedc_dev_t* %293, %struct.ddcb_cmd* %294), !dbg !973
  store i32 %295, i32* %6, align 4, !dbg !974
  %296 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !975
  call void @zedc_asv_infl_print(%struct.zedc_stream_s* %296), !dbg !976
  %297 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %12, align 8, !dbg !977
  %298 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %297, i32 0, i32 7, !dbg !978
  %299 = load i16, i16* %298, align 2, !dbg !978
  %300 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !979
  %301 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %300, i32 0, i32 17, !dbg !980
  store i16 %299, i16* %301, align 8, !dbg !981
  %302 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %12, align 8, !dbg !982
  %303 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %302, i32 0, i32 8, !dbg !983
  %304 = load i16, i16* %303, align 8, !dbg !983
  %305 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !984
  %306 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %305, i32 0, i32 18, !dbg !985
  store i16 %304, i16* %306, align 2, !dbg !986
  %307 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %12, align 8, !dbg !987
  %308 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %307, i32 0, i32 10, !dbg !988
  %309 = load i32, i32* %308, align 4, !dbg !988
  %310 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !989
  %311 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %310, i32 0, i32 19, !dbg !990
  store i32 %309, i32* %311, align 4, !dbg !991
  %312 = load i32, i32* %6, align 4, !dbg !992
  %313 = icmp eq i32 %312, -411, !dbg !994
  br i1 %313, label %314, label %342, !dbg !995

; <label>:314:                                    ; preds = %291
  %315 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %12, align 8, !dbg !996
  %316 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %315, i32 0, i32 7, !dbg !997
  %317 = load i16, i16* %316, align 2, !dbg !997
  %318 = zext i16 %317 to i32, !dbg !996
  %319 = icmp eq i32 %318, 260, !dbg !998
  br i1 %319, label %320, label %342, !dbg !999

; <label>:320:                                    ; preds = %314
  %321 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %12, align 8, !dbg !1000
  %322 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %321, i32 0, i32 8, !dbg !1002
  %323 = load i16, i16* %322, align 8, !dbg !1002
  %324 = zext i16 %323 to i32, !dbg !1000
  %325 = icmp eq i32 %324, 32794, !dbg !1003
  br i1 %325, label %326, label %342, !dbg !1004

; <label>:326:                                    ; preds = %320
  %327 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1006
  %328 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %327, i32 0, i32 40, !dbg !1008
  %329 = load i32, i32* %328, align 4, !dbg !1008
  %330 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1009
  %331 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %330, i32 0, i32 14, !dbg !1010
  store i32 %329, i32* %331, align 4, !dbg !1011
  br label %332, !dbg !1012, !llvm.loop !1013

; <label>:332:                                    ; preds = %326
  %333 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1014
  %334 = icmp ne %struct._IO_FILE* %333, null, !dbg !1014
  br i1 %334, label %335, label %340, !dbg !1014

; <label>:335:                                    ; preds = %332
  %336 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1018
  %337 = call i32 @getpid() #7, !dbg !1020
  %338 = call i32 @gettid(), !dbg !1021
  %339 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %336, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i32 0, i32 0), i32 %337, i32 %338, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i32 1219), !dbg !1023
  br label %340, !dbg !1025

; <label>:340:                                    ; preds = %335, %332
  br label %341, !dbg !1026

; <label>:341:                                    ; preds = %340
  store i32 2, i32* %3, align 4, !dbg !1028
  br label %610, !dbg !1028

; <label>:342:                                    ; preds = %320, %314, %291
  %343 = load i32, i32* %6, align 4, !dbg !1029
  %344 = icmp slt i32 %343, 0, !dbg !1031
  br i1 %344, label %351, label %345, !dbg !1032

; <label>:345:                                    ; preds = %342
  %346 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %12, align 8, !dbg !1033
  %347 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %346, i32 0, i32 7, !dbg !1035
  %348 = load i16, i16* %347, align 2, !dbg !1035
  %349 = zext i16 %348 to i32, !dbg !1033
  %350 = icmp ne i32 %349, 258, !dbg !1036
  br i1 %350, label %351, label %382, !dbg !1037

; <label>:351:                                    ; preds = %345, %342
  call void @llvm.dbg.declare(metadata %struct.ddcb_cmd** %17, metadata !1038, metadata !289), !dbg !1040
  %352 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1041
  %353 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %352, i32 0, i32 16, !dbg !1042
  store %struct.ddcb_cmd* %353, %struct.ddcb_cmd** %17, align 8, !dbg !1040
  br label %354, !dbg !1043, !llvm.loop !1044

; <label>:354:                                    ; preds = %351
  %355 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1045
  %356 = icmp ne %struct._IO_FILE* %355, null, !dbg !1045
  br i1 %356, label %357, label %380, !dbg !1045

; <label>:357:                                    ; preds = %354
  %358 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1049
  %359 = call i32 @getpid() #7, !dbg !1051
  %360 = call i32 @gettid(), !dbg !1052
  %361 = load i32, i32* %6, align 4, !dbg !1054
  %362 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %17, align 8, !dbg !1055
  %363 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %362, i32 0, i32 7, !dbg !1056
  %364 = load i16, i16* %363, align 2, !dbg !1056
  %365 = zext i16 %364 to i32, !dbg !1055
  %366 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %17, align 8, !dbg !1057
  %367 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %366, i32 0, i32 8, !dbg !1058
  %368 = load i16, i16* %367, align 8, !dbg !1058
  %369 = zext i16 %368 to i32, !dbg !1057
  %370 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %17, align 8, !dbg !1059
  %371 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %370, i32 0, i32 10, !dbg !1060
  %372 = load i32, i32* %371, align 4, !dbg !1060
  %373 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %17, align 8, !dbg !1061
  %374 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %373, i32 0, i32 7, !dbg !1062
  %375 = load i16, i16* %374, align 2, !dbg !1062
  %376 = zext i16 %375 to i32, !dbg !1061
  %377 = icmp eq i32 %376, 258, !dbg !1063
  %378 = select i1 %377, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), !dbg !1061
  %379 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %358, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.9, i32 0, i32 0), i32 %359, i32 %360, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i32 1241, i32 %361, i32 %365, i32 %369, i32 %372, i8* %378), !dbg !1064
  br label %380, !dbg !1066

; <label>:380:                                    ; preds = %357, %354
  br label %381, !dbg !1067

; <label>:381:                                    ; preds = %380
  store i32 -2, i32* %3, align 4, !dbg !1069
  br label %610, !dbg !1069

; <label>:382:                                    ; preds = %345
  %383 = load %struct.zedc_asv_infl*, %struct.zedc_asv_infl** %10, align 8, !dbg !1070
  %384 = getelementptr inbounds %struct.zedc_asv_infl, %struct.zedc_asv_infl* %383, i32 0, i32 3, !dbg !1072
  %385 = load i8, i8* %384, align 1, !dbg !1072
  %386 = zext i8 %385 to i32, !dbg !1070
  %387 = and i32 %386, 4, !dbg !1073
  %388 = icmp ne i32 %387, 0, !dbg !1073
  br i1 %388, label %389, label %390, !dbg !1074

; <label>:389:                                    ; preds = %382
  br label %426, !dbg !1075

; <label>:390:                                    ; preds = %382
  %391 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1076
  %392 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %391, i32 0, i32 21, !dbg !1078
  %393 = load i32, i32* %392, align 4, !dbg !1078
  %394 = and i32 %393, 4, !dbg !1079
  %395 = icmp ne i32 %394, 0, !dbg !1079
  br i1 %395, label %396, label %422, !dbg !1080

; <label>:396:                                    ; preds = %390
  %397 = load i32, i32* %5, align 4, !dbg !1081
  %398 = icmp eq i32 %397, 4, !dbg !1082
  br i1 %398, label %399, label %422, !dbg !1083

; <label>:399:                                    ; preds = %396
  %400 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %12, align 8, !dbg !1084
  %401 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %400, i32 0, i32 6, !dbg !1086
  %402 = load i16, i16* %401, align 4, !dbg !1087
  %403 = zext i16 %402 to i32, !dbg !1087
  %404 = or i32 %403, 4, !dbg !1087
  %405 = trunc i32 %404 to i16, !dbg !1087
  store i16 %405, i16* %401, align 4, !dbg !1087
  %406 = load i64, i64* %15, align 8, !dbg !1088
  %407 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %9, align 8, !dbg !1089
  %408 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %407, i32 0, i32 14, !dbg !1090
  store i64 %406, i64* %408, align 1, !dbg !1091
  %409 = load i32, i32* %16, align 4, !dbg !1092
  %410 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %9, align 8, !dbg !1093
  %411 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %410, i32 0, i32 15, !dbg !1094
  store i32 %409, i32* %411, align 1, !dbg !1095
  br label %412, !dbg !1096, !llvm.loop !1097

; <label>:412:                                    ; preds = %399
  %413 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1098
  %414 = icmp ne %struct._IO_FILE* %413, null, !dbg !1098
  br i1 %414, label %415, label %420, !dbg !1098

; <label>:415:                                    ; preds = %412
  %416 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1102
  %417 = call i32 @getpid() #7, !dbg !1104
  %418 = call i32 @gettid(), !dbg !1105
  %419 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %416, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.12, i32 0, i32 0), i32 %417, i32 %418, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i32 1258, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.zedc_inflate, i32 0, i32 0)), !dbg !1107
  br label %420, !dbg !1109

; <label>:420:                                    ; preds = %415, %412
  br label %421, !dbg !1110

; <label>:421:                                    ; preds = %420
  br label %422, !dbg !1112

; <label>:422:                                    ; preds = %421, %396, %390
  br label %423, !dbg !1113

; <label>:423:                                    ; preds = %422
  %424 = load i32, i32* %13, align 4, !dbg !1114
  %425 = add i32 %424, 1, !dbg !1114
  store i32 %425, i32* %13, align 4, !dbg !1114
  br label %287, !dbg !1116, !llvm.loop !1117

; <label>:426:                                    ; preds = %389, %287
  %427 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1119
  %428 = load %struct.zedc_asv_infl*, %struct.zedc_asv_infl** %10, align 8, !dbg !1120
  call void @get_inflate_asv(%struct.zedc_stream_s* %427, %struct.zedc_asv_infl* %428), !dbg !1121
  %429 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1122
  %430 = call i32 @post_scratch_upd(%struct.zedc_stream_s* %429), !dbg !1123
  store i32 %430, i32* %6, align 4, !dbg !1124
  %431 = load i32, i32* %6, align 4, !dbg !1125
  %432 = icmp slt i32 %431, 0, !dbg !1127
  br i1 %432, label %433, label %445, !dbg !1128

; <label>:433:                                    ; preds = %426
  br label %434, !dbg !1129, !llvm.loop !1131

; <label>:434:                                    ; preds = %433
  %435 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1132
  %436 = icmp ne %struct._IO_FILE* %435, null, !dbg !1132
  br i1 %436, label %437, label %443, !dbg !1132

; <label>:437:                                    ; preds = %434
  %438 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1136
  %439 = call i32 @getpid() #7, !dbg !1138
  %440 = call i32 @gettid(), !dbg !1139
  %441 = load i32, i32* %6, align 4, !dbg !1141
  %442 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %438, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.13, i32 0, i32 0), i32 %439, i32 %440, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i32 1265, i32 %441), !dbg !1142
  br label %443, !dbg !1144

; <label>:443:                                    ; preds = %437, %434
  br label %444, !dbg !1145

; <label>:444:                                    ; preds = %443
  store i32 -2, i32* %3, align 4, !dbg !1147
  br label %610, !dbg !1147

; <label>:445:                                    ; preds = %426
  %446 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1148
  %447 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %446, i32 0, i32 47, !dbg !1150
  %448 = load i32, i32* %447, align 4, !dbg !1150
  %449 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1151
  %450 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %449, i32 0, i32 11, !dbg !1152
  %451 = load i32, i32* %450, align 8, !dbg !1152
  %452 = icmp ugt i32 %448, %451, !dbg !1153
  br i1 %452, label %453, label %467, !dbg !1154

; <label>:453:                                    ; preds = %445
  br label %454, !dbg !1155, !llvm.loop !1157

; <label>:454:                                    ; preds = %453
  %455 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1158
  %456 = icmp ne %struct._IO_FILE* %455, null, !dbg !1158
  br i1 %456, label %457, label %465, !dbg !1158

; <label>:457:                                    ; preds = %454
  %458 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1162
  %459 = call i32 @getpid() #7, !dbg !1164
  %460 = call i32 @gettid(), !dbg !1165
  %461 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1167
  %462 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %461, i32 0, i32 47, !dbg !1168
  %463 = load i32, i32* %462, align 4, !dbg !1168
  %464 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %458, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.14, i32 0, i32 0), i32 %459, i32 %460, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i32 1273, i32 %463), !dbg !1169
  br label %465, !dbg !1171

; <label>:465:                                    ; preds = %457, %454
  br label %466, !dbg !1172

; <label>:466:                                    ; preds = %465
  store i32 -2, i32* %3, align 4, !dbg !1174
  br label %610, !dbg !1174

; <label>:467:                                    ; preds = %445
  %468 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1175
  %469 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %468, i32 0, i32 47, !dbg !1176
  %470 = load i32, i32* %469, align 4, !dbg !1176
  %471 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1177
  %472 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %471, i32 0, i32 10, !dbg !1178
  %473 = load i8*, i8** %472, align 8, !dbg !1179
  %474 = zext i32 %470 to i64, !dbg !1179
  %475 = getelementptr inbounds i8, i8* %473, i64 %474, !dbg !1179
  store i8* %475, i8** %472, align 8, !dbg !1179
  %476 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1180
  %477 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %476, i32 0, i32 47, !dbg !1181
  %478 = load i32, i32* %477, align 4, !dbg !1181
  %479 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1182
  %480 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %479, i32 0, i32 11, !dbg !1183
  %481 = load i32, i32* %480, align 8, !dbg !1184
  %482 = sub i32 %481, %478, !dbg !1184
  store i32 %482, i32* %480, align 8, !dbg !1184
  %483 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1185
  %484 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %483, i32 0, i32 47, !dbg !1186
  %485 = load i32, i32* %484, align 4, !dbg !1186
  %486 = zext i32 %485 to i64, !dbg !1185
  %487 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1187
  %488 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %487, i32 0, i32 12, !dbg !1188
  %489 = load i64, i64* %488, align 8, !dbg !1189
  %490 = add i64 %489, %486, !dbg !1189
  store i64 %490, i64* %488, align 8, !dbg !1189
  %491 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1190
  %492 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %491, i32 0, i32 58, !dbg !1191
  %493 = load i32, i32* %492, align 8, !dbg !1191
  store i32 %493, i32* %8, align 4, !dbg !1192
  %494 = load i32, i32* %8, align 4, !dbg !1193
  %495 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1195
  %496 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %495, i32 0, i32 8, !dbg !1196
  %497 = load i32, i32* %496, align 8, !dbg !1196
  %498 = icmp ugt i32 %494, %497, !dbg !1197
  br i1 %498, label %499, label %514, !dbg !1198

; <label>:499:                                    ; preds = %467
  br label %500, !dbg !1199, !llvm.loop !1201

; <label>:500:                                    ; preds = %499
  %501 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1202
  %502 = icmp ne %struct._IO_FILE* %501, null, !dbg !1202
  br i1 %502, label %503, label %512, !dbg !1202

; <label>:503:                                    ; preds = %500
  %504 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1206
  %505 = call i32 @getpid() #7, !dbg !1208
  %506 = call i32 @gettid(), !dbg !1209
  %507 = load i32, i32* %8, align 4, !dbg !1211
  %508 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1212
  %509 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %508, i32 0, i32 8, !dbg !1213
  %510 = load i32, i32* %509, align 8, !dbg !1213
  %511 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %504, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.15, i32 0, i32 0), i32 %505, i32 %506, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i32 1288, i32 %507, i32 %510), !dbg !1214
  br label %512, !dbg !1216

; <label>:512:                                    ; preds = %503, %500
  br label %513, !dbg !1217

; <label>:513:                                    ; preds = %512
  br label %609, !dbg !1219

; <label>:514:                                    ; preds = %467
  %515 = load i32, i32* %8, align 4, !dbg !1220
  %516 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1221
  %517 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %516, i32 0, i32 7, !dbg !1222
  %518 = load i8*, i8** %517, align 8, !dbg !1223
  %519 = zext i32 %515 to i64, !dbg !1223
  %520 = getelementptr inbounds i8, i8* %518, i64 %519, !dbg !1223
  store i8* %520, i8** %517, align 8, !dbg !1223
  %521 = load i32, i32* %8, align 4, !dbg !1224
  %522 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1225
  %523 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %522, i32 0, i32 8, !dbg !1226
  %524 = load i32, i32* %523, align 8, !dbg !1227
  %525 = sub i32 %524, %521, !dbg !1227
  store i32 %525, i32* %523, align 8, !dbg !1227
  %526 = load i32, i32* %8, align 4, !dbg !1228
  %527 = zext i32 %526 to i64, !dbg !1228
  %528 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1229
  %529 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %528, i32 0, i32 9, !dbg !1230
  %530 = load i64, i64* %529, align 8, !dbg !1231
  %531 = add i64 %530, %527, !dbg !1231
  store i64 %531, i64* %529, align 8, !dbg !1231
  store i32 0, i32* %7, align 4, !dbg !1232
  %532 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1233
  %533 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %532, i32 0, i32 49, !dbg !1235
  %534 = load i8, i8* %533, align 1, !dbg !1235
  %535 = zext i8 %534 to i32, !dbg !1233
  %536 = and i32 %535, 4, !dbg !1236
  %537 = icmp ne i32 %536, 0, !dbg !1236
  br i1 %537, label %538, label %541, !dbg !1237

; <label>:538:                                    ; preds = %514
  %539 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1238
  %540 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %539, i32 0, i32 29, !dbg !1239
  store i32 1, i32* %540, align 4, !dbg !1240
  br label %541, !dbg !1238

; <label>:541:                                    ; preds = %538, %514
  %542 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1241
  %543 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %542, i32 0, i32 29, !dbg !1243
  %544 = load i32, i32* %543, align 4, !dbg !1243
  %545 = icmp ne i32 %544, 0, !dbg !1241
  br i1 %545, label %546, label %564, !dbg !1244

; <label>:546:                                    ; preds = %541
  %547 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1245
  %548 = call i32 @inflate_format_rem_trailer(%struct.zedc_stream_s* %547), !dbg !1247
  store i32 %548, i32* %6, align 4, !dbg !1248
  %549 = load i32, i32* %6, align 4, !dbg !1249
  %550 = icmp slt i32 %549, 0, !dbg !1251
  br i1 %550, label %551, label %552, !dbg !1252

; <label>:551:                                    ; preds = %546
  store i32 -3, i32* %3, align 4, !dbg !1253
  br label %610, !dbg !1253

; <label>:552:                                    ; preds = %546
  %553 = load i32, i32* %6, align 4, !dbg !1254
  %554 = icmp eq i32 %553, 1, !dbg !1256
  br i1 %554, label %555, label %556, !dbg !1257

; <label>:555:                                    ; preds = %552
  store i32 0, i32* %3, align 4, !dbg !1258
  br label %610, !dbg !1258

; <label>:556:                                    ; preds = %552
  %557 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1259
  %558 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %557, i32 0, i32 62, !dbg !1261
  %559 = load i16, i16* %558, align 4, !dbg !1261
  %560 = zext i16 %559 to i32, !dbg !1259
  %561 = icmp eq i32 %560, 0, !dbg !1262
  br i1 %561, label %562, label %563, !dbg !1263

; <label>:562:                                    ; preds = %556
  store i32 1, i32* %3, align 4, !dbg !1264
  br label %610, !dbg !1264

; <label>:563:                                    ; preds = %556
  store i32 0, i32* %3, align 4, !dbg !1265
  br label %610, !dbg !1265

; <label>:564:                                    ; preds = %541
  %565 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1266
  %566 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %565, i32 0, i32 8, !dbg !1268
  %567 = load i32, i32* %566, align 8, !dbg !1268
  %568 = icmp ne i32 %567, 0, !dbg !1266
  br i1 %568, label %569, label %592, !dbg !1269

; <label>:569:                                    ; preds = %564
  %570 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1270
  %571 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %570, i32 0, i32 11, !dbg !1272
  %572 = load i32, i32* %571, align 8, !dbg !1272
  %573 = icmp ne i32 %572, 0, !dbg !1270
  br i1 %573, label %574, label %592, !dbg !1273

; <label>:574:                                    ; preds = %569
  br label %575, !dbg !1274, !llvm.loop !1276

; <label>:575:                                    ; preds = %574
  %576 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1277
  %577 = icmp ne %struct._IO_FILE* %576, null, !dbg !1277
  br i1 %577, label %578, label %590, !dbg !1277

; <label>:578:                                    ; preds = %575
  %579 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1281
  %580 = call i32 @getpid() #7, !dbg !1283
  %581 = call i32 @gettid(), !dbg !1284
  %582 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1286
  %583 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %582, i32 0, i32 8, !dbg !1287
  %584 = load i32, i32* %583, align 8, !dbg !1287
  %585 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1288
  %586 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %585, i32 0, i32 11, !dbg !1289
  %587 = load i32, i32* %586, align 8, !dbg !1289
  %588 = load i32, i32* %7, align 4, !dbg !1290
  %589 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %579, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.16, i32 0, i32 0), i32 %580, i32 %581, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i32 1319, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.zedc_inflate, i32 0, i32 0), i32 %584, i32 %587, i32 %588), !dbg !1291
  br label %590, !dbg !1293

; <label>:590:                                    ; preds = %578, %575
  br label %591, !dbg !1294

; <label>:591:                                    ; preds = %590
  br label %592, !dbg !1296

; <label>:592:                                    ; preds = %591, %569, %564
  %593 = load i32, i32* %7, align 4, !dbg !1297
  store i32 %593, i32* %3, align 4, !dbg !1298
  br label %610, !dbg !1298

; <label>:594:                                    ; preds = %140
  %595 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1299
  %596 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %595, i32 0, i32 49, !dbg !1301
  %597 = load i8, i8* %596, align 1, !dbg !1301
  %598 = zext i8 %597 to i32, !dbg !1299
  %599 = and i32 %598, 4, !dbg !1302
  %600 = icmp ne i32 %599, 0, !dbg !1302
  br i1 %600, label %601, label %608, !dbg !1303

; <label>:601:                                    ; preds = %594
  %602 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1304
  %603 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %602, i32 0, i32 62, !dbg !1305
  %604 = load i16, i16* %603, align 4, !dbg !1305
  %605 = zext i16 %604 to i32, !dbg !1304
  %606 = icmp eq i32 %605, 0, !dbg !1306
  br i1 %606, label %607, label %608, !dbg !1307

; <label>:607:                                    ; preds = %601
  store i32 1, i32* %3, align 4, !dbg !1308
  br label %610, !dbg !1308

; <label>:608:                                    ; preds = %601, %594
  store i32 0, i32* %3, align 4, !dbg !1309
  br label %610, !dbg !1309

; <label>:609:                                    ; preds = %513
  store i32 -2, i32* %3, align 4, !dbg !1310
  br label %610, !dbg !1310

; <label>:610:                                    ; preds = %609, %608, %607, %592, %563, %562, %555, %551, %466, %444, %381, %341, %129, %120, %108, %102, %101, %94, %90, %69, %47, %28, %20
  %611 = load i32, i32* %3, align 4, !dbg !1311
  ret i32 %611, !dbg !1311
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @ddcb_cmd_init(%struct.ddcb_cmd*) #3 !dbg !1312 {
  %2 = alloca %struct.ddcb_cmd*, align 8
  %3 = alloca i64, align 8
  store %struct.ddcb_cmd* %0, %struct.ddcb_cmd** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.ddcb_cmd** %2, metadata !1315, metadata !289), !dbg !1316
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1317, metadata !289), !dbg !1318
  %4 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %2, align 8, !dbg !1319
  %5 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %4, i32 0, i32 13, !dbg !1320
  %6 = load i64, i64* %5, align 8, !dbg !1320
  store i64 %6, i64* %3, align 8, !dbg !1321
  %7 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %2, align 8, !dbg !1322
  %8 = bitcast %struct.ddcb_cmd* %7 to i8*, !dbg !1323
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 232, i32 8, i1 false), !dbg !1323
  %9 = load i64, i64* %3, align 8, !dbg !1324
  %10 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %2, align 8, !dbg !1325
  %11 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %10, i32 0, i32 13, !dbg !1326
  store i64 %9, i64* %11, align 8, !dbg !1327
  ret void, !dbg !1328
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: nounwind
declare i32 @getpid() #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @gettid() #3 !dbg !1329 {
  %1 = call i64 (i64, ...) @syscall(i64 186) #7, !dbg !1332
  %2 = trunc i64 %1 to i32, !dbg !1333
  ret i32 %2, !dbg !1334
}

; Function Attrs: nounwind uwtable
define internal i32 @inflate_flush_output_buffer(%struct.zedc_stream_s*) #0 !dbg !1335 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zedc_stream_s*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.zedc_dev_t*, align 8
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %3, metadata !1336, metadata !289), !dbg !1337
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1338, metadata !289), !dbg !1339
  call void @llvm.dbg.declare(metadata %struct.zedc_dev_t** %5, metadata !1340, metadata !289), !dbg !1341
  %6 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1342
  %7 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %6, i32 0, i32 15, !dbg !1343
  %8 = load i8*, i8** %7, align 8, !dbg !1343
  %9 = bitcast i8* %8 to %struct.zedc_dev_t*, !dbg !1344
  store %struct.zedc_dev_t* %9, %struct.zedc_dev_t** %5, align 8, !dbg !1341
  %10 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1345
  %11 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %10, i32 0, i32 62, !dbg !1347
  %12 = load i16, i16* %11, align 4, !dbg !1347
  %13 = zext i16 %12 to i32, !dbg !1345
  %14 = icmp eq i32 %13, 0, !dbg !1348
  br i1 %14, label %15, label %16, !dbg !1349

; <label>:15:                                     ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !1350
  br label %106, !dbg !1350

; <label>:16:                                     ; preds = %1
  %17 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1351
  %18 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %17, i32 0, i32 60, !dbg !1353
  %19 = load i16, i16* %18, align 8, !dbg !1353
  %20 = zext i16 %19 to i32, !dbg !1351
  %21 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1354
  %22 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %21, i32 0, i32 62, !dbg !1355
  %23 = load i16, i16* %22, align 4, !dbg !1355
  %24 = zext i16 %23 to i32, !dbg !1354
  %25 = icmp slt i32 %20, %24, !dbg !1356
  br i1 %25, label %26, label %42, !dbg !1357

; <label>:26:                                     ; preds = %16
  br label %27, !dbg !1358, !llvm.loop !1360

; <label>:27:                                     ; preds = %26
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1361
  %29 = icmp ne %struct._IO_FILE* %28, null, !dbg !1361
  br i1 %29, label %30, label %35, !dbg !1361

; <label>:30:                                     ; preds = %27
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1365
  %32 = call i32 @getpid() #7, !dbg !1367
  %33 = call i32 @gettid(), !dbg !1368
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.21, i32 0, i32 0), i32 %32, i32 %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i32 823), !dbg !1370
  br label %35, !dbg !1372

; <label>:35:                                     ; preds = %30, %27
  br label %36, !dbg !1373

; <label>:36:                                     ; preds = %35
  %37 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %5, align 8, !dbg !1375
  %38 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %37, i32 0, i32 1, !dbg !1376
  store i32 -317, i32* %38, align 4, !dbg !1377
  %39 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %5, align 8, !dbg !1378
  %40 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %39, i32 0, i32 1, !dbg !1379
  %41 = load i32, i32* %40, align 4, !dbg !1379
  store i32 %41, i32* %2, align 4, !dbg !1380
  br label %106, !dbg !1380

; <label>:42:                                     ; preds = %16
  %43 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1381
  %44 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %43, i32 0, i32 35, !dbg !1382
  %45 = load i32, i32* %44, align 8, !dbg !1382
  %46 = sext i32 %45 to i64, !dbg !1383
  %47 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1383
  %48 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %47, i32 0, i32 34, !dbg !1384
  %49 = load %struct.zedc_wsp*, %struct.zedc_wsp** %48, align 8, !dbg !1384
  %50 = getelementptr inbounds %struct.zedc_wsp, %struct.zedc_wsp* %49, i32 0, i32 0, !dbg !1385
  %51 = getelementptr inbounds [2 x [32784 x i8]], [2 x [32784 x i8]]* %50, i64 0, i64 %46, !dbg !1383
  %52 = getelementptr inbounds [32784 x i8], [32784 x i8]* %51, i32 0, i32 0, !dbg !1383
  %53 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1386
  %54 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %53, i32 0, i32 61, !dbg !1387
  %55 = load i8, i8* %54, align 2, !dbg !1387
  %56 = zext i8 %55 to i32, !dbg !1386
  %57 = sext i32 %56 to i64, !dbg !1388
  %58 = getelementptr inbounds i8, i8* %52, i64 %57, !dbg !1388
  %59 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1389
  %60 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %59, i32 0, i32 60, !dbg !1390
  %61 = load i16, i16* %60, align 8, !dbg !1390
  %62 = zext i16 %61 to i32, !dbg !1389
  %63 = sext i32 %62 to i64, !dbg !1391
  %64 = getelementptr inbounds i8, i8* %58, i64 %63, !dbg !1391
  %65 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1392
  %66 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %65, i32 0, i32 62, !dbg !1393
  %67 = load i16, i16* %66, align 4, !dbg !1393
  %68 = zext i16 %67 to i32, !dbg !1392
  %69 = sext i32 %68 to i64, !dbg !1394
  %70 = sub i64 0, %69, !dbg !1394
  %71 = getelementptr inbounds i8, i8* %64, i64 %70, !dbg !1394
  store i8* %71, i8** %4, align 8, !dbg !1395
  br label %72, !dbg !1396

; <label>:72:                                     ; preds = %85, %42
  %73 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1397
  %74 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %73, i32 0, i32 11, !dbg !1399
  %75 = load i32, i32* %74, align 8, !dbg !1399
  %76 = icmp ne i32 %75, 0, !dbg !1397
  br i1 %76, label %77, label %83, !dbg !1400

; <label>:77:                                     ; preds = %72
  %78 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1401
  %79 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %78, i32 0, i32 62, !dbg !1403
  %80 = load i16, i16* %79, align 4, !dbg !1403
  %81 = zext i16 %80 to i32, !dbg !1401
  %82 = icmp ne i32 %81, 0, !dbg !1404
  br label %83

; <label>:83:                                     ; preds = %77, %72
  %84 = phi i1 [ false, %72 ], [ %82, %77 ]
  br i1 %84, label %85, label %105, !dbg !1405

; <label>:85:                                     ; preds = %83
  %86 = load i8*, i8** %4, align 8, !dbg !1407
  %87 = getelementptr inbounds i8, i8* %86, i32 1, !dbg !1407
  store i8* %87, i8** %4, align 8, !dbg !1407
  %88 = load i8, i8* %86, align 1, !dbg !1409
  %89 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1410
  %90 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %89, i32 0, i32 10, !dbg !1411
  %91 = load i8*, i8** %90, align 8, !dbg !1412
  %92 = getelementptr inbounds i8, i8* %91, i32 1, !dbg !1412
  store i8* %92, i8** %90, align 8, !dbg !1412
  store i8 %88, i8* %91, align 1, !dbg !1413
  %93 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1414
  %94 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %93, i32 0, i32 11, !dbg !1415
  %95 = load i32, i32* %94, align 8, !dbg !1416
  %96 = add i32 %95, -1, !dbg !1416
  store i32 %96, i32* %94, align 8, !dbg !1416
  %97 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1417
  %98 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %97, i32 0, i32 12, !dbg !1418
  %99 = load i64, i64* %98, align 8, !dbg !1419
  %100 = add i64 %99, 1, !dbg !1419
  store i64 %100, i64* %98, align 8, !dbg !1419
  %101 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1420
  %102 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %101, i32 0, i32 62, !dbg !1421
  %103 = load i16, i16* %102, align 4, !dbg !1422
  %104 = add i16 %103, -1, !dbg !1422
  store i16 %104, i16* %102, align 4, !dbg !1422
  br label %72, !dbg !1423, !llvm.loop !1425

; <label>:105:                                    ; preds = %83
  store i32 0, i32* %2, align 4, !dbg !1426
  br label %106, !dbg !1426

; <label>:106:                                    ; preds = %105, %36, %15
  %107 = load i32, i32* %2, align 4, !dbg !1427
  ret i32 %107, !dbg !1427
}

; Function Attrs: nounwind uwtable
define internal i32 @inflate_format_rem_trailer(%struct.zedc_stream_s*) #0 !dbg !1428 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zedc_stream_s*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca %struct.zedc_dev_t*, align 8
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %3, metadata !1429, metadata !289), !dbg !1430
  call void @llvm.dbg.declare(metadata [2 x i32]* %4, metadata !1431, metadata !289), !dbg !1434
  call void @llvm.dbg.declare(metadata %struct.zedc_dev_t** %5, metadata !1435, metadata !289), !dbg !1436
  %6 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1437
  %7 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %6, i32 0, i32 15, !dbg !1438
  %8 = load i8*, i8** %7, align 8, !dbg !1438
  %9 = bitcast i8* %8 to %struct.zedc_dev_t*, !dbg !1439
  store %struct.zedc_dev_t* %9, %struct.zedc_dev_t** %5, align 8, !dbg !1436
  %10 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1440
  %11 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %10, i32 0, i32 20, !dbg !1442
  %12 = load i32, i32* %11, align 8, !dbg !1442
  %13 = icmp eq i32 %12, 0, !dbg !1443
  br i1 %13, label %14, label %15, !dbg !1444

; <label>:14:                                     ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !1445
  br label %201, !dbg !1445

; <label>:15:                                     ; preds = %1
  %16 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1446
  %17 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %16, i32 0, i32 67, !dbg !1448
  %18 = load i32, i32* %17, align 4, !dbg !1448
  %19 = icmp eq i32 %18, 0, !dbg !1449
  br i1 %19, label %20, label %34, !dbg !1450

; <label>:20:                                     ; preds = %15
  %21 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1451
  %22 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %21, i32 0, i32 68, !dbg !1453
  store i32 0, i32* %22, align 8, !dbg !1454
  %23 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1455
  %24 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %23, i32 0, i32 20, !dbg !1457
  %25 = load i32, i32* %24, align 8, !dbg !1457
  %26 = icmp eq i32 %25, 2, !dbg !1458
  br i1 %26, label %27, label %30, !dbg !1459

; <label>:27:                                     ; preds = %20
  %28 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1460
  %29 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %28, i32 0, i32 67, !dbg !1461
  store i32 8, i32* %29, align 4, !dbg !1462
  br label %33, !dbg !1460

; <label>:30:                                     ; preds = %20
  %31 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1463
  %32 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %31, i32 0, i32 67, !dbg !1464
  store i32 4, i32* %32, align 4, !dbg !1465
  br label %33

; <label>:33:                                     ; preds = %30, %27
  br label %34, !dbg !1466

; <label>:34:                                     ; preds = %33, %15
  br label %35, !dbg !1467

; <label>:35:                                     ; preds = %190, %34
  %36 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1468
  %37 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %36, i32 0, i32 68, !dbg !1470
  %38 = load i32, i32* %37, align 8, !dbg !1470
  %39 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1471
  %40 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %39, i32 0, i32 67, !dbg !1472
  %41 = load i32, i32* %40, align 4, !dbg !1472
  %42 = icmp slt i32 %38, %41, !dbg !1473
  br i1 %42, label %43, label %48, !dbg !1474

; <label>:43:                                     ; preds = %35
  %44 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1475
  %45 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %44, i32 0, i32 8, !dbg !1477
  %46 = load i32, i32* %45, align 8, !dbg !1477
  %47 = icmp ne i32 %46, 0, !dbg !1478
  br label %48

; <label>:48:                                     ; preds = %43, %35
  %49 = phi i1 [ false, %35 ], [ %47, %43 ]
  br i1 %49, label %50, label %191, !dbg !1479

; <label>:50:                                     ; preds = %48
  %51 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1481
  %52 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %51, i32 0, i32 7, !dbg !1483
  %53 = load i8*, i8** %52, align 8, !dbg !1484
  %54 = getelementptr inbounds i8, i8* %53, i32 1, !dbg !1484
  store i8* %54, i8** %52, align 8, !dbg !1484
  %55 = load i8, i8* %53, align 1, !dbg !1485
  %56 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1486
  %57 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %56, i32 0, i32 68, !dbg !1487
  %58 = load i32, i32* %57, align 8, !dbg !1488
  %59 = add nsw i32 %58, 1, !dbg !1488
  store i32 %59, i32* %57, align 8, !dbg !1488
  %60 = sext i32 %58 to i64, !dbg !1489
  %61 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1489
  %62 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %61, i32 0, i32 69, !dbg !1490
  %63 = getelementptr inbounds [18 x i8], [18 x i8]* %62, i64 0, i64 %60, !dbg !1489
  store i8 %55, i8* %63, align 1, !dbg !1491
  %64 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1492
  %65 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %64, i32 0, i32 8, !dbg !1493
  %66 = load i32, i32* %65, align 8, !dbg !1494
  %67 = add i32 %66, -1, !dbg !1494
  store i32 %67, i32* %65, align 8, !dbg !1494
  %68 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1495
  %69 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %68, i32 0, i32 9, !dbg !1496
  %70 = load i64, i64* %69, align 8, !dbg !1497
  %71 = add i64 %70, 1, !dbg !1497
  store i64 %71, i64* %69, align 8, !dbg !1497
  %72 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1498
  %73 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %72, i32 0, i32 68, !dbg !1500
  %74 = load i32, i32* %73, align 8, !dbg !1500
  %75 = icmp eq i32 %74, 4, !dbg !1501
  br i1 %75, label %76, label %105, !dbg !1502

; <label>:76:                                     ; preds = %50
  %77 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1503
  %78 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %77, i32 0, i32 20, !dbg !1504
  %79 = load i32, i32* %78, align 8, !dbg !1504
  %80 = icmp eq i32 %79, 2, !dbg !1505
  br i1 %80, label %81, label %105, !dbg !1506

; <label>:81:                                     ; preds = %76
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0, !dbg !1508
  %83 = bitcast i32* %82 to i8*, !dbg !1510
  %84 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1511
  %85 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %84, i32 0, i32 69, !dbg !1512
  %86 = getelementptr inbounds [18 x i8], [18 x i8]* %85, i64 0, i64 0, !dbg !1511
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %83, i8* %86, i64 4, i32 4, i1 false), !dbg !1510
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0, !dbg !1513
  %88 = load i32, i32* %87, align 4, !dbg !1513
  %89 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1514
  %90 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %89, i32 0, i32 39, !dbg !1515
  store i32 %88, i32* %90, align 8, !dbg !1516
  %91 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1517
  %92 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %91, i32 0, i32 39, !dbg !1519
  %93 = load i32, i32* %92, align 8, !dbg !1519
  %94 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1520
  %95 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %94, i32 0, i32 13, !dbg !1521
  %96 = load i32, i32* %95, align 8, !dbg !1521
  %97 = icmp ne i32 %93, %96, !dbg !1522
  br i1 %97, label %98, label %104, !dbg !1523

; <label>:98:                                     ; preds = %81
  %99 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %5, align 8, !dbg !1524
  %100 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %99, i32 0, i32 1, !dbg !1526
  store i32 -315, i32* %100, align 4, !dbg !1527
  %101 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %5, align 8, !dbg !1528
  %102 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %101, i32 0, i32 1, !dbg !1529
  %103 = load i32, i32* %102, align 4, !dbg !1529
  store i32 %103, i32* %2, align 4, !dbg !1530
  br label %201, !dbg !1530

; <label>:104:                                    ; preds = %81
  br label %105, !dbg !1531

; <label>:105:                                    ; preds = %104, %76, %50
  %106 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1532
  %107 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %106, i32 0, i32 68, !dbg !1534
  %108 = load i32, i32* %107, align 8, !dbg !1534
  %109 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1535
  %110 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %109, i32 0, i32 67, !dbg !1536
  %111 = load i32, i32* %110, align 4, !dbg !1536
  %112 = icmp sge i32 %108, %111, !dbg !1537
  br i1 %112, label %113, label %190, !dbg !1538

; <label>:113:                                    ; preds = %105
  %114 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1539
  %115 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %114, i32 0, i32 20, !dbg !1542
  %116 = load i32, i32* %115, align 8, !dbg !1542
  %117 = icmp eq i32 %116, 2, !dbg !1543
  br i1 %117, label %118, label %146, !dbg !1544

; <label>:118:                                    ; preds = %113
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0, !dbg !1545
  %120 = bitcast i32* %119 to i8*, !dbg !1547
  %121 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1548
  %122 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %121, i32 0, i32 69, !dbg !1549
  %123 = getelementptr inbounds [18 x i8], [18 x i8]* %122, i64 0, i64 0, !dbg !1548
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %120, i8* %123, i64 8, i32 4, i1 false), !dbg !1547
  %124 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0, !dbg !1550
  %125 = load i32, i32* %124, align 4, !dbg !1550
  %126 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1551
  %127 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %126, i32 0, i32 39, !dbg !1552
  store i32 %125, i32* %127, align 8, !dbg !1553
  %128 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1, !dbg !1554
  %129 = load i32, i32* %128, align 4, !dbg !1554
  %130 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1555
  %131 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %130, i32 0, i32 37, !dbg !1556
  store i32 %129, i32* %131, align 8, !dbg !1557
  %132 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1558
  %133 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %132, i32 0, i32 39, !dbg !1560
  %134 = load i32, i32* %133, align 8, !dbg !1560
  %135 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1561
  %136 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %135, i32 0, i32 13, !dbg !1562
  %137 = load i32, i32* %136, align 8, !dbg !1562
  %138 = icmp ne i32 %134, %137, !dbg !1563
  br i1 %138, label %139, label %145, !dbg !1564

; <label>:139:                                    ; preds = %118
  %140 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %5, align 8, !dbg !1565
  %141 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %140, i32 0, i32 1, !dbg !1567
  store i32 -315, i32* %141, align 4, !dbg !1568
  %142 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %5, align 8, !dbg !1569
  %143 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %142, i32 0, i32 1, !dbg !1570
  %144 = load i32, i32* %143, align 4, !dbg !1570
  store i32 %144, i32* %2, align 4, !dbg !1571
  br label %201, !dbg !1571

; <label>:145:                                    ; preds = %118
  br label %189, !dbg !1572

; <label>:146:                                    ; preds = %113
  %147 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0, !dbg !1573
  %148 = bitcast i32* %147 to i8*, !dbg !1575
  %149 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1576
  %150 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %149, i32 0, i32 69, !dbg !1577
  %151 = getelementptr inbounds [18 x i8], [18 x i8]* %150, i64 0, i64 0, !dbg !1576
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %148, i8* %151, i64 4, i32 4, i1 false), !dbg !1575
  %152 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0, !dbg !1578
  %153 = load i32, i32* %152, align 4, !dbg !1578
  %154 = call i32 @__fswab32(i32 %153), !dbg !1579
  %155 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1580
  %156 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %155, i32 0, i32 38, !dbg !1581
  store i32 %154, i32* %156, align 4, !dbg !1582
  %157 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1583
  %158 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %157, i32 0, i32 38, !dbg !1585
  %159 = load i32, i32* %158, align 4, !dbg !1585
  %160 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1586
  %161 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %160, i32 0, i32 14, !dbg !1587
  %162 = load i32, i32* %161, align 4, !dbg !1587
  %163 = icmp ne i32 %159, %162, !dbg !1588
  br i1 %163, label %164, label %188, !dbg !1589

; <label>:164:                                    ; preds = %146
  br label %165, !dbg !1590, !llvm.loop !1592

; <label>:165:                                    ; preds = %164
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1593
  %167 = icmp ne %struct._IO_FILE* %166, null, !dbg !1593
  br i1 %167, label %168, label %181, !dbg !1593

; <label>:168:                                    ; preds = %165
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1597
  %170 = call i32 @getpid() #7, !dbg !1599
  %171 = call i32 @gettid(), !dbg !1600
  %172 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1602
  %173 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %172, i32 0, i32 38, !dbg !1603
  %174 = load i32, i32* %173, align 4, !dbg !1603
  %175 = zext i32 %174 to i64, !dbg !1604
  %176 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1605
  %177 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %176, i32 0, i32 14, !dbg !1606
  %178 = load i32, i32* %177, align 4, !dbg !1606
  %179 = zext i32 %178 to i64, !dbg !1607
  %180 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %169, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.22, i32 0, i32 0), i32 %170, i32 %171, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i32 747, i64 %175, i64 %179), !dbg !1608
  br label %181, !dbg !1603

; <label>:181:                                    ; preds = %168, %165
  br label %182, !dbg !1610

; <label>:182:                                    ; preds = %181
  %183 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %5, align 8, !dbg !1612
  %184 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %183, i32 0, i32 1, !dbg !1613
  store i32 -313, i32* %184, align 4, !dbg !1614
  %185 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %5, align 8, !dbg !1615
  %186 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %185, i32 0, i32 1, !dbg !1616
  %187 = load i32, i32* %186, align 4, !dbg !1616
  store i32 %187, i32* %2, align 4, !dbg !1617
  br label %201, !dbg !1617

; <label>:188:                                    ; preds = %146
  br label %189

; <label>:189:                                    ; preds = %188, %145
  br label %190, !dbg !1618

; <label>:190:                                    ; preds = %189, %105
  br label %35, !dbg !1619, !llvm.loop !1621

; <label>:191:                                    ; preds = %48
  %192 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1622
  %193 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %192, i32 0, i32 68, !dbg !1624
  %194 = load i32, i32* %193, align 8, !dbg !1624
  %195 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1625
  %196 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %195, i32 0, i32 67, !dbg !1626
  %197 = load i32, i32* %196, align 4, !dbg !1626
  %198 = icmp eq i32 %194, %197, !dbg !1627
  br i1 %198, label %199, label %200, !dbg !1628

; <label>:199:                                    ; preds = %191
  store i32 0, i32* %2, align 4, !dbg !1629
  br label %201, !dbg !1629

; <label>:200:                                    ; preds = %191
  store i32 1, i32* %2, align 4, !dbg !1630
  br label %201, !dbg !1630

; <label>:201:                                    ; preds = %200, %199, %182, %139, %98, %14
  %202 = load i32, i32* %2, align 4, !dbg !1631
  ret i32 %202, !dbg !1631
}

; Function Attrs: nounwind uwtable
define internal i32 @inflate_format_rem_header(%struct.zedc_stream_s*, i32) #0 !dbg !1632 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zedc_stream_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.zedc_dev_t*, align 8
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %4, metadata !1635, metadata !289), !dbg !1636
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1637, metadata !289), !dbg !1638
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1639, metadata !289), !dbg !1640
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1641, metadata !289), !dbg !1642
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1643, metadata !289), !dbg !1644
  store i32 0, i32* %8, align 4, !dbg !1644
  call void @llvm.dbg.declare(metadata %struct.zedc_dev_t** %9, metadata !1645, metadata !289), !dbg !1646
  store %struct.zedc_dev_t* null, %struct.zedc_dev_t** %9, align 8, !dbg !1646
  %10 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1647
  %11 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %10, i32 0, i32 20, !dbg !1649
  %12 = load i32, i32* %11, align 8, !dbg !1649
  %13 = icmp eq i32 %12, 0, !dbg !1650
  br i1 %13, label %14, label %15, !dbg !1651

; <label>:14:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !1652
  br label %126, !dbg !1652

; <label>:15:                                     ; preds = %2
  %16 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1653
  %17 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %16, i32 0, i32 6, !dbg !1654
  %18 = load i32, i32* %17, align 8, !dbg !1655
  %19 = and i32 %18, -129, !dbg !1655
  store i32 %19, i32* %17, align 8, !dbg !1655
  %20 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1656
  %21 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %20, i32 0, i32 63, !dbg !1658
  %22 = load i32, i32* %21, align 8, !dbg !1658
  %23 = icmp eq i32 %22, 0, !dbg !1659
  br i1 %23, label %24, label %42, !dbg !1660

; <label>:24:                                     ; preds = %15
  %25 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1661
  %26 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %25, i32 0, i32 64, !dbg !1663
  store i32 0, i32* %26, align 4, !dbg !1664
  %27 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1665
  %28 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %27, i32 0, i32 20, !dbg !1667
  %29 = load i32, i32* %28, align 8, !dbg !1667
  %30 = icmp eq i32 %29, 2, !dbg !1668
  br i1 %30, label %31, label %34, !dbg !1669

; <label>:31:                                     ; preds = %24
  %32 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1670
  %33 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %32, i32 0, i32 63, !dbg !1671
  store i32 10, i32* %33, align 8, !dbg !1672
  br label %37, !dbg !1670

; <label>:34:                                     ; preds = %24
  %35 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1673
  %36 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %35, i32 0, i32 63, !dbg !1674
  store i32 2, i32* %36, align 8, !dbg !1675
  br label %37

; <label>:37:                                     ; preds = %34, %31
  %38 = load i32, i32* %5, align 4, !dbg !1676
  %39 = icmp eq i32 5, %38, !dbg !1678
  br i1 %39, label %40, label %41, !dbg !1679

; <label>:40:                                     ; preds = %37
  store i32 1, i32* %8, align 4, !dbg !1680
  br label %41, !dbg !1681

; <label>:41:                                     ; preds = %40, %37
  br label %42, !dbg !1682

; <label>:42:                                     ; preds = %41, %15
  store i32 0, i32* %6, align 4, !dbg !1683
  store i32 0, i32* %7, align 4, !dbg !1684
  br label %43, !dbg !1685

; <label>:43:                                     ; preds = %112, %42
  %44 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1686
  %45 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %44, i32 0, i32 8, !dbg !1688
  %46 = load i32, i32* %45, align 8, !dbg !1688
  %47 = icmp ne i32 %46, 0, !dbg !1689
  br i1 %47, label %48, label %113, !dbg !1689

; <label>:48:                                     ; preds = %43
  %49 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1690
  %50 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %49, i32 0, i32 64, !dbg !1693
  %51 = load i32, i32* %50, align 4, !dbg !1693
  %52 = icmp slt i32 %51, 18, !dbg !1694
  br i1 %52, label %53, label %65, !dbg !1695

; <label>:53:                                     ; preds = %48
  %54 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1696
  %55 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %54, i32 0, i32 7, !dbg !1697
  %56 = load i8*, i8** %55, align 8, !dbg !1697
  %57 = load i8, i8* %56, align 1, !dbg !1698
  %58 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1699
  %59 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %58, i32 0, i32 64, !dbg !1700
  %60 = load i32, i32* %59, align 4, !dbg !1700
  %61 = sext i32 %60 to i64, !dbg !1701
  %62 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1701
  %63 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %62, i32 0, i32 65, !dbg !1702
  %64 = getelementptr inbounds [18 x i8], [18 x i8]* %63, i64 0, i64 %61, !dbg !1701
  store i8 %57, i8* %64, align 1, !dbg !1703
  br label %65, !dbg !1701

; <label>:65:                                     ; preds = %53, %48
  %66 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1704
  %67 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %66, i32 0, i32 20, !dbg !1706
  %68 = load i32, i32* %67, align 8, !dbg !1706
  %69 = icmp eq i32 %68, 2, !dbg !1707
  br i1 %69, label %70, label %73, !dbg !1708

; <label>:70:                                     ; preds = %65
  %71 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1709
  %72 = call i32 @inflate_rem_gzip_header(%struct.zedc_stream_s* %71), !dbg !1710
  store i32 %72, i32* %7, align 4, !dbg !1711
  br label %76, !dbg !1712

; <label>:73:                                     ; preds = %65
  %74 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1713
  %75 = call i32 @inflate_rem_zlib_header(%struct.zedc_stream_s* %74), !dbg !1714
  store i32 %75, i32* %7, align 4, !dbg !1715
  br label %76

; <label>:76:                                     ; preds = %73, %70
  %77 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1716
  %78 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %77, i32 0, i32 7, !dbg !1717
  %79 = load i8*, i8** %78, align 8, !dbg !1718
  %80 = getelementptr inbounds i8, i8* %79, i32 1, !dbg !1718
  store i8* %80, i8** %78, align 8, !dbg !1718
  %81 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1719
  %82 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %81, i32 0, i32 8, !dbg !1720
  %83 = load i32, i32* %82, align 8, !dbg !1721
  %84 = add i32 %83, -1, !dbg !1721
  store i32 %84, i32* %82, align 8, !dbg !1721
  %85 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1722
  %86 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %85, i32 0, i32 9, !dbg !1723
  %87 = load i64, i64* %86, align 8, !dbg !1724
  %88 = add i64 %87, 1, !dbg !1724
  store i64 %88, i64* %86, align 8, !dbg !1724
  %89 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1725
  %90 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %89, i32 0, i32 64, !dbg !1726
  %91 = load i32, i32* %90, align 4, !dbg !1727
  %92 = add nsw i32 %91, 1, !dbg !1727
  store i32 %92, i32* %90, align 4, !dbg !1727
  %93 = load i32, i32* %7, align 4, !dbg !1728
  %94 = icmp eq i32 0, %93, !dbg !1730
  br i1 %94, label %95, label %96, !dbg !1731

; <label>:95:                                     ; preds = %76
  store i32 0, i32* %6, align 4, !dbg !1732
  br label %113, !dbg !1734

; <label>:96:                                     ; preds = %76
  %97 = load i32, i32* %7, align 4, !dbg !1735
  %98 = icmp eq i32 3, %97, !dbg !1737
  br i1 %98, label %99, label %106, !dbg !1738

; <label>:99:                                     ; preds = %96
  %100 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1739
  %101 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %100, i32 0, i32 15, !dbg !1741
  %102 = load i8*, i8** %101, align 8, !dbg !1741
  %103 = bitcast i8* %102 to %struct.zedc_dev_t*, !dbg !1742
  store %struct.zedc_dev_t* %103, %struct.zedc_dev_t** %9, align 8, !dbg !1743
  %104 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %9, align 8, !dbg !1744
  %105 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %104, i32 0, i32 1, !dbg !1745
  store i32 -314, i32* %105, align 4, !dbg !1746
  store i32 -314, i32* %6, align 4, !dbg !1747
  br label %113, !dbg !1748

; <label>:106:                                    ; preds = %96
  %107 = load i32, i32* %7, align 4, !dbg !1749
  %108 = icmp eq i32 2, %107, !dbg !1751
  br i1 %108, label %109, label %110, !dbg !1752

; <label>:109:                                    ; preds = %106
  store i32 2, i32* %6, align 4, !dbg !1753
  br label %113, !dbg !1755

; <label>:110:                                    ; preds = %106
  br label %111

; <label>:111:                                    ; preds = %110
  br label %112

; <label>:112:                                    ; preds = %111
  br label %43, !dbg !1756, !llvm.loop !1758

; <label>:113:                                    ; preds = %109, %99, %95, %43
  %114 = load i32, i32* %8, align 4, !dbg !1759
  %115 = icmp eq i32 1, %114, !dbg !1761
  br i1 %115, label %116, label %124, !dbg !1762

; <label>:116:                                    ; preds = %113
  %117 = load i32, i32* %6, align 4, !dbg !1763
  %118 = icmp eq i32 0, %117, !dbg !1765
  br i1 %118, label %119, label %124, !dbg !1766

; <label>:119:                                    ; preds = %116
  %120 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1767
  %121 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %120, i32 0, i32 6, !dbg !1768
  %122 = load i32, i32* %121, align 8, !dbg !1769
  %123 = or i32 %122, 128, !dbg !1769
  store i32 %123, i32* %121, align 8, !dbg !1769
  br label %124, !dbg !1767

; <label>:124:                                    ; preds = %119, %116, %113
  %125 = load i32, i32* %6, align 4, !dbg !1770
  store i32 %125, i32* %3, align 4, !dbg !1771
  br label %126, !dbg !1771

; <label>:126:                                    ; preds = %124, %14
  %127 = load i32, i32* %3, align 4, !dbg !1772
  ret i32 %127, !dbg !1772
}

; Function Attrs: nounwind uwtable
define internal void @set_inflate_asiv(%struct.zedc_stream_s*, %struct.zedc_asiv_infl*) #0 !dbg !1773 {
  %3 = alloca %struct.zedc_stream_s*, align 8
  %4 = alloca %struct.zedc_asiv_infl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %3, metadata !1776, metadata !289), !dbg !1777
  store %struct.zedc_asiv_infl* %1, %struct.zedc_asiv_infl** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_asiv_infl** %4, metadata !1778, metadata !289), !dbg !1779
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1780, metadata !289), !dbg !1781
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1782, metadata !289), !dbg !1783
  %7 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1784
  %8 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %7, i32 0, i32 7, !dbg !1785
  %9 = load i8*, i8** %8, align 8, !dbg !1785
  %10 = ptrtoint i8* %9 to i64, !dbg !1786
  %11 = call i64 @__fswab64(i64 %10), !dbg !1787
  %12 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %4, align 8, !dbg !1788
  %13 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %12, i32 0, i32 0, !dbg !1789
  store i64 %11, i64* %13, align 1, !dbg !1790
  %14 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1791
  %15 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %14, i32 0, i32 8, !dbg !1792
  %16 = load i32, i32* %15, align 8, !dbg !1792
  %17 = call i32 @__fswab32(i32 %16), !dbg !1793
  %18 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %4, align 8, !dbg !1794
  %19 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %18, i32 0, i32 1, !dbg !1795
  store i32 %17, i32* %19, align 1, !dbg !1796
  %20 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1797
  %21 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %20, i32 0, i32 10, !dbg !1798
  %22 = load i8*, i8** %21, align 8, !dbg !1798
  %23 = ptrtoint i8* %22 to i64, !dbg !1799
  %24 = call i64 @__fswab64(i64 %23), !dbg !1800
  %25 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %4, align 8, !dbg !1801
  %26 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %25, i32 0, i32 3, !dbg !1802
  store i64 %24, i64* %26, align 1, !dbg !1803
  %27 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1804
  %28 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %27, i32 0, i32 11, !dbg !1805
  %29 = load i32, i32* %28, align 8, !dbg !1805
  %30 = call i32 @__fswab32(i32 %29), !dbg !1806
  %31 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %4, align 8, !dbg !1807
  %32 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %31, i32 0, i32 4, !dbg !1808
  store i32 %30, i32* %32, align 1, !dbg !1809
  %33 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1810
  %34 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %33, i32 0, i32 34, !dbg !1811
  %35 = load %struct.zedc_wsp*, %struct.zedc_wsp** %34, align 8, !dbg !1811
  %36 = getelementptr inbounds %struct.zedc_wsp, %struct.zedc_wsp* %35, i32 0, i32 1, !dbg !1812
  %37 = getelementptr inbounds [512 x i8], [512 x i8]* %36, i32 0, i32 0, !dbg !1810
  %38 = ptrtoint i8* %37 to i64, !dbg !1813
  %39 = call i64 @__fswab64(i64 %38), !dbg !1814
  %40 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %4, align 8, !dbg !1815
  %41 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %40, i32 0, i32 9, !dbg !1816
  store i64 %39, i64* %41, align 1, !dbg !1817
  %42 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1818
  %43 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %42, i32 0, i32 44, !dbg !1819
  %44 = load i8, i8* %43, align 2, !dbg !1819
  %45 = zext i8 %44 to i32, !dbg !1818
  %46 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1820
  %47 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %46, i32 0, i32 54, !dbg !1821
  %48 = load i32, i32* %47, align 8, !dbg !1821
  %49 = add i32 %45, %48, !dbg !1822
  %50 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1823
  %51 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %50, i32 0, i32 55, !dbg !1824
  %52 = load i32, i32* %51, align 4, !dbg !1824
  %53 = add i32 %49, %52, !dbg !1825
  %54 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1826
  %55 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %54, i32 0, i32 45, !dbg !1827
  %56 = load i8, i8* %55, align 1, !dbg !1827
  %57 = zext i8 %56 to i32, !dbg !1826
  %58 = add i32 %53, %57, !dbg !1828
  %59 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1829
  %60 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %59, i32 0, i32 56, !dbg !1830
  %61 = load i32, i32* %60, align 8, !dbg !1830
  %62 = add i32 %58, %61, !dbg !1831
  %63 = zext i32 %62 to i64, !dbg !1818
  store i64 %63, i64* %6, align 8, !dbg !1832
  %64 = load i64, i64* %6, align 8, !dbg !1833
  %65 = urem i64 %64, 8, !dbg !1835
  %66 = icmp ne i64 %65, 0, !dbg !1835
  br i1 %66, label %67, label %92, !dbg !1836

; <label>:67:                                     ; preds = %2
  br label %68, !dbg !1837, !llvm.loop !1838

; <label>:68:                                     ; preds = %67
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1839
  %70 = icmp ne %struct._IO_FILE* %69, null, !dbg !1839
  br i1 %70, label %71, label %90, !dbg !1839

; <label>:71:                                     ; preds = %68
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1843
  %73 = call i32 @getpid() #7, !dbg !1845
  %74 = call i32 @gettid(), !dbg !1846
  %75 = load i64, i64* %6, align 8, !dbg !1848
  %76 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1849
  %77 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %76, i32 0, i32 54, !dbg !1850
  %78 = load i32, i32* %77, align 8, !dbg !1850
  %79 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1851
  %80 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %79, i32 0, i32 55, !dbg !1852
  %81 = load i32, i32* %80, align 4, !dbg !1852
  %82 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1853
  %83 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %82, i32 0, i32 45, !dbg !1854
  %84 = load i8, i8* %83, align 1, !dbg !1854
  %85 = zext i8 %84 to i32, !dbg !1855
  %86 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1856
  %87 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %86, i32 0, i32 56, !dbg !1857
  %88 = load i32, i32* %87, align 8, !dbg !1857
  %89 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.25, i32 0, i32 0), i32 %73, i32 %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i32 917, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.set_inflate_asiv, i32 0, i32 0), i64 %75, i32 %78, i32 %81, i32 %85, i32 %88), !dbg !1858
  br label %90, !dbg !1860

; <label>:90:                                     ; preds = %71, %68
  br label %91, !dbg !1861

; <label>:91:                                     ; preds = %90
  br label %92, !dbg !1863

; <label>:92:                                     ; preds = %91, %2
  %93 = load i64, i64* %6, align 8, !dbg !1865
  %94 = udiv i64 %93, 8, !dbg !1866
  %95 = trunc i64 %94 to i32, !dbg !1867
  %96 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1868
  %97 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %96, i32 0, i32 42, !dbg !1869
  store i32 %95, i32* %97, align 8, !dbg !1870
  %98 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1871
  %99 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %98, i32 0, i32 54, !dbg !1872
  %100 = load i32, i32* %99, align 8, !dbg !1872
  %101 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1873
  %102 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %101, i32 0, i32 56, !dbg !1874
  %103 = load i32, i32* %102, align 8, !dbg !1874
  %104 = add i32 %100, %103, !dbg !1875
  %105 = zext i32 %104 to i64, !dbg !1871
  %106 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1876
  %107 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %106, i32 0, i32 57, !dbg !1877
  store i64 %105, i64* %107, align 8, !dbg !1878
  %108 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1879
  %109 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %108, i32 0, i32 42, !dbg !1881
  %110 = load i32, i32* %109, align 8, !dbg !1881
  %111 = icmp ugt i32 %110, 512, !dbg !1882
  br i1 %111, label %112, label %126, !dbg !1883

; <label>:112:                                    ; preds = %92
  br label %113, !dbg !1884, !llvm.loop !1885

; <label>:113:                                    ; preds = %112
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1886
  %115 = icmp ne %struct._IO_FILE* %114, null, !dbg !1886
  br i1 %115, label %116, label %124, !dbg !1886

; <label>:116:                                    ; preds = %113
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1890
  %118 = call i32 @getpid() #7, !dbg !1892
  %119 = call i32 @gettid(), !dbg !1893
  %120 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1895
  %121 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %120, i32 0, i32 42, !dbg !1896
  %122 = load i32, i32* %121, align 8, !dbg !1896
  %123 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %117, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.26, i32 0, i32 0), i32 %118, i32 %119, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i32 925, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.set_inflate_asiv, i32 0, i32 0), i32 %122, i32 512), !dbg !1897
  br label %124, !dbg !1899

; <label>:124:                                    ; preds = %116, %113
  br label %125, !dbg !1900

; <label>:125:                                    ; preds = %124
  br label %126, !dbg !1902

; <label>:126:                                    ; preds = %125, %92
  %127 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1904
  %128 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %127, i32 0, i32 42, !dbg !1905
  %129 = load i32, i32* %128, align 8, !dbg !1905
  %130 = call i32 @__fswab32(i32 %129), !dbg !1906
  %131 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %4, align 8, !dbg !1907
  %132 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %131, i32 0, i32 10, !dbg !1908
  store i32 %130, i32* %132, align 1, !dbg !1909
  %133 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1910
  %134 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %133, i32 0, i32 45, !dbg !1911
  %135 = load i8, i8* %134, align 1, !dbg !1911
  %136 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %4, align 8, !dbg !1912
  %137 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %136, i32 0, i32 13, !dbg !1913
  store i8 %135, i8* %137, align 1, !dbg !1914
  %138 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1915
  %139 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %138, i32 0, i32 44, !dbg !1916
  %140 = load i8, i8* %139, align 2, !dbg !1916
  %141 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %4, align 8, !dbg !1917
  %142 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %141, i32 0, i32 12, !dbg !1918
  store i8 %140, i8* %142, align 1, !dbg !1919
  %143 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1920
  %144 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %143, i32 0, i32 54, !dbg !1921
  %145 = load i32, i32* %144, align 8, !dbg !1921
  %146 = trunc i32 %145 to i16, !dbg !1920
  %147 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1922
  %148 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %147, i32 0, i32 43, !dbg !1923
  store i16 %146, i16* %148, align 4, !dbg !1924
  %149 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1925
  %150 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %149, i32 0, i32 43, !dbg !1926
  %151 = load i16, i16* %150, align 4, !dbg !1926
  %152 = call zeroext i16 @__fswab16(i16 zeroext %151), !dbg !1927
  %153 = zext i16 %152 to i32, !dbg !1927
  %154 = trunc i32 %153 to i16, !dbg !1928
  %155 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %4, align 8, !dbg !1929
  %156 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %155, i32 0, i32 11, !dbg !1930
  store i16 %154, i16* %156, align 1, !dbg !1931
  %157 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1932
  %158 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %157, i32 0, i32 35, !dbg !1933
  %159 = load i32, i32* %158, align 8, !dbg !1933
  store i32 %159, i32* %5, align 4, !dbg !1934
  %160 = load i32, i32* %5, align 4, !dbg !1935
  %161 = sext i32 %160 to i64, !dbg !1936
  %162 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1936
  %163 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %162, i32 0, i32 34, !dbg !1937
  %164 = load %struct.zedc_wsp*, %struct.zedc_wsp** %163, align 8, !dbg !1937
  %165 = getelementptr inbounds %struct.zedc_wsp, %struct.zedc_wsp* %164, i32 0, i32 0, !dbg !1938
  %166 = getelementptr inbounds [2 x [32784 x i8]], [2 x [32784 x i8]]* %165, i64 0, i64 %161, !dbg !1936
  %167 = getelementptr inbounds [32784 x i8], [32784 x i8]* %166, i32 0, i32 0, !dbg !1936
  %168 = ptrtoint i8* %167 to i64, !dbg !1939
  %169 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1940
  %170 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %169, i32 0, i32 61, !dbg !1941
  %171 = load i8, i8* %170, align 2, !dbg !1941
  %172 = zext i8 %171 to i64, !dbg !1940
  %173 = add i64 %168, %172, !dbg !1942
  %174 = call i64 @__fswab64(i64 %173), !dbg !1943
  %175 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %4, align 8, !dbg !1944
  %176 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %175, i32 0, i32 6, !dbg !1945
  store i64 %174, i64* %176, align 1, !dbg !1946
  %177 = load i32, i32* %5, align 4, !dbg !1947
  %178 = xor i32 %177, 1, !dbg !1948
  %179 = sext i32 %178 to i64, !dbg !1949
  %180 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1949
  %181 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %180, i32 0, i32 34, !dbg !1950
  %182 = load %struct.zedc_wsp*, %struct.zedc_wsp** %181, align 8, !dbg !1950
  %183 = getelementptr inbounds %struct.zedc_wsp, %struct.zedc_wsp* %182, i32 0, i32 0, !dbg !1951
  %184 = getelementptr inbounds [2 x [32784 x i8]], [2 x [32784 x i8]]* %183, i64 0, i64 %179, !dbg !1949
  %185 = getelementptr inbounds [32784 x i8], [32784 x i8]* %184, i32 0, i32 0, !dbg !1949
  %186 = ptrtoint i8* %185 to i64, !dbg !1952
  %187 = call i64 @__fswab64(i64 %186), !dbg !1953
  %188 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %4, align 8, !dbg !1954
  %189 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %188, i32 0, i32 14, !dbg !1955
  store i64 %187, i64* %189, align 1, !dbg !1956
  %190 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1957
  %191 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %190, i32 0, i32 35, !dbg !1958
  %192 = load i32, i32* %191, align 8, !dbg !1959
  %193 = xor i32 %192, 1, !dbg !1959
  store i32 %193, i32* %191, align 8, !dbg !1959
  %194 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1960
  %195 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %194, i32 0, i32 60, !dbg !1961
  %196 = load i16, i16* %195, align 8, !dbg !1961
  %197 = zext i16 %196 to i32, !dbg !1962
  %198 = call i32 @__fswab32(i32 %197), !dbg !1963
  %199 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %4, align 8, !dbg !1964
  %200 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %199, i32 0, i32 7, !dbg !1965
  store i32 %198, i32* %200, align 1, !dbg !1966
  %201 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %4, align 8, !dbg !1967
  %202 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %201, i32 0, i32 15, !dbg !1968
  store i32 276824064, i32* %202, align 1, !dbg !1969
  %203 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1970
  %204 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %203, i32 0, i32 13, !dbg !1971
  %205 = load i32, i32* %204, align 8, !dbg !1971
  %206 = call i32 @__fswab32(i32 %205), !dbg !1972
  %207 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %4, align 8, !dbg !1973
  %208 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %207, i32 0, i32 2, !dbg !1974
  store i32 %206, i32* %208, align 1, !dbg !1975
  %209 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1976
  %210 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %209, i32 0, i32 14, !dbg !1977
  %211 = load i32, i32* %210, align 4, !dbg !1977
  %212 = call i32 @__fswab32(i32 %211), !dbg !1978
  %213 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %4, align 8, !dbg !1979
  %214 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %213, i32 0, i32 5, !dbg !1980
  store i32 %212, i32* %214, align 1, !dbg !1981
  ret void, !dbg !1982
}

declare void @zedc_asiv_infl_print(%struct.zedc_stream_s*) #4

declare i32 @zedc_execute_request(%struct.zedc_dev_t*, %struct.ddcb_cmd*) #4

declare void @zedc_asv_infl_print(%struct.zedc_stream_s*) #4

; Function Attrs: nounwind uwtable
define internal void @get_inflate_asv(%struct.zedc_stream_s*, %struct.zedc_asv_infl*) #0 !dbg !1983 {
  %3 = alloca %struct.zedc_stream_s*, align 8
  %4 = alloca %struct.zedc_asv_infl*, align 8
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %3, metadata !1986, metadata !289), !dbg !1987
  store %struct.zedc_asv_infl* %1, %struct.zedc_asv_infl** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_asv_infl** %4, metadata !1988, metadata !289), !dbg !1989
  %5 = load %struct.zedc_asv_infl*, %struct.zedc_asv_infl** %4, align 8, !dbg !1990
  %6 = getelementptr inbounds %struct.zedc_asv_infl, %struct.zedc_asv_infl* %5, i32 0, i32 12, !dbg !1992
  %7 = load i32, i32* %6, align 1, !dbg !1992
  %8 = icmp ne i32 %7, 0, !dbg !1993
  br i1 %8, label %15, label %9, !dbg !1994

; <label>:9:                                      ; preds = %2
  %10 = load %struct.zedc_asv_infl*, %struct.zedc_asv_infl** %4, align 8, !dbg !1995
  %11 = getelementptr inbounds %struct.zedc_asv_infl, %struct.zedc_asv_infl* %10, i32 0, i32 5, !dbg !1997
  %12 = load i8, i8* %11, align 1, !dbg !1997
  %13 = zext i8 %12 to i32, !dbg !1995
  %14 = icmp ne i32 %13, 0, !dbg !1998
  br i1 %14, label %15, label %35, !dbg !1999

; <label>:15:                                     ; preds = %9, %2
  %16 = load %struct.zedc_asv_infl*, %struct.zedc_asv_infl** %4, align 8, !dbg !2000
  %17 = getelementptr inbounds %struct.zedc_asv_infl, %struct.zedc_asv_infl* %16, i32 0, i32 9, !dbg !2002
  %18 = load i16, i16* %17, align 1, !dbg !2002
  %19 = call zeroext i16 @__fswab16(i16 zeroext %18), !dbg !2003
  %20 = zext i16 %19 to i32, !dbg !2003
  %21 = trunc i32 %20 to i16, !dbg !2000
  %22 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2004
  %23 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %22, i32 0, i32 51, !dbg !2005
  store i16 %21, i16* %23, align 8, !dbg !2006
  %24 = load %struct.zedc_asv_infl*, %struct.zedc_asv_infl** %4, align 8, !dbg !2007
  %25 = getelementptr inbounds %struct.zedc_asv_infl, %struct.zedc_asv_infl* %24, i32 0, i32 6, !dbg !2008
  %26 = load i32, i32* %25, align 1, !dbg !2008
  %27 = call i32 @__fswab32(i32 %26), !dbg !2009
  %28 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2010
  %29 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %28, i32 0, i32 50, !dbg !2011
  store i32 %27, i32* %29, align 4, !dbg !2012
  %30 = load %struct.zedc_asv_infl*, %struct.zedc_asv_infl** %4, align 8, !dbg !2013
  %31 = getelementptr inbounds %struct.zedc_asv_infl, %struct.zedc_asv_infl* %30, i32 0, i32 8, !dbg !2014
  %32 = load i8, i8* %31, align 1, !dbg !2014
  %33 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2015
  %34 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %33, i32 0, i32 52, !dbg !2016
  store i8 %32, i8* %34, align 2, !dbg !2017
  br label %35, !dbg !2018

; <label>:35:                                     ; preds = %15, %9
  %36 = load %struct.zedc_asv_infl*, %struct.zedc_asv_infl** %4, align 8, !dbg !2019
  %37 = getelementptr inbounds %struct.zedc_asv_infl, %struct.zedc_asv_infl* %36, i32 0, i32 1, !dbg !2020
  %38 = load i16, i16* %37, align 1, !dbg !2020
  %39 = call zeroext i16 @__fswab16(i16 zeroext %38), !dbg !2021
  %40 = zext i16 %39 to i32, !dbg !2021
  %41 = trunc i32 %40 to i16, !dbg !2019
  %42 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2022
  %43 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %42, i32 0, i32 53, !dbg !2023
  store i16 %41, i16* %43, align 4, !dbg !2024
  %44 = load %struct.zedc_asv_infl*, %struct.zedc_asv_infl** %4, align 8, !dbg !2025
  %45 = getelementptr inbounds %struct.zedc_asv_infl, %struct.zedc_asv_infl* %44, i32 0, i32 10, !dbg !2026
  %46 = load i32, i32* %45, align 1, !dbg !2026
  %47 = call i32 @__fswab32(i32 %46), !dbg !2027
  %48 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2028
  %49 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %48, i32 0, i32 13, !dbg !2029
  store i32 %47, i32* %49, align 8, !dbg !2030
  %50 = load %struct.zedc_asv_infl*, %struct.zedc_asv_infl** %4, align 8, !dbg !2031
  %51 = getelementptr inbounds %struct.zedc_asv_infl, %struct.zedc_asv_infl* %50, i32 0, i32 11, !dbg !2032
  %52 = load i32, i32* %51, align 1, !dbg !2032
  %53 = call i32 @__fswab32(i32 %52), !dbg !2033
  %54 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2034
  %55 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %54, i32 0, i32 14, !dbg !2035
  store i32 %53, i32* %55, align 4, !dbg !2036
  %56 = load %struct.zedc_asv_infl*, %struct.zedc_asv_infl** %4, align 8, !dbg !2037
  %57 = getelementptr inbounds %struct.zedc_asv_infl, %struct.zedc_asv_infl* %56, i32 0, i32 0, !dbg !2038
  %58 = load i16, i16* %57, align 1, !dbg !2038
  %59 = call zeroext i16 @__fswab16(i16 zeroext %58), !dbg !2039
  %60 = zext i16 %59 to i32, !dbg !2039
  %61 = trunc i32 %60 to i16, !dbg !2037
  %62 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2040
  %63 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %62, i32 0, i32 60, !dbg !2041
  store i16 %61, i16* %63, align 8, !dbg !2042
  %64 = load %struct.zedc_asv_infl*, %struct.zedc_asv_infl** %4, align 8, !dbg !2043
  %65 = getelementptr inbounds %struct.zedc_asv_infl, %struct.zedc_asv_infl* %64, i32 0, i32 15, !dbg !2044
  %66 = load i8, i8* %65, align 1, !dbg !2044
  %67 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2045
  %68 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %67, i32 0, i32 61, !dbg !2046
  store i8 %66, i8* %68, align 2, !dbg !2047
  %69 = load %struct.zedc_asv_infl*, %struct.zedc_asv_infl** %4, align 8, !dbg !2048
  %70 = getelementptr inbounds %struct.zedc_asv_infl, %struct.zedc_asv_infl* %69, i32 0, i32 13, !dbg !2049
  %71 = load i32, i32* %70, align 1, !dbg !2049
  %72 = call i32 @__fswab32(i32 %71), !dbg !2050
  %73 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2051
  %74 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %73, i32 0, i32 47, !dbg !2052
  store i32 %72, i32* %74, align 4, !dbg !2053
  %75 = load %struct.zedc_asv_infl*, %struct.zedc_asv_infl** %4, align 8, !dbg !2054
  %76 = getelementptr inbounds %struct.zedc_asv_infl, %struct.zedc_asv_infl* %75, i32 0, i32 12, !dbg !2055
  %77 = load i32, i32* %76, align 1, !dbg !2055
  %78 = call i32 @__fswab32(i32 %77), !dbg !2056
  %79 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2057
  %80 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %79, i32 0, i32 46, !dbg !2058
  store i32 %78, i32* %80, align 8, !dbg !2059
  %81 = load %struct.zedc_asv_infl*, %struct.zedc_asv_infl** %4, align 8, !dbg !2060
  %82 = getelementptr inbounds %struct.zedc_asv_infl, %struct.zedc_asv_infl* %81, i32 0, i32 5, !dbg !2061
  %83 = load i8, i8* %82, align 1, !dbg !2061
  %84 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2062
  %85 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %84, i32 0, i32 48, !dbg !2063
  store i8 %83, i8* %85, align 8, !dbg !2064
  %86 = load %struct.zedc_asv_infl*, %struct.zedc_asv_infl** %4, align 8, !dbg !2065
  %87 = getelementptr inbounds %struct.zedc_asv_infl, %struct.zedc_asv_infl* %86, i32 0, i32 17, !dbg !2066
  %88 = load i16, i16* %87, align 1, !dbg !2066
  %89 = call zeroext i16 @__fswab16(i16 zeroext %88), !dbg !2067
  %90 = zext i16 %89 to i32, !dbg !2067
  %91 = trunc i32 %90 to i16, !dbg !2065
  %92 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2068
  %93 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %92, i32 0, i32 62, !dbg !2069
  store i16 %91, i16* %93, align 4, !dbg !2070
  %94 = load %struct.zedc_asv_infl*, %struct.zedc_asv_infl** %4, align 8, !dbg !2071
  %95 = getelementptr inbounds %struct.zedc_asv_infl, %struct.zedc_asv_infl* %94, i32 0, i32 3, !dbg !2072
  %96 = load i8, i8* %95, align 1, !dbg !2072
  %97 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2073
  %98 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %97, i32 0, i32 49, !dbg !2074
  store i8 %96, i8* %98, align 1, !dbg !2075
  ret void, !dbg !2076
}

; Function Attrs: nounwind uwtable
define internal i32 @post_scratch_upd(%struct.zedc_stream_s*) #0 !dbg !2077 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zedc_stream_s*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i64, align 8
  %8 = alloca %struct.zedc_dev_t*, align 8
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %3, metadata !2080, metadata !289), !dbg !2081
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2082, metadata !289), !dbg !2083
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2084, metadata !289), !dbg !2085
  call void @llvm.dbg.declare(metadata i16* %6, metadata !2086, metadata !289), !dbg !2087
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2088, metadata !289), !dbg !2089
  call void @llvm.dbg.declare(metadata %struct.zedc_dev_t** %8, metadata !2090, metadata !289), !dbg !2091
  %9 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2092
  %10 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %9, i32 0, i32 15, !dbg !2093
  %11 = load i8*, i8** %10, align 8, !dbg !2093
  %12 = bitcast i8* %11 to %struct.zedc_dev_t*, !dbg !2094
  store %struct.zedc_dev_t* %12, %struct.zedc_dev_t** %8, align 8, !dbg !2091
  %13 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2095
  %14 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %13, i32 0, i32 46, !dbg !2097
  %15 = load i32, i32* %14, align 8, !dbg !2097
  %16 = icmp ne i32 %15, 0, !dbg !2095
  br i1 %16, label %23, label %17, !dbg !2098

; <label>:17:                                     ; preds = %1
  %18 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2099
  %19 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %18, i32 0, i32 48, !dbg !2101
  %20 = load i8, i8* %19, align 8, !dbg !2101
  %21 = zext i8 %20 to i32, !dbg !2099
  %22 = icmp ne i32 %21, 0, !dbg !2099
  br i1 %22, label %23, label %42, !dbg !2102

; <label>:23:                                     ; preds = %17, %1
  %24 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2103
  %25 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %24, i32 0, i32 46, !dbg !2105
  %26 = load i32, i32* %25, align 8, !dbg !2105
  %27 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2106
  %28 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %27, i32 0, i32 48, !dbg !2107
  %29 = load i8, i8* %28, align 8, !dbg !2107
  %30 = zext i8 %29 to i32, !dbg !2106
  %31 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2108
  %32 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %31, i32 0, i32 57, !dbg !2109
  %33 = load i64, i64* %32, align 8, !dbg !2109
  %34 = trunc i64 %33 to i32, !dbg !2108
  %35 = call i32 @inp_proc_update(i32 %26, i32 %30, i32 %34), !dbg !2110
  %36 = zext i32 %35 to i64, !dbg !2110
  store i64 %36, i64* %7, align 8, !dbg !2111
  %37 = load i64, i64* %7, align 8, !dbg !2112
  %38 = trunc i64 %37 to i32, !dbg !2112
  %39 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2113
  %40 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %39, i32 0, i32 59, !dbg !2114
  store i32 %38, i32* %40, align 4, !dbg !2115
  %41 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2116
  call void @setup_tree(%struct.zedc_stream_s* %41), !dbg !2117
  br label %42, !dbg !2118

; <label>:42:                                     ; preds = %23, %17
  %43 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2119
  %44 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %43, i32 0, i32 46, !dbg !2121
  %45 = load i32, i32* %44, align 8, !dbg !2121
  %46 = icmp eq i32 %45, 0, !dbg !2122
  br i1 %46, label %47, label %119, !dbg !2123

; <label>:47:                                     ; preds = %42
  %48 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2124
  %49 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %48, i32 0, i32 48, !dbg !2126
  %50 = load i8, i8* %49, align 8, !dbg !2126
  %51 = zext i8 %50 to i32, !dbg !2124
  %52 = icmp eq i32 %51, 0, !dbg !2127
  br i1 %52, label %53, label %119, !dbg !2128

; <label>:53:                                     ; preds = %47
  %54 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2129
  %55 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %54, i32 0, i32 8, !dbg !2132
  %56 = load i32, i32* %55, align 8, !dbg !2132
  %57 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2133
  %58 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %57, i32 0, i32 42, !dbg !2134
  %59 = load i32, i32* %58, align 8, !dbg !2134
  %60 = sub i32 512, %59, !dbg !2135
  %61 = icmp ugt i32 %56, %60, !dbg !2136
  br i1 %61, label %62, label %78, !dbg !2137

; <label>:62:                                     ; preds = %53
  br label %63, !dbg !2138, !llvm.loop !2140

; <label>:63:                                     ; preds = %62
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !2141
  %65 = icmp ne %struct._IO_FILE* %64, null, !dbg !2141
  br i1 %65, label %66, label %71, !dbg !2141

; <label>:66:                                     ; preds = %63
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !2145
  %68 = call i32 @getpid() #7, !dbg !2147
  %69 = call i32 @gettid(), !dbg !2148
  %70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.27, i32 0, i32 0), i32 %68, i32 %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i32 287), !dbg !2150
  br label %71, !dbg !2152

; <label>:71:                                     ; preds = %66, %63
  br label %72, !dbg !2153

; <label>:72:                                     ; preds = %71
  %73 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %8, align 8, !dbg !2155
  %74 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %73, i32 0, i32 1, !dbg !2156
  store i32 -311, i32* %74, align 4, !dbg !2157
  %75 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %8, align 8, !dbg !2158
  %76 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %75, i32 0, i32 1, !dbg !2159
  %77 = load i32, i32* %76, align 4, !dbg !2159
  store i32 %77, i32* %2, align 4, !dbg !2160
  br label %181, !dbg !2160

; <label>:78:                                     ; preds = %53
  %79 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2161
  %80 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %79, i32 0, i32 8, !dbg !2163
  %81 = load i32, i32* %80, align 8, !dbg !2163
  %82 = icmp ne i32 %81, 0, !dbg !2161
  br i1 %82, label %83, label %118, !dbg !2164

; <label>:83:                                     ; preds = %78
  %84 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2165
  %85 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %84, i32 0, i32 34, !dbg !2167
  %86 = load %struct.zedc_wsp*, %struct.zedc_wsp** %85, align 8, !dbg !2167
  %87 = getelementptr inbounds %struct.zedc_wsp, %struct.zedc_wsp* %86, i32 0, i32 1, !dbg !2168
  %88 = getelementptr inbounds [512 x i8], [512 x i8]* %87, i32 0, i32 0, !dbg !2165
  %89 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2169
  %90 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %89, i32 0, i32 42, !dbg !2170
  %91 = load i32, i32* %90, align 8, !dbg !2170
  %92 = zext i32 %91 to i64, !dbg !2171
  %93 = getelementptr inbounds i8, i8* %88, i64 %92, !dbg !2171
  store i8* %93, i8** %5, align 8, !dbg !2172
  %94 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2173
  %95 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %94, i32 0, i32 7, !dbg !2174
  %96 = load i8*, i8** %95, align 8, !dbg !2174
  store i8* %96, i8** %4, align 8, !dbg !2175
  %97 = load i8*, i8** %5, align 8, !dbg !2176
  %98 = load i8*, i8** %4, align 8, !dbg !2177
  %99 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2178
  %100 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %99, i32 0, i32 8, !dbg !2179
  %101 = load i32, i32* %100, align 8, !dbg !2179
  %102 = zext i32 %101 to i64, !dbg !2178
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %97, i8* %98, i64 %102, i32 1, i1 false), !dbg !2180
  %103 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2181
  %104 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %103, i32 0, i32 8, !dbg !2182
  %105 = load i32, i32* %104, align 8, !dbg !2182
  %106 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2183
  %107 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %106, i32 0, i32 58, !dbg !2184
  %108 = load i32, i32* %107, align 8, !dbg !2185
  %109 = add i32 %108, %105, !dbg !2185
  store i32 %109, i32* %107, align 8, !dbg !2185
  %110 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2186
  %111 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %110, i32 0, i32 8, !dbg !2187
  %112 = load i32, i32* %111, align 8, !dbg !2187
  %113 = mul i32 %112, 8, !dbg !2188
  %114 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2189
  %115 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %114, i32 0, i32 56, !dbg !2190
  %116 = load i32, i32* %115, align 8, !dbg !2191
  %117 = add i32 %116, %113, !dbg !2191
  store i32 %117, i32* %115, align 8, !dbg !2191
  br label %118, !dbg !2192

; <label>:118:                                    ; preds = %83, %78
  br label %119, !dbg !2193

; <label>:119:                                    ; preds = %118, %47, %42
  %120 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2194
  %121 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %120, i32 0, i32 53, !dbg !2196
  %122 = load i16, i16* %121, align 4, !dbg !2196
  %123 = zext i16 %122 to i32, !dbg !2197
  %124 = icmp ne i32 %123, 0, !dbg !2197
  br i1 %124, label %125, label %180, !dbg !2198

; <label>:125:                                    ; preds = %119
  %126 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2199
  %127 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %126, i32 0, i32 49, !dbg !2200
  %128 = load i8, i8* %127, align 1, !dbg !2200
  %129 = zext i8 %128 to i32, !dbg !2199
  %130 = and i32 %129, 96, !dbg !2201
  %131 = icmp eq i32 %130, 0, !dbg !2202
  br i1 %131, label %132, label %180, !dbg !2203

; <label>:132:                                    ; preds = %125
  %133 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2204
  %134 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %133, i32 0, i32 51, !dbg !2205
  %135 = load i16, i16* %134, align 8, !dbg !2205
  %136 = zext i16 %135 to i32, !dbg !2204
  %137 = icmp ne i32 %136, 0, !dbg !2206
  br i1 %137, label %138, label %180, !dbg !2207

; <label>:138:                                    ; preds = %132
  %139 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2209
  %140 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %139, i32 0, i32 34, !dbg !2211
  %141 = load %struct.zedc_wsp*, %struct.zedc_wsp** %140, align 8, !dbg !2211
  %142 = getelementptr inbounds %struct.zedc_wsp, %struct.zedc_wsp* %141, i32 0, i32 1, !dbg !2212
  %143 = getelementptr inbounds [512 x i8], [512 x i8]* %142, i32 0, i32 0, !dbg !2209
  store i8* %143, i8** %5, align 8, !dbg !2213
  %144 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2214
  %145 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %144, i32 0, i32 53, !dbg !2215
  %146 = load i16, i16* %145, align 4, !dbg !2215
  store i16 %146, i16* %6, align 2, !dbg !2216
  %147 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2217
  %148 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %147, i32 0, i32 49, !dbg !2219
  %149 = load i8, i8* %148, align 1, !dbg !2219
  %150 = zext i8 %149 to i32, !dbg !2217
  %151 = and i32 %150, 128, !dbg !2220
  %152 = icmp ne i32 %151, 0, !dbg !2220
  br i1 %152, label %153, label %156, !dbg !2221

; <label>:153:                                    ; preds = %138
  %154 = load i8*, i8** %5, align 8, !dbg !2222
  %155 = getelementptr inbounds i8, i8* %154, i64 0, !dbg !2222
  store i8 1, i8* %155, align 1, !dbg !2223
  br label %159, !dbg !2222

; <label>:156:                                    ; preds = %138
  %157 = load i8*, i8** %5, align 8, !dbg !2224
  %158 = getelementptr inbounds i8, i8* %157, i64 0, !dbg !2224
  store i8 0, i8* %158, align 1, !dbg !2225
  br label %159

; <label>:159:                                    ; preds = %156, %153
  %160 = load i16, i16* %6, align 2, !dbg !2226
  %161 = load i8*, i8** %5, align 8, !dbg !2227
  %162 = getelementptr inbounds i8, i8* %161, i64 1, !dbg !2228
  %163 = bitcast i8* %162 to i16*, !dbg !2229
  store i16 %160, i16* %163, align 2, !dbg !2230
  %164 = load i16, i16* %6, align 2, !dbg !2231
  %165 = zext i16 %164 to i32, !dbg !2231
  %166 = xor i32 %165, -1, !dbg !2232
  %167 = trunc i32 %166 to i16, !dbg !2233
  %168 = load i8*, i8** %5, align 8, !dbg !2234
  %169 = getelementptr inbounds i8, i8* %168, i64 3, !dbg !2235
  %170 = bitcast i8* %169 to i16*, !dbg !2236
  store i16 %167, i16* %170, align 2, !dbg !2237
  %171 = load i8*, i8** %5, align 8, !dbg !2238
  %172 = getelementptr inbounds i8, i8* %171, i64 5, !dbg !2239
  %173 = bitcast i8* %172 to i16*, !dbg !2240
  store i16 -21846, i16* %173, align 2, !dbg !2241
  %174 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2242
  %175 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %174, i32 0, i32 44, !dbg !2243
  store i8 0, i8* %175, align 2, !dbg !2244
  %176 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2245
  %177 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %176, i32 0, i32 54, !dbg !2246
  store i32 40, i32* %177, align 8, !dbg !2247
  %178 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2248
  %179 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %178, i32 0, i32 55, !dbg !2249
  store i32 24, i32* %179, align 4, !dbg !2250
  br label %180, !dbg !2251

; <label>:180:                                    ; preds = %159, %132, %125, %119
  store i32 0, i32* %2, align 4, !dbg !2252
  br label %181, !dbg !2252

; <label>:181:                                    ; preds = %180, %72
  %182 = load i32, i32* %2, align 4, !dbg !2253
  ret i32 %182, !dbg !2253
}

; Function Attrs: nounwind uwtable
define i32 @zedc_inflateInit2(%struct.zedc_stream_s*, i32) #0 !dbg !2254 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zedc_stream_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.zedc_dev_t*, align 8
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %4, metadata !2255, metadata !289), !dbg !2256
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2257, metadata !289), !dbg !2258
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2259, metadata !289), !dbg !2260
  call void @llvm.dbg.declare(metadata %struct.zedc_dev_t** %7, metadata !2261, metadata !289), !dbg !2262
  %8 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !2263
  %9 = icmp ne %struct.zedc_stream_s* %8, null, !dbg !2263
  br i1 %9, label %11, label %10, !dbg !2265

; <label>:10:                                     ; preds = %2
  store i32 -2, i32* %3, align 4, !dbg !2266
  br label %45, !dbg !2266

; <label>:11:                                     ; preds = %2
  %12 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !2267
  %13 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %12, i32 0, i32 15, !dbg !2268
  %14 = load i8*, i8** %13, align 8, !dbg !2268
  %15 = bitcast i8* %14 to %struct.zedc_dev_t*, !dbg !2269
  store %struct.zedc_dev_t* %15, %struct.zedc_dev_t** %7, align 8, !dbg !2270
  %16 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %7, align 8, !dbg !2271
  %17 = icmp ne %struct.zedc_dev_t* %16, null, !dbg !2271
  br i1 %17, label %19, label %18, !dbg !2273

; <label>:18:                                     ; preds = %11
  store i32 -2, i32* %3, align 4, !dbg !2274
  br label %45, !dbg !2274

; <label>:19:                                     ; preds = %11
  %20 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %7, align 8, !dbg !2275
  %21 = call i32 @is_zedc(%struct.zedc_dev_t* %20), !dbg !2277
  %22 = icmp ne i32 %21, 0, !dbg !2277
  br i1 %22, label %24, label %23, !dbg !2278

; <label>:23:                                     ; preds = %19
  store i32 -319, i32* %3, align 4, !dbg !2279
  br label %45, !dbg !2279

; <label>:24:                                     ; preds = %19
  %25 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !2280
  %26 = call i32 @zedc_alloc_workspace(%struct.zedc_stream_s* %25), !dbg !2281
  store i32 %26, i32* %6, align 4, !dbg !2282
  %27 = load i32, i32* %6, align 4, !dbg !2283
  %28 = icmp ne i32 %27, 0, !dbg !2285
  br i1 %28, label %29, label %31, !dbg !2286

; <label>:29:                                     ; preds = %24
  %30 = load i32, i32* %6, align 4, !dbg !2287
  store i32 %30, i32* %3, align 4, !dbg !2288
  br label %45, !dbg !2288

; <label>:31:                                     ; preds = %24
  %32 = load i32, i32* %5, align 4, !dbg !2289
  %33 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !2290
  %34 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %33, i32 0, i32 2, !dbg !2291
  store i32 %32, i32* %34, align 8, !dbg !2292
  %35 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !2293
  call void @__inflateInit_state(%struct.zedc_stream_s* %35), !dbg !2294
  %36 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !2295
  %37 = call i32 @zedc_format_init(%struct.zedc_stream_s* %36), !dbg !2296
  store i32 %37, i32* %6, align 4, !dbg !2297
  %38 = load i32, i32* %6, align 4, !dbg !2298
  %39 = icmp ne i32 %38, 0, !dbg !2300
  br i1 %39, label %40, label %44, !dbg !2301

; <label>:40:                                     ; preds = %31
  %41 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !2302
  %42 = call i32 @zedc_free_workspace(%struct.zedc_stream_s* %41), !dbg !2304
  %43 = load i32, i32* %6, align 4, !dbg !2305
  store i32 %43, i32* %3, align 4, !dbg !2306
  br label %45, !dbg !2306

; <label>:44:                                     ; preds = %31
  store i32 0, i32* %3, align 4, !dbg !2307
  br label %45, !dbg !2307

; <label>:45:                                     ; preds = %44, %40, %29, %23, %18, %10
  %46 = load i32, i32* %3, align 4, !dbg !2308
  ret i32 %46, !dbg !2308
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @is_zedc(%struct.zedc_dev_t*) #3 !dbg !2309 {
  %2 = alloca %struct.zedc_dev_t*, align 8
  %3 = alloca i64, align 8
  store %struct.zedc_dev_t* %0, %struct.zedc_dev_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_dev_t** %2, metadata !2312, metadata !289), !dbg !2313
  call void @llvm.dbg.declare(metadata i64* %3, metadata !2314, metadata !289), !dbg !2315
  %4 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %2, align 8, !dbg !2316
  %5 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %4, i32 0, i32 2, !dbg !2317
  %6 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !2317
  %7 = call i64 @accel_get_app_id(%struct.card_dev_t* %6), !dbg !2318
  store i64 %7, i64* %3, align 8, !dbg !2315
  %8 = load i64, i64* %3, align 8, !dbg !2319
  %9 = and i64 %8, 4294967295, !dbg !2320
  %10 = icmp eq i64 %9, 1197099344, !dbg !2321
  %11 = zext i1 %10 to i32, !dbg !2321
  ret i32 %11, !dbg !2322
}

declare i32 @zedc_alloc_workspace(%struct.zedc_stream_s*) #4

; Function Attrs: nounwind uwtable
define internal void @__inflateInit_state(%struct.zedc_stream_s*) #0 !dbg !2323 {
  %2 = alloca %struct.zedc_stream_s*, align 8
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %2, metadata !2326, metadata !289), !dbg !2327
  %3 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2328
  %4 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %3, i32 0, i32 12, !dbg !2329
  store i64 0, i64* %4, align 8, !dbg !2330
  %5 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2331
  %6 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %5, i32 0, i32 9, !dbg !2332
  store i64 0, i64* %6, align 8, !dbg !2333
  %7 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2334
  %8 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %7, i32 0, i32 35, !dbg !2335
  store i32 0, i32* %8, align 8, !dbg !2336
  %9 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2337
  %10 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %9, i32 0, i32 60, !dbg !2338
  store i16 0, i16* %10, align 8, !dbg !2339
  %11 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2340
  %12 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %11, i32 0, i32 62, !dbg !2341
  store i16 0, i16* %12, align 4, !dbg !2342
  %13 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2343
  %14 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %13, i32 0, i32 61, !dbg !2344
  store i8 0, i8* %14, align 2, !dbg !2345
  %15 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2346
  %16 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %15, i32 0, i32 39, !dbg !2347
  store i32 0, i32* %16, align 8, !dbg !2348
  %17 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2349
  %18 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %17, i32 0, i32 38, !dbg !2350
  store i32 0, i32* %18, align 4, !dbg !2351
  %19 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2352
  %20 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %19, i32 0, i32 40, !dbg !2353
  store i32 0, i32* %20, align 4, !dbg !2354
  %21 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2355
  %22 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %21, i32 0, i32 9, !dbg !2356
  store i64 0, i64* %22, align 8, !dbg !2357
  %23 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2358
  %24 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %23, i32 0, i32 12, !dbg !2359
  store i64 0, i64* %24, align 8, !dbg !2360
  %25 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2361
  %26 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %25, i32 0, i32 13, !dbg !2362
  store i32 0, i32* %26, align 8, !dbg !2363
  %27 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2364
  %28 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %27, i32 0, i32 14, !dbg !2365
  store i32 1, i32* %28, align 4, !dbg !2366
  %29 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2367
  %30 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %29, i32 0, i32 29, !dbg !2368
  store i32 0, i32* %30, align 4, !dbg !2369
  %31 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2370
  %32 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %31, i32 0, i32 33, !dbg !2371
  store i32 0, i32* %32, align 4, !dbg !2372
  %33 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2373
  %34 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %33, i32 0, i32 42, !dbg !2374
  store i32 0, i32* %34, align 8, !dbg !2375
  %35 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2376
  %36 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %35, i32 0, i32 43, !dbg !2377
  store i16 0, i16* %36, align 4, !dbg !2378
  %37 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2379
  %38 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %37, i32 0, i32 44, !dbg !2380
  store i8 0, i8* %38, align 2, !dbg !2381
  %39 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2382
  %40 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %39, i32 0, i32 45, !dbg !2383
  store i8 0, i8* %40, align 1, !dbg !2384
  %41 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2385
  %42 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %41, i32 0, i32 56, !dbg !2386
  store i32 0, i32* %42, align 8, !dbg !2387
  %43 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2388
  %44 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %43, i32 0, i32 46, !dbg !2389
  store i32 0, i32* %44, align 8, !dbg !2390
  %45 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2391
  %46 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %45, i32 0, i32 47, !dbg !2392
  store i32 0, i32* %46, align 4, !dbg !2393
  %47 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2394
  %48 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %47, i32 0, i32 48, !dbg !2395
  store i8 0, i8* %48, align 8, !dbg !2396
  %49 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2397
  %50 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %49, i32 0, i32 49, !dbg !2398
  store i8 0, i8* %50, align 1, !dbg !2399
  %51 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2400
  %52 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %51, i32 0, i32 50, !dbg !2401
  store i32 0, i32* %52, align 4, !dbg !2402
  %53 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2403
  %54 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %53, i32 0, i32 51, !dbg !2404
  store i16 0, i16* %54, align 8, !dbg !2405
  %55 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2406
  %56 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %55, i32 0, i32 52, !dbg !2407
  store i8 0, i8* %56, align 2, !dbg !2408
  %57 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2409
  %58 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %57, i32 0, i32 53, !dbg !2410
  store i16 0, i16* %58, align 4, !dbg !2411
  %59 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2412
  %60 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %59, i32 0, i32 54, !dbg !2413
  store i32 0, i32* %60, align 8, !dbg !2414
  %61 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2415
  %62 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %61, i32 0, i32 55, !dbg !2416
  store i32 0, i32* %62, align 4, !dbg !2417
  %63 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2418
  %64 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %63, i32 0, i32 57, !dbg !2419
  store i64 0, i64* %64, align 8, !dbg !2420
  %65 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2421
  %66 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %65, i32 0, i32 58, !dbg !2422
  store i32 0, i32* %66, align 8, !dbg !2423
  %67 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2424
  %68 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %67, i32 0, i32 59, !dbg !2425
  store i32 0, i32* %68, align 4, !dbg !2426
  %69 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2427
  %70 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %69, i32 0, i32 63, !dbg !2428
  store i32 0, i32* %70, align 8, !dbg !2429
  %71 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2430
  %72 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %71, i32 0, i32 64, !dbg !2431
  store i32 0, i32* %72, align 4, !dbg !2432
  %73 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2433
  %74 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %73, i32 0, i32 65, !dbg !2434
  %75 = getelementptr inbounds [18 x i8], [18 x i8]* %74, i32 0, i32 0, !dbg !2435
  call void @llvm.memset.p0i8.i64(i8* %75, i8 0, i64 18, i32 8, i1 false), !dbg !2435
  %76 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2436
  %77 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %76, i32 0, i32 66, !dbg !2437
  store i16 0, i16* %77, align 2, !dbg !2438
  %78 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2439
  %79 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %78, i32 0, i32 24, !dbg !2440
  store i32 0, i32* %79, align 8, !dbg !2441
  %80 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2442
  %81 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %80, i32 0, i32 67, !dbg !2443
  store i32 0, i32* %81, align 4, !dbg !2444
  %82 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2445
  %83 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %82, i32 0, i32 68, !dbg !2446
  store i32 0, i32* %83, align 8, !dbg !2447
  %84 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2448
  %85 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %84, i32 0, i32 69, !dbg !2449
  %86 = getelementptr inbounds [18 x i8], [18 x i8]* %85, i32 0, i32 0, !dbg !2450
  call void @llvm.memset.p0i8.i64(i8* %86, i8 0, i64 18, i32 4, i1 false), !dbg !2450
  %87 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !2451
  %88 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %87, i32 0, i32 16, !dbg !2452
  call void @ddcb_cmd_init(%struct.ddcb_cmd* %88), !dbg !2453
  ret void, !dbg !2454
}

declare i32 @zedc_format_init(%struct.zedc_stream_s*) #4

declare i32 @zedc_free_workspace(%struct.zedc_stream_s*) #4

; Function Attrs: nounwind uwtable
define i32 @zedc_inflateSetDictionary(%struct.zedc_stream_s*, i8*, i32) #0 !dbg !2455 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zedc_stream_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %5, metadata !2458, metadata !289), !dbg !2459
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2460, metadata !289), !dbg !2461
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2462, metadata !289), !dbg !2463
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2464, metadata !289), !dbg !2465
  %9 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !2466
  %10 = icmp eq %struct.zedc_stream_s* %9, null, !dbg !2468
  br i1 %10, label %11, label %12, !dbg !2469

; <label>:11:                                     ; preds = %3
  store i32 -2, i32* %4, align 4, !dbg !2470
  br label %51, !dbg !2470

; <label>:12:                                     ; preds = %3
  %13 = load i32, i32* %7, align 4, !dbg !2471
  %14 = icmp ugt i32 %13, 32784, !dbg !2473
  br i1 %14, label %15, label %16, !dbg !2474

; <label>:15:                                     ; preds = %12
  store i32 -2, i32* %4, align 4, !dbg !2475
  br label %51, !dbg !2475

; <label>:16:                                     ; preds = %12
  %17 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !2476
  %18 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %17, i32 0, i32 20, !dbg !2478
  %19 = load i32, i32* %18, align 8, !dbg !2478
  %20 = icmp eq i32 %19, 1, !dbg !2479
  br i1 %20, label %21, label %33, !dbg !2480

; <label>:21:                                     ; preds = %16
  %22 = load i8*, i8** %6, align 8, !dbg !2481
  %23 = load i32, i32* %7, align 4, !dbg !2483
  %24 = call i64 @__adler32(i64 1, i8* %22, i32 %23), !dbg !2484
  %25 = trunc i64 %24 to i32, !dbg !2484
  store i32 %25, i32* %8, align 4, !dbg !2485
  %26 = load i32, i32* %8, align 4, !dbg !2486
  %27 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !2488
  %28 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %27, i32 0, i32 40, !dbg !2489
  %29 = load i32, i32* %28, align 4, !dbg !2489
  %30 = icmp ne i32 %26, %29, !dbg !2490
  br i1 %30, label %31, label %32, !dbg !2491

; <label>:31:                                     ; preds = %21
  store i32 -3, i32* %4, align 4, !dbg !2492
  br label %51, !dbg !2492

; <label>:32:                                     ; preds = %21
  br label %33, !dbg !2493

; <label>:33:                                     ; preds = %32, %16
  %34 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !2494
  %35 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %34, i32 0, i32 34, !dbg !2495
  %36 = load %struct.zedc_wsp*, %struct.zedc_wsp** %35, align 8, !dbg !2495
  %37 = getelementptr inbounds %struct.zedc_wsp, %struct.zedc_wsp* %36, i32 0, i32 0, !dbg !2496
  %38 = getelementptr inbounds [2 x [32784 x i8]], [2 x [32784 x i8]]* %37, i64 0, i64 0, !dbg !2494
  %39 = bitcast [32784 x i8]* %38 to i8*, !dbg !2497
  %40 = load i8*, i8** %6, align 8, !dbg !2498
  %41 = load i32, i32* %7, align 4, !dbg !2499
  %42 = zext i32 %41 to i64, !dbg !2499
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 %42, i32 1, i1 false), !dbg !2497
  %43 = load i32, i32* %7, align 4, !dbg !2500
  %44 = trunc i32 %43 to i16, !dbg !2500
  %45 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !2501
  %46 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %45, i32 0, i32 60, !dbg !2502
  store i16 %44, i16* %46, align 8, !dbg !2503
  %47 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !2504
  %48 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %47, i32 0, i32 33, !dbg !2505
  store i32 1, i32* %48, align 4, !dbg !2506
  %49 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !2507
  %50 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %49, i32 0, i32 14, !dbg !2508
  store i32 1, i32* %50, align 4, !dbg !2509
  store i32 0, i32* %4, align 4, !dbg !2510
  br label %51, !dbg !2510

; <label>:51:                                     ; preds = %33, %31, %15, %11
  %52 = load i32, i32* %4, align 4, !dbg !2511
  ret i32 %52, !dbg !2511
}

declare i64 @__adler32(i64, i8*, i32) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define i32 @zedc_inflateGetDictionary(%struct.zedc_stream_s*, i8*, i32*) #0 !dbg !2512 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zedc_stream_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %5, metadata !2516, metadata !289), !dbg !2517
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2518, metadata !289), !dbg !2519
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !2520, metadata !289), !dbg !2521
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2522, metadata !289), !dbg !2523
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2524, metadata !289), !dbg !2525
  %10 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !2526
  %11 = icmp ne %struct.zedc_stream_s* %10, null, !dbg !2526
  br i1 %11, label %13, label %12, !dbg !2528

; <label>:12:                                     ; preds = %3
  store i32 -2, i32* %4, align 4, !dbg !2529
  br label %50, !dbg !2529

; <label>:13:                                     ; preds = %3
  %14 = load i32*, i32** %7, align 8, !dbg !2530
  %15 = icmp ne i32* %14, null, !dbg !2530
  br i1 %15, label %16, label %22, !dbg !2532

; <label>:16:                                     ; preds = %13
  %17 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !2533
  %18 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %17, i32 0, i32 60, !dbg !2534
  %19 = load i16, i16* %18, align 8, !dbg !2534
  %20 = zext i16 %19 to i32, !dbg !2533
  %21 = load i32*, i32** %7, align 8, !dbg !2535
  store i32 %20, i32* %21, align 4, !dbg !2536
  br label %22, !dbg !2537

; <label>:22:                                     ; preds = %16, %13
  %23 = load i8*, i8** %6, align 8, !dbg !2538
  %24 = icmp eq i8* %23, null, !dbg !2540
  br i1 %24, label %25, label %26, !dbg !2541

; <label>:25:                                     ; preds = %22
  store i32 0, i32* %4, align 4, !dbg !2542
  br label %50, !dbg !2542

; <label>:26:                                     ; preds = %22
  %27 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !2543
  %28 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %27, i32 0, i32 35, !dbg !2544
  %29 = load i32, i32* %28, align 8, !dbg !2544
  store i32 %29, i32* %8, align 4, !dbg !2545
  %30 = load i32, i32* %8, align 4, !dbg !2546
  %31 = zext i32 %30 to i64, !dbg !2547
  %32 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !2547
  %33 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %32, i32 0, i32 34, !dbg !2548
  %34 = load %struct.zedc_wsp*, %struct.zedc_wsp** %33, align 8, !dbg !2548
  %35 = getelementptr inbounds %struct.zedc_wsp, %struct.zedc_wsp* %34, i32 0, i32 0, !dbg !2549
  %36 = getelementptr inbounds [2 x [32784 x i8]], [2 x [32784 x i8]]* %35, i64 0, i64 %31, !dbg !2547
  %37 = getelementptr inbounds [32784 x i8], [32784 x i8]* %36, i32 0, i32 0, !dbg !2547
  %38 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !2550
  %39 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %38, i32 0, i32 61, !dbg !2551
  %40 = load i8, i8* %39, align 2, !dbg !2551
  %41 = zext i8 %40 to i32, !dbg !2550
  %42 = sext i32 %41 to i64, !dbg !2552
  %43 = getelementptr inbounds i8, i8* %37, i64 %42, !dbg !2552
  store i8* %43, i8** %9, align 8, !dbg !2553
  %44 = load i8*, i8** %6, align 8, !dbg !2554
  %45 = load i8*, i8** %9, align 8, !dbg !2555
  %46 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !2556
  %47 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %46, i32 0, i32 60, !dbg !2557
  %48 = load i16, i16* %47, align 8, !dbg !2557
  %49 = zext i16 %48 to i64, !dbg !2556
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 %49, i32 1, i1 false), !dbg !2558
  store i32 0, i32* %4, align 4, !dbg !2559
  br label %50, !dbg !2559

; <label>:50:                                     ; preds = %26, %25, %12
  %51 = load i32, i32* %4, align 4, !dbg !2560
  ret i32 %51, !dbg !2560
}

; Function Attrs: nounwind uwtable
define i32 @zedc_inflateReset(%struct.zedc_stream_s*) #0 !dbg !2561 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zedc_stream_s*, align 8
  %4 = alloca i32, align 4
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %3, metadata !2562, metadata !289), !dbg !2563
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2564, metadata !289), !dbg !2565
  %5 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2566
  %6 = icmp ne %struct.zedc_stream_s* %5, null, !dbg !2566
  br i1 %6, label %8, label %7, !dbg !2568

; <label>:7:                                      ; preds = %1
  store i32 -2, i32* %2, align 4, !dbg !2569
  br label %17, !dbg !2569

; <label>:8:                                      ; preds = %1
  %9 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2570
  call void @__inflateInit_state(%struct.zedc_stream_s* %9), !dbg !2571
  %10 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2572
  %11 = call i32 @zedc_format_init(%struct.zedc_stream_s* %10), !dbg !2573
  store i32 %11, i32* %4, align 4, !dbg !2574
  %12 = load i32, i32* %4, align 4, !dbg !2575
  %13 = icmp ne i32 %12, 0, !dbg !2577
  br i1 %13, label %14, label %16, !dbg !2578

; <label>:14:                                     ; preds = %8
  %15 = load i32, i32* %4, align 4, !dbg !2579
  store i32 %15, i32* %2, align 4, !dbg !2580
  br label %17, !dbg !2580

; <label>:16:                                     ; preds = %8
  store i32 0, i32* %2, align 4, !dbg !2581
  br label %17, !dbg !2581

; <label>:17:                                     ; preds = %16, %14, %7
  %18 = load i32, i32* %2, align 4, !dbg !2582
  ret i32 %18, !dbg !2582
}

; Function Attrs: nounwind uwtable
define i32 @zedc_inflateReset2(%struct.zedc_stream_s*, i32) #0 !dbg !2583 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zedc_stream_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %4, metadata !2584, metadata !289), !dbg !2585
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2586, metadata !289), !dbg !2587
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2588, metadata !289), !dbg !2589
  %7 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !2590
  %8 = icmp ne %struct.zedc_stream_s* %7, null, !dbg !2590
  br i1 %8, label %10, label %9, !dbg !2592

; <label>:9:                                      ; preds = %2
  store i32 -2, i32* %3, align 4, !dbg !2593
  br label %22, !dbg !2593

; <label>:10:                                     ; preds = %2
  %11 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !2594
  call void @__inflateInit_state(%struct.zedc_stream_s* %11), !dbg !2595
  %12 = load i32, i32* %5, align 4, !dbg !2596
  %13 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !2597
  %14 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %13, i32 0, i32 2, !dbg !2598
  store i32 %12, i32* %14, align 8, !dbg !2599
  %15 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !2600
  %16 = call i32 @zedc_format_init(%struct.zedc_stream_s* %15), !dbg !2601
  store i32 %16, i32* %6, align 4, !dbg !2602
  %17 = load i32, i32* %6, align 4, !dbg !2603
  %18 = icmp ne i32 %17, 0, !dbg !2605
  br i1 %18, label %19, label %21, !dbg !2606

; <label>:19:                                     ; preds = %10
  %20 = load i32, i32* %6, align 4, !dbg !2607
  store i32 %20, i32* %3, align 4, !dbg !2608
  br label %22, !dbg !2608

; <label>:21:                                     ; preds = %10
  store i32 0, i32* %3, align 4, !dbg !2609
  br label %22, !dbg !2609

; <label>:22:                                     ; preds = %21, %19, %9
  %23 = load i32, i32* %3, align 4, !dbg !2610
  ret i32 %23, !dbg !2610
}

; Function Attrs: nounwind uwtable
define i32 @zedc_inflateEnd(%struct.zedc_stream_s*) #0 !dbg !2611 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zedc_stream_s*, align 8
  %4 = alloca %struct.zedc_dev_t*, align 8
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %3, metadata !2612, metadata !289), !dbg !2613
  call void @llvm.dbg.declare(metadata %struct.zedc_dev_t** %4, metadata !2614, metadata !289), !dbg !2615
  %5 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2616
  %6 = icmp ne %struct.zedc_stream_s* %5, null, !dbg !2616
  br i1 %6, label %8, label %7, !dbg !2618

; <label>:7:                                      ; preds = %1
  store i32 -2, i32* %2, align 4, !dbg !2619
  br label %19, !dbg !2619

; <label>:8:                                      ; preds = %1
  %9 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2620
  %10 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %9, i32 0, i32 15, !dbg !2621
  %11 = load i8*, i8** %10, align 8, !dbg !2621
  %12 = bitcast i8* %11 to %struct.zedc_dev_t*, !dbg !2622
  store %struct.zedc_dev_t* %12, %struct.zedc_dev_t** %4, align 8, !dbg !2623
  %13 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %4, align 8, !dbg !2624
  %14 = icmp ne %struct.zedc_dev_t* %13, null, !dbg !2624
  br i1 %14, label %16, label %15, !dbg !2626

; <label>:15:                                     ; preds = %8
  store i32 -2, i32* %2, align 4, !dbg !2627
  br label %19, !dbg !2627

; <label>:16:                                     ; preds = %8
  %17 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2628
  %18 = call i32 @zedc_free_workspace(%struct.zedc_stream_s* %17), !dbg !2629
  store i32 0, i32* %2, align 4, !dbg !2630
  br label %19, !dbg !2630

; <label>:19:                                     ; preds = %16, %15, %7
  %20 = load i32, i32* %2, align 4, !dbg !2631
  ret i32 %20, !dbg !2631
}

; Function Attrs: nounwind uwtable
define i32 @zedc_inflateGetHeader(%struct.zedc_stream_s*, %struct.gzedc_header_s*) #0 !dbg !2632 {
  %3 = alloca %struct.zedc_stream_s*, align 8
  %4 = alloca %struct.gzedc_header_s*, align 8
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %3, metadata !2638, metadata !289), !dbg !2639
  store %struct.gzedc_header_s* %1, %struct.gzedc_header_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.gzedc_header_s** %4, metadata !2640, metadata !289), !dbg !2641
  %5 = load %struct.gzedc_header_s*, %struct.gzedc_header_s** %4, align 8, !dbg !2642
  %6 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2643
  %7 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %6, i32 0, i32 41, !dbg !2644
  store %struct.gzedc_header_s* %5, %struct.gzedc_header_s** %7, align 8, !dbg !2645
  %8 = load %struct.gzedc_header_s*, %struct.gzedc_header_s** %4, align 8, !dbg !2646
  %9 = getelementptr inbounds %struct.gzedc_header_s, %struct.gzedc_header_s* %8, i32 0, i32 12, !dbg !2647
  store i32 0, i32* %9, align 8, !dbg !2648
  ret i32 0, !dbg !2649
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #4

; Function Attrs: nounwind
declare i8* @strerror(i32) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #4

declare i32 @fclose(%struct._IO_FILE*) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @__arch_swab64(i64) #3 !dbg !2650 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !2652, metadata !289), !dbg !2653
  %3 = load i64, i64* %2, align 8, !dbg !2654
  %4 = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %3) #1, !dbg !2655, !srcloc !2656
  store i64 %4, i64* %2, align 8, !dbg !2655
  %5 = load i64, i64* %2, align 8, !dbg !2657
  ret i64 %5, !dbg !2658
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__arch_swab32(i32) #3 !dbg !2659 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2660, metadata !289), !dbg !2661
  %3 = load i32, i32* %2, align 4, !dbg !2662
  %4 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %3) #1, !dbg !2663, !srcloc !2664
  store i32 %4, i32* %2, align 4, !dbg !2663
  %5 = load i32, i32* %2, align 4, !dbg !2665
  ret i32 %5, !dbg !2666
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

; Function Attrs: nounwind
declare i64 @syscall(i64, ...) #2

; Function Attrs: nounwind uwtable
define internal i32 @inflate_rem_gzip_header(%struct.zedc_stream_s*) #0 !dbg !2667 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zedc_stream_s*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.gzedc_header_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %3, metadata !2668, metadata !289), !dbg !2669
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2670, metadata !289), !dbg !2671
  call void @llvm.dbg.declare(metadata %struct.gzedc_header_s** %5, metadata !2672, metadata !289), !dbg !2673
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2674, metadata !289), !dbg !2675
  store i32 0, i32* %6, align 4, !dbg !2675
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2676, metadata !289), !dbg !2677
  %10 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2678
  %11 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %10, i32 0, i32 24, !dbg !2679
  %12 = load i32, i32* %11, align 8, !dbg !2679
  store i32 %12, i32* %7, align 4, !dbg !2677
  call void @llvm.dbg.declare(metadata i8* %8, metadata !2680, metadata !289), !dbg !2682
  store i8 0, i8* %8, align 1, !dbg !2682
  %13 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2683
  %14 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %13, i32 0, i32 64, !dbg !2685
  %15 = load i32, i32* %14, align 4, !dbg !2685
  %16 = icmp slt i32 %15, 9, !dbg !2686
  br i1 %16, label %17, label %18, !dbg !2687

; <label>:17:                                     ; preds = %1
  store i32 1, i32* %2, align 4, !dbg !2688
  br label %348, !dbg !2688

; <label>:18:                                     ; preds = %1
  %19 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2689
  %20 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %19, i32 0, i32 41, !dbg !2690
  %21 = load %struct.gzedc_header_s*, %struct.gzedc_header_s** %20, align 8, !dbg !2690
  store %struct.gzedc_header_s* %21, %struct.gzedc_header_s** %5, align 8, !dbg !2691
  %22 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2692
  %23 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %22, i32 0, i32 64, !dbg !2694
  %24 = load i32, i32* %23, align 4, !dbg !2694
  %25 = icmp eq i32 %24, 9, !dbg !2695
  br i1 %25, label %26, label %29, !dbg !2696

; <label>:26:                                     ; preds = %18
  %27 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2697
  %28 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %27, i32 0, i32 24, !dbg !2698
  store i32 0, i32* %28, align 8, !dbg !2699
  br label %29, !dbg !2697

; <label>:29:                                     ; preds = %26, %18
  %30 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2700
  %31 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %30, i32 0, i32 65, !dbg !2701
  %32 = getelementptr inbounds [18 x i8], [18 x i8]* %31, i64 0, i64 3, !dbg !2700
  %33 = load i8, i8* %32, align 1, !dbg !2700
  store i8 %33, i8* %4, align 1, !dbg !2702
  br label %34, !dbg !2703

; <label>:34:                                     ; preds = %329, %29
  %35 = load i32, i32* %7, align 4, !dbg !2704
  %36 = icmp ne i32 %35, 15, !dbg !2706
  br i1 %36, label %37, label %42, !dbg !2707

; <label>:37:                                     ; preds = %34
  %38 = load i8, i8* %8, align 1, !dbg !2708
  %39 = trunc i8 %38 to i1, !dbg !2708
  %40 = zext i1 %39 to i32, !dbg !2708
  %41 = icmp eq i32 0, %40, !dbg !2710
  br label %42

; <label>:42:                                     ; preds = %37, %34
  %43 = phi i1 [ false, %34 ], [ %41, %37 ]
  br i1 %43, label %44, label %330, !dbg !2711

; <label>:44:                                     ; preds = %42
  %45 = load i32, i32* %7, align 4, !dbg !2713
  switch i32 %45, label %328 [
    i32 0, label %46
    i32 1, label %95
    i32 2, label %102
    i32 3, label %110
    i32 4, label %120
    i32 5, label %144
    i32 6, label %186
    i32 7, label %196
    i32 8, label %235
    i32 9, label %245
    i32 10, label %284
    i32 11, label %292
    i32 12, label %300
    i32 13, label %314
    i32 15, label %327
  ], !dbg !2715

; <label>:46:                                     ; preds = %44
  %47 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2716
  %48 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %47, i32 0, i32 65, !dbg !2719
  %49 = getelementptr inbounds [18 x i8], [18 x i8]* %48, i64 0, i64 0, !dbg !2716
  %50 = load i8, i8* %49, align 8, !dbg !2716
  %51 = zext i8 %50 to i32, !dbg !2716
  %52 = icmp ne i32 %51, 31, !dbg !2720
  br i1 %52, label %67, label %53, !dbg !2721

; <label>:53:                                     ; preds = %46
  %54 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2722
  %55 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %54, i32 0, i32 65, !dbg !2723
  %56 = getelementptr inbounds [18 x i8], [18 x i8]* %55, i64 0, i64 1, !dbg !2722
  %57 = load i8, i8* %56, align 1, !dbg !2722
  %58 = zext i8 %57 to i32, !dbg !2722
  %59 = icmp ne i32 %58, 139, !dbg !2724
  br i1 %59, label %67, label %60, !dbg !2725

; <label>:60:                                     ; preds = %53
  %61 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2726
  %62 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %61, i32 0, i32 65, !dbg !2727
  %63 = getelementptr inbounds [18 x i8], [18 x i8]* %62, i64 0, i64 2, !dbg !2726
  %64 = load i8, i8* %63, align 2, !dbg !2726
  %65 = zext i8 %64 to i32, !dbg !2726
  %66 = icmp ne i32 %65, 8, !dbg !2728
  br i1 %66, label %67, label %68, !dbg !2729

; <label>:67:                                     ; preds = %60, %53, %46
  store i32 3, i32* %2, align 4, !dbg !2731
  br label %348, !dbg !2731

; <label>:68:                                     ; preds = %60
  %69 = load %struct.gzedc_header_s*, %struct.gzedc_header_s** %5, align 8, !dbg !2733
  %70 = icmp ne %struct.gzedc_header_s* %69, null, !dbg !2733
  br i1 %70, label %71, label %94, !dbg !2735

; <label>:71:                                     ; preds = %68
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2736, metadata !289), !dbg !2738
  %72 = bitcast i32* %9 to i8*, !dbg !2739
  %73 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2740
  %74 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %73, i32 0, i32 65, !dbg !2741
  %75 = getelementptr inbounds [18 x i8], [18 x i8]* %74, i64 0, i64 4, !dbg !2740
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %72, i8* %75, i64 4, i32 4, i1 false), !dbg !2739
  %76 = load i32, i32* %9, align 4, !dbg !2742
  %77 = zext i32 %76 to i64, !dbg !2742
  %78 = load %struct.gzedc_header_s*, %struct.gzedc_header_s** %5, align 8, !dbg !2743
  %79 = getelementptr inbounds %struct.gzedc_header_s, %struct.gzedc_header_s* %78, i32 0, i32 1, !dbg !2744
  store i64 %77, i64* %79, align 8, !dbg !2745
  %80 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2746
  %81 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %80, i32 0, i32 65, !dbg !2747
  %82 = getelementptr inbounds [18 x i8], [18 x i8]* %81, i64 0, i64 8, !dbg !2746
  %83 = load i8, i8* %82, align 8, !dbg !2746
  %84 = zext i8 %83 to i32, !dbg !2746
  %85 = load %struct.gzedc_header_s*, %struct.gzedc_header_s** %5, align 8, !dbg !2748
  %86 = getelementptr inbounds %struct.gzedc_header_s, %struct.gzedc_header_s* %85, i32 0, i32 2, !dbg !2749
  store i32 %84, i32* %86, align 8, !dbg !2750
  %87 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2751
  %88 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %87, i32 0, i32 65, !dbg !2752
  %89 = getelementptr inbounds [18 x i8], [18 x i8]* %88, i64 0, i64 9, !dbg !2751
  %90 = load i8, i8* %89, align 1, !dbg !2751
  %91 = zext i8 %90 to i32, !dbg !2751
  %92 = load %struct.gzedc_header_s*, %struct.gzedc_header_s** %5, align 8, !dbg !2753
  %93 = getelementptr inbounds %struct.gzedc_header_s, %struct.gzedc_header_s* %92, i32 0, i32 3, !dbg !2754
  store i32 %91, i32* %93, align 4, !dbg !2755
  br label %94, !dbg !2756

; <label>:94:                                     ; preds = %71, %68
  store i32 1, i32* %7, align 4, !dbg !2757
  br label %329, !dbg !2758

; <label>:95:                                     ; preds = %44
  %96 = load i8, i8* %4, align 1, !dbg !2759
  %97 = zext i8 %96 to i32, !dbg !2759
  %98 = icmp eq i32 %97, 0, !dbg !2761
  br i1 %98, label %99, label %100, !dbg !2762

; <label>:99:                                     ; preds = %95
  store i32 15, i32* %7, align 4, !dbg !2763
  br label %101, !dbg !2764

; <label>:100:                                    ; preds = %95
  store i32 2, i32* %7, align 4, !dbg !2765
  br label %101

; <label>:101:                                    ; preds = %100, %99
  br label %329, !dbg !2766

; <label>:102:                                    ; preds = %44
  %103 = load i8, i8* %4, align 1, !dbg !2767
  %104 = zext i8 %103 to i32, !dbg !2767
  %105 = and i32 %104, 4, !dbg !2769
  %106 = icmp ne i32 %105, 0, !dbg !2769
  br i1 %106, label %107, label %108, !dbg !2770

; <label>:107:                                    ; preds = %102
  store i8 1, i8* %8, align 1, !dbg !2771
  store i32 3, i32* %7, align 4, !dbg !2773
  br label %109, !dbg !2774

; <label>:108:                                    ; preds = %102
  store i32 6, i32* %7, align 4, !dbg !2775
  br label %109

; <label>:109:                                    ; preds = %108, %107
  br label %329, !dbg !2777

; <label>:110:                                    ; preds = %44
  %111 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2778
  %112 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %111, i32 0, i32 7, !dbg !2779
  %113 = load i8*, i8** %112, align 8, !dbg !2779
  %114 = load i8, i8* %113, align 1, !dbg !2780
  %115 = zext i8 %114 to i16, !dbg !2781
  %116 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2782
  %117 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %116, i32 0, i32 66, !dbg !2783
  store i16 %115, i16* %117, align 2, !dbg !2784
  %118 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2785
  %119 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %118, i32 0, i32 26, !dbg !2786
  store i32 0, i32* %119, align 8, !dbg !2787
  store i8 1, i8* %8, align 1, !dbg !2788
  store i32 4, i32* %7, align 4, !dbg !2789
  br label %329, !dbg !2790

; <label>:120:                                    ; preds = %44
  %121 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2791
  %122 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %121, i32 0, i32 7, !dbg !2792
  %123 = load i8*, i8** %122, align 8, !dbg !2792
  %124 = load i8, i8* %123, align 1, !dbg !2793
  %125 = zext i8 %124 to i16, !dbg !2794
  %126 = zext i16 %125 to i32, !dbg !2794
  %127 = shl i32 %126, 8, !dbg !2795
  %128 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2796
  %129 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %128, i32 0, i32 66, !dbg !2797
  %130 = load i16, i16* %129, align 2, !dbg !2798
  %131 = zext i16 %130 to i32, !dbg !2798
  %132 = or i32 %131, %127, !dbg !2798
  %133 = trunc i32 %132 to i16, !dbg !2798
  store i16 %133, i16* %129, align 2, !dbg !2798
  %134 = load %struct.gzedc_header_s*, %struct.gzedc_header_s** %5, align 8, !dbg !2799
  %135 = icmp ne %struct.gzedc_header_s* %134, null, !dbg !2799
  br i1 %135, label %136, label %143, !dbg !2801

; <label>:136:                                    ; preds = %120
  %137 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2802
  %138 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %137, i32 0, i32 66, !dbg !2803
  %139 = load i16, i16* %138, align 2, !dbg !2803
  %140 = zext i16 %139 to i32, !dbg !2802
  %141 = load %struct.gzedc_header_s*, %struct.gzedc_header_s** %5, align 8, !dbg !2804
  %142 = getelementptr inbounds %struct.gzedc_header_s, %struct.gzedc_header_s* %141, i32 0, i32 5, !dbg !2805
  store i32 %140, i32* %142, align 8, !dbg !2806
  br label %143, !dbg !2804

; <label>:143:                                    ; preds = %136, %120
  store i32 5, i32* %7, align 4, !dbg !2807
  store i8 1, i8* %8, align 1, !dbg !2808
  br label %329, !dbg !2809

; <label>:144:                                    ; preds = %44
  %145 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2810
  %146 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %145, i32 0, i32 66, !dbg !2812
  %147 = load i16, i16* %146, align 2, !dbg !2812
  %148 = zext i16 %147 to i32, !dbg !2810
  %149 = icmp eq i32 1, %148, !dbg !2813
  br i1 %149, label %150, label %151, !dbg !2814

; <label>:150:                                    ; preds = %144
  store i32 6, i32* %7, align 4, !dbg !2815
  store i8 0, i8* %8, align 1, !dbg !2817
  br label %156, !dbg !2818

; <label>:151:                                    ; preds = %144
  %152 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2819
  %153 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %152, i32 0, i32 66, !dbg !2821
  %154 = load i16, i16* %153, align 2, !dbg !2822
  %155 = add i16 %154, -1, !dbg !2822
  store i16 %155, i16* %153, align 2, !dbg !2822
  store i8 1, i8* %8, align 1, !dbg !2823
  br label %156

; <label>:156:                                    ; preds = %151, %150
  %157 = load %struct.gzedc_header_s*, %struct.gzedc_header_s** %5, align 8, !dbg !2824
  %158 = icmp ne %struct.gzedc_header_s* %157, null, !dbg !2824
  br i1 %158, label %159, label %185, !dbg !2826

; <label>:159:                                    ; preds = %156
  %160 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2827
  %161 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %160, i32 0, i32 26, !dbg !2829
  %162 = load i32, i32* %161, align 8, !dbg !2829
  store i32 %162, i32* %6, align 4, !dbg !2830
  %163 = load i32, i32* %6, align 4, !dbg !2831
  %164 = load %struct.gzedc_header_s*, %struct.gzedc_header_s** %5, align 8, !dbg !2833
  %165 = getelementptr inbounds %struct.gzedc_header_s, %struct.gzedc_header_s* %164, i32 0, i32 6, !dbg !2834
  %166 = load i32, i32* %165, align 4, !dbg !2834
  %167 = icmp slt i32 %163, %166, !dbg !2835
  br i1 %167, label %168, label %183, !dbg !2836

; <label>:168:                                    ; preds = %159
  %169 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2837
  %170 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %169, i32 0, i32 7, !dbg !2839
  %171 = load i8*, i8** %170, align 8, !dbg !2839
  %172 = load i8, i8* %171, align 1, !dbg !2840
  %173 = load i32, i32* %6, align 4, !dbg !2841
  %174 = add nsw i32 %173, 1, !dbg !2841
  store i32 %174, i32* %6, align 4, !dbg !2841
  %175 = sext i32 %173 to i64, !dbg !2842
  %176 = load %struct.gzedc_header_s*, %struct.gzedc_header_s** %5, align 8, !dbg !2842
  %177 = getelementptr inbounds %struct.gzedc_header_s, %struct.gzedc_header_s* %176, i32 0, i32 4, !dbg !2843
  %178 = load i8*, i8** %177, align 8, !dbg !2843
  %179 = getelementptr inbounds i8, i8* %178, i64 %175, !dbg !2842
  store i8 %172, i8* %179, align 1, !dbg !2844
  %180 = load i32, i32* %6, align 4, !dbg !2845
  %181 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2846
  %182 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %181, i32 0, i32 26, !dbg !2847
  store i32 %180, i32* %182, align 8, !dbg !2848
  br label %184, !dbg !2849

; <label>:183:                                    ; preds = %159
  store i32 3, i32* %2, align 4, !dbg !2850
  br label %348, !dbg !2850

; <label>:184:                                    ; preds = %168
  br label %185, !dbg !2852

; <label>:185:                                    ; preds = %184, %156
  br label %329, !dbg !2853

; <label>:186:                                    ; preds = %44
  %187 = load i8, i8* %4, align 1, !dbg !2854
  %188 = zext i8 %187 to i32, !dbg !2854
  %189 = and i32 %188, 8, !dbg !2856
  %190 = icmp ne i32 %189, 0, !dbg !2856
  br i1 %190, label %191, label %194, !dbg !2857

; <label>:191:                                    ; preds = %186
  store i32 7, i32* %7, align 4, !dbg !2858
  store i8 1, i8* %8, align 1, !dbg !2860
  %192 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2861
  %193 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %192, i32 0, i32 26, !dbg !2862
  store i32 0, i32* %193, align 8, !dbg !2863
  br label %195, !dbg !2864

; <label>:194:                                    ; preds = %186
  store i32 8, i32* %7, align 4, !dbg !2865
  br label %195

; <label>:195:                                    ; preds = %194, %191
  br label %329, !dbg !2867

; <label>:196:                                    ; preds = %44
  %197 = load %struct.gzedc_header_s*, %struct.gzedc_header_s** %5, align 8, !dbg !2868
  %198 = icmp ne %struct.gzedc_header_s* %197, null, !dbg !2868
  br i1 %198, label %199, label %225, !dbg !2870

; <label>:199:                                    ; preds = %196
  %200 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2871
  %201 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %200, i32 0, i32 26, !dbg !2873
  %202 = load i32, i32* %201, align 8, !dbg !2873
  store i32 %202, i32* %6, align 4, !dbg !2874
  %203 = load i32, i32* %6, align 4, !dbg !2875
  %204 = load %struct.gzedc_header_s*, %struct.gzedc_header_s** %5, align 8, !dbg !2877
  %205 = getelementptr inbounds %struct.gzedc_header_s, %struct.gzedc_header_s* %204, i32 0, i32 8, !dbg !2878
  %206 = load i32, i32* %205, align 8, !dbg !2878
  %207 = icmp slt i32 %203, %206, !dbg !2879
  br i1 %207, label %208, label %223, !dbg !2880

; <label>:208:                                    ; preds = %199
  %209 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2881
  %210 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %209, i32 0, i32 7, !dbg !2883
  %211 = load i8*, i8** %210, align 8, !dbg !2883
  %212 = load i8, i8* %211, align 1, !dbg !2884
  %213 = load i32, i32* %6, align 4, !dbg !2885
  %214 = add nsw i32 %213, 1, !dbg !2885
  store i32 %214, i32* %6, align 4, !dbg !2885
  %215 = sext i32 %213 to i64, !dbg !2886
  %216 = load %struct.gzedc_header_s*, %struct.gzedc_header_s** %5, align 8, !dbg !2886
  %217 = getelementptr inbounds %struct.gzedc_header_s, %struct.gzedc_header_s* %216, i32 0, i32 7, !dbg !2887
  %218 = load i8*, i8** %217, align 8, !dbg !2887
  %219 = getelementptr inbounds i8, i8* %218, i64 %215, !dbg !2886
  store i8 %212, i8* %219, align 1, !dbg !2888
  %220 = load i32, i32* %6, align 4, !dbg !2889
  %221 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2890
  %222 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %221, i32 0, i32 26, !dbg !2891
  store i32 %220, i32* %222, align 8, !dbg !2892
  br label %224, !dbg !2893

; <label>:223:                                    ; preds = %199
  store i32 3, i32* %2, align 4, !dbg !2894
  br label %348, !dbg !2894

; <label>:224:                                    ; preds = %208
  br label %225, !dbg !2896

; <label>:225:                                    ; preds = %224, %196
  %226 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2897
  %227 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %226, i32 0, i32 7, !dbg !2899
  %228 = load i8*, i8** %227, align 8, !dbg !2899
  %229 = load i8, i8* %228, align 1, !dbg !2900
  %230 = zext i8 %229 to i32, !dbg !2900
  %231 = icmp eq i32 %230, 0, !dbg !2901
  br i1 %231, label %232, label %233, !dbg !2902

; <label>:232:                                    ; preds = %225
  store i32 8, i32* %7, align 4, !dbg !2903
  br label %234, !dbg !2904

; <label>:233:                                    ; preds = %225
  store i8 1, i8* %8, align 1, !dbg !2905
  br label %234

; <label>:234:                                    ; preds = %233, %232
  br label %329, !dbg !2906

; <label>:235:                                    ; preds = %44
  %236 = load i8, i8* %4, align 1, !dbg !2907
  %237 = zext i8 %236 to i32, !dbg !2907
  %238 = and i32 %237, 16, !dbg !2909
  %239 = icmp ne i32 %238, 0, !dbg !2909
  br i1 %239, label %240, label %243, !dbg !2910

; <label>:240:                                    ; preds = %235
  store i8 1, i8* %8, align 1, !dbg !2911
  store i32 9, i32* %7, align 4, !dbg !2913
  %241 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2914
  %242 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %241, i32 0, i32 26, !dbg !2915
  store i32 0, i32* %242, align 8, !dbg !2916
  br label %244, !dbg !2917

; <label>:243:                                    ; preds = %235
  store i32 10, i32* %7, align 4, !dbg !2918
  br label %244

; <label>:244:                                    ; preds = %243, %240
  br label %329, !dbg !2920

; <label>:245:                                    ; preds = %44
  %246 = load %struct.gzedc_header_s*, %struct.gzedc_header_s** %5, align 8, !dbg !2921
  %247 = icmp ne %struct.gzedc_header_s* %246, null, !dbg !2921
  br i1 %247, label %248, label %274, !dbg !2923

; <label>:248:                                    ; preds = %245
  %249 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2924
  %250 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %249, i32 0, i32 26, !dbg !2926
  %251 = load i32, i32* %250, align 8, !dbg !2926
  store i32 %251, i32* %6, align 4, !dbg !2927
  %252 = load i32, i32* %6, align 4, !dbg !2928
  %253 = load %struct.gzedc_header_s*, %struct.gzedc_header_s** %5, align 8, !dbg !2930
  %254 = getelementptr inbounds %struct.gzedc_header_s, %struct.gzedc_header_s* %253, i32 0, i32 10, !dbg !2931
  %255 = load i32, i32* %254, align 8, !dbg !2931
  %256 = icmp slt i32 %252, %255, !dbg !2932
  br i1 %256, label %257, label %272, !dbg !2933

; <label>:257:                                    ; preds = %248
  %258 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2934
  %259 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %258, i32 0, i32 7, !dbg !2936
  %260 = load i8*, i8** %259, align 8, !dbg !2936
  %261 = load i8, i8* %260, align 1, !dbg !2937
  %262 = load i32, i32* %6, align 4, !dbg !2938
  %263 = add nsw i32 %262, 1, !dbg !2938
  store i32 %263, i32* %6, align 4, !dbg !2938
  %264 = sext i32 %262 to i64, !dbg !2939
  %265 = load %struct.gzedc_header_s*, %struct.gzedc_header_s** %5, align 8, !dbg !2939
  %266 = getelementptr inbounds %struct.gzedc_header_s, %struct.gzedc_header_s* %265, i32 0, i32 9, !dbg !2940
  %267 = load i8*, i8** %266, align 8, !dbg !2940
  %268 = getelementptr inbounds i8, i8* %267, i64 %264, !dbg !2939
  store i8 %261, i8* %268, align 1, !dbg !2941
  %269 = load i32, i32* %6, align 4, !dbg !2942
  %270 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2943
  %271 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %270, i32 0, i32 26, !dbg !2944
  store i32 %269, i32* %271, align 8, !dbg !2945
  br label %273, !dbg !2946

; <label>:272:                                    ; preds = %248
  store i32 3, i32* %2, align 4, !dbg !2947
  br label %348, !dbg !2947

; <label>:273:                                    ; preds = %257
  br label %274, !dbg !2949

; <label>:274:                                    ; preds = %273, %245
  %275 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2950
  %276 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %275, i32 0, i32 7, !dbg !2952
  %277 = load i8*, i8** %276, align 8, !dbg !2952
  %278 = load i8, i8* %277, align 1, !dbg !2953
  %279 = zext i8 %278 to i32, !dbg !2953
  %280 = icmp eq i32 %279, 0, !dbg !2954
  br i1 %280, label %281, label %282, !dbg !2955

; <label>:281:                                    ; preds = %274
  store i32 10, i32* %7, align 4, !dbg !2956
  br label %283, !dbg !2957

; <label>:282:                                    ; preds = %274
  store i8 1, i8* %8, align 1, !dbg !2958
  br label %283

; <label>:283:                                    ; preds = %282, %281
  br label %329, !dbg !2959

; <label>:284:                                    ; preds = %44
  %285 = load i8, i8* %4, align 1, !dbg !2960
  %286 = zext i8 %285 to i32, !dbg !2960
  %287 = and i32 %286, 2, !dbg !2962
  %288 = icmp ne i32 %287, 0, !dbg !2962
  br i1 %288, label %289, label %290, !dbg !2963

; <label>:289:                                    ; preds = %284
  store i8 1, i8* %8, align 1, !dbg !2964
  store i32 11, i32* %7, align 4, !dbg !2966
  br label %291, !dbg !2967

; <label>:290:                                    ; preds = %284
  store i32 13, i32* %7, align 4, !dbg !2968
  br label %291

; <label>:291:                                    ; preds = %290, %289
  br label %329, !dbg !2970

; <label>:292:                                    ; preds = %44
  %293 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2971
  %294 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %293, i32 0, i32 7, !dbg !2972
  %295 = load i8*, i8** %294, align 8, !dbg !2972
  %296 = load i8, i8* %295, align 1, !dbg !2973
  %297 = zext i8 %296 to i16, !dbg !2974
  %298 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2975
  %299 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %298, i32 0, i32 25, !dbg !2976
  store i16 %297, i16* %299, align 4, !dbg !2977
  store i32 12, i32* %7, align 4, !dbg !2978
  store i8 1, i8* %8, align 1, !dbg !2979
  br label %329, !dbg !2980

; <label>:300:                                    ; preds = %44
  %301 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2981
  %302 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %301, i32 0, i32 7, !dbg !2982
  %303 = load i8*, i8** %302, align 8, !dbg !2982
  %304 = load i8, i8* %303, align 1, !dbg !2983
  %305 = zext i8 %304 to i16, !dbg !2984
  %306 = zext i16 %305 to i32, !dbg !2984
  %307 = shl i32 %306, 8, !dbg !2985
  %308 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !2986
  %309 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %308, i32 0, i32 25, !dbg !2987
  %310 = load i16, i16* %309, align 4, !dbg !2988
  %311 = zext i16 %310 to i32, !dbg !2988
  %312 = or i32 %311, %307, !dbg !2988
  %313 = trunc i32 %312 to i16, !dbg !2988
  store i16 %313, i16* %309, align 4, !dbg !2988
  store i32 13, i32* %7, align 4, !dbg !2989
  br label %329, !dbg !2990

; <label>:314:                                    ; preds = %44
  %315 = load i8, i8* %4, align 1, !dbg !2991
  %316 = zext i8 %315 to i32, !dbg !2991
  %317 = and i32 %316, 1, !dbg !2993
  %318 = icmp ne i32 %317, 0, !dbg !2993
  br i1 %318, label %319, label %326, !dbg !2994

; <label>:319:                                    ; preds = %314
  %320 = load %struct.gzedc_header_s*, %struct.gzedc_header_s** %5, align 8, !dbg !2995
  %321 = icmp ne %struct.gzedc_header_s* %320, null, !dbg !2995
  br i1 %321, label %322, label %325, !dbg !2998

; <label>:322:                                    ; preds = %319
  %323 = load %struct.gzedc_header_s*, %struct.gzedc_header_s** %5, align 8, !dbg !2999
  %324 = getelementptr inbounds %struct.gzedc_header_s, %struct.gzedc_header_s* %323, i32 0, i32 0, !dbg !3001
  store i32 1, i32* %324, align 8, !dbg !3002
  br label %325, !dbg !2999

; <label>:325:                                    ; preds = %322, %319
  br label %326, !dbg !3003

; <label>:326:                                    ; preds = %325, %314
  store i32 15, i32* %7, align 4, !dbg !3004
  br label %329, !dbg !3005

; <label>:327:                                    ; preds = %44
  br label %328, !dbg !3006

; <label>:328:                                    ; preds = %44, %327
  br label %329, !dbg !3007

; <label>:329:                                    ; preds = %328, %326, %300, %292, %291, %283, %244, %234, %195, %185, %143, %110, %109, %101, %94
  br label %34, !dbg !3008, !llvm.loop !3010

; <label>:330:                                    ; preds = %42
  %331 = load i32, i32* %7, align 4, !dbg !3011
  %332 = icmp eq i32 15, %331, !dbg !3013
  br i1 %332, label %333, label %340, !dbg !3014

; <label>:333:                                    ; preds = %330
  %334 = load %struct.gzedc_header_s*, %struct.gzedc_header_s** %5, align 8, !dbg !3015
  %335 = icmp ne %struct.gzedc_header_s* %334, null, !dbg !3015
  br i1 %335, label %336, label %339, !dbg !3018

; <label>:336:                                    ; preds = %333
  %337 = load %struct.gzedc_header_s*, %struct.gzedc_header_s** %5, align 8, !dbg !3019
  %338 = getelementptr inbounds %struct.gzedc_header_s, %struct.gzedc_header_s* %337, i32 0, i32 12, !dbg !3021
  store i32 1, i32* %338, align 8, !dbg !3022
  br label %339, !dbg !3019

; <label>:339:                                    ; preds = %336, %333
  br label %340, !dbg !3023

; <label>:340:                                    ; preds = %339, %330
  %341 = load i32, i32* %7, align 4, !dbg !3024
  %342 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !3025
  %343 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %342, i32 0, i32 24, !dbg !3026
  store i32 %341, i32* %343, align 8, !dbg !3027
  %344 = load i8, i8* %8, align 1, !dbg !3028
  %345 = trunc i8 %344 to i1, !dbg !3028
  br i1 %345, label %346, label %347, !dbg !3030

; <label>:346:                                    ; preds = %340
  store i32 1, i32* %2, align 4, !dbg !3031
  br label %348, !dbg !3031

; <label>:347:                                    ; preds = %340
  store i32 0, i32* %2, align 4, !dbg !3032
  br label %348, !dbg !3032

; <label>:348:                                    ; preds = %347, %346, %272, %223, %183, %67, %17
  %349 = load i32, i32* %2, align 4, !dbg !3033
  ret i32 %349, !dbg !3033
}

; Function Attrs: nounwind uwtable
define internal i32 @inflate_rem_zlib_header(%struct.zedc_stream_s*) #0 !dbg !3034 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zedc_stream_s*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %3, metadata !3035, metadata !289), !dbg !3036
  call void @llvm.dbg.declare(metadata i16* %4, metadata !3037, metadata !289), !dbg !3038
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3039, metadata !289), !dbg !3040
  %8 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !3041
  %9 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %8, i32 0, i32 24, !dbg !3042
  %10 = load i32, i32* %9, align 8, !dbg !3042
  store i32 %10, i32* %5, align 4, !dbg !3040
  call void @llvm.dbg.declare(metadata i8* %6, metadata !3043, metadata !289), !dbg !3044
  store i8 0, i8* %6, align 1, !dbg !3044
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3045, metadata !289), !dbg !3046
  store i32 0, i32* %7, align 4, !dbg !3046
  %11 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !3047
  %12 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %11, i32 0, i32 64, !dbg !3049
  %13 = load i32, i32* %12, align 4, !dbg !3049
  %14 = icmp slt i32 %13, 1, !dbg !3050
  br i1 %14, label %15, label %18, !dbg !3051

; <label>:15:                                     ; preds = %1
  %16 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !3052
  %17 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %16, i32 0, i32 24, !dbg !3054
  store i32 0, i32* %17, align 8, !dbg !3055
  store i32 1, i32* %2, align 4, !dbg !3056
  br label %152, !dbg !3056

; <label>:18:                                     ; preds = %1
  br label %19, !dbg !3057

; <label>:19:                                     ; preds = %142, %18
  %20 = load i32, i32* %5, align 4, !dbg !3058
  %21 = icmp ne i32 %20, 15, !dbg !3060
  br i1 %21, label %22, label %27, !dbg !3061

; <label>:22:                                     ; preds = %19
  %23 = load i8, i8* %6, align 1, !dbg !3062
  %24 = trunc i8 %23 to i1, !dbg !3062
  %25 = zext i1 %24 to i32, !dbg !3062
  %26 = icmp eq i32 0, %25, !dbg !3064
  br label %27

; <label>:27:                                     ; preds = %22, %19
  %28 = phi i1 [ false, %19 ], [ %26, %22 ]
  br i1 %28, label %29, label %143, !dbg !3065

; <label>:29:                                     ; preds = %27
  %30 = load i32, i32* %5, align 4, !dbg !3067
  switch i32 %30, label %141 [
    i32 0, label %31
    i32 14, label %97
    i32 15, label %140
  ], !dbg !3069

; <label>:31:                                     ; preds = %29
  %32 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !3070
  %33 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %32, i32 0, i32 64, !dbg !3073
  %34 = load i32, i32* %33, align 4, !dbg !3073
  %35 = icmp eq i32 %34, 1, !dbg !3074
  br i1 %35, label %36, label %95, !dbg !3075

; <label>:36:                                     ; preds = %31
  %37 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !3076
  %38 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %37, i32 0, i32 65, !dbg !3078
  %39 = getelementptr inbounds [18 x i8], [18 x i8]* %38, i64 0, i64 0, !dbg !3076
  %40 = load i8, i8* %39, align 8, !dbg !3076
  %41 = zext i8 %40 to i16, !dbg !3079
  %42 = zext i16 %41 to i32, !dbg !3079
  %43 = shl i32 %42, 8, !dbg !3080
  %44 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !3081
  %45 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %44, i32 0, i32 65, !dbg !3082
  %46 = getelementptr inbounds [18 x i8], [18 x i8]* %45, i64 0, i64 1, !dbg !3081
  %47 = load i8, i8* %46, align 1, !dbg !3081
  %48 = zext i8 %47 to i32, !dbg !3081
  %49 = add nsw i32 %43, %48, !dbg !3083
  %50 = trunc i32 %49 to i16, !dbg !3084
  store i16 %50, i16* %4, align 2, !dbg !3085
  %51 = load i16, i16* %4, align 2, !dbg !3086
  %52 = zext i16 %51 to i32, !dbg !3086
  %53 = srem i32 %52, 31, !dbg !3088
  %54 = icmp ne i32 %53, 0, !dbg !3089
  br i1 %54, label %55, label %66, !dbg !3090

; <label>:55:                                     ; preds = %36
  br label %56, !dbg !3091, !llvm.loop !3093

; <label>:56:                                     ; preds = %55
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !3094
  %58 = icmp ne %struct._IO_FILE* %57, null, !dbg !3094
  br i1 %58, label %59, label %64, !dbg !3094

; <label>:59:                                     ; preds = %56
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !3098
  %61 = call i32 @getpid() #7, !dbg !3100
  %62 = call i32 @gettid(), !dbg !3101
  %63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.23, i32 0, i32 0), i32 %61, i32 %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i32 375), !dbg !3103
  br label %64, !dbg !3105

; <label>:64:                                     ; preds = %59, %56
  br label %65, !dbg !3106

; <label>:65:                                     ; preds = %64
  store i32 3, i32* %2, align 4, !dbg !3108
  br label %152, !dbg !3108

; <label>:66:                                     ; preds = %36
  %67 = load i16, i16* %4, align 2, !dbg !3109
  %68 = zext i16 %67 to i32, !dbg !3109
  %69 = and i32 %68, 3840, !dbg !3111
  %70 = icmp ne i32 %69, 2048, !dbg !3112
  br i1 %70, label %76, label %71, !dbg !3113

; <label>:71:                                     ; preds = %66
  %72 = load i16, i16* %4, align 2, !dbg !3114
  %73 = zext i16 %72 to i32, !dbg !3114
  %74 = and i32 %73, 61440, !dbg !3115
  %75 = icmp sgt i32 %74, 28672, !dbg !3116
  br i1 %75, label %76, label %87, !dbg !3117

; <label>:76:                                     ; preds = %71, %66
  br label %77, !dbg !3119, !llvm.loop !3121

; <label>:77:                                     ; preds = %76
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !3122
  %79 = icmp ne %struct._IO_FILE* %78, null, !dbg !3122
  br i1 %79, label %80, label %85, !dbg !3122

; <label>:80:                                     ; preds = %77
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !3126
  %82 = call i32 @getpid() #7, !dbg !3128
  %83 = call i32 @gettid(), !dbg !3129
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.24, i32 0, i32 0), i32 %82, i32 %83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i32 381), !dbg !3131
  br label %85, !dbg !3133

; <label>:85:                                     ; preds = %80, %77
  br label %86, !dbg !3134

; <label>:86:                                     ; preds = %85
  store i32 3, i32* %2, align 4, !dbg !3136
  br label %152, !dbg !3136

; <label>:87:                                     ; preds = %71
  %88 = load i16, i16* %4, align 2, !dbg !3137
  %89 = zext i16 %88 to i32, !dbg !3137
  %90 = and i32 %89, 32, !dbg !3139
  %91 = icmp ne i32 %90, 0, !dbg !3139
  br i1 %91, label %92, label %93, !dbg !3140

; <label>:92:                                     ; preds = %87
  store i32 14, i32* %5, align 4, !dbg !3141
  store i8 1, i8* %6, align 1, !dbg !3143
  br label %94, !dbg !3144

; <label>:93:                                     ; preds = %87
  store i32 15, i32* %5, align 4, !dbg !3145
  br label %94

; <label>:94:                                     ; preds = %93, %92
  br label %96, !dbg !3147

; <label>:95:                                     ; preds = %31
  store i8 1, i8* %6, align 1, !dbg !3148
  br label %96

; <label>:96:                                     ; preds = %95, %94
  br label %142, !dbg !3150

; <label>:97:                                     ; preds = %29
  %98 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !3151
  %99 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %98, i32 0, i32 64, !dbg !3153
  %100 = load i32, i32* %99, align 4, !dbg !3153
  %101 = icmp eq i32 %100, 5, !dbg !3154
  br i1 %101, label %102, label %138, !dbg !3155

; <label>:102:                                    ; preds = %97
  %103 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !3156
  %104 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %103, i32 0, i32 65, !dbg !3158
  %105 = getelementptr inbounds [18 x i8], [18 x i8]* %104, i64 0, i64 2, !dbg !3156
  %106 = load i8, i8* %105, align 2, !dbg !3156
  %107 = zext i8 %106 to i32, !dbg !3159
  %108 = shl i32 %107, 24, !dbg !3160
  %109 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !3161
  %110 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %109, i32 0, i32 65, !dbg !3162
  %111 = getelementptr inbounds [18 x i8], [18 x i8]* %110, i64 0, i64 3, !dbg !3161
  %112 = load i8, i8* %111, align 1, !dbg !3161
  %113 = zext i8 %112 to i32, !dbg !3163
  %114 = shl i32 %113, 16, !dbg !3164
  %115 = or i32 %108, %114, !dbg !3165
  %116 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !3166
  %117 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %116, i32 0, i32 65, !dbg !3167
  %118 = getelementptr inbounds [18 x i8], [18 x i8]* %117, i64 0, i64 4, !dbg !3166
  %119 = load i8, i8* %118, align 4, !dbg !3166
  %120 = zext i8 %119 to i32, !dbg !3168
  %121 = shl i32 %120, 8, !dbg !3169
  %122 = or i32 %115, %121, !dbg !3170
  %123 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !3171
  %124 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %123, i32 0, i32 65, !dbg !3172
  %125 = getelementptr inbounds [18 x i8], [18 x i8]* %124, i64 0, i64 5, !dbg !3171
  %126 = load i8, i8* %125, align 1, !dbg !3171
  %127 = zext i8 %126 to i32, !dbg !3173
  %128 = or i32 %122, %127, !dbg !3174
  %129 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !3175
  %130 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %129, i32 0, i32 40, !dbg !3176
  store i32 %128, i32* %130, align 4, !dbg !3177
  %131 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !3178
  %132 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %131, i32 0, i32 40, !dbg !3179
  %133 = load i32, i32* %132, align 4, !dbg !3179
  %134 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !3180
  %135 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %134, i32 0, i32 14, !dbg !3181
  store i32 %133, i32* %135, align 4, !dbg !3182
  %136 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !3183
  %137 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %136, i32 0, i32 33, !dbg !3184
  store i32 0, i32* %137, align 4, !dbg !3185
  store i32 15, i32* %5, align 4, !dbg !3186
  store i32 2, i32* %7, align 4, !dbg !3187
  br label %139, !dbg !3188

; <label>:138:                                    ; preds = %97
  store i8 1, i8* %6, align 1, !dbg !3189
  br label %139

; <label>:139:                                    ; preds = %138, %102
  br label %142, !dbg !3191

; <label>:140:                                    ; preds = %29
  br label %141, !dbg !3192

; <label>:141:                                    ; preds = %29, %140
  br label %142, !dbg !3194

; <label>:142:                                    ; preds = %141, %139, %96
  br label %19, !dbg !3195, !llvm.loop !3197

; <label>:143:                                    ; preds = %27
  %144 = load i32, i32* %5, align 4, !dbg !3198
  %145 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !3199
  %146 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %145, i32 0, i32 24, !dbg !3200
  store i32 %144, i32* %146, align 8, !dbg !3201
  %147 = load i8, i8* %6, align 1, !dbg !3202
  %148 = trunc i8 %147 to i1, !dbg !3202
  br i1 %148, label %149, label %150, !dbg !3204

; <label>:149:                                    ; preds = %143
  store i32 1, i32* %7, align 4, !dbg !3205
  br label %150, !dbg !3206

; <label>:150:                                    ; preds = %149, %143
  %151 = load i32, i32* %7, align 4, !dbg !3207
  store i32 %151, i32* %2, align 4, !dbg !3208
  br label %152, !dbg !3208

; <label>:152:                                    ; preds = %150, %86, %65, %15
  %153 = load i32, i32* %2, align 4, !dbg !3209
  ret i32 %153, !dbg !3209
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @__fswab16(i16 zeroext) #3 !dbg !3210 {
  %2 = alloca i16, align 2
  store i16 %0, i16* %2, align 2
  call void @llvm.dbg.declare(metadata i16* %2, metadata !3213, metadata !289), !dbg !3214
  %3 = load i16, i16* %2, align 2, !dbg !3215
  %4 = zext i16 %3 to i32, !dbg !3216
  %5 = and i32 %4, 255, !dbg !3217
  %6 = shl i32 %5, 8, !dbg !3218
  %7 = load i16, i16* %2, align 2, !dbg !3219
  %8 = zext i16 %7 to i32, !dbg !3220
  %9 = and i32 %8, 65280, !dbg !3221
  %10 = ashr i32 %9, 8, !dbg !3222
  %11 = or i32 %6, %10, !dbg !3223
  %12 = trunc i32 %11 to i16, !dbg !3224
  ret i16 %12, !dbg !3225
}

; Function Attrs: nounwind uwtable
define internal i32 @inp_proc_update(i32, i32, i32) #0 !dbg !3226 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3229, metadata !289), !dbg !3230
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3231, metadata !289), !dbg !3232
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3233, metadata !289), !dbg !3234
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3235, metadata !289), !dbg !3236
  %8 = load i32, i32* %4, align 4, !dbg !3237
  %9 = zext i32 %8 to i64, !dbg !3238
  %10 = mul i64 %9, 8, !dbg !3239
  store i64 %10, i64* %7, align 8, !dbg !3240
  %11 = load i32, i32* %5, align 4, !dbg !3241
  %12 = zext i32 %11 to i64, !dbg !3242
  %13 = load i64, i64* %7, align 8, !dbg !3243
  %14 = add i64 %13, %12, !dbg !3243
  store i64 %14, i64* %7, align 8, !dbg !3243
  %15 = load i32, i32* %6, align 4, !dbg !3244
  %16 = zext i32 %15 to i64, !dbg !3245
  %17 = load i64, i64* %7, align 8, !dbg !3246
  %18 = sub i64 %17, %16, !dbg !3246
  store i64 %18, i64* %7, align 8, !dbg !3246
  %19 = load i64, i64* %7, align 8, !dbg !3247
  %20 = add i64 %19, 7, !dbg !3248
  %21 = udiv i64 %20, 8, !dbg !3249
  store i64 %21, i64* %7, align 8, !dbg !3250
  %22 = load i64, i64* %7, align 8, !dbg !3251
  %23 = trunc i64 %22 to i32, !dbg !3252
  ret i32 %23, !dbg !3253
}

; Function Attrs: nounwind uwtable
define internal void @setup_tree(%struct.zedc_stream_s*) #0 !dbg !3254 {
  %2 = alloca %struct.zedc_stream_s*, align 8
  %3 = alloca i64, align 8
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %2, metadata !3255, metadata !289), !dbg !3256
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3257, metadata !289), !dbg !3258
  %4 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3259
  %5 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %4, i32 0, i32 49, !dbg !3261
  %6 = load i8, i8* %5, align 1, !dbg !3261
  %7 = zext i8 %6 to i32, !dbg !3259
  %8 = and i32 %7, 1, !dbg !3262
  %9 = icmp ne i32 %8, 0, !dbg !3262
  br i1 %9, label %10, label %46, !dbg !3263

; <label>:10:                                     ; preds = %1
  %11 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3264
  %12 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %11, i32 0, i32 54, !dbg !3266
  store i32 0, i32* %12, align 8, !dbg !3267
  %13 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3268
  %14 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %13, i32 0, i32 55, !dbg !3269
  store i32 0, i32* %14, align 4, !dbg !3270
  %15 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3271
  %16 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %15, i32 0, i32 44, !dbg !3272
  store i8 0, i8* %16, align 2, !dbg !3273
  %17 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3274
  %18 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %17, i32 0, i32 49, !dbg !3276
  %19 = load i8, i8* %18, align 1, !dbg !3276
  %20 = zext i8 %19 to i32, !dbg !3274
  %21 = and i32 %20, 8, !dbg !3277
  %22 = icmp ne i32 %21, 0, !dbg !3277
  br i1 %22, label %23, label %28, !dbg !3278

; <label>:23:                                     ; preds = %10
  %24 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3279
  %25 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %24, i32 0, i32 51, !dbg !3281
  store i16 0, i16* %25, align 8, !dbg !3282
  %26 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3283
  %27 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %26, i32 0, i32 52, !dbg !3284
  store i8 0, i8* %27, align 2, !dbg !3285
  br label %28, !dbg !3286

; <label>:28:                                     ; preds = %23, %10
  %29 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3287
  %30 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %29, i32 0, i32 49, !dbg !3289
  %31 = load i8, i8* %30, align 1, !dbg !3289
  %32 = zext i8 %31 to i32, !dbg !3287
  %33 = and i32 %32, 4, !dbg !3290
  %34 = icmp ne i32 %33, 0, !dbg !3290
  br i1 %34, label %35, label %45, !dbg !3291

; <label>:35:                                     ; preds = %28
  %36 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3292
  %37 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %36, i32 0, i32 59, !dbg !3294
  %38 = load i32, i32* %37, align 4, !dbg !3294
  %39 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3295
  %40 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %39, i32 0, i32 58, !dbg !3296
  store i32 %38, i32* %40, align 8, !dbg !3297
  %41 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3298
  %42 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %41, i32 0, i32 56, !dbg !3299
  store i32 0, i32* %42, align 8, !dbg !3300
  %43 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3301
  %44 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %43, i32 0, i32 29, !dbg !3302
  store i32 1, i32* %44, align 4, !dbg !3303
  br label %81, !dbg !3304

; <label>:45:                                     ; preds = %28
  br label %46, !dbg !3305

; <label>:46:                                     ; preds = %45, %1
  %47 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3306
  %48 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %47, i32 0, i32 50, !dbg !3307
  %49 = load i32, i32* %48, align 4, !dbg !3307
  %50 = zext i32 %49 to i64, !dbg !3308
  %51 = mul i64 %50, 8, !dbg !3309
  %52 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3310
  %53 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %52, i32 0, i32 52, !dbg !3311
  %54 = load i8, i8* %53, align 2, !dbg !3311
  %55 = zext i8 %54 to i64, !dbg !3310
  %56 = add i64 %51, %55, !dbg !3312
  store i64 %56, i64* %3, align 8, !dbg !3313
  %57 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3314
  %58 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %57, i32 0, i32 51, !dbg !3316
  %59 = load i16, i16* %58, align 8, !dbg !3316
  %60 = zext i16 %59 to i32, !dbg !3314
  %61 = icmp sgt i32 %60, 0, !dbg !3317
  br i1 %61, label %62, label %79, !dbg !3318

; <label>:62:                                     ; preds = %46
  %63 = load i64, i64* %3, align 8, !dbg !3319
  %64 = icmp ugt i64 %63, 0, !dbg !3320
  br i1 %64, label %71, label %65, !dbg !3321

; <label>:65:                                     ; preds = %62
  %66 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3322
  %67 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %66, i32 0, i32 43, !dbg !3324
  %68 = load i16, i16* %67, align 4, !dbg !3324
  %69 = zext i16 %68 to i32, !dbg !3322
  %70 = icmp eq i32 %69, 0, !dbg !3325
  br i1 %70, label %71, label %79, !dbg !3326

; <label>:71:                                     ; preds = %65, %62
  %72 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3328
  %73 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %72, i32 0, i32 51, !dbg !3330
  %74 = load i16, i16* %73, align 8, !dbg !3330
  %75 = zext i16 %74 to i32, !dbg !3328
  %76 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3331
  %77 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %76, i32 0, i32 54, !dbg !3332
  store i32 %75, i32* %77, align 8, !dbg !3333
  %78 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3334
  call void @extract_new_tree(%struct.zedc_stream_s* %78), !dbg !3335
  br label %79, !dbg !3336

; <label>:79:                                     ; preds = %71, %65, %46
  %80 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3337
  call void @scratch_update(%struct.zedc_stream_s* %80), !dbg !3338
  br label %81, !dbg !3339

; <label>:81:                                     ; preds = %79, %35
  ret void, !dbg !3340
}

; Function Attrs: nounwind uwtable
define internal void @extract_new_tree(%struct.zedc_stream_s*) #0 !dbg !3341 {
  %2 = alloca %struct.zedc_stream_s*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %2, metadata !3342, metadata !289), !dbg !3343
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3344, metadata !289), !dbg !3345
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3346, metadata !289), !dbg !3347
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3348, metadata !289), !dbg !3349
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3350, metadata !289), !dbg !3351
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3352, metadata !289), !dbg !3353
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3354, metadata !289), !dbg !3355
  call void @llvm.dbg.declare(metadata i64* %9, metadata !3356, metadata !289), !dbg !3358
  %10 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3359
  %11 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %10, i32 0, i32 56, !dbg !3360
  %12 = load i32, i32* %11, align 8, !dbg !3360
  %13 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3361
  %14 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %13, i32 0, i32 45, !dbg !3362
  %15 = load i8, i8* %14, align 1, !dbg !3362
  %16 = zext i8 %15 to i32, !dbg !3361
  %17 = add i32 %12, %16, !dbg !3363
  %18 = udiv i32 %17, 8, !dbg !3364
  %19 = zext i32 %18 to i64, !dbg !3365
  store i64 %19, i64* %5, align 8, !dbg !3366
  %20 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3367
  %21 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %20, i32 0, i32 50, !dbg !3368
  %22 = load i32, i32* %21, align 4, !dbg !3368
  %23 = zext i32 %22 to i64, !dbg !3369
  %24 = mul i64 %23, 8, !dbg !3370
  %25 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3371
  %26 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %25, i32 0, i32 52, !dbg !3372
  %27 = load i8, i8* %26, align 2, !dbg !3372
  %28 = zext i8 %27 to i64, !dbg !3371
  %29 = add i64 %24, %28, !dbg !3373
  store i64 %29, i64* %7, align 8, !dbg !3374
  %30 = load i64, i64* %7, align 8, !dbg !3375
  %31 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3376
  %32 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %31, i32 0, i32 43, !dbg !3377
  %33 = load i16, i16* %32, align 4, !dbg !3377
  %34 = zext i16 %33 to i64, !dbg !3376
  %35 = sub i64 %30, %34, !dbg !3378
  %36 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3379
  %37 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %36, i32 0, i32 45, !dbg !3380
  %38 = load i8, i8* %37, align 1, !dbg !3380
  %39 = zext i8 %38 to i64, !dbg !3379
  %40 = add i64 %35, %39, !dbg !3381
  store i64 %40, i64* %6, align 8, !dbg !3382
  %41 = load i64, i64* %6, align 8, !dbg !3383
  %42 = urem i64 %41, 8, !dbg !3384
  %43 = trunc i64 %42 to i8, !dbg !3383
  %44 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3385
  %45 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %44, i32 0, i32 44, !dbg !3386
  store i8 %43, i8* %45, align 2, !dbg !3387
  %46 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3388
  %47 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %46, i32 0, i32 51, !dbg !3389
  %48 = load i16, i16* %47, align 8, !dbg !3389
  %49 = zext i16 %48 to i64, !dbg !3390
  %50 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3391
  %51 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %50, i32 0, i32 44, !dbg !3392
  %52 = load i8, i8* %51, align 2, !dbg !3392
  %53 = zext i8 %52 to i64, !dbg !3391
  %54 = add i64 %49, %53, !dbg !3393
  %55 = add i64 %54, 7, !dbg !3394
  %56 = udiv i64 %55, 8, !dbg !3395
  %57 = trunc i64 %56 to i32, !dbg !3396
  store i32 %57, i32* %8, align 4, !dbg !3397
  %58 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3398
  %59 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %58, i32 0, i32 34, !dbg !3399
  %60 = load %struct.zedc_wsp*, %struct.zedc_wsp** %59, align 8, !dbg !3399
  %61 = getelementptr inbounds %struct.zedc_wsp, %struct.zedc_wsp* %60, i32 0, i32 1, !dbg !3400
  %62 = getelementptr inbounds [512 x i8], [512 x i8]* %61, i32 0, i32 0, !dbg !3398
  store i8* %62, i8** %3, align 8, !dbg !3401
  %63 = load i64, i64* %6, align 8, !dbg !3402
  %64 = udiv i64 %63, 8, !dbg !3403
  %65 = load i64, i64* %5, align 8, !dbg !3404
  %66 = sub i64 %64, %65, !dbg !3405
  store i64 %66, i64* %9, align 8, !dbg !3406
  %67 = load i64, i64* %7, align 8, !dbg !3407
  %68 = icmp eq i64 %67, 0, !dbg !3409
  br i1 %68, label %69, label %94, !dbg !3410

; <label>:69:                                     ; preds = %1
  %70 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3411
  %71 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %70, i32 0, i32 43, !dbg !3413
  %72 = load i16, i16* %71, align 4, !dbg !3413
  %73 = zext i16 %72 to i32, !dbg !3411
  %74 = icmp eq i32 %73, 0, !dbg !3414
  br i1 %74, label %75, label %94, !dbg !3415

; <label>:75:                                     ; preds = %69
  %76 = load i32, i32* %8, align 4, !dbg !3416
  %77 = zext i32 %76 to i64, !dbg !3416
  %78 = load i64, i64* %5, align 8, !dbg !3419
  %79 = icmp ugt i64 %77, %78, !dbg !3420
  br i1 %79, label %80, label %92, !dbg !3421

; <label>:80:                                     ; preds = %75
  %81 = load i64, i64* %5, align 8, !dbg !3422
  %82 = load i32, i32* %8, align 4, !dbg !3424
  %83 = zext i32 %82 to i64, !dbg !3424
  %84 = sub i64 %83, %81, !dbg !3424
  %85 = trunc i64 %84 to i32, !dbg !3424
  store i32 %85, i32* %8, align 4, !dbg !3424
  %86 = load i64, i64* %5, align 8, !dbg !3425
  %87 = load i8*, i8** %3, align 8, !dbg !3426
  %88 = getelementptr inbounds i8, i8* %87, i64 %86, !dbg !3426
  store i8* %88, i8** %3, align 8, !dbg !3426
  %89 = load i64, i64* %5, align 8, !dbg !3427
  %90 = load i64, i64* %9, align 8, !dbg !3428
  %91 = add i64 %90, %89, !dbg !3428
  store i64 %91, i64* %9, align 8, !dbg !3428
  br label %93, !dbg !3429

; <label>:92:                                     ; preds = %75
  store i32 0, i32* %8, align 4, !dbg !3430
  br label %93

; <label>:93:                                     ; preds = %92, %80
  br label %94, !dbg !3431

; <label>:94:                                     ; preds = %93, %69, %1
  %95 = load i32, i32* %8, align 4, !dbg !3432
  %96 = icmp ugt i32 %95, 0, !dbg !3434
  br i1 %96, label %97, label %130, !dbg !3435

; <label>:97:                                     ; preds = %94
  %98 = load i64, i64* %9, align 8, !dbg !3436
  %99 = icmp slt i64 %98, 0, !dbg !3438
  br i1 %99, label %100, label %130, !dbg !3439

; <label>:100:                                    ; preds = %97
  %101 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3440
  %102 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %101, i32 0, i32 34, !dbg !3442
  %103 = load %struct.zedc_wsp*, %struct.zedc_wsp** %102, align 8, !dbg !3442
  %104 = getelementptr inbounds %struct.zedc_wsp, %struct.zedc_wsp* %103, i32 0, i32 1, !dbg !3443
  %105 = getelementptr inbounds [512 x i8], [512 x i8]* %104, i32 0, i32 0, !dbg !3440
  %106 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3444
  %107 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %106, i32 0, i32 42, !dbg !3445
  %108 = load i32, i32* %107, align 8, !dbg !3445
  %109 = zext i32 %108 to i64, !dbg !3446
  %110 = getelementptr inbounds i8, i8* %105, i64 %109, !dbg !3446
  %111 = load i64, i64* %9, align 8, !dbg !3447
  %112 = getelementptr inbounds i8, i8* %110, i64 %111, !dbg !3448
  store i8* %112, i8** %4, align 8, !dbg !3449
  %113 = load i8*, i8** %3, align 8, !dbg !3450
  %114 = load i8*, i8** %4, align 8, !dbg !3451
  %115 = load i64, i64* %9, align 8, !dbg !3452
  %116 = trunc i64 %115 to i32, !dbg !3452
  %117 = call i32 @abs(i32 %116) #1, !dbg !3453
  %118 = sext i32 %117 to i64, !dbg !3453
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %113, i8* %114, i64 %118, i32 1, i1 false), !dbg !3454
  %119 = load i64, i64* %9, align 8, !dbg !3456
  %120 = trunc i64 %119 to i32, !dbg !3456
  %121 = call i32 @abs(i32 %120) #1, !dbg !3457
  %122 = load i8*, i8** %3, align 8, !dbg !3458
  %123 = sext i32 %121 to i64, !dbg !3458
  %124 = getelementptr inbounds i8, i8* %122, i64 %123, !dbg !3458
  store i8* %124, i8** %3, align 8, !dbg !3458
  %125 = load i64, i64* %9, align 8, !dbg !3459
  %126 = trunc i64 %125 to i32, !dbg !3459
  %127 = call i32 @abs(i32 %126) #1, !dbg !3460
  %128 = load i32, i32* %8, align 4, !dbg !3461
  %129 = sub i32 %128, %127, !dbg !3461
  store i32 %129, i32* %8, align 4, !dbg !3461
  store i64 0, i64* %9, align 8, !dbg !3462
  br label %130, !dbg !3463

; <label>:130:                                    ; preds = %100, %97, %94
  %131 = load i32, i32* %8, align 4, !dbg !3464
  %132 = icmp ne i32 %131, 0, !dbg !3464
  br i1 %132, label %133, label %143, !dbg !3466

; <label>:133:                                    ; preds = %130
  %134 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3467
  %135 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %134, i32 0, i32 7, !dbg !3469
  %136 = load i8*, i8** %135, align 8, !dbg !3469
  %137 = load i64, i64* %9, align 8, !dbg !3470
  %138 = getelementptr inbounds i8, i8* %136, i64 %137, !dbg !3471
  store i8* %138, i8** %4, align 8, !dbg !3472
  %139 = load i8*, i8** %3, align 8, !dbg !3473
  %140 = load i8*, i8** %4, align 8, !dbg !3474
  %141 = load i32, i32* %8, align 4, !dbg !3475
  %142 = zext i32 %141 to i64, !dbg !3475
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %139, i8* %140, i64 %142, i32 1, i1 false), !dbg !3476
  br label %143, !dbg !3477

; <label>:143:                                    ; preds = %133, %130
  %144 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3478
  %145 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %144, i32 0, i32 51, !dbg !3479
  %146 = load i16, i16* %145, align 8, !dbg !3479
  %147 = zext i16 %146 to i32, !dbg !3478
  %148 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3480
  %149 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %148, i32 0, i32 54, !dbg !3481
  store i32 %147, i32* %149, align 8, !dbg !3482
  %150 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3483
  %151 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %150, i32 0, i32 54, !dbg !3485
  %152 = load i32, i32* %151, align 8, !dbg !3485
  %153 = icmp ugt i32 %152, 0, !dbg !3486
  br i1 %153, label %154, label %175, !dbg !3487

; <label>:154:                                    ; preds = %143
  %155 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3488
  %156 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %155, i32 0, i32 44, !dbg !3490
  %157 = load i8, i8* %156, align 2, !dbg !3490
  %158 = zext i8 %157 to i32, !dbg !3488
  %159 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3491
  %160 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %159, i32 0, i32 54, !dbg !3492
  %161 = load i32, i32* %160, align 8, !dbg !3492
  %162 = add i32 %158, %161, !dbg !3493
  %163 = zext i32 %162 to i64, !dbg !3494
  %164 = urem i64 %163, 64, !dbg !3495
  %165 = sub i64 64, %164, !dbg !3496
  %166 = trunc i64 %165 to i32, !dbg !3497
  %167 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3498
  %168 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %167, i32 0, i32 55, !dbg !3499
  store i32 %166, i32* %168, align 4, !dbg !3500
  %169 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3501
  %170 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %169, i32 0, i32 55, !dbg !3502
  %171 = load i32, i32* %170, align 4, !dbg !3503
  %172 = zext i32 %171 to i64, !dbg !3503
  %173 = and i64 %172, 63, !dbg !3503
  %174 = trunc i64 %173 to i32, !dbg !3503
  store i32 %174, i32* %170, align 4, !dbg !3503
  br label %178, !dbg !3504

; <label>:175:                                    ; preds = %143
  %176 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3505
  %177 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %176, i32 0, i32 55, !dbg !3506
  store i32 0, i32* %177, align 4, !dbg !3507
  br label %178

; <label>:178:                                    ; preds = %175, %154
  ret void, !dbg !3508
}

; Function Attrs: nounwind uwtable
define internal void @scratch_update(%struct.zedc_stream_s*) #0 !dbg !3509 {
  %2 = alloca %struct.zedc_stream_s*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %2, metadata !3510, metadata !289), !dbg !3511
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3512, metadata !289), !dbg !3513
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3514, metadata !289), !dbg !3515
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3516, metadata !289), !dbg !3517
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3518, metadata !289), !dbg !3519
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3520, metadata !289), !dbg !3521
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3522, metadata !289), !dbg !3523
  %9 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3524
  %10 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %9, i32 0, i32 56, !dbg !3525
  %11 = load i32, i32* %10, align 8, !dbg !3525
  %12 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3526
  %13 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %12, i32 0, i32 45, !dbg !3527
  %14 = load i8, i8* %13, align 1, !dbg !3527
  %15 = zext i8 %14 to i32, !dbg !3526
  %16 = add i32 %11, %15, !dbg !3528
  %17 = udiv i32 %16, 8, !dbg !3529
  %18 = zext i32 %17 to i64, !dbg !3530
  store i64 %18, i64* %5, align 8, !dbg !3531
  %19 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3532
  %20 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %19, i32 0, i32 46, !dbg !3533
  %21 = load i32, i32* %20, align 8, !dbg !3533
  %22 = zext i32 %21 to i64, !dbg !3534
  %23 = mul i64 %22, 8, !dbg !3535
  %24 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3536
  %25 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %24, i32 0, i32 48, !dbg !3537
  %26 = load i8, i8* %25, align 8, !dbg !3537
  %27 = zext i8 %26 to i64, !dbg !3538
  %28 = add i64 %23, %27, !dbg !3539
  %29 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3540
  %30 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %29, i32 0, i32 43, !dbg !3541
  %31 = load i16, i16* %30, align 4, !dbg !3541
  %32 = zext i16 %31 to i64, !dbg !3540
  %33 = sub i64 %28, %32, !dbg !3542
  %34 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3543
  %35 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %34, i32 0, i32 45, !dbg !3544
  %36 = load i8, i8* %35, align 1, !dbg !3544
  %37 = zext i8 %36 to i64, !dbg !3543
  %38 = add i64 %33, %37, !dbg !3545
  store i64 %38, i64* %6, align 8, !dbg !3546
  %39 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3547
  %40 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %39, i32 0, i32 34, !dbg !3548
  %41 = load %struct.zedc_wsp*, %struct.zedc_wsp** %40, align 8, !dbg !3548
  %42 = getelementptr inbounds %struct.zedc_wsp, %struct.zedc_wsp* %41, i32 0, i32 1, !dbg !3549
  %43 = getelementptr inbounds [512 x i8], [512 x i8]* %42, i32 0, i32 0, !dbg !3547
  %44 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3550
  %45 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %44, i32 0, i32 54, !dbg !3551
  %46 = load i32, i32* %45, align 8, !dbg !3551
  %47 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3552
  %48 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %47, i32 0, i32 44, !dbg !3553
  %49 = load i8, i8* %48, align 2, !dbg !3553
  %50 = zext i8 %49 to i32, !dbg !3552
  %51 = add i32 %46, %50, !dbg !3554
  %52 = add i32 %51, 63, !dbg !3555
  %53 = and i32 %52, -64, !dbg !3556
  %54 = udiv i32 %53, 8, !dbg !3557
  %55 = zext i32 %54 to i64, !dbg !3558
  %56 = getelementptr inbounds i8, i8* %43, i64 %55, !dbg !3558
  store i8* %56, i8** %3, align 8, !dbg !3559
  %57 = load i64, i64* %6, align 8, !dbg !3560
  %58 = udiv i64 %57, 8, !dbg !3561
  %59 = load i64, i64* %5, align 8, !dbg !3562
  %60 = sub i64 %58, %59, !dbg !3563
  store i64 %60, i64* %8, align 8, !dbg !3564
  %61 = load i64, i64* %8, align 8, !dbg !3565
  %62 = icmp sge i64 %61, 0, !dbg !3567
  br i1 %62, label %63, label %75, !dbg !3568

; <label>:63:                                     ; preds = %1
  %64 = load i64, i64* %6, align 8, !dbg !3569
  %65 = urem i64 %64, 8, !dbg !3571
  %66 = icmp ne i64 %65, 0, !dbg !3572
  %67 = select i1 %66, i32 1, i32 0, !dbg !3572
  store i32 %67, i32* %7, align 4, !dbg !3573
  %68 = load i64, i64* %8, align 8, !dbg !3574
  %69 = load i32, i32* %7, align 4, !dbg !3575
  %70 = zext i32 %69 to i64, !dbg !3575
  %71 = add nsw i64 %68, %70, !dbg !3576
  %72 = trunc i64 %71 to i32, !dbg !3574
  %73 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3577
  %74 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %73, i32 0, i32 58, !dbg !3578
  store i32 %72, i32* %74, align 8, !dbg !3579
  br label %83, !dbg !3580

; <label>:75:                                     ; preds = %1
  %76 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3581
  %77 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %76, i32 0, i32 58, !dbg !3583
  store i32 0, i32* %77, align 8, !dbg !3584
  %78 = load i64, i64* %5, align 8, !dbg !3585
  %79 = load i64, i64* %6, align 8, !dbg !3586
  %80 = udiv i64 %79, 8, !dbg !3587
  %81 = sub i64 %78, %80, !dbg !3588
  %82 = trunc i64 %81 to i32, !dbg !3585
  store i32 %82, i32* %7, align 4, !dbg !3589
  br label %83

; <label>:83:                                     ; preds = %75, %63
  %84 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3590
  %85 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %84, i32 0, i32 11, !dbg !3592
  %86 = load i32, i32* %85, align 8, !dbg !3592
  %87 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3593
  %88 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %87, i32 0, i32 47, !dbg !3594
  %89 = load i32, i32* %88, align 4, !dbg !3594
  %90 = icmp ugt i32 %86, %89, !dbg !3595
  br i1 %90, label %91, label %106, !dbg !3596

; <label>:91:                                     ; preds = %83
  %92 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3597
  %93 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %92, i32 0, i32 8, !dbg !3599
  %94 = load i32, i32* %93, align 8, !dbg !3599
  %95 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3600
  %96 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %95, i32 0, i32 58, !dbg !3601
  %97 = load i32, i32* %96, align 8, !dbg !3601
  %98 = sub i32 %94, %97, !dbg !3602
  %99 = load i32, i32* %7, align 4, !dbg !3603
  %100 = add i32 %99, %98, !dbg !3603
  store i32 %100, i32* %7, align 4, !dbg !3603
  %101 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3604
  %102 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %101, i32 0, i32 8, !dbg !3605
  %103 = load i32, i32* %102, align 8, !dbg !3605
  %104 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3606
  %105 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %104, i32 0, i32 58, !dbg !3607
  store i32 %103, i32* %105, align 8, !dbg !3608
  br label %106, !dbg !3609

; <label>:106:                                    ; preds = %91, %83
  %107 = load i32, i32* %7, align 4, !dbg !3610
  %108 = mul i32 %107, 8, !dbg !3611
  %109 = zext i32 %108 to i64, !dbg !3610
  %110 = load i64, i64* %6, align 8, !dbg !3612
  %111 = urem i64 %110, 8, !dbg !3613
  %112 = sub i64 %109, %111, !dbg !3614
  %113 = trunc i64 %112 to i32, !dbg !3610
  %114 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3615
  %115 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %114, i32 0, i32 56, !dbg !3616
  store i32 %113, i32* %115, align 8, !dbg !3617
  %116 = load i64, i64* %6, align 8, !dbg !3618
  %117 = urem i64 %116, 8, !dbg !3619
  %118 = trunc i64 %117 to i8, !dbg !3618
  %119 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3620
  %120 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %119, i32 0, i32 45, !dbg !3621
  store i8 %118, i8* %120, align 1, !dbg !3622
  %121 = load i32, i32* %7, align 4, !dbg !3623
  %122 = icmp ugt i32 %121, 0, !dbg !3625
  br i1 %122, label %123, label %156, !dbg !3626

; <label>:123:                                    ; preds = %106
  %124 = load i64, i64* %8, align 8, !dbg !3627
  %125 = icmp slt i64 %124, 0, !dbg !3629
  br i1 %125, label %126, label %156, !dbg !3630

; <label>:126:                                    ; preds = %123
  %127 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3631
  %128 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %127, i32 0, i32 34, !dbg !3633
  %129 = load %struct.zedc_wsp*, %struct.zedc_wsp** %128, align 8, !dbg !3633
  %130 = getelementptr inbounds %struct.zedc_wsp, %struct.zedc_wsp* %129, i32 0, i32 1, !dbg !3634
  %131 = getelementptr inbounds [512 x i8], [512 x i8]* %130, i32 0, i32 0, !dbg !3631
  %132 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3635
  %133 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %132, i32 0, i32 42, !dbg !3636
  %134 = load i32, i32* %133, align 8, !dbg !3636
  %135 = zext i32 %134 to i64, !dbg !3637
  %136 = getelementptr inbounds i8, i8* %131, i64 %135, !dbg !3637
  %137 = load i64, i64* %8, align 8, !dbg !3638
  %138 = getelementptr inbounds i8, i8* %136, i64 %137, !dbg !3639
  store i8* %138, i8** %4, align 8, !dbg !3640
  %139 = load i8*, i8** %3, align 8, !dbg !3641
  %140 = load i8*, i8** %4, align 8, !dbg !3642
  %141 = load i64, i64* %8, align 8, !dbg !3643
  %142 = trunc i64 %141 to i32, !dbg !3643
  %143 = call i32 @abs(i32 %142) #1, !dbg !3644
  %144 = sext i32 %143 to i64, !dbg !3644
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %139, i8* %140, i64 %144, i32 1, i1 false), !dbg !3645
  %145 = load i64, i64* %8, align 8, !dbg !3647
  %146 = trunc i64 %145 to i32, !dbg !3647
  %147 = call i32 @abs(i32 %146) #1, !dbg !3648
  %148 = load i8*, i8** %3, align 8, !dbg !3649
  %149 = sext i32 %147 to i64, !dbg !3649
  %150 = getelementptr inbounds i8, i8* %148, i64 %149, !dbg !3649
  store i8* %150, i8** %3, align 8, !dbg !3649
  %151 = load i64, i64* %8, align 8, !dbg !3650
  %152 = trunc i64 %151 to i32, !dbg !3650
  %153 = call i32 @abs(i32 %152) #1, !dbg !3651
  %154 = load i32, i32* %7, align 4, !dbg !3652
  %155 = sub i32 %154, %153, !dbg !3652
  store i32 %155, i32* %7, align 4, !dbg !3652
  store i64 0, i64* %8, align 8, !dbg !3653
  br label %156, !dbg !3654

; <label>:156:                                    ; preds = %126, %123, %106
  %157 = load i32, i32* %7, align 4, !dbg !3655
  %158 = icmp ne i32 %157, 0, !dbg !3655
  br i1 %158, label %159, label %169, !dbg !3657

; <label>:159:                                    ; preds = %156
  %160 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !3658
  %161 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %160, i32 0, i32 7, !dbg !3660
  %162 = load i8*, i8** %161, align 8, !dbg !3660
  %163 = load i64, i64* %8, align 8, !dbg !3661
  %164 = getelementptr inbounds i8, i8* %162, i64 %163, !dbg !3662
  store i8* %164, i8** %4, align 8, !dbg !3663
  %165 = load i8*, i8** %3, align 8, !dbg !3664
  %166 = load i8*, i8** %4, align 8, !dbg !3665
  %167 = load i32, i32* %7, align 4, !dbg !3666
  %168 = zext i32 %167 to i64, !dbg !3666
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %165, i8* %166, i64 %168, i32 1, i1 false), !dbg !3667
  br label %169, !dbg !3668

; <label>:169:                                    ; preds = %159, %156
  ret void, !dbg !3669
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #6

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare i64 @accel_get_app_id(%struct.card_dev_t*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!124, !125}
!llvm.ident = !{!126}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !29)
!1 = !DIFile(filename: "/home/lichi/Desktop/genwqe/[task]lib--__libzHW.o/[inter]lib--inflate.o.i", directory: "/home/lichi/Desktop")
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
!29 = !{!30, !62, !37, !63, !66, !68, !69, !70, !87, !113, !117, !118, !51, !76, !39, !40, !119, !120, !121, !122, !123, !35}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zedc_asiv_infl", file: !32, line: 110, size: 768, align: 8, elements: !33)
!32 = !DIFile(filename: "../include/deflate_ddcb.h", directory: "/home/lichi/Desktop")
!33 = !{!34, !38, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !53, !56, !57, !58, !59, !60, !61}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "in_buff", scope: !31, file: !32, line: 111, baseType: !35, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !36, line: 55, baseType: !37)
!36 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop")
!37 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "in_buff_len", scope: !31, file: !32, line: 112, baseType: !39, size: 32, align: 32, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !36, line: 51, baseType: !40)
!40 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "in_crc32", scope: !31, file: !32, line: 113, baseType: !39, size: 32, align: 32, offset: 96)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "out_buff", scope: !31, file: !32, line: 115, baseType: !35, size: 64, align: 64, offset: 128)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "out_buff_len", scope: !31, file: !32, line: 116, baseType: !39, size: 32, align: 32, offset: 192)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "in_adler32", scope: !31, file: !32, line: 117, baseType: !39, size: 32, align: 32, offset: 224)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "in_dict", scope: !31, file: !32, line: 119, baseType: !35, size: 64, align: 64, offset: 256)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "in_dict_len", scope: !31, file: !32, line: 120, baseType: !39, size: 32, align: 32, offset: 320)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_0", scope: !31, file: !32, line: 121, baseType: !39, size: 32, align: 32, offset: 352)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "inp_scratch", scope: !31, file: !32, line: 123, baseType: !35, size: 64, align: 64, offset: 384)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "in_scratch_len", scope: !31, file: !32, line: 124, baseType: !39, size: 32, align: 32, offset: 448)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "in_hdr_bits", scope: !31, file: !32, line: 125, baseType: !51, size: 16, align: 16, offset: 480)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !36, line: 49, baseType: !52)
!52 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_ib", scope: !31, file: !32, line: 126, baseType: !54, size: 8, align: 8, offset: 496)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !36, line: 48, baseType: !55)
!55 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_ib", scope: !31, file: !32, line: 127, baseType: !54, size: 8, align: 8, offset: 504)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "out_dict", scope: !31, file: !32, line: 129, baseType: !35, size: 64, align: 64, offset: 512)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "out_dict_len", scope: !31, file: !32, line: 130, baseType: !39, size: 32, align: 32, offset: 576)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_1", scope: !31, file: !32, line: 131, baseType: !39, size: 32, align: 32, offset: 608)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_2", scope: !31, file: !32, line: 133, baseType: !35, size: 64, align: 64, offset: 640)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_3", scope: !31, file: !32, line: 134, baseType: !35, size: 64, align: 64, offset: 704)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !64, line: 30, baseType: !65)
!64 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "/home/lichi/Desktop")
!65 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be64", file: !67, line: 32, baseType: !63)
!67 = !DIFile(filename: "/usr/include/linux/types.h", directory: "/home/lichi/Desktop")
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !64, line: 26, baseType: !40)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !67, line: 30, baseType: !68)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "zedc_handle_t", file: !4, line: 354, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zedc_dev_t", file: !73, line: 82, size: 256, align: 64, elements: !74)
!73 = !DIFile(filename: "hw_defs.h", directory: "/home/lichi/Desktop")
!74 = !{!75, !77, !78, !84, !85, !86}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !72, file: !73, line: 83, baseType: !76, size: 32, align: 32)
!76 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "zedc_rc", scope: !72, file: !73, line: 84, baseType: !76, size: 32, align: 32, offset: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !72, file: !73, line: 87, baseType: !79, size: 64, align: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "accel_t", file: !80, line: 198, baseType: !81)
!80 = !DIFile(filename: "../include/libddcb.h", directory: "/home/lichi/Desktop")
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, align: 64)
!82 = !DICompositeType(tag: DW_TAG_structure_type, name: "card_dev_t", file: !83, line: 95, flags: DIFlagFwdDecl)
!83 = !DIFile(filename: "../include/libcard.h", directory: "/home/lichi/Desktop")
!84 = !DIDerivedType(tag: DW_TAG_member, name: "card_rc", scope: !72, file: !73, line: 88, baseType: !76, size: 32, align: 32, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "card_errno", scope: !72, file: !73, line: 89, baseType: !76, size: 32, align: 32, offset: 160)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "collect_debug_data", scope: !72, file: !73, line: 90, baseType: !76, size: 32, align: 32, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, align: 64)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zedc_asv_infl", file: !32, line: 149, size: 512, align: 8, elements: !89)
!89 = !{!90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !108, !109, !110, !111, !112}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "out_dict_used", scope: !88, file: !32, line: 150, baseType: !51, size: 16, align: 16)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "copyblock_len", scope: !88, file: !32, line: 151, baseType: !51, size: 16, align: 16, offset: 16)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_84", scope: !88, file: !32, line: 152, baseType: !54, size: 8, align: 8, offset: 32)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "infl_stat", scope: !88, file: !32, line: 153, baseType: !54, size: 8, align: 8, offset: 40)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_86", scope: !88, file: !32, line: 154, baseType: !54, size: 8, align: 8, offset: 48)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "proc_bits", scope: !88, file: !32, line: 155, baseType: !54, size: 8, align: 8, offset: 56)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_start", scope: !88, file: !32, line: 157, baseType: !39, size: 32, align: 32, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_8c", scope: !88, file: !32, line: 158, baseType: !54, size: 8, align: 8, offset: 96)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_start_bits", scope: !88, file: !32, line: 159, baseType: !54, size: 8, align: 8, offset: 104)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "out_hdr_bits", scope: !88, file: !32, line: 160, baseType: !51, size: 16, align: 16, offset: 112)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "out_crc32", scope: !88, file: !32, line: 162, baseType: !39, size: 32, align: 32, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "out_adler32", scope: !88, file: !32, line: 163, baseType: !39, size: 32, align: 32, offset: 160)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "inp_processed", scope: !88, file: !32, line: 165, baseType: !39, size: 32, align: 32, offset: 192)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "outp_returned", scope: !88, file: !32, line: 166, baseType: !39, size: 32, align: 32, offset: 224)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_a0", scope: !88, file: !32, line: 168, baseType: !105, size: 192, align: 64, offset: 256)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 192, align: 64, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 3)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "out_dict_offs", scope: !88, file: !32, line: 170, baseType: !54, size: 8, align: 8, offset: 448)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_b9", scope: !88, file: !32, line: 171, baseType: !54, size: 8, align: 8, offset: 456)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "obytes_in_dict", scope: !88, file: !32, line: 172, baseType: !51, size: 16, align: 16, offset: 464)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_bc", scope: !88, file: !32, line: 173, baseType: !51, size: 16, align: 16, offset: 480)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_be", scope: !88, file: !32, line: 174, baseType: !51, size: 16, align: 16, offset: 496)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !114, line: 98, baseType: !115)
!114 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop")
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !116, line: 133, baseType: !76)
!116 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop")
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !67, line: 29, baseType: !68)
!118 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !67, line: 28, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !64, line: 23, baseType: !52)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !67, line: 27, baseType: !120)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!124 = !{i32 2, !"Dwarf Version", i32 4}
!125 = !{i32 2, !"Debug Info Version", i32 3}
!126 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!127 = distinct !DISubprogram(name: "zedc_inflate_pending_output", scope: !128, file: !128, line: 766, type: !129, isLocal: false, isDefinition: true, scopeLine: 767, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!128 = !DIFile(filename: "inflate.c", directory: "/home/lichi/Desktop")
!129 = !DISubroutineType(types: !130)
!130 = !{!76, !131}
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zedc_stream_s", file: !4, line: 218, size: 8704, align: 64, elements: !133)
!133 = !{!134, !135, !136, !137, !138, !139, !140, !141, !144, !145, !146, !147, !148, !149, !150, !151, !152, !190, !191, !192, !193, !194, !195, !205, !206, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !230, !231, !233, !234, !235, !236, !237, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !283, !284, !285, !286}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !132, file: !4, line: 220, baseType: !76, size: 32, align: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !132, file: !4, line: 221, baseType: !76, size: 32, align: 32, offset: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "windowBits", scope: !132, file: !4, line: 222, baseType: !76, size: 32, align: 32, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "memLevel", scope: !132, file: !4, line: 227, baseType: !76, size: 32, align: 32, offset: 96)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "strategy", scope: !132, file: !4, line: 228, baseType: !76, size: 32, align: 32, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !132, file: !4, line: 229, baseType: !76, size: 32, align: 32, offset: 160)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "data_type", scope: !132, file: !4, line: 230, baseType: !76, size: 32, align: 32, offset: 192)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !132, file: !4, line: 233, baseType: !142, size: 64, align: 64, offset: 256)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64, align: 64)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !132, file: !4, line: 234, baseType: !40, size: 32, align: 32, offset: 320)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !132, file: !4, line: 235, baseType: !37, size: 64, align: 64, offset: 384)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !132, file: !4, line: 237, baseType: !121, size: 64, align: 64, offset: 448)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !132, file: !4, line: 238, baseType: !40, size: 32, align: 32, offset: 512)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !132, file: !4, line: 239, baseType: !37, size: 64, align: 64, offset: 576)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !132, file: !4, line: 241, baseType: !39, size: 32, align: 32, offset: 640)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "adler32", scope: !132, file: !4, line: 242, baseType: !39, size: 32, align: 32, offset: 672)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !132, file: !4, line: 255, baseType: !62, size: 64, align: 64, offset: 704)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !132, file: !4, line: 256, baseType: !153, size: 1856, align: 64, offset: 768)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ddcb_cmd", file: !80, line: 154, size: 1856, align: 64, elements: !154)
!154 = !{!155, !156, !157, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !175}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "next_addr", scope: !153, file: !80, line: 155, baseType: !63, size: 64, align: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !153, file: !80, line: 156, baseType: !63, size: 64, align: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "acfunc", scope: !153, file: !80, line: 158, baseType: !158, size: 8, align: 8, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !64, line: 20, baseType: !55)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !153, file: !80, line: 159, baseType: !158, size: 8, align: 8, offset: 136)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "asiv_length", scope: !153, file: !80, line: 160, baseType: !158, size: 8, align: 8, offset: 144)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "asv_length", scope: !153, file: !80, line: 161, baseType: !158, size: 8, align: 8, offset: 152)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "cmdopts", scope: !153, file: !80, line: 162, baseType: !120, size: 16, align: 16, offset: 160)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "retc", scope: !153, file: !80, line: 163, baseType: !120, size: 16, align: 16, offset: 176)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "attn", scope: !153, file: !80, line: 165, baseType: !120, size: 16, align: 16, offset: 192)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "vcrc", scope: !153, file: !80, line: 166, baseType: !120, size: 16, align: 16, offset: 208)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !153, file: !80, line: 167, baseType: !68, size: 32, align: 32, offset: 224)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "deque_ts", scope: !153, file: !80, line: 169, baseType: !63, size: 64, align: 64, offset: 256)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "cmplt_ts", scope: !153, file: !80, line: 170, baseType: !63, size: 64, align: 64, offset: 320)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "disp_ts", scope: !153, file: !80, line: 171, baseType: !63, size: 64, align: 64, offset: 384)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "ddata_addr", scope: !153, file: !80, line: 173, baseType: !63, size: 64, align: 64, offset: 448)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "asv", scope: !153, file: !80, line: 175, baseType: !172, size: 512, align: 8, offset: 512)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 512, align: 8, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, scope: !153, file: !80, line: 177, baseType: !176, size: 832, align: 64, offset: 1024)
!176 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !153, file: !80, line: 177, size: 832, align: 64, elements: !177)
!177 = !{!178, !186}
!178 = !DIDerivedType(tag: DW_TAG_member, scope: !176, file: !80, line: 179, baseType: !179, size: 832, align: 64)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !176, file: !80, line: 179, size: 832, align: 64, elements: !180)
!180 = !{!181, !182}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "ats", scope: !179, file: !80, line: 180, baseType: !63, size: 64, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "asiv", scope: !179, file: !80, line: 181, baseType: !183, size: 768, align: 8, offset: 64)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 768, align: 8, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 96)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "__asiv", scope: !176, file: !80, line: 184, baseType: !187, size: 832, align: 8)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 832, align: 8, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 104)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "retc", scope: !132, file: !4, line: 257, baseType: !51, size: 16, align: 16, offset: 2624)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "attn", scope: !132, file: !4, line: 258, baseType: !51, size: 16, align: 16, offset: 2640)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !132, file: !4, line: 259, baseType: !39, size: 32, align: 32, offset: 2656)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !132, file: !4, line: 262, baseType: !76, size: 32, align: 32, offset: 2688)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !132, file: !4, line: 263, baseType: !76, size: 32, align: 32, offset: 2720)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "out_fifo", scope: !132, file: !4, line: 266, baseType: !196, size: 2112, align: 32, offset: 2752)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zedc_fifo", file: !197, line: 45, size: 2112, align: 32, elements: !198)
!197 = !DIFile(filename: "../include/deflate_fifo.h", directory: "/home/lichi/Desktop")
!198 = !{!199, !200, !201}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !196, file: !197, line: 46, baseType: !40, size: 32, align: 32)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "pop", scope: !196, file: !197, line: 47, baseType: !40, size: 32, align: 32, offset: 32)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "fifo", scope: !196, file: !197, line: 48, baseType: !202, size: 2048, align: 8, offset: 64)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 2048, align: 8, elements: !203)
!203 = !{!204}
!204 = !DISubrange(count: 256)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "in_fifo", scope: !132, file: !4, line: 267, baseType: !196, size: 2112, align: 32, offset: 4864)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "header_state", scope: !132, file: !4, line: 268, baseType: !207, size: 32, align: 32, offset: 6976)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "head_state", file: !4, line: 163, baseType: !3)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_hcrc", scope: !132, file: !4, line: 269, baseType: !51, size: 16, align: 16, offset: 7008)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_header_idx", scope: !132, file: !4, line: 270, baseType: !76, size: 32, align: 32, offset: 7040)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "onumbits", scope: !132, file: !4, line: 273, baseType: !76, size: 32, align: 32, offset: 7072)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "obyte", scope: !132, file: !4, line: 274, baseType: !54, size: 8, align: 8, offset: 7104)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "eob_seen", scope: !132, file: !4, line: 277, baseType: !76, size: 32, align: 32, offset: 7136)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "eob_added", scope: !132, file: !4, line: 278, baseType: !76, size: 32, align: 32, offset: 7168)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "header_added", scope: !132, file: !4, line: 279, baseType: !76, size: 32, align: 32, offset: 7200)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "trailer_added", scope: !132, file: !4, line: 280, baseType: !76, size: 32, align: 32, offset: 7232)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "havedict", scope: !132, file: !4, line: 281, baseType: !76, size: 32, align: 32, offset: 7264)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "wsp", scope: !132, file: !4, line: 284, baseType: !218, size: 64, align: 64, offset: 7296)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64, align: 64)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zedc_wsp", file: !32, line: 93, size: 528640, align: 8, elements: !220)
!220 = !{!221, !226}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !219, file: !32, line: 94, baseType: !222, size: 524544, align: 8)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 524544, align: 8, elements: !223)
!223 = !{!224, !225}
!224 = !DISubrange(count: 2)
!225 = !DISubrange(count: 32784)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !219, file: !32, line: 95, baseType: !227, size: 4096, align: 8, offset: 524544)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 4096, align: 8, elements: !228)
!228 = !{!229}
!229 = !DISubrange(count: 512)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "wsp_page", scope: !132, file: !4, line: 285, baseType: !76, size: 32, align: 32, offset: 7360)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "dma_type", scope: !132, file: !4, line: 286, baseType: !232, size: 96, align: 32, offset: 7392)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 96, align: 32, elements: !106)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "file_size", scope: !132, file: !4, line: 289, baseType: !39, size: 32, align: 32, offset: 7488)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "file_adler32", scope: !132, file: !4, line: 290, baseType: !39, size: 32, align: 32, offset: 7520)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "file_crc32", scope: !132, file: !4, line: 291, baseType: !39, size: 32, align: 32, offset: 7552)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "dict_adler32", scope: !132, file: !4, line: 292, baseType: !39, size: 32, align: 32, offset: 7584)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_head", scope: !132, file: !4, line: 293, baseType: !238, size: 64, align: 64, offset: 7616)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gzedc_header_s", file: !4, line: 169, size: 640, align: 64, elements: !240)
!240 = !{!241, !242, !243, !244, !245, !246, !247, !248, !251, !252, !253, !254, !255}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !239, file: !4, line: 170, baseType: !76, size: 32, align: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !239, file: !4, line: 171, baseType: !37, size: 64, align: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "xflags", scope: !239, file: !4, line: 172, baseType: !76, size: 32, align: 32, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "os", scope: !239, file: !4, line: 173, baseType: !76, size: 32, align: 32, offset: 160)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !239, file: !4, line: 174, baseType: !121, size: 64, align: 64, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "extra_len", scope: !239, file: !4, line: 175, baseType: !40, size: 32, align: 32, offset: 256)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "extra_max", scope: !239, file: !4, line: 176, baseType: !40, size: 32, align: 32, offset: 288)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !239, file: !4, line: 177, baseType: !249, size: 64, align: 64, offset: 320)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64, align: 64)
!250 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "name_max", scope: !239, file: !4, line: 178, baseType: !40, size: 32, align: 32, offset: 384)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !239, file: !4, line: 179, baseType: !249, size: 64, align: 64, offset: 448)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "comm_max", scope: !239, file: !4, line: 180, baseType: !40, size: 32, align: 32, offset: 512)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "hcrc", scope: !239, file: !4, line: 181, baseType: !76, size: 32, align: 32, offset: 544)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !239, file: !4, line: 182, baseType: !76, size: 32, align: 32, offset: 576)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "in_hdr_scratch_len", scope: !132, file: !4, line: 297, baseType: !39, size: 32, align: 32, offset: 7680)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "in_hdr_bits", scope: !132, file: !4, line: 298, baseType: !51, size: 16, align: 16, offset: 7712)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_ib", scope: !132, file: !4, line: 299, baseType: !54, size: 8, align: 8, offset: 7728)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_ib", scope: !132, file: !4, line: 300, baseType: !54, size: 8, align: 8, offset: 7736)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "inp_processed", scope: !132, file: !4, line: 303, baseType: !39, size: 32, align: 32, offset: 7744)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "outp_returned", scope: !132, file: !4, line: 304, baseType: !39, size: 32, align: 32, offset: 7776)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "proc_bits", scope: !132, file: !4, line: 305, baseType: !54, size: 8, align: 8, offset: 7808)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "infl_stat", scope: !132, file: !4, line: 313, baseType: !54, size: 8, align: 8, offset: 7816)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_start", scope: !132, file: !4, line: 318, baseType: !39, size: 32, align: 32, offset: 7840)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "out_hdr_bits", scope: !132, file: !4, line: 319, baseType: !51, size: 16, align: 16, offset: 7872)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "out_hdr_start_bits", scope: !132, file: !4, line: 320, baseType: !54, size: 8, align: 8, offset: 7888)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "copyblock_len", scope: !132, file: !4, line: 321, baseType: !51, size: 16, align: 16, offset: 7904)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tree_bits", scope: !132, file: !4, line: 324, baseType: !39, size: 32, align: 32, offset: 7936)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "pad_bits", scope: !132, file: !4, line: 325, baseType: !39, size: 32, align: 32, offset: 7968)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_bits", scope: !132, file: !4, line: 326, baseType: !39, size: 32, align: 32, offset: 8000)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "pre_scratch_bits", scope: !132, file: !4, line: 327, baseType: !35, size: 64, align: 64, offset: 8064)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "inp_data_offs", scope: !132, file: !4, line: 328, baseType: !39, size: 32, align: 32, offset: 8128)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "in_data_used", scope: !132, file: !4, line: 329, baseType: !39, size: 32, align: 32, offset: 8160)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "dict_len", scope: !132, file: !4, line: 332, baseType: !51, size: 16, align: 16, offset: 8192)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "out_dict_offs", scope: !132, file: !4, line: 333, baseType: !54, size: 8, align: 8, offset: 8208)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "obytes_in_dict", scope: !132, file: !4, line: 334, baseType: !51, size: 16, align: 16, offset: 8224)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "prefx_len", scope: !132, file: !4, line: 337, baseType: !76, size: 32, align: 32, offset: 8256)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "prefx_idx", scope: !132, file: !4, line: 338, baseType: !76, size: 32, align: 32, offset: 8288)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "prefx", scope: !132, file: !4, line: 339, baseType: !280, size: 144, align: 8, offset: 8320)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 144, align: 8, elements: !281)
!281 = !{!282}
!282 = !DISubrange(count: 18)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "xlen", scope: !132, file: !4, line: 340, baseType: !51, size: 16, align: 16, offset: 8464)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "postfx_len", scope: !132, file: !4, line: 342, baseType: !76, size: 32, align: 32, offset: 8480)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "postfx_idx", scope: !132, file: !4, line: 343, baseType: !76, size: 32, align: 32, offset: 8512)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "postfx", scope: !132, file: !4, line: 344, baseType: !280, size: 144, align: 8, offset: 8544)
!287 = !{}
!288 = !DILocalVariable(name: "strm", arg: 1, scope: !127, file: !128, line: 766, type: !131)
!289 = !DIExpression()
!290 = !DILocation(line: 766, column: 55, scope: !127)
!291 = !DILocation(line: 768, column: 9, scope: !127)
!292 = !DILocation(line: 768, column: 15, scope: !127)
!293 = !DILocation(line: 768, column: 2, scope: !127)
!294 = distinct !DISubprogram(name: "zedc_read_pending_output", scope: !128, file: !128, line: 778, type: !295, isLocal: false, isDefinition: true, scopeLine: 780, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!295 = !DISubroutineType(types: !296)
!296 = !{!76, !131, !121, !40}
!297 = !DILocalVariable(name: "strm", arg: 1, scope: !294, file: !128, line: 778, type: !131)
!298 = !DILocation(line: 778, column: 52, scope: !294)
!299 = !DILocalVariable(name: "buf", arg: 2, scope: !294, file: !128, line: 779, type: !121)
!300 = !DILocation(line: 779, column: 13, scope: !294)
!301 = !DILocalVariable(name: "len", arg: 3, scope: !294, file: !128, line: 779, type: !40)
!302 = !DILocation(line: 779, column: 31, scope: !294)
!303 = !DILocalVariable(name: "pdict", scope: !294, file: !128, line: 781, type: !121)
!304 = !DILocation(line: 781, column: 11, scope: !294)
!305 = !DILocalVariable(name: "_len", scope: !294, file: !128, line: 782, type: !40)
!306 = !DILocation(line: 782, column: 15, scope: !294)
!307 = !DILocation(line: 784, column: 6, scope: !308)
!308 = distinct !DILexicalBlock(scope: !294, file: !128, line: 784, column: 6)
!309 = !DILocation(line: 784, column: 12, scope: !308)
!310 = !DILocation(line: 784, column: 27, scope: !308)
!311 = !DILocation(line: 784, column: 6, scope: !294)
!312 = !DILocation(line: 785, column: 3, scope: !308)
!313 = !DILocation(line: 786, column: 6, scope: !314)
!314 = distinct !DILexicalBlock(scope: !294, file: !128, line: 786, column: 6)
!315 = !DILocation(line: 786, column: 12, scope: !314)
!316 = !DILocation(line: 786, column: 23, scope: !314)
!317 = !DILocation(line: 786, column: 29, scope: !314)
!318 = !DILocation(line: 786, column: 21, scope: !314)
!319 = !DILocation(line: 786, column: 6, scope: !294)
!320 = !DILocation(line: 787, column: 3, scope: !314)
!321 = !DILocation(line: 790, column: 26, scope: !294)
!322 = !DILocation(line: 790, column: 32, scope: !294)
!323 = !DILocation(line: 790, column: 10, scope: !294)
!324 = !DILocation(line: 790, column: 16, scope: !294)
!325 = !DILocation(line: 790, column: 21, scope: !294)
!326 = !DILocation(line: 791, column: 3, scope: !294)
!327 = !DILocation(line: 791, column: 9, scope: !294)
!328 = !DILocation(line: 790, column: 42, scope: !294)
!329 = !DILocation(line: 791, column: 25, scope: !294)
!330 = !DILocation(line: 791, column: 31, scope: !294)
!331 = !DILocation(line: 791, column: 23, scope: !294)
!332 = !DILocation(line: 791, column: 42, scope: !294)
!333 = !DILocation(line: 791, column: 48, scope: !294)
!334 = !DILocation(line: 791, column: 40, scope: !294)
!335 = !DILocation(line: 790, column: 8, scope: !294)
!336 = !DILocation(line: 793, column: 2, scope: !294)
!337 = !DILocation(line: 793, column: 9, scope: !338)
!338 = !DILexicalBlockFile(scope: !294, file: !128, discriminator: 1)
!339 = !DILocation(line: 793, column: 13, scope: !338)
!340 = !DILocation(line: 793, column: 16, scope: !341)
!341 = !DILexicalBlockFile(scope: !294, file: !128, discriminator: 2)
!342 = !DILocation(line: 793, column: 22, scope: !341)
!343 = !DILocation(line: 793, column: 13, scope: !341)
!344 = !DILocation(line: 793, column: 2, scope: !345)
!345 = !DILexicalBlockFile(scope: !294, file: !128, discriminator: 3)
!346 = !DILocation(line: 794, column: 18, scope: !347)
!347 = distinct !DILexicalBlock(scope: !294, file: !128, line: 793, column: 38)
!348 = !DILocation(line: 794, column: 12, scope: !347)
!349 = !DILocation(line: 794, column: 7, scope: !347)
!350 = !DILocation(line: 794, column: 10, scope: !347)
!351 = !DILocation(line: 795, column: 3, scope: !347)
!352 = !DILocation(line: 795, column: 9, scope: !347)
!353 = !DILocation(line: 795, column: 23, scope: !347)
!354 = !DILocation(line: 796, column: 6, scope: !347)
!355 = !DILocation(line: 797, column: 7, scope: !347)
!356 = !DILocation(line: 793, column: 2, scope: !357)
!357 = !DILexicalBlockFile(scope: !294, file: !128, discriminator: 4)
!358 = distinct !{!358, !336}
!359 = !DILocation(line: 799, column: 9, scope: !294)
!360 = !DILocation(line: 799, column: 2, scope: !294)
!361 = !DILocation(line: 800, column: 1, scope: !294)
!362 = distinct !DISubprogram(name: "zedc_inflateSaveBuffers", scope: !128, file: !128, line: 977, type: !363, isLocal: false, isDefinition: true, scopeLine: 978, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!363 = !DISubroutineType(types: !364)
!364 = !{!76, !365, !366}
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "zedc_streamp", file: !4, line: 347, baseType: !131)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64, align: 64)
!367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !250)
!368 = !DILocalVariable(name: "strm", arg: 1, scope: !362, file: !128, line: 977, type: !365)
!369 = !DILocation(line: 977, column: 42, scope: !362)
!370 = !DILocalVariable(name: "prefix", arg: 2, scope: !362, file: !128, line: 977, type: !366)
!371 = !DILocation(line: 977, column: 60, scope: !362)
!372 = !DILocalVariable(name: "rc", scope: !362, file: !128, line: 979, type: !76)
!373 = !DILocation(line: 979, column: 6, scope: !362)
!374 = !DILocalVariable(name: "asiv", scope: !362, file: !128, line: 980, type: !30)
!375 = !DILocation(line: 980, column: 25, scope: !362)
!376 = !DILocalVariable(name: "cmd", scope: !362, file: !128, line: 981, type: !377)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!378 = !DILocation(line: 981, column: 19, scope: !362)
!379 = !DILocalVariable(name: "fname", scope: !362, file: !128, line: 982, type: !380)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 2048, align: 8, elements: !203)
!381 = !DILocation(line: 982, column: 7, scope: !362)
!382 = !DILocation(line: 984, column: 7, scope: !383)
!383 = distinct !DILexicalBlock(scope: !362, file: !128, line: 984, column: 6)
!384 = !DILocation(line: 984, column: 6, scope: !362)
!385 = !DILocation(line: 985, column: 3, scope: !383)
!386 = !DILocation(line: 987, column: 9, scope: !362)
!387 = !DILocation(line: 987, column: 15, scope: !362)
!388 = !DILocation(line: 987, column: 6, scope: !362)
!389 = !DILocation(line: 988, column: 35, scope: !362)
!390 = !DILocation(line: 988, column: 40, scope: !362)
!391 = !DILocation(line: 988, column: 9, scope: !362)
!392 = !DILocation(line: 988, column: 7, scope: !362)
!393 = !DILocation(line: 991, column: 11, scope: !362)
!394 = !DILocation(line: 991, column: 55, scope: !362)
!395 = !DILocation(line: 991, column: 2, scope: !362)
!396 = !DILocation(line: 992, column: 26, scope: !362)
!397 = !DILocation(line: 993, column: 4, scope: !362)
!398 = !DILocation(line: 993, column: 10, scope: !362)
!399 = !DILocation(line: 993, column: 50, scope: !362)
!400 = !DILocation(line: 992, column: 33, scope: !362)
!401 = !DILocation(line: 994, column: 4, scope: !362)
!402 = !DILocation(line: 994, column: 10, scope: !362)
!403 = !DILocation(line: 994, column: 41, scope: !362)
!404 = !DILocation(line: 992, column: 7, scope: !362)
!405 = !DILocation(line: 992, column: 5, scope: !362)
!406 = !DILocation(line: 995, column: 6, scope: !407)
!407 = distinct !DILexicalBlock(scope: !362, file: !128, line: 995, column: 6)
!408 = !DILocation(line: 995, column: 9, scope: !407)
!409 = !DILocation(line: 995, column: 6, scope: !362)
!410 = !DILocation(line: 996, column: 10, scope: !407)
!411 = !DILocation(line: 996, column: 3, scope: !407)
!412 = !DILocation(line: 998, column: 11, scope: !362)
!413 = !DILocation(line: 998, column: 55, scope: !362)
!414 = !DILocation(line: 998, column: 2, scope: !362)
!415 = !DILocation(line: 999, column: 26, scope: !362)
!416 = !DILocation(line: 1000, column: 4, scope: !362)
!417 = !DILocation(line: 1000, column: 10, scope: !362)
!418 = !DILocation(line: 1000, column: 50, scope: !362)
!419 = !DILocation(line: 999, column: 33, scope: !362)
!420 = !DILocation(line: 1001, column: 4, scope: !362)
!421 = !DILocation(line: 1001, column: 10, scope: !362)
!422 = !DILocation(line: 1001, column: 41, scope: !362)
!423 = !DILocation(line: 999, column: 7, scope: !362)
!424 = !DILocation(line: 999, column: 5, scope: !362)
!425 = !DILocation(line: 1002, column: 6, scope: !426)
!426 = distinct !DILexicalBlock(scope: !362, file: !128, line: 1002, column: 6)
!427 = !DILocation(line: 1002, column: 9, scope: !426)
!428 = !DILocation(line: 1002, column: 6, scope: !362)
!429 = !DILocation(line: 1003, column: 10, scope: !426)
!430 = !DILocation(line: 1003, column: 3, scope: !426)
!431 = !DILocation(line: 1005, column: 11, scope: !362)
!432 = !DILocation(line: 1005, column: 55, scope: !362)
!433 = !DILocation(line: 1005, column: 2, scope: !362)
!434 = !DILocation(line: 1006, column: 26, scope: !362)
!435 = !DILocation(line: 1007, column: 4, scope: !362)
!436 = !DILocation(line: 1007, column: 10, scope: !362)
!437 = !DILocation(line: 1007, column: 50, scope: !362)
!438 = !DILocation(line: 1006, column: 33, scope: !362)
!439 = !DILocation(line: 1008, column: 4, scope: !362)
!440 = !DILocation(line: 1008, column: 10, scope: !362)
!441 = !DILocation(line: 1008, column: 41, scope: !362)
!442 = !DILocation(line: 1006, column: 7, scope: !362)
!443 = !DILocation(line: 1006, column: 5, scope: !362)
!444 = !DILocation(line: 1009, column: 6, scope: !445)
!445 = distinct !DILexicalBlock(scope: !362, file: !128, line: 1009, column: 6)
!446 = !DILocation(line: 1009, column: 9, scope: !445)
!447 = !DILocation(line: 1009, column: 6, scope: !362)
!448 = !DILocation(line: 1010, column: 10, scope: !445)
!449 = !DILocation(line: 1010, column: 3, scope: !445)
!450 = !DILocation(line: 1012, column: 11, scope: !362)
!451 = !DILocation(line: 1012, column: 56, scope: !362)
!452 = !DILocation(line: 1012, column: 2, scope: !362)
!453 = !DILocation(line: 1013, column: 26, scope: !362)
!454 = !DILocation(line: 1014, column: 4, scope: !362)
!455 = !DILocation(line: 1014, column: 10, scope: !362)
!456 = !DILocation(line: 1014, column: 50, scope: !362)
!457 = !DILocation(line: 1013, column: 33, scope: !362)
!458 = !DILocation(line: 1015, column: 4, scope: !362)
!459 = !DILocation(line: 1015, column: 10, scope: !362)
!460 = !DILocation(line: 1015, column: 41, scope: !362)
!461 = !DILocation(line: 1013, column: 7, scope: !362)
!462 = !DILocation(line: 1013, column: 5, scope: !362)
!463 = !DILocation(line: 1016, column: 6, scope: !464)
!464 = distinct !DILexicalBlock(scope: !362, file: !128, line: 1016, column: 6)
!465 = !DILocation(line: 1016, column: 9, scope: !464)
!466 = !DILocation(line: 1016, column: 6, scope: !362)
!467 = !DILocation(line: 1017, column: 10, scope: !464)
!468 = !DILocation(line: 1017, column: 3, scope: !464)
!469 = !DILocation(line: 1019, column: 11, scope: !362)
!470 = !DILocation(line: 1019, column: 59, scope: !362)
!471 = !DILocation(line: 1019, column: 2, scope: !362)
!472 = !DILocation(line: 1020, column: 26, scope: !362)
!473 = !DILocation(line: 1021, column: 4, scope: !362)
!474 = !DILocation(line: 1021, column: 10, scope: !362)
!475 = !DILocation(line: 1021, column: 50, scope: !362)
!476 = !DILocation(line: 1020, column: 33, scope: !362)
!477 = !DILocation(line: 1022, column: 4, scope: !362)
!478 = !DILocation(line: 1022, column: 10, scope: !362)
!479 = !DILocation(line: 1022, column: 41, scope: !362)
!480 = !DILocation(line: 1020, column: 7, scope: !362)
!481 = !DILocation(line: 1020, column: 5, scope: !362)
!482 = !DILocation(line: 1023, column: 6, scope: !483)
!483 = distinct !DILexicalBlock(scope: !362, file: !128, line: 1023, column: 6)
!484 = !DILocation(line: 1023, column: 9, scope: !483)
!485 = !DILocation(line: 1023, column: 6, scope: !362)
!486 = !DILocation(line: 1024, column: 10, scope: !483)
!487 = !DILocation(line: 1024, column: 3, scope: !483)
!488 = !DILocation(line: 1026, column: 2, scope: !362)
!489 = !DILocation(line: 1027, column: 1, scope: !362)
!490 = distinct !DISubprogram(name: "__save_buf_to_file", scope: !128, file: !128, line: 948, type: !491, isLocal: true, isDefinition: true, scopeLine: 949, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!491 = !DISubroutineType(types: !492)
!492 = !{!76, !366, !142, !76}
!493 = !DILocalVariable(name: "fname", arg: 1, scope: !490, file: !128, line: 948, type: !366)
!494 = !DILocation(line: 948, column: 43, scope: !490)
!495 = !DILocalVariable(name: "buff", arg: 2, scope: !490, file: !128, line: 948, type: !142)
!496 = !DILocation(line: 948, column: 65, scope: !490)
!497 = !DILocalVariable(name: "len", arg: 3, scope: !490, file: !128, line: 948, type: !76)
!498 = !DILocation(line: 948, column: 75, scope: !490)
!499 = !DILocalVariable(name: "rc", scope: !490, file: !128, line: 950, type: !76)
!500 = !DILocation(line: 950, column: 6, scope: !490)
!501 = !DILocalVariable(name: "fp", scope: !490, file: !128, line: 951, type: !502)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64, align: 64)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !504, line: 48, baseType: !505)
!504 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop")
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !506, line: 241, size: 1728, align: 64, elements: !507)
!506 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop")
!507 = !{!508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !528, !529, !530, !531, !534, !535, !537, !541, !544, !546, !547, !548, !549, !550, !553, !554}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !505, file: !506, line: 242, baseType: !76, size: 32, align: 32)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !505, file: !506, line: 247, baseType: !249, size: 64, align: 64, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !505, file: !506, line: 248, baseType: !249, size: 64, align: 64, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !505, file: !506, line: 249, baseType: !249, size: 64, align: 64, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !505, file: !506, line: 250, baseType: !249, size: 64, align: 64, offset: 256)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !505, file: !506, line: 251, baseType: !249, size: 64, align: 64, offset: 320)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !505, file: !506, line: 252, baseType: !249, size: 64, align: 64, offset: 384)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !505, file: !506, line: 253, baseType: !249, size: 64, align: 64, offset: 448)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !505, file: !506, line: 254, baseType: !249, size: 64, align: 64, offset: 512)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !505, file: !506, line: 256, baseType: !249, size: 64, align: 64, offset: 576)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !505, file: !506, line: 257, baseType: !249, size: 64, align: 64, offset: 640)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !505, file: !506, line: 258, baseType: !249, size: 64, align: 64, offset: 704)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !505, file: !506, line: 260, baseType: !521, size: 64, align: 64, offset: 768)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64, align: 64)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !506, line: 156, size: 192, align: 64, elements: !523)
!523 = !{!524, !525, !527}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !522, file: !506, line: 157, baseType: !521, size: 64, align: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !522, file: !506, line: 158, baseType: !526, size: 64, align: 64, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64, align: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !522, file: !506, line: 162, baseType: !76, size: 32, align: 32, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !505, file: !506, line: 262, baseType: !526, size: 64, align: 64, offset: 832)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !505, file: !506, line: 264, baseType: !76, size: 32, align: 32, offset: 896)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !505, file: !506, line: 268, baseType: !76, size: 32, align: 32, offset: 928)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !505, file: !506, line: 270, baseType: !532, size: 64, align: 64, offset: 960)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !116, line: 131, baseType: !533)
!533 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !505, file: !506, line: 274, baseType: !52, size: 16, align: 16, offset: 1024)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !505, file: !506, line: 275, baseType: !536, size: 8, align: 8, offset: 1040)
!536 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !505, file: !506, line: 276, baseType: !538, size: 8, align: 8, offset: 1048)
!538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 8, align: 8, elements: !539)
!539 = !{!540}
!540 = !DISubrange(count: 1)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !505, file: !506, line: 280, baseType: !542, size: 64, align: 64, offset: 1088)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64, align: 64)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !506, line: 150, baseType: null)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !505, file: !506, line: 289, baseType: !545, size: 64, align: 64, offset: 1152)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !116, line: 132, baseType: !533)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !505, file: !506, line: 297, baseType: !62, size: 64, align: 64, offset: 1216)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !505, file: !506, line: 298, baseType: !62, size: 64, align: 64, offset: 1280)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !505, file: !506, line: 299, baseType: !62, size: 64, align: 64, offset: 1344)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !505, file: !506, line: 300, baseType: !62, size: 64, align: 64, offset: 1408)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !505, file: !506, line: 302, baseType: !551, size: 64, align: 64, offset: 1472)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !552, line: 216, baseType: !37)
!552 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop")
!553 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !505, file: !506, line: 303, baseType: !76, size: 32, align: 32, offset: 1536)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !505, file: !506, line: 305, baseType: !555, size: 160, align: 8, offset: 1568)
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 160, align: 8, elements: !556)
!556 = !{!557}
!557 = !DISubrange(count: 20)
!558 = !DILocation(line: 951, column: 8, scope: !490)
!559 = !DILocation(line: 953, column: 6, scope: !560)
!560 = distinct !DILexicalBlock(scope: !490, file: !128, line: 953, column: 6)
!561 = !DILocation(line: 953, column: 11, scope: !560)
!562 = !DILocation(line: 953, column: 6, scope: !490)
!563 = !DILocation(line: 954, column: 3, scope: !560)
!564 = !DILocation(line: 956, column: 6, scope: !565)
!565 = distinct !DILexicalBlock(scope: !490, file: !128, line: 956, column: 6)
!566 = !DILocation(line: 956, column: 10, scope: !565)
!567 = !DILocation(line: 956, column: 6, scope: !490)
!568 = !DILocation(line: 957, column: 3, scope: !565)
!569 = !DILocation(line: 959, column: 2, scope: !490)
!570 = distinct !{!570, !569}
!571 = !DILocation(line: 959, column: 11, scope: !572)
!572 = !DILexicalBlockFile(scope: !573, file: !128, discriminator: 1)
!573 = distinct !DILexicalBlock(scope: !574, file: !128, line: 959, column: 11)
!574 = distinct !DILexicalBlock(scope: !490, file: !128, line: 959, column: 5)
!575 = !DILocation(line: 959, column: 29, scope: !576)
!576 = !DILexicalBlockFile(scope: !573, file: !128, discriminator: 2)
!577 = !DILocation(line: 959, column: 98, scope: !576)
!578 = !DILocation(line: 959, column: 108, scope: !579)
!579 = !DILexicalBlockFile(scope: !576, file: !128, discriminator: 4)
!580 = !DILocation(line: 959, column: 136, scope: !576)
!581 = !DILocation(line: 959, column: 143, scope: !576)
!582 = !DILocation(line: 959, column: 21, scope: !583)
!583 = !DILexicalBlockFile(scope: !576, file: !128, discriminator: 5)
!584 = !DILocation(line: 959, column: 21, scope: !576)
!585 = !DILocation(line: 959, column: 149, scope: !586)
!586 = !DILexicalBlockFile(scope: !574, file: !128, discriminator: 3)
!587 = !DILocation(line: 961, column: 13, scope: !490)
!588 = !DILocation(line: 961, column: 7, scope: !490)
!589 = !DILocation(line: 961, column: 5, scope: !490)
!590 = !DILocation(line: 962, column: 7, scope: !591)
!591 = distinct !DILexicalBlock(scope: !490, file: !128, line: 962, column: 6)
!592 = !DILocation(line: 962, column: 6, scope: !490)
!593 = !DILocation(line: 963, column: 3, scope: !594)
!594 = distinct !DILexicalBlock(scope: !591, file: !128, line: 962, column: 11)
!595 = distinct !{!595, !593}
!596 = !DILocation(line: 963, column: 12, scope: !597)
!597 = !DILexicalBlockFile(scope: !598, file: !128, discriminator: 1)
!598 = distinct !DILexicalBlock(scope: !599, file: !128, line: 963, column: 12)
!599 = distinct !DILexicalBlock(scope: !594, file: !128, line: 963, column: 6)
!600 = !DILocation(line: 963, column: 30, scope: !601)
!601 = !DILexicalBlockFile(scope: !598, file: !128, discriminator: 2)
!602 = !DILocation(line: 963, column: 96, scope: !601)
!603 = !DILocation(line: 963, column: 106, scope: !604)
!604 = !DILexicalBlockFile(scope: !601, file: !128, discriminator: 4)
!605 = !DILocation(line: 963, column: 134, scope: !601)
!606 = !DILocation(line: 963, column: 4, scope: !607)
!607 = !DILexicalBlockFile(scope: !601, file: !128, discriminator: 5)
!608 = !DILocation(line: 963, column: 3, scope: !601)
!609 = !DILocation(line: 963, column: 141, scope: !610)
!610 = !DILexicalBlockFile(scope: !601, file: !128, discriminator: 6)
!611 = !DILocation(line: 963, column: 22, scope: !612)
!612 = !DILexicalBlockFile(scope: !601, file: !128, discriminator: 7)
!613 = !DILocation(line: 963, column: 22, scope: !601)
!614 = !DILocation(line: 963, column: 6, scope: !615)
!615 = !DILexicalBlockFile(scope: !599, file: !128, discriminator: 3)
!616 = !DILocation(line: 964, column: 3, scope: !594)
!617 = !DILocation(line: 966, column: 14, scope: !490)
!618 = !DILocation(line: 966, column: 20, scope: !490)
!619 = !DILocation(line: 966, column: 28, scope: !490)
!620 = !DILocation(line: 966, column: 7, scope: !490)
!621 = !DILocation(line: 966, column: 5, scope: !490)
!622 = !DILocation(line: 967, column: 6, scope: !623)
!623 = distinct !DILexicalBlock(scope: !490, file: !128, line: 967, column: 6)
!624 = !DILocation(line: 967, column: 9, scope: !623)
!625 = !DILocation(line: 967, column: 6, scope: !490)
!626 = !DILocation(line: 968, column: 3, scope: !627)
!627 = distinct !DILexicalBlock(scope: !623, file: !128, line: 967, column: 15)
!628 = distinct !{!628, !626}
!629 = !DILocation(line: 968, column: 12, scope: !630)
!630 = !DILexicalBlockFile(scope: !631, file: !128, discriminator: 1)
!631 = distinct !DILexicalBlock(scope: !632, file: !128, line: 968, column: 12)
!632 = distinct !DILexicalBlock(scope: !627, file: !128, line: 968, column: 6)
!633 = !DILocation(line: 968, column: 30, scope: !634)
!634 = !DILexicalBlockFile(scope: !631, file: !128, discriminator: 2)
!635 = !DILocation(line: 968, column: 98, scope: !634)
!636 = !DILocation(line: 968, column: 108, scope: !637)
!637 = !DILexicalBlockFile(scope: !634, file: !128, discriminator: 4)
!638 = !DILocation(line: 968, column: 136, scope: !634)
!639 = !DILocation(line: 968, column: 22, scope: !640)
!640 = !DILexicalBlockFile(scope: !634, file: !128, discriminator: 5)
!641 = !DILocation(line: 968, column: 22, scope: !634)
!642 = !DILocation(line: 968, column: 141, scope: !643)
!643 = !DILexicalBlockFile(scope: !632, file: !128, discriminator: 3)
!644 = !DILocation(line: 969, column: 10, scope: !627)
!645 = !DILocation(line: 969, column: 3, scope: !627)
!646 = !DILocation(line: 970, column: 3, scope: !627)
!647 = !DILocation(line: 972, column: 9, scope: !490)
!648 = !DILocation(line: 972, column: 2, scope: !490)
!649 = !DILocation(line: 974, column: 2, scope: !490)
!650 = !DILocation(line: 975, column: 1, scope: !490)
!651 = distinct !DISubprogram(name: "__fswab64", scope: !652, file: !652, line: 68, type: !653, isLocal: true, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!652 = !DIFile(filename: "/usr/include/linux/swab.h", directory: "/home/lichi/Desktop")
!653 = !DISubroutineType(types: !654)
!654 = !{!63, !63}
!655 = !DILocalVariable(name: "val", arg: 1, scope: !651, file: !652, line: 68, type: !63)
!656 = !DILocation(line: 68, column: 41, scope: !651)
!657 = !DILocation(line: 73, column: 23, scope: !651)
!658 = !DILocation(line: 73, column: 9, scope: !651)
!659 = !DILocation(line: 73, column: 2, scope: !651)
!660 = distinct !DISubprogram(name: "__fswab32", scope: !652, file: !652, line: 57, type: !661, isLocal: true, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!661 = !DISubroutineType(types: !662)
!662 = !{!68, !68}
!663 = !DILocalVariable(name: "val", arg: 1, scope: !660, file: !652, line: 57, type: !68)
!664 = !DILocation(line: 57, column: 41, scope: !660)
!665 = !DILocation(line: 62, column: 23, scope: !660)
!666 = !DILocation(line: 62, column: 9, scope: !660)
!667 = !DILocation(line: 62, column: 2, scope: !660)
!668 = distinct !DISubprogram(name: "zedc_inflate", scope: !128, file: !128, line: 1039, type: !669, isLocal: false, isDefinition: true, scopeLine: 1040, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!669 = !DISubroutineType(types: !670)
!670 = !{!76, !365, !76}
!671 = !DILocalVariable(name: "strm", arg: 1, scope: !668, file: !128, line: 1039, type: !365)
!672 = !DILocation(line: 1039, column: 31, scope: !668)
!673 = !DILocalVariable(name: "flush", arg: 2, scope: !668, file: !128, line: 1039, type: !76)
!674 = !DILocation(line: 1039, column: 41, scope: !668)
!675 = !DILocalVariable(name: "rc", scope: !668, file: !128, line: 1041, type: !76)
!676 = !DILocation(line: 1041, column: 6, scope: !668)
!677 = !DILocalVariable(name: "zrc", scope: !668, file: !128, line: 1041, type: !76)
!678 = !DILocation(line: 1041, column: 10, scope: !668)
!679 = !DILocalVariable(name: "len", scope: !668, file: !128, line: 1042, type: !39)
!680 = !DILocation(line: 1042, column: 11, scope: !668)
!681 = !DILocalVariable(name: "asiv", scope: !668, file: !128, line: 1043, type: !30)
!682 = !DILocation(line: 1043, column: 25, scope: !668)
!683 = !DILocalVariable(name: "asv", scope: !668, file: !128, line: 1044, type: !87)
!684 = !DILocation(line: 1044, column: 24, scope: !668)
!685 = !DILocalVariable(name: "zedc", scope: !668, file: !128, line: 1045, type: !70)
!686 = !DILocation(line: 1045, column: 16, scope: !668)
!687 = !DILocalVariable(name: "cmd", scope: !668, file: !128, line: 1046, type: !377)
!688 = !DILocation(line: 1046, column: 19, scope: !668)
!689 = !DILocalVariable(name: "i", scope: !668, file: !128, line: 1048, type: !40)
!690 = !DILocation(line: 1048, column: 15, scope: !668)
!691 = !DILocalVariable(name: "tries", scope: !668, file: !128, line: 1048, type: !40)
!692 = !DILocation(line: 1048, column: 18, scope: !668)
!693 = !DILocalVariable(name: "out_dict", scope: !668, file: !128, line: 1049, type: !35)
!694 = !DILocation(line: 1049, column: 11, scope: !668)
!695 = !DILocalVariable(name: "out_dict_len", scope: !668, file: !128, line: 1050, type: !39)
!696 = !DILocation(line: 1050, column: 11, scope: !668)
!697 = !DILocation(line: 1052, column: 7, scope: !698)
!698 = distinct !DILexicalBlock(scope: !668, file: !128, line: 1052, column: 6)
!699 = !DILocation(line: 1052, column: 6, scope: !668)
!700 = !DILocation(line: 1053, column: 3, scope: !698)
!701 = !DILocation(line: 1055, column: 24, scope: !668)
!702 = !DILocation(line: 1055, column: 30, scope: !668)
!703 = !DILocation(line: 1055, column: 9, scope: !668)
!704 = !DILocation(line: 1055, column: 7, scope: !668)
!705 = !DILocation(line: 1056, column: 7, scope: !706)
!706 = distinct !DILexicalBlock(scope: !668, file: !128, line: 1056, column: 6)
!707 = !DILocation(line: 1056, column: 6, scope: !668)
!708 = !DILocation(line: 1057, column: 3, scope: !706)
!709 = !DILocation(line: 1059, column: 9, scope: !668)
!710 = !DILocation(line: 1059, column: 15, scope: !668)
!711 = !DILocation(line: 1059, column: 6, scope: !668)
!712 = !DILocation(line: 1060, column: 16, scope: !668)
!713 = !DILocation(line: 1060, column: 2, scope: !668)
!714 = !DILocation(line: 1067, column: 6, scope: !715)
!715 = distinct !DILexicalBlock(scope: !668, file: !128, line: 1067, column: 6)
!716 = !DILocation(line: 1067, column: 12, scope: !715)
!717 = !DILocation(line: 1067, column: 21, scope: !715)
!718 = !DILocation(line: 1067, column: 6, scope: !668)
!719 = !DILocation(line: 1068, column: 3, scope: !720)
!720 = distinct !DILexicalBlock(scope: !715, file: !128, line: 1067, column: 44)
!721 = distinct !{!721, !719}
!722 = !DILocation(line: 1068, column: 12, scope: !723)
!723 = !DILexicalBlockFile(scope: !724, file: !128, discriminator: 1)
!724 = distinct !DILexicalBlock(scope: !725, file: !128, line: 1068, column: 12)
!725 = distinct !DILexicalBlock(scope: !720, file: !128, line: 1068, column: 6)
!726 = !DILocation(line: 1068, column: 30, scope: !727)
!727 = !DILexicalBlockFile(scope: !724, file: !128, discriminator: 2)
!728 = !DILocation(line: 1068, column: 95, scope: !727)
!729 = !DILocation(line: 1068, column: 105, scope: !730)
!730 = !DILexicalBlockFile(scope: !727, file: !128, discriminator: 4)
!731 = !DILocation(line: 1068, column: 22, scope: !732)
!732 = !DILexicalBlockFile(scope: !727, file: !128, discriminator: 5)
!733 = !DILocation(line: 1068, column: 22, scope: !727)
!734 = !DILocation(line: 1068, column: 135, scope: !735)
!735 = !DILexicalBlockFile(scope: !725, file: !128, discriminator: 3)
!736 = !DILocation(line: 1069, column: 3, scope: !720)
!737 = !DILocation(line: 1072, column: 16, scope: !668)
!738 = !DILocation(line: 1072, column: 2, scope: !668)
!739 = !DILocation(line: 1072, column: 8, scope: !668)
!740 = !DILocation(line: 1072, column: 14, scope: !668)
!741 = !DILocation(line: 1073, column: 2, scope: !668)
!742 = !DILocation(line: 1073, column: 8, scope: !668)
!743 = !DILocation(line: 1073, column: 22, scope: !668)
!744 = !DILocation(line: 1079, column: 35, scope: !668)
!745 = !DILocation(line: 1079, column: 7, scope: !668)
!746 = !DILocation(line: 1079, column: 5, scope: !668)
!747 = !DILocation(line: 1080, column: 6, scope: !748)
!748 = distinct !DILexicalBlock(scope: !668, file: !128, line: 1080, column: 6)
!749 = !DILocation(line: 1080, column: 6, scope: !668)
!750 = !DILocation(line: 1081, column: 3, scope: !751)
!751 = distinct !DILexicalBlock(scope: !748, file: !128, line: 1080, column: 10)
!752 = distinct !{!752, !750}
!753 = !DILocation(line: 1081, column: 12, scope: !754)
!754 = !DILexicalBlockFile(scope: !755, file: !128, discriminator: 1)
!755 = distinct !DILexicalBlock(scope: !756, file: !128, line: 1081, column: 12)
!756 = distinct !DILexicalBlock(scope: !751, file: !128, line: 1081, column: 6)
!757 = !DILocation(line: 1081, column: 30, scope: !758)
!758 = !DILexicalBlockFile(scope: !755, file: !128, discriminator: 2)
!759 = !DILocation(line: 1081, column: 93, scope: !758)
!760 = !DILocation(line: 1081, column: 103, scope: !761)
!761 = !DILexicalBlockFile(scope: !758, file: !128, discriminator: 4)
!762 = !DILocation(line: 1081, column: 132, scope: !758)
!763 = !DILocation(line: 1081, column: 22, scope: !764)
!764 = !DILexicalBlockFile(scope: !758, file: !128, discriminator: 5)
!765 = !DILocation(line: 1081, column: 22, scope: !758)
!766 = !DILocation(line: 1081, column: 137, scope: !767)
!767 = !DILexicalBlockFile(scope: !756, file: !128, discriminator: 3)
!768 = !DILocation(line: 1082, column: 3, scope: !751)
!769 = !DILocation(line: 1086, column: 6, scope: !770)
!770 = distinct !DILexicalBlock(scope: !668, file: !128, line: 1086, column: 6)
!771 = !DILocation(line: 1086, column: 12, scope: !770)
!772 = !DILocation(line: 1086, column: 22, scope: !770)
!773 = !DILocation(line: 1086, column: 6, scope: !668)
!774 = !DILocation(line: 1087, column: 3, scope: !770)
!775 = !DILocation(line: 1087, column: 9, scope: !770)
!776 = !DILocation(line: 1087, column: 18, scope: !770)
!777 = !DILocation(line: 1089, column: 6, scope: !778)
!778 = distinct !DILexicalBlock(scope: !668, file: !128, line: 1089, column: 6)
!779 = !DILocation(line: 1089, column: 12, scope: !778)
!780 = !DILocation(line: 1089, column: 6, scope: !668)
!781 = !DILocation(line: 1091, column: 35, scope: !782)
!782 = distinct !DILexicalBlock(scope: !778, file: !128, line: 1089, column: 22)
!783 = !DILocation(line: 1091, column: 8, scope: !782)
!784 = !DILocation(line: 1091, column: 6, scope: !782)
!785 = !DILocation(line: 1092, column: 7, scope: !786)
!786 = distinct !DILexicalBlock(scope: !782, file: !128, line: 1092, column: 7)
!787 = !DILocation(line: 1092, column: 10, scope: !786)
!788 = !DILocation(line: 1092, column: 7, scope: !782)
!789 = !DILocation(line: 1093, column: 4, scope: !786)
!790 = !DILocation(line: 1094, column: 7, scope: !791)
!791 = distinct !DILexicalBlock(scope: !782, file: !128, line: 1094, column: 7)
!792 = !DILocation(line: 1094, column: 10, scope: !791)
!793 = !DILocation(line: 1094, column: 7, scope: !782)
!794 = !DILocation(line: 1095, column: 4, scope: !791)
!795 = !DILocation(line: 1096, column: 7, scope: !796)
!796 = distinct !DILexicalBlock(scope: !782, file: !128, line: 1096, column: 7)
!797 = !DILocation(line: 1096, column: 13, scope: !796)
!798 = !DILocation(line: 1096, column: 28, scope: !796)
!799 = !DILocation(line: 1096, column: 7, scope: !782)
!800 = !DILocation(line: 1097, column: 4, scope: !796)
!801 = !DILocation(line: 1098, column: 3, scope: !782)
!802 = !DILocation(line: 1102, column: 6, scope: !803)
!803 = distinct !DILexicalBlock(scope: !668, file: !128, line: 1102, column: 6)
!804 = !DILocation(line: 1102, column: 12, scope: !803)
!805 = !DILocation(line: 1102, column: 22, scope: !803)
!806 = !DILocation(line: 1102, column: 6, scope: !668)
!807 = !DILocation(line: 1103, column: 3, scope: !803)
!808 = !DILocation(line: 1106, column: 21, scope: !809)
!809 = distinct !DILexicalBlock(scope: !668, file: !128, line: 1106, column: 6)
!810 = !DILocation(line: 1106, column: 27, scope: !809)
!811 = !DILocation(line: 1106, column: 18, scope: !809)
!812 = !DILocation(line: 1106, column: 6, scope: !668)
!813 = !DILocation(line: 1107, column: 34, scope: !814)
!814 = distinct !DILexicalBlock(scope: !809, file: !128, line: 1106, column: 41)
!815 = !DILocation(line: 1107, column: 40, scope: !814)
!816 = !DILocation(line: 1107, column: 8, scope: !814)
!817 = !DILocation(line: 1107, column: 6, scope: !814)
!818 = !DILocation(line: 1108, column: 12, scope: !819)
!819 = distinct !DILexicalBlock(scope: !814, file: !128, line: 1108, column: 7)
!820 = !DILocation(line: 1108, column: 9, scope: !819)
!821 = !DILocation(line: 1108, column: 7, scope: !814)
!822 = !DILocation(line: 1109, column: 11, scope: !819)
!823 = !DILocation(line: 1109, column: 4, scope: !819)
!824 = !DILocation(line: 1110, column: 2, scope: !814)
!825 = !DILocation(line: 1112, column: 6, scope: !826)
!826 = distinct !DILexicalBlock(scope: !668, file: !128, line: 1112, column: 6)
!827 = !DILocation(line: 1112, column: 12, scope: !826)
!828 = !DILocation(line: 1112, column: 22, scope: !826)
!829 = !DILocation(line: 1112, column: 6, scope: !668)
!830 = !DILocation(line: 1113, column: 3, scope: !826)
!831 = !DILocation(line: 1116, column: 7, scope: !832)
!832 = distinct !DILexicalBlock(scope: !668, file: !128, line: 1116, column: 6)
!833 = !DILocation(line: 1116, column: 13, scope: !832)
!834 = !DILocation(line: 1116, column: 22, scope: !832)
!835 = !DILocation(line: 1116, column: 28, scope: !832)
!836 = !DILocation(line: 1116, column: 32, scope: !837)
!837 = !DILexicalBlockFile(scope: !832, file: !128, discriminator: 1)
!838 = !DILocation(line: 1116, column: 38, scope: !837)
!839 = !DILocation(line: 1116, column: 51, scope: !837)
!840 = !DILocation(line: 1116, column: 6, scope: !837)
!841 = !DILocation(line: 1117, column: 3, scope: !832)
!842 = !DILocation(line: 1120, column: 2, scope: !668)
!843 = !DILocation(line: 1120, column: 7, scope: !668)
!844 = !DILocation(line: 1120, column: 11, scope: !668)
!845 = !DILocation(line: 1121, column: 2, scope: !668)
!846 = !DILocation(line: 1121, column: 7, scope: !668)
!847 = !DILocation(line: 1121, column: 14, scope: !668)
!848 = !DILocation(line: 1122, column: 2, scope: !668)
!849 = !DILocation(line: 1122, column: 7, scope: !668)
!850 = !DILocation(line: 1122, column: 19, scope: !668)
!851 = !DILocation(line: 1123, column: 2, scope: !668)
!852 = !DILocation(line: 1123, column: 7, scope: !668)
!853 = !DILocation(line: 1123, column: 18, scope: !668)
!854 = !DILocation(line: 1124, column: 2, scope: !668)
!855 = !DILocation(line: 1124, column: 7, scope: !668)
!856 = !DILocation(line: 1124, column: 11, scope: !668)
!857 = !DILocation(line: 1125, column: 2, scope: !668)
!858 = !DILocation(line: 1125, column: 7, scope: !668)
!859 = !DILocation(line: 1125, column: 15, scope: !668)
!860 = !DILocation(line: 1126, column: 35, scope: !668)
!861 = !DILocation(line: 1126, column: 40, scope: !668)
!862 = !DILocation(line: 1126, column: 9, scope: !668)
!863 = !DILocation(line: 1126, column: 7, scope: !668)
!864 = !DILocation(line: 1127, column: 33, scope: !668)
!865 = !DILocation(line: 1127, column: 38, scope: !668)
!866 = !DILocation(line: 1127, column: 8, scope: !668)
!867 = !DILocation(line: 1127, column: 6, scope: !668)
!868 = !DILocation(line: 1130, column: 7, scope: !869)
!869 = distinct !DILexicalBlock(scope: !668, file: !128, line: 1130, column: 6)
!870 = !DILocation(line: 1130, column: 13, scope: !869)
!871 = !DILocation(line: 1130, column: 25, scope: !869)
!872 = !DILocation(line: 1130, column: 47, scope: !869)
!873 = !DILocation(line: 1130, column: 6, scope: !668)
!874 = !DILocation(line: 1132, column: 3, scope: !869)
!875 = !DILocation(line: 1132, column: 8, scope: !869)
!876 = !DILocation(line: 1132, column: 12, scope: !869)
!877 = !DILocation(line: 1134, column: 7, scope: !869)
!878 = !DILocation(line: 1134, column: 12, scope: !869)
!879 = !DILocation(line: 1134, column: 16, scope: !869)
!880 = !DILocation(line: 1138, column: 7, scope: !881)
!881 = distinct !DILexicalBlock(scope: !668, file: !128, line: 1138, column: 6)
!882 = !DILocation(line: 1138, column: 13, scope: !881)
!883 = !DILocation(line: 1138, column: 25, scope: !881)
!884 = !DILocation(line: 1138, column: 47, scope: !881)
!885 = !DILocation(line: 1138, column: 6, scope: !668)
!886 = !DILocation(line: 1140, column: 3, scope: !881)
!887 = !DILocation(line: 1140, column: 8, scope: !881)
!888 = !DILocation(line: 1140, column: 12, scope: !881)
!889 = !DILocation(line: 1142, column: 7, scope: !881)
!890 = !DILocation(line: 1142, column: 12, scope: !881)
!891 = !DILocation(line: 1142, column: 16, scope: !881)
!892 = !DILocation(line: 1146, column: 7, scope: !893)
!893 = distinct !DILexicalBlock(scope: !668, file: !128, line: 1146, column: 6)
!894 = !DILocation(line: 1146, column: 13, scope: !893)
!895 = !DILocation(line: 1146, column: 25, scope: !893)
!896 = !DILocation(line: 1146, column: 47, scope: !893)
!897 = !DILocation(line: 1146, column: 6, scope: !668)
!898 = !DILocation(line: 1148, column: 3, scope: !899)
!899 = distinct !DILexicalBlock(scope: !893, file: !128, line: 1147, column: 26)
!900 = !DILocation(line: 1148, column: 8, scope: !899)
!901 = !DILocation(line: 1148, column: 12, scope: !899)
!902 = !DILocation(line: 1154, column: 2, scope: !899)
!903 = !DILocation(line: 1155, column: 3, scope: !904)
!904 = distinct !DILexicalBlock(scope: !893, file: !128, line: 1154, column: 9)
!905 = !DILocation(line: 1155, column: 8, scope: !904)
!906 = !DILocation(line: 1155, column: 12, scope: !904)
!907 = !DILocation(line: 1163, column: 6, scope: !908)
!908 = distinct !DILexicalBlock(scope: !668, file: !128, line: 1163, column: 6)
!909 = !DILocation(line: 1163, column: 12, scope: !908)
!910 = !DILocation(line: 1163, column: 18, scope: !908)
!911 = !DILocation(line: 1163, column: 6, scope: !668)
!912 = !DILocation(line: 1164, column: 3, scope: !908)
!913 = !DILocation(line: 1164, column: 8, scope: !908)
!914 = !DILocation(line: 1164, column: 16, scope: !908)
!915 = !DILocation(line: 1167, column: 19, scope: !668)
!916 = !DILocation(line: 1167, column: 51, scope: !668)
!917 = !DILocation(line: 1167, column: 56, scope: !668)
!918 = !DILocation(line: 1167, column: 25, scope: !668)
!919 = !DILocation(line: 1167, column: 2, scope: !668)
!920 = !DILocation(line: 1180, column: 2, scope: !668)
!921 = !DILocation(line: 1180, column: 7, scope: !668)
!922 = !DILocation(line: 1180, column: 15, scope: !668)
!923 = !DILocation(line: 1181, column: 8, scope: !668)
!924 = !DILocation(line: 1183, column: 7, scope: !925)
!925 = distinct !DILexicalBlock(scope: !668, file: !128, line: 1183, column: 6)
!926 = !DILocation(line: 1183, column: 13, scope: !925)
!927 = !DILocation(line: 1183, column: 19, scope: !925)
!928 = !DILocation(line: 1183, column: 31, scope: !925)
!929 = !DILocation(line: 1184, column: 7, scope: !925)
!930 = !DILocation(line: 1184, column: 13, scope: !925)
!931 = !DILocation(line: 1184, column: 19, scope: !925)
!932 = !DILocation(line: 1184, column: 23, scope: !933)
!933 = !DILexicalBlockFile(scope: !925, file: !128, discriminator: 1)
!934 = !DILocation(line: 1184, column: 29, scope: !933)
!935 = !DILocation(line: 1184, column: 41, scope: !933)
!936 = !DILocation(line: 1184, column: 47, scope: !933)
!937 = !DILocation(line: 1184, column: 56, scope: !933)
!938 = !DILocation(line: 1184, column: 39, scope: !933)
!939 = !DILocation(line: 1183, column: 6, scope: !940)
!940 = !DILexicalBlockFile(scope: !668, file: !128, discriminator: 1)
!941 = !DILocation(line: 1187, column: 14, scope: !942)
!942 = distinct !DILexicalBlock(scope: !925, file: !128, line: 1184, column: 62)
!943 = !DILocation(line: 1187, column: 20, scope: !942)
!944 = !DILocation(line: 1187, column: 12, scope: !942)
!945 = !DILocation(line: 1188, column: 18, scope: !942)
!946 = !DILocation(line: 1188, column: 24, scope: !942)
!947 = !DILocation(line: 1188, column: 16, scope: !942)
!948 = !DILocation(line: 1190, column: 3, scope: !942)
!949 = !DILocation(line: 1190, column: 8, scope: !942)
!950 = !DILocation(line: 1190, column: 16, scope: !942)
!951 = !DILocation(line: 1191, column: 3, scope: !942)
!952 = !DILocation(line: 1191, column: 9, scope: !942)
!953 = !DILocation(line: 1191, column: 18, scope: !942)
!954 = !DILocation(line: 1192, column: 3, scope: !942)
!955 = !DILocation(line: 1192, column: 9, scope: !942)
!956 = !DILocation(line: 1192, column: 22, scope: !942)
!957 = !DILocation(line: 1193, column: 9, scope: !942)
!958 = !DILocation(line: 1199, column: 2, scope: !942)
!959 = !DILocation(line: 1201, column: 9, scope: !960)
!960 = distinct !DILexicalBlock(scope: !668, file: !128, line: 1201, column: 2)
!961 = !DILocation(line: 1201, column: 7, scope: !960)
!962 = !DILocation(line: 1201, column: 14, scope: !963)
!963 = !DILexicalBlockFile(scope: !964, file: !128, discriminator: 1)
!964 = distinct !DILexicalBlock(scope: !960, file: !128, line: 1201, column: 2)
!965 = !DILocation(line: 1201, column: 18, scope: !963)
!966 = !DILocation(line: 1201, column: 16, scope: !963)
!967 = !DILocation(line: 1201, column: 2, scope: !963)
!968 = !DILocation(line: 1203, column: 24, scope: !969)
!969 = distinct !DILexicalBlock(scope: !964, file: !128, line: 1201, column: 30)
!970 = !DILocation(line: 1203, column: 3, scope: !969)
!971 = !DILocation(line: 1204, column: 29, scope: !969)
!972 = !DILocation(line: 1204, column: 35, scope: !969)
!973 = !DILocation(line: 1204, column: 8, scope: !969)
!974 = !DILocation(line: 1204, column: 6, scope: !969)
!975 = !DILocation(line: 1205, column: 23, scope: !969)
!976 = !DILocation(line: 1205, column: 3, scope: !969)
!977 = !DILocation(line: 1207, column: 16, scope: !969)
!978 = !DILocation(line: 1207, column: 21, scope: !969)
!979 = !DILocation(line: 1207, column: 3, scope: !969)
!980 = !DILocation(line: 1207, column: 9, scope: !969)
!981 = !DILocation(line: 1207, column: 14, scope: !969)
!982 = !DILocation(line: 1208, column: 16, scope: !969)
!983 = !DILocation(line: 1208, column: 21, scope: !969)
!984 = !DILocation(line: 1208, column: 3, scope: !969)
!985 = !DILocation(line: 1208, column: 9, scope: !969)
!986 = !DILocation(line: 1208, column: 14, scope: !969)
!987 = !DILocation(line: 1209, column: 20, scope: !969)
!988 = !DILocation(line: 1209, column: 25, scope: !969)
!989 = !DILocation(line: 1209, column: 3, scope: !969)
!990 = !DILocation(line: 1209, column: 9, scope: !969)
!991 = !DILocation(line: 1209, column: 18, scope: !969)
!992 = !DILocation(line: 1216, column: 8, scope: !993)
!993 = distinct !DILexicalBlock(scope: !969, file: !128, line: 1216, column: 7)
!994 = !DILocation(line: 1216, column: 11, scope: !993)
!995 = !DILocation(line: 1216, column: 20, scope: !993)
!996 = !DILocation(line: 1217, column: 8, scope: !993)
!997 = !DILocation(line: 1217, column: 13, scope: !993)
!998 = !DILocation(line: 1217, column: 18, scope: !993)
!999 = !DILocation(line: 1217, column: 29, scope: !993)
!1000 = !DILocation(line: 1217, column: 33, scope: !1001)
!1001 = !DILexicalBlockFile(scope: !993, file: !128, discriminator: 1)
!1002 = !DILocation(line: 1217, column: 38, scope: !1001)
!1003 = !DILocation(line: 1217, column: 43, scope: !1001)
!1004 = !DILocation(line: 1216, column: 7, scope: !1005)
!1005 = !DILexicalBlockFile(scope: !969, file: !128, discriminator: 1)
!1006 = !DILocation(line: 1218, column: 20, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !993, file: !128, line: 1217, column: 55)
!1008 = !DILocation(line: 1218, column: 26, scope: !1007)
!1009 = !DILocation(line: 1218, column: 4, scope: !1007)
!1010 = !DILocation(line: 1218, column: 10, scope: !1007)
!1011 = !DILocation(line: 1218, column: 18, scope: !1007)
!1012 = !DILocation(line: 1219, column: 4, scope: !1007)
!1013 = distinct !{!1013, !1012}
!1014 = !DILocation(line: 1219, column: 13, scope: !1015)
!1015 = !DILexicalBlockFile(scope: !1016, file: !128, discriminator: 1)
!1016 = distinct !DILexicalBlock(scope: !1017, file: !128, line: 1219, column: 13)
!1017 = distinct !DILexicalBlock(scope: !1007, file: !128, line: 1219, column: 7)
!1018 = !DILocation(line: 1219, column: 31, scope: !1019)
!1019 = !DILexicalBlockFile(scope: !1016, file: !128, discriminator: 2)
!1020 = !DILocation(line: 1219, column: 96, scope: !1019)
!1021 = !DILocation(line: 1219, column: 106, scope: !1022)
!1022 = !DILexicalBlockFile(scope: !1019, file: !128, discriminator: 4)
!1023 = !DILocation(line: 1219, column: 23, scope: !1024)
!1024 = !DILexicalBlockFile(scope: !1019, file: !128, discriminator: 5)
!1025 = !DILocation(line: 1219, column: 23, scope: !1019)
!1026 = !DILocation(line: 1219, column: 136, scope: !1027)
!1027 = !DILexicalBlockFile(scope: !1017, file: !128, discriminator: 3)
!1028 = !DILocation(line: 1220, column: 4, scope: !1007)
!1029 = !DILocation(line: 1235, column: 8, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !969, file: !128, line: 1235, column: 7)
!1031 = !DILocation(line: 1235, column: 11, scope: !1030)
!1032 = !DILocation(line: 1235, column: 16, scope: !1030)
!1033 = !DILocation(line: 1235, column: 20, scope: !1034)
!1034 = !DILexicalBlockFile(scope: !1030, file: !128, discriminator: 1)
!1035 = !DILocation(line: 1235, column: 25, scope: !1034)
!1036 = !DILocation(line: 1235, column: 30, scope: !1034)
!1037 = !DILocation(line: 1235, column: 7, scope: !1034)
!1038 = !DILocalVariable(name: "cmd", scope: !1039, file: !128, line: 1236, type: !377)
!1039 = distinct !DILexicalBlock(scope: !1030, file: !128, line: 1235, column: 42)
!1040 = !DILocation(line: 1236, column: 21, scope: !1039)
!1041 = !DILocation(line: 1236, column: 28, scope: !1039)
!1042 = !DILocation(line: 1236, column: 34, scope: !1039)
!1043 = !DILocation(line: 1238, column: 4, scope: !1039)
!1044 = distinct !{!1044, !1043}
!1045 = !DILocation(line: 1238, column: 13, scope: !1046)
!1046 = !DILexicalBlockFile(scope: !1047, file: !128, discriminator: 1)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !128, line: 1238, column: 13)
!1048 = distinct !DILexicalBlock(scope: !1039, file: !128, line: 1238, column: 7)
!1049 = !DILocation(line: 1238, column: 31, scope: !1050)
!1050 = !DILexicalBlockFile(scope: !1047, file: !128, discriminator: 2)
!1051 = !DILocation(line: 1238, column: 149, scope: !1050)
!1052 = !DILocation(line: 1238, column: 159, scope: !1053)
!1053 = !DILexicalBlockFile(scope: !1050, file: !128, discriminator: 4)
!1054 = !DILocation(line: 1238, column: 6, scope: !1050)
!1055 = !DILocation(line: 1238, column: 10, scope: !1050)
!1056 = !DILocation(line: 1238, column: 15, scope: !1050)
!1057 = !DILocation(line: 1238, column: 21, scope: !1050)
!1058 = !DILocation(line: 1238, column: 26, scope: !1050)
!1059 = !DILocation(line: 1238, column: 32, scope: !1050)
!1060 = !DILocation(line: 1238, column: 37, scope: !1050)
!1061 = !DILocation(line: 1238, column: 47, scope: !1050)
!1062 = !DILocation(line: 1238, column: 52, scope: !1050)
!1063 = !DILocation(line: 1238, column: 57, scope: !1050)
!1064 = !DILocation(line: 1238, column: 23, scope: !1065)
!1065 = !DILexicalBlockFile(scope: !1050, file: !128, discriminator: 5)
!1066 = !DILocation(line: 1238, column: 23, scope: !1050)
!1067 = !DILocation(line: 1238, column: 81, scope: !1068)
!1068 = !DILexicalBlockFile(scope: !1048, file: !128, discriminator: 3)
!1069 = !DILocation(line: 1242, column: 4, scope: !1039)
!1070 = !DILocation(line: 1246, column: 7, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !969, file: !128, line: 1246, column: 7)
!1072 = !DILocation(line: 1246, column: 12, scope: !1071)
!1073 = !DILocation(line: 1246, column: 22, scope: !1071)
!1074 = !DILocation(line: 1246, column: 7, scope: !969)
!1075 = !DILocation(line: 1247, column: 4, scope: !1071)
!1076 = !DILocation(line: 1252, column: 8, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !969, file: !128, line: 1252, column: 7)
!1078 = !DILocation(line: 1252, column: 14, scope: !1077)
!1079 = !DILocation(line: 1252, column: 20, scope: !1077)
!1080 = !DILocation(line: 1252, column: 32, scope: !1077)
!1081 = !DILocation(line: 1253, column: 8, scope: !1077)
!1082 = !DILocation(line: 1253, column: 14, scope: !1077)
!1083 = !DILocation(line: 1252, column: 7, scope: !1005)
!1084 = !DILocation(line: 1254, column: 4, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1077, file: !128, line: 1253, column: 21)
!1086 = !DILocation(line: 1254, column: 9, scope: !1085)
!1087 = !DILocation(line: 1254, column: 17, scope: !1085)
!1088 = !DILocation(line: 1255, column: 21, scope: !1085)
!1089 = !DILocation(line: 1255, column: 4, scope: !1085)
!1090 = !DILocation(line: 1255, column: 10, scope: !1085)
!1091 = !DILocation(line: 1255, column: 19, scope: !1085)
!1092 = !DILocation(line: 1256, column: 25, scope: !1085)
!1093 = !DILocation(line: 1256, column: 4, scope: !1085)
!1094 = !DILocation(line: 1256, column: 10, scope: !1085)
!1095 = !DILocation(line: 1256, column: 23, scope: !1085)
!1096 = !DILocation(line: 1257, column: 4, scope: !1085)
!1097 = distinct !{!1097, !1096}
!1098 = !DILocation(line: 1257, column: 13, scope: !1099)
!1099 = !DILexicalBlockFile(scope: !1100, file: !128, discriminator: 1)
!1100 = distinct !DILexicalBlock(scope: !1101, file: !128, line: 1257, column: 13)
!1101 = distinct !DILexicalBlock(scope: !1085, file: !128, line: 1257, column: 7)
!1102 = !DILocation(line: 1257, column: 31, scope: !1103)
!1103 = !DILexicalBlockFile(scope: !1100, file: !128, discriminator: 2)
!1104 = !DILocation(line: 1257, column: 129, scope: !1103)
!1105 = !DILocation(line: 1257, column: 139, scope: !1106)
!1106 = !DILexicalBlockFile(scope: !1103, file: !128, discriminator: 4)
!1107 = !DILocation(line: 1257, column: 23, scope: !1108)
!1108 = !DILexicalBlockFile(scope: !1103, file: !128, discriminator: 5)
!1109 = !DILocation(line: 1257, column: 23, scope: !1103)
!1110 = !DILocation(line: 1257, column: 17, scope: !1111)
!1111 = !DILexicalBlockFile(scope: !1101, file: !128, discriminator: 3)
!1112 = !DILocation(line: 1259, column: 3, scope: !1085)
!1113 = !DILocation(line: 1260, column: 2, scope: !969)
!1114 = !DILocation(line: 1201, column: 26, scope: !1115)
!1115 = !DILexicalBlockFile(scope: !964, file: !128, discriminator: 2)
!1116 = !DILocation(line: 1201, column: 2, scope: !1115)
!1117 = distinct !{!1117, !1118}
!1118 = !DILocation(line: 1201, column: 2, scope: !668)
!1119 = !DILocation(line: 1262, column: 18, scope: !668)
!1120 = !DILocation(line: 1262, column: 24, scope: !668)
!1121 = !DILocation(line: 1262, column: 2, scope: !668)
!1122 = !DILocation(line: 1263, column: 24, scope: !668)
!1123 = !DILocation(line: 1263, column: 7, scope: !668)
!1124 = !DILocation(line: 1263, column: 5, scope: !668)
!1125 = !DILocation(line: 1264, column: 6, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !668, file: !128, line: 1264, column: 6)
!1127 = !DILocation(line: 1264, column: 9, scope: !1126)
!1128 = !DILocation(line: 1264, column: 6, scope: !668)
!1129 = !DILocation(line: 1265, column: 3, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1126, file: !128, line: 1264, column: 14)
!1131 = distinct !{!1131, !1129}
!1132 = !DILocation(line: 1265, column: 12, scope: !1133)
!1133 = !DILexicalBlockFile(scope: !1134, file: !128, discriminator: 1)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !128, line: 1265, column: 12)
!1135 = distinct !DILexicalBlock(scope: !1130, file: !128, line: 1265, column: 6)
!1136 = !DILocation(line: 1265, column: 30, scope: !1137)
!1137 = !DILexicalBlockFile(scope: !1134, file: !128, discriminator: 2)
!1138 = !DILocation(line: 1265, column: 108, scope: !1137)
!1139 = !DILocation(line: 1265, column: 118, scope: !1140)
!1140 = !DILexicalBlockFile(scope: !1137, file: !128, discriminator: 4)
!1141 = !DILocation(line: 1265, column: 147, scope: !1137)
!1142 = !DILocation(line: 1265, column: 22, scope: !1143)
!1143 = !DILexicalBlockFile(scope: !1137, file: !128, discriminator: 5)
!1144 = !DILocation(line: 1265, column: 22, scope: !1137)
!1145 = !DILocation(line: 1265, column: 152, scope: !1146)
!1146 = !DILexicalBlockFile(scope: !1135, file: !128, discriminator: 3)
!1147 = !DILocation(line: 1266, column: 3, scope: !1130)
!1148 = !DILocation(line: 1271, column: 6, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !668, file: !128, line: 1271, column: 6)
!1150 = !DILocation(line: 1271, column: 12, scope: !1149)
!1151 = !DILocation(line: 1271, column: 28, scope: !1149)
!1152 = !DILocation(line: 1271, column: 34, scope: !1149)
!1153 = !DILocation(line: 1271, column: 26, scope: !1149)
!1154 = !DILocation(line: 1271, column: 6, scope: !668)
!1155 = !DILocation(line: 1272, column: 3, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1149, file: !128, line: 1271, column: 45)
!1157 = distinct !{!1157, !1155}
!1158 = !DILocation(line: 1272, column: 12, scope: !1159)
!1159 = !DILexicalBlockFile(scope: !1160, file: !128, discriminator: 1)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !128, line: 1272, column: 12)
!1161 = distinct !DILexicalBlock(scope: !1156, file: !128, line: 1272, column: 6)
!1162 = !DILocation(line: 1272, column: 30, scope: !1163)
!1163 = !DILexicalBlockFile(scope: !1160, file: !128, discriminator: 2)
!1164 = !DILocation(line: 1272, column: 103, scope: !1163)
!1165 = !DILocation(line: 1272, column: 113, scope: !1166)
!1166 = !DILexicalBlockFile(scope: !1163, file: !128, discriminator: 4)
!1167 = !DILocation(line: 1272, column: 5, scope: !1163)
!1168 = !DILocation(line: 1272, column: 11, scope: !1163)
!1169 = !DILocation(line: 1272, column: 22, scope: !1170)
!1170 = !DILexicalBlockFile(scope: !1163, file: !128, discriminator: 5)
!1171 = !DILocation(line: 1272, column: 22, scope: !1163)
!1172 = !DILocation(line: 1272, column: 27, scope: !1173)
!1173 = !DILexicalBlockFile(scope: !1161, file: !128, discriminator: 3)
!1174 = !DILocation(line: 1274, column: 3, scope: !1156)
!1175 = !DILocation(line: 1277, column: 20, scope: !668)
!1176 = !DILocation(line: 1277, column: 26, scope: !668)
!1177 = !DILocation(line: 1277, column: 2, scope: !668)
!1178 = !DILocation(line: 1277, column: 8, scope: !668)
!1179 = !DILocation(line: 1277, column: 17, scope: !668)
!1180 = !DILocation(line: 1278, column: 21, scope: !668)
!1181 = !DILocation(line: 1278, column: 27, scope: !668)
!1182 = !DILocation(line: 1278, column: 2, scope: !668)
!1183 = !DILocation(line: 1278, column: 8, scope: !668)
!1184 = !DILocation(line: 1278, column: 18, scope: !668)
!1185 = !DILocation(line: 1279, column: 21, scope: !668)
!1186 = !DILocation(line: 1279, column: 27, scope: !668)
!1187 = !DILocation(line: 1279, column: 2, scope: !668)
!1188 = !DILocation(line: 1279, column: 8, scope: !668)
!1189 = !DILocation(line: 1279, column: 18, scope: !668)
!1190 = !DILocation(line: 1283, column: 8, scope: !668)
!1191 = !DILocation(line: 1283, column: 14, scope: !668)
!1192 = !DILocation(line: 1283, column: 6, scope: !668)
!1193 = !DILocation(line: 1287, column: 6, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !668, file: !128, line: 1287, column: 6)
!1195 = !DILocation(line: 1287, column: 12, scope: !1194)
!1196 = !DILocation(line: 1287, column: 18, scope: !1194)
!1197 = !DILocation(line: 1287, column: 10, scope: !1194)
!1198 = !DILocation(line: 1287, column: 6, scope: !668)
!1199 = !DILocation(line: 1288, column: 3, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1194, file: !128, line: 1287, column: 28)
!1201 = distinct !{!1201, !1199}
!1202 = !DILocation(line: 1288, column: 12, scope: !1203)
!1203 = !DILexicalBlockFile(scope: !1204, file: !128, discriminator: 1)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !128, line: 1288, column: 12)
!1205 = distinct !DILexicalBlock(scope: !1200, file: !128, line: 1288, column: 6)
!1206 = !DILocation(line: 1288, column: 30, scope: !1207)
!1207 = !DILexicalBlockFile(scope: !1204, file: !128, discriminator: 2)
!1208 = !DILocation(line: 1288, column: 96, scope: !1207)
!1209 = !DILocation(line: 1288, column: 106, scope: !1210)
!1210 = !DILexicalBlockFile(scope: !1207, file: !128, discriminator: 4)
!1211 = !DILocation(line: 1288, column: 135, scope: !1207)
!1212 = !DILocation(line: 1288, column: 140, scope: !1207)
!1213 = !DILocation(line: 1288, column: 146, scope: !1207)
!1214 = !DILocation(line: 1288, column: 22, scope: !1215)
!1215 = !DILexicalBlockFile(scope: !1207, file: !128, discriminator: 5)
!1216 = !DILocation(line: 1288, column: 22, scope: !1207)
!1217 = !DILocation(line: 1288, column: 157, scope: !1218)
!1218 = !DILexicalBlockFile(scope: !1205, file: !128, discriminator: 3)
!1219 = !DILocation(line: 1289, column: 3, scope: !1200)
!1220 = !DILocation(line: 1292, column: 19, scope: !668)
!1221 = !DILocation(line: 1292, column: 2, scope: !668)
!1222 = !DILocation(line: 1292, column: 8, scope: !668)
!1223 = !DILocation(line: 1292, column: 16, scope: !668)
!1224 = !DILocation(line: 1293, column: 20, scope: !668)
!1225 = !DILocation(line: 1293, column: 2, scope: !668)
!1226 = !DILocation(line: 1293, column: 8, scope: !668)
!1227 = !DILocation(line: 1293, column: 17, scope: !668)
!1228 = !DILocation(line: 1294, column: 20, scope: !668)
!1229 = !DILocation(line: 1294, column: 2, scope: !668)
!1230 = !DILocation(line: 1294, column: 8, scope: !668)
!1231 = !DILocation(line: 1294, column: 17, scope: !668)
!1232 = !DILocation(line: 1296, column: 6, scope: !668)
!1233 = !DILocation(line: 1299, column: 6, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !668, file: !128, line: 1299, column: 6)
!1235 = !DILocation(line: 1299, column: 12, scope: !1234)
!1236 = !DILocation(line: 1299, column: 22, scope: !1234)
!1237 = !DILocation(line: 1299, column: 6, scope: !668)
!1238 = !DILocation(line: 1300, column: 3, scope: !1234)
!1239 = !DILocation(line: 1300, column: 9, scope: !1234)
!1240 = !DILocation(line: 1300, column: 18, scope: !1234)
!1241 = !DILocation(line: 1302, column: 6, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !668, file: !128, line: 1302, column: 6)
!1243 = !DILocation(line: 1302, column: 12, scope: !1242)
!1244 = !DILocation(line: 1302, column: 6, scope: !668)
!1245 = !DILocation(line: 1304, column: 35, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1242, file: !128, line: 1302, column: 22)
!1247 = !DILocation(line: 1304, column: 8, scope: !1246)
!1248 = !DILocation(line: 1304, column: 6, scope: !1246)
!1249 = !DILocation(line: 1305, column: 7, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1246, file: !128, line: 1305, column: 7)
!1251 = !DILocation(line: 1305, column: 10, scope: !1250)
!1252 = !DILocation(line: 1305, column: 7, scope: !1246)
!1253 = !DILocation(line: 1306, column: 4, scope: !1250)
!1254 = !DILocation(line: 1307, column: 7, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1246, file: !128, line: 1307, column: 7)
!1256 = !DILocation(line: 1307, column: 10, scope: !1255)
!1257 = !DILocation(line: 1307, column: 7, scope: !1246)
!1258 = !DILocation(line: 1308, column: 4, scope: !1255)
!1259 = !DILocation(line: 1309, column: 7, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1246, file: !128, line: 1309, column: 7)
!1261 = !DILocation(line: 1309, column: 13, scope: !1260)
!1262 = !DILocation(line: 1309, column: 28, scope: !1260)
!1263 = !DILocation(line: 1309, column: 7, scope: !1246)
!1264 = !DILocation(line: 1310, column: 4, scope: !1260)
!1265 = !DILocation(line: 1311, column: 3, scope: !1246)
!1266 = !DILocation(line: 1316, column: 6, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !668, file: !128, line: 1316, column: 6)
!1268 = !DILocation(line: 1316, column: 12, scope: !1267)
!1269 = !DILocation(line: 1316, column: 21, scope: !1267)
!1270 = !DILocation(line: 1316, column: 24, scope: !1271)
!1271 = !DILexicalBlockFile(scope: !1267, file: !128, discriminator: 1)
!1272 = !DILocation(line: 1316, column: 30, scope: !1271)
!1273 = !DILocation(line: 1316, column: 6, scope: !1271)
!1274 = !DILocation(line: 1317, column: 3, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1267, file: !128, line: 1316, column: 41)
!1276 = distinct !{!1276, !1274}
!1277 = !DILocation(line: 1317, column: 12, scope: !1278)
!1278 = !DILexicalBlockFile(scope: !1279, file: !128, discriminator: 1)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !128, line: 1317, column: 12)
!1280 = distinct !DILexicalBlock(scope: !1275, file: !128, line: 1317, column: 6)
!1281 = !DILocation(line: 1317, column: 30, scope: !1282)
!1282 = !DILexicalBlockFile(scope: !1279, file: !128, discriminator: 2)
!1283 = !DILocation(line: 1317, column: 144, scope: !1282)
!1284 = !DILocation(line: 1317, column: 154, scope: !1285)
!1285 = !DILexicalBlockFile(scope: !1282, file: !128, discriminator: 4)
!1286 = !DILocation(line: 1317, column: 15, scope: !1282)
!1287 = !DILocation(line: 1317, column: 21, scope: !1282)
!1288 = !DILocation(line: 1317, column: 31, scope: !1282)
!1289 = !DILocation(line: 1317, column: 37, scope: !1282)
!1290 = !DILocation(line: 1317, column: 48, scope: !1282)
!1291 = !DILocation(line: 1317, column: 22, scope: !1292)
!1292 = !DILexicalBlockFile(scope: !1282, file: !128, discriminator: 5)
!1293 = !DILocation(line: 1317, column: 22, scope: !1282)
!1294 = !DILocation(line: 1317, column: 54, scope: !1295)
!1295 = !DILexicalBlockFile(scope: !1280, file: !128, discriminator: 3)
!1296 = !DILocation(line: 1320, column: 2, scope: !1275)
!1297 = !DILocation(line: 1322, column: 9, scope: !668)
!1298 = !DILocation(line: 1322, column: 2, scope: !668)
!1299 = !DILocation(line: 1326, column: 7, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !668, file: !128, line: 1326, column: 6)
!1301 = !DILocation(line: 1326, column: 13, scope: !1300)
!1302 = !DILocation(line: 1326, column: 23, scope: !1300)
!1303 = !DILocation(line: 1326, column: 31, scope: !1300)
!1304 = !DILocation(line: 1327, column: 7, scope: !1300)
!1305 = !DILocation(line: 1327, column: 13, scope: !1300)
!1306 = !DILocation(line: 1327, column: 28, scope: !1300)
!1307 = !DILocation(line: 1326, column: 6, scope: !940)
!1308 = !DILocation(line: 1328, column: 3, scope: !1300)
!1309 = !DILocation(line: 1330, column: 2, scope: !668)
!1310 = !DILocation(line: 1333, column: 2, scope: !668)
!1311 = !DILocation(line: 1334, column: 1, scope: !668)
!1312 = distinct !DISubprogram(name: "ddcb_cmd_init", scope: !80, file: !80, line: 188, type: !1313, isLocal: true, isDefinition: true, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{null, !377}
!1315 = !DILocalVariable(name: "cmd", arg: 1, scope: !1312, file: !80, line: 188, type: !377)
!1316 = !DILocation(line: 188, column: 51, scope: !1312)
!1317 = !DILocalVariable(name: "tstamp", scope: !1312, file: !80, line: 190, type: !63)
!1318 = !DILocation(line: 190, column: 8, scope: !1312)
!1319 = !DILocation(line: 192, column: 11, scope: !1312)
!1320 = !DILocation(line: 192, column: 16, scope: !1312)
!1321 = !DILocation(line: 192, column: 9, scope: !1312)
!1322 = !DILocation(line: 193, column: 9, scope: !1312)
!1323 = !DILocation(line: 193, column: 2, scope: !1312)
!1324 = !DILocation(line: 194, column: 17, scope: !1312)
!1325 = !DILocation(line: 194, column: 2, scope: !1312)
!1326 = !DILocation(line: 194, column: 7, scope: !1312)
!1327 = !DILocation(line: 194, column: 15, scope: !1312)
!1328 = !DILocation(line: 195, column: 1, scope: !1312)
!1329 = distinct !DISubprogram(name: "gettid", scope: !73, file: !73, line: 36, type: !1330, isLocal: true, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!113}
!1332 = !DILocation(line: 38, column: 16, scope: !1329)
!1333 = !DILocation(line: 38, column: 9, scope: !1329)
!1334 = !DILocation(line: 38, column: 2, scope: !1329)
!1335 = distinct !DISubprogram(name: "inflate_flush_output_buffer", scope: !128, file: !128, line: 808, type: !129, isLocal: true, isDefinition: true, scopeLine: 809, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!1336 = !DILocalVariable(name: "strm", arg: 1, scope: !1335, file: !128, line: 808, type: !131)
!1337 = !DILocation(line: 808, column: 62, scope: !1335)
!1338 = !DILocalVariable(name: "pdict", scope: !1335, file: !128, line: 810, type: !121)
!1339 = !DILocation(line: 810, column: 11, scope: !1335)
!1340 = !DILocalVariable(name: "zedc", scope: !1335, file: !128, line: 811, type: !70)
!1341 = !DILocation(line: 811, column: 16, scope: !1335)
!1342 = !DILocation(line: 811, column: 38, scope: !1335)
!1343 = !DILocation(line: 811, column: 44, scope: !1335)
!1344 = !DILocation(line: 811, column: 23, scope: !1335)
!1345 = !DILocation(line: 813, column: 6, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1335, file: !128, line: 813, column: 6)
!1347 = !DILocation(line: 813, column: 12, scope: !1346)
!1348 = !DILocation(line: 813, column: 27, scope: !1346)
!1349 = !DILocation(line: 813, column: 6, scope: !1335)
!1350 = !DILocation(line: 814, column: 3, scope: !1346)
!1351 = !DILocation(line: 822, column: 6, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1335, file: !128, line: 822, column: 6)
!1353 = !DILocation(line: 822, column: 12, scope: !1352)
!1354 = !DILocation(line: 822, column: 23, scope: !1352)
!1355 = !DILocation(line: 822, column: 29, scope: !1352)
!1356 = !DILocation(line: 822, column: 21, scope: !1352)
!1357 = !DILocation(line: 822, column: 6, scope: !1335)
!1358 = !DILocation(line: 823, column: 3, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1352, file: !128, line: 822, column: 45)
!1360 = distinct !{!1360, !1358}
!1361 = !DILocation(line: 823, column: 12, scope: !1362)
!1362 = !DILexicalBlockFile(scope: !1363, file: !128, discriminator: 1)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !128, line: 823, column: 12)
!1364 = distinct !DILexicalBlock(scope: !1359, file: !128, line: 823, column: 6)
!1365 = !DILocation(line: 823, column: 30, scope: !1366)
!1366 = !DILexicalBlockFile(scope: !1363, file: !128, discriminator: 2)
!1367 = !DILocation(line: 823, column: 119, scope: !1366)
!1368 = !DILocation(line: 823, column: 129, scope: !1369)
!1369 = !DILexicalBlockFile(scope: !1366, file: !128, discriminator: 4)
!1370 = !DILocation(line: 823, column: 22, scope: !1371)
!1371 = !DILexicalBlockFile(scope: !1366, file: !128, discriminator: 5)
!1372 = !DILocation(line: 823, column: 22, scope: !1366)
!1373 = !DILocation(line: 823, column: 158, scope: !1374)
!1374 = !DILexicalBlockFile(scope: !1364, file: !128, discriminator: 3)
!1375 = !DILocation(line: 824, column: 3, scope: !1359)
!1376 = !DILocation(line: 824, column: 9, scope: !1359)
!1377 = !DILocation(line: 824, column: 17, scope: !1359)
!1378 = !DILocation(line: 825, column: 10, scope: !1359)
!1379 = !DILocation(line: 825, column: 16, scope: !1359)
!1380 = !DILocation(line: 825, column: 3, scope: !1359)
!1381 = !DILocation(line: 828, column: 26, scope: !1335)
!1382 = !DILocation(line: 828, column: 32, scope: !1335)
!1383 = !DILocation(line: 828, column: 10, scope: !1335)
!1384 = !DILocation(line: 828, column: 16, scope: !1335)
!1385 = !DILocation(line: 828, column: 21, scope: !1335)
!1386 = !DILocation(line: 829, column: 3, scope: !1335)
!1387 = !DILocation(line: 829, column: 9, scope: !1335)
!1388 = !DILocation(line: 828, column: 42, scope: !1335)
!1389 = !DILocation(line: 829, column: 25, scope: !1335)
!1390 = !DILocation(line: 829, column: 31, scope: !1335)
!1391 = !DILocation(line: 829, column: 23, scope: !1335)
!1392 = !DILocation(line: 829, column: 42, scope: !1335)
!1393 = !DILocation(line: 829, column: 48, scope: !1335)
!1394 = !DILocation(line: 829, column: 40, scope: !1335)
!1395 = !DILocation(line: 828, column: 8, scope: !1335)
!1396 = !DILocation(line: 831, column: 2, scope: !1335)
!1397 = !DILocation(line: 831, column: 9, scope: !1398)
!1398 = !DILexicalBlockFile(scope: !1335, file: !128, discriminator: 1)
!1399 = !DILocation(line: 831, column: 15, scope: !1398)
!1400 = !DILocation(line: 831, column: 25, scope: !1398)
!1401 = !DILocation(line: 831, column: 28, scope: !1402)
!1402 = !DILexicalBlockFile(scope: !1335, file: !128, discriminator: 2)
!1403 = !DILocation(line: 831, column: 34, scope: !1402)
!1404 = !DILocation(line: 831, column: 25, scope: !1402)
!1405 = !DILocation(line: 831, column: 2, scope: !1406)
!1406 = !DILexicalBlockFile(scope: !1335, file: !128, discriminator: 3)
!1407 = !DILocation(line: 832, column: 29, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1335, file: !128, line: 831, column: 50)
!1409 = !DILocation(line: 832, column: 23, scope: !1408)
!1410 = !DILocation(line: 832, column: 4, scope: !1408)
!1411 = !DILocation(line: 832, column: 10, scope: !1408)
!1412 = !DILocation(line: 832, column: 18, scope: !1408)
!1413 = !DILocation(line: 832, column: 21, scope: !1408)
!1414 = !DILocation(line: 833, column: 3, scope: !1408)
!1415 = !DILocation(line: 833, column: 9, scope: !1408)
!1416 = !DILocation(line: 833, column: 18, scope: !1408)
!1417 = !DILocation(line: 834, column: 3, scope: !1408)
!1418 = !DILocation(line: 834, column: 9, scope: !1408)
!1419 = !DILocation(line: 834, column: 18, scope: !1408)
!1420 = !DILocation(line: 835, column: 3, scope: !1408)
!1421 = !DILocation(line: 835, column: 9, scope: !1408)
!1422 = !DILocation(line: 835, column: 23, scope: !1408)
!1423 = !DILocation(line: 831, column: 2, scope: !1424)
!1424 = !DILexicalBlockFile(scope: !1335, file: !128, discriminator: 4)
!1425 = distinct !{!1425, !1396}
!1426 = !DILocation(line: 837, column: 2, scope: !1335)
!1427 = !DILocation(line: 838, column: 1, scope: !1335)
!1428 = distinct !DISubprogram(name: "inflate_format_rem_trailer", scope: !128, file: !128, line: 680, type: !129, isLocal: true, isDefinition: true, scopeLine: 681, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!1429 = !DILocalVariable(name: "strm", arg: 1, scope: !1428, file: !128, line: 680, type: !131)
!1430 = !DILocation(line: 680, column: 61, scope: !1428)
!1431 = !DILocalVariable(name: "val32", scope: !1428, file: !128, line: 682, type: !1432)
!1432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 64, align: 32, elements: !1433)
!1433 = !{!224}
!1434 = !DILocation(line: 682, column: 11, scope: !1428)
!1435 = !DILocalVariable(name: "zedc", scope: !1428, file: !128, line: 683, type: !70)
!1436 = !DILocation(line: 683, column: 16, scope: !1428)
!1437 = !DILocation(line: 683, column: 38, scope: !1428)
!1438 = !DILocation(line: 683, column: 44, scope: !1428)
!1439 = !DILocation(line: 683, column: 23, scope: !1428)
!1440 = !DILocation(line: 685, column: 6, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1428, file: !128, line: 685, column: 6)
!1442 = !DILocation(line: 685, column: 12, scope: !1441)
!1443 = !DILocation(line: 685, column: 19, scope: !1441)
!1444 = !DILocation(line: 685, column: 6, scope: !1428)
!1445 = !DILocation(line: 686, column: 3, scope: !1441)
!1446 = !DILocation(line: 688, column: 6, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1428, file: !128, line: 688, column: 6)
!1448 = !DILocation(line: 688, column: 12, scope: !1447)
!1449 = !DILocation(line: 688, column: 23, scope: !1447)
!1450 = !DILocation(line: 688, column: 6, scope: !1428)
!1451 = !DILocation(line: 689, column: 3, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1447, file: !128, line: 688, column: 29)
!1453 = !DILocation(line: 689, column: 9, scope: !1452)
!1454 = !DILocation(line: 689, column: 20, scope: !1452)
!1455 = !DILocation(line: 690, column: 7, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1452, file: !128, line: 690, column: 7)
!1457 = !DILocation(line: 690, column: 13, scope: !1456)
!1458 = !DILocation(line: 690, column: 20, scope: !1456)
!1459 = !DILocation(line: 690, column: 7, scope: !1452)
!1460 = !DILocation(line: 691, column: 4, scope: !1456)
!1461 = !DILocation(line: 691, column: 10, scope: !1456)
!1462 = !DILocation(line: 691, column: 21, scope: !1456)
!1463 = !DILocation(line: 693, column: 4, scope: !1456)
!1464 = !DILocation(line: 693, column: 10, scope: !1456)
!1465 = !DILocation(line: 693, column: 21, scope: !1456)
!1466 = !DILocation(line: 694, column: 2, scope: !1452)
!1467 = !DILocation(line: 697, column: 2, scope: !1428)
!1468 = !DILocation(line: 697, column: 10, scope: !1469)
!1469 = !DILexicalBlockFile(scope: !1428, file: !128, discriminator: 1)
!1470 = !DILocation(line: 697, column: 16, scope: !1469)
!1471 = !DILocation(line: 697, column: 29, scope: !1469)
!1472 = !DILocation(line: 697, column: 35, scope: !1469)
!1473 = !DILocation(line: 697, column: 27, scope: !1469)
!1474 = !DILocation(line: 697, column: 47, scope: !1469)
!1475 = !DILocation(line: 697, column: 50, scope: !1476)
!1476 = !DILexicalBlockFile(scope: !1428, file: !128, discriminator: 2)
!1477 = !DILocation(line: 697, column: 56, scope: !1476)
!1478 = !DILocation(line: 697, column: 47, scope: !1476)
!1479 = !DILocation(line: 697, column: 2, scope: !1480)
!1480 = !DILexicalBlockFile(scope: !1428, file: !128, discriminator: 3)
!1481 = !DILocation(line: 702, column: 39, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1428, file: !128, line: 697, column: 66)
!1483 = !DILocation(line: 702, column: 45, scope: !1482)
!1484 = !DILocation(line: 702, column: 52, scope: !1482)
!1485 = !DILocation(line: 702, column: 38, scope: !1482)
!1486 = !DILocation(line: 702, column: 16, scope: !1482)
!1487 = !DILocation(line: 702, column: 22, scope: !1482)
!1488 = !DILocation(line: 702, column: 32, scope: !1482)
!1489 = !DILocation(line: 702, column: 3, scope: !1482)
!1490 = !DILocation(line: 702, column: 9, scope: !1482)
!1491 = !DILocation(line: 702, column: 36, scope: !1482)
!1492 = !DILocation(line: 703, column: 3, scope: !1482)
!1493 = !DILocation(line: 703, column: 9, scope: !1482)
!1494 = !DILocation(line: 703, column: 17, scope: !1482)
!1495 = !DILocation(line: 704, column: 3, scope: !1482)
!1496 = !DILocation(line: 704, column: 9, scope: !1482)
!1497 = !DILocation(line: 704, column: 17, scope: !1482)
!1498 = !DILocation(line: 710, column: 8, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1482, file: !128, line: 710, column: 7)
!1500 = !DILocation(line: 710, column: 14, scope: !1499)
!1501 = !DILocation(line: 710, column: 25, scope: !1499)
!1502 = !DILocation(line: 710, column: 31, scope: !1499)
!1503 = !DILocation(line: 711, column: 8, scope: !1499)
!1504 = !DILocation(line: 711, column: 14, scope: !1499)
!1505 = !DILocation(line: 711, column: 21, scope: !1499)
!1506 = !DILocation(line: 710, column: 7, scope: !1507)
!1507 = !DILexicalBlockFile(scope: !1482, file: !128, discriminator: 1)
!1508 = !DILocation(line: 713, column: 12, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1499, file: !128, line: 711, column: 28)
!1510 = !DILocation(line: 713, column: 4, scope: !1509)
!1511 = !DILocation(line: 713, column: 23, scope: !1509)
!1512 = !DILocation(line: 713, column: 29, scope: !1509)
!1513 = !DILocation(line: 714, column: 22, scope: !1509)
!1514 = !DILocation(line: 714, column: 4, scope: !1509)
!1515 = !DILocation(line: 714, column: 10, scope: !1509)
!1516 = !DILocation(line: 714, column: 21, scope: !1509)
!1517 = !DILocation(line: 715, column: 8, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1509, file: !128, line: 715, column: 8)
!1519 = !DILocation(line: 715, column: 14, scope: !1518)
!1520 = !DILocation(line: 715, column: 28, scope: !1518)
!1521 = !DILocation(line: 715, column: 34, scope: !1518)
!1522 = !DILocation(line: 715, column: 25, scope: !1518)
!1523 = !DILocation(line: 715, column: 8, scope: !1509)
!1524 = !DILocation(line: 716, column: 5, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1518, file: !128, line: 715, column: 41)
!1526 = !DILocation(line: 716, column: 11, scope: !1525)
!1527 = !DILocation(line: 716, column: 19, scope: !1525)
!1528 = !DILocation(line: 717, column: 12, scope: !1525)
!1529 = !DILocation(line: 717, column: 18, scope: !1525)
!1530 = !DILocation(line: 717, column: 5, scope: !1525)
!1531 = !DILocation(line: 719, column: 3, scope: !1509)
!1532 = !DILocation(line: 721, column: 7, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1482, file: !128, line: 721, column: 7)
!1534 = !DILocation(line: 721, column: 13, scope: !1533)
!1535 = !DILocation(line: 721, column: 27, scope: !1533)
!1536 = !DILocation(line: 721, column: 33, scope: !1533)
!1537 = !DILocation(line: 721, column: 24, scope: !1533)
!1538 = !DILocation(line: 721, column: 7, scope: !1482)
!1539 = !DILocation(line: 722, column: 8, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !128, line: 722, column: 8)
!1541 = distinct !DILexicalBlock(scope: !1533, file: !128, line: 721, column: 45)
!1542 = !DILocation(line: 722, column: 14, scope: !1540)
!1543 = !DILocation(line: 722, column: 21, scope: !1540)
!1544 = !DILocation(line: 722, column: 8, scope: !1541)
!1545 = !DILocation(line: 724, column: 13, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1540, file: !128, line: 722, column: 27)
!1547 = !DILocation(line: 724, column: 5, scope: !1546)
!1548 = !DILocation(line: 724, column: 24, scope: !1546)
!1549 = !DILocation(line: 724, column: 30, scope: !1546)
!1550 = !DILocation(line: 728, column: 23, scope: !1546)
!1551 = !DILocation(line: 728, column: 5, scope: !1546)
!1552 = !DILocation(line: 728, column: 11, scope: !1546)
!1553 = !DILocation(line: 728, column: 22, scope: !1546)
!1554 = !DILocation(line: 729, column: 23, scope: !1546)
!1555 = !DILocation(line: 729, column: 5, scope: !1546)
!1556 = !DILocation(line: 729, column: 11, scope: !1546)
!1557 = !DILocation(line: 729, column: 21, scope: !1546)
!1558 = !DILocation(line: 731, column: 9, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1546, file: !128, line: 731, column: 9)
!1560 = !DILocation(line: 731, column: 15, scope: !1559)
!1561 = !DILocation(line: 731, column: 29, scope: !1559)
!1562 = !DILocation(line: 731, column: 35, scope: !1559)
!1563 = !DILocation(line: 731, column: 26, scope: !1559)
!1564 = !DILocation(line: 731, column: 9, scope: !1546)
!1565 = !DILocation(line: 732, column: 6, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1559, file: !128, line: 731, column: 42)
!1567 = !DILocation(line: 732, column: 12, scope: !1566)
!1568 = !DILocation(line: 732, column: 20, scope: !1566)
!1569 = !DILocation(line: 733, column: 13, scope: !1566)
!1570 = !DILocation(line: 733, column: 19, scope: !1566)
!1571 = !DILocation(line: 733, column: 6, scope: !1566)
!1572 = !DILocation(line: 735, column: 4, scope: !1546)
!1573 = !DILocation(line: 737, column: 13, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1540, file: !128, line: 735, column: 11)
!1575 = !DILocation(line: 737, column: 5, scope: !1574)
!1576 = !DILocation(line: 737, column: 24, scope: !1574)
!1577 = !DILocation(line: 737, column: 30, scope: !1574)
!1578 = !DILocation(line: 740, column: 25, scope: !1574)
!1579 = !DILocation(line: 740, column: 62, scope: !1574)
!1580 = !DILocation(line: 740, column: 5, scope: !1574)
!1581 = !DILocation(line: 740, column: 11, scope: !1574)
!1582 = !DILocation(line: 740, column: 24, scope: !1574)
!1583 = !DILocation(line: 743, column: 9, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1574, file: !128, line: 743, column: 9)
!1585 = !DILocation(line: 743, column: 15, scope: !1584)
!1586 = !DILocation(line: 743, column: 31, scope: !1584)
!1587 = !DILocation(line: 743, column: 37, scope: !1584)
!1588 = !DILocation(line: 743, column: 28, scope: !1584)
!1589 = !DILocation(line: 743, column: 9, scope: !1574)
!1590 = !DILocation(line: 744, column: 6, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1584, file: !128, line: 743, column: 46)
!1592 = distinct !{!1592, !1590}
!1593 = !DILocation(line: 744, column: 15, scope: !1594)
!1594 = !DILexicalBlockFile(scope: !1595, file: !128, discriminator: 1)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !128, line: 744, column: 15)
!1596 = distinct !DILexicalBlock(scope: !1591, file: !128, line: 744, column: 9)
!1597 = !DILocation(line: 744, column: 33, scope: !1598)
!1598 = !DILexicalBlockFile(scope: !1595, file: !128, discriminator: 2)
!1599 = !DILocation(line: 744, column: 110, scope: !1598)
!1600 = !DILocation(line: 744, column: 120, scope: !1601)
!1601 = !DILexicalBlockFile(scope: !1598, file: !128, discriminator: 4)
!1602 = !DILocation(line: 744, column: 19, scope: !1598)
!1603 = !DILocation(line: 744, column: 25, scope: !1598)
!1604 = !DILocation(line: 744, column: 8, scope: !1598)
!1605 = !DILocation(line: 744, column: 50, scope: !1598)
!1606 = !DILocation(line: 744, column: 56, scope: !1598)
!1607 = !DILocation(line: 744, column: 39, scope: !1598)
!1608 = !DILocation(line: 744, column: 25, scope: !1609)
!1609 = !DILexicalBlockFile(scope: !1598, file: !128, discriminator: 5)
!1610 = !DILocation(line: 744, column: 66, scope: !1611)
!1611 = !DILexicalBlockFile(scope: !1596, file: !128, discriminator: 3)
!1612 = !DILocation(line: 749, column: 6, scope: !1591)
!1613 = !DILocation(line: 749, column: 12, scope: !1591)
!1614 = !DILocation(line: 749, column: 20, scope: !1591)
!1615 = !DILocation(line: 750, column: 13, scope: !1591)
!1616 = !DILocation(line: 750, column: 19, scope: !1591)
!1617 = !DILocation(line: 750, column: 6, scope: !1591)
!1618 = !DILocation(line: 753, column: 3, scope: !1541)
!1619 = !DILocation(line: 697, column: 2, scope: !1620)
!1620 = !DILexicalBlockFile(scope: !1428, file: !128, discriminator: 4)
!1621 = distinct !{!1621, !1467}
!1622 = !DILocation(line: 755, column: 6, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1428, file: !128, line: 755, column: 6)
!1624 = !DILocation(line: 755, column: 12, scope: !1623)
!1625 = !DILocation(line: 755, column: 26, scope: !1623)
!1626 = !DILocation(line: 755, column: 32, scope: !1623)
!1627 = !DILocation(line: 755, column: 23, scope: !1623)
!1628 = !DILocation(line: 755, column: 6, scope: !1428)
!1629 = !DILocation(line: 756, column: 3, scope: !1623)
!1630 = !DILocation(line: 758, column: 2, scope: !1428)
!1631 = !DILocation(line: 759, column: 1, scope: !1428)
!1632 = distinct !DISubprogram(name: "inflate_format_rem_header", scope: !128, file: !128, line: 609, type: !1633, isLocal: true, isDefinition: true, scopeLine: 610, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!76, !131, !76}
!1635 = !DILocalVariable(name: "strm", arg: 1, scope: !1632, file: !128, line: 609, type: !131)
!1636 = !DILocation(line: 609, column: 60, scope: !1632)
!1637 = !DILocalVariable(name: "flush", arg: 2, scope: !1632, file: !128, line: 609, type: !76)
!1638 = !DILocation(line: 609, column: 70, scope: !1632)
!1639 = !DILocalVariable(name: "rc", scope: !1632, file: !128, line: 611, type: !76)
!1640 = !DILocation(line: 611, column: 6, scope: !1632)
!1641 = !DILocalVariable(name: "rc1", scope: !1632, file: !128, line: 611, type: !76)
!1642 = !DILocation(line: 611, column: 10, scope: !1632)
!1643 = !DILocalVariable(name: "block_req", scope: !1632, file: !128, line: 612, type: !76)
!1644 = !DILocation(line: 612, column: 6, scope: !1632)
!1645 = !DILocalVariable(name: "zedc", scope: !1632, file: !128, line: 613, type: !70)
!1646 = !DILocation(line: 613, column: 16, scope: !1632)
!1647 = !DILocation(line: 615, column: 6, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1632, file: !128, line: 615, column: 6)
!1649 = !DILocation(line: 615, column: 12, scope: !1648)
!1650 = !DILocation(line: 615, column: 19, scope: !1648)
!1651 = !DILocation(line: 615, column: 6, scope: !1632)
!1652 = !DILocation(line: 616, column: 3, scope: !1648)
!1653 = !DILocation(line: 618, column: 2, scope: !1632)
!1654 = !DILocation(line: 618, column: 8, scope: !1632)
!1655 = !DILocation(line: 618, column: 18, scope: !1632)
!1656 = !DILocation(line: 619, column: 6, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1632, file: !128, line: 619, column: 6)
!1658 = !DILocation(line: 619, column: 12, scope: !1657)
!1659 = !DILocation(line: 619, column: 22, scope: !1657)
!1660 = !DILocation(line: 619, column: 6, scope: !1632)
!1661 = !DILocation(line: 620, column: 3, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1657, file: !128, line: 619, column: 28)
!1663 = !DILocation(line: 620, column: 9, scope: !1662)
!1664 = !DILocation(line: 620, column: 19, scope: !1662)
!1665 = !DILocation(line: 621, column: 7, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1662, file: !128, line: 621, column: 7)
!1667 = !DILocation(line: 621, column: 13, scope: !1666)
!1668 = !DILocation(line: 621, column: 20, scope: !1666)
!1669 = !DILocation(line: 621, column: 7, scope: !1662)
!1670 = !DILocation(line: 622, column: 4, scope: !1666)
!1671 = !DILocation(line: 622, column: 10, scope: !1666)
!1672 = !DILocation(line: 622, column: 20, scope: !1666)
!1673 = !DILocation(line: 624, column: 4, scope: !1666)
!1674 = !DILocation(line: 624, column: 10, scope: !1666)
!1675 = !DILocation(line: 624, column: 20, scope: !1666)
!1676 = !DILocation(line: 625, column: 12, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1662, file: !128, line: 625, column: 7)
!1678 = !DILocation(line: 625, column: 9, scope: !1677)
!1679 = !DILocation(line: 625, column: 7, scope: !1662)
!1680 = !DILocation(line: 626, column: 14, scope: !1677)
!1681 = !DILocation(line: 626, column: 4, scope: !1677)
!1682 = !DILocation(line: 627, column: 2, scope: !1662)
!1683 = !DILocation(line: 635, column: 5, scope: !1632)
!1684 = !DILocation(line: 636, column: 6, scope: !1632)
!1685 = !DILocation(line: 637, column: 2, scope: !1632)
!1686 = !DILocation(line: 637, column: 9, scope: !1687)
!1687 = !DILexicalBlockFile(scope: !1632, file: !128, discriminator: 1)
!1688 = !DILocation(line: 637, column: 15, scope: !1687)
!1689 = !DILocation(line: 637, column: 2, scope: !1687)
!1690 = !DILocation(line: 638, column: 7, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1692, file: !128, line: 638, column: 7)
!1692 = distinct !DILexicalBlock(scope: !1632, file: !128, line: 637, column: 25)
!1693 = !DILocation(line: 638, column: 13, scope: !1691)
!1694 = !DILocation(line: 638, column: 23, scope: !1691)
!1695 = !DILocation(line: 638, column: 7, scope: !1692)
!1696 = !DILocation(line: 639, column: 36, scope: !1691)
!1697 = !DILocation(line: 639, column: 42, scope: !1691)
!1698 = !DILocation(line: 639, column: 35, scope: !1691)
!1699 = !DILocation(line: 639, column: 16, scope: !1691)
!1700 = !DILocation(line: 639, column: 22, scope: !1691)
!1701 = !DILocation(line: 639, column: 4, scope: !1691)
!1702 = !DILocation(line: 639, column: 10, scope: !1691)
!1703 = !DILocation(line: 639, column: 33, scope: !1691)
!1704 = !DILocation(line: 641, column: 7, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1692, file: !128, line: 641, column: 7)
!1706 = !DILocation(line: 641, column: 13, scope: !1705)
!1707 = !DILocation(line: 641, column: 20, scope: !1705)
!1708 = !DILocation(line: 641, column: 7, scope: !1692)
!1709 = !DILocation(line: 642, column: 34, scope: !1705)
!1710 = !DILocation(line: 642, column: 10, scope: !1705)
!1711 = !DILocation(line: 642, column: 8, scope: !1705)
!1712 = !DILocation(line: 642, column: 4, scope: !1705)
!1713 = !DILocation(line: 644, column: 33, scope: !1705)
!1714 = !DILocation(line: 644, column: 9, scope: !1705)
!1715 = !DILocation(line: 644, column: 7, scope: !1705)
!1716 = !DILocation(line: 646, column: 3, scope: !1692)
!1717 = !DILocation(line: 646, column: 9, scope: !1692)
!1718 = !DILocation(line: 646, column: 16, scope: !1692)
!1719 = !DILocation(line: 647, column: 3, scope: !1692)
!1720 = !DILocation(line: 647, column: 9, scope: !1692)
!1721 = !DILocation(line: 647, column: 17, scope: !1692)
!1722 = !DILocation(line: 648, column: 3, scope: !1692)
!1723 = !DILocation(line: 648, column: 9, scope: !1692)
!1724 = !DILocation(line: 648, column: 17, scope: !1692)
!1725 = !DILocation(line: 649, column: 3, scope: !1692)
!1726 = !DILocation(line: 649, column: 9, scope: !1692)
!1727 = !DILocation(line: 649, column: 18, scope: !1692)
!1728 = !DILocation(line: 651, column: 12, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1692, file: !128, line: 651, column: 7)
!1730 = !DILocation(line: 651, column: 9, scope: !1729)
!1731 = !DILocation(line: 651, column: 7, scope: !1692)
!1732 = !DILocation(line: 652, column: 7, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1729, file: !128, line: 651, column: 17)
!1734 = !DILocation(line: 653, column: 4, scope: !1733)
!1735 = !DILocation(line: 654, column: 19, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1729, file: !128, line: 654, column: 14)
!1737 = !DILocation(line: 654, column: 16, scope: !1736)
!1738 = !DILocation(line: 654, column: 14, scope: !1729)
!1739 = !DILocation(line: 655, column: 26, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1736, file: !128, line: 654, column: 24)
!1741 = !DILocation(line: 655, column: 32, scope: !1740)
!1742 = !DILocation(line: 655, column: 11, scope: !1740)
!1743 = !DILocation(line: 655, column: 9, scope: !1740)
!1744 = !DILocation(line: 656, column: 4, scope: !1740)
!1745 = !DILocation(line: 656, column: 10, scope: !1740)
!1746 = !DILocation(line: 656, column: 18, scope: !1740)
!1747 = !DILocation(line: 657, column: 7, scope: !1740)
!1748 = !DILocation(line: 658, column: 4, scope: !1740)
!1749 = !DILocation(line: 659, column: 19, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1736, file: !128, line: 659, column: 14)
!1751 = !DILocation(line: 659, column: 16, scope: !1750)
!1752 = !DILocation(line: 659, column: 14, scope: !1736)
!1753 = !DILocation(line: 660, column: 7, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1750, file: !128, line: 659, column: 24)
!1755 = !DILocation(line: 661, column: 4, scope: !1754)
!1756 = !DILocation(line: 637, column: 2, scope: !1757)
!1757 = !DILexicalBlockFile(scope: !1632, file: !128, discriminator: 2)
!1758 = distinct !{!1758, !1685}
!1759 = !DILocation(line: 667, column: 12, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1632, file: !128, line: 667, column: 6)
!1761 = !DILocation(line: 667, column: 9, scope: !1760)
!1762 = !DILocation(line: 667, column: 23, scope: !1760)
!1763 = !DILocation(line: 667, column: 32, scope: !1764)
!1764 = !DILexicalBlockFile(scope: !1760, file: !128, discriminator: 1)
!1765 = !DILocation(line: 667, column: 29, scope: !1764)
!1766 = !DILocation(line: 667, column: 6, scope: !1764)
!1767 = !DILocation(line: 668, column: 3, scope: !1760)
!1768 = !DILocation(line: 668, column: 9, scope: !1760)
!1769 = !DILocation(line: 668, column: 19, scope: !1760)
!1770 = !DILocation(line: 670, column: 9, scope: !1632)
!1771 = !DILocation(line: 670, column: 2, scope: !1632)
!1772 = !DILocation(line: 671, column: 1, scope: !1632)
!1773 = distinct !DISubprogram(name: "set_inflate_asiv", scope: !128, file: !128, line: 888, type: !1774, isLocal: true, isDefinition: true, scopeLine: 890, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{null, !131, !30}
!1776 = !DILocalVariable(name: "strm", arg: 1, scope: !1773, file: !128, line: 888, type: !131)
!1777 = !DILocation(line: 888, column: 52, scope: !1773)
!1778 = !DILocalVariable(name: "asiv", arg: 2, scope: !1773, file: !128, line: 889, type: !30)
!1779 = !DILocation(line: 889, column: 32, scope: !1773)
!1780 = !DILocalVariable(name: "p", scope: !1773, file: !128, line: 891, type: !76)
!1781 = !DILocation(line: 891, column: 6, scope: !1773)
!1782 = !DILocalVariable(name: "len", scope: !1773, file: !128, line: 892, type: !35)
!1783 = !DILocation(line: 892, column: 11, scope: !1773)
!1784 = !DILocation(line: 897, column: 37, scope: !1773)
!1785 = !DILocation(line: 897, column: 43, scope: !1773)
!1786 = !DILocation(line: 897, column: 22, scope: !1773)
!1787 = !DILocation(line: 897, column: 68, scope: !1773)
!1788 = !DILocation(line: 897, column: 2, scope: !1773)
!1789 = !DILocation(line: 897, column: 8, scope: !1773)
!1790 = !DILocation(line: 897, column: 16, scope: !1773)
!1791 = !DILocation(line: 898, column: 22, scope: !1773)
!1792 = !DILocation(line: 898, column: 28, scope: !1773)
!1793 = !DILocation(line: 898, column: 59, scope: !1773)
!1794 = !DILocation(line: 898, column: 2, scope: !1773)
!1795 = !DILocation(line: 898, column: 8, scope: !1773)
!1796 = !DILocation(line: 898, column: 20, scope: !1773)
!1797 = !DILocation(line: 899, column: 37, scope: !1773)
!1798 = !DILocation(line: 899, column: 43, scope: !1773)
!1799 = !DILocation(line: 899, column: 22, scope: !1773)
!1800 = !DILocation(line: 899, column: 68, scope: !1773)
!1801 = !DILocation(line: 899, column: 2, scope: !1773)
!1802 = !DILocation(line: 899, column: 8, scope: !1773)
!1803 = !DILocation(line: 899, column: 17, scope: !1773)
!1804 = !DILocation(line: 900, column: 22, scope: !1773)
!1805 = !DILocation(line: 900, column: 28, scope: !1773)
!1806 = !DILocation(line: 900, column: 59, scope: !1773)
!1807 = !DILocation(line: 900, column: 2, scope: !1773)
!1808 = !DILocation(line: 900, column: 8, scope: !1773)
!1809 = !DILocation(line: 900, column: 21, scope: !1773)
!1810 = !DILocation(line: 903, column: 37, scope: !1773)
!1811 = !DILocation(line: 903, column: 43, scope: !1773)
!1812 = !DILocation(line: 903, column: 48, scope: !1773)
!1813 = !DILocation(line: 903, column: 22, scope: !1773)
!1814 = !DILocation(line: 903, column: 68, scope: !1773)
!1815 = !DILocation(line: 903, column: 2, scope: !1773)
!1816 = !DILocation(line: 903, column: 8, scope: !1773)
!1817 = !DILocation(line: 903, column: 20, scope: !1773)
!1818 = !DILocation(line: 905, column: 8, scope: !1773)
!1819 = !DILocation(line: 905, column: 14, scope: !1773)
!1820 = !DILocation(line: 905, column: 23, scope: !1773)
!1821 = !DILocation(line: 905, column: 29, scope: !1773)
!1822 = !DILocation(line: 905, column: 21, scope: !1773)
!1823 = !DILocation(line: 906, column: 3, scope: !1773)
!1824 = !DILocation(line: 906, column: 9, scope: !1773)
!1825 = !DILocation(line: 905, column: 39, scope: !1773)
!1826 = !DILocation(line: 907, column: 3, scope: !1773)
!1827 = !DILocation(line: 907, column: 9, scope: !1773)
!1828 = !DILocation(line: 906, column: 18, scope: !1773)
!1829 = !DILocation(line: 908, column: 3, scope: !1773)
!1830 = !DILocation(line: 908, column: 9, scope: !1773)
!1831 = !DILocation(line: 907, column: 20, scope: !1773)
!1832 = !DILocation(line: 905, column: 6, scope: !1773)
!1833 = !DILocation(line: 910, column: 6, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1773, file: !128, line: 910, column: 6)
!1835 = !DILocation(line: 910, column: 10, scope: !1834)
!1836 = !DILocation(line: 910, column: 6, scope: !1773)
!1837 = !DILocation(line: 911, column: 3, scope: !1834)
!1838 = distinct !{!1838, !1837}
!1839 = !DILocation(line: 911, column: 12, scope: !1840)
!1840 = !DILexicalBlockFile(scope: !1841, file: !128, discriminator: 1)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !128, line: 911, column: 12)
!1842 = distinct !DILexicalBlock(scope: !1834, file: !128, line: 911, column: 6)
!1843 = !DILocation(line: 911, column: 30, scope: !1844)
!1844 = !DILexicalBlockFile(scope: !1841, file: !128, discriminator: 2)
!1845 = !DILocation(line: 911, column: 143, scope: !1844)
!1846 = !DILocation(line: 911, column: 153, scope: !1847)
!1847 = !DILexicalBlockFile(scope: !1844, file: !128, discriminator: 5)
!1848 = !DILocation(line: 911, column: 26, scope: !1844)
!1849 = !DILocation(line: 911, column: 45, scope: !1844)
!1850 = !DILocation(line: 911, column: 51, scope: !1844)
!1851 = !DILocation(line: 911, column: 76, scope: !1844)
!1852 = !DILocation(line: 911, column: 82, scope: !1844)
!1853 = !DILocation(line: 911, column: 106, scope: !1844)
!1854 = !DILocation(line: 911, column: 112, scope: !1844)
!1855 = !DILocation(line: 911, column: 92, scope: !1844)
!1856 = !DILocation(line: 911, column: 138, scope: !1844)
!1857 = !DILocation(line: 911, column: 144, scope: !1844)
!1858 = !DILocation(line: 911, column: 22, scope: !1859)
!1859 = !DILexicalBlockFile(scope: !1844, file: !128, discriminator: 6)
!1860 = !DILocation(line: 911, column: 22, scope: !1844)
!1861 = !DILocation(line: 911, column: 159, scope: !1862)
!1862 = !DILexicalBlockFile(scope: !1842, file: !128, discriminator: 3)
!1863 = !DILocation(line: 911, column: 159, scope: !1864)
!1864 = !DILexicalBlockFile(scope: !1842, file: !128, discriminator: 4)
!1865 = !DILocation(line: 919, column: 40, scope: !1773)
!1866 = !DILocation(line: 919, column: 44, scope: !1773)
!1867 = !DILocation(line: 919, column: 29, scope: !1773)
!1868 = !DILocation(line: 919, column: 2, scope: !1773)
!1869 = !DILocation(line: 919, column: 8, scope: !1773)
!1870 = !DILocation(line: 919, column: 27, scope: !1773)
!1871 = !DILocation(line: 920, column: 27, scope: !1773)
!1872 = !DILocation(line: 920, column: 33, scope: !1773)
!1873 = !DILocation(line: 920, column: 45, scope: !1773)
!1874 = !DILocation(line: 920, column: 51, scope: !1773)
!1875 = !DILocation(line: 920, column: 43, scope: !1773)
!1876 = !DILocation(line: 920, column: 2, scope: !1773)
!1877 = !DILocation(line: 920, column: 8, scope: !1773)
!1878 = !DILocation(line: 920, column: 25, scope: !1773)
!1879 = !DILocation(line: 923, column: 6, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1773, file: !128, line: 923, column: 6)
!1881 = !DILocation(line: 923, column: 12, scope: !1880)
!1882 = !DILocation(line: 923, column: 31, scope: !1880)
!1883 = !DILocation(line: 923, column: 6, scope: !1773)
!1884 = !DILocation(line: 924, column: 3, scope: !1880)
!1885 = distinct !{!1885, !1884}
!1886 = !DILocation(line: 924, column: 12, scope: !1887)
!1887 = !DILexicalBlockFile(scope: !1888, file: !128, discriminator: 1)
!1888 = distinct !DILexicalBlock(scope: !1889, file: !128, line: 924, column: 12)
!1889 = distinct !DILexicalBlock(scope: !1880, file: !128, line: 924, column: 6)
!1890 = !DILocation(line: 924, column: 30, scope: !1891)
!1891 = !DILexicalBlockFile(scope: !1888, file: !128, discriminator: 2)
!1892 = !DILocation(line: 924, column: 119, scope: !1891)
!1893 = !DILocation(line: 924, column: 129, scope: !1894)
!1894 = !DILexicalBlockFile(scope: !1891, file: !128, discriminator: 5)
!1895 = !DILocation(line: 924, column: 15, scope: !1891)
!1896 = !DILocation(line: 924, column: 21, scope: !1891)
!1897 = !DILocation(line: 924, column: 22, scope: !1898)
!1898 = !DILexicalBlockFile(scope: !1891, file: !128, discriminator: 6)
!1899 = !DILocation(line: 924, column: 22, scope: !1891)
!1900 = !DILocation(line: 924, column: 52, scope: !1901)
!1901 = !DILexicalBlockFile(scope: !1889, file: !128, discriminator: 3)
!1902 = !DILocation(line: 924, column: 52, scope: !1903)
!1903 = !DILexicalBlockFile(scope: !1889, file: !128, discriminator: 4)
!1904 = !DILocation(line: 927, column: 24, scope: !1773)
!1905 = !DILocation(line: 927, column: 30, scope: !1773)
!1906 = !DILocation(line: 927, column: 61, scope: !1773)
!1907 = !DILocation(line: 927, column: 2, scope: !1773)
!1908 = !DILocation(line: 927, column: 8, scope: !1773)
!1909 = !DILocation(line: 927, column: 23, scope: !1773)
!1910 = !DILocation(line: 929, column: 21, scope: !1773)
!1911 = !DILocation(line: 929, column: 27, scope: !1773)
!1912 = !DILocation(line: 929, column: 2, scope: !1773)
!1913 = !DILocation(line: 929, column: 8, scope: !1773)
!1914 = !DILocation(line: 929, column: 19, scope: !1773)
!1915 = !DILocation(line: 930, column: 17, scope: !1773)
!1916 = !DILocation(line: 930, column: 23, scope: !1773)
!1917 = !DILocation(line: 930, column: 2, scope: !1773)
!1918 = !DILocation(line: 930, column: 8, scope: !1773)
!1919 = !DILocation(line: 930, column: 15, scope: !1773)
!1920 = !DILocation(line: 931, column: 22, scope: !1773)
!1921 = !DILocation(line: 931, column: 28, scope: !1773)
!1922 = !DILocation(line: 931, column: 2, scope: !1773)
!1923 = !DILocation(line: 931, column: 8, scope: !1773)
!1924 = !DILocation(line: 931, column: 20, scope: !1773)
!1925 = !DILocation(line: 932, column: 24, scope: !1773)
!1926 = !DILocation(line: 932, column: 30, scope: !1773)
!1927 = !DILocation(line: 932, column: 55, scope: !1773)
!1928 = !DILocation(line: 932, column: 25, scope: !1773)
!1929 = !DILocation(line: 932, column: 2, scope: !1773)
!1930 = !DILocation(line: 932, column: 8, scope: !1773)
!1931 = !DILocation(line: 932, column: 20, scope: !1773)
!1932 = !DILocation(line: 935, column: 6, scope: !1773)
!1933 = !DILocation(line: 935, column: 12, scope: !1773)
!1934 = !DILocation(line: 935, column: 4, scope: !1773)
!1935 = !DILocation(line: 936, column: 49, scope: !1773)
!1936 = !DILocation(line: 936, column: 33, scope: !1773)
!1937 = !DILocation(line: 936, column: 39, scope: !1773)
!1938 = !DILocation(line: 936, column: 44, scope: !1773)
!1939 = !DILocation(line: 936, column: 18, scope: !1773)
!1940 = !DILocation(line: 936, column: 54, scope: !1773)
!1941 = !DILocation(line: 936, column: 60, scope: !1773)
!1942 = !DILocation(line: 936, column: 52, scope: !1773)
!1943 = !DILocation(line: 936, column: 64, scope: !1773)
!1944 = !DILocation(line: 936, column: 2, scope: !1773)
!1945 = !DILocation(line: 936, column: 8, scope: !1773)
!1946 = !DILocation(line: 936, column: 16, scope: !1773)
!1947 = !DILocation(line: 938, column: 49, scope: !1773)
!1948 = !DILocation(line: 938, column: 51, scope: !1773)
!1949 = !DILocation(line: 938, column: 33, scope: !1773)
!1950 = !DILocation(line: 938, column: 39, scope: !1773)
!1951 = !DILocation(line: 938, column: 44, scope: !1773)
!1952 = !DILocation(line: 938, column: 18, scope: !1773)
!1953 = !DILocation(line: 938, column: 64, scope: !1773)
!1954 = !DILocation(line: 938, column: 2, scope: !1773)
!1955 = !DILocation(line: 938, column: 8, scope: !1773)
!1956 = !DILocation(line: 938, column: 17, scope: !1773)
!1957 = !DILocation(line: 939, column: 2, scope: !1773)
!1958 = !DILocation(line: 939, column: 8, scope: !1773)
!1959 = !DILocation(line: 939, column: 17, scope: !1773)
!1960 = !DILocation(line: 941, column: 22, scope: !1773)
!1961 = !DILocation(line: 941, column: 28, scope: !1773)
!1962 = !DILocation(line: 941, column: 69, scope: !1773)
!1963 = !DILocation(line: 941, column: 59, scope: !1773)
!1964 = !DILocation(line: 941, column: 2, scope: !1773)
!1965 = !DILocation(line: 941, column: 8, scope: !1773)
!1966 = !DILocation(line: 941, column: 20, scope: !1773)
!1967 = !DILocation(line: 942, column: 2, scope: !1773)
!1968 = !DILocation(line: 942, column: 8, scope: !1773)
!1969 = !DILocation(line: 942, column: 21, scope: !1773)
!1970 = !DILocation(line: 944, column: 21, scope: !1773)
!1971 = !DILocation(line: 944, column: 27, scope: !1773)
!1972 = !DILocation(line: 944, column: 58, scope: !1773)
!1973 = !DILocation(line: 944, column: 2, scope: !1773)
!1974 = !DILocation(line: 944, column: 8, scope: !1773)
!1975 = !DILocation(line: 944, column: 17, scope: !1773)
!1976 = !DILocation(line: 945, column: 22, scope: !1773)
!1977 = !DILocation(line: 945, column: 28, scope: !1773)
!1978 = !DILocation(line: 945, column: 59, scope: !1773)
!1979 = !DILocation(line: 945, column: 2, scope: !1773)
!1980 = !DILocation(line: 945, column: 8, scope: !1773)
!1981 = !DILocation(line: 945, column: 19, scope: !1773)
!1982 = !DILocation(line: 946, column: 1, scope: !1773)
!1983 = distinct !DISubprogram(name: "get_inflate_asv", scope: !128, file: !128, line: 848, type: !1984, isLocal: true, isDefinition: true, scopeLine: 850, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{null, !131, !87}
!1986 = !DILocalVariable(name: "strm", arg: 1, scope: !1983, file: !128, line: 848, type: !131)
!1987 = !DILocation(line: 848, column: 51, scope: !1983)
!1988 = !DILocalVariable(name: "asv", arg: 2, scope: !1983, file: !128, line: 849, type: !87)
!1989 = !DILocation(line: 849, column: 30, scope: !1983)
!1990 = !DILocation(line: 860, column: 7, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1983, file: !128, line: 860, column: 6)
!1992 = !DILocation(line: 860, column: 12, scope: !1991)
!1993 = !DILocation(line: 860, column: 26, scope: !1991)
!1994 = !DILocation(line: 860, column: 32, scope: !1991)
!1995 = !DILocation(line: 860, column: 36, scope: !1996)
!1996 = !DILexicalBlockFile(scope: !1991, file: !128, discriminator: 1)
!1997 = !DILocation(line: 860, column: 41, scope: !1996)
!1998 = !DILocation(line: 860, column: 51, scope: !1996)
!1999 = !DILocation(line: 860, column: 6, scope: !1996)
!2000 = !DILocation(line: 861, column: 23, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1991, file: !128, line: 860, column: 58)
!2002 = !DILocation(line: 861, column: 28, scope: !2001)
!2003 = !DILocation(line: 861, column: 54, scope: !2001)
!2004 = !DILocation(line: 861, column: 3, scope: !2001)
!2005 = !DILocation(line: 861, column: 9, scope: !2001)
!2006 = !DILocation(line: 861, column: 22, scope: !2001)
!2007 = !DILocation(line: 862, column: 20, scope: !2001)
!2008 = !DILocation(line: 862, column: 25, scope: !2001)
!2009 = !DILocation(line: 862, column: 57, scope: !2001)
!2010 = !DILocation(line: 862, column: 3, scope: !2001)
!2011 = !DILocation(line: 862, column: 9, scope: !2001)
!2012 = !DILocation(line: 862, column: 19, scope: !2001)
!2013 = !DILocation(line: 863, column: 30, scope: !2001)
!2014 = !DILocation(line: 863, column: 35, scope: !2001)
!2015 = !DILocation(line: 863, column: 3, scope: !2001)
!2016 = !DILocation(line: 863, column: 9, scope: !2001)
!2017 = !DILocation(line: 863, column: 28, scope: !2001)
!2018 = !DILocation(line: 864, column: 2, scope: !2001)
!2019 = !DILocation(line: 866, column: 23, scope: !1983)
!2020 = !DILocation(line: 866, column: 28, scope: !1983)
!2021 = !DILocation(line: 866, column: 54, scope: !1983)
!2022 = !DILocation(line: 866, column: 2, scope: !1983)
!2023 = !DILocation(line: 866, column: 8, scope: !1983)
!2024 = !DILocation(line: 866, column: 22, scope: !1983)
!2025 = !DILocation(line: 867, column: 15, scope: !1983)
!2026 = !DILocation(line: 867, column: 20, scope: !1983)
!2027 = !DILocation(line: 867, column: 52, scope: !1983)
!2028 = !DILocation(line: 867, column: 2, scope: !1983)
!2029 = !DILocation(line: 867, column: 8, scope: !1983)
!2030 = !DILocation(line: 867, column: 14, scope: !1983)
!2031 = !DILocation(line: 868, column: 17, scope: !1983)
!2032 = !DILocation(line: 868, column: 22, scope: !1983)
!2033 = !DILocation(line: 868, column: 54, scope: !1983)
!2034 = !DILocation(line: 868, column: 2, scope: !1983)
!2035 = !DILocation(line: 868, column: 8, scope: !1983)
!2036 = !DILocation(line: 868, column: 16, scope: !1983)
!2037 = !DILocation(line: 871, column: 18, scope: !1983)
!2038 = !DILocation(line: 871, column: 23, scope: !1983)
!2039 = !DILocation(line: 871, column: 49, scope: !1983)
!2040 = !DILocation(line: 871, column: 2, scope: !1983)
!2041 = !DILocation(line: 871, column: 8, scope: !1983)
!2042 = !DILocation(line: 871, column: 17, scope: !1983)
!2043 = !DILocation(line: 872, column: 24, scope: !1983)
!2044 = !DILocation(line: 872, column: 29, scope: !1983)
!2045 = !DILocation(line: 872, column: 2, scope: !1983)
!2046 = !DILocation(line: 872, column: 8, scope: !1983)
!2047 = !DILocation(line: 872, column: 22, scope: !1983)
!2048 = !DILocation(line: 873, column: 23, scope: !1983)
!2049 = !DILocation(line: 873, column: 28, scope: !1983)
!2050 = !DILocation(line: 873, column: 60, scope: !1983)
!2051 = !DILocation(line: 873, column: 2, scope: !1983)
!2052 = !DILocation(line: 873, column: 8, scope: !1983)
!2053 = !DILocation(line: 873, column: 22, scope: !1983)
!2054 = !DILocation(line: 874, column: 23, scope: !1983)
!2055 = !DILocation(line: 874, column: 28, scope: !1983)
!2056 = !DILocation(line: 874, column: 60, scope: !1983)
!2057 = !DILocation(line: 874, column: 2, scope: !1983)
!2058 = !DILocation(line: 874, column: 8, scope: !1983)
!2059 = !DILocation(line: 874, column: 22, scope: !1983)
!2060 = !DILocation(line: 875, column: 20, scope: !1983)
!2061 = !DILocation(line: 875, column: 25, scope: !1983)
!2062 = !DILocation(line: 875, column: 2, scope: !1983)
!2063 = !DILocation(line: 875, column: 8, scope: !1983)
!2064 = !DILocation(line: 875, column: 18, scope: !1983)
!2065 = !DILocation(line: 878, column: 24, scope: !1983)
!2066 = !DILocation(line: 878, column: 29, scope: !1983)
!2067 = !DILocation(line: 878, column: 55, scope: !1983)
!2068 = !DILocation(line: 878, column: 2, scope: !1983)
!2069 = !DILocation(line: 878, column: 8, scope: !1983)
!2070 = !DILocation(line: 878, column: 23, scope: !1983)
!2071 = !DILocation(line: 879, column: 20, scope: !1983)
!2072 = !DILocation(line: 879, column: 25, scope: !1983)
!2073 = !DILocation(line: 879, column: 2, scope: !1983)
!2074 = !DILocation(line: 879, column: 8, scope: !1983)
!2075 = !DILocation(line: 879, column: 18, scope: !1983)
!2076 = !DILocation(line: 880, column: 1, scope: !1983)
!2077 = distinct !DISubprogram(name: "post_scratch_upd", scope: !128, file: !128, line: 264, type: !2078, isLocal: true, isDefinition: true, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!76, !365}
!2080 = !DILocalVariable(name: "strm", arg: 1, scope: !2077, file: !128, line: 264, type: !365)
!2081 = !DILocation(line: 264, column: 42, scope: !2077)
!2082 = !DILocalVariable(name: "src", scope: !2077, file: !128, line: 266, type: !142)
!2083 = !DILocation(line: 266, column: 17, scope: !2077)
!2084 = !DILocalVariable(name: "target", scope: !2077, file: !128, line: 267, type: !121)
!2085 = !DILocation(line: 267, column: 11, scope: !2077)
!2086 = !DILocalVariable(name: "len", scope: !2077, file: !128, line: 268, type: !51)
!2087 = !DILocation(line: 268, column: 11, scope: !2077)
!2088 = !DILocalVariable(name: "count", scope: !2077, file: !128, line: 269, type: !35)
!2089 = !DILocation(line: 269, column: 11, scope: !2077)
!2090 = !DILocalVariable(name: "zedc", scope: !2077, file: !128, line: 270, type: !70)
!2091 = !DILocation(line: 270, column: 16, scope: !2077)
!2092 = !DILocation(line: 270, column: 38, scope: !2077)
!2093 = !DILocation(line: 270, column: 44, scope: !2077)
!2094 = !DILocation(line: 270, column: 23, scope: !2077)
!2095 = !DILocation(line: 273, column: 6, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2077, file: !128, line: 273, column: 6)
!2097 = !DILocation(line: 273, column: 12, scope: !2096)
!2098 = !DILocation(line: 273, column: 26, scope: !2096)
!2099 = !DILocation(line: 273, column: 29, scope: !2100)
!2100 = !DILexicalBlockFile(scope: !2096, file: !128, discriminator: 1)
!2101 = !DILocation(line: 273, column: 35, scope: !2100)
!2102 = !DILocation(line: 273, column: 6, scope: !2100)
!2103 = !DILocation(line: 274, column: 27, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2096, file: !128, line: 273, column: 46)
!2105 = !DILocation(line: 274, column: 33, scope: !2104)
!2106 = !DILocation(line: 275, column: 6, scope: !2104)
!2107 = !DILocation(line: 275, column: 12, scope: !2104)
!2108 = !DILocation(line: 276, column: 6, scope: !2104)
!2109 = !DILocation(line: 276, column: 12, scope: !2104)
!2110 = !DILocation(line: 274, column: 11, scope: !2104)
!2111 = !DILocation(line: 274, column: 9, scope: !2104)
!2112 = !DILocation(line: 277, column: 24, scope: !2104)
!2113 = !DILocation(line: 277, column: 3, scope: !2104)
!2114 = !DILocation(line: 277, column: 9, scope: !2104)
!2115 = !DILocation(line: 277, column: 22, scope: !2104)
!2116 = !DILocation(line: 278, column: 14, scope: !2104)
!2117 = !DILocation(line: 278, column: 3, scope: !2104)
!2118 = !DILocation(line: 279, column: 2, scope: !2104)
!2119 = !DILocation(line: 282, column: 7, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2077, file: !128, line: 282, column: 6)
!2121 = !DILocation(line: 282, column: 13, scope: !2120)
!2122 = !DILocation(line: 282, column: 27, scope: !2120)
!2123 = !DILocation(line: 282, column: 33, scope: !2120)
!2124 = !DILocation(line: 282, column: 37, scope: !2125)
!2125 = !DILexicalBlockFile(scope: !2120, file: !128, discriminator: 1)
!2126 = !DILocation(line: 282, column: 43, scope: !2125)
!2127 = !DILocation(line: 282, column: 53, scope: !2125)
!2128 = !DILocation(line: 282, column: 6, scope: !2125)
!2129 = !DILocation(line: 284, column: 7, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !128, line: 284, column: 7)
!2131 = distinct !DILexicalBlock(scope: !2120, file: !128, line: 282, column: 60)
!2132 = !DILocation(line: 284, column: 13, scope: !2130)
!2133 = !DILocation(line: 285, column: 19, scope: !2130)
!2134 = !DILocation(line: 285, column: 25, scope: !2130)
!2135 = !DILocation(line: 285, column: 17, scope: !2130)
!2136 = !DILocation(line: 284, column: 22, scope: !2130)
!2137 = !DILocation(line: 284, column: 7, scope: !2131)
!2138 = !DILocation(line: 287, column: 4, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2130, file: !128, line: 285, column: 46)
!2140 = distinct !{!2140, !2138}
!2141 = !DILocation(line: 287, column: 13, scope: !2142)
!2142 = !DILexicalBlockFile(scope: !2143, file: !128, discriminator: 1)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !128, line: 287, column: 13)
!2144 = distinct !DILexicalBlock(scope: !2139, file: !128, line: 287, column: 7)
!2145 = !DILocation(line: 287, column: 31, scope: !2146)
!2146 = !DILexicalBlockFile(scope: !2143, file: !128, discriminator: 2)
!2147 = !DILocation(line: 287, column: 98, scope: !2146)
!2148 = !DILocation(line: 287, column: 108, scope: !2149)
!2149 = !DILexicalBlockFile(scope: !2146, file: !128, discriminator: 4)
!2150 = !DILocation(line: 287, column: 23, scope: !2151)
!2151 = !DILexicalBlockFile(scope: !2146, file: !128, discriminator: 5)
!2152 = !DILocation(line: 287, column: 23, scope: !2146)
!2153 = !DILocation(line: 287, column: 137, scope: !2154)
!2154 = !DILexicalBlockFile(scope: !2144, file: !128, discriminator: 3)
!2155 = !DILocation(line: 288, column: 4, scope: !2139)
!2156 = !DILocation(line: 288, column: 10, scope: !2139)
!2157 = !DILocation(line: 288, column: 18, scope: !2139)
!2158 = !DILocation(line: 289, column: 11, scope: !2139)
!2159 = !DILocation(line: 289, column: 17, scope: !2139)
!2160 = !DILocation(line: 289, column: 4, scope: !2139)
!2161 = !DILocation(line: 291, column: 7, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2131, file: !128, line: 291, column: 7)
!2163 = !DILocation(line: 291, column: 13, scope: !2162)
!2164 = !DILocation(line: 291, column: 7, scope: !2131)
!2165 = !DILocation(line: 292, column: 13, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2162, file: !128, line: 291, column: 23)
!2167 = !DILocation(line: 292, column: 19, scope: !2166)
!2168 = !DILocation(line: 292, column: 24, scope: !2166)
!2169 = !DILocation(line: 292, column: 31, scope: !2166)
!2170 = !DILocation(line: 292, column: 37, scope: !2166)
!2171 = !DILocation(line: 292, column: 29, scope: !2166)
!2172 = !DILocation(line: 292, column: 11, scope: !2166)
!2173 = !DILocation(line: 293, column: 21, scope: !2166)
!2174 = !DILocation(line: 293, column: 27, scope: !2166)
!2175 = !DILocation(line: 293, column: 8, scope: !2166)
!2176 = !DILocation(line: 294, column: 11, scope: !2166)
!2177 = !DILocation(line: 294, column: 19, scope: !2166)
!2178 = !DILocation(line: 294, column: 24, scope: !2166)
!2179 = !DILocation(line: 294, column: 30, scope: !2166)
!2180 = !DILocation(line: 294, column: 4, scope: !2166)
!2181 = !DILocation(line: 295, column: 27, scope: !2166)
!2182 = !DILocation(line: 295, column: 33, scope: !2166)
!2183 = !DILocation(line: 295, column: 4, scope: !2166)
!2184 = !DILocation(line: 295, column: 10, scope: !2166)
!2185 = !DILocation(line: 295, column: 24, scope: !2166)
!2186 = !DILocation(line: 296, column: 26, scope: !2166)
!2187 = !DILocation(line: 296, column: 32, scope: !2166)
!2188 = !DILocation(line: 296, column: 41, scope: !2166)
!2189 = !DILocation(line: 296, column: 4, scope: !2166)
!2190 = !DILocation(line: 296, column: 10, scope: !2166)
!2191 = !DILocation(line: 296, column: 23, scope: !2166)
!2192 = !DILocation(line: 297, column: 3, scope: !2166)
!2193 = !DILocation(line: 298, column: 2, scope: !2131)
!2194 = !DILocation(line: 307, column: 7, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2077, file: !128, line: 307, column: 6)
!2196 = !DILocation(line: 307, column: 13, scope: !2195)
!2197 = !DILocation(line: 307, column: 6, scope: !2195)
!2198 = !DILocation(line: 307, column: 28, scope: !2195)
!2199 = !DILocation(line: 308, column: 8, scope: !2195)
!2200 = !DILocation(line: 308, column: 14, scope: !2195)
!2201 = !DILocation(line: 308, column: 24, scope: !2195)
!2202 = !DILocation(line: 308, column: 41, scope: !2195)
!2203 = !DILocation(line: 308, column: 47, scope: !2195)
!2204 = !DILocation(line: 309, column: 7, scope: !2195)
!2205 = !DILocation(line: 309, column: 13, scope: !2195)
!2206 = !DILocation(line: 309, column: 26, scope: !2195)
!2207 = !DILocation(line: 307, column: 6, scope: !2208)
!2208 = !DILexicalBlockFile(scope: !2077, file: !128, discriminator: 1)
!2209 = !DILocation(line: 311, column: 12, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2195, file: !128, line: 309, column: 33)
!2211 = !DILocation(line: 311, column: 18, scope: !2210)
!2212 = !DILocation(line: 311, column: 23, scope: !2210)
!2213 = !DILocation(line: 311, column: 10, scope: !2210)
!2214 = !DILocation(line: 313, column: 9, scope: !2210)
!2215 = !DILocation(line: 313, column: 15, scope: !2210)
!2216 = !DILocation(line: 313, column: 7, scope: !2210)
!2217 = !DILocation(line: 314, column: 7, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2210, file: !128, line: 314, column: 7)
!2219 = !DILocation(line: 314, column: 13, scope: !2218)
!2220 = !DILocation(line: 314, column: 23, scope: !2218)
!2221 = !DILocation(line: 314, column: 7, scope: !2210)
!2222 = !DILocation(line: 315, column: 4, scope: !2218)
!2223 = !DILocation(line: 315, column: 14, scope: !2218)
!2224 = !DILocation(line: 317, column: 4, scope: !2218)
!2225 = !DILocation(line: 317, column: 14, scope: !2218)
!2226 = !DILocation(line: 319, column: 30, scope: !2210)
!2227 = !DILocation(line: 319, column: 17, scope: !2210)
!2228 = !DILocation(line: 319, column: 24, scope: !2210)
!2229 = !DILocation(line: 319, column: 3, scope: !2210)
!2230 = !DILocation(line: 319, column: 29, scope: !2210)
!2231 = !DILocation(line: 320, column: 31, scope: !2210)
!2232 = !DILocation(line: 320, column: 30, scope: !2210)
!2233 = !DILocation(line: 320, column: 39, scope: !2210)
!2234 = !DILocation(line: 320, column: 17, scope: !2210)
!2235 = !DILocation(line: 320, column: 24, scope: !2210)
!2236 = !DILocation(line: 320, column: 3, scope: !2210)
!2237 = !DILocation(line: 320, column: 29, scope: !2210)
!2238 = !DILocation(line: 321, column: 17, scope: !2210)
!2239 = !DILocation(line: 321, column: 24, scope: !2210)
!2240 = !DILocation(line: 321, column: 3, scope: !2210)
!2241 = !DILocation(line: 321, column: 29, scope: !2210)
!2242 = !DILocation(line: 323, column: 3, scope: !2210)
!2243 = !DILocation(line: 323, column: 9, scope: !2210)
!2244 = !DILocation(line: 323, column: 16, scope: !2210)
!2245 = !DILocation(line: 324, column: 3, scope: !2210)
!2246 = !DILocation(line: 324, column: 9, scope: !2210)
!2247 = !DILocation(line: 324, column: 19, scope: !2210)
!2248 = !DILocation(line: 325, column: 3, scope: !2210)
!2249 = !DILocation(line: 325, column: 9, scope: !2210)
!2250 = !DILocation(line: 325, column: 18, scope: !2210)
!2251 = !DILocation(line: 326, column: 2, scope: !2210)
!2252 = !DILocation(line: 327, column: 2, scope: !2077)
!2253 = !DILocation(line: 328, column: 1, scope: !2077)
!2254 = distinct !DISubprogram(name: "zedc_inflateInit2", scope: !128, file: !128, line: 1404, type: !669, isLocal: false, isDefinition: true, scopeLine: 1405, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!2255 = !DILocalVariable(name: "strm", arg: 1, scope: !2254, file: !128, line: 1404, type: !365)
!2256 = !DILocation(line: 1404, column: 36, scope: !2254)
!2257 = !DILocalVariable(name: "windowBits", arg: 2, scope: !2254, file: !128, line: 1404, type: !76)
!2258 = !DILocation(line: 1404, column: 46, scope: !2254)
!2259 = !DILocalVariable(name: "rc", scope: !2254, file: !128, line: 1406, type: !76)
!2260 = !DILocation(line: 1406, column: 6, scope: !2254)
!2261 = !DILocalVariable(name: "zedc", scope: !2254, file: !128, line: 1407, type: !70)
!2262 = !DILocation(line: 1407, column: 16, scope: !2254)
!2263 = !DILocation(line: 1409, column: 7, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2254, file: !128, line: 1409, column: 6)
!2265 = !DILocation(line: 1409, column: 6, scope: !2254)
!2266 = !DILocation(line: 1410, column: 3, scope: !2264)
!2267 = !DILocation(line: 1412, column: 24, scope: !2254)
!2268 = !DILocation(line: 1412, column: 30, scope: !2254)
!2269 = !DILocation(line: 1412, column: 9, scope: !2254)
!2270 = !DILocation(line: 1412, column: 7, scope: !2254)
!2271 = !DILocation(line: 1413, column: 7, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2254, file: !128, line: 1413, column: 6)
!2273 = !DILocation(line: 1413, column: 6, scope: !2254)
!2274 = !DILocation(line: 1414, column: 3, scope: !2272)
!2275 = !DILocation(line: 1416, column: 15, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2254, file: !128, line: 1416, column: 6)
!2277 = !DILocation(line: 1416, column: 7, scope: !2276)
!2278 = !DILocation(line: 1416, column: 6, scope: !2254)
!2279 = !DILocation(line: 1417, column: 3, scope: !2276)
!2280 = !DILocation(line: 1419, column: 28, scope: !2254)
!2281 = !DILocation(line: 1419, column: 7, scope: !2254)
!2282 = !DILocation(line: 1419, column: 5, scope: !2254)
!2283 = !DILocation(line: 1420, column: 6, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2254, file: !128, line: 1420, column: 6)
!2285 = !DILocation(line: 1420, column: 9, scope: !2284)
!2286 = !DILocation(line: 1420, column: 6, scope: !2254)
!2287 = !DILocation(line: 1421, column: 10, scope: !2284)
!2288 = !DILocation(line: 1421, column: 3, scope: !2284)
!2289 = !DILocation(line: 1424, column: 21, scope: !2254)
!2290 = !DILocation(line: 1424, column: 2, scope: !2254)
!2291 = !DILocation(line: 1424, column: 8, scope: !2254)
!2292 = !DILocation(line: 1424, column: 19, scope: !2254)
!2293 = !DILocation(line: 1425, column: 22, scope: !2254)
!2294 = !DILocation(line: 1425, column: 2, scope: !2254)
!2295 = !DILocation(line: 1428, column: 24, scope: !2254)
!2296 = !DILocation(line: 1428, column: 7, scope: !2254)
!2297 = !DILocation(line: 1428, column: 5, scope: !2254)
!2298 = !DILocation(line: 1429, column: 6, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2254, file: !128, line: 1429, column: 6)
!2300 = !DILocation(line: 1429, column: 9, scope: !2299)
!2301 = !DILocation(line: 1429, column: 6, scope: !2254)
!2302 = !DILocation(line: 1430, column: 23, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2299, file: !128, line: 1429, column: 15)
!2304 = !DILocation(line: 1430, column: 3, scope: !2303)
!2305 = !DILocation(line: 1431, column: 10, scope: !2303)
!2306 = !DILocation(line: 1431, column: 3, scope: !2303)
!2307 = !DILocation(line: 1434, column: 2, scope: !2254)
!2308 = !DILocation(line: 1435, column: 1, scope: !2254)
!2309 = distinct !DISubprogram(name: "is_zedc", scope: !73, file: !73, line: 101, type: !2310, isLocal: true, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!76, !70}
!2312 = !DILocalVariable(name: "zedc", arg: 1, scope: !2309, file: !73, line: 101, type: !70)
!2313 = !DILocation(line: 101, column: 41, scope: !2309)
!2314 = !DILocalVariable(name: "app_id", scope: !2309, file: !73, line: 103, type: !35)
!2315 = !DILocation(line: 103, column: 11, scope: !2309)
!2316 = !DILocation(line: 103, column: 37, scope: !2309)
!2317 = !DILocation(line: 103, column: 43, scope: !2309)
!2318 = !DILocation(line: 103, column: 20, scope: !2309)
!2319 = !DILocation(line: 104, column: 10, scope: !2309)
!2320 = !DILocation(line: 104, column: 17, scope: !2309)
!2321 = !DILocation(line: 104, column: 31, scope: !2309)
!2322 = !DILocation(line: 104, column: 2, scope: !2309)
!2323 = distinct !DISubprogram(name: "__inflateInit_state", scope: !128, file: !128, line: 1340, type: !2324, isLocal: true, isDefinition: true, scopeLine: 1341, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{null, !365}
!2326 = !DILocalVariable(name: "strm", arg: 1, scope: !2323, file: !128, line: 1340, type: !365)
!2327 = !DILocation(line: 1340, column: 46, scope: !2323)
!2328 = !DILocation(line: 1342, column: 19, scope: !2323)
!2329 = !DILocation(line: 1342, column: 25, scope: !2323)
!2330 = !DILocation(line: 1342, column: 35, scope: !2323)
!2331 = !DILocation(line: 1342, column: 2, scope: !2323)
!2332 = !DILocation(line: 1342, column: 8, scope: !2323)
!2333 = !DILocation(line: 1342, column: 17, scope: !2323)
!2334 = !DILocation(line: 1345, column: 2, scope: !2323)
!2335 = !DILocation(line: 1345, column: 8, scope: !2323)
!2336 = !DILocation(line: 1345, column: 17, scope: !2323)
!2337 = !DILocation(line: 1346, column: 2, scope: !2323)
!2338 = !DILocation(line: 1346, column: 8, scope: !2323)
!2339 = !DILocation(line: 1346, column: 17, scope: !2323)
!2340 = !DILocation(line: 1347, column: 2, scope: !2323)
!2341 = !DILocation(line: 1347, column: 8, scope: !2323)
!2342 = !DILocation(line: 1347, column: 23, scope: !2323)
!2343 = !DILocation(line: 1348, column: 2, scope: !2323)
!2344 = !DILocation(line: 1348, column: 8, scope: !2323)
!2345 = !DILocation(line: 1348, column: 22, scope: !2323)
!2346 = !DILocation(line: 1351, column: 2, scope: !2323)
!2347 = !DILocation(line: 1351, column: 8, scope: !2323)
!2348 = !DILocation(line: 1351, column: 19, scope: !2323)
!2349 = !DILocation(line: 1352, column: 2, scope: !2323)
!2350 = !DILocation(line: 1352, column: 8, scope: !2323)
!2351 = !DILocation(line: 1352, column: 21, scope: !2323)
!2352 = !DILocation(line: 1353, column: 2, scope: !2323)
!2353 = !DILocation(line: 1353, column: 8, scope: !2323)
!2354 = !DILocation(line: 1353, column: 21, scope: !2323)
!2355 = !DILocation(line: 1356, column: 2, scope: !2323)
!2356 = !DILocation(line: 1356, column: 8, scope: !2323)
!2357 = !DILocation(line: 1356, column: 17, scope: !2323)
!2358 = !DILocation(line: 1357, column: 2, scope: !2323)
!2359 = !DILocation(line: 1357, column: 8, scope: !2323)
!2360 = !DILocation(line: 1357, column: 18, scope: !2323)
!2361 = !DILocation(line: 1358, column: 2, scope: !2323)
!2362 = !DILocation(line: 1358, column: 8, scope: !2323)
!2363 = !DILocation(line: 1358, column: 14, scope: !2323)
!2364 = !DILocation(line: 1359, column: 2, scope: !2323)
!2365 = !DILocation(line: 1359, column: 8, scope: !2323)
!2366 = !DILocation(line: 1359, column: 16, scope: !2323)
!2367 = !DILocation(line: 1360, column: 2, scope: !2323)
!2368 = !DILocation(line: 1360, column: 8, scope: !2323)
!2369 = !DILocation(line: 1360, column: 17, scope: !2323)
!2370 = !DILocation(line: 1361, column: 2, scope: !2323)
!2371 = !DILocation(line: 1361, column: 8, scope: !2323)
!2372 = !DILocation(line: 1361, column: 17, scope: !2323)
!2373 = !DILocation(line: 1363, column: 2, scope: !2323)
!2374 = !DILocation(line: 1363, column: 8, scope: !2323)
!2375 = !DILocation(line: 1363, column: 27, scope: !2323)
!2376 = !DILocation(line: 1364, column: 2, scope: !2323)
!2377 = !DILocation(line: 1364, column: 8, scope: !2323)
!2378 = !DILocation(line: 1364, column: 20, scope: !2323)
!2379 = !DILocation(line: 1365, column: 2, scope: !2323)
!2380 = !DILocation(line: 1365, column: 8, scope: !2323)
!2381 = !DILocation(line: 1365, column: 15, scope: !2323)
!2382 = !DILocation(line: 1366, column: 2, scope: !2323)
!2383 = !DILocation(line: 1366, column: 8, scope: !2323)
!2384 = !DILocation(line: 1366, column: 19, scope: !2323)
!2385 = !DILocation(line: 1367, column: 2, scope: !2323)
!2386 = !DILocation(line: 1367, column: 8, scope: !2323)
!2387 = !DILocation(line: 1367, column: 21, scope: !2323)
!2388 = !DILocation(line: 1369, column: 2, scope: !2323)
!2389 = !DILocation(line: 1369, column: 8, scope: !2323)
!2390 = !DILocation(line: 1369, column: 22, scope: !2323)
!2391 = !DILocation(line: 1370, column: 2, scope: !2323)
!2392 = !DILocation(line: 1370, column: 8, scope: !2323)
!2393 = !DILocation(line: 1370, column: 22, scope: !2323)
!2394 = !DILocation(line: 1371, column: 2, scope: !2323)
!2395 = !DILocation(line: 1371, column: 8, scope: !2323)
!2396 = !DILocation(line: 1371, column: 18, scope: !2323)
!2397 = !DILocation(line: 1372, column: 2, scope: !2323)
!2398 = !DILocation(line: 1372, column: 8, scope: !2323)
!2399 = !DILocation(line: 1372, column: 18, scope: !2323)
!2400 = !DILocation(line: 1373, column: 2, scope: !2323)
!2401 = !DILocation(line: 1373, column: 8, scope: !2323)
!2402 = !DILocation(line: 1373, column: 18, scope: !2323)
!2403 = !DILocation(line: 1374, column: 2, scope: !2323)
!2404 = !DILocation(line: 1374, column: 8, scope: !2323)
!2405 = !DILocation(line: 1374, column: 21, scope: !2323)
!2406 = !DILocation(line: 1375, column: 2, scope: !2323)
!2407 = !DILocation(line: 1375, column: 8, scope: !2323)
!2408 = !DILocation(line: 1375, column: 27, scope: !2323)
!2409 = !DILocation(line: 1376, column: 2, scope: !2323)
!2410 = !DILocation(line: 1376, column: 8, scope: !2323)
!2411 = !DILocation(line: 1376, column: 22, scope: !2323)
!2412 = !DILocation(line: 1378, column: 2, scope: !2323)
!2413 = !DILocation(line: 1378, column: 8, scope: !2323)
!2414 = !DILocation(line: 1378, column: 18, scope: !2323)
!2415 = !DILocation(line: 1379, column: 2, scope: !2323)
!2416 = !DILocation(line: 1379, column: 8, scope: !2323)
!2417 = !DILocation(line: 1379, column: 17, scope: !2323)
!2418 = !DILocation(line: 1380, column: 2, scope: !2323)
!2419 = !DILocation(line: 1380, column: 8, scope: !2323)
!2420 = !DILocation(line: 1380, column: 25, scope: !2323)
!2421 = !DILocation(line: 1381, column: 2, scope: !2323)
!2422 = !DILocation(line: 1381, column: 8, scope: !2323)
!2423 = !DILocation(line: 1381, column: 22, scope: !2323)
!2424 = !DILocation(line: 1382, column: 2, scope: !2323)
!2425 = !DILocation(line: 1382, column: 8, scope: !2323)
!2426 = !DILocation(line: 1382, column: 21, scope: !2323)
!2427 = !DILocation(line: 1385, column: 2, scope: !2323)
!2428 = !DILocation(line: 1385, column: 8, scope: !2323)
!2429 = !DILocation(line: 1385, column: 18, scope: !2323)
!2430 = !DILocation(line: 1386, column: 2, scope: !2323)
!2431 = !DILocation(line: 1386, column: 8, scope: !2323)
!2432 = !DILocation(line: 1386, column: 18, scope: !2323)
!2433 = !DILocation(line: 1387, column: 9, scope: !2323)
!2434 = !DILocation(line: 1387, column: 15, scope: !2323)
!2435 = !DILocation(line: 1387, column: 2, scope: !2323)
!2436 = !DILocation(line: 1388, column: 2, scope: !2323)
!2437 = !DILocation(line: 1388, column: 8, scope: !2323)
!2438 = !DILocation(line: 1388, column: 13, scope: !2323)
!2439 = !DILocation(line: 1389, column: 2, scope: !2323)
!2440 = !DILocation(line: 1389, column: 8, scope: !2323)
!2441 = !DILocation(line: 1389, column: 21, scope: !2323)
!2442 = !DILocation(line: 1391, column: 2, scope: !2323)
!2443 = !DILocation(line: 1391, column: 8, scope: !2323)
!2444 = !DILocation(line: 1391, column: 19, scope: !2323)
!2445 = !DILocation(line: 1392, column: 2, scope: !2323)
!2446 = !DILocation(line: 1392, column: 8, scope: !2323)
!2447 = !DILocation(line: 1392, column: 19, scope: !2323)
!2448 = !DILocation(line: 1393, column: 9, scope: !2323)
!2449 = !DILocation(line: 1393, column: 15, scope: !2323)
!2450 = !DILocation(line: 1393, column: 2, scope: !2323)
!2451 = !DILocation(line: 1395, column: 17, scope: !2323)
!2452 = !DILocation(line: 1395, column: 23, scope: !2323)
!2453 = !DILocation(line: 1395, column: 2, scope: !2323)
!2454 = !DILocation(line: 1397, column: 1, scope: !2323)
!2455 = distinct !DISubprogram(name: "zedc_inflateSetDictionary", scope: !128, file: !128, line: 1443, type: !2456, isLocal: false, isDefinition: true, scopeLine: 1446, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{!76, !365, !142, !40}
!2458 = !DILocalVariable(name: "strm", arg: 1, scope: !2455, file: !128, line: 1443, type: !365)
!2459 = !DILocation(line: 1443, column: 44, scope: !2455)
!2460 = !DILocalVariable(name: "dictionary", arg: 2, scope: !2455, file: !128, line: 1444, type: !142)
!2461 = !DILocation(line: 1444, column: 25, scope: !2455)
!2462 = !DILocalVariable(name: "dictLength", arg: 3, scope: !2455, file: !128, line: 1445, type: !40)
!2463 = !DILocation(line: 1445, column: 23, scope: !2455)
!2464 = !DILocalVariable(name: "a32", scope: !2455, file: !128, line: 1447, type: !39)
!2465 = !DILocation(line: 1447, column: 11, scope: !2455)
!2466 = !DILocation(line: 1449, column: 6, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2455, file: !128, line: 1449, column: 6)
!2468 = !DILocation(line: 1449, column: 11, scope: !2467)
!2469 = !DILocation(line: 1449, column: 6, scope: !2455)
!2470 = !DILocation(line: 1450, column: 3, scope: !2467)
!2471 = !DILocation(line: 1452, column: 6, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2455, file: !128, line: 1452, column: 6)
!2473 = !DILocation(line: 1452, column: 17, scope: !2472)
!2474 = !DILocation(line: 1452, column: 6, scope: !2455)
!2475 = !DILocation(line: 1453, column: 3, scope: !2472)
!2476 = !DILocation(line: 1455, column: 6, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2455, file: !128, line: 1455, column: 6)
!2478 = !DILocation(line: 1455, column: 12, scope: !2477)
!2479 = !DILocation(line: 1455, column: 19, scope: !2477)
!2480 = !DILocation(line: 1455, column: 6, scope: !2455)
!2481 = !DILocation(line: 1456, column: 22, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2477, file: !128, line: 1455, column: 25)
!2483 = !DILocation(line: 1456, column: 34, scope: !2482)
!2484 = !DILocation(line: 1456, column: 9, scope: !2482)
!2485 = !DILocation(line: 1456, column: 7, scope: !2482)
!2486 = !DILocation(line: 1457, column: 7, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2482, file: !128, line: 1457, column: 7)
!2488 = !DILocation(line: 1457, column: 14, scope: !2487)
!2489 = !DILocation(line: 1457, column: 20, scope: !2487)
!2490 = !DILocation(line: 1457, column: 11, scope: !2487)
!2491 = !DILocation(line: 1457, column: 7, scope: !2482)
!2492 = !DILocation(line: 1458, column: 4, scope: !2487)
!2493 = !DILocation(line: 1459, column: 2, scope: !2482)
!2494 = !DILocation(line: 1461, column: 10, scope: !2455)
!2495 = !DILocation(line: 1461, column: 16, scope: !2455)
!2496 = !DILocation(line: 1461, column: 21, scope: !2455)
!2497 = !DILocation(line: 1461, column: 2, scope: !2455)
!2498 = !DILocation(line: 1461, column: 30, scope: !2455)
!2499 = !DILocation(line: 1461, column: 42, scope: !2455)
!2500 = !DILocation(line: 1462, column: 19, scope: !2455)
!2501 = !DILocation(line: 1462, column: 2, scope: !2455)
!2502 = !DILocation(line: 1462, column: 8, scope: !2455)
!2503 = !DILocation(line: 1462, column: 17, scope: !2455)
!2504 = !DILocation(line: 1463, column: 2, scope: !2455)
!2505 = !DILocation(line: 1463, column: 8, scope: !2455)
!2506 = !DILocation(line: 1463, column: 17, scope: !2455)
!2507 = !DILocation(line: 1464, column: 2, scope: !2455)
!2508 = !DILocation(line: 1464, column: 8, scope: !2455)
!2509 = !DILocation(line: 1464, column: 16, scope: !2455)
!2510 = !DILocation(line: 1466, column: 2, scope: !2455)
!2511 = !DILocation(line: 1467, column: 1, scope: !2455)
!2512 = distinct !DISubprogram(name: "zedc_inflateGetDictionary", scope: !128, file: !128, line: 1476, type: !2513, isLocal: false, isDefinition: true, scopeLine: 1479, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!76, !365, !121, !2515}
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!2516 = !DILocalVariable(name: "strm", arg: 1, scope: !2512, file: !128, line: 1476, type: !365)
!2517 = !DILocation(line: 1476, column: 44, scope: !2512)
!2518 = !DILocalVariable(name: "dictionary", arg: 2, scope: !2512, file: !128, line: 1477, type: !121)
!2519 = !DILocation(line: 1477, column: 19, scope: !2512)
!2520 = !DILocalVariable(name: "dictLength", arg: 3, scope: !2512, file: !128, line: 1478, type: !2515)
!2521 = !DILocation(line: 1478, column: 24, scope: !2512)
!2522 = !DILocalVariable(name: "p", scope: !2512, file: !128, line: 1480, type: !40)
!2523 = !DILocation(line: 1480, column: 15, scope: !2512)
!2524 = !DILocalVariable(name: "in_dict", scope: !2512, file: !128, line: 1481, type: !121)
!2525 = !DILocation(line: 1481, column: 11, scope: !2512)
!2526 = !DILocation(line: 1483, column: 7, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2512, file: !128, line: 1483, column: 6)
!2528 = !DILocation(line: 1483, column: 6, scope: !2512)
!2529 = !DILocation(line: 1484, column: 3, scope: !2527)
!2530 = !DILocation(line: 1486, column: 6, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2512, file: !128, line: 1486, column: 6)
!2532 = !DILocation(line: 1486, column: 6, scope: !2512)
!2533 = !DILocation(line: 1487, column: 17, scope: !2531)
!2534 = !DILocation(line: 1487, column: 23, scope: !2531)
!2535 = !DILocation(line: 1487, column: 4, scope: !2531)
!2536 = !DILocation(line: 1487, column: 15, scope: !2531)
!2537 = !DILocation(line: 1487, column: 3, scope: !2531)
!2538 = !DILocation(line: 1489, column: 6, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2512, file: !128, line: 1489, column: 6)
!2540 = !DILocation(line: 1489, column: 17, scope: !2539)
!2541 = !DILocation(line: 1489, column: 6, scope: !2512)
!2542 = !DILocation(line: 1490, column: 3, scope: !2539)
!2543 = !DILocation(line: 1492, column: 6, scope: !2512)
!2544 = !DILocation(line: 1492, column: 12, scope: !2512)
!2545 = !DILocation(line: 1492, column: 4, scope: !2512)
!2546 = !DILocation(line: 1493, column: 28, scope: !2512)
!2547 = !DILocation(line: 1493, column: 12, scope: !2512)
!2548 = !DILocation(line: 1493, column: 18, scope: !2512)
!2549 = !DILocation(line: 1493, column: 23, scope: !2512)
!2550 = !DILocation(line: 1493, column: 33, scope: !2512)
!2551 = !DILocation(line: 1493, column: 39, scope: !2512)
!2552 = !DILocation(line: 1493, column: 31, scope: !2512)
!2553 = !DILocation(line: 1493, column: 10, scope: !2512)
!2554 = !DILocation(line: 1495, column: 9, scope: !2512)
!2555 = !DILocation(line: 1495, column: 21, scope: !2512)
!2556 = !DILocation(line: 1495, column: 30, scope: !2512)
!2557 = !DILocation(line: 1495, column: 36, scope: !2512)
!2558 = !DILocation(line: 1495, column: 2, scope: !2512)
!2559 = !DILocation(line: 1496, column: 2, scope: !2512)
!2560 = !DILocation(line: 1498, column: 1, scope: !2512)
!2561 = distinct !DISubprogram(name: "zedc_inflateReset", scope: !128, file: !128, line: 1505, type: !2078, isLocal: false, isDefinition: true, scopeLine: 1506, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!2562 = !DILocalVariable(name: "strm", arg: 1, scope: !2561, file: !128, line: 1505, type: !365)
!2563 = !DILocation(line: 1505, column: 36, scope: !2561)
!2564 = !DILocalVariable(name: "rc", scope: !2561, file: !128, line: 1507, type: !76)
!2565 = !DILocation(line: 1507, column: 6, scope: !2561)
!2566 = !DILocation(line: 1509, column: 7, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2561, file: !128, line: 1509, column: 6)
!2568 = !DILocation(line: 1509, column: 6, scope: !2561)
!2569 = !DILocation(line: 1510, column: 3, scope: !2567)
!2570 = !DILocation(line: 1512, column: 22, scope: !2561)
!2571 = !DILocation(line: 1512, column: 2, scope: !2561)
!2572 = !DILocation(line: 1514, column: 24, scope: !2561)
!2573 = !DILocation(line: 1514, column: 7, scope: !2561)
!2574 = !DILocation(line: 1514, column: 5, scope: !2561)
!2575 = !DILocation(line: 1515, column: 6, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2561, file: !128, line: 1515, column: 6)
!2577 = !DILocation(line: 1515, column: 9, scope: !2576)
!2578 = !DILocation(line: 1515, column: 6, scope: !2561)
!2579 = !DILocation(line: 1516, column: 10, scope: !2576)
!2580 = !DILocation(line: 1516, column: 3, scope: !2576)
!2581 = !DILocation(line: 1518, column: 2, scope: !2561)
!2582 = !DILocation(line: 1519, column: 1, scope: !2561)
!2583 = distinct !DISubprogram(name: "zedc_inflateReset2", scope: !128, file: !128, line: 1521, type: !669, isLocal: false, isDefinition: true, scopeLine: 1522, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!2584 = !DILocalVariable(name: "strm", arg: 1, scope: !2583, file: !128, line: 1521, type: !365)
!2585 = !DILocation(line: 1521, column: 37, scope: !2583)
!2586 = !DILocalVariable(name: "windowBits", arg: 2, scope: !2583, file: !128, line: 1521, type: !76)
!2587 = !DILocation(line: 1521, column: 47, scope: !2583)
!2588 = !DILocalVariable(name: "rc", scope: !2583, file: !128, line: 1523, type: !76)
!2589 = !DILocation(line: 1523, column: 6, scope: !2583)
!2590 = !DILocation(line: 1525, column: 7, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2583, file: !128, line: 1525, column: 6)
!2592 = !DILocation(line: 1525, column: 6, scope: !2583)
!2593 = !DILocation(line: 1526, column: 3, scope: !2591)
!2594 = !DILocation(line: 1528, column: 22, scope: !2583)
!2595 = !DILocation(line: 1528, column: 2, scope: !2583)
!2596 = !DILocation(line: 1529, column: 21, scope: !2583)
!2597 = !DILocation(line: 1529, column: 2, scope: !2583)
!2598 = !DILocation(line: 1529, column: 8, scope: !2583)
!2599 = !DILocation(line: 1529, column: 19, scope: !2583)
!2600 = !DILocation(line: 1531, column: 24, scope: !2583)
!2601 = !DILocation(line: 1531, column: 7, scope: !2583)
!2602 = !DILocation(line: 1531, column: 5, scope: !2583)
!2603 = !DILocation(line: 1532, column: 6, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2583, file: !128, line: 1532, column: 6)
!2605 = !DILocation(line: 1532, column: 9, scope: !2604)
!2606 = !DILocation(line: 1532, column: 6, scope: !2583)
!2607 = !DILocation(line: 1533, column: 10, scope: !2604)
!2608 = !DILocation(line: 1533, column: 3, scope: !2604)
!2609 = !DILocation(line: 1535, column: 2, scope: !2583)
!2610 = !DILocation(line: 1536, column: 1, scope: !2583)
!2611 = distinct !DISubprogram(name: "zedc_inflateEnd", scope: !128, file: !128, line: 1543, type: !2078, isLocal: false, isDefinition: true, scopeLine: 1544, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!2612 = !DILocalVariable(name: "strm", arg: 1, scope: !2611, file: !128, line: 1543, type: !365)
!2613 = !DILocation(line: 1543, column: 34, scope: !2611)
!2614 = !DILocalVariable(name: "zedc", scope: !2611, file: !128, line: 1545, type: !70)
!2615 = !DILocation(line: 1545, column: 16, scope: !2611)
!2616 = !DILocation(line: 1547, column: 7, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2611, file: !128, line: 1547, column: 6)
!2618 = !DILocation(line: 1547, column: 6, scope: !2611)
!2619 = !DILocation(line: 1548, column: 3, scope: !2617)
!2620 = !DILocation(line: 1550, column: 24, scope: !2611)
!2621 = !DILocation(line: 1550, column: 30, scope: !2611)
!2622 = !DILocation(line: 1550, column: 9, scope: !2611)
!2623 = !DILocation(line: 1550, column: 7, scope: !2611)
!2624 = !DILocation(line: 1551, column: 7, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2611, file: !128, line: 1551, column: 6)
!2626 = !DILocation(line: 1551, column: 6, scope: !2611)
!2627 = !DILocation(line: 1552, column: 3, scope: !2625)
!2628 = !DILocation(line: 1554, column: 22, scope: !2611)
!2629 = !DILocation(line: 1554, column: 2, scope: !2611)
!2630 = !DILocation(line: 1555, column: 2, scope: !2611)
!2631 = !DILocation(line: 1556, column: 1, scope: !2611)
!2632 = distinct !DISubprogram(name: "zedc_inflateGetHeader", scope: !128, file: !128, line: 1558, type: !2633, isLocal: false, isDefinition: true, scopeLine: 1559, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!2633 = !DISubroutineType(types: !2634)
!2634 = !{!76, !365, !2635}
!2635 = !DIDerivedType(tag: DW_TAG_typedef, name: "gzedc_headerp", file: !4, line: 187, baseType: !2636)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64, align: 64)
!2637 = !DIDerivedType(tag: DW_TAG_typedef, name: "gzedc_header", file: !4, line: 185, baseType: !239)
!2638 = !DILocalVariable(name: "strm", arg: 1, scope: !2632, file: !128, line: 1558, type: !365)
!2639 = !DILocation(line: 1558, column: 40, scope: !2632)
!2640 = !DILocalVariable(name: "head", arg: 2, scope: !2632, file: !128, line: 1558, type: !2635)
!2641 = !DILocation(line: 1558, column: 60, scope: !2632)
!2642 = !DILocation(line: 1560, column: 20, scope: !2632)
!2643 = !DILocation(line: 1560, column: 2, scope: !2632)
!2644 = !DILocation(line: 1560, column: 8, scope: !2632)
!2645 = !DILocation(line: 1560, column: 18, scope: !2632)
!2646 = !DILocation(line: 1561, column: 2, scope: !2632)
!2647 = !DILocation(line: 1561, column: 8, scope: !2632)
!2648 = !DILocation(line: 1561, column: 13, scope: !2632)
!2649 = !DILocation(line: 1562, column: 2, scope: !2632)
!2650 = distinct !DISubprogram(name: "__arch_swab64", scope: !2651, file: !2651, line: 14, type: !653, isLocal: true, isDefinition: true, scopeLine: 15, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!2651 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/asm/swab.h", directory: "/home/lichi/Desktop")
!2652 = !DILocalVariable(name: "val", arg: 1, scope: !2650, file: !2651, line: 14, type: !63)
!2653 = !DILocation(line: 14, column: 45, scope: !2650)
!2654 = !DILocation(line: 30, column: 42, scope: !2650)
!2655 = !DILocation(line: 30, column: 2, scope: !2650)
!2656 = !{i32 100948}
!2657 = !DILocation(line: 31, column: 9, scope: !2650)
!2658 = !DILocation(line: 31, column: 2, scope: !2650)
!2659 = distinct !DISubprogram(name: "__arch_swab32", scope: !2651, file: !2651, line: 7, type: !661, isLocal: true, isDefinition: true, scopeLine: 8, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!2660 = !DILocalVariable(name: "val", arg: 1, scope: !2659, file: !2651, line: 7, type: !68)
!2661 = !DILocation(line: 7, column: 45, scope: !2659)
!2662 = !DILocation(line: 9, column: 42, scope: !2659)
!2663 = !DILocation(line: 9, column: 2, scope: !2659)
!2664 = !{i32 100780}
!2665 = !DILocation(line: 10, column: 9, scope: !2659)
!2666 = !DILocation(line: 10, column: 2, scope: !2659)
!2667 = distinct !DISubprogram(name: "inflate_rem_gzip_header", scope: !128, file: !128, line: 428, type: !129, isLocal: true, isDefinition: true, scopeLine: 429, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!2668 = !DILocalVariable(name: "strm", arg: 1, scope: !2667, file: !128, line: 428, type: !131)
!2669 = !DILocation(line: 428, column: 58, scope: !2667)
!2670 = !DILocalVariable(name: "flg", scope: !2667, file: !128, line: 430, type: !54)
!2671 = !DILocation(line: 430, column: 10, scope: !2667)
!2672 = !DILocalVariable(name: "gz_h", scope: !2667, file: !128, line: 431, type: !238)
!2673 = !DILocation(line: 431, column: 25, scope: !2667)
!2674 = !DILocalVariable(name: "my_idx", scope: !2667, file: !128, line: 432, type: !76)
!2675 = !DILocation(line: 432, column: 6, scope: !2667)
!2676 = !DILocalVariable(name: "next_state", scope: !2667, file: !128, line: 433, type: !207)
!2677 = !DILocation(line: 433, column: 13, scope: !2667)
!2678 = !DILocation(line: 433, column: 26, scope: !2667)
!2679 = !DILocation(line: 433, column: 32, scope: !2667)
!2680 = !DILocalVariable(name: "more_data", scope: !2667, file: !128, line: 434, type: !2681)
!2681 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!2682 = !DILocation(line: 434, column: 6, scope: !2667)
!2683 = !DILocation(line: 436, column: 6, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2667, file: !128, line: 436, column: 6)
!2685 = !DILocation(line: 436, column: 12, scope: !2684)
!2686 = !DILocation(line: 436, column: 22, scope: !2684)
!2687 = !DILocation(line: 436, column: 6, scope: !2667)
!2688 = !DILocation(line: 437, column: 3, scope: !2684)
!2689 = !DILocation(line: 439, column: 9, scope: !2667)
!2690 = !DILocation(line: 439, column: 15, scope: !2667)
!2691 = !DILocation(line: 439, column: 7, scope: !2667)
!2692 = !DILocation(line: 440, column: 6, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2667, file: !128, line: 440, column: 6)
!2694 = !DILocation(line: 440, column: 12, scope: !2693)
!2695 = !DILocation(line: 440, column: 22, scope: !2693)
!2696 = !DILocation(line: 440, column: 6, scope: !2667)
!2697 = !DILocation(line: 441, column: 3, scope: !2693)
!2698 = !DILocation(line: 441, column: 9, scope: !2693)
!2699 = !DILocation(line: 441, column: 22, scope: !2693)
!2700 = !DILocation(line: 443, column: 8, scope: !2667)
!2701 = !DILocation(line: 443, column: 14, scope: !2667)
!2702 = !DILocation(line: 443, column: 6, scope: !2667)
!2703 = !DILocation(line: 445, column: 2, scope: !2667)
!2704 = !DILocation(line: 445, column: 10, scope: !2705)
!2705 = !DILexicalBlockFile(scope: !2667, file: !128, discriminator: 1)
!2706 = !DILocation(line: 445, column: 21, scope: !2705)
!2707 = !DILocation(line: 445, column: 37, scope: !2705)
!2708 = !DILocation(line: 445, column: 49, scope: !2709)
!2709 = !DILexicalBlockFile(scope: !2667, file: !128, discriminator: 2)
!2710 = !DILocation(line: 445, column: 46, scope: !2709)
!2711 = !DILocation(line: 445, column: 2, scope: !2712)
!2712 = !DILexicalBlockFile(scope: !2667, file: !128, discriminator: 3)
!2713 = !DILocation(line: 446, column: 11, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2667, file: !128, line: 445, column: 61)
!2715 = !DILocation(line: 446, column: 3, scope: !2714)
!2716 = !DILocation(line: 448, column: 9, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2718, file: !128, line: 448, column: 8)
!2718 = distinct !DILexicalBlock(scope: !2714, file: !128, line: 446, column: 23)
!2719 = !DILocation(line: 448, column: 15, scope: !2717)
!2720 = !DILocation(line: 448, column: 24, scope: !2717)
!2721 = !DILocation(line: 448, column: 33, scope: !2717)
!2722 = !DILocation(line: 449, column: 9, scope: !2717)
!2723 = !DILocation(line: 449, column: 15, scope: !2717)
!2724 = !DILocation(line: 449, column: 24, scope: !2717)
!2725 = !DILocation(line: 449, column: 33, scope: !2717)
!2726 = !DILocation(line: 450, column: 9, scope: !2717)
!2727 = !DILocation(line: 450, column: 15, scope: !2717)
!2728 = !DILocation(line: 450, column: 24, scope: !2717)
!2729 = !DILocation(line: 448, column: 8, scope: !2730)
!2730 = !DILexicalBlockFile(scope: !2718, file: !128, discriminator: 1)
!2731 = !DILocation(line: 451, column: 5, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2717, file: !128, line: 450, column: 34)
!2733 = !DILocation(line: 453, column: 8, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2718, file: !128, line: 453, column: 8)
!2735 = !DILocation(line: 453, column: 8, scope: !2718)
!2736 = !DILocalVariable(name: "tmp", scope: !2737, file: !128, line: 455, type: !40)
!2737 = distinct !DILexicalBlock(scope: !2734, file: !128, line: 453, column: 14)
!2738 = !DILocation(line: 455, column: 18, scope: !2737)
!2739 = !DILocation(line: 456, column: 5, scope: !2737)
!2740 = !DILocation(line: 456, column: 19, scope: !2737)
!2741 = !DILocation(line: 456, column: 25, scope: !2737)
!2742 = !DILocation(line: 457, column: 19, scope: !2737)
!2743 = !DILocation(line: 457, column: 5, scope: !2737)
!2744 = !DILocation(line: 457, column: 11, scope: !2737)
!2745 = !DILocation(line: 457, column: 16, scope: !2737)
!2746 = !DILocation(line: 458, column: 20, scope: !2737)
!2747 = !DILocation(line: 458, column: 26, scope: !2737)
!2748 = !DILocation(line: 458, column: 5, scope: !2737)
!2749 = !DILocation(line: 458, column: 11, scope: !2737)
!2750 = !DILocation(line: 458, column: 18, scope: !2737)
!2751 = !DILocation(line: 459, column: 16, scope: !2737)
!2752 = !DILocation(line: 459, column: 22, scope: !2737)
!2753 = !DILocation(line: 459, column: 5, scope: !2737)
!2754 = !DILocation(line: 459, column: 11, scope: !2737)
!2755 = !DILocation(line: 459, column: 14, scope: !2737)
!2756 = !DILocation(line: 460, column: 4, scope: !2737)
!2757 = !DILocation(line: 462, column: 15, scope: !2718)
!2758 = !DILocation(line: 463, column: 4, scope: !2718)
!2759 = !DILocation(line: 465, column: 8, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2718, file: !128, line: 465, column: 8)
!2761 = !DILocation(line: 465, column: 12, scope: !2760)
!2762 = !DILocation(line: 465, column: 8, scope: !2718)
!2763 = !DILocation(line: 466, column: 16, scope: !2760)
!2764 = !DILocation(line: 466, column: 5, scope: !2760)
!2765 = !DILocation(line: 467, column: 20, scope: !2760)
!2766 = !DILocation(line: 468, column: 4, scope: !2718)
!2767 = !DILocation(line: 470, column: 8, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2718, file: !128, line: 470, column: 8)
!2769 = !DILocation(line: 470, column: 12, scope: !2768)
!2770 = !DILocation(line: 470, column: 8, scope: !2718)
!2771 = !DILocation(line: 471, column: 15, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2768, file: !128, line: 470, column: 20)
!2773 = !DILocation(line: 472, column: 16, scope: !2772)
!2774 = !DILocation(line: 474, column: 4, scope: !2772)
!2775 = !DILocation(line: 474, column: 22, scope: !2776)
!2776 = !DILexicalBlockFile(scope: !2768, file: !128, discriminator: 1)
!2777 = !DILocation(line: 475, column: 4, scope: !2718)
!2778 = !DILocation(line: 477, column: 28, scope: !2718)
!2779 = !DILocation(line: 477, column: 34, scope: !2718)
!2780 = !DILocation(line: 477, column: 27, scope: !2718)
!2781 = !DILocation(line: 477, column: 17, scope: !2718)
!2782 = !DILocation(line: 477, column: 4, scope: !2718)
!2783 = !DILocation(line: 477, column: 10, scope: !2718)
!2784 = !DILocation(line: 477, column: 15, scope: !2718)
!2785 = !DILocation(line: 479, column: 4, scope: !2718)
!2786 = !DILocation(line: 479, column: 10, scope: !2718)
!2787 = !DILocation(line: 479, column: 26, scope: !2718)
!2788 = !DILocation(line: 480, column: 14, scope: !2718)
!2789 = !DILocation(line: 481, column: 15, scope: !2718)
!2790 = !DILocation(line: 482, column: 4, scope: !2718)
!2791 = !DILocation(line: 484, column: 29, scope: !2718)
!2792 = !DILocation(line: 484, column: 35, scope: !2718)
!2793 = !DILocation(line: 484, column: 28, scope: !2718)
!2794 = !DILocation(line: 484, column: 18, scope: !2718)
!2795 = !DILocation(line: 484, column: 43, scope: !2718)
!2796 = !DILocation(line: 484, column: 4, scope: !2718)
!2797 = !DILocation(line: 484, column: 10, scope: !2718)
!2798 = !DILocation(line: 484, column: 15, scope: !2718)
!2799 = !DILocation(line: 485, column: 8, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2718, file: !128, line: 485, column: 8)
!2801 = !DILocation(line: 485, column: 8, scope: !2718)
!2802 = !DILocation(line: 486, column: 23, scope: !2800)
!2803 = !DILocation(line: 486, column: 29, scope: !2800)
!2804 = !DILocation(line: 486, column: 5, scope: !2800)
!2805 = !DILocation(line: 486, column: 11, scope: !2800)
!2806 = !DILocation(line: 486, column: 21, scope: !2800)
!2807 = !DILocation(line: 487, column: 15, scope: !2718)
!2808 = !DILocation(line: 488, column: 14, scope: !2718)
!2809 = !DILocation(line: 489, column: 4, scope: !2718)
!2810 = !DILocation(line: 492, column: 13, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2718, file: !128, line: 492, column: 8)
!2812 = !DILocation(line: 492, column: 19, scope: !2811)
!2813 = !DILocation(line: 492, column: 10, scope: !2811)
!2814 = !DILocation(line: 492, column: 8, scope: !2718)
!2815 = !DILocation(line: 494, column: 16, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2811, file: !128, line: 492, column: 25)
!2817 = !DILocation(line: 495, column: 15, scope: !2816)
!2818 = !DILocation(line: 496, column: 4, scope: !2816)
!2819 = !DILocation(line: 497, column: 5, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2811, file: !128, line: 496, column: 11)
!2821 = !DILocation(line: 497, column: 11, scope: !2820)
!2822 = !DILocation(line: 497, column: 15, scope: !2820)
!2823 = !DILocation(line: 498, column: 15, scope: !2820)
!2824 = !DILocation(line: 500, column: 8, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2718, file: !128, line: 500, column: 8)
!2826 = !DILocation(line: 500, column: 8, scope: !2718)
!2827 = !DILocation(line: 501, column: 14, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2825, file: !128, line: 500, column: 14)
!2829 = !DILocation(line: 501, column: 20, scope: !2828)
!2830 = !DILocation(line: 501, column: 12, scope: !2828)
!2831 = !DILocation(line: 502, column: 9, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2828, file: !128, line: 502, column: 9)
!2833 = !DILocation(line: 502, column: 23, scope: !2832)
!2834 = !DILocation(line: 502, column: 29, scope: !2832)
!2835 = !DILocation(line: 502, column: 16, scope: !2832)
!2836 = !DILocation(line: 502, column: 9, scope: !2828)
!2837 = !DILocation(line: 503, column: 31, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2832, file: !128, line: 502, column: 40)
!2839 = !DILocation(line: 503, column: 37, scope: !2838)
!2840 = !DILocation(line: 503, column: 30, scope: !2838)
!2841 = !DILocation(line: 503, column: 24, scope: !2838)
!2842 = !DILocation(line: 503, column: 6, scope: !2838)
!2843 = !DILocation(line: 503, column: 12, scope: !2838)
!2844 = !DILocation(line: 503, column: 28, scope: !2838)
!2845 = !DILocation(line: 504, column: 30, scope: !2838)
!2846 = !DILocation(line: 504, column: 6, scope: !2838)
!2847 = !DILocation(line: 504, column: 12, scope: !2838)
!2848 = !DILocation(line: 504, column: 28, scope: !2838)
!2849 = !DILocation(line: 506, column: 5, scope: !2838)
!2850 = !DILocation(line: 506, column: 12, scope: !2851)
!2851 = !DILexicalBlockFile(scope: !2832, file: !128, discriminator: 1)
!2852 = !DILocation(line: 507, column: 4, scope: !2828)
!2853 = !DILocation(line: 508, column: 4, scope: !2718)
!2854 = !DILocation(line: 510, column: 8, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2718, file: !128, line: 510, column: 8)
!2856 = !DILocation(line: 510, column: 12, scope: !2855)
!2857 = !DILocation(line: 510, column: 8, scope: !2718)
!2858 = !DILocation(line: 511, column: 16, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2855, file: !128, line: 510, column: 20)
!2860 = !DILocation(line: 512, column: 15, scope: !2859)
!2861 = !DILocation(line: 513, column: 5, scope: !2859)
!2862 = !DILocation(line: 513, column: 11, scope: !2859)
!2863 = !DILocation(line: 513, column: 27, scope: !2859)
!2864 = !DILocation(line: 514, column: 4, scope: !2859)
!2865 = !DILocation(line: 514, column: 22, scope: !2866)
!2866 = !DILexicalBlockFile(scope: !2855, file: !128, discriminator: 1)
!2867 = !DILocation(line: 515, column: 4, scope: !2718)
!2868 = !DILocation(line: 517, column: 8, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2718, file: !128, line: 517, column: 8)
!2870 = !DILocation(line: 517, column: 8, scope: !2718)
!2871 = !DILocation(line: 518, column: 14, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2869, file: !128, line: 517, column: 14)
!2873 = !DILocation(line: 518, column: 20, scope: !2872)
!2874 = !DILocation(line: 518, column: 12, scope: !2872)
!2875 = !DILocation(line: 519, column: 9, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2872, file: !128, line: 519, column: 9)
!2877 = !DILocation(line: 519, column: 23, scope: !2876)
!2878 = !DILocation(line: 519, column: 29, scope: !2876)
!2879 = !DILocation(line: 519, column: 16, scope: !2876)
!2880 = !DILocation(line: 519, column: 9, scope: !2872)
!2881 = !DILocation(line: 520, column: 30, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2876, file: !128, line: 519, column: 39)
!2883 = !DILocation(line: 520, column: 36, scope: !2882)
!2884 = !DILocation(line: 520, column: 29, scope: !2882)
!2885 = !DILocation(line: 520, column: 23, scope: !2882)
!2886 = !DILocation(line: 520, column: 6, scope: !2882)
!2887 = !DILocation(line: 520, column: 12, scope: !2882)
!2888 = !DILocation(line: 520, column: 27, scope: !2882)
!2889 = !DILocation(line: 521, column: 30, scope: !2882)
!2890 = !DILocation(line: 521, column: 6, scope: !2882)
!2891 = !DILocation(line: 521, column: 12, scope: !2882)
!2892 = !DILocation(line: 521, column: 28, scope: !2882)
!2893 = !DILocation(line: 523, column: 5, scope: !2882)
!2894 = !DILocation(line: 523, column: 12, scope: !2895)
!2895 = !DILexicalBlockFile(scope: !2876, file: !128, discriminator: 1)
!2896 = !DILocation(line: 524, column: 4, scope: !2872)
!2897 = !DILocation(line: 525, column: 9, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2718, file: !128, line: 525, column: 8)
!2899 = !DILocation(line: 525, column: 15, scope: !2898)
!2900 = !DILocation(line: 525, column: 8, scope: !2898)
!2901 = !DILocation(line: 525, column: 23, scope: !2898)
!2902 = !DILocation(line: 525, column: 8, scope: !2718)
!2903 = !DILocation(line: 526, column: 16, scope: !2898)
!2904 = !DILocation(line: 526, column: 5, scope: !2898)
!2905 = !DILocation(line: 528, column: 19, scope: !2898)
!2906 = !DILocation(line: 529, column: 4, scope: !2718)
!2907 = !DILocation(line: 531, column: 8, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2718, file: !128, line: 531, column: 8)
!2909 = !DILocation(line: 531, column: 12, scope: !2908)
!2910 = !DILocation(line: 531, column: 8, scope: !2718)
!2911 = !DILocation(line: 533, column: 15, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2908, file: !128, line: 531, column: 20)
!2913 = !DILocation(line: 535, column: 16, scope: !2912)
!2914 = !DILocation(line: 537, column: 5, scope: !2912)
!2915 = !DILocation(line: 537, column: 11, scope: !2912)
!2916 = !DILocation(line: 537, column: 27, scope: !2912)
!2917 = !DILocation(line: 538, column: 4, scope: !2912)
!2918 = !DILocation(line: 538, column: 22, scope: !2919)
!2919 = !DILexicalBlockFile(scope: !2908, file: !128, discriminator: 1)
!2920 = !DILocation(line: 539, column: 4, scope: !2718)
!2921 = !DILocation(line: 541, column: 8, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2718, file: !128, line: 541, column: 8)
!2923 = !DILocation(line: 541, column: 8, scope: !2718)
!2924 = !DILocation(line: 542, column: 14, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2922, file: !128, line: 541, column: 14)
!2926 = !DILocation(line: 542, column: 20, scope: !2925)
!2927 = !DILocation(line: 542, column: 12, scope: !2925)
!2928 = !DILocation(line: 544, column: 9, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2925, file: !128, line: 544, column: 9)
!2930 = !DILocation(line: 544, column: 23, scope: !2929)
!2931 = !DILocation(line: 544, column: 29, scope: !2929)
!2932 = !DILocation(line: 544, column: 16, scope: !2929)
!2933 = !DILocation(line: 544, column: 9, scope: !2925)
!2934 = !DILocation(line: 546, column: 8, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2929, file: !128, line: 544, column: 39)
!2936 = !DILocation(line: 546, column: 14, scope: !2935)
!2937 = !DILocation(line: 546, column: 7, scope: !2935)
!2938 = !DILocation(line: 545, column: 26, scope: !2935)
!2939 = !DILocation(line: 545, column: 6, scope: !2935)
!2940 = !DILocation(line: 545, column: 12, scope: !2935)
!2941 = !DILocation(line: 545, column: 30, scope: !2935)
!2942 = !DILocation(line: 547, column: 30, scope: !2935)
!2943 = !DILocation(line: 547, column: 6, scope: !2935)
!2944 = !DILocation(line: 547, column: 12, scope: !2935)
!2945 = !DILocation(line: 547, column: 28, scope: !2935)
!2946 = !DILocation(line: 549, column: 5, scope: !2935)
!2947 = !DILocation(line: 549, column: 12, scope: !2948)
!2948 = !DILexicalBlockFile(scope: !2929, file: !128, discriminator: 1)
!2949 = !DILocation(line: 550, column: 4, scope: !2925)
!2950 = !DILocation(line: 551, column: 9, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2718, file: !128, line: 551, column: 8)
!2952 = !DILocation(line: 551, column: 15, scope: !2951)
!2953 = !DILocation(line: 551, column: 8, scope: !2951)
!2954 = !DILocation(line: 551, column: 23, scope: !2951)
!2955 = !DILocation(line: 551, column: 8, scope: !2718)
!2956 = !DILocation(line: 552, column: 16, scope: !2951)
!2957 = !DILocation(line: 552, column: 5, scope: !2951)
!2958 = !DILocation(line: 554, column: 19, scope: !2951)
!2959 = !DILocation(line: 556, column: 4, scope: !2718)
!2960 = !DILocation(line: 558, column: 8, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2718, file: !128, line: 558, column: 8)
!2962 = !DILocation(line: 558, column: 12, scope: !2961)
!2963 = !DILocation(line: 558, column: 8, scope: !2718)
!2964 = !DILocation(line: 559, column: 15, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2961, file: !128, line: 558, column: 20)
!2966 = !DILocation(line: 560, column: 16, scope: !2965)
!2967 = !DILocation(line: 561, column: 4, scope: !2965)
!2968 = !DILocation(line: 561, column: 22, scope: !2969)
!2969 = !DILexicalBlockFile(scope: !2961, file: !128, discriminator: 1)
!2970 = !DILocation(line: 562, column: 4, scope: !2718)
!2971 = !DILocation(line: 564, column: 33, scope: !2718)
!2972 = !DILocation(line: 564, column: 39, scope: !2718)
!2973 = !DILocation(line: 564, column: 32, scope: !2718)
!2974 = !DILocation(line: 564, column: 22, scope: !2718)
!2975 = !DILocation(line: 564, column: 4, scope: !2718)
!2976 = !DILocation(line: 564, column: 10, scope: !2718)
!2977 = !DILocation(line: 564, column: 20, scope: !2718)
!2978 = !DILocation(line: 566, column: 15, scope: !2718)
!2979 = !DILocation(line: 568, column: 14, scope: !2718)
!2980 = !DILocation(line: 569, column: 4, scope: !2718)
!2981 = !DILocation(line: 572, column: 34, scope: !2718)
!2982 = !DILocation(line: 572, column: 40, scope: !2718)
!2983 = !DILocation(line: 572, column: 33, scope: !2718)
!2984 = !DILocation(line: 572, column: 23, scope: !2718)
!2985 = !DILocation(line: 572, column: 48, scope: !2718)
!2986 = !DILocation(line: 572, column: 4, scope: !2718)
!2987 = !DILocation(line: 572, column: 10, scope: !2718)
!2988 = !DILocation(line: 572, column: 20, scope: !2718)
!2989 = !DILocation(line: 575, column: 15, scope: !2718)
!2990 = !DILocation(line: 577, column: 4, scope: !2718)
!2991 = !DILocation(line: 579, column: 8, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2718, file: !128, line: 579, column: 8)
!2993 = !DILocation(line: 579, column: 12, scope: !2992)
!2994 = !DILocation(line: 579, column: 8, scope: !2718)
!2995 = !DILocation(line: 581, column: 9, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2997, file: !128, line: 581, column: 9)
!2997 = distinct !DILexicalBlock(scope: !2992, file: !128, line: 579, column: 20)
!2998 = !DILocation(line: 581, column: 9, scope: !2997)
!2999 = !DILocation(line: 581, column: 15, scope: !3000)
!3000 = !DILexicalBlockFile(scope: !2996, file: !128, discriminator: 1)
!3001 = !DILocation(line: 581, column: 21, scope: !3000)
!3002 = !DILocation(line: 581, column: 26, scope: !3000)
!3003 = !DILocation(line: 583, column: 4, scope: !2997)
!3004 = !DILocation(line: 584, column: 15, scope: !2718)
!3005 = !DILocation(line: 585, column: 4, scope: !2718)
!3006 = !DILocation(line: 585, column: 4, scope: !2730)
!3007 = !DILocation(line: 589, column: 4, scope: !2718)
!3008 = !DILocation(line: 445, column: 2, scope: !3009)
!3009 = !DILexicalBlockFile(scope: !2667, file: !128, discriminator: 4)
!3010 = distinct !{!3010, !2703}
!3011 = !DILocation(line: 593, column: 21, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !2667, file: !128, line: 593, column: 6)
!3013 = !DILocation(line: 593, column: 18, scope: !3012)
!3014 = !DILocation(line: 593, column: 6, scope: !2667)
!3015 = !DILocation(line: 594, column: 7, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !3017, file: !128, line: 594, column: 7)
!3017 = distinct !DILexicalBlock(scope: !3012, file: !128, line: 593, column: 33)
!3018 = !DILocation(line: 594, column: 7, scope: !3017)
!3019 = !DILocation(line: 594, column: 13, scope: !3020)
!3020 = !DILexicalBlockFile(scope: !3016, file: !128, discriminator: 1)
!3021 = !DILocation(line: 594, column: 19, scope: !3020)
!3022 = !DILocation(line: 594, column: 24, scope: !3020)
!3023 = !DILocation(line: 595, column: 2, scope: !3017)
!3024 = !DILocation(line: 596, column: 23, scope: !2667)
!3025 = !DILocation(line: 596, column: 2, scope: !2667)
!3026 = !DILocation(line: 596, column: 8, scope: !2667)
!3027 = !DILocation(line: 596, column: 21, scope: !2667)
!3028 = !DILocation(line: 597, column: 6, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !2667, file: !128, line: 597, column: 6)
!3030 = !DILocation(line: 597, column: 6, scope: !2667)
!3031 = !DILocation(line: 598, column: 3, scope: !3029)
!3032 = !DILocation(line: 599, column: 2, scope: !2667)
!3033 = !DILocation(line: 600, column: 1, scope: !2667)
!3034 = distinct !DISubprogram(name: "inflate_rem_zlib_header", scope: !128, file: !128, line: 356, type: !129, isLocal: true, isDefinition: true, scopeLine: 357, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!3035 = !DILocalVariable(name: "strm", arg: 1, scope: !3034, file: !128, line: 356, type: !131)
!3036 = !DILocation(line: 356, column: 58, scope: !3034)
!3037 = !DILocalVariable(name: "val16", scope: !3034, file: !128, line: 358, type: !51)
!3038 = !DILocation(line: 358, column: 11, scope: !3034)
!3039 = !DILocalVariable(name: "next_state", scope: !3034, file: !128, line: 359, type: !207)
!3040 = !DILocation(line: 359, column: 13, scope: !3034)
!3041 = !DILocation(line: 359, column: 26, scope: !3034)
!3042 = !DILocation(line: 359, column: 32, scope: !3034)
!3043 = !DILocalVariable(name: "more_data", scope: !3034, file: !128, line: 360, type: !2681)
!3044 = !DILocation(line: 360, column: 6, scope: !3034)
!3045 = !DILocalVariable(name: "rc", scope: !3034, file: !128, line: 361, type: !76)
!3046 = !DILocation(line: 361, column: 6, scope: !3034)
!3047 = !DILocation(line: 363, column: 6, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3034, file: !128, line: 363, column: 6)
!3049 = !DILocation(line: 363, column: 12, scope: !3048)
!3050 = !DILocation(line: 363, column: 22, scope: !3048)
!3051 = !DILocation(line: 363, column: 6, scope: !3034)
!3052 = !DILocation(line: 364, column: 3, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3048, file: !128, line: 363, column: 27)
!3054 = !DILocation(line: 364, column: 9, scope: !3053)
!3055 = !DILocation(line: 364, column: 22, scope: !3053)
!3056 = !DILocation(line: 365, column: 3, scope: !3053)
!3057 = !DILocation(line: 368, column: 2, scope: !3034)
!3058 = !DILocation(line: 368, column: 10, scope: !3059)
!3059 = !DILexicalBlockFile(scope: !3034, file: !128, discriminator: 1)
!3060 = !DILocation(line: 368, column: 21, scope: !3059)
!3061 = !DILocation(line: 368, column: 37, scope: !3059)
!3062 = !DILocation(line: 368, column: 49, scope: !3063)
!3063 = !DILexicalBlockFile(scope: !3034, file: !128, discriminator: 2)
!3064 = !DILocation(line: 368, column: 46, scope: !3063)
!3065 = !DILocation(line: 368, column: 2, scope: !3066)
!3066 = !DILexicalBlockFile(scope: !3034, file: !128, discriminator: 3)
!3067 = !DILocation(line: 369, column: 11, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3034, file: !128, line: 368, column: 61)
!3069 = !DILocation(line: 369, column: 3, scope: !3068)
!3070 = !DILocation(line: 371, column: 8, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3072, file: !128, line: 371, column: 8)
!3072 = distinct !DILexicalBlock(scope: !3068, file: !128, line: 369, column: 23)
!3073 = !DILocation(line: 371, column: 14, scope: !3071)
!3074 = !DILocation(line: 371, column: 24, scope: !3071)
!3075 = !DILocation(line: 371, column: 8, scope: !3072)
!3076 = !DILocation(line: 372, column: 24, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3071, file: !128, line: 371, column: 30)
!3078 = !DILocation(line: 372, column: 30, scope: !3077)
!3079 = !DILocation(line: 372, column: 14, scope: !3077)
!3080 = !DILocation(line: 372, column: 39, scope: !3077)
!3081 = !DILocation(line: 373, column: 6, scope: !3077)
!3082 = !DILocation(line: 373, column: 12, scope: !3077)
!3083 = !DILocation(line: 372, column: 45, scope: !3077)
!3084 = !DILocation(line: 372, column: 13, scope: !3077)
!3085 = !DILocation(line: 372, column: 11, scope: !3077)
!3086 = !DILocation(line: 374, column: 10, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3077, file: !128, line: 374, column: 9)
!3088 = !DILocation(line: 374, column: 16, scope: !3087)
!3089 = !DILocation(line: 374, column: 22, scope: !3087)
!3090 = !DILocation(line: 374, column: 9, scope: !3077)
!3091 = !DILocation(line: 375, column: 6, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3087, file: !128, line: 374, column: 28)
!3093 = distinct !{!3093, !3091}
!3094 = !DILocation(line: 375, column: 15, scope: !3095)
!3095 = !DILexicalBlockFile(scope: !3096, file: !128, discriminator: 1)
!3096 = distinct !DILexicalBlock(scope: !3097, file: !128, line: 375, column: 15)
!3097 = distinct !DILexicalBlock(scope: !3092, file: !128, line: 375, column: 9)
!3098 = !DILocation(line: 375, column: 33, scope: !3099)
!3099 = !DILexicalBlockFile(scope: !3096, file: !128, discriminator: 2)
!3100 = !DILocation(line: 375, column: 104, scope: !3099)
!3101 = !DILocation(line: 375, column: 114, scope: !3102)
!3102 = !DILexicalBlockFile(scope: !3099, file: !128, discriminator: 4)
!3103 = !DILocation(line: 375, column: 25, scope: !3104)
!3104 = !DILexicalBlockFile(scope: !3099, file: !128, discriminator: 5)
!3105 = !DILocation(line: 375, column: 25, scope: !3099)
!3106 = !DILocation(line: 375, column: 143, scope: !3107)
!3107 = !DILexicalBlockFile(scope: !3097, file: !128, discriminator: 3)
!3108 = !DILocation(line: 376, column: 6, scope: !3092)
!3109 = !DILocation(line: 379, column: 11, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3077, file: !128, line: 379, column: 9)
!3111 = !DILocation(line: 379, column: 17, scope: !3110)
!3112 = !DILocation(line: 379, column: 27, scope: !3110)
!3113 = !DILocation(line: 379, column: 38, scope: !3110)
!3114 = !DILocation(line: 380, column: 8, scope: !3110)
!3115 = !DILocation(line: 380, column: 14, scope: !3110)
!3116 = !DILocation(line: 380, column: 24, scope: !3110)
!3117 = !DILocation(line: 379, column: 9, scope: !3118)
!3118 = !DILexicalBlockFile(scope: !3077, file: !128, discriminator: 1)
!3119 = !DILocation(line: 381, column: 6, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3110, file: !128, line: 380, column: 35)
!3121 = distinct !{!3121, !3119}
!3122 = !DILocation(line: 381, column: 15, scope: !3123)
!3123 = !DILexicalBlockFile(scope: !3124, file: !128, discriminator: 1)
!3124 = distinct !DILexicalBlock(scope: !3125, file: !128, line: 381, column: 15)
!3125 = distinct !DILexicalBlock(scope: !3120, file: !128, line: 381, column: 9)
!3126 = !DILocation(line: 381, column: 33, scope: !3127)
!3127 = !DILexicalBlockFile(scope: !3124, file: !128, discriminator: 2)
!3128 = !DILocation(line: 381, column: 101, scope: !3127)
!3129 = !DILocation(line: 381, column: 111, scope: !3130)
!3130 = !DILexicalBlockFile(scope: !3127, file: !128, discriminator: 4)
!3131 = !DILocation(line: 381, column: 25, scope: !3132)
!3132 = !DILexicalBlockFile(scope: !3127, file: !128, discriminator: 5)
!3133 = !DILocation(line: 381, column: 25, scope: !3127)
!3134 = !DILocation(line: 381, column: 140, scope: !3135)
!3135 = !DILexicalBlockFile(scope: !3125, file: !128, discriminator: 3)
!3136 = !DILocation(line: 382, column: 6, scope: !3120)
!3137 = !DILocation(line: 384, column: 9, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3077, file: !128, line: 384, column: 9)
!3139 = !DILocation(line: 384, column: 15, scope: !3138)
!3140 = !DILocation(line: 384, column: 9, scope: !3077)
!3141 = !DILocation(line: 385, column: 17, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3138, file: !128, line: 384, column: 25)
!3143 = !DILocation(line: 386, column: 16, scope: !3142)
!3144 = !DILocation(line: 387, column: 5, scope: !3142)
!3145 = !DILocation(line: 387, column: 23, scope: !3146)
!3146 = !DILexicalBlockFile(scope: !3138, file: !128, discriminator: 1)
!3147 = !DILocation(line: 388, column: 4, scope: !3077)
!3148 = !DILocation(line: 388, column: 21, scope: !3149)
!3149 = !DILexicalBlockFile(scope: !3071, file: !128, discriminator: 1)
!3150 = !DILocation(line: 389, column: 4, scope: !3072)
!3151 = !DILocation(line: 391, column: 8, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3072, file: !128, line: 391, column: 8)
!3153 = !DILocation(line: 391, column: 14, scope: !3152)
!3154 = !DILocation(line: 391, column: 24, scope: !3152)
!3155 = !DILocation(line: 391, column: 8, scope: !3072)
!3156 = !DILocation(line: 394, column: 17, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3152, file: !128, line: 391, column: 30)
!3158 = !DILocation(line: 394, column: 23, scope: !3157)
!3159 = !DILocation(line: 394, column: 7, scope: !3157)
!3160 = !DILocation(line: 394, column: 32, scope: !3157)
!3161 = !DILocation(line: 395, column: 16, scope: !3157)
!3162 = !DILocation(line: 395, column: 22, scope: !3157)
!3163 = !DILocation(line: 395, column: 6, scope: !3157)
!3164 = !DILocation(line: 395, column: 31, scope: !3157)
!3165 = !DILocation(line: 394, column: 38, scope: !3157)
!3166 = !DILocation(line: 396, column: 16, scope: !3157)
!3167 = !DILocation(line: 396, column: 22, scope: !3157)
!3168 = !DILocation(line: 396, column: 6, scope: !3157)
!3169 = !DILocation(line: 396, column: 31, scope: !3157)
!3170 = !DILocation(line: 395, column: 37, scope: !3157)
!3171 = !DILocation(line: 397, column: 16, scope: !3157)
!3172 = !DILocation(line: 397, column: 22, scope: !3157)
!3173 = !DILocation(line: 397, column: 6, scope: !3157)
!3174 = !DILocation(line: 396, column: 36, scope: !3157)
!3175 = !DILocation(line: 393, column: 5, scope: !3157)
!3176 = !DILocation(line: 393, column: 11, scope: !3157)
!3177 = !DILocation(line: 393, column: 24, scope: !3157)
!3178 = !DILocation(line: 398, column: 22, scope: !3157)
!3179 = !DILocation(line: 398, column: 28, scope: !3157)
!3180 = !DILocation(line: 398, column: 6, scope: !3157)
!3181 = !DILocation(line: 398, column: 12, scope: !3157)
!3182 = !DILocation(line: 398, column: 20, scope: !3157)
!3183 = !DILocation(line: 399, column: 6, scope: !3157)
!3184 = !DILocation(line: 399, column: 12, scope: !3157)
!3185 = !DILocation(line: 399, column: 21, scope: !3157)
!3186 = !DILocation(line: 400, column: 16, scope: !3157)
!3187 = !DILocation(line: 401, column: 8, scope: !3157)
!3188 = !DILocation(line: 402, column: 4, scope: !3157)
!3189 = !DILocation(line: 402, column: 21, scope: !3190)
!3190 = !DILexicalBlockFile(scope: !3152, file: !128, discriminator: 1)
!3191 = !DILocation(line: 403, column: 4, scope: !3072)
!3192 = !DILocation(line: 403, column: 4, scope: !3193)
!3193 = !DILexicalBlockFile(scope: !3072, file: !128, discriminator: 1)
!3194 = !DILocation(line: 406, column: 4, scope: !3072)
!3195 = !DILocation(line: 368, column: 2, scope: !3196)
!3196 = !DILexicalBlockFile(scope: !3034, file: !128, discriminator: 4)
!3197 = distinct !{!3197, !3057}
!3198 = !DILocation(line: 410, column: 23, scope: !3034)
!3199 = !DILocation(line: 410, column: 2, scope: !3034)
!3200 = !DILocation(line: 410, column: 8, scope: !3034)
!3201 = !DILocation(line: 410, column: 21, scope: !3034)
!3202 = !DILocation(line: 411, column: 6, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3034, file: !128, line: 411, column: 6)
!3204 = !DILocation(line: 411, column: 6, scope: !3034)
!3205 = !DILocation(line: 412, column: 6, scope: !3203)
!3206 = !DILocation(line: 412, column: 3, scope: !3203)
!3207 = !DILocation(line: 413, column: 9, scope: !3034)
!3208 = !DILocation(line: 413, column: 2, scope: !3034)
!3209 = !DILocation(line: 414, column: 1, scope: !3034)
!3210 = distinct !DISubprogram(name: "__fswab16", scope: !652, file: !652, line: 46, type: !3211, isLocal: true, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{!120, !120}
!3213 = !DILocalVariable(name: "val", arg: 1, scope: !3210, file: !652, line: 46, type: !120)
!3214 = !DILocation(line: 46, column: 41, scope: !3210)
!3215 = !DILocation(line: 53, column: 29, scope: !3210)
!3216 = !DILocation(line: 53, column: 21, scope: !3210)
!3217 = !DILocation(line: 53, column: 34, scope: !3210)
!3218 = !DILocation(line: 53, column: 52, scope: !3210)
!3219 = !DILocation(line: 53, column: 70, scope: !3210)
!3220 = !DILocation(line: 53, column: 62, scope: !3210)
!3221 = !DILocation(line: 53, column: 75, scope: !3210)
!3222 = !DILocation(line: 53, column: 93, scope: !3210)
!3223 = !DILocation(line: 53, column: 58, scope: !3210)
!3224 = !DILocation(line: 53, column: 10, scope: !3210)
!3225 = !DILocation(line: 53, column: 2, scope: !3210)
!3226 = distinct !DISubprogram(name: "inp_proc_update", scope: !128, file: !128, line: 58, type: !3227, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!39, !39, !39, !39}
!3229 = !DILocalVariable(name: "inp_processed", arg: 1, scope: !3226, file: !128, line: 58, type: !39)
!3230 = !DILocation(line: 58, column: 42, scope: !3226)
!3231 = !DILocalVariable(name: "proc_bits", arg: 2, scope: !3226, file: !128, line: 58, type: !39)
!3232 = !DILocation(line: 58, column: 66, scope: !3226)
!3233 = !DILocalVariable(name: "pre_scratch_bits", arg: 3, scope: !3226, file: !128, line: 59, type: !39)
!3234 = !DILocation(line: 59, column: 14, scope: !3226)
!3235 = !DILocalVariable(name: "in_total", scope: !3226, file: !128, line: 61, type: !35)
!3236 = !DILocation(line: 61, column: 11, scope: !3226)
!3237 = !DILocation(line: 64, column: 23, scope: !3226)
!3238 = !DILocation(line: 64, column: 13, scope: !3226)
!3239 = !DILocation(line: 64, column: 37, scope: !3226)
!3240 = !DILocation(line: 64, column: 11, scope: !3226)
!3241 = !DILocation(line: 65, column: 24, scope: !3226)
!3242 = !DILocation(line: 65, column: 14, scope: !3226)
!3243 = !DILocation(line: 65, column: 11, scope: !3226)
!3244 = !DILocation(line: 66, column: 24, scope: !3226)
!3245 = !DILocation(line: 66, column: 14, scope: !3226)
!3246 = !DILocation(line: 66, column: 11, scope: !3226)
!3247 = !DILocation(line: 67, column: 14, scope: !3226)
!3248 = !DILocation(line: 67, column: 23, scope: !3226)
!3249 = !DILocation(line: 67, column: 31, scope: !3226)
!3250 = !DILocation(line: 67, column: 11, scope: !3226)
!3251 = !DILocation(line: 69, column: 19, scope: !3226)
!3252 = !DILocation(line: 69, column: 9, scope: !3226)
!3253 = !DILocation(line: 69, column: 2, scope: !3226)
!3254 = distinct !DISubprogram(name: "setup_tree", scope: !128, file: !128, line: 211, type: !2324, isLocal: true, isDefinition: true, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!3255 = !DILocalVariable(name: "strm", arg: 1, scope: !3254, file: !128, line: 211, type: !365)
!3256 = !DILocation(line: 211, column: 37, scope: !3254)
!3257 = !DILocalVariable(name: "hdr_start_total_bits", scope: !3254, file: !128, line: 213, type: !35)
!3258 = !DILocation(line: 213, column: 11, scope: !3254)
!3259 = !DILocation(line: 219, column: 6, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3254, file: !128, line: 219, column: 6)
!3261 = !DILocation(line: 219, column: 12, scope: !3260)
!3262 = !DILocation(line: 219, column: 22, scope: !3260)
!3263 = !DILocation(line: 219, column: 6, scope: !3254)
!3264 = !DILocation(line: 220, column: 3, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3260, file: !128, line: 219, column: 30)
!3266 = !DILocation(line: 220, column: 9, scope: !3265)
!3267 = !DILocation(line: 220, column: 19, scope: !3265)
!3268 = !DILocation(line: 221, column: 3, scope: !3265)
!3269 = !DILocation(line: 221, column: 9, scope: !3265)
!3270 = !DILocation(line: 221, column: 18, scope: !3265)
!3271 = !DILocation(line: 222, column: 3, scope: !3265)
!3272 = !DILocation(line: 222, column: 9, scope: !3265)
!3273 = !DILocation(line: 222, column: 16, scope: !3265)
!3274 = !DILocation(line: 223, column: 7, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3265, file: !128, line: 223, column: 7)
!3276 = !DILocation(line: 223, column: 13, scope: !3275)
!3277 = !DILocation(line: 223, column: 23, scope: !3275)
!3278 = !DILocation(line: 223, column: 7, scope: !3265)
!3279 = !DILocation(line: 224, column: 8, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3275, file: !128, line: 223, column: 31)
!3281 = !DILocation(line: 224, column: 14, scope: !3280)
!3282 = !DILocation(line: 224, column: 27, scope: !3280)
!3283 = !DILocation(line: 225, column: 8, scope: !3280)
!3284 = !DILocation(line: 225, column: 14, scope: !3280)
!3285 = !DILocation(line: 225, column: 33, scope: !3280)
!3286 = !DILocation(line: 226, column: 3, scope: !3280)
!3287 = !DILocation(line: 227, column: 7, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3265, file: !128, line: 227, column: 7)
!3289 = !DILocation(line: 227, column: 13, scope: !3288)
!3290 = !DILocation(line: 227, column: 23, scope: !3288)
!3291 = !DILocation(line: 227, column: 7, scope: !3265)
!3292 = !DILocation(line: 228, column: 26, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3288, file: !128, line: 227, column: 31)
!3294 = !DILocation(line: 228, column: 32, scope: !3293)
!3295 = !DILocation(line: 228, column: 4, scope: !3293)
!3296 = !DILocation(line: 228, column: 10, scope: !3293)
!3297 = !DILocation(line: 228, column: 24, scope: !3293)
!3298 = !DILocation(line: 229, column: 4, scope: !3293)
!3299 = !DILocation(line: 229, column: 10, scope: !3293)
!3300 = !DILocation(line: 229, column: 23, scope: !3293)
!3301 = !DILocation(line: 230, column: 4, scope: !3293)
!3302 = !DILocation(line: 230, column: 10, scope: !3293)
!3303 = !DILocation(line: 230, column: 19, scope: !3293)
!3304 = !DILocation(line: 231, column: 4, scope: !3293)
!3305 = !DILocation(line: 233, column: 2, scope: !3265)
!3306 = !DILocation(line: 235, column: 35, scope: !3254)
!3307 = !DILocation(line: 235, column: 41, scope: !3254)
!3308 = !DILocation(line: 235, column: 25, scope: !3254)
!3309 = !DILocation(line: 235, column: 51, scope: !3254)
!3310 = !DILocation(line: 236, column: 3, scope: !3254)
!3311 = !DILocation(line: 236, column: 9, scope: !3254)
!3312 = !DILocation(line: 235, column: 55, scope: !3254)
!3313 = !DILocation(line: 235, column: 23, scope: !3254)
!3314 = !DILocation(line: 244, column: 7, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3254, file: !128, line: 244, column: 6)
!3316 = !DILocation(line: 244, column: 13, scope: !3315)
!3317 = !DILocation(line: 244, column: 26, scope: !3315)
!3318 = !DILocation(line: 244, column: 31, scope: !3315)
!3319 = !DILocation(line: 245, column: 8, scope: !3315)
!3320 = !DILocation(line: 245, column: 29, scope: !3315)
!3321 = !DILocation(line: 245, column: 34, scope: !3315)
!3322 = !DILocation(line: 245, column: 38, scope: !3323)
!3323 = !DILexicalBlockFile(scope: !3315, file: !128, discriminator: 1)
!3324 = !DILocation(line: 245, column: 44, scope: !3323)
!3325 = !DILocation(line: 245, column: 56, scope: !3323)
!3326 = !DILocation(line: 244, column: 6, scope: !3327)
!3327 = !DILexicalBlockFile(scope: !3254, file: !128, discriminator: 1)
!3328 = !DILocation(line: 246, column: 21, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3315, file: !128, line: 245, column: 64)
!3330 = !DILocation(line: 246, column: 27, scope: !3329)
!3331 = !DILocation(line: 246, column: 3, scope: !3329)
!3332 = !DILocation(line: 246, column: 9, scope: !3329)
!3333 = !DILocation(line: 246, column: 19, scope: !3329)
!3334 = !DILocation(line: 247, column: 20, scope: !3329)
!3335 = !DILocation(line: 247, column: 3, scope: !3329)
!3336 = !DILocation(line: 248, column: 2, scope: !3329)
!3337 = !DILocation(line: 249, column: 17, scope: !3254)
!3338 = !DILocation(line: 249, column: 2, scope: !3254)
!3339 = !DILocation(line: 250, column: 1, scope: !3254)
!3340 = !DILocation(line: 250, column: 1, scope: !3327)
!3341 = distinct !DISubprogram(name: "extract_new_tree", scope: !128, file: !128, line: 72, type: !2324, isLocal: true, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!3342 = !DILocalVariable(name: "strm", arg: 1, scope: !3341, file: !128, line: 72, type: !365)
!3343 = !DILocation(line: 72, column: 43, scope: !3341)
!3344 = !DILocalVariable(name: "target", scope: !3341, file: !128, line: 74, type: !121)
!3345 = !DILocation(line: 74, column: 11, scope: !3341)
!3346 = !DILocalVariable(name: "src", scope: !3341, file: !128, line: 75, type: !142)
!3347 = !DILocation(line: 75, column: 17, scope: !3341)
!3348 = !DILocalVariable(name: "in_scratch_bytes", scope: !3341, file: !128, line: 76, type: !35)
!3349 = !DILocation(line: 76, column: 11, scope: !3341)
!3350 = !DILocalVariable(name: "hdr_offs", scope: !3341, file: !128, line: 77, type: !35)
!3351 = !DILocation(line: 77, column: 11, scope: !3341)
!3352 = !DILocalVariable(name: "hdr_start_total_bits", scope: !3341, file: !128, line: 78, type: !35)
!3353 = !DILocation(line: 78, column: 11, scope: !3341)
!3354 = !DILocalVariable(name: "cnt", scope: !3341, file: !128, line: 79, type: !40)
!3355 = !DILocation(line: 79, column: 11, scope: !3341)
!3356 = !DILocalVariable(name: "src_offs", scope: !3341, file: !128, line: 80, type: !3357)
!3357 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !36, line: 40, baseType: !533)
!3358 = !DILocation(line: 80, column: 10, scope: !3341)
!3359 = !DILocation(line: 82, column: 22, scope: !3341)
!3360 = !DILocation(line: 82, column: 28, scope: !3341)
!3361 = !DILocation(line: 82, column: 43, scope: !3341)
!3362 = !DILocation(line: 82, column: 49, scope: !3341)
!3363 = !DILocation(line: 82, column: 41, scope: !3341)
!3364 = !DILocation(line: 82, column: 61, scope: !3341)
!3365 = !DILocation(line: 82, column: 21, scope: !3341)
!3366 = !DILocation(line: 82, column: 19, scope: !3341)
!3367 = !DILocation(line: 86, column: 35, scope: !3341)
!3368 = !DILocation(line: 86, column: 41, scope: !3341)
!3369 = !DILocation(line: 86, column: 25, scope: !3341)
!3370 = !DILocation(line: 86, column: 51, scope: !3341)
!3371 = !DILocation(line: 87, column: 3, scope: !3341)
!3372 = !DILocation(line: 87, column: 9, scope: !3341)
!3373 = !DILocation(line: 86, column: 55, scope: !3341)
!3374 = !DILocation(line: 86, column: 23, scope: !3341)
!3375 = !DILocation(line: 89, column: 13, scope: !3341)
!3376 = !DILocation(line: 90, column: 3, scope: !3341)
!3377 = !DILocation(line: 90, column: 9, scope: !3341)
!3378 = !DILocation(line: 89, column: 34, scope: !3341)
!3379 = !DILocation(line: 90, column: 23, scope: !3341)
!3380 = !DILocation(line: 90, column: 29, scope: !3341)
!3381 = !DILocation(line: 90, column: 21, scope: !3341)
!3382 = !DILocation(line: 89, column: 11, scope: !3341)
!3383 = !DILocation(line: 92, column: 17, scope: !3341)
!3384 = !DILocation(line: 92, column: 26, scope: !3341)
!3385 = !DILocation(line: 92, column: 2, scope: !3341)
!3386 = !DILocation(line: 92, column: 8, scope: !3341)
!3387 = !DILocation(line: 92, column: 15, scope: !3341)
!3388 = !DILocation(line: 93, column: 19, scope: !3341)
!3389 = !DILocation(line: 93, column: 25, scope: !3341)
!3390 = !DILocation(line: 93, column: 9, scope: !3341)
!3391 = !DILocation(line: 93, column: 40, scope: !3341)
!3392 = !DILocation(line: 93, column: 46, scope: !3341)
!3393 = !DILocation(line: 93, column: 38, scope: !3341)
!3394 = !DILocation(line: 93, column: 53, scope: !3341)
!3395 = !DILocation(line: 93, column: 57, scope: !3341)
!3396 = !DILocation(line: 93, column: 8, scope: !3341)
!3397 = !DILocation(line: 93, column: 6, scope: !3341)
!3398 = !DILocation(line: 95, column: 11, scope: !3341)
!3399 = !DILocation(line: 95, column: 17, scope: !3341)
!3400 = !DILocation(line: 95, column: 22, scope: !3341)
!3401 = !DILocation(line: 95, column: 9, scope: !3341)
!3402 = !DILocation(line: 97, column: 13, scope: !3341)
!3403 = !DILocation(line: 97, column: 21, scope: !3341)
!3404 = !DILocation(line: 97, column: 26, scope: !3341)
!3405 = !DILocation(line: 97, column: 24, scope: !3341)
!3406 = !DILocation(line: 97, column: 11, scope: !3341)
!3407 = !DILocation(line: 99, column: 7, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3341, file: !128, line: 99, column: 6)
!3409 = !DILocation(line: 99, column: 28, scope: !3408)
!3410 = !DILocation(line: 99, column: 34, scope: !3408)
!3411 = !DILocation(line: 99, column: 38, scope: !3412)
!3412 = !DILexicalBlockFile(scope: !3408, file: !128, discriminator: 1)
!3413 = !DILocation(line: 99, column: 44, scope: !3412)
!3414 = !DILocation(line: 99, column: 56, scope: !3412)
!3415 = !DILocation(line: 99, column: 6, scope: !3412)
!3416 = !DILocation(line: 106, column: 7, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3418, file: !128, line: 106, column: 7)
!3418 = distinct !DILexicalBlock(scope: !3408, file: !128, line: 99, column: 63)
!3419 = !DILocation(line: 106, column: 13, scope: !3417)
!3420 = !DILocation(line: 106, column: 11, scope: !3417)
!3421 = !DILocation(line: 106, column: 7, scope: !3418)
!3422 = !DILocation(line: 107, column: 11, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3417, file: !128, line: 106, column: 31)
!3424 = !DILocation(line: 107, column: 8, scope: !3423)
!3425 = !DILocation(line: 108, column: 14, scope: !3423)
!3426 = !DILocation(line: 108, column: 11, scope: !3423)
!3427 = !DILocation(line: 109, column: 16, scope: !3423)
!3428 = !DILocation(line: 109, column: 13, scope: !3423)
!3429 = !DILocation(line: 110, column: 3, scope: !3423)
!3430 = !DILocation(line: 111, column: 8, scope: !3417)
!3431 = !DILocation(line: 112, column: 2, scope: !3418)
!3432 = !DILocation(line: 116, column: 6, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3341, file: !128, line: 116, column: 6)
!3434 = !DILocation(line: 116, column: 10, scope: !3433)
!3435 = !DILocation(line: 116, column: 14, scope: !3433)
!3436 = !DILocation(line: 116, column: 17, scope: !3437)
!3437 = !DILexicalBlockFile(scope: !3433, file: !128, discriminator: 1)
!3438 = !DILocation(line: 116, column: 26, scope: !3437)
!3439 = !DILocation(line: 116, column: 6, scope: !3437)
!3440 = !DILocation(line: 117, column: 9, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3433, file: !128, line: 116, column: 31)
!3442 = !DILocation(line: 117, column: 15, scope: !3441)
!3443 = !DILocation(line: 117, column: 20, scope: !3441)
!3444 = !DILocation(line: 117, column: 27, scope: !3441)
!3445 = !DILocation(line: 117, column: 33, scope: !3441)
!3446 = !DILocation(line: 117, column: 25, scope: !3441)
!3447 = !DILocation(line: 117, column: 54, scope: !3441)
!3448 = !DILocation(line: 117, column: 52, scope: !3441)
!3449 = !DILocation(line: 117, column: 7, scope: !3441)
!3450 = !DILocation(line: 118, column: 11, scope: !3441)
!3451 = !DILocation(line: 118, column: 19, scope: !3441)
!3452 = !DILocation(line: 118, column: 28, scope: !3441)
!3453 = !DILocation(line: 118, column: 24, scope: !3441)
!3454 = !DILocation(line: 118, column: 3, scope: !3455)
!3455 = !DILexicalBlockFile(scope: !3441, file: !128, discriminator: 1)
!3456 = !DILocation(line: 119, column: 17, scope: !3441)
!3457 = !DILocation(line: 119, column: 13, scope: !3441)
!3458 = !DILocation(line: 119, column: 10, scope: !3441)
!3459 = !DILocation(line: 120, column: 14, scope: !3441)
!3460 = !DILocation(line: 120, column: 10, scope: !3441)
!3461 = !DILocation(line: 120, column: 7, scope: !3441)
!3462 = !DILocation(line: 121, column: 12, scope: !3441)
!3463 = !DILocation(line: 122, column: 2, scope: !3441)
!3464 = !DILocation(line: 124, column: 6, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3341, file: !128, line: 124, column: 6)
!3466 = !DILocation(line: 124, column: 6, scope: !3341)
!3467 = !DILocation(line: 125, column: 9, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3465, file: !128, line: 124, column: 11)
!3469 = !DILocation(line: 125, column: 15, scope: !3468)
!3470 = !DILocation(line: 125, column: 25, scope: !3468)
!3471 = !DILocation(line: 125, column: 23, scope: !3468)
!3472 = !DILocation(line: 125, column: 7, scope: !3468)
!3473 = !DILocation(line: 126, column: 11, scope: !3468)
!3474 = !DILocation(line: 126, column: 19, scope: !3468)
!3475 = !DILocation(line: 126, column: 24, scope: !3468)
!3476 = !DILocation(line: 126, column: 3, scope: !3468)
!3477 = !DILocation(line: 127, column: 2, scope: !3468)
!3478 = !DILocation(line: 129, column: 20, scope: !3341)
!3479 = !DILocation(line: 129, column: 26, scope: !3341)
!3480 = !DILocation(line: 129, column: 2, scope: !3341)
!3481 = !DILocation(line: 129, column: 8, scope: !3341)
!3482 = !DILocation(line: 129, column: 18, scope: !3341)
!3483 = !DILocation(line: 132, column: 6, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3341, file: !128, line: 132, column: 6)
!3485 = !DILocation(line: 132, column: 12, scope: !3484)
!3486 = !DILocation(line: 132, column: 22, scope: !3484)
!3487 = !DILocation(line: 132, column: 6, scope: !3341)
!3488 = !DILocation(line: 133, column: 30, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3484, file: !128, line: 132, column: 27)
!3490 = !DILocation(line: 133, column: 36, scope: !3489)
!3491 = !DILocation(line: 134, column: 13, scope: !3489)
!3492 = !DILocation(line: 134, column: 19, scope: !3489)
!3493 = !DILocation(line: 133, column: 43, scope: !3489)
!3494 = !DILocation(line: 133, column: 29, scope: !3489)
!3495 = !DILocation(line: 134, column: 30, scope: !3489)
!3496 = !DILocation(line: 133, column: 26, scope: !3489)
!3497 = !DILocation(line: 133, column: 20, scope: !3489)
!3498 = !DILocation(line: 133, column: 3, scope: !3489)
!3499 = !DILocation(line: 133, column: 9, scope: !3489)
!3500 = !DILocation(line: 133, column: 18, scope: !3489)
!3501 = !DILocation(line: 135, column: 3, scope: !3489)
!3502 = !DILocation(line: 135, column: 9, scope: !3489)
!3503 = !DILocation(line: 135, column: 18, scope: !3489)
!3504 = !DILocation(line: 136, column: 2, scope: !3489)
!3505 = !DILocation(line: 137, column: 3, scope: !3484)
!3506 = !DILocation(line: 137, column: 9, scope: !3484)
!3507 = !DILocation(line: 137, column: 18, scope: !3484)
!3508 = !DILocation(line: 138, column: 1, scope: !3341)
!3509 = distinct !DISubprogram(name: "scratch_update", scope: !128, file: !128, line: 141, type: !2324, isLocal: true, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !287)
!3510 = !DILocalVariable(name: "strm", arg: 1, scope: !3509, file: !128, line: 141, type: !365)
!3511 = !DILocation(line: 141, column: 41, scope: !3509)
!3512 = !DILocalVariable(name: "target", scope: !3509, file: !128, line: 143, type: !121)
!3513 = !DILocation(line: 143, column: 11, scope: !3509)
!3514 = !DILocalVariable(name: "src", scope: !3509, file: !128, line: 144, type: !142)
!3515 = !DILocation(line: 144, column: 17, scope: !3509)
!3516 = !DILocalVariable(name: "in_scratch_bytes", scope: !3509, file: !128, line: 145, type: !35)
!3517 = !DILocation(line: 145, column: 11, scope: !3509)
!3518 = !DILocalVariable(name: "scratch_offs", scope: !3509, file: !128, line: 146, type: !35)
!3519 = !DILocation(line: 146, column: 11, scope: !3509)
!3520 = !DILocalVariable(name: "cnt", scope: !3509, file: !128, line: 147, type: !40)
!3521 = !DILocation(line: 147, column: 11, scope: !3509)
!3522 = !DILocalVariable(name: "src_offs", scope: !3509, file: !128, line: 148, type: !3357)
!3523 = !DILocation(line: 148, column: 10, scope: !3509)
!3524 = !DILocation(line: 150, column: 22, scope: !3509)
!3525 = !DILocation(line: 150, column: 28, scope: !3509)
!3526 = !DILocation(line: 150, column: 43, scope: !3509)
!3527 = !DILocation(line: 150, column: 49, scope: !3509)
!3528 = !DILocation(line: 150, column: 41, scope: !3509)
!3529 = !DILocation(line: 150, column: 61, scope: !3509)
!3530 = !DILocation(line: 150, column: 21, scope: !3509)
!3531 = !DILocation(line: 150, column: 19, scope: !3509)
!3532 = !DILocation(line: 153, column: 27, scope: !3509)
!3533 = !DILocation(line: 153, column: 33, scope: !3509)
!3534 = !DILocation(line: 153, column: 17, scope: !3509)
!3535 = !DILocation(line: 153, column: 47, scope: !3509)
!3536 = !DILocation(line: 154, column: 16, scope: !3509)
!3537 = !DILocation(line: 154, column: 22, scope: !3509)
!3538 = !DILocation(line: 154, column: 6, scope: !3509)
!3539 = !DILocation(line: 154, column: 4, scope: !3509)
!3540 = !DILocation(line: 155, column: 6, scope: !3509)
!3541 = !DILocation(line: 155, column: 12, scope: !3509)
!3542 = !DILocation(line: 155, column: 4, scope: !3509)
!3543 = !DILocation(line: 156, column: 6, scope: !3509)
!3544 = !DILocation(line: 156, column: 12, scope: !3509)
!3545 = !DILocation(line: 156, column: 4, scope: !3509)
!3546 = !DILocation(line: 153, column: 15, scope: !3509)
!3547 = !DILocation(line: 159, column: 11, scope: !3509)
!3548 = !DILocation(line: 159, column: 17, scope: !3509)
!3549 = !DILocation(line: 159, column: 22, scope: !3509)
!3550 = !DILocation(line: 160, column: 5, scope: !3509)
!3551 = !DILocation(line: 160, column: 11, scope: !3509)
!3552 = !DILocation(line: 160, column: 23, scope: !3509)
!3553 = !DILocation(line: 160, column: 29, scope: !3509)
!3554 = !DILocation(line: 160, column: 21, scope: !3509)
!3555 = !DILocation(line: 160, column: 36, scope: !3509)
!3556 = !DILocation(line: 160, column: 42, scope: !3509)
!3557 = !DILocation(line: 160, column: 56, scope: !3509)
!3558 = !DILocation(line: 159, column: 27, scope: !3509)
!3559 = !DILocation(line: 159, column: 9, scope: !3509)
!3560 = !DILocation(line: 163, column: 13, scope: !3509)
!3561 = !DILocation(line: 163, column: 26, scope: !3509)
!3562 = !DILocation(line: 163, column: 32, scope: !3509)
!3563 = !DILocation(line: 163, column: 30, scope: !3509)
!3564 = !DILocation(line: 163, column: 11, scope: !3509)
!3565 = !DILocation(line: 164, column: 6, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3509, file: !128, line: 164, column: 6)
!3567 = !DILocation(line: 164, column: 15, scope: !3566)
!3568 = !DILocation(line: 164, column: 6, scope: !3509)
!3569 = !DILocation(line: 165, column: 10, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3566, file: !128, line: 164, column: 21)
!3571 = !DILocation(line: 165, column: 23, scope: !3570)
!3572 = !DILocation(line: 165, column: 9, scope: !3570)
!3573 = !DILocation(line: 165, column: 7, scope: !3570)
!3574 = !DILocation(line: 166, column: 25, scope: !3570)
!3575 = !DILocation(line: 166, column: 36, scope: !3570)
!3576 = !DILocation(line: 166, column: 34, scope: !3570)
!3577 = !DILocation(line: 166, column: 3, scope: !3570)
!3578 = !DILocation(line: 166, column: 9, scope: !3570)
!3579 = !DILocation(line: 166, column: 23, scope: !3570)
!3580 = !DILocation(line: 167, column: 2, scope: !3570)
!3581 = !DILocation(line: 169, column: 3, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3566, file: !128, line: 167, column: 9)
!3583 = !DILocation(line: 169, column: 9, scope: !3582)
!3584 = !DILocation(line: 169, column: 23, scope: !3582)
!3585 = !DILocation(line: 170, column: 9, scope: !3582)
!3586 = !DILocation(line: 170, column: 28, scope: !3582)
!3587 = !DILocation(line: 170, column: 40, scope: !3582)
!3588 = !DILocation(line: 170, column: 26, scope: !3582)
!3589 = !DILocation(line: 170, column: 7, scope: !3582)
!3590 = !DILocation(line: 175, column: 6, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3509, file: !128, line: 175, column: 6)
!3592 = !DILocation(line: 175, column: 12, scope: !3591)
!3593 = !DILocation(line: 175, column: 24, scope: !3591)
!3594 = !DILocation(line: 175, column: 30, scope: !3591)
!3595 = !DILocation(line: 175, column: 22, scope: !3591)
!3596 = !DILocation(line: 175, column: 6, scope: !3509)
!3597 = !DILocation(line: 177, column: 10, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3591, file: !128, line: 175, column: 45)
!3599 = !DILocation(line: 177, column: 16, scope: !3598)
!3600 = !DILocation(line: 177, column: 27, scope: !3598)
!3601 = !DILocation(line: 177, column: 33, scope: !3598)
!3602 = !DILocation(line: 177, column: 25, scope: !3598)
!3603 = !DILocation(line: 177, column: 7, scope: !3598)
!3604 = !DILocation(line: 178, column: 25, scope: !3598)
!3605 = !DILocation(line: 178, column: 31, scope: !3598)
!3606 = !DILocation(line: 178, column: 3, scope: !3598)
!3607 = !DILocation(line: 178, column: 9, scope: !3598)
!3608 = !DILocation(line: 178, column: 23, scope: !3598)
!3609 = !DILocation(line: 179, column: 2, scope: !3598)
!3610 = !DILocation(line: 181, column: 23, scope: !3509)
!3611 = !DILocation(line: 181, column: 27, scope: !3509)
!3612 = !DILocation(line: 181, column: 34, scope: !3509)
!3613 = !DILocation(line: 181, column: 47, scope: !3509)
!3614 = !DILocation(line: 181, column: 31, scope: !3509)
!3615 = !DILocation(line: 181, column: 2, scope: !3509)
!3616 = !DILocation(line: 181, column: 8, scope: !3509)
!3617 = !DILocation(line: 181, column: 21, scope: !3509)
!3618 = !DILocation(line: 182, column: 21, scope: !3509)
!3619 = !DILocation(line: 182, column: 34, scope: !3509)
!3620 = !DILocation(line: 182, column: 2, scope: !3509)
!3621 = !DILocation(line: 182, column: 8, scope: !3509)
!3622 = !DILocation(line: 182, column: 19, scope: !3509)
!3623 = !DILocation(line: 186, column: 6, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3509, file: !128, line: 186, column: 6)
!3625 = !DILocation(line: 186, column: 10, scope: !3624)
!3626 = !DILocation(line: 186, column: 14, scope: !3624)
!3627 = !DILocation(line: 186, column: 17, scope: !3628)
!3628 = !DILexicalBlockFile(scope: !3624, file: !128, discriminator: 1)
!3629 = !DILocation(line: 186, column: 26, scope: !3628)
!3630 = !DILocation(line: 186, column: 6, scope: !3628)
!3631 = !DILocation(line: 187, column: 9, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3624, file: !128, line: 186, column: 31)
!3633 = !DILocation(line: 187, column: 15, scope: !3632)
!3634 = !DILocation(line: 187, column: 20, scope: !3632)
!3635 = !DILocation(line: 187, column: 27, scope: !3632)
!3636 = !DILocation(line: 187, column: 33, scope: !3632)
!3637 = !DILocation(line: 187, column: 25, scope: !3632)
!3638 = !DILocation(line: 187, column: 54, scope: !3632)
!3639 = !DILocation(line: 187, column: 52, scope: !3632)
!3640 = !DILocation(line: 187, column: 7, scope: !3632)
!3641 = !DILocation(line: 188, column: 11, scope: !3632)
!3642 = !DILocation(line: 188, column: 19, scope: !3632)
!3643 = !DILocation(line: 188, column: 28, scope: !3632)
!3644 = !DILocation(line: 188, column: 24, scope: !3632)
!3645 = !DILocation(line: 188, column: 3, scope: !3646)
!3646 = !DILexicalBlockFile(scope: !3632, file: !128, discriminator: 1)
!3647 = !DILocation(line: 189, column: 17, scope: !3632)
!3648 = !DILocation(line: 189, column: 13, scope: !3632)
!3649 = !DILocation(line: 189, column: 10, scope: !3632)
!3650 = !DILocation(line: 190, column: 14, scope: !3632)
!3651 = !DILocation(line: 190, column: 10, scope: !3632)
!3652 = !DILocation(line: 190, column: 7, scope: !3632)
!3653 = !DILocation(line: 191, column: 12, scope: !3632)
!3654 = !DILocation(line: 192, column: 2, scope: !3632)
!3655 = !DILocation(line: 194, column: 6, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !3509, file: !128, line: 194, column: 6)
!3657 = !DILocation(line: 194, column: 6, scope: !3509)
!3658 = !DILocation(line: 195, column: 9, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3656, file: !128, line: 194, column: 11)
!3660 = !DILocation(line: 195, column: 15, scope: !3659)
!3661 = !DILocation(line: 195, column: 25, scope: !3659)
!3662 = !DILocation(line: 195, column: 23, scope: !3659)
!3663 = !DILocation(line: 195, column: 7, scope: !3659)
!3664 = !DILocation(line: 196, column: 11, scope: !3659)
!3665 = !DILocation(line: 196, column: 19, scope: !3659)
!3666 = !DILocation(line: 196, column: 24, scope: !3659)
!3667 = !DILocation(line: 196, column: 3, scope: !3659)
!3668 = !DILocation(line: 197, column: 2, scope: !3659)
!3669 = !DILocation(line: 198, column: 1, scope: !3509)
