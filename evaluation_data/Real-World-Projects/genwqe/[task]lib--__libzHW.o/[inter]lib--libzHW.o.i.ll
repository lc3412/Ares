; ModuleID = '/home/lichi/Desktop/genwqe/[task]lib--__libzHW.o/[inter]lib--libzHW.o.i'
source_filename = "/home/lichi/Desktop/genwqe/[task]lib--__libzHW.o/[inter]lib--libzHW.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.err_lookup = type { i32, i8* }
%struct.zedc_dev_t = type { i32, i32, %struct.card_dev_t*, i32, i32, i32 }
%struct.card_dev_t = type opaque
%struct.ddcb_cmd = type { i64, i64, i8, i8, i8, i8, i16, i16, i16, i16, i32, i64, i64, i64, i64, [64 x i8], %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i64, [96 x i8] }
%struct.zedc_stream_s = type { i32, i32, i32, i32, i32, i32, i32, i8*, i32, i64, i8*, i32, i64, i32, i32, i8*, %struct.ddcb_cmd, i16, i16, i32, i32, i32, %struct.zedc_fifo, %struct.zedc_fifo, i32, i16, i32, i32, i8, i32, i32, i32, i32, i32, %struct.zedc_wsp*, i32, [3 x i32], i32, i32, i32, i32, %struct.gzedc_header_s*, i32, i16, i8, i8, i32, i32, i8, i8, i32, i16, i8, i16, i32, i32, i32, i64, i32, i32, i16, i8, i16, i32, i32, [18 x i8], i16, i32, i32, [18 x i8] }
%struct.zedc_fifo = type { i32, i32, [256 x i8] }
%struct.zedc_wsp = type { [2 x [32784 x i8]], [512 x i8] }
%struct.gzedc_header_s = type { i32, i64, i32, i32, i8*, i32, i32, i8*, i32, i8*, i32, i32, i32 }
%struct.zedc_asiv_infl = type { i64, i32, i32, i64, i32, i32, i64, i32, i32, i64, i32, i16, i8, i8, i64, i32, i32, i64, i64 }
%struct.zedc_asiv_defl = type { i64, i32, i32, i64, i32, i32, i64, i32, i32, i64, i64, i64, i32, i32, i64, [7 x i8], i8 }
%struct.zedc_asv_defl = type { i16, [5 x i8], i8, i64, i32, i32, i32, i32, [24 x i8], i8, [7 x i8] }
%struct.zedc_asv_infl = type { i16, i16, i8, i8, i8, i8, i32, i8, i8, i16, i32, i32, i32, i32, [3 x i64], i8, i8, i16, i16, i16 }

@zedc_log = global %struct._IO_FILE* null, align 8
@zedc_dbg = global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"4.0.20-5-g2944\00", align 1
@zedc_nerr = internal global i32 19, align 4
@zedc_errlist = internal global [19 x %struct.err_lookup] [%struct.err_lookup { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0) }, %struct.err_lookup { i32 -1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.23, i32 0, i32 0) }, %struct.err_lookup { i32 -2, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.24, i32 0, i32 0) }, %struct.err_lookup { i32 -3, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.25, i32 0, i32 0) }, %struct.err_lookup { i32 -4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0) }, %struct.err_lookup { i32 -5, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.27, i32 0, i32 0) }, %struct.err_lookup { i32 -307, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.28, i32 0, i32 0) }, %struct.err_lookup { i32 -308, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0) }, %struct.err_lookup { i32 -309, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i32 0, i32 0) }, %struct.err_lookup { i32 -310, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i32 0, i32 0) }, %struct.err_lookup { i32 -311, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.32, i32 0, i32 0) }, %struct.err_lookup { i32 -312, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i32 0, i32 0) }, %struct.err_lookup { i32 -313, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i32 0, i32 0) }, %struct.err_lookup { i32 -314, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.35, i32 0, i32 0) }, %struct.err_lookup { i32 -315, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i32 0, i32 0) }, %struct.err_lookup { i32 -316, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.37, i32 0, i32 0) }, %struct.err_lookup { i32 -317, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i32 0, i32 0) }, %struct.err_lookup { i32 -318, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.39, i32 0, i32 0) }, %struct.err_lookup { i32 -319, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.40, i32 0, i32 0) }], align 16
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [67 x i8] c"%s finished (avail_in=%d avail_out=%d total_in=%ld total_out=%ld)\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"  GZIP CRC32=0x%08x (eval=0x%08x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"  GZIP ISIZE=0x%x (%u)\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"  ZLIB ADLER32=0x%08x (eval=0x%08x)\0A\00", align 1
@.str.6 = private unnamed_addr constant [549 x i8] c"%08x.%08x %s:%u: Info: Inflate ASIV (sent):\0A  [20] IN_BUFF         = 0x%llx\0A  [28] IN_BUFF_LEN     = 0x%x (%d)\0A  [30] OUT_BUFF        = 0x%llx\0A  [38] OUT_BUFF_LEN    = 0x%x (%d)\0A  [40] IN_DICT         = 0x%llx\0A  [60] IN_DICT_LEN     = 0x%x (%d)\0A  [40] OUT_DICT        = 0x%llx\0A  [60] OUT_DICT_LEN    = 0x%x (%d)\0A  [50] IN_HDR_SCRATCH  = 0x%llx\0A  [58] IN_SCRATCH_LEN  = 0x%x (%u)\0A  [5c] IN_HDR_BITS     = %u (%u bytes + %u bits)\0A  [5e] IN_HDR_IB       = %u\0A  [5e] SCRATCH_IB      = %u\0A  [2c] IN_CRC32        = 0x%08x\0A  [3c] IN_ADLER32      = 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"libzHW.c\00", align 1
@.str.8 = private unnamed_addr constant [123 x i8] c"%08x.%08x %s:%u: Info: \0A       ATS             = 0x%08llx\0A       CMD             = 0x%02x\0A       CMDOPTS         = 0x%02x\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"%08x.%08x %s:%u: Info: Workspace/Dict0:\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"%08x.%08x %s:%u: Info: Workspace/Dict1:\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"%08x.%08x %s:%u: Info: Workspace/Tree:\0A\00", align 1
@.str.12 = private unnamed_addr constant [407 x i8] c"%08x.%08x %s:%u: Info: Deflate ASIV (sent):\0A  [20] IN_BUFF         = 0x%llx\0A  [28] IN_BUFF_LEN     = 0x%x (%d)\0A  [2c] IN_CRC32        = 0x%08x\0A  [30] OUT_BUFF        = 0x%llx\0A  [38] OUT_BUFF_LEN    = 0x%x (%d)\0A  [3c] IN_ADLER32      = 0x%08x\0A  [40] IN_DICT         = 0x%llx\0A  [48] IN_DICT_LEN     = 0x%x (%d)\0A  [60] OUT_DICT        = 0x%llx\0A  [68] OUT_DICT_LEN    = 0x%x (%d)\0A  [7f] INUMBITS        = 0x%x\0A\00", align 1
@.str.13 = private unnamed_addr constant [73 x i8] c"%08x.%08x %s:%u: Info:   [7f] IBITS: %02x %02x %02x %02x %02x %02x %02x\0A\00", align 1
@.str.14 = private unnamed_addr constant [294 x i8] c"%08x.%08x %s:%u: Info: Deflate ASV (received):\0A  [80] OUT_DICT_USED    = 0x%x (%d)\0A  [87] ONUMBITS         = 0x%x (%u)\0A  [90] OUT_CRC32        = 0x%08x\0A  [94] OUT_ADLER32      = 0x%08x\0A  [98] INP_PROCESSED    = 0x%x (%d)\0A  [9c] OUTP_RETURNED    = 0x%x (%d)\0A  [b8] OUT_DICT_OFFS    = 0x%x (%d)\0A\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"%08x.%08x %s:%u: Info:   OBITS:\0A\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"%08x.%08x %s:%u: Info:   OBITS_EXTRA:\0A\00", align 1
@.str.17 = private unnamed_addr constant [511 x i8] c"%08x.%08x %s:%u: Info: Inflate ASV (received):\0A  [80] OUT_DICT_USED    = 0x%x (%u)\0A  [82] COPYBLOCK_LEN    = 0x%x (%u)\0A  [85] INFL_STAT        = 0x%x\0A  [87] PROC_BITS        = 0x%x\0A  [88] HDR_START        = 0x%x\0A  [8d] HDR_START_BITS   = 0x%x\0A  [8e] OUT_HDR_BITS     = 0x%x (%u) (%u bytes + %u bits)\0A  [90] OUT_CRC32        = 0x%08x\0A  [94] OUT_ADLER32      = 0x%08x\0A  [98] INP_PROCESSED    = 0x%x (%u)\0A  [9c] OUTP_RETURNED    = 0x%x (%u)\0A  [b8] OUT_DICT_OFFS    = 0x%x (%u)\0A  [b8] OBYTES_IN_DICT   = 0x%x (%u)\0A\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"DDCB_DEBUG\00", align 1
@.str.19 = private unnamed_addr constant [91 x i8] c"%08x.%08x %s:%u: Info:   DDCB returned rc=%d card_rc=%d (RETC=%03x ATTN=%04x PROGR=%x) %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"ERR\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"system error, please see errno\00", align 1
@.str.24 = private unnamed_addr constant [76 x i8] c"stream state was inconsistent (for example if next_in or next_out was NULL)\00", align 1
@.str.25 = private unnamed_addr constant [43 x i8] c"invalid or incomplete inflate/deflate data\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.27 = private unnamed_addr constant [69 x i8] c"no progress is possible (for example avail_in or avail_out was zero)\00", align 1
@.str.28 = private unnamed_addr constant [88 x i8] c"problem with the accelerator card detected, please see errno, carderr and returned data\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"invalid parameter\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"returned invalid length\00", align 1
@.str.31 = private unnamed_addr constant [39 x i8] c"hardware returned invalid output bytes\00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"hardware too many tree bits\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"illegal zlib header found\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"adler32 mismatch\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"illegal gzip header found\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"crc32 mismatch\00", align 1
@.str.37 = private unnamed_addr constant [31 x i8] c"currently unsupported function\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"dictionary overrun\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"further input data missing\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"illegal application id\00", align 1

; Function Attrs: nounwind uwtable
define i8* @zedc_Version() #0 !dbg !456 {
  ret i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), !dbg !460
}

; Function Attrs: nounwind uwtable
define void @zedc_set_logfile(%struct._IO_FILE*) #0 !dbg !461 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !464, metadata !465), !dbg !466
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !467
  store %struct._IO_FILE* %3, %struct._IO_FILE** @zedc_log, align 8, !dbg !468
  ret void, !dbg !469
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @zedc_clearerr(%struct.zedc_dev_t*) #0 !dbg !470 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zedc_dev_t*, align 8
  store %struct.zedc_dev_t* %0, %struct.zedc_dev_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_dev_t** %3, metadata !473, metadata !465), !dbg !474
  %4 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %3, align 8, !dbg !475
  %5 = icmp ne %struct.zedc_dev_t* %4, null, !dbg !475
  br i1 %5, label %7, label %6, !dbg !477

; <label>:6:                                      ; preds = %1
  store i32 -308, i32* %2, align 4, !dbg !478
  br label %12, !dbg !478

; <label>:7:                                      ; preds = %1
  %8 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %3, align 8, !dbg !479
  %9 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %8, i32 0, i32 1, !dbg !480
  store i32 0, i32* %9, align 4, !dbg !481
  %10 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %3, align 8, !dbg !482
  %11 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %10, i32 0, i32 3, !dbg !483
  store i32 0, i32* %11, align 8, !dbg !484
  store i32 0, i32* %2, align 4, !dbg !485
  br label %12, !dbg !485

; <label>:12:                                     ; preds = %7, %6
  %13 = load i32, i32* %2, align 4, !dbg !486
  ret i32 %13, !dbg !486
}

; Function Attrs: nounwind uwtable
define i8* @zedc_strerror(i32) #0 !dbg !487 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !490, metadata !465), !dbg !491
  call void @llvm.dbg.declare(metadata i32* %4, metadata !492, metadata !465), !dbg !493
  store i32 0, i32* %4, align 4, !dbg !494
  br label %5, !dbg !495

; <label>:5:                                      ; preds = %23, %1
  %6 = load i32, i32* %4, align 4, !dbg !496
  %7 = load i32, i32* @zedc_nerr, align 4, !dbg !498
  %8 = icmp slt i32 %6, %7, !dbg !499
  br i1 %8, label %9, label %26, !dbg !500

; <label>:9:                                      ; preds = %5
  %10 = load i32, i32* %3, align 4, !dbg !501
  %11 = load i32, i32* %4, align 4, !dbg !504
  %12 = sext i32 %11 to i64, !dbg !505
  %13 = getelementptr inbounds [19 x %struct.err_lookup], [19 x %struct.err_lookup]* @zedc_errlist, i64 0, i64 %12, !dbg !505
  %14 = getelementptr inbounds %struct.err_lookup, %struct.err_lookup* %13, i32 0, i32 0, !dbg !506
  %15 = load i32, i32* %14, align 16, !dbg !506
  %16 = icmp eq i32 %10, %15, !dbg !507
  br i1 %16, label %17, label %23, !dbg !508

; <label>:17:                                     ; preds = %9
  %18 = load i32, i32* %4, align 4, !dbg !509
  %19 = sext i32 %18 to i64, !dbg !510
  %20 = getelementptr inbounds [19 x %struct.err_lookup], [19 x %struct.err_lookup]* @zedc_errlist, i64 0, i64 %19, !dbg !510
  %21 = getelementptr inbounds %struct.err_lookup, %struct.err_lookup* %20, i32 0, i32 1, !dbg !511
  %22 = load i8*, i8** %21, align 8, !dbg !511
  store i8* %22, i8** %2, align 8, !dbg !512
  br label %27, !dbg !512

; <label>:23:                                     ; preds = %9
  %24 = load i32, i32* %4, align 4, !dbg !513
  %25 = add nsw i32 %24, 1, !dbg !513
  store i32 %25, i32* %4, align 4, !dbg !513
  br label %5, !dbg !514, !llvm.loop !516

; <label>:26:                                     ; preds = %5
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8** %2, align 8, !dbg !517
  br label %27, !dbg !517

; <label>:27:                                     ; preds = %26, %17
  %28 = load i8*, i8** %2, align 8, !dbg !518
  ret i8* %28, !dbg !518
}

; Function Attrs: nounwind uwtable
define i32 @zedc_carderr(%struct.zedc_dev_t*) #0 !dbg !519 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zedc_dev_t*, align 8
  store %struct.zedc_dev_t* %0, %struct.zedc_dev_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_dev_t** %3, metadata !520, metadata !465), !dbg !521
  %4 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %3, align 8, !dbg !522
  %5 = icmp ne %struct.zedc_dev_t* %4, null, !dbg !522
  br i1 %5, label %7, label %6, !dbg !524

; <label>:6:                                      ; preds = %1
  store i32 -308, i32* %2, align 4, !dbg !525
  br label %11, !dbg !525

; <label>:7:                                      ; preds = %1
  %8 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %3, align 8, !dbg !526
  %9 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %8, i32 0, i32 3, !dbg !527
  %10 = load i32, i32* %9, align 8, !dbg !527
  store i32 %10, i32* %2, align 4, !dbg !528
  br label %11, !dbg !528

; <label>:11:                                     ; preds = %7, %6
  %12 = load i32, i32* %2, align 4, !dbg !529
  ret i32 %12, !dbg !529
}

; Function Attrs: nounwind uwtable
define i32 @zedc_liberr(%struct.zedc_dev_t*) #0 !dbg !530 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zedc_dev_t*, align 8
  store %struct.zedc_dev_t* %0, %struct.zedc_dev_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_dev_t** %3, metadata !531, metadata !465), !dbg !532
  %4 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %3, align 8, !dbg !533
  %5 = icmp ne %struct.zedc_dev_t* %4, null, !dbg !533
  br i1 %5, label %7, label %6, !dbg !535

; <label>:6:                                      ; preds = %1
  store i32 -308, i32* %2, align 4, !dbg !536
  br label %11, !dbg !536

; <label>:7:                                      ; preds = %1
  %8 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %3, align 8, !dbg !537
  %9 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %8, i32 0, i32 1, !dbg !538
  %10 = load i32, i32* %9, align 4, !dbg !538
  store i32 %10, i32* %2, align 4, !dbg !539
  br label %11, !dbg !539

; <label>:11:                                     ; preds = %7, %6
  %12 = load i32, i32* %2, align 4, !dbg !540
  ret i32 %12, !dbg !540
}

; Function Attrs: nounwind uwtable
define %struct.ddcb_cmd* @zedc_last_cmd(%struct.zedc_stream_s*) #0 !dbg !541 {
  %2 = alloca %struct.ddcb_cmd*, align 8
  %3 = alloca %struct.zedc_stream_s*, align 8
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %3, metadata !700, metadata !465), !dbg !701
  %4 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !702
  %5 = icmp ne %struct.zedc_stream_s* %4, null, !dbg !702
  br i1 %5, label %7, label %6, !dbg !704

; <label>:6:                                      ; preds = %1
  store %struct.ddcb_cmd* null, %struct.ddcb_cmd** %2, align 8, !dbg !705
  br label %10, !dbg !705

; <label>:7:                                      ; preds = %1
  %8 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !706
  %9 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %8, i32 0, i32 16, !dbg !707
  store %struct.ddcb_cmd* %9, %struct.ddcb_cmd** %2, align 8, !dbg !708
  br label %10, !dbg !708

; <label>:10:                                     ; preds = %7, %6
  %11 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %2, align 8, !dbg !709
  ret %struct.ddcb_cmd* %11, !dbg !709
}

; Function Attrs: nounwind uwtable
define i32 @zedc_pstatus(%struct.zedc_stream_s*, i8*) #0 !dbg !710 {
  %3 = alloca %struct.zedc_stream_s*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %3, metadata !713, metadata !465), !dbg !714
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !715, metadata !465), !dbg !716
  call void @llvm.dbg.declare(metadata i32* %5, metadata !717, metadata !465), !dbg !718
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !719
  %7 = load i8*, i8** %4, align 8, !dbg !720
  %8 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !721
  %9 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %8, i32 0, i32 8, !dbg !722
  %10 = load i32, i32* %9, align 8, !dbg !722
  %11 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !723
  %12 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %11, i32 0, i32 11, !dbg !724
  %13 = load i32, i32* %12, align 8, !dbg !724
  %14 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !725
  %15 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %14, i32 0, i32 9, !dbg !726
  %16 = load i64, i64* %15, align 8, !dbg !726
  %17 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !727
  %18 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %17, i32 0, i32 12, !dbg !728
  %19 = load i64, i64* %18, align 8, !dbg !728
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i32 0, i32 0), i8* %7, i32 %10, i32 %13, i64 %16, i64 %19), !dbg !729
  store i32 %20, i32* %5, align 4, !dbg !730
  %21 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !731
  %22 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %21, i32 0, i32 20, !dbg !732
  %23 = load i32, i32* %22, align 8, !dbg !732
  switch i32 %23, label %56 [
    i32 2, label %24
    i32 1, label %45
  ], !dbg !733

; <label>:24:                                     ; preds = %2
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !734
  %26 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !736
  %27 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %26, i32 0, i32 39, !dbg !737
  %28 = load i32, i32* %27, align 8, !dbg !737
  %29 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !738
  %30 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %29, i32 0, i32 13, !dbg !739
  %31 = load i32, i32* %30, align 8, !dbg !739
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0), i32 %28, i32 %31), !dbg !740
  %33 = load i32, i32* %5, align 4, !dbg !741
  %34 = add nsw i32 %33, %32, !dbg !741
  store i32 %34, i32* %5, align 4, !dbg !741
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !742
  %36 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !743
  %37 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %36, i32 0, i32 37, !dbg !744
  %38 = load i32, i32* %37, align 8, !dbg !744
  %39 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !745
  %40 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %39, i32 0, i32 37, !dbg !746
  %41 = load i32, i32* %40, align 8, !dbg !746
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), i32 %38, i32 %41), !dbg !747
  %43 = load i32, i32* %5, align 4, !dbg !748
  %44 = add nsw i32 %43, %42, !dbg !748
  store i32 %44, i32* %5, align 4, !dbg !748
  br label %57, !dbg !749

; <label>:45:                                     ; preds = %2
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !750
  %47 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !751
  %48 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %47, i32 0, i32 38, !dbg !752
  %49 = load i32, i32* %48, align 4, !dbg !752
  %50 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !753
  %51 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %50, i32 0, i32 14, !dbg !754
  %52 = load i32, i32* %51, align 4, !dbg !754
  %53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i32 0, i32 0), i32 %49, i32 %52), !dbg !755
  %54 = load i32, i32* %5, align 4, !dbg !756
  %55 = add nsw i32 %54, %53, !dbg !756
  store i32 %55, i32* %5, align 4, !dbg !756
  br label %57, !dbg !757

; <label>:56:                                     ; preds = %2
  br label %57, !dbg !758

; <label>:57:                                     ; preds = %56, %45, %24
  %58 = load i32, i32* %5, align 4, !dbg !759
  ret i32 %58, !dbg !760
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @zedc_lib_debug(i32) #0 !dbg !761 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !764, metadata !465), !dbg !765
  %3 = load i32, i32* %2, align 4, !dbg !766
  store i32 %3, i32* @zedc_dbg, align 4, !dbg !767
  ret void, !dbg !768
}

; Function Attrs: nounwind uwtable
define void @zedc_asiv_infl_print(%struct.zedc_stream_s*) #0 !dbg !769 {
  %2 = alloca %struct.zedc_stream_s*, align 8
  %3 = alloca %struct.ddcb_cmd*, align 8
  %4 = alloca %struct.zedc_wsp*, align 8
  %5 = alloca %struct.zedc_asiv_infl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %2, metadata !773, metadata !465), !dbg !774
  call void @llvm.dbg.declare(metadata %struct.ddcb_cmd** %3, metadata !775, metadata !465), !dbg !776
  %9 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !777
  %10 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %9, i32 0, i32 16, !dbg !778
  store %struct.ddcb_cmd* %10, %struct.ddcb_cmd** %3, align 8, !dbg !776
  call void @llvm.dbg.declare(metadata %struct.zedc_wsp** %4, metadata !779, metadata !465), !dbg !780
  %11 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !781
  %12 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %11, i32 0, i32 34, !dbg !782
  %13 = load %struct.zedc_wsp*, %struct.zedc_wsp** %12, align 8, !dbg !782
  store %struct.zedc_wsp* %13, %struct.zedc_wsp** %4, align 8, !dbg !780
  call void @llvm.dbg.declare(metadata %struct.zedc_asiv_infl** %5, metadata !783, metadata !465), !dbg !784
  %14 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %3, align 8, !dbg !785
  %15 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %14, i32 0, i32 16, !dbg !786
  %16 = bitcast %union.anon* %15 to %struct.anon*, !dbg !786
  %17 = getelementptr inbounds %struct.anon, %struct.anon* %16, i32 0, i32 1, !dbg !786
  %18 = getelementptr inbounds [96 x i8], [96 x i8]* %17, i32 0, i32 0, !dbg !785
  %19 = bitcast i8* %18 to %struct.zedc_asiv_infl*, !dbg !787
  store %struct.zedc_asiv_infl* %19, %struct.zedc_asiv_infl** %5, align 8, !dbg !784
  call void @llvm.dbg.declare(metadata i32* %6, metadata !788, metadata !465), !dbg !789
  %20 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %5, align 8, !dbg !790
  %21 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %20, i32 0, i32 4, !dbg !791
  %22 = load i32, i32* %21, align 1, !dbg !791
  %23 = call i32 @__fswab32(i32 %22), !dbg !792
  store i32 %23, i32* %6, align 4, !dbg !789
  call void @llvm.dbg.declare(metadata i32* %7, metadata !793, metadata !465), !dbg !794
  %24 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %5, align 8, !dbg !795
  %25 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %24, i32 0, i32 1, !dbg !796
  %26 = load i32, i32* %25, align 1, !dbg !796
  %27 = call i32 @__fswab32(i32 %26), !dbg !797
  store i32 %27, i32* %7, align 4, !dbg !794
  call void @llvm.dbg.declare(metadata i16* %8, metadata !798, metadata !465), !dbg !799
  %28 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %5, align 8, !dbg !800
  %29 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %28, i32 0, i32 11, !dbg !801
  %30 = load i16, i16* %29, align 1, !dbg !801
  %31 = call zeroext i16 @__fswab16(i16 zeroext %30), !dbg !802
  %32 = zext i16 %31 to i32, !dbg !802
  %33 = trunc i32 %32 to i16, !dbg !800
  store i16 %33, i16* %8, align 2, !dbg !799
  br label %34, !dbg !803, !llvm.loop !804

; <label>:34:                                     ; preds = %1
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !805
  %36 = icmp ne %struct._IO_FILE* %35, null, !dbg !805
  br i1 %36, label %37, label %117, !dbg !809

; <label>:37:                                     ; preds = %34
  %38 = load i32, i32* @zedc_dbg, align 4, !dbg !810
  %39 = icmp ne i32 %38, 0, !dbg !810
  br i1 %39, label %40, label %117, !dbg !812

; <label>:40:                                     ; preds = %37
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !813
  %42 = call i32 @getpid() #7, !dbg !815
  %43 = call i32 @gettid(), !dbg !816
  %44 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %5, align 8, !dbg !818
  %45 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %44, i32 0, i32 0, !dbg !819
  %46 = load i64, i64* %45, align 1, !dbg !819
  %47 = call i64 @__fswab64(i64 %46), !dbg !820
  %48 = load i32, i32* %7, align 4, !dbg !822
  %49 = load i32, i32* %7, align 4, !dbg !823
  %50 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %5, align 8, !dbg !818
  %51 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %50, i32 0, i32 3, !dbg !819
  %52 = load i64, i64* %51, align 1, !dbg !819
  %53 = call i64 @__fswab64(i64 %52), !dbg !824
  %54 = load i32, i32* %6, align 4, !dbg !822
  %55 = load i32, i32* %6, align 4, !dbg !826
  %56 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %5, align 8, !dbg !818
  %57 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %56, i32 0, i32 6, !dbg !819
  %58 = load i64, i64* %57, align 1, !dbg !819
  %59 = call i64 @__fswab64(i64 %58), !dbg !827
  %60 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %5, align 8, !dbg !818
  %61 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %60, i32 0, i32 7, !dbg !819
  %62 = load i32, i32* %61, align 1, !dbg !819
  %63 = call i32 @__fswab32(i32 %62), !dbg !829
  %64 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %5, align 8, !dbg !818
  %65 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %64, i32 0, i32 7, !dbg !819
  %66 = load i32, i32* %65, align 1, !dbg !819
  %67 = call i32 @__fswab32(i32 %66), !dbg !831
  %68 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %5, align 8, !dbg !818
  %69 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %68, i32 0, i32 14, !dbg !819
  %70 = load i64, i64* %69, align 1, !dbg !819
  %71 = call i64 @__fswab64(i64 %70), !dbg !833
  %72 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %5, align 8, !dbg !818
  %73 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %72, i32 0, i32 15, !dbg !819
  %74 = load i32, i32* %73, align 1, !dbg !819
  %75 = call i32 @__fswab32(i32 %74), !dbg !835
  %76 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %5, align 8, !dbg !818
  %77 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %76, i32 0, i32 15, !dbg !819
  %78 = load i32, i32* %77, align 1, !dbg !819
  %79 = call i32 @__fswab32(i32 %78), !dbg !837
  %80 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %5, align 8, !dbg !818
  %81 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %80, i32 0, i32 9, !dbg !819
  %82 = load i64, i64* %81, align 1, !dbg !819
  %83 = call i64 @__fswab64(i64 %82), !dbg !839
  %84 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %5, align 8, !dbg !818
  %85 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %84, i32 0, i32 10, !dbg !819
  %86 = load i32, i32* %85, align 1, !dbg !819
  %87 = call i32 @__fswab32(i32 %86), !dbg !841
  %88 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %5, align 8, !dbg !818
  %89 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %88, i32 0, i32 10, !dbg !819
  %90 = load i32, i32* %89, align 1, !dbg !819
  %91 = call i32 @__fswab32(i32 %90), !dbg !843
  %92 = load i16, i16* %8, align 2, !dbg !822
  %93 = zext i16 %92 to i32, !dbg !822
  %94 = load i16, i16* %8, align 2, !dbg !823
  %95 = zext i16 %94 to i32, !dbg !823
  %96 = sdiv i32 %95, 8, !dbg !845
  %97 = load i16, i16* %8, align 2, !dbg !846
  %98 = zext i16 %97 to i32, !dbg !846
  %99 = srem i32 %98, 8, !dbg !847
  %100 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %5, align 8, !dbg !848
  %101 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %100, i32 0, i32 12, !dbg !849
  %102 = load i8, i8* %101, align 1, !dbg !849
  %103 = zext i8 %102 to i32, !dbg !848
  %104 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %5, align 8, !dbg !850
  %105 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %104, i32 0, i32 13, !dbg !851
  %106 = load i8, i8* %105, align 1, !dbg !851
  %107 = zext i8 %106 to i32, !dbg !850
  %108 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %5, align 8, !dbg !818
  %109 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %108, i32 0, i32 2, !dbg !819
  %110 = load i32, i32* %109, align 1, !dbg !819
  %111 = call i32 @__fswab32(i32 %110), !dbg !852
  %112 = load %struct.zedc_asiv_infl*, %struct.zedc_asiv_infl** %5, align 8, !dbg !818
  %113 = getelementptr inbounds %struct.zedc_asiv_infl, %struct.zedc_asiv_infl* %112, i32 0, i32 5, !dbg !819
  %114 = load i32, i32* %113, align 1, !dbg !819
  %115 = call i32 @__fswab32(i32 %114), !dbg !854
  %116 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([549 x i8], [549 x i8]* @.str.6, i32 0, i32 0), i32 %42, i32 %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 232, i64 %47, i32 %48, i32 %49, i64 %53, i32 %54, i32 %55, i64 %59, i32 %63, i32 %67, i64 %71, i32 %75, i32 %79, i64 %83, i32 %87, i32 %91, i32 %93, i32 %96, i32 %99, i32 %103, i32 %107, i32 %111, i32 %115), !dbg !856
  br label %117, !dbg !846

; <label>:117:                                    ; preds = %40, %37, %34
  br label %118, !dbg !858

; <label>:118:                                    ; preds = %117
  br label %119, !dbg !860, !llvm.loop !861

; <label>:119:                                    ; preds = %118
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !862
  %121 = icmp ne %struct._IO_FILE* %120, null, !dbg !862
  br i1 %121, label %122, label %143, !dbg !866

; <label>:122:                                    ; preds = %119
  %123 = load i32, i32* @zedc_dbg, align 4, !dbg !867
  %124 = icmp ne i32 %123, 0, !dbg !867
  br i1 %124, label %125, label %143, !dbg !869

; <label>:125:                                    ; preds = %122
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !870
  %127 = call i32 @getpid() #7, !dbg !872
  %128 = call i32 @gettid(), !dbg !873
  %129 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %3, align 8, !dbg !875
  %130 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %129, i32 0, i32 16, !dbg !876
  %131 = bitcast %union.anon* %130 to %struct.anon*, !dbg !876
  %132 = getelementptr inbounds %struct.anon, %struct.anon* %131, i32 0, i32 0, !dbg !876
  %133 = load i64, i64* %132, align 8, !dbg !876
  %134 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %3, align 8, !dbg !877
  %135 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %134, i32 0, i32 3, !dbg !878
  %136 = load i8, i8* %135, align 1, !dbg !878
  %137 = zext i8 %136 to i32, !dbg !877
  %138 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %3, align 8, !dbg !879
  %139 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %138, i32 0, i32 6, !dbg !880
  %140 = load i16, i16* %139, align 4, !dbg !880
  %141 = zext i16 %140 to i32, !dbg !879
  %142 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %126, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.8, i32 0, i32 0), i32 %127, i32 %128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 238, i64 %133, i32 %137, i32 %141), !dbg !881
  br label %143, !dbg !883

; <label>:143:                                    ; preds = %125, %122, %119
  br label %144, !dbg !884

; <label>:144:                                    ; preds = %143
  %145 = load i32, i32* @zedc_dbg, align 4, !dbg !886
  %146 = icmp sgt i32 %145, 3, !dbg !888
  br i1 %146, label %147, label %201, !dbg !889

; <label>:147:                                    ; preds = %144
  br label %148, !dbg !890, !llvm.loop !892

; <label>:148:                                    ; preds = %147
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !893
  %150 = icmp ne %struct._IO_FILE* %149, null, !dbg !893
  br i1 %150, label %151, label %159, !dbg !897

; <label>:151:                                    ; preds = %148
  %152 = load i32, i32* @zedc_dbg, align 4, !dbg !898
  %153 = icmp ne i32 %152, 0, !dbg !898
  br i1 %153, label %154, label %159, !dbg !900

; <label>:154:                                    ; preds = %151
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !901
  %156 = call i32 @getpid() #7, !dbg !903
  %157 = call i32 @gettid(), !dbg !904
  %158 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %155, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i32 0, i32 0), i32 %156, i32 %157, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 241), !dbg !906
  br label %159, !dbg !908

; <label>:159:                                    ; preds = %154, %151, %148
  br label %160, !dbg !909

; <label>:160:                                    ; preds = %159
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !911
  %162 = load %struct.zedc_wsp*, %struct.zedc_wsp** %4, align 8, !dbg !912
  %163 = getelementptr inbounds %struct.zedc_wsp, %struct.zedc_wsp* %162, i32 0, i32 0, !dbg !913
  %164 = getelementptr inbounds [2 x [32784 x i8]], [2 x [32784 x i8]]* %163, i64 0, i64 0, !dbg !912
  %165 = getelementptr inbounds [32784 x i8], [32784 x i8]* %164, i32 0, i32 0, !dbg !912
  call void @ddcb_hexdump(%struct._IO_FILE* %161, i8* %165, i32 32784), !dbg !914
  br label %166, !dbg !915, !llvm.loop !916

; <label>:166:                                    ; preds = %160
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !917
  %168 = icmp ne %struct._IO_FILE* %167, null, !dbg !917
  br i1 %168, label %169, label %177, !dbg !921

; <label>:169:                                    ; preds = %166
  %170 = load i32, i32* @zedc_dbg, align 4, !dbg !922
  %171 = icmp ne i32 %170, 0, !dbg !922
  br i1 %171, label %172, label %177, !dbg !924

; <label>:172:                                    ; preds = %169
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !925
  %174 = call i32 @getpid() #7, !dbg !927
  %175 = call i32 @gettid(), !dbg !928
  %176 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %173, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i32 0, i32 0), i32 %174, i32 %175, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 244), !dbg !930
  br label %177, !dbg !932

; <label>:177:                                    ; preds = %172, %169, %166
  br label %178, !dbg !933

; <label>:178:                                    ; preds = %177
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !935
  %180 = load %struct.zedc_wsp*, %struct.zedc_wsp** %4, align 8, !dbg !936
  %181 = getelementptr inbounds %struct.zedc_wsp, %struct.zedc_wsp* %180, i32 0, i32 0, !dbg !937
  %182 = getelementptr inbounds [2 x [32784 x i8]], [2 x [32784 x i8]]* %181, i64 0, i64 1, !dbg !936
  %183 = getelementptr inbounds [32784 x i8], [32784 x i8]* %182, i32 0, i32 0, !dbg !936
  call void @ddcb_hexdump(%struct._IO_FILE* %179, i8* %183, i32 32784), !dbg !938
  br label %184, !dbg !939, !llvm.loop !940

; <label>:184:                                    ; preds = %178
  %185 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !941
  %186 = icmp ne %struct._IO_FILE* %185, null, !dbg !941
  br i1 %186, label %187, label %195, !dbg !945

; <label>:187:                                    ; preds = %184
  %188 = load i32, i32* @zedc_dbg, align 4, !dbg !946
  %189 = icmp ne i32 %188, 0, !dbg !946
  br i1 %189, label %190, label %195, !dbg !948

; <label>:190:                                    ; preds = %187
  %191 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !949
  %192 = call i32 @getpid() #7, !dbg !951
  %193 = call i32 @gettid(), !dbg !952
  %194 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %191, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i32 0, i32 0), i32 %192, i32 %193, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 247), !dbg !954
  br label %195, !dbg !956

; <label>:195:                                    ; preds = %190, %187, %184
  br label %196, !dbg !957

; <label>:196:                                    ; preds = %195
  %197 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !959
  %198 = load %struct.zedc_wsp*, %struct.zedc_wsp** %4, align 8, !dbg !960
  %199 = getelementptr inbounds %struct.zedc_wsp, %struct.zedc_wsp* %198, i32 0, i32 1, !dbg !961
  %200 = getelementptr inbounds [512 x i8], [512 x i8]* %199, i32 0, i32 0, !dbg !960
  call void @ddcb_hexdump(%struct._IO_FILE* %197, i8* %200, i32 512), !dbg !962
  br label %201, !dbg !963

; <label>:201:                                    ; preds = %196, %144
  ret void, !dbg !964
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__fswab32(i32) #3 !dbg !965 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !969, metadata !465), !dbg !970
  %3 = load i32, i32* %2, align 4, !dbg !971
  %4 = call i32 @__arch_swab32(i32 %3), !dbg !972
  ret i32 %4, !dbg !973
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @__fswab16(i16 zeroext) #3 !dbg !974 {
  %2 = alloca i16, align 2
  store i16 %0, i16* %2, align 2
  call void @llvm.dbg.declare(metadata i16* %2, metadata !977, metadata !465), !dbg !978
  %3 = load i16, i16* %2, align 2, !dbg !979
  %4 = zext i16 %3 to i32, !dbg !980
  %5 = and i32 %4, 255, !dbg !981
  %6 = shl i32 %5, 8, !dbg !982
  %7 = load i16, i16* %2, align 2, !dbg !983
  %8 = zext i16 %7 to i32, !dbg !984
  %9 = and i32 %8, 65280, !dbg !985
  %10 = ashr i32 %9, 8, !dbg !986
  %11 = or i32 %6, %10, !dbg !987
  %12 = trunc i32 %11 to i16, !dbg !988
  ret i16 %12, !dbg !989
}

; Function Attrs: nounwind
declare i32 @getpid() #4

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @gettid() #3 !dbg !990 {
  %1 = call i64 (i64, ...) @syscall(i64 186) #7, !dbg !993
  %2 = trunc i64 %1 to i32, !dbg !994
  ret i32 %2, !dbg !995
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @__fswab64(i64) #3 !dbg !996 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !999, metadata !465), !dbg !1000
  %3 = load i64, i64* %2, align 8, !dbg !1001
  %4 = call i64 @__arch_swab64(i64 %3), !dbg !1002
  ret i64 %4, !dbg !1003
}

declare void @ddcb_hexdump(%struct._IO_FILE*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define void @zedc_asiv_defl_print(%struct.zedc_stream_s*, i32) #0 !dbg !1004 {
  %3 = alloca %struct.zedc_stream_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ddcb_cmd*, align 8
  %6 = alloca %struct.zedc_asiv_defl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %3, metadata !1007, metadata !465), !dbg !1008
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1009, metadata !465), !dbg !1010
  call void @llvm.dbg.declare(metadata %struct.ddcb_cmd** %5, metadata !1011, metadata !465), !dbg !1012
  %9 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1013
  %10 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %9, i32 0, i32 16, !dbg !1014
  store %struct.ddcb_cmd* %10, %struct.ddcb_cmd** %5, align 8, !dbg !1012
  call void @llvm.dbg.declare(metadata %struct.zedc_asiv_defl** %6, metadata !1015, metadata !465), !dbg !1016
  %11 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %5, align 8, !dbg !1017
  %12 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %11, i32 0, i32 16, !dbg !1018
  %13 = bitcast %union.anon* %12 to %struct.anon*, !dbg !1018
  %14 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 1, !dbg !1018
  %15 = getelementptr inbounds [96 x i8], [96 x i8]* %14, i32 0, i32 0, !dbg !1017
  %16 = bitcast i8* %15 to %struct.zedc_asiv_defl*, !dbg !1019
  store %struct.zedc_asiv_defl* %16, %struct.zedc_asiv_defl** %6, align 8, !dbg !1016
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1020, metadata !465), !dbg !1021
  %17 = load %struct.zedc_asiv_defl*, %struct.zedc_asiv_defl** %6, align 8, !dbg !1022
  %18 = getelementptr inbounds %struct.zedc_asiv_defl, %struct.zedc_asiv_defl* %17, i32 0, i32 4, !dbg !1023
  %19 = load i32, i32* %18, align 1, !dbg !1023
  %20 = call i32 @__fswab32(i32 %19), !dbg !1024
  store i32 %20, i32* %7, align 4, !dbg !1021
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1025, metadata !465), !dbg !1026
  %21 = load %struct.zedc_asiv_defl*, %struct.zedc_asiv_defl** %6, align 8, !dbg !1027
  %22 = getelementptr inbounds %struct.zedc_asiv_defl, %struct.zedc_asiv_defl* %21, i32 0, i32 1, !dbg !1028
  %23 = load i32, i32* %22, align 1, !dbg !1028
  %24 = call i32 @__fswab32(i32 %23), !dbg !1029
  store i32 %24, i32* %8, align 4, !dbg !1026
  br label %25, !dbg !1030, !llvm.loop !1031

; <label>:25:                                     ; preds = %2
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1032
  %27 = icmp ne %struct._IO_FILE* %26, null, !dbg !1032
  br i1 %27, label %28, label %84, !dbg !1036

; <label>:28:                                     ; preds = %25
  %29 = load i32, i32* %4, align 4, !dbg !1037
  %30 = icmp ne i32 %29, 0, !dbg !1039
  br i1 %30, label %31, label %84, !dbg !1040

; <label>:31:                                     ; preds = %28
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1041
  %33 = call i32 @getpid() #7, !dbg !1043
  %34 = call i32 @gettid(), !dbg !1044
  %35 = load %struct.zedc_asiv_defl*, %struct.zedc_asiv_defl** %6, align 8, !dbg !1046
  %36 = getelementptr inbounds %struct.zedc_asiv_defl, %struct.zedc_asiv_defl* %35, i32 0, i32 0, !dbg !1047
  %37 = load i64, i64* %36, align 1, !dbg !1047
  %38 = call i64 @__fswab64(i64 %37), !dbg !1048
  %39 = load i32, i32* %8, align 4, !dbg !1050
  %40 = load i32, i32* %8, align 4, !dbg !1051
  %41 = load %struct.zedc_asiv_defl*, %struct.zedc_asiv_defl** %6, align 8, !dbg !1046
  %42 = getelementptr inbounds %struct.zedc_asiv_defl, %struct.zedc_asiv_defl* %41, i32 0, i32 2, !dbg !1047
  %43 = load i32, i32* %42, align 1, !dbg !1047
  %44 = call i32 @__fswab32(i32 %43), !dbg !1052
  %45 = load %struct.zedc_asiv_defl*, %struct.zedc_asiv_defl** %6, align 8, !dbg !1046
  %46 = getelementptr inbounds %struct.zedc_asiv_defl, %struct.zedc_asiv_defl* %45, i32 0, i32 3, !dbg !1047
  %47 = load i64, i64* %46, align 1, !dbg !1047
  %48 = call i64 @__fswab64(i64 %47), !dbg !1054
  %49 = load i32, i32* %7, align 4, !dbg !1050
  %50 = load i32, i32* %7, align 4, !dbg !1056
  %51 = load %struct.zedc_asiv_defl*, %struct.zedc_asiv_defl** %6, align 8, !dbg !1046
  %52 = getelementptr inbounds %struct.zedc_asiv_defl, %struct.zedc_asiv_defl* %51, i32 0, i32 5, !dbg !1047
  %53 = load i32, i32* %52, align 1, !dbg !1047
  %54 = call i32 @__fswab32(i32 %53), !dbg !1057
  %55 = load %struct.zedc_asiv_defl*, %struct.zedc_asiv_defl** %6, align 8, !dbg !1046
  %56 = getelementptr inbounds %struct.zedc_asiv_defl, %struct.zedc_asiv_defl* %55, i32 0, i32 6, !dbg !1047
  %57 = load i64, i64* %56, align 1, !dbg !1047
  %58 = call i64 @__fswab64(i64 %57), !dbg !1059
  %59 = load %struct.zedc_asiv_defl*, %struct.zedc_asiv_defl** %6, align 8, !dbg !1046
  %60 = getelementptr inbounds %struct.zedc_asiv_defl, %struct.zedc_asiv_defl* %59, i32 0, i32 7, !dbg !1047
  %61 = load i32, i32* %60, align 1, !dbg !1047
  %62 = call i32 @__fswab32(i32 %61), !dbg !1061
  %63 = load %struct.zedc_asiv_defl*, %struct.zedc_asiv_defl** %6, align 8, !dbg !1046
  %64 = getelementptr inbounds %struct.zedc_asiv_defl, %struct.zedc_asiv_defl* %63, i32 0, i32 7, !dbg !1047
  %65 = load i32, i32* %64, align 1, !dbg !1047
  %66 = call i32 @__fswab32(i32 %65), !dbg !1063
  %67 = load %struct.zedc_asiv_defl*, %struct.zedc_asiv_defl** %6, align 8, !dbg !1046
  %68 = getelementptr inbounds %struct.zedc_asiv_defl, %struct.zedc_asiv_defl* %67, i32 0, i32 11, !dbg !1047
  %69 = load i64, i64* %68, align 1, !dbg !1047
  %70 = call i64 @__fswab64(i64 %69), !dbg !1065
  %71 = load %struct.zedc_asiv_defl*, %struct.zedc_asiv_defl** %6, align 8, !dbg !1046
  %72 = getelementptr inbounds %struct.zedc_asiv_defl, %struct.zedc_asiv_defl* %71, i32 0, i32 12, !dbg !1047
  %73 = load i32, i32* %72, align 1, !dbg !1047
  %74 = call i32 @__fswab32(i32 %73), !dbg !1067
  %75 = load %struct.zedc_asiv_defl*, %struct.zedc_asiv_defl** %6, align 8, !dbg !1046
  %76 = getelementptr inbounds %struct.zedc_asiv_defl, %struct.zedc_asiv_defl* %75, i32 0, i32 12, !dbg !1047
  %77 = load i32, i32* %76, align 1, !dbg !1047
  %78 = call i32 @__fswab32(i32 %77), !dbg !1069
  %79 = load %struct.zedc_asiv_defl*, %struct.zedc_asiv_defl** %6, align 8, !dbg !1050
  %80 = getelementptr inbounds %struct.zedc_asiv_defl, %struct.zedc_asiv_defl* %79, i32 0, i32 16, !dbg !1071
  %81 = load i8, i8* %80, align 1, !dbg !1071
  %82 = zext i8 %81 to i32, !dbg !1050
  %83 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([407 x i8], [407 x i8]* @.str.12, i32 0, i32 0), i32 %33, i32 %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 289, i64 %38, i32 %39, i32 %40, i32 %44, i64 %48, i32 %49, i32 %50, i32 %54, i64 %58, i32 %62, i32 %66, i64 %70, i32 %74, i32 %78, i32 %82), !dbg !1072
  br label %84, !dbg !1074

; <label>:84:                                     ; preds = %31, %28, %25
  br label %85, !dbg !1075

; <label>:85:                                     ; preds = %84
  br label %86, !dbg !1077, !llvm.loop !1078

; <label>:86:                                     ; preds = %85
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1079
  %88 = icmp ne %struct._IO_FILE* %87, null, !dbg !1079
  br i1 %88, label %89, label %110, !dbg !1083

; <label>:89:                                     ; preds = %86
  %90 = load i32, i32* %4, align 4, !dbg !1084
  %91 = icmp ne i32 %90, 0, !dbg !1086
  br i1 %91, label %92, label %110, !dbg !1087

; <label>:92:                                     ; preds = %89
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1088
  %94 = call i32 @getpid() #7, !dbg !1090
  %95 = call i32 @gettid(), !dbg !1091
  %96 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %5, align 8, !dbg !1093
  %97 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %96, i32 0, i32 16, !dbg !1094
  %98 = bitcast %union.anon* %97 to %struct.anon*, !dbg !1094
  %99 = getelementptr inbounds %struct.anon, %struct.anon* %98, i32 0, i32 0, !dbg !1094
  %100 = load i64, i64* %99, align 8, !dbg !1094
  %101 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %5, align 8, !dbg !1095
  %102 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %101, i32 0, i32 3, !dbg !1096
  %103 = load i8, i8* %102, align 1, !dbg !1096
  %104 = zext i8 %103 to i32, !dbg !1095
  %105 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %5, align 8, !dbg !1097
  %106 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %105, i32 0, i32 6, !dbg !1098
  %107 = load i16, i16* %106, align 4, !dbg !1098
  %108 = zext i16 %107 to i32, !dbg !1097
  %109 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %93, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.8, i32 0, i32 0), i32 %94, i32 %95, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 295, i64 %100, i32 %104, i32 %108), !dbg !1099
  br label %110, !dbg !1096

; <label>:110:                                    ; preds = %92, %89, %86
  br label %111, !dbg !1101

; <label>:111:                                    ; preds = %110
  br label %112, !dbg !1103, !llvm.loop !1104

; <label>:112:                                    ; preds = %111
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1105
  %114 = icmp ne %struct._IO_FILE* %113, null, !dbg !1105
  br i1 %114, label %115, label %158, !dbg !1109

; <label>:115:                                    ; preds = %112
  %116 = load i32, i32* %4, align 4, !dbg !1110
  %117 = icmp ne i32 %116, 0, !dbg !1112
  br i1 %117, label %118, label %158, !dbg !1113

; <label>:118:                                    ; preds = %115
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1114
  %120 = call i32 @getpid() #7, !dbg !1116
  %121 = call i32 @gettid(), !dbg !1117
  %122 = load %struct.zedc_asiv_defl*, %struct.zedc_asiv_defl** %6, align 8, !dbg !1119
  %123 = getelementptr inbounds %struct.zedc_asiv_defl, %struct.zedc_asiv_defl* %122, i32 0, i32 15, !dbg !1120
  %124 = getelementptr inbounds [7 x i8], [7 x i8]* %123, i64 0, i64 0, !dbg !1119
  %125 = load i8, i8* %124, align 1, !dbg !1119
  %126 = zext i8 %125 to i32, !dbg !1119
  %127 = load %struct.zedc_asiv_defl*, %struct.zedc_asiv_defl** %6, align 8, !dbg !1121
  %128 = getelementptr inbounds %struct.zedc_asiv_defl, %struct.zedc_asiv_defl* %127, i32 0, i32 15, !dbg !1122
  %129 = getelementptr inbounds [7 x i8], [7 x i8]* %128, i64 0, i64 1, !dbg !1121
  %130 = load i8, i8* %129, align 1, !dbg !1121
  %131 = zext i8 %130 to i32, !dbg !1121
  %132 = load %struct.zedc_asiv_defl*, %struct.zedc_asiv_defl** %6, align 8, !dbg !1123
  %133 = getelementptr inbounds %struct.zedc_asiv_defl, %struct.zedc_asiv_defl* %132, i32 0, i32 15, !dbg !1124
  %134 = getelementptr inbounds [7 x i8], [7 x i8]* %133, i64 0, i64 2, !dbg !1123
  %135 = load i8, i8* %134, align 1, !dbg !1123
  %136 = zext i8 %135 to i32, !dbg !1123
  %137 = load %struct.zedc_asiv_defl*, %struct.zedc_asiv_defl** %6, align 8, !dbg !1125
  %138 = getelementptr inbounds %struct.zedc_asiv_defl, %struct.zedc_asiv_defl* %137, i32 0, i32 15, !dbg !1126
  %139 = getelementptr inbounds [7 x i8], [7 x i8]* %138, i64 0, i64 3, !dbg !1125
  %140 = load i8, i8* %139, align 1, !dbg !1125
  %141 = zext i8 %140 to i32, !dbg !1125
  %142 = load %struct.zedc_asiv_defl*, %struct.zedc_asiv_defl** %6, align 8, !dbg !1127
  %143 = getelementptr inbounds %struct.zedc_asiv_defl, %struct.zedc_asiv_defl* %142, i32 0, i32 15, !dbg !1128
  %144 = getelementptr inbounds [7 x i8], [7 x i8]* %143, i64 0, i64 4, !dbg !1127
  %145 = load i8, i8* %144, align 1, !dbg !1127
  %146 = zext i8 %145 to i32, !dbg !1127
  %147 = load %struct.zedc_asiv_defl*, %struct.zedc_asiv_defl** %6, align 8, !dbg !1129
  %148 = getelementptr inbounds %struct.zedc_asiv_defl, %struct.zedc_asiv_defl* %147, i32 0, i32 15, !dbg !1130
  %149 = getelementptr inbounds [7 x i8], [7 x i8]* %148, i64 0, i64 5, !dbg !1129
  %150 = load i8, i8* %149, align 1, !dbg !1129
  %151 = zext i8 %150 to i32, !dbg !1129
  %152 = load %struct.zedc_asiv_defl*, %struct.zedc_asiv_defl** %6, align 8, !dbg !1131
  %153 = getelementptr inbounds %struct.zedc_asiv_defl, %struct.zedc_asiv_defl* %152, i32 0, i32 15, !dbg !1132
  %154 = getelementptr inbounds [7 x i8], [7 x i8]* %153, i64 0, i64 6, !dbg !1131
  %155 = load i8, i8* %154, align 1, !dbg !1131
  %156 = zext i8 %155 to i32, !dbg !1131
  %157 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %119, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.13, i32 0, i32 0), i32 %120, i32 %121, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 300, i32 %126, i32 %131, i32 %136, i32 %141, i32 %146, i32 %151, i32 %156), !dbg !1133
  br label %158, !dbg !1135

; <label>:158:                                    ; preds = %118, %115, %112
  br label %159, !dbg !1136

; <label>:159:                                    ; preds = %158
  ret void, !dbg !1138
}

; Function Attrs: nounwind uwtable
define void @zedc_asv_defl_print(%struct.zedc_stream_s*, i32) #0 !dbg !1139 {
  %3 = alloca %struct.zedc_stream_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ddcb_cmd*, align 8
  %6 = alloca %struct.zedc_asv_defl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %3, metadata !1140, metadata !465), !dbg !1141
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1142, metadata !465), !dbg !1143
  call void @llvm.dbg.declare(metadata %struct.ddcb_cmd** %5, metadata !1144, metadata !465), !dbg !1145
  %9 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1146
  %10 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %9, i32 0, i32 16, !dbg !1147
  store %struct.ddcb_cmd* %10, %struct.ddcb_cmd** %5, align 8, !dbg !1145
  call void @llvm.dbg.declare(metadata %struct.zedc_asv_defl** %6, metadata !1148, metadata !465), !dbg !1149
  %11 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %5, align 8, !dbg !1150
  %12 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %11, i32 0, i32 15, !dbg !1151
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i32 0, i32 0, !dbg !1150
  %14 = bitcast i8* %13 to %struct.zedc_asv_defl*, !dbg !1152
  store %struct.zedc_asv_defl* %14, %struct.zedc_asv_defl** %6, align 8, !dbg !1149
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1153, metadata !465), !dbg !1154
  %15 = load %struct.zedc_asv_defl*, %struct.zedc_asv_defl** %6, align 8, !dbg !1155
  %16 = getelementptr inbounds %struct.zedc_asv_defl, %struct.zedc_asv_defl* %15, i32 0, i32 6, !dbg !1156
  %17 = load i32, i32* %16, align 1, !dbg !1156
  %18 = call i32 @__fswab32(i32 %17), !dbg !1157
  store i32 %18, i32* %7, align 4, !dbg !1154
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1158, metadata !465), !dbg !1159
  %19 = load %struct.zedc_asv_defl*, %struct.zedc_asv_defl** %6, align 8, !dbg !1160
  %20 = getelementptr inbounds %struct.zedc_asv_defl, %struct.zedc_asv_defl* %19, i32 0, i32 7, !dbg !1161
  %21 = load i32, i32* %20, align 1, !dbg !1161
  %22 = call i32 @__fswab32(i32 %21), !dbg !1162
  store i32 %22, i32* %8, align 4, !dbg !1159
  br label %23, !dbg !1163, !llvm.loop !1164

; <label>:23:                                     ; preds = %2
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1165
  %25 = icmp ne %struct._IO_FILE* %24, null, !dbg !1165
  br i1 %25, label %26, label %72, !dbg !1169

; <label>:26:                                     ; preds = %23
  %27 = load i32, i32* %4, align 4, !dbg !1170
  %28 = icmp ne i32 %27, 0, !dbg !1172
  br i1 %28, label %29, label %72, !dbg !1173

; <label>:29:                                     ; preds = %26
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1174
  %31 = call i32 @getpid() #7, !dbg !1176
  %32 = call i32 @gettid(), !dbg !1177
  %33 = load %struct.zedc_asv_defl*, %struct.zedc_asv_defl** %6, align 8, !dbg !1179
  %34 = getelementptr inbounds %struct.zedc_asv_defl, %struct.zedc_asv_defl* %33, i32 0, i32 0, !dbg !1180
  %35 = load i16, i16* %34, align 1, !dbg !1180
  %36 = call zeroext i16 @__fswab16(i16 zeroext %35), !dbg !1181
  %37 = zext i16 %36 to i32, !dbg !1183
  %38 = load %struct.zedc_asv_defl*, %struct.zedc_asv_defl** %6, align 8, !dbg !1179
  %39 = getelementptr inbounds %struct.zedc_asv_defl, %struct.zedc_asv_defl* %38, i32 0, i32 0, !dbg !1180
  %40 = load i16, i16* %39, align 1, !dbg !1180
  %41 = call zeroext i16 @__fswab16(i16 zeroext %40), !dbg !1184
  %42 = zext i16 %41 to i32, !dbg !1183
  %43 = load %struct.zedc_asv_defl*, %struct.zedc_asv_defl** %6, align 8, !dbg !1186
  %44 = getelementptr inbounds %struct.zedc_asv_defl, %struct.zedc_asv_defl* %43, i32 0, i32 2, !dbg !1187
  %45 = load i8, i8* %44, align 1, !dbg !1187
  %46 = zext i8 %45 to i32, !dbg !1186
  %47 = load %struct.zedc_asv_defl*, %struct.zedc_asv_defl** %6, align 8, !dbg !1188
  %48 = getelementptr inbounds %struct.zedc_asv_defl, %struct.zedc_asv_defl* %47, i32 0, i32 2, !dbg !1189
  %49 = load i8, i8* %48, align 1, !dbg !1189
  %50 = zext i8 %49 to i32, !dbg !1188
  %51 = load %struct.zedc_asv_defl*, %struct.zedc_asv_defl** %6, align 8, !dbg !1179
  %52 = getelementptr inbounds %struct.zedc_asv_defl, %struct.zedc_asv_defl* %51, i32 0, i32 4, !dbg !1180
  %53 = load i32, i32* %52, align 1, !dbg !1180
  %54 = call i32 @__fswab32(i32 %53), !dbg !1190
  %55 = load %struct.zedc_asv_defl*, %struct.zedc_asv_defl** %6, align 8, !dbg !1179
  %56 = getelementptr inbounds %struct.zedc_asv_defl, %struct.zedc_asv_defl* %55, i32 0, i32 5, !dbg !1180
  %57 = load i32, i32* %56, align 1, !dbg !1180
  %58 = call i32 @__fswab32(i32 %57), !dbg !1192
  %59 = load i32, i32* %7, align 4, !dbg !1186
  %60 = load i32, i32* %7, align 4, !dbg !1188
  %61 = load i32, i32* %8, align 4, !dbg !1194
  %62 = load i32, i32* %8, align 4, !dbg !1195
  %63 = load %struct.zedc_asv_defl*, %struct.zedc_asv_defl** %6, align 8, !dbg !1196
  %64 = getelementptr inbounds %struct.zedc_asv_defl, %struct.zedc_asv_defl* %63, i32 0, i32 9, !dbg !1197
  %65 = load i8, i8* %64, align 1, !dbg !1197
  %66 = zext i8 %65 to i32, !dbg !1196
  %67 = load %struct.zedc_asv_defl*, %struct.zedc_asv_defl** %6, align 8, !dbg !1198
  %68 = getelementptr inbounds %struct.zedc_asv_defl, %struct.zedc_asv_defl* %67, i32 0, i32 9, !dbg !1199
  %69 = load i8, i8* %68, align 1, !dbg !1199
  %70 = zext i8 %69 to i32, !dbg !1198
  %71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([294 x i8], [294 x i8]* @.str.14, i32 0, i32 0), i32 %31, i32 %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 327, i32 %37, i32 %42, i32 %46, i32 %50, i32 %54, i32 %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 %66, i32 %70), !dbg !1200
  br label %72, !dbg !1202

; <label>:72:                                     ; preds = %29, %26, %23
  br label %73, !dbg !1203

; <label>:73:                                     ; preds = %72
  br label %74, !dbg !1205, !llvm.loop !1206

; <label>:74:                                     ; preds = %73
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1207
  %76 = icmp ne %struct._IO_FILE* %75, null, !dbg !1207
  br i1 %76, label %77, label %98, !dbg !1211

; <label>:77:                                     ; preds = %74
  %78 = load i32, i32* %4, align 4, !dbg !1212
  %79 = icmp ne i32 %78, 0, !dbg !1214
  br i1 %79, label %80, label %98, !dbg !1215

; <label>:80:                                     ; preds = %77
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1216
  %82 = call i32 @getpid() #7, !dbg !1218
  %83 = call i32 @gettid(), !dbg !1219
  %84 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %5, align 8, !dbg !1221
  %85 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %84, i32 0, i32 16, !dbg !1222
  %86 = bitcast %union.anon* %85 to %struct.anon*, !dbg !1222
  %87 = getelementptr inbounds %struct.anon, %struct.anon* %86, i32 0, i32 0, !dbg !1222
  %88 = load i64, i64* %87, align 8, !dbg !1222
  %89 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %5, align 8, !dbg !1223
  %90 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %89, i32 0, i32 3, !dbg !1224
  %91 = load i8, i8* %90, align 1, !dbg !1224
  %92 = zext i8 %91 to i32, !dbg !1223
  %93 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %5, align 8, !dbg !1225
  %94 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %93, i32 0, i32 6, !dbg !1226
  %95 = load i16, i16* %94, align 4, !dbg !1226
  %96 = zext i16 %95 to i32, !dbg !1225
  %97 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.8, i32 0, i32 0), i32 %82, i32 %83, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 333, i64 %88, i32 %92, i32 %96), !dbg !1227
  br label %98, !dbg !1224

; <label>:98:                                     ; preds = %80, %77, %74
  br label %99, !dbg !1229

; <label>:99:                                     ; preds = %98
  %100 = load i32, i32* %4, align 4, !dbg !1231
  %101 = icmp ne i32 %100, 0, !dbg !1231
  br i1 %101, label %102, label %137, !dbg !1233

; <label>:102:                                    ; preds = %99
  br label %103, !dbg !1234, !llvm.loop !1236

; <label>:103:                                    ; preds = %102
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1237
  %105 = icmp ne %struct._IO_FILE* %104, null, !dbg !1237
  br i1 %105, label %106, label %114, !dbg !1241

; <label>:106:                                    ; preds = %103
  %107 = load i32, i32* %4, align 4, !dbg !1242
  %108 = icmp ne i32 %107, 0, !dbg !1244
  br i1 %108, label %109, label %114, !dbg !1245

; <label>:109:                                    ; preds = %106
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1246
  %111 = call i32 @getpid() #7, !dbg !1248
  %112 = call i32 @gettid(), !dbg !1249
  %113 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i32 0, i32 0), i32 %111, i32 %112, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 336), !dbg !1251
  br label %114, !dbg !1253

; <label>:114:                                    ; preds = %109, %106, %103
  br label %115, !dbg !1254

; <label>:115:                                    ; preds = %114
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1256
  %117 = load %struct.zedc_asv_defl*, %struct.zedc_asv_defl** %6, align 8, !dbg !1257
  %118 = getelementptr inbounds %struct.zedc_asv_defl, %struct.zedc_asv_defl* %117, i32 0, i32 8, !dbg !1258
  %119 = getelementptr inbounds [24 x i8], [24 x i8]* %118, i32 0, i32 0, !dbg !1257
  call void @ddcb_hexdump(%struct._IO_FILE* %116, i8* %119, i32 24), !dbg !1259
  br label %120, !dbg !1260, !llvm.loop !1261

; <label>:120:                                    ; preds = %115
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1262
  %122 = icmp ne %struct._IO_FILE* %121, null, !dbg !1262
  br i1 %122, label %123, label %131, !dbg !1266

; <label>:123:                                    ; preds = %120
  %124 = load i32, i32* %4, align 4, !dbg !1267
  %125 = icmp ne i32 %124, 0, !dbg !1269
  br i1 %125, label %126, label %131, !dbg !1270

; <label>:126:                                    ; preds = %123
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1271
  %128 = call i32 @getpid() #7, !dbg !1273
  %129 = call i32 @gettid(), !dbg !1274
  %130 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %127, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i32 0, i32 0), i32 %128, i32 %129, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 338), !dbg !1276
  br label %131, !dbg !1278

; <label>:131:                                    ; preds = %126, %123, %120
  br label %132, !dbg !1279

; <label>:132:                                    ; preds = %131
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1281
  %134 = load %struct.zedc_asv_defl*, %struct.zedc_asv_defl** %6, align 8, !dbg !1282
  %135 = getelementptr inbounds %struct.zedc_asv_defl, %struct.zedc_asv_defl* %134, i32 0, i32 10, !dbg !1283
  %136 = getelementptr inbounds [7 x i8], [7 x i8]* %135, i32 0, i32 0, !dbg !1282
  call void @ddcb_hexdump(%struct._IO_FILE* %133, i8* %136, i32 7), !dbg !1284
  br label %137, !dbg !1285

; <label>:137:                                    ; preds = %132, %99
  ret void, !dbg !1286
}

; Function Attrs: nounwind uwtable
define void @zedc_asv_infl_print(%struct.zedc_stream_s*) #0 !dbg !1287 {
  %2 = alloca %struct.zedc_stream_s*, align 8
  %3 = alloca %struct.ddcb_cmd*, align 8
  %4 = alloca %struct.zedc_wsp*, align 8
  %5 = alloca %struct.zedc_asv_infl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %2, metadata !1288, metadata !465), !dbg !1289
  call void @llvm.dbg.declare(metadata %struct.ddcb_cmd** %3, metadata !1290, metadata !465), !dbg !1291
  %9 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !1292
  %10 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %9, i32 0, i32 16, !dbg !1293
  store %struct.ddcb_cmd* %10, %struct.ddcb_cmd** %3, align 8, !dbg !1291
  call void @llvm.dbg.declare(metadata %struct.zedc_wsp** %4, metadata !1294, metadata !465), !dbg !1295
  %11 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !1296
  %12 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %11, i32 0, i32 34, !dbg !1297
  %13 = load %struct.zedc_wsp*, %struct.zedc_wsp** %12, align 8, !dbg !1297
  store %struct.zedc_wsp* %13, %struct.zedc_wsp** %4, align 8, !dbg !1295
  call void @llvm.dbg.declare(metadata %struct.zedc_asv_infl** %5, metadata !1298, metadata !465), !dbg !1299
  %14 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %3, align 8, !dbg !1300
  %15 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %14, i32 0, i32 15, !dbg !1301
  %16 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i32 0, i32 0, !dbg !1300
  %17 = bitcast i8* %16 to %struct.zedc_asv_infl*, !dbg !1302
  store %struct.zedc_asv_infl* %17, %struct.zedc_asv_infl** %5, align 8, !dbg !1299
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1303, metadata !465), !dbg !1304
  %18 = load %struct.zedc_asv_infl*, %struct.zedc_asv_infl** %5, align 8, !dbg !1305
  %19 = getelementptr inbounds %struct.zedc_asv_infl, %struct.zedc_asv_infl* %18, i32 0, i32 12, !dbg !1306
  %20 = load i32, i32* %19, align 1, !dbg !1306
  %21 = call i32 @__fswab32(i32 %20), !dbg !1307
  store i32 %21, i32* %6, align 4, !dbg !1304
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1308, metadata !465), !dbg !1309
  %22 = load %struct.zedc_asv_infl*, %struct.zedc_asv_infl** %5, align 8, !dbg !1310
  %23 = getelementptr inbounds %struct.zedc_asv_infl, %struct.zedc_asv_infl* %22, i32 0, i32 13, !dbg !1311
  %24 = load i32, i32* %23, align 1, !dbg !1311
  %25 = call i32 @__fswab32(i32 %24), !dbg !1312
  store i32 %25, i32* %7, align 4, !dbg !1309
  call void @llvm.dbg.declare(metadata i16* %8, metadata !1313, metadata !465), !dbg !1314
  %26 = load %struct.zedc_asv_infl*, %struct.zedc_asv_infl** %5, align 8, !dbg !1315
  %27 = getelementptr inbounds %struct.zedc_asv_infl, %struct.zedc_asv_infl* %26, i32 0, i32 9, !dbg !1316
  %28 = load i16, i16* %27, align 1, !dbg !1316
  %29 = call zeroext i16 @__fswab16(i16 zeroext %28), !dbg !1317
  %30 = zext i16 %29 to i32, !dbg !1317
  %31 = trunc i32 %30 to i16, !dbg !1315
  store i16 %31, i16* %8, align 2, !dbg !1314
  br label %32, !dbg !1318, !llvm.loop !1319

; <label>:32:                                     ; preds = %1
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1320
  %34 = icmp ne %struct._IO_FILE* %33, null, !dbg !1320
  br i1 %34, label %35, label %119, !dbg !1324

; <label>:35:                                     ; preds = %32
  %36 = load i32, i32* @zedc_dbg, align 4, !dbg !1325
  %37 = icmp ne i32 %36, 0, !dbg !1325
  br i1 %37, label %38, label %119, !dbg !1327

; <label>:38:                                     ; preds = %35
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1328
  %40 = call i32 @getpid() #7, !dbg !1330
  %41 = call i32 @gettid(), !dbg !1331
  %42 = load %struct.zedc_asv_infl*, %struct.zedc_asv_infl** %5, align 8, !dbg !1333
  %43 = getelementptr inbounds %struct.zedc_asv_infl, %struct.zedc_asv_infl* %42, i32 0, i32 0, !dbg !1334
  %44 = load i16, i16* %43, align 1, !dbg !1334
  %45 = call zeroext i16 @__fswab16(i16 zeroext %44), !dbg !1335
  %46 = zext i16 %45 to i32, !dbg !1337
  %47 = load %struct.zedc_asv_infl*, %struct.zedc_asv_infl** %5, align 8, !dbg !1333
  %48 = getelementptr inbounds %struct.zedc_asv_infl, %struct.zedc_asv_infl* %47, i32 0, i32 0, !dbg !1334
  %49 = load i16, i16* %48, align 1, !dbg !1334
  %50 = call zeroext i16 @__fswab16(i16 zeroext %49), !dbg !1338
  %51 = zext i16 %50 to i32, !dbg !1337
  %52 = load %struct.zedc_asv_infl*, %struct.zedc_asv_infl** %5, align 8, !dbg !1333
  %53 = getelementptr inbounds %struct.zedc_asv_infl, %struct.zedc_asv_infl* %52, i32 0, i32 1, !dbg !1334
  %54 = load i16, i16* %53, align 1, !dbg !1334
  %55 = call zeroext i16 @__fswab16(i16 zeroext %54), !dbg !1340
  %56 = zext i16 %55 to i32, !dbg !1337
  %57 = load %struct.zedc_asv_infl*, %struct.zedc_asv_infl** %5, align 8, !dbg !1333
  %58 = getelementptr inbounds %struct.zedc_asv_infl, %struct.zedc_asv_infl* %57, i32 0, i32 1, !dbg !1334
  %59 = load i16, i16* %58, align 1, !dbg !1334
  %60 = call zeroext i16 @__fswab16(i16 zeroext %59), !dbg !1342
  %61 = zext i16 %60 to i32, !dbg !1337
  %62 = load %struct.zedc_asv_infl*, %struct.zedc_asv_infl** %5, align 8, !dbg !1344
  %63 = getelementptr inbounds %struct.zedc_asv_infl, %struct.zedc_asv_infl* %62, i32 0, i32 3, !dbg !1345
  %64 = load i8, i8* %63, align 1, !dbg !1345
  %65 = zext i8 %64 to i32, !dbg !1344
  %66 = load %struct.zedc_asv_infl*, %struct.zedc_asv_infl** %5, align 8, !dbg !1346
  %67 = getelementptr inbounds %struct.zedc_asv_infl, %struct.zedc_asv_infl* %66, i32 0, i32 5, !dbg !1347
  %68 = load i8, i8* %67, align 1, !dbg !1347
  %69 = zext i8 %68 to i32, !dbg !1346
  %70 = load %struct.zedc_asv_infl*, %struct.zedc_asv_infl** %5, align 8, !dbg !1333
  %71 = getelementptr inbounds %struct.zedc_asv_infl, %struct.zedc_asv_infl* %70, i32 0, i32 6, !dbg !1334
  %72 = load i32, i32* %71, align 1, !dbg !1334
  %73 = call i32 @__fswab32(i32 %72), !dbg !1348
  %74 = load %struct.zedc_asv_infl*, %struct.zedc_asv_infl** %5, align 8, !dbg !1344
  %75 = getelementptr inbounds %struct.zedc_asv_infl, %struct.zedc_asv_infl* %74, i32 0, i32 8, !dbg !1345
  %76 = load i8, i8* %75, align 1, !dbg !1345
  %77 = zext i8 %76 to i32, !dbg !1344
  %78 = load i16, i16* %8, align 2, !dbg !1347
  %79 = zext i16 %78 to i32, !dbg !1347
  %80 = load i16, i16* %8, align 2, !dbg !1350
  %81 = zext i16 %80 to i32, !dbg !1350
  %82 = load i16, i16* %8, align 2, !dbg !1351
  %83 = zext i16 %82 to i32, !dbg !1351
  %84 = sdiv i32 %83, 8, !dbg !1352
  %85 = load i16, i16* %8, align 2, !dbg !1353
  %86 = zext i16 %85 to i32, !dbg !1353
  %87 = srem i32 %86, 8, !dbg !1354
  %88 = load %struct.zedc_asv_infl*, %struct.zedc_asv_infl** %5, align 8, !dbg !1333
  %89 = getelementptr inbounds %struct.zedc_asv_infl, %struct.zedc_asv_infl* %88, i32 0, i32 10, !dbg !1334
  %90 = load i32, i32* %89, align 1, !dbg !1334
  %91 = call i32 @__fswab32(i32 %90), !dbg !1355
  %92 = load %struct.zedc_asv_infl*, %struct.zedc_asv_infl** %5, align 8, !dbg !1333
  %93 = getelementptr inbounds %struct.zedc_asv_infl, %struct.zedc_asv_infl* %92, i32 0, i32 11, !dbg !1334
  %94 = load i32, i32* %93, align 1, !dbg !1334
  %95 = call i32 @__fswab32(i32 %94), !dbg !1357
  %96 = load i32, i32* %6, align 4, !dbg !1344
  %97 = load i32, i32* %6, align 4, !dbg !1359
  %98 = load i32, i32* %7, align 4, !dbg !1360
  %99 = load i32, i32* %7, align 4, !dbg !1361
  %100 = load %struct.zedc_asv_infl*, %struct.zedc_asv_infl** %5, align 8, !dbg !1362
  %101 = getelementptr inbounds %struct.zedc_asv_infl, %struct.zedc_asv_infl* %100, i32 0, i32 15, !dbg !1363
  %102 = load i8, i8* %101, align 1, !dbg !1363
  %103 = zext i8 %102 to i32, !dbg !1362
  %104 = load %struct.zedc_asv_infl*, %struct.zedc_asv_infl** %5, align 8, !dbg !1364
  %105 = getelementptr inbounds %struct.zedc_asv_infl, %struct.zedc_asv_infl* %104, i32 0, i32 15, !dbg !1365
  %106 = load i8, i8* %105, align 1, !dbg !1365
  %107 = zext i8 %106 to i32, !dbg !1364
  %108 = load %struct.zedc_asv_infl*, %struct.zedc_asv_infl** %5, align 8, !dbg !1333
  %109 = getelementptr inbounds %struct.zedc_asv_infl, %struct.zedc_asv_infl* %108, i32 0, i32 17, !dbg !1334
  %110 = load i16, i16* %109, align 1, !dbg !1334
  %111 = call zeroext i16 @__fswab16(i16 zeroext %110), !dbg !1366
  %112 = zext i16 %111 to i32, !dbg !1337
  %113 = load %struct.zedc_asv_infl*, %struct.zedc_asv_infl** %5, align 8, !dbg !1333
  %114 = getelementptr inbounds %struct.zedc_asv_infl, %struct.zedc_asv_infl* %113, i32 0, i32 17, !dbg !1334
  %115 = load i16, i16* %114, align 1, !dbg !1334
  %116 = call zeroext i16 @__fswab16(i16 zeroext %115), !dbg !1368
  %117 = zext i16 %116 to i32, !dbg !1337
  %118 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([511 x i8], [511 x i8]* @.str.17, i32 0, i32 0), i32 %40, i32 %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 383, i32 %46, i32 %51, i32 %56, i32 %61, i32 %65, i32 %69, i32 %73, i32 %77, i32 %79, i32 %81, i32 %84, i32 %87, i32 %91, i32 %95, i32 %96, i32 %97, i32 %98, i32 %99, i32 %103, i32 %107, i32 %112, i32 %117), !dbg !1370
  br label %119, !dbg !1360

; <label>:119:                                    ; preds = %38, %35, %32
  br label %120, !dbg !1372

; <label>:120:                                    ; preds = %119
  br label %121, !dbg !1374, !llvm.loop !1375

; <label>:121:                                    ; preds = %120
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1376
  %123 = icmp ne %struct._IO_FILE* %122, null, !dbg !1376
  br i1 %123, label %124, label %145, !dbg !1380

; <label>:124:                                    ; preds = %121
  %125 = load i32, i32* @zedc_dbg, align 4, !dbg !1381
  %126 = icmp ne i32 %125, 0, !dbg !1381
  br i1 %126, label %127, label %145, !dbg !1383

; <label>:127:                                    ; preds = %124
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1384
  %129 = call i32 @getpid() #7, !dbg !1386
  %130 = call i32 @gettid(), !dbg !1387
  %131 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %3, align 8, !dbg !1389
  %132 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %131, i32 0, i32 16, !dbg !1390
  %133 = bitcast %union.anon* %132 to %struct.anon*, !dbg !1390
  %134 = getelementptr inbounds %struct.anon, %struct.anon* %133, i32 0, i32 0, !dbg !1390
  %135 = load i64, i64* %134, align 8, !dbg !1390
  %136 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %3, align 8, !dbg !1391
  %137 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %136, i32 0, i32 3, !dbg !1392
  %138 = load i8, i8* %137, align 1, !dbg !1392
  %139 = zext i8 %138 to i32, !dbg !1391
  %140 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %3, align 8, !dbg !1393
  %141 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %140, i32 0, i32 6, !dbg !1394
  %142 = load i16, i16* %141, align 4, !dbg !1394
  %143 = zext i16 %142 to i32, !dbg !1393
  %144 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %128, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.8, i32 0, i32 0), i32 %129, i32 %130, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 389, i64 %135, i32 %139, i32 %143), !dbg !1395
  br label %145, !dbg !1397

; <label>:145:                                    ; preds = %127, %124, %121
  br label %146, !dbg !1398

; <label>:146:                                    ; preds = %145
  %147 = load i32, i32* @zedc_dbg, align 4, !dbg !1400
  %148 = icmp sgt i32 %147, 3, !dbg !1402
  br i1 %148, label %149, label %203, !dbg !1403

; <label>:149:                                    ; preds = %146
  br label %150, !dbg !1404, !llvm.loop !1406

; <label>:150:                                    ; preds = %149
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1407
  %152 = icmp ne %struct._IO_FILE* %151, null, !dbg !1407
  br i1 %152, label %153, label %161, !dbg !1411

; <label>:153:                                    ; preds = %150
  %154 = load i32, i32* @zedc_dbg, align 4, !dbg !1412
  %155 = icmp ne i32 %154, 0, !dbg !1412
  br i1 %155, label %156, label %161, !dbg !1414

; <label>:156:                                    ; preds = %153
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1415
  %158 = call i32 @getpid() #7, !dbg !1417
  %159 = call i32 @gettid(), !dbg !1418
  %160 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %157, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i32 0, i32 0), i32 %158, i32 %159, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 392), !dbg !1420
  br label %161, !dbg !1422

; <label>:161:                                    ; preds = %156, %153, %150
  br label %162, !dbg !1423

; <label>:162:                                    ; preds = %161
  %163 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1425
  %164 = load %struct.zedc_wsp*, %struct.zedc_wsp** %4, align 8, !dbg !1426
  %165 = getelementptr inbounds %struct.zedc_wsp, %struct.zedc_wsp* %164, i32 0, i32 0, !dbg !1427
  %166 = getelementptr inbounds [2 x [32784 x i8]], [2 x [32784 x i8]]* %165, i64 0, i64 0, !dbg !1426
  %167 = getelementptr inbounds [32784 x i8], [32784 x i8]* %166, i32 0, i32 0, !dbg !1426
  call void @ddcb_hexdump(%struct._IO_FILE* %163, i8* %167, i32 32784), !dbg !1428
  br label %168, !dbg !1429, !llvm.loop !1430

; <label>:168:                                    ; preds = %162
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1431
  %170 = icmp ne %struct._IO_FILE* %169, null, !dbg !1431
  br i1 %170, label %171, label %179, !dbg !1435

; <label>:171:                                    ; preds = %168
  %172 = load i32, i32* @zedc_dbg, align 4, !dbg !1436
  %173 = icmp ne i32 %172, 0, !dbg !1436
  br i1 %173, label %174, label %179, !dbg !1438

; <label>:174:                                    ; preds = %171
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1439
  %176 = call i32 @getpid() #7, !dbg !1441
  %177 = call i32 @gettid(), !dbg !1442
  %178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %175, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i32 0, i32 0), i32 %176, i32 %177, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 395), !dbg !1444
  br label %179, !dbg !1446

; <label>:179:                                    ; preds = %174, %171, %168
  br label %180, !dbg !1447

; <label>:180:                                    ; preds = %179
  %181 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1449
  %182 = load %struct.zedc_wsp*, %struct.zedc_wsp** %4, align 8, !dbg !1450
  %183 = getelementptr inbounds %struct.zedc_wsp, %struct.zedc_wsp* %182, i32 0, i32 0, !dbg !1451
  %184 = getelementptr inbounds [2 x [32784 x i8]], [2 x [32784 x i8]]* %183, i64 0, i64 1, !dbg !1450
  %185 = getelementptr inbounds [32784 x i8], [32784 x i8]* %184, i32 0, i32 0, !dbg !1450
  call void @ddcb_hexdump(%struct._IO_FILE* %181, i8* %185, i32 32784), !dbg !1452
  br label %186, !dbg !1453, !llvm.loop !1454

; <label>:186:                                    ; preds = %180
  %187 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1455
  %188 = icmp ne %struct._IO_FILE* %187, null, !dbg !1455
  br i1 %188, label %189, label %197, !dbg !1459

; <label>:189:                                    ; preds = %186
  %190 = load i32, i32* @zedc_dbg, align 4, !dbg !1460
  %191 = icmp ne i32 %190, 0, !dbg !1460
  br i1 %191, label %192, label %197, !dbg !1462

; <label>:192:                                    ; preds = %189
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1463
  %194 = call i32 @getpid() #7, !dbg !1465
  %195 = call i32 @gettid(), !dbg !1466
  %196 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %193, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i32 0, i32 0), i32 %194, i32 %195, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 398), !dbg !1468
  br label %197, !dbg !1470

; <label>:197:                                    ; preds = %192, %189, %186
  br label %198, !dbg !1471

; <label>:198:                                    ; preds = %197
  %199 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1473
  %200 = load %struct.zedc_wsp*, %struct.zedc_wsp** %4, align 8, !dbg !1474
  %201 = getelementptr inbounds %struct.zedc_wsp, %struct.zedc_wsp* %200, i32 0, i32 1, !dbg !1475
  %202 = getelementptr inbounds [512 x i8], [512 x i8]* %201, i32 0, i32 0, !dbg !1474
  call void @ddcb_hexdump(%struct._IO_FILE* %199, i8* %202, i32 512), !dbg !1476
  br label %203, !dbg !1477

; <label>:203:                                    ; preds = %198, %146
  ret void, !dbg !1478
}

; Function Attrs: nounwind uwtable
define void @zedc_overwrite_slu_id(%struct.zedc_dev_t*, i64) #0 !dbg !1479 {
  %3 = alloca %struct.zedc_dev_t*, align 8
  %4 = alloca i64, align 8
  store %struct.zedc_dev_t* %0, %struct.zedc_dev_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_dev_t** %3, metadata !1482, metadata !465), !dbg !1483
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1484, metadata !465), !dbg !1485
  ret void, !dbg !1486
}

; Function Attrs: nounwind uwtable
define void @zedc_overwrite_app_id(%struct.zedc_dev_t*, i64) #0 !dbg !1487 {
  %3 = alloca %struct.zedc_dev_t*, align 8
  %4 = alloca i64, align 8
  store %struct.zedc_dev_t* %0, %struct.zedc_dev_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_dev_t** %3, metadata !1488, metadata !465), !dbg !1489
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1490, metadata !465), !dbg !1491
  ret void, !dbg !1492
}

; Function Attrs: nounwind uwtable
define %struct.zedc_dev_t* @zedc_open(i32, i32, i32, i32*) #0 !dbg !1493 {
  %5 = alloca %struct.zedc_dev_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.zedc_dev_t*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1497, metadata !465), !dbg !1498
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1499, metadata !465), !dbg !1500
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1501, metadata !465), !dbg !1502
  store i32* %3, i32** %9, align 8
  call void @llvm.dbg.declare(metadata i32** %9, metadata !1503, metadata !465), !dbg !1504
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1505, metadata !465), !dbg !1506
  call void @llvm.dbg.declare(metadata %struct.zedc_dev_t** %11, metadata !1507, metadata !465), !dbg !1508
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1509, metadata !465), !dbg !1510
  store i64 1197099344, i64* %12, align 8, !dbg !1510
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1511, metadata !465), !dbg !1512
  store i64 4294967295, i64* %13, align 8, !dbg !1512
  %14 = call noalias i8* @malloc(i64 32) #7, !dbg !1513
  %15 = bitcast i8* %14 to %struct.zedc_dev_t*, !dbg !1513
  store %struct.zedc_dev_t* %15, %struct.zedc_dev_t** %11, align 8, !dbg !1514
  %16 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %11, align 8, !dbg !1515
  %17 = icmp ne %struct.zedc_dev_t* %16, null, !dbg !1515
  br i1 %17, label %20, label %18, !dbg !1517

; <label>:18:                                     ; preds = %4
  %19 = load i32*, i32** %9, align 8, !dbg !1518
  store i32 -1, i32* %19, align 4, !dbg !1520
  store %struct.zedc_dev_t* null, %struct.zedc_dev_t** %5, align 8, !dbg !1521
  br label %61, !dbg !1521

; <label>:20:                                     ; preds = %4
  %21 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %11, align 8, !dbg !1522
  %22 = bitcast %struct.zedc_dev_t* %21 to i8*, !dbg !1523
  call void @llvm.memset.p0i8.i64(i8* %22, i8 0, i64 32, i32 8, i1 false), !dbg !1523
  %23 = load i32, i32* %8, align 4, !dbg !1524
  %24 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %11, align 8, !dbg !1525
  %25 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %24, i32 0, i32 0, !dbg !1526
  store i32 %23, i32* %25, align 8, !dbg !1527
  %26 = load i32, i32* %6, align 4, !dbg !1528
  %27 = icmp eq i32 %26, -1, !dbg !1530
  br i1 %27, label %28, label %29, !dbg !1531

; <label>:28:                                     ; preds = %20
  store i64 9787033936, i64* %12, align 8, !dbg !1532
  store i64 1099511627775, i64* %13, align 8, !dbg !1534
  br label %29, !dbg !1535

; <label>:29:                                     ; preds = %28, %20
  %30 = load i32, i32* %6, align 4, !dbg !1536
  %31 = load i32, i32* %7, align 4, !dbg !1537
  %32 = load i32, i32* %8, align 4, !dbg !1538
  %33 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %11, align 8, !dbg !1539
  %34 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %33, i32 0, i32 3, !dbg !1540
  %35 = load i64, i64* %12, align 8, !dbg !1541
  %36 = load i64, i64* %13, align 8, !dbg !1542
  %37 = call %struct.card_dev_t* @accel_open(i32 %30, i32 %31, i32 %32, i32* %34, i64 %35, i64 %36), !dbg !1543
  %38 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %11, align 8, !dbg !1544
  %39 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %38, i32 0, i32 2, !dbg !1545
  store %struct.card_dev_t* %37, %struct.card_dev_t** %39, align 8, !dbg !1546
  %40 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %11, align 8, !dbg !1547
  %41 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %40, i32 0, i32 2, !dbg !1549
  %42 = load %struct.card_dev_t*, %struct.card_dev_t** %41, align 8, !dbg !1549
  %43 = icmp eq %struct.card_dev_t* %42, null, !dbg !1550
  br i1 %43, label %44, label %46, !dbg !1551

; <label>:44:                                     ; preds = %29
  %45 = load i32*, i32** %9, align 8, !dbg !1552
  store i32 -307, i32* %45, align 4, !dbg !1554
  br label %58, !dbg !1555

; <label>:46:                                     ; preds = %29
  %47 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %11, align 8, !dbg !1556
  %48 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %47, i32 0, i32 3, !dbg !1557
  store i32 0, i32* %48, align 8, !dbg !1558
  %49 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0)) #7, !dbg !1559
  store i8* %49, i8** %10, align 8, !dbg !1560
  %50 = load i8*, i8** %10, align 8, !dbg !1561
  %51 = icmp ne i8* %50, null, !dbg !1561
  br i1 %51, label %52, label %55, !dbg !1563

; <label>:52:                                     ; preds = %46
  %53 = load i8*, i8** %10, align 8, !dbg !1564
  %54 = call i32 @atoi(i8* %53) #8, !dbg !1565
  store i32 %54, i32* @zedc_dbg, align 4, !dbg !1566
  br label %55, !dbg !1567

; <label>:55:                                     ; preds = %52, %46
  %56 = load i32*, i32** %9, align 8, !dbg !1568
  store i32 0, i32* %56, align 4, !dbg !1569
  %57 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %11, align 8, !dbg !1570
  store %struct.zedc_dev_t* %57, %struct.zedc_dev_t** %5, align 8, !dbg !1571
  br label %61, !dbg !1571

; <label>:58:                                     ; preds = %44
  %59 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %11, align 8, !dbg !1572
  %60 = bitcast %struct.zedc_dev_t* %59 to i8*, !dbg !1572
  call void @free(i8* %60) #7, !dbg !1573
  store %struct.zedc_dev_t* null, %struct.zedc_dev_t** %5, align 8, !dbg !1574
  br label %61, !dbg !1574

; <label>:61:                                     ; preds = %58, %55, %18
  %62 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %5, align 8, !dbg !1575
  ret %struct.zedc_dev_t* %62, !dbg !1575
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

declare %struct.card_dev_t* @accel_open(i32, i32, i32, i32*, i64, i64) #2

; Function Attrs: nounwind
declare i8* @getenv(i8*) #4

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #6

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind uwtable
define i32 @zedc_execute_request(%struct.zedc_dev_t*, %struct.ddcb_cmd*) #0 !dbg !1576 {
  %3 = alloca %struct.zedc_dev_t*, align 8
  %4 = alloca %struct.ddcb_cmd*, align 8
  %5 = alloca i32, align 4
  store %struct.zedc_dev_t* %0, %struct.zedc_dev_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_dev_t** %3, metadata !1579, metadata !465), !dbg !1580
  store %struct.ddcb_cmd* %1, %struct.ddcb_cmd** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.ddcb_cmd** %4, metadata !1581, metadata !465), !dbg !1582
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1583, metadata !465), !dbg !1584
  %6 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %3, align 8, !dbg !1585
  %7 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %6, i32 0, i32 2, !dbg !1586
  %8 = load %struct.card_dev_t*, %struct.card_dev_t** %7, align 8, !dbg !1586
  %9 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %4, align 8, !dbg !1587
  %10 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %3, align 8, !dbg !1588
  %11 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %10, i32 0, i32 3, !dbg !1589
  %12 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %3, align 8, !dbg !1590
  %13 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %12, i32 0, i32 4, !dbg !1591
  %14 = call i32 @accel_ddcb_execute(%struct.card_dev_t* %8, %struct.ddcb_cmd* %9, i32* %11, i32* %13), !dbg !1592
  store i32 %14, i32* %5, align 4, !dbg !1584
  br label %15, !dbg !1593, !llvm.loop !1594

; <label>:15:                                     ; preds = %2
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1595
  %17 = icmp ne %struct._IO_FILE* %16, null, !dbg !1595
  br i1 %17, label %18, label %47, !dbg !1599

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* @zedc_dbg, align 4, !dbg !1600
  %20 = icmp ne i32 %19, 0, !dbg !1600
  br i1 %20, label %21, label %47, !dbg !1602

; <label>:21:                                     ; preds = %18
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @zedc_log, align 8, !dbg !1603
  %23 = call i32 @getpid() #7, !dbg !1605
  %24 = call i32 @gettid(), !dbg !1606
  %25 = load i32, i32* %5, align 4, !dbg !1608
  %26 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %3, align 8, !dbg !1609
  %27 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %26, i32 0, i32 3, !dbg !1610
  %28 = load i32, i32* %27, align 8, !dbg !1610
  %29 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %4, align 8, !dbg !1611
  %30 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %29, i32 0, i32 7, !dbg !1612
  %31 = load i16, i16* %30, align 2, !dbg !1612
  %32 = zext i16 %31 to i32, !dbg !1611
  %33 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %4, align 8, !dbg !1613
  %34 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %33, i32 0, i32 8, !dbg !1614
  %35 = load i16, i16* %34, align 8, !dbg !1614
  %36 = zext i16 %35 to i32, !dbg !1613
  %37 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %4, align 8, !dbg !1615
  %38 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %37, i32 0, i32 10, !dbg !1616
  %39 = load i32, i32* %38, align 4, !dbg !1616
  %40 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %4, align 8, !dbg !1617
  %41 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %40, i32 0, i32 7, !dbg !1618
  %42 = load i16, i16* %41, align 2, !dbg !1618
  %43 = zext i16 %42 to i32, !dbg !1617
  %44 = icmp eq i32 %43, 258, !dbg !1619
  %45 = select i1 %44, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), !dbg !1617
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.19, i32 0, i32 0), i32 %23, i32 %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 485, i32 %25, i32 %28, i32 %32, i32 %36, i32 %39, i8* %45), !dbg !1620
  br label %47, !dbg !1622

; <label>:47:                                     ; preds = %21, %18, %15
  br label %48, !dbg !1623

; <label>:48:                                     ; preds = %47
  %49 = load i32, i32* %5, align 4, !dbg !1625
  ret i32 %49, !dbg !1626
}

declare i32 @accel_ddcb_execute(%struct.card_dev_t*, %struct.ddcb_cmd*, i32*, i32*) #2

; Function Attrs: nounwind uwtable
define i32 @zedc_close(%struct.zedc_dev_t*) #0 !dbg !1627 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zedc_dev_t*, align 8
  store %struct.zedc_dev_t* %0, %struct.zedc_dev_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_dev_t** %3, metadata !1628, metadata !465), !dbg !1629
  %4 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %3, align 8, !dbg !1630
  %5 = icmp ne %struct.zedc_dev_t* %4, null, !dbg !1630
  br i1 %5, label %7, label %6, !dbg !1632

; <label>:6:                                      ; preds = %1
  store i32 -308, i32* %2, align 4, !dbg !1633
  br label %14, !dbg !1633

; <label>:7:                                      ; preds = %1
  %8 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %3, align 8, !dbg !1634
  %9 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %8, i32 0, i32 2, !dbg !1635
  %10 = load %struct.card_dev_t*, %struct.card_dev_t** %9, align 8, !dbg !1635
  %11 = call i32 @accel_close(%struct.card_dev_t* %10), !dbg !1636
  %12 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %3, align 8, !dbg !1637
  %13 = bitcast %struct.zedc_dev_t* %12 to i8*, !dbg !1637
  call void @free(i8* %13) #7, !dbg !1638
  store i32 0, i32* %2, align 4, !dbg !1639
  br label %14, !dbg !1639

; <label>:14:                                     ; preds = %7, %6
  %15 = load i32, i32* %2, align 4, !dbg !1640
  ret i32 %15, !dbg !1640
}

declare i32 @accel_close(%struct.card_dev_t*) #2

; Function Attrs: nounwind uwtable
define i8* @zedc_memalign(%struct.zedc_dev_t*, i64, i32) #0 !dbg !1641 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.zedc_dev_t*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.zedc_dev_t* %0, %struct.zedc_dev_t** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_dev_t** %5, metadata !1644, metadata !465), !dbg !1645
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1646, metadata !465), !dbg !1647
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1648, metadata !465), !dbg !1649
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1650, metadata !465), !dbg !1651
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1652, metadata !465), !dbg !1653
  %10 = call i64 @sysconf(i32 30) #7, !dbg !1654
  %11 = trunc i64 %10 to i32, !dbg !1654
  store i32 %11, i32* %9, align 4, !dbg !1653
  %12 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %5, align 8, !dbg !1655
  %13 = icmp ne %struct.zedc_dev_t* %12, null, !dbg !1655
  br i1 %13, label %15, label %14, !dbg !1657

; <label>:14:                                     ; preds = %3
  store i8* null, i8** %4, align 8, !dbg !1658
  br label %60, !dbg !1658

; <label>:15:                                     ; preds = %3
  %16 = load i32, i32* %7, align 4, !dbg !1659
  %17 = and i32 %16, 24, !dbg !1661
  %18 = icmp eq i32 %17, 8, !dbg !1662
  br i1 %18, label %19, label %30, !dbg !1663

; <label>:19:                                     ; preds = %15
  %20 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %5, align 8, !dbg !1664
  %21 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %20, i32 0, i32 2, !dbg !1666
  %22 = load %struct.card_dev_t*, %struct.card_dev_t** %21, align 8, !dbg !1666
  %23 = load i64, i64* %6, align 8, !dbg !1667
  %24 = call i8* @accel_malloc(%struct.card_dev_t* %22, i64 %23), !dbg !1668
  store i8* %24, i8** %8, align 8, !dbg !1669
  %25 = load i8*, i8** %8, align 8, !dbg !1670
  %26 = icmp eq i8* %25, inttoptr (i64 -1 to i8*), !dbg !1672
  br i1 %26, label %27, label %28, !dbg !1673

; <label>:27:                                     ; preds = %19
  store i8* null, i8** %4, align 8, !dbg !1674
  br label %60, !dbg !1674

; <label>:28:                                     ; preds = %19
  %29 = load i8*, i8** %8, align 8, !dbg !1675
  store i8* %29, i8** %4, align 8, !dbg !1676
  br label %60, !dbg !1676

; <label>:30:                                     ; preds = %15
  %31 = load i32, i32* %9, align 4, !dbg !1677
  %32 = zext i32 %31 to i64, !dbg !1677
  %33 = load i64, i64* %6, align 8, !dbg !1678
  %34 = call noalias i8* @memalign(i64 %32, i64 %33) #7, !dbg !1679
  store i8* %34, i8** %8, align 8, !dbg !1680
  %35 = load i8*, i8** %8, align 8, !dbg !1681
  %36 = icmp eq i8* %35, inttoptr (i64 -1 to i8*), !dbg !1683
  br i1 %36, label %37, label %38, !dbg !1684

; <label>:37:                                     ; preds = %30
  store i8* null, i8** %4, align 8, !dbg !1685
  br label %60, !dbg !1685

; <label>:38:                                     ; preds = %30
  %39 = load i32, i32* %7, align 4, !dbg !1686
  %40 = and i32 %39, 32, !dbg !1688
  %41 = icmp ne i32 %40, 0, !dbg !1688
  br i1 %41, label %42, label %58, !dbg !1689

; <label>:42:                                     ; preds = %38
  %43 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %5, align 8, !dbg !1690
  %44 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %43, i32 0, i32 2, !dbg !1692
  %45 = load %struct.card_dev_t*, %struct.card_dev_t** %44, align 8, !dbg !1692
  %46 = load i8*, i8** %8, align 8, !dbg !1693
  %47 = load i64, i64* %6, align 8, !dbg !1694
  %48 = call i32 @accel_pin_memory(%struct.card_dev_t* %45, i8* %46, i64 %47, i32 1), !dbg !1695
  %49 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %5, align 8, !dbg !1696
  %50 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %49, i32 0, i32 3, !dbg !1697
  store i32 %48, i32* %50, align 8, !dbg !1698
  %51 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %5, align 8, !dbg !1699
  %52 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %51, i32 0, i32 3, !dbg !1701
  %53 = load i32, i32* %52, align 8, !dbg !1701
  %54 = icmp ne i32 %53, 0, !dbg !1702
  br i1 %54, label %55, label %57, !dbg !1703

; <label>:55:                                     ; preds = %42
  %56 = load i8*, i8** %8, align 8, !dbg !1704
  call void @free(i8* %56) #7, !dbg !1706
  store i8* null, i8** %4, align 8, !dbg !1707
  br label %60, !dbg !1707

; <label>:57:                                     ; preds = %42
  br label %58, !dbg !1708

; <label>:58:                                     ; preds = %57, %38
  %59 = load i8*, i8** %8, align 8, !dbg !1709
  store i8* %59, i8** %4, align 8, !dbg !1710
  br label %60, !dbg !1710

; <label>:60:                                     ; preds = %58, %55, %37, %28, %27, %14
  %61 = load i8*, i8** %4, align 8, !dbg !1711
  ret i8* %61, !dbg !1711
}

; Function Attrs: nounwind
declare i64 @sysconf(i32) #4

declare i8* @accel_malloc(%struct.card_dev_t*, i64) #2

; Function Attrs: nounwind
declare noalias i8* @memalign(i64, i64) #4

declare i32 @accel_pin_memory(%struct.card_dev_t*, i8*, i64, i32) #2

; Function Attrs: nounwind uwtable
define i32 @zedc_free(%struct.zedc_dev_t*, i8*, i64, i32) #0 !dbg !1712 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.zedc_dev_t*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.zedc_dev_t* %0, %struct.zedc_dev_t** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_dev_t** %6, metadata !1715, metadata !465), !dbg !1716
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1717, metadata !465), !dbg !1718
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1719, metadata !465), !dbg !1720
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1721, metadata !465), !dbg !1722
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1723, metadata !465), !dbg !1724
  %11 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %6, align 8, !dbg !1725
  %12 = icmp ne %struct.zedc_dev_t* %11, null, !dbg !1725
  br i1 %12, label %14, label %13, !dbg !1727

; <label>:13:                                     ; preds = %4
  store i32 -308, i32* %5, align 4, !dbg !1728
  br label %55, !dbg !1728

; <label>:14:                                     ; preds = %4
  %15 = load i8*, i8** %7, align 8, !dbg !1729
  %16 = icmp eq i8* %15, null, !dbg !1731
  br i1 %16, label %17, label %18, !dbg !1732

; <label>:17:                                     ; preds = %14
  store i32 0, i32* %5, align 4, !dbg !1733
  br label %55, !dbg !1733

; <label>:18:                                     ; preds = %14
  %19 = load i32, i32* %9, align 4, !dbg !1734
  %20 = and i32 %19, 24, !dbg !1736
  %21 = icmp eq i32 %20, 8, !dbg !1737
  br i1 %21, label %22, label %33, !dbg !1738

; <label>:22:                                     ; preds = %18
  %23 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %6, align 8, !dbg !1739
  %24 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %23, i32 0, i32 2, !dbg !1741
  %25 = load %struct.card_dev_t*, %struct.card_dev_t** %24, align 8, !dbg !1741
  %26 = load i8*, i8** %7, align 8, !dbg !1742
  %27 = load i64, i64* %8, align 8, !dbg !1743
  %28 = call i32 @accel_free(%struct.card_dev_t* %25, i8* %26, i64 %27), !dbg !1744
  store i32 %28, i32* %10, align 4, !dbg !1745
  %29 = load i32, i32* %10, align 4, !dbg !1746
  %30 = icmp ne i32 %29, 0, !dbg !1748
  br i1 %30, label %31, label %32, !dbg !1749

; <label>:31:                                     ; preds = %22
  store i32 -1, i32* %5, align 4, !dbg !1750
  br label %55, !dbg !1750

; <label>:32:                                     ; preds = %22
  store i32 0, i32* %5, align 4, !dbg !1751
  br label %55, !dbg !1751

; <label>:33:                                     ; preds = %18
  %34 = load i32, i32* %9, align 4, !dbg !1752
  %35 = and i32 %34, 32, !dbg !1754
  %36 = icmp ne i32 %35, 0, !dbg !1754
  br i1 %36, label %37, label %53, !dbg !1755

; <label>:37:                                     ; preds = %33
  %38 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %6, align 8, !dbg !1756
  %39 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %38, i32 0, i32 2, !dbg !1758
  %40 = load %struct.card_dev_t*, %struct.card_dev_t** %39, align 8, !dbg !1758
  %41 = load i8*, i8** %7, align 8, !dbg !1759
  %42 = load i64, i64* %8, align 8, !dbg !1760
  %43 = call i32 @accel_unpin_memory(%struct.card_dev_t* %40, i8* %41, i64 %42), !dbg !1761
  %44 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %6, align 8, !dbg !1762
  %45 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %44, i32 0, i32 3, !dbg !1763
  store i32 %43, i32* %45, align 8, !dbg !1764
  %46 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %6, align 8, !dbg !1765
  %47 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %46, i32 0, i32 3, !dbg !1767
  %48 = load i32, i32* %47, align 8, !dbg !1767
  %49 = icmp ne i32 %48, 0, !dbg !1768
  br i1 %49, label %50, label %52, !dbg !1769

; <label>:50:                                     ; preds = %37
  %51 = load i8*, i8** %7, align 8, !dbg !1770
  call void @free(i8* %51) #7, !dbg !1772
  store i32 -307, i32* %5, align 4, !dbg !1773
  br label %55, !dbg !1773

; <label>:52:                                     ; preds = %37
  br label %53, !dbg !1774

; <label>:53:                                     ; preds = %52, %33
  %54 = load i8*, i8** %7, align 8, !dbg !1775
  call void @free(i8* %54) #7, !dbg !1776
  store i32 0, i32* %5, align 4, !dbg !1777
  br label %55, !dbg !1777

; <label>:55:                                     ; preds = %53, %50, %32, %31, %17, %13
  %56 = load i32, i32* %5, align 4, !dbg !1778
  ret i32 %56, !dbg !1778
}

declare i32 @accel_free(%struct.card_dev_t*, i8*, i64) #2

declare i32 @accel_unpin_memory(%struct.card_dev_t*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define i32 @zedc_pin_memory(%struct.zedc_dev_t*, i8*, i64, i32) #0 !dbg !1779 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.zedc_dev_t*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.zedc_dev_t* %0, %struct.zedc_dev_t** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_dev_t** %6, metadata !1784, metadata !465), !dbg !1785
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1786, metadata !465), !dbg !1787
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1788, metadata !465), !dbg !1789
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1790, metadata !465), !dbg !1791
  %10 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %6, align 8, !dbg !1792
  %11 = icmp ne %struct.zedc_dev_t* %10, null, !dbg !1792
  br i1 %11, label %13, label %12, !dbg !1794

; <label>:12:                                     ; preds = %4
  store i32 -308, i32* %5, align 4, !dbg !1795
  br label %29, !dbg !1795

; <label>:13:                                     ; preds = %4
  %14 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %6, align 8, !dbg !1796
  %15 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %14, i32 0, i32 2, !dbg !1797
  %16 = load %struct.card_dev_t*, %struct.card_dev_t** %15, align 8, !dbg !1797
  %17 = load i8*, i8** %7, align 8, !dbg !1798
  %18 = load i64, i64* %8, align 8, !dbg !1799
  %19 = load i32, i32* %9, align 4, !dbg !1800
  %20 = call i32 @accel_pin_memory(%struct.card_dev_t* %16, i8* %17, i64 %18, i32 %19), !dbg !1801
  %21 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %6, align 8, !dbg !1802
  %22 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %21, i32 0, i32 3, !dbg !1803
  store i32 %20, i32* %22, align 8, !dbg !1804
  %23 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %6, align 8, !dbg !1805
  %24 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %23, i32 0, i32 3, !dbg !1807
  %25 = load i32, i32* %24, align 8, !dbg !1807
  %26 = icmp ne i32 %25, 0, !dbg !1808
  br i1 %26, label %27, label %28, !dbg !1809

; <label>:27:                                     ; preds = %13
  store i32 -307, i32* %5, align 4, !dbg !1810
  br label %29, !dbg !1810

; <label>:28:                                     ; preds = %13
  store i32 0, i32* %5, align 4, !dbg !1811
  br label %29, !dbg !1811

; <label>:29:                                     ; preds = %28, %27, %12
  %30 = load i32, i32* %5, align 4, !dbg !1812
  ret i32 %30, !dbg !1812
}

; Function Attrs: nounwind uwtable
define i32 @zedc_unpin_memory(%struct.zedc_dev_t*, i8*, i64) #0 !dbg !1813 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zedc_dev_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.zedc_dev_t* %0, %struct.zedc_dev_t** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_dev_t** %5, metadata !1816, metadata !465), !dbg !1817
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1818, metadata !465), !dbg !1819
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1820, metadata !465), !dbg !1821
  %8 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %5, align 8, !dbg !1822
  %9 = icmp ne %struct.zedc_dev_t* %8, null, !dbg !1822
  br i1 %9, label %11, label %10, !dbg !1824

; <label>:10:                                     ; preds = %3
  store i32 -308, i32* %4, align 4, !dbg !1825
  br label %26, !dbg !1825

; <label>:11:                                     ; preds = %3
  %12 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %5, align 8, !dbg !1826
  %13 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %12, i32 0, i32 2, !dbg !1827
  %14 = load %struct.card_dev_t*, %struct.card_dev_t** %13, align 8, !dbg !1827
  %15 = load i8*, i8** %6, align 8, !dbg !1828
  %16 = load i64, i64* %7, align 8, !dbg !1829
  %17 = call i32 @accel_unpin_memory(%struct.card_dev_t* %14, i8* %15, i64 %16), !dbg !1830
  %18 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %5, align 8, !dbg !1831
  %19 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %18, i32 0, i32 3, !dbg !1832
  store i32 %17, i32* %19, align 8, !dbg !1833
  %20 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %5, align 8, !dbg !1834
  %21 = getelementptr inbounds %struct.zedc_dev_t, %struct.zedc_dev_t* %20, i32 0, i32 3, !dbg !1836
  %22 = load i32, i32* %21, align 8, !dbg !1836
  %23 = icmp ne i32 %22, 0, !dbg !1837
  br i1 %23, label %24, label %25, !dbg !1838

; <label>:24:                                     ; preds = %11
  store i32 -307, i32* %4, align 4, !dbg !1839
  br label %26, !dbg !1839

; <label>:25:                                     ; preds = %11
  store i32 0, i32* %4, align 4, !dbg !1840
  br label %26, !dbg !1840

; <label>:26:                                     ; preds = %25, %24, %10
  %27 = load i32, i32* %4, align 4, !dbg !1841
  ret i32 %27, !dbg !1841
}

; Function Attrs: nounwind uwtable
define i32 @zedc_format_init(%struct.zedc_stream_s*) #0 !dbg !1842 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zedc_stream_s*, align 8
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %3, metadata !1845, metadata !465), !dbg !1846
  %4 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1847
  %5 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %4, i32 0, i32 2, !dbg !1849
  %6 = load i32, i32* %5, align 8, !dbg !1849
  %7 = icmp sle i32 %6, -8, !dbg !1850
  br i1 %7, label %8, label %16, !dbg !1851

; <label>:8:                                      ; preds = %1
  %9 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1852
  %10 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %9, i32 0, i32 2, !dbg !1854
  %11 = load i32, i32* %10, align 8, !dbg !1854
  %12 = icmp sge i32 %11, -15, !dbg !1855
  br i1 %12, label %13, label %16, !dbg !1856

; <label>:13:                                     ; preds = %8
  %14 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1857
  %15 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %14, i32 0, i32 20, !dbg !1859
  store i32 0, i32* %15, align 8, !dbg !1860
  store i32 0, i32* %2, align 4, !dbg !1861
  br label %56, !dbg !1861

; <label>:16:                                     ; preds = %8, %1
  %17 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1862
  %18 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %17, i32 0, i32 2, !dbg !1864
  %19 = load i32, i32* %18, align 8, !dbg !1864
  %20 = icmp sge i32 %19, 8, !dbg !1865
  br i1 %20, label %21, label %29, !dbg !1866

; <label>:21:                                     ; preds = %16
  %22 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1867
  %23 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %22, i32 0, i32 2, !dbg !1869
  %24 = load i32, i32* %23, align 8, !dbg !1869
  %25 = icmp sle i32 %24, 15, !dbg !1870
  br i1 %25, label %26, label %29, !dbg !1871

; <label>:26:                                     ; preds = %21
  %27 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1872
  %28 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %27, i32 0, i32 20, !dbg !1874
  store i32 1, i32* %28, align 8, !dbg !1875
  store i32 0, i32* %2, align 4, !dbg !1876
  br label %56, !dbg !1876

; <label>:29:                                     ; preds = %21, %16
  %30 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1877
  %31 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %30, i32 0, i32 2, !dbg !1879
  %32 = load i32, i32* %31, align 8, !dbg !1879
  %33 = icmp sge i32 %32, 16, !dbg !1880
  br i1 %33, label %34, label %42, !dbg !1881

; <label>:34:                                     ; preds = %29
  %35 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1882
  %36 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %35, i32 0, i32 2, !dbg !1884
  %37 = load i32, i32* %36, align 8, !dbg !1884
  %38 = icmp sle i32 %37, 23, !dbg !1885
  br i1 %38, label %39, label %42, !dbg !1886

; <label>:39:                                     ; preds = %34
  %40 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1887
  %41 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %40, i32 0, i32 20, !dbg !1889
  store i32 2, i32* %41, align 8, !dbg !1890
  store i32 0, i32* %2, align 4, !dbg !1891
  br label %56, !dbg !1891

; <label>:42:                                     ; preds = %34, %29
  %43 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1892
  %44 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %43, i32 0, i32 2, !dbg !1894
  %45 = load i32, i32* %44, align 8, !dbg !1894
  %46 = icmp sge i32 %45, 24, !dbg !1895
  br i1 %46, label %47, label %55, !dbg !1896

; <label>:47:                                     ; preds = %42
  %48 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1897
  %49 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %48, i32 0, i32 2, !dbg !1899
  %50 = load i32, i32* %49, align 8, !dbg !1899
  %51 = icmp sle i32 %50, 31, !dbg !1900
  br i1 %51, label %52, label %55, !dbg !1901

; <label>:52:                                     ; preds = %47
  %53 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1902
  %54 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %53, i32 0, i32 20, !dbg !1904
  store i32 2, i32* %54, align 8, !dbg !1905
  store i32 0, i32* %2, align 4, !dbg !1906
  br label %56, !dbg !1906

; <label>:55:                                     ; preds = %47, %42
  store i32 -3, i32* %2, align 4, !dbg !1907
  br label %56, !dbg !1907

; <label>:56:                                     ; preds = %55, %52, %39, %26, %13
  %57 = load i32, i32* %2, align 4, !dbg !1908
  ret i32 %57, !dbg !1908
}

; Function Attrs: nounwind uwtable
define i32 @zedc_alloc_workspace(%struct.zedc_stream_s*) #0 !dbg !1909 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zedc_stream_s*, align 8
  %4 = alloca %struct.zedc_dev_t*, align 8
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %3, metadata !1912, metadata !465), !dbg !1913
  call void @llvm.dbg.declare(metadata %struct.zedc_dev_t** %4, metadata !1914, metadata !465), !dbg !1915
  %5 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1916
  %6 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %5, i32 0, i32 15, !dbg !1917
  %7 = load i8*, i8** %6, align 8, !dbg !1917
  %8 = bitcast i8* %7 to %struct.zedc_dev_t*, !dbg !1918
  store %struct.zedc_dev_t* %8, %struct.zedc_dev_t** %4, align 8, !dbg !1915
  %9 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %4, align 8, !dbg !1919
  %10 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1920
  %11 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %10, i32 0, i32 36, !dbg !1921
  %12 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2, !dbg !1920
  %13 = load i32, i32* %12, align 4, !dbg !1920
  %14 = call i8* @zedc_memalign(%struct.zedc_dev_t* %9, i64 66080, i32 %13), !dbg !1922
  %15 = bitcast i8* %14 to %struct.zedc_wsp*, !dbg !1922
  %16 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1923
  %17 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %16, i32 0, i32 34, !dbg !1924
  store %struct.zedc_wsp* %15, %struct.zedc_wsp** %17, align 8, !dbg !1925
  %18 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1926
  %19 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %18, i32 0, i32 34, !dbg !1928
  %20 = load %struct.zedc_wsp*, %struct.zedc_wsp** %19, align 8, !dbg !1928
  %21 = icmp eq %struct.zedc_wsp* %20, null, !dbg !1929
  br i1 %21, label %22, label %23, !dbg !1930

; <label>:22:                                     ; preds = %1
  store i32 -4, i32* %2, align 4, !dbg !1931
  br label %28, !dbg !1931

; <label>:23:                                     ; preds = %1
  %24 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1932
  %25 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %24, i32 0, i32 34, !dbg !1933
  %26 = load %struct.zedc_wsp*, %struct.zedc_wsp** %25, align 8, !dbg !1933
  %27 = bitcast %struct.zedc_wsp* %26 to i8*, !dbg !1934
  call void @llvm.memset.p0i8.i64(i8* %27, i8 0, i64 66080, i32 1, i1 false), !dbg !1934
  store i32 0, i32* %2, align 4, !dbg !1935
  br label %28, !dbg !1935

; <label>:28:                                     ; preds = %23, %22
  %29 = load i32, i32* %2, align 4, !dbg !1936
  ret i32 %29, !dbg !1936
}

; Function Attrs: nounwind uwtable
define i32 @zedc_free_workspace(%struct.zedc_stream_s*) #0 !dbg !1937 {
  %2 = alloca %struct.zedc_stream_s*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.zedc_dev_t*, align 8
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %2, metadata !1938, metadata !465), !dbg !1939
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1940, metadata !465), !dbg !1941
  call void @llvm.dbg.declare(metadata %struct.zedc_dev_t** %4, metadata !1942, metadata !465), !dbg !1943
  %5 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !1944
  %6 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %5, i32 0, i32 15, !dbg !1945
  %7 = load i8*, i8** %6, align 8, !dbg !1945
  %8 = bitcast i8* %7 to %struct.zedc_dev_t*, !dbg !1946
  store %struct.zedc_dev_t* %8, %struct.zedc_dev_t** %4, align 8, !dbg !1943
  %9 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %4, align 8, !dbg !1947
  %10 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !1948
  %11 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %10, i32 0, i32 34, !dbg !1949
  %12 = load %struct.zedc_wsp*, %struct.zedc_wsp** %11, align 8, !dbg !1949
  %13 = bitcast %struct.zedc_wsp* %12 to i8*, !dbg !1948
  %14 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !1950
  %15 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %14, i32 0, i32 36, !dbg !1951
  %16 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 2, !dbg !1950
  %17 = load i32, i32* %16, align 4, !dbg !1950
  %18 = call i32 @zedc_free(%struct.zedc_dev_t* %9, i8* %13, i64 66080, i32 %17), !dbg !1952
  store i32 %18, i32* %3, align 4, !dbg !1953
  %19 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !1954
  %20 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %19, i32 0, i32 34, !dbg !1955
  store %struct.zedc_wsp* null, %struct.zedc_wsp** %20, align 8, !dbg !1956
  %21 = load i32, i32* %3, align 4, !dbg !1957
  ret i32 %21, !dbg !1958
}

; Function Attrs: nounwind uwtable
define i64 @__adler32(i64, i8*, i32) #0 !dbg !1959 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1964, metadata !465), !dbg !1965
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1966, metadata !465), !dbg !1967
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1968, metadata !465), !dbg !1969
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1970, metadata !465), !dbg !1971
  %10 = load i64, i64* %4, align 8, !dbg !1972
  %11 = and i64 %10, 65535, !dbg !1973
  store i64 %11, i64* %7, align 8, !dbg !1971
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1974, metadata !465), !dbg !1975
  %12 = load i64, i64* %4, align 8, !dbg !1976
  %13 = lshr i64 %12, 16, !dbg !1977
  %14 = and i64 %13, 65535, !dbg !1978
  store i64 %14, i64* %8, align 8, !dbg !1975
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1979, metadata !465), !dbg !1980
  store i32 0, i32* %9, align 4, !dbg !1981
  br label %15, !dbg !1983

; <label>:15:                                     ; preds = %33, %3
  %16 = load i32, i32* %9, align 4, !dbg !1984
  %17 = load i32, i32* %6, align 4, !dbg !1987
  %18 = icmp slt i32 %16, %17, !dbg !1988
  br i1 %18, label %19, label %36, !dbg !1989

; <label>:19:                                     ; preds = %15
  %20 = load i64, i64* %7, align 8, !dbg !1990
  %21 = load i32, i32* %9, align 4, !dbg !1992
  %22 = sext i32 %21 to i64, !dbg !1993
  %23 = load i8*, i8** %5, align 8, !dbg !1993
  %24 = getelementptr inbounds i8, i8* %23, i64 %22, !dbg !1993
  %25 = load i8, i8* %24, align 1, !dbg !1993
  %26 = zext i8 %25 to i64, !dbg !1993
  %27 = add i64 %20, %26, !dbg !1994
  %28 = urem i64 %27, 65521, !dbg !1995
  store i64 %28, i64* %7, align 8, !dbg !1996
  %29 = load i64, i64* %8, align 8, !dbg !1997
  %30 = load i64, i64* %7, align 8, !dbg !1998
  %31 = add i64 %29, %30, !dbg !1999
  %32 = urem i64 %31, 65521, !dbg !2000
  store i64 %32, i64* %8, align 8, !dbg !2001
  br label %33, !dbg !2002

; <label>:33:                                     ; preds = %19
  %34 = load i32, i32* %9, align 4, !dbg !2003
  %35 = add nsw i32 %34, 1, !dbg !2003
  store i32 %35, i32* %9, align 4, !dbg !2003
  br label %15, !dbg !2005, !llvm.loop !2006

; <label>:36:                                     ; preds = %15
  %37 = load i64, i64* %8, align 8, !dbg !2008
  %38 = shl i64 %37, 16, !dbg !2009
  %39 = load i64, i64* %7, align 8, !dbg !2010
  %40 = add i64 %38, %39, !dbg !2011
  ret i64 %40, !dbg !2012
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__arch_swab32(i32) #3 !dbg !2013 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2015, metadata !465), !dbg !2016
  %3 = load i32, i32* %2, align 4, !dbg !2017
  %4 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %3) #1, !dbg !2018, !srcloc !2019
  store i32 %4, i32* %2, align 4, !dbg !2018
  %5 = load i32, i32* %2, align 4, !dbg !2020
  ret i32 %5, !dbg !2021
}

; Function Attrs: nounwind
declare i64 @syscall(i64, ...) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @__arch_swab64(i64) #3 !dbg !2022 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !2023, metadata !465), !dbg !2024
  %3 = load i64, i64* %2, align 8, !dbg !2025
  %4 = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %3) #1, !dbg !2026, !srcloc !2027
  store i64 %4, i64* %2, align 8, !dbg !2026
  %5 = load i64, i64* %2, align 8, !dbg !2028
  ret i64 %5, !dbg !2029
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!453, !454}
!llvm.ident = !{!455}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !247, globals: !380)
!1 = !DIFile(filename: "/home/lichi/Desktop/genwqe/[task]lib--__libzHW.o/[inter]lib--libzHW.o.i", directory: "/home/lichi/Desktop")
!2 = !{!3, !22, !29}
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
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 71, size: 32, align: 32, elements: !31)
!30 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/confname.h", directory: "/home/lichi/Desktop")
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246}
!32 = !DIEnumerator(name: "_SC_ARG_MAX", value: 0)
!33 = !DIEnumerator(name: "_SC_CHILD_MAX", value: 1)
!34 = !DIEnumerator(name: "_SC_CLK_TCK", value: 2)
!35 = !DIEnumerator(name: "_SC_NGROUPS_MAX", value: 3)
!36 = !DIEnumerator(name: "_SC_OPEN_MAX", value: 4)
!37 = !DIEnumerator(name: "_SC_STREAM_MAX", value: 5)
!38 = !DIEnumerator(name: "_SC_TZNAME_MAX", value: 6)
!39 = !DIEnumerator(name: "_SC_JOB_CONTROL", value: 7)
!40 = !DIEnumerator(name: "_SC_SAVED_IDS", value: 8)
!41 = !DIEnumerator(name: "_SC_REALTIME_SIGNALS", value: 9)
!42 = !DIEnumerator(name: "_SC_PRIORITY_SCHEDULING", value: 10)
!43 = !DIEnumerator(name: "_SC_TIMERS", value: 11)
!44 = !DIEnumerator(name: "_SC_ASYNCHRONOUS_IO", value: 12)
!45 = !DIEnumerator(name: "_SC_PRIORITIZED_IO", value: 13)
!46 = !DIEnumerator(name: "_SC_SYNCHRONIZED_IO", value: 14)
!47 = !DIEnumerator(name: "_SC_FSYNC", value: 15)
!48 = !DIEnumerator(name: "_SC_MAPPED_FILES", value: 16)
!49 = !DIEnumerator(name: "_SC_MEMLOCK", value: 17)
!50 = !DIEnumerator(name: "_SC_MEMLOCK_RANGE", value: 18)
!51 = !DIEnumerator(name: "_SC_MEMORY_PROTECTION", value: 19)
!52 = !DIEnumerator(name: "_SC_MESSAGE_PASSING", value: 20)
!53 = !DIEnumerator(name: "_SC_SEMAPHORES", value: 21)
!54 = !DIEnumerator(name: "_SC_SHARED_MEMORY_OBJECTS", value: 22)
!55 = !DIEnumerator(name: "_SC_AIO_LISTIO_MAX", value: 23)
!56 = !DIEnumerator(name: "_SC_AIO_MAX", value: 24)
!57 = !DIEnumerator(name: "_SC_AIO_PRIO_DELTA_MAX", value: 25)
!58 = !DIEnumerator(name: "_SC_DELAYTIMER_MAX", value: 26)
!59 = !DIEnumerator(name: "_SC_MQ_OPEN_MAX", value: 27)
!60 = !DIEnumerator(name: "_SC_MQ_PRIO_MAX", value: 28)
!61 = !DIEnumerator(name: "_SC_VERSION", value: 29)
!62 = !DIEnumerator(name: "_SC_PAGESIZE", value: 30)
!63 = !DIEnumerator(name: "_SC_RTSIG_MAX", value: 31)
!64 = !DIEnumerator(name: "_SC_SEM_NSEMS_MAX", value: 32)
!65 = !DIEnumerator(name: "_SC_SEM_VALUE_MAX", value: 33)
!66 = !DIEnumerator(name: "_SC_SIGQUEUE_MAX", value: 34)
!67 = !DIEnumerator(name: "_SC_TIMER_MAX", value: 35)
!68 = !DIEnumerator(name: "_SC_BC_BASE_MAX", value: 36)
!69 = !DIEnumerator(name: "_SC_BC_DIM_MAX", value: 37)
!70 = !DIEnumerator(name: "_SC_BC_SCALE_MAX", value: 38)
!71 = !DIEnumerator(name: "_SC_BC_STRING_MAX", value: 39)
!72 = !DIEnumerator(name: "_SC_COLL_WEIGHTS_MAX", value: 40)
!73 = !DIEnumerator(name: "_SC_EQUIV_CLASS_MAX", value: 41)
!74 = !DIEnumerator(name: "_SC_EXPR_NEST_MAX", value: 42)
!75 = !DIEnumerator(name: "_SC_LINE_MAX", value: 43)
!76 = !DIEnumerator(name: "_SC_RE_DUP_MAX", value: 44)
!77 = !DIEnumerator(name: "_SC_CHARCLASS_NAME_MAX", value: 45)
!78 = !DIEnumerator(name: "_SC_2_VERSION", value: 46)
!79 = !DIEnumerator(name: "_SC_2_C_BIND", value: 47)
!80 = !DIEnumerator(name: "_SC_2_C_DEV", value: 48)
!81 = !DIEnumerator(name: "_SC_2_FORT_DEV", value: 49)
!82 = !DIEnumerator(name: "_SC_2_FORT_RUN", value: 50)
!83 = !DIEnumerator(name: "_SC_2_SW_DEV", value: 51)
!84 = !DIEnumerator(name: "_SC_2_LOCALEDEF", value: 52)
!85 = !DIEnumerator(name: "_SC_PII", value: 53)
!86 = !DIEnumerator(name: "_SC_PII_XTI", value: 54)
!87 = !DIEnumerator(name: "_SC_PII_SOCKET", value: 55)
!88 = !DIEnumerator(name: "_SC_PII_INTERNET", value: 56)
!89 = !DIEnumerator(name: "_SC_PII_OSI", value: 57)
!90 = !DIEnumerator(name: "_SC_POLL", value: 58)
!91 = !DIEnumerator(name: "_SC_SELECT", value: 59)
!92 = !DIEnumerator(name: "_SC_UIO_MAXIOV", value: 60)
!93 = !DIEnumerator(name: "_SC_IOV_MAX", value: 60)
!94 = !DIEnumerator(name: "_SC_PII_INTERNET_STREAM", value: 61)
!95 = !DIEnumerator(name: "_SC_PII_INTERNET_DGRAM", value: 62)
!96 = !DIEnumerator(name: "_SC_PII_OSI_COTS", value: 63)
!97 = !DIEnumerator(name: "_SC_PII_OSI_CLTS", value: 64)
!98 = !DIEnumerator(name: "_SC_PII_OSI_M", value: 65)
!99 = !DIEnumerator(name: "_SC_T_IOV_MAX", value: 66)
!100 = !DIEnumerator(name: "_SC_THREADS", value: 67)
!101 = !DIEnumerator(name: "_SC_THREAD_SAFE_FUNCTIONS", value: 68)
!102 = !DIEnumerator(name: "_SC_GETGR_R_SIZE_MAX", value: 69)
!103 = !DIEnumerator(name: "_SC_GETPW_R_SIZE_MAX", value: 70)
!104 = !DIEnumerator(name: "_SC_LOGIN_NAME_MAX", value: 71)
!105 = !DIEnumerator(name: "_SC_TTY_NAME_MAX", value: 72)
!106 = !DIEnumerator(name: "_SC_THREAD_DESTRUCTOR_ITERATIONS", value: 73)
!107 = !DIEnumerator(name: "_SC_THREAD_KEYS_MAX", value: 74)
!108 = !DIEnumerator(name: "_SC_THREAD_STACK_MIN", value: 75)
!109 = !DIEnumerator(name: "_SC_THREAD_THREADS_MAX", value: 76)
!110 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKADDR", value: 77)
!111 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKSIZE", value: 78)
!112 = !DIEnumerator(name: "_SC_THREAD_PRIORITY_SCHEDULING", value: 79)
!113 = !DIEnumerator(name: "_SC_THREAD_PRIO_INHERIT", value: 80)
!114 = !DIEnumerator(name: "_SC_THREAD_PRIO_PROTECT", value: 81)
!115 = !DIEnumerator(name: "_SC_THREAD_PROCESS_SHARED", value: 82)
!116 = !DIEnumerator(name: "_SC_NPROCESSORS_CONF", value: 83)
!117 = !DIEnumerator(name: "_SC_NPROCESSORS_ONLN", value: 84)
!118 = !DIEnumerator(name: "_SC_PHYS_PAGES", value: 85)
!119 = !DIEnumerator(name: "_SC_AVPHYS_PAGES", value: 86)
!120 = !DIEnumerator(name: "_SC_ATEXIT_MAX", value: 87)
!121 = !DIEnumerator(name: "_SC_PASS_MAX", value: 88)
!122 = !DIEnumerator(name: "_SC_XOPEN_VERSION", value: 89)
!123 = !DIEnumerator(name: "_SC_XOPEN_XCU_VERSION", value: 90)
!124 = !DIEnumerator(name: "_SC_XOPEN_UNIX", value: 91)
!125 = !DIEnumerator(name: "_SC_XOPEN_CRYPT", value: 92)
!126 = !DIEnumerator(name: "_SC_XOPEN_ENH_I18N", value: 93)
!127 = !DIEnumerator(name: "_SC_XOPEN_SHM", value: 94)
!128 = !DIEnumerator(name: "_SC_2_CHAR_TERM", value: 95)
!129 = !DIEnumerator(name: "_SC_2_C_VERSION", value: 96)
!130 = !DIEnumerator(name: "_SC_2_UPE", value: 97)
!131 = !DIEnumerator(name: "_SC_XOPEN_XPG2", value: 98)
!132 = !DIEnumerator(name: "_SC_XOPEN_XPG3", value: 99)
!133 = !DIEnumerator(name: "_SC_XOPEN_XPG4", value: 100)
!134 = !DIEnumerator(name: "_SC_CHAR_BIT", value: 101)
!135 = !DIEnumerator(name: "_SC_CHAR_MAX", value: 102)
!136 = !DIEnumerator(name: "_SC_CHAR_MIN", value: 103)
!137 = !DIEnumerator(name: "_SC_INT_MAX", value: 104)
!138 = !DIEnumerator(name: "_SC_INT_MIN", value: 105)
!139 = !DIEnumerator(name: "_SC_LONG_BIT", value: 106)
!140 = !DIEnumerator(name: "_SC_WORD_BIT", value: 107)
!141 = !DIEnumerator(name: "_SC_MB_LEN_MAX", value: 108)
!142 = !DIEnumerator(name: "_SC_NZERO", value: 109)
!143 = !DIEnumerator(name: "_SC_SSIZE_MAX", value: 110)
!144 = !DIEnumerator(name: "_SC_SCHAR_MAX", value: 111)
!145 = !DIEnumerator(name: "_SC_SCHAR_MIN", value: 112)
!146 = !DIEnumerator(name: "_SC_SHRT_MAX", value: 113)
!147 = !DIEnumerator(name: "_SC_SHRT_MIN", value: 114)
!148 = !DIEnumerator(name: "_SC_UCHAR_MAX", value: 115)
!149 = !DIEnumerator(name: "_SC_UINT_MAX", value: 116)
!150 = !DIEnumerator(name: "_SC_ULONG_MAX", value: 117)
!151 = !DIEnumerator(name: "_SC_USHRT_MAX", value: 118)
!152 = !DIEnumerator(name: "_SC_NL_ARGMAX", value: 119)
!153 = !DIEnumerator(name: "_SC_NL_LANGMAX", value: 120)
!154 = !DIEnumerator(name: "_SC_NL_MSGMAX", value: 121)
!155 = !DIEnumerator(name: "_SC_NL_NMAX", value: 122)
!156 = !DIEnumerator(name: "_SC_NL_SETMAX", value: 123)
!157 = !DIEnumerator(name: "_SC_NL_TEXTMAX", value: 124)
!158 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFF32", value: 125)
!159 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFFBIG", value: 126)
!160 = !DIEnumerator(name: "_SC_XBS5_LP64_OFF64", value: 127)
!161 = !DIEnumerator(name: "_SC_XBS5_LPBIG_OFFBIG", value: 128)
!162 = !DIEnumerator(name: "_SC_XOPEN_LEGACY", value: 129)
!163 = !DIEnumerator(name: "_SC_XOPEN_REALTIME", value: 130)
!164 = !DIEnumerator(name: "_SC_XOPEN_REALTIME_THREADS", value: 131)
!165 = !DIEnumerator(name: "_SC_ADVISORY_INFO", value: 132)
!166 = !DIEnumerator(name: "_SC_BARRIERS", value: 133)
!167 = !DIEnumerator(name: "_SC_BASE", value: 134)
!168 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT", value: 135)
!169 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT_R", value: 136)
!170 = !DIEnumerator(name: "_SC_CLOCK_SELECTION", value: 137)
!171 = !DIEnumerator(name: "_SC_CPUTIME", value: 138)
!172 = !DIEnumerator(name: "_SC_THREAD_CPUTIME", value: 139)
!173 = !DIEnumerator(name: "_SC_DEVICE_IO", value: 140)
!174 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC", value: 141)
!175 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC_R", value: 142)
!176 = !DIEnumerator(name: "_SC_FD_MGMT", value: 143)
!177 = !DIEnumerator(name: "_SC_FIFO", value: 144)
!178 = !DIEnumerator(name: "_SC_PIPE", value: 145)
!179 = !DIEnumerator(name: "_SC_FILE_ATTRIBUTES", value: 146)
!180 = !DIEnumerator(name: "_SC_FILE_LOCKING", value: 147)
!181 = !DIEnumerator(name: "_SC_FILE_SYSTEM", value: 148)
!182 = !DIEnumerator(name: "_SC_MONOTONIC_CLOCK", value: 149)
!183 = !DIEnumerator(name: "_SC_MULTI_PROCESS", value: 150)
!184 = !DIEnumerator(name: "_SC_SINGLE_PROCESS", value: 151)
!185 = !DIEnumerator(name: "_SC_NETWORKING", value: 152)
!186 = !DIEnumerator(name: "_SC_READER_WRITER_LOCKS", value: 153)
!187 = !DIEnumerator(name: "_SC_SPIN_LOCKS", value: 154)
!188 = !DIEnumerator(name: "_SC_REGEXP", value: 155)
!189 = !DIEnumerator(name: "_SC_REGEX_VERSION", value: 156)
!190 = !DIEnumerator(name: "_SC_SHELL", value: 157)
!191 = !DIEnumerator(name: "_SC_SIGNALS", value: 158)
!192 = !DIEnumerator(name: "_SC_SPAWN", value: 159)
!193 = !DIEnumerator(name: "_SC_SPORADIC_SERVER", value: 160)
!194 = !DIEnumerator(name: "_SC_THREAD_SPORADIC_SERVER", value: 161)
!195 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE", value: 162)
!196 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE_R", value: 163)
!197 = !DIEnumerator(name: "_SC_TIMEOUTS", value: 164)
!198 = !DIEnumerator(name: "_SC_TYPED_MEMORY_OBJECTS", value: 165)
!199 = !DIEnumerator(name: "_SC_USER_GROUPS", value: 166)
!200 = !DIEnumerator(name: "_SC_USER_GROUPS_R", value: 167)
!201 = !DIEnumerator(name: "_SC_2_PBS", value: 168)
!202 = !DIEnumerator(name: "_SC_2_PBS_ACCOUNTING", value: 169)
!203 = !DIEnumerator(name: "_SC_2_PBS_LOCATE", value: 170)
!204 = !DIEnumerator(name: "_SC_2_PBS_MESSAGE", value: 171)
!205 = !DIEnumerator(name: "_SC_2_PBS_TRACK", value: 172)
!206 = !DIEnumerator(name: "_SC_SYMLOOP_MAX", value: 173)
!207 = !DIEnumerator(name: "_SC_STREAMS", value: 174)
!208 = !DIEnumerator(name: "_SC_2_PBS_CHECKPOINT", value: 175)
!209 = !DIEnumerator(name: "_SC_V6_ILP32_OFF32", value: 176)
!210 = !DIEnumerator(name: "_SC_V6_ILP32_OFFBIG", value: 177)
!211 = !DIEnumerator(name: "_SC_V6_LP64_OFF64", value: 178)
!212 = !DIEnumerator(name: "_SC_V6_LPBIG_OFFBIG", value: 179)
!213 = !DIEnumerator(name: "_SC_HOST_NAME_MAX", value: 180)
!214 = !DIEnumerator(name: "_SC_TRACE", value: 181)
!215 = !DIEnumerator(name: "_SC_TRACE_EVENT_FILTER", value: 182)
!216 = !DIEnumerator(name: "_SC_TRACE_INHERIT", value: 183)
!217 = !DIEnumerator(name: "_SC_TRACE_LOG", value: 184)
!218 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_SIZE", value: 185)
!219 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_ASSOC", value: 186)
!220 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_LINESIZE", value: 187)
!221 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_SIZE", value: 188)
!222 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_ASSOC", value: 189)
!223 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_LINESIZE", value: 190)
!224 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_SIZE", value: 191)
!225 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_ASSOC", value: 192)
!226 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_LINESIZE", value: 193)
!227 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_SIZE", value: 194)
!228 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_ASSOC", value: 195)
!229 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_LINESIZE", value: 196)
!230 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_SIZE", value: 197)
!231 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_ASSOC", value: 198)
!232 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_LINESIZE", value: 199)
!233 = !DIEnumerator(name: "_SC_IPV6", value: 235)
!234 = !DIEnumerator(name: "_SC_RAW_SOCKETS", value: 236)
!235 = !DIEnumerator(name: "_SC_V7_ILP32_OFF32", value: 237)
!236 = !DIEnumerator(name: "_SC_V7_ILP32_OFFBIG", value: 238)
!237 = !DIEnumerator(name: "_SC_V7_LP64_OFF64", value: 239)
!238 = !DIEnumerator(name: "_SC_V7_LPBIG_OFFBIG", value: 240)
!239 = !DIEnumerator(name: "_SC_SS_REPL_MAX", value: 241)
!240 = !DIEnumerator(name: "_SC_TRACE_EVENT_NAME_MAX", value: 242)
!241 = !DIEnumerator(name: "_SC_TRACE_NAME_MAX", value: 243)
!242 = !DIEnumerator(name: "_SC_TRACE_SYS_MAX", value: 244)
!243 = !DIEnumerator(name: "_SC_TRACE_USER_EVENT_MAX", value: 245)
!244 = !DIEnumerator(name: "_SC_XOPEN_STREAMS", value: 246)
!245 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_INHERIT", value: 247)
!246 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_PROTECT", value: 248)
!247 = !{!248, !280, !282, !284, !285, !286, !287, !289, !290, !313, !333, !359, !360, !376}
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64, align: 64)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zedc_asiv_infl", file: !250, line: 110, size: 768, align: 8, elements: !251)
!250 = !DIFile(filename: "../include/deflate_ddcb.h", directory: "/home/lichi/Desktop")
!251 = !{!252, !256, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !271, !274, !275, !276, !277, !278, !279}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "in_buff", scope: !249, file: !250, line: 111, baseType: !253, size: 64, align: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !254, line: 55, baseType: !255)
!254 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop")
!255 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "in_buff_len", scope: !249, file: !250, line: 112, baseType: !257, size: 32, align: 32, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !254, line: 51, baseType: !258)
!258 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "in_crc32", scope: !249, file: !250, line: 113, baseType: !257, size: 32, align: 32, offset: 96)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "out_buff", scope: !249, file: !250, line: 115, baseType: !253, size: 64, align: 64, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "out_buff_len", scope: !249, file: !250, line: 116, baseType: !257, size: 32, align: 32, offset: 192)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "in_adler32", scope: !249, file: !250, line: 117, baseType: !257, size: 32, align: 32, offset: 224)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "in_dict", scope: !249, file: !250, line: 119, baseType: !253, size: 64, align: 64, offset: 256)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "in_dict_len", scope: !249, file: !250, line: 120, baseType: !257, size: 32, align: 32, offset: 320)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_0", scope: !249, file: !250, line: 121, baseType: !257, size: 32, align: 32, offset: 352)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "inp_scratch", scope: !249, file: !250, line: 123, baseType: !253, size: 64, align: 64, offset: 384)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "in_scratch_len", scope: !249, file: !250, line: 124, baseType: !257, size: 32, align: 32, offset: 448)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "in_hdr_bits", scope: !249, file: !250, line: 125, baseType: !269, size: 16, align: 16, offset: 480)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !254, line: 49, baseType: !270)
!270 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_ib", scope: !249, file: !250, line: 126, baseType: !272, size: 8, align: 8, offset: 496)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !254, line: 48, baseType: !273)
!273 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_ib", scope: !249, file: !250, line: 127, baseType: !272, size: 8, align: 8, offset: 504)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "out_dict", scope: !249, file: !250, line: 129, baseType: !253, size: 64, align: 64, offset: 512)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "out_dict_len", scope: !249, file: !250, line: 130, baseType: !257, size: 32, align: 32, offset: 576)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_1", scope: !249, file: !250, line: 131, baseType: !257, size: 32, align: 32, offset: 608)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_2", scope: !249, file: !250, line: 133, baseType: !253, size: 64, align: 64, offset: 640)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_3", scope: !249, file: !250, line: 134, baseType: !253, size: 64, align: 64, offset: 704)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !281, line: 26, baseType: !258)
!281 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "/home/lichi/Desktop")
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !283, line: 30, baseType: !280)
!283 = !DIFile(filename: "/usr/include/linux/types.h", directory: "/home/lichi/Desktop")
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !281, line: 23, baseType: !270)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !283, line: 28, baseType: !284)
!286 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !281, line: 30, baseType: !288)
!288 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be64", file: !283, line: 32, baseType: !287)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64, align: 64)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zedc_asiv_defl", file: !250, line: 179, size: 768, align: 8, elements: !292)
!292 = !{!293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !312}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "in_buff", scope: !291, file: !250, line: 180, baseType: !253, size: 64, align: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "in_buff_len", scope: !291, file: !250, line: 181, baseType: !257, size: 32, align: 32, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "in_crc32", scope: !291, file: !250, line: 182, baseType: !257, size: 32, align: 32, offset: 96)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "out_buff", scope: !291, file: !250, line: 184, baseType: !253, size: 64, align: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "out_buff_len", scope: !291, file: !250, line: 185, baseType: !257, size: 32, align: 32, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "in_adler32", scope: !291, file: !250, line: 186, baseType: !257, size: 32, align: 32, offset: 224)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "in_dict", scope: !291, file: !250, line: 188, baseType: !253, size: 64, align: 64, offset: 256)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "in_dict_len", scope: !291, file: !250, line: 189, baseType: !257, size: 32, align: 32, offset: 320)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_0", scope: !291, file: !250, line: 190, baseType: !257, size: 32, align: 32, offset: 352)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_1", scope: !291, file: !250, line: 192, baseType: !253, size: 64, align: 64, offset: 384)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_2", scope: !291, file: !250, line: 193, baseType: !253, size: 64, align: 64, offset: 448)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "out_dict", scope: !291, file: !250, line: 195, baseType: !253, size: 64, align: 64, offset: 512)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "out_dict_len", scope: !291, file: !250, line: 196, baseType: !257, size: 32, align: 32, offset: 576)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_3", scope: !291, file: !250, line: 197, baseType: !257, size: 32, align: 32, offset: 608)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_4", scope: !291, file: !250, line: 199, baseType: !253, size: 64, align: 64, offset: 640)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "ibits", scope: !291, file: !250, line: 201, baseType: !309, size: 56, align: 8, offset: 704)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 56, align: 8, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 7)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "inumbits", scope: !291, file: !250, line: 202, baseType: !272, size: 8, align: 8, offset: 760)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64, align: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zedc_asv_defl", file: !250, line: 206, size: 512, align: 8, elements: !315)
!315 = !{!316, !317, !321, !322, !323, !324, !325, !326, !327, !331, !332}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "out_dict_used", scope: !314, file: !250, line: 207, baseType: !269, size: 16, align: 16)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "resrv_1", scope: !314, file: !250, line: 208, baseType: !318, size: 40, align: 8, offset: 16)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 40, align: 8, elements: !319)
!319 = !{!320}
!320 = !DISubrange(count: 5)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "onumbits", scope: !314, file: !250, line: 209, baseType: !272, size: 8, align: 8, offset: 56)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "resrv_2", scope: !314, file: !250, line: 210, baseType: !253, size: 64, align: 64, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "out_crc32", scope: !314, file: !250, line: 212, baseType: !257, size: 32, align: 32, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "out_adler32", scope: !314, file: !250, line: 213, baseType: !257, size: 32, align: 32, offset: 160)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "inp_processed", scope: !314, file: !250, line: 214, baseType: !257, size: 32, align: 32, offset: 192)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "outp_returned", scope: !314, file: !250, line: 215, baseType: !257, size: 32, align: 32, offset: 224)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "obits", scope: !314, file: !250, line: 217, baseType: !328, size: 192, align: 8, offset: 256)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 192, align: 8, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 24)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "out_dict_offs", scope: !314, file: !250, line: 218, baseType: !272, size: 8, align: 8, offset: 448)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "obits_extra", scope: !314, file: !250, line: 219, baseType: !309, size: 56, align: 8, offset: 456)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64, align: 64)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zedc_asv_infl", file: !250, line: 149, size: 512, align: 8, elements: !335)
!335 = !{!336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !354, !355, !356, !357, !358}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "out_dict_used", scope: !334, file: !250, line: 150, baseType: !269, size: 16, align: 16)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "copyblock_len", scope: !334, file: !250, line: 151, baseType: !269, size: 16, align: 16, offset: 16)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_84", scope: !334, file: !250, line: 152, baseType: !272, size: 8, align: 8, offset: 32)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "infl_stat", scope: !334, file: !250, line: 153, baseType: !272, size: 8, align: 8, offset: 40)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_86", scope: !334, file: !250, line: 154, baseType: !272, size: 8, align: 8, offset: 48)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "proc_bits", scope: !334, file: !250, line: 155, baseType: !272, size: 8, align: 8, offset: 56)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_start", scope: !334, file: !250, line: 157, baseType: !257, size: 32, align: 32, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_8c", scope: !334, file: !250, line: 158, baseType: !272, size: 8, align: 8, offset: 96)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_start_bits", scope: !334, file: !250, line: 159, baseType: !272, size: 8, align: 8, offset: 104)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "out_hdr_bits", scope: !334, file: !250, line: 160, baseType: !269, size: 16, align: 16, offset: 112)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "out_crc32", scope: !334, file: !250, line: 162, baseType: !257, size: 32, align: 32, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "out_adler32", scope: !334, file: !250, line: 163, baseType: !257, size: 32, align: 32, offset: 160)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "inp_processed", scope: !334, file: !250, line: 165, baseType: !257, size: 32, align: 32, offset: 192)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "outp_returned", scope: !334, file: !250, line: 166, baseType: !257, size: 32, align: 32, offset: 224)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_a0", scope: !334, file: !250, line: 168, baseType: !351, size: 192, align: 64, offset: 256)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 192, align: 64, elements: !352)
!352 = !{!353}
!353 = !DISubrange(count: 3)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "out_dict_offs", scope: !334, file: !250, line: 170, baseType: !272, size: 8, align: 8, offset: 448)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_b9", scope: !334, file: !250, line: 171, baseType: !272, size: 8, align: 8, offset: 456)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "obytes_in_dict", scope: !334, file: !250, line: 172, baseType: !269, size: 16, align: 16, offset: 464)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_bc", scope: !334, file: !250, line: 173, baseType: !269, size: 16, align: 16, offset: 480)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_be", scope: !334, file: !250, line: 174, baseType: !269, size: 16, align: 16, offset: 496)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "zedc_handle_t", file: !4, line: 354, baseType: !361)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64, align: 64)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zedc_dev_t", file: !363, line: 82, size: 256, align: 64, elements: !364)
!363 = !DIFile(filename: "hw_defs.h", directory: "/home/lichi/Desktop")
!364 = !{!365, !367, !368, !373, !374, !375}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !362, file: !363, line: 83, baseType: !366, size: 32, align: 32)
!366 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "zedc_rc", scope: !362, file: !363, line: 84, baseType: !366, size: 32, align: 32, offset: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !362, file: !363, line: 87, baseType: !369, size: 64, align: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "accel_t", file: !370, line: 198, baseType: !371)
!370 = !DIFile(filename: "../include/libddcb.h", directory: "/home/lichi/Desktop")
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64, align: 64)
!372 = !DICompositeType(tag: DW_TAG_structure_type, name: "card_dev_t", file: !370, line: 198, flags: DIFlagFwdDecl)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "card_rc", scope: !362, file: !363, line: 88, baseType: !366, size: 32, align: 32, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "card_errno", scope: !362, file: !363, line: 89, baseType: !366, size: 32, align: 32, offset: 160)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "collect_debug_data", scope: !362, file: !363, line: 90, baseType: !366, size: 32, align: 32, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !377, line: 98, baseType: !378)
!377 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop")
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !379, line: 133, baseType: !366)
!379 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop")
!380 = !{!381, !441, !442, !443}
!381 = distinct !DIGlobalVariable(name: "zedc_log", scope: !0, file: !382, line: 41, type: !383, isLocal: false, isDefinition: true, variable: %struct._IO_FILE** @zedc_log)
!382 = !DIFile(filename: "libzHW.c", directory: "/home/lichi/Desktop")
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64, align: 64)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !385, line: 48, baseType: !386)
!385 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop")
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !387, line: 241, size: 1728, align: 64, elements: !388)
!387 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop")
!388 = !{!389, !390, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !411, !412, !413, !414, !417, !418, !420, !424, !427, !429, !430, !431, !432, !433, !436, !437}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !386, file: !387, line: 242, baseType: !366, size: 32, align: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !386, file: !387, line: 247, baseType: !391, size: 64, align: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64, align: 64)
!392 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !386, file: !387, line: 248, baseType: !391, size: 64, align: 64, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !386, file: !387, line: 249, baseType: !391, size: 64, align: 64, offset: 192)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !386, file: !387, line: 250, baseType: !391, size: 64, align: 64, offset: 256)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !386, file: !387, line: 251, baseType: !391, size: 64, align: 64, offset: 320)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !386, file: !387, line: 252, baseType: !391, size: 64, align: 64, offset: 384)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !386, file: !387, line: 253, baseType: !391, size: 64, align: 64, offset: 448)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !386, file: !387, line: 254, baseType: !391, size: 64, align: 64, offset: 512)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !386, file: !387, line: 256, baseType: !391, size: 64, align: 64, offset: 576)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !386, file: !387, line: 257, baseType: !391, size: 64, align: 64, offset: 640)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !386, file: !387, line: 258, baseType: !391, size: 64, align: 64, offset: 704)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !386, file: !387, line: 260, baseType: !404, size: 64, align: 64, offset: 768)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64, align: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !387, line: 156, size: 192, align: 64, elements: !406)
!406 = !{!407, !408, !410}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !405, file: !387, line: 157, baseType: !404, size: 64, align: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !405, file: !387, line: 158, baseType: !409, size: 64, align: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64, align: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !405, file: !387, line: 162, baseType: !366, size: 32, align: 32, offset: 128)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !386, file: !387, line: 262, baseType: !409, size: 64, align: 64, offset: 832)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !386, file: !387, line: 264, baseType: !366, size: 32, align: 32, offset: 896)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !386, file: !387, line: 268, baseType: !366, size: 32, align: 32, offset: 928)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !386, file: !387, line: 270, baseType: !415, size: 64, align: 64, offset: 960)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !379, line: 131, baseType: !416)
!416 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !386, file: !387, line: 274, baseType: !270, size: 16, align: 16, offset: 1024)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !386, file: !387, line: 275, baseType: !419, size: 8, align: 8, offset: 1040)
!419 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !386, file: !387, line: 276, baseType: !421, size: 8, align: 8, offset: 1048)
!421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 8, align: 8, elements: !422)
!422 = !{!423}
!423 = !DISubrange(count: 1)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !386, file: !387, line: 280, baseType: !425, size: 64, align: 64, offset: 1088)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64, align: 64)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !387, line: 150, baseType: null)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !386, file: !387, line: 289, baseType: !428, size: 64, align: 64, offset: 1152)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !379, line: 132, baseType: !416)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !386, file: !387, line: 297, baseType: !359, size: 64, align: 64, offset: 1216)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !386, file: !387, line: 298, baseType: !359, size: 64, align: 64, offset: 1280)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !386, file: !387, line: 299, baseType: !359, size: 64, align: 64, offset: 1344)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !386, file: !387, line: 300, baseType: !359, size: 64, align: 64, offset: 1408)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !386, file: !387, line: 302, baseType: !434, size: 64, align: 64, offset: 1472)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !435, line: 216, baseType: !255)
!435 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop")
!436 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !386, file: !387, line: 303, baseType: !366, size: 32, align: 32, offset: 1536)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !386, file: !387, line: 305, baseType: !438, size: 160, align: 8, offset: 1568)
!438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 160, align: 8, elements: !439)
!439 = !{!440}
!440 = !DISubrange(count: 20)
!441 = distinct !DIGlobalVariable(name: "zedc_dbg", scope: !0, file: !382, line: 42, type: !366, isLocal: false, isDefinition: true, variable: i32* @zedc_dbg)
!442 = distinct !DIGlobalVariable(name: "zedc_nerr", scope: !0, file: !382, line: 76, type: !366, isLocal: true, isDefinition: true, variable: i32* @zedc_nerr)
!443 = distinct !DIGlobalVariable(name: "zedc_errlist", scope: !0, file: !382, line: 50, type: !444, isLocal: true, isDefinition: true, variable: [19 x %struct.err_lookup]* @zedc_errlist)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 2432, align: 64, elements: !451)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "err_lookup", file: !382, line: 45, size: 128, align: 64, elements: !446)
!446 = !{!447, !448}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !445, file: !382, line: 46, baseType: !366, size: 32, align: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !445, file: !382, line: 47, baseType: !449, size: 64, align: 64, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64, align: 64)
!450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !392)
!451 = !{!452}
!452 = !DISubrange(count: 19)
!453 = !{i32 2, !"Dwarf Version", i32 4}
!454 = !{i32 2, !"Debug Info Version", i32 3}
!455 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!456 = distinct !DISubprogram(name: "zedc_Version", scope: !382, file: !382, line: 78, type: !457, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !459)
!457 = !DISubroutineType(types: !458)
!458 = !{!449}
!459 = !{}
!460 = !DILocation(line: 80, column: 2, scope: !456)
!461 = distinct !DISubprogram(name: "zedc_set_logfile", scope: !382, file: !382, line: 83, type: !462, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !459)
!462 = !DISubroutineType(types: !463)
!463 = !{null, !383}
!464 = !DILocalVariable(name: "logfile", arg: 1, scope: !461, file: !382, line: 83, type: !383)
!465 = !DIExpression()
!466 = !DILocation(line: 83, column: 29, scope: !461)
!467 = !DILocation(line: 85, column: 14, scope: !461)
!468 = !DILocation(line: 85, column: 12, scope: !461)
!469 = !DILocation(line: 86, column: 1, scope: !461)
!470 = distinct !DISubprogram(name: "zedc_clearerr", scope: !382, file: !382, line: 88, type: !471, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !459)
!471 = !DISubroutineType(types: !472)
!472 = !{!366, !360}
!473 = !DILocalVariable(name: "zedc", arg: 1, scope: !470, file: !382, line: 88, type: !360)
!474 = !DILocation(line: 88, column: 33, scope: !470)
!475 = !DILocation(line: 90, column: 7, scope: !476)
!476 = distinct !DILexicalBlock(scope: !470, file: !382, line: 90, column: 6)
!477 = !DILocation(line: 90, column: 6, scope: !470)
!478 = !DILocation(line: 91, column: 3, scope: !476)
!479 = !DILocation(line: 93, column: 2, scope: !470)
!480 = !DILocation(line: 93, column: 8, scope: !470)
!481 = !DILocation(line: 93, column: 16, scope: !470)
!482 = !DILocation(line: 94, column: 2, scope: !470)
!483 = !DILocation(line: 94, column: 8, scope: !470)
!484 = !DILocation(line: 94, column: 16, scope: !470)
!485 = !DILocation(line: 96, column: 2, scope: !470)
!486 = !DILocation(line: 97, column: 1, scope: !470)
!487 = distinct !DISubprogram(name: "zedc_strerror", scope: !382, file: !382, line: 105, type: !488, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !459)
!488 = !DISubroutineType(types: !489)
!489 = !{!449, !366}
!490 = !DILocalVariable(name: "errnum", arg: 1, scope: !487, file: !382, line: 105, type: !366)
!491 = !DILocation(line: 105, column: 31, scope: !487)
!492 = !DILocalVariable(name: "i", scope: !487, file: !382, line: 107, type: !366)
!493 = !DILocation(line: 107, column: 6, scope: !487)
!494 = !DILocation(line: 109, column: 4, scope: !487)
!495 = !DILocation(line: 110, column: 2, scope: !487)
!496 = !DILocation(line: 110, column: 9, scope: !497)
!497 = !DILexicalBlockFile(scope: !487, file: !382, discriminator: 1)
!498 = !DILocation(line: 110, column: 13, scope: !497)
!499 = !DILocation(line: 110, column: 11, scope: !497)
!500 = !DILocation(line: 110, column: 2, scope: !497)
!501 = !DILocation(line: 111, column: 7, scope: !502)
!502 = distinct !DILexicalBlock(scope: !503, file: !382, line: 111, column: 7)
!503 = distinct !DILexicalBlock(scope: !487, file: !382, line: 110, column: 24)
!504 = !DILocation(line: 111, column: 30, scope: !502)
!505 = !DILocation(line: 111, column: 17, scope: !502)
!506 = !DILocation(line: 111, column: 33, scope: !502)
!507 = !DILocation(line: 111, column: 14, scope: !502)
!508 = !DILocation(line: 111, column: 7, scope: !503)
!509 = !DILocation(line: 112, column: 24, scope: !502)
!510 = !DILocation(line: 112, column: 11, scope: !502)
!511 = !DILocation(line: 112, column: 27, scope: !502)
!512 = !DILocation(line: 112, column: 4, scope: !502)
!513 = !DILocation(line: 113, column: 4, scope: !503)
!514 = !DILocation(line: 110, column: 2, scope: !515)
!515 = !DILexicalBlockFile(scope: !487, file: !382, discriminator: 2)
!516 = distinct !{!516, !495}
!517 = !DILocation(line: 115, column: 2, scope: !487)
!518 = !DILocation(line: 116, column: 1, scope: !487)
!519 = distinct !DISubprogram(name: "zedc_carderr", scope: !382, file: !382, line: 118, type: !471, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !459)
!520 = !DILocalVariable(name: "zedc", arg: 1, scope: !519, file: !382, line: 118, type: !360)
!521 = !DILocation(line: 118, column: 32, scope: !519)
!522 = !DILocation(line: 120, column: 7, scope: !523)
!523 = distinct !DILexicalBlock(scope: !519, file: !382, line: 120, column: 6)
!524 = !DILocation(line: 120, column: 6, scope: !519)
!525 = !DILocation(line: 121, column: 3, scope: !523)
!526 = !DILocation(line: 123, column: 9, scope: !519)
!527 = !DILocation(line: 123, column: 15, scope: !519)
!528 = !DILocation(line: 123, column: 2, scope: !519)
!529 = !DILocation(line: 124, column: 1, scope: !519)
!530 = distinct !DISubprogram(name: "zedc_liberr", scope: !382, file: !382, line: 126, type: !471, isLocal: false, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !459)
!531 = !DILocalVariable(name: "zedc", arg: 1, scope: !530, file: !382, line: 126, type: !360)
!532 = !DILocation(line: 126, column: 31, scope: !530)
!533 = !DILocation(line: 128, column: 7, scope: !534)
!534 = distinct !DILexicalBlock(scope: !530, file: !382, line: 128, column: 6)
!535 = !DILocation(line: 128, column: 6, scope: !530)
!536 = !DILocation(line: 129, column: 3, scope: !534)
!537 = !DILocation(line: 131, column: 9, scope: !530)
!538 = !DILocation(line: 131, column: 15, scope: !530)
!539 = !DILocation(line: 131, column: 2, scope: !530)
!540 = !DILocation(line: 132, column: 1, scope: !530)
!541 = distinct !DISubprogram(name: "zedc_last_cmd", scope: !382, file: !382, line: 134, type: !542, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !459)
!542 = !DISubroutineType(types: !543)
!543 = !{!544, !582}
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64, align: 64)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ddcb_cmd", file: !370, line: 154, size: 1856, align: 64, elements: !546)
!546 = !{!547, !548, !549, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !567}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "next_addr", scope: !545, file: !370, line: 155, baseType: !287, size: 64, align: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !545, file: !370, line: 156, baseType: !287, size: 64, align: 64, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "acfunc", scope: !545, file: !370, line: 158, baseType: !550, size: 8, align: 8, offset: 128)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !281, line: 20, baseType: !273)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !545, file: !370, line: 159, baseType: !550, size: 8, align: 8, offset: 136)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "asiv_length", scope: !545, file: !370, line: 160, baseType: !550, size: 8, align: 8, offset: 144)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "asv_length", scope: !545, file: !370, line: 161, baseType: !550, size: 8, align: 8, offset: 152)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "cmdopts", scope: !545, file: !370, line: 162, baseType: !284, size: 16, align: 16, offset: 160)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "retc", scope: !545, file: !370, line: 163, baseType: !284, size: 16, align: 16, offset: 176)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "attn", scope: !545, file: !370, line: 165, baseType: !284, size: 16, align: 16, offset: 192)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "vcrc", scope: !545, file: !370, line: 166, baseType: !284, size: 16, align: 16, offset: 208)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !545, file: !370, line: 167, baseType: !280, size: 32, align: 32, offset: 224)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "deque_ts", scope: !545, file: !370, line: 169, baseType: !287, size: 64, align: 64, offset: 256)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "cmplt_ts", scope: !545, file: !370, line: 170, baseType: !287, size: 64, align: 64, offset: 320)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "disp_ts", scope: !545, file: !370, line: 171, baseType: !287, size: 64, align: 64, offset: 384)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "ddata_addr", scope: !545, file: !370, line: 173, baseType: !287, size: 64, align: 64, offset: 448)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "asv", scope: !545, file: !370, line: 175, baseType: !564, size: 512, align: 8, offset: 512)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !550, size: 512, align: 8, elements: !565)
!565 = !{!566}
!566 = !DISubrange(count: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, scope: !545, file: !370, line: 177, baseType: !568, size: 832, align: 64, offset: 1024)
!568 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !545, file: !370, line: 177, size: 832, align: 64, elements: !569)
!569 = !{!570, !578}
!570 = !DIDerivedType(tag: DW_TAG_member, scope: !568, file: !370, line: 179, baseType: !571, size: 832, align: 64)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !568, file: !370, line: 179, size: 832, align: 64, elements: !572)
!572 = !{!573, !574}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "ats", scope: !571, file: !370, line: 180, baseType: !287, size: 64, align: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "asiv", scope: !571, file: !370, line: 181, baseType: !575, size: 768, align: 8, offset: 64)
!575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !550, size: 768, align: 8, elements: !576)
!576 = !{!577}
!577 = !DISubrange(count: 96)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "__asiv", scope: !568, file: !370, line: 184, baseType: !579, size: 832, align: 8)
!579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !550, size: 832, align: 8, elements: !580)
!580 = !{!581}
!581 = !DISubrange(count: 104)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64, align: 64)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zedc_stream_s", file: !4, line: 218, size: 8704, align: 64, elements: !584)
!584 = !{!585, !586, !587, !588, !589, !590, !591, !592, !595, !596, !597, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !620, !621, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !645, !646, !648, !649, !650, !651, !652, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !696, !697, !698, !699}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !583, file: !4, line: 220, baseType: !366, size: 32, align: 32)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !583, file: !4, line: 221, baseType: !366, size: 32, align: 32, offset: 32)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "windowBits", scope: !583, file: !4, line: 222, baseType: !366, size: 32, align: 32, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "memLevel", scope: !583, file: !4, line: 227, baseType: !366, size: 32, align: 32, offset: 96)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "strategy", scope: !583, file: !4, line: 228, baseType: !366, size: 32, align: 32, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !583, file: !4, line: 229, baseType: !366, size: 32, align: 32, offset: 160)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "data_type", scope: !583, file: !4, line: 230, baseType: !366, size: 32, align: 32, offset: 192)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !583, file: !4, line: 233, baseType: !593, size: 64, align: 64, offset: 256)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64, align: 64)
!594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !583, file: !4, line: 234, baseType: !258, size: 32, align: 32, offset: 320)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !583, file: !4, line: 235, baseType: !255, size: 64, align: 64, offset: 384)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !583, file: !4, line: 237, baseType: !598, size: 64, align: 64, offset: 448)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64, align: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !583, file: !4, line: 238, baseType: !258, size: 32, align: 32, offset: 512)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !583, file: !4, line: 239, baseType: !255, size: 64, align: 64, offset: 576)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !583, file: !4, line: 241, baseType: !257, size: 32, align: 32, offset: 640)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "adler32", scope: !583, file: !4, line: 242, baseType: !257, size: 32, align: 32, offset: 672)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !583, file: !4, line: 255, baseType: !359, size: 64, align: 64, offset: 704)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !583, file: !4, line: 256, baseType: !545, size: 1856, align: 64, offset: 768)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "retc", scope: !583, file: !4, line: 257, baseType: !269, size: 16, align: 16, offset: 2624)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "attn", scope: !583, file: !4, line: 258, baseType: !269, size: 16, align: 16, offset: 2640)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !583, file: !4, line: 259, baseType: !257, size: 32, align: 32, offset: 2656)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !583, file: !4, line: 262, baseType: !366, size: 32, align: 32, offset: 2688)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !583, file: !4, line: 263, baseType: !366, size: 32, align: 32, offset: 2720)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "out_fifo", scope: !583, file: !4, line: 266, baseType: !611, size: 2112, align: 32, offset: 2752)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zedc_fifo", file: !612, line: 45, size: 2112, align: 32, elements: !613)
!612 = !DIFile(filename: "../include/deflate_fifo.h", directory: "/home/lichi/Desktop")
!613 = !{!614, !615, !616}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !611, file: !612, line: 46, baseType: !258, size: 32, align: 32)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "pop", scope: !611, file: !612, line: 47, baseType: !258, size: 32, align: 32, offset: 32)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "fifo", scope: !611, file: !612, line: 48, baseType: !617, size: 2048, align: 8, offset: 64)
!617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 2048, align: 8, elements: !618)
!618 = !{!619}
!619 = !DISubrange(count: 256)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "in_fifo", scope: !583, file: !4, line: 267, baseType: !611, size: 2112, align: 32, offset: 4864)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "header_state", scope: !583, file: !4, line: 268, baseType: !622, size: 32, align: 32, offset: 6976)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "head_state", file: !4, line: 163, baseType: !3)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_hcrc", scope: !583, file: !4, line: 269, baseType: !269, size: 16, align: 16, offset: 7008)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_header_idx", scope: !583, file: !4, line: 270, baseType: !366, size: 32, align: 32, offset: 7040)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "onumbits", scope: !583, file: !4, line: 273, baseType: !366, size: 32, align: 32, offset: 7072)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "obyte", scope: !583, file: !4, line: 274, baseType: !272, size: 8, align: 8, offset: 7104)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "eob_seen", scope: !583, file: !4, line: 277, baseType: !366, size: 32, align: 32, offset: 7136)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "eob_added", scope: !583, file: !4, line: 278, baseType: !366, size: 32, align: 32, offset: 7168)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "header_added", scope: !583, file: !4, line: 279, baseType: !366, size: 32, align: 32, offset: 7200)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "trailer_added", scope: !583, file: !4, line: 280, baseType: !366, size: 32, align: 32, offset: 7232)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "havedict", scope: !583, file: !4, line: 281, baseType: !366, size: 32, align: 32, offset: 7264)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "wsp", scope: !583, file: !4, line: 284, baseType: !633, size: 64, align: 64, offset: 7296)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64, align: 64)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zedc_wsp", file: !250, line: 93, size: 528640, align: 8, elements: !635)
!635 = !{!636, !641}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !634, file: !250, line: 94, baseType: !637, size: 524544, align: 8)
!637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 524544, align: 8, elements: !638)
!638 = !{!639, !640}
!639 = !DISubrange(count: 2)
!640 = !DISubrange(count: 32784)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !634, file: !250, line: 95, baseType: !642, size: 4096, align: 8, offset: 524544)
!642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 4096, align: 8, elements: !643)
!643 = !{!644}
!644 = !DISubrange(count: 512)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "wsp_page", scope: !583, file: !4, line: 285, baseType: !366, size: 32, align: 32, offset: 7360)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "dma_type", scope: !583, file: !4, line: 286, baseType: !647, size: 96, align: 32, offset: 7392)
!647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 96, align: 32, elements: !352)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "file_size", scope: !583, file: !4, line: 289, baseType: !257, size: 32, align: 32, offset: 7488)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "file_adler32", scope: !583, file: !4, line: 290, baseType: !257, size: 32, align: 32, offset: 7520)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "file_crc32", scope: !583, file: !4, line: 291, baseType: !257, size: 32, align: 32, offset: 7552)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "dict_adler32", scope: !583, file: !4, line: 292, baseType: !257, size: 32, align: 32, offset: 7584)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_head", scope: !583, file: !4, line: 293, baseType: !653, size: 64, align: 64, offset: 7616)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64, align: 64)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gzedc_header_s", file: !4, line: 169, size: 640, align: 64, elements: !655)
!655 = !{!656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !654, file: !4, line: 170, baseType: !366, size: 32, align: 32)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !654, file: !4, line: 171, baseType: !255, size: 64, align: 64, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "xflags", scope: !654, file: !4, line: 172, baseType: !366, size: 32, align: 32, offset: 128)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "os", scope: !654, file: !4, line: 173, baseType: !366, size: 32, align: 32, offset: 160)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !654, file: !4, line: 174, baseType: !598, size: 64, align: 64, offset: 192)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "extra_len", scope: !654, file: !4, line: 175, baseType: !258, size: 32, align: 32, offset: 256)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "extra_max", scope: !654, file: !4, line: 176, baseType: !258, size: 32, align: 32, offset: 288)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !654, file: !4, line: 177, baseType: !391, size: 64, align: 64, offset: 320)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "name_max", scope: !654, file: !4, line: 178, baseType: !258, size: 32, align: 32, offset: 384)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !654, file: !4, line: 179, baseType: !391, size: 64, align: 64, offset: 448)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "comm_max", scope: !654, file: !4, line: 180, baseType: !258, size: 32, align: 32, offset: 512)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "hcrc", scope: !654, file: !4, line: 181, baseType: !366, size: 32, align: 32, offset: 544)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !654, file: !4, line: 182, baseType: !366, size: 32, align: 32, offset: 576)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "in_hdr_scratch_len", scope: !583, file: !4, line: 297, baseType: !257, size: 32, align: 32, offset: 7680)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "in_hdr_bits", scope: !583, file: !4, line: 298, baseType: !269, size: 16, align: 16, offset: 7712)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_ib", scope: !583, file: !4, line: 299, baseType: !272, size: 8, align: 8, offset: 7728)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_ib", scope: !583, file: !4, line: 300, baseType: !272, size: 8, align: 8, offset: 7736)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "inp_processed", scope: !583, file: !4, line: 303, baseType: !257, size: 32, align: 32, offset: 7744)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "outp_returned", scope: !583, file: !4, line: 304, baseType: !257, size: 32, align: 32, offset: 7776)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "proc_bits", scope: !583, file: !4, line: 305, baseType: !272, size: 8, align: 8, offset: 7808)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "infl_stat", scope: !583, file: !4, line: 313, baseType: !272, size: 8, align: 8, offset: 7816)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_start", scope: !583, file: !4, line: 318, baseType: !257, size: 32, align: 32, offset: 7840)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "out_hdr_bits", scope: !583, file: !4, line: 319, baseType: !269, size: 16, align: 16, offset: 7872)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "out_hdr_start_bits", scope: !583, file: !4, line: 320, baseType: !272, size: 8, align: 8, offset: 7888)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "copyblock_len", scope: !583, file: !4, line: 321, baseType: !269, size: 16, align: 16, offset: 7904)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "tree_bits", scope: !583, file: !4, line: 324, baseType: !257, size: 32, align: 32, offset: 7936)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "pad_bits", scope: !583, file: !4, line: 325, baseType: !257, size: 32, align: 32, offset: 7968)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_bits", scope: !583, file: !4, line: 326, baseType: !257, size: 32, align: 32, offset: 8000)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "pre_scratch_bits", scope: !583, file: !4, line: 327, baseType: !253, size: 64, align: 64, offset: 8064)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "inp_data_offs", scope: !583, file: !4, line: 328, baseType: !257, size: 32, align: 32, offset: 8128)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "in_data_used", scope: !583, file: !4, line: 329, baseType: !257, size: 32, align: 32, offset: 8160)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "dict_len", scope: !583, file: !4, line: 332, baseType: !269, size: 16, align: 16, offset: 8192)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "out_dict_offs", scope: !583, file: !4, line: 333, baseType: !272, size: 8, align: 8, offset: 8208)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "obytes_in_dict", scope: !583, file: !4, line: 334, baseType: !269, size: 16, align: 16, offset: 8224)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "prefx_len", scope: !583, file: !4, line: 337, baseType: !366, size: 32, align: 32, offset: 8256)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "prefx_idx", scope: !583, file: !4, line: 338, baseType: !366, size: 32, align: 32, offset: 8288)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "prefx", scope: !583, file: !4, line: 339, baseType: !693, size: 144, align: 8, offset: 8320)
!693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 144, align: 8, elements: !694)
!694 = !{!695}
!695 = !DISubrange(count: 18)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "xlen", scope: !583, file: !4, line: 340, baseType: !269, size: 16, align: 16, offset: 8464)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "postfx_len", scope: !583, file: !4, line: 342, baseType: !366, size: 32, align: 32, offset: 8480)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "postfx_idx", scope: !583, file: !4, line: 343, baseType: !366, size: 32, align: 32, offset: 8512)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "postfx", scope: !583, file: !4, line: 344, baseType: !693, size: 144, align: 8, offset: 8544)
!700 = !DILocalVariable(name: "strm", arg: 1, scope: !541, file: !382, line: 134, type: !582)
!701 = !DILocation(line: 134, column: 54, scope: !541)
!702 = !DILocation(line: 136, column: 7, scope: !703)
!703 = distinct !DILexicalBlock(scope: !541, file: !382, line: 136, column: 6)
!704 = !DILocation(line: 136, column: 6, scope: !541)
!705 = !DILocation(line: 137, column: 3, scope: !703)
!706 = !DILocation(line: 139, column: 10, scope: !541)
!707 = !DILocation(line: 139, column: 16, scope: !541)
!708 = !DILocation(line: 139, column: 2, scope: !541)
!709 = !DILocation(line: 140, column: 1, scope: !541)
!710 = distinct !DISubprogram(name: "zedc_pstatus", scope: !382, file: !382, line: 147, type: !711, isLocal: false, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !459)
!711 = !DISubroutineType(types: !712)
!712 = !{!366, !582, !449}
!713 = !DILocalVariable(name: "strm", arg: 1, scope: !710, file: !382, line: 147, type: !582)
!714 = !DILocation(line: 147, column: 40, scope: !710)
!715 = !DILocalVariable(name: "task", arg: 2, scope: !710, file: !382, line: 147, type: !449)
!716 = !DILocation(line: 147, column: 58, scope: !710)
!717 = !DILocalVariable(name: "c", scope: !710, file: !382, line: 149, type: !366)
!718 = !DILocation(line: 149, column: 6, scope: !710)
!719 = !DILocation(line: 151, column: 13, scope: !710)
!720 = !DILocation(line: 153, column: 27, scope: !710)
!721 = !DILocation(line: 153, column: 33, scope: !710)
!722 = !DILocation(line: 153, column: 39, scope: !710)
!723 = !DILocation(line: 153, column: 49, scope: !710)
!724 = !DILocation(line: 153, column: 55, scope: !710)
!725 = !DILocation(line: 154, column: 7, scope: !710)
!726 = !DILocation(line: 154, column: 13, scope: !710)
!727 = !DILocation(line: 154, column: 23, scope: !710)
!728 = !DILocation(line: 154, column: 29, scope: !710)
!729 = !DILocation(line: 151, column: 6, scope: !710)
!730 = !DILocation(line: 151, column: 4, scope: !710)
!731 = !DILocation(line: 156, column: 10, scope: !710)
!732 = !DILocation(line: 156, column: 16, scope: !710)
!733 = !DILocation(line: 156, column: 2, scope: !710)
!734 = !DILocation(line: 158, column: 15, scope: !735)
!735 = distinct !DILexicalBlock(scope: !710, file: !382, line: 156, column: 24)
!736 = !DILocation(line: 159, column: 9, scope: !735)
!737 = !DILocation(line: 159, column: 15, scope: !735)
!738 = !DILocation(line: 159, column: 27, scope: !735)
!739 = !DILocation(line: 159, column: 33, scope: !735)
!740 = !DILocation(line: 158, column: 8, scope: !735)
!741 = !DILocation(line: 158, column: 5, scope: !735)
!742 = !DILocation(line: 160, column: 15, scope: !735)
!743 = !DILocation(line: 161, column: 9, scope: !735)
!744 = !DILocation(line: 161, column: 15, scope: !735)
!745 = !DILocation(line: 161, column: 26, scope: !735)
!746 = !DILocation(line: 161, column: 32, scope: !735)
!747 = !DILocation(line: 160, column: 8, scope: !735)
!748 = !DILocation(line: 160, column: 5, scope: !735)
!749 = !DILocation(line: 162, column: 3, scope: !735)
!750 = !DILocation(line: 165, column: 15, scope: !735)
!751 = !DILocation(line: 166, column: 9, scope: !735)
!752 = !DILocation(line: 166, column: 15, scope: !735)
!753 = !DILocation(line: 166, column: 29, scope: !735)
!754 = !DILocation(line: 166, column: 35, scope: !735)
!755 = !DILocation(line: 165, column: 8, scope: !735)
!756 = !DILocation(line: 165, column: 5, scope: !735)
!757 = !DILocation(line: 167, column: 3, scope: !735)
!758 = !DILocation(line: 170, column: 3, scope: !735)
!759 = !DILocation(line: 172, column: 9, scope: !710)
!760 = !DILocation(line: 172, column: 2, scope: !710)
!761 = distinct !DISubprogram(name: "zedc_lib_debug", scope: !382, file: !382, line: 180, type: !762, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !459)
!762 = !DISubroutineType(types: !763)
!763 = !{null, !366}
!764 = !DILocalVariable(name: "onoff", arg: 1, scope: !761, file: !382, line: 180, type: !366)
!765 = !DILocation(line: 180, column: 25, scope: !761)
!766 = !DILocation(line: 182, column: 13, scope: !761)
!767 = !DILocation(line: 182, column: 11, scope: !761)
!768 = !DILocation(line: 183, column: 1, scope: !761)
!769 = distinct !DISubprogram(name: "zedc_asiv_infl_print", scope: !382, file: !382, line: 191, type: !770, isLocal: false, isDefinition: true, scopeLine: 192, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !459)
!770 = !DISubroutineType(types: !771)
!771 = !{null, !772}
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "zedc_streamp", file: !4, line: 347, baseType: !582)
!773 = !DILocalVariable(name: "strm", arg: 1, scope: !769, file: !382, line: 191, type: !772)
!774 = !DILocation(line: 191, column: 40, scope: !769)
!775 = !DILocalVariable(name: "cmd", scope: !769, file: !382, line: 193, type: !544)
!776 = !DILocation(line: 193, column: 19, scope: !769)
!777 = !DILocation(line: 193, column: 26, scope: !769)
!778 = !DILocation(line: 193, column: 32, scope: !769)
!779 = !DILocalVariable(name: "wsp", scope: !769, file: !382, line: 194, type: !633)
!780 = !DILocation(line: 194, column: 19, scope: !769)
!781 = !DILocation(line: 194, column: 25, scope: !769)
!782 = !DILocation(line: 194, column: 31, scope: !769)
!783 = !DILocalVariable(name: "asiv", scope: !769, file: !382, line: 195, type: !248)
!784 = !DILocation(line: 195, column: 25, scope: !769)
!785 = !DILocation(line: 195, column: 57, scope: !769)
!786 = !DILocation(line: 195, column: 62, scope: !769)
!787 = !DILocation(line: 195, column: 32, scope: !769)
!788 = !DILocalVariable(name: "out_buff_len", scope: !769, file: !382, line: 196, type: !257)
!789 = !DILocation(line: 196, column: 11, scope: !769)
!790 = !DILocation(line: 196, column: 25, scope: !769)
!791 = !DILocation(line: 196, column: 31, scope: !769)
!792 = !DILocation(line: 196, column: 62, scope: !769)
!793 = !DILocalVariable(name: "in_buff_len", scope: !769, file: !382, line: 197, type: !257)
!794 = !DILocation(line: 197, column: 11, scope: !769)
!795 = !DILocation(line: 197, column: 25, scope: !769)
!796 = !DILocation(line: 197, column: 31, scope: !769)
!797 = !DILocation(line: 197, column: 62, scope: !769)
!798 = !DILocalVariable(name: "in_hdr_bits", scope: !769, file: !382, line: 198, type: !269)
!799 = !DILocation(line: 198, column: 11, scope: !769)
!800 = !DILocation(line: 198, column: 25, scope: !769)
!801 = !DILocation(line: 198, column: 31, scope: !769)
!802 = !DILocation(line: 198, column: 56, scope: !769)
!803 = !DILocation(line: 200, column: 2, scope: !769)
!804 = distinct !{!804, !803}
!805 = !DILocation(line: 200, column: 11, scope: !806)
!806 = !DILexicalBlockFile(scope: !807, file: !382, discriminator: 1)
!807 = distinct !DILexicalBlock(scope: !808, file: !382, line: 200, column: 11)
!808 = distinct !DILexicalBlock(scope: !769, file: !382, line: 200, column: 5)
!809 = !DILocation(line: 200, column: 20, scope: !806)
!810 = !DILocation(line: 200, column: 23, scope: !811)
!811 = !DILexicalBlockFile(scope: !807, file: !382, discriminator: 2)
!812 = !DILocation(line: 200, column: 11, scope: !811)
!813 = !DILocation(line: 200, column: 41, scope: !814)
!814 = !DILexicalBlockFile(scope: !807, file: !382, discriminator: 3)
!815 = !DILocation(line: 200, column: 667, scope: !814)
!816 = !DILocation(line: 200, column: 677, scope: !817)
!817 = !DILexicalBlockFile(scope: !814, file: !382, discriminator: 5)
!818 = !DILocation(line: 200, column: 1, scope: !814)
!819 = !DILocation(line: 200, column: 7, scope: !814)
!820 = !DILocation(line: 200, column: 47, scope: !821)
!821 = !DILexicalBlockFile(scope: !814, file: !382, discriminator: 6)
!822 = !DILocation(line: 200, column: 3, scope: !814)
!823 = !DILocation(line: 200, column: 16, scope: !814)
!824 = !DILocation(line: 200, column: 47, scope: !825)
!825 = !DILexicalBlockFile(scope: !814, file: !382, discriminator: 7)
!826 = !DILocation(line: 200, column: 17, scope: !814)
!827 = !DILocation(line: 200, column: 47, scope: !828)
!828 = !DILexicalBlockFile(scope: !814, file: !382, discriminator: 8)
!829 = !DILocation(line: 200, column: 38, scope: !830)
!830 = !DILexicalBlockFile(scope: !814, file: !382, discriminator: 9)
!831 = !DILocation(line: 200, column: 38, scope: !832)
!832 = !DILexicalBlockFile(scope: !814, file: !382, discriminator: 10)
!833 = !DILocation(line: 200, column: 47, scope: !834)
!834 = !DILexicalBlockFile(scope: !814, file: !382, discriminator: 11)
!835 = !DILocation(line: 200, column: 38, scope: !836)
!836 = !DILexicalBlockFile(scope: !814, file: !382, discriminator: 12)
!837 = !DILocation(line: 200, column: 38, scope: !838)
!838 = !DILexicalBlockFile(scope: !814, file: !382, discriminator: 13)
!839 = !DILocation(line: 200, column: 47, scope: !840)
!840 = !DILexicalBlockFile(scope: !814, file: !382, discriminator: 14)
!841 = !DILocation(line: 200, column: 38, scope: !842)
!842 = !DILexicalBlockFile(scope: !814, file: !382, discriminator: 15)
!843 = !DILocation(line: 200, column: 38, scope: !844)
!844 = !DILexicalBlockFile(scope: !814, file: !382, discriminator: 16)
!845 = !DILocation(line: 200, column: 28, scope: !814)
!846 = !DILocation(line: 200, column: 33, scope: !814)
!847 = !DILocation(line: 200, column: 45, scope: !814)
!848 = !DILocation(line: 200, column: 50, scope: !814)
!849 = !DILocation(line: 200, column: 56, scope: !814)
!850 = !DILocation(line: 200, column: 64, scope: !814)
!851 = !DILocation(line: 200, column: 70, scope: !814)
!852 = !DILocation(line: 200, column: 38, scope: !853)
!853 = !DILexicalBlockFile(scope: !814, file: !382, discriminator: 17)
!854 = !DILocation(line: 200, column: 38, scope: !855)
!855 = !DILexicalBlockFile(scope: !814, file: !382, discriminator: 18)
!856 = !DILocation(line: 200, column: 33, scope: !857)
!857 = !DILexicalBlockFile(scope: !814, file: !382, discriminator: 19)
!858 = !DILocation(line: 200, column: 4, scope: !859)
!859 = !DILexicalBlockFile(scope: !808, file: !382, discriminator: 4)
!860 = !DILocation(line: 234, column: 2, scope: !769)
!861 = distinct !{!861, !860}
!862 = !DILocation(line: 234, column: 11, scope: !863)
!863 = !DILexicalBlockFile(scope: !864, file: !382, discriminator: 1)
!864 = distinct !DILexicalBlock(scope: !865, file: !382, line: 234, column: 11)
!865 = distinct !DILexicalBlock(scope: !769, file: !382, line: 234, column: 5)
!866 = !DILocation(line: 234, column: 20, scope: !863)
!867 = !DILocation(line: 234, column: 23, scope: !868)
!868 = !DILexicalBlockFile(scope: !864, file: !382, discriminator: 2)
!869 = !DILocation(line: 234, column: 11, scope: !868)
!870 = !DILocation(line: 234, column: 41, scope: !871)
!871 = !DILexicalBlockFile(scope: !864, file: !382, discriminator: 3)
!872 = !DILocation(line: 234, column: 193, scope: !871)
!873 = !DILocation(line: 234, column: 203, scope: !874)
!874 = !DILexicalBlockFile(scope: !871, file: !382, discriminator: 5)
!875 = !DILocation(line: 234, column: 15, scope: !871)
!876 = !DILocation(line: 234, column: 20, scope: !871)
!877 = !DILocation(line: 234, column: 25, scope: !871)
!878 = !DILocation(line: 234, column: 30, scope: !871)
!879 = !DILocation(line: 234, column: 35, scope: !871)
!880 = !DILocation(line: 234, column: 40, scope: !871)
!881 = !DILocation(line: 234, column: 33, scope: !882)
!882 = !DILexicalBlockFile(scope: !871, file: !382, discriminator: 6)
!883 = !DILocation(line: 234, column: 33, scope: !871)
!884 = !DILocation(line: 234, column: 50, scope: !885)
!885 = !DILexicalBlockFile(scope: !865, file: !382, discriminator: 4)
!886 = !DILocation(line: 240, column: 6, scope: !887)
!887 = distinct !DILexicalBlock(scope: !769, file: !382, line: 240, column: 6)
!888 = !DILocation(line: 240, column: 15, scope: !887)
!889 = !DILocation(line: 240, column: 6, scope: !769)
!890 = !DILocation(line: 241, column: 3, scope: !891)
!891 = distinct !DILexicalBlock(scope: !887, file: !382, line: 240, column: 20)
!892 = distinct !{!892, !890}
!893 = !DILocation(line: 241, column: 12, scope: !894)
!894 = !DILexicalBlockFile(scope: !895, file: !382, discriminator: 1)
!895 = distinct !DILexicalBlock(scope: !896, file: !382, line: 241, column: 12)
!896 = distinct !DILexicalBlock(scope: !891, file: !382, line: 241, column: 6)
!897 = !DILocation(line: 241, column: 21, scope: !894)
!898 = !DILocation(line: 241, column: 24, scope: !899)
!899 = !DILexicalBlockFile(scope: !895, file: !382, discriminator: 2)
!900 = !DILocation(line: 241, column: 12, scope: !899)
!901 = !DILocation(line: 241, column: 42, scope: !902)
!902 = !DILexicalBlockFile(scope: !895, file: !382, discriminator: 3)
!903 = !DILocation(line: 241, column: 100, scope: !902)
!904 = !DILocation(line: 241, column: 110, scope: !905)
!905 = !DILexicalBlockFile(scope: !902, file: !382, discriminator: 5)
!906 = !DILocation(line: 241, column: 34, scope: !907)
!907 = !DILexicalBlockFile(scope: !902, file: !382, discriminator: 6)
!908 = !DILocation(line: 241, column: 34, scope: !902)
!909 = !DILocation(line: 241, column: 138, scope: !910)
!910 = !DILexicalBlockFile(scope: !896, file: !382, discriminator: 4)
!911 = !DILocation(line: 242, column: 16, scope: !891)
!912 = !DILocation(line: 242, column: 26, scope: !891)
!913 = !DILocation(line: 242, column: 31, scope: !891)
!914 = !DILocation(line: 242, column: 3, scope: !891)
!915 = !DILocation(line: 244, column: 3, scope: !891)
!916 = distinct !{!916, !915}
!917 = !DILocation(line: 244, column: 12, scope: !918)
!918 = !DILexicalBlockFile(scope: !919, file: !382, discriminator: 1)
!919 = distinct !DILexicalBlock(scope: !920, file: !382, line: 244, column: 12)
!920 = distinct !DILexicalBlock(scope: !891, file: !382, line: 244, column: 6)
!921 = !DILocation(line: 244, column: 21, scope: !918)
!922 = !DILocation(line: 244, column: 24, scope: !923)
!923 = !DILexicalBlockFile(scope: !919, file: !382, discriminator: 2)
!924 = !DILocation(line: 244, column: 12, scope: !923)
!925 = !DILocation(line: 244, column: 42, scope: !926)
!926 = !DILexicalBlockFile(scope: !919, file: !382, discriminator: 3)
!927 = !DILocation(line: 244, column: 100, scope: !926)
!928 = !DILocation(line: 244, column: 110, scope: !929)
!929 = !DILexicalBlockFile(scope: !926, file: !382, discriminator: 5)
!930 = !DILocation(line: 244, column: 34, scope: !931)
!931 = !DILexicalBlockFile(scope: !926, file: !382, discriminator: 6)
!932 = !DILocation(line: 244, column: 34, scope: !926)
!933 = !DILocation(line: 244, column: 138, scope: !934)
!934 = !DILexicalBlockFile(scope: !920, file: !382, discriminator: 4)
!935 = !DILocation(line: 245, column: 16, scope: !891)
!936 = !DILocation(line: 245, column: 26, scope: !891)
!937 = !DILocation(line: 245, column: 31, scope: !891)
!938 = !DILocation(line: 245, column: 3, scope: !891)
!939 = !DILocation(line: 247, column: 3, scope: !891)
!940 = distinct !{!940, !939}
!941 = !DILocation(line: 247, column: 12, scope: !942)
!942 = !DILexicalBlockFile(scope: !943, file: !382, discriminator: 1)
!943 = distinct !DILexicalBlock(scope: !944, file: !382, line: 247, column: 12)
!944 = distinct !DILexicalBlock(scope: !891, file: !382, line: 247, column: 6)
!945 = !DILocation(line: 247, column: 21, scope: !942)
!946 = !DILocation(line: 247, column: 24, scope: !947)
!947 = !DILexicalBlockFile(scope: !943, file: !382, discriminator: 2)
!948 = !DILocation(line: 247, column: 12, scope: !947)
!949 = !DILocation(line: 247, column: 42, scope: !950)
!950 = !DILexicalBlockFile(scope: !943, file: !382, discriminator: 3)
!951 = !DILocation(line: 247, column: 99, scope: !950)
!952 = !DILocation(line: 247, column: 109, scope: !953)
!953 = !DILexicalBlockFile(scope: !950, file: !382, discriminator: 5)
!954 = !DILocation(line: 247, column: 34, scope: !955)
!955 = !DILexicalBlockFile(scope: !950, file: !382, discriminator: 6)
!956 = !DILocation(line: 247, column: 34, scope: !950)
!957 = !DILocation(line: 247, column: 137, scope: !958)
!958 = !DILexicalBlockFile(scope: !944, file: !382, discriminator: 4)
!959 = !DILocation(line: 248, column: 16, scope: !891)
!960 = !DILocation(line: 248, column: 26, scope: !891)
!961 = !DILocation(line: 248, column: 31, scope: !891)
!962 = !DILocation(line: 248, column: 3, scope: !891)
!963 = !DILocation(line: 249, column: 2, scope: !891)
!964 = !DILocation(line: 250, column: 1, scope: !769)
!965 = distinct !DISubprogram(name: "__fswab32", scope: !966, file: !966, line: 57, type: !967, isLocal: true, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !459)
!966 = !DIFile(filename: "/usr/include/linux/swab.h", directory: "/home/lichi/Desktop")
!967 = !DISubroutineType(types: !968)
!968 = !{!280, !280}
!969 = !DILocalVariable(name: "val", arg: 1, scope: !965, file: !966, line: 57, type: !280)
!970 = !DILocation(line: 57, column: 41, scope: !965)
!971 = !DILocation(line: 62, column: 23, scope: !965)
!972 = !DILocation(line: 62, column: 9, scope: !965)
!973 = !DILocation(line: 62, column: 2, scope: !965)
!974 = distinct !DISubprogram(name: "__fswab16", scope: !966, file: !966, line: 46, type: !975, isLocal: true, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !459)
!975 = !DISubroutineType(types: !976)
!976 = !{!284, !284}
!977 = !DILocalVariable(name: "val", arg: 1, scope: !974, file: !966, line: 46, type: !284)
!978 = !DILocation(line: 46, column: 41, scope: !974)
!979 = !DILocation(line: 53, column: 29, scope: !974)
!980 = !DILocation(line: 53, column: 21, scope: !974)
!981 = !DILocation(line: 53, column: 34, scope: !974)
!982 = !DILocation(line: 53, column: 52, scope: !974)
!983 = !DILocation(line: 53, column: 70, scope: !974)
!984 = !DILocation(line: 53, column: 62, scope: !974)
!985 = !DILocation(line: 53, column: 75, scope: !974)
!986 = !DILocation(line: 53, column: 93, scope: !974)
!987 = !DILocation(line: 53, column: 58, scope: !974)
!988 = !DILocation(line: 53, column: 10, scope: !974)
!989 = !DILocation(line: 53, column: 2, scope: !974)
!990 = distinct !DISubprogram(name: "gettid", scope: !363, file: !363, line: 36, type: !991, isLocal: true, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !459)
!991 = !DISubroutineType(types: !992)
!992 = !{!376}
!993 = !DILocation(line: 38, column: 16, scope: !990)
!994 = !DILocation(line: 38, column: 9, scope: !990)
!995 = !DILocation(line: 38, column: 2, scope: !990)
!996 = distinct !DISubprogram(name: "__fswab64", scope: !966, file: !966, line: 68, type: !997, isLocal: true, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !459)
!997 = !DISubroutineType(types: !998)
!998 = !{!287, !287}
!999 = !DILocalVariable(name: "val", arg: 1, scope: !996, file: !966, line: 68, type: !287)
!1000 = !DILocation(line: 68, column: 41, scope: !996)
!1001 = !DILocation(line: 73, column: 23, scope: !996)
!1002 = !DILocation(line: 73, column: 9, scope: !996)
!1003 = !DILocation(line: 73, column: 2, scope: !996)
!1004 = distinct !DISubprogram(name: "zedc_asiv_defl_print", scope: !382, file: !382, line: 258, type: !1005, isLocal: false, isDefinition: true, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !459)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{null, !772, !366}
!1007 = !DILocalVariable(name: "strm", arg: 1, scope: !1004, file: !382, line: 258, type: !772)
!1008 = !DILocation(line: 258, column: 40, scope: !1004)
!1009 = !DILocalVariable(name: "dbg", arg: 2, scope: !1004, file: !382, line: 258, type: !366)
!1010 = !DILocation(line: 258, column: 50, scope: !1004)
!1011 = !DILocalVariable(name: "cmd", scope: !1004, file: !382, line: 260, type: !544)
!1012 = !DILocation(line: 260, column: 19, scope: !1004)
!1013 = !DILocation(line: 260, column: 26, scope: !1004)
!1014 = !DILocation(line: 260, column: 32, scope: !1004)
!1015 = !DILocalVariable(name: "asiv", scope: !1004, file: !382, line: 261, type: !290)
!1016 = !DILocation(line: 261, column: 25, scope: !1004)
!1017 = !DILocation(line: 261, column: 57, scope: !1004)
!1018 = !DILocation(line: 261, column: 62, scope: !1004)
!1019 = !DILocation(line: 261, column: 32, scope: !1004)
!1020 = !DILocalVariable(name: "out_buff_len", scope: !1004, file: !382, line: 262, type: !257)
!1021 = !DILocation(line: 262, column: 11, scope: !1004)
!1022 = !DILocation(line: 262, column: 25, scope: !1004)
!1023 = !DILocation(line: 262, column: 31, scope: !1004)
!1024 = !DILocation(line: 262, column: 62, scope: !1004)
!1025 = !DILocalVariable(name: "in_buff_len", scope: !1004, file: !382, line: 263, type: !257)
!1026 = !DILocation(line: 263, column: 11, scope: !1004)
!1027 = !DILocation(line: 263, column: 24, scope: !1004)
!1028 = !DILocation(line: 263, column: 30, scope: !1004)
!1029 = !DILocation(line: 263, column: 61, scope: !1004)
!1030 = !DILocation(line: 265, column: 2, scope: !1004)
!1031 = distinct !{!1031, !1030}
!1032 = !DILocation(line: 265, column: 11, scope: !1033)
!1033 = !DILexicalBlockFile(scope: !1034, file: !382, discriminator: 1)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !382, line: 265, column: 11)
!1035 = distinct !DILexicalBlock(scope: !1004, file: !382, line: 265, column: 5)
!1036 = !DILocation(line: 265, column: 20, scope: !1033)
!1037 = !DILocation(line: 265, column: 24, scope: !1038)
!1038 = !DILexicalBlockFile(scope: !1034, file: !382, discriminator: 2)
!1039 = !DILocation(line: 265, column: 23, scope: !1038)
!1040 = !DILocation(line: 265, column: 11, scope: !1038)
!1041 = !DILocation(line: 265, column: 38, scope: !1042)
!1042 = !DILexicalBlockFile(scope: !1034, file: !382, discriminator: 3)
!1043 = !DILocation(line: 265, column: 506, scope: !1042)
!1044 = !DILocation(line: 265, column: 516, scope: !1045)
!1045 = !DILexicalBlockFile(scope: !1042, file: !382, discriminator: 5)
!1046 = !DILocation(line: 265, column: 1, scope: !1042)
!1047 = !DILocation(line: 265, column: 7, scope: !1042)
!1048 = !DILocation(line: 265, column: 47, scope: !1049)
!1049 = !DILexicalBlockFile(scope: !1042, file: !382, discriminator: 6)
!1050 = !DILocation(line: 265, column: 3, scope: !1042)
!1051 = !DILocation(line: 265, column: 16, scope: !1042)
!1052 = !DILocation(line: 265, column: 38, scope: !1053)
!1053 = !DILexicalBlockFile(scope: !1042, file: !382, discriminator: 7)
!1054 = !DILocation(line: 265, column: 47, scope: !1055)
!1055 = !DILexicalBlockFile(scope: !1042, file: !382, discriminator: 8)
!1056 = !DILocation(line: 265, column: 17, scope: !1042)
!1057 = !DILocation(line: 265, column: 38, scope: !1058)
!1058 = !DILexicalBlockFile(scope: !1042, file: !382, discriminator: 9)
!1059 = !DILocation(line: 265, column: 47, scope: !1060)
!1060 = !DILexicalBlockFile(scope: !1042, file: !382, discriminator: 10)
!1061 = !DILocation(line: 265, column: 38, scope: !1062)
!1062 = !DILexicalBlockFile(scope: !1042, file: !382, discriminator: 11)
!1063 = !DILocation(line: 265, column: 38, scope: !1064)
!1064 = !DILexicalBlockFile(scope: !1042, file: !382, discriminator: 12)
!1065 = !DILocation(line: 265, column: 47, scope: !1066)
!1066 = !DILexicalBlockFile(scope: !1042, file: !382, discriminator: 13)
!1067 = !DILocation(line: 265, column: 38, scope: !1068)
!1068 = !DILexicalBlockFile(scope: !1042, file: !382, discriminator: 14)
!1069 = !DILocation(line: 265, column: 38, scope: !1070)
!1070 = !DILexicalBlockFile(scope: !1042, file: !382, discriminator: 15)
!1071 = !DILocation(line: 265, column: 9, scope: !1042)
!1072 = !DILocation(line: 265, column: 30, scope: !1073)
!1073 = !DILexicalBlockFile(scope: !1042, file: !382, discriminator: 16)
!1074 = !DILocation(line: 265, column: 30, scope: !1042)
!1075 = !DILocation(line: 265, column: 20, scope: !1076)
!1076 = !DILexicalBlockFile(scope: !1035, file: !382, discriminator: 4)
!1077 = !DILocation(line: 291, column: 2, scope: !1004)
!1078 = distinct !{!1078, !1077}
!1079 = !DILocation(line: 291, column: 11, scope: !1080)
!1080 = !DILexicalBlockFile(scope: !1081, file: !382, discriminator: 1)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !382, line: 291, column: 11)
!1082 = distinct !DILexicalBlock(scope: !1004, file: !382, line: 291, column: 5)
!1083 = !DILocation(line: 291, column: 20, scope: !1080)
!1084 = !DILocation(line: 291, column: 24, scope: !1085)
!1085 = !DILexicalBlockFile(scope: !1081, file: !382, discriminator: 2)
!1086 = !DILocation(line: 291, column: 23, scope: !1085)
!1087 = !DILocation(line: 291, column: 11, scope: !1085)
!1088 = !DILocation(line: 291, column: 38, scope: !1089)
!1089 = !DILexicalBlockFile(scope: !1081, file: !382, discriminator: 3)
!1090 = !DILocation(line: 291, column: 190, scope: !1089)
!1091 = !DILocation(line: 291, column: 200, scope: !1092)
!1092 = !DILexicalBlockFile(scope: !1089, file: !382, discriminator: 5)
!1093 = !DILocation(line: 291, column: 15, scope: !1089)
!1094 = !DILocation(line: 291, column: 20, scope: !1089)
!1095 = !DILocation(line: 291, column: 25, scope: !1089)
!1096 = !DILocation(line: 291, column: 30, scope: !1089)
!1097 = !DILocation(line: 291, column: 35, scope: !1089)
!1098 = !DILocation(line: 291, column: 40, scope: !1089)
!1099 = !DILocation(line: 291, column: 30, scope: !1100)
!1100 = !DILexicalBlockFile(scope: !1089, file: !382, discriminator: 6)
!1101 = !DILocation(line: 291, column: 50, scope: !1102)
!1102 = !DILexicalBlockFile(scope: !1082, file: !382, discriminator: 4)
!1103 = !DILocation(line: 297, column: 2, scope: !1004)
!1104 = distinct !{!1104, !1103}
!1105 = !DILocation(line: 297, column: 11, scope: !1106)
!1106 = !DILexicalBlockFile(scope: !1107, file: !382, discriminator: 1)
!1107 = distinct !DILexicalBlock(scope: !1108, file: !382, line: 297, column: 11)
!1108 = distinct !DILexicalBlock(scope: !1004, file: !382, line: 297, column: 5)
!1109 = !DILocation(line: 297, column: 20, scope: !1106)
!1110 = !DILocation(line: 297, column: 24, scope: !1111)
!1111 = !DILexicalBlockFile(scope: !1107, file: !382, discriminator: 2)
!1112 = !DILocation(line: 297, column: 23, scope: !1111)
!1113 = !DILocation(line: 297, column: 11, scope: !1111)
!1114 = !DILocation(line: 297, column: 38, scope: !1115)
!1115 = !DILexicalBlockFile(scope: !1107, file: !382, discriminator: 3)
!1116 = !DILocation(line: 297, column: 128, scope: !1115)
!1117 = !DILocation(line: 297, column: 138, scope: !1118)
!1118 = !DILexicalBlockFile(scope: !1115, file: !382, discriminator: 5)
!1119 = !DILocation(line: 297, column: 4, scope: !1115)
!1120 = !DILocation(line: 297, column: 10, scope: !1115)
!1121 = !DILocation(line: 297, column: 20, scope: !1115)
!1122 = !DILocation(line: 297, column: 26, scope: !1115)
!1123 = !DILocation(line: 297, column: 36, scope: !1115)
!1124 = !DILocation(line: 297, column: 42, scope: !1115)
!1125 = !DILocation(line: 297, column: 52, scope: !1115)
!1126 = !DILocation(line: 297, column: 58, scope: !1115)
!1127 = !DILocation(line: 297, column: 68, scope: !1115)
!1128 = !DILocation(line: 297, column: 74, scope: !1115)
!1129 = !DILocation(line: 297, column: 84, scope: !1115)
!1130 = !DILocation(line: 297, column: 90, scope: !1115)
!1131 = !DILocation(line: 297, column: 100, scope: !1115)
!1132 = !DILocation(line: 297, column: 106, scope: !1115)
!1133 = !DILocation(line: 297, column: 30, scope: !1134)
!1134 = !DILexicalBlockFile(scope: !1115, file: !382, discriminator: 6)
!1135 = !DILocation(line: 297, column: 30, scope: !1115)
!1136 = !DILocation(line: 297, column: 117, scope: !1137)
!1137 = !DILexicalBlockFile(scope: !1108, file: !382, discriminator: 4)
!1138 = !DILocation(line: 301, column: 1, scope: !1004)
!1139 = distinct !DISubprogram(name: "zedc_asv_defl_print", scope: !382, file: !382, line: 307, type: !1005, isLocal: false, isDefinition: true, scopeLine: 308, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !459)
!1140 = !DILocalVariable(name: "strm", arg: 1, scope: !1139, file: !382, line: 307, type: !772)
!1141 = !DILocation(line: 307, column: 39, scope: !1139)
!1142 = !DILocalVariable(name: "dbg", arg: 2, scope: !1139, file: !382, line: 307, type: !366)
!1143 = !DILocation(line: 307, column: 49, scope: !1139)
!1144 = !DILocalVariable(name: "cmd", scope: !1139, file: !382, line: 309, type: !544)
!1145 = !DILocation(line: 309, column: 19, scope: !1139)
!1146 = !DILocation(line: 309, column: 26, scope: !1139)
!1147 = !DILocation(line: 309, column: 32, scope: !1139)
!1148 = !DILocalVariable(name: "asv", scope: !1139, file: !382, line: 310, type: !313)
!1149 = !DILocation(line: 310, column: 24, scope: !1139)
!1150 = !DILocation(line: 310, column: 54, scope: !1139)
!1151 = !DILocation(line: 310, column: 59, scope: !1139)
!1152 = !DILocation(line: 310, column: 30, scope: !1139)
!1153 = !DILocalVariable(name: "inp_processed", scope: !1139, file: !382, line: 311, type: !257)
!1154 = !DILocation(line: 311, column: 11, scope: !1139)
!1155 = !DILocation(line: 311, column: 26, scope: !1139)
!1156 = !DILocation(line: 311, column: 31, scope: !1139)
!1157 = !DILocation(line: 311, column: 63, scope: !1139)
!1158 = !DILocalVariable(name: "outp_returned", scope: !1139, file: !382, line: 312, type: !257)
!1159 = !DILocation(line: 312, column: 11, scope: !1139)
!1160 = !DILocation(line: 312, column: 26, scope: !1139)
!1161 = !DILocation(line: 312, column: 31, scope: !1139)
!1162 = !DILocation(line: 312, column: 63, scope: !1139)
!1163 = !DILocation(line: 314, column: 2, scope: !1139)
!1164 = distinct !{!1164, !1163}
!1165 = !DILocation(line: 314, column: 11, scope: !1166)
!1166 = !DILexicalBlockFile(scope: !1167, file: !382, discriminator: 1)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !382, line: 314, column: 11)
!1168 = distinct !DILexicalBlock(scope: !1139, file: !382, line: 314, column: 5)
!1169 = !DILocation(line: 314, column: 20, scope: !1166)
!1170 = !DILocation(line: 314, column: 24, scope: !1171)
!1171 = !DILexicalBlockFile(scope: !1167, file: !382, discriminator: 2)
!1172 = !DILocation(line: 314, column: 23, scope: !1171)
!1173 = !DILocation(line: 314, column: 11, scope: !1171)
!1174 = !DILocation(line: 314, column: 38, scope: !1175)
!1175 = !DILexicalBlockFile(scope: !1167, file: !382, discriminator: 3)
!1176 = !DILocation(line: 314, column: 377, scope: !1175)
!1177 = !DILocation(line: 314, column: 387, scope: !1178)
!1178 = !DILexicalBlockFile(scope: !1175, file: !382, discriminator: 5)
!1179 = !DILocation(line: 314, column: 1, scope: !1175)
!1180 = !DILocation(line: 314, column: 6, scope: !1175)
!1181 = !DILocation(line: 314, column: 32, scope: !1182)
!1182 = !DILexicalBlockFile(scope: !1175, file: !382, discriminator: 6)
!1183 = !DILocation(line: 314, column: 32, scope: !1175)
!1184 = !DILocation(line: 314, column: 32, scope: !1185)
!1185 = !DILexicalBlockFile(scope: !1175, file: !382, discriminator: 7)
!1186 = !DILocation(line: 314, column: 3, scope: !1175)
!1187 = !DILocation(line: 314, column: 8, scope: !1175)
!1188 = !DILocation(line: 314, column: 18, scope: !1175)
!1189 = !DILocation(line: 314, column: 23, scope: !1175)
!1190 = !DILocation(line: 314, column: 38, scope: !1191)
!1191 = !DILexicalBlockFile(scope: !1175, file: !382, discriminator: 8)
!1192 = !DILocation(line: 314, column: 38, scope: !1193)
!1193 = !DILexicalBlockFile(scope: !1175, file: !382, discriminator: 9)
!1194 = !DILocation(line: 314, column: 33, scope: !1175)
!1195 = !DILocation(line: 314, column: 48, scope: !1175)
!1196 = !DILocation(line: 314, column: 63, scope: !1175)
!1197 = !DILocation(line: 314, column: 68, scope: !1175)
!1198 = !DILocation(line: 314, column: 83, scope: !1175)
!1199 = !DILocation(line: 314, column: 88, scope: !1175)
!1200 = !DILocation(line: 314, column: 30, scope: !1201)
!1201 = !DILexicalBlockFile(scope: !1175, file: !382, discriminator: 10)
!1202 = !DILocation(line: 314, column: 30, scope: !1175)
!1203 = !DILocation(line: 314, column: 104, scope: !1204)
!1204 = !DILexicalBlockFile(scope: !1168, file: !382, discriminator: 4)
!1205 = !DILocation(line: 329, column: 2, scope: !1139)
!1206 = distinct !{!1206, !1205}
!1207 = !DILocation(line: 329, column: 11, scope: !1208)
!1208 = !DILexicalBlockFile(scope: !1209, file: !382, discriminator: 1)
!1209 = distinct !DILexicalBlock(scope: !1210, file: !382, line: 329, column: 11)
!1210 = distinct !DILexicalBlock(scope: !1139, file: !382, line: 329, column: 5)
!1211 = !DILocation(line: 329, column: 20, scope: !1208)
!1212 = !DILocation(line: 329, column: 24, scope: !1213)
!1213 = !DILexicalBlockFile(scope: !1209, file: !382, discriminator: 2)
!1214 = !DILocation(line: 329, column: 23, scope: !1213)
!1215 = !DILocation(line: 329, column: 11, scope: !1213)
!1216 = !DILocation(line: 329, column: 38, scope: !1217)
!1217 = !DILexicalBlockFile(scope: !1209, file: !382, discriminator: 3)
!1218 = !DILocation(line: 329, column: 190, scope: !1217)
!1219 = !DILocation(line: 329, column: 200, scope: !1220)
!1220 = !DILexicalBlockFile(scope: !1217, file: !382, discriminator: 5)
!1221 = !DILocation(line: 329, column: 15, scope: !1217)
!1222 = !DILocation(line: 329, column: 20, scope: !1217)
!1223 = !DILocation(line: 329, column: 25, scope: !1217)
!1224 = !DILocation(line: 329, column: 30, scope: !1217)
!1225 = !DILocation(line: 329, column: 35, scope: !1217)
!1226 = !DILocation(line: 329, column: 40, scope: !1217)
!1227 = !DILocation(line: 329, column: 30, scope: !1228)
!1228 = !DILexicalBlockFile(scope: !1217, file: !382, discriminator: 6)
!1229 = !DILocation(line: 329, column: 50, scope: !1230)
!1230 = !DILexicalBlockFile(scope: !1210, file: !382, discriminator: 4)
!1231 = !DILocation(line: 335, column: 6, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1139, file: !382, line: 335, column: 6)
!1233 = !DILocation(line: 335, column: 6, scope: !1139)
!1234 = !DILocation(line: 336, column: 3, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1232, file: !382, line: 335, column: 11)
!1236 = distinct !{!1236, !1234}
!1237 = !DILocation(line: 336, column: 12, scope: !1238)
!1238 = !DILexicalBlockFile(scope: !1239, file: !382, discriminator: 1)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !382, line: 336, column: 12)
!1240 = distinct !DILexicalBlock(scope: !1235, file: !382, line: 336, column: 6)
!1241 = !DILocation(line: 336, column: 21, scope: !1238)
!1242 = !DILocation(line: 336, column: 25, scope: !1243)
!1243 = !DILexicalBlockFile(scope: !1239, file: !382, discriminator: 2)
!1244 = !DILocation(line: 336, column: 24, scope: !1243)
!1245 = !DILocation(line: 336, column: 12, scope: !1243)
!1246 = !DILocation(line: 336, column: 39, scope: !1247)
!1247 = !DILexicalBlockFile(scope: !1239, file: !382, discriminator: 3)
!1248 = !DILocation(line: 336, column: 89, scope: !1247)
!1249 = !DILocation(line: 336, column: 99, scope: !1250)
!1250 = !DILexicalBlockFile(scope: !1247, file: !382, discriminator: 5)
!1251 = !DILocation(line: 336, column: 31, scope: !1252)
!1252 = !DILexicalBlockFile(scope: !1247, file: !382, discriminator: 6)
!1253 = !DILocation(line: 336, column: 31, scope: !1247)
!1254 = !DILocation(line: 336, column: 127, scope: !1255)
!1255 = !DILexicalBlockFile(scope: !1240, file: !382, discriminator: 4)
!1256 = !DILocation(line: 337, column: 16, scope: !1235)
!1257 = !DILocation(line: 337, column: 26, scope: !1235)
!1258 = !DILocation(line: 337, column: 31, scope: !1235)
!1259 = !DILocation(line: 337, column: 3, scope: !1235)
!1260 = !DILocation(line: 338, column: 3, scope: !1235)
!1261 = distinct !{!1261, !1260}
!1262 = !DILocation(line: 338, column: 12, scope: !1263)
!1263 = !DILexicalBlockFile(scope: !1264, file: !382, discriminator: 1)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !382, line: 338, column: 12)
!1265 = distinct !DILexicalBlock(scope: !1235, file: !382, line: 338, column: 6)
!1266 = !DILocation(line: 338, column: 21, scope: !1263)
!1267 = !DILocation(line: 338, column: 25, scope: !1268)
!1268 = !DILexicalBlockFile(scope: !1264, file: !382, discriminator: 2)
!1269 = !DILocation(line: 338, column: 24, scope: !1268)
!1270 = !DILocation(line: 338, column: 12, scope: !1268)
!1271 = !DILocation(line: 338, column: 39, scope: !1272)
!1272 = !DILexicalBlockFile(scope: !1264, file: !382, discriminator: 3)
!1273 = !DILocation(line: 338, column: 95, scope: !1272)
!1274 = !DILocation(line: 338, column: 105, scope: !1275)
!1275 = !DILexicalBlockFile(scope: !1272, file: !382, discriminator: 5)
!1276 = !DILocation(line: 338, column: 31, scope: !1277)
!1277 = !DILexicalBlockFile(scope: !1272, file: !382, discriminator: 6)
!1278 = !DILocation(line: 338, column: 31, scope: !1272)
!1279 = !DILocation(line: 338, column: 133, scope: !1280)
!1280 = !DILexicalBlockFile(scope: !1265, file: !382, discriminator: 4)
!1281 = !DILocation(line: 339, column: 16, scope: !1235)
!1282 = !DILocation(line: 339, column: 26, scope: !1235)
!1283 = !DILocation(line: 339, column: 31, scope: !1235)
!1284 = !DILocation(line: 339, column: 3, scope: !1235)
!1285 = !DILocation(line: 340, column: 2, scope: !1235)
!1286 = !DILocation(line: 341, column: 1, scope: !1139)
!1287 = distinct !DISubprogram(name: "zedc_asv_infl_print", scope: !382, file: !382, line: 347, type: !770, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !459)
!1288 = !DILocalVariable(name: "strm", arg: 1, scope: !1287, file: !382, line: 347, type: !772)
!1289 = !DILocation(line: 347, column: 39, scope: !1287)
!1290 = !DILocalVariable(name: "cmd", scope: !1287, file: !382, line: 349, type: !544)
!1291 = !DILocation(line: 349, column: 19, scope: !1287)
!1292 = !DILocation(line: 349, column: 26, scope: !1287)
!1293 = !DILocation(line: 349, column: 32, scope: !1287)
!1294 = !DILocalVariable(name: "wsp", scope: !1287, file: !382, line: 350, type: !633)
!1295 = !DILocation(line: 350, column: 19, scope: !1287)
!1296 = !DILocation(line: 350, column: 25, scope: !1287)
!1297 = !DILocation(line: 350, column: 31, scope: !1287)
!1298 = !DILocalVariable(name: "asv", scope: !1287, file: !382, line: 351, type: !333)
!1299 = !DILocation(line: 351, column: 24, scope: !1287)
!1300 = !DILocation(line: 351, column: 54, scope: !1287)
!1301 = !DILocation(line: 351, column: 59, scope: !1287)
!1302 = !DILocation(line: 351, column: 30, scope: !1287)
!1303 = !DILocalVariable(name: "inp_processed", scope: !1287, file: !382, line: 352, type: !257)
!1304 = !DILocation(line: 352, column: 11, scope: !1287)
!1305 = !DILocation(line: 352, column: 26, scope: !1287)
!1306 = !DILocation(line: 352, column: 31, scope: !1287)
!1307 = !DILocation(line: 352, column: 63, scope: !1287)
!1308 = !DILocalVariable(name: "outp_returned", scope: !1287, file: !382, line: 353, type: !257)
!1309 = !DILocation(line: 353, column: 11, scope: !1287)
!1310 = !DILocation(line: 353, column: 26, scope: !1287)
!1311 = !DILocation(line: 353, column: 31, scope: !1287)
!1312 = !DILocation(line: 353, column: 63, scope: !1287)
!1313 = !DILocalVariable(name: "hdr_bits", scope: !1287, file: !382, line: 354, type: !269)
!1314 = !DILocation(line: 354, column: 11, scope: !1287)
!1315 = !DILocation(line: 354, column: 26, scope: !1287)
!1316 = !DILocation(line: 354, column: 31, scope: !1287)
!1317 = !DILocation(line: 354, column: 57, scope: !1287)
!1318 = !DILocation(line: 356, column: 2, scope: !1287)
!1319 = distinct !{!1319, !1318}
!1320 = !DILocation(line: 356, column: 11, scope: !1321)
!1321 = !DILexicalBlockFile(scope: !1322, file: !382, discriminator: 1)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !382, line: 356, column: 11)
!1323 = distinct !DILexicalBlock(scope: !1287, file: !382, line: 356, column: 5)
!1324 = !DILocation(line: 356, column: 20, scope: !1321)
!1325 = !DILocation(line: 356, column: 23, scope: !1326)
!1326 = !DILexicalBlockFile(scope: !1322, file: !382, discriminator: 2)
!1327 = !DILocation(line: 356, column: 11, scope: !1326)
!1328 = !DILocation(line: 356, column: 41, scope: !1329)
!1329 = !DILexicalBlockFile(scope: !1322, file: !382, discriminator: 3)
!1330 = !DILocation(line: 356, column: 621, scope: !1329)
!1331 = !DILocation(line: 356, column: 631, scope: !1332)
!1332 = !DILexicalBlockFile(scope: !1329, file: !382, discriminator: 5)
!1333 = !DILocation(line: 356, column: 1, scope: !1329)
!1334 = !DILocation(line: 356, column: 6, scope: !1329)
!1335 = !DILocation(line: 356, column: 32, scope: !1336)
!1336 = !DILexicalBlockFile(scope: !1329, file: !382, discriminator: 6)
!1337 = !DILocation(line: 356, column: 32, scope: !1329)
!1338 = !DILocation(line: 356, column: 32, scope: !1339)
!1339 = !DILexicalBlockFile(scope: !1329, file: !382, discriminator: 7)
!1340 = !DILocation(line: 356, column: 32, scope: !1341)
!1341 = !DILexicalBlockFile(scope: !1329, file: !382, discriminator: 8)
!1342 = !DILocation(line: 356, column: 32, scope: !1343)
!1343 = !DILexicalBlockFile(scope: !1329, file: !382, discriminator: 9)
!1344 = !DILocation(line: 356, column: 3, scope: !1329)
!1345 = !DILocation(line: 356, column: 8, scope: !1329)
!1346 = !DILocation(line: 356, column: 19, scope: !1329)
!1347 = !DILocation(line: 356, column: 24, scope: !1329)
!1348 = !DILocation(line: 356, column: 38, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !1329, file: !382, discriminator: 10)
!1350 = !DILocation(line: 356, column: 34, scope: !1329)
!1351 = !DILocation(line: 356, column: 44, scope: !1329)
!1352 = !DILocation(line: 356, column: 53, scope: !1329)
!1353 = !DILocation(line: 356, column: 58, scope: !1329)
!1354 = !DILocation(line: 356, column: 67, scope: !1329)
!1355 = !DILocation(line: 356, column: 38, scope: !1356)
!1356 = !DILexicalBlockFile(scope: !1329, file: !382, discriminator: 11)
!1357 = !DILocation(line: 356, column: 38, scope: !1358)
!1358 = !DILexicalBlockFile(scope: !1329, file: !382, discriminator: 12)
!1359 = !DILocation(line: 356, column: 18, scope: !1329)
!1360 = !DILocation(line: 356, column: 33, scope: !1329)
!1361 = !DILocation(line: 356, column: 48, scope: !1329)
!1362 = !DILocation(line: 356, column: 63, scope: !1329)
!1363 = !DILocation(line: 356, column: 68, scope: !1329)
!1364 = !DILocation(line: 356, column: 83, scope: !1329)
!1365 = !DILocation(line: 356, column: 88, scope: !1329)
!1366 = !DILocation(line: 356, column: 32, scope: !1367)
!1367 = !DILexicalBlockFile(scope: !1329, file: !382, discriminator: 13)
!1368 = !DILocation(line: 356, column: 32, scope: !1369)
!1369 = !DILexicalBlockFile(scope: !1329, file: !382, discriminator: 14)
!1370 = !DILocation(line: 356, column: 33, scope: !1371)
!1371 = !DILexicalBlockFile(scope: !1329, file: !382, discriminator: 15)
!1372 = !DILocation(line: 356, column: 4, scope: !1373)
!1373 = !DILexicalBlockFile(scope: !1323, file: !382, discriminator: 4)
!1374 = !DILocation(line: 385, column: 2, scope: !1287)
!1375 = distinct !{!1375, !1374}
!1376 = !DILocation(line: 385, column: 11, scope: !1377)
!1377 = !DILexicalBlockFile(scope: !1378, file: !382, discriminator: 1)
!1378 = distinct !DILexicalBlock(scope: !1379, file: !382, line: 385, column: 11)
!1379 = distinct !DILexicalBlock(scope: !1287, file: !382, line: 385, column: 5)
!1380 = !DILocation(line: 385, column: 20, scope: !1377)
!1381 = !DILocation(line: 385, column: 23, scope: !1382)
!1382 = !DILexicalBlockFile(scope: !1378, file: !382, discriminator: 2)
!1383 = !DILocation(line: 385, column: 11, scope: !1382)
!1384 = !DILocation(line: 385, column: 41, scope: !1385)
!1385 = !DILexicalBlockFile(scope: !1378, file: !382, discriminator: 3)
!1386 = !DILocation(line: 385, column: 193, scope: !1385)
!1387 = !DILocation(line: 385, column: 203, scope: !1388)
!1388 = !DILexicalBlockFile(scope: !1385, file: !382, discriminator: 5)
!1389 = !DILocation(line: 385, column: 15, scope: !1385)
!1390 = !DILocation(line: 385, column: 20, scope: !1385)
!1391 = !DILocation(line: 385, column: 25, scope: !1385)
!1392 = !DILocation(line: 385, column: 30, scope: !1385)
!1393 = !DILocation(line: 385, column: 35, scope: !1385)
!1394 = !DILocation(line: 385, column: 40, scope: !1385)
!1395 = !DILocation(line: 385, column: 33, scope: !1396)
!1396 = !DILexicalBlockFile(scope: !1385, file: !382, discriminator: 6)
!1397 = !DILocation(line: 385, column: 33, scope: !1385)
!1398 = !DILocation(line: 385, column: 50, scope: !1399)
!1399 = !DILexicalBlockFile(scope: !1379, file: !382, discriminator: 4)
!1400 = !DILocation(line: 391, column: 6, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1287, file: !382, line: 391, column: 6)
!1402 = !DILocation(line: 391, column: 15, scope: !1401)
!1403 = !DILocation(line: 391, column: 6, scope: !1287)
!1404 = !DILocation(line: 392, column: 3, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1401, file: !382, line: 391, column: 20)
!1406 = distinct !{!1406, !1404}
!1407 = !DILocation(line: 392, column: 12, scope: !1408)
!1408 = !DILexicalBlockFile(scope: !1409, file: !382, discriminator: 1)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !382, line: 392, column: 12)
!1410 = distinct !DILexicalBlock(scope: !1405, file: !382, line: 392, column: 6)
!1411 = !DILocation(line: 392, column: 21, scope: !1408)
!1412 = !DILocation(line: 392, column: 24, scope: !1413)
!1413 = !DILexicalBlockFile(scope: !1409, file: !382, discriminator: 2)
!1414 = !DILocation(line: 392, column: 12, scope: !1413)
!1415 = !DILocation(line: 392, column: 42, scope: !1416)
!1416 = !DILexicalBlockFile(scope: !1409, file: !382, discriminator: 3)
!1417 = !DILocation(line: 392, column: 100, scope: !1416)
!1418 = !DILocation(line: 392, column: 110, scope: !1419)
!1419 = !DILexicalBlockFile(scope: !1416, file: !382, discriminator: 5)
!1420 = !DILocation(line: 392, column: 34, scope: !1421)
!1421 = !DILexicalBlockFile(scope: !1416, file: !382, discriminator: 6)
!1422 = !DILocation(line: 392, column: 34, scope: !1416)
!1423 = !DILocation(line: 392, column: 138, scope: !1424)
!1424 = !DILexicalBlockFile(scope: !1410, file: !382, discriminator: 4)
!1425 = !DILocation(line: 393, column: 16, scope: !1405)
!1426 = !DILocation(line: 393, column: 26, scope: !1405)
!1427 = !DILocation(line: 393, column: 31, scope: !1405)
!1428 = !DILocation(line: 393, column: 3, scope: !1405)
!1429 = !DILocation(line: 395, column: 3, scope: !1405)
!1430 = distinct !{!1430, !1429}
!1431 = !DILocation(line: 395, column: 12, scope: !1432)
!1432 = !DILexicalBlockFile(scope: !1433, file: !382, discriminator: 1)
!1433 = distinct !DILexicalBlock(scope: !1434, file: !382, line: 395, column: 12)
!1434 = distinct !DILexicalBlock(scope: !1405, file: !382, line: 395, column: 6)
!1435 = !DILocation(line: 395, column: 21, scope: !1432)
!1436 = !DILocation(line: 395, column: 24, scope: !1437)
!1437 = !DILexicalBlockFile(scope: !1433, file: !382, discriminator: 2)
!1438 = !DILocation(line: 395, column: 12, scope: !1437)
!1439 = !DILocation(line: 395, column: 42, scope: !1440)
!1440 = !DILexicalBlockFile(scope: !1433, file: !382, discriminator: 3)
!1441 = !DILocation(line: 395, column: 100, scope: !1440)
!1442 = !DILocation(line: 395, column: 110, scope: !1443)
!1443 = !DILexicalBlockFile(scope: !1440, file: !382, discriminator: 5)
!1444 = !DILocation(line: 395, column: 34, scope: !1445)
!1445 = !DILexicalBlockFile(scope: !1440, file: !382, discriminator: 6)
!1446 = !DILocation(line: 395, column: 34, scope: !1440)
!1447 = !DILocation(line: 395, column: 138, scope: !1448)
!1448 = !DILexicalBlockFile(scope: !1434, file: !382, discriminator: 4)
!1449 = !DILocation(line: 396, column: 16, scope: !1405)
!1450 = !DILocation(line: 396, column: 26, scope: !1405)
!1451 = !DILocation(line: 396, column: 31, scope: !1405)
!1452 = !DILocation(line: 396, column: 3, scope: !1405)
!1453 = !DILocation(line: 398, column: 3, scope: !1405)
!1454 = distinct !{!1454, !1453}
!1455 = !DILocation(line: 398, column: 12, scope: !1456)
!1456 = !DILexicalBlockFile(scope: !1457, file: !382, discriminator: 1)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !382, line: 398, column: 12)
!1458 = distinct !DILexicalBlock(scope: !1405, file: !382, line: 398, column: 6)
!1459 = !DILocation(line: 398, column: 21, scope: !1456)
!1460 = !DILocation(line: 398, column: 24, scope: !1461)
!1461 = !DILexicalBlockFile(scope: !1457, file: !382, discriminator: 2)
!1462 = !DILocation(line: 398, column: 12, scope: !1461)
!1463 = !DILocation(line: 398, column: 42, scope: !1464)
!1464 = !DILexicalBlockFile(scope: !1457, file: !382, discriminator: 3)
!1465 = !DILocation(line: 398, column: 99, scope: !1464)
!1466 = !DILocation(line: 398, column: 109, scope: !1467)
!1467 = !DILexicalBlockFile(scope: !1464, file: !382, discriminator: 5)
!1468 = !DILocation(line: 398, column: 34, scope: !1469)
!1469 = !DILexicalBlockFile(scope: !1464, file: !382, discriminator: 6)
!1470 = !DILocation(line: 398, column: 34, scope: !1464)
!1471 = !DILocation(line: 398, column: 137, scope: !1472)
!1472 = !DILexicalBlockFile(scope: !1458, file: !382, discriminator: 4)
!1473 = !DILocation(line: 399, column: 16, scope: !1405)
!1474 = !DILocation(line: 399, column: 26, scope: !1405)
!1475 = !DILocation(line: 399, column: 31, scope: !1405)
!1476 = !DILocation(line: 399, column: 3, scope: !1405)
!1477 = !DILocation(line: 400, column: 2, scope: !1405)
!1478 = !DILocation(line: 401, column: 1, scope: !1287)
!1479 = distinct !DISubprogram(name: "zedc_overwrite_slu_id", scope: !382, file: !382, line: 407, type: !1480, isLocal: false, isDefinition: true, scopeLine: 409, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !459)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{null, !360, !253}
!1482 = !DILocalVariable(name: "zedc", arg: 1, scope: !1479, file: !382, line: 407, type: !360)
!1483 = !DILocation(line: 407, column: 42, scope: !1479)
!1484 = !DILocalVariable(name: "slu_id", arg: 2, scope: !1479, file: !382, line: 408, type: !253)
!1485 = !DILocation(line: 408, column: 16, scope: !1479)
!1486 = !DILocation(line: 412, column: 1, scope: !1479)
!1487 = distinct !DISubprogram(name: "zedc_overwrite_app_id", scope: !382, file: !382, line: 414, type: !1480, isLocal: false, isDefinition: true, scopeLine: 416, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !459)
!1488 = !DILocalVariable(name: "zedc", arg: 1, scope: !1487, file: !382, line: 414, type: !360)
!1489 = !DILocation(line: 414, column: 42, scope: !1487)
!1490 = !DILocalVariable(name: "app_id", arg: 2, scope: !1487, file: !382, line: 415, type: !253)
!1491 = !DILocation(line: 415, column: 16, scope: !1487)
!1492 = !DILocation(line: 419, column: 1, scope: !1487)
!1493 = distinct !DISubprogram(name: "zedc_open", scope: !382, file: !382, line: 431, type: !1494, isLocal: false, isDefinition: true, scopeLine: 432, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !459)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!360, !366, !366, !366, !1496}
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64, align: 64)
!1497 = !DILocalVariable(name: "dev_no", arg: 1, scope: !1493, file: !382, line: 431, type: !366)
!1498 = !DILocation(line: 431, column: 29, scope: !1493)
!1499 = !DILocalVariable(name: "dev_type", arg: 2, scope: !1493, file: !382, line: 431, type: !366)
!1500 = !DILocation(line: 431, column: 41, scope: !1493)
!1501 = !DILocalVariable(name: "mode", arg: 3, scope: !1493, file: !382, line: 431, type: !366)
!1502 = !DILocation(line: 431, column: 55, scope: !1493)
!1503 = !DILocalVariable(name: "err_code", arg: 4, scope: !1493, file: !382, line: 431, type: !1496)
!1504 = !DILocation(line: 431, column: 66, scope: !1493)
!1505 = !DILocalVariable(name: "env", scope: !1493, file: !382, line: 433, type: !391)
!1506 = !DILocation(line: 433, column: 8, scope: !1493)
!1507 = !DILocalVariable(name: "zedc", scope: !1493, file: !382, line: 434, type: !360)
!1508 = !DILocation(line: 434, column: 16, scope: !1493)
!1509 = !DILocalVariable(name: "app_id", scope: !1493, file: !382, line: 435, type: !253)
!1510 = !DILocation(line: 435, column: 11, scope: !1493)
!1511 = !DILocalVariable(name: "app_id_mask", scope: !1493, file: !382, line: 436, type: !253)
!1512 = !DILocation(line: 436, column: 11, scope: !1493)
!1513 = !DILocation(line: 438, column: 9, scope: !1493)
!1514 = !DILocation(line: 438, column: 7, scope: !1493)
!1515 = !DILocation(line: 439, column: 7, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1493, file: !382, line: 439, column: 6)
!1517 = !DILocation(line: 439, column: 6, scope: !1493)
!1518 = !DILocation(line: 440, column: 4, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1516, file: !382, line: 439, column: 13)
!1520 = !DILocation(line: 440, column: 13, scope: !1519)
!1521 = !DILocation(line: 441, column: 3, scope: !1519)
!1522 = !DILocation(line: 443, column: 9, scope: !1493)
!1523 = !DILocation(line: 443, column: 2, scope: !1493)
!1524 = !DILocation(line: 444, column: 15, scope: !1493)
!1525 = !DILocation(line: 444, column: 2, scope: !1493)
!1526 = !DILocation(line: 444, column: 8, scope: !1493)
!1527 = !DILocation(line: 444, column: 13, scope: !1493)
!1528 = !DILocation(line: 447, column: 6, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1493, file: !382, line: 447, column: 6)
!1530 = !DILocation(line: 447, column: 13, scope: !1529)
!1531 = !DILocation(line: 447, column: 6, scope: !1493)
!1532 = !DILocation(line: 448, column: 10, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1529, file: !382, line: 447, column: 20)
!1534 = !DILocation(line: 449, column: 15, scope: !1533)
!1535 = !DILocation(line: 450, column: 2, scope: !1533)
!1536 = !DILocation(line: 453, column: 26, scope: !1493)
!1537 = !DILocation(line: 453, column: 34, scope: !1493)
!1538 = !DILocation(line: 453, column: 44, scope: !1493)
!1539 = !DILocation(line: 453, column: 51, scope: !1493)
!1540 = !DILocation(line: 453, column: 57, scope: !1493)
!1541 = !DILocation(line: 454, column: 5, scope: !1493)
!1542 = !DILocation(line: 454, column: 13, scope: !1493)
!1543 = !DILocation(line: 453, column: 15, scope: !1493)
!1544 = !DILocation(line: 453, column: 2, scope: !1493)
!1545 = !DILocation(line: 453, column: 8, scope: !1493)
!1546 = !DILocation(line: 453, column: 13, scope: !1493)
!1547 = !DILocation(line: 455, column: 6, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1493, file: !382, line: 455, column: 6)
!1549 = !DILocation(line: 455, column: 12, scope: !1548)
!1550 = !DILocation(line: 455, column: 17, scope: !1548)
!1551 = !DILocation(line: 455, column: 6, scope: !1493)
!1552 = !DILocation(line: 456, column: 4, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1548, file: !382, line: 455, column: 25)
!1554 = !DILocation(line: 456, column: 13, scope: !1553)
!1555 = !DILocation(line: 457, column: 3, scope: !1553)
!1556 = !DILocation(line: 459, column: 2, scope: !1493)
!1557 = !DILocation(line: 459, column: 8, scope: !1493)
!1558 = !DILocation(line: 459, column: 16, scope: !1493)
!1559 = !DILocation(line: 460, column: 8, scope: !1493)
!1560 = !DILocation(line: 460, column: 6, scope: !1493)
!1561 = !DILocation(line: 461, column: 6, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1493, file: !382, line: 461, column: 6)
!1563 = !DILocation(line: 461, column: 6, scope: !1493)
!1564 = !DILocation(line: 462, column: 19, scope: !1562)
!1565 = !DILocation(line: 462, column: 14, scope: !1562)
!1566 = !DILocation(line: 462, column: 12, scope: !1562)
!1567 = !DILocation(line: 462, column: 3, scope: !1562)
!1568 = !DILocation(line: 464, column: 3, scope: !1493)
!1569 = !DILocation(line: 464, column: 12, scope: !1493)
!1570 = !DILocation(line: 465, column: 9, scope: !1493)
!1571 = !DILocation(line: 465, column: 2, scope: !1493)
!1572 = !DILocation(line: 468, column: 7, scope: !1493)
!1573 = !DILocation(line: 468, column: 2, scope: !1493)
!1574 = !DILocation(line: 469, column: 2, scope: !1493)
!1575 = !DILocation(line: 470, column: 1, scope: !1493)
!1576 = distinct !DISubprogram(name: "zedc_execute_request", scope: !382, file: !382, line: 477, type: !1577, isLocal: false, isDefinition: true, scopeLine: 478, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !459)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!366, !360, !544}
!1579 = !DILocalVariable(name: "zedc", arg: 1, scope: !1576, file: !382, line: 477, type: !360)
!1580 = !DILocation(line: 477, column: 40, scope: !1576)
!1581 = !DILocalVariable(name: "cmd", arg: 2, scope: !1576, file: !382, line: 477, type: !544)
!1582 = !DILocation(line: 477, column: 63, scope: !1576)
!1583 = !DILocalVariable(name: "rc", scope: !1576, file: !382, line: 479, type: !366)
!1584 = !DILocation(line: 479, column: 6, scope: !1576)
!1585 = !DILocation(line: 479, column: 30, scope: !1576)
!1586 = !DILocation(line: 479, column: 36, scope: !1576)
!1587 = !DILocation(line: 479, column: 42, scope: !1576)
!1588 = !DILocation(line: 479, column: 48, scope: !1576)
!1589 = !DILocation(line: 479, column: 54, scope: !1576)
!1590 = !DILocation(line: 480, column: 10, scope: !1576)
!1591 = !DILocation(line: 480, column: 16, scope: !1576)
!1592 = !DILocation(line: 479, column: 11, scope: !1576)
!1593 = !DILocation(line: 482, column: 2, scope: !1576)
!1594 = distinct !{!1594, !1593}
!1595 = !DILocation(line: 482, column: 11, scope: !1596)
!1596 = !DILexicalBlockFile(scope: !1597, file: !382, discriminator: 1)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !382, line: 482, column: 11)
!1598 = distinct !DILexicalBlock(scope: !1576, file: !382, line: 482, column: 5)
!1599 = !DILocation(line: 482, column: 20, scope: !1596)
!1600 = !DILocation(line: 482, column: 23, scope: !1601)
!1601 = !DILexicalBlockFile(scope: !1597, file: !382, discriminator: 2)
!1602 = !DILocation(line: 482, column: 11, scope: !1601)
!1603 = !DILocation(line: 482, column: 41, scope: !1604)
!1604 = !DILexicalBlockFile(scope: !1597, file: !382, discriminator: 3)
!1605 = !DILocation(line: 482, column: 152, scope: !1604)
!1606 = !DILocation(line: 482, column: 162, scope: !1607)
!1607 = !DILexicalBlockFile(scope: !1604, file: !382, discriminator: 5)
!1608 = !DILocation(line: 482, column: 4, scope: !1604)
!1609 = !DILocation(line: 482, column: 8, scope: !1604)
!1610 = !DILocation(line: 482, column: 14, scope: !1604)
!1611 = !DILocation(line: 482, column: 23, scope: !1604)
!1612 = !DILocation(line: 482, column: 28, scope: !1604)
!1613 = !DILocation(line: 482, column: 34, scope: !1604)
!1614 = !DILocation(line: 482, column: 39, scope: !1604)
!1615 = !DILocation(line: 482, column: 45, scope: !1604)
!1616 = !DILocation(line: 482, column: 50, scope: !1604)
!1617 = !DILocation(line: 482, column: 60, scope: !1604)
!1618 = !DILocation(line: 482, column: 65, scope: !1604)
!1619 = !DILocation(line: 482, column: 70, scope: !1604)
!1620 = !DILocation(line: 482, column: 33, scope: !1621)
!1621 = !DILexicalBlockFile(scope: !1604, file: !382, discriminator: 6)
!1622 = !DILocation(line: 482, column: 33, scope: !1604)
!1623 = !DILocation(line: 482, column: 94, scope: !1624)
!1624 = !DILexicalBlockFile(scope: !1598, file: !382, discriminator: 4)
!1625 = !DILocation(line: 487, column: 9, scope: !1576)
!1626 = !DILocation(line: 487, column: 2, scope: !1576)
!1627 = distinct !DISubprogram(name: "zedc_close", scope: !382, file: !382, line: 495, type: !471, isLocal: false, isDefinition: true, scopeLine: 496, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !459)
!1628 = !DILocalVariable(name: "zedc", arg: 1, scope: !1627, file: !382, line: 495, type: !360)
!1629 = !DILocation(line: 495, column: 30, scope: !1627)
!1630 = !DILocation(line: 497, column: 7, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1627, file: !382, line: 497, column: 6)
!1632 = !DILocation(line: 497, column: 6, scope: !1627)
!1633 = !DILocation(line: 498, column: 3, scope: !1631)
!1634 = !DILocation(line: 500, column: 14, scope: !1627)
!1635 = !DILocation(line: 500, column: 20, scope: !1627)
!1636 = !DILocation(line: 500, column: 2, scope: !1627)
!1637 = !DILocation(line: 501, column: 7, scope: !1627)
!1638 = !DILocation(line: 501, column: 2, scope: !1627)
!1639 = !DILocation(line: 502, column: 2, scope: !1627)
!1640 = !DILocation(line: 503, column: 1, scope: !1627)
!1641 = distinct !DISubprogram(name: "zedc_memalign", scope: !382, file: !382, line: 508, type: !1642, isLocal: false, isDefinition: true, scopeLine: 509, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !459)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!359, !360, !434, !22}
!1644 = !DILocalVariable(name: "zedc", arg: 1, scope: !1641, file: !382, line: 508, type: !360)
!1645 = !DILocation(line: 508, column: 35, scope: !1641)
!1646 = !DILocalVariable(name: "size", arg: 2, scope: !1641, file: !382, line: 508, type: !434)
!1647 = !DILocation(line: 508, column: 48, scope: !1641)
!1648 = !DILocalVariable(name: "mtype", arg: 3, scope: !1641, file: !382, line: 508, type: !22)
!1649 = !DILocation(line: 508, column: 70, scope: !1641)
!1650 = !DILocalVariable(name: "ptr", scope: !1641, file: !382, line: 510, type: !359)
!1651 = !DILocation(line: 510, column: 8, scope: !1641)
!1652 = !DILocalVariable(name: "page_size", scope: !1641, file: !382, line: 511, type: !258)
!1653 = !DILocation(line: 511, column: 15, scope: !1641)
!1654 = !DILocation(line: 511, column: 27, scope: !1641)
!1655 = !DILocation(line: 513, column: 7, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1641, file: !382, line: 513, column: 6)
!1657 = !DILocation(line: 513, column: 6, scope: !1641)
!1658 = !DILocation(line: 514, column: 3, scope: !1656)
!1659 = !DILocation(line: 517, column: 7, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1641, file: !382, line: 517, column: 6)
!1661 = !DILocation(line: 517, column: 13, scope: !1660)
!1662 = !DILocation(line: 517, column: 35, scope: !1660)
!1663 = !DILocation(line: 517, column: 6, scope: !1641)
!1664 = !DILocation(line: 518, column: 22, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1660, file: !382, line: 517, column: 58)
!1666 = !DILocation(line: 518, column: 28, scope: !1665)
!1667 = !DILocation(line: 518, column: 34, scope: !1665)
!1668 = !DILocation(line: 518, column: 9, scope: !1665)
!1669 = !DILocation(line: 518, column: 7, scope: !1665)
!1670 = !DILocation(line: 519, column: 7, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1665, file: !382, line: 519, column: 7)
!1672 = !DILocation(line: 519, column: 11, scope: !1671)
!1673 = !DILocation(line: 519, column: 7, scope: !1665)
!1674 = !DILocation(line: 520, column: 4, scope: !1671)
!1675 = !DILocation(line: 521, column: 10, scope: !1665)
!1676 = !DILocation(line: 521, column: 3, scope: !1665)
!1677 = !DILocation(line: 524, column: 17, scope: !1641)
!1678 = !DILocation(line: 524, column: 28, scope: !1641)
!1679 = !DILocation(line: 524, column: 8, scope: !1641)
!1680 = !DILocation(line: 524, column: 6, scope: !1641)
!1681 = !DILocation(line: 525, column: 6, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1641, file: !382, line: 525, column: 6)
!1683 = !DILocation(line: 525, column: 10, scope: !1682)
!1684 = !DILocation(line: 525, column: 6, scope: !1641)
!1685 = !DILocation(line: 526, column: 3, scope: !1682)
!1686 = !DILocation(line: 528, column: 6, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1641, file: !382, line: 528, column: 6)
!1688 = !DILocation(line: 528, column: 12, scope: !1687)
!1689 = !DILocation(line: 528, column: 6, scope: !1641)
!1690 = !DILocation(line: 529, column: 36, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1687, file: !382, line: 528, column: 35)
!1692 = !DILocation(line: 529, column: 42, scope: !1691)
!1693 = !DILocation(line: 529, column: 48, scope: !1691)
!1694 = !DILocation(line: 529, column: 53, scope: !1691)
!1695 = !DILocation(line: 529, column: 19, scope: !1691)
!1696 = !DILocation(line: 529, column: 3, scope: !1691)
!1697 = !DILocation(line: 529, column: 9, scope: !1691)
!1698 = !DILocation(line: 529, column: 17, scope: !1691)
!1699 = !DILocation(line: 530, column: 7, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1691, file: !382, line: 530, column: 7)
!1701 = !DILocation(line: 530, column: 13, scope: !1700)
!1702 = !DILocation(line: 530, column: 21, scope: !1700)
!1703 = !DILocation(line: 530, column: 7, scope: !1691)
!1704 = !DILocation(line: 531, column: 9, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1700, file: !382, line: 530, column: 27)
!1706 = !DILocation(line: 531, column: 4, scope: !1705)
!1707 = !DILocation(line: 532, column: 4, scope: !1705)
!1708 = !DILocation(line: 534, column: 2, scope: !1691)
!1709 = !DILocation(line: 535, column: 9, scope: !1641)
!1710 = !DILocation(line: 535, column: 2, scope: !1641)
!1711 = !DILocation(line: 536, column: 1, scope: !1641)
!1712 = distinct !DISubprogram(name: "zedc_free", scope: !382, file: !382, line: 541, type: !1713, isLocal: false, isDefinition: true, scopeLine: 543, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !459)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!366, !360, !359, !434, !22}
!1715 = !DILocalVariable(name: "zedc", arg: 1, scope: !1712, file: !382, line: 541, type: !360)
!1716 = !DILocation(line: 541, column: 29, scope: !1712)
!1717 = !DILocalVariable(name: "ptr", arg: 2, scope: !1712, file: !382, line: 541, type: !359)
!1718 = !DILocation(line: 541, column: 41, scope: !1712)
!1719 = !DILocalVariable(name: "size", arg: 3, scope: !1712, file: !382, line: 541, type: !434)
!1720 = !DILocation(line: 541, column: 53, scope: !1712)
!1721 = !DILocalVariable(name: "mtype", arg: 4, scope: !1712, file: !382, line: 542, type: !22)
!1722 = !DILocation(line: 542, column: 24, scope: !1712)
!1723 = !DILocalVariable(name: "rc", scope: !1712, file: !382, line: 544, type: !366)
!1724 = !DILocation(line: 544, column: 6, scope: !1712)
!1725 = !DILocation(line: 546, column: 7, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1712, file: !382, line: 546, column: 6)
!1727 = !DILocation(line: 546, column: 6, scope: !1712)
!1728 = !DILocation(line: 547, column: 3, scope: !1726)
!1729 = !DILocation(line: 549, column: 6, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1712, file: !382, line: 549, column: 6)
!1731 = !DILocation(line: 549, column: 10, scope: !1730)
!1732 = !DILocation(line: 549, column: 6, scope: !1712)
!1733 = !DILocation(line: 550, column: 3, scope: !1730)
!1734 = !DILocation(line: 553, column: 7, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1712, file: !382, line: 553, column: 6)
!1736 = !DILocation(line: 553, column: 13, scope: !1735)
!1737 = !DILocation(line: 553, column: 35, scope: !1735)
!1738 = !DILocation(line: 553, column: 6, scope: !1712)
!1739 = !DILocation(line: 554, column: 19, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1735, file: !382, line: 553, column: 58)
!1741 = !DILocation(line: 554, column: 25, scope: !1740)
!1742 = !DILocation(line: 554, column: 31, scope: !1740)
!1743 = !DILocation(line: 554, column: 36, scope: !1740)
!1744 = !DILocation(line: 554, column: 8, scope: !1740)
!1745 = !DILocation(line: 554, column: 6, scope: !1740)
!1746 = !DILocation(line: 555, column: 7, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1740, file: !382, line: 555, column: 7)
!1748 = !DILocation(line: 555, column: 10, scope: !1747)
!1749 = !DILocation(line: 555, column: 7, scope: !1740)
!1750 = !DILocation(line: 556, column: 4, scope: !1747)
!1751 = !DILocation(line: 558, column: 3, scope: !1740)
!1752 = !DILocation(line: 561, column: 6, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1712, file: !382, line: 561, column: 6)
!1754 = !DILocation(line: 561, column: 12, scope: !1753)
!1755 = !DILocation(line: 561, column: 6, scope: !1712)
!1756 = !DILocation(line: 562, column: 38, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1753, file: !382, line: 561, column: 35)
!1758 = !DILocation(line: 562, column: 44, scope: !1757)
!1759 = !DILocation(line: 562, column: 50, scope: !1757)
!1760 = !DILocation(line: 562, column: 55, scope: !1757)
!1761 = !DILocation(line: 562, column: 19, scope: !1757)
!1762 = !DILocation(line: 562, column: 3, scope: !1757)
!1763 = !DILocation(line: 562, column: 9, scope: !1757)
!1764 = !DILocation(line: 562, column: 17, scope: !1757)
!1765 = !DILocation(line: 563, column: 7, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1757, file: !382, line: 563, column: 7)
!1767 = !DILocation(line: 563, column: 13, scope: !1766)
!1768 = !DILocation(line: 563, column: 21, scope: !1766)
!1769 = !DILocation(line: 563, column: 7, scope: !1757)
!1770 = !DILocation(line: 564, column: 9, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1766, file: !382, line: 563, column: 27)
!1772 = !DILocation(line: 564, column: 4, scope: !1771)
!1773 = !DILocation(line: 565, column: 4, scope: !1771)
!1774 = !DILocation(line: 567, column: 2, scope: !1757)
!1775 = !DILocation(line: 569, column: 7, scope: !1712)
!1776 = !DILocation(line: 569, column: 2, scope: !1712)
!1777 = !DILocation(line: 570, column: 2, scope: !1712)
!1778 = !DILocation(line: 571, column: 1, scope: !1712)
!1779 = distinct !DISubprogram(name: "zedc_pin_memory", scope: !382, file: !382, line: 573, type: !1780, isLocal: false, isDefinition: true, scopeLine: 575, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !459)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{!366, !360, !1782, !434, !366}
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64, align: 64)
!1783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1784 = !DILocalVariable(name: "zedc", arg: 1, scope: !1779, file: !382, line: 573, type: !360)
!1785 = !DILocation(line: 573, column: 35, scope: !1779)
!1786 = !DILocalVariable(name: "addr", arg: 2, scope: !1779, file: !382, line: 573, type: !1782)
!1787 = !DILocation(line: 573, column: 53, scope: !1779)
!1788 = !DILocalVariable(name: "size", arg: 3, scope: !1779, file: !382, line: 573, type: !434)
!1789 = !DILocation(line: 573, column: 66, scope: !1779)
!1790 = !DILocalVariable(name: "dir", arg: 4, scope: !1779, file: !382, line: 574, type: !366)
!1791 = !DILocation(line: 574, column: 11, scope: !1779)
!1792 = !DILocation(line: 576, column: 7, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1779, file: !382, line: 576, column: 6)
!1794 = !DILocation(line: 576, column: 6, scope: !1779)
!1795 = !DILocation(line: 577, column: 3, scope: !1793)
!1796 = !DILocation(line: 579, column: 35, scope: !1779)
!1797 = !DILocation(line: 579, column: 41, scope: !1779)
!1798 = !DILocation(line: 579, column: 47, scope: !1779)
!1799 = !DILocation(line: 579, column: 53, scope: !1779)
!1800 = !DILocation(line: 579, column: 59, scope: !1779)
!1801 = !DILocation(line: 579, column: 18, scope: !1779)
!1802 = !DILocation(line: 579, column: 2, scope: !1779)
!1803 = !DILocation(line: 579, column: 8, scope: !1779)
!1804 = !DILocation(line: 579, column: 16, scope: !1779)
!1805 = !DILocation(line: 580, column: 6, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1779, file: !382, line: 580, column: 6)
!1807 = !DILocation(line: 580, column: 12, scope: !1806)
!1808 = !DILocation(line: 580, column: 20, scope: !1806)
!1809 = !DILocation(line: 580, column: 6, scope: !1779)
!1810 = !DILocation(line: 581, column: 3, scope: !1806)
!1811 = !DILocation(line: 583, column: 2, scope: !1779)
!1812 = !DILocation(line: 584, column: 1, scope: !1779)
!1813 = distinct !DISubprogram(name: "zedc_unpin_memory", scope: !382, file: !382, line: 586, type: !1814, isLocal: false, isDefinition: true, scopeLine: 587, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !459)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!366, !360, !1782, !434}
!1816 = !DILocalVariable(name: "zedc", arg: 1, scope: !1813, file: !382, line: 586, type: !360)
!1817 = !DILocation(line: 586, column: 37, scope: !1813)
!1818 = !DILocalVariable(name: "addr", arg: 2, scope: !1813, file: !382, line: 586, type: !1782)
!1819 = !DILocation(line: 586, column: 55, scope: !1813)
!1820 = !DILocalVariable(name: "size", arg: 3, scope: !1813, file: !382, line: 586, type: !434)
!1821 = !DILocation(line: 586, column: 68, scope: !1813)
!1822 = !DILocation(line: 588, column: 7, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1813, file: !382, line: 588, column: 6)
!1824 = !DILocation(line: 588, column: 6, scope: !1813)
!1825 = !DILocation(line: 589, column: 3, scope: !1823)
!1826 = !DILocation(line: 591, column: 37, scope: !1813)
!1827 = !DILocation(line: 591, column: 43, scope: !1813)
!1828 = !DILocation(line: 591, column: 49, scope: !1813)
!1829 = !DILocation(line: 591, column: 55, scope: !1813)
!1830 = !DILocation(line: 591, column: 18, scope: !1813)
!1831 = !DILocation(line: 591, column: 2, scope: !1813)
!1832 = !DILocation(line: 591, column: 8, scope: !1813)
!1833 = !DILocation(line: 591, column: 16, scope: !1813)
!1834 = !DILocation(line: 592, column: 6, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1813, file: !382, line: 592, column: 6)
!1836 = !DILocation(line: 592, column: 12, scope: !1835)
!1837 = !DILocation(line: 592, column: 20, scope: !1835)
!1838 = !DILocation(line: 592, column: 6, scope: !1813)
!1839 = !DILocation(line: 593, column: 3, scope: !1835)
!1840 = !DILocation(line: 595, column: 2, scope: !1813)
!1841 = !DILocation(line: 596, column: 1, scope: !1813)
!1842 = distinct !DISubprogram(name: "zedc_format_init", scope: !382, file: !382, line: 608, type: !1843, isLocal: false, isDefinition: true, scopeLine: 609, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !459)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!366, !582}
!1845 = !DILocalVariable(name: "strm", arg: 1, scope: !1842, file: !382, line: 608, type: !582)
!1846 = !DILocation(line: 608, column: 44, scope: !1842)
!1847 = !DILocation(line: 610, column: 7, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1842, file: !382, line: 610, column: 6)
!1849 = !DILocation(line: 610, column: 13, scope: !1848)
!1850 = !DILocation(line: 610, column: 24, scope: !1848)
!1851 = !DILocation(line: 610, column: 31, scope: !1848)
!1852 = !DILocation(line: 610, column: 35, scope: !1853)
!1853 = !DILexicalBlockFile(scope: !1848, file: !382, discriminator: 1)
!1854 = !DILocation(line: 610, column: 41, scope: !1853)
!1855 = !DILocation(line: 610, column: 52, scope: !1853)
!1856 = !DILocation(line: 610, column: 6, scope: !1853)
!1857 = !DILocation(line: 611, column: 3, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1848, file: !382, line: 610, column: 61)
!1859 = !DILocation(line: 611, column: 9, scope: !1858)
!1860 = !DILocation(line: 611, column: 16, scope: !1858)
!1861 = !DILocation(line: 612, column: 3, scope: !1858)
!1862 = !DILocation(line: 615, column: 7, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1842, file: !382, line: 615, column: 6)
!1864 = !DILocation(line: 615, column: 13, scope: !1863)
!1865 = !DILocation(line: 615, column: 24, scope: !1863)
!1866 = !DILocation(line: 615, column: 30, scope: !1863)
!1867 = !DILocation(line: 615, column: 34, scope: !1868)
!1868 = !DILexicalBlockFile(scope: !1863, file: !382, discriminator: 1)
!1869 = !DILocation(line: 615, column: 40, scope: !1868)
!1870 = !DILocation(line: 615, column: 51, scope: !1868)
!1871 = !DILocation(line: 615, column: 6, scope: !1868)
!1872 = !DILocation(line: 616, column: 3, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1863, file: !382, line: 615, column: 59)
!1874 = !DILocation(line: 616, column: 9, scope: !1873)
!1875 = !DILocation(line: 616, column: 16, scope: !1873)
!1876 = !DILocation(line: 617, column: 3, scope: !1873)
!1877 = !DILocation(line: 620, column: 7, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1842, file: !382, line: 620, column: 6)
!1879 = !DILocation(line: 620, column: 13, scope: !1878)
!1880 = !DILocation(line: 620, column: 24, scope: !1878)
!1881 = !DILocation(line: 620, column: 31, scope: !1878)
!1882 = !DILocation(line: 620, column: 35, scope: !1883)
!1883 = !DILexicalBlockFile(scope: !1878, file: !382, discriminator: 1)
!1884 = !DILocation(line: 620, column: 41, scope: !1883)
!1885 = !DILocation(line: 620, column: 52, scope: !1883)
!1886 = !DILocation(line: 620, column: 6, scope: !1883)
!1887 = !DILocation(line: 621, column: 3, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1878, file: !382, line: 620, column: 60)
!1889 = !DILocation(line: 621, column: 9, scope: !1888)
!1890 = !DILocation(line: 621, column: 16, scope: !1888)
!1891 = !DILocation(line: 622, column: 3, scope: !1888)
!1892 = !DILocation(line: 625, column: 7, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1842, file: !382, line: 625, column: 6)
!1894 = !DILocation(line: 625, column: 13, scope: !1893)
!1895 = !DILocation(line: 625, column: 24, scope: !1893)
!1896 = !DILocation(line: 625, column: 31, scope: !1893)
!1897 = !DILocation(line: 625, column: 35, scope: !1898)
!1898 = !DILexicalBlockFile(scope: !1893, file: !382, discriminator: 1)
!1899 = !DILocation(line: 625, column: 41, scope: !1898)
!1900 = !DILocation(line: 625, column: 52, scope: !1898)
!1901 = !DILocation(line: 625, column: 6, scope: !1898)
!1902 = !DILocation(line: 626, column: 3, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1893, file: !382, line: 625, column: 60)
!1904 = !DILocation(line: 626, column: 9, scope: !1903)
!1905 = !DILocation(line: 626, column: 16, scope: !1903)
!1906 = !DILocation(line: 627, column: 3, scope: !1903)
!1907 = !DILocation(line: 632, column: 2, scope: !1842)
!1908 = !DILocation(line: 633, column: 1, scope: !1842)
!1909 = distinct !DISubprogram(name: "zedc_alloc_workspace", scope: !382, file: !382, line: 635, type: !1910, isLocal: false, isDefinition: true, scopeLine: 636, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !459)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{!366, !772}
!1912 = !DILocalVariable(name: "strm", arg: 1, scope: !1909, file: !382, line: 635, type: !772)
!1913 = !DILocation(line: 635, column: 39, scope: !1909)
!1914 = !DILocalVariable(name: "zedc", scope: !1909, file: !382, line: 637, type: !360)
!1915 = !DILocation(line: 637, column: 16, scope: !1909)
!1916 = !DILocation(line: 637, column: 38, scope: !1909)
!1917 = !DILocation(line: 637, column: 44, scope: !1909)
!1918 = !DILocation(line: 637, column: 23, scope: !1909)
!1919 = !DILocation(line: 639, column: 28, scope: !1909)
!1920 = !DILocation(line: 640, column: 7, scope: !1909)
!1921 = !DILocation(line: 640, column: 13, scope: !1909)
!1922 = !DILocation(line: 639, column: 14, scope: !1909)
!1923 = !DILocation(line: 639, column: 2, scope: !1909)
!1924 = !DILocation(line: 639, column: 8, scope: !1909)
!1925 = !DILocation(line: 639, column: 12, scope: !1909)
!1926 = !DILocation(line: 641, column: 6, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1909, file: !382, line: 641, column: 6)
!1928 = !DILocation(line: 641, column: 12, scope: !1927)
!1929 = !DILocation(line: 641, column: 16, scope: !1927)
!1930 = !DILocation(line: 641, column: 6, scope: !1909)
!1931 = !DILocation(line: 642, column: 3, scope: !1927)
!1932 = !DILocation(line: 645, column: 9, scope: !1909)
!1933 = !DILocation(line: 645, column: 15, scope: !1909)
!1934 = !DILocation(line: 645, column: 2, scope: !1909)
!1935 = !DILocation(line: 647, column: 2, scope: !1909)
!1936 = !DILocation(line: 648, column: 1, scope: !1909)
!1937 = distinct !DISubprogram(name: "zedc_free_workspace", scope: !382, file: !382, line: 650, type: !1910, isLocal: false, isDefinition: true, scopeLine: 651, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !459)
!1938 = !DILocalVariable(name: "strm", arg: 1, scope: !1937, file: !382, line: 650, type: !772)
!1939 = !DILocation(line: 650, column: 38, scope: !1937)
!1940 = !DILocalVariable(name: "rc", scope: !1937, file: !382, line: 652, type: !366)
!1941 = !DILocation(line: 652, column: 6, scope: !1937)
!1942 = !DILocalVariable(name: "zedc", scope: !1937, file: !382, line: 653, type: !360)
!1943 = !DILocation(line: 653, column: 16, scope: !1937)
!1944 = !DILocation(line: 653, column: 38, scope: !1937)
!1945 = !DILocation(line: 653, column: 44, scope: !1937)
!1946 = !DILocation(line: 653, column: 23, scope: !1937)
!1947 = !DILocation(line: 655, column: 17, scope: !1937)
!1948 = !DILocation(line: 655, column: 23, scope: !1937)
!1949 = !DILocation(line: 655, column: 29, scope: !1937)
!1950 = !DILocation(line: 656, column: 10, scope: !1937)
!1951 = !DILocation(line: 656, column: 16, scope: !1937)
!1952 = !DILocation(line: 655, column: 7, scope: !1937)
!1953 = !DILocation(line: 655, column: 5, scope: !1937)
!1954 = !DILocation(line: 658, column: 2, scope: !1937)
!1955 = !DILocation(line: 658, column: 8, scope: !1937)
!1956 = !DILocation(line: 658, column: 12, scope: !1937)
!1957 = !DILocation(line: 659, column: 9, scope: !1937)
!1958 = !DILocation(line: 659, column: 2, scope: !1937)
!1959 = distinct !DISubprogram(name: "__adler32", scope: !382, file: !382, line: 664, type: !1960, isLocal: false, isDefinition: true, scopeLine: 666, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !459)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!255, !255, !1962, !366}
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64, align: 64)
!1963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !273)
!1964 = !DILocalVariable(name: "adler", arg: 1, scope: !1959, file: !382, line: 664, type: !255)
!1965 = !DILocation(line: 664, column: 39, scope: !1959)
!1966 = !DILocalVariable(name: "buf", arg: 2, scope: !1959, file: !382, line: 665, type: !1962)
!1967 = !DILocation(line: 665, column: 25, scope: !1959)
!1968 = !DILocalVariable(name: "len", arg: 3, scope: !1959, file: !382, line: 665, type: !366)
!1969 = !DILocation(line: 665, column: 34, scope: !1959)
!1970 = !DILocalVariable(name: "s1", scope: !1959, file: !382, line: 667, type: !255)
!1971 = !DILocation(line: 667, column: 16, scope: !1959)
!1972 = !DILocation(line: 667, column: 21, scope: !1959)
!1973 = !DILocation(line: 667, column: 27, scope: !1959)
!1974 = !DILocalVariable(name: "s2", scope: !1959, file: !382, line: 668, type: !255)
!1975 = !DILocation(line: 668, column: 16, scope: !1959)
!1976 = !DILocation(line: 668, column: 22, scope: !1959)
!1977 = !DILocation(line: 668, column: 28, scope: !1959)
!1978 = !DILocation(line: 668, column: 35, scope: !1959)
!1979 = !DILocalVariable(name: "n", scope: !1959, file: !382, line: 669, type: !366)
!1980 = !DILocation(line: 669, column: 6, scope: !1959)
!1981 = !DILocation(line: 671, column: 9, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1959, file: !382, line: 671, column: 2)
!1983 = !DILocation(line: 671, column: 7, scope: !1982)
!1984 = !DILocation(line: 671, column: 14, scope: !1985)
!1985 = !DILexicalBlockFile(scope: !1986, file: !382, discriminator: 1)
!1986 = distinct !DILexicalBlock(scope: !1982, file: !382, line: 671, column: 2)
!1987 = !DILocation(line: 671, column: 18, scope: !1985)
!1988 = !DILocation(line: 671, column: 16, scope: !1985)
!1989 = !DILocation(line: 671, column: 2, scope: !1985)
!1990 = !DILocation(line: 672, column: 9, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1986, file: !382, line: 671, column: 28)
!1992 = !DILocation(line: 672, column: 18, scope: !1991)
!1993 = !DILocation(line: 672, column: 14, scope: !1991)
!1994 = !DILocation(line: 672, column: 12, scope: !1991)
!1995 = !DILocation(line: 672, column: 22, scope: !1991)
!1996 = !DILocation(line: 672, column: 6, scope: !1991)
!1997 = !DILocation(line: 673, column: 9, scope: !1991)
!1998 = !DILocation(line: 673, column: 14, scope: !1991)
!1999 = !DILocation(line: 673, column: 12, scope: !1991)
!2000 = !DILocation(line: 673, column: 18, scope: !1991)
!2001 = !DILocation(line: 673, column: 6, scope: !1991)
!2002 = !DILocation(line: 674, column: 2, scope: !1991)
!2003 = !DILocation(line: 671, column: 24, scope: !2004)
!2004 = !DILexicalBlockFile(scope: !1986, file: !382, discriminator: 2)
!2005 = !DILocation(line: 671, column: 2, scope: !2004)
!2006 = distinct !{!2006, !2007}
!2007 = !DILocation(line: 671, column: 2, scope: !1959)
!2008 = !DILocation(line: 675, column: 10, scope: !1959)
!2009 = !DILocation(line: 675, column: 13, scope: !1959)
!2010 = !DILocation(line: 675, column: 22, scope: !1959)
!2011 = !DILocation(line: 675, column: 20, scope: !1959)
!2012 = !DILocation(line: 675, column: 2, scope: !1959)
!2013 = distinct !DISubprogram(name: "__arch_swab32", scope: !2014, file: !2014, line: 7, type: !967, isLocal: true, isDefinition: true, scopeLine: 8, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !459)
!2014 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/asm/swab.h", directory: "/home/lichi/Desktop")
!2015 = !DILocalVariable(name: "val", arg: 1, scope: !2013, file: !2014, line: 7, type: !280)
!2016 = !DILocation(line: 7, column: 45, scope: !2013)
!2017 = !DILocation(line: 9, column: 42, scope: !2013)
!2018 = !DILocation(line: 9, column: 2, scope: !2013)
!2019 = !{i32 99322}
!2020 = !DILocation(line: 10, column: 9, scope: !2013)
!2021 = !DILocation(line: 10, column: 2, scope: !2013)
!2022 = distinct !DISubprogram(name: "__arch_swab64", scope: !2014, file: !2014, line: 14, type: !997, isLocal: true, isDefinition: true, scopeLine: 15, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !459)
!2023 = !DILocalVariable(name: "val", arg: 1, scope: !2022, file: !2014, line: 14, type: !287)
!2024 = !DILocation(line: 14, column: 45, scope: !2022)
!2025 = !DILocation(line: 30, column: 42, scope: !2022)
!2026 = !DILocation(line: 30, column: 2, scope: !2022)
!2027 = !{i32 99490}
!2028 = !DILocation(line: 31, column: 9, scope: !2022)
!2029 = !DILocation(line: 31, column: 2, scope: !2022)
