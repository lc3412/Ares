; ModuleID = '/home/lichi/Desktop/genwqe/[task]lib--__libzADC.o/[inter]lib--hardware.o.i'
source_filename = "/home/lichi/Desktop/genwqe/[task]lib--__libzADC.o/[inter]lib--hardware.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.zedc_dev_t = type opaque
%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type opaque
%struct.hw_state = type { i32, i32, i32, %struct.zedc_stream_s, i32, i32, i64, i64, i8*, i8*, i64, i64, i8*, i8*, i8*, i32, i32 }
%struct.zedc_stream_s = type { i32, i32, i32, i32, i32, i32, i32, i8*, i32, i64, i8*, i32, i64, i32, i32, i8*, %struct.ddcb_cmd, i16, i16, i32, i32, i32, %struct.zedc_fifo, %struct.zedc_fifo, i32, i16, i32, i32, i8, i32, i32, i32, i32, i32, %struct.zedc_wsp*, i32, [3 x i32], i32, i32, i32, i32, %struct.gzedc_header_s*, i32, i16, i8, i8, i32, i32, i8, i8, i32, i16, i8, i16, i32, i32, i32, i64, i32, i32, i16, i8, i16, i32, i32, [18 x i8], i16, i32, i32, [18 x i8] }
%struct.ddcb_cmd = type { i64, i64, i8, i8, i8, i8, i16, i16, i16, i16, i32, i64, i64, i64, i64, [64 x i8], %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i64, [96 x i8] }
%struct.zedc_fifo = type { i32, i32, [256 x i8] }
%struct.zedc_wsp = type { [2 x [32784 x i8]], [512 x i8] }
%struct.gzedc_header_s = type { i32, i64, i32, i32, i8*, i32, i32, i8*, i32, i8*, i32, i32, i32 }
%struct.gz_header_s = type { i32, i64, i32, i32, i8*, i32, i32, i8*, i32, i8*, i32, i32, i32 }
%struct.stream_ending = type { [16 x i8], i32, i32, i32, i32, i32, i32 }

@zlib_accelerator = external global i32, align 4
@zlib_card = external global i32, align 4
@zlib_deflate_flags = external global i32, align 4
@zlib_ibuf_total = internal global i32 786432, align 4
@zlib_xcheck = internal global i32 1, align 4
@zedc_verbose = internal global i32 0, align 4
@zlib_trace = external global i32, align 4
@zlib_log = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [70 x i8] c"hhh [%p] h_deflateInit2_: card_type=%d card_no=%d zlib_ibuf_total=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"%s:%u: Error: Cannot get destination buffer\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"hardware.c\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"%s:%u: Error: zEDC deflateCopy returned %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"%s:%u: Error: Cannot open accelerator handle\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"hhh   Allocated zedc device %p\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"hhh [%p] h_deflateReset\0A\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"hhh [%p] h_deflateSetDictionary dictionary=%p dictLength=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"hhh [%p]    adler32=%08x  dict_adler32=%08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"hhh [%p] h_deflateSetHeader headerp=%p\0A\00", align 1
@.str.10 = private unnamed_addr constant [106 x i8] c"hhh [%p] h_deflate: flush=%s avail_in=%d avail_out=%d ibuf_avail=%d obuf_avail=%d adler32/cr32=%08x/%08x\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"hhh [%p]   *** loop=%d flush=%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"hhh [%p]   *** sending %d bytes to hardware ...\0A\00", align 1
@.str.13 = private unnamed_addr constant [66 x i8] c"%s:%u: Error: not all input absorbed! avail_in is still %d bytes\0A\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"%s:%u: Error: obuf was not large enough!\0A\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"hhh [%p] Not yet finished (avail_in=%d)\0A\00", align 1
@zlib_inflate_flags = external global i32, align 4
@.str.16 = private unnamed_addr constant [70 x i8] c"hhh [%p] h_inflateInit2_: card_type=%d card_no=%d zlib_obuf_total=%d\0A\00", align 1
@zlib_obuf_total = internal global i32 131072, align 4
@.str.17 = private unnamed_addr constant [111 x i8] c"%s:%u: Error:  NOTE: Potential hardware bug. We might get DDCBs\0A       with timeouts: RETC=0x110, ATTN=0xe004\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"hhh [%p] h_inflateReset\0A\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"hhh [%p] warn: (0x%x 0x%x 0x%x 0x%x)\0A\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"hhh [%p] h_inflateReset2(windowBits=%d)\0A\00", align 1
@.str.21 = private unnamed_addr constant [61 x i8] c"hhh [%p] h_inflateSetDictionary dictionary=%p dictLength=%d\0A\00", align 1
@.str.22 = private unnamed_addr constant [62 x i8] c"hhh [%p] h_inflateGetDictionary dictionary=%p &dictLength=%p\0A\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"hhh [%p] h_inflateGetHeader headerp=%p\0A\00", align 1
@.str.24 = private unnamed_addr constant [98 x i8] c"hhh [%p] h_inflate: flush=%s avail_in=%d avail_out=%d ibuf_avail=%d obuf_avail=%d use_int_buf=%d\0A\00", align 1
@.str.25 = private unnamed_addr constant [54 x i8] c"hhh [%p] OBYTES_IN_DICT %d bytes (1) This must be 0!\0A\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"hhh [%p] loops=%d flush=%s\0A\00", align 1
@.str.27 = private unnamed_addr constant [39 x i8] c"hhh [%s] err: Read temp buffer rc=%d!\0A\00", align 1
@__func__.h_inflate = private unnamed_addr constant [10 x i8] c"h_inflate\00", align 1
@.str.28 = private unnamed_addr constant [46 x i8] c"hhh [%s] collected %d bytes from dict buffer\0A\00", align 1
@.str.29 = private unnamed_addr constant [47 x i8] c"%s:%u: Error: [%p] obuf should be empty here!\0A\00", align 1
@.str.30 = private unnamed_addr constant [64 x i8] c"hhh [%p] Sending avail_in=%d bytes to hardware (obuf_total=%d)\0A\00", align 1
@.str.31 = private unnamed_addr constant [43 x i8] c"hhh     Suppress Z_STREAM_END %zd %zd (2)\0A\00", align 1
@.str.32 = private unnamed_addr constant [77 x i8] c"hhh [%p] .......... flush=%s avail_in=%d avail_out=%d __check_stream=%s (2)\0A\00", align 1
@.str.33 = private unnamed_addr constant [49 x i8] c"hhh [%p] OBYTES_IN_DICT %d bytes (2) Must be 0!\0A\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"hhh [%p] data_type 0x%x\0A\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"hhh [%p] Z_DO_BLOCK_EXIT\0A\00", align 1
@.str.36 = private unnamed_addr constant [55 x i8] c"hhh [%p] __________ flush=%s avail_in=%d avail_out=%d\0A\00", align 1
@.str.37 = private unnamed_addr constant [63 x i8] c"hhh [%p] In/Out buffer not empty! ibuf_bytes=%d obuf_bytes=%d\0A\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"ZLIB_VERBOSE\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"ZLIB_ACCELERATOR\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"ZLIB_IBUF_TOTAL\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"ZLIB_OBUF_TOTAL\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"ZLIB_CARD\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"ZLIB_CROSS_CHECK\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"CAPI\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"RED\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@zedc_cards = internal global [129 x %struct.zedc_dev_t*] zeroinitializer, align 16
@.str.46 = private unnamed_addr constant [83 x i8] c"hhh [%p] h_deflate (%d): flush=%s next_in=%p avail_in=%d next_out=%p avail_out=%d\0A\00", align 1
@.str.47 = private unnamed_addr constant [84 x i8] c"hhh [%p]            flush=%s next_in=%p avail_in=%d next_out=%p avail_out=%d rc=%d\0A\00", align 1
@.str.48 = private unnamed_addr constant [40 x i8] c"hhh [%p]   *** collecting %d bytes ...\0A\00", align 1
@.str.49 = private unnamed_addr constant [92 x i8] c"hhh [%p]   *** giving out %d bytes, remaining %d bytes in temporary, %d in internal buffer\0A\00", align 1
@.str.50 = private unnamed_addr constant [130 x i8] c"hhh [%p] __inflate (%d): flush=%s next_in=%p avail_in=%d next_out=%p avail_out=%d total_in=%ld total_out=%ld crc/adler=%08x/%08x\0A\00", align 1
@.str.51 = private unnamed_addr constant [135 x i8] c"hhh [%p] ________h (%d) flush=%s next_in=%p avail_in=%d next_out=%p avail_out=%d total_in=%ld total_out=%ld crc/adler=%08x/%08x rc=%s\0A\00", align 1
@.str.52 = private unnamed_addr constant [48 x i8] c"hhh [%p] ZLIB_FLAG_DISABLE_CV_FOR_Z_STREAM_END\0A\00", align 1
@.str.53 = private unnamed_addr constant [48 x i8] c"hhh [%p] CONFIG_CIRCUMVENTION_FOR_Z_STREAM_END\0A\00", align 1
@.str.54 = private unnamed_addr constant [73 x i8] c"hhh     __in_hdr_bits %d: cannot parse dynamic huffman block, returning\0A\00", align 1
@.str.55 = private unnamed_addr constant [73 x i8] c"hhh Accumulated input data (__in_hdr_scratch_len=%d strm->avail_in=%d):\0A\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"hhh READ_HDR\0A\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"hhh     d=%08llx rc=%d\0A\00", align 1
@.str.58 = private unnamed_addr constant [49 x i8] c"hhh   Z_STREAM_END/BFINAL potentially detected!\0A\00", align 1
@.str.59 = private unnamed_addr constant [19 x i8] c"hhh FIXED_HUFFMAN\0A\00", align 1
@.str.60 = private unnamed_addr constant [58 x i8] c"hhh     d=%08llx, 00000000 indicates empty FIXED_HUFFMAN\0A\00", align 1
@.str.61 = private unnamed_addr constant [16 x i8] c"hhh COPY_BLOCK\0A\00", align 1
@.str.62 = private unnamed_addr constant [55 x i8] c"hhh     d=%08llx, 0000ffff indicates empty COPY_BLOCK\0A\00", align 1
@.str.63 = private unnamed_addr constant [20 x i8] c"hhh Brrr STATE: %s\0A\00", align 1
@state_str = internal global [4 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.73, i32 0, i32 0)], align 16
@.str.64 = private unnamed_addr constant [63 x i8] c"hhh     e.idx=%d e.in_hdr_scratch_len=%d offs=%d next_in=%02x\0A\00", align 1
@.str.65 = private unnamed_addr constant [51 x i8] c"hhh     Aborting search for Z_STREAM_END for now!\0A\00", align 1
@.str.66 = private unnamed_addr constant [15 x i8] c"NO_COMPRESSION\00", align 1
@.str.67 = private unnamed_addr constant [14 x i8] c"FIXED_HUFFMAN\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c"DYNAMIC_HUFFMAN\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"RESERVED\00", align 1
@__in_hdr_bits.btype_str = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i32 0, i32 0)], align 16
@.str.70 = private unnamed_addr constant [125 x i8] c"hhh SCRATCH BITS: headerarea_size=%d hdr_ib=%d tree_bits=%d pad_bits=%d scratch_ib=%d scratch_bits=%d infl_stat.hdr_type=%s\0A\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"READ_HDR\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"COPY_BLOCK\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"DYN_HUFFMAN\00", align 1

; Function Attrs: nounwind uwtable
define i64 @h_deflateBound(%struct.z_stream_s*, i64) #0 !dbg !490 {
  %3 = alloca %struct.z_stream_s*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.z_stream_s* %0, %struct.z_stream_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.z_stream_s** %3, metadata !531, metadata !532), !dbg !533
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !534, metadata !532), !dbg !535
  call void @llvm.dbg.declare(metadata i32* %5, metadata !536, metadata !532), !dbg !537
  %6 = call i64 @sysconf(i32 30) #7, !dbg !538
  %7 = trunc i64 %6 to i32, !dbg !538
  store i32 %7, i32* %5, align 4, !dbg !537
  %8 = load i64, i64* %4, align 8, !dbg !539
  %9 = mul i64 %8, 15, !dbg !540
  %10 = udiv i64 %9, 8, !dbg !541
  %11 = load i32, i32* %5, align 4, !dbg !542
  %12 = zext i32 %11 to i64, !dbg !542
  %13 = add i64 %10, %12, !dbg !543
  ret i64 %13, !dbg !544
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i64 @sysconf(i32) #2

; Function Attrs: nounwind uwtable
define i32 @h_deflateInit2_(%struct.z_stream_s*, i32, i32, i32, i32, i32, i8*, i32) #0 !dbg !545 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.z_stream_s*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.hw_state*, align 8
  %21 = alloca %struct.zedc_dev_t*, align 8
  %22 = alloca i32, align 4
  store %struct.z_stream_s* %0, %struct.z_stream_s** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.z_stream_s** %10, metadata !548, metadata !532), !dbg !549
  store i32 %1, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !550, metadata !532), !dbg !551
  store i32 %2, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !552, metadata !532), !dbg !553
  store i32 %3, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !554, metadata !532), !dbg !555
  store i32 %4, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !556, metadata !532), !dbg !557
  store i32 %5, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !558, metadata !532), !dbg !559
  store i8* %6, i8** %16, align 8
  call void @llvm.dbg.declare(metadata i8** %16, metadata !560, metadata !532), !dbg !561
  store i32 %7, i32* %17, align 4
  call void @llvm.dbg.declare(metadata i32* %17, metadata !562, metadata !532), !dbg !563
  call void @llvm.dbg.declare(metadata i32* %18, metadata !564, metadata !532), !dbg !565
  call void @llvm.dbg.declare(metadata i32* %19, metadata !566, metadata !532), !dbg !567
  store i32 0, i32* %19, align 4, !dbg !567
  call void @llvm.dbg.declare(metadata %struct.hw_state** %20, metadata !568, metadata !532), !dbg !569
  call void @llvm.dbg.declare(metadata %struct.zedc_dev_t** %21, metadata !570, metadata !532), !dbg !571
  call void @llvm.dbg.declare(metadata i32* %22, metadata !572, metadata !532), !dbg !573
  %23 = call i64 @sysconf(i32 30) #7, !dbg !574
  %24 = trunc i64 %23 to i32, !dbg !574
  store i32 %24, i32* %22, align 4, !dbg !573
  %25 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8, !dbg !575
  %26 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %25, i32 0, i32 2, !dbg !576
  store i64 0, i64* %26, align 8, !dbg !577
  %27 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8, !dbg !578
  %28 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %27, i32 0, i32 5, !dbg !579
  store i64 0, i64* %28, align 8, !dbg !580
  %29 = call noalias i8* @calloc(i64 1, i64 1192) #7, !dbg !581
  %30 = bitcast i8* %29 to %struct.hw_state*, !dbg !581
  store %struct.hw_state* %30, %struct.hw_state** %20, align 8, !dbg !582
  %31 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !583
  %32 = icmp eq %struct.hw_state* %31, null, !dbg !585
  br i1 %32, label %33, label %34, !dbg !586

; <label>:33:                                     ; preds = %8
  store i32 -4, i32* %9, align 4, !dbg !587
  br label %272, !dbg !587

; <label>:34:                                     ; preds = %8
  %35 = load i32, i32* @zlib_accelerator, align 4, !dbg !588
  %36 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !589
  %37 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %36, i32 0, i32 1, !dbg !590
  store i32 %35, i32* %37, align 4, !dbg !591
  %38 = load i32, i32* @zlib_card, align 4, !dbg !592
  %39 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !593
  %40 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %39, i32 0, i32 0, !dbg !594
  store i32 %38, i32* %40, align 8, !dbg !595
  %41 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !596
  %42 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %41, i32 0, i32 2, !dbg !597
  store i32 12, i32* %42, align 8, !dbg !598
  %43 = load i32, i32* @zlib_deflate_flags, align 4, !dbg !599
  %44 = and i32 %43, 128, !dbg !601
  %45 = icmp ne i32 %44, 0, !dbg !601
  br i1 %45, label %46, label %51, !dbg !602

; <label>:46:                                     ; preds = %34
  %47 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !603
  %48 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %47, i32 0, i32 2, !dbg !604
  %49 = load i32, i32* %48, align 8, !dbg !605
  %50 = or i32 %49, 32, !dbg !605
  store i32 %50, i32* %48, align 8, !dbg !605
  br label %51, !dbg !603

; <label>:51:                                     ; preds = %46, %34
  %52 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !606
  %53 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %52, i32 0, i32 0, !dbg !607
  %54 = load i32, i32* %53, align 8, !dbg !607
  %55 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !608
  %56 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %55, i32 0, i32 1, !dbg !609
  %57 = load i32, i32* %56, align 4, !dbg !609
  %58 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !610
  %59 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %58, i32 0, i32 2, !dbg !611
  %60 = load i32, i32* %59, align 8, !dbg !611
  %61 = call %struct.zedc_dev_t* @__zedc_open(i32 %54, i32 %57, i32 %60, i32* %19), !dbg !612
  store %struct.zedc_dev_t* %61, %struct.zedc_dev_t** %21, align 8, !dbg !613
  %62 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %21, align 8, !dbg !614
  %63 = icmp ne %struct.zedc_dev_t* %62, null, !dbg !614
  br i1 %63, label %65, label %64, !dbg !616

; <label>:64:                                     ; preds = %51
  store i32 -2, i32* %18, align 4, !dbg !617
  br label %268, !dbg !619

; <label>:65:                                     ; preds = %51
  %66 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %21, align 8, !dbg !620
  %67 = bitcast %struct.zedc_dev_t* %66 to i8*, !dbg !620
  %68 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !621
  %69 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %68, i32 0, i32 3, !dbg !622
  %70 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %69, i32 0, i32 15, !dbg !623
  store i8* %67, i8** %70, align 8, !dbg !624
  %71 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !625
  %72 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %71, i32 0, i32 16, !dbg !626
  store i32 0, i32* %72, align 4, !dbg !627
  %73 = load i32, i32* %22, align 4, !dbg !628
  %74 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !629
  %75 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %74, i32 0, i32 5, !dbg !630
  store i32 %73, i32* %75, align 4, !dbg !631
  %76 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !632
  %77 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %76, i32 0, i32 3, !dbg !633
  %78 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %77, i32 0, i32 36, !dbg !634
  %79 = getelementptr inbounds [3 x i32], [3 x i32]* %78, i64 0, i64 0, !dbg !632
  store i32 16, i32* %79, align 4, !dbg !635
  %80 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !636
  %81 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %80, i32 0, i32 3, !dbg !637
  %82 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %81, i32 0, i32 36, !dbg !638
  %83 = getelementptr inbounds [3 x i32], [3 x i32]* %82, i64 0, i64 1, !dbg !636
  store i32 16, i32* %83, align 4, !dbg !639
  %84 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !640
  %85 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %84, i32 0, i32 3, !dbg !641
  %86 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %85, i32 0, i32 36, !dbg !642
  %87 = getelementptr inbounds [3 x i32], [3 x i32]* %86, i64 0, i64 2, !dbg !640
  store i32 16, i32* %87, align 4, !dbg !643
  %88 = load i32, i32* @zlib_deflate_flags, align 4, !dbg !644
  %89 = and i32 %88, 16, !dbg !646
  %90 = icmp ne i32 %89, 0, !dbg !646
  br i1 %90, label %91, label %108, !dbg !647

; <label>:91:                                     ; preds = %65
  %92 = load i32, i32* @zlib_ibuf_total, align 4, !dbg !648
  %93 = icmp ne i32 %92, 0, !dbg !651
  br i1 %93, label %94, label %103, !dbg !652

; <label>:94:                                     ; preds = %91
  %95 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !653
  %96 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %95, i32 0, i32 3, !dbg !655
  %97 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %96, i32 0, i32 36, !dbg !656
  %98 = getelementptr inbounds [3 x i32], [3 x i32]* %97, i64 0, i64 0, !dbg !653
  store i32 8, i32* %98, align 4, !dbg !657
  %99 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !658
  %100 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %99, i32 0, i32 3, !dbg !659
  %101 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %100, i32 0, i32 36, !dbg !660
  %102 = getelementptr inbounds [3 x i32], [3 x i32]* %101, i64 0, i64 1, !dbg !658
  store i32 8, i32* %102, align 4, !dbg !661
  br label %103, !dbg !662

; <label>:103:                                    ; preds = %94, %91
  %104 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !663
  %105 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %104, i32 0, i32 3, !dbg !664
  %106 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %105, i32 0, i32 36, !dbg !665
  %107 = getelementptr inbounds [3 x i32], [3 x i32]* %106, i64 0, i64 2, !dbg !663
  store i32 8, i32* %107, align 4, !dbg !666
  br label %108, !dbg !667

; <label>:108:                                    ; preds = %103, %65
  %109 = load i32, i32* @zlib_xcheck, align 4, !dbg !668
  %110 = icmp ne i32 %109, 0, !dbg !668
  br i1 %110, label %111, label %117, !dbg !670

; <label>:111:                                    ; preds = %108
  %112 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !671
  %113 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %112, i32 0, i32 3, !dbg !672
  %114 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %113, i32 0, i32 21, !dbg !673
  %115 = load i32, i32* %114, align 4, !dbg !674
  %116 = or i32 %115, 1, !dbg !674
  store i32 %116, i32* %114, align 4, !dbg !674
  br label %117, !dbg !671

; <label>:117:                                    ; preds = %111, %108
  %118 = load i32, i32* @zedc_verbose, align 4, !dbg !675
  %119 = and i32 %118, 65536, !dbg !677
  %120 = icmp ne i32 %119, 0, !dbg !677
  br i1 %120, label %121, label %127, !dbg !678

; <label>:121:                                    ; preds = %117
  %122 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !679
  %123 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %122, i32 0, i32 3, !dbg !680
  %124 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %123, i32 0, i32 21, !dbg !681
  %125 = load i32, i32* %124, align 4, !dbg !682
  %126 = or i32 %125, 2, !dbg !682
  store i32 %126, i32* %124, align 4, !dbg !682
  br label %127, !dbg !679

; <label>:127:                                    ; preds = %121, %117
  %128 = load i32, i32* @zlib_deflate_flags, align 4, !dbg !683
  %129 = and i32 %128, 64, !dbg !685
  %130 = icmp ne i32 %129, 0, !dbg !685
  br i1 %130, label %131, label %137, !dbg !686

; <label>:131:                                    ; preds = %127
  %132 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !687
  %133 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %132, i32 0, i32 3, !dbg !688
  %134 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %133, i32 0, i32 21, !dbg !689
  %135 = load i32, i32* %134, align 4, !dbg !690
  %136 = or i32 %135, 4, !dbg !690
  store i32 %136, i32* %134, align 4, !dbg !690
  br label %137, !dbg !687

; <label>:137:                                    ; preds = %131, %127
  %138 = load i32, i32* @zlib_ibuf_total, align 4, !dbg !691
  %139 = icmp ne i32 %138, 0, !dbg !691
  br i1 %139, label %140, label %197, !dbg !693

; <label>:140:                                    ; preds = %137
  %141 = load i32, i32* @zlib_ibuf_total, align 4, !dbg !694
  %142 = zext i32 %141 to i64, !dbg !694
  %143 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !696
  %144 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %143, i32 0, i32 7, !dbg !697
  store i64 %142, i64* %144, align 8, !dbg !698
  %145 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !699
  %146 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %145, i32 0, i32 6, !dbg !700
  store i64 %142, i64* %146, align 8, !dbg !701
  %147 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %21, align 8, !dbg !702
  %148 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !703
  %149 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %148, i32 0, i32 6, !dbg !704
  %150 = load i64, i64* %149, align 8, !dbg !704
  %151 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !705
  %152 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %151, i32 0, i32 3, !dbg !706
  %153 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %152, i32 0, i32 36, !dbg !707
  %154 = getelementptr inbounds [3 x i32], [3 x i32]* %153, i64 0, i64 0, !dbg !705
  %155 = load i32, i32* %154, align 4, !dbg !705
  %156 = call i8* @zedc_memalign(%struct.zedc_dev_t* %147, i64 %150, i32 %155), !dbg !708
  %157 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !709
  %158 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %157, i32 0, i32 9, !dbg !710
  store i8* %156, i8** %158, align 8, !dbg !711
  %159 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !712
  %160 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %159, i32 0, i32 8, !dbg !713
  store i8* %156, i8** %160, align 8, !dbg !714
  %161 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !715
  %162 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %161, i32 0, i32 8, !dbg !717
  %163 = load i8*, i8** %162, align 8, !dbg !717
  %164 = icmp eq i8* %163, null, !dbg !718
  br i1 %164, label %165, label %166, !dbg !719

; <label>:165:                                    ; preds = %140
  store i32 -4, i32* %18, align 4, !dbg !720
  br label %265, !dbg !722

; <label>:166:                                    ; preds = %140
  %167 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8, !dbg !723
  %168 = load i32, i32* @zlib_ibuf_total, align 4, !dbg !724
  %169 = zext i32 %168 to i64, !dbg !724
  %170 = call i64 @h_deflateBound(%struct.z_stream_s* %167, i64 %169), !dbg !725
  %171 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !726
  %172 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %171, i32 0, i32 11, !dbg !727
  store i64 %170, i64* %172, align 8, !dbg !728
  %173 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !729
  %174 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %173, i32 0, i32 10, !dbg !730
  store i64 %170, i64* %174, align 8, !dbg !731
  %175 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %21, align 8, !dbg !732
  %176 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !733
  %177 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %176, i32 0, i32 10, !dbg !734
  %178 = load i64, i64* %177, align 8, !dbg !734
  %179 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !735
  %180 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %179, i32 0, i32 3, !dbg !736
  %181 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %180, i32 0, i32 36, !dbg !737
  %182 = getelementptr inbounds [3 x i32], [3 x i32]* %181, i64 0, i64 1, !dbg !735
  %183 = load i32, i32* %182, align 4, !dbg !735
  %184 = call i8* @zedc_memalign(%struct.zedc_dev_t* %175, i64 %178, i32 %183), !dbg !738
  %185 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !739
  %186 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %185, i32 0, i32 14, !dbg !740
  store i8* %184, i8** %186, align 8, !dbg !741
  %187 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !742
  %188 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %187, i32 0, i32 13, !dbg !743
  store i8* %184, i8** %188, align 8, !dbg !744
  %189 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !745
  %190 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %189, i32 0, i32 12, !dbg !746
  store i8* %184, i8** %190, align 8, !dbg !747
  %191 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !748
  %192 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %191, i32 0, i32 12, !dbg !750
  %193 = load i8*, i8** %192, align 8, !dbg !750
  %194 = icmp eq i8* %193, null, !dbg !751
  br i1 %194, label %195, label %196, !dbg !752

; <label>:195:                                    ; preds = %166
  store i32 -4, i32* %18, align 4, !dbg !753
  br label %251, !dbg !755

; <label>:196:                                    ; preds = %166
  br label %197, !dbg !756

; <label>:197:                                    ; preds = %196, %137
  br label %198, !dbg !757, !llvm.loop !758

; <label>:198:                                    ; preds = %197
  %199 = load i32, i32* @zlib_trace, align 4, !dbg !759
  %200 = and i32 %199, 2, !dbg !763
  %201 = icmp ne i32 %200, 0, !dbg !763
  br i1 %201, label %202, label %213, !dbg !764

; <label>:202:                                    ; preds = %198
  %203 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !765
  %204 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8, !dbg !767
  %205 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !768
  %206 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %205, i32 0, i32 1, !dbg !769
  %207 = load i32, i32* %206, align 4, !dbg !769
  %208 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !770
  %209 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %208, i32 0, i32 0, !dbg !771
  %210 = load i32, i32* %209, align 8, !dbg !771
  %211 = load i32, i32* @zlib_ibuf_total, align 4, !dbg !772
  %212 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %203, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i32 0, i32 0), %struct.z_stream_s* %204, i32 %207, i32 %210, i32 %211), !dbg !773
  br label %213, !dbg !773

; <label>:213:                                    ; preds = %202, %198
  br label %214, !dbg !774

; <label>:214:                                    ; preds = %213
  %215 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !776
  %216 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %215, i32 0, i32 3, !dbg !777
  %217 = load i32, i32* %11, align 4, !dbg !778
  %218 = load i32, i32* %12, align 4, !dbg !779
  %219 = load i32, i32* %13, align 4, !dbg !780
  %220 = load i32, i32* %14, align 4, !dbg !781
  %221 = load i32, i32* %15, align 4, !dbg !782
  %222 = call i32 @zedc_deflateInit2(%struct.zedc_stream_s* %216, i32 %217, i32 %218, i32 %219, i32 %220, i32 %221), !dbg !783
  store i32 %222, i32* %18, align 4, !dbg !784
  %223 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8, !dbg !785
  %224 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !786
  %225 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %224, i32 0, i32 3, !dbg !787
  call void @__fixup_crc_or_adler(%struct.z_stream_s* %223, %struct.zedc_stream_s* %225), !dbg !788
  %226 = load i32, i32* %18, align 4, !dbg !789
  %227 = icmp ne i32 %226, 0, !dbg !791
  br i1 %227, label %228, label %230, !dbg !792

; <label>:228:                                    ; preds = %214
  %229 = load i32, i32* %18, align 4, !dbg !793
  store i32 %229, i32* %18, align 4, !dbg !795
  br label %237, !dbg !796

; <label>:230:                                    ; preds = %214
  %231 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !797
  %232 = bitcast %struct.hw_state* %231 to i8*, !dbg !798
  %233 = bitcast i8* %232 to %struct.internal_state*, !dbg !798
  %234 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8, !dbg !799
  %235 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %234, i32 0, i32 7, !dbg !800
  store %struct.internal_state* %233, %struct.internal_state** %235, align 8, !dbg !801
  %236 = load i32, i32* %18, align 4, !dbg !802
  store i32 %236, i32* %9, align 4, !dbg !803
  br label %272, !dbg !803

; <label>:237:                                    ; preds = %228
  %238 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %21, align 8, !dbg !804
  %239 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !805
  %240 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %239, i32 0, i32 12, !dbg !806
  %241 = load i8*, i8** %240, align 8, !dbg !806
  %242 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !807
  %243 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %242, i32 0, i32 10, !dbg !808
  %244 = load i64, i64* %243, align 8, !dbg !808
  %245 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !809
  %246 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %245, i32 0, i32 3, !dbg !810
  %247 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %246, i32 0, i32 36, !dbg !811
  %248 = getelementptr inbounds [3 x i32], [3 x i32]* %247, i64 0, i64 1, !dbg !809
  %249 = load i32, i32* %248, align 4, !dbg !809
  %250 = call i32 @zedc_free(%struct.zedc_dev_t* %238, i8* %241, i64 %244, i32 %249), !dbg !812
  br label %251, !dbg !812

; <label>:251:                                    ; preds = %237, %195
  %252 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %21, align 8, !dbg !813
  %253 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !814
  %254 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %253, i32 0, i32 8, !dbg !815
  %255 = load i8*, i8** %254, align 8, !dbg !815
  %256 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !816
  %257 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %256, i32 0, i32 6, !dbg !817
  %258 = load i64, i64* %257, align 8, !dbg !817
  %259 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !818
  %260 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %259, i32 0, i32 3, !dbg !819
  %261 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %260, i32 0, i32 36, !dbg !820
  %262 = getelementptr inbounds [3 x i32], [3 x i32]* %261, i64 0, i64 0, !dbg !818
  %263 = load i32, i32* %262, align 4, !dbg !818
  %264 = call i32 @zedc_free(%struct.zedc_dev_t* %252, i8* %255, i64 %258, i32 %263), !dbg !821
  br label %265, !dbg !821

; <label>:265:                                    ; preds = %251, %165
  %266 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %21, align 8, !dbg !822
  %267 = call i32 @__zedc_close(%struct.zedc_dev_t* %266), !dbg !823
  br label %268, !dbg !823

; <label>:268:                                    ; preds = %265, %64
  %269 = load %struct.hw_state*, %struct.hw_state** %20, align 8, !dbg !824
  %270 = bitcast %struct.hw_state* %269 to i8*, !dbg !824
  call void @__free(i8* %270), !dbg !825
  %271 = load i32, i32* %18, align 4, !dbg !826
  store i32 %271, i32* %9, align 4, !dbg !827
  br label %272, !dbg !827

; <label>:272:                                    ; preds = %268, %230, %33
  %273 = load i32, i32* %9, align 4, !dbg !828
  ret i32 %273, !dbg !828
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind uwtable
define internal %struct.zedc_dev_t* @__zedc_open(i32, i32, i32, i32*) #0 !dbg !829 {
  %5 = alloca %struct.zedc_dev_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !833, metadata !532), !dbg !834
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !835, metadata !532), !dbg !836
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !837, metadata !532), !dbg !838
  store i32* %3, i32** %9, align 8
  call void @llvm.dbg.declare(metadata i32** %9, metadata !839, metadata !532), !dbg !840
  call void @llvm.dbg.declare(metadata i32* %10, metadata !841, metadata !532), !dbg !842
  %11 = load i32, i32* @zlib_inflate_flags, align 4, !dbg !843
  %12 = load i32, i32* @zlib_deflate_flags, align 4, !dbg !844
  %13 = or i32 %11, %12, !dbg !845
  store i32 %13, i32* %10, align 4, !dbg !842
  %14 = load i32, i32* %10, align 4, !dbg !846
  %15 = and i32 %14, 32, !dbg !848
  %16 = icmp eq i32 %15, 0, !dbg !849
  br i1 %16, label %17, label %23, !dbg !850

; <label>:17:                                     ; preds = %4
  %18 = load i32, i32* %6, align 4, !dbg !851
  %19 = load i32, i32* %7, align 4, !dbg !852
  %20 = load i32, i32* %8, align 4, !dbg !853
  %21 = load i32*, i32** %9, align 8, !dbg !854
  %22 = call %struct.zedc_dev_t* @zedc_open(i32 %18, i32 %19, i32 %20, i32* %21), !dbg !855
  store %struct.zedc_dev_t* %22, %struct.zedc_dev_t** %5, align 8, !dbg !856
  br label %69, !dbg !856

; <label>:23:                                     ; preds = %4
  %24 = load i32, i32* %6, align 4, !dbg !857
  %25 = icmp eq i32 %24, -1, !dbg !859
  br i1 %25, label %26, label %38, !dbg !860

; <label>:26:                                     ; preds = %23
  %27 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** getelementptr inbounds ([129 x %struct.zedc_dev_t*], [129 x %struct.zedc_dev_t*]* @zedc_cards, i64 0, i64 128), align 16, !dbg !861
  %28 = icmp ne %struct.zedc_dev_t* %27, null, !dbg !861
  br i1 %28, label %29, label %31, !dbg !864

; <label>:29:                                     ; preds = %26
  %30 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** getelementptr inbounds ([129 x %struct.zedc_dev_t*], [129 x %struct.zedc_dev_t*]* @zedc_cards, i64 0, i64 128), align 16, !dbg !865
  store %struct.zedc_dev_t* %30, %struct.zedc_dev_t** %5, align 8, !dbg !866
  br label %69, !dbg !866

; <label>:31:                                     ; preds = %26
  %32 = load i32, i32* %6, align 4, !dbg !867
  %33 = load i32, i32* %7, align 4, !dbg !868
  %34 = load i32, i32* %8, align 4, !dbg !869
  %35 = load i32*, i32** %9, align 8, !dbg !870
  %36 = call %struct.zedc_dev_t* @zedc_open(i32 %32, i32 %33, i32 %34, i32* %35), !dbg !871
  store %struct.zedc_dev_t* %36, %struct.zedc_dev_t** getelementptr inbounds ([129 x %struct.zedc_dev_t*], [129 x %struct.zedc_dev_t*]* @zedc_cards, i64 0, i64 128), align 16, !dbg !872
  %37 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** getelementptr inbounds ([129 x %struct.zedc_dev_t*], [129 x %struct.zedc_dev_t*]* @zedc_cards, i64 0, i64 128), align 16, !dbg !873
  store %struct.zedc_dev_t* %37, %struct.zedc_dev_t** %5, align 8, !dbg !874
  br label %69, !dbg !874

; <label>:38:                                     ; preds = %23
  %39 = load i32, i32* %6, align 4, !dbg !875
  %40 = icmp slt i32 %39, 0, !dbg !877
  br i1 %40, label %44, label %41, !dbg !878

; <label>:41:                                     ; preds = %38
  %42 = load i32, i32* %6, align 4, !dbg !879
  %43 = icmp sge i32 %42, 128, !dbg !881
  br i1 %43, label %44, label %45, !dbg !882

; <label>:44:                                     ; preds = %41, %38
  store %struct.zedc_dev_t* null, %struct.zedc_dev_t** %5, align 8, !dbg !883
  br label %69, !dbg !883

; <label>:45:                                     ; preds = %41
  %46 = load i32, i32* %6, align 4, !dbg !884
  %47 = sext i32 %46 to i64, !dbg !886
  %48 = getelementptr inbounds [129 x %struct.zedc_dev_t*], [129 x %struct.zedc_dev_t*]* @zedc_cards, i64 0, i64 %47, !dbg !886
  %49 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %48, align 8, !dbg !886
  %50 = icmp ne %struct.zedc_dev_t* %49, null, !dbg !887
  br i1 %50, label %51, label %56, !dbg !888

; <label>:51:                                     ; preds = %45
  %52 = load i32, i32* %6, align 4, !dbg !889
  %53 = sext i32 %52 to i64, !dbg !891
  %54 = getelementptr inbounds [129 x %struct.zedc_dev_t*], [129 x %struct.zedc_dev_t*]* @zedc_cards, i64 0, i64 %53, !dbg !891
  %55 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %54, align 8, !dbg !891
  store %struct.zedc_dev_t* %55, %struct.zedc_dev_t** %5, align 8, !dbg !892
  br label %69, !dbg !892

; <label>:56:                                     ; preds = %45
  %57 = load i32, i32* %6, align 4, !dbg !893
  %58 = load i32, i32* %7, align 4, !dbg !894
  %59 = load i32, i32* %8, align 4, !dbg !895
  %60 = load i32*, i32** %9, align 8, !dbg !896
  %61 = call %struct.zedc_dev_t* @zedc_open(i32 %57, i32 %58, i32 %59, i32* %60), !dbg !897
  %62 = load i32, i32* %6, align 4, !dbg !898
  %63 = sext i32 %62 to i64, !dbg !899
  %64 = getelementptr inbounds [129 x %struct.zedc_dev_t*], [129 x %struct.zedc_dev_t*]* @zedc_cards, i64 0, i64 %63, !dbg !899
  store %struct.zedc_dev_t* %61, %struct.zedc_dev_t** %64, align 8, !dbg !900
  %65 = load i32, i32* %6, align 4, !dbg !901
  %66 = sext i32 %65 to i64, !dbg !902
  %67 = getelementptr inbounds [129 x %struct.zedc_dev_t*], [129 x %struct.zedc_dev_t*]* @zedc_cards, i64 0, i64 %66, !dbg !902
  %68 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %67, align 8, !dbg !902
  store %struct.zedc_dev_t* %68, %struct.zedc_dev_t** %5, align 8, !dbg !903
  br label %69, !dbg !903

; <label>:69:                                     ; preds = %56, %51, %44, %31, %29, %17
  %70 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %5, align 8, !dbg !904
  ret %struct.zedc_dev_t* %70, !dbg !904
}

declare i8* @zedc_memalign(%struct.zedc_dev_t*, i64, i32) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare i32 @zedc_deflateInit2(%struct.zedc_stream_s*, i32, i32, i32, i32, i32) #3

; Function Attrs: nounwind uwtable
define internal void @__fixup_crc_or_adler(%struct.z_stream_s*, %struct.zedc_stream_s*) #0 !dbg !905 {
  %3 = alloca %struct.z_stream_s*, align 8
  %4 = alloca %struct.zedc_stream_s*, align 8
  store %struct.z_stream_s* %0, %struct.z_stream_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.z_stream_s** %3, metadata !910, metadata !532), !dbg !911
  store %struct.zedc_stream_s* %1, %struct.zedc_stream_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %4, metadata !912, metadata !532), !dbg !913
  %5 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !914
  %6 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %5, i32 0, i32 20, !dbg !915
  %7 = load i32, i32* %6, align 8, !dbg !915
  %8 = icmp eq i32 %7, 2, !dbg !916
  br i1 %8, label %9, label %13, !dbg !917

; <label>:9:                                      ; preds = %2
  %10 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !918
  %11 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %10, i32 0, i32 13, !dbg !920
  %12 = load i32, i32* %11, align 8, !dbg !920
  br label %17, !dbg !921

; <label>:13:                                     ; preds = %2
  %14 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !922
  %15 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %14, i32 0, i32 14, !dbg !924
  %16 = load i32, i32* %15, align 4, !dbg !924
  br label %17, !dbg !925

; <label>:17:                                     ; preds = %13, %9
  %18 = phi i32 [ %12, %9 ], [ %16, %13 ], !dbg !926
  %19 = zext i32 %18 to i64, !dbg !926
  %20 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !928
  %21 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %20, i32 0, i32 12, !dbg !929
  store i64 %19, i64* %21, align 8, !dbg !930
  ret void, !dbg !931
}

declare i32 @zedc_free(%struct.zedc_dev_t*, i8*, i64, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @__zedc_close(%struct.zedc_dev_t*) #0 !dbg !932 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zedc_dev_t*, align 8
  %4 = alloca i32, align 4
  store %struct.zedc_dev_t* %0, %struct.zedc_dev_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_dev_t** %3, metadata !935, metadata !532), !dbg !936
  call void @llvm.dbg.declare(metadata i32* %4, metadata !937, metadata !532), !dbg !938
  %5 = load i32, i32* @zlib_inflate_flags, align 4, !dbg !939
  %6 = load i32, i32* @zlib_deflate_flags, align 4, !dbg !940
  %7 = or i32 %5, %6, !dbg !941
  store i32 %7, i32* %4, align 4, !dbg !938
  %8 = load i32, i32* %4, align 4, !dbg !942
  %9 = and i32 %8, 32, !dbg !944
  %10 = icmp eq i32 %9, 0, !dbg !945
  br i1 %10, label %11, label %14, !dbg !946

; <label>:11:                                     ; preds = %1
  %12 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %3, align 8, !dbg !947
  %13 = call i32 @zedc_close(%struct.zedc_dev_t* %12), !dbg !948
  store i32 %13, i32* %2, align 4, !dbg !949
  br label %15, !dbg !949

; <label>:14:                                     ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !950
  br label %15, !dbg !950

; <label>:15:                                     ; preds = %14, %11
  %16 = load i32, i32* %2, align 4, !dbg !951
  ret i32 %16, !dbg !951
}

; Function Attrs: nounwind uwtable
define internal void @__free(i8*) #0 !dbg !952 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !955, metadata !532), !dbg !956
  %3 = load i8*, i8** %2, align 8, !dbg !957
  %4 = icmp eq i8* %3, null, !dbg !959
  br i1 %4, label %5, label %6, !dbg !960

; <label>:5:                                      ; preds = %1
  br label %8, !dbg !961

; <label>:6:                                      ; preds = %1
  %7 = load i8*, i8** %2, align 8, !dbg !962
  call void @free(i8* %7) #7, !dbg !963
  br label %8, !dbg !964

; <label>:8:                                      ; preds = %6, %5
  ret void, !dbg !965
}

; Function Attrs: nounwind uwtable
define i32 @h_deflateCopy(%struct.z_stream_s*, %struct.z_stream_s*) #0 !dbg !967 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.z_stream_s*, align 8
  %5 = alloca %struct.z_stream_s*, align 8
  %6 = alloca %struct.hw_state*, align 8
  %7 = alloca %struct.hw_state*, align 8
  %8 = alloca %struct.zedc_dev_t*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.z_stream_s* %0, %struct.z_stream_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.z_stream_s** %4, metadata !970, metadata !532), !dbg !971
  store %struct.z_stream_s* %1, %struct.z_stream_s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.z_stream_s** %5, metadata !972, metadata !532), !dbg !973
  call void @llvm.dbg.declare(metadata %struct.hw_state** %6, metadata !974, metadata !532), !dbg !975
  call void @llvm.dbg.declare(metadata %struct.hw_state** %7, metadata !976, metadata !532), !dbg !977
  call void @llvm.dbg.declare(metadata %struct.zedc_dev_t** %8, metadata !978, metadata !532), !dbg !979
  call void @llvm.dbg.declare(metadata i32* %9, metadata !980, metadata !532), !dbg !981
  store i32 0, i32* %9, align 4, !dbg !981
  call void @llvm.dbg.declare(metadata i32* %10, metadata !982, metadata !532), !dbg !983
  %11 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8, !dbg !984
  %12 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %11, i32 0, i32 7, !dbg !985
  %13 = load %struct.internal_state*, %struct.internal_state** %12, align 8, !dbg !985
  %14 = bitcast %struct.internal_state* %13 to %struct.hw_state*, !dbg !986
  store %struct.hw_state* %14, %struct.hw_state** %6, align 8, !dbg !987
  %15 = call noalias i8* @calloc(i64 1, i64 1192) #7, !dbg !988
  %16 = bitcast i8* %15 to %struct.hw_state*, !dbg !988
  store %struct.hw_state* %16, %struct.hw_state** %7, align 8, !dbg !989
  %17 = load %struct.hw_state*, %struct.hw_state** %7, align 8, !dbg !990
  %18 = icmp eq %struct.hw_state* %17, null, !dbg !992
  br i1 %18, label %19, label %24, !dbg !993

; <label>:19:                                     ; preds = %2
  br label %20, !dbg !994, !llvm.loop !996

; <label>:20:                                     ; preds = %19
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !997
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 355), !dbg !1000
  br label %23, !dbg !1001

; <label>:23:                                     ; preds = %20
  store i32 -4, i32* %3, align 4, !dbg !1002
  br label %235, !dbg !1002

; <label>:24:                                     ; preds = %2
  %25 = load %struct.hw_state*, %struct.hw_state** %7, align 8, !dbg !1003
  %26 = bitcast %struct.hw_state* %25 to i8*, !dbg !1004
  %27 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !1005
  %28 = bitcast %struct.hw_state* %27 to i8*, !dbg !1004
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %28, i64 1192, i32 8, i1 false), !dbg !1004
  %29 = load %struct.hw_state*, %struct.hw_state** %7, align 8, !dbg !1006
  %30 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %29, i32 0, i32 3, !dbg !1007
  %31 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !1008
  %32 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %31, i32 0, i32 3, !dbg !1009
  %33 = call i32 @zedc_deflateCopy(%struct.zedc_stream_s* %30, %struct.zedc_stream_s* %32), !dbg !1010
  store i32 %33, i32* %9, align 4, !dbg !1011
  %34 = load i32, i32* %9, align 4, !dbg !1012
  %35 = icmp ne i32 %34, 0, !dbg !1014
  br i1 %35, label %36, label %42, !dbg !1015

; <label>:36:                                     ; preds = %24
  br label %37, !dbg !1016, !llvm.loop !1018

; <label>:37:                                     ; preds = %36
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !1019
  %39 = load i32, i32* %9, align 4, !dbg !1022
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 362, i32 %39), !dbg !1023
  br label %41, !dbg !1024

; <label>:41:                                     ; preds = %37
  br label %231, !dbg !1025

; <label>:42:                                     ; preds = %24
  %43 = load %struct.hw_state*, %struct.hw_state** %7, align 8, !dbg !1026
  %44 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %43, i32 0, i32 0, !dbg !1027
  %45 = load i32, i32* %44, align 8, !dbg !1027
  %46 = load %struct.hw_state*, %struct.hw_state** %7, align 8, !dbg !1028
  %47 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %46, i32 0, i32 1, !dbg !1029
  %48 = load i32, i32* %47, align 4, !dbg !1029
  %49 = load %struct.hw_state*, %struct.hw_state** %7, align 8, !dbg !1030
  %50 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %49, i32 0, i32 2, !dbg !1031
  %51 = load i32, i32* %50, align 8, !dbg !1031
  %52 = call %struct.zedc_dev_t* @__zedc_open(i32 %45, i32 %48, i32 %51, i32* %10), !dbg !1032
  store %struct.zedc_dev_t* %52, %struct.zedc_dev_t** %8, align 8, !dbg !1033
  %53 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %8, align 8, !dbg !1034
  %54 = icmp ne %struct.zedc_dev_t* %53, null, !dbg !1034
  br i1 %54, label %60, label %55, !dbg !1036

; <label>:55:                                     ; preds = %42
  br label %56, !dbg !1037, !llvm.loop !1039

; <label>:56:                                     ; preds = %55
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !1040
  %58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 369), !dbg !1043
  br label %59, !dbg !1044

; <label>:59:                                     ; preds = %56
  store i32 -2, i32* %9, align 4, !dbg !1045
  br label %228, !dbg !1046

; <label>:60:                                     ; preds = %42
  %61 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %8, align 8, !dbg !1047
  %62 = bitcast %struct.zedc_dev_t* %61 to i8*, !dbg !1047
  %63 = load %struct.hw_state*, %struct.hw_state** %7, align 8, !dbg !1048
  %64 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %63, i32 0, i32 3, !dbg !1049
  %65 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %64, i32 0, i32 15, !dbg !1050
  store i8* %62, i8** %65, align 8, !dbg !1051
  br label %66, !dbg !1052, !llvm.loop !1053

; <label>:66:                                     ; preds = %60
  %67 = load i32, i32* @zlib_trace, align 4, !dbg !1054
  %68 = and i32 %67, 2, !dbg !1058
  %69 = icmp ne i32 %68, 0, !dbg !1058
  br i1 %69, label %70, label %74, !dbg !1059

; <label>:70:                                     ; preds = %66
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !1060
  %72 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %8, align 8, !dbg !1062
  %73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0), %struct.zedc_dev_t* %72), !dbg !1063
  br label %74, !dbg !1063

; <label>:74:                                     ; preds = %70, %66
  br label %75, !dbg !1064

; <label>:75:                                     ; preds = %74
  %76 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !1066
  %77 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %76, i32 0, i32 6, !dbg !1068
  %78 = load i64, i64* %77, align 8, !dbg !1068
  %79 = icmp ne i64 %78, 0, !dbg !1066
  br i1 %79, label %80, label %139, !dbg !1069

; <label>:80:                                     ; preds = %75
  %81 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !1070
  %82 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %81, i32 0, i32 6, !dbg !1072
  %83 = load i64, i64* %82, align 8, !dbg !1072
  %84 = load %struct.hw_state*, %struct.hw_state** %7, align 8, !dbg !1073
  %85 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %84, i32 0, i32 6, !dbg !1074
  store i64 %83, i64* %85, align 8, !dbg !1075
  %86 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !1076
  %87 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %86, i32 0, i32 7, !dbg !1077
  %88 = load i64, i64* %87, align 8, !dbg !1077
  %89 = load %struct.hw_state*, %struct.hw_state** %7, align 8, !dbg !1078
  %90 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %89, i32 0, i32 7, !dbg !1079
  store i64 %88, i64* %90, align 8, !dbg !1080
  %91 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %8, align 8, !dbg !1081
  %92 = load %struct.hw_state*, %struct.hw_state** %7, align 8, !dbg !1082
  %93 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %92, i32 0, i32 6, !dbg !1083
  %94 = load i64, i64* %93, align 8, !dbg !1083
  %95 = load %struct.hw_state*, %struct.hw_state** %7, align 8, !dbg !1084
  %96 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %95, i32 0, i32 3, !dbg !1085
  %97 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %96, i32 0, i32 36, !dbg !1086
  %98 = getelementptr inbounds [3 x i32], [3 x i32]* %97, i64 0, i64 0, !dbg !1084
  %99 = load i32, i32* %98, align 4, !dbg !1084
  %100 = call i8* @zedc_memalign(%struct.zedc_dev_t* %91, i64 %94, i32 %99), !dbg !1087
  %101 = load %struct.hw_state*, %struct.hw_state** %7, align 8, !dbg !1088
  %102 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %101, i32 0, i32 8, !dbg !1089
  store i8* %100, i8** %102, align 8, !dbg !1090
  %103 = load %struct.hw_state*, %struct.hw_state** %7, align 8, !dbg !1091
  %104 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %103, i32 0, i32 8, !dbg !1093
  %105 = load i8*, i8** %104, align 8, !dbg !1093
  %106 = icmp eq i8* %105, null, !dbg !1094
  br i1 %106, label %107, label %108, !dbg !1095

; <label>:107:                                    ; preds = %80
  store i32 -4, i32* %9, align 4, !dbg !1096
  br label %228, !dbg !1098

; <label>:108:                                    ; preds = %80
  %109 = load %struct.hw_state*, %struct.hw_state** %7, align 8, !dbg !1099
  %110 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %109, i32 0, i32 8, !dbg !1100
  %111 = load i8*, i8** %110, align 8, !dbg !1100
  %112 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !1101
  %113 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %112, i32 0, i32 9, !dbg !1102
  %114 = load i8*, i8** %113, align 8, !dbg !1102
  %115 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !1103
  %116 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %115, i32 0, i32 8, !dbg !1104
  %117 = load i8*, i8** %116, align 8, !dbg !1104
  %118 = ptrtoint i8* %114 to i64, !dbg !1105
  %119 = ptrtoint i8* %117 to i64, !dbg !1105
  %120 = sub i64 %118, %119, !dbg !1105
  %121 = getelementptr inbounds i8, i8* %111, i64 %120, !dbg !1106
  %122 = load %struct.hw_state*, %struct.hw_state** %7, align 8, !dbg !1107
  %123 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %122, i32 0, i32 9, !dbg !1108
  store i8* %121, i8** %123, align 8, !dbg !1109
  %124 = load %struct.hw_state*, %struct.hw_state** %7, align 8, !dbg !1110
  %125 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %124, i32 0, i32 8, !dbg !1111
  %126 = load i8*, i8** %125, align 8, !dbg !1111
  %127 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !1112
  %128 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %127, i32 0, i32 8, !dbg !1113
  %129 = load i8*, i8** %128, align 8, !dbg !1113
  %130 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !1114
  %131 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %130, i32 0, i32 9, !dbg !1115
  %132 = load i8*, i8** %131, align 8, !dbg !1115
  %133 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !1116
  %134 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %133, i32 0, i32 8, !dbg !1117
  %135 = load i8*, i8** %134, align 8, !dbg !1117
  %136 = ptrtoint i8* %132 to i64, !dbg !1118
  %137 = ptrtoint i8* %135 to i64, !dbg !1118
  %138 = sub i64 %136, %137, !dbg !1118
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %126, i8* %129, i64 %138, i32 1, i1 false), !dbg !1119
  br label %139, !dbg !1120

; <label>:139:                                    ; preds = %108, %75
  %140 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !1121
  %141 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %140, i32 0, i32 10, !dbg !1123
  %142 = load i64, i64* %141, align 8, !dbg !1123
  %143 = icmp ne i64 %142, 0, !dbg !1121
  br i1 %143, label %144, label %216, !dbg !1124

; <label>:144:                                    ; preds = %139
  %145 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !1125
  %146 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %145, i32 0, i32 10, !dbg !1127
  %147 = load i64, i64* %146, align 8, !dbg !1127
  %148 = load %struct.hw_state*, %struct.hw_state** %7, align 8, !dbg !1128
  %149 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %148, i32 0, i32 10, !dbg !1129
  store i64 %147, i64* %149, align 8, !dbg !1130
  %150 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !1131
  %151 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %150, i32 0, i32 11, !dbg !1132
  %152 = load i64, i64* %151, align 8, !dbg !1132
  %153 = load %struct.hw_state*, %struct.hw_state** %7, align 8, !dbg !1133
  %154 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %153, i32 0, i32 11, !dbg !1134
  store i64 %152, i64* %154, align 8, !dbg !1135
  %155 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %8, align 8, !dbg !1136
  %156 = load %struct.hw_state*, %struct.hw_state** %7, align 8, !dbg !1137
  %157 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %156, i32 0, i32 10, !dbg !1138
  %158 = load i64, i64* %157, align 8, !dbg !1138
  %159 = load %struct.hw_state*, %struct.hw_state** %7, align 8, !dbg !1139
  %160 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %159, i32 0, i32 3, !dbg !1140
  %161 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %160, i32 0, i32 36, !dbg !1141
  %162 = getelementptr inbounds [3 x i32], [3 x i32]* %161, i64 0, i64 1, !dbg !1139
  %163 = load i32, i32* %162, align 4, !dbg !1139
  %164 = call i8* @zedc_memalign(%struct.zedc_dev_t* %155, i64 %158, i32 %163), !dbg !1142
  %165 = load %struct.hw_state*, %struct.hw_state** %7, align 8, !dbg !1143
  %166 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %165, i32 0, i32 12, !dbg !1144
  store i8* %164, i8** %166, align 8, !dbg !1145
  %167 = load %struct.hw_state*, %struct.hw_state** %7, align 8, !dbg !1146
  %168 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %167, i32 0, i32 12, !dbg !1148
  %169 = load i8*, i8** %168, align 8, !dbg !1148
  %170 = icmp eq i8* %169, null, !dbg !1149
  br i1 %170, label %171, label %172, !dbg !1150

; <label>:171:                                    ; preds = %144
  store i32 -4, i32* %9, align 4, !dbg !1151
  br label %222, !dbg !1153

; <label>:172:                                    ; preds = %144
  %173 = load %struct.hw_state*, %struct.hw_state** %7, align 8, !dbg !1154
  %174 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %173, i32 0, i32 12, !dbg !1155
  %175 = load i8*, i8** %174, align 8, !dbg !1155
  %176 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !1156
  %177 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %176, i32 0, i32 13, !dbg !1157
  %178 = load i8*, i8** %177, align 8, !dbg !1157
  %179 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !1158
  %180 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %179, i32 0, i32 12, !dbg !1159
  %181 = load i8*, i8** %180, align 8, !dbg !1159
  %182 = ptrtoint i8* %178 to i64, !dbg !1160
  %183 = ptrtoint i8* %181 to i64, !dbg !1160
  %184 = sub i64 %182, %183, !dbg !1160
  %185 = getelementptr inbounds i8, i8* %175, i64 %184, !dbg !1161
  %186 = load %struct.hw_state*, %struct.hw_state** %7, align 8, !dbg !1162
  %187 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %186, i32 0, i32 13, !dbg !1163
  store i8* %185, i8** %187, align 8, !dbg !1164
  %188 = load %struct.hw_state*, %struct.hw_state** %7, align 8, !dbg !1165
  %189 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %188, i32 0, i32 12, !dbg !1166
  %190 = load i8*, i8** %189, align 8, !dbg !1166
  %191 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !1167
  %192 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %191, i32 0, i32 14, !dbg !1168
  %193 = load i8*, i8** %192, align 8, !dbg !1168
  %194 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !1169
  %195 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %194, i32 0, i32 12, !dbg !1170
  %196 = load i8*, i8** %195, align 8, !dbg !1170
  %197 = ptrtoint i8* %193 to i64, !dbg !1171
  %198 = ptrtoint i8* %196 to i64, !dbg !1171
  %199 = sub i64 %197, %198, !dbg !1171
  %200 = getelementptr inbounds i8, i8* %190, i64 %199, !dbg !1172
  %201 = load %struct.hw_state*, %struct.hw_state** %7, align 8, !dbg !1173
  %202 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %201, i32 0, i32 14, !dbg !1174
  store i8* %200, i8** %202, align 8, !dbg !1175
  %203 = load %struct.hw_state*, %struct.hw_state** %7, align 8, !dbg !1176
  %204 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %203, i32 0, i32 14, !dbg !1177
  %205 = load i8*, i8** %204, align 8, !dbg !1177
  %206 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !1178
  %207 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %206, i32 0, i32 14, !dbg !1179
  %208 = load i8*, i8** %207, align 8, !dbg !1179
  %209 = load %struct.hw_state*, %struct.hw_state** %7, align 8, !dbg !1180
  %210 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %209, i32 0, i32 10, !dbg !1181
  %211 = load i64, i64* %210, align 8, !dbg !1181
  %212 = load %struct.hw_state*, %struct.hw_state** %7, align 8, !dbg !1182
  %213 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %212, i32 0, i32 11, !dbg !1183
  %214 = load i64, i64* %213, align 8, !dbg !1183
  %215 = sub i64 %211, %214, !dbg !1184
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %205, i8* %208, i64 %215, i32 1, i1 false), !dbg !1185
  br label %216, !dbg !1186

; <label>:216:                                    ; preds = %172, %139
  %217 = load %struct.hw_state*, %struct.hw_state** %7, align 8, !dbg !1187
  %218 = bitcast %struct.hw_state* %217 to i8*, !dbg !1188
  %219 = bitcast i8* %218 to %struct.internal_state*, !dbg !1188
  %220 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1189
  %221 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %220, i32 0, i32 7, !dbg !1190
  store %struct.internal_state* %219, %struct.internal_state** %221, align 8, !dbg !1191
  store i32 0, i32* %3, align 4, !dbg !1192
  br label %235, !dbg !1192

; <label>:222:                                    ; preds = %171
  %223 = load %struct.hw_state*, %struct.hw_state** %7, align 8, !dbg !1193
  %224 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %223, i32 0, i32 8, !dbg !1194
  %225 = load i8*, i8** %224, align 8, !dbg !1194
  call void @free(i8* %225) #7, !dbg !1195
  %226 = load %struct.hw_state*, %struct.hw_state** %7, align 8, !dbg !1196
  %227 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %226, i32 0, i32 8, !dbg !1197
  store i8* null, i8** %227, align 8, !dbg !1198
  br label %228, !dbg !1196

; <label>:228:                                    ; preds = %222, %107, %59
  %229 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %8, align 8, !dbg !1199
  %230 = call i32 @__zedc_close(%struct.zedc_dev_t* %229), !dbg !1200
  br label %231, !dbg !1200

; <label>:231:                                    ; preds = %228, %41
  %232 = load %struct.hw_state*, %struct.hw_state** %7, align 8, !dbg !1201
  %233 = bitcast %struct.hw_state* %232 to i8*, !dbg !1201
  call void @free(i8* %233) #7, !dbg !1202
  %234 = load i32, i32* %9, align 4, !dbg !1203
  store i32 %234, i32* %3, align 4, !dbg !1204
  br label %235, !dbg !1204

; <label>:235:                                    ; preds = %231, %216, %23
  %236 = load i32, i32* %3, align 4, !dbg !1205
  ret i32 %236, !dbg !1205
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

declare i32 @zedc_deflateCopy(%struct.zedc_stream_s*, %struct.zedc_stream_s*) #3

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @h_deflateReset(%struct.z_stream_s*) #0 !dbg !1206 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.z_stream_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zedc_stream_s*, align 8
  %6 = alloca %struct.hw_state*, align 8
  store %struct.z_stream_s* %0, %struct.z_stream_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.z_stream_s** %3, metadata !1209, metadata !532), !dbg !1210
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1211, metadata !532), !dbg !1212
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %5, metadata !1213, metadata !532), !dbg !1215
  call void @llvm.dbg.declare(metadata %struct.hw_state** %6, metadata !1216, metadata !532), !dbg !1217
  br label %7, !dbg !1218, !llvm.loop !1219

; <label>:7:                                      ; preds = %1
  %8 = load i32, i32* @zlib_trace, align 4, !dbg !1220
  %9 = and i32 %8, 2, !dbg !1224
  %10 = icmp ne i32 %9, 0, !dbg !1224
  br i1 %10, label %11, label %15, !dbg !1225

; <label>:11:                                     ; preds = %7
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !1226
  %13 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !1228
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0), %struct.z_stream_s* %13), !dbg !1229
  br label %15, !dbg !1229

; <label>:15:                                     ; preds = %11, %7
  br label %16, !dbg !1230

; <label>:16:                                     ; preds = %15
  %17 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !1232
  %18 = icmp eq %struct.z_stream_s* %17, null, !dbg !1234
  br i1 %18, label %19, label %20, !dbg !1235

; <label>:19:                                     ; preds = %16
  store i32 -2, i32* %2, align 4, !dbg !1236
  br label %69, !dbg !1236

; <label>:20:                                     ; preds = %16
  %21 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !1237
  %22 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %21, i32 0, i32 7, !dbg !1238
  %23 = load %struct.internal_state*, %struct.internal_state** %22, align 8, !dbg !1238
  %24 = bitcast %struct.internal_state* %23 to %struct.hw_state*, !dbg !1239
  store %struct.hw_state* %24, %struct.hw_state** %6, align 8, !dbg !1240
  %25 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !1241
  %26 = icmp eq %struct.hw_state* %25, null, !dbg !1243
  br i1 %26, label %27, label %28, !dbg !1244

; <label>:27:                                     ; preds = %20
  store i32 -2, i32* %2, align 4, !dbg !1245
  br label %69, !dbg !1245

; <label>:28:                                     ; preds = %20
  %29 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !1246
  %30 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %29, i32 0, i32 3, !dbg !1247
  store %struct.zedc_stream_s* %30, %struct.zedc_stream_s** %5, align 8, !dbg !1248
  %31 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !1249
  %32 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %31, i32 0, i32 2, !dbg !1250
  store i64 0, i64* %32, align 8, !dbg !1251
  %33 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !1252
  %34 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %33, i32 0, i32 5, !dbg !1253
  store i64 0, i64* %34, align 8, !dbg !1254
  %35 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !1255
  %36 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %35, i32 0, i32 16, !dbg !1256
  store i32 0, i32* %36, align 4, !dbg !1257
  %37 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !1258
  %38 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %37, i32 0, i32 6, !dbg !1259
  %39 = load i64, i64* %38, align 8, !dbg !1259
  %40 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !1260
  %41 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %40, i32 0, i32 7, !dbg !1261
  store i64 %39, i64* %41, align 8, !dbg !1262
  %42 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !1263
  %43 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %42, i32 0, i32 8, !dbg !1264
  %44 = load i8*, i8** %43, align 8, !dbg !1264
  %45 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !1265
  %46 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %45, i32 0, i32 9, !dbg !1266
  store i8* %44, i8** %46, align 8, !dbg !1267
  %47 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !1268
  %48 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %47, i32 0, i32 10, !dbg !1269
  %49 = load i64, i64* %48, align 8, !dbg !1269
  %50 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !1270
  %51 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %50, i32 0, i32 11, !dbg !1271
  store i64 %49, i64* %51, align 8, !dbg !1272
  %52 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !1273
  %53 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %52, i32 0, i32 12, !dbg !1274
  %54 = load i8*, i8** %53, align 8, !dbg !1274
  %55 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !1275
  %56 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %55, i32 0, i32 13, !dbg !1276
  store i8* %54, i8** %56, align 8, !dbg !1277
  %57 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !1278
  %58 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %57, i32 0, i32 12, !dbg !1279
  %59 = load i8*, i8** %58, align 8, !dbg !1279
  %60 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !1280
  %61 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %60, i32 0, i32 14, !dbg !1281
  store i8* %59, i8** %61, align 8, !dbg !1282
  %62 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !1283
  %63 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %62, i32 0, i32 4, !dbg !1284
  store i32 0, i32* %63, align 8, !dbg !1285
  %64 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !1286
  %65 = call i32 @zedc_deflateReset(%struct.zedc_stream_s* %64), !dbg !1287
  store i32 %65, i32* %4, align 4, !dbg !1288
  %66 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !1289
  %67 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !1290
  call void @__fixup_crc_or_adler(%struct.z_stream_s* %66, %struct.zedc_stream_s* %67), !dbg !1291
  %68 = load i32, i32* %4, align 4, !dbg !1292
  store i32 %68, i32* %2, align 4, !dbg !1293
  br label %69, !dbg !1293

; <label>:69:                                     ; preds = %28, %27, %19
  %70 = load i32, i32* %2, align 4, !dbg !1294
  ret i32 %70, !dbg !1294
}

declare i32 @zedc_deflateReset(%struct.zedc_stream_s*) #3

; Function Attrs: nounwind uwtable
define i32 @h_deflateSetDictionary(%struct.z_stream_s*, i8*, i32) #0 !dbg !1295 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.z_stream_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.zedc_stream_s*, align 8
  %10 = alloca %struct.hw_state*, align 8
  store %struct.z_stream_s* %0, %struct.z_stream_s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.z_stream_s** %5, metadata !1298, metadata !532), !dbg !1299
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1300, metadata !532), !dbg !1301
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1302, metadata !532), !dbg !1303
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1304, metadata !532), !dbg !1305
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %9, metadata !1306, metadata !532), !dbg !1307
  call void @llvm.dbg.declare(metadata %struct.hw_state** %10, metadata !1308, metadata !532), !dbg !1309
  br label %11, !dbg !1310, !llvm.loop !1311

; <label>:11:                                     ; preds = %3
  %12 = load i32, i32* @zlib_trace, align 4, !dbg !1312
  %13 = and i32 %12, 2, !dbg !1316
  %14 = icmp ne i32 %13, 0, !dbg !1316
  br i1 %14, label %15, label %21, !dbg !1317

; <label>:15:                                     ; preds = %11
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !1318
  %17 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8, !dbg !1320
  %18 = load i8*, i8** %6, align 8, !dbg !1321
  %19 = load i32, i32* %7, align 4, !dbg !1322
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i32 0), %struct.z_stream_s* %17, i8* %18, i32 %19), !dbg !1323
  br label %21, !dbg !1323

; <label>:21:                                     ; preds = %15, %11
  br label %22, !dbg !1324

; <label>:22:                                     ; preds = %21
  %23 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8, !dbg !1326
  %24 = icmp eq %struct.z_stream_s* %23, null, !dbg !1328
  br i1 %24, label %25, label %26, !dbg !1329

; <label>:25:                                     ; preds = %22
  store i32 -2, i32* %4, align 4, !dbg !1330
  br label %64, !dbg !1330

; <label>:26:                                     ; preds = %22
  %27 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8, !dbg !1331
  %28 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %27, i32 0, i32 7, !dbg !1332
  %29 = load %struct.internal_state*, %struct.internal_state** %28, align 8, !dbg !1332
  %30 = bitcast %struct.internal_state* %29 to %struct.hw_state*, !dbg !1333
  store %struct.hw_state* %30, %struct.hw_state** %10, align 8, !dbg !1334
  %31 = load %struct.hw_state*, %struct.hw_state** %10, align 8, !dbg !1335
  %32 = icmp eq %struct.hw_state* %31, null, !dbg !1337
  br i1 %32, label %33, label %34, !dbg !1338

; <label>:33:                                     ; preds = %26
  store i32 -2, i32* %4, align 4, !dbg !1339
  br label %64, !dbg !1339

; <label>:34:                                     ; preds = %26
  %35 = load %struct.hw_state*, %struct.hw_state** %10, align 8, !dbg !1340
  %36 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %35, i32 0, i32 3, !dbg !1341
  store %struct.zedc_stream_s* %36, %struct.zedc_stream_s** %9, align 8, !dbg !1342
  %37 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %9, align 8, !dbg !1343
  %38 = load i8*, i8** %6, align 8, !dbg !1344
  %39 = load i32, i32* %7, align 4, !dbg !1345
  %40 = call i32 @zedc_deflateSetDictionary(%struct.zedc_stream_s* %37, i8* %38, i32 %39), !dbg !1346
  store i32 %40, i32* %8, align 4, !dbg !1347
  br label %41, !dbg !1348, !llvm.loop !1349

; <label>:41:                                     ; preds = %34
  %42 = load i32, i32* @zlib_trace, align 4, !dbg !1350
  %43 = and i32 %42, 2, !dbg !1354
  %44 = icmp ne i32 %43, 0, !dbg !1354
  br i1 %44, label %45, label %55, !dbg !1355

; <label>:45:                                     ; preds = %41
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !1356
  %47 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8, !dbg !1358
  %48 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %9, align 8, !dbg !1359
  %49 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %48, i32 0, i32 14, !dbg !1360
  %50 = load i32, i32* %49, align 4, !dbg !1360
  %51 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %9, align 8, !dbg !1361
  %52 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %51, i32 0, i32 40, !dbg !1362
  %53 = load i32, i32* %52, align 4, !dbg !1362
  %54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i32 0, i32 0), %struct.z_stream_s* %47, i32 %50, i32 %53), !dbg !1363
  br label %55, !dbg !1363

; <label>:55:                                     ; preds = %45, %41
  br label %56, !dbg !1364

; <label>:56:                                     ; preds = %55
  %57 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %9, align 8, !dbg !1366
  %58 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %57, i32 0, i32 40, !dbg !1367
  %59 = load i32, i32* %58, align 4, !dbg !1367
  %60 = zext i32 %59 to i64, !dbg !1366
  %61 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8, !dbg !1368
  %62 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %61, i32 0, i32 12, !dbg !1369
  store i64 %60, i64* %62, align 8, !dbg !1370
  %63 = load i32, i32* %8, align 4, !dbg !1371
  store i32 %63, i32* %4, align 4, !dbg !1372
  br label %64, !dbg !1372

; <label>:64:                                     ; preds = %56, %33, %25
  %65 = load i32, i32* %4, align 4, !dbg !1373
  ret i32 %65, !dbg !1373
}

declare i32 @zedc_deflateSetDictionary(%struct.zedc_stream_s*, i8*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @h_deflateSetHeader(%struct.z_stream_s*, %struct.gz_header_s*) #0 !dbg !1374 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.z_stream_s*, align 8
  %5 = alloca %struct.gz_header_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.zedc_stream_s*, align 8
  %8 = alloca %struct.hw_state*, align 8
  store %struct.z_stream_s* %0, %struct.z_stream_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.z_stream_s** %4, metadata !1395, metadata !532), !dbg !1396
  store %struct.gz_header_s* %1, %struct.gz_header_s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gz_header_s** %5, metadata !1397, metadata !532), !dbg !1398
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1399, metadata !532), !dbg !1400
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %7, metadata !1401, metadata !532), !dbg !1402
  call void @llvm.dbg.declare(metadata %struct.hw_state** %8, metadata !1403, metadata !532), !dbg !1404
  br label %9, !dbg !1405, !llvm.loop !1406

; <label>:9:                                      ; preds = %2
  %10 = load i32, i32* @zlib_trace, align 4, !dbg !1407
  %11 = and i32 %10, 2, !dbg !1411
  %12 = icmp ne i32 %11, 0, !dbg !1411
  br i1 %12, label %13, label %18, !dbg !1412

; <label>:13:                                     ; preds = %9
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !1413
  %15 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1415
  %16 = load %struct.gz_header_s*, %struct.gz_header_s** %5, align 8, !dbg !1416
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i32 0, i32 0), %struct.z_stream_s* %15, %struct.gz_header_s* %16), !dbg !1417
  br label %18, !dbg !1417

; <label>:18:                                     ; preds = %13, %9
  br label %19, !dbg !1418

; <label>:19:                                     ; preds = %18
  %20 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1420
  %21 = icmp eq %struct.z_stream_s* %20, null, !dbg !1422
  br i1 %21, label %22, label %23, !dbg !1423

; <label>:22:                                     ; preds = %19
  store i32 -2, i32* %3, align 4, !dbg !1424
  br label %39, !dbg !1424

; <label>:23:                                     ; preds = %19
  %24 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1425
  %25 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %24, i32 0, i32 7, !dbg !1426
  %26 = load %struct.internal_state*, %struct.internal_state** %25, align 8, !dbg !1426
  %27 = bitcast %struct.internal_state* %26 to %struct.hw_state*, !dbg !1427
  store %struct.hw_state* %27, %struct.hw_state** %8, align 8, !dbg !1428
  %28 = load %struct.hw_state*, %struct.hw_state** %8, align 8, !dbg !1429
  %29 = icmp eq %struct.hw_state* %28, null, !dbg !1431
  br i1 %29, label %30, label %31, !dbg !1432

; <label>:30:                                     ; preds = %23
  store i32 -2, i32* %3, align 4, !dbg !1433
  br label %39, !dbg !1433

; <label>:31:                                     ; preds = %23
  %32 = load %struct.hw_state*, %struct.hw_state** %8, align 8, !dbg !1434
  %33 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %32, i32 0, i32 3, !dbg !1435
  store %struct.zedc_stream_s* %33, %struct.zedc_stream_s** %7, align 8, !dbg !1436
  %34 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %7, align 8, !dbg !1437
  %35 = load %struct.gz_header_s*, %struct.gz_header_s** %5, align 8, !dbg !1438
  %36 = bitcast %struct.gz_header_s* %35 to %struct.gzedc_header_s*, !dbg !1439
  %37 = call i32 @zedc_deflateSetHeader(%struct.zedc_stream_s* %34, %struct.gzedc_header_s* %36), !dbg !1440
  store i32 %37, i32* %6, align 4, !dbg !1441
  %38 = load i32, i32* %6, align 4, !dbg !1442
  store i32 %38, i32* %3, align 4, !dbg !1443
  br label %39, !dbg !1443

; <label>:39:                                     ; preds = %31, %30, %22
  %40 = load i32, i32* %3, align 4, !dbg !1444
  ret i32 %40, !dbg !1444
}

declare i32 @zedc_deflateSetHeader(%struct.zedc_stream_s*, %struct.gzedc_header_s*) #3

; Function Attrs: nounwind uwtable
define i32 @h_deflate(%struct.z_stream_s*, i32) #0 !dbg !1445 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.z_stream_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hw_state*, align 8
  %9 = alloca %struct.zedc_stream_s*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.z_stream_s* %0, %struct.z_stream_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.z_stream_s** %4, metadata !1448, metadata !532), !dbg !1449
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1450, metadata !532), !dbg !1451
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1452, metadata !532), !dbg !1453
  store i32 0, i32* %6, align 4, !dbg !1453
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1454, metadata !532), !dbg !1455
  store i32 0, i32* %7, align 4, !dbg !1455
  call void @llvm.dbg.declare(metadata %struct.hw_state** %8, metadata !1456, metadata !532), !dbg !1457
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %9, metadata !1458, metadata !532), !dbg !1459
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1460, metadata !532), !dbg !1461
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1462, metadata !532), !dbg !1463
  %12 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1464
  %13 = icmp eq %struct.z_stream_s* %12, null, !dbg !1466
  br i1 %13, label %14, label %15, !dbg !1467

; <label>:14:                                     ; preds = %2
  store i32 -2, i32* %3, align 4, !dbg !1468
  br label %299, !dbg !1468

; <label>:15:                                     ; preds = %2
  %16 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1469
  %17 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %16, i32 0, i32 7, !dbg !1470
  %18 = load %struct.internal_state*, %struct.internal_state** %17, align 8, !dbg !1470
  %19 = bitcast %struct.internal_state* %18 to %struct.hw_state*, !dbg !1471
  store %struct.hw_state* %19, %struct.hw_state** %8, align 8, !dbg !1472
  %20 = load %struct.hw_state*, %struct.hw_state** %8, align 8, !dbg !1473
  %21 = icmp eq %struct.hw_state* %20, null, !dbg !1475
  br i1 %21, label %22, label %23, !dbg !1476

; <label>:22:                                     ; preds = %15
  store i32 -2, i32* %3, align 4, !dbg !1477
  br label %299, !dbg !1477

; <label>:23:                                     ; preds = %15
  %24 = load %struct.hw_state*, %struct.hw_state** %8, align 8, !dbg !1478
  %25 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %24, i32 0, i32 3, !dbg !1479
  store %struct.zedc_stream_s* %25, %struct.zedc_stream_s** %9, align 8, !dbg !1480
  %26 = load %struct.hw_state*, %struct.hw_state** %8, align 8, !dbg !1481
  %27 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %26, i32 0, i32 6, !dbg !1483
  %28 = load i64, i64* %27, align 8, !dbg !1483
  %29 = icmp eq i64 %28, 0, !dbg !1484
  br i1 %29, label %30, label %44, !dbg !1485

; <label>:30:                                     ; preds = %23
  %31 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %9, align 8, !dbg !1486
  %32 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1488
  call void @stream_zlib_to_zedc(%struct.zedc_stream_s* %31, %struct.z_stream_s* %32), !dbg !1489
  %33 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1490
  %34 = load %struct.hw_state*, %struct.hw_state** %8, align 8, !dbg !1491
  %35 = load i32, i32* %5, align 4, !dbg !1492
  %36 = call i32 @__deflate(%struct.z_stream_s* %33, %struct.hw_state* %34, i32 %35), !dbg !1493
  %37 = load %struct.hw_state*, %struct.hw_state** %8, align 8, !dbg !1494
  %38 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %37, i32 0, i32 4, !dbg !1495
  store i32 %36, i32* %38, align 8, !dbg !1496
  %39 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1497
  %40 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %9, align 8, !dbg !1498
  call void @stream_zedc_to_zlib(%struct.z_stream_s* %39, %struct.zedc_stream_s* %40), !dbg !1499
  %41 = load %struct.hw_state*, %struct.hw_state** %8, align 8, !dbg !1500
  %42 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %41, i32 0, i32 4, !dbg !1501
  %43 = load i32, i32* %42, align 8, !dbg !1501
  store i32 %43, i32* %3, align 4, !dbg !1502
  br label %299, !dbg !1502

; <label>:44:                                     ; preds = %23
  %45 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1503
  %46 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %9, align 8, !dbg !1504
  call void @__prep_crc_or_adler(%struct.z_stream_s* %45, %struct.zedc_stream_s* %46), !dbg !1505
  br label %47, !dbg !1506, !llvm.loop !1507

; <label>:47:                                     ; preds = %44
  %48 = load i32, i32* @zlib_trace, align 4, !dbg !1508
  %49 = and i32 %48, 2, !dbg !1512
  %50 = icmp ne i32 %49, 0, !dbg !1512
  br i1 %50, label %51, label %77, !dbg !1513

; <label>:51:                                     ; preds = %47
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !1514
  %53 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1516
  %54 = load i32, i32* %5, align 4, !dbg !1517
  %55 = call i8* @flush_to_str(i32 %54), !dbg !1518
  %56 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1519
  %57 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %56, i32 0, i32 1, !dbg !1520
  %58 = load i32, i32* %57, align 8, !dbg !1520
  %59 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1521
  %60 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %59, i32 0, i32 4, !dbg !1522
  %61 = load i32, i32* %60, align 8, !dbg !1522
  %62 = load %struct.hw_state*, %struct.hw_state** %8, align 8, !dbg !1523
  %63 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %62, i32 0, i32 7, !dbg !1524
  %64 = load i64, i64* %63, align 8, !dbg !1524
  %65 = trunc i64 %64 to i32, !dbg !1525
  %66 = load %struct.hw_state*, %struct.hw_state** %8, align 8, !dbg !1526
  %67 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %66, i32 0, i32 11, !dbg !1527
  %68 = load i64, i64* %67, align 8, !dbg !1527
  %69 = trunc i64 %68 to i32, !dbg !1528
  %70 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %9, align 8, !dbg !1529
  %71 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %70, i32 0, i32 14, !dbg !1530
  %72 = load i32, i32* %71, align 4, !dbg !1530
  %73 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %9, align 8, !dbg !1531
  %74 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %73, i32 0, i32 13, !dbg !1532
  %75 = load i32, i32* %74, align 8, !dbg !1532
  %76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.10, i32 0, i32 0), %struct.z_stream_s* %53, i8* %55, i32 %58, i32 %61, i32 %65, i32 %69, i32 %72, i32 %75), !dbg !1533
  br label %77, !dbg !1535

; <label>:77:                                     ; preds = %51, %47
  br label %78, !dbg !1536

; <label>:78:                                     ; preds = %77
  br label %79, !dbg !1538, !llvm.loop !1539

; <label>:79:                                     ; preds = %292, %78
  br label %80, !dbg !1540, !llvm.loop !1542

; <label>:80:                                     ; preds = %79
  %81 = load i32, i32* @zlib_trace, align 4, !dbg !1543
  %82 = and i32 %81, 2, !dbg !1547
  %83 = icmp ne i32 %82, 0, !dbg !1547
  br i1 %83, label %84, label %91, !dbg !1548

; <label>:84:                                     ; preds = %80
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !1549
  %86 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1551
  %87 = load i32, i32* %7, align 4, !dbg !1552
  %88 = load i32, i32* %5, align 4, !dbg !1553
  %89 = call i8* @flush_to_str(i32 %88), !dbg !1554
  %90 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i32 0, i32 0), %struct.z_stream_s* %86, i32 %87, i8* %89), !dbg !1555
  br label %91, !dbg !1557

; <label>:91:                                     ; preds = %84, %80
  br label %92, !dbg !1558

; <label>:92:                                     ; preds = %91
  %93 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1560
  %94 = call i32 @h_read_ibuf(%struct.z_stream_s* %93), !dbg !1561
  %95 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1562
  %96 = call i32 @h_flush_obuf(%struct.z_stream_s* %95), !dbg !1563
  %97 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1564
  %98 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %97, i32 0, i32 4, !dbg !1566
  %99 = load i32, i32* %98, align 8, !dbg !1566
  %100 = icmp eq i32 %99, 0, !dbg !1567
  br i1 %100, label %101, label %102, !dbg !1568

; <label>:101:                                    ; preds = %92
  store i32 0, i32* %3, align 4, !dbg !1569
  br label %299, !dbg !1569

; <label>:102:                                    ; preds = %92
  %103 = load i32, i32* %5, align 4, !dbg !1570
  %104 = icmp ne i32 %103, 0, !dbg !1572
  br i1 %104, label %110, label %105, !dbg !1573

; <label>:105:                                    ; preds = %102
  %106 = load %struct.hw_state*, %struct.hw_state** %8, align 8, !dbg !1574
  %107 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %106, i32 0, i32 7, !dbg !1576
  %108 = load i64, i64* %107, align 8, !dbg !1576
  %109 = icmp eq i64 %108, 0, !dbg !1577
  br i1 %109, label %110, label %222, !dbg !1578

; <label>:110:                                    ; preds = %105, %102
  %111 = load %struct.hw_state*, %struct.hw_state** %8, align 8, !dbg !1579
  %112 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %111, i32 0, i32 9, !dbg !1581
  %113 = load i8*, i8** %112, align 8, !dbg !1581
  %114 = load %struct.hw_state*, %struct.hw_state** %8, align 8, !dbg !1582
  %115 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %114, i32 0, i32 8, !dbg !1583
  %116 = load i8*, i8** %115, align 8, !dbg !1583
  %117 = ptrtoint i8* %113 to i64, !dbg !1584
  %118 = ptrtoint i8* %116 to i64, !dbg !1584
  %119 = sub i64 %117, %118, !dbg !1584
  %120 = trunc i64 %119 to i32, !dbg !1579
  store i32 %120, i32* %11, align 4, !dbg !1585
  br label %121, !dbg !1586, !llvm.loop !1587

; <label>:121:                                    ; preds = %110
  %122 = load i32, i32* @zlib_trace, align 4, !dbg !1588
  %123 = and i32 %122, 2, !dbg !1592
  %124 = icmp ne i32 %123, 0, !dbg !1592
  br i1 %124, label %125, label %130, !dbg !1593

; <label>:125:                                    ; preds = %121
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !1594
  %127 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1596
  %128 = load i32, i32* %11, align 4, !dbg !1597
  %129 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %126, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i32 0, i32 0), %struct.z_stream_s* %127, i32 %128), !dbg !1598
  br label %130, !dbg !1598

; <label>:130:                                    ; preds = %125, %121
  br label %131, !dbg !1599

; <label>:131:                                    ; preds = %130
  %132 = load %struct.hw_state*, %struct.hw_state** %8, align 8, !dbg !1601
  %133 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %132, i32 0, i32 12, !dbg !1602
  %134 = load i8*, i8** %133, align 8, !dbg !1602
  %135 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %9, align 8, !dbg !1603
  %136 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %135, i32 0, i32 10, !dbg !1604
  store i8* %134, i8** %136, align 8, !dbg !1605
  %137 = load %struct.hw_state*, %struct.hw_state** %8, align 8, !dbg !1606
  %138 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %137, i32 0, i32 14, !dbg !1607
  store i8* %134, i8** %138, align 8, !dbg !1608
  %139 = load %struct.hw_state*, %struct.hw_state** %8, align 8, !dbg !1609
  %140 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %139, i32 0, i32 10, !dbg !1610
  %141 = load i64, i64* %140, align 8, !dbg !1610
  %142 = load %struct.hw_state*, %struct.hw_state** %8, align 8, !dbg !1611
  %143 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %142, i32 0, i32 11, !dbg !1612
  store i64 %141, i64* %143, align 8, !dbg !1613
  %144 = load %struct.hw_state*, %struct.hw_state** %8, align 8, !dbg !1614
  %145 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %144, i32 0, i32 8, !dbg !1615
  %146 = load i8*, i8** %145, align 8, !dbg !1615
  %147 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %9, align 8, !dbg !1616
  %148 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %147, i32 0, i32 7, !dbg !1617
  store i8* %146, i8** %148, align 8, !dbg !1618
  %149 = load i32, i32* %11, align 4, !dbg !1619
  %150 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %9, align 8, !dbg !1620
  %151 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %150, i32 0, i32 8, !dbg !1621
  store i32 %149, i32* %151, align 8, !dbg !1622
  %152 = load %struct.hw_state*, %struct.hw_state** %8, align 8, !dbg !1623
  %153 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %152, i32 0, i32 10, !dbg !1624
  %154 = load i64, i64* %153, align 8, !dbg !1624
  %155 = trunc i64 %154 to i32, !dbg !1623
  %156 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %9, align 8, !dbg !1625
  %157 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %156, i32 0, i32 11, !dbg !1626
  store i32 %155, i32* %157, align 8, !dbg !1627
  %158 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1628
  %159 = load %struct.hw_state*, %struct.hw_state** %8, align 8, !dbg !1629
  %160 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1630
  %161 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %160, i32 0, i32 1, !dbg !1631
  %162 = load i32, i32* %161, align 8, !dbg !1631
  %163 = icmp ne i32 %162, 0, !dbg !1632
  br i1 %163, label %164, label %165, !dbg !1633

; <label>:164:                                    ; preds = %131
  br label %167, !dbg !1634

; <label>:165:                                    ; preds = %131
  %166 = load i32, i32* %5, align 4, !dbg !1636
  br label %167, !dbg !1638

; <label>:167:                                    ; preds = %165, %164
  %168 = phi i32 [ 0, %164 ], [ %166, %165 ], !dbg !1639
  %169 = call i32 @__deflate(%struct.z_stream_s* %158, %struct.hw_state* %159, i32 %168), !dbg !1641
  %170 = load %struct.hw_state*, %struct.hw_state** %8, align 8, !dbg !1642
  %171 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %170, i32 0, i32 4, !dbg !1643
  store i32 %169, i32* %171, align 8, !dbg !1644
  %172 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %9, align 8, !dbg !1645
  %173 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %172, i32 0, i32 10, !dbg !1646
  %174 = load i8*, i8** %173, align 8, !dbg !1646
  %175 = load %struct.hw_state*, %struct.hw_state** %8, align 8, !dbg !1647
  %176 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %175, i32 0, i32 13, !dbg !1648
  store i8* %174, i8** %176, align 8, !dbg !1649
  %177 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %9, align 8, !dbg !1650
  %178 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %177, i32 0, i32 11, !dbg !1651
  %179 = load i32, i32* %178, align 8, !dbg !1651
  %180 = zext i32 %179 to i64, !dbg !1650
  %181 = load %struct.hw_state*, %struct.hw_state** %8, align 8, !dbg !1652
  %182 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %181, i32 0, i32 11, !dbg !1653
  store i64 %180, i64* %182, align 8, !dbg !1654
  %183 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %9, align 8, !dbg !1655
  %184 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %183, i32 0, i32 8, !dbg !1657
  %185 = load i32, i32* %184, align 8, !dbg !1657
  %186 = icmp eq i32 %185, 0, !dbg !1658
  br i1 %186, label %187, label %198, !dbg !1659

; <label>:187:                                    ; preds = %167
  %188 = load %struct.hw_state*, %struct.hw_state** %8, align 8, !dbg !1660
  %189 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %188, i32 0, i32 8, !dbg !1662
  %190 = load i8*, i8** %189, align 8, !dbg !1662
  %191 = load %struct.hw_state*, %struct.hw_state** %8, align 8, !dbg !1663
  %192 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %191, i32 0, i32 9, !dbg !1664
  store i8* %190, i8** %192, align 8, !dbg !1665
  %193 = load %struct.hw_state*, %struct.hw_state** %8, align 8, !dbg !1666
  %194 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %193, i32 0, i32 6, !dbg !1667
  %195 = load i64, i64* %194, align 8, !dbg !1667
  %196 = load %struct.hw_state*, %struct.hw_state** %8, align 8, !dbg !1668
  %197 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %196, i32 0, i32 7, !dbg !1669
  store i64 %195, i64* %197, align 8, !dbg !1670
  br label %206, !dbg !1671

; <label>:198:                                    ; preds = %167
  br label %199, !dbg !1672, !llvm.loop !1674

; <label>:199:                                    ; preds = %198
  %200 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !1675
  %201 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %9, align 8, !dbg !1678
  %202 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %201, i32 0, i32 8, !dbg !1679
  %203 = load i32, i32* %202, align 8, !dbg !1679
  %204 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %200, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 687, i32 %203), !dbg !1679
  br label %205, !dbg !1680

; <label>:205:                                    ; preds = %199
  store i32 -2, i32* %3, align 4, !dbg !1681
  br label %299, !dbg !1681

; <label>:206:                                    ; preds = %187
  %207 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %9, align 8, !dbg !1682
  %208 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %207, i32 0, i32 8, !dbg !1684
  %209 = load i32, i32* %208, align 8, !dbg !1684
  %210 = icmp ne i32 %209, 0, !dbg !1685
  br i1 %210, label %211, label %221, !dbg !1686

; <label>:211:                                    ; preds = %206
  %212 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %9, align 8, !dbg !1687
  %213 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %212, i32 0, i32 11, !dbg !1689
  %214 = load i32, i32* %213, align 8, !dbg !1689
  %215 = icmp eq i32 %214, 0, !dbg !1690
  br i1 %215, label %216, label %221, !dbg !1691

; <label>:216:                                    ; preds = %211
  br label %217, !dbg !1692, !llvm.loop !1694

; <label>:217:                                    ; preds = %216
  %218 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !1695
  %219 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %218, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 693), !dbg !1698
  br label %220, !dbg !1699

; <label>:220:                                    ; preds = %217
  store i32 -2, i32* %3, align 4, !dbg !1700
  br label %299, !dbg !1700

; <label>:221:                                    ; preds = %211, %206
  br label %222, !dbg !1701

; <label>:222:                                    ; preds = %221, %105
  %223 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1702
  %224 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %223, i32 0, i32 1, !dbg !1704
  %225 = load i32, i32* %224, align 8, !dbg !1704
  %226 = icmp ne i32 %225, 0, !dbg !1705
  br i1 %226, label %227, label %241, !dbg !1706

; <label>:227:                                    ; preds = %222
  br label %228, !dbg !1707, !llvm.loop !1708

; <label>:228:                                    ; preds = %227
  %229 = load i32, i32* @zlib_trace, align 4, !dbg !1709
  %230 = and i32 %229, 2, !dbg !1713
  %231 = icmp ne i32 %230, 0, !dbg !1713
  br i1 %231, label %232, label %239, !dbg !1714

; <label>:232:                                    ; preds = %228
  %233 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !1715
  %234 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1717
  %235 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1718
  %236 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %235, i32 0, i32 1, !dbg !1719
  %237 = load i32, i32* %236, align 8, !dbg !1719
  %238 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %233, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i32 0, i32 0), %struct.z_stream_s* %234, i32 %237), !dbg !1720
  br label %239, !dbg !1720

; <label>:239:                                    ; preds = %232, %228
  br label %240, !dbg !1721

; <label>:240:                                    ; preds = %239
  br label %241, !dbg !1723

; <label>:241:                                    ; preds = %240, %222
  %242 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1725
  %243 = call i32 @h_flush_obuf(%struct.z_stream_s* %242), !dbg !1726
  %244 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1727
  %245 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %244, i32 0, i32 4, !dbg !1729
  %246 = load i32, i32* %245, align 8, !dbg !1729
  %247 = icmp eq i32 %246, 0, !dbg !1730
  br i1 %247, label %248, label %249, !dbg !1731

; <label>:248:                                    ; preds = %241
  store i32 0, i32* %3, align 4, !dbg !1732
  br label %299, !dbg !1732

; <label>:249:                                    ; preds = %241
  %250 = load %struct.hw_state*, %struct.hw_state** %8, align 8, !dbg !1733
  %251 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %250, i32 0, i32 9, !dbg !1734
  %252 = load i8*, i8** %251, align 8, !dbg !1734
  %253 = load %struct.hw_state*, %struct.hw_state** %8, align 8, !dbg !1735
  %254 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %253, i32 0, i32 8, !dbg !1736
  %255 = load i8*, i8** %254, align 8, !dbg !1736
  %256 = ptrtoint i8* %252 to i64, !dbg !1737
  %257 = ptrtoint i8* %255 to i64, !dbg !1737
  %258 = sub i64 %256, %257, !dbg !1737
  %259 = trunc i64 %258 to i32, !dbg !1733
  store i32 %259, i32* %11, align 4, !dbg !1738
  %260 = load %struct.hw_state*, %struct.hw_state** %8, align 8, !dbg !1739
  %261 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %260, i32 0, i32 13, !dbg !1740
  %262 = load i8*, i8** %261, align 8, !dbg !1740
  %263 = load %struct.hw_state*, %struct.hw_state** %8, align 8, !dbg !1741
  %264 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %263, i32 0, i32 14, !dbg !1742
  %265 = load i8*, i8** %264, align 8, !dbg !1742
  %266 = ptrtoint i8* %262 to i64, !dbg !1743
  %267 = ptrtoint i8* %265 to i64, !dbg !1743
  %268 = sub i64 %266, %267, !dbg !1743
  %269 = trunc i64 %268 to i32, !dbg !1739
  store i32 %269, i32* %10, align 4, !dbg !1744
  %270 = load i32, i32* %5, align 4, !dbg !1745
  %271 = icmp eq i32 %270, 4, !dbg !1747
  br i1 %271, label %272, label %289, !dbg !1748

; <label>:272:                                    ; preds = %249
  %273 = load %struct.hw_state*, %struct.hw_state** %8, align 8, !dbg !1749
  %274 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %273, i32 0, i32 4, !dbg !1750
  %275 = load i32, i32* %274, align 8, !dbg !1750
  %276 = icmp eq i32 %275, 1, !dbg !1751
  br i1 %276, label %277, label %289, !dbg !1752

; <label>:277:                                    ; preds = %272
  %278 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1753
  %279 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %278, i32 0, i32 1, !dbg !1754
  %280 = load i32, i32* %279, align 8, !dbg !1754
  %281 = icmp eq i32 %280, 0, !dbg !1755
  br i1 %281, label %282, label %289, !dbg !1756

; <label>:282:                                    ; preds = %277
  %283 = load i32, i32* %11, align 4, !dbg !1757
  %284 = icmp eq i32 %283, 0, !dbg !1758
  br i1 %284, label %285, label %289, !dbg !1759

; <label>:285:                                    ; preds = %282
  %286 = load i32, i32* %10, align 4, !dbg !1760
  %287 = icmp eq i32 %286, 0, !dbg !1761
  br i1 %287, label %288, label %289, !dbg !1762

; <label>:288:                                    ; preds = %285
  store i32 1, i32* %3, align 4, !dbg !1764
  br label %299, !dbg !1764

; <label>:289:                                    ; preds = %285, %282, %277, %272, %249
  %290 = load i32, i32* %7, align 4, !dbg !1765
  %291 = add nsw i32 %290, 1, !dbg !1765
  store i32 %291, i32* %7, align 4, !dbg !1765
  br label %292, !dbg !1766

; <label>:292:                                    ; preds = %289
  %293 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1767
  %294 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %293, i32 0, i32 1, !dbg !1769
  %295 = load i32, i32* %294, align 8, !dbg !1769
  %296 = icmp ne i32 %295, 0, !dbg !1770
  br i1 %296, label %79, label %297, !dbg !1771, !llvm.loop !1539

; <label>:297:                                    ; preds = %292
  %298 = load i32, i32* %6, align 4, !dbg !1772
  store i32 %298, i32* %3, align 4, !dbg !1773
  br label %299, !dbg !1773

; <label>:299:                                    ; preds = %297, %288, %248, %220, %205, %101, %30, %22, %14
  %300 = load i32, i32* %3, align 4, !dbg !1774
  ret i32 %300, !dbg !1774
}

; Function Attrs: nounwind uwtable
define internal void @stream_zlib_to_zedc(%struct.zedc_stream_s*, %struct.z_stream_s*) #0 !dbg !1775 {
  %3 = alloca %struct.zedc_stream_s*, align 8
  %4 = alloca %struct.z_stream_s*, align 8
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %3, metadata !1778, metadata !532), !dbg !1779
  store %struct.z_stream_s* %1, %struct.z_stream_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.z_stream_s** %4, metadata !1780, metadata !532), !dbg !1781
  %5 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1782
  %6 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 0, !dbg !1783
  %7 = load i8*, i8** %6, align 8, !dbg !1783
  %8 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1784
  %9 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %8, i32 0, i32 7, !dbg !1785
  store i8* %7, i8** %9, align 8, !dbg !1786
  %10 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1787
  %11 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 1, !dbg !1788
  %12 = load i32, i32* %11, align 8, !dbg !1788
  %13 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1789
  %14 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %13, i32 0, i32 8, !dbg !1790
  store i32 %12, i32* %14, align 8, !dbg !1791
  %15 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1792
  %16 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %15, i32 0, i32 2, !dbg !1793
  %17 = load i64, i64* %16, align 8, !dbg !1793
  %18 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1794
  %19 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %18, i32 0, i32 9, !dbg !1795
  store i64 %17, i64* %19, align 8, !dbg !1796
  %20 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1797
  %21 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %20, i32 0, i32 3, !dbg !1798
  %22 = load i8*, i8** %21, align 8, !dbg !1798
  %23 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1799
  %24 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %23, i32 0, i32 10, !dbg !1800
  store i8* %22, i8** %24, align 8, !dbg !1801
  %25 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1802
  %26 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %25, i32 0, i32 4, !dbg !1803
  %27 = load i32, i32* %26, align 8, !dbg !1803
  %28 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1804
  %29 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %28, i32 0, i32 11, !dbg !1805
  store i32 %27, i32* %29, align 8, !dbg !1806
  %30 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1807
  %31 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %30, i32 0, i32 5, !dbg !1808
  %32 = load i64, i64* %31, align 8, !dbg !1808
  %33 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %3, align 8, !dbg !1809
  %34 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %33, i32 0, i32 12, !dbg !1810
  store i64 %32, i64* %34, align 8, !dbg !1811
  ret void, !dbg !1812
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__deflate(%struct.z_stream_s*, %struct.hw_state*, i32) #5 !dbg !1813 {
  %4 = alloca %struct.z_stream_s*, align 8
  %5 = alloca %struct.hw_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.zedc_stream_s*, align 8
  store %struct.z_stream_s* %0, %struct.z_stream_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.z_stream_s** %4, metadata !1816, metadata !532), !dbg !1817
  store %struct.hw_state* %1, %struct.hw_state** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.hw_state** %5, metadata !1818, metadata !532), !dbg !1819
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1820, metadata !532), !dbg !1821
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1822, metadata !532), !dbg !1823
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %8, metadata !1824, metadata !532), !dbg !1825
  %9 = load %struct.hw_state*, %struct.hw_state** %5, align 8, !dbg !1826
  %10 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %9, i32 0, i32 3, !dbg !1827
  store %struct.zedc_stream_s* %10, %struct.zedc_stream_s** %8, align 8, !dbg !1825
  br label %11, !dbg !1828, !llvm.loop !1829

; <label>:11:                                     ; preds = %3
  %12 = load i32, i32* @zlib_trace, align 4, !dbg !1830
  %13 = and i32 %12, 2, !dbg !1834
  %14 = icmp ne i32 %13, 0, !dbg !1834
  br i1 %14, label %15, label %36, !dbg !1835

; <label>:15:                                     ; preds = %11
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !1836
  %17 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1838
  %18 = load %struct.hw_state*, %struct.hw_state** %5, align 8, !dbg !1839
  %19 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %18, i32 0, i32 16, !dbg !1840
  %20 = load i32, i32* %19, align 4, !dbg !1840
  %21 = load i32, i32* %6, align 4, !dbg !1841
  %22 = call i8* @flush_to_str(i32 %21), !dbg !1842
  %23 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !1843
  %24 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %23, i32 0, i32 7, !dbg !1844
  %25 = load i8*, i8** %24, align 8, !dbg !1844
  %26 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !1845
  %27 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %26, i32 0, i32 8, !dbg !1846
  %28 = load i32, i32* %27, align 8, !dbg !1846
  %29 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !1847
  %30 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %29, i32 0, i32 10, !dbg !1848
  %31 = load i8*, i8** %30, align 8, !dbg !1848
  %32 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !1849
  %33 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %32, i32 0, i32 11, !dbg !1850
  %34 = load i32, i32* %33, align 8, !dbg !1850
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.46, i32 0, i32 0), %struct.z_stream_s* %17, i32 %20, i8* %22, i8* %25, i32 %28, i8* %31, i32 %34), !dbg !1851
  br label %36, !dbg !1853

; <label>:36:                                     ; preds = %15, %11
  br label %37, !dbg !1854

; <label>:37:                                     ; preds = %36
  %38 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !1856
  %39 = load i32, i32* %6, align 4, !dbg !1857
  %40 = call i32 @zedc_deflate(%struct.zedc_stream_s* %38, i32 %39), !dbg !1858
  store i32 %40, i32* %7, align 4, !dbg !1859
  %41 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1860
  %42 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !1861
  call void @__fixup_crc_or_adler(%struct.z_stream_s* %41, %struct.zedc_stream_s* %42), !dbg !1862
  %43 = load %struct.hw_state*, %struct.hw_state** %5, align 8, !dbg !1863
  %44 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %43, i32 0, i32 16, !dbg !1864
  %45 = load i32, i32* %44, align 4, !dbg !1865
  %46 = add i32 %45, 1, !dbg !1865
  store i32 %46, i32* %44, align 4, !dbg !1865
  br label %47, !dbg !1866, !llvm.loop !1867

; <label>:47:                                     ; preds = %37
  %48 = load i32, i32* @zlib_trace, align 4, !dbg !1868
  %49 = and i32 %48, 2, !dbg !1872
  %50 = icmp ne i32 %49, 0, !dbg !1872
  br i1 %50, label %51, label %70, !dbg !1873

; <label>:51:                                     ; preds = %47
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !1874
  %53 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !1876
  %54 = load i32, i32* %6, align 4, !dbg !1877
  %55 = call i8* @flush_to_str(i32 %54), !dbg !1878
  %56 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !1879
  %57 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %56, i32 0, i32 7, !dbg !1880
  %58 = load i8*, i8** %57, align 8, !dbg !1880
  %59 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !1881
  %60 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %59, i32 0, i32 8, !dbg !1882
  %61 = load i32, i32* %60, align 8, !dbg !1882
  %62 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !1883
  %63 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %62, i32 0, i32 10, !dbg !1884
  %64 = load i8*, i8** %63, align 8, !dbg !1884
  %65 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !1885
  %66 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %65, i32 0, i32 11, !dbg !1886
  %67 = load i32, i32* %66, align 8, !dbg !1886
  %68 = load i32, i32* %7, align 4, !dbg !1887
  %69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.47, i32 0, i32 0), %struct.z_stream_s* %53, i8* %55, i8* %58, i32 %61, i8* %64, i32 %67, i32 %68), !dbg !1888
  br label %70, !dbg !1890

; <label>:70:                                     ; preds = %51, %47
  br label %71, !dbg !1891

; <label>:71:                                     ; preds = %70
  %72 = load i32, i32* %7, align 4, !dbg !1893
  ret i32 %72, !dbg !1894
}

; Function Attrs: nounwind uwtable
define internal void @stream_zedc_to_zlib(%struct.z_stream_s*, %struct.zedc_stream_s*) #0 !dbg !1895 {
  %3 = alloca %struct.z_stream_s*, align 8
  %4 = alloca %struct.zedc_stream_s*, align 8
  store %struct.z_stream_s* %0, %struct.z_stream_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.z_stream_s** %3, metadata !1896, metadata !532), !dbg !1897
  store %struct.zedc_stream_s* %1, %struct.zedc_stream_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %4, metadata !1898, metadata !532), !dbg !1899
  %5 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1900
  %6 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %5, i32 0, i32 7, !dbg !1901
  %7 = load i8*, i8** %6, align 8, !dbg !1901
  %8 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !1902
  %9 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %8, i32 0, i32 0, !dbg !1903
  store i8* %7, i8** %9, align 8, !dbg !1904
  %10 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1905
  %11 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %10, i32 0, i32 8, !dbg !1906
  %12 = load i32, i32* %11, align 8, !dbg !1906
  %13 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !1907
  %14 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %13, i32 0, i32 1, !dbg !1908
  store i32 %12, i32* %14, align 8, !dbg !1909
  %15 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1910
  %16 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %15, i32 0, i32 9, !dbg !1911
  %17 = load i64, i64* %16, align 8, !dbg !1911
  %18 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !1912
  %19 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %18, i32 0, i32 2, !dbg !1913
  store i64 %17, i64* %19, align 8, !dbg !1914
  %20 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1915
  %21 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %20, i32 0, i32 10, !dbg !1916
  %22 = load i8*, i8** %21, align 8, !dbg !1916
  %23 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !1917
  %24 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %23, i32 0, i32 3, !dbg !1918
  store i8* %22, i8** %24, align 8, !dbg !1919
  %25 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1920
  %26 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %25, i32 0, i32 11, !dbg !1921
  %27 = load i32, i32* %26, align 8, !dbg !1921
  %28 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !1922
  %29 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %28, i32 0, i32 4, !dbg !1923
  store i32 %27, i32* %29, align 8, !dbg !1924
  %30 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1925
  %31 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %30, i32 0, i32 12, !dbg !1926
  %32 = load i64, i64* %31, align 8, !dbg !1926
  %33 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !1927
  %34 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %33, i32 0, i32 5, !dbg !1928
  store i64 %32, i64* %34, align 8, !dbg !1929
  ret void, !dbg !1930
}

; Function Attrs: nounwind uwtable
define internal void @__prep_crc_or_adler(%struct.z_stream_s*, %struct.zedc_stream_s*) #0 !dbg !1931 {
  %3 = alloca %struct.z_stream_s*, align 8
  %4 = alloca %struct.zedc_stream_s*, align 8
  store %struct.z_stream_s* %0, %struct.z_stream_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.z_stream_s** %3, metadata !1932, metadata !532), !dbg !1933
  store %struct.zedc_stream_s* %1, %struct.zedc_stream_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %4, metadata !1934, metadata !532), !dbg !1935
  %5 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !1936
  %6 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i32 0, i32 2, !dbg !1938
  %7 = load i64, i64* %6, align 8, !dbg !1938
  %8 = icmp eq i64 %7, 0, !dbg !1939
  br i1 %8, label %9, label %21, !dbg !1940

; <label>:9:                                      ; preds = %2
  %10 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %4, align 8, !dbg !1941
  %11 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %10, i32 0, i32 20, !dbg !1944
  %12 = load i32, i32* %11, align 8, !dbg !1944
  %13 = icmp eq i32 %12, 1, !dbg !1945
  br i1 %13, label %14, label %17, !dbg !1946

; <label>:14:                                     ; preds = %9
  %15 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !1947
  %16 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %15, i32 0, i32 12, !dbg !1948
  store i64 1, i64* %16, align 8, !dbg !1949
  br label %20, !dbg !1947

; <label>:17:                                     ; preds = %9
  %18 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !1950
  %19 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %18, i32 0, i32 12, !dbg !1951
  store i64 0, i64* %19, align 8, !dbg !1952
  br label %20

; <label>:20:                                     ; preds = %17, %14
  br label %21, !dbg !1953

; <label>:21:                                     ; preds = %20, %2
  ret void, !dbg !1954
}

declare i8* @flush_to_str(i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @h_read_ibuf(%struct.z_stream_s*) #0 !dbg !1955 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.z_stream_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hw_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.z_stream_s* %0, %struct.z_stream_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.z_stream_s** %3, metadata !1956, metadata !532), !dbg !1957
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1958, metadata !532), !dbg !1959
  call void @llvm.dbg.declare(metadata %struct.hw_state** %5, metadata !1960, metadata !532), !dbg !1961
  %9 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !1962
  %10 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %9, i32 0, i32 7, !dbg !1963
  %11 = load %struct.internal_state*, %struct.internal_state** %10, align 8, !dbg !1963
  %12 = bitcast %struct.internal_state* %11 to %struct.hw_state*, !dbg !1964
  store %struct.hw_state* %12, %struct.hw_state** %5, align 8, !dbg !1961
  %13 = load %struct.hw_state*, %struct.hw_state** %5, align 8, !dbg !1965
  %14 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %13, i32 0, i32 7, !dbg !1967
  %15 = load i64, i64* %14, align 8, !dbg !1967
  %16 = icmp eq i64 %15, 0, !dbg !1968
  br i1 %16, label %22, label %17, !dbg !1969

; <label>:17:                                     ; preds = %1
  %18 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !1970
  %19 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %18, i32 0, i32 1, !dbg !1971
  %20 = load i32, i32* %19, align 8, !dbg !1971
  %21 = icmp eq i32 %20, 0, !dbg !1972
  br i1 %21, label %22, label %23, !dbg !1973

; <label>:22:                                     ; preds = %17, %1
  store i32 0, i32* %2, align 4, !dbg !1975
  br label %92, !dbg !1975

; <label>:23:                                     ; preds = %17
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1976, metadata !532), !dbg !1978
  %24 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !1979
  %25 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %24, i32 0, i32 1, !dbg !1980
  %26 = load i32, i32* %25, align 8, !dbg !1980
  store i32 %26, i32* %6, align 4, !dbg !1978
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1981, metadata !532), !dbg !1982
  %27 = load %struct.hw_state*, %struct.hw_state** %5, align 8, !dbg !1983
  %28 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %27, i32 0, i32 7, !dbg !1984
  %29 = load i64, i64* %28, align 8, !dbg !1984
  store i64 %29, i64* %7, align 8, !dbg !1982
  %30 = load i32, i32* %6, align 4, !dbg !1985
  %31 = zext i32 %30 to i64, !dbg !1985
  %32 = load i64, i64* %7, align 8, !dbg !1986
  %33 = icmp ult i64 %31, %32, !dbg !1987
  br i1 %33, label %34, label %37, !dbg !1985

; <label>:34:                                     ; preds = %23
  %35 = load i32, i32* %6, align 4, !dbg !1988
  %36 = zext i32 %35 to i64, !dbg !1988
  br label %39, !dbg !1990

; <label>:37:                                     ; preds = %23
  %38 = load i64, i64* %7, align 8, !dbg !1991
  br label %39, !dbg !1993

; <label>:39:                                     ; preds = %37, %34
  %40 = phi i64 [ %36, %34 ], [ %38, %37 ], !dbg !1994
  store i64 %40, i64* %8, align 8, !dbg !1996
  %41 = load i64, i64* %8, align 8, !dbg !1997
  %42 = trunc i64 %41 to i32, !dbg !1998
  store i32 %42, i32* %4, align 4, !dbg !1999
  br label %43, !dbg !2000, !llvm.loop !2001

; <label>:43:                                     ; preds = %39
  %44 = load i32, i32* @zlib_trace, align 4, !dbg !2002
  %45 = and i32 %44, 2, !dbg !2006
  %46 = icmp ne i32 %45, 0, !dbg !2006
  br i1 %46, label %47, label %52, !dbg !2007

; <label>:47:                                     ; preds = %43
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !2008
  %49 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !2010
  %50 = load i32, i32* %4, align 4, !dbg !2011
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.48, i32 0, i32 0), %struct.z_stream_s* %49, i32 %50), !dbg !2012
  br label %52, !dbg !2012

; <label>:52:                                     ; preds = %47, %43
  br label %53, !dbg !2013

; <label>:53:                                     ; preds = %52
  %54 = load %struct.hw_state*, %struct.hw_state** %5, align 8, !dbg !2015
  %55 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %54, i32 0, i32 9, !dbg !2016
  %56 = load i8*, i8** %55, align 8, !dbg !2016
  %57 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !2017
  %58 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %57, i32 0, i32 0, !dbg !2018
  %59 = load i8*, i8** %58, align 8, !dbg !2018
  %60 = load i32, i32* %4, align 4, !dbg !2019
  %61 = sext i32 %60 to i64, !dbg !2019
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %59, i64 %61, i32 1, i1 false), !dbg !2020
  %62 = load i32, i32* %4, align 4, !dbg !2021
  %63 = sext i32 %62 to i64, !dbg !2021
  %64 = load %struct.hw_state*, %struct.hw_state** %5, align 8, !dbg !2022
  %65 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %64, i32 0, i32 7, !dbg !2023
  %66 = load i64, i64* %65, align 8, !dbg !2024
  %67 = sub i64 %66, %63, !dbg !2024
  store i64 %67, i64* %65, align 8, !dbg !2024
  %68 = load i32, i32* %4, align 4, !dbg !2025
  %69 = load %struct.hw_state*, %struct.hw_state** %5, align 8, !dbg !2026
  %70 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %69, i32 0, i32 9, !dbg !2027
  %71 = load i8*, i8** %70, align 8, !dbg !2028
  %72 = sext i32 %68 to i64, !dbg !2028
  %73 = getelementptr inbounds i8, i8* %71, i64 %72, !dbg !2028
  store i8* %73, i8** %70, align 8, !dbg !2028
  %74 = load i32, i32* %4, align 4, !dbg !2029
  %75 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !2030
  %76 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %75, i32 0, i32 1, !dbg !2031
  %77 = load i32, i32* %76, align 8, !dbg !2032
  %78 = sub i32 %77, %74, !dbg !2032
  store i32 %78, i32* %76, align 8, !dbg !2032
  %79 = load i32, i32* %4, align 4, !dbg !2033
  %80 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !2034
  %81 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %80, i32 0, i32 0, !dbg !2035
  %82 = load i8*, i8** %81, align 8, !dbg !2036
  %83 = sext i32 %79 to i64, !dbg !2036
  %84 = getelementptr inbounds i8, i8* %82, i64 %83, !dbg !2036
  store i8* %84, i8** %81, align 8, !dbg !2036
  %85 = load i32, i32* %4, align 4, !dbg !2037
  %86 = sext i32 %85 to i64, !dbg !2037
  %87 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !2038
  %88 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %87, i32 0, i32 2, !dbg !2039
  %89 = load i64, i64* %88, align 8, !dbg !2040
  %90 = add i64 %89, %86, !dbg !2040
  store i64 %90, i64* %88, align 8, !dbg !2040
  %91 = load i32, i32* %4, align 4, !dbg !2041
  store i32 %91, i32* %2, align 4, !dbg !2042
  br label %92, !dbg !2042

; <label>:92:                                     ; preds = %53, %22
  %93 = load i32, i32* %2, align 4, !dbg !2043
  ret i32 %93, !dbg !2043
}

; Function Attrs: nounwind uwtable
define internal i32 @h_flush_obuf(%struct.z_stream_s*) #0 !dbg !2044 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.z_stream_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hw_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.z_stream_s* %0, %struct.z_stream_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.z_stream_s** %3, metadata !2047, metadata !532), !dbg !2048
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2049, metadata !532), !dbg !2050
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2051, metadata !532), !dbg !2052
  call void @llvm.dbg.declare(metadata %struct.hw_state** %6, metadata !2053, metadata !532), !dbg !2054
  %10 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !2055
  %11 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 7, !dbg !2056
  %12 = load %struct.internal_state*, %struct.internal_state** %11, align 8, !dbg !2056
  %13 = bitcast %struct.internal_state* %12 to %struct.hw_state*, !dbg !2057
  store %struct.hw_state* %13, %struct.hw_state** %6, align 8, !dbg !2054
  %14 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !2058
  %15 = call i32 @output_buffer_bytes(%struct.hw_state* %14), !dbg !2059
  store i32 %15, i32* %5, align 4, !dbg !2060
  %16 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !2061
  %17 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %16, i32 0, i32 4, !dbg !2063
  %18 = load i32, i32* %17, align 8, !dbg !2063
  %19 = icmp eq i32 %18, 0, !dbg !2064
  br i1 %19, label %20, label %22, !dbg !2065

; <label>:20:                                     ; preds = %1
  %21 = load i32, i32* %5, align 4, !dbg !2066
  store i32 %21, i32* %2, align 4, !dbg !2067
  br label %99, !dbg !2067

; <label>:22:                                     ; preds = %1
  %23 = load i32, i32* %5, align 4, !dbg !2068
  %24 = icmp eq i32 %23, 0, !dbg !2070
  br i1 %24, label %25, label %27, !dbg !2071

; <label>:25:                                     ; preds = %22
  %26 = load i32, i32* %5, align 4, !dbg !2072
  store i32 %26, i32* %2, align 4, !dbg !2073
  br label %99, !dbg !2073

; <label>:27:                                     ; preds = %22
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2074, metadata !532), !dbg !2076
  %28 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !2077
  %29 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %28, i32 0, i32 4, !dbg !2078
  %30 = load i32, i32* %29, align 8, !dbg !2078
  store i32 %30, i32* %7, align 4, !dbg !2076
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2079, metadata !532), !dbg !2080
  %31 = load i32, i32* %5, align 4, !dbg !2081
  store i32 %31, i32* %8, align 4, !dbg !2080
  %32 = load i32, i32* %7, align 4, !dbg !2082
  %33 = load i32, i32* %8, align 4, !dbg !2083
  %34 = icmp ult i32 %32, %33, !dbg !2084
  br i1 %34, label %35, label %37, !dbg !2082

; <label>:35:                                     ; preds = %27
  %36 = load i32, i32* %7, align 4, !dbg !2085
  br label %39, !dbg !2087

; <label>:37:                                     ; preds = %27
  %38 = load i32, i32* %8, align 4, !dbg !2088
  br label %39, !dbg !2090

; <label>:39:                                     ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ], !dbg !2091
  store i32 %40, i32* %9, align 4, !dbg !2093
  %41 = load i32, i32* %9, align 4, !dbg !2094
  store i32 %41, i32* %4, align 4, !dbg !2095
  br label %42, !dbg !2096, !llvm.loop !2097

; <label>:42:                                     ; preds = %39
  %43 = load i32, i32* @zlib_trace, align 4, !dbg !2098
  %44 = and i32 %43, 2, !dbg !2102
  %45 = icmp ne i32 %44, 0, !dbg !2102
  br i1 %45, label %46, label %57, !dbg !2103

; <label>:46:                                     ; preds = %42
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !2104
  %48 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !2106
  %49 = load i32, i32* %4, align 4, !dbg !2107
  %50 = load i32, i32* %5, align 4, !dbg !2108
  %51 = load i32, i32* %4, align 4, !dbg !2109
  %52 = sub i32 %50, %51, !dbg !2110
  %53 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !2111
  %54 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %53, i32 0, i32 3, !dbg !2112
  %55 = call i32 @zedc_inflate_pending_output(%struct.zedc_stream_s* %54), !dbg !2113
  %56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.49, i32 0, i32 0), %struct.z_stream_s* %48, i32 %49, i32 %52, i32 %55), !dbg !2114
  br label %57, !dbg !2116

; <label>:57:                                     ; preds = %46, %42
  br label %58, !dbg !2117

; <label>:58:                                     ; preds = %57
  %59 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !2119
  %60 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %59, i32 0, i32 3, !dbg !2120
  %61 = load i8*, i8** %60, align 8, !dbg !2120
  %62 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !2121
  %63 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %62, i32 0, i32 14, !dbg !2122
  %64 = load i8*, i8** %63, align 8, !dbg !2122
  %65 = load i32, i32* %4, align 4, !dbg !2123
  %66 = sext i32 %65 to i64, !dbg !2123
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* %64, i64 %66, i32 1, i1 false), !dbg !2124
  %67 = load i32, i32* %4, align 4, !dbg !2125
  %68 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !2126
  %69 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %68, i32 0, i32 14, !dbg !2127
  %70 = load i8*, i8** %69, align 8, !dbg !2128
  %71 = sext i32 %67 to i64, !dbg !2128
  %72 = getelementptr inbounds i8, i8* %70, i64 %71, !dbg !2128
  store i8* %72, i8** %69, align 8, !dbg !2128
  %73 = load i32, i32* %4, align 4, !dbg !2129
  %74 = sext i32 %73 to i64, !dbg !2129
  %75 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !2130
  %76 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %75, i32 0, i32 11, !dbg !2131
  %77 = load i64, i64* %76, align 8, !dbg !2132
  %78 = add i64 %77, %74, !dbg !2132
  store i64 %78, i64* %76, align 8, !dbg !2132
  %79 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !2133
  %80 = call i32 @output_buffer_bytes(%struct.hw_state* %79), !dbg !2134
  store i32 %80, i32* %5, align 4, !dbg !2135
  %81 = load i32, i32* %4, align 4, !dbg !2136
  %82 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !2137
  %83 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %82, i32 0, i32 4, !dbg !2138
  %84 = load i32, i32* %83, align 8, !dbg !2139
  %85 = sub i32 %84, %81, !dbg !2139
  store i32 %85, i32* %83, align 8, !dbg !2139
  %86 = load i32, i32* %4, align 4, !dbg !2140
  %87 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !2141
  %88 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %87, i32 0, i32 3, !dbg !2142
  %89 = load i8*, i8** %88, align 8, !dbg !2143
  %90 = sext i32 %86 to i64, !dbg !2143
  %91 = getelementptr inbounds i8, i8* %89, i64 %90, !dbg !2143
  store i8* %91, i8** %88, align 8, !dbg !2143
  %92 = load i32, i32* %4, align 4, !dbg !2144
  %93 = sext i32 %92 to i64, !dbg !2144
  %94 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !2145
  %95 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %94, i32 0, i32 5, !dbg !2146
  %96 = load i64, i64* %95, align 8, !dbg !2147
  %97 = add i64 %96, %93, !dbg !2147
  store i64 %97, i64* %95, align 8, !dbg !2147
  %98 = load i32, i32* %5, align 4, !dbg !2148
  store i32 %98, i32* %2, align 4, !dbg !2149
  br label %99, !dbg !2149

; <label>:99:                                     ; preds = %58, %25, %20
  %100 = load i32, i32* %2, align 4, !dbg !2150
  ret i32 %100, !dbg !2150
}

; Function Attrs: nounwind uwtable
define i32 @h_deflateEnd(%struct.z_stream_s*) #0 !dbg !2151 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.z_stream_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zedc_stream_s*, align 8
  %6 = alloca %struct.hw_state*, align 8
  %7 = alloca %struct.zedc_dev_t*, align 8
  store %struct.z_stream_s* %0, %struct.z_stream_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.z_stream_s** %3, metadata !2152, metadata !532), !dbg !2153
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2154, metadata !532), !dbg !2155
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %5, metadata !2156, metadata !532), !dbg !2157
  call void @llvm.dbg.declare(metadata %struct.hw_state** %6, metadata !2158, metadata !532), !dbg !2159
  call void @llvm.dbg.declare(metadata %struct.zedc_dev_t** %7, metadata !2160, metadata !532), !dbg !2161
  %8 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !2162
  %9 = icmp eq %struct.z_stream_s* %8, null, !dbg !2164
  br i1 %9, label %10, label %11, !dbg !2165

; <label>:10:                                     ; preds = %1
  store i32 -2, i32* %2, align 4, !dbg !2166
  br label %59, !dbg !2166

; <label>:11:                                     ; preds = %1
  %12 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !2167
  %13 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %12, i32 0, i32 7, !dbg !2168
  %14 = load %struct.internal_state*, %struct.internal_state** %13, align 8, !dbg !2168
  %15 = bitcast %struct.internal_state* %14 to %struct.hw_state*, !dbg !2169
  store %struct.hw_state* %15, %struct.hw_state** %6, align 8, !dbg !2170
  %16 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !2171
  %17 = icmp eq %struct.hw_state* %16, null, !dbg !2173
  br i1 %17, label %18, label %19, !dbg !2174

; <label>:18:                                     ; preds = %11
  store i32 -2, i32* %2, align 4, !dbg !2175
  br label %59, !dbg !2175

; <label>:19:                                     ; preds = %11
  %20 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !2176
  %21 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %20, i32 0, i32 3, !dbg !2177
  store %struct.zedc_stream_s* %21, %struct.zedc_stream_s** %5, align 8, !dbg !2178
  %22 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !2179
  %23 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %22, i32 0, i32 15, !dbg !2180
  %24 = load i8*, i8** %23, align 8, !dbg !2180
  %25 = bitcast i8* %24 to %struct.zedc_dev_t*, !dbg !2181
  store %struct.zedc_dev_t* %25, %struct.zedc_dev_t** %7, align 8, !dbg !2182
  %26 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !2183
  %27 = call i32 @zedc_deflateEnd(%struct.zedc_stream_s* %26), !dbg !2184
  store i32 %27, i32* %4, align 4, !dbg !2185
  %28 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %7, align 8, !dbg !2186
  %29 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !2187
  %30 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %29, i32 0, i32 12, !dbg !2188
  %31 = load i8*, i8** %30, align 8, !dbg !2188
  %32 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !2189
  %33 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %32, i32 0, i32 10, !dbg !2190
  %34 = load i64, i64* %33, align 8, !dbg !2190
  %35 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !2191
  %36 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %35, i32 0, i32 3, !dbg !2192
  %37 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %36, i32 0, i32 36, !dbg !2193
  %38 = getelementptr inbounds [3 x i32], [3 x i32]* %37, i64 0, i64 1, !dbg !2191
  %39 = load i32, i32* %38, align 4, !dbg !2191
  %40 = call i32 @zedc_free(%struct.zedc_dev_t* %28, i8* %31, i64 %34, i32 %39), !dbg !2194
  %41 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %7, align 8, !dbg !2195
  %42 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !2196
  %43 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %42, i32 0, i32 8, !dbg !2197
  %44 = load i8*, i8** %43, align 8, !dbg !2197
  %45 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !2198
  %46 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %45, i32 0, i32 6, !dbg !2199
  %47 = load i64, i64* %46, align 8, !dbg !2199
  %48 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !2200
  %49 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %48, i32 0, i32 3, !dbg !2201
  %50 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %49, i32 0, i32 36, !dbg !2202
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %50, i64 0, i64 0, !dbg !2200
  %52 = load i32, i32* %51, align 4, !dbg !2200
  %53 = call i32 @zedc_free(%struct.zedc_dev_t* %41, i8* %44, i64 %47, i32 %52), !dbg !2203
  %54 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %7, align 8, !dbg !2204
  %55 = call i32 @__zedc_close(%struct.zedc_dev_t* %54), !dbg !2205
  %56 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !2206
  %57 = bitcast %struct.hw_state* %56 to i8*, !dbg !2206
  call void @__free(i8* %57), !dbg !2207
  %58 = load i32, i32* %4, align 4, !dbg !2208
  store i32 %58, i32* %2, align 4, !dbg !2209
  br label %59, !dbg !2209

; <label>:59:                                     ; preds = %19, %18, %10
  %60 = load i32, i32* %2, align 4, !dbg !2210
  ret i32 %60, !dbg !2210
}

declare i32 @zedc_deflateEnd(%struct.zedc_stream_s*) #3

; Function Attrs: nounwind uwtable
define i32 @h_inflateInit2_(%struct.z_stream_s*, i32, i8*, i32) #0 !dbg !2211 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.z_stream_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hw_state*, align 8
  %13 = alloca %struct.zedc_dev_t*, align 8
  store %struct.z_stream_s* %0, %struct.z_stream_s** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.z_stream_s** %6, metadata !2214, metadata !532), !dbg !2215
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2216, metadata !532), !dbg !2217
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2218, metadata !532), !dbg !2219
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2220, metadata !532), !dbg !2221
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2222, metadata !532), !dbg !2223
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2224, metadata !532), !dbg !2225
  store i32 0, i32* %11, align 4, !dbg !2225
  call void @llvm.dbg.declare(metadata %struct.hw_state** %12, metadata !2226, metadata !532), !dbg !2227
  call void @llvm.dbg.declare(metadata %struct.zedc_dev_t** %13, metadata !2228, metadata !532), !dbg !2229
  %14 = load %struct.z_stream_s*, %struct.z_stream_s** %6, align 8, !dbg !2230
  %15 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %14, i32 0, i32 2, !dbg !2231
  store i64 0, i64* %15, align 8, !dbg !2232
  %16 = load %struct.z_stream_s*, %struct.z_stream_s** %6, align 8, !dbg !2233
  %17 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %16, i32 0, i32 5, !dbg !2234
  store i64 0, i64* %17, align 8, !dbg !2235
  %18 = call noalias i8* @calloc(i64 1, i64 1192) #7, !dbg !2236
  %19 = bitcast i8* %18 to %struct.hw_state*, !dbg !2236
  store %struct.hw_state* %19, %struct.hw_state** %12, align 8, !dbg !2237
  %20 = load %struct.hw_state*, %struct.hw_state** %12, align 8, !dbg !2238
  %21 = icmp eq %struct.hw_state* %20, null, !dbg !2240
  br i1 %21, label %22, label %23, !dbg !2241

; <label>:22:                                     ; preds = %4
  store i32 -4, i32* %5, align 4, !dbg !2242
  br label %222, !dbg !2242

; <label>:23:                                     ; preds = %4
  %24 = load i32, i32* @zlib_accelerator, align 4, !dbg !2243
  %25 = load %struct.hw_state*, %struct.hw_state** %12, align 8, !dbg !2244
  %26 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %25, i32 0, i32 1, !dbg !2245
  store i32 %24, i32* %26, align 4, !dbg !2246
  %27 = load i32, i32* @zlib_card, align 4, !dbg !2247
  %28 = load %struct.hw_state*, %struct.hw_state** %12, align 8, !dbg !2248
  %29 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %28, i32 0, i32 0, !dbg !2249
  store i32 %27, i32* %29, align 8, !dbg !2250
  %30 = load %struct.hw_state*, %struct.hw_state** %12, align 8, !dbg !2251
  %31 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %30, i32 0, i32 2, !dbg !2252
  store i32 12, i32* %31, align 8, !dbg !2253
  %32 = load i32, i32* @zlib_inflate_flags, align 4, !dbg !2254
  %33 = and i32 %32, 128, !dbg !2256
  %34 = icmp ne i32 %33, 0, !dbg !2256
  br i1 %34, label %35, label %40, !dbg !2257

; <label>:35:                                     ; preds = %23
  %36 = load %struct.hw_state*, %struct.hw_state** %12, align 8, !dbg !2258
  %37 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %36, i32 0, i32 2, !dbg !2259
  %38 = load i32, i32* %37, align 8, !dbg !2260
  %39 = or i32 %38, 32, !dbg !2260
  store i32 %39, i32* %37, align 8, !dbg !2260
  br label %40, !dbg !2258

; <label>:40:                                     ; preds = %35, %23
  br label %41, !dbg !2261, !llvm.loop !2262

; <label>:41:                                     ; preds = %40
  %42 = load i32, i32* @zlib_trace, align 4, !dbg !2263
  %43 = and i32 %42, 2, !dbg !2267
  %44 = icmp ne i32 %43, 0, !dbg !2267
  br i1 %44, label %45, label %56, !dbg !2268

; <label>:45:                                     ; preds = %41
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !2269
  %47 = load %struct.z_stream_s*, %struct.z_stream_s** %6, align 8, !dbg !2271
  %48 = load %struct.hw_state*, %struct.hw_state** %12, align 8, !dbg !2272
  %49 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %48, i32 0, i32 1, !dbg !2273
  %50 = load i32, i32* %49, align 4, !dbg !2273
  %51 = load %struct.hw_state*, %struct.hw_state** %12, align 8, !dbg !2274
  %52 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %51, i32 0, i32 0, !dbg !2275
  %53 = load i32, i32* %52, align 8, !dbg !2275
  %54 = load i32, i32* @zlib_obuf_total, align 4, !dbg !2276
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.16, i32 0, i32 0), %struct.z_stream_s* %47, i32 %50, i32 %53, i32 %54), !dbg !2277
  br label %56, !dbg !2277

; <label>:56:                                     ; preds = %45, %41
  br label %57, !dbg !2278

; <label>:57:                                     ; preds = %56
  %58 = load %struct.hw_state*, %struct.hw_state** %12, align 8, !dbg !2280
  %59 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %58, i32 0, i32 0, !dbg !2281
  %60 = load i32, i32* %59, align 8, !dbg !2281
  %61 = load %struct.hw_state*, %struct.hw_state** %12, align 8, !dbg !2282
  %62 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %61, i32 0, i32 1, !dbg !2283
  %63 = load i32, i32* %62, align 4, !dbg !2283
  %64 = load %struct.hw_state*, %struct.hw_state** %12, align 8, !dbg !2284
  %65 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %64, i32 0, i32 2, !dbg !2285
  %66 = load i32, i32* %65, align 8, !dbg !2285
  %67 = call %struct.zedc_dev_t* @__zedc_open(i32 %60, i32 %63, i32 %66, i32* %11), !dbg !2286
  store %struct.zedc_dev_t* %67, %struct.zedc_dev_t** %13, align 8, !dbg !2287
  %68 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %13, align 8, !dbg !2288
  %69 = icmp ne %struct.zedc_dev_t* %68, null, !dbg !2288
  br i1 %69, label %71, label %70, !dbg !2290

; <label>:70:                                     ; preds = %57
  store i32 -2, i32* %10, align 4, !dbg !2291
  br label %218, !dbg !2293

; <label>:71:                                     ; preds = %57
  %72 = load %struct.hw_state*, %struct.hw_state** %12, align 8, !dbg !2294
  %73 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %72, i32 0, i32 15, !dbg !2295
  store i32 0, i32* %73, align 8, !dbg !2296
  %74 = load %struct.hw_state*, %struct.hw_state** %12, align 8, !dbg !2297
  %75 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %74, i32 0, i32 3, !dbg !2298
  %76 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %75, i32 0, i32 8, !dbg !2299
  store i32 0, i32* %76, align 8, !dbg !2300
  %77 = load %struct.hw_state*, %struct.hw_state** %12, align 8, !dbg !2301
  %78 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %77, i32 0, i32 3, !dbg !2302
  %79 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %78, i32 0, i32 7, !dbg !2303
  store i8* null, i8** %79, align 8, !dbg !2304
  %80 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %13, align 8, !dbg !2305
  %81 = bitcast %struct.zedc_dev_t* %80 to i8*, !dbg !2305
  %82 = load %struct.hw_state*, %struct.hw_state** %12, align 8, !dbg !2306
  %83 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %82, i32 0, i32 3, !dbg !2307
  %84 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %83, i32 0, i32 15, !dbg !2308
  store i8* %81, i8** %84, align 8, !dbg !2309
  %85 = load %struct.hw_state*, %struct.hw_state** %12, align 8, !dbg !2310
  %86 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %85, i32 0, i32 3, !dbg !2311
  %87 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %86, i32 0, i32 36, !dbg !2312
  %88 = getelementptr inbounds [3 x i32], [3 x i32]* %87, i64 0, i64 0, !dbg !2310
  store i32 16, i32* %88, align 4, !dbg !2313
  %89 = load %struct.hw_state*, %struct.hw_state** %12, align 8, !dbg !2314
  %90 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %89, i32 0, i32 3, !dbg !2315
  %91 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %90, i32 0, i32 36, !dbg !2316
  %92 = getelementptr inbounds [3 x i32], [3 x i32]* %91, i64 0, i64 1, !dbg !2314
  store i32 16, i32* %92, align 4, !dbg !2317
  %93 = load %struct.hw_state*, %struct.hw_state** %12, align 8, !dbg !2318
  %94 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %93, i32 0, i32 3, !dbg !2319
  %95 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %94, i32 0, i32 36, !dbg !2320
  %96 = getelementptr inbounds [3 x i32], [3 x i32]* %95, i64 0, i64 2, !dbg !2318
  store i32 16, i32* %96, align 4, !dbg !2321
  %97 = load i32, i32* @zlib_inflate_flags, align 4, !dbg !2322
  %98 = and i32 %97, 16, !dbg !2324
  %99 = icmp ne i32 %98, 0, !dbg !2324
  br i1 %99, label %100, label %121, !dbg !2325

; <label>:100:                                    ; preds = %71
  %101 = load %struct.hw_state*, %struct.hw_state** %12, align 8, !dbg !2326
  %102 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %101, i32 0, i32 3, !dbg !2328
  %103 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %102, i32 0, i32 36, !dbg !2329
  %104 = getelementptr inbounds [3 x i32], [3 x i32]* %103, i64 0, i64 0, !dbg !2326
  store i32 16, i32* %104, align 4, !dbg !2330
  %105 = load i32, i32* @zlib_obuf_total, align 4, !dbg !2331
  %106 = icmp ne i32 %105, 0, !dbg !2333
  br i1 %106, label %107, label %112, !dbg !2334

; <label>:107:                                    ; preds = %100
  %108 = load %struct.hw_state*, %struct.hw_state** %12, align 8, !dbg !2335
  %109 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %108, i32 0, i32 3, !dbg !2336
  %110 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %109, i32 0, i32 36, !dbg !2337
  %111 = getelementptr inbounds [3 x i32], [3 x i32]* %110, i64 0, i64 1, !dbg !2335
  store i32 8, i32* %111, align 4, !dbg !2338
  br label %112, !dbg !2335

; <label>:112:                                    ; preds = %107, %100
  br label %113, !dbg !2339, !llvm.loop !2340

; <label>:113:                                    ; preds = %112
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !2341
  %115 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %114, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 796), !dbg !2344
  br label %116, !dbg !2345

; <label>:116:                                    ; preds = %113
  %117 = load %struct.hw_state*, %struct.hw_state** %12, align 8, !dbg !2346
  %118 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %117, i32 0, i32 3, !dbg !2347
  %119 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %118, i32 0, i32 36, !dbg !2348
  %120 = getelementptr inbounds [3 x i32], [3 x i32]* %119, i64 0, i64 2, !dbg !2346
  store i32 8, i32* %120, align 4, !dbg !2349
  br label %121, !dbg !2350

; <label>:121:                                    ; preds = %116, %71
  %122 = load i32, i32* @zlib_xcheck, align 4, !dbg !2351
  %123 = icmp ne i32 %122, 0, !dbg !2351
  br i1 %123, label %124, label %130, !dbg !2353

; <label>:124:                                    ; preds = %121
  %125 = load %struct.hw_state*, %struct.hw_state** %12, align 8, !dbg !2354
  %126 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %125, i32 0, i32 3, !dbg !2355
  %127 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %126, i32 0, i32 21, !dbg !2356
  %128 = load i32, i32* %127, align 4, !dbg !2357
  %129 = or i32 %128, 1, !dbg !2357
  store i32 %129, i32* %127, align 4, !dbg !2357
  br label %130, !dbg !2354

; <label>:130:                                    ; preds = %124, %121
  %131 = load i32, i32* @zedc_verbose, align 4, !dbg !2358
  %132 = and i32 %131, 65536, !dbg !2360
  %133 = icmp ne i32 %132, 0, !dbg !2360
  br i1 %133, label %134, label %140, !dbg !2361

; <label>:134:                                    ; preds = %130
  %135 = load %struct.hw_state*, %struct.hw_state** %12, align 8, !dbg !2362
  %136 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %135, i32 0, i32 3, !dbg !2363
  %137 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %136, i32 0, i32 21, !dbg !2364
  %138 = load i32, i32* %137, align 4, !dbg !2365
  %139 = or i32 %138, 2, !dbg !2365
  store i32 %139, i32* %137, align 4, !dbg !2365
  br label %140, !dbg !2362

; <label>:140:                                    ; preds = %134, %130
  %141 = load i32, i32* @zlib_inflate_flags, align 4, !dbg !2366
  %142 = and i32 %141, 64, !dbg !2368
  %143 = icmp ne i32 %142, 0, !dbg !2368
  br i1 %143, label %144, label %150, !dbg !2369

; <label>:144:                                    ; preds = %140
  %145 = load %struct.hw_state*, %struct.hw_state** %12, align 8, !dbg !2370
  %146 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %145, i32 0, i32 3, !dbg !2371
  %147 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %146, i32 0, i32 21, !dbg !2372
  %148 = load i32, i32* %147, align 4, !dbg !2373
  %149 = or i32 %148, 4, !dbg !2373
  store i32 %149, i32* %147, align 4, !dbg !2373
  br label %150, !dbg !2370

; <label>:150:                                    ; preds = %144, %140
  %151 = load i32, i32* @zlib_obuf_total, align 4, !dbg !2374
  %152 = icmp ne i32 %151, 0, !dbg !2374
  br i1 %152, label %153, label %182, !dbg !2376

; <label>:153:                                    ; preds = %150
  %154 = load i32, i32* @zlib_obuf_total, align 4, !dbg !2377
  %155 = zext i32 %154 to i64, !dbg !2377
  %156 = load %struct.hw_state*, %struct.hw_state** %12, align 8, !dbg !2379
  %157 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %156, i32 0, i32 11, !dbg !2380
  store i64 %155, i64* %157, align 8, !dbg !2381
  %158 = load %struct.hw_state*, %struct.hw_state** %12, align 8, !dbg !2382
  %159 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %158, i32 0, i32 10, !dbg !2383
  store i64 %155, i64* %159, align 8, !dbg !2384
  %160 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %13, align 8, !dbg !2385
  %161 = load %struct.hw_state*, %struct.hw_state** %12, align 8, !dbg !2386
  %162 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %161, i32 0, i32 10, !dbg !2387
  %163 = load i64, i64* %162, align 8, !dbg !2387
  %164 = load %struct.hw_state*, %struct.hw_state** %12, align 8, !dbg !2388
  %165 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %164, i32 0, i32 3, !dbg !2389
  %166 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %165, i32 0, i32 36, !dbg !2390
  %167 = getelementptr inbounds [3 x i32], [3 x i32]* %166, i64 0, i64 1, !dbg !2388
  %168 = load i32, i32* %167, align 4, !dbg !2388
  %169 = call i8* @zedc_memalign(%struct.zedc_dev_t* %160, i64 %163, i32 %168), !dbg !2391
  %170 = load %struct.hw_state*, %struct.hw_state** %12, align 8, !dbg !2392
  %171 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %170, i32 0, i32 14, !dbg !2393
  store i8* %169, i8** %171, align 8, !dbg !2394
  %172 = load %struct.hw_state*, %struct.hw_state** %12, align 8, !dbg !2395
  %173 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %172, i32 0, i32 13, !dbg !2396
  store i8* %169, i8** %173, align 8, !dbg !2397
  %174 = load %struct.hw_state*, %struct.hw_state** %12, align 8, !dbg !2398
  %175 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %174, i32 0, i32 12, !dbg !2399
  store i8* %169, i8** %175, align 8, !dbg !2400
  %176 = load %struct.hw_state*, %struct.hw_state** %12, align 8, !dbg !2401
  %177 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %176, i32 0, i32 12, !dbg !2403
  %178 = load i8*, i8** %177, align 8, !dbg !2403
  %179 = icmp eq i8* %178, null, !dbg !2404
  br i1 %179, label %180, label %181, !dbg !2405

; <label>:180:                                    ; preds = %153
  store i32 -4, i32* %10, align 4, !dbg !2406
  br label %215, !dbg !2408

; <label>:181:                                    ; preds = %153
  br label %182, !dbg !2409

; <label>:182:                                    ; preds = %181, %150
  %183 = load %struct.hw_state*, %struct.hw_state** %12, align 8, !dbg !2410
  %184 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %183, i32 0, i32 3, !dbg !2411
  %185 = load i32, i32* %7, align 4, !dbg !2412
  %186 = call i32 @zedc_inflateInit2(%struct.zedc_stream_s* %184, i32 %185), !dbg !2413
  store i32 %186, i32* %10, align 4, !dbg !2414
  %187 = load %struct.z_stream_s*, %struct.z_stream_s** %6, align 8, !dbg !2415
  %188 = load %struct.hw_state*, %struct.hw_state** %12, align 8, !dbg !2416
  %189 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %188, i32 0, i32 3, !dbg !2417
  call void @__fixup_crc_or_adler(%struct.z_stream_s* %187, %struct.zedc_stream_s* %189), !dbg !2418
  %190 = load i32, i32* %10, align 4, !dbg !2419
  %191 = icmp ne i32 %190, 0, !dbg !2421
  br i1 %191, label %192, label %194, !dbg !2422

; <label>:192:                                    ; preds = %182
  %193 = load i32, i32* %10, align 4, !dbg !2423
  store i32 %193, i32* %10, align 4, !dbg !2425
  br label %201, !dbg !2426

; <label>:194:                                    ; preds = %182
  %195 = load %struct.hw_state*, %struct.hw_state** %12, align 8, !dbg !2427
  %196 = bitcast %struct.hw_state* %195 to i8*, !dbg !2428
  %197 = bitcast i8* %196 to %struct.internal_state*, !dbg !2428
  %198 = load %struct.z_stream_s*, %struct.z_stream_s** %6, align 8, !dbg !2429
  %199 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %198, i32 0, i32 7, !dbg !2430
  store %struct.internal_state* %197, %struct.internal_state** %199, align 8, !dbg !2431
  %200 = load i32, i32* %10, align 4, !dbg !2432
  store i32 %200, i32* %5, align 4, !dbg !2433
  br label %222, !dbg !2433

; <label>:201:                                    ; preds = %192
  %202 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %13, align 8, !dbg !2434
  %203 = load %struct.hw_state*, %struct.hw_state** %12, align 8, !dbg !2435
  %204 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %203, i32 0, i32 12, !dbg !2436
  %205 = load i8*, i8** %204, align 8, !dbg !2436
  %206 = load %struct.hw_state*, %struct.hw_state** %12, align 8, !dbg !2437
  %207 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %206, i32 0, i32 10, !dbg !2438
  %208 = load i64, i64* %207, align 8, !dbg !2438
  %209 = load %struct.hw_state*, %struct.hw_state** %12, align 8, !dbg !2439
  %210 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %209, i32 0, i32 3, !dbg !2440
  %211 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %210, i32 0, i32 36, !dbg !2441
  %212 = getelementptr inbounds [3 x i32], [3 x i32]* %211, i64 0, i64 1, !dbg !2439
  %213 = load i32, i32* %212, align 4, !dbg !2439
  %214 = call i32 @zedc_free(%struct.zedc_dev_t* %202, i8* %205, i64 %208, i32 %213), !dbg !2442
  br label %215, !dbg !2442

; <label>:215:                                    ; preds = %201, %180
  %216 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %13, align 8, !dbg !2443
  %217 = call i32 @__zedc_close(%struct.zedc_dev_t* %216), !dbg !2444
  br label %218, !dbg !2444

; <label>:218:                                    ; preds = %215, %70
  %219 = load %struct.hw_state*, %struct.hw_state** %12, align 8, !dbg !2445
  %220 = bitcast %struct.hw_state* %219 to i8*, !dbg !2445
  call void @__free(i8* %220), !dbg !2446
  %221 = load i32, i32* %10, align 4, !dbg !2447
  store i32 %221, i32* %5, align 4, !dbg !2448
  br label %222, !dbg !2448

; <label>:222:                                    ; preds = %218, %194, %22
  %223 = load i32, i32* %5, align 4, !dbg !2449
  ret i32 %223, !dbg !2449
}

declare i32 @zedc_inflateInit2(%struct.zedc_stream_s*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @h_inflateReset(%struct.z_stream_s*) #0 !dbg !2450 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.z_stream_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zedc_stream_s*, align 8
  %6 = alloca %struct.hw_state*, align 8
  store %struct.z_stream_s* %0, %struct.z_stream_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.z_stream_s** %3, metadata !2451, metadata !532), !dbg !2452
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2453, metadata !532), !dbg !2454
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %5, metadata !2455, metadata !532), !dbg !2456
  call void @llvm.dbg.declare(metadata %struct.hw_state** %6, metadata !2457, metadata !532), !dbg !2458
  br label %7, !dbg !2459, !llvm.loop !2460

; <label>:7:                                      ; preds = %1
  %8 = load i32, i32* @zlib_trace, align 4, !dbg !2461
  %9 = and i32 %8, 2, !dbg !2465
  %10 = icmp ne i32 %9, 0, !dbg !2465
  br i1 %10, label %11, label %15, !dbg !2466

; <label>:11:                                     ; preds = %7
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !2467
  %13 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !2469
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i32 0, i32 0), %struct.z_stream_s* %13), !dbg !2470
  br label %15, !dbg !2470

; <label>:15:                                     ; preds = %11, %7
  br label %16, !dbg !2471

; <label>:16:                                     ; preds = %15
  %17 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !2473
  %18 = icmp eq %struct.z_stream_s* %17, null, !dbg !2475
  br i1 %18, label %19, label %20, !dbg !2476

; <label>:19:                                     ; preds = %16
  store i32 -2, i32* %2, align 4, !dbg !2477
  br label %101, !dbg !2477

; <label>:20:                                     ; preds = %16
  %21 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !2478
  %22 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %21, i32 0, i32 7, !dbg !2479
  %23 = load %struct.internal_state*, %struct.internal_state** %22, align 8, !dbg !2479
  %24 = bitcast %struct.internal_state* %23 to %struct.hw_state*, !dbg !2480
  store %struct.hw_state* %24, %struct.hw_state** %6, align 8, !dbg !2481
  %25 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !2482
  %26 = icmp eq %struct.hw_state* %25, null, !dbg !2484
  br i1 %26, label %27, label %28, !dbg !2485

; <label>:27:                                     ; preds = %20
  store i32 -2, i32* %2, align 4, !dbg !2486
  br label %101, !dbg !2486

; <label>:28:                                     ; preds = %20
  %29 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !2487
  %30 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %29, i32 0, i32 3, !dbg !2488
  store %struct.zedc_stream_s* %30, %struct.zedc_stream_s** %5, align 8, !dbg !2489
  %31 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !2490
  %32 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %31, i32 0, i32 2, !dbg !2491
  store i64 0, i64* %32, align 8, !dbg !2492
  %33 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !2493
  %34 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %33, i32 0, i32 5, !dbg !2494
  store i64 0, i64* %34, align 8, !dbg !2495
  %35 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !2496
  %36 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %35, i32 0, i32 15, !dbg !2497
  store i32 0, i32* %36, align 8, !dbg !2498
  %37 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !2499
  %38 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %37, i32 0, i32 10, !dbg !2500
  %39 = load i64, i64* %38, align 8, !dbg !2500
  %40 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !2501
  %41 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %40, i32 0, i32 11, !dbg !2502
  store i64 %39, i64* %41, align 8, !dbg !2503
  %42 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !2504
  %43 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %42, i32 0, i32 12, !dbg !2505
  %44 = load i8*, i8** %43, align 8, !dbg !2505
  %45 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !2506
  %46 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %45, i32 0, i32 13, !dbg !2507
  store i8* %44, i8** %46, align 8, !dbg !2508
  %47 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !2509
  %48 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %47, i32 0, i32 12, !dbg !2510
  %49 = load i8*, i8** %48, align 8, !dbg !2510
  %50 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !2511
  %51 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %50, i32 0, i32 14, !dbg !2512
  store i8* %49, i8** %51, align 8, !dbg !2513
  %52 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !2514
  %53 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %52, i32 0, i32 4, !dbg !2515
  store i32 0, i32* %53, align 8, !dbg !2516
  %54 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !2517
  %55 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %54, i32 0, i32 54, !dbg !2519
  %56 = load i32, i32* %55, align 8, !dbg !2519
  %57 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !2520
  %58 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %57, i32 0, i32 55, !dbg !2521
  %59 = load i32, i32* %58, align 4, !dbg !2521
  %60 = add i32 %56, %59, !dbg !2522
  %61 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !2523
  %62 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %61, i32 0, i32 45, !dbg !2524
  %63 = load i8, i8* %62, align 1, !dbg !2524
  %64 = zext i8 %63 to i32, !dbg !2523
  %65 = add i32 %60, %64, !dbg !2525
  %66 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !2526
  %67 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %66, i32 0, i32 56, !dbg !2527
  %68 = load i32, i32* %67, align 8, !dbg !2527
  %69 = add i32 %65, %68, !dbg !2528
  %70 = icmp ne i32 %69, 0, !dbg !2528
  br i1 %70, label %71, label %95, !dbg !2529

; <label>:71:                                     ; preds = %28
  br label %72, !dbg !2530, !llvm.loop !2531

; <label>:72:                                     ; preds = %71
  %73 = load i32, i32* @zlib_trace, align 4, !dbg !2532
  %74 = and i32 %73, 2, !dbg !2536
  %75 = icmp ne i32 %74, 0, !dbg !2536
  br i1 %75, label %76, label %93, !dbg !2537

; <label>:76:                                     ; preds = %72
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !2538
  %78 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !2540
  %79 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !2541
  %80 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %79, i32 0, i32 54, !dbg !2542
  %81 = load i32, i32* %80, align 8, !dbg !2542
  %82 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !2543
  %83 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %82, i32 0, i32 55, !dbg !2544
  %84 = load i32, i32* %83, align 4, !dbg !2544
  %85 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !2545
  %86 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %85, i32 0, i32 45, !dbg !2546
  %87 = load i8, i8* %86, align 1, !dbg !2546
  %88 = zext i8 %87 to i32, !dbg !2547
  %89 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !2548
  %90 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %89, i32 0, i32 56, !dbg !2549
  %91 = load i32, i32* %90, align 8, !dbg !2549
  %92 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i32 0, i32 0), %struct.z_stream_s* %78, i32 %81, i32 %84, i32 %88, i32 %91), !dbg !2550
  br label %93, !dbg !2550

; <label>:93:                                     ; preds = %76, %72
  br label %94, !dbg !2551

; <label>:94:                                     ; preds = %93
  br label %95, !dbg !2553

; <label>:95:                                     ; preds = %94, %28
  %96 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !2555
  %97 = call i32 @zedc_inflateReset(%struct.zedc_stream_s* %96), !dbg !2556
  store i32 %97, i32* %4, align 4, !dbg !2557
  %98 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !2558
  %99 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !2559
  call void @__fixup_crc_or_adler(%struct.z_stream_s* %98, %struct.zedc_stream_s* %99), !dbg !2560
  %100 = load i32, i32* %4, align 4, !dbg !2561
  store i32 %100, i32* %2, align 4, !dbg !2562
  br label %101, !dbg !2562

; <label>:101:                                    ; preds = %95, %27, %19
  %102 = load i32, i32* %2, align 4, !dbg !2563
  ret i32 %102, !dbg !2563
}

declare i32 @zedc_inflateReset(%struct.zedc_stream_s*) #3

; Function Attrs: nounwind uwtable
define i32 @h_inflateReset2(%struct.z_stream_s*, i32) #0 !dbg !2564 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.z_stream_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.zedc_stream_s*, align 8
  %8 = alloca %struct.hw_state*, align 8
  store %struct.z_stream_s* %0, %struct.z_stream_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.z_stream_s** %4, metadata !2565, metadata !532), !dbg !2566
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2567, metadata !532), !dbg !2568
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2569, metadata !532), !dbg !2570
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %7, metadata !2571, metadata !532), !dbg !2572
  call void @llvm.dbg.declare(metadata %struct.hw_state** %8, metadata !2573, metadata !532), !dbg !2574
  br label %9, !dbg !2575, !llvm.loop !2576

; <label>:9:                                      ; preds = %2
  %10 = load i32, i32* @zlib_trace, align 4, !dbg !2577
  %11 = and i32 %10, 2, !dbg !2581
  %12 = icmp ne i32 %11, 0, !dbg !2581
  br i1 %12, label %13, label %18, !dbg !2582

; <label>:13:                                     ; preds = %9
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !2583
  %15 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !2585
  %16 = load i32, i32* %5, align 4, !dbg !2586
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i32 0, i32 0), %struct.z_stream_s* %15, i32 %16), !dbg !2587
  br label %18, !dbg !2587

; <label>:18:                                     ; preds = %13, %9
  br label %19, !dbg !2588

; <label>:19:                                     ; preds = %18
  %20 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !2590
  %21 = icmp eq %struct.z_stream_s* %20, null, !dbg !2592
  br i1 %21, label %22, label %23, !dbg !2593

; <label>:22:                                     ; preds = %19
  store i32 -2, i32* %3, align 4, !dbg !2594
  br label %105, !dbg !2594

; <label>:23:                                     ; preds = %19
  %24 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !2595
  %25 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %24, i32 0, i32 7, !dbg !2596
  %26 = load %struct.internal_state*, %struct.internal_state** %25, align 8, !dbg !2596
  %27 = bitcast %struct.internal_state* %26 to %struct.hw_state*, !dbg !2597
  store %struct.hw_state* %27, %struct.hw_state** %8, align 8, !dbg !2598
  %28 = load %struct.hw_state*, %struct.hw_state** %8, align 8, !dbg !2599
  %29 = icmp eq %struct.hw_state* %28, null, !dbg !2601
  br i1 %29, label %30, label %31, !dbg !2602

; <label>:30:                                     ; preds = %23
  store i32 -2, i32* %3, align 4, !dbg !2603
  br label %105, !dbg !2603

; <label>:31:                                     ; preds = %23
  %32 = load %struct.hw_state*, %struct.hw_state** %8, align 8, !dbg !2604
  %33 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %32, i32 0, i32 3, !dbg !2605
  store %struct.zedc_stream_s* %33, %struct.zedc_stream_s** %7, align 8, !dbg !2606
  %34 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !2607
  %35 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %34, i32 0, i32 2, !dbg !2608
  store i64 0, i64* %35, align 8, !dbg !2609
  %36 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !2610
  %37 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %36, i32 0, i32 5, !dbg !2611
  store i64 0, i64* %37, align 8, !dbg !2612
  %38 = load %struct.hw_state*, %struct.hw_state** %8, align 8, !dbg !2613
  %39 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %38, i32 0, i32 15, !dbg !2614
  store i32 0, i32* %39, align 8, !dbg !2615
  %40 = load %struct.hw_state*, %struct.hw_state** %8, align 8, !dbg !2616
  %41 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %40, i32 0, i32 10, !dbg !2617
  %42 = load i64, i64* %41, align 8, !dbg !2617
  %43 = load %struct.hw_state*, %struct.hw_state** %8, align 8, !dbg !2618
  %44 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %43, i32 0, i32 11, !dbg !2619
  store i64 %42, i64* %44, align 8, !dbg !2620
  %45 = load %struct.hw_state*, %struct.hw_state** %8, align 8, !dbg !2621
  %46 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %45, i32 0, i32 12, !dbg !2622
  %47 = load i8*, i8** %46, align 8, !dbg !2622
  %48 = load %struct.hw_state*, %struct.hw_state** %8, align 8, !dbg !2623
  %49 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %48, i32 0, i32 13, !dbg !2624
  store i8* %47, i8** %49, align 8, !dbg !2625
  %50 = load %struct.hw_state*, %struct.hw_state** %8, align 8, !dbg !2626
  %51 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %50, i32 0, i32 12, !dbg !2627
  %52 = load i8*, i8** %51, align 8, !dbg !2627
  %53 = load %struct.hw_state*, %struct.hw_state** %8, align 8, !dbg !2628
  %54 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %53, i32 0, i32 14, !dbg !2629
  store i8* %52, i8** %54, align 8, !dbg !2630
  %55 = load %struct.hw_state*, %struct.hw_state** %8, align 8, !dbg !2631
  %56 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %55, i32 0, i32 4, !dbg !2632
  store i32 0, i32* %56, align 8, !dbg !2633
  %57 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %7, align 8, !dbg !2634
  %58 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %57, i32 0, i32 54, !dbg !2636
  %59 = load i32, i32* %58, align 8, !dbg !2636
  %60 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %7, align 8, !dbg !2637
  %61 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %60, i32 0, i32 55, !dbg !2638
  %62 = load i32, i32* %61, align 4, !dbg !2638
  %63 = add i32 %59, %62, !dbg !2639
  %64 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %7, align 8, !dbg !2640
  %65 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %64, i32 0, i32 45, !dbg !2641
  %66 = load i8, i8* %65, align 1, !dbg !2641
  %67 = zext i8 %66 to i32, !dbg !2640
  %68 = add i32 %63, %67, !dbg !2642
  %69 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %7, align 8, !dbg !2643
  %70 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %69, i32 0, i32 56, !dbg !2644
  %71 = load i32, i32* %70, align 8, !dbg !2644
  %72 = add i32 %68, %71, !dbg !2645
  %73 = icmp ne i32 %72, 0, !dbg !2645
  br i1 %73, label %74, label %98, !dbg !2646

; <label>:74:                                     ; preds = %31
  br label %75, !dbg !2647, !llvm.loop !2648

; <label>:75:                                     ; preds = %74
  %76 = load i32, i32* @zlib_trace, align 4, !dbg !2649
  %77 = and i32 %76, 2, !dbg !2653
  %78 = icmp ne i32 %77, 0, !dbg !2653
  br i1 %78, label %79, label %96, !dbg !2654

; <label>:79:                                     ; preds = %75
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !2655
  %81 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !2657
  %82 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %7, align 8, !dbg !2658
  %83 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %82, i32 0, i32 54, !dbg !2659
  %84 = load i32, i32* %83, align 8, !dbg !2659
  %85 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %7, align 8, !dbg !2660
  %86 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %85, i32 0, i32 55, !dbg !2661
  %87 = load i32, i32* %86, align 4, !dbg !2661
  %88 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %7, align 8, !dbg !2662
  %89 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %88, i32 0, i32 45, !dbg !2663
  %90 = load i8, i8* %89, align 1, !dbg !2663
  %91 = zext i8 %90 to i32, !dbg !2664
  %92 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %7, align 8, !dbg !2665
  %93 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %92, i32 0, i32 56, !dbg !2666
  %94 = load i32, i32* %93, align 8, !dbg !2666
  %95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i32 0, i32 0), %struct.z_stream_s* %81, i32 %84, i32 %87, i32 %91, i32 %94), !dbg !2667
  br label %96, !dbg !2667

; <label>:96:                                     ; preds = %79, %75
  br label %97, !dbg !2668

; <label>:97:                                     ; preds = %96
  br label %98, !dbg !2670

; <label>:98:                                     ; preds = %97, %31
  %99 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %7, align 8, !dbg !2672
  %100 = load i32, i32* %5, align 4, !dbg !2673
  %101 = call i32 @zedc_inflateReset2(%struct.zedc_stream_s* %99, i32 %100), !dbg !2674
  store i32 %101, i32* %6, align 4, !dbg !2675
  %102 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !2676
  %103 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %7, align 8, !dbg !2677
  call void @__fixup_crc_or_adler(%struct.z_stream_s* %102, %struct.zedc_stream_s* %103), !dbg !2678
  %104 = load i32, i32* %6, align 4, !dbg !2679
  store i32 %104, i32* %3, align 4, !dbg !2680
  br label %105, !dbg !2680

; <label>:105:                                    ; preds = %98, %30, %22
  %106 = load i32, i32* %3, align 4, !dbg !2681
  ret i32 %106, !dbg !2681
}

declare i32 @zedc_inflateReset2(%struct.zedc_stream_s*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @h_inflateSetDictionary(%struct.z_stream_s*, i8*, i32) #0 !dbg !2682 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.z_stream_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.zedc_stream_s*, align 8
  %10 = alloca %struct.hw_state*, align 8
  store %struct.z_stream_s* %0, %struct.z_stream_s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.z_stream_s** %5, metadata !2683, metadata !532), !dbg !2684
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2685, metadata !532), !dbg !2686
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2687, metadata !532), !dbg !2688
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2689, metadata !532), !dbg !2690
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %9, metadata !2691, metadata !532), !dbg !2692
  call void @llvm.dbg.declare(metadata %struct.hw_state** %10, metadata !2693, metadata !532), !dbg !2694
  br label %11, !dbg !2695, !llvm.loop !2696

; <label>:11:                                     ; preds = %3
  %12 = load i32, i32* @zlib_trace, align 4, !dbg !2697
  %13 = and i32 %12, 2, !dbg !2701
  %14 = icmp ne i32 %13, 0, !dbg !2701
  br i1 %14, label %15, label %21, !dbg !2702

; <label>:15:                                     ; preds = %11
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !2703
  %17 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8, !dbg !2705
  %18 = load i8*, i8** %6, align 8, !dbg !2706
  %19 = load i32, i32* %7, align 4, !dbg !2707
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.21, i32 0, i32 0), %struct.z_stream_s* %17, i8* %18, i32 %19), !dbg !2708
  br label %21, !dbg !2708

; <label>:21:                                     ; preds = %15, %11
  br label %22, !dbg !2709

; <label>:22:                                     ; preds = %21
  %23 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8, !dbg !2711
  %24 = icmp eq %struct.z_stream_s* %23, null, !dbg !2713
  br i1 %24, label %25, label %26, !dbg !2714

; <label>:25:                                     ; preds = %22
  store i32 -2, i32* %4, align 4, !dbg !2715
  br label %42, !dbg !2715

; <label>:26:                                     ; preds = %22
  %27 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8, !dbg !2716
  %28 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %27, i32 0, i32 7, !dbg !2717
  %29 = load %struct.internal_state*, %struct.internal_state** %28, align 8, !dbg !2717
  %30 = bitcast %struct.internal_state* %29 to %struct.hw_state*, !dbg !2718
  store %struct.hw_state* %30, %struct.hw_state** %10, align 8, !dbg !2719
  %31 = load %struct.hw_state*, %struct.hw_state** %10, align 8, !dbg !2720
  %32 = icmp eq %struct.hw_state* %31, null, !dbg !2722
  br i1 %32, label %33, label %34, !dbg !2723

; <label>:33:                                     ; preds = %26
  store i32 -2, i32* %4, align 4, !dbg !2724
  br label %42, !dbg !2724

; <label>:34:                                     ; preds = %26
  %35 = load %struct.hw_state*, %struct.hw_state** %10, align 8, !dbg !2725
  %36 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %35, i32 0, i32 3, !dbg !2726
  store %struct.zedc_stream_s* %36, %struct.zedc_stream_s** %9, align 8, !dbg !2727
  %37 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %9, align 8, !dbg !2728
  %38 = load i8*, i8** %6, align 8, !dbg !2729
  %39 = load i32, i32* %7, align 4, !dbg !2730
  %40 = call i32 @zedc_inflateSetDictionary(%struct.zedc_stream_s* %37, i8* %38, i32 %39), !dbg !2731
  store i32 %40, i32* %8, align 4, !dbg !2732
  %41 = load i32, i32* %8, align 4, !dbg !2733
  store i32 %41, i32* %4, align 4, !dbg !2734
  br label %42, !dbg !2734

; <label>:42:                                     ; preds = %34, %33, %25
  %43 = load i32, i32* %4, align 4, !dbg !2735
  ret i32 %43, !dbg !2735
}

declare i32 @zedc_inflateSetDictionary(%struct.zedc_stream_s*, i8*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @h_inflateGetDictionary(%struct.z_stream_s*, i8*, i32*) #0 !dbg !2736 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.z_stream_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.zedc_stream_s*, align 8
  %10 = alloca %struct.hw_state*, align 8
  store %struct.z_stream_s* %0, %struct.z_stream_s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.z_stream_s** %5, metadata !2740, metadata !532), !dbg !2741
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2742, metadata !532), !dbg !2743
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !2744, metadata !532), !dbg !2745
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2746, metadata !532), !dbg !2747
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %9, metadata !2748, metadata !532), !dbg !2749
  call void @llvm.dbg.declare(metadata %struct.hw_state** %10, metadata !2750, metadata !532), !dbg !2751
  br label %11, !dbg !2752, !llvm.loop !2753

; <label>:11:                                     ; preds = %3
  %12 = load i32, i32* @zlib_trace, align 4, !dbg !2754
  %13 = and i32 %12, 2, !dbg !2758
  %14 = icmp ne i32 %13, 0, !dbg !2758
  br i1 %14, label %15, label %21, !dbg !2759

; <label>:15:                                     ; preds = %11
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !2760
  %17 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8, !dbg !2762
  %18 = load i8*, i8** %6, align 8, !dbg !2763
  %19 = load i32*, i32** %7, align 8, !dbg !2764
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.22, i32 0, i32 0), %struct.z_stream_s* %17, i8* %18, i32* %19), !dbg !2765
  br label %21, !dbg !2765

; <label>:21:                                     ; preds = %15, %11
  br label %22, !dbg !2766

; <label>:22:                                     ; preds = %21
  %23 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8, !dbg !2768
  %24 = icmp eq %struct.z_stream_s* %23, null, !dbg !2770
  br i1 %24, label %25, label %26, !dbg !2771

; <label>:25:                                     ; preds = %22
  store i32 -2, i32* %4, align 4, !dbg !2772
  br label %42, !dbg !2772

; <label>:26:                                     ; preds = %22
  %27 = load %struct.z_stream_s*, %struct.z_stream_s** %5, align 8, !dbg !2773
  %28 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %27, i32 0, i32 7, !dbg !2774
  %29 = load %struct.internal_state*, %struct.internal_state** %28, align 8, !dbg !2774
  %30 = bitcast %struct.internal_state* %29 to %struct.hw_state*, !dbg !2775
  store %struct.hw_state* %30, %struct.hw_state** %10, align 8, !dbg !2776
  %31 = load %struct.hw_state*, %struct.hw_state** %10, align 8, !dbg !2777
  %32 = icmp eq %struct.hw_state* %31, null, !dbg !2779
  br i1 %32, label %33, label %34, !dbg !2780

; <label>:33:                                     ; preds = %26
  store i32 -2, i32* %4, align 4, !dbg !2781
  br label %42, !dbg !2781

; <label>:34:                                     ; preds = %26
  %35 = load %struct.hw_state*, %struct.hw_state** %10, align 8, !dbg !2783
  %36 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %35, i32 0, i32 3, !dbg !2784
  store %struct.zedc_stream_s* %36, %struct.zedc_stream_s** %9, align 8, !dbg !2785
  %37 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %9, align 8, !dbg !2786
  %38 = load i8*, i8** %6, align 8, !dbg !2787
  %39 = load i32*, i32** %7, align 8, !dbg !2788
  %40 = call i32 @zedc_inflateGetDictionary(%struct.zedc_stream_s* %37, i8* %38, i32* %39), !dbg !2789
  store i32 %40, i32* %8, align 4, !dbg !2790
  %41 = load i32, i32* %8, align 4, !dbg !2791
  store i32 %41, i32* %4, align 4, !dbg !2792
  br label %42, !dbg !2792

; <label>:42:                                     ; preds = %34, %33, %25
  %43 = load i32, i32* %4, align 4, !dbg !2793
  ret i32 %43, !dbg !2793
}

declare i32 @zedc_inflateGetDictionary(%struct.zedc_stream_s*, i8*, i32*) #3

; Function Attrs: nounwind uwtable
define i32 @h_inflateGetHeader(%struct.z_stream_s*, %struct.gz_header_s*) #0 !dbg !2794 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.z_stream_s*, align 8
  %5 = alloca %struct.gz_header_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.zedc_stream_s*, align 8
  %8 = alloca %struct.hw_state*, align 8
  store %struct.z_stream_s* %0, %struct.z_stream_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.z_stream_s** %4, metadata !2795, metadata !532), !dbg !2796
  store %struct.gz_header_s* %1, %struct.gz_header_s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gz_header_s** %5, metadata !2797, metadata !532), !dbg !2798
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2799, metadata !532), !dbg !2800
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %7, metadata !2801, metadata !532), !dbg !2802
  call void @llvm.dbg.declare(metadata %struct.hw_state** %8, metadata !2803, metadata !532), !dbg !2804
  br label %9, !dbg !2805, !llvm.loop !2806

; <label>:9:                                      ; preds = %2
  %10 = load i32, i32* @zlib_trace, align 4, !dbg !2807
  %11 = and i32 %10, 2, !dbg !2811
  %12 = icmp ne i32 %11, 0, !dbg !2811
  br i1 %12, label %13, label %18, !dbg !2812

; <label>:13:                                     ; preds = %9
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !2813
  %15 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !2815
  %16 = load %struct.gz_header_s*, %struct.gz_header_s** %5, align 8, !dbg !2816
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i32 0, i32 0), %struct.z_stream_s* %15, %struct.gz_header_s* %16), !dbg !2817
  br label %18, !dbg !2817

; <label>:18:                                     ; preds = %13, %9
  br label %19, !dbg !2818

; <label>:19:                                     ; preds = %18
  %20 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !2820
  %21 = icmp eq %struct.z_stream_s* %20, null, !dbg !2822
  br i1 %21, label %22, label %23, !dbg !2823

; <label>:22:                                     ; preds = %19
  store i32 -2, i32* %3, align 4, !dbg !2824
  br label %39, !dbg !2824

; <label>:23:                                     ; preds = %19
  %24 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !2825
  %25 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %24, i32 0, i32 7, !dbg !2826
  %26 = load %struct.internal_state*, %struct.internal_state** %25, align 8, !dbg !2826
  %27 = bitcast %struct.internal_state* %26 to %struct.hw_state*, !dbg !2827
  store %struct.hw_state* %27, %struct.hw_state** %8, align 8, !dbg !2828
  %28 = load %struct.hw_state*, %struct.hw_state** %8, align 8, !dbg !2829
  %29 = icmp eq %struct.hw_state* %28, null, !dbg !2831
  br i1 %29, label %30, label %31, !dbg !2832

; <label>:30:                                     ; preds = %23
  store i32 -2, i32* %3, align 4, !dbg !2833
  br label %39, !dbg !2833

; <label>:31:                                     ; preds = %23
  %32 = load %struct.hw_state*, %struct.hw_state** %8, align 8, !dbg !2834
  %33 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %32, i32 0, i32 3, !dbg !2835
  store %struct.zedc_stream_s* %33, %struct.zedc_stream_s** %7, align 8, !dbg !2836
  %34 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %7, align 8, !dbg !2837
  %35 = load %struct.gz_header_s*, %struct.gz_header_s** %5, align 8, !dbg !2838
  %36 = bitcast %struct.gz_header_s* %35 to %struct.gzedc_header_s*, !dbg !2839
  %37 = call i32 @zedc_inflateGetHeader(%struct.zedc_stream_s* %34, %struct.gzedc_header_s* %36), !dbg !2840
  store i32 %37, i32* %6, align 4, !dbg !2841
  %38 = load i32, i32* %6, align 4, !dbg !2842
  store i32 %38, i32* %3, align 4, !dbg !2843
  br label %39, !dbg !2843

; <label>:39:                                     ; preds = %31, %30, %22
  %40 = load i32, i32* %3, align 4, !dbg !2844
  ret i32 %40, !dbg !2844
}

declare i32 @zedc_inflateGetHeader(%struct.zedc_stream_s*, %struct.gzedc_header_s*) #3

; Function Attrs: nounwind uwtable
define i32 @h_inflate(%struct.z_stream_s*, i32) #0 !dbg !2845 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.z_stream_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.zedc_stream_s*, align 8
  %9 = alloca %struct.hw_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.z_stream_s* %0, %struct.z_stream_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.z_stream_s** %4, metadata !2846, metadata !532), !dbg !2847
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2848, metadata !532), !dbg !2849
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2850, metadata !532), !dbg !2851
  store i32 0, i32* %6, align 4, !dbg !2851
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2852, metadata !532), !dbg !2853
  store i32 1, i32* %7, align 4, !dbg !2853
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %8, metadata !2854, metadata !532), !dbg !2855
  call void @llvm.dbg.declare(metadata %struct.hw_state** %9, metadata !2856, metadata !532), !dbg !2857
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2858, metadata !532), !dbg !2859
  store i32 0, i32* %10, align 4, !dbg !2859
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2860, metadata !532), !dbg !2861
  %14 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !2862
  %15 = icmp eq %struct.z_stream_s* %14, null, !dbg !2864
  br i1 %15, label %16, label %17, !dbg !2865

; <label>:16:                                     ; preds = %2
  store i32 -2, i32* %3, align 4, !dbg !2866
  br label %543, !dbg !2866

; <label>:17:                                     ; preds = %2
  %18 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !2867
  %19 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %18, i32 0, i32 7, !dbg !2868
  %20 = load %struct.internal_state*, %struct.internal_state** %19, align 8, !dbg !2868
  %21 = bitcast %struct.internal_state* %20 to %struct.hw_state*, !dbg !2869
  store %struct.hw_state* %21, %struct.hw_state** %9, align 8, !dbg !2870
  %22 = load %struct.hw_state*, %struct.hw_state** %9, align 8, !dbg !2871
  %23 = icmp eq %struct.hw_state* %22, null, !dbg !2873
  br i1 %23, label %24, label %25, !dbg !2874

; <label>:24:                                     ; preds = %17
  store i32 -2, i32* %3, align 4, !dbg !2875
  br label %543, !dbg !2875

; <label>:25:                                     ; preds = %17
  %26 = load %struct.hw_state*, %struct.hw_state** %9, align 8, !dbg !2876
  %27 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %26, i32 0, i32 3, !dbg !2877
  store %struct.zedc_stream_s* %27, %struct.zedc_stream_s** %8, align 8, !dbg !2878
  %28 = load %struct.hw_state*, %struct.hw_state** %9, align 8, !dbg !2879
  %29 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %28, i32 0, i32 10, !dbg !2881
  %30 = load i64, i64* %29, align 8, !dbg !2881
  %31 = icmp eq i64 %30, 0, !dbg !2882
  br i1 %31, label %32, label %46, !dbg !2883

; <label>:32:                                     ; preds = %25
  %33 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !2884
  %34 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !2886
  call void @stream_zlib_to_zedc(%struct.zedc_stream_s* %33, %struct.z_stream_s* %34), !dbg !2887
  %35 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !2888
  %36 = load %struct.hw_state*, %struct.hw_state** %9, align 8, !dbg !2889
  %37 = load i32, i32* %5, align 4, !dbg !2890
  %38 = call i32 @__inflate(%struct.z_stream_s* %35, %struct.hw_state* %36, i32 %37), !dbg !2891
  %39 = load %struct.hw_state*, %struct.hw_state** %9, align 8, !dbg !2892
  %40 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %39, i32 0, i32 4, !dbg !2893
  store i32 %38, i32* %40, align 8, !dbg !2894
  %41 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !2895
  %42 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !2896
  call void @stream_zedc_to_zlib(%struct.z_stream_s* %41, %struct.zedc_stream_s* %42), !dbg !2897
  %43 = load %struct.hw_state*, %struct.hw_state** %9, align 8, !dbg !2898
  %44 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %43, i32 0, i32 4, !dbg !2899
  %45 = load i32, i32* %44, align 8, !dbg !2899
  store i32 %45, i32* %3, align 4, !dbg !2900
  br label %543, !dbg !2900

; <label>:46:                                     ; preds = %25
  %47 = load %struct.hw_state*, %struct.hw_state** %9, align 8, !dbg !2901
  %48 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %47, i32 0, i32 3, !dbg !2903
  %49 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %48, i32 0, i32 36, !dbg !2904
  %50 = getelementptr inbounds [3 x i32], [3 x i32]* %49, i64 0, i64 1, !dbg !2901
  %51 = load i32, i32* %50, align 4, !dbg !2901
  %52 = and i32 %51, 24, !dbg !2905
  %53 = icmp eq i32 %52, 16, !dbg !2906
  br i1 %53, label %54, label %64, !dbg !2907

; <label>:54:                                     ; preds = %46
  %55 = load %struct.hw_state*, %struct.hw_state** %9, align 8, !dbg !2908
  %56 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %55, i32 0, i32 10, !dbg !2909
  %57 = load i64, i64* %56, align 8, !dbg !2909
  %58 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !2910
  %59 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %58, i32 0, i32 4, !dbg !2911
  %60 = load i32, i32* %59, align 8, !dbg !2911
  %61 = zext i32 %60 to i64, !dbg !2910
  %62 = icmp ugt i64 %57, %61, !dbg !2912
  %63 = zext i1 %62 to i32, !dbg !2912
  store i32 %63, i32* %7, align 4, !dbg !2913
  br label %64, !dbg !2914

; <label>:64:                                     ; preds = %54, %46
  br label %65, !dbg !2915, !llvm.loop !2916

; <label>:65:                                     ; preds = %64
  %66 = load i32, i32* @zlib_trace, align 4, !dbg !2917
  %67 = and i32 %66, 2, !dbg !2921
  %68 = icmp ne i32 %67, 0, !dbg !2921
  br i1 %68, label %69, label %90, !dbg !2922

; <label>:69:                                     ; preds = %65
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !2923
  %71 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !2925
  %72 = load i32, i32* %5, align 4, !dbg !2926
  %73 = call i8* @flush_to_str(i32 %72), !dbg !2927
  %74 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !2928
  %75 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %74, i32 0, i32 1, !dbg !2929
  %76 = load i32, i32* %75, align 8, !dbg !2929
  %77 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !2930
  %78 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %77, i32 0, i32 4, !dbg !2931
  %79 = load i32, i32* %78, align 8, !dbg !2931
  %80 = load %struct.hw_state*, %struct.hw_state** %9, align 8, !dbg !2932
  %81 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %80, i32 0, i32 7, !dbg !2933
  %82 = load i64, i64* %81, align 8, !dbg !2933
  %83 = trunc i64 %82 to i32, !dbg !2934
  %84 = load %struct.hw_state*, %struct.hw_state** %9, align 8, !dbg !2935
  %85 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %84, i32 0, i32 11, !dbg !2936
  %86 = load i64, i64* %85, align 8, !dbg !2936
  %87 = trunc i64 %86 to i32, !dbg !2937
  %88 = load i32, i32* %7, align 4, !dbg !2938
  %89 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.24, i32 0, i32 0), %struct.z_stream_s* %71, i8* %73, i32 %76, i32 %79, i32 %83, i32 %87, i32 %88), !dbg !2939
  br label %90, !dbg !2941

; <label>:90:                                     ; preds = %69, %65
  br label %91, !dbg !2942

; <label>:91:                                     ; preds = %90
  %92 = load %struct.hw_state*, %struct.hw_state** %9, align 8, !dbg !2944
  %93 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %92, i32 0, i32 13, !dbg !2945
  %94 = load i8*, i8** %93, align 8, !dbg !2945
  %95 = load %struct.hw_state*, %struct.hw_state** %9, align 8, !dbg !2946
  %96 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %95, i32 0, i32 14, !dbg !2947
  %97 = load i8*, i8** %96, align 8, !dbg !2947
  %98 = ptrtoint i8* %94 to i64, !dbg !2948
  %99 = ptrtoint i8* %97 to i64, !dbg !2948
  %100 = sub i64 %98, %99, !dbg !2948
  %101 = trunc i64 %100 to i32, !dbg !2944
  store i32 %101, i32* %11, align 4, !dbg !2949
  %102 = load i32, i32* %11, align 4, !dbg !2950
  %103 = icmp eq i32 %102, 0, !dbg !2952
  br i1 %103, label %104, label %129, !dbg !2953

; <label>:104:                                    ; preds = %91
  %105 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !2954
  %106 = call i32 @zedc_inflate_pending_output(%struct.zedc_stream_s* %105), !dbg !2956
  %107 = icmp eq i32 %106, 0, !dbg !2957
  br i1 %107, label %108, label %129, !dbg !2958

; <label>:108:                                    ; preds = %104
  br label %109, !dbg !2959, !llvm.loop !2961

; <label>:109:                                    ; preds = %108
  %110 = load i32, i32* @zlib_trace, align 4, !dbg !2962
  %111 = and i32 %110, 2, !dbg !2966
  %112 = icmp ne i32 %111, 0, !dbg !2966
  br i1 %112, label %113, label %121, !dbg !2967

; <label>:113:                                    ; preds = %109
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !2968
  %115 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !2970
  %116 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !2971
  %117 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %116, i32 0, i32 62, !dbg !2972
  %118 = load i16, i16* %117, align 4, !dbg !2972
  %119 = zext i16 %118 to i32, !dbg !2971
  %120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %114, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.25, i32 0, i32 0), %struct.z_stream_s* %115, i32 %119), !dbg !2973
  br label %121, !dbg !2973

; <label>:121:                                    ; preds = %113, %109
  br label %122, !dbg !2974

; <label>:122:                                    ; preds = %121
  %123 = load %struct.hw_state*, %struct.hw_state** %9, align 8, !dbg !2976
  %124 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %123, i32 0, i32 4, !dbg !2978
  %125 = load i32, i32* %124, align 8, !dbg !2978
  %126 = icmp eq i32 %125, 1, !dbg !2979
  br i1 %126, label %127, label %128, !dbg !2980

; <label>:127:                                    ; preds = %122
  store i32 1, i32* %3, align 4, !dbg !2981
  br label %543, !dbg !2981

; <label>:128:                                    ; preds = %122
  br label %129, !dbg !2982

; <label>:129:                                    ; preds = %128, %104, %91
  br label %130, !dbg !2983, !llvm.loop !2984

; <label>:130:                                    ; preds = %518, %129
  br label %131, !dbg !2985, !llvm.loop !2987

; <label>:131:                                    ; preds = %130
  %132 = load i32, i32* @zlib_trace, align 4, !dbg !2988
  %133 = and i32 %132, 2, !dbg !2992
  %134 = icmp ne i32 %133, 0, !dbg !2992
  br i1 %134, label %135, label %142, !dbg !2993

; <label>:135:                                    ; preds = %131
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !2994
  %137 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !2996
  %138 = load i32, i32* %10, align 4, !dbg !2997
  %139 = load i32, i32* %5, align 4, !dbg !2998
  %140 = call i8* @flush_to_str(i32 %139), !dbg !2999
  %141 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %136, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i32 0, i32 0), %struct.z_stream_s* %137, i32 %138, i8* %140), !dbg !3000
  br label %142, !dbg !3002

; <label>:142:                                    ; preds = %135, %131
  br label %143, !dbg !3003

; <label>:143:                                    ; preds = %142
  %144 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !3005
  %145 = call i32 @h_flush_obuf(%struct.z_stream_s* %144), !dbg !3006
  store i32 %145, i32* %11, align 4, !dbg !3007
  %146 = load %struct.hw_state*, %struct.hw_state** %9, align 8, !dbg !3008
  %147 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %146, i32 0, i32 4, !dbg !3010
  %148 = load i32, i32* %147, align 8, !dbg !3010
  %149 = icmp eq i32 %148, 1, !dbg !3011
  br i1 %149, label %150, label %204, !dbg !3012

; <label>:150:                                    ; preds = %143
  %151 = load i32, i32* %11, align 4, !dbg !3013
  %152 = icmp eq i32 %151, 0, !dbg !3014
  br i1 %152, label %153, label %204, !dbg !3015

; <label>:153:                                    ; preds = %150
  call void @llvm.dbg.declare(metadata i32* %12, metadata !3017, metadata !532), !dbg !3019
  %154 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !3020
  %155 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !3021
  %156 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %155, i32 0, i32 3, !dbg !3022
  %157 = load i8*, i8** %156, align 8, !dbg !3022
  %158 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !3023
  %159 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %158, i32 0, i32 4, !dbg !3024
  %160 = load i32, i32* %159, align 8, !dbg !3024
  %161 = call i32 @zedc_read_pending_output(%struct.zedc_stream_s* %154, i8* %157, i32 %160), !dbg !3025
  store i32 %161, i32* %6, align 4, !dbg !3026
  %162 = load i32, i32* %6, align 4, !dbg !3027
  %163 = icmp slt i32 %162, 0, !dbg !3029
  br i1 %163, label %164, label %176, !dbg !3030

; <label>:164:                                    ; preds = %153
  br label %165, !dbg !3031, !llvm.loop !3033

; <label>:165:                                    ; preds = %164
  %166 = load i32, i32* @zlib_trace, align 4, !dbg !3034
  %167 = and i32 %166, 2, !dbg !3038
  %168 = icmp ne i32 %167, 0, !dbg !3038
  br i1 %168, label %169, label %173, !dbg !3039

; <label>:169:                                    ; preds = %165
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !3040
  %171 = load i32, i32* %6, align 4, !dbg !3042
  %172 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %170, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.h_inflate, i32 0, i32 0), i32 %171), !dbg !3043
  br label %173, !dbg !3043

; <label>:173:                                    ; preds = %169, %165
  br label %174, !dbg !3044

; <label>:174:                                    ; preds = %173
  %175 = load i32, i32* %6, align 4, !dbg !3046
  store i32 %175, i32* %3, align 4, !dbg !3047
  br label %543, !dbg !3047

; <label>:176:                                    ; preds = %153
  br label %177, !dbg !3048, !llvm.loop !3049

; <label>:177:                                    ; preds = %176
  %178 = load i32, i32* @zlib_trace, align 4, !dbg !3050
  %179 = and i32 %178, 2, !dbg !3054
  %180 = icmp ne i32 %179, 0, !dbg !3054
  br i1 %180, label %181, label %185, !dbg !3055

; <label>:181:                                    ; preds = %177
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !3056
  %183 = load i32, i32* %6, align 4, !dbg !3058
  %184 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %182, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.h_inflate, i32 0, i32 0), i32 %183), !dbg !3059
  br label %185, !dbg !3059

; <label>:185:                                    ; preds = %181, %177
  br label %186, !dbg !3060

; <label>:186:                                    ; preds = %185
  %187 = load i32, i32* %6, align 4, !dbg !3062
  %188 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !3063
  %189 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %188, i32 0, i32 4, !dbg !3064
  %190 = load i32, i32* %189, align 8, !dbg !3065
  %191 = sub i32 %190, %187, !dbg !3065
  store i32 %191, i32* %189, align 8, !dbg !3065
  %192 = load i32, i32* %6, align 4, !dbg !3066
  %193 = sext i32 %192 to i64, !dbg !3066
  %194 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !3067
  %195 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %194, i32 0, i32 5, !dbg !3068
  %196 = load i64, i64* %195, align 8, !dbg !3069
  %197 = add i64 %196, %193, !dbg !3069
  store i64 %197, i64* %195, align 8, !dbg !3069
  %198 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !3070
  %199 = call i32 @zedc_inflate_pending_output(%struct.zedc_stream_s* %198), !dbg !3071
  store i32 %199, i32* %12, align 4, !dbg !3072
  %200 = load i32, i32* %12, align 4, !dbg !3073
  %201 = icmp ne i32 %200, 0, !dbg !3075
  br i1 %201, label %202, label %203, !dbg !3076

; <label>:202:                                    ; preds = %186
  store i32 0, i32* %3, align 4, !dbg !3077
  br label %543, !dbg !3077

; <label>:203:                                    ; preds = %186
  store i32 1, i32* %3, align 4, !dbg !3078
  br label %543, !dbg !3078

; <label>:204:                                    ; preds = %150, %143
  %205 = load i32, i32* %11, align 4, !dbg !3079
  %206 = icmp ne i32 %205, 0, !dbg !3081
  br i1 %206, label %211, label %207, !dbg !3082

; <label>:207:                                    ; preds = %204
  %208 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !3083
  %209 = call i32 @zedc_inflate_pending_output(%struct.zedc_stream_s* %208), !dbg !3085
  %210 = icmp ne i32 %209, 0, !dbg !3085
  br i1 %210, label %211, label %217, !dbg !3086

; <label>:211:                                    ; preds = %207, %204
  %212 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !3087
  %213 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %212, i32 0, i32 4, !dbg !3088
  %214 = load i32, i32* %213, align 8, !dbg !3088
  %215 = icmp eq i32 %214, 0, !dbg !3089
  br i1 %215, label %216, label %217, !dbg !3090

; <label>:216:                                    ; preds = %211
  store i32 0, i32* %3, align 4, !dbg !3092
  br label %543, !dbg !3092

; <label>:217:                                    ; preds = %211, %207
  %218 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !3093
  %219 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %218, i32 0, i32 1, !dbg !3095
  %220 = load i32, i32* %219, align 8, !dbg !3095
  %221 = icmp eq i32 0, %220, !dbg !3096
  br i1 %221, label %222, label %232, !dbg !3097

; <label>:222:                                    ; preds = %217
  %223 = load i32, i32* %5, align 4, !dbg !3098
  %224 = icmp eq i32 0, %223, !dbg !3099
  br i1 %224, label %231, label %225, !dbg !3100

; <label>:225:                                    ; preds = %222
  %226 = load i32, i32* %5, align 4, !dbg !3101
  %227 = icmp eq i32 1, %226, !dbg !3102
  br i1 %227, label %231, label %228, !dbg !3103

; <label>:228:                                    ; preds = %225
  %229 = load i32, i32* %5, align 4, !dbg !3104
  %230 = icmp eq i32 3, %229, !dbg !3105
  br i1 %230, label %231, label %232, !dbg !3106

; <label>:231:                                    ; preds = %228, %225, %222
  store i32 0, i32* %3, align 4, !dbg !3107
  br label %543, !dbg !3107

; <label>:232:                                    ; preds = %228, %217
  %233 = load %struct.hw_state*, %struct.hw_state** %9, align 8, !dbg !3108
  %234 = call i32 @output_buffer_empty(%struct.hw_state* %233), !dbg !3110
  %235 = icmp ne i32 %234, 0, !dbg !3110
  br i1 %235, label %242, label %236, !dbg !3111

; <label>:236:                                    ; preds = %232
  br label %237, !dbg !3112, !llvm.loop !3114

; <label>:237:                                    ; preds = %236
  %238 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !3115
  %239 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !3118
  %240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %238, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 1500, %struct.z_stream_s* %239), !dbg !3119
  br label %241, !dbg !3120

; <label>:241:                                    ; preds = %237
  store i32 -3, i32* %3, align 4, !dbg !3121
  br label %543, !dbg !3121

; <label>:242:                                    ; preds = %232
  br label %243, !dbg !3122, !llvm.loop !3123

; <label>:243:                                    ; preds = %242
  %244 = load i32, i32* @zlib_trace, align 4, !dbg !3124
  %245 = and i32 %244, 2, !dbg !3128
  %246 = icmp ne i32 %245, 0, !dbg !3128
  br i1 %246, label %247, label %258, !dbg !3129

; <label>:247:                                    ; preds = %243
  %248 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !3130
  %249 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !3132
  %250 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !3133
  %251 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %250, i32 0, i32 1, !dbg !3134
  %252 = load i32, i32* %251, align 8, !dbg !3134
  %253 = load %struct.hw_state*, %struct.hw_state** %9, align 8, !dbg !3135
  %254 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %253, i32 0, i32 10, !dbg !3136
  %255 = load i64, i64* %254, align 8, !dbg !3136
  %256 = trunc i64 %255 to i32, !dbg !3137
  %257 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %248, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.30, i32 0, i32 0), %struct.z_stream_s* %249, i32 %252, i32 %256), !dbg !3138
  br label %258, !dbg !3138

; <label>:258:                                    ; preds = %247, %243
  br label %259, !dbg !3139

; <label>:259:                                    ; preds = %258
  %260 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !3141
  %261 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %260, i32 0, i32 0, !dbg !3142
  %262 = load i8*, i8** %261, align 8, !dbg !3142
  %263 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !3143
  %264 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %263, i32 0, i32 7, !dbg !3144
  store i8* %262, i8** %264, align 8, !dbg !3145
  %265 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !3146
  %266 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %265, i32 0, i32 1, !dbg !3147
  %267 = load i32, i32* %266, align 8, !dbg !3147
  %268 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !3148
  %269 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %268, i32 0, i32 8, !dbg !3149
  store i32 %267, i32* %269, align 8, !dbg !3150
  %270 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !3151
  %271 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %270, i32 0, i32 2, !dbg !3152
  %272 = load i64, i64* %271, align 8, !dbg !3152
  %273 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !3153
  %274 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %273, i32 0, i32 9, !dbg !3154
  store i64 %272, i64* %274, align 8, !dbg !3155
  %275 = load i32, i32* %7, align 4, !dbg !3156
  %276 = icmp ne i32 %275, 0, !dbg !3156
  br i1 %276, label %277, label %291, !dbg !3158

; <label>:277:                                    ; preds = %259
  %278 = load %struct.hw_state*, %struct.hw_state** %9, align 8, !dbg !3159
  %279 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %278, i32 0, i32 12, !dbg !3161
  %280 = load i8*, i8** %279, align 8, !dbg !3161
  %281 = load %struct.hw_state*, %struct.hw_state** %9, align 8, !dbg !3162
  %282 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %281, i32 0, i32 14, !dbg !3163
  store i8* %280, i8** %282, align 8, !dbg !3164
  %283 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !3165
  %284 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %283, i32 0, i32 10, !dbg !3166
  store i8* %280, i8** %284, align 8, !dbg !3167
  %285 = load %struct.hw_state*, %struct.hw_state** %9, align 8, !dbg !3168
  %286 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %285, i32 0, i32 10, !dbg !3169
  %287 = load i64, i64* %286, align 8, !dbg !3169
  %288 = trunc i64 %287 to i32, !dbg !3168
  %289 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !3170
  %290 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %289, i32 0, i32 11, !dbg !3171
  store i32 %288, i32* %290, align 8, !dbg !3172
  br label %302, !dbg !3173

; <label>:291:                                    ; preds = %259
  %292 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !3174
  %293 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %292, i32 0, i32 3, !dbg !3176
  %294 = load i8*, i8** %293, align 8, !dbg !3176
  %295 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !3177
  %296 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %295, i32 0, i32 10, !dbg !3178
  store i8* %294, i8** %296, align 8, !dbg !3179
  %297 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !3180
  %298 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %297, i32 0, i32 4, !dbg !3181
  %299 = load i32, i32* %298, align 8, !dbg !3181
  %300 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !3182
  %301 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %300, i32 0, i32 11, !dbg !3183
  store i32 %299, i32* %301, align 8, !dbg !3184
  br label %302

; <label>:302:                                    ; preds = %291, %277
  %303 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !3185
  %304 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %303, i32 0, i32 5, !dbg !3186
  %305 = load i64, i64* %304, align 8, !dbg !3186
  %306 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !3187
  %307 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %306, i32 0, i32 12, !dbg !3188
  store i64 %305, i64* %307, align 8, !dbg !3189
  %308 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !3190
  %309 = load %struct.hw_state*, %struct.hw_state** %9, align 8, !dbg !3191
  %310 = load i32, i32* %5, align 4, !dbg !3192
  %311 = call i32 @__inflate(%struct.z_stream_s* %308, %struct.hw_state* %309, i32 %310), !dbg !3193
  %312 = load %struct.hw_state*, %struct.hw_state** %9, align 8, !dbg !3194
  %313 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %312, i32 0, i32 4, !dbg !3195
  store i32 %311, i32* %313, align 8, !dbg !3196
  %314 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !3197
  %315 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %314, i32 0, i32 7, !dbg !3198
  %316 = load i8*, i8** %315, align 8, !dbg !3198
  %317 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !3199
  %318 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %317, i32 0, i32 0, !dbg !3200
  store i8* %316, i8** %318, align 8, !dbg !3201
  %319 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !3202
  %320 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %319, i32 0, i32 8, !dbg !3203
  %321 = load i32, i32* %320, align 8, !dbg !3203
  %322 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !3204
  %323 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %322, i32 0, i32 1, !dbg !3205
  store i32 %321, i32* %323, align 8, !dbg !3206
  %324 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !3207
  %325 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %324, i32 0, i32 9, !dbg !3208
  %326 = load i64, i64* %325, align 8, !dbg !3208
  %327 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !3209
  %328 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %327, i32 0, i32 2, !dbg !3210
  store i64 %326, i64* %328, align 8, !dbg !3211
  %329 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !3212
  %330 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %329, i32 0, i32 6, !dbg !3213
  %331 = load i32, i32* %330, align 8, !dbg !3213
  %332 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !3214
  %333 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %332, i32 0, i32 11, !dbg !3215
  store i32 %331, i32* %333, align 8, !dbg !3216
  %334 = load i32, i32* %7, align 4, !dbg !3217
  %335 = icmp ne i32 %334, 0, !dbg !3217
  br i1 %335, label %336, label %348, !dbg !3219

; <label>:336:                                    ; preds = %302
  %337 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !3220
  %338 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %337, i32 0, i32 10, !dbg !3222
  %339 = load i8*, i8** %338, align 8, !dbg !3222
  %340 = load %struct.hw_state*, %struct.hw_state** %9, align 8, !dbg !3223
  %341 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %340, i32 0, i32 13, !dbg !3224
  store i8* %339, i8** %341, align 8, !dbg !3225
  %342 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !3226
  %343 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %342, i32 0, i32 11, !dbg !3227
  %344 = load i32, i32* %343, align 8, !dbg !3227
  %345 = zext i32 %344 to i64, !dbg !3226
  %346 = load %struct.hw_state*, %struct.hw_state** %9, align 8, !dbg !3228
  %347 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %346, i32 0, i32 11, !dbg !3229
  store i64 %345, i64* %347, align 8, !dbg !3230
  br label %364, !dbg !3231

; <label>:348:                                    ; preds = %302
  %349 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !3232
  %350 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %349, i32 0, i32 10, !dbg !3234
  %351 = load i8*, i8** %350, align 8, !dbg !3234
  %352 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !3235
  %353 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %352, i32 0, i32 3, !dbg !3236
  store i8* %351, i8** %353, align 8, !dbg !3237
  %354 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !3238
  %355 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %354, i32 0, i32 11, !dbg !3239
  %356 = load i32, i32* %355, align 8, !dbg !3239
  %357 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !3240
  %358 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %357, i32 0, i32 4, !dbg !3241
  store i32 %356, i32* %358, align 8, !dbg !3242
  %359 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !3243
  %360 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %359, i32 0, i32 12, !dbg !3244
  %361 = load i64, i64* %360, align 8, !dbg !3244
  %362 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !3245
  %363 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %362, i32 0, i32 5, !dbg !3246
  store i64 %361, i64* %363, align 8, !dbg !3247
  br label %364

; <label>:364:                                    ; preds = %348, %336
  %365 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !3248
  %366 = call i32 @h_flush_obuf(%struct.z_stream_s* %365), !dbg !3249
  %367 = load %struct.hw_state*, %struct.hw_state** %9, align 8, !dbg !3250
  %368 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %367, i32 0, i32 4, !dbg !3252
  %369 = load i32, i32* %368, align 8, !dbg !3252
  %370 = icmp eq i32 %369, 2, !dbg !3253
  br i1 %370, label %371, label %375, !dbg !3254

; <label>:371:                                    ; preds = %364
  %372 = load %struct.hw_state*, %struct.hw_state** %9, align 8, !dbg !3255
  %373 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %372, i32 0, i32 4, !dbg !3256
  %374 = load i32, i32* %373, align 8, !dbg !3256
  store i32 %374, i32* %3, align 4, !dbg !3257
  br label %543, !dbg !3257

; <label>:375:                                    ; preds = %364
  %376 = load %struct.hw_state*, %struct.hw_state** %9, align 8, !dbg !3258
  %377 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %376, i32 0, i32 4, !dbg !3260
  %378 = load i32, i32* %377, align 8, !dbg !3260
  %379 = icmp eq i32 %378, -2, !dbg !3261
  br i1 %379, label %390, label %380, !dbg !3262

; <label>:380:                                    ; preds = %375
  %381 = load %struct.hw_state*, %struct.hw_state** %9, align 8, !dbg !3263
  %382 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %381, i32 0, i32 4, !dbg !3264
  %383 = load i32, i32* %382, align 8, !dbg !3264
  %384 = icmp eq i32 %383, -3, !dbg !3265
  br i1 %384, label %390, label %385, !dbg !3266

; <label>:385:                                    ; preds = %380
  %386 = load %struct.hw_state*, %struct.hw_state** %9, align 8, !dbg !3267
  %387 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %386, i32 0, i32 4, !dbg !3268
  %388 = load i32, i32* %387, align 8, !dbg !3268
  %389 = icmp eq i32 %388, -5, !dbg !3269
  br i1 %389, label %390, label %394, !dbg !3270

; <label>:390:                                    ; preds = %385, %380, %375
  %391 = load %struct.hw_state*, %struct.hw_state** %9, align 8, !dbg !3271
  %392 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %391, i32 0, i32 4, !dbg !3272
  %393 = load i32, i32* %392, align 8, !dbg !3272
  store i32 %393, i32* %3, align 4, !dbg !3273
  br label %543, !dbg !3273

; <label>:394:                                    ; preds = %385
  %395 = load %struct.hw_state*, %struct.hw_state** %9, align 8, !dbg !3274
  %396 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %395, i32 0, i32 4, !dbg !3276
  %397 = load i32, i32* %396, align 8, !dbg !3276
  %398 = icmp ne i32 %397, 1, !dbg !3277
  br i1 %398, label %399, label %448, !dbg !3278

; <label>:399:                                    ; preds = %394
  %400 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !3279
  %401 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %400, i32 0, i32 4, !dbg !3281
  %402 = load i32, i32* %401, align 8, !dbg !3281
  %403 = icmp eq i32 %402, 0, !dbg !3282
  br i1 %403, label %404, label %448, !dbg !3283

; <label>:404:                                    ; preds = %399
  call void @llvm.dbg.declare(metadata i32* %13, metadata !3284, metadata !532), !dbg !3286
  %405 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !3287
  %406 = call i32 @__check_stream_end(%struct.z_stream_s* %405), !dbg !3288
  store i32 %406, i32* %13, align 4, !dbg !3289
  %407 = load i32, i32* %13, align 4, !dbg !3290
  %408 = icmp eq i32 %407, 1, !dbg !3292
  br i1 %408, label %409, label %427, !dbg !3293

; <label>:409:                                    ; preds = %404
  br label %410, !dbg !3294, !llvm.loop !3296

; <label>:410:                                    ; preds = %409
  %411 = load i32, i32* @zlib_trace, align 4, !dbg !3297
  %412 = and i32 %411, 2, !dbg !3301
  %413 = icmp ne i32 %412, 0, !dbg !3301
  br i1 %413, label %414, label %423, !dbg !3302

; <label>:414:                                    ; preds = %410
  %415 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !3303
  %416 = load %struct.hw_state*, %struct.hw_state** %9, align 8, !dbg !3305
  %417 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %416, i32 0, i32 11, !dbg !3306
  %418 = load i64, i64* %417, align 8, !dbg !3306
  %419 = load %struct.hw_state*, %struct.hw_state** %9, align 8, !dbg !3307
  %420 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %419, i32 0, i32 10, !dbg !3308
  %421 = load i64, i64* %420, align 8, !dbg !3308
  %422 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %415, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.31, i32 0, i32 0), i64 %418, i64 %421), !dbg !3309
  br label %423, !dbg !3309

; <label>:423:                                    ; preds = %414, %410
  br label %424, !dbg !3310

; <label>:424:                                    ; preds = %423
  %425 = load %struct.hw_state*, %struct.hw_state** %9, align 8, !dbg !3312
  %426 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %425, i32 0, i32 4, !dbg !3313
  store i32 1, i32* %426, align 8, !dbg !3314
  br label %427, !dbg !3315

; <label>:427:                                    ; preds = %424, %404
  br label %428, !dbg !3316, !llvm.loop !3317

; <label>:428:                                    ; preds = %427
  %429 = load i32, i32* @zlib_trace, align 4, !dbg !3318
  %430 = and i32 %429, 2, !dbg !3322
  %431 = icmp ne i32 %430, 0, !dbg !3322
  br i1 %431, label %432, label %446, !dbg !3323

; <label>:432:                                    ; preds = %428
  %433 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !3324
  %434 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !3326
  %435 = load i32, i32* %5, align 4, !dbg !3327
  %436 = call i8* @flush_to_str(i32 %435), !dbg !3328
  %437 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !3329
  %438 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %437, i32 0, i32 1, !dbg !3330
  %439 = load i32, i32* %438, align 8, !dbg !3330
  %440 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !3331
  %441 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %440, i32 0, i32 4, !dbg !3332
  %442 = load i32, i32* %441, align 8, !dbg !3332
  %443 = load i32, i32* %6, align 4, !dbg !3333
  %444 = call i8* @ret_to_str(i32 %443), !dbg !3334
  %445 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %433, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.32, i32 0, i32 0), %struct.z_stream_s* %434, i8* %436, i32 %439, i32 %442, i8* %444), !dbg !3336
  br label %446, !dbg !3338

; <label>:446:                                    ; preds = %432, %428
  br label %447, !dbg !3339

; <label>:447:                                    ; preds = %446
  br label %448, !dbg !3341

; <label>:448:                                    ; preds = %447, %399, %394
  %449 = load %struct.hw_state*, %struct.hw_state** %9, align 8, !dbg !3342
  %450 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %449, i32 0, i32 4, !dbg !3344
  %451 = load i32, i32* %450, align 8, !dbg !3344
  %452 = icmp eq i32 %451, 1, !dbg !3345
  br i1 %452, label %453, label %476, !dbg !3346

; <label>:453:                                    ; preds = %448
  %454 = load %struct.hw_state*, %struct.hw_state** %9, align 8, !dbg !3347
  %455 = call i32 @output_buffer_empty(%struct.hw_state* %454), !dbg !3349
  %456 = icmp ne i32 %455, 0, !dbg !3349
  br i1 %456, label %457, label %476, !dbg !3350

; <label>:457:                                    ; preds = %453
  %458 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !3351
  %459 = call i32 @zedc_inflate_pending_output(%struct.zedc_stream_s* %458), !dbg !3352
  %460 = icmp eq i32 %459, 0, !dbg !3353
  br i1 %460, label %461, label %476, !dbg !3354

; <label>:461:                                    ; preds = %457
  br label %462, !dbg !3355, !llvm.loop !3357

; <label>:462:                                    ; preds = %461
  %463 = load i32, i32* @zlib_trace, align 4, !dbg !3358
  %464 = and i32 %463, 2, !dbg !3362
  %465 = icmp ne i32 %464, 0, !dbg !3362
  br i1 %465, label %466, label %474, !dbg !3363

; <label>:466:                                    ; preds = %462
  %467 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !3364
  %468 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !3366
  %469 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !3367
  %470 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %469, i32 0, i32 62, !dbg !3368
  %471 = load i16, i16* %470, align 4, !dbg !3368
  %472 = zext i16 %471 to i32, !dbg !3367
  %473 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %467, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.33, i32 0, i32 0), %struct.z_stream_s* %468, i32 %472), !dbg !3369
  br label %474, !dbg !3369

; <label>:474:                                    ; preds = %466, %462
  br label %475, !dbg !3370

; <label>:475:                                    ; preds = %474
  store i32 1, i32* %3, align 4, !dbg !3372
  br label %543, !dbg !3372

; <label>:476:                                    ; preds = %457, %453, %448
  %477 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !3373
  %478 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %477, i32 0, i32 4, !dbg !3375
  %479 = load i32, i32* %478, align 8, !dbg !3375
  %480 = icmp eq i32 %479, 0, !dbg !3376
  br i1 %480, label %481, label %482, !dbg !3377

; <label>:481:                                    ; preds = %476
  store i32 0, i32* %3, align 4, !dbg !3378
  br label %543, !dbg !3378

; <label>:482:                                    ; preds = %476
  br label %483, !dbg !3379, !llvm.loop !3380

; <label>:483:                                    ; preds = %482
  %484 = load i32, i32* @zlib_trace, align 4, !dbg !3381
  %485 = and i32 %484, 2, !dbg !3385
  %486 = icmp ne i32 %485, 0, !dbg !3385
  br i1 %486, label %487, label %494, !dbg !3386

; <label>:487:                                    ; preds = %483
  %488 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !3387
  %489 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !3389
  %490 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !3390
  %491 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %490, i32 0, i32 11, !dbg !3391
  %492 = load i32, i32* %491, align 8, !dbg !3391
  %493 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %488, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i32 0, i32 0), %struct.z_stream_s* %489, i32 %492), !dbg !3392
  br label %494, !dbg !3392

; <label>:494:                                    ; preds = %487, %483
  br label %495, !dbg !3393

; <label>:495:                                    ; preds = %494
  %496 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !3395
  %497 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %496, i32 0, i32 11, !dbg !3397
  %498 = load i32, i32* %497, align 8, !dbg !3397
  %499 = and i32 %498, 128, !dbg !3398
  %500 = icmp ne i32 %499, 0, !dbg !3398
  br i1 %500, label %501, label %515, !dbg !3399

; <label>:501:                                    ; preds = %495
  br label %502, !dbg !3400, !llvm.loop !3402

; <label>:502:                                    ; preds = %501
  %503 = load i32, i32* @zlib_trace, align 4, !dbg !3403
  %504 = and i32 %503, 2, !dbg !3407
  %505 = icmp ne i32 %504, 0, !dbg !3407
  br i1 %505, label %506, label %510, !dbg !3408

; <label>:506:                                    ; preds = %502
  %507 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !3409
  %508 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !3411
  %509 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %507, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.35, i32 0, i32 0), %struct.z_stream_s* %508), !dbg !3412
  br label %510, !dbg !3412

; <label>:510:                                    ; preds = %506, %502
  br label %511, !dbg !3413

; <label>:511:                                    ; preds = %510
  %512 = load %struct.hw_state*, %struct.hw_state** %9, align 8, !dbg !3415
  %513 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %512, i32 0, i32 4, !dbg !3416
  %514 = load i32, i32* %513, align 8, !dbg !3416
  store i32 %514, i32* %3, align 4, !dbg !3417
  br label %543, !dbg !3417

; <label>:515:                                    ; preds = %495
  %516 = load i32, i32* %10, align 4, !dbg !3418
  %517 = add i32 %516, 1, !dbg !3418
  store i32 %517, i32* %10, align 4, !dbg !3418
  br label %518, !dbg !3419

; <label>:518:                                    ; preds = %515
  %519 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !3420
  %520 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %519, i32 0, i32 1, !dbg !3422
  %521 = load i32, i32* %520, align 8, !dbg !3422
  %522 = icmp ne i32 %521, 0, !dbg !3423
  br i1 %522, label %130, label %523, !dbg !3424, !llvm.loop !2984

; <label>:523:                                    ; preds = %518
  br label %524, !dbg !3425, !llvm.loop !3426

; <label>:524:                                    ; preds = %523
  %525 = load i32, i32* @zlib_trace, align 4, !dbg !3427
  %526 = and i32 %525, 2, !dbg !3431
  %527 = icmp ne i32 %526, 0, !dbg !3431
  br i1 %527, label %528, label %540, !dbg !3432

; <label>:528:                                    ; preds = %524
  %529 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !3433
  %530 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !3435
  %531 = load i32, i32* %5, align 4, !dbg !3436
  %532 = call i8* @flush_to_str(i32 %531), !dbg !3437
  %533 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !3438
  %534 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %533, i32 0, i32 1, !dbg !3439
  %535 = load i32, i32* %534, align 8, !dbg !3439
  %536 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !3440
  %537 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %536, i32 0, i32 4, !dbg !3441
  %538 = load i32, i32* %537, align 8, !dbg !3441
  %539 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %529, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.36, i32 0, i32 0), %struct.z_stream_s* %530, i8* %532, i32 %535, i32 %538), !dbg !3442
  br label %540, !dbg !3444

; <label>:540:                                    ; preds = %528, %524
  br label %541, !dbg !3445

; <label>:541:                                    ; preds = %540
  %542 = load i32, i32* %6, align 4, !dbg !3447
  store i32 %542, i32* %3, align 4, !dbg !3448
  br label %543, !dbg !3448

; <label>:543:                                    ; preds = %541, %511, %481, %475, %390, %371, %241, %231, %216, %203, %202, %174, %127, %32, %24, %16
  %544 = load i32, i32* %3, align 4, !dbg !3449
  ret i32 %544, !dbg !3449
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__inflate(%struct.z_stream_s*, %struct.hw_state*, i32) #5 !dbg !3450 {
  %4 = alloca %struct.z_stream_s*, align 8
  %5 = alloca %struct.hw_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.zedc_stream_s*, align 8
  store %struct.z_stream_s* %0, %struct.z_stream_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.z_stream_s** %4, metadata !3451, metadata !532), !dbg !3452
  store %struct.hw_state* %1, %struct.hw_state** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.hw_state** %5, metadata !3453, metadata !532), !dbg !3454
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3455, metadata !532), !dbg !3456
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3457, metadata !532), !dbg !3458
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %8, metadata !3459, metadata !532), !dbg !3460
  %9 = load %struct.hw_state*, %struct.hw_state** %5, align 8, !dbg !3461
  %10 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %9, i32 0, i32 3, !dbg !3462
  store %struct.zedc_stream_s* %10, %struct.zedc_stream_s** %8, align 8, !dbg !3460
  br label %11, !dbg !3463, !llvm.loop !3464

; <label>:11:                                     ; preds = %3
  %12 = load i32, i32* @zlib_trace, align 4, !dbg !3465
  %13 = and i32 %12, 2, !dbg !3469
  %14 = icmp ne i32 %13, 0, !dbg !3469
  br i1 %14, label %15, label %48, !dbg !3470

; <label>:15:                                     ; preds = %11
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !3471
  %17 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !3473
  %18 = load %struct.hw_state*, %struct.hw_state** %5, align 8, !dbg !3474
  %19 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %18, i32 0, i32 15, !dbg !3475
  %20 = load i32, i32* %19, align 8, !dbg !3475
  %21 = load i32, i32* %6, align 4, !dbg !3476
  %22 = call i8* @flush_to_str(i32 %21), !dbg !3477
  %23 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !3478
  %24 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %23, i32 0, i32 7, !dbg !3479
  %25 = load i8*, i8** %24, align 8, !dbg !3479
  %26 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !3480
  %27 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %26, i32 0, i32 8, !dbg !3481
  %28 = load i32, i32* %27, align 8, !dbg !3481
  %29 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !3482
  %30 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %29, i32 0, i32 10, !dbg !3483
  %31 = load i8*, i8** %30, align 8, !dbg !3483
  %32 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !3484
  %33 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %32, i32 0, i32 11, !dbg !3485
  %34 = load i32, i32* %33, align 8, !dbg !3485
  %35 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !3486
  %36 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %35, i32 0, i32 9, !dbg !3487
  %37 = load i64, i64* %36, align 8, !dbg !3487
  %38 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !3488
  %39 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %38, i32 0, i32 12, !dbg !3489
  %40 = load i64, i64* %39, align 8, !dbg !3489
  %41 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !3490
  %42 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %41, i32 0, i32 13, !dbg !3491
  %43 = load i32, i32* %42, align 8, !dbg !3491
  %44 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !3492
  %45 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %44, i32 0, i32 14, !dbg !3493
  %46 = load i32, i32* %45, align 4, !dbg !3493
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.50, i32 0, i32 0), %struct.z_stream_s* %17, i32 %20, i8* %22, i8* %25, i32 %28, i8* %31, i32 %34, i64 %37, i64 %40, i32 %43, i32 %46), !dbg !3494
  br label %48, !dbg !3496

; <label>:48:                                     ; preds = %15, %11
  br label %49, !dbg !3497

; <label>:49:                                     ; preds = %48
  %50 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !3499
  %51 = load i32, i32* %6, align 4, !dbg !3500
  %52 = call i32 @zedc_inflate(%struct.zedc_stream_s* %50, i32 %51), !dbg !3501
  store i32 %52, i32* %7, align 4, !dbg !3502
  %53 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !3503
  %54 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !3504
  call void @__fixup_crc_or_adler(%struct.z_stream_s* %53, %struct.zedc_stream_s* %54), !dbg !3505
  br label %55, !dbg !3506, !llvm.loop !3507

; <label>:55:                                     ; preds = %49
  %56 = load i32, i32* @zlib_trace, align 4, !dbg !3508
  %57 = and i32 %56, 2, !dbg !3512
  %58 = icmp ne i32 %57, 0, !dbg !3512
  br i1 %58, label %59, label %94, !dbg !3513

; <label>:59:                                     ; preds = %55
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !3514
  %61 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8, !dbg !3516
  %62 = load %struct.hw_state*, %struct.hw_state** %5, align 8, !dbg !3517
  %63 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %62, i32 0, i32 15, !dbg !3518
  %64 = load i32, i32* %63, align 8, !dbg !3518
  %65 = load i32, i32* %6, align 4, !dbg !3519
  %66 = call i8* @flush_to_str(i32 %65), !dbg !3520
  %67 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !3521
  %68 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %67, i32 0, i32 7, !dbg !3522
  %69 = load i8*, i8** %68, align 8, !dbg !3522
  %70 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !3523
  %71 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %70, i32 0, i32 8, !dbg !3524
  %72 = load i32, i32* %71, align 8, !dbg !3524
  %73 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !3525
  %74 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %73, i32 0, i32 10, !dbg !3526
  %75 = load i8*, i8** %74, align 8, !dbg !3526
  %76 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !3527
  %77 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %76, i32 0, i32 11, !dbg !3528
  %78 = load i32, i32* %77, align 8, !dbg !3528
  %79 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !3529
  %80 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %79, i32 0, i32 9, !dbg !3530
  %81 = load i64, i64* %80, align 8, !dbg !3530
  %82 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !3531
  %83 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %82, i32 0, i32 12, !dbg !3532
  %84 = load i64, i64* %83, align 8, !dbg !3532
  %85 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !3533
  %86 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %85, i32 0, i32 13, !dbg !3534
  %87 = load i32, i32* %86, align 8, !dbg !3534
  %88 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %8, align 8, !dbg !3535
  %89 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %88, i32 0, i32 14, !dbg !3536
  %90 = load i32, i32* %89, align 4, !dbg !3536
  %91 = load i32, i32* %7, align 4, !dbg !3537
  %92 = call i8* @ret_to_str(i32 %91), !dbg !3538
  %93 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str.51, i32 0, i32 0), %struct.z_stream_s* %61, i32 %64, i8* %66, i8* %69, i32 %72, i8* %75, i32 %78, i64 %81, i64 %84, i32 %87, i32 %90, i8* %92), !dbg !3540
  br label %94, !dbg !3542

; <label>:94:                                     ; preds = %59, %55
  br label %95, !dbg !3543

; <label>:95:                                     ; preds = %94
  %96 = load %struct.hw_state*, %struct.hw_state** %5, align 8, !dbg !3545
  %97 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %96, i32 0, i32 15, !dbg !3546
  %98 = load i32, i32* %97, align 8, !dbg !3547
  %99 = add i32 %98, 1, !dbg !3547
  store i32 %99, i32* %97, align 8, !dbg !3547
  %100 = load i32, i32* %7, align 4, !dbg !3548
  ret i32 %100, !dbg !3549
}

declare i32 @zedc_inflate_pending_output(%struct.zedc_stream_s*) #3

declare i32 @zedc_read_pending_output(%struct.zedc_stream_s*, i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @output_buffer_empty(%struct.hw_state*) #0 !dbg !3550 {
  %2 = alloca %struct.hw_state*, align 8
  store %struct.hw_state* %0, %struct.hw_state** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.hw_state** %2, metadata !3553, metadata !532), !dbg !3554
  %3 = load %struct.hw_state*, %struct.hw_state** %2, align 8, !dbg !3555
  %4 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %3, i32 0, i32 11, !dbg !3556
  %5 = load i64, i64* %4, align 8, !dbg !3556
  %6 = load %struct.hw_state*, %struct.hw_state** %2, align 8, !dbg !3557
  %7 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %6, i32 0, i32 10, !dbg !3558
  %8 = load i64, i64* %7, align 8, !dbg !3558
  %9 = icmp eq i64 %5, %8, !dbg !3559
  %10 = zext i1 %9 to i32, !dbg !3559
  ret i32 %10, !dbg !3560
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__check_stream_end(%struct.z_stream_s*) #5 !dbg !3561 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.z_stream_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.stream_ending, align 4
  %8 = alloca %struct.hw_state*, align 8
  %9 = alloca %struct.zedc_stream_s*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.z_stream_s* %0, %struct.z_stream_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.z_stream_s** %3, metadata !3562, metadata !532), !dbg !3563
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3564, metadata !532), !dbg !3565
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3566, metadata !532), !dbg !3567
  store i32 0, i32* %5, align 4, !dbg !3567
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3568, metadata !532), !dbg !3569
  call void @llvm.dbg.declare(metadata %struct.stream_ending* %7, metadata !3570, metadata !532), !dbg !3583
  call void @llvm.dbg.declare(metadata %struct.hw_state** %8, metadata !3584, metadata !532), !dbg !3585
  %18 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !3586
  %19 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %18, i32 0, i32 7, !dbg !3587
  %20 = load %struct.internal_state*, %struct.internal_state** %19, align 8, !dbg !3587
  %21 = bitcast %struct.internal_state* %20 to %struct.hw_state*, !dbg !3588
  store %struct.hw_state* %21, %struct.hw_state** %8, align 8, !dbg !3585
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %9, metadata !3589, metadata !532), !dbg !3590
  %22 = load %struct.hw_state*, %struct.hw_state** %8, align 8, !dbg !3591
  %23 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %22, i32 0, i32 3, !dbg !3592
  store %struct.zedc_stream_s* %23, %struct.zedc_stream_s** %9, align 8, !dbg !3590
  call void @llvm.dbg.declare(metadata i32* %10, metadata !3593, metadata !532), !dbg !3594
  call void @llvm.dbg.declare(metadata i8* %11, metadata !3595, metadata !532), !dbg !3596
  %24 = load i32, i32* @zlib_inflate_flags, align 4, !dbg !3597
  %25 = and i32 %24, 256, !dbg !3599
  %26 = icmp ne i32 %25, 0, !dbg !3599
  br i1 %26, label %27, label %38, !dbg !3600

; <label>:27:                                     ; preds = %1
  br label %28, !dbg !3601, !llvm.loop !3603

; <label>:28:                                     ; preds = %27
  %29 = load i32, i32* @zlib_trace, align 4, !dbg !3604
  %30 = and i32 %29, 2, !dbg !3608
  %31 = icmp ne i32 %30, 0, !dbg !3608
  br i1 %31, label %32, label %36, !dbg !3609

; <label>:32:                                     ; preds = %28
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !3610
  %34 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !3612
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.52, i32 0, i32 0), %struct.z_stream_s* %34), !dbg !3613
  br label %36, !dbg !3613

; <label>:36:                                     ; preds = %32, %28
  br label %37, !dbg !3614

; <label>:37:                                     ; preds = %36
  store i32 0, i32* %2, align 4, !dbg !3616
  br label %384, !dbg !3616

; <label>:38:                                     ; preds = %1
  %39 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %9, align 8, !dbg !3617
  %40 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %39, i32 0, i32 20, !dbg !3619
  %41 = load i32, i32* %40, align 8, !dbg !3619
  %42 = icmp ne i32 %41, 0, !dbg !3620
  br i1 %42, label %43, label %44, !dbg !3621

; <label>:43:                                     ; preds = %38
  store i32 0, i32* %2, align 4, !dbg !3622
  br label %384, !dbg !3622

; <label>:44:                                     ; preds = %38
  br label %45, !dbg !3623, !llvm.loop !3624

; <label>:45:                                     ; preds = %44
  %46 = load i32, i32* @zlib_trace, align 4, !dbg !3625
  %47 = and i32 %46, 2, !dbg !3629
  %48 = icmp ne i32 %47, 0, !dbg !3629
  br i1 %48, label %49, label %53, !dbg !3630

; <label>:49:                                     ; preds = %45
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !3631
  %51 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !3633
  %52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.53, i32 0, i32 0), %struct.z_stream_s* %51), !dbg !3634
  br label %53, !dbg !3634

; <label>:53:                                     ; preds = %49, %45
  br label %54, !dbg !3635

; <label>:54:                                     ; preds = %53
  %55 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %9, align 8, !dbg !3637
  %56 = call i32 @__in_hdr_bits(%struct.zedc_stream_s* %55), !dbg !3638
  store i32 %56, i32* %4, align 4, !dbg !3639
  %57 = load i32, i32* %4, align 4, !dbg !3640
  %58 = icmp ne i32 %57, 0, !dbg !3642
  br i1 %58, label %59, label %70, !dbg !3643

; <label>:59:                                     ; preds = %54
  br label %60, !dbg !3644, !llvm.loop !3646

; <label>:60:                                     ; preds = %59
  %61 = load i32, i32* @zlib_trace, align 4, !dbg !3647
  %62 = and i32 %61, 2, !dbg !3651
  %63 = icmp ne i32 %62, 0, !dbg !3651
  br i1 %63, label %64, label %68, !dbg !3652

; <label>:64:                                     ; preds = %60
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !3653
  %66 = load i32, i32* %4, align 4, !dbg !3655
  %67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.54, i32 0, i32 0), i32 %66), !dbg !3656
  br label %68, !dbg !3656

; <label>:68:                                     ; preds = %64, %60
  br label %69, !dbg !3657

; <label>:69:                                     ; preds = %68
  store i32 0, i32* %2, align 4, !dbg !3659
  br label %384, !dbg !3659

; <label>:70:                                     ; preds = %54
  %71 = bitcast %struct.stream_ending* %7 to i8*, !dbg !3660
  call void @llvm.memset.p0i8.i64(i8* %71, i8 0, i64 40, i32 4, i1 false), !dbg !3660
  %72 = getelementptr inbounds %struct.stream_ending, %struct.stream_ending* %7, i32 0, i32 6, !dbg !3661
  store i32 0, i32* %72, align 4, !dbg !3662
  %73 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %9, align 8, !dbg !3663
  %74 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %73, i32 0, i32 48, !dbg !3664
  %75 = load i8, i8* %74, align 8, !dbg !3664
  %76 = zext i8 %75 to i32, !dbg !3663
  %77 = getelementptr inbounds %struct.stream_ending, %struct.stream_ending* %7, i32 0, i32 1, !dbg !3665
  store i32 %76, i32* %77, align 4, !dbg !3666
  %78 = getelementptr inbounds %struct.stream_ending, %struct.stream_ending* %7, i32 0, i32 2, !dbg !3667
  store i32 16, i32* %78, align 4, !dbg !3668
  %79 = getelementptr inbounds %struct.stream_ending, %struct.stream_ending* %7, i32 0, i32 3, !dbg !3669
  store i32 0, i32* %79, align 4, !dbg !3670
  %80 = getelementptr inbounds %struct.stream_ending, %struct.stream_ending* %7, i32 0, i32 4, !dbg !3671
  store i32 0, i32* %80, align 4, !dbg !3672
  %81 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %9, align 8, !dbg !3673
  %82 = call i32 @__in_hdr_scratch_len(%struct.zedc_stream_s* %81), !dbg !3674
  %83 = getelementptr inbounds %struct.stream_ending, %struct.stream_ending* %7, i32 0, i32 5, !dbg !3675
  store i32 %82, i32* %83, align 4, !dbg !3676
  call void @llvm.dbg.declare(metadata i32* %12, metadata !3677, metadata !532), !dbg !3679
  %84 = getelementptr inbounds %struct.stream_ending, %struct.stream_ending* %7, i32 0, i32 5, !dbg !3680
  %85 = load i32, i32* %84, align 4, !dbg !3680
  store i32 %85, i32* %12, align 4, !dbg !3679
  call void @llvm.dbg.declare(metadata i32* %13, metadata !3681, metadata !532), !dbg !3682
  %86 = getelementptr inbounds %struct.stream_ending, %struct.stream_ending* %7, i32 0, i32 2, !dbg !3683
  %87 = load i32, i32* %86, align 4, !dbg !3683
  store i32 %87, i32* %13, align 4, !dbg !3682
  %88 = load i32, i32* %12, align 4, !dbg !3684
  %89 = load i32, i32* %13, align 4, !dbg !3685
  %90 = icmp ult i32 %88, %89, !dbg !3686
  br i1 %90, label %91, label %93, !dbg !3684

; <label>:91:                                     ; preds = %70
  %92 = load i32, i32* %12, align 4, !dbg !3687
  br label %95, !dbg !3689

; <label>:93:                                     ; preds = %70
  %94 = load i32, i32* %13, align 4, !dbg !3690
  br label %95, !dbg !3692

; <label>:95:                                     ; preds = %93, %91
  %96 = phi i32 [ %92, %91 ], [ %94, %93 ], !dbg !3693
  store i32 %96, i32* %14, align 4, !dbg !3695
  %97 = load i32, i32* %14, align 4, !dbg !3696
  store i32 %97, i32* %10, align 4, !dbg !3697
  %98 = getelementptr inbounds %struct.stream_ending, %struct.stream_ending* %7, i32 0, i32 3, !dbg !3698
  %99 = load i32, i32* %98, align 4, !dbg !3698
  %100 = zext i32 %99 to i64, !dbg !3699
  %101 = getelementptr inbounds %struct.stream_ending, %struct.stream_ending* %7, i32 0, i32 0, !dbg !3700
  %102 = getelementptr inbounds [16 x i8], [16 x i8]* %101, i64 0, i64 %100, !dbg !3699
  %103 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %9, align 8, !dbg !3701
  %104 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %103, i32 0, i32 34, !dbg !3702
  %105 = load %struct.zedc_wsp*, %struct.zedc_wsp** %104, align 8, !dbg !3702
  %106 = getelementptr inbounds %struct.zedc_wsp, %struct.zedc_wsp* %105, i32 0, i32 1, !dbg !3703
  %107 = getelementptr inbounds [512 x i8], [512 x i8]* %106, i32 0, i32 0, !dbg !3704
  %108 = load i32, i32* %10, align 4, !dbg !3705
  %109 = zext i32 %108 to i64, !dbg !3705
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %102, i8* %107, i64 %109, i32 1, i1 false), !dbg !3704
  %110 = load i32, i32* %10, align 4, !dbg !3706
  %111 = getelementptr inbounds %struct.stream_ending, %struct.stream_ending* %7, i32 0, i32 2, !dbg !3707
  %112 = load i32, i32* %111, align 4, !dbg !3708
  %113 = sub i32 %112, %110, !dbg !3708
  store i32 %113, i32* %111, align 4, !dbg !3708
  %114 = load i32, i32* %10, align 4, !dbg !3709
  %115 = getelementptr inbounds %struct.stream_ending, %struct.stream_ending* %7, i32 0, i32 3, !dbg !3710
  %116 = load i32, i32* %115, align 4, !dbg !3711
  %117 = add i32 %116, %114, !dbg !3711
  store i32 %117, i32* %115, align 4, !dbg !3711
  call void @llvm.dbg.declare(metadata i32* %15, metadata !3712, metadata !532), !dbg !3714
  %118 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !3715
  %119 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %118, i32 0, i32 1, !dbg !3716
  %120 = load i32, i32* %119, align 8, !dbg !3716
  store i32 %120, i32* %15, align 4, !dbg !3714
  call void @llvm.dbg.declare(metadata i32* %16, metadata !3717, metadata !532), !dbg !3718
  %121 = getelementptr inbounds %struct.stream_ending, %struct.stream_ending* %7, i32 0, i32 2, !dbg !3719
  %122 = load i32, i32* %121, align 4, !dbg !3719
  store i32 %122, i32* %16, align 4, !dbg !3718
  %123 = load i32, i32* %15, align 4, !dbg !3720
  %124 = load i32, i32* %16, align 4, !dbg !3721
  %125 = icmp ult i32 %123, %124, !dbg !3722
  br i1 %125, label %126, label %128, !dbg !3720

; <label>:126:                                    ; preds = %95
  %127 = load i32, i32* %15, align 4, !dbg !3723
  br label %130, !dbg !3725

; <label>:128:                                    ; preds = %95
  %129 = load i32, i32* %16, align 4, !dbg !3726
  br label %130, !dbg !3728

; <label>:130:                                    ; preds = %128, %126
  %131 = phi i32 [ %127, %126 ], [ %129, %128 ], !dbg !3729
  store i32 %131, i32* %17, align 4, !dbg !3731
  %132 = load i32, i32* %17, align 4, !dbg !3732
  store i32 %132, i32* %10, align 4, !dbg !3733
  %133 = getelementptr inbounds %struct.stream_ending, %struct.stream_ending* %7, i32 0, i32 3, !dbg !3734
  %134 = load i32, i32* %133, align 4, !dbg !3734
  %135 = zext i32 %134 to i64, !dbg !3735
  %136 = getelementptr inbounds %struct.stream_ending, %struct.stream_ending* %7, i32 0, i32 0, !dbg !3736
  %137 = getelementptr inbounds [16 x i8], [16 x i8]* %136, i64 0, i64 %135, !dbg !3735
  %138 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !3737
  %139 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %138, i32 0, i32 0, !dbg !3738
  %140 = load i8*, i8** %139, align 8, !dbg !3738
  %141 = load i32, i32* %10, align 4, !dbg !3739
  %142 = zext i32 %141 to i64, !dbg !3739
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %137, i8* %140, i64 %142, i32 1, i1 false), !dbg !3740
  %143 = load i32, i32* %10, align 4, !dbg !3741
  %144 = getelementptr inbounds %struct.stream_ending, %struct.stream_ending* %7, i32 0, i32 2, !dbg !3742
  %145 = load i32, i32* %144, align 4, !dbg !3743
  %146 = sub i32 %145, %143, !dbg !3743
  store i32 %146, i32* %144, align 4, !dbg !3743
  %147 = load i32, i32* %10, align 4, !dbg !3744
  %148 = getelementptr inbounds %struct.stream_ending, %struct.stream_ending* %7, i32 0, i32 3, !dbg !3745
  %149 = load i32, i32* %148, align 4, !dbg !3746
  %150 = add i32 %149, %147, !dbg !3746
  store i32 %150, i32* %148, align 4, !dbg !3746
  br label %151, !dbg !3747, !llvm.loop !3748

; <label>:151:                                    ; preds = %130
  %152 = load i32, i32* @zlib_trace, align 4, !dbg !3749
  %153 = and i32 %152, 2, !dbg !3753
  %154 = icmp ne i32 %153, 0, !dbg !3753
  br i1 %154, label %155, label %163, !dbg !3754

; <label>:155:                                    ; preds = %151
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !3755
  %157 = getelementptr inbounds %struct.stream_ending, %struct.stream_ending* %7, i32 0, i32 5, !dbg !3757
  %158 = load i32, i32* %157, align 4, !dbg !3757
  %159 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !3758
  %160 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %159, i32 0, i32 1, !dbg !3759
  %161 = load i32, i32* %160, align 8, !dbg !3759
  %162 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %156, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.55, i32 0, i32 0), i32 %158, i32 %161), !dbg !3760
  br label %163, !dbg !3760

; <label>:163:                                    ; preds = %155, %151
  br label %164, !dbg !3761

; <label>:164:                                    ; preds = %163
  %165 = load i32, i32* @zlib_trace, align 4, !dbg !3763
  %166 = and i32 %165, 2, !dbg !3765
  %167 = icmp ne i32 %166, 0, !dbg !3765
  br i1 %167, label %168, label %174, !dbg !3766

; <label>:168:                                    ; preds = %164
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !3767
  %170 = getelementptr inbounds %struct.stream_ending, %struct.stream_ending* %7, i32 0, i32 0, !dbg !3768
  %171 = getelementptr inbounds [16 x i8], [16 x i8]* %170, i32 0, i32 0, !dbg !3769
  %172 = getelementptr inbounds %struct.stream_ending, %struct.stream_ending* %7, i32 0, i32 3, !dbg !3770
  %173 = load i32, i32* %172, align 4, !dbg !3770
  call void @ddcb_hexdump(%struct._IO_FILE* %169, i8* %171, i32 %173), !dbg !3771
  br label %174, !dbg !3771

; <label>:174:                                    ; preds = %168, %164
  br label %175, !dbg !3772

; <label>:175:                                    ; preds = %174, %316
  %176 = getelementptr inbounds %struct.stream_ending, %struct.stream_ending* %7, i32 0, i32 6, !dbg !3773
  %177 = load i32, i32* %176, align 4, !dbg !3773
  switch i32 %177, label %301 [
    i32 0, label %178
    i32 2, label %230
    i32 1, label %265
  ], !dbg !3775

; <label>:178:                                    ; preds = %175
  br label %179, !dbg !3776, !llvm.loop !3778

; <label>:179:                                    ; preds = %178
  %180 = load i32, i32* @zlib_trace, align 4, !dbg !3779
  %181 = and i32 %180, 2, !dbg !3783
  %182 = icmp ne i32 %181, 0, !dbg !3783
  br i1 %182, label %183, label %186, !dbg !3784

; <label>:183:                                    ; preds = %179
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !3785
  %185 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %184, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.56, i32 0, i32 0)), !dbg !3787
  br label %186, !dbg !3787

; <label>:186:                                    ; preds = %183, %179
  br label %187, !dbg !3788

; <label>:187:                                    ; preds = %186
  %188 = call i32 @get_bits(%struct.stream_ending* %7, i32 3, i64* %6), !dbg !3790
  store i32 %188, i32* %4, align 4, !dbg !3791
  br label %189, !dbg !3792, !llvm.loop !3793

; <label>:189:                                    ; preds = %187
  %190 = load i32, i32* @zlib_trace, align 4, !dbg !3794
  %191 = and i32 %190, 2, !dbg !3798
  %192 = icmp ne i32 %191, 0, !dbg !3798
  br i1 %192, label %193, label %198, !dbg !3799

; <label>:193:                                    ; preds = %189
  %194 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !3800
  %195 = load i64, i64* %6, align 8, !dbg !3802
  %196 = load i32, i32* %4, align 4, !dbg !3803
  %197 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %194, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.57, i32 0, i32 0), i64 %195, i32 %196), !dbg !3804
  br label %198, !dbg !3804

; <label>:198:                                    ; preds = %193, %189
  br label %199, !dbg !3805

; <label>:199:                                    ; preds = %198
  %200 = load i32, i32* %4, align 4, !dbg !3807
  %201 = icmp ne i32 %200, 0, !dbg !3807
  br i1 %201, label %202, label %203, !dbg !3809

; <label>:202:                                    ; preds = %199
  br label %374, !dbg !3810

; <label>:203:                                    ; preds = %199
  %204 = call i32 @drop_bits(%struct.stream_ending* %7, i32 3), !dbg !3811
  %205 = load i64, i64* %6, align 8, !dbg !3812
  %206 = and i64 %205, 3, !dbg !3813
  switch i64 %206, label %214 [
    i64 0, label %207
    i64 1, label %209
    i64 2, label %211
    i64 3, label %213
  ], !dbg !3814

; <label>:207:                                    ; preds = %203
  %208 = getelementptr inbounds %struct.stream_ending, %struct.stream_ending* %7, i32 0, i32 6, !dbg !3815
  store i32 1, i32* %208, align 4, !dbg !3817
  br label %215, !dbg !3818

; <label>:209:                                    ; preds = %203
  %210 = getelementptr inbounds %struct.stream_ending, %struct.stream_ending* %7, i32 0, i32 6, !dbg !3819
  store i32 3, i32* %210, align 4, !dbg !3820
  br label %374, !dbg !3821

; <label>:211:                                    ; preds = %203
  %212 = getelementptr inbounds %struct.stream_ending, %struct.stream_ending* %7, i32 0, i32 6, !dbg !3822
  store i32 2, i32* %212, align 4, !dbg !3823
  br label %215, !dbg !3824

; <label>:213:                                    ; preds = %203
  br label %214, !dbg !3825

; <label>:214:                                    ; preds = %203, %213
  br label %374, !dbg !3827

; <label>:215:                                    ; preds = %211, %207
  %216 = load i64, i64* %6, align 8, !dbg !3828
  %217 = and i64 %216, 4, !dbg !3830
  %218 = icmp ne i64 %217, 0, !dbg !3830
  br i1 %218, label %219, label %229, !dbg !3831

; <label>:219:                                    ; preds = %215
  br label %220, !dbg !3832, !llvm.loop !3834

; <label>:220:                                    ; preds = %219
  %221 = load i32, i32* @zlib_trace, align 4, !dbg !3835
  %222 = and i32 %221, 2, !dbg !3839
  %223 = icmp ne i32 %222, 0, !dbg !3839
  br i1 %223, label %224, label %227, !dbg !3840

; <label>:224:                                    ; preds = %220
  %225 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !3841
  %226 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %225, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.58, i32 0, i32 0)), !dbg !3843
  br label %227, !dbg !3843

; <label>:227:                                    ; preds = %224, %220
  br label %228, !dbg !3844

; <label>:228:                                    ; preds = %227
  store i32 1, i32* %5, align 4, !dbg !3846
  br label %229, !dbg !3847

; <label>:229:                                    ; preds = %228, %215
  br label %316, !dbg !3848

; <label>:230:                                    ; preds = %175
  br label %231, !dbg !3849, !llvm.loop !3850

; <label>:231:                                    ; preds = %230
  %232 = load i32, i32* @zlib_trace, align 4, !dbg !3851
  %233 = and i32 %232, 2, !dbg !3855
  %234 = icmp ne i32 %233, 0, !dbg !3855
  br i1 %234, label %235, label %238, !dbg !3856

; <label>:235:                                    ; preds = %231
  %236 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !3857
  %237 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %236, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.59, i32 0, i32 0)), !dbg !3859
  br label %238, !dbg !3859

; <label>:238:                                    ; preds = %235, %231
  br label %239, !dbg !3860

; <label>:239:                                    ; preds = %238
  %240 = call i32 @get_bits(%struct.stream_ending* %7, i32 7, i64* %6), !dbg !3862
  store i32 %240, i32* %4, align 4, !dbg !3863
  br label %241, !dbg !3864, !llvm.loop !3865

; <label>:241:                                    ; preds = %239
  %242 = load i32, i32* @zlib_trace, align 4, !dbg !3866
  %243 = and i32 %242, 2, !dbg !3870
  %244 = icmp ne i32 %243, 0, !dbg !3870
  br i1 %244, label %245, label %249, !dbg !3871

; <label>:245:                                    ; preds = %241
  %246 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !3872
  %247 = load i64, i64* %6, align 8, !dbg !3874
  %248 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %246, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.60, i32 0, i32 0), i64 %247), !dbg !3875
  br label %249, !dbg !3875

; <label>:249:                                    ; preds = %245, %241
  br label %250, !dbg !3876

; <label>:250:                                    ; preds = %249
  %251 = load i32, i32* %4, align 4, !dbg !3878
  %252 = icmp ne i32 %251, 0, !dbg !3878
  br i1 %252, label %253, label %254, !dbg !3880

; <label>:253:                                    ; preds = %250
  br label %374, !dbg !3881

; <label>:254:                                    ; preds = %250
  %255 = call i32 @drop_bits(%struct.stream_ending* %7, i32 7), !dbg !3882
  %256 = load i64, i64* %6, align 8, !dbg !3883
  %257 = icmp ne i64 %256, 0, !dbg !3885
  br i1 %257, label %258, label %259, !dbg !3886

; <label>:258:                                    ; preds = %254
  br label %374, !dbg !3887

; <label>:259:                                    ; preds = %254
  %260 = getelementptr inbounds %struct.stream_ending, %struct.stream_ending* %7, i32 0, i32 6, !dbg !3888
  store i32 0, i32* %260, align 4, !dbg !3889
  %261 = load i32, i32* %5, align 4, !dbg !3890
  %262 = icmp eq i32 %261, 1, !dbg !3892
  br i1 %262, label %263, label %264, !dbg !3893

; <label>:263:                                    ; preds = %259
  br label %317, !dbg !3894

; <label>:264:                                    ; preds = %259
  br label %316, !dbg !3895

; <label>:265:                                    ; preds = %175
  br label %266, !dbg !3896, !llvm.loop !3897

; <label>:266:                                    ; preds = %265
  %267 = load i32, i32* @zlib_trace, align 4, !dbg !3898
  %268 = and i32 %267, 2, !dbg !3902
  %269 = icmp ne i32 %268, 0, !dbg !3902
  br i1 %269, label %270, label %273, !dbg !3903

; <label>:270:                                    ; preds = %266
  %271 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !3904
  %272 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %271, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.61, i32 0, i32 0)), !dbg !3906
  br label %273, !dbg !3906

; <label>:273:                                    ; preds = %270, %266
  br label %274, !dbg !3907

; <label>:274:                                    ; preds = %273
  %275 = call i32 @sync_to_byte(%struct.stream_ending* %7), !dbg !3909
  %276 = call i32 @get_bits(%struct.stream_ending* %7, i32 32, i64* %6), !dbg !3910
  store i32 %276, i32* %4, align 4, !dbg !3911
  br label %277, !dbg !3912, !llvm.loop !3913

; <label>:277:                                    ; preds = %274
  %278 = load i32, i32* @zlib_trace, align 4, !dbg !3914
  %279 = and i32 %278, 2, !dbg !3918
  %280 = icmp ne i32 %279, 0, !dbg !3918
  br i1 %280, label %281, label %285, !dbg !3919

; <label>:281:                                    ; preds = %277
  %282 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !3920
  %283 = load i64, i64* %6, align 8, !dbg !3922
  %284 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %282, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.62, i32 0, i32 0), i64 %283), !dbg !3923
  br label %285, !dbg !3923

; <label>:285:                                    ; preds = %281, %277
  br label %286, !dbg !3924

; <label>:286:                                    ; preds = %285
  %287 = load i32, i32* %4, align 4, !dbg !3926
  %288 = icmp ne i32 %287, 0, !dbg !3926
  br i1 %288, label %289, label %290, !dbg !3928

; <label>:289:                                    ; preds = %286
  br label %374, !dbg !3929

; <label>:290:                                    ; preds = %286
  %291 = call i32 @drop_bits(%struct.stream_ending* %7, i32 32), !dbg !3930
  %292 = load i64, i64* %6, align 8, !dbg !3931
  %293 = icmp ne i64 %292, 65535, !dbg !3933
  br i1 %293, label %294, label %295, !dbg !3934

; <label>:294:                                    ; preds = %290
  br label %374, !dbg !3935

; <label>:295:                                    ; preds = %290
  %296 = getelementptr inbounds %struct.stream_ending, %struct.stream_ending* %7, i32 0, i32 6, !dbg !3936
  store i32 0, i32* %296, align 4, !dbg !3937
  %297 = load i32, i32* %5, align 4, !dbg !3938
  %298 = icmp eq i32 %297, 1, !dbg !3940
  br i1 %298, label %299, label %300, !dbg !3941

; <label>:299:                                    ; preds = %295
  br label %317, !dbg !3942

; <label>:300:                                    ; preds = %295
  br label %316, !dbg !3943

; <label>:301:                                    ; preds = %175
  br label %302, !dbg !3944, !llvm.loop !3945

; <label>:302:                                    ; preds = %301
  %303 = load i32, i32* @zlib_trace, align 4, !dbg !3946
  %304 = and i32 %303, 2, !dbg !3950
  %305 = icmp ne i32 %304, 0, !dbg !3950
  br i1 %305, label %306, label %314, !dbg !3951

; <label>:306:                                    ; preds = %302
  %307 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !3952
  %308 = getelementptr inbounds %struct.stream_ending, %struct.stream_ending* %7, i32 0, i32 6, !dbg !3954
  %309 = load i32, i32* %308, align 4, !dbg !3954
  %310 = zext i32 %309 to i64, !dbg !3955
  %311 = getelementptr inbounds [4 x i8*], [4 x i8*]* @state_str, i64 0, i64 %310, !dbg !3955
  %312 = load i8*, i8** %311, align 8, !dbg !3955
  %313 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %307, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i32 0, i32 0), i8* %312), !dbg !3956
  br label %314, !dbg !3956

; <label>:314:                                    ; preds = %306, %302
  br label %315, !dbg !3957

; <label>:315:                                    ; preds = %314
  br label %374, !dbg !3959

; <label>:316:                                    ; preds = %300, %264, %229
  br label %175, !dbg !3960, !llvm.loop !3962

; <label>:317:                                    ; preds = %299, %263
  %318 = getelementptr inbounds %struct.stream_ending, %struct.stream_ending* %7, i32 0, i32 4, !dbg !3963
  %319 = load i32, i32* %318, align 4, !dbg !3963
  %320 = getelementptr inbounds %struct.stream_ending, %struct.stream_ending* %7, i32 0, i32 5, !dbg !3965
  %321 = load i32, i32* %320, align 4, !dbg !3965
  %322 = icmp ule i32 %319, %321, !dbg !3966
  br i1 %322, label %323, label %324, !dbg !3967

; <label>:323:                                    ; preds = %317
  store i8 0, i8* %11, align 1, !dbg !3968
  br label %333, !dbg !3969

; <label>:324:                                    ; preds = %317
  %325 = getelementptr inbounds %struct.stream_ending, %struct.stream_ending* %7, i32 0, i32 4, !dbg !3970
  %326 = load i32, i32* %325, align 4, !dbg !3970
  %327 = getelementptr inbounds %struct.stream_ending, %struct.stream_ending* %7, i32 0, i32 5, !dbg !3972
  %328 = load i32, i32* %327, align 4, !dbg !3972
  %329 = sub i32 %326, %328, !dbg !3973
  %330 = add i32 %329, 1, !dbg !3974
  %331 = trunc i32 %330 to i8, !dbg !3975
  store i8 %331, i8* %11, align 1, !dbg !3976
  %332 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %9, align 8, !dbg !3977
  call void @__reset_hdr_scratch_len(%struct.zedc_stream_s* %332), !dbg !3978
  br label %333

; <label>:333:                                    ; preds = %324, %323
  %334 = load i8, i8* %11, align 1, !dbg !3979
  %335 = zext i8 %334 to i32, !dbg !3979
  %336 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !3980
  %337 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %336, i32 0, i32 1, !dbg !3981
  %338 = load i32, i32* %337, align 8, !dbg !3982
  %339 = sub i32 %338, %335, !dbg !3982
  store i32 %339, i32* %337, align 8, !dbg !3982
  %340 = load i8, i8* %11, align 1, !dbg !3983
  %341 = zext i8 %340 to i32, !dbg !3983
  %342 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !3984
  %343 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %342, i32 0, i32 0, !dbg !3985
  %344 = load i8*, i8** %343, align 8, !dbg !3986
  %345 = sext i32 %341 to i64, !dbg !3986
  %346 = getelementptr inbounds i8, i8* %344, i64 %345, !dbg !3986
  store i8* %346, i8** %343, align 8, !dbg !3986
  %347 = load i8, i8* %11, align 1, !dbg !3987
  %348 = zext i8 %347 to i64, !dbg !3987
  %349 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !3988
  %350 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %349, i32 0, i32 2, !dbg !3989
  %351 = load i64, i64* %350, align 8, !dbg !3990
  %352 = add i64 %351, %348, !dbg !3990
  store i64 %352, i64* %350, align 8, !dbg !3990
  br label %353, !dbg !3991, !llvm.loop !3992

; <label>:353:                                    ; preds = %333
  %354 = load i32, i32* @zlib_trace, align 4, !dbg !3993
  %355 = and i32 %354, 2, !dbg !3997
  %356 = icmp ne i32 %355, 0, !dbg !3997
  br i1 %356, label %357, label %371, !dbg !3998

; <label>:357:                                    ; preds = %353
  %358 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !3999
  %359 = getelementptr inbounds %struct.stream_ending, %struct.stream_ending* %7, i32 0, i32 4, !dbg !4001
  %360 = load i32, i32* %359, align 4, !dbg !4001
  %361 = getelementptr inbounds %struct.stream_ending, %struct.stream_ending* %7, i32 0, i32 5, !dbg !4002
  %362 = load i32, i32* %361, align 4, !dbg !4002
  %363 = load i8, i8* %11, align 1, !dbg !4003
  %364 = zext i8 %363 to i32, !dbg !4003
  %365 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !4004
  %366 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %365, i32 0, i32 0, !dbg !4005
  %367 = load i8*, i8** %366, align 8, !dbg !4005
  %368 = load i8, i8* %367, align 1, !dbg !4006
  %369 = zext i8 %368 to i32, !dbg !4006
  %370 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %358, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.64, i32 0, i32 0), i32 %360, i32 %362, i32 %364, i32 %369), !dbg !4007
  br label %371, !dbg !4007

; <label>:371:                                    ; preds = %357, %353
  br label %372, !dbg !4008

; <label>:372:                                    ; preds = %371
  %373 = load i32, i32* %5, align 4, !dbg !4010
  store i32 %373, i32* %2, align 4, !dbg !4011
  br label %384, !dbg !4011

; <label>:374:                                    ; preds = %315, %294, %289, %258, %253, %214, %209, %202
  br label %375, !dbg !4012, !llvm.loop !4013

; <label>:375:                                    ; preds = %374
  %376 = load i32, i32* @zlib_trace, align 4, !dbg !4014
  %377 = and i32 %376, 2, !dbg !4018
  %378 = icmp ne i32 %377, 0, !dbg !4018
  br i1 %378, label %379, label %382, !dbg !4019

; <label>:379:                                    ; preds = %375
  %380 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !4020
  %381 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %380, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.65, i32 0, i32 0)), !dbg !4022
  br label %382, !dbg !4022

; <label>:382:                                    ; preds = %379, %375
  br label %383, !dbg !4023

; <label>:383:                                    ; preds = %382
  store i32 0, i32* %2, align 4, !dbg !4025
  br label %384, !dbg !4025

; <label>:384:                                    ; preds = %383, %372, %69, %43, %37
  %385 = load i32, i32* %2, align 4, !dbg !4026
  ret i32 %385, !dbg !4026
}

declare i8* @ret_to_str(i32) #3

; Function Attrs: nounwind uwtable
define i32 @h_inflateEnd(%struct.z_stream_s*) #0 !dbg !4027 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.z_stream_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zedc_stream_s*, align 8
  %6 = alloca %struct.hw_state*, align 8
  %7 = alloca %struct.zedc_dev_t*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.z_stream_s* %0, %struct.z_stream_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.z_stream_s** %3, metadata !4028, metadata !532), !dbg !4029
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4030, metadata !532), !dbg !4031
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %5, metadata !4032, metadata !532), !dbg !4033
  call void @llvm.dbg.declare(metadata %struct.hw_state** %6, metadata !4034, metadata !532), !dbg !4035
  call void @llvm.dbg.declare(metadata %struct.zedc_dev_t** %7, metadata !4036, metadata !532), !dbg !4037
  call void @llvm.dbg.declare(metadata i32* %8, metadata !4038, metadata !532), !dbg !4039
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4040, metadata !532), !dbg !4041
  %10 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !4042
  %11 = icmp eq %struct.z_stream_s* %10, null, !dbg !4044
  br i1 %11, label %12, label %13, !dbg !4045

; <label>:12:                                     ; preds = %1
  store i32 -2, i32* %2, align 4, !dbg !4046
  br label %90, !dbg !4046

; <label>:13:                                     ; preds = %1
  %14 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !4047
  %15 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %14, i32 0, i32 7, !dbg !4048
  %16 = load %struct.internal_state*, %struct.internal_state** %15, align 8, !dbg !4048
  %17 = bitcast %struct.internal_state* %16 to %struct.hw_state*, !dbg !4049
  store %struct.hw_state* %17, %struct.hw_state** %6, align 8, !dbg !4050
  %18 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !4051
  %19 = icmp eq %struct.hw_state* %18, null, !dbg !4053
  br i1 %19, label %20, label %21, !dbg !4054

; <label>:20:                                     ; preds = %13
  store i32 -2, i32* %2, align 4, !dbg !4055
  br label %90, !dbg !4055

; <label>:21:                                     ; preds = %13
  %22 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !4056
  %23 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %22, i32 0, i32 3, !dbg !4057
  store %struct.zedc_stream_s* %23, %struct.zedc_stream_s** %5, align 8, !dbg !4058
  %24 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !4059
  %25 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %24, i32 0, i32 15, !dbg !4060
  %26 = load i8*, i8** %25, align 8, !dbg !4060
  %27 = bitcast i8* %26 to %struct.zedc_dev_t*, !dbg !4061
  store %struct.zedc_dev_t* %27, %struct.zedc_dev_t** %7, align 8, !dbg !4062
  %28 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !4063
  %29 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %28, i32 0, i32 9, !dbg !4064
  %30 = load i8*, i8** %29, align 8, !dbg !4064
  %31 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !4065
  %32 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %31, i32 0, i32 8, !dbg !4066
  %33 = load i8*, i8** %32, align 8, !dbg !4066
  %34 = ptrtoint i8* %30 to i64, !dbg !4067
  %35 = ptrtoint i8* %33 to i64, !dbg !4067
  %36 = sub i64 %34, %35, !dbg !4067
  %37 = trunc i64 %36 to i32, !dbg !4063
  store i32 %37, i32* %8, align 4, !dbg !4068
  %38 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !4069
  %39 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %38, i32 0, i32 13, !dbg !4070
  %40 = load i8*, i8** %39, align 8, !dbg !4070
  %41 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !4071
  %42 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %41, i32 0, i32 14, !dbg !4072
  %43 = load i8*, i8** %42, align 8, !dbg !4072
  %44 = ptrtoint i8* %40 to i64, !dbg !4073
  %45 = ptrtoint i8* %43 to i64, !dbg !4073
  %46 = sub i64 %44, %45, !dbg !4073
  %47 = trunc i64 %46 to i32, !dbg !4069
  store i32 %47, i32* %9, align 4, !dbg !4074
  %48 = load i32, i32* %8, align 4, !dbg !4075
  %49 = icmp ne i32 %48, 0, !dbg !4075
  br i1 %49, label %53, label %50, !dbg !4077

; <label>:50:                                     ; preds = %21
  %51 = load i32, i32* %9, align 4, !dbg !4078
  %52 = icmp ne i32 %51, 0, !dbg !4078
  br i1 %52, label %53, label %66, !dbg !4080

; <label>:53:                                     ; preds = %50, %21
  br label %54, !dbg !4081, !llvm.loop !4082

; <label>:54:                                     ; preds = %53
  %55 = load i32, i32* @zlib_trace, align 4, !dbg !4083
  %56 = and i32 %55, 2, !dbg !4087
  %57 = icmp ne i32 %56, 0, !dbg !4087
  br i1 %57, label %58, label %64, !dbg !4088

; <label>:58:                                     ; preds = %54
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !4089
  %60 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8, !dbg !4091
  %61 = load i32, i32* %8, align 4, !dbg !4092
  %62 = load i32, i32* %9, align 4, !dbg !4093
  %63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.37, i32 0, i32 0), %struct.z_stream_s* %60, i32 %61, i32 %62), !dbg !4094
  br label %64, !dbg !4094

; <label>:64:                                     ; preds = %58, %54
  br label %65, !dbg !4095

; <label>:65:                                     ; preds = %64
  br label %66, !dbg !4097

; <label>:66:                                     ; preds = %65, %50
  %67 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !4099
  %68 = call i32 @zedc_inflateEnd(%struct.zedc_stream_s* %67), !dbg !4100
  store i32 %68, i32* %4, align 4, !dbg !4101
  %69 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %7, align 8, !dbg !4102
  %70 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !4103
  %71 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %70, i32 0, i32 12, !dbg !4104
  %72 = load i8*, i8** %71, align 8, !dbg !4104
  %73 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !4105
  %74 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %73, i32 0, i32 10, !dbg !4106
  %75 = load i64, i64* %74, align 8, !dbg !4106
  %76 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !4107
  %77 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %76, i32 0, i32 3, !dbg !4108
  %78 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %77, i32 0, i32 36, !dbg !4109
  %79 = getelementptr inbounds [3 x i32], [3 x i32]* %78, i64 0, i64 1, !dbg !4107
  %80 = load i32, i32* %79, align 4, !dbg !4107
  %81 = call i32 @zedc_free(%struct.zedc_dev_t* %69, i8* %72, i64 %75, i32 %80), !dbg !4110
  %82 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %5, align 8, !dbg !4111
  %83 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %82, i32 0, i32 15, !dbg !4112
  %84 = load i8*, i8** %83, align 8, !dbg !4112
  %85 = bitcast i8* %84 to %struct.zedc_dev_t*, !dbg !4113
  %86 = call i32 @__zedc_close(%struct.zedc_dev_t* %85), !dbg !4114
  %87 = load %struct.hw_state*, %struct.hw_state** %6, align 8, !dbg !4115
  %88 = bitcast %struct.hw_state* %87 to i8*, !dbg !4115
  call void @__free(i8* %88), !dbg !4116
  %89 = load i32, i32* %4, align 4, !dbg !4117
  store i32 %89, i32* %2, align 4, !dbg !4118
  br label %90, !dbg !4118

; <label>:90:                                     ; preds = %66, %20, %12
  %91 = load i32, i32* %2, align 4, !dbg !4119
  ret i32 %91, !dbg !4119
}

declare i32 @zedc_inflateEnd(%struct.zedc_stream_s*) #3

; Function Attrs: nounwind uwtable
define void @zedc_hw_init() #0 !dbg !4120 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %1, metadata !4123, metadata !532), !dbg !4124
  %9 = call i8* @getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0)) #7, !dbg !4125
  store i8* %9, i8** %1, align 8, !dbg !4124
  call void @llvm.dbg.declare(metadata i8** %2, metadata !4126, metadata !532), !dbg !4127
  %10 = call i8* @getenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i32 0, i32 0)) #7, !dbg !4128
  store i8* %10, i8** %2, align 8, !dbg !4127
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4129, metadata !532), !dbg !4130
  %11 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i32 0, i32 0)) #7, !dbg !4131
  store i8* %11, i8** %3, align 8, !dbg !4130
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4132, metadata !532), !dbg !4133
  %12 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i32 0, i32 0)) #7, !dbg !4134
  store i8* %12, i8** %4, align 8, !dbg !4133
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4135, metadata !532), !dbg !4136
  %13 = call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0)) #7, !dbg !4137
  store i8* %13, i8** %5, align 8, !dbg !4136
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4138, metadata !532), !dbg !4139
  %14 = call i8* @getenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0)) #7, !dbg !4140
  store i8* %14, i8** %6, align 8, !dbg !4139
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !4141
  call void @ddcb_set_logfile(%struct._IO_FILE* %15), !dbg !4142
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !4143
  call void @zedc_set_logfile(%struct._IO_FILE* %16), !dbg !4144
  %17 = load i8*, i8** %1, align 8, !dbg !4145
  %18 = icmp ne i8* %17, null, !dbg !4147
  br i1 %18, label %19, label %31, !dbg !4148

; <label>:19:                                     ; preds = %0
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4149, metadata !532), !dbg !4151
  call void @llvm.dbg.declare(metadata i32* %8, metadata !4152, metadata !532), !dbg !4153
  %20 = load i8*, i8** %1, align 8, !dbg !4154
  %21 = call i64 @str_to_num(i8* %20), !dbg !4155
  %22 = trunc i64 %21 to i32, !dbg !4155
  store i32 %22, i32* @zedc_verbose, align 4, !dbg !4156
  %23 = load i32, i32* @zedc_verbose, align 4, !dbg !4157
  %24 = and i32 %23, 65280, !dbg !4158
  %25 = ashr i32 %24, 8, !dbg !4159
  store i32 %25, i32* %8, align 4, !dbg !4160
  %26 = load i32, i32* @zedc_verbose, align 4, !dbg !4161
  %27 = and i32 %26, 255, !dbg !4162
  %28 = ashr i32 %27, 0, !dbg !4163
  store i32 %28, i32* %7, align 4, !dbg !4164
  %29 = load i32, i32* %8, align 4, !dbg !4165
  call void @ddcb_debug(i32 %29), !dbg !4166
  %30 = load i32, i32* %7, align 4, !dbg !4167
  call void @zedc_lib_debug(i32 %30), !dbg !4168
  br label %31, !dbg !4169

; <label>:31:                                     ; preds = %19, %0
  %32 = load i8*, i8** %2, align 8, !dbg !4170
  %33 = icmp ne i8* %32, null, !dbg !4172
  br i1 %33, label %34, label %41, !dbg !4173

; <label>:34:                                     ; preds = %31
  %35 = load i8*, i8** %2, align 8, !dbg !4174
  %36 = call i32 @strncmp(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), i64 4) #8, !dbg !4177
  %37 = icmp eq i32 %36, 0, !dbg !4178
  br i1 %37, label %38, label %39, !dbg !4179

; <label>:38:                                     ; preds = %34
  store i32 2, i32* @zlib_accelerator, align 4, !dbg !4180
  br label %40, !dbg !4181

; <label>:39:                                     ; preds = %34
  store i32 0, i32* @zlib_accelerator, align 4, !dbg !4182
  br label %40

; <label>:40:                                     ; preds = %39, %38
  br label %41, !dbg !4183

; <label>:41:                                     ; preds = %40, %31
  %42 = load i8*, i8** %5, align 8, !dbg !4184
  %43 = icmp ne i8* %42, null, !dbg !4186
  br i1 %43, label %44, label %53, !dbg !4187

; <label>:44:                                     ; preds = %41
  %45 = load i8*, i8** %5, align 8, !dbg !4188
  %46 = call i32 @strncmp(i8* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), i64 3) #8, !dbg !4191
  %47 = icmp eq i32 %46, 0, !dbg !4192
  br i1 %47, label %48, label %49, !dbg !4193

; <label>:48:                                     ; preds = %44
  store i32 -1, i32* @zlib_card, align 4, !dbg !4194
  br label %52, !dbg !4195

; <label>:49:                                     ; preds = %44
  %50 = load i8*, i8** %5, align 8, !dbg !4196
  %51 = call i32 @atoi(i8* %50) #8, !dbg !4197
  store i32 %51, i32* @zlib_card, align 4, !dbg !4198
  br label %52

; <label>:52:                                     ; preds = %49, %48
  br label %53, !dbg !4199

; <label>:53:                                     ; preds = %52, %41
  %54 = load i8*, i8** %6, align 8, !dbg !4200
  %55 = icmp ne i8* %54, null, !dbg !4202
  br i1 %55, label %56, label %60, !dbg !4203

; <label>:56:                                     ; preds = %53
  %57 = load i8*, i8** %6, align 8, !dbg !4204
  %58 = call i64 @str_to_num(i8* %57), !dbg !4205
  %59 = trunc i64 %58 to i32, !dbg !4205
  store i32 %59, i32* @zlib_xcheck, align 4, !dbg !4206
  br label %60, !dbg !4207

; <label>:60:                                     ; preds = %56, %53
  %61 = load i8*, i8** %3, align 8, !dbg !4208
  %62 = icmp ne i8* %61, null, !dbg !4210
  br i1 %62, label %63, label %67, !dbg !4211

; <label>:63:                                     ; preds = %60
  %64 = load i8*, i8** %3, align 8, !dbg !4212
  %65 = call i64 @str_to_num(i8* %64), !dbg !4213
  %66 = trunc i64 %65 to i32, !dbg !4213
  store i32 %66, i32* @zlib_ibuf_total, align 4, !dbg !4214
  br label %67, !dbg !4215

; <label>:67:                                     ; preds = %63, %60
  %68 = load i8*, i8** %4, align 8, !dbg !4216
  %69 = icmp ne i8* %68, null, !dbg !4218
  br i1 %69, label %70, label %74, !dbg !4219

; <label>:70:                                     ; preds = %67
  %71 = load i8*, i8** %4, align 8, !dbg !4220
  %72 = call i64 @str_to_num(i8* %71), !dbg !4221
  %73 = trunc i64 %72 to i32, !dbg !4221
  store i32 %73, i32* @zlib_obuf_total, align 4, !dbg !4222
  br label %74, !dbg !4223

; <label>:74:                                     ; preds = %70, %67
  %75 = load i32, i32* @zlib_accelerator, align 4, !dbg !4224
  %76 = icmp ne i32 %75, 0, !dbg !4226
  br i1 %76, label %77, label %82, !dbg !4227

; <label>:77:                                     ; preds = %74
  %78 = load i32, i32* @zlib_deflate_flags, align 4, !dbg !4228
  %79 = and i32 %78, -49, !dbg !4228
  store i32 %79, i32* @zlib_deflate_flags, align 4, !dbg !4228
  %80 = load i32, i32* @zlib_inflate_flags, align 4, !dbg !4230
  %81 = and i32 %80, -49, !dbg !4230
  store i32 %81, i32* @zlib_inflate_flags, align 4, !dbg !4230
  br label %82, !dbg !4231

; <label>:82:                                     ; preds = %77, %74
  ret void, !dbg !4232
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #2

declare void @ddcb_set_logfile(%struct._IO_FILE*) #3

declare void @zedc_set_logfile(%struct._IO_FILE*) #3

declare i64 @str_to_num(i8*) #3

declare void @ddcb_debug(i32) #3

declare void @zedc_lib_debug(i32) #3

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #6

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #6

; Function Attrs: nounwind uwtable
define void @zedc_hw_done() #0 !dbg !4233 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !4234, metadata !532), !dbg !4235
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4236, metadata !532), !dbg !4237
  %3 = load i32, i32* @zlib_inflate_flags, align 4, !dbg !4238
  %4 = load i32, i32* @zlib_deflate_flags, align 4, !dbg !4239
  %5 = or i32 %3, %4, !dbg !4240
  store i32 %5, i32* %2, align 4, !dbg !4237
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !4241
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4243
  %8 = icmp ne %struct._IO_FILE* %6, %7, !dbg !4244
  br i1 %8, label %9, label %10, !dbg !4245

; <label>:9:                                      ; preds = %0
  call void @zedc_set_logfile(%struct._IO_FILE* null), !dbg !4246
  call void @ddcb_set_logfile(%struct._IO_FILE* null), !dbg !4248
  br label %10, !dbg !4249

; <label>:10:                                     ; preds = %9, %0
  %11 = load i32, i32* %2, align 4, !dbg !4250
  %12 = and i32 %11, 32, !dbg !4252
  %13 = icmp eq i32 %12, 0, !dbg !4253
  br i1 %13, label %14, label %15, !dbg !4254

; <label>:14:                                     ; preds = %10
  br label %35, !dbg !4255

; <label>:15:                                     ; preds = %10
  store i32 0, i32* %1, align 4, !dbg !4256
  br label %16, !dbg !4258

; <label>:16:                                     ; preds = %32, %15
  %17 = load i32, i32* %1, align 4, !dbg !4259
  %18 = icmp ule i32 %17, 128, !dbg !4262
  br i1 %18, label %19, label %35, !dbg !4263

; <label>:19:                                     ; preds = %16
  %20 = load i32, i32* %1, align 4, !dbg !4264
  %21 = zext i32 %20 to i64, !dbg !4267
  %22 = getelementptr inbounds [129 x %struct.zedc_dev_t*], [129 x %struct.zedc_dev_t*]* @zedc_cards, i64 0, i64 %21, !dbg !4267
  %23 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %22, align 8, !dbg !4267
  %24 = icmp eq %struct.zedc_dev_t* %23, null, !dbg !4268
  br i1 %24, label %25, label %26, !dbg !4269

; <label>:25:                                     ; preds = %19
  br label %32, !dbg !4270

; <label>:26:                                     ; preds = %19
  %27 = load i32, i32* %1, align 4, !dbg !4271
  %28 = zext i32 %27 to i64, !dbg !4272
  %29 = getelementptr inbounds [129 x %struct.zedc_dev_t*], [129 x %struct.zedc_dev_t*]* @zedc_cards, i64 0, i64 %28, !dbg !4272
  %30 = load %struct.zedc_dev_t*, %struct.zedc_dev_t** %29, align 8, !dbg !4272
  %31 = call i32 @zedc_close(%struct.zedc_dev_t* %30), !dbg !4273
  br label %32, !dbg !4274

; <label>:32:                                     ; preds = %26, %25
  %33 = load i32, i32* %1, align 4, !dbg !4275
  %34 = add i32 %33, 1, !dbg !4275
  store i32 %34, i32* %1, align 4, !dbg !4275
  br label %16, !dbg !4277, !llvm.loop !4278

; <label>:35:                                     ; preds = %14, %16
  ret void, !dbg !4280
}

declare i32 @zedc_close(%struct.zedc_dev_t*) #3

declare %struct.zedc_dev_t* @zedc_open(i32, i32, i32, i32*) #3

declare i32 @zedc_deflate(%struct.zedc_stream_s*, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @output_buffer_bytes(%struct.hw_state*) #0 !dbg !4281 {
  %2 = alloca %struct.hw_state*, align 8
  store %struct.hw_state* %0, %struct.hw_state** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.hw_state** %2, metadata !4282, metadata !532), !dbg !4283
  %3 = load %struct.hw_state*, %struct.hw_state** %2, align 8, !dbg !4284
  %4 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %3, i32 0, i32 13, !dbg !4285
  %5 = load i8*, i8** %4, align 8, !dbg !4285
  %6 = load %struct.hw_state*, %struct.hw_state** %2, align 8, !dbg !4286
  %7 = getelementptr inbounds %struct.hw_state, %struct.hw_state* %6, i32 0, i32 14, !dbg !4287
  %8 = load i8*, i8** %7, align 8, !dbg !4287
  %9 = ptrtoint i8* %5 to i64, !dbg !4288
  %10 = ptrtoint i8* %8 to i64, !dbg !4288
  %11 = sub i64 %9, %10, !dbg !4288
  %12 = trunc i64 %11 to i32, !dbg !4284
  ret i32 %12, !dbg !4289
}

declare i32 @zedc_inflate(%struct.zedc_stream_s*, i32) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__in_hdr_bits(%struct.zedc_stream_s*) #5 !dbg !4290 {
  %2 = alloca %struct.zedc_stream_s*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca [4 x i8*], align 16
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %2, metadata !4293, metadata !532), !dbg !4294
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4295, metadata !532), !dbg !4296
  %6 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !4297
  %7 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %6, i32 0, i32 54, !dbg !4298
  %8 = load i32, i32* %7, align 8, !dbg !4298
  %9 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !4299
  %10 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %9, i32 0, i32 44, !dbg !4300
  %11 = load i8, i8* %10, align 2, !dbg !4300
  %12 = zext i8 %11 to i32, !dbg !4299
  %13 = add i32 %8, %12, !dbg !4301
  %14 = add i32 %13, 63, !dbg !4302
  %15 = udiv i32 %14, 64, !dbg !4303
  %16 = mul i32 %15, 8, !dbg !4304
  store i32 %16, i32* %3, align 4, !dbg !4296
  call void @llvm.dbg.declare(metadata i8* %4, metadata !4305, metadata !532), !dbg !4306
  %17 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !4307
  %18 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %17, i32 0, i32 49, !dbg !4308
  %19 = load i8, i8* %18, align 1, !dbg !4308
  %20 = zext i8 %19 to i32, !dbg !4307
  %21 = and i32 %20, 96, !dbg !4309
  %22 = ashr i32 %21, 5, !dbg !4310
  %23 = trunc i32 %22 to i8, !dbg !4311
  store i8 %23, i8* %4, align 1, !dbg !4306
  call void @llvm.dbg.declare(metadata [4 x i8*]* %5, metadata !4312, metadata !532), !dbg !4313
  %24 = bitcast [4 x i8*]* %5 to i8*, !dbg !4313
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* bitcast ([4 x i8*]* @__in_hdr_bits.btype_str to i8*), i64 32, i32 16, i1 false), !dbg !4313
  br label %25, !dbg !4314, !llvm.loop !4315

; <label>:25:                                     ; preds = %1
  %26 = load i32, i32* @zlib_trace, align 4, !dbg !4316
  %27 = and i32 %26, 2, !dbg !4320
  %28 = icmp ne i32 %27, 0, !dbg !4320
  br i1 %28, label %29, label %54, !dbg !4321

; <label>:29:                                     ; preds = %25
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @zlib_log, align 8, !dbg !4322
  %31 = load i32, i32* %3, align 4, !dbg !4324
  %32 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !4325
  %33 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %32, i32 0, i32 44, !dbg !4326
  %34 = load i8, i8* %33, align 2, !dbg !4326
  %35 = zext i8 %34 to i32, !dbg !4325
  %36 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !4327
  %37 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %36, i32 0, i32 54, !dbg !4328
  %38 = load i32, i32* %37, align 8, !dbg !4328
  %39 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !4329
  %40 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %39, i32 0, i32 55, !dbg !4330
  %41 = load i32, i32* %40, align 4, !dbg !4330
  %42 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !4331
  %43 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %42, i32 0, i32 45, !dbg !4332
  %44 = load i8, i8* %43, align 1, !dbg !4332
  %45 = zext i8 %44 to i32, !dbg !4331
  %46 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !4333
  %47 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %46, i32 0, i32 56, !dbg !4334
  %48 = load i32, i32* %47, align 8, !dbg !4334
  %49 = load i8, i8* %4, align 1, !dbg !4335
  %50 = zext i8 %49 to i64, !dbg !4336
  %51 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 %50, !dbg !4336
  %52 = load i8*, i8** %51, align 8, !dbg !4336
  %53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.70, i32 0, i32 0), i32 %31, i32 %35, i32 %38, i32 %41, i32 %45, i32 %48, i8* %52), !dbg !4337
  br label %54, !dbg !4337

; <label>:54:                                     ; preds = %29, %25
  br label %55, !dbg !4338

; <label>:55:                                     ; preds = %54
  %56 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !4340
  %57 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %56, i32 0, i32 54, !dbg !4341
  %58 = load i32, i32* %57, align 8, !dbg !4341
  ret i32 %58, !dbg !4342
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__in_hdr_scratch_len(%struct.zedc_stream_s*) #5 !dbg !4343 {
  %2 = alloca %struct.zedc_stream_s*, align 8
  %3 = alloca i32, align 4
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %2, metadata !4346, metadata !532), !dbg !4347
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4348, metadata !532), !dbg !4349
  %4 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !4350
  %5 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %4, i32 0, i32 44, !dbg !4351
  %6 = load i8, i8* %5, align 2, !dbg !4351
  %7 = zext i8 %6 to i32, !dbg !4350
  %8 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !4352
  %9 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %8, i32 0, i32 54, !dbg !4353
  %10 = load i32, i32* %9, align 8, !dbg !4353
  %11 = add i32 %7, %10, !dbg !4354
  %12 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !4355
  %13 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %12, i32 0, i32 55, !dbg !4356
  %14 = load i32, i32* %13, align 4, !dbg !4356
  %15 = add i32 %11, %14, !dbg !4357
  %16 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !4358
  %17 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %16, i32 0, i32 45, !dbg !4359
  %18 = load i8, i8* %17, align 1, !dbg !4359
  %19 = zext i8 %18 to i32, !dbg !4358
  %20 = add i32 %15, %19, !dbg !4360
  %21 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !4361
  %22 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %21, i32 0, i32 56, !dbg !4362
  %23 = load i32, i32* %22, align 8, !dbg !4362
  %24 = add i32 %20, %23, !dbg !4363
  store i32 %24, i32* %3, align 4, !dbg !4364
  %25 = load i32, i32* %3, align 4, !dbg !4365
  %26 = zext i32 %25 to i64, !dbg !4365
  %27 = udiv i64 %26, 8, !dbg !4366
  %28 = trunc i64 %27 to i32, !dbg !4367
  ret i32 %28, !dbg !4368
}

declare void @ddcb_hexdump(%struct._IO_FILE*, i8*, i32) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @get_bits(%struct.stream_ending*, i32, i64*) #5 !dbg !4369 {
  %4 = alloca %struct.stream_ending*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.stream_ending* %0, %struct.stream_ending** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.stream_ending** %4, metadata !4374, metadata !532), !dbg !4375
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4376, metadata !532), !dbg !4377
  store i64* %2, i64** %6, align 8
  call void @llvm.dbg.declare(metadata i64** %6, metadata !4378, metadata !532), !dbg !4379
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4380, metadata !532), !dbg !4381
  store i32 0, i32* %7, align 4, !dbg !4381
  call void @llvm.dbg.declare(metadata i32* %8, metadata !4382, metadata !532), !dbg !4383
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4384, metadata !532), !dbg !4385
  call void @llvm.dbg.declare(metadata i32* %10, metadata !4386, metadata !532), !dbg !4387
  call void @llvm.dbg.declare(metadata i64* %11, metadata !4388, metadata !532), !dbg !4389
  store i64 0, i64* %11, align 8, !dbg !4389
  %12 = load %struct.stream_ending*, %struct.stream_ending** %4, align 8, !dbg !4390
  %13 = getelementptr inbounds %struct.stream_ending, %struct.stream_ending* %12, i32 0, i32 1, !dbg !4392
  %14 = load i32, i32* %13, align 4, !dbg !4392
  store i32 %14, i32* %9, align 4, !dbg !4393
  %15 = load %struct.stream_ending*, %struct.stream_ending** %4, align 8, !dbg !4394
  %16 = getelementptr inbounds %struct.stream_ending, %struct.stream_ending* %15, i32 0, i32 4, !dbg !4395
  %17 = load i32, i32* %16, align 4, !dbg !4395
  store i32 %17, i32* %10, align 4, !dbg !4396
  store i32 0, i32* %8, align 4, !dbg !4397
  br label %18, !dbg !4398

; <label>:18:                                     ; preds = %63, %3
  %19 = load i32, i32* %8, align 4, !dbg !4399
  %20 = load i32, i32* %5, align 4, !dbg !4402
  %21 = icmp ult i32 %19, %20, !dbg !4403
  br i1 %21, label %22, label %66, !dbg !4404

; <label>:22:                                     ; preds = %18
  br label %23, !dbg !4405

; <label>:23:                                     ; preds = %57, %22
  %24 = load i32, i32* %9, align 4, !dbg !4407
  %25 = icmp ult i32 %24, 8, !dbg !4411
  br i1 %25, label %26, label %30, !dbg !4412

; <label>:26:                                     ; preds = %23
  %27 = load i32, i32* %8, align 4, !dbg !4413
  %28 = load i32, i32* %5, align 4, !dbg !4415
  %29 = icmp ult i32 %27, %28, !dbg !4416
  br label %30

; <label>:30:                                     ; preds = %26, %23
  %31 = phi i1 [ false, %23 ], [ %29, %26 ]
  br i1 %31, label %32, label %62, !dbg !4417

; <label>:32:                                     ; preds = %30
  %33 = load i64, i64* %11, align 8, !dbg !4419
  %34 = shl i64 %33, 1, !dbg !4419
  store i64 %34, i64* %11, align 8, !dbg !4419
  %35 = load i32, i32* %10, align 4, !dbg !4421
  %36 = load %struct.stream_ending*, %struct.stream_ending** %4, align 8, !dbg !4423
  %37 = getelementptr inbounds %struct.stream_ending, %struct.stream_ending* %36, i32 0, i32 3, !dbg !4424
  %38 = load i32, i32* %37, align 4, !dbg !4424
  %39 = icmp uge i32 %35, %38, !dbg !4425
  br i1 %39, label %40, label %41, !dbg !4426

; <label>:40:                                     ; preds = %32
  store i32 1, i32* %7, align 4, !dbg !4427
  br label %57, !dbg !4429

; <label>:41:                                     ; preds = %32
  %42 = load i32, i32* %10, align 4, !dbg !4430
  %43 = zext i32 %42 to i64, !dbg !4432
  %44 = load %struct.stream_ending*, %struct.stream_ending** %4, align 8, !dbg !4432
  %45 = getelementptr inbounds %struct.stream_ending, %struct.stream_ending* %44, i32 0, i32 0, !dbg !4433
  %46 = getelementptr inbounds [16 x i8], [16 x i8]* %45, i64 0, i64 %43, !dbg !4432
  %47 = load i8, i8* %46, align 1, !dbg !4432
  %48 = zext i8 %47 to i32, !dbg !4432
  %49 = load i32, i32* %9, align 4, !dbg !4434
  %50 = shl i32 1, %49, !dbg !4435
  %51 = and i32 %48, %50, !dbg !4436
  %52 = icmp ne i32 %51, 0, !dbg !4436
  br i1 %52, label %53, label %56, !dbg !4437

; <label>:53:                                     ; preds = %41
  %54 = load i64, i64* %11, align 8, !dbg !4438
  %55 = or i64 %54, 1, !dbg !4438
  store i64 %55, i64* %11, align 8, !dbg !4438
  br label %56, !dbg !4439

; <label>:56:                                     ; preds = %53, %41
  br label %57, !dbg !4440

; <label>:57:                                     ; preds = %56, %40
  %58 = load i32, i32* %9, align 4, !dbg !4441
  %59 = add i32 %58, 1, !dbg !4441
  store i32 %59, i32* %9, align 4, !dbg !4441
  %60 = load i32, i32* %8, align 4, !dbg !4443
  %61 = add i32 %60, 1, !dbg !4443
  store i32 %61, i32* %8, align 4, !dbg !4443
  br label %23, !dbg !4444, !llvm.loop !4445

; <label>:62:                                     ; preds = %30
  store i32 0, i32* %9, align 4, !dbg !4446
  br label %63, !dbg !4447

; <label>:63:                                     ; preds = %62
  %64 = load i32, i32* %10, align 4, !dbg !4448
  %65 = add i32 %64, 1, !dbg !4448
  store i32 %65, i32* %10, align 4, !dbg !4448
  br label %18, !dbg !4450, !llvm.loop !4451

; <label>:66:                                     ; preds = %18
  %67 = load i64, i64* %11, align 8, !dbg !4453
  %68 = load i64*, i64** %6, align 8, !dbg !4454
  store i64 %67, i64* %68, align 8, !dbg !4455
  %69 = load i32, i32* %7, align 4, !dbg !4456
  ret i32 %69, !dbg !4457
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @drop_bits(%struct.stream_ending*, i32) #5 !dbg !4458 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stream_ending*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stream_ending* %0, %struct.stream_ending** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.stream_ending** %4, metadata !4461, metadata !532), !dbg !4462
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4463, metadata !532), !dbg !4464
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4465, metadata !532), !dbg !4466
  %7 = load %struct.stream_ending*, %struct.stream_ending** %4, align 8, !dbg !4467
  %8 = getelementptr inbounds %struct.stream_ending, %struct.stream_ending* %7, i32 0, i32 4, !dbg !4468
  %9 = load i32, i32* %8, align 4, !dbg !4468
  %10 = load %struct.stream_ending*, %struct.stream_ending** %4, align 8, !dbg !4469
  %11 = getelementptr inbounds %struct.stream_ending, %struct.stream_ending* %10, i32 0, i32 1, !dbg !4470
  %12 = load i32, i32* %11, align 4, !dbg !4470
  %13 = load i32, i32* %5, align 4, !dbg !4471
  %14 = add i32 %12, %13, !dbg !4472
  %15 = udiv i32 %14, 8, !dbg !4473
  %16 = add i32 %9, %15, !dbg !4474
  store i32 %16, i32* %6, align 4, !dbg !4475
  %17 = load i32, i32* %6, align 4, !dbg !4476
  %18 = load %struct.stream_ending*, %struct.stream_ending** %4, align 8, !dbg !4478
  %19 = getelementptr inbounds %struct.stream_ending, %struct.stream_ending* %18, i32 0, i32 3, !dbg !4479
  %20 = load i32, i32* %19, align 4, !dbg !4479
  %21 = icmp uge i32 %17, %20, !dbg !4480
  br i1 %21, label %22, label %23, !dbg !4481

; <label>:22:                                     ; preds = %2
  store i32 1, i32* %3, align 4, !dbg !4482
  br label %35, !dbg !4482

; <label>:23:                                     ; preds = %2
  %24 = load i32, i32* %6, align 4, !dbg !4484
  %25 = load %struct.stream_ending*, %struct.stream_ending** %4, align 8, !dbg !4485
  %26 = getelementptr inbounds %struct.stream_ending, %struct.stream_ending* %25, i32 0, i32 4, !dbg !4486
  store i32 %24, i32* %26, align 4, !dbg !4487
  %27 = load %struct.stream_ending*, %struct.stream_ending** %4, align 8, !dbg !4488
  %28 = getelementptr inbounds %struct.stream_ending, %struct.stream_ending* %27, i32 0, i32 1, !dbg !4489
  %29 = load i32, i32* %28, align 4, !dbg !4489
  %30 = load i32, i32* %5, align 4, !dbg !4490
  %31 = add i32 %29, %30, !dbg !4491
  %32 = urem i32 %31, 8, !dbg !4492
  %33 = load %struct.stream_ending*, %struct.stream_ending** %4, align 8, !dbg !4493
  %34 = getelementptr inbounds %struct.stream_ending, %struct.stream_ending* %33, i32 0, i32 1, !dbg !4494
  store i32 %32, i32* %34, align 4, !dbg !4495
  store i32 0, i32* %3, align 4, !dbg !4496
  br label %35, !dbg !4496

; <label>:35:                                     ; preds = %23, %22
  %36 = load i32, i32* %3, align 4, !dbg !4497
  ret i32 %36, !dbg !4497
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @sync_to_byte(%struct.stream_ending*) #5 !dbg !4498 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stream_ending*, align 8
  store %struct.stream_ending* %0, %struct.stream_ending** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.stream_ending** %3, metadata !4501, metadata !532), !dbg !4502
  %4 = load %struct.stream_ending*, %struct.stream_ending** %3, align 8, !dbg !4503
  %5 = getelementptr inbounds %struct.stream_ending, %struct.stream_ending* %4, i32 0, i32 1, !dbg !4505
  %6 = load i32, i32* %5, align 4, !dbg !4505
  %7 = icmp eq i32 %6, 0, !dbg !4506
  br i1 %7, label %8, label %9, !dbg !4507

; <label>:8:                                      ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !4508
  br label %16, !dbg !4508

; <label>:9:                                      ; preds = %1
  %10 = load %struct.stream_ending*, %struct.stream_ending** %3, align 8, !dbg !4509
  %11 = getelementptr inbounds %struct.stream_ending, %struct.stream_ending* %10, i32 0, i32 1, !dbg !4510
  store i32 0, i32* %11, align 4, !dbg !4511
  %12 = load %struct.stream_ending*, %struct.stream_ending** %3, align 8, !dbg !4512
  %13 = getelementptr inbounds %struct.stream_ending, %struct.stream_ending* %12, i32 0, i32 4, !dbg !4513
  %14 = load i32, i32* %13, align 4, !dbg !4514
  %15 = add i32 %14, 1, !dbg !4514
  store i32 %15, i32* %13, align 4, !dbg !4514
  store i32 0, i32* %2, align 4, !dbg !4515
  br label %16, !dbg !4515

; <label>:16:                                     ; preds = %9, %8
  %17 = load i32, i32* %2, align 4, !dbg !4516
  ret i32 %17, !dbg !4516
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @__reset_hdr_scratch_len(%struct.zedc_stream_s*) #5 !dbg !4517 {
  %2 = alloca %struct.zedc_stream_s*, align 8
  store %struct.zedc_stream_s* %0, %struct.zedc_stream_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.zedc_stream_s** %2, metadata !4520, metadata !532), !dbg !4521
  %3 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !4522
  %4 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %3, i32 0, i32 44, !dbg !4523
  store i8 0, i8* %4, align 2, !dbg !4524
  %5 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !4525
  %6 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %5, i32 0, i32 54, !dbg !4526
  store i32 0, i32* %6, align 8, !dbg !4527
  %7 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !4528
  %8 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %7, i32 0, i32 55, !dbg !4529
  store i32 0, i32* %8, align 4, !dbg !4530
  %9 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !4531
  %10 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %9, i32 0, i32 45, !dbg !4532
  store i8 0, i8* %10, align 1, !dbg !4533
  %11 = load %struct.zedc_stream_s*, %struct.zedc_stream_s** %2, align 8, !dbg !4534
  %12 = getelementptr inbounds %struct.zedc_stream_s, %struct.zedc_stream_s* %11, i32 0, i32 56, !dbg !4535
  store i32 0, i32* %12, align 8, !dbg !4536
  ret void, !dbg !4537
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!487, !488}
!llvm.ident = !{!489}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !266, globals: !472)
!1 = !DIFile(filename: "/home/lichi/Desktop/genwqe/[task]lib--__libzADC.o/[inter]lib--hardware.o.i", directory: "/home/lichi/Desktop")
!2 = !{!3, !221, !240, !247, !259}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 71, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/confname.h", directory: "/home/lichi/Desktop")
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
!221 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "e_head_state", file: !222, line: 152, size: 32, align: 32, elements: !223)
!222 = !DIFile(filename: "../include/libzHW.h", directory: "/home/lichi/Desktop")
!223 = !{!224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239}
!224 = !DIEnumerator(name: "HEADER_START", value: 0)
!225 = !DIEnumerator(name: "FLAGS_CHECK_EMPTY", value: 1)
!226 = !DIEnumerator(name: "FLAGS_CHECK_EXTRA", value: 2)
!227 = !DIEnumerator(name: "FLAGS_GET_EXTRA_LEN1", value: 3)
!228 = !DIEnumerator(name: "FLAGS_GET_EXTRA_LEN2", value: 4)
!229 = !DIEnumerator(name: "FLAGS_GET_EXTRA", value: 5)
!230 = !DIEnumerator(name: "FLAGS_CHECK_FNAME", value: 6)
!231 = !DIEnumerator(name: "FLAGS_GET_FNAME", value: 7)
!232 = !DIEnumerator(name: "FLAGS_CHECK_FCOMMENT", value: 8)
!233 = !DIEnumerator(name: "FLAGS_GET_FCOMMENT", value: 9)
!234 = !DIEnumerator(name: "FLAGS_CHECK_FHCRC", value: 10)
!235 = !DIEnumerator(name: "FLAGS_GET_FHCRC1", value: 11)
!236 = !DIEnumerator(name: "FLAGS_GET_FHCRC2", value: 12)
!237 = !DIEnumerator(name: "FLAGS_CHECK_FTEXT", value: 13)
!238 = !DIEnumerator(name: "ZLIB_ADLER", value: 14)
!239 = !DIEnumerator(name: "HEADER_DONE", value: 15)
!240 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "zedc_mtype", file: !222, line: 131, size: 32, align: 32, elements: !241)
!241 = !{!242, !243, !244, !245, !246}
!242 = !DIEnumerator(name: "DDCB_DMA_TYPE_MASK", value: 24)
!243 = !DIEnumerator(name: "DDCB_DMA_TYPE_FLAT", value: 8)
!244 = !DIEnumerator(name: "DDCB_DMA_TYPE_SGLIST", value: 16)
!245 = !DIEnumerator(name: "DDCB_DMA_WRITEABLE", value: 4)
!246 = !DIEnumerator(name: "DDCB_DMA_PIN_MEMORY", value: 32)
!247 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "zlib_impl", file: !248, line: 26, size: 32, align: 32, elements: !249)
!248 = !DIFile(filename: "../include/zaddons.h", directory: "/home/lichi/Desktop")
!249 = !{!250, !251, !252, !253, !254, !255, !256, !257, !258}
!250 = !DIEnumerator(name: "ZLIB_SW_IMPL", value: 0)
!251 = !DIEnumerator(name: "ZLIB_HW_IMPL", value: 1)
!252 = !DIEnumerator(name: "ZLIB_MAX_IMPL", value: 2)
!253 = !DIEnumerator(name: "ZLIB_IMPL_MASK", value: 15)
!254 = !DIEnumerator(name: "ZLIB_FLAG_USE_FLAT_BUFFERS", value: 16)
!255 = !DIEnumerator(name: "ZLIB_FLAG_CACHE_HANDLES", value: 32)
!256 = !DIEnumerator(name: "ZLIB_FLAG_OMIT_LAST_DICT", value: 64)
!257 = !DIEnumerator(name: "ZLIB_FLAG_USE_POLLING", value: 128)
!258 = !DIEnumerator(name: "ZLIB_FLAG_DISABLE_CV_FOR_Z_STREAM_END", value: 256)
!259 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "stream_state", file: !260, line: 1042, size: 32, align: 32, elements: !261)
!260 = !DIFile(filename: "hardware.c", directory: "/home/lichi/Desktop")
!261 = !{!262, !263, !264, !265}
!262 = !DIEnumerator(name: "READ_HDR", value: 0)
!263 = !DIEnumerator(name: "COPY_BLOCK", value: 1)
!264 = !DIEnumerator(name: "FIXED_HUFFMAN", value: 2)
!265 = !DIEnumerator(name: "DYN_HUFFMAN", value: 3)
!266 = !{!267, !268, !466, !272, !468, !275, !297, !471, !301}
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64, align: 64)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_state", file: !260, line: 52, size: 9536, align: 64, elements: !270)
!270 = !{!271, !273, !274, !276, !451, !452, !453, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "card_no", scope: !269, file: !260, line: 53, baseType: !272, size: 32, align: 32)
!272 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "card_type", scope: !269, file: !260, line: 54, baseType: !272, size: 32, align: 32, offset: 32)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !269, file: !260, line: 55, baseType: !275, size: 32, align: 32, offset: 64)
!275 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !269, file: !260, line: 57, baseType: !277, size: 8704, align: 64, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "zedc_stream", file: !222, line: 345, baseType: !278)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zedc_stream_s", file: !222, line: 218, size: 8704, align: 64, elements: !279)
!279 = !{!280, !281, !282, !283, !284, !285, !286, !287, !293, !294, !296, !298, !299, !300, !302, !303, !304, !349, !351, !352, !353, !354, !355, !365, !366, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !391, !392, !396, !397, !398, !399, !400, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !436, !437, !438, !439, !440, !441, !442, !443, !447, !448, !449, !450}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !278, file: !222, line: 220, baseType: !272, size: 32, align: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !278, file: !222, line: 221, baseType: !272, size: 32, align: 32, offset: 32)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "windowBits", scope: !278, file: !222, line: 222, baseType: !272, size: 32, align: 32, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "memLevel", scope: !278, file: !222, line: 227, baseType: !272, size: 32, align: 32, offset: 96)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "strategy", scope: !278, file: !222, line: 228, baseType: !272, size: 32, align: 32, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !278, file: !222, line: 229, baseType: !272, size: 32, align: 32, offset: 160)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "data_type", scope: !278, file: !222, line: 230, baseType: !272, size: 32, align: 32, offset: 192)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !278, file: !222, line: 233, baseType: !288, size: 64, align: 64, offset: 256)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64, align: 64)
!289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !291, line: 48, baseType: !292)
!291 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop")
!292 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !278, file: !222, line: 234, baseType: !275, size: 32, align: 32, offset: 320)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !278, file: !222, line: 235, baseType: !295, size: 64, align: 64, offset: 384)
!295 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !278, file: !222, line: 237, baseType: !297, size: 64, align: 64, offset: 448)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !278, file: !222, line: 238, baseType: !275, size: 32, align: 32, offset: 512)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !278, file: !222, line: 239, baseType: !295, size: 64, align: 64, offset: 576)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !278, file: !222, line: 241, baseType: !301, size: 32, align: 32, offset: 640)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !291, line: 51, baseType: !275)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "adler32", scope: !278, file: !222, line: 242, baseType: !301, size: 32, align: 32, offset: 672)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !278, file: !222, line: 255, baseType: !267, size: 64, align: 64, offset: 704)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !278, file: !222, line: 256, baseType: !305, size: 1856, align: 64, offset: 768)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ddcb_cmd", file: !306, line: 154, size: 1856, align: 64, elements: !307)
!306 = !DIFile(filename: "../include/libddcb.h", directory: "/home/lichi/Desktop")
!307 = !{!308, !312, !313, !315, !316, !317, !318, !321, !322, !323, !324, !326, !327, !328, !329, !330, !334}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "next_addr", scope: !305, file: !306, line: 155, baseType: !309, size: 64, align: 64)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !310, line: 30, baseType: !311)
!310 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "/home/lichi/Desktop")
!311 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !305, file: !306, line: 156, baseType: !309, size: 64, align: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "acfunc", scope: !305, file: !306, line: 158, baseType: !314, size: 8, align: 8, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !310, line: 20, baseType: !292)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !305, file: !306, line: 159, baseType: !314, size: 8, align: 8, offset: 136)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "asiv_length", scope: !305, file: !306, line: 160, baseType: !314, size: 8, align: 8, offset: 144)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "asv_length", scope: !305, file: !306, line: 161, baseType: !314, size: 8, align: 8, offset: 152)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "cmdopts", scope: !305, file: !306, line: 162, baseType: !319, size: 16, align: 16, offset: 160)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !310, line: 23, baseType: !320)
!320 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "retc", scope: !305, file: !306, line: 163, baseType: !319, size: 16, align: 16, offset: 176)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "attn", scope: !305, file: !306, line: 165, baseType: !319, size: 16, align: 16, offset: 192)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "vcrc", scope: !305, file: !306, line: 166, baseType: !319, size: 16, align: 16, offset: 208)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !305, file: !306, line: 167, baseType: !325, size: 32, align: 32, offset: 224)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !310, line: 26, baseType: !275)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "deque_ts", scope: !305, file: !306, line: 169, baseType: !309, size: 64, align: 64, offset: 256)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "cmplt_ts", scope: !305, file: !306, line: 170, baseType: !309, size: 64, align: 64, offset: 320)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "disp_ts", scope: !305, file: !306, line: 171, baseType: !309, size: 64, align: 64, offset: 384)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "ddata_addr", scope: !305, file: !306, line: 173, baseType: !309, size: 64, align: 64, offset: 448)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "asv", scope: !305, file: !306, line: 175, baseType: !331, size: 512, align: 8, offset: 512)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 512, align: 8, elements: !332)
!332 = !{!333}
!333 = !DISubrange(count: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, scope: !305, file: !306, line: 177, baseType: !335, size: 832, align: 64, offset: 1024)
!335 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !305, file: !306, line: 177, size: 832, align: 64, elements: !336)
!336 = !{!337, !345}
!337 = !DIDerivedType(tag: DW_TAG_member, scope: !335, file: !306, line: 179, baseType: !338, size: 832, align: 64)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !335, file: !306, line: 179, size: 832, align: 64, elements: !339)
!339 = !{!340, !341}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "ats", scope: !338, file: !306, line: 180, baseType: !309, size: 64, align: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "asiv", scope: !338, file: !306, line: 181, baseType: !342, size: 768, align: 8, offset: 64)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 768, align: 8, elements: !343)
!343 = !{!344}
!344 = !DISubrange(count: 96)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "__asiv", scope: !335, file: !306, line: 184, baseType: !346, size: 832, align: 8)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 832, align: 8, elements: !347)
!347 = !{!348}
!348 = !DISubrange(count: 104)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "retc", scope: !278, file: !222, line: 257, baseType: !350, size: 16, align: 16, offset: 2624)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !291, line: 49, baseType: !320)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "attn", scope: !278, file: !222, line: 258, baseType: !350, size: 16, align: 16, offset: 2640)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !278, file: !222, line: 259, baseType: !301, size: 32, align: 32, offset: 2656)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !278, file: !222, line: 262, baseType: !272, size: 32, align: 32, offset: 2688)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !278, file: !222, line: 263, baseType: !272, size: 32, align: 32, offset: 2720)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "out_fifo", scope: !278, file: !222, line: 266, baseType: !356, size: 2112, align: 32, offset: 2752)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zedc_fifo", file: !357, line: 45, size: 2112, align: 32, elements: !358)
!357 = !DIFile(filename: "../include/deflate_fifo.h", directory: "/home/lichi/Desktop")
!358 = !{!359, !360, !361}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !356, file: !357, line: 46, baseType: !275, size: 32, align: 32)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "pop", scope: !356, file: !357, line: 47, baseType: !275, size: 32, align: 32, offset: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "fifo", scope: !356, file: !357, line: 48, baseType: !362, size: 2048, align: 8, offset: 64)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 2048, align: 8, elements: !363)
!363 = !{!364}
!364 = !DISubrange(count: 256)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "in_fifo", scope: !278, file: !222, line: 267, baseType: !356, size: 2112, align: 32, offset: 4864)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "header_state", scope: !278, file: !222, line: 268, baseType: !367, size: 32, align: 32, offset: 6976)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "head_state", file: !222, line: 163, baseType: !221)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_hcrc", scope: !278, file: !222, line: 269, baseType: !350, size: 16, align: 16, offset: 7008)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_header_idx", scope: !278, file: !222, line: 270, baseType: !272, size: 32, align: 32, offset: 7040)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "onumbits", scope: !278, file: !222, line: 273, baseType: !272, size: 32, align: 32, offset: 7072)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "obyte", scope: !278, file: !222, line: 274, baseType: !290, size: 8, align: 8, offset: 7104)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "eob_seen", scope: !278, file: !222, line: 277, baseType: !272, size: 32, align: 32, offset: 7136)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "eob_added", scope: !278, file: !222, line: 278, baseType: !272, size: 32, align: 32, offset: 7168)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "header_added", scope: !278, file: !222, line: 279, baseType: !272, size: 32, align: 32, offset: 7200)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "trailer_added", scope: !278, file: !222, line: 280, baseType: !272, size: 32, align: 32, offset: 7232)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "havedict", scope: !278, file: !222, line: 281, baseType: !272, size: 32, align: 32, offset: 7264)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "wsp", scope: !278, file: !222, line: 284, baseType: !378, size: 64, align: 64, offset: 7296)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64, align: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zedc_wsp", file: !380, line: 93, size: 528640, align: 8, elements: !381)
!380 = !DIFile(filename: "../include/deflate_ddcb.h", directory: "/home/lichi/Desktop")
!381 = !{!382, !387}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !379, file: !380, line: 94, baseType: !383, size: 524544, align: 8)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 524544, align: 8, elements: !384)
!384 = !{!385, !386}
!385 = !DISubrange(count: 2)
!386 = !DISubrange(count: 32784)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !379, file: !380, line: 95, baseType: !388, size: 4096, align: 8, offset: 524544)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 4096, align: 8, elements: !389)
!389 = !{!390}
!390 = !DISubrange(count: 512)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "wsp_page", scope: !278, file: !222, line: 285, baseType: !272, size: 32, align: 32, offset: 7360)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "dma_type", scope: !278, file: !222, line: 286, baseType: !393, size: 96, align: 32, offset: 7392)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, size: 96, align: 32, elements: !394)
!394 = !{!395}
!395 = !DISubrange(count: 3)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "file_size", scope: !278, file: !222, line: 289, baseType: !301, size: 32, align: 32, offset: 7488)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "file_adler32", scope: !278, file: !222, line: 290, baseType: !301, size: 32, align: 32, offset: 7520)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "file_crc32", scope: !278, file: !222, line: 291, baseType: !301, size: 32, align: 32, offset: 7552)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "dict_adler32", scope: !278, file: !222, line: 292, baseType: !301, size: 32, align: 32, offset: 7584)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_head", scope: !278, file: !222, line: 293, baseType: !401, size: 64, align: 64, offset: 7616)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64, align: 64)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gzedc_header_s", file: !222, line: 169, size: 640, align: 64, elements: !403)
!403 = !{!404, !405, !406, !407, !408, !409, !410, !411, !414, !415, !416, !417, !418}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !402, file: !222, line: 170, baseType: !272, size: 32, align: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !402, file: !222, line: 171, baseType: !295, size: 64, align: 64, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "xflags", scope: !402, file: !222, line: 172, baseType: !272, size: 32, align: 32, offset: 128)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "os", scope: !402, file: !222, line: 173, baseType: !272, size: 32, align: 32, offset: 160)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !402, file: !222, line: 174, baseType: !297, size: 64, align: 64, offset: 192)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "extra_len", scope: !402, file: !222, line: 175, baseType: !275, size: 32, align: 32, offset: 256)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "extra_max", scope: !402, file: !222, line: 176, baseType: !275, size: 32, align: 32, offset: 288)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !402, file: !222, line: 177, baseType: !412, size: 64, align: 64, offset: 320)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64, align: 64)
!413 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "name_max", scope: !402, file: !222, line: 178, baseType: !275, size: 32, align: 32, offset: 384)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !402, file: !222, line: 179, baseType: !412, size: 64, align: 64, offset: 448)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "comm_max", scope: !402, file: !222, line: 180, baseType: !275, size: 32, align: 32, offset: 512)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "hcrc", scope: !402, file: !222, line: 181, baseType: !272, size: 32, align: 32, offset: 544)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !402, file: !222, line: 182, baseType: !272, size: 32, align: 32, offset: 576)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "in_hdr_scratch_len", scope: !278, file: !222, line: 297, baseType: !301, size: 32, align: 32, offset: 7680)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "in_hdr_bits", scope: !278, file: !222, line: 298, baseType: !350, size: 16, align: 16, offset: 7712)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_ib", scope: !278, file: !222, line: 299, baseType: !290, size: 8, align: 8, offset: 7728)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_ib", scope: !278, file: !222, line: 300, baseType: !290, size: 8, align: 8, offset: 7736)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "inp_processed", scope: !278, file: !222, line: 303, baseType: !301, size: 32, align: 32, offset: 7744)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "outp_returned", scope: !278, file: !222, line: 304, baseType: !301, size: 32, align: 32, offset: 7776)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "proc_bits", scope: !278, file: !222, line: 305, baseType: !290, size: 8, align: 8, offset: 7808)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "infl_stat", scope: !278, file: !222, line: 313, baseType: !290, size: 8, align: 8, offset: 7816)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_start", scope: !278, file: !222, line: 318, baseType: !301, size: 32, align: 32, offset: 7840)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "out_hdr_bits", scope: !278, file: !222, line: 319, baseType: !350, size: 16, align: 16, offset: 7872)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "out_hdr_start_bits", scope: !278, file: !222, line: 320, baseType: !290, size: 8, align: 8, offset: 7888)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "copyblock_len", scope: !278, file: !222, line: 321, baseType: !350, size: 16, align: 16, offset: 7904)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "tree_bits", scope: !278, file: !222, line: 324, baseType: !301, size: 32, align: 32, offset: 7936)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "pad_bits", scope: !278, file: !222, line: 325, baseType: !301, size: 32, align: 32, offset: 7968)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_bits", scope: !278, file: !222, line: 326, baseType: !301, size: 32, align: 32, offset: 8000)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "pre_scratch_bits", scope: !278, file: !222, line: 327, baseType: !435, size: 64, align: 64, offset: 8064)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !291, line: 55, baseType: !295)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "inp_data_offs", scope: !278, file: !222, line: 328, baseType: !301, size: 32, align: 32, offset: 8128)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "in_data_used", scope: !278, file: !222, line: 329, baseType: !301, size: 32, align: 32, offset: 8160)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "dict_len", scope: !278, file: !222, line: 332, baseType: !350, size: 16, align: 16, offset: 8192)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "out_dict_offs", scope: !278, file: !222, line: 333, baseType: !290, size: 8, align: 8, offset: 8208)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "obytes_in_dict", scope: !278, file: !222, line: 334, baseType: !350, size: 16, align: 16, offset: 8224)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "prefx_len", scope: !278, file: !222, line: 337, baseType: !272, size: 32, align: 32, offset: 8256)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "prefx_idx", scope: !278, file: !222, line: 338, baseType: !272, size: 32, align: 32, offset: 8288)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "prefx", scope: !278, file: !222, line: 339, baseType: !444, size: 144, align: 8, offset: 8320)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 144, align: 8, elements: !445)
!445 = !{!446}
!446 = !DISubrange(count: 18)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "xlen", scope: !278, file: !222, line: 340, baseType: !350, size: 16, align: 16, offset: 8464)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "postfx_len", scope: !278, file: !222, line: 342, baseType: !272, size: 32, align: 32, offset: 8480)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "postfx_idx", scope: !278, file: !222, line: 343, baseType: !272, size: 32, align: 32, offset: 8512)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "postfx", scope: !278, file: !222, line: 344, baseType: !444, size: 144, align: 8, offset: 8544)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !269, file: !260, line: 58, baseType: !272, size: 32, align: 32, offset: 8832)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "page_size", scope: !269, file: !260, line: 59, baseType: !275, size: 32, align: 32, offset: 8864)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "ibuf_total", scope: !269, file: !260, line: 62, baseType: !454, size: 64, align: 64, offset: 8896)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !455, line: 216, baseType: !295)
!455 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop")
!456 = !DIDerivedType(tag: DW_TAG_member, name: "ibuf_avail", scope: !269, file: !260, line: 63, baseType: !454, size: 64, align: 64, offset: 8960)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "ibuf_base", scope: !269, file: !260, line: 64, baseType: !297, size: 64, align: 64, offset: 9024)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "ibuf", scope: !269, file: !260, line: 65, baseType: !297, size: 64, align: 64, offset: 9088)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_total", scope: !269, file: !260, line: 67, baseType: !454, size: 64, align: 64, offset: 9152)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_avail", scope: !269, file: !260, line: 68, baseType: !454, size: 64, align: 64, offset: 9216)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_base", scope: !269, file: !260, line: 69, baseType: !297, size: 64, align: 64, offset: 9280)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "obuf", scope: !269, file: !260, line: 70, baseType: !297, size: 64, align: 64, offset: 9344)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_next", scope: !269, file: !260, line: 71, baseType: !297, size: 64, align: 64, offset: 9408)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "inflate_req", scope: !269, file: !260, line: 73, baseType: !275, size: 32, align: 32, offset: 9472)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "deflate_req", scope: !269, file: !260, line: 74, baseType: !275, size: 32, align: 32, offset: 9504)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64, align: 64)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "gzedc_header", file: !222, line: 185, baseType: !402)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "zedc_handle_t", file: !222, line: 354, baseType: !469)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64, align: 64)
!470 = !DICompositeType(tag: DW_TAG_structure_type, name: "zedc_dev_t", file: !222, line: 354, flags: DIFlagFwdDecl)
!471 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!472 = !{!473, !477, !478, !479, !480, !481}
!473 = distinct !DIGlobalVariable(name: "zedc_cards", scope: !0, file: !260, line: 105, type: !474, isLocal: true, isDefinition: true, variable: [129 x %struct.zedc_dev_t*]* @zedc_cards)
!474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !468, size: 8256, align: 64, elements: !475)
!475 = !{!476}
!476 = !DISubrange(count: 129)
!477 = distinct !DIGlobalVariable(name: "zlib_ibuf_total", scope: !0, file: !260, line: 99, type: !275, isLocal: true, isDefinition: true, variable: i32* @zlib_ibuf_total)
!478 = distinct !DIGlobalVariable(name: "zlib_xcheck", scope: !0, file: !260, line: 98, type: !272, isLocal: true, isDefinition: true, variable: i32* @zlib_xcheck)
!479 = distinct !DIGlobalVariable(name: "zedc_verbose", scope: !0, file: !260, line: 97, type: !272, isLocal: true, isDefinition: true, variable: i32* @zedc_verbose)
!480 = distinct !DIGlobalVariable(name: "zlib_obuf_total", scope: !0, file: !260, line: 100, type: !275, isLocal: true, isDefinition: true, variable: i32* @zlib_obuf_total)
!481 = distinct !DIGlobalVariable(name: "state_str", scope: !0, file: !260, line: 1049, type: !482, isLocal: true, isDefinition: true, variable: [4 x i8*]* @state_str)
!482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !483, size: 256, align: 64, elements: !485)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64, align: 64)
!484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !413)
!485 = !{!486}
!486 = !DISubrange(count: 4)
!487 = !{i32 2, !"Dwarf Version", i32 4}
!488 = !{i32 2, !"Debug Info Version", i32 3}
!489 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!490 = distinct !DISubprogram(name: "h_deflateBound", scope: !260, file: !260, line: 217, type: !491, isLocal: false, isDefinition: true, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !530)
!491 = !DISubroutineType(types: !492)
!492 = !{!493, !495, !493}
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "uLong", file: !494, line: 394, baseType: !295)
!494 = !DIFile(filename: "/usr/local/include/zconf.h", directory: "/home/lichi/Desktop")
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "z_streamp", file: !496, line: 108, baseType: !497)
!496 = !DIFile(filename: "/usr/local/include/zlib.h", directory: "/home/lichi/Desktop")
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64, align: 64)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "z_stream", file: !496, line: 106, baseType: !499)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_stream_s", file: !496, line: 86, size: 896, align: 64, elements: !500)
!500 = !{!501, !505, !507, !508, !509, !510, !511, !512, !515, !521, !526, !527, !528, !529}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !499, file: !496, line: 87, baseType: !502, size: 64, align: 64)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64, align: 64)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bytef", file: !494, line: 400, baseType: !504)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "Byte", file: !494, line: 391, baseType: !292)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !499, file: !496, line: 88, baseType: !506, size: 32, align: 32, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "uInt", file: !494, line: 393, baseType: !275)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !499, file: !496, line: 89, baseType: !493, size: 64, align: 64, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !499, file: !496, line: 91, baseType: !502, size: 64, align: 64, offset: 192)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !499, file: !496, line: 92, baseType: !506, size: 32, align: 32, offset: 256)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !499, file: !496, line: 93, baseType: !493, size: 64, align: 64, offset: 320)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !499, file: !496, line: 95, baseType: !412, size: 64, align: 64, offset: 384)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !499, file: !496, line: 96, baseType: !513, size: 64, align: 64, offset: 448)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64, align: 64)
!514 = !DICompositeType(tag: DW_TAG_structure_type, name: "internal_state", file: !496, line: 84, flags: DIFlagFwdDecl)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "zalloc", scope: !499, file: !496, line: 98, baseType: !516, size: 64, align: 64, offset: 512)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "alloc_func", file: !496, line: 81, baseType: !517)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64, align: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!520, !520, !506, !506}
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "voidpf", file: !494, line: 409, baseType: !267)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "zfree", scope: !499, file: !496, line: 99, baseType: !522, size: 64, align: 64, offset: 576)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "free_func", file: !496, line: 82, baseType: !523)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64, align: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{null, !520, !520}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !499, file: !496, line: 100, baseType: !520, size: 64, align: 64, offset: 640)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "data_type", scope: !499, file: !496, line: 102, baseType: !272, size: 32, align: 32, offset: 704)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "adler", scope: !499, file: !496, line: 104, baseType: !493, size: 64, align: 64, offset: 768)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !499, file: !496, line: 105, baseType: !493, size: 64, align: 64, offset: 832)
!530 = !{}
!531 = !DILocalVariable(name: "strm", arg: 1, scope: !490, file: !260, line: 217, type: !495)
!532 = !DIExpression()
!533 = !DILocation(line: 217, column: 32, scope: !490)
!534 = !DILocalVariable(name: "sourceLen", arg: 2, scope: !490, file: !260, line: 217, type: !493)
!535 = !DILocation(line: 217, column: 68, scope: !490)
!536 = !DILocalVariable(name: "page_size", scope: !490, file: !260, line: 219, type: !275)
!537 = !DILocation(line: 219, column: 15, scope: !490)
!538 = !DILocation(line: 219, column: 27, scope: !490)
!539 = !DILocation(line: 221, column: 9, scope: !490)
!540 = !DILocation(line: 221, column: 19, scope: !490)
!541 = !DILocation(line: 221, column: 23, scope: !490)
!542 = !DILocation(line: 221, column: 28, scope: !490)
!543 = !DILocation(line: 221, column: 26, scope: !490)
!544 = !DILocation(line: 221, column: 2, scope: !490)
!545 = distinct !DISubprogram(name: "h_deflateInit2_", scope: !260, file: !260, line: 224, type: !546, isLocal: false, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !530)
!546 = !DISubroutineType(types: !547)
!547 = !{!272, !495, !272, !272, !272, !272, !272, !483, !272}
!548 = !DILocalVariable(name: "strm", arg: 1, scope: !545, file: !260, line: 224, type: !495)
!549 = !DILocation(line: 224, column: 31, scope: !545)
!550 = !DILocalVariable(name: "level", arg: 2, scope: !545, file: !260, line: 225, type: !272)
!551 = !DILocation(line: 225, column: 11, scope: !545)
!552 = !DILocalVariable(name: "method", arg: 3, scope: !545, file: !260, line: 226, type: !272)
!553 = !DILocation(line: 226, column: 11, scope: !545)
!554 = !DILocalVariable(name: "windowBits", arg: 4, scope: !545, file: !260, line: 227, type: !272)
!555 = !DILocation(line: 227, column: 11, scope: !545)
!556 = !DILocalVariable(name: "memLevel", arg: 5, scope: !545, file: !260, line: 228, type: !272)
!557 = !DILocation(line: 228, column: 11, scope: !545)
!558 = !DILocalVariable(name: "strategy", arg: 6, scope: !545, file: !260, line: 229, type: !272)
!559 = !DILocation(line: 229, column: 11, scope: !545)
!560 = !DILocalVariable(name: "version", arg: 7, scope: !545, file: !260, line: 230, type: !483)
!561 = !DILocation(line: 230, column: 19, scope: !545)
!562 = !DILocalVariable(name: "stream_size", arg: 8, scope: !545, file: !260, line: 231, type: !272)
!563 = !DILocation(line: 231, column: 11, scope: !545)
!564 = !DILocalVariable(name: "rc", scope: !545, file: !260, line: 233, type: !272)
!565 = !DILocation(line: 233, column: 6, scope: !545)
!566 = !DILocalVariable(name: "err_code", scope: !545, file: !260, line: 233, type: !272)
!567 = !DILocation(line: 233, column: 10, scope: !545)
!568 = !DILocalVariable(name: "s", scope: !545, file: !260, line: 234, type: !268)
!569 = !DILocation(line: 234, column: 19, scope: !545)
!570 = !DILocalVariable(name: "zedc", scope: !545, file: !260, line: 235, type: !468)
!571 = !DILocation(line: 235, column: 16, scope: !545)
!572 = !DILocalVariable(name: "page_size", scope: !545, file: !260, line: 236, type: !275)
!573 = !DILocation(line: 236, column: 15, scope: !545)
!574 = !DILocation(line: 236, column: 27, scope: !545)
!575 = !DILocation(line: 238, column: 2, scope: !545)
!576 = !DILocation(line: 238, column: 8, scope: !545)
!577 = !DILocation(line: 238, column: 17, scope: !545)
!578 = !DILocation(line: 239, column: 2, scope: !545)
!579 = !DILocation(line: 239, column: 8, scope: !545)
!580 = !DILocation(line: 239, column: 18, scope: !545)
!581 = !DILocation(line: 241, column: 6, scope: !545)
!582 = !DILocation(line: 241, column: 4, scope: !545)
!583 = !DILocation(line: 242, column: 6, scope: !584)
!584 = distinct !DILexicalBlock(scope: !545, file: !260, line: 242, column: 6)
!585 = !DILocation(line: 242, column: 8, scope: !584)
!586 = !DILocation(line: 242, column: 6, scope: !545)
!587 = !DILocation(line: 243, column: 3, scope: !584)
!588 = !DILocation(line: 245, column: 17, scope: !545)
!589 = !DILocation(line: 245, column: 2, scope: !545)
!590 = !DILocation(line: 245, column: 5, scope: !545)
!591 = !DILocation(line: 245, column: 15, scope: !545)
!592 = !DILocation(line: 246, column: 15, scope: !545)
!593 = !DILocation(line: 246, column: 2, scope: !545)
!594 = !DILocation(line: 246, column: 5, scope: !545)
!595 = !DILocation(line: 246, column: 13, scope: !545)
!596 = !DILocation(line: 247, column: 2, scope: !545)
!597 = !DILocation(line: 247, column: 5, scope: !545)
!598 = !DILocation(line: 247, column: 10, scope: !545)
!599 = !DILocation(line: 249, column: 6, scope: !600)
!600 = distinct !DILexicalBlock(scope: !545, file: !260, line: 249, column: 6)
!601 = !DILocation(line: 249, column: 25, scope: !600)
!602 = !DILocation(line: 249, column: 6, scope: !545)
!603 = !DILocation(line: 250, column: 3, scope: !600)
!604 = !DILocation(line: 250, column: 6, scope: !600)
!605 = !DILocation(line: 250, column: 11, scope: !600)
!606 = !DILocation(line: 252, column: 21, scope: !545)
!607 = !DILocation(line: 252, column: 24, scope: !545)
!608 = !DILocation(line: 252, column: 33, scope: !545)
!609 = !DILocation(line: 252, column: 36, scope: !545)
!610 = !DILocation(line: 252, column: 47, scope: !545)
!611 = !DILocation(line: 252, column: 50, scope: !545)
!612 = !DILocation(line: 252, column: 9, scope: !545)
!613 = !DILocation(line: 252, column: 7, scope: !545)
!614 = !DILocation(line: 253, column: 7, scope: !615)
!615 = distinct !DILexicalBlock(scope: !545, file: !260, line: 253, column: 6)
!616 = !DILocation(line: 253, column: 6, scope: !545)
!617 = !DILocation(line: 254, column: 6, scope: !618)
!618 = distinct !DILexicalBlock(scope: !615, file: !260, line: 253, column: 13)
!619 = !DILocation(line: 255, column: 3, scope: !618)
!620 = !DILocation(line: 258, column: 16, scope: !545)
!621 = !DILocation(line: 258, column: 2, scope: !545)
!622 = !DILocation(line: 258, column: 5, scope: !545)
!623 = !DILocation(line: 258, column: 7, scope: !545)
!624 = !DILocation(line: 258, column: 14, scope: !545)
!625 = !DILocation(line: 259, column: 2, scope: !545)
!626 = !DILocation(line: 259, column: 5, scope: !545)
!627 = !DILocation(line: 259, column: 17, scope: !545)
!628 = !DILocation(line: 260, column: 17, scope: !545)
!629 = !DILocation(line: 260, column: 2, scope: !545)
!630 = !DILocation(line: 260, column: 5, scope: !545)
!631 = !DILocation(line: 260, column: 15, scope: !545)
!632 = !DILocation(line: 263, column: 2, scope: !545)
!633 = !DILocation(line: 263, column: 5, scope: !545)
!634 = !DILocation(line: 263, column: 7, scope: !545)
!635 = !DILocation(line: 263, column: 19, scope: !545)
!636 = !DILocation(line: 264, column: 2, scope: !545)
!637 = !DILocation(line: 264, column: 5, scope: !545)
!638 = !DILocation(line: 264, column: 7, scope: !545)
!639 = !DILocation(line: 264, column: 19, scope: !545)
!640 = !DILocation(line: 265, column: 2, scope: !545)
!641 = !DILocation(line: 265, column: 5, scope: !545)
!642 = !DILocation(line: 265, column: 7, scope: !545)
!643 = !DILocation(line: 265, column: 19, scope: !545)
!644 = !DILocation(line: 267, column: 6, scope: !645)
!645 = distinct !DILexicalBlock(scope: !545, file: !260, line: 267, column: 6)
!646 = !DILocation(line: 267, column: 25, scope: !645)
!647 = !DILocation(line: 267, column: 6, scope: !545)
!648 = !DILocation(line: 268, column: 7, scope: !649)
!649 = distinct !DILexicalBlock(scope: !650, file: !260, line: 268, column: 7)
!650 = distinct !DILexicalBlock(scope: !645, file: !260, line: 267, column: 55)
!651 = !DILocation(line: 268, column: 23, scope: !649)
!652 = !DILocation(line: 268, column: 7, scope: !650)
!653 = !DILocation(line: 269, column: 4, scope: !654)
!654 = distinct !DILexicalBlock(scope: !649, file: !260, line: 268, column: 29)
!655 = !DILocation(line: 269, column: 7, scope: !654)
!656 = !DILocation(line: 269, column: 9, scope: !654)
!657 = !DILocation(line: 269, column: 21, scope: !654)
!658 = !DILocation(line: 270, column: 4, scope: !654)
!659 = !DILocation(line: 270, column: 7, scope: !654)
!660 = !DILocation(line: 270, column: 9, scope: !654)
!661 = !DILocation(line: 270, column: 21, scope: !654)
!662 = !DILocation(line: 271, column: 3, scope: !654)
!663 = !DILocation(line: 272, column: 3, scope: !650)
!664 = !DILocation(line: 272, column: 6, scope: !650)
!665 = !DILocation(line: 272, column: 8, scope: !650)
!666 = !DILocation(line: 272, column: 20, scope: !650)
!667 = !DILocation(line: 273, column: 2, scope: !650)
!668 = !DILocation(line: 280, column: 6, scope: !669)
!669 = distinct !DILexicalBlock(scope: !545, file: !260, line: 280, column: 6)
!670 = !DILocation(line: 280, column: 6, scope: !545)
!671 = !DILocation(line: 281, column: 3, scope: !669)
!672 = !DILocation(line: 281, column: 6, scope: !669)
!673 = !DILocation(line: 281, column: 8, scope: !669)
!674 = !DILocation(line: 281, column: 14, scope: !669)
!675 = !DILocation(line: 283, column: 6, scope: !676)
!676 = distinct !DILexicalBlock(scope: !545, file: !260, line: 283, column: 6)
!677 = !DILocation(line: 283, column: 19, scope: !676)
!678 = !DILocation(line: 283, column: 6, scope: !545)
!679 = !DILocation(line: 284, column: 3, scope: !676)
!680 = !DILocation(line: 284, column: 6, scope: !676)
!681 = !DILocation(line: 284, column: 8, scope: !676)
!682 = !DILocation(line: 284, column: 14, scope: !676)
!683 = !DILocation(line: 286, column: 6, scope: !684)
!684 = distinct !DILexicalBlock(scope: !545, file: !260, line: 286, column: 6)
!685 = !DILocation(line: 286, column: 25, scope: !684)
!686 = !DILocation(line: 286, column: 6, scope: !545)
!687 = !DILocation(line: 287, column: 3, scope: !684)
!688 = !DILocation(line: 287, column: 6, scope: !684)
!689 = !DILocation(line: 287, column: 8, scope: !684)
!690 = !DILocation(line: 287, column: 14, scope: !684)
!691 = !DILocation(line: 289, column: 6, scope: !692)
!692 = distinct !DILexicalBlock(scope: !545, file: !260, line: 289, column: 6)
!693 = !DILocation(line: 289, column: 6, scope: !545)
!694 = !DILocation(line: 290, column: 35, scope: !695)
!695 = distinct !DILexicalBlock(scope: !692, file: !260, line: 289, column: 23)
!696 = !DILocation(line: 290, column: 19, scope: !695)
!697 = !DILocation(line: 290, column: 22, scope: !695)
!698 = !DILocation(line: 290, column: 33, scope: !695)
!699 = !DILocation(line: 290, column: 3, scope: !695)
!700 = !DILocation(line: 290, column: 6, scope: !695)
!701 = !DILocation(line: 290, column: 17, scope: !695)
!702 = !DILocation(line: 291, column: 42, scope: !695)
!703 = !DILocation(line: 291, column: 48, scope: !695)
!704 = !DILocation(line: 291, column: 51, scope: !695)
!705 = !DILocation(line: 292, column: 7, scope: !695)
!706 = !DILocation(line: 292, column: 10, scope: !695)
!707 = !DILocation(line: 292, column: 12, scope: !695)
!708 = !DILocation(line: 291, column: 28, scope: !695)
!709 = !DILocation(line: 291, column: 18, scope: !695)
!710 = !DILocation(line: 291, column: 21, scope: !695)
!711 = !DILocation(line: 291, column: 26, scope: !695)
!712 = !DILocation(line: 291, column: 3, scope: !695)
!713 = !DILocation(line: 291, column: 6, scope: !695)
!714 = !DILocation(line: 291, column: 16, scope: !695)
!715 = !DILocation(line: 293, column: 7, scope: !716)
!716 = distinct !DILexicalBlock(scope: !695, file: !260, line: 293, column: 7)
!717 = !DILocation(line: 293, column: 10, scope: !716)
!718 = !DILocation(line: 293, column: 20, scope: !716)
!719 = !DILocation(line: 293, column: 7, scope: !695)
!720 = !DILocation(line: 294, column: 7, scope: !721)
!721 = distinct !DILexicalBlock(scope: !716, file: !260, line: 293, column: 28)
!722 = !DILocation(line: 295, column: 4, scope: !721)
!723 = !DILocation(line: 299, column: 19, scope: !695)
!724 = !DILocation(line: 299, column: 25, scope: !695)
!725 = !DILocation(line: 299, column: 4, scope: !695)
!726 = !DILocation(line: 298, column: 19, scope: !695)
!727 = !DILocation(line: 298, column: 22, scope: !695)
!728 = !DILocation(line: 298, column: 33, scope: !695)
!729 = !DILocation(line: 298, column: 3, scope: !695)
!730 = !DILocation(line: 298, column: 6, scope: !695)
!731 = !DILocation(line: 298, column: 17, scope: !695)
!732 = !DILocation(line: 302, column: 18, scope: !695)
!733 = !DILocation(line: 302, column: 24, scope: !695)
!734 = !DILocation(line: 302, column: 27, scope: !695)
!735 = !DILocation(line: 303, column: 11, scope: !695)
!736 = !DILocation(line: 303, column: 14, scope: !695)
!737 = !DILocation(line: 303, column: 16, scope: !695)
!738 = !DILocation(line: 302, column: 4, scope: !695)
!739 = !DILocation(line: 301, column: 28, scope: !695)
!740 = !DILocation(line: 301, column: 31, scope: !695)
!741 = !DILocation(line: 301, column: 41, scope: !695)
!742 = !DILocation(line: 301, column: 18, scope: !695)
!743 = !DILocation(line: 301, column: 21, scope: !695)
!744 = !DILocation(line: 301, column: 26, scope: !695)
!745 = !DILocation(line: 301, column: 3, scope: !695)
!746 = !DILocation(line: 301, column: 6, scope: !695)
!747 = !DILocation(line: 301, column: 16, scope: !695)
!748 = !DILocation(line: 304, column: 7, scope: !749)
!749 = distinct !DILexicalBlock(scope: !695, file: !260, line: 304, column: 7)
!750 = !DILocation(line: 304, column: 10, scope: !749)
!751 = !DILocation(line: 304, column: 20, scope: !749)
!752 = !DILocation(line: 304, column: 7, scope: !695)
!753 = !DILocation(line: 305, column: 7, scope: !754)
!754 = distinct !DILexicalBlock(scope: !749, file: !260, line: 304, column: 28)
!755 = !DILocation(line: 306, column: 4, scope: !754)
!756 = !DILocation(line: 308, column: 2, scope: !695)
!757 = !DILocation(line: 310, column: 2, scope: !545)
!758 = distinct !{!758, !757}
!759 = !DILocation(line: 310, column: 12, scope: !760)
!760 = !DILexicalBlockFile(scope: !761, file: !260, discriminator: 1)
!761 = distinct !DILexicalBlock(scope: !762, file: !260, line: 310, column: 11)
!762 = distinct !DILexicalBlock(scope: !545, file: !260, line: 310, column: 5)
!763 = !DILocation(line: 310, column: 23, scope: !760)
!764 = !DILocation(line: 310, column: 11, scope: !760)
!765 = !DILocation(line: 310, column: 39, scope: !766)
!766 = !DILexicalBlockFile(scope: !761, file: !260, discriminator: 2)
!767 = !DILocation(line: 310, column: 129, scope: !766)
!768 = !DILocation(line: 310, column: 135, scope: !766)
!769 = !DILocation(line: 310, column: 138, scope: !766)
!770 = !DILocation(line: 310, column: 149, scope: !766)
!771 = !DILocation(line: 310, column: 152, scope: !766)
!772 = !DILocation(line: 310, column: 161, scope: !766)
!773 = !DILocation(line: 310, column: 31, scope: !766)
!774 = !DILocation(line: 310, column: 179, scope: !775)
!775 = !DILexicalBlockFile(scope: !762, file: !260, discriminator: 3)
!776 = !DILocation(line: 314, column: 26, scope: !545)
!777 = !DILocation(line: 314, column: 29, scope: !545)
!778 = !DILocation(line: 314, column: 32, scope: !545)
!779 = !DILocation(line: 314, column: 39, scope: !545)
!780 = !DILocation(line: 314, column: 47, scope: !545)
!781 = !DILocation(line: 314, column: 59, scope: !545)
!782 = !DILocation(line: 315, column: 11, scope: !545)
!783 = !DILocation(line: 314, column: 7, scope: !545)
!784 = !DILocation(line: 314, column: 5, scope: !545)
!785 = !DILocation(line: 316, column: 23, scope: !545)
!786 = !DILocation(line: 316, column: 30, scope: !545)
!787 = !DILocation(line: 316, column: 33, scope: !545)
!788 = !DILocation(line: 316, column: 2, scope: !545)
!789 = !DILocation(line: 318, column: 6, scope: !790)
!790 = distinct !DILexicalBlock(scope: !545, file: !260, line: 318, column: 6)
!791 = !DILocation(line: 318, column: 9, scope: !790)
!792 = !DILocation(line: 318, column: 6, scope: !545)
!793 = !DILocation(line: 319, column: 10, scope: !794)
!794 = distinct !DILexicalBlock(scope: !790, file: !260, line: 318, column: 15)
!795 = !DILocation(line: 319, column: 6, scope: !794)
!796 = !DILocation(line: 320, column: 3, scope: !794)
!797 = !DILocation(line: 323, column: 24, scope: !545)
!798 = !DILocation(line: 323, column: 16, scope: !545)
!799 = !DILocation(line: 323, column: 2, scope: !545)
!800 = !DILocation(line: 323, column: 8, scope: !545)
!801 = !DILocation(line: 323, column: 14, scope: !545)
!802 = !DILocation(line: 324, column: 11, scope: !545)
!803 = !DILocation(line: 324, column: 2, scope: !545)
!804 = !DILocation(line: 327, column: 12, scope: !545)
!805 = !DILocation(line: 327, column: 18, scope: !545)
!806 = !DILocation(line: 327, column: 21, scope: !545)
!807 = !DILocation(line: 327, column: 32, scope: !545)
!808 = !DILocation(line: 327, column: 35, scope: !545)
!809 = !DILocation(line: 327, column: 47, scope: !545)
!810 = !DILocation(line: 327, column: 50, scope: !545)
!811 = !DILocation(line: 327, column: 52, scope: !545)
!812 = !DILocation(line: 327, column: 2, scope: !545)
!813 = !DILocation(line: 329, column: 12, scope: !545)
!814 = !DILocation(line: 329, column: 18, scope: !545)
!815 = !DILocation(line: 329, column: 21, scope: !545)
!816 = !DILocation(line: 329, column: 32, scope: !545)
!817 = !DILocation(line: 329, column: 35, scope: !545)
!818 = !DILocation(line: 329, column: 47, scope: !545)
!819 = !DILocation(line: 329, column: 50, scope: !545)
!820 = !DILocation(line: 329, column: 52, scope: !545)
!821 = !DILocation(line: 329, column: 2, scope: !545)
!822 = !DILocation(line: 331, column: 15, scope: !545)
!823 = !DILocation(line: 331, column: 2, scope: !545)
!824 = !DILocation(line: 333, column: 9, scope: !545)
!825 = !DILocation(line: 333, column: 2, scope: !545)
!826 = !DILocation(line: 334, column: 9, scope: !545)
!827 = !DILocation(line: 334, column: 2, scope: !545)
!828 = !DILocation(line: 335, column: 1, scope: !545)
!829 = distinct !DISubprogram(name: "__zedc_open", scope: !260, file: !260, line: 107, type: !830, isLocal: true, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !530)
!830 = !DISubroutineType(types: !831)
!831 = !{!468, !272, !272, !272, !832}
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64, align: 64)
!833 = !DILocalVariable(name: "card_no", arg: 1, scope: !829, file: !260, line: 107, type: !272)
!834 = !DILocation(line: 107, column: 38, scope: !829)
!835 = !DILocalVariable(name: "card_type", arg: 2, scope: !829, file: !260, line: 107, type: !272)
!836 = !DILocation(line: 107, column: 51, scope: !829)
!837 = !DILocalVariable(name: "mode", arg: 3, scope: !829, file: !260, line: 107, type: !272)
!838 = !DILocation(line: 107, column: 66, scope: !829)
!839 = !DILocalVariable(name: "err_code", arg: 4, scope: !829, file: !260, line: 108, type: !832)
!840 = !DILocation(line: 108, column: 11, scope: !829)
!841 = !DILocalVariable(name: "flags", scope: !829, file: !260, line: 110, type: !272)
!842 = !DILocation(line: 110, column: 6, scope: !829)
!843 = !DILocation(line: 110, column: 15, scope: !829)
!844 = !DILocation(line: 110, column: 36, scope: !829)
!845 = !DILocation(line: 110, column: 34, scope: !829)
!846 = !DILocation(line: 112, column: 7, scope: !847)
!847 = distinct !DILexicalBlock(scope: !829, file: !260, line: 112, column: 6)
!848 = !DILocation(line: 112, column: 13, scope: !847)
!849 = !DILocation(line: 112, column: 40, scope: !847)
!850 = !DILocation(line: 112, column: 6, scope: !829)
!851 = !DILocation(line: 113, column: 20, scope: !847)
!852 = !DILocation(line: 113, column: 29, scope: !847)
!853 = !DILocation(line: 113, column: 40, scope: !847)
!854 = !DILocation(line: 114, column: 6, scope: !847)
!855 = !DILocation(line: 113, column: 10, scope: !847)
!856 = !DILocation(line: 113, column: 3, scope: !847)
!857 = !DILocation(line: 116, column: 6, scope: !858)
!858 = distinct !DILexicalBlock(scope: !829, file: !260, line: 116, column: 6)
!859 = !DILocation(line: 116, column: 14, scope: !858)
!860 = !DILocation(line: 116, column: 6, scope: !829)
!861 = !DILocation(line: 117, column: 7, scope: !862)
!862 = distinct !DILexicalBlock(scope: !863, file: !260, line: 117, column: 7)
!863 = distinct !DILexicalBlock(scope: !858, file: !260, line: 116, column: 21)
!864 = !DILocation(line: 117, column: 7, scope: !863)
!865 = !DILocation(line: 118, column: 11, scope: !862)
!866 = !DILocation(line: 118, column: 4, scope: !862)
!867 = !DILocation(line: 120, column: 31, scope: !863)
!868 = !DILocation(line: 120, column: 40, scope: !863)
!869 = !DILocation(line: 120, column: 51, scope: !863)
!870 = !DILocation(line: 121, column: 10, scope: !863)
!871 = !DILocation(line: 120, column: 21, scope: !863)
!872 = !DILocation(line: 120, column: 19, scope: !863)
!873 = !DILocation(line: 122, column: 10, scope: !863)
!874 = !DILocation(line: 122, column: 3, scope: !863)
!875 = !DILocation(line: 125, column: 6, scope: !876)
!876 = distinct !DILexicalBlock(scope: !829, file: !260, line: 125, column: 6)
!877 = !DILocation(line: 125, column: 14, scope: !876)
!878 = !DILocation(line: 125, column: 18, scope: !876)
!879 = !DILocation(line: 125, column: 21, scope: !880)
!880 = !DILexicalBlockFile(scope: !876, file: !260, discriminator: 1)
!881 = !DILocation(line: 125, column: 29, scope: !880)
!882 = !DILocation(line: 125, column: 6, scope: !880)
!883 = !DILocation(line: 126, column: 3, scope: !876)
!884 = !DILocation(line: 128, column: 17, scope: !885)
!885 = distinct !DILexicalBlock(scope: !829, file: !260, line: 128, column: 6)
!886 = !DILocation(line: 128, column: 6, scope: !885)
!887 = !DILocation(line: 128, column: 26, scope: !885)
!888 = !DILocation(line: 128, column: 6, scope: !829)
!889 = !DILocation(line: 129, column: 21, scope: !890)
!890 = distinct !DILexicalBlock(scope: !885, file: !260, line: 128, column: 34)
!891 = !DILocation(line: 129, column: 10, scope: !890)
!892 = !DILocation(line: 129, column: 3, scope: !890)
!893 = !DILocation(line: 132, column: 34, scope: !829)
!894 = !DILocation(line: 132, column: 43, scope: !829)
!895 = !DILocation(line: 132, column: 54, scope: !829)
!896 = !DILocation(line: 133, column: 6, scope: !829)
!897 = !DILocation(line: 132, column: 24, scope: !829)
!898 = !DILocation(line: 132, column: 13, scope: !829)
!899 = !DILocation(line: 132, column: 2, scope: !829)
!900 = !DILocation(line: 132, column: 22, scope: !829)
!901 = !DILocation(line: 134, column: 20, scope: !829)
!902 = !DILocation(line: 134, column: 9, scope: !829)
!903 = !DILocation(line: 134, column: 2, scope: !829)
!904 = !DILocation(line: 135, column: 1, scope: !829)
!905 = distinct !DISubprogram(name: "__fixup_crc_or_adler", scope: !260, file: !260, line: 174, type: !906, isLocal: true, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !530)
!906 = !DISubroutineType(types: !907)
!907 = !{null, !495, !908}
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "zedc_streamp", file: !222, line: 347, baseType: !909)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64, align: 64)
!910 = !DILocalVariable(name: "s", arg: 1, scope: !905, file: !260, line: 174, type: !495)
!911 = !DILocation(line: 174, column: 44, scope: !905)
!912 = !DILocalVariable(name: "h", arg: 2, scope: !905, file: !260, line: 174, type: !908)
!913 = !DILocation(line: 174, column: 60, scope: !905)
!914 = !DILocation(line: 176, column: 14, scope: !905)
!915 = !DILocation(line: 176, column: 17, scope: !905)
!916 = !DILocation(line: 176, column: 24, scope: !905)
!917 = !DILocation(line: 176, column: 13, scope: !905)
!918 = !DILocation(line: 176, column: 32, scope: !919)
!919 = !DILexicalBlockFile(scope: !905, file: !260, discriminator: 1)
!920 = !DILocation(line: 176, column: 35, scope: !919)
!921 = !DILocation(line: 176, column: 13, scope: !919)
!922 = !DILocation(line: 176, column: 43, scope: !923)
!923 = !DILexicalBlockFile(scope: !905, file: !260, discriminator: 2)
!924 = !DILocation(line: 176, column: 46, scope: !923)
!925 = !DILocation(line: 176, column: 13, scope: !923)
!926 = !DILocation(line: 176, column: 13, scope: !927)
!927 = !DILexicalBlockFile(scope: !905, file: !260, discriminator: 3)
!928 = !DILocation(line: 176, column: 2, scope: !927)
!929 = !DILocation(line: 176, column: 5, scope: !927)
!930 = !DILocation(line: 176, column: 11, scope: !927)
!931 = !DILocation(line: 177, column: 1, scope: !905)
!932 = distinct !DISubprogram(name: "__zedc_close", scope: !260, file: !260, line: 137, type: !933, isLocal: true, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !530)
!933 = !DISubroutineType(types: !934)
!934 = !{!272, !468}
!935 = !DILocalVariable(name: "zedc", arg: 1, scope: !932, file: !260, line: 137, type: !468)
!936 = !DILocation(line: 137, column: 39, scope: !932)
!937 = !DILocalVariable(name: "flags", scope: !932, file: !260, line: 139, type: !272)
!938 = !DILocation(line: 139, column: 6, scope: !932)
!939 = !DILocation(line: 139, column: 15, scope: !932)
!940 = !DILocation(line: 139, column: 36, scope: !932)
!941 = !DILocation(line: 139, column: 34, scope: !932)
!942 = !DILocation(line: 141, column: 7, scope: !943)
!943 = distinct !DILexicalBlock(scope: !932, file: !260, line: 141, column: 6)
!944 = !DILocation(line: 141, column: 13, scope: !943)
!945 = !DILocation(line: 141, column: 40, scope: !943)
!946 = !DILocation(line: 141, column: 6, scope: !932)
!947 = !DILocation(line: 142, column: 21, scope: !943)
!948 = !DILocation(line: 142, column: 10, scope: !943)
!949 = !DILocation(line: 142, column: 3, scope: !943)
!950 = !DILocation(line: 145, column: 2, scope: !932)
!951 = !DILocation(line: 146, column: 1, scope: !932)
!952 = distinct !DISubprogram(name: "__free", scope: !260, file: !260, line: 197, type: !953, isLocal: true, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !530)
!953 = !DISubroutineType(types: !954)
!954 = !{null, !267}
!955 = !DILocalVariable(name: "ptr", arg: 1, scope: !952, file: !260, line: 197, type: !267)
!956 = !DILocation(line: 197, column: 26, scope: !952)
!957 = !DILocation(line: 199, column: 6, scope: !958)
!958 = distinct !DILexicalBlock(scope: !952, file: !260, line: 199, column: 6)
!959 = !DILocation(line: 199, column: 10, scope: !958)
!960 = !DILocation(line: 199, column: 6, scope: !952)
!961 = !DILocation(line: 200, column: 3, scope: !958)
!962 = !DILocation(line: 201, column: 7, scope: !952)
!963 = !DILocation(line: 201, column: 2, scope: !952)
!964 = !DILocation(line: 202, column: 1, scope: !952)
!965 = !DILocation(line: 202, column: 1, scope: !966)
!966 = !DILexicalBlockFile(scope: !952, file: !260, discriminator: 1)
!967 = distinct !DISubprogram(name: "h_deflateCopy", scope: !260, file: !260, line: 345, type: !968, isLocal: false, isDefinition: true, scopeLine: 346, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !530)
!968 = !DISubroutineType(types: !969)
!969 = !{!272, !495, !495}
!970 = !DILocalVariable(name: "dest", arg: 1, scope: !967, file: !260, line: 345, type: !495)
!971 = !DILocation(line: 345, column: 29, scope: !967)
!972 = !DILocalVariable(name: "source", arg: 2, scope: !967, file: !260, line: 345, type: !495)
!973 = !DILocation(line: 345, column: 45, scope: !967)
!974 = !DILocalVariable(name: "s_source", scope: !967, file: !260, line: 347, type: !268)
!975 = !DILocation(line: 347, column: 19, scope: !967)
!976 = !DILocalVariable(name: "s_dest", scope: !967, file: !260, line: 348, type: !268)
!977 = !DILocation(line: 348, column: 19, scope: !967)
!978 = !DILocalVariable(name: "zedc", scope: !967, file: !260, line: 349, type: !468)
!979 = !DILocation(line: 349, column: 16, scope: !967)
!980 = !DILocalVariable(name: "rc", scope: !967, file: !260, line: 350, type: !272)
!981 = !DILocation(line: 350, column: 6, scope: !967)
!982 = !DILocalVariable(name: "err_code", scope: !967, file: !260, line: 350, type: !272)
!983 = !DILocation(line: 350, column: 16, scope: !967)
!984 = !DILocation(line: 352, column: 32, scope: !967)
!985 = !DILocation(line: 352, column: 40, scope: !967)
!986 = !DILocation(line: 352, column: 13, scope: !967)
!987 = !DILocation(line: 352, column: 11, scope: !967)
!988 = !DILocation(line: 353, column: 11, scope: !967)
!989 = !DILocation(line: 353, column: 9, scope: !967)
!990 = !DILocation(line: 354, column: 6, scope: !991)
!991 = distinct !DILexicalBlock(scope: !967, file: !260, line: 354, column: 6)
!992 = !DILocation(line: 354, column: 13, scope: !991)
!993 = !DILocation(line: 354, column: 6, scope: !967)
!994 = !DILocation(line: 355, column: 3, scope: !995)
!995 = distinct !DILexicalBlock(scope: !991, file: !260, line: 354, column: 21)
!996 = distinct !{!996, !994}
!997 = !DILocation(line: 355, column: 16, scope: !998)
!998 = !DILexicalBlockFile(scope: !999, file: !260, discriminator: 1)
!999 = distinct !DILexicalBlock(scope: !995, file: !260, line: 355, column: 6)
!1000 = !DILocation(line: 355, column: 8, scope: !998)
!1001 = !DILocation(line: 355, column: 98, scope: !998)
!1002 = !DILocation(line: 356, column: 3, scope: !995)
!1003 = !DILocation(line: 358, column: 9, scope: !967)
!1004 = !DILocation(line: 358, column: 2, scope: !967)
!1005 = !DILocation(line: 358, column: 17, scope: !967)
!1006 = !DILocation(line: 360, column: 27, scope: !967)
!1007 = !DILocation(line: 360, column: 35, scope: !967)
!1008 = !DILocation(line: 360, column: 39, scope: !967)
!1009 = !DILocation(line: 360, column: 49, scope: !967)
!1010 = !DILocation(line: 360, column: 9, scope: !967)
!1011 = !DILocation(line: 360, column: 5, scope: !967)
!1012 = !DILocation(line: 361, column: 6, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !967, file: !260, line: 361, column: 6)
!1014 = !DILocation(line: 361, column: 9, scope: !1013)
!1015 = !DILocation(line: 361, column: 6, scope: !967)
!1016 = !DILocation(line: 362, column: 3, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1013, file: !260, line: 361, column: 17)
!1018 = distinct !{!1018, !1016}
!1019 = !DILocation(line: 362, column: 16, scope: !1020)
!1020 = !DILexicalBlockFile(scope: !1021, file: !260, discriminator: 1)
!1021 = distinct !DILexicalBlock(scope: !1017, file: !260, line: 362, column: 6)
!1022 = !DILocation(line: 362, column: 96, scope: !1020)
!1023 = !DILocation(line: 362, column: 8, scope: !1020)
!1024 = !DILocation(line: 362, column: 101, scope: !1020)
!1025 = !DILocation(line: 363, column: 3, scope: !1017)
!1026 = !DILocation(line: 366, column: 21, scope: !967)
!1027 = !DILocation(line: 366, column: 29, scope: !967)
!1028 = !DILocation(line: 366, column: 38, scope: !967)
!1029 = !DILocation(line: 366, column: 46, scope: !967)
!1030 = !DILocation(line: 367, column: 7, scope: !967)
!1031 = !DILocation(line: 367, column: 15, scope: !967)
!1032 = !DILocation(line: 366, column: 9, scope: !967)
!1033 = !DILocation(line: 366, column: 7, scope: !967)
!1034 = !DILocation(line: 368, column: 7, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !967, file: !260, line: 368, column: 6)
!1036 = !DILocation(line: 368, column: 6, scope: !967)
!1037 = !DILocation(line: 369, column: 3, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1035, file: !260, line: 368, column: 13)
!1039 = distinct !{!1039, !1037}
!1040 = !DILocation(line: 369, column: 16, scope: !1041)
!1041 = !DILexicalBlockFile(scope: !1042, file: !260, discriminator: 1)
!1042 = distinct !DILexicalBlock(scope: !1038, file: !260, line: 369, column: 6)
!1043 = !DILocation(line: 369, column: 8, scope: !1041)
!1044 = !DILocation(line: 369, column: 99, scope: !1041)
!1045 = !DILocation(line: 370, column: 6, scope: !1038)
!1046 = !DILocation(line: 371, column: 3, scope: !1038)
!1047 = !DILocation(line: 373, column: 21, scope: !967)
!1048 = !DILocation(line: 373, column: 2, scope: !967)
!1049 = !DILocation(line: 373, column: 10, scope: !967)
!1050 = !DILocation(line: 373, column: 12, scope: !967)
!1051 = !DILocation(line: 373, column: 19, scope: !967)
!1052 = !DILocation(line: 374, column: 2, scope: !967)
!1053 = distinct !{!1053, !1052}
!1054 = !DILocation(line: 374, column: 12, scope: !1055)
!1055 = !DILexicalBlockFile(scope: !1056, file: !260, discriminator: 1)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !260, line: 374, column: 11)
!1057 = distinct !DILexicalBlock(scope: !967, file: !260, line: 374, column: 5)
!1058 = !DILocation(line: 374, column: 23, scope: !1055)
!1059 = !DILocation(line: 374, column: 11, scope: !1055)
!1060 = !DILocation(line: 374, column: 39, scope: !1061)
!1061 = !DILexicalBlockFile(scope: !1056, file: !260, discriminator: 2)
!1062 = !DILocation(line: 374, column: 88, scope: !1061)
!1063 = !DILocation(line: 374, column: 31, scope: !1061)
!1064 = !DILocation(line: 374, column: 95, scope: !1065)
!1065 = !DILexicalBlockFile(scope: !1057, file: !260, discriminator: 3)
!1066 = !DILocation(line: 384, column: 6, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !967, file: !260, line: 384, column: 6)
!1068 = !DILocation(line: 384, column: 16, scope: !1067)
!1069 = !DILocation(line: 384, column: 6, scope: !967)
!1070 = !DILocation(line: 385, column: 24, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1067, file: !260, line: 384, column: 28)
!1072 = !DILocation(line: 385, column: 34, scope: !1071)
!1073 = !DILocation(line: 385, column: 3, scope: !1071)
!1074 = !DILocation(line: 385, column: 11, scope: !1071)
!1075 = !DILocation(line: 385, column: 22, scope: !1071)
!1076 = !DILocation(line: 386, column: 24, scope: !1071)
!1077 = !DILocation(line: 386, column: 34, scope: !1071)
!1078 = !DILocation(line: 386, column: 3, scope: !1071)
!1079 = !DILocation(line: 386, column: 11, scope: !1071)
!1080 = !DILocation(line: 386, column: 22, scope: !1071)
!1081 = !DILocation(line: 387, column: 37, scope: !1071)
!1082 = !DILocation(line: 387, column: 43, scope: !1071)
!1083 = !DILocation(line: 387, column: 51, scope: !1071)
!1084 = !DILocation(line: 388, column: 6, scope: !1071)
!1085 = !DILocation(line: 388, column: 14, scope: !1071)
!1086 = !DILocation(line: 388, column: 16, scope: !1071)
!1087 = !DILocation(line: 387, column: 23, scope: !1071)
!1088 = !DILocation(line: 387, column: 3, scope: !1071)
!1089 = !DILocation(line: 387, column: 11, scope: !1071)
!1090 = !DILocation(line: 387, column: 21, scope: !1071)
!1091 = !DILocation(line: 389, column: 7, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1071, file: !260, line: 389, column: 7)
!1093 = !DILocation(line: 389, column: 15, scope: !1092)
!1094 = !DILocation(line: 389, column: 25, scope: !1092)
!1095 = !DILocation(line: 389, column: 7, scope: !1071)
!1096 = !DILocation(line: 390, column: 7, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1092, file: !260, line: 389, column: 33)
!1098 = !DILocation(line: 391, column: 4, scope: !1097)
!1099 = !DILocation(line: 393, column: 18, scope: !1071)
!1100 = !DILocation(line: 393, column: 26, scope: !1071)
!1101 = !DILocation(line: 394, column: 5, scope: !1071)
!1102 = !DILocation(line: 394, column: 15, scope: !1071)
!1103 = !DILocation(line: 394, column: 22, scope: !1071)
!1104 = !DILocation(line: 394, column: 32, scope: !1071)
!1105 = !DILocation(line: 394, column: 20, scope: !1071)
!1106 = !DILocation(line: 393, column: 36, scope: !1071)
!1107 = !DILocation(line: 393, column: 3, scope: !1071)
!1108 = !DILocation(line: 393, column: 11, scope: !1071)
!1109 = !DILocation(line: 393, column: 16, scope: !1071)
!1110 = !DILocation(line: 395, column: 10, scope: !1071)
!1111 = !DILocation(line: 395, column: 18, scope: !1071)
!1112 = !DILocation(line: 395, column: 29, scope: !1071)
!1113 = !DILocation(line: 395, column: 39, scope: !1071)
!1114 = !DILocation(line: 396, column: 10, scope: !1071)
!1115 = !DILocation(line: 396, column: 20, scope: !1071)
!1116 = !DILocation(line: 396, column: 27, scope: !1071)
!1117 = !DILocation(line: 396, column: 37, scope: !1071)
!1118 = !DILocation(line: 396, column: 25, scope: !1071)
!1119 = !DILocation(line: 395, column: 3, scope: !1071)
!1120 = !DILocation(line: 397, column: 2, scope: !1071)
!1121 = !DILocation(line: 398, column: 6, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !967, file: !260, line: 398, column: 6)
!1123 = !DILocation(line: 398, column: 16, scope: !1122)
!1124 = !DILocation(line: 398, column: 6, scope: !967)
!1125 = !DILocation(line: 399, column: 24, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1122, file: !260, line: 398, column: 28)
!1127 = !DILocation(line: 399, column: 34, scope: !1126)
!1128 = !DILocation(line: 399, column: 3, scope: !1126)
!1129 = !DILocation(line: 399, column: 11, scope: !1126)
!1130 = !DILocation(line: 399, column: 22, scope: !1126)
!1131 = !DILocation(line: 400, column: 24, scope: !1126)
!1132 = !DILocation(line: 400, column: 34, scope: !1126)
!1133 = !DILocation(line: 400, column: 3, scope: !1126)
!1134 = !DILocation(line: 400, column: 11, scope: !1126)
!1135 = !DILocation(line: 400, column: 22, scope: !1126)
!1136 = !DILocation(line: 401, column: 37, scope: !1126)
!1137 = !DILocation(line: 401, column: 43, scope: !1126)
!1138 = !DILocation(line: 401, column: 51, scope: !1126)
!1139 = !DILocation(line: 402, column: 6, scope: !1126)
!1140 = !DILocation(line: 402, column: 14, scope: !1126)
!1141 = !DILocation(line: 402, column: 16, scope: !1126)
!1142 = !DILocation(line: 401, column: 23, scope: !1126)
!1143 = !DILocation(line: 401, column: 3, scope: !1126)
!1144 = !DILocation(line: 401, column: 11, scope: !1126)
!1145 = !DILocation(line: 401, column: 21, scope: !1126)
!1146 = !DILocation(line: 403, column: 7, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1126, file: !260, line: 403, column: 7)
!1148 = !DILocation(line: 403, column: 15, scope: !1147)
!1149 = !DILocation(line: 403, column: 25, scope: !1147)
!1150 = !DILocation(line: 403, column: 7, scope: !1126)
!1151 = !DILocation(line: 404, column: 7, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1147, file: !260, line: 403, column: 33)
!1153 = !DILocation(line: 405, column: 4, scope: !1152)
!1154 = !DILocation(line: 407, column: 18, scope: !1126)
!1155 = !DILocation(line: 407, column: 26, scope: !1126)
!1156 = !DILocation(line: 408, column: 5, scope: !1126)
!1157 = !DILocation(line: 408, column: 15, scope: !1126)
!1158 = !DILocation(line: 408, column: 22, scope: !1126)
!1159 = !DILocation(line: 408, column: 32, scope: !1126)
!1160 = !DILocation(line: 408, column: 20, scope: !1126)
!1161 = !DILocation(line: 407, column: 36, scope: !1126)
!1162 = !DILocation(line: 407, column: 3, scope: !1126)
!1163 = !DILocation(line: 407, column: 11, scope: !1126)
!1164 = !DILocation(line: 407, column: 16, scope: !1126)
!1165 = !DILocation(line: 409, column: 23, scope: !1126)
!1166 = !DILocation(line: 409, column: 31, scope: !1126)
!1167 = !DILocation(line: 410, column: 5, scope: !1126)
!1168 = !DILocation(line: 410, column: 15, scope: !1126)
!1169 = !DILocation(line: 410, column: 27, scope: !1126)
!1170 = !DILocation(line: 410, column: 37, scope: !1126)
!1171 = !DILocation(line: 410, column: 25, scope: !1126)
!1172 = !DILocation(line: 409, column: 41, scope: !1126)
!1173 = !DILocation(line: 409, column: 3, scope: !1126)
!1174 = !DILocation(line: 409, column: 11, scope: !1126)
!1175 = !DILocation(line: 409, column: 21, scope: !1126)
!1176 = !DILocation(line: 411, column: 10, scope: !1126)
!1177 = !DILocation(line: 411, column: 18, scope: !1126)
!1178 = !DILocation(line: 411, column: 29, scope: !1126)
!1179 = !DILocation(line: 411, column: 39, scope: !1126)
!1180 = !DILocation(line: 412, column: 10, scope: !1126)
!1181 = !DILocation(line: 412, column: 18, scope: !1126)
!1182 = !DILocation(line: 412, column: 31, scope: !1126)
!1183 = !DILocation(line: 412, column: 39, scope: !1126)
!1184 = !DILocation(line: 412, column: 29, scope: !1126)
!1185 = !DILocation(line: 411, column: 3, scope: !1126)
!1186 = !DILocation(line: 413, column: 2, scope: !1126)
!1187 = !DILocation(line: 415, column: 24, scope: !967)
!1188 = !DILocation(line: 415, column: 16, scope: !967)
!1189 = !DILocation(line: 415, column: 2, scope: !967)
!1190 = !DILocation(line: 415, column: 8, scope: !967)
!1191 = !DILocation(line: 415, column: 14, scope: !967)
!1192 = !DILocation(line: 416, column: 2, scope: !967)
!1193 = !DILocation(line: 419, column: 7, scope: !967)
!1194 = !DILocation(line: 419, column: 15, scope: !967)
!1195 = !DILocation(line: 419, column: 2, scope: !967)
!1196 = !DILocation(line: 420, column: 2, scope: !967)
!1197 = !DILocation(line: 420, column: 10, scope: !967)
!1198 = !DILocation(line: 420, column: 20, scope: !967)
!1199 = !DILocation(line: 422, column: 15, scope: !967)
!1200 = !DILocation(line: 422, column: 2, scope: !967)
!1201 = !DILocation(line: 424, column: 7, scope: !967)
!1202 = !DILocation(line: 424, column: 2, scope: !967)
!1203 = !DILocation(line: 425, column: 9, scope: !967)
!1204 = !DILocation(line: 425, column: 2, scope: !967)
!1205 = !DILocation(line: 426, column: 1, scope: !967)
!1206 = distinct !DISubprogram(name: "h_deflateReset", scope: !260, file: !260, line: 428, type: !1207, isLocal: false, isDefinition: true, scopeLine: 429, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !530)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!272, !495}
!1209 = !DILocalVariable(name: "strm", arg: 1, scope: !1206, file: !260, line: 428, type: !495)
!1210 = !DILocation(line: 428, column: 30, scope: !1206)
!1211 = !DILocalVariable(name: "rc", scope: !1206, file: !260, line: 430, type: !272)
!1212 = !DILocation(line: 430, column: 6, scope: !1206)
!1213 = !DILocalVariable(name: "h", scope: !1206, file: !260, line: 431, type: !1214)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64, align: 64)
!1215 = !DILocation(line: 431, column: 15, scope: !1206)
!1216 = !DILocalVariable(name: "s", scope: !1206, file: !260, line: 432, type: !268)
!1217 = !DILocation(line: 432, column: 19, scope: !1206)
!1218 = !DILocation(line: 434, column: 2, scope: !1206)
!1219 = distinct !{!1219, !1218}
!1220 = !DILocation(line: 434, column: 12, scope: !1221)
!1221 = !DILexicalBlockFile(scope: !1222, file: !260, discriminator: 1)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !260, line: 434, column: 11)
!1223 = distinct !DILexicalBlock(scope: !1206, file: !260, line: 434, column: 5)
!1224 = !DILocation(line: 434, column: 23, scope: !1221)
!1225 = !DILocation(line: 434, column: 11, scope: !1221)
!1226 = !DILocation(line: 434, column: 39, scope: !1227)
!1227 = !DILexicalBlockFile(scope: !1222, file: !260, discriminator: 2)
!1228 = !DILocation(line: 434, column: 81, scope: !1227)
!1229 = !DILocation(line: 434, column: 31, scope: !1227)
!1230 = !DILocation(line: 434, column: 88, scope: !1231)
!1231 = !DILexicalBlockFile(scope: !1223, file: !260, discriminator: 3)
!1232 = !DILocation(line: 435, column: 6, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1206, file: !260, line: 435, column: 6)
!1234 = !DILocation(line: 435, column: 11, scope: !1233)
!1235 = !DILocation(line: 435, column: 6, scope: !1206)
!1236 = !DILocation(line: 436, column: 3, scope: !1233)
!1237 = !DILocation(line: 438, column: 25, scope: !1206)
!1238 = !DILocation(line: 438, column: 31, scope: !1206)
!1239 = !DILocation(line: 438, column: 6, scope: !1206)
!1240 = !DILocation(line: 438, column: 4, scope: !1206)
!1241 = !DILocation(line: 439, column: 6, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1206, file: !260, line: 439, column: 6)
!1243 = !DILocation(line: 439, column: 8, scope: !1242)
!1244 = !DILocation(line: 439, column: 6, scope: !1206)
!1245 = !DILocation(line: 440, column: 3, scope: !1242)
!1246 = !DILocation(line: 441, column: 7, scope: !1206)
!1247 = !DILocation(line: 441, column: 10, scope: !1206)
!1248 = !DILocation(line: 441, column: 4, scope: !1206)
!1249 = !DILocation(line: 444, column: 2, scope: !1206)
!1250 = !DILocation(line: 444, column: 8, scope: !1206)
!1251 = !DILocation(line: 444, column: 17, scope: !1206)
!1252 = !DILocation(line: 445, column: 2, scope: !1206)
!1253 = !DILocation(line: 445, column: 8, scope: !1206)
!1254 = !DILocation(line: 445, column: 18, scope: !1206)
!1255 = !DILocation(line: 447, column: 2, scope: !1206)
!1256 = !DILocation(line: 447, column: 5, scope: !1206)
!1257 = !DILocation(line: 447, column: 17, scope: !1206)
!1258 = !DILocation(line: 448, column: 18, scope: !1206)
!1259 = !DILocation(line: 448, column: 21, scope: !1206)
!1260 = !DILocation(line: 448, column: 2, scope: !1206)
!1261 = !DILocation(line: 448, column: 5, scope: !1206)
!1262 = !DILocation(line: 448, column: 16, scope: !1206)
!1263 = !DILocation(line: 449, column: 12, scope: !1206)
!1264 = !DILocation(line: 449, column: 15, scope: !1206)
!1265 = !DILocation(line: 449, column: 2, scope: !1206)
!1266 = !DILocation(line: 449, column: 5, scope: !1206)
!1267 = !DILocation(line: 449, column: 10, scope: !1206)
!1268 = !DILocation(line: 450, column: 18, scope: !1206)
!1269 = !DILocation(line: 450, column: 21, scope: !1206)
!1270 = !DILocation(line: 450, column: 2, scope: !1206)
!1271 = !DILocation(line: 450, column: 5, scope: !1206)
!1272 = !DILocation(line: 450, column: 16, scope: !1206)
!1273 = !DILocation(line: 451, column: 12, scope: !1206)
!1274 = !DILocation(line: 451, column: 15, scope: !1206)
!1275 = !DILocation(line: 451, column: 2, scope: !1206)
!1276 = !DILocation(line: 451, column: 5, scope: !1206)
!1277 = !DILocation(line: 451, column: 10, scope: !1206)
!1278 = !DILocation(line: 452, column: 17, scope: !1206)
!1279 = !DILocation(line: 452, column: 20, scope: !1206)
!1280 = !DILocation(line: 452, column: 2, scope: !1206)
!1281 = !DILocation(line: 452, column: 5, scope: !1206)
!1282 = !DILocation(line: 452, column: 15, scope: !1206)
!1283 = !DILocation(line: 453, column: 2, scope: !1206)
!1284 = !DILocation(line: 453, column: 5, scope: !1206)
!1285 = !DILocation(line: 453, column: 8, scope: !1206)
!1286 = !DILocation(line: 455, column: 25, scope: !1206)
!1287 = !DILocation(line: 455, column: 7, scope: !1206)
!1288 = !DILocation(line: 455, column: 5, scope: !1206)
!1289 = !DILocation(line: 456, column: 23, scope: !1206)
!1290 = !DILocation(line: 456, column: 29, scope: !1206)
!1291 = !DILocation(line: 456, column: 2, scope: !1206)
!1292 = !DILocation(line: 458, column: 11, scope: !1206)
!1293 = !DILocation(line: 458, column: 2, scope: !1206)
!1294 = !DILocation(line: 459, column: 1, scope: !1206)
!1295 = distinct !DISubprogram(name: "h_deflateSetDictionary", scope: !260, file: !260, line: 461, type: !1296, isLocal: false, isDefinition: true, scopeLine: 463, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !530)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!272, !495, !288, !275}
!1298 = !DILocalVariable(name: "strm", arg: 1, scope: !1295, file: !260, line: 461, type: !495)
!1299 = !DILocation(line: 461, column: 38, scope: !1295)
!1300 = !DILocalVariable(name: "dictionary", arg: 2, scope: !1295, file: !260, line: 461, type: !288)
!1301 = !DILocation(line: 461, column: 59, scope: !1295)
!1302 = !DILocalVariable(name: "dictLength", arg: 3, scope: !1295, file: !260, line: 462, type: !275)
!1303 = !DILocation(line: 462, column: 20, scope: !1295)
!1304 = !DILocalVariable(name: "rc", scope: !1295, file: !260, line: 464, type: !272)
!1305 = !DILocation(line: 464, column: 6, scope: !1295)
!1306 = !DILocalVariable(name: "h", scope: !1295, file: !260, line: 465, type: !1214)
!1307 = !DILocation(line: 465, column: 15, scope: !1295)
!1308 = !DILocalVariable(name: "s", scope: !1295, file: !260, line: 466, type: !268)
!1309 = !DILocation(line: 466, column: 19, scope: !1295)
!1310 = !DILocation(line: 468, column: 2, scope: !1295)
!1311 = distinct !{!1311, !1310}
!1312 = !DILocation(line: 468, column: 12, scope: !1313)
!1313 = !DILexicalBlockFile(scope: !1314, file: !260, discriminator: 1)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !260, line: 468, column: 11)
!1315 = distinct !DILexicalBlock(scope: !1295, file: !260, line: 468, column: 5)
!1316 = !DILocation(line: 468, column: 23, scope: !1313)
!1317 = !DILocation(line: 468, column: 11, scope: !1313)
!1318 = !DILocation(line: 468, column: 39, scope: !1319)
!1319 = !DILexicalBlockFile(scope: !1314, file: !260, discriminator: 2)
!1320 = !DILocation(line: 468, column: 117, scope: !1319)
!1321 = !DILocation(line: 468, column: 123, scope: !1319)
!1322 = !DILocation(line: 468, column: 135, scope: !1319)
!1323 = !DILocation(line: 468, column: 31, scope: !1319)
!1324 = !DILocation(line: 468, column: 148, scope: !1325)
!1325 = !DILexicalBlockFile(scope: !1315, file: !260, discriminator: 3)
!1326 = !DILocation(line: 470, column: 6, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1295, file: !260, line: 470, column: 6)
!1328 = !DILocation(line: 470, column: 11, scope: !1327)
!1329 = !DILocation(line: 470, column: 6, scope: !1295)
!1330 = !DILocation(line: 471, column: 3, scope: !1327)
!1331 = !DILocation(line: 473, column: 25, scope: !1295)
!1332 = !DILocation(line: 473, column: 31, scope: !1295)
!1333 = !DILocation(line: 473, column: 6, scope: !1295)
!1334 = !DILocation(line: 473, column: 4, scope: !1295)
!1335 = !DILocation(line: 474, column: 6, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1295, file: !260, line: 474, column: 6)
!1337 = !DILocation(line: 474, column: 8, scope: !1336)
!1338 = !DILocation(line: 474, column: 6, scope: !1295)
!1339 = !DILocation(line: 475, column: 3, scope: !1336)
!1340 = !DILocation(line: 476, column: 7, scope: !1295)
!1341 = !DILocation(line: 476, column: 10, scope: !1295)
!1342 = !DILocation(line: 476, column: 4, scope: !1295)
!1343 = !DILocation(line: 478, column: 33, scope: !1295)
!1344 = !DILocation(line: 478, column: 36, scope: !1295)
!1345 = !DILocation(line: 478, column: 48, scope: !1295)
!1346 = !DILocation(line: 478, column: 7, scope: !1295)
!1347 = !DILocation(line: 478, column: 5, scope: !1295)
!1348 = !DILocation(line: 479, column: 2, scope: !1295)
!1349 = distinct !{!1349, !1348}
!1350 = !DILocation(line: 479, column: 12, scope: !1351)
!1351 = !DILexicalBlockFile(scope: !1352, file: !260, discriminator: 1)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !260, line: 479, column: 11)
!1353 = distinct !DILexicalBlock(scope: !1295, file: !260, line: 479, column: 5)
!1354 = !DILocation(line: 479, column: 23, scope: !1351)
!1355 = !DILocation(line: 479, column: 11, scope: !1351)
!1356 = !DILocation(line: 479, column: 39, scope: !1357)
!1357 = !DILexicalBlockFile(scope: !1352, file: !260, discriminator: 2)
!1358 = !DILocation(line: 479, column: 101, scope: !1357)
!1359 = !DILocation(line: 479, column: 107, scope: !1357)
!1360 = !DILocation(line: 479, column: 110, scope: !1357)
!1361 = !DILocation(line: 479, column: 119, scope: !1357)
!1362 = !DILocation(line: 479, column: 122, scope: !1357)
!1363 = !DILocation(line: 479, column: 31, scope: !1357)
!1364 = !DILocation(line: 479, column: 137, scope: !1365)
!1365 = !DILexicalBlockFile(scope: !1353, file: !260, discriminator: 3)
!1366 = !DILocation(line: 482, column: 16, scope: !1295)
!1367 = !DILocation(line: 482, column: 19, scope: !1295)
!1368 = !DILocation(line: 482, column: 2, scope: !1295)
!1369 = !DILocation(line: 482, column: 8, scope: !1295)
!1370 = !DILocation(line: 482, column: 14, scope: !1295)
!1371 = !DILocation(line: 483, column: 11, scope: !1295)
!1372 = !DILocation(line: 483, column: 2, scope: !1295)
!1373 = !DILocation(line: 484, column: 1, scope: !1295)
!1374 = distinct !DISubprogram(name: "h_deflateSetHeader", scope: !260, file: !260, line: 486, type: !1375, isLocal: false, isDefinition: true, scopeLine: 487, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !530)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!272, !495, !1377}
!1377 = !DIDerivedType(tag: DW_TAG_typedef, name: "gz_headerp", file: !496, line: 131, baseType: !1378)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64, align: 64)
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "gz_header", file: !496, line: 129, baseType: !1380)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gz_header_s", file: !496, line: 114, size: 640, align: 64, elements: !1381)
!1381 = !{!1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !1380, file: !496, line: 115, baseType: !272, size: 32, align: 32)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1380, file: !496, line: 116, baseType: !493, size: 64, align: 64, offset: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "xflags", scope: !1380, file: !496, line: 117, baseType: !272, size: 32, align: 32, offset: 128)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "os", scope: !1380, file: !496, line: 118, baseType: !272, size: 32, align: 32, offset: 160)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !1380, file: !496, line: 119, baseType: !502, size: 64, align: 64, offset: 192)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "extra_len", scope: !1380, file: !496, line: 120, baseType: !506, size: 32, align: 32, offset: 256)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "extra_max", scope: !1380, file: !496, line: 121, baseType: !506, size: 32, align: 32, offset: 288)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1380, file: !496, line: 122, baseType: !502, size: 64, align: 64, offset: 320)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "name_max", scope: !1380, file: !496, line: 123, baseType: !506, size: 32, align: 32, offset: 384)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !1380, file: !496, line: 124, baseType: !502, size: 64, align: 64, offset: 448)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "comm_max", scope: !1380, file: !496, line: 125, baseType: !506, size: 32, align: 32, offset: 512)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "hcrc", scope: !1380, file: !496, line: 126, baseType: !272, size: 32, align: 32, offset: 544)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1380, file: !496, line: 127, baseType: !272, size: 32, align: 32, offset: 576)
!1395 = !DILocalVariable(name: "strm", arg: 1, scope: !1374, file: !260, line: 486, type: !495)
!1396 = !DILocation(line: 486, column: 34, scope: !1374)
!1397 = !DILocalVariable(name: "head", arg: 2, scope: !1374, file: !260, line: 486, type: !1377)
!1398 = !DILocation(line: 486, column: 51, scope: !1374)
!1399 = !DILocalVariable(name: "rc", scope: !1374, file: !260, line: 488, type: !272)
!1400 = !DILocation(line: 488, column: 6, scope: !1374)
!1401 = !DILocalVariable(name: "h", scope: !1374, file: !260, line: 489, type: !1214)
!1402 = !DILocation(line: 489, column: 15, scope: !1374)
!1403 = !DILocalVariable(name: "s", scope: !1374, file: !260, line: 490, type: !268)
!1404 = !DILocation(line: 490, column: 19, scope: !1374)
!1405 = !DILocation(line: 492, column: 2, scope: !1374)
!1406 = distinct !{!1406, !1405}
!1407 = !DILocation(line: 492, column: 12, scope: !1408)
!1408 = !DILexicalBlockFile(scope: !1409, file: !260, discriminator: 1)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !260, line: 492, column: 11)
!1410 = distinct !DILexicalBlock(scope: !1374, file: !260, line: 492, column: 5)
!1411 = !DILocation(line: 492, column: 23, scope: !1408)
!1412 = !DILocation(line: 492, column: 11, scope: !1408)
!1413 = !DILocation(line: 492, column: 39, scope: !1414)
!1414 = !DILexicalBlockFile(scope: !1409, file: !260, discriminator: 2)
!1415 = !DILocation(line: 492, column: 96, scope: !1414)
!1416 = !DILocation(line: 492, column: 102, scope: !1414)
!1417 = !DILocation(line: 492, column: 31, scope: !1414)
!1418 = !DILocation(line: 492, column: 109, scope: !1419)
!1419 = !DILexicalBlockFile(scope: !1410, file: !260, discriminator: 3)
!1420 = !DILocation(line: 494, column: 6, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1374, file: !260, line: 494, column: 6)
!1422 = !DILocation(line: 494, column: 11, scope: !1421)
!1423 = !DILocation(line: 494, column: 6, scope: !1374)
!1424 = !DILocation(line: 495, column: 3, scope: !1421)
!1425 = !DILocation(line: 500, column: 25, scope: !1374)
!1426 = !DILocation(line: 500, column: 31, scope: !1374)
!1427 = !DILocation(line: 500, column: 6, scope: !1374)
!1428 = !DILocation(line: 500, column: 4, scope: !1374)
!1429 = !DILocation(line: 501, column: 6, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1374, file: !260, line: 501, column: 6)
!1431 = !DILocation(line: 501, column: 8, scope: !1430)
!1432 = !DILocation(line: 501, column: 6, scope: !1374)
!1433 = !DILocation(line: 502, column: 3, scope: !1430)
!1434 = !DILocation(line: 503, column: 7, scope: !1374)
!1435 = !DILocation(line: 503, column: 10, scope: !1374)
!1436 = !DILocation(line: 503, column: 4, scope: !1374)
!1437 = !DILocation(line: 505, column: 29, scope: !1374)
!1438 = !DILocation(line: 505, column: 48, scope: !1374)
!1439 = !DILocation(line: 505, column: 32, scope: !1374)
!1440 = !DILocation(line: 505, column: 7, scope: !1374)
!1441 = !DILocation(line: 505, column: 5, scope: !1374)
!1442 = !DILocation(line: 506, column: 11, scope: !1374)
!1443 = !DILocation(line: 506, column: 2, scope: !1374)
!1444 = !DILocation(line: 507, column: 1, scope: !1374)
!1445 = distinct !DISubprogram(name: "h_deflate", scope: !260, file: !260, line: 612, type: !1446, isLocal: false, isDefinition: true, scopeLine: 613, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !530)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!272, !495, !272}
!1448 = !DILocalVariable(name: "strm", arg: 1, scope: !1445, file: !260, line: 612, type: !495)
!1449 = !DILocation(line: 612, column: 25, scope: !1445)
!1450 = !DILocalVariable(name: "flush", arg: 2, scope: !1445, file: !260, line: 612, type: !272)
!1451 = !DILocation(line: 612, column: 35, scope: !1445)
!1452 = !DILocalVariable(name: "rc", scope: !1445, file: !260, line: 614, type: !272)
!1453 = !DILocation(line: 614, column: 6, scope: !1445)
!1454 = !DILocalVariable(name: "loops", scope: !1445, file: !260, line: 614, type: !272)
!1455 = !DILocation(line: 614, column: 16, scope: !1445)
!1456 = !DILocalVariable(name: "s", scope: !1445, file: !260, line: 615, type: !268)
!1457 = !DILocation(line: 615, column: 19, scope: !1445)
!1458 = !DILocalVariable(name: "h", scope: !1445, file: !260, line: 616, type: !1214)
!1459 = !DILocation(line: 616, column: 15, scope: !1445)
!1460 = !DILocalVariable(name: "obuf_bytes", scope: !1445, file: !260, line: 617, type: !275)
!1461 = !DILocation(line: 617, column: 15, scope: !1445)
!1462 = !DILocalVariable(name: "ibuf_bytes", scope: !1445, file: !260, line: 617, type: !275)
!1463 = !DILocation(line: 617, column: 27, scope: !1445)
!1464 = !DILocation(line: 619, column: 6, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1445, file: !260, line: 619, column: 6)
!1466 = !DILocation(line: 619, column: 11, scope: !1465)
!1467 = !DILocation(line: 619, column: 6, scope: !1445)
!1468 = !DILocation(line: 620, column: 3, scope: !1465)
!1469 = !DILocation(line: 622, column: 25, scope: !1445)
!1470 = !DILocation(line: 622, column: 31, scope: !1445)
!1471 = !DILocation(line: 622, column: 6, scope: !1445)
!1472 = !DILocation(line: 622, column: 4, scope: !1445)
!1473 = !DILocation(line: 623, column: 6, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1445, file: !260, line: 623, column: 6)
!1475 = !DILocation(line: 623, column: 8, scope: !1474)
!1476 = !DILocation(line: 623, column: 6, scope: !1445)
!1477 = !DILocation(line: 624, column: 3, scope: !1474)
!1478 = !DILocation(line: 625, column: 7, scope: !1445)
!1479 = !DILocation(line: 625, column: 10, scope: !1445)
!1480 = !DILocation(line: 625, column: 4, scope: !1445)
!1481 = !DILocation(line: 627, column: 6, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1445, file: !260, line: 627, column: 6)
!1483 = !DILocation(line: 627, column: 9, scope: !1482)
!1484 = !DILocation(line: 627, column: 20, scope: !1482)
!1485 = !DILocation(line: 627, column: 6, scope: !1445)
!1486 = !DILocation(line: 628, column: 23, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1482, file: !260, line: 627, column: 26)
!1488 = !DILocation(line: 628, column: 26, scope: !1487)
!1489 = !DILocation(line: 628, column: 3, scope: !1487)
!1490 = !DILocation(line: 629, column: 23, scope: !1487)
!1491 = !DILocation(line: 629, column: 29, scope: !1487)
!1492 = !DILocation(line: 629, column: 32, scope: !1487)
!1493 = !DILocation(line: 629, column: 13, scope: !1487)
!1494 = !DILocation(line: 629, column: 3, scope: !1487)
!1495 = !DILocation(line: 629, column: 6, scope: !1487)
!1496 = !DILocation(line: 629, column: 9, scope: !1487)
!1497 = !DILocation(line: 630, column: 23, scope: !1487)
!1498 = !DILocation(line: 630, column: 29, scope: !1487)
!1499 = !DILocation(line: 630, column: 3, scope: !1487)
!1500 = !DILocation(line: 631, column: 10, scope: !1487)
!1501 = !DILocation(line: 631, column: 13, scope: !1487)
!1502 = !DILocation(line: 631, column: 3, scope: !1487)
!1503 = !DILocation(line: 634, column: 22, scope: !1445)
!1504 = !DILocation(line: 634, column: 28, scope: !1445)
!1505 = !DILocation(line: 634, column: 2, scope: !1445)
!1506 = !DILocation(line: 635, column: 2, scope: !1445)
!1507 = distinct !{!1507, !1506}
!1508 = !DILocation(line: 635, column: 12, scope: !1509)
!1509 = !DILexicalBlockFile(scope: !1510, file: !260, discriminator: 1)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !260, line: 635, column: 11)
!1511 = distinct !DILexicalBlock(scope: !1445, file: !260, line: 635, column: 5)
!1512 = !DILocation(line: 635, column: 23, scope: !1509)
!1513 = !DILocation(line: 635, column: 11, scope: !1509)
!1514 = !DILocation(line: 635, column: 39, scope: !1515)
!1515 = !DILexicalBlockFile(scope: !1510, file: !260, discriminator: 2)
!1516 = !DILocation(line: 635, column: 165, scope: !1515)
!1517 = !DILocation(line: 635, column: 184, scope: !1515)
!1518 = !DILocation(line: 635, column: 171, scope: !1515)
!1519 = !DILocation(line: 635, column: 192, scope: !1515)
!1520 = !DILocation(line: 635, column: 198, scope: !1515)
!1521 = !DILocation(line: 635, column: 208, scope: !1515)
!1522 = !DILocation(line: 635, column: 214, scope: !1515)
!1523 = !DILocation(line: 635, column: 230, scope: !1515)
!1524 = !DILocation(line: 635, column: 233, scope: !1515)
!1525 = !DILocation(line: 635, column: 225, scope: !1515)
!1526 = !DILocation(line: 635, column: 250, scope: !1515)
!1527 = !DILocation(line: 635, column: 253, scope: !1515)
!1528 = !DILocation(line: 635, column: 245, scope: !1515)
!1529 = !DILocation(line: 635, column: 265, scope: !1515)
!1530 = !DILocation(line: 635, column: 268, scope: !1515)
!1531 = !DILocation(line: 635, column: 277, scope: !1515)
!1532 = !DILocation(line: 635, column: 280, scope: !1515)
!1533 = !DILocation(line: 635, column: 31, scope: !1534)
!1534 = !DILexicalBlockFile(scope: !1515, file: !260, discriminator: 4)
!1535 = !DILocation(line: 635, column: 31, scope: !1515)
!1536 = !DILocation(line: 635, column: 288, scope: !1537)
!1537 = !DILexicalBlockFile(scope: !1511, file: !260, discriminator: 3)
!1538 = !DILocation(line: 640, column: 2, scope: !1445)
!1539 = distinct !{!1539, !1538}
!1540 = !DILocation(line: 641, column: 3, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1445, file: !260, line: 640, column: 5)
!1542 = distinct !{!1542, !1540}
!1543 = !DILocation(line: 641, column: 13, scope: !1544)
!1544 = !DILexicalBlockFile(scope: !1545, file: !260, discriminator: 1)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !260, line: 641, column: 12)
!1546 = distinct !DILexicalBlock(scope: !1541, file: !260, line: 641, column: 6)
!1547 = !DILocation(line: 641, column: 24, scope: !1544)
!1548 = !DILocation(line: 641, column: 12, scope: !1544)
!1549 = !DILocation(line: 641, column: 40, scope: !1550)
!1550 = !DILexicalBlockFile(scope: !1545, file: !260, discriminator: 2)
!1551 = !DILocation(line: 641, column: 90, scope: !1550)
!1552 = !DILocation(line: 641, column: 96, scope: !1550)
!1553 = !DILocation(line: 641, column: 116, scope: !1550)
!1554 = !DILocation(line: 641, column: 103, scope: !1550)
!1555 = !DILocation(line: 641, column: 32, scope: !1556)
!1556 = !DILexicalBlockFile(scope: !1550, file: !260, discriminator: 4)
!1557 = !DILocation(line: 641, column: 32, scope: !1550)
!1558 = !DILocation(line: 641, column: 125, scope: !1559)
!1559 = !DILexicalBlockFile(scope: !1546, file: !260, discriminator: 3)
!1560 = !DILocation(line: 645, column: 15, scope: !1541)
!1561 = !DILocation(line: 645, column: 3, scope: !1541)
!1562 = !DILocation(line: 648, column: 16, scope: !1541)
!1563 = !DILocation(line: 648, column: 3, scope: !1541)
!1564 = !DILocation(line: 649, column: 7, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1541, file: !260, line: 649, column: 7)
!1566 = !DILocation(line: 649, column: 13, scope: !1565)
!1567 = !DILocation(line: 649, column: 23, scope: !1565)
!1568 = !DILocation(line: 649, column: 7, scope: !1541)
!1569 = !DILocation(line: 650, column: 4, scope: !1565)
!1570 = !DILocation(line: 656, column: 8, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1541, file: !260, line: 656, column: 7)
!1572 = !DILocation(line: 656, column: 14, scope: !1571)
!1573 = !DILocation(line: 656, column: 28, scope: !1571)
!1574 = !DILocation(line: 656, column: 32, scope: !1575)
!1575 = !DILexicalBlockFile(scope: !1571, file: !260, discriminator: 1)
!1576 = !DILocation(line: 656, column: 35, scope: !1575)
!1577 = !DILocation(line: 656, column: 46, scope: !1575)
!1578 = !DILocation(line: 656, column: 7, scope: !1575)
!1579 = !DILocation(line: 657, column: 17, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1571, file: !260, line: 656, column: 53)
!1581 = !DILocation(line: 657, column: 20, scope: !1580)
!1582 = !DILocation(line: 657, column: 27, scope: !1580)
!1583 = !DILocation(line: 657, column: 30, scope: !1580)
!1584 = !DILocation(line: 657, column: 25, scope: !1580)
!1585 = !DILocation(line: 657, column: 15, scope: !1580)
!1586 = !DILocation(line: 659, column: 4, scope: !1580)
!1587 = distinct !{!1587, !1586}
!1588 = !DILocation(line: 659, column: 14, scope: !1589)
!1589 = !DILexicalBlockFile(scope: !1590, file: !260, discriminator: 1)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !260, line: 659, column: 13)
!1591 = distinct !DILexicalBlock(scope: !1580, file: !260, line: 659, column: 7)
!1592 = !DILocation(line: 659, column: 25, scope: !1589)
!1593 = !DILocation(line: 659, column: 13, scope: !1589)
!1594 = !DILocation(line: 659, column: 41, scope: !1595)
!1595 = !DILexicalBlockFile(scope: !1590, file: !260, discriminator: 2)
!1596 = !DILocation(line: 659, column: 107, scope: !1595)
!1597 = !DILocation(line: 659, column: 113, scope: !1595)
!1598 = !DILocation(line: 659, column: 33, scope: !1595)
!1599 = !DILocation(line: 659, column: 126, scope: !1600)
!1600 = !DILexicalBlockFile(scope: !1591, file: !260, discriminator: 3)
!1601 = !DILocation(line: 662, column: 33, scope: !1580)
!1602 = !DILocation(line: 662, column: 36, scope: !1580)
!1603 = !DILocation(line: 662, column: 19, scope: !1580)
!1604 = !DILocation(line: 662, column: 22, scope: !1580)
!1605 = !DILocation(line: 662, column: 31, scope: !1580)
!1606 = !DILocation(line: 662, column: 4, scope: !1580)
!1607 = !DILocation(line: 662, column: 7, scope: !1580)
!1608 = !DILocation(line: 662, column: 17, scope: !1580)
!1609 = !DILocation(line: 663, column: 20, scope: !1580)
!1610 = !DILocation(line: 663, column: 23, scope: !1580)
!1611 = !DILocation(line: 663, column: 4, scope: !1580)
!1612 = !DILocation(line: 663, column: 7, scope: !1580)
!1613 = !DILocation(line: 663, column: 18, scope: !1580)
!1614 = !DILocation(line: 664, column: 17, scope: !1580)
!1615 = !DILocation(line: 664, column: 20, scope: !1580)
!1616 = !DILocation(line: 664, column: 4, scope: !1580)
!1617 = !DILocation(line: 664, column: 7, scope: !1580)
!1618 = !DILocation(line: 664, column: 15, scope: !1580)
!1619 = !DILocation(line: 665, column: 18, scope: !1580)
!1620 = !DILocation(line: 665, column: 4, scope: !1580)
!1621 = !DILocation(line: 665, column: 7, scope: !1580)
!1622 = !DILocation(line: 665, column: 16, scope: !1580)
!1623 = !DILocation(line: 666, column: 19, scope: !1580)
!1624 = !DILocation(line: 666, column: 22, scope: !1580)
!1625 = !DILocation(line: 666, column: 4, scope: !1580)
!1626 = !DILocation(line: 666, column: 7, scope: !1580)
!1627 = !DILocation(line: 666, column: 17, scope: !1580)
!1628 = !DILocation(line: 675, column: 24, scope: !1580)
!1629 = !DILocation(line: 675, column: 30, scope: !1580)
!1630 = !DILocation(line: 675, column: 34, scope: !1580)
!1631 = !DILocation(line: 675, column: 40, scope: !1580)
!1632 = !DILocation(line: 675, column: 49, scope: !1580)
!1633 = !DILocation(line: 675, column: 33, scope: !1580)
!1634 = !DILocation(line: 675, column: 33, scope: !1635)
!1635 = !DILexicalBlockFile(scope: !1580, file: !260, discriminator: 1)
!1636 = !DILocation(line: 675, column: 13, scope: !1637)
!1637 = !DILexicalBlockFile(scope: !1580, file: !260, discriminator: 2)
!1638 = !DILocation(line: 675, column: 33, scope: !1637)
!1639 = !DILocation(line: 675, column: 33, scope: !1640)
!1640 = !DILexicalBlockFile(scope: !1580, file: !260, discriminator: 3)
!1641 = !DILocation(line: 675, column: 14, scope: !1640)
!1642 = !DILocation(line: 675, column: 4, scope: !1640)
!1643 = !DILocation(line: 675, column: 7, scope: !1640)
!1644 = !DILocation(line: 675, column: 10, scope: !1640)
!1645 = !DILocation(line: 678, column: 14, scope: !1580)
!1646 = !DILocation(line: 678, column: 17, scope: !1580)
!1647 = !DILocation(line: 678, column: 4, scope: !1580)
!1648 = !DILocation(line: 678, column: 7, scope: !1580)
!1649 = !DILocation(line: 678, column: 12, scope: !1580)
!1650 = !DILocation(line: 679, column: 20, scope: !1580)
!1651 = !DILocation(line: 679, column: 23, scope: !1580)
!1652 = !DILocation(line: 679, column: 4, scope: !1580)
!1653 = !DILocation(line: 679, column: 7, scope: !1580)
!1654 = !DILocation(line: 679, column: 18, scope: !1580)
!1655 = !DILocation(line: 681, column: 8, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1580, file: !260, line: 681, column: 8)
!1657 = !DILocation(line: 681, column: 11, scope: !1656)
!1658 = !DILocation(line: 681, column: 20, scope: !1656)
!1659 = !DILocation(line: 681, column: 8, scope: !1580)
!1660 = !DILocation(line: 682, column: 15, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1656, file: !260, line: 681, column: 26)
!1662 = !DILocation(line: 682, column: 18, scope: !1661)
!1663 = !DILocation(line: 682, column: 5, scope: !1661)
!1664 = !DILocation(line: 682, column: 8, scope: !1661)
!1665 = !DILocation(line: 682, column: 13, scope: !1661)
!1666 = !DILocation(line: 683, column: 21, scope: !1661)
!1667 = !DILocation(line: 683, column: 24, scope: !1661)
!1668 = !DILocation(line: 683, column: 5, scope: !1661)
!1669 = !DILocation(line: 683, column: 8, scope: !1661)
!1670 = !DILocation(line: 683, column: 19, scope: !1661)
!1671 = !DILocation(line: 684, column: 4, scope: !1661)
!1672 = !DILocation(line: 685, column: 5, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1656, file: !260, line: 684, column: 11)
!1674 = distinct !{!1674, !1672}
!1675 = !DILocation(line: 685, column: 18, scope: !1676)
!1676 = !DILexicalBlockFile(scope: !1677, file: !260, discriminator: 1)
!1677 = distinct !DILexicalBlock(scope: !1673, file: !260, line: 685, column: 8)
!1678 = !DILocation(line: 685, column: 7, scope: !1676)
!1679 = !DILocation(line: 685, column: 10, scope: !1676)
!1680 = !DILocation(line: 685, column: 21, scope: !1676)
!1681 = !DILocation(line: 688, column: 5, scope: !1673)
!1682 = !DILocation(line: 692, column: 9, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1580, file: !260, line: 692, column: 8)
!1684 = !DILocation(line: 692, column: 12, scope: !1683)
!1685 = !DILocation(line: 692, column: 21, scope: !1683)
!1686 = !DILocation(line: 692, column: 27, scope: !1683)
!1687 = !DILocation(line: 692, column: 31, scope: !1688)
!1688 = !DILexicalBlockFile(scope: !1683, file: !260, discriminator: 1)
!1689 = !DILocation(line: 692, column: 34, scope: !1688)
!1690 = !DILocation(line: 692, column: 44, scope: !1688)
!1691 = !DILocation(line: 692, column: 8, scope: !1688)
!1692 = !DILocation(line: 693, column: 5, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1683, file: !260, line: 692, column: 51)
!1694 = distinct !{!1694, !1692}
!1695 = !DILocation(line: 693, column: 18, scope: !1696)
!1696 = !DILexicalBlockFile(scope: !1697, file: !260, discriminator: 1)
!1697 = distinct !DILexicalBlock(scope: !1693, file: !260, line: 693, column: 8)
!1698 = !DILocation(line: 693, column: 10, scope: !1696)
!1699 = !DILocation(line: 693, column: 97, scope: !1696)
!1700 = !DILocation(line: 694, column: 5, scope: !1693)
!1701 = !DILocation(line: 696, column: 3, scope: !1580)
!1702 = !DILocation(line: 698, column: 7, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1541, file: !260, line: 698, column: 7)
!1704 = !DILocation(line: 698, column: 13, scope: !1703)
!1705 = !DILocation(line: 698, column: 22, scope: !1703)
!1706 = !DILocation(line: 698, column: 7, scope: !1541)
!1707 = !DILocation(line: 699, column: 4, scope: !1703)
!1708 = distinct !{!1708, !1707}
!1709 = !DILocation(line: 699, column: 14, scope: !1710)
!1710 = !DILexicalBlockFile(scope: !1711, file: !260, discriminator: 1)
!1711 = distinct !DILexicalBlock(scope: !1712, file: !260, line: 699, column: 13)
!1712 = distinct !DILexicalBlock(scope: !1703, file: !260, line: 699, column: 7)
!1713 = !DILocation(line: 699, column: 25, scope: !1710)
!1714 = !DILocation(line: 699, column: 13, scope: !1710)
!1715 = !DILocation(line: 699, column: 41, scope: !1716)
!1716 = !DILexicalBlockFile(scope: !1711, file: !260, discriminator: 2)
!1717 = !DILocation(line: 699, column: 99, scope: !1716)
!1718 = !DILocation(line: 699, column: 105, scope: !1716)
!1719 = !DILocation(line: 699, column: 111, scope: !1716)
!1720 = !DILocation(line: 699, column: 33, scope: !1716)
!1721 = !DILocation(line: 699, column: 122, scope: !1722)
!1722 = !DILexicalBlockFile(scope: !1712, file: !260, discriminator: 3)
!1723 = !DILocation(line: 699, column: 122, scope: !1724)
!1724 = !DILexicalBlockFile(scope: !1712, file: !260, discriminator: 4)
!1725 = !DILocation(line: 703, column: 16, scope: !1541)
!1726 = !DILocation(line: 703, column: 3, scope: !1541)
!1727 = !DILocation(line: 704, column: 7, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1541, file: !260, line: 704, column: 7)
!1729 = !DILocation(line: 704, column: 13, scope: !1728)
!1730 = !DILocation(line: 704, column: 23, scope: !1728)
!1731 = !DILocation(line: 704, column: 7, scope: !1541)
!1732 = !DILocation(line: 705, column: 4, scope: !1728)
!1733 = !DILocation(line: 707, column: 16, scope: !1541)
!1734 = !DILocation(line: 707, column: 19, scope: !1541)
!1735 = !DILocation(line: 707, column: 26, scope: !1541)
!1736 = !DILocation(line: 707, column: 29, scope: !1541)
!1737 = !DILocation(line: 707, column: 24, scope: !1541)
!1738 = !DILocation(line: 707, column: 14, scope: !1541)
!1739 = !DILocation(line: 708, column: 16, scope: !1541)
!1740 = !DILocation(line: 708, column: 19, scope: !1541)
!1741 = !DILocation(line: 708, column: 26, scope: !1541)
!1742 = !DILocation(line: 708, column: 29, scope: !1541)
!1743 = !DILocation(line: 708, column: 24, scope: !1541)
!1744 = !DILocation(line: 708, column: 14, scope: !1541)
!1745 = !DILocation(line: 710, column: 8, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1541, file: !260, line: 710, column: 7)
!1747 = !DILocation(line: 710, column: 14, scope: !1746)
!1748 = !DILocation(line: 710, column: 26, scope: !1746)
!1749 = !DILocation(line: 711, column: 8, scope: !1746)
!1750 = !DILocation(line: 711, column: 11, scope: !1746)
!1751 = !DILocation(line: 711, column: 14, scope: !1746)
!1752 = !DILocation(line: 711, column: 30, scope: !1746)
!1753 = !DILocation(line: 712, column: 8, scope: !1746)
!1754 = !DILocation(line: 712, column: 14, scope: !1746)
!1755 = !DILocation(line: 712, column: 23, scope: !1746)
!1756 = !DILocation(line: 712, column: 29, scope: !1746)
!1757 = !DILocation(line: 713, column: 8, scope: !1746)
!1758 = !DILocation(line: 713, column: 19, scope: !1746)
!1759 = !DILocation(line: 713, column: 25, scope: !1746)
!1760 = !DILocation(line: 714, column: 8, scope: !1746)
!1761 = !DILocation(line: 714, column: 19, scope: !1746)
!1762 = !DILocation(line: 710, column: 7, scope: !1763)
!1763 = !DILexicalBlockFile(scope: !1541, file: !260, discriminator: 1)
!1764 = !DILocation(line: 715, column: 4, scope: !1746)
!1765 = !DILocation(line: 717, column: 8, scope: !1541)
!1766 = !DILocation(line: 718, column: 2, scope: !1541)
!1767 = !DILocation(line: 718, column: 11, scope: !1768)
!1768 = !DILexicalBlockFile(scope: !1445, file: !260, discriminator: 1)
!1769 = !DILocation(line: 718, column: 17, scope: !1768)
!1770 = !DILocation(line: 718, column: 26, scope: !1768)
!1771 = !DILocation(line: 718, column: 2, scope: !1768)
!1772 = !DILocation(line: 720, column: 9, scope: !1445)
!1773 = !DILocation(line: 720, column: 2, scope: !1445)
!1774 = !DILocation(line: 721, column: 1, scope: !1445)
!1775 = distinct !DISubprogram(name: "stream_zlib_to_zedc", scope: !260, file: !260, line: 159, type: !1776, isLocal: true, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !530)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{null, !908, !495}
!1778 = !DILocalVariable(name: "h", arg: 1, scope: !1775, file: !260, line: 159, type: !908)
!1779 = !DILocation(line: 159, column: 46, scope: !1775)
!1780 = !DILocalVariable(name: "s", arg: 2, scope: !1775, file: !260, line: 159, type: !495)
!1781 = !DILocation(line: 159, column: 59, scope: !1775)
!1782 = !DILocation(line: 161, column: 15, scope: !1775)
!1783 = !DILocation(line: 161, column: 18, scope: !1775)
!1784 = !DILocation(line: 161, column: 2, scope: !1775)
!1785 = !DILocation(line: 161, column: 5, scope: !1775)
!1786 = !DILocation(line: 161, column: 13, scope: !1775)
!1787 = !DILocation(line: 162, column: 16, scope: !1775)
!1788 = !DILocation(line: 162, column: 19, scope: !1775)
!1789 = !DILocation(line: 162, column: 2, scope: !1775)
!1790 = !DILocation(line: 162, column: 5, scope: !1775)
!1791 = !DILocation(line: 162, column: 14, scope: !1775)
!1792 = !DILocation(line: 163, column: 16, scope: !1775)
!1793 = !DILocation(line: 163, column: 19, scope: !1775)
!1794 = !DILocation(line: 163, column: 2, scope: !1775)
!1795 = !DILocation(line: 163, column: 5, scope: !1775)
!1796 = !DILocation(line: 163, column: 14, scope: !1775)
!1797 = !DILocation(line: 165, column: 16, scope: !1775)
!1798 = !DILocation(line: 165, column: 19, scope: !1775)
!1799 = !DILocation(line: 165, column: 2, scope: !1775)
!1800 = !DILocation(line: 165, column: 5, scope: !1775)
!1801 = !DILocation(line: 165, column: 14, scope: !1775)
!1802 = !DILocation(line: 166, column: 17, scope: !1775)
!1803 = !DILocation(line: 166, column: 20, scope: !1775)
!1804 = !DILocation(line: 166, column: 2, scope: !1775)
!1805 = !DILocation(line: 166, column: 5, scope: !1775)
!1806 = !DILocation(line: 166, column: 15, scope: !1775)
!1807 = !DILocation(line: 167, column: 17, scope: !1775)
!1808 = !DILocation(line: 167, column: 20, scope: !1775)
!1809 = !DILocation(line: 167, column: 2, scope: !1775)
!1810 = !DILocation(line: 167, column: 5, scope: !1775)
!1811 = !DILocation(line: 167, column: 15, scope: !1775)
!1812 = !DILocation(line: 168, column: 1, scope: !1775)
!1813 = distinct !DISubprogram(name: "__deflate", scope: !260, file: !260, line: 509, type: !1814, isLocal: true, isDefinition: true, scopeLine: 510, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !530)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!272, !495, !268, !272}
!1816 = !DILocalVariable(name: "strm", arg: 1, scope: !1813, file: !260, line: 509, type: !495)
!1817 = !DILocation(line: 509, column: 39, scope: !1813)
!1818 = !DILocalVariable(name: "s", arg: 2, scope: !1813, file: !260, line: 509, type: !268)
!1819 = !DILocation(line: 509, column: 62, scope: !1813)
!1820 = !DILocalVariable(name: "flush", arg: 3, scope: !1813, file: !260, line: 509, type: !272)
!1821 = !DILocation(line: 509, column: 69, scope: !1813)
!1822 = !DILocalVariable(name: "rc", scope: !1813, file: !260, line: 511, type: !272)
!1823 = !DILocation(line: 511, column: 6, scope: !1813)
!1824 = !DILocalVariable(name: "h", scope: !1813, file: !260, line: 512, type: !1214)
!1825 = !DILocation(line: 512, column: 15, scope: !1813)
!1826 = !DILocation(line: 512, column: 20, scope: !1813)
!1827 = !DILocation(line: 512, column: 23, scope: !1813)
!1828 = !DILocation(line: 514, column: 2, scope: !1813)
!1829 = distinct !{!1829, !1828}
!1830 = !DILocation(line: 514, column: 12, scope: !1831)
!1831 = !DILexicalBlockFile(scope: !1832, file: !260, discriminator: 1)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !260, line: 514, column: 11)
!1833 = distinct !DILexicalBlock(scope: !1813, file: !260, line: 514, column: 5)
!1834 = !DILocation(line: 514, column: 23, scope: !1831)
!1835 = !DILocation(line: 514, column: 11, scope: !1831)
!1836 = !DILocation(line: 514, column: 39, scope: !1837)
!1837 = !DILexicalBlockFile(scope: !1832, file: !260, discriminator: 2)
!1838 = !DILocation(line: 514, column: 142, scope: !1837)
!1839 = !DILocation(line: 514, column: 148, scope: !1837)
!1840 = !DILocation(line: 514, column: 151, scope: !1837)
!1841 = !DILocation(line: 514, column: 177, scope: !1837)
!1842 = !DILocation(line: 514, column: 164, scope: !1837)
!1843 = !DILocation(line: 514, column: 185, scope: !1837)
!1844 = !DILocation(line: 514, column: 188, scope: !1837)
!1845 = !DILocation(line: 514, column: 197, scope: !1837)
!1846 = !DILocation(line: 514, column: 200, scope: !1837)
!1847 = !DILocation(line: 514, column: 210, scope: !1837)
!1848 = !DILocation(line: 514, column: 213, scope: !1837)
!1849 = !DILocation(line: 514, column: 223, scope: !1837)
!1850 = !DILocation(line: 514, column: 226, scope: !1837)
!1851 = !DILocation(line: 514, column: 31, scope: !1852)
!1852 = !DILexicalBlockFile(scope: !1837, file: !260, discriminator: 4)
!1853 = !DILocation(line: 514, column: 31, scope: !1837)
!1854 = !DILocation(line: 514, column: 238, scope: !1855)
!1855 = !DILexicalBlockFile(scope: !1833, file: !260, discriminator: 3)
!1856 = !DILocation(line: 519, column: 20, scope: !1813)
!1857 = !DILocation(line: 519, column: 23, scope: !1813)
!1858 = !DILocation(line: 519, column: 7, scope: !1813)
!1859 = !DILocation(line: 519, column: 5, scope: !1813)
!1860 = !DILocation(line: 520, column: 23, scope: !1813)
!1861 = !DILocation(line: 520, column: 29, scope: !1813)
!1862 = !DILocation(line: 520, column: 2, scope: !1813)
!1863 = !DILocation(line: 521, column: 2, scope: !1813)
!1864 = !DILocation(line: 521, column: 5, scope: !1813)
!1865 = !DILocation(line: 521, column: 16, scope: !1813)
!1866 = !DILocation(line: 523, column: 2, scope: !1813)
!1867 = distinct !{!1867, !1866}
!1868 = !DILocation(line: 523, column: 12, scope: !1869)
!1869 = !DILexicalBlockFile(scope: !1870, file: !260, discriminator: 1)
!1870 = distinct !DILexicalBlock(scope: !1871, file: !260, line: 523, column: 11)
!1871 = distinct !DILexicalBlock(scope: !1813, file: !260, line: 523, column: 5)
!1872 = !DILocation(line: 523, column: 23, scope: !1869)
!1873 = !DILocation(line: 523, column: 11, scope: !1869)
!1874 = !DILocation(line: 523, column: 39, scope: !1875)
!1875 = !DILexicalBlockFile(scope: !1870, file: !260, discriminator: 2)
!1876 = !DILocation(line: 523, column: 143, scope: !1875)
!1877 = !DILocation(line: 523, column: 162, scope: !1875)
!1878 = !DILocation(line: 523, column: 149, scope: !1875)
!1879 = !DILocation(line: 523, column: 170, scope: !1875)
!1880 = !DILocation(line: 523, column: 173, scope: !1875)
!1881 = !DILocation(line: 523, column: 182, scope: !1875)
!1882 = !DILocation(line: 523, column: 185, scope: !1875)
!1883 = !DILocation(line: 523, column: 195, scope: !1875)
!1884 = !DILocation(line: 523, column: 198, scope: !1875)
!1885 = !DILocation(line: 523, column: 208, scope: !1875)
!1886 = !DILocation(line: 523, column: 211, scope: !1875)
!1887 = !DILocation(line: 523, column: 222, scope: !1875)
!1888 = !DILocation(line: 523, column: 31, scope: !1889)
!1889 = !DILexicalBlockFile(scope: !1875, file: !260, discriminator: 4)
!1890 = !DILocation(line: 523, column: 31, scope: !1875)
!1891 = !DILocation(line: 523, column: 227, scope: !1892)
!1892 = !DILexicalBlockFile(scope: !1871, file: !260, discriminator: 3)
!1893 = !DILocation(line: 527, column: 9, scope: !1813)
!1894 = !DILocation(line: 527, column: 2, scope: !1813)
!1895 = distinct !DISubprogram(name: "stream_zedc_to_zlib", scope: !260, file: !260, line: 148, type: !906, isLocal: true, isDefinition: true, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !530)
!1896 = !DILocalVariable(name: "s", arg: 1, scope: !1895, file: !260, line: 148, type: !495)
!1897 = !DILocation(line: 148, column: 43, scope: !1895)
!1898 = !DILocalVariable(name: "h", arg: 2, scope: !1895, file: !260, line: 148, type: !908)
!1899 = !DILocation(line: 148, column: 59, scope: !1895)
!1900 = !DILocation(line: 150, column: 26, scope: !1895)
!1901 = !DILocation(line: 150, column: 29, scope: !1895)
!1902 = !DILocation(line: 150, column: 2, scope: !1895)
!1903 = !DILocation(line: 150, column: 5, scope: !1895)
!1904 = !DILocation(line: 150, column: 13, scope: !1895)
!1905 = !DILocation(line: 151, column: 16, scope: !1895)
!1906 = !DILocation(line: 151, column: 19, scope: !1895)
!1907 = !DILocation(line: 151, column: 2, scope: !1895)
!1908 = !DILocation(line: 151, column: 5, scope: !1895)
!1909 = !DILocation(line: 151, column: 14, scope: !1895)
!1910 = !DILocation(line: 152, column: 16, scope: !1895)
!1911 = !DILocation(line: 152, column: 19, scope: !1895)
!1912 = !DILocation(line: 152, column: 2, scope: !1895)
!1913 = !DILocation(line: 152, column: 5, scope: !1895)
!1914 = !DILocation(line: 152, column: 14, scope: !1895)
!1915 = !DILocation(line: 154, column: 16, scope: !1895)
!1916 = !DILocation(line: 154, column: 19, scope: !1895)
!1917 = !DILocation(line: 154, column: 2, scope: !1895)
!1918 = !DILocation(line: 154, column: 5, scope: !1895)
!1919 = !DILocation(line: 154, column: 14, scope: !1895)
!1920 = !DILocation(line: 155, column: 17, scope: !1895)
!1921 = !DILocation(line: 155, column: 20, scope: !1895)
!1922 = !DILocation(line: 155, column: 2, scope: !1895)
!1923 = !DILocation(line: 155, column: 5, scope: !1895)
!1924 = !DILocation(line: 155, column: 15, scope: !1895)
!1925 = !DILocation(line: 156, column: 17, scope: !1895)
!1926 = !DILocation(line: 156, column: 20, scope: !1895)
!1927 = !DILocation(line: 156, column: 2, scope: !1895)
!1928 = !DILocation(line: 156, column: 5, scope: !1895)
!1929 = !DILocation(line: 156, column: 15, scope: !1895)
!1930 = !DILocation(line: 157, column: 1, scope: !1895)
!1931 = distinct !DISubprogram(name: "__prep_crc_or_adler", scope: !260, file: !260, line: 187, type: !906, isLocal: true, isDefinition: true, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !530)
!1932 = !DILocalVariable(name: "s", arg: 1, scope: !1931, file: !260, line: 187, type: !495)
!1933 = !DILocation(line: 187, column: 43, scope: !1931)
!1934 = !DILocalVariable(name: "h", arg: 2, scope: !1931, file: !260, line: 187, type: !908)
!1935 = !DILocation(line: 187, column: 59, scope: !1931)
!1936 = !DILocation(line: 189, column: 6, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1931, file: !260, line: 189, column: 6)
!1938 = !DILocation(line: 189, column: 9, scope: !1937)
!1939 = !DILocation(line: 189, column: 18, scope: !1937)
!1940 = !DILocation(line: 189, column: 6, scope: !1931)
!1941 = !DILocation(line: 190, column: 7, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !260, line: 190, column: 7)
!1943 = distinct !DILexicalBlock(scope: !1937, file: !260, line: 189, column: 24)
!1944 = !DILocation(line: 190, column: 10, scope: !1942)
!1945 = !DILocation(line: 190, column: 17, scope: !1942)
!1946 = !DILocation(line: 190, column: 7, scope: !1943)
!1947 = !DILocation(line: 191, column: 4, scope: !1942)
!1948 = !DILocation(line: 191, column: 7, scope: !1942)
!1949 = !DILocation(line: 191, column: 13, scope: !1942)
!1950 = !DILocation(line: 193, column: 4, scope: !1942)
!1951 = !DILocation(line: 193, column: 7, scope: !1942)
!1952 = !DILocation(line: 193, column: 13, scope: !1942)
!1953 = !DILocation(line: 194, column: 2, scope: !1943)
!1954 = !DILocation(line: 195, column: 1, scope: !1931)
!1955 = distinct !DISubprogram(name: "h_read_ibuf", scope: !260, file: !260, line: 533, type: !1207, isLocal: true, isDefinition: true, scopeLine: 534, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !530)
!1956 = !DILocalVariable(name: "strm", arg: 1, scope: !1955, file: !260, line: 533, type: !495)
!1957 = !DILocation(line: 533, column: 34, scope: !1955)
!1958 = !DILocalVariable(name: "tocopy", scope: !1955, file: !260, line: 535, type: !272)
!1959 = !DILocation(line: 535, column: 6, scope: !1955)
!1960 = !DILocalVariable(name: "s", scope: !1955, file: !260, line: 536, type: !268)
!1961 = !DILocation(line: 536, column: 19, scope: !1955)
!1962 = !DILocation(line: 536, column: 42, scope: !1955)
!1963 = !DILocation(line: 536, column: 48, scope: !1955)
!1964 = !DILocation(line: 536, column: 23, scope: !1955)
!1965 = !DILocation(line: 538, column: 7, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1955, file: !260, line: 538, column: 6)
!1967 = !DILocation(line: 538, column: 10, scope: !1966)
!1968 = !DILocation(line: 538, column: 21, scope: !1966)
!1969 = !DILocation(line: 538, column: 27, scope: !1966)
!1970 = !DILocation(line: 539, column: 7, scope: !1966)
!1971 = !DILocation(line: 539, column: 13, scope: !1966)
!1972 = !DILocation(line: 539, column: 22, scope: !1966)
!1973 = !DILocation(line: 538, column: 6, scope: !1974)
!1974 = !DILexicalBlockFile(scope: !1955, file: !260, discriminator: 1)
!1975 = !DILocation(line: 540, column: 3, scope: !1966)
!1976 = !DILocalVariable(name: "_a", scope: !1977, file: !260, line: 542, type: !506)
!1977 = distinct !DILexicalBlock(scope: !1955, file: !260, line: 542, column: 12)
!1978 = !DILocation(line: 542, column: 42, scope: !1977)
!1979 = !DILocation(line: 542, column: 48, scope: !1977)
!1980 = !DILocation(line: 542, column: 54, scope: !1977)
!1981 = !DILocalVariable(name: "_b", scope: !1977, file: !260, line: 542, type: !454)
!1982 = !DILocation(line: 542, column: 92, scope: !1977)
!1983 = !DILocation(line: 542, column: 98, scope: !1977)
!1984 = !DILocation(line: 542, column: 101, scope: !1977)
!1985 = !DILocation(line: 542, column: 114, scope: !1977)
!1986 = !DILocation(line: 542, column: 119, scope: !1977)
!1987 = !DILocation(line: 542, column: 117, scope: !1977)
!1988 = !DILocation(line: 542, column: 124, scope: !1989)
!1989 = !DILexicalBlockFile(scope: !1977, file: !260, discriminator: 1)
!1990 = !DILocation(line: 542, column: 114, scope: !1989)
!1991 = !DILocation(line: 542, column: 129, scope: !1992)
!1992 = !DILexicalBlockFile(scope: !1977, file: !260, discriminator: 2)
!1993 = !DILocation(line: 542, column: 114, scope: !1992)
!1994 = !DILocation(line: 542, column: 114, scope: !1995)
!1995 = !DILexicalBlockFile(scope: !1977, file: !260, discriminator: 3)
!1996 = !DILocation(line: 542, column: 65, scope: !1995)
!1997 = !DILocation(line: 542, column: 133, scope: !1995)
!1998 = !DILocation(line: 542, column: 11, scope: !1995)
!1999 = !DILocation(line: 542, column: 9, scope: !1995)
!2000 = !DILocation(line: 544, column: 2, scope: !1955)
!2001 = distinct !{!2001, !2000}
!2002 = !DILocation(line: 544, column: 12, scope: !2003)
!2003 = !DILexicalBlockFile(scope: !2004, file: !260, discriminator: 1)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !260, line: 544, column: 11)
!2005 = distinct !DILexicalBlock(scope: !1955, file: !260, line: 544, column: 5)
!2006 = !DILocation(line: 544, column: 23, scope: !2003)
!2007 = !DILocation(line: 544, column: 11, scope: !2003)
!2008 = !DILocation(line: 544, column: 39, scope: !2009)
!2009 = !DILexicalBlockFile(scope: !2004, file: !260, discriminator: 2)
!2010 = !DILocation(line: 544, column: 96, scope: !2009)
!2011 = !DILocation(line: 544, column: 102, scope: !2009)
!2012 = !DILocation(line: 544, column: 31, scope: !2009)
!2013 = !DILocation(line: 544, column: 111, scope: !2014)
!2014 = !DILexicalBlockFile(scope: !2005, file: !260, discriminator: 3)
!2015 = !DILocation(line: 545, column: 9, scope: !1955)
!2016 = !DILocation(line: 545, column: 12, scope: !1955)
!2017 = !DILocation(line: 545, column: 18, scope: !1955)
!2018 = !DILocation(line: 545, column: 24, scope: !1955)
!2019 = !DILocation(line: 545, column: 33, scope: !1955)
!2020 = !DILocation(line: 545, column: 2, scope: !1955)
!2021 = !DILocation(line: 546, column: 19, scope: !1955)
!2022 = !DILocation(line: 546, column: 2, scope: !1955)
!2023 = !DILocation(line: 546, column: 5, scope: !1955)
!2024 = !DILocation(line: 546, column: 16, scope: !1955)
!2025 = !DILocation(line: 547, column: 13, scope: !1955)
!2026 = !DILocation(line: 547, column: 2, scope: !1955)
!2027 = !DILocation(line: 547, column: 5, scope: !1955)
!2028 = !DILocation(line: 547, column: 10, scope: !1955)
!2029 = !DILocation(line: 550, column: 20, scope: !1955)
!2030 = !DILocation(line: 550, column: 2, scope: !1955)
!2031 = !DILocation(line: 550, column: 8, scope: !1955)
!2032 = !DILocation(line: 550, column: 17, scope: !1955)
!2033 = !DILocation(line: 551, column: 19, scope: !1955)
!2034 = !DILocation(line: 551, column: 2, scope: !1955)
!2035 = !DILocation(line: 551, column: 8, scope: !1955)
!2036 = !DILocation(line: 551, column: 16, scope: !1955)
!2037 = !DILocation(line: 552, column: 20, scope: !1955)
!2038 = !DILocation(line: 552, column: 2, scope: !1955)
!2039 = !DILocation(line: 552, column: 8, scope: !1955)
!2040 = !DILocation(line: 552, column: 17, scope: !1955)
!2041 = !DILocation(line: 554, column: 9, scope: !1955)
!2042 = !DILocation(line: 554, column: 2, scope: !1955)
!2043 = !DILocation(line: 555, column: 1, scope: !1955)
!2044 = distinct !DISubprogram(name: "h_flush_obuf", scope: !260, file: !260, line: 563, type: !2045, isLocal: true, isDefinition: true, scopeLine: 564, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !530)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!275, !495}
!2047 = !DILocalVariable(name: "strm", arg: 1, scope: !2044, file: !260, line: 563, type: !495)
!2048 = !DILocation(line: 563, column: 44, scope: !2044)
!2049 = !DILocalVariable(name: "tocopy", scope: !2044, file: !260, line: 565, type: !272)
!2050 = !DILocation(line: 565, column: 6, scope: !2044)
!2051 = !DILocalVariable(name: "obuf_bytes", scope: !2044, file: !260, line: 566, type: !275)
!2052 = !DILocation(line: 566, column: 15, scope: !2044)
!2053 = !DILocalVariable(name: "s", scope: !2044, file: !260, line: 567, type: !268)
!2054 = !DILocation(line: 567, column: 19, scope: !2044)
!2055 = !DILocation(line: 567, column: 42, scope: !2044)
!2056 = !DILocation(line: 567, column: 48, scope: !2044)
!2057 = !DILocation(line: 567, column: 23, scope: !2044)
!2058 = !DILocation(line: 569, column: 35, scope: !2044)
!2059 = !DILocation(line: 569, column: 15, scope: !2044)
!2060 = !DILocation(line: 569, column: 13, scope: !2044)
!2061 = !DILocation(line: 570, column: 6, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2044, file: !260, line: 570, column: 6)
!2063 = !DILocation(line: 570, column: 12, scope: !2062)
!2064 = !DILocation(line: 570, column: 22, scope: !2062)
!2065 = !DILocation(line: 570, column: 6, scope: !2044)
!2066 = !DILocation(line: 571, column: 10, scope: !2062)
!2067 = !DILocation(line: 571, column: 3, scope: !2062)
!2068 = !DILocation(line: 573, column: 6, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2044, file: !260, line: 573, column: 6)
!2070 = !DILocation(line: 573, column: 17, scope: !2069)
!2071 = !DILocation(line: 573, column: 6, scope: !2044)
!2072 = !DILocation(line: 574, column: 10, scope: !2069)
!2073 = !DILocation(line: 574, column: 3, scope: !2069)
!2074 = !DILocalVariable(name: "_a", scope: !2075, file: !260, line: 576, type: !506)
!2075 = distinct !DILexicalBlock(scope: !2044, file: !260, line: 576, column: 12)
!2076 = !DILocation(line: 576, column: 43, scope: !2075)
!2077 = !DILocation(line: 576, column: 49, scope: !2075)
!2078 = !DILocation(line: 576, column: 55, scope: !2075)
!2079 = !DILocalVariable(name: "_b", scope: !2075, file: !260, line: 576, type: !275)
!2080 = !DILocation(line: 576, column: 91, scope: !2075)
!2081 = !DILocation(line: 576, column: 97, scope: !2075)
!2082 = !DILocation(line: 576, column: 110, scope: !2075)
!2083 = !DILocation(line: 576, column: 115, scope: !2075)
!2084 = !DILocation(line: 576, column: 113, scope: !2075)
!2085 = !DILocation(line: 576, column: 120, scope: !2086)
!2086 = !DILexicalBlockFile(scope: !2075, file: !260, discriminator: 1)
!2087 = !DILocation(line: 576, column: 110, scope: !2086)
!2088 = !DILocation(line: 576, column: 125, scope: !2089)
!2089 = !DILexicalBlockFile(scope: !2075, file: !260, discriminator: 2)
!2090 = !DILocation(line: 576, column: 110, scope: !2089)
!2091 = !DILocation(line: 576, column: 110, scope: !2092)
!2092 = !DILexicalBlockFile(scope: !2075, file: !260, discriminator: 3)
!2093 = !DILocation(line: 576, column: 67, scope: !2092)
!2094 = !DILocation(line: 576, column: 129, scope: !2092)
!2095 = !DILocation(line: 576, column: 9, scope: !2092)
!2096 = !DILocation(line: 578, column: 2, scope: !2044)
!2097 = distinct !{!2097, !2096}
!2098 = !DILocation(line: 578, column: 12, scope: !2099)
!2099 = !DILexicalBlockFile(scope: !2100, file: !260, discriminator: 1)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !260, line: 578, column: 11)
!2101 = distinct !DILexicalBlock(scope: !2044, file: !260, line: 578, column: 5)
!2102 = !DILocation(line: 578, column: 23, scope: !2099)
!2103 = !DILocation(line: 578, column: 11, scope: !2099)
!2104 = !DILocation(line: 578, column: 39, scope: !2105)
!2105 = !DILexicalBlockFile(scope: !2100, file: !260, discriminator: 2)
!2106 = !DILocation(line: 578, column: 154, scope: !2105)
!2107 = !DILocation(line: 578, column: 160, scope: !2105)
!2108 = !DILocation(line: 578, column: 168, scope: !2105)
!2109 = !DILocation(line: 578, column: 181, scope: !2105)
!2110 = !DILocation(line: 578, column: 179, scope: !2105)
!2111 = !DILocation(line: 578, column: 218, scope: !2105)
!2112 = !DILocation(line: 578, column: 221, scope: !2105)
!2113 = !DILocation(line: 578, column: 189, scope: !2105)
!2114 = !DILocation(line: 578, column: 31, scope: !2115)
!2115 = !DILexicalBlockFile(scope: !2105, file: !260, discriminator: 4)
!2116 = !DILocation(line: 578, column: 31, scope: !2105)
!2117 = !DILocation(line: 578, column: 226, scope: !2118)
!2118 = !DILexicalBlockFile(scope: !2101, file: !260, discriminator: 3)
!2119 = !DILocation(line: 584, column: 9, scope: !2044)
!2120 = !DILocation(line: 584, column: 15, scope: !2044)
!2121 = !DILocation(line: 584, column: 25, scope: !2044)
!2122 = !DILocation(line: 584, column: 28, scope: !2044)
!2123 = !DILocation(line: 584, column: 39, scope: !2044)
!2124 = !DILocation(line: 584, column: 2, scope: !2044)
!2125 = !DILocation(line: 585, column: 18, scope: !2044)
!2126 = !DILocation(line: 585, column: 2, scope: !2044)
!2127 = !DILocation(line: 585, column: 5, scope: !2044)
!2128 = !DILocation(line: 585, column: 15, scope: !2044)
!2129 = !DILocation(line: 586, column: 19, scope: !2044)
!2130 = !DILocation(line: 586, column: 2, scope: !2044)
!2131 = !DILocation(line: 586, column: 5, scope: !2044)
!2132 = !DILocation(line: 586, column: 16, scope: !2044)
!2133 = !DILocation(line: 588, column: 35, scope: !2044)
!2134 = !DILocation(line: 588, column: 15, scope: !2044)
!2135 = !DILocation(line: 588, column: 13, scope: !2044)
!2136 = !DILocation(line: 591, column: 21, scope: !2044)
!2137 = !DILocation(line: 591, column: 2, scope: !2044)
!2138 = !DILocation(line: 591, column: 8, scope: !2044)
!2139 = !DILocation(line: 591, column: 18, scope: !2044)
!2140 = !DILocation(line: 592, column: 20, scope: !2044)
!2141 = !DILocation(line: 592, column: 2, scope: !2044)
!2142 = !DILocation(line: 592, column: 8, scope: !2044)
!2143 = !DILocation(line: 592, column: 17, scope: !2044)
!2144 = !DILocation(line: 593, column: 21, scope: !2044)
!2145 = !DILocation(line: 593, column: 2, scope: !2044)
!2146 = !DILocation(line: 593, column: 8, scope: !2044)
!2147 = !DILocation(line: 593, column: 18, scope: !2044)
!2148 = !DILocation(line: 595, column: 9, scope: !2044)
!2149 = !DILocation(line: 595, column: 2, scope: !2044)
!2150 = !DILocation(line: 596, column: 1, scope: !2044)
!2151 = distinct !DISubprogram(name: "h_deflateEnd", scope: !260, file: !260, line: 723, type: !1207, isLocal: false, isDefinition: true, scopeLine: 724, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !530)
!2152 = !DILocalVariable(name: "strm", arg: 1, scope: !2151, file: !260, line: 723, type: !495)
!2153 = !DILocation(line: 723, column: 28, scope: !2151)
!2154 = !DILocalVariable(name: "rc", scope: !2151, file: !260, line: 725, type: !272)
!2155 = !DILocation(line: 725, column: 6, scope: !2151)
!2156 = !DILocalVariable(name: "h", scope: !2151, file: !260, line: 726, type: !1214)
!2157 = !DILocation(line: 726, column: 15, scope: !2151)
!2158 = !DILocalVariable(name: "s", scope: !2151, file: !260, line: 727, type: !268)
!2159 = !DILocation(line: 727, column: 19, scope: !2151)
!2160 = !DILocalVariable(name: "zedc", scope: !2151, file: !260, line: 728, type: !468)
!2161 = !DILocation(line: 728, column: 16, scope: !2151)
!2162 = !DILocation(line: 730, column: 6, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2151, file: !260, line: 730, column: 6)
!2164 = !DILocation(line: 730, column: 11, scope: !2163)
!2165 = !DILocation(line: 730, column: 6, scope: !2151)
!2166 = !DILocation(line: 731, column: 3, scope: !2163)
!2167 = !DILocation(line: 733, column: 25, scope: !2151)
!2168 = !DILocation(line: 733, column: 31, scope: !2151)
!2169 = !DILocation(line: 733, column: 6, scope: !2151)
!2170 = !DILocation(line: 733, column: 4, scope: !2151)
!2171 = !DILocation(line: 734, column: 6, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2151, file: !260, line: 734, column: 6)
!2173 = !DILocation(line: 734, column: 8, scope: !2172)
!2174 = !DILocation(line: 734, column: 6, scope: !2151)
!2175 = !DILocation(line: 735, column: 3, scope: !2172)
!2176 = !DILocation(line: 736, column: 7, scope: !2151)
!2177 = !DILocation(line: 736, column: 10, scope: !2151)
!2178 = !DILocation(line: 736, column: 4, scope: !2151)
!2179 = !DILocation(line: 737, column: 24, scope: !2151)
!2180 = !DILocation(line: 737, column: 27, scope: !2151)
!2181 = !DILocation(line: 737, column: 9, scope: !2151)
!2182 = !DILocation(line: 737, column: 7, scope: !2151)
!2183 = !DILocation(line: 739, column: 23, scope: !2151)
!2184 = !DILocation(line: 739, column: 7, scope: !2151)
!2185 = !DILocation(line: 739, column: 5, scope: !2151)
!2186 = !DILocation(line: 741, column: 12, scope: !2151)
!2187 = !DILocation(line: 741, column: 18, scope: !2151)
!2188 = !DILocation(line: 741, column: 21, scope: !2151)
!2189 = !DILocation(line: 741, column: 32, scope: !2151)
!2190 = !DILocation(line: 741, column: 35, scope: !2151)
!2191 = !DILocation(line: 741, column: 47, scope: !2151)
!2192 = !DILocation(line: 741, column: 50, scope: !2151)
!2193 = !DILocation(line: 741, column: 52, scope: !2151)
!2194 = !DILocation(line: 741, column: 2, scope: !2151)
!2195 = !DILocation(line: 742, column: 12, scope: !2151)
!2196 = !DILocation(line: 742, column: 18, scope: !2151)
!2197 = !DILocation(line: 742, column: 21, scope: !2151)
!2198 = !DILocation(line: 742, column: 32, scope: !2151)
!2199 = !DILocation(line: 742, column: 35, scope: !2151)
!2200 = !DILocation(line: 742, column: 47, scope: !2151)
!2201 = !DILocation(line: 742, column: 50, scope: !2151)
!2202 = !DILocation(line: 742, column: 52, scope: !2151)
!2203 = !DILocation(line: 742, column: 2, scope: !2151)
!2204 = !DILocation(line: 743, column: 15, scope: !2151)
!2205 = !DILocation(line: 743, column: 2, scope: !2151)
!2206 = !DILocation(line: 744, column: 9, scope: !2151)
!2207 = !DILocation(line: 744, column: 2, scope: !2151)
!2208 = !DILocation(line: 745, column: 11, scope: !2151)
!2209 = !DILocation(line: 745, column: 2, scope: !2151)
!2210 = !DILocation(line: 746, column: 1, scope: !2151)
!2211 = distinct !DISubprogram(name: "h_inflateInit2_", scope: !260, file: !260, line: 748, type: !2212, isLocal: false, isDefinition: true, scopeLine: 750, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !530)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!272, !495, !272, !483, !272}
!2214 = !DILocalVariable(name: "strm", arg: 1, scope: !2211, file: !260, line: 748, type: !495)
!2215 = !DILocation(line: 748, column: 31, scope: !2211)
!2216 = !DILocalVariable(name: "windowBits", arg: 2, scope: !2211, file: !260, line: 748, type: !272)
!2217 = !DILocation(line: 748, column: 41, scope: !2211)
!2218 = !DILocalVariable(name: "version", arg: 3, scope: !2211, file: !260, line: 749, type: !483)
!2219 = !DILocation(line: 749, column: 19, scope: !2211)
!2220 = !DILocalVariable(name: "stream_size", arg: 4, scope: !2211, file: !260, line: 749, type: !272)
!2221 = !DILocation(line: 749, column: 56, scope: !2211)
!2222 = !DILocalVariable(name: "rc", scope: !2211, file: !260, line: 751, type: !272)
!2223 = !DILocation(line: 751, column: 6, scope: !2211)
!2224 = !DILocalVariable(name: "err_code", scope: !2211, file: !260, line: 751, type: !272)
!2225 = !DILocation(line: 751, column: 10, scope: !2211)
!2226 = !DILocalVariable(name: "s", scope: !2211, file: !260, line: 752, type: !268)
!2227 = !DILocation(line: 752, column: 19, scope: !2211)
!2228 = !DILocalVariable(name: "zedc", scope: !2211, file: !260, line: 753, type: !468)
!2229 = !DILocation(line: 753, column: 16, scope: !2211)
!2230 = !DILocation(line: 755, column: 2, scope: !2211)
!2231 = !DILocation(line: 755, column: 8, scope: !2211)
!2232 = !DILocation(line: 755, column: 17, scope: !2211)
!2233 = !DILocation(line: 756, column: 2, scope: !2211)
!2234 = !DILocation(line: 756, column: 8, scope: !2211)
!2235 = !DILocation(line: 756, column: 18, scope: !2211)
!2236 = !DILocation(line: 758, column: 6, scope: !2211)
!2237 = !DILocation(line: 758, column: 4, scope: !2211)
!2238 = !DILocation(line: 759, column: 6, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2211, file: !260, line: 759, column: 6)
!2240 = !DILocation(line: 759, column: 8, scope: !2239)
!2241 = !DILocation(line: 759, column: 6, scope: !2211)
!2242 = !DILocation(line: 760, column: 3, scope: !2239)
!2243 = !DILocation(line: 762, column: 17, scope: !2211)
!2244 = !DILocation(line: 762, column: 2, scope: !2211)
!2245 = !DILocation(line: 762, column: 5, scope: !2211)
!2246 = !DILocation(line: 762, column: 15, scope: !2211)
!2247 = !DILocation(line: 763, column: 15, scope: !2211)
!2248 = !DILocation(line: 763, column: 2, scope: !2211)
!2249 = !DILocation(line: 763, column: 5, scope: !2211)
!2250 = !DILocation(line: 763, column: 13, scope: !2211)
!2251 = !DILocation(line: 764, column: 2, scope: !2211)
!2252 = !DILocation(line: 764, column: 5, scope: !2211)
!2253 = !DILocation(line: 764, column: 10, scope: !2211)
!2254 = !DILocation(line: 766, column: 6, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2211, file: !260, line: 766, column: 6)
!2256 = !DILocation(line: 766, column: 25, scope: !2255)
!2257 = !DILocation(line: 766, column: 6, scope: !2211)
!2258 = !DILocation(line: 767, column: 3, scope: !2255)
!2259 = !DILocation(line: 767, column: 6, scope: !2255)
!2260 = !DILocation(line: 767, column: 11, scope: !2255)
!2261 = !DILocation(line: 769, column: 2, scope: !2211)
!2262 = distinct !{!2262, !2261}
!2263 = !DILocation(line: 769, column: 12, scope: !2264)
!2264 = !DILexicalBlockFile(scope: !2265, file: !260, discriminator: 1)
!2265 = distinct !DILexicalBlock(scope: !2266, file: !260, line: 769, column: 11)
!2266 = distinct !DILexicalBlock(scope: !2211, file: !260, line: 769, column: 5)
!2267 = !DILocation(line: 769, column: 23, scope: !2264)
!2268 = !DILocation(line: 769, column: 11, scope: !2264)
!2269 = !DILocation(line: 769, column: 39, scope: !2270)
!2270 = !DILexicalBlockFile(scope: !2265, file: !260, discriminator: 2)
!2271 = !DILocation(line: 769, column: 129, scope: !2270)
!2272 = !DILocation(line: 769, column: 135, scope: !2270)
!2273 = !DILocation(line: 769, column: 138, scope: !2270)
!2274 = !DILocation(line: 769, column: 149, scope: !2270)
!2275 = !DILocation(line: 769, column: 152, scope: !2270)
!2276 = !DILocation(line: 769, column: 161, scope: !2270)
!2277 = !DILocation(line: 769, column: 31, scope: !2270)
!2278 = !DILocation(line: 769, column: 179, scope: !2279)
!2279 = !DILexicalBlockFile(scope: !2266, file: !260, discriminator: 3)
!2280 = !DILocation(line: 773, column: 21, scope: !2211)
!2281 = !DILocation(line: 773, column: 24, scope: !2211)
!2282 = !DILocation(line: 773, column: 33, scope: !2211)
!2283 = !DILocation(line: 773, column: 36, scope: !2211)
!2284 = !DILocation(line: 773, column: 47, scope: !2211)
!2285 = !DILocation(line: 773, column: 50, scope: !2211)
!2286 = !DILocation(line: 773, column: 9, scope: !2211)
!2287 = !DILocation(line: 773, column: 7, scope: !2211)
!2288 = !DILocation(line: 774, column: 7, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2211, file: !260, line: 774, column: 6)
!2290 = !DILocation(line: 774, column: 6, scope: !2211)
!2291 = !DILocation(line: 775, column: 6, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2289, file: !260, line: 774, column: 13)
!2293 = !DILocation(line: 776, column: 3, scope: !2292)
!2294 = !DILocation(line: 779, column: 2, scope: !2211)
!2295 = !DILocation(line: 779, column: 5, scope: !2211)
!2296 = !DILocation(line: 779, column: 17, scope: !2211)
!2297 = !DILocation(line: 780, column: 2, scope: !2211)
!2298 = !DILocation(line: 780, column: 5, scope: !2211)
!2299 = !DILocation(line: 780, column: 7, scope: !2211)
!2300 = !DILocation(line: 780, column: 16, scope: !2211)
!2301 = !DILocation(line: 781, column: 2, scope: !2211)
!2302 = !DILocation(line: 781, column: 5, scope: !2211)
!2303 = !DILocation(line: 781, column: 7, scope: !2211)
!2304 = !DILocation(line: 781, column: 15, scope: !2211)
!2305 = !DILocation(line: 782, column: 16, scope: !2211)
!2306 = !DILocation(line: 782, column: 2, scope: !2211)
!2307 = !DILocation(line: 782, column: 5, scope: !2211)
!2308 = !DILocation(line: 782, column: 7, scope: !2211)
!2309 = !DILocation(line: 782, column: 14, scope: !2211)
!2310 = !DILocation(line: 785, column: 2, scope: !2211)
!2311 = !DILocation(line: 785, column: 5, scope: !2211)
!2312 = !DILocation(line: 785, column: 7, scope: !2211)
!2313 = !DILocation(line: 785, column: 19, scope: !2211)
!2314 = !DILocation(line: 786, column: 2, scope: !2211)
!2315 = !DILocation(line: 786, column: 5, scope: !2211)
!2316 = !DILocation(line: 786, column: 7, scope: !2211)
!2317 = !DILocation(line: 786, column: 19, scope: !2211)
!2318 = !DILocation(line: 787, column: 2, scope: !2211)
!2319 = !DILocation(line: 787, column: 5, scope: !2211)
!2320 = !DILocation(line: 787, column: 7, scope: !2211)
!2321 = !DILocation(line: 787, column: 19, scope: !2211)
!2322 = !DILocation(line: 789, column: 6, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2211, file: !260, line: 789, column: 6)
!2324 = !DILocation(line: 789, column: 25, scope: !2323)
!2325 = !DILocation(line: 789, column: 6, scope: !2211)
!2326 = !DILocation(line: 790, column: 3, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2323, file: !260, line: 789, column: 55)
!2328 = !DILocation(line: 790, column: 6, scope: !2327)
!2329 = !DILocation(line: 790, column: 8, scope: !2327)
!2330 = !DILocation(line: 790, column: 20, scope: !2327)
!2331 = !DILocation(line: 791, column: 7, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2327, file: !260, line: 791, column: 7)
!2333 = !DILocation(line: 791, column: 23, scope: !2332)
!2334 = !DILocation(line: 791, column: 7, scope: !2327)
!2335 = !DILocation(line: 792, column: 4, scope: !2332)
!2336 = !DILocation(line: 792, column: 7, scope: !2332)
!2337 = !DILocation(line: 792, column: 9, scope: !2332)
!2338 = !DILocation(line: 792, column: 21, scope: !2332)
!2339 = !DILocation(line: 795, column: 3, scope: !2327)
!2340 = distinct !{!2340, !2339}
!2341 = !DILocation(line: 795, column: 16, scope: !2342)
!2342 = !DILexicalBlockFile(scope: !2343, file: !260, discriminator: 1)
!2343 = distinct !DILexicalBlock(scope: !2327, file: !260, line: 795, column: 6)
!2344 = !DILocation(line: 795, column: 8, scope: !2342)
!2345 = !DILocation(line: 795, column: 6, scope: !2342)
!2346 = !DILocation(line: 798, column: 3, scope: !2327)
!2347 = !DILocation(line: 798, column: 6, scope: !2327)
!2348 = !DILocation(line: 798, column: 8, scope: !2327)
!2349 = !DILocation(line: 798, column: 20, scope: !2327)
!2350 = !DILocation(line: 799, column: 2, scope: !2327)
!2351 = !DILocation(line: 805, column: 6, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2211, file: !260, line: 805, column: 6)
!2353 = !DILocation(line: 805, column: 6, scope: !2211)
!2354 = !DILocation(line: 806, column: 3, scope: !2352)
!2355 = !DILocation(line: 806, column: 6, scope: !2352)
!2356 = !DILocation(line: 806, column: 8, scope: !2352)
!2357 = !DILocation(line: 806, column: 14, scope: !2352)
!2358 = !DILocation(line: 808, column: 6, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2211, file: !260, line: 808, column: 6)
!2360 = !DILocation(line: 808, column: 19, scope: !2359)
!2361 = !DILocation(line: 808, column: 6, scope: !2211)
!2362 = !DILocation(line: 809, column: 3, scope: !2359)
!2363 = !DILocation(line: 809, column: 6, scope: !2359)
!2364 = !DILocation(line: 809, column: 8, scope: !2359)
!2365 = !DILocation(line: 809, column: 14, scope: !2359)
!2366 = !DILocation(line: 811, column: 6, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2211, file: !260, line: 811, column: 6)
!2368 = !DILocation(line: 811, column: 25, scope: !2367)
!2369 = !DILocation(line: 811, column: 6, scope: !2211)
!2370 = !DILocation(line: 812, column: 3, scope: !2367)
!2371 = !DILocation(line: 812, column: 6, scope: !2367)
!2372 = !DILocation(line: 812, column: 8, scope: !2367)
!2373 = !DILocation(line: 812, column: 14, scope: !2367)
!2374 = !DILocation(line: 815, column: 6, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2211, file: !260, line: 815, column: 6)
!2376 = !DILocation(line: 815, column: 6, scope: !2211)
!2377 = !DILocation(line: 816, column: 35, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2375, file: !260, line: 815, column: 23)
!2379 = !DILocation(line: 816, column: 19, scope: !2378)
!2380 = !DILocation(line: 816, column: 22, scope: !2378)
!2381 = !DILocation(line: 816, column: 33, scope: !2378)
!2382 = !DILocation(line: 816, column: 3, scope: !2378)
!2383 = !DILocation(line: 816, column: 6, scope: !2378)
!2384 = !DILocation(line: 816, column: 17, scope: !2378)
!2385 = !DILocation(line: 818, column: 18, scope: !2378)
!2386 = !DILocation(line: 818, column: 24, scope: !2378)
!2387 = !DILocation(line: 818, column: 27, scope: !2378)
!2388 = !DILocation(line: 819, column: 11, scope: !2378)
!2389 = !DILocation(line: 819, column: 14, scope: !2378)
!2390 = !DILocation(line: 819, column: 16, scope: !2378)
!2391 = !DILocation(line: 818, column: 4, scope: !2378)
!2392 = !DILocation(line: 817, column: 28, scope: !2378)
!2393 = !DILocation(line: 817, column: 31, scope: !2378)
!2394 = !DILocation(line: 817, column: 41, scope: !2378)
!2395 = !DILocation(line: 817, column: 18, scope: !2378)
!2396 = !DILocation(line: 817, column: 21, scope: !2378)
!2397 = !DILocation(line: 817, column: 26, scope: !2378)
!2398 = !DILocation(line: 817, column: 3, scope: !2378)
!2399 = !DILocation(line: 817, column: 6, scope: !2378)
!2400 = !DILocation(line: 817, column: 16, scope: !2378)
!2401 = !DILocation(line: 821, column: 7, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2378, file: !260, line: 821, column: 7)
!2403 = !DILocation(line: 821, column: 10, scope: !2402)
!2404 = !DILocation(line: 821, column: 20, scope: !2402)
!2405 = !DILocation(line: 821, column: 7, scope: !2378)
!2406 = !DILocation(line: 822, column: 7, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2402, file: !260, line: 821, column: 28)
!2408 = !DILocation(line: 823, column: 4, scope: !2407)
!2409 = !DILocation(line: 825, column: 2, scope: !2378)
!2410 = !DILocation(line: 827, column: 26, scope: !2211)
!2411 = !DILocation(line: 827, column: 29, scope: !2211)
!2412 = !DILocation(line: 827, column: 32, scope: !2211)
!2413 = !DILocation(line: 827, column: 7, scope: !2211)
!2414 = !DILocation(line: 827, column: 5, scope: !2211)
!2415 = !DILocation(line: 828, column: 23, scope: !2211)
!2416 = !DILocation(line: 828, column: 30, scope: !2211)
!2417 = !DILocation(line: 828, column: 33, scope: !2211)
!2418 = !DILocation(line: 828, column: 2, scope: !2211)
!2419 = !DILocation(line: 830, column: 6, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2211, file: !260, line: 830, column: 6)
!2421 = !DILocation(line: 830, column: 9, scope: !2420)
!2422 = !DILocation(line: 830, column: 6, scope: !2211)
!2423 = !DILocation(line: 831, column: 10, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2420, file: !260, line: 830, column: 15)
!2425 = !DILocation(line: 831, column: 6, scope: !2424)
!2426 = !DILocation(line: 832, column: 3, scope: !2424)
!2427 = !DILocation(line: 835, column: 24, scope: !2211)
!2428 = !DILocation(line: 835, column: 16, scope: !2211)
!2429 = !DILocation(line: 835, column: 2, scope: !2211)
!2430 = !DILocation(line: 835, column: 8, scope: !2211)
!2431 = !DILocation(line: 835, column: 14, scope: !2211)
!2432 = !DILocation(line: 836, column: 11, scope: !2211)
!2433 = !DILocation(line: 836, column: 2, scope: !2211)
!2434 = !DILocation(line: 839, column: 12, scope: !2211)
!2435 = !DILocation(line: 839, column: 18, scope: !2211)
!2436 = !DILocation(line: 839, column: 21, scope: !2211)
!2437 = !DILocation(line: 839, column: 32, scope: !2211)
!2438 = !DILocation(line: 839, column: 35, scope: !2211)
!2439 = !DILocation(line: 839, column: 47, scope: !2211)
!2440 = !DILocation(line: 839, column: 50, scope: !2211)
!2441 = !DILocation(line: 839, column: 52, scope: !2211)
!2442 = !DILocation(line: 839, column: 2, scope: !2211)
!2443 = !DILocation(line: 841, column: 15, scope: !2211)
!2444 = !DILocation(line: 841, column: 2, scope: !2211)
!2445 = !DILocation(line: 843, column: 9, scope: !2211)
!2446 = !DILocation(line: 843, column: 2, scope: !2211)
!2447 = !DILocation(line: 844, column: 9, scope: !2211)
!2448 = !DILocation(line: 844, column: 2, scope: !2211)
!2449 = !DILocation(line: 845, column: 1, scope: !2211)
!2450 = distinct !DISubprogram(name: "h_inflateReset", scope: !260, file: !260, line: 847, type: !1207, isLocal: false, isDefinition: true, scopeLine: 848, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !530)
!2451 = !DILocalVariable(name: "strm", arg: 1, scope: !2450, file: !260, line: 847, type: !495)
!2452 = !DILocation(line: 847, column: 30, scope: !2450)
!2453 = !DILocalVariable(name: "rc", scope: !2450, file: !260, line: 849, type: !272)
!2454 = !DILocation(line: 849, column: 6, scope: !2450)
!2455 = !DILocalVariable(name: "h", scope: !2450, file: !260, line: 850, type: !1214)
!2456 = !DILocation(line: 850, column: 15, scope: !2450)
!2457 = !DILocalVariable(name: "s", scope: !2450, file: !260, line: 851, type: !268)
!2458 = !DILocation(line: 851, column: 19, scope: !2450)
!2459 = !DILocation(line: 853, column: 2, scope: !2450)
!2460 = distinct !{!2460, !2459}
!2461 = !DILocation(line: 853, column: 12, scope: !2462)
!2462 = !DILexicalBlockFile(scope: !2463, file: !260, discriminator: 1)
!2463 = distinct !DILexicalBlock(scope: !2464, file: !260, line: 853, column: 11)
!2464 = distinct !DILexicalBlock(scope: !2450, file: !260, line: 853, column: 5)
!2465 = !DILocation(line: 853, column: 23, scope: !2462)
!2466 = !DILocation(line: 853, column: 11, scope: !2462)
!2467 = !DILocation(line: 853, column: 39, scope: !2468)
!2468 = !DILexicalBlockFile(scope: !2463, file: !260, discriminator: 2)
!2469 = !DILocation(line: 853, column: 81, scope: !2468)
!2470 = !DILocation(line: 853, column: 31, scope: !2468)
!2471 = !DILocation(line: 853, column: 88, scope: !2472)
!2472 = !DILexicalBlockFile(scope: !2464, file: !260, discriminator: 3)
!2473 = !DILocation(line: 854, column: 6, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2450, file: !260, line: 854, column: 6)
!2475 = !DILocation(line: 854, column: 11, scope: !2474)
!2476 = !DILocation(line: 854, column: 6, scope: !2450)
!2477 = !DILocation(line: 855, column: 3, scope: !2474)
!2478 = !DILocation(line: 857, column: 25, scope: !2450)
!2479 = !DILocation(line: 857, column: 31, scope: !2450)
!2480 = !DILocation(line: 857, column: 6, scope: !2450)
!2481 = !DILocation(line: 857, column: 4, scope: !2450)
!2482 = !DILocation(line: 858, column: 6, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2450, file: !260, line: 858, column: 6)
!2484 = !DILocation(line: 858, column: 8, scope: !2483)
!2485 = !DILocation(line: 858, column: 6, scope: !2450)
!2486 = !DILocation(line: 859, column: 3, scope: !2483)
!2487 = !DILocation(line: 860, column: 7, scope: !2450)
!2488 = !DILocation(line: 860, column: 10, scope: !2450)
!2489 = !DILocation(line: 860, column: 4, scope: !2450)
!2490 = !DILocation(line: 863, column: 2, scope: !2450)
!2491 = !DILocation(line: 863, column: 8, scope: !2450)
!2492 = !DILocation(line: 863, column: 17, scope: !2450)
!2493 = !DILocation(line: 864, column: 2, scope: !2450)
!2494 = !DILocation(line: 864, column: 8, scope: !2450)
!2495 = !DILocation(line: 864, column: 18, scope: !2450)
!2496 = !DILocation(line: 866, column: 2, scope: !2450)
!2497 = !DILocation(line: 866, column: 5, scope: !2450)
!2498 = !DILocation(line: 866, column: 17, scope: !2450)
!2499 = !DILocation(line: 867, column: 18, scope: !2450)
!2500 = !DILocation(line: 867, column: 21, scope: !2450)
!2501 = !DILocation(line: 867, column: 2, scope: !2450)
!2502 = !DILocation(line: 867, column: 5, scope: !2450)
!2503 = !DILocation(line: 867, column: 16, scope: !2450)
!2504 = !DILocation(line: 868, column: 12, scope: !2450)
!2505 = !DILocation(line: 868, column: 15, scope: !2450)
!2506 = !DILocation(line: 868, column: 2, scope: !2450)
!2507 = !DILocation(line: 868, column: 5, scope: !2450)
!2508 = !DILocation(line: 868, column: 10, scope: !2450)
!2509 = !DILocation(line: 869, column: 17, scope: !2450)
!2510 = !DILocation(line: 869, column: 20, scope: !2450)
!2511 = !DILocation(line: 869, column: 2, scope: !2450)
!2512 = !DILocation(line: 869, column: 5, scope: !2450)
!2513 = !DILocation(line: 869, column: 15, scope: !2450)
!2514 = !DILocation(line: 870, column: 2, scope: !2450)
!2515 = !DILocation(line: 870, column: 5, scope: !2450)
!2516 = !DILocation(line: 870, column: 8, scope: !2450)
!2517 = !DILocation(line: 872, column: 6, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2450, file: !260, line: 872, column: 6)
!2519 = !DILocation(line: 872, column: 9, scope: !2518)
!2520 = !DILocation(line: 872, column: 21, scope: !2518)
!2521 = !DILocation(line: 872, column: 24, scope: !2518)
!2522 = !DILocation(line: 872, column: 19, scope: !2518)
!2523 = !DILocation(line: 872, column: 35, scope: !2518)
!2524 = !DILocation(line: 872, column: 38, scope: !2518)
!2525 = !DILocation(line: 872, column: 33, scope: !2518)
!2526 = !DILocation(line: 872, column: 51, scope: !2518)
!2527 = !DILocation(line: 872, column: 54, scope: !2518)
!2528 = !DILocation(line: 872, column: 49, scope: !2518)
!2529 = !DILocation(line: 872, column: 6, scope: !2450)
!2530 = !DILocation(line: 873, column: 3, scope: !2518)
!2531 = distinct !{!2531, !2530}
!2532 = !DILocation(line: 873, column: 13, scope: !2533)
!2533 = !DILexicalBlockFile(scope: !2534, file: !260, discriminator: 1)
!2534 = distinct !DILexicalBlock(scope: !2535, file: !260, line: 873, column: 12)
!2535 = distinct !DILexicalBlock(scope: !2518, file: !260, line: 873, column: 6)
!2536 = !DILocation(line: 873, column: 24, scope: !2533)
!2537 = !DILocation(line: 873, column: 12, scope: !2533)
!2538 = !DILocation(line: 873, column: 40, scope: !2539)
!2539 = !DILexicalBlockFile(scope: !2534, file: !260, discriminator: 2)
!2540 = !DILocation(line: 873, column: 95, scope: !2539)
!2541 = !DILocation(line: 873, column: 115, scope: !2539)
!2542 = !DILocation(line: 873, column: 118, scope: !2539)
!2543 = !DILocation(line: 873, column: 143, scope: !2539)
!2544 = !DILocation(line: 873, column: 146, scope: !2539)
!2545 = !DILocation(line: 873, column: 170, scope: !2539)
!2546 = !DILocation(line: 873, column: 173, scope: !2539)
!2547 = !DILocation(line: 873, column: 156, scope: !2539)
!2548 = !DILocation(line: 873, column: 199, scope: !2539)
!2549 = !DILocation(line: 873, column: 202, scope: !2539)
!2550 = !DILocation(line: 873, column: 32, scope: !2539)
!2551 = !DILocation(line: 873, column: 217, scope: !2552)
!2552 = !DILexicalBlockFile(scope: !2535, file: !260, discriminator: 3)
!2553 = !DILocation(line: 873, column: 217, scope: !2554)
!2554 = !DILexicalBlockFile(scope: !2535, file: !260, discriminator: 4)
!2555 = !DILocation(line: 878, column: 25, scope: !2450)
!2556 = !DILocation(line: 878, column: 7, scope: !2450)
!2557 = !DILocation(line: 878, column: 5, scope: !2450)
!2558 = !DILocation(line: 879, column: 23, scope: !2450)
!2559 = !DILocation(line: 879, column: 29, scope: !2450)
!2560 = !DILocation(line: 879, column: 2, scope: !2450)
!2561 = !DILocation(line: 881, column: 11, scope: !2450)
!2562 = !DILocation(line: 881, column: 2, scope: !2450)
!2563 = !DILocation(line: 882, column: 1, scope: !2450)
!2564 = distinct !DISubprogram(name: "h_inflateReset2", scope: !260, file: !260, line: 884, type: !1446, isLocal: false, isDefinition: true, scopeLine: 885, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !530)
!2565 = !DILocalVariable(name: "strm", arg: 1, scope: !2564, file: !260, line: 884, type: !495)
!2566 = !DILocation(line: 884, column: 31, scope: !2564)
!2567 = !DILocalVariable(name: "windowBits", arg: 2, scope: !2564, file: !260, line: 884, type: !272)
!2568 = !DILocation(line: 884, column: 41, scope: !2564)
!2569 = !DILocalVariable(name: "rc", scope: !2564, file: !260, line: 886, type: !272)
!2570 = !DILocation(line: 886, column: 6, scope: !2564)
!2571 = !DILocalVariable(name: "h", scope: !2564, file: !260, line: 887, type: !1214)
!2572 = !DILocation(line: 887, column: 15, scope: !2564)
!2573 = !DILocalVariable(name: "s", scope: !2564, file: !260, line: 888, type: !268)
!2574 = !DILocation(line: 888, column: 19, scope: !2564)
!2575 = !DILocation(line: 890, column: 2, scope: !2564)
!2576 = distinct !{!2576, !2575}
!2577 = !DILocation(line: 890, column: 12, scope: !2578)
!2578 = !DILexicalBlockFile(scope: !2579, file: !260, discriminator: 1)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !260, line: 890, column: 11)
!2580 = distinct !DILexicalBlock(scope: !2564, file: !260, line: 890, column: 5)
!2581 = !DILocation(line: 890, column: 23, scope: !2578)
!2582 = !DILocation(line: 890, column: 11, scope: !2578)
!2583 = !DILocation(line: 890, column: 39, scope: !2584)
!2584 = !DILexicalBlockFile(scope: !2579, file: !260, discriminator: 2)
!2585 = !DILocation(line: 890, column: 97, scope: !2584)
!2586 = !DILocation(line: 890, column: 103, scope: !2584)
!2587 = !DILocation(line: 890, column: 31, scope: !2584)
!2588 = !DILocation(line: 890, column: 116, scope: !2589)
!2589 = !DILexicalBlockFile(scope: !2580, file: !260, discriminator: 3)
!2590 = !DILocation(line: 891, column: 6, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2564, file: !260, line: 891, column: 6)
!2592 = !DILocation(line: 891, column: 11, scope: !2591)
!2593 = !DILocation(line: 891, column: 6, scope: !2564)
!2594 = !DILocation(line: 892, column: 3, scope: !2591)
!2595 = !DILocation(line: 894, column: 25, scope: !2564)
!2596 = !DILocation(line: 894, column: 31, scope: !2564)
!2597 = !DILocation(line: 894, column: 6, scope: !2564)
!2598 = !DILocation(line: 894, column: 4, scope: !2564)
!2599 = !DILocation(line: 895, column: 6, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2564, file: !260, line: 895, column: 6)
!2601 = !DILocation(line: 895, column: 8, scope: !2600)
!2602 = !DILocation(line: 895, column: 6, scope: !2564)
!2603 = !DILocation(line: 896, column: 3, scope: !2600)
!2604 = !DILocation(line: 897, column: 7, scope: !2564)
!2605 = !DILocation(line: 897, column: 10, scope: !2564)
!2606 = !DILocation(line: 897, column: 4, scope: !2564)
!2607 = !DILocation(line: 900, column: 2, scope: !2564)
!2608 = !DILocation(line: 900, column: 8, scope: !2564)
!2609 = !DILocation(line: 900, column: 17, scope: !2564)
!2610 = !DILocation(line: 901, column: 2, scope: !2564)
!2611 = !DILocation(line: 901, column: 8, scope: !2564)
!2612 = !DILocation(line: 901, column: 18, scope: !2564)
!2613 = !DILocation(line: 903, column: 2, scope: !2564)
!2614 = !DILocation(line: 903, column: 5, scope: !2564)
!2615 = !DILocation(line: 903, column: 17, scope: !2564)
!2616 = !DILocation(line: 904, column: 18, scope: !2564)
!2617 = !DILocation(line: 904, column: 21, scope: !2564)
!2618 = !DILocation(line: 904, column: 2, scope: !2564)
!2619 = !DILocation(line: 904, column: 5, scope: !2564)
!2620 = !DILocation(line: 904, column: 16, scope: !2564)
!2621 = !DILocation(line: 905, column: 12, scope: !2564)
!2622 = !DILocation(line: 905, column: 15, scope: !2564)
!2623 = !DILocation(line: 905, column: 2, scope: !2564)
!2624 = !DILocation(line: 905, column: 5, scope: !2564)
!2625 = !DILocation(line: 905, column: 10, scope: !2564)
!2626 = !DILocation(line: 906, column: 17, scope: !2564)
!2627 = !DILocation(line: 906, column: 20, scope: !2564)
!2628 = !DILocation(line: 906, column: 2, scope: !2564)
!2629 = !DILocation(line: 906, column: 5, scope: !2564)
!2630 = !DILocation(line: 906, column: 15, scope: !2564)
!2631 = !DILocation(line: 907, column: 2, scope: !2564)
!2632 = !DILocation(line: 907, column: 5, scope: !2564)
!2633 = !DILocation(line: 907, column: 8, scope: !2564)
!2634 = !DILocation(line: 909, column: 6, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2564, file: !260, line: 909, column: 6)
!2636 = !DILocation(line: 909, column: 9, scope: !2635)
!2637 = !DILocation(line: 909, column: 21, scope: !2635)
!2638 = !DILocation(line: 909, column: 24, scope: !2635)
!2639 = !DILocation(line: 909, column: 19, scope: !2635)
!2640 = !DILocation(line: 909, column: 35, scope: !2635)
!2641 = !DILocation(line: 909, column: 38, scope: !2635)
!2642 = !DILocation(line: 909, column: 33, scope: !2635)
!2643 = !DILocation(line: 909, column: 51, scope: !2635)
!2644 = !DILocation(line: 909, column: 54, scope: !2635)
!2645 = !DILocation(line: 909, column: 49, scope: !2635)
!2646 = !DILocation(line: 909, column: 6, scope: !2564)
!2647 = !DILocation(line: 910, column: 3, scope: !2635)
!2648 = distinct !{!2648, !2647}
!2649 = !DILocation(line: 910, column: 13, scope: !2650)
!2650 = !DILexicalBlockFile(scope: !2651, file: !260, discriminator: 1)
!2651 = distinct !DILexicalBlock(scope: !2652, file: !260, line: 910, column: 12)
!2652 = distinct !DILexicalBlock(scope: !2635, file: !260, line: 910, column: 6)
!2653 = !DILocation(line: 910, column: 24, scope: !2650)
!2654 = !DILocation(line: 910, column: 12, scope: !2650)
!2655 = !DILocation(line: 910, column: 40, scope: !2656)
!2656 = !DILexicalBlockFile(scope: !2651, file: !260, discriminator: 2)
!2657 = !DILocation(line: 910, column: 95, scope: !2656)
!2658 = !DILocation(line: 910, column: 115, scope: !2656)
!2659 = !DILocation(line: 910, column: 118, scope: !2656)
!2660 = !DILocation(line: 910, column: 143, scope: !2656)
!2661 = !DILocation(line: 910, column: 146, scope: !2656)
!2662 = !DILocation(line: 910, column: 170, scope: !2656)
!2663 = !DILocation(line: 910, column: 173, scope: !2656)
!2664 = !DILocation(line: 910, column: 156, scope: !2656)
!2665 = !DILocation(line: 910, column: 199, scope: !2656)
!2666 = !DILocation(line: 910, column: 202, scope: !2656)
!2667 = !DILocation(line: 910, column: 32, scope: !2656)
!2668 = !DILocation(line: 910, column: 217, scope: !2669)
!2669 = !DILexicalBlockFile(scope: !2652, file: !260, discriminator: 3)
!2670 = !DILocation(line: 910, column: 217, scope: !2671)
!2671 = !DILexicalBlockFile(scope: !2652, file: !260, discriminator: 4)
!2672 = !DILocation(line: 915, column: 26, scope: !2564)
!2673 = !DILocation(line: 915, column: 29, scope: !2564)
!2674 = !DILocation(line: 915, column: 7, scope: !2564)
!2675 = !DILocation(line: 915, column: 5, scope: !2564)
!2676 = !DILocation(line: 916, column: 23, scope: !2564)
!2677 = !DILocation(line: 916, column: 29, scope: !2564)
!2678 = !DILocation(line: 916, column: 2, scope: !2564)
!2679 = !DILocation(line: 918, column: 11, scope: !2564)
!2680 = !DILocation(line: 918, column: 2, scope: !2564)
!2681 = !DILocation(line: 919, column: 1, scope: !2564)
!2682 = distinct !DISubprogram(name: "h_inflateSetDictionary", scope: !260, file: !260, line: 921, type: !1296, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !530)
!2683 = !DILocalVariable(name: "strm", arg: 1, scope: !2682, file: !260, line: 921, type: !495)
!2684 = !DILocation(line: 921, column: 38, scope: !2682)
!2685 = !DILocalVariable(name: "dictionary", arg: 2, scope: !2682, file: !260, line: 921, type: !288)
!2686 = !DILocation(line: 921, column: 59, scope: !2682)
!2687 = !DILocalVariable(name: "dictLength", arg: 3, scope: !2682, file: !260, line: 922, type: !275)
!2688 = !DILocation(line: 922, column: 20, scope: !2682)
!2689 = !DILocalVariable(name: "rc", scope: !2682, file: !260, line: 924, type: !272)
!2690 = !DILocation(line: 924, column: 6, scope: !2682)
!2691 = !DILocalVariable(name: "h", scope: !2682, file: !260, line: 925, type: !1214)
!2692 = !DILocation(line: 925, column: 15, scope: !2682)
!2693 = !DILocalVariable(name: "s", scope: !2682, file: !260, line: 926, type: !268)
!2694 = !DILocation(line: 926, column: 19, scope: !2682)
!2695 = !DILocation(line: 928, column: 2, scope: !2682)
!2696 = distinct !{!2696, !2695}
!2697 = !DILocation(line: 928, column: 12, scope: !2698)
!2698 = !DILexicalBlockFile(scope: !2699, file: !260, discriminator: 1)
!2699 = distinct !DILexicalBlock(scope: !2700, file: !260, line: 928, column: 11)
!2700 = distinct !DILexicalBlock(scope: !2682, file: !260, line: 928, column: 5)
!2701 = !DILocation(line: 928, column: 23, scope: !2698)
!2702 = !DILocation(line: 928, column: 11, scope: !2698)
!2703 = !DILocation(line: 928, column: 39, scope: !2704)
!2704 = !DILexicalBlockFile(scope: !2699, file: !260, discriminator: 2)
!2705 = !DILocation(line: 928, column: 117, scope: !2704)
!2706 = !DILocation(line: 928, column: 123, scope: !2704)
!2707 = !DILocation(line: 928, column: 135, scope: !2704)
!2708 = !DILocation(line: 928, column: 31, scope: !2704)
!2709 = !DILocation(line: 928, column: 148, scope: !2710)
!2710 = !DILexicalBlockFile(scope: !2700, file: !260, discriminator: 3)
!2711 = !DILocation(line: 931, column: 6, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2682, file: !260, line: 931, column: 6)
!2713 = !DILocation(line: 931, column: 11, scope: !2712)
!2714 = !DILocation(line: 931, column: 6, scope: !2682)
!2715 = !DILocation(line: 932, column: 3, scope: !2712)
!2716 = !DILocation(line: 934, column: 25, scope: !2682)
!2717 = !DILocation(line: 934, column: 31, scope: !2682)
!2718 = !DILocation(line: 934, column: 6, scope: !2682)
!2719 = !DILocation(line: 934, column: 4, scope: !2682)
!2720 = !DILocation(line: 935, column: 6, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2682, file: !260, line: 935, column: 6)
!2722 = !DILocation(line: 935, column: 8, scope: !2721)
!2723 = !DILocation(line: 935, column: 6, scope: !2682)
!2724 = !DILocation(line: 936, column: 3, scope: !2721)
!2725 = !DILocation(line: 938, column: 7, scope: !2682)
!2726 = !DILocation(line: 938, column: 10, scope: !2682)
!2727 = !DILocation(line: 938, column: 4, scope: !2682)
!2728 = !DILocation(line: 940, column: 33, scope: !2682)
!2729 = !DILocation(line: 940, column: 36, scope: !2682)
!2730 = !DILocation(line: 940, column: 48, scope: !2682)
!2731 = !DILocation(line: 940, column: 7, scope: !2682)
!2732 = !DILocation(line: 940, column: 5, scope: !2682)
!2733 = !DILocation(line: 942, column: 11, scope: !2682)
!2734 = !DILocation(line: 942, column: 2, scope: !2682)
!2735 = !DILocation(line: 943, column: 1, scope: !2682)
!2736 = distinct !DISubprogram(name: "h_inflateGetDictionary", scope: !260, file: !260, line: 945, type: !2737, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !530)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!272, !495, !297, !2739}
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64, align: 64)
!2740 = !DILocalVariable(name: "strm", arg: 1, scope: !2736, file: !260, line: 945, type: !495)
!2741 = !DILocation(line: 945, column: 38, scope: !2736)
!2742 = !DILocalVariable(name: "dictionary", arg: 2, scope: !2736, file: !260, line: 945, type: !297)
!2743 = !DILocation(line: 945, column: 53, scope: !2736)
!2744 = !DILocalVariable(name: "dictLength", arg: 3, scope: !2736, file: !260, line: 946, type: !2739)
!2745 = !DILocation(line: 946, column: 21, scope: !2736)
!2746 = !DILocalVariable(name: "rc", scope: !2736, file: !260, line: 948, type: !272)
!2747 = !DILocation(line: 948, column: 6, scope: !2736)
!2748 = !DILocalVariable(name: "h", scope: !2736, file: !260, line: 949, type: !1214)
!2749 = !DILocation(line: 949, column: 15, scope: !2736)
!2750 = !DILocalVariable(name: "s", scope: !2736, file: !260, line: 950, type: !268)
!2751 = !DILocation(line: 950, column: 19, scope: !2736)
!2752 = !DILocation(line: 952, column: 2, scope: !2736)
!2753 = distinct !{!2753, !2752}
!2754 = !DILocation(line: 952, column: 12, scope: !2755)
!2755 = !DILexicalBlockFile(scope: !2756, file: !260, discriminator: 1)
!2756 = distinct !DILexicalBlock(scope: !2757, file: !260, line: 952, column: 11)
!2757 = distinct !DILexicalBlock(scope: !2736, file: !260, line: 952, column: 5)
!2758 = !DILocation(line: 952, column: 23, scope: !2755)
!2759 = !DILocation(line: 952, column: 11, scope: !2755)
!2760 = !DILocation(line: 952, column: 39, scope: !2761)
!2761 = !DILexicalBlockFile(scope: !2756, file: !260, discriminator: 2)
!2762 = !DILocation(line: 952, column: 118, scope: !2761)
!2763 = !DILocation(line: 952, column: 124, scope: !2761)
!2764 = !DILocation(line: 952, column: 136, scope: !2761)
!2765 = !DILocation(line: 952, column: 31, scope: !2761)
!2766 = !DILocation(line: 952, column: 149, scope: !2767)
!2767 = !DILexicalBlockFile(scope: !2757, file: !260, discriminator: 3)
!2768 = !DILocation(line: 955, column: 6, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2736, file: !260, line: 955, column: 6)
!2770 = !DILocation(line: 955, column: 11, scope: !2769)
!2771 = !DILocation(line: 955, column: 6, scope: !2736)
!2772 = !DILocation(line: 956, column: 3, scope: !2769)
!2773 = !DILocation(line: 958, column: 25, scope: !2736)
!2774 = !DILocation(line: 958, column: 31, scope: !2736)
!2775 = !DILocation(line: 958, column: 6, scope: !2736)
!2776 = !DILocation(line: 958, column: 4, scope: !2736)
!2777 = !DILocation(line: 959, column: 6, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2736, file: !260, line: 959, column: 6)
!2779 = !DILocation(line: 959, column: 8, scope: !2778)
!2780 = !DILocation(line: 959, column: 6, scope: !2736)
!2781 = !DILocation(line: 960, column: 3, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2778, file: !260, line: 959, column: 16)
!2783 = !DILocation(line: 962, column: 7, scope: !2736)
!2784 = !DILocation(line: 962, column: 10, scope: !2736)
!2785 = !DILocation(line: 962, column: 4, scope: !2736)
!2786 = !DILocation(line: 964, column: 33, scope: !2736)
!2787 = !DILocation(line: 964, column: 36, scope: !2736)
!2788 = !DILocation(line: 964, column: 48, scope: !2736)
!2789 = !DILocation(line: 964, column: 7, scope: !2736)
!2790 = !DILocation(line: 964, column: 5, scope: !2736)
!2791 = !DILocation(line: 966, column: 11, scope: !2736)
!2792 = !DILocation(line: 966, column: 2, scope: !2736)
!2793 = !DILocation(line: 967, column: 1, scope: !2736)
!2794 = distinct !DISubprogram(name: "h_inflateGetHeader", scope: !260, file: !260, line: 969, type: !1375, isLocal: false, isDefinition: true, scopeLine: 970, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !530)
!2795 = !DILocalVariable(name: "strm", arg: 1, scope: !2794, file: !260, line: 969, type: !495)
!2796 = !DILocation(line: 969, column: 34, scope: !2794)
!2797 = !DILocalVariable(name: "head", arg: 2, scope: !2794, file: !260, line: 969, type: !1377)
!2798 = !DILocation(line: 969, column: 51, scope: !2794)
!2799 = !DILocalVariable(name: "rc", scope: !2794, file: !260, line: 971, type: !272)
!2800 = !DILocation(line: 971, column: 6, scope: !2794)
!2801 = !DILocalVariable(name: "h", scope: !2794, file: !260, line: 972, type: !1214)
!2802 = !DILocation(line: 972, column: 15, scope: !2794)
!2803 = !DILocalVariable(name: "s", scope: !2794, file: !260, line: 973, type: !268)
!2804 = !DILocation(line: 973, column: 19, scope: !2794)
!2805 = !DILocation(line: 975, column: 2, scope: !2794)
!2806 = distinct !{!2806, !2805}
!2807 = !DILocation(line: 975, column: 12, scope: !2808)
!2808 = !DILexicalBlockFile(scope: !2809, file: !260, discriminator: 1)
!2809 = distinct !DILexicalBlock(scope: !2810, file: !260, line: 975, column: 11)
!2810 = distinct !DILexicalBlock(scope: !2794, file: !260, line: 975, column: 5)
!2811 = !DILocation(line: 975, column: 23, scope: !2808)
!2812 = !DILocation(line: 975, column: 11, scope: !2808)
!2813 = !DILocation(line: 975, column: 39, scope: !2814)
!2814 = !DILexicalBlockFile(scope: !2809, file: !260, discriminator: 2)
!2815 = !DILocation(line: 975, column: 96, scope: !2814)
!2816 = !DILocation(line: 975, column: 102, scope: !2814)
!2817 = !DILocation(line: 975, column: 31, scope: !2814)
!2818 = !DILocation(line: 975, column: 109, scope: !2819)
!2819 = !DILexicalBlockFile(scope: !2810, file: !260, discriminator: 3)
!2820 = !DILocation(line: 977, column: 6, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2794, file: !260, line: 977, column: 6)
!2822 = !DILocation(line: 977, column: 11, scope: !2821)
!2823 = !DILocation(line: 977, column: 6, scope: !2794)
!2824 = !DILocation(line: 978, column: 3, scope: !2821)
!2825 = !DILocation(line: 983, column: 25, scope: !2794)
!2826 = !DILocation(line: 983, column: 31, scope: !2794)
!2827 = !DILocation(line: 983, column: 6, scope: !2794)
!2828 = !DILocation(line: 983, column: 4, scope: !2794)
!2829 = !DILocation(line: 984, column: 6, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2794, file: !260, line: 984, column: 6)
!2831 = !DILocation(line: 984, column: 8, scope: !2830)
!2832 = !DILocation(line: 984, column: 6, scope: !2794)
!2833 = !DILocation(line: 985, column: 3, scope: !2830)
!2834 = !DILocation(line: 986, column: 7, scope: !2794)
!2835 = !DILocation(line: 986, column: 10, scope: !2794)
!2836 = !DILocation(line: 986, column: 4, scope: !2794)
!2837 = !DILocation(line: 988, column: 29, scope: !2794)
!2838 = !DILocation(line: 988, column: 48, scope: !2794)
!2839 = !DILocation(line: 988, column: 32, scope: !2794)
!2840 = !DILocation(line: 988, column: 7, scope: !2794)
!2841 = !DILocation(line: 988, column: 5, scope: !2794)
!2842 = !DILocation(line: 989, column: 11, scope: !2794)
!2843 = !DILocation(line: 989, column: 2, scope: !2794)
!2844 = !DILocation(line: 990, column: 1, scope: !2794)
!2845 = distinct !DISubprogram(name: "h_inflate", scope: !260, file: !260, line: 1390, type: !1446, isLocal: false, isDefinition: true, scopeLine: 1391, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !530)
!2846 = !DILocalVariable(name: "strm", arg: 1, scope: !2845, file: !260, line: 1390, type: !495)
!2847 = !DILocation(line: 1390, column: 25, scope: !2845)
!2848 = !DILocalVariable(name: "flush", arg: 2, scope: !2845, file: !260, line: 1390, type: !272)
!2849 = !DILocation(line: 1390, column: 35, scope: !2845)
!2850 = !DILocalVariable(name: "rc", scope: !2845, file: !260, line: 1392, type: !272)
!2851 = !DILocation(line: 1392, column: 6, scope: !2845)
!2852 = !DILocalVariable(name: "use_internal_buffer", scope: !2845, file: !260, line: 1392, type: !272)
!2853 = !DILocation(line: 1392, column: 16, scope: !2845)
!2854 = !DILocalVariable(name: "h", scope: !2845, file: !260, line: 1393, type: !1214)
!2855 = !DILocation(line: 1393, column: 15, scope: !2845)
!2856 = !DILocalVariable(name: "s", scope: !2845, file: !260, line: 1394, type: !268)
!2857 = !DILocation(line: 1394, column: 19, scope: !2845)
!2858 = !DILocalVariable(name: "loops", scope: !2845, file: !260, line: 1395, type: !275)
!2859 = !DILocation(line: 1395, column: 15, scope: !2845)
!2860 = !DILocalVariable(name: "obuf_bytes", scope: !2845, file: !260, line: 1396, type: !275)
!2861 = !DILocation(line: 1396, column: 15, scope: !2845)
!2862 = !DILocation(line: 1398, column: 6, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2845, file: !260, line: 1398, column: 6)
!2864 = !DILocation(line: 1398, column: 11, scope: !2863)
!2865 = !DILocation(line: 1398, column: 6, scope: !2845)
!2866 = !DILocation(line: 1399, column: 3, scope: !2863)
!2867 = !DILocation(line: 1401, column: 25, scope: !2845)
!2868 = !DILocation(line: 1401, column: 31, scope: !2845)
!2869 = !DILocation(line: 1401, column: 6, scope: !2845)
!2870 = !DILocation(line: 1401, column: 4, scope: !2845)
!2871 = !DILocation(line: 1402, column: 6, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2845, file: !260, line: 1402, column: 6)
!2873 = !DILocation(line: 1402, column: 8, scope: !2872)
!2874 = !DILocation(line: 1402, column: 6, scope: !2845)
!2875 = !DILocation(line: 1403, column: 3, scope: !2872)
!2876 = !DILocation(line: 1404, column: 7, scope: !2845)
!2877 = !DILocation(line: 1404, column: 10, scope: !2845)
!2878 = !DILocation(line: 1404, column: 4, scope: !2845)
!2879 = !DILocation(line: 1406, column: 6, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2845, file: !260, line: 1406, column: 6)
!2881 = !DILocation(line: 1406, column: 9, scope: !2880)
!2882 = !DILocation(line: 1406, column: 20, scope: !2880)
!2883 = !DILocation(line: 1406, column: 6, scope: !2845)
!2884 = !DILocation(line: 1407, column: 23, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2880, file: !260, line: 1406, column: 26)
!2886 = !DILocation(line: 1407, column: 26, scope: !2885)
!2887 = !DILocation(line: 1407, column: 3, scope: !2885)
!2888 = !DILocation(line: 1408, column: 23, scope: !2885)
!2889 = !DILocation(line: 1408, column: 29, scope: !2885)
!2890 = !DILocation(line: 1408, column: 32, scope: !2885)
!2891 = !DILocation(line: 1408, column: 13, scope: !2885)
!2892 = !DILocation(line: 1408, column: 3, scope: !2885)
!2893 = !DILocation(line: 1408, column: 6, scope: !2885)
!2894 = !DILocation(line: 1408, column: 9, scope: !2885)
!2895 = !DILocation(line: 1409, column: 23, scope: !2885)
!2896 = !DILocation(line: 1409, column: 29, scope: !2885)
!2897 = !DILocation(line: 1409, column: 3, scope: !2885)
!2898 = !DILocation(line: 1410, column: 10, scope: !2885)
!2899 = !DILocation(line: 1410, column: 13, scope: !2885)
!2900 = !DILocation(line: 1410, column: 3, scope: !2885)
!2901 = !DILocation(line: 1414, column: 7, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2845, file: !260, line: 1414, column: 6)
!2903 = !DILocation(line: 1414, column: 10, scope: !2902)
!2904 = !DILocation(line: 1414, column: 12, scope: !2902)
!2905 = !DILocation(line: 1414, column: 24, scope: !2902)
!2906 = !DILocation(line: 1414, column: 46, scope: !2902)
!2907 = !DILocation(line: 1414, column: 6, scope: !2845)
!2908 = !DILocation(line: 1416, column: 26, scope: !2902)
!2909 = !DILocation(line: 1416, column: 29, scope: !2902)
!2910 = !DILocation(line: 1416, column: 42, scope: !2902)
!2911 = !DILocation(line: 1416, column: 48, scope: !2902)
!2912 = !DILocation(line: 1416, column: 40, scope: !2902)
!2913 = !DILocation(line: 1416, column: 23, scope: !2902)
!2914 = !DILocation(line: 1416, column: 3, scope: !2902)
!2915 = !DILocation(line: 1418, column: 2, scope: !2845)
!2916 = distinct !{!2916, !2915}
!2917 = !DILocation(line: 1418, column: 12, scope: !2918)
!2918 = !DILexicalBlockFile(scope: !2919, file: !260, discriminator: 1)
!2919 = distinct !DILexicalBlock(scope: !2920, file: !260, line: 1418, column: 11)
!2920 = distinct !DILexicalBlock(scope: !2845, file: !260, line: 1418, column: 5)
!2921 = !DILocation(line: 1418, column: 23, scope: !2918)
!2922 = !DILocation(line: 1418, column: 11, scope: !2918)
!2923 = !DILocation(line: 1418, column: 39, scope: !2924)
!2924 = !DILexicalBlockFile(scope: !2919, file: !260, discriminator: 2)
!2925 = !DILocation(line: 1418, column: 157, scope: !2924)
!2926 = !DILocation(line: 1418, column: 176, scope: !2924)
!2927 = !DILocation(line: 1418, column: 163, scope: !2924)
!2928 = !DILocation(line: 1418, column: 184, scope: !2924)
!2929 = !DILocation(line: 1418, column: 190, scope: !2924)
!2930 = !DILocation(line: 1418, column: 200, scope: !2924)
!2931 = !DILocation(line: 1418, column: 206, scope: !2924)
!2932 = !DILocation(line: 1418, column: 222, scope: !2924)
!2933 = !DILocation(line: 1418, column: 225, scope: !2924)
!2934 = !DILocation(line: 1418, column: 217, scope: !2924)
!2935 = !DILocation(line: 1418, column: 242, scope: !2924)
!2936 = !DILocation(line: 1418, column: 245, scope: !2924)
!2937 = !DILocation(line: 1418, column: 237, scope: !2924)
!2938 = !DILocation(line: 1418, column: 257, scope: !2924)
!2939 = !DILocation(line: 1418, column: 31, scope: !2940)
!2940 = !DILexicalBlockFile(scope: !2924, file: !260, discriminator: 4)
!2941 = !DILocation(line: 1418, column: 31, scope: !2924)
!2942 = !DILocation(line: 1418, column: 279, scope: !2943)
!2943 = !DILexicalBlockFile(scope: !2920, file: !260, discriminator: 3)
!2944 = !DILocation(line: 1426, column: 15, scope: !2845)
!2945 = !DILocation(line: 1426, column: 18, scope: !2845)
!2946 = !DILocation(line: 1426, column: 25, scope: !2845)
!2947 = !DILocation(line: 1426, column: 28, scope: !2845)
!2948 = !DILocation(line: 1426, column: 23, scope: !2845)
!2949 = !DILocation(line: 1426, column: 13, scope: !2845)
!2950 = !DILocation(line: 1427, column: 7, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2845, file: !260, line: 1427, column: 6)
!2952 = !DILocation(line: 1427, column: 18, scope: !2951)
!2953 = !DILocation(line: 1427, column: 24, scope: !2951)
!2954 = !DILocation(line: 1427, column: 56, scope: !2955)
!2955 = !DILexicalBlockFile(scope: !2951, file: !260, discriminator: 1)
!2956 = !DILocation(line: 1427, column: 28, scope: !2955)
!2957 = !DILocation(line: 1427, column: 59, scope: !2955)
!2958 = !DILocation(line: 1427, column: 6, scope: !2955)
!2959 = !DILocation(line: 1428, column: 3, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2951, file: !260, line: 1427, column: 66)
!2961 = distinct !{!2961, !2959}
!2962 = !DILocation(line: 1428, column: 13, scope: !2963)
!2963 = !DILexicalBlockFile(scope: !2964, file: !260, discriminator: 1)
!2964 = distinct !DILexicalBlock(scope: !2965, file: !260, line: 1428, column: 12)
!2965 = distinct !DILexicalBlock(scope: !2960, file: !260, line: 1428, column: 6)
!2966 = !DILocation(line: 1428, column: 24, scope: !2963)
!2967 = !DILocation(line: 1428, column: 12, scope: !2963)
!2968 = !DILocation(line: 1428, column: 40, scope: !2969)
!2969 = !DILexicalBlockFile(scope: !2964, file: !260, discriminator: 2)
!2970 = !DILocation(line: 1428, column: 111, scope: !2969)
!2971 = !DILocation(line: 1428, column: 117, scope: !2969)
!2972 = !DILocation(line: 1428, column: 120, scope: !2969)
!2973 = !DILocation(line: 1428, column: 32, scope: !2969)
!2974 = !DILocation(line: 1428, column: 137, scope: !2975)
!2975 = !DILexicalBlockFile(scope: !2965, file: !260, discriminator: 3)
!2976 = !DILocation(line: 1431, column: 7, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2960, file: !260, line: 1431, column: 7)
!2978 = !DILocation(line: 1431, column: 10, scope: !2977)
!2979 = !DILocation(line: 1431, column: 13, scope: !2977)
!2980 = !DILocation(line: 1431, column: 7, scope: !2960)
!2981 = !DILocation(line: 1432, column: 4, scope: !2977)
!2982 = !DILocation(line: 1447, column: 2, scope: !2960)
!2983 = !DILocation(line: 1449, column: 2, scope: !2845)
!2984 = distinct !{!2984, !2983}
!2985 = !DILocation(line: 1450, column: 3, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2845, file: !260, line: 1449, column: 5)
!2987 = distinct !{!2987, !2985}
!2988 = !DILocation(line: 1450, column: 13, scope: !2989)
!2989 = !DILexicalBlockFile(scope: !2990, file: !260, discriminator: 1)
!2990 = distinct !DILexicalBlock(scope: !2991, file: !260, line: 1450, column: 12)
!2991 = distinct !DILexicalBlock(scope: !2986, file: !260, line: 1450, column: 6)
!2992 = !DILocation(line: 1450, column: 24, scope: !2989)
!2993 = !DILocation(line: 1450, column: 12, scope: !2989)
!2994 = !DILocation(line: 1450, column: 40, scope: !2995)
!2995 = !DILexicalBlockFile(scope: !2990, file: !260, discriminator: 2)
!2996 = !DILocation(line: 1450, column: 85, scope: !2995)
!2997 = !DILocation(line: 1450, column: 91, scope: !2995)
!2998 = !DILocation(line: 1450, column: 111, scope: !2995)
!2999 = !DILocation(line: 1450, column: 98, scope: !2995)
!3000 = !DILocation(line: 1450, column: 32, scope: !3001)
!3001 = !DILexicalBlockFile(scope: !2995, file: !260, discriminator: 4)
!3002 = !DILocation(line: 1450, column: 32, scope: !2995)
!3003 = !DILocation(line: 1450, column: 120, scope: !3004)
!3004 = !DILexicalBlockFile(scope: !2991, file: !260, discriminator: 3)
!3005 = !DILocation(line: 1454, column: 29, scope: !2986)
!3006 = !DILocation(line: 1454, column: 16, scope: !2986)
!3007 = !DILocation(line: 1454, column: 14, scope: !2986)
!3008 = !DILocation(line: 1456, column: 8, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !2986, file: !260, line: 1456, column: 7)
!3010 = !DILocation(line: 1456, column: 11, scope: !3009)
!3011 = !DILocation(line: 1456, column: 14, scope: !3009)
!3012 = !DILocation(line: 1456, column: 30, scope: !3009)
!3013 = !DILocation(line: 1457, column: 8, scope: !3009)
!3014 = !DILocation(line: 1457, column: 19, scope: !3009)
!3015 = !DILocation(line: 1456, column: 7, scope: !3016)
!3016 = !DILexicalBlockFile(scope: !2986, file: !260, discriminator: 1)
!3017 = !DILocalVariable(name: "rem_bytes", scope: !3018, file: !260, line: 1458, type: !275)
!3018 = distinct !DILexicalBlock(scope: !3009, file: !260, line: 1457, column: 26)
!3019 = !DILocation(line: 1458, column: 17, scope: !3018)
!3020 = !DILocation(line: 1461, column: 34, scope: !3018)
!3021 = !DILocation(line: 1461, column: 37, scope: !3018)
!3022 = !DILocation(line: 1461, column: 43, scope: !3018)
!3023 = !DILocation(line: 1462, column: 7, scope: !3018)
!3024 = !DILocation(line: 1462, column: 13, scope: !3018)
!3025 = !DILocation(line: 1461, column: 9, scope: !3018)
!3026 = !DILocation(line: 1461, column: 7, scope: !3018)
!3027 = !DILocation(line: 1463, column: 8, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !3018, file: !260, line: 1463, column: 8)
!3029 = !DILocation(line: 1463, column: 11, scope: !3028)
!3030 = !DILocation(line: 1463, column: 8, scope: !3018)
!3031 = !DILocation(line: 1464, column: 5, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3028, file: !260, line: 1463, column: 16)
!3033 = distinct !{!3033, !3031}
!3034 = !DILocation(line: 1464, column: 15, scope: !3035)
!3035 = !DILexicalBlockFile(scope: !3036, file: !260, discriminator: 1)
!3036 = distinct !DILexicalBlock(scope: !3037, file: !260, line: 1464, column: 14)
!3037 = distinct !DILexicalBlock(scope: !3032, file: !260, line: 1464, column: 8)
!3038 = !DILocation(line: 1464, column: 26, scope: !3035)
!3039 = !DILocation(line: 1464, column: 14, scope: !3035)
!3040 = !DILocation(line: 1464, column: 42, scope: !3041)
!3041 = !DILexicalBlockFile(scope: !3036, file: !260, discriminator: 2)
!3042 = !DILocation(line: 1464, column: 108, scope: !3041)
!3043 = !DILocation(line: 1464, column: 34, scope: !3041)
!3044 = !DILocation(line: 1464, column: 113, scope: !3045)
!3045 = !DILexicalBlockFile(scope: !3037, file: !260, discriminator: 3)
!3046 = !DILocation(line: 1466, column: 12, scope: !3032)
!3047 = !DILocation(line: 1466, column: 5, scope: !3032)
!3048 = !DILocation(line: 1469, column: 4, scope: !3018)
!3049 = distinct !{!3049, !3048}
!3050 = !DILocation(line: 1469, column: 14, scope: !3051)
!3051 = !DILexicalBlockFile(scope: !3052, file: !260, discriminator: 1)
!3052 = distinct !DILexicalBlock(scope: !3053, file: !260, line: 1469, column: 13)
!3053 = distinct !DILexicalBlock(scope: !3018, file: !260, line: 1469, column: 7)
!3054 = !DILocation(line: 1469, column: 25, scope: !3051)
!3055 = !DILocation(line: 1469, column: 13, scope: !3051)
!3056 = !DILocation(line: 1469, column: 41, scope: !3057)
!3057 = !DILexicalBlockFile(scope: !3052, file: !260, discriminator: 2)
!3058 = !DILocation(line: 1469, column: 114, scope: !3057)
!3059 = !DILocation(line: 1469, column: 33, scope: !3057)
!3060 = !DILocation(line: 1469, column: 119, scope: !3061)
!3061 = !DILexicalBlockFile(scope: !3053, file: !260, discriminator: 3)
!3062 = !DILocation(line: 1471, column: 23, scope: !3018)
!3063 = !DILocation(line: 1471, column: 4, scope: !3018)
!3064 = !DILocation(line: 1471, column: 10, scope: !3018)
!3065 = !DILocation(line: 1471, column: 20, scope: !3018)
!3066 = !DILocation(line: 1472, column: 23, scope: !3018)
!3067 = !DILocation(line: 1472, column: 4, scope: !3018)
!3068 = !DILocation(line: 1472, column: 10, scope: !3018)
!3069 = !DILocation(line: 1472, column: 20, scope: !3018)
!3070 = !DILocation(line: 1474, column: 44, scope: !3018)
!3071 = !DILocation(line: 1474, column: 16, scope: !3018)
!3072 = !DILocation(line: 1474, column: 14, scope: !3018)
!3073 = !DILocation(line: 1475, column: 8, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3018, file: !260, line: 1475, column: 8)
!3075 = !DILocation(line: 1475, column: 18, scope: !3074)
!3076 = !DILocation(line: 1475, column: 8, scope: !3018)
!3077 = !DILocation(line: 1476, column: 5, scope: !3074)
!3078 = !DILocation(line: 1478, column: 4, scope: !3018)
!3079 = !DILocation(line: 1480, column: 9, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !2986, file: !260, line: 1480, column: 7)
!3081 = !DILocation(line: 1480, column: 20, scope: !3080)
!3082 = !DILocation(line: 1480, column: 26, scope: !3080)
!3083 = !DILocation(line: 1480, column: 57, scope: !3084)
!3084 = !DILexicalBlockFile(scope: !3080, file: !260, discriminator: 1)
!3085 = !DILocation(line: 1480, column: 29, scope: !3084)
!3086 = !DILocation(line: 1480, column: 61, scope: !3084)
!3087 = !DILocation(line: 1481, column: 8, scope: !3080)
!3088 = !DILocation(line: 1481, column: 14, scope: !3080)
!3089 = !DILocation(line: 1481, column: 24, scope: !3080)
!3090 = !DILocation(line: 1480, column: 7, scope: !3091)
!3091 = !DILexicalBlockFile(scope: !2986, file: !260, discriminator: 2)
!3092 = !DILocation(line: 1482, column: 4, scope: !3080)
!3093 = !DILocation(line: 1493, column: 13, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !2986, file: !260, line: 1493, column: 7)
!3095 = !DILocation(line: 1493, column: 19, scope: !3094)
!3096 = !DILocation(line: 1493, column: 10, scope: !3094)
!3097 = !DILocation(line: 1493, column: 29, scope: !3094)
!3098 = !DILocation(line: 1494, column: 27, scope: !3094)
!3099 = !DILocation(line: 1494, column: 24, scope: !3094)
!3100 = !DILocation(line: 1494, column: 34, scope: !3094)
!3101 = !DILocation(line: 1495, column: 27, scope: !3094)
!3102 = !DILocation(line: 1495, column: 24, scope: !3094)
!3103 = !DILocation(line: 1495, column: 34, scope: !3094)
!3104 = !DILocation(line: 1496, column: 27, scope: !3094)
!3105 = !DILocation(line: 1496, column: 24, scope: !3094)
!3106 = !DILocation(line: 1493, column: 7, scope: !3016)
!3107 = !DILocation(line: 1497, column: 4, scope: !3094)
!3108 = !DILocation(line: 1499, column: 28, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !2986, file: !260, line: 1499, column: 7)
!3110 = !DILocation(line: 1499, column: 8, scope: !3109)
!3111 = !DILocation(line: 1499, column: 7, scope: !2986)
!3112 = !DILocation(line: 1500, column: 4, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3109, file: !260, line: 1499, column: 32)
!3114 = distinct !{!3114, !3112}
!3115 = !DILocation(line: 1500, column: 17, scope: !3116)
!3116 = !DILexicalBlockFile(scope: !3117, file: !260, discriminator: 1)
!3117 = distinct !DILexicalBlock(scope: !3113, file: !260, line: 1500, column: 7)
!3118 = !DILocation(line: 1500, column: 101, scope: !3116)
!3119 = !DILocation(line: 1500, column: 9, scope: !3116)
!3120 = !DILocation(line: 1500, column: 108, scope: !3116)
!3121 = !DILocation(line: 1501, column: 4, scope: !3113)
!3122 = !DILocation(line: 1510, column: 3, scope: !2986)
!3123 = distinct !{!3123, !3122}
!3124 = !DILocation(line: 1510, column: 13, scope: !3125)
!3125 = !DILexicalBlockFile(scope: !3126, file: !260, discriminator: 1)
!3126 = distinct !DILexicalBlock(scope: !3127, file: !260, line: 1510, column: 12)
!3127 = distinct !DILexicalBlock(scope: !2986, file: !260, line: 1510, column: 6)
!3128 = !DILocation(line: 1510, column: 24, scope: !3125)
!3129 = !DILocation(line: 1510, column: 12, scope: !3125)
!3130 = !DILocation(line: 1510, column: 40, scope: !3131)
!3131 = !DILexicalBlockFile(scope: !3126, file: !260, discriminator: 2)
!3132 = !DILocation(line: 1510, column: 124, scope: !3131)
!3133 = !DILocation(line: 1510, column: 130, scope: !3131)
!3134 = !DILocation(line: 1510, column: 136, scope: !3131)
!3135 = !DILocation(line: 1510, column: 151, scope: !3131)
!3136 = !DILocation(line: 1510, column: 154, scope: !3131)
!3137 = !DILocation(line: 1510, column: 146, scope: !3131)
!3138 = !DILocation(line: 1510, column: 32, scope: !3131)
!3139 = !DILocation(line: 1510, column: 167, scope: !3140)
!3140 = !DILexicalBlockFile(scope: !3127, file: !260, discriminator: 3)
!3141 = !DILocation(line: 1514, column: 16, scope: !2986)
!3142 = !DILocation(line: 1514, column: 22, scope: !2986)
!3143 = !DILocation(line: 1514, column: 3, scope: !2986)
!3144 = !DILocation(line: 1514, column: 6, scope: !2986)
!3145 = !DILocation(line: 1514, column: 14, scope: !2986)
!3146 = !DILocation(line: 1515, column: 17, scope: !2986)
!3147 = !DILocation(line: 1515, column: 23, scope: !2986)
!3148 = !DILocation(line: 1515, column: 3, scope: !2986)
!3149 = !DILocation(line: 1515, column: 6, scope: !2986)
!3150 = !DILocation(line: 1515, column: 15, scope: !2986)
!3151 = !DILocation(line: 1516, column: 17, scope: !2986)
!3152 = !DILocation(line: 1516, column: 23, scope: !2986)
!3153 = !DILocation(line: 1516, column: 3, scope: !2986)
!3154 = !DILocation(line: 1516, column: 6, scope: !2986)
!3155 = !DILocation(line: 1516, column: 15, scope: !2986)
!3156 = !DILocation(line: 1518, column: 7, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !2986, file: !260, line: 1518, column: 7)
!3158 = !DILocation(line: 1518, column: 7, scope: !2986)
!3159 = !DILocation(line: 1519, column: 33, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3157, file: !260, line: 1518, column: 28)
!3161 = !DILocation(line: 1519, column: 36, scope: !3160)
!3162 = !DILocation(line: 1519, column: 18, scope: !3160)
!3163 = !DILocation(line: 1519, column: 21, scope: !3160)
!3164 = !DILocation(line: 1519, column: 31, scope: !3160)
!3165 = !DILocation(line: 1519, column: 4, scope: !3160)
!3166 = !DILocation(line: 1519, column: 7, scope: !3160)
!3167 = !DILocation(line: 1519, column: 16, scope: !3160)
!3168 = !DILocation(line: 1520, column: 19, scope: !3160)
!3169 = !DILocation(line: 1520, column: 22, scope: !3160)
!3170 = !DILocation(line: 1520, column: 4, scope: !3160)
!3171 = !DILocation(line: 1520, column: 7, scope: !3160)
!3172 = !DILocation(line: 1520, column: 17, scope: !3160)
!3173 = !DILocation(line: 1521, column: 3, scope: !3160)
!3174 = !DILocation(line: 1522, column: 18, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3157, file: !260, line: 1521, column: 10)
!3176 = !DILocation(line: 1522, column: 24, scope: !3175)
!3177 = !DILocation(line: 1522, column: 4, scope: !3175)
!3178 = !DILocation(line: 1522, column: 7, scope: !3175)
!3179 = !DILocation(line: 1522, column: 16, scope: !3175)
!3180 = !DILocation(line: 1523, column: 19, scope: !3175)
!3181 = !DILocation(line: 1523, column: 25, scope: !3175)
!3182 = !DILocation(line: 1523, column: 4, scope: !3175)
!3183 = !DILocation(line: 1523, column: 7, scope: !3175)
!3184 = !DILocation(line: 1523, column: 17, scope: !3175)
!3185 = !DILocation(line: 1525, column: 18, scope: !2986)
!3186 = !DILocation(line: 1525, column: 24, scope: !2986)
!3187 = !DILocation(line: 1525, column: 3, scope: !2986)
!3188 = !DILocation(line: 1525, column: 6, scope: !2986)
!3189 = !DILocation(line: 1525, column: 16, scope: !2986)
!3190 = !DILocation(line: 1528, column: 23, scope: !2986)
!3191 = !DILocation(line: 1528, column: 29, scope: !2986)
!3192 = !DILocation(line: 1528, column: 32, scope: !2986)
!3193 = !DILocation(line: 1528, column: 13, scope: !2986)
!3194 = !DILocation(line: 1528, column: 3, scope: !2986)
!3195 = !DILocation(line: 1528, column: 6, scope: !2986)
!3196 = !DILocation(line: 1528, column: 9, scope: !2986)
!3197 = !DILocation(line: 1530, column: 30, scope: !2986)
!3198 = !DILocation(line: 1530, column: 33, scope: !2986)
!3199 = !DILocation(line: 1530, column: 3, scope: !2986)
!3200 = !DILocation(line: 1530, column: 9, scope: !2986)
!3201 = !DILocation(line: 1530, column: 17, scope: !2986)
!3202 = !DILocation(line: 1531, column: 20, scope: !2986)
!3203 = !DILocation(line: 1531, column: 23, scope: !2986)
!3204 = !DILocation(line: 1531, column: 3, scope: !2986)
!3205 = !DILocation(line: 1531, column: 9, scope: !2986)
!3206 = !DILocation(line: 1531, column: 18, scope: !2986)
!3207 = !DILocation(line: 1532, column: 20, scope: !2986)
!3208 = !DILocation(line: 1532, column: 23, scope: !2986)
!3209 = !DILocation(line: 1532, column: 3, scope: !2986)
!3210 = !DILocation(line: 1532, column: 9, scope: !2986)
!3211 = !DILocation(line: 1532, column: 18, scope: !2986)
!3212 = !DILocation(line: 1533, column: 21, scope: !2986)
!3213 = !DILocation(line: 1533, column: 24, scope: !2986)
!3214 = !DILocation(line: 1533, column: 3, scope: !2986)
!3215 = !DILocation(line: 1533, column: 9, scope: !2986)
!3216 = !DILocation(line: 1533, column: 19, scope: !2986)
!3217 = !DILocation(line: 1535, column: 7, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !2986, file: !260, line: 1535, column: 7)
!3219 = !DILocation(line: 1535, column: 7, scope: !2986)
!3220 = !DILocation(line: 1536, column: 14, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3218, file: !260, line: 1535, column: 28)
!3222 = !DILocation(line: 1536, column: 17, scope: !3221)
!3223 = !DILocation(line: 1536, column: 4, scope: !3221)
!3224 = !DILocation(line: 1536, column: 7, scope: !3221)
!3225 = !DILocation(line: 1536, column: 12, scope: !3221)
!3226 = !DILocation(line: 1537, column: 20, scope: !3221)
!3227 = !DILocation(line: 1537, column: 23, scope: !3221)
!3228 = !DILocation(line: 1537, column: 4, scope: !3221)
!3229 = !DILocation(line: 1537, column: 7, scope: !3221)
!3230 = !DILocation(line: 1537, column: 18, scope: !3221)
!3231 = !DILocation(line: 1538, column: 3, scope: !3221)
!3232 = !DILocation(line: 1539, column: 21, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3218, file: !260, line: 1538, column: 10)
!3234 = !DILocation(line: 1539, column: 24, scope: !3233)
!3235 = !DILocation(line: 1539, column: 4, scope: !3233)
!3236 = !DILocation(line: 1539, column: 10, scope: !3233)
!3237 = !DILocation(line: 1539, column: 19, scope: !3233)
!3238 = !DILocation(line: 1540, column: 22, scope: !3233)
!3239 = !DILocation(line: 1540, column: 25, scope: !3233)
!3240 = !DILocation(line: 1540, column: 4, scope: !3233)
!3241 = !DILocation(line: 1540, column: 10, scope: !3233)
!3242 = !DILocation(line: 1540, column: 20, scope: !3233)
!3243 = !DILocation(line: 1541, column: 22, scope: !3233)
!3244 = !DILocation(line: 1541, column: 25, scope: !3233)
!3245 = !DILocation(line: 1541, column: 4, scope: !3233)
!3246 = !DILocation(line: 1541, column: 10, scope: !3233)
!3247 = !DILocation(line: 1541, column: 20, scope: !3233)
!3248 = !DILocation(line: 1545, column: 16, scope: !2986)
!3249 = !DILocation(line: 1545, column: 3, scope: !2986)
!3250 = !DILocation(line: 1547, column: 7, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !2986, file: !260, line: 1547, column: 7)
!3252 = !DILocation(line: 1547, column: 10, scope: !3251)
!3253 = !DILocation(line: 1547, column: 13, scope: !3251)
!3254 = !DILocation(line: 1547, column: 7, scope: !2986)
!3255 = !DILocation(line: 1548, column: 11, scope: !3251)
!3256 = !DILocation(line: 1548, column: 14, scope: !3251)
!3257 = !DILocation(line: 1548, column: 4, scope: !3251)
!3258 = !DILocation(line: 1550, column: 8, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !2986, file: !260, line: 1550, column: 7)
!3260 = !DILocation(line: 1550, column: 11, scope: !3259)
!3261 = !DILocation(line: 1550, column: 14, scope: !3259)
!3262 = !DILocation(line: 1550, column: 32, scope: !3259)
!3263 = !DILocation(line: 1551, column: 8, scope: !3259)
!3264 = !DILocation(line: 1551, column: 11, scope: !3259)
!3265 = !DILocation(line: 1551, column: 14, scope: !3259)
!3266 = !DILocation(line: 1551, column: 30, scope: !3259)
!3267 = !DILocation(line: 1552, column: 8, scope: !3259)
!3268 = !DILocation(line: 1552, column: 11, scope: !3259)
!3269 = !DILocation(line: 1552, column: 14, scope: !3259)
!3270 = !DILocation(line: 1550, column: 7, scope: !3016)
!3271 = !DILocation(line: 1553, column: 11, scope: !3259)
!3272 = !DILocation(line: 1553, column: 14, scope: !3259)
!3273 = !DILocation(line: 1553, column: 4, scope: !3259)
!3274 = !DILocation(line: 1557, column: 8, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !2986, file: !260, line: 1557, column: 7)
!3276 = !DILocation(line: 1557, column: 11, scope: !3275)
!3277 = !DILocation(line: 1557, column: 14, scope: !3275)
!3278 = !DILocation(line: 1557, column: 30, scope: !3275)
!3279 = !DILocation(line: 1557, column: 34, scope: !3280)
!3280 = !DILexicalBlockFile(scope: !3275, file: !260, discriminator: 1)
!3281 = !DILocation(line: 1557, column: 40, scope: !3280)
!3282 = !DILocation(line: 1557, column: 50, scope: !3280)
!3283 = !DILocation(line: 1557, column: 7, scope: !3280)
!3284 = !DILocalVariable(name: "_rc", scope: !3285, file: !260, line: 1558, type: !272)
!3285 = distinct !DILexicalBlock(scope: !3275, file: !260, line: 1557, column: 57)
!3286 = !DILocation(line: 1558, column: 8, scope: !3285)
!3287 = !DILocation(line: 1560, column: 29, scope: !3285)
!3288 = !DILocation(line: 1560, column: 10, scope: !3285)
!3289 = !DILocation(line: 1560, column: 8, scope: !3285)
!3290 = !DILocation(line: 1561, column: 8, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3285, file: !260, line: 1561, column: 8)
!3292 = !DILocation(line: 1561, column: 12, scope: !3291)
!3293 = !DILocation(line: 1561, column: 8, scope: !3285)
!3294 = !DILocation(line: 1562, column: 5, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3291, file: !260, line: 1561, column: 28)
!3296 = distinct !{!3296, !3294}
!3297 = !DILocation(line: 1562, column: 15, scope: !3298)
!3298 = !DILexicalBlockFile(scope: !3299, file: !260, discriminator: 1)
!3299 = distinct !DILexicalBlock(scope: !3300, file: !260, line: 1562, column: 14)
!3300 = distinct !DILexicalBlock(scope: !3295, file: !260, line: 1562, column: 8)
!3301 = !DILocation(line: 1562, column: 26, scope: !3298)
!3302 = !DILocation(line: 1562, column: 14, scope: !3298)
!3303 = !DILocation(line: 1562, column: 42, scope: !3304)
!3304 = !DILexicalBlockFile(scope: !3299, file: !260, discriminator: 2)
!3305 = !DILocation(line: 1562, column: 102, scope: !3304)
!3306 = !DILocation(line: 1562, column: 105, scope: !3304)
!3307 = !DILocation(line: 1562, column: 117, scope: !3304)
!3308 = !DILocation(line: 1562, column: 120, scope: !3304)
!3309 = !DILocation(line: 1562, column: 34, scope: !3304)
!3310 = !DILocation(line: 1562, column: 133, scope: !3311)
!3311 = !DILexicalBlockFile(scope: !3300, file: !260, discriminator: 3)
!3312 = !DILocation(line: 1564, column: 5, scope: !3295)
!3313 = !DILocation(line: 1564, column: 8, scope: !3295)
!3314 = !DILocation(line: 1564, column: 11, scope: !3295)
!3315 = !DILocation(line: 1565, column: 4, scope: !3295)
!3316 = !DILocation(line: 1566, column: 4, scope: !3285)
!3317 = distinct !{!3317, !3316}
!3318 = !DILocation(line: 1566, column: 14, scope: !3319)
!3319 = !DILexicalBlockFile(scope: !3320, file: !260, discriminator: 1)
!3320 = distinct !DILexicalBlock(scope: !3321, file: !260, line: 1566, column: 13)
!3321 = distinct !DILexicalBlock(scope: !3285, file: !260, line: 1566, column: 7)
!3322 = !DILocation(line: 1566, column: 25, scope: !3319)
!3323 = !DILocation(line: 1566, column: 13, scope: !3319)
!3324 = !DILocation(line: 1566, column: 41, scope: !3325)
!3325 = !DILexicalBlockFile(scope: !3320, file: !260, discriminator: 2)
!3326 = !DILocation(line: 1566, column: 138, scope: !3325)
!3327 = !DILocation(line: 1566, column: 157, scope: !3325)
!3328 = !DILocation(line: 1566, column: 144, scope: !3325)
!3329 = !DILocation(line: 1566, column: 165, scope: !3325)
!3330 = !DILocation(line: 1566, column: 171, scope: !3325)
!3331 = !DILocation(line: 1566, column: 181, scope: !3325)
!3332 = !DILocation(line: 1566, column: 187, scope: !3325)
!3333 = !DILocation(line: 1566, column: 209, scope: !3325)
!3334 = !DILocation(line: 1566, column: 198, scope: !3335)
!3335 = !DILexicalBlockFile(scope: !3325, file: !260, discriminator: 4)
!3336 = !DILocation(line: 1566, column: 33, scope: !3337)
!3337 = !DILexicalBlockFile(scope: !3325, file: !260, discriminator: 5)
!3338 = !DILocation(line: 1566, column: 33, scope: !3325)
!3339 = !DILocation(line: 1566, column: 215, scope: !3340)
!3340 = !DILexicalBlockFile(scope: !3321, file: !260, discriminator: 3)
!3341 = !DILocation(line: 1570, column: 3, scope: !3285)
!3342 = !DILocation(line: 1573, column: 8, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !2986, file: !260, line: 1573, column: 7)
!3344 = !DILocation(line: 1573, column: 11, scope: !3343)
!3345 = !DILocation(line: 1573, column: 14, scope: !3343)
!3346 = !DILocation(line: 1573, column: 30, scope: !3343)
!3347 = !DILocation(line: 1573, column: 53, scope: !3348)
!3348 = !DILexicalBlockFile(scope: !3343, file: !260, discriminator: 1)
!3349 = !DILocation(line: 1573, column: 33, scope: !3348)
!3350 = !DILocation(line: 1573, column: 56, scope: !3348)
!3351 = !DILocation(line: 1574, column: 36, scope: !3343)
!3352 = !DILocation(line: 1574, column: 8, scope: !3343)
!3353 = !DILocation(line: 1574, column: 39, scope: !3343)
!3354 = !DILocation(line: 1573, column: 7, scope: !3091)
!3355 = !DILocation(line: 1575, column: 4, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3343, file: !260, line: 1574, column: 46)
!3357 = distinct !{!3357, !3355}
!3358 = !DILocation(line: 1575, column: 14, scope: !3359)
!3359 = !DILexicalBlockFile(scope: !3360, file: !260, discriminator: 1)
!3360 = distinct !DILexicalBlock(scope: !3361, file: !260, line: 1575, column: 13)
!3361 = distinct !DILexicalBlock(scope: !3356, file: !260, line: 1575, column: 7)
!3362 = !DILocation(line: 1575, column: 25, scope: !3359)
!3363 = !DILocation(line: 1575, column: 13, scope: !3359)
!3364 = !DILocation(line: 1575, column: 41, scope: !3365)
!3365 = !DILexicalBlockFile(scope: !3360, file: !260, discriminator: 2)
!3366 = !DILocation(line: 1575, column: 107, scope: !3365)
!3367 = !DILocation(line: 1575, column: 113, scope: !3365)
!3368 = !DILocation(line: 1575, column: 116, scope: !3365)
!3369 = !DILocation(line: 1575, column: 33, scope: !3365)
!3370 = !DILocation(line: 1575, column: 133, scope: !3371)
!3371 = !DILexicalBlockFile(scope: !3361, file: !260, discriminator: 3)
!3372 = !DILocation(line: 1577, column: 4, scope: !3356)
!3373 = !DILocation(line: 1580, column: 7, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !2986, file: !260, line: 1580, column: 7)
!3375 = !DILocation(line: 1580, column: 13, scope: !3374)
!3376 = !DILocation(line: 1580, column: 23, scope: !3374)
!3377 = !DILocation(line: 1580, column: 7, scope: !2986)
!3378 = !DILocation(line: 1581, column: 4, scope: !3374)
!3379 = !DILocation(line: 1583, column: 3, scope: !2986)
!3380 = distinct !{!3380, !3379}
!3381 = !DILocation(line: 1583, column: 13, scope: !3382)
!3382 = !DILexicalBlockFile(scope: !3383, file: !260, discriminator: 1)
!3383 = distinct !DILexicalBlock(scope: !3384, file: !260, line: 1583, column: 12)
!3384 = distinct !DILexicalBlock(scope: !2986, file: !260, line: 1583, column: 6)
!3385 = !DILocation(line: 1583, column: 24, scope: !3382)
!3386 = !DILocation(line: 1583, column: 12, scope: !3382)
!3387 = !DILocation(line: 1583, column: 40, scope: !3388)
!3388 = !DILexicalBlockFile(scope: !3383, file: !260, discriminator: 2)
!3389 = !DILocation(line: 1583, column: 82, scope: !3388)
!3390 = !DILocation(line: 1583, column: 88, scope: !3388)
!3391 = !DILocation(line: 1583, column: 94, scope: !3388)
!3392 = !DILocation(line: 1583, column: 32, scope: !3388)
!3393 = !DILocation(line: 1583, column: 106, scope: !3394)
!3394 = !DILexicalBlockFile(scope: !3384, file: !260, discriminator: 3)
!3395 = !DILocation(line: 1584, column: 7, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !2986, file: !260, line: 1584, column: 7)
!3397 = !DILocation(line: 1584, column: 13, scope: !3396)
!3398 = !DILocation(line: 1584, column: 23, scope: !3396)
!3399 = !DILocation(line: 1584, column: 7, scope: !2986)
!3400 = !DILocation(line: 1585, column: 4, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3396, file: !260, line: 1584, column: 31)
!3402 = distinct !{!3402, !3400}
!3403 = !DILocation(line: 1585, column: 14, scope: !3404)
!3404 = !DILexicalBlockFile(scope: !3405, file: !260, discriminator: 1)
!3405 = distinct !DILexicalBlock(scope: !3406, file: !260, line: 1585, column: 13)
!3406 = distinct !DILexicalBlock(scope: !3401, file: !260, line: 1585, column: 7)
!3407 = !DILocation(line: 1585, column: 25, scope: !3404)
!3408 = !DILocation(line: 1585, column: 13, scope: !3404)
!3409 = !DILocation(line: 1585, column: 41, scope: !3410)
!3410 = !DILexicalBlockFile(scope: !3405, file: !260, discriminator: 2)
!3411 = !DILocation(line: 1585, column: 84, scope: !3410)
!3412 = !DILocation(line: 1585, column: 33, scope: !3410)
!3413 = !DILocation(line: 1585, column: 91, scope: !3414)
!3414 = !DILexicalBlockFile(scope: !3406, file: !260, discriminator: 3)
!3415 = !DILocation(line: 1586, column: 11, scope: !3401)
!3416 = !DILocation(line: 1586, column: 14, scope: !3401)
!3417 = !DILocation(line: 1586, column: 4, scope: !3401)
!3418 = !DILocation(line: 1589, column: 8, scope: !2986)
!3419 = !DILocation(line: 1590, column: 2, scope: !2986)
!3420 = !DILocation(line: 1590, column: 11, scope: !3421)
!3421 = !DILexicalBlockFile(scope: !2845, file: !260, discriminator: 1)
!3422 = !DILocation(line: 1590, column: 17, scope: !3421)
!3423 = !DILocation(line: 1590, column: 26, scope: !3421)
!3424 = !DILocation(line: 1590, column: 2, scope: !3421)
!3425 = !DILocation(line: 1592, column: 2, scope: !2845)
!3426 = distinct !{!3426, !3425}
!3427 = !DILocation(line: 1592, column: 12, scope: !3428)
!3428 = !DILexicalBlockFile(scope: !3429, file: !260, discriminator: 1)
!3429 = distinct !DILexicalBlock(scope: !3430, file: !260, line: 1592, column: 11)
!3430 = distinct !DILexicalBlock(scope: !2845, file: !260, line: 1592, column: 5)
!3431 = !DILocation(line: 1592, column: 23, scope: !3428)
!3432 = !DILocation(line: 1592, column: 11, scope: !3428)
!3433 = !DILocation(line: 1592, column: 39, scope: !3434)
!3434 = !DILexicalBlockFile(scope: !3429, file: !260, discriminator: 2)
!3435 = !DILocation(line: 1592, column: 111, scope: !3434)
!3436 = !DILocation(line: 1592, column: 130, scope: !3434)
!3437 = !DILocation(line: 1592, column: 117, scope: !3434)
!3438 = !DILocation(line: 1592, column: 138, scope: !3434)
!3439 = !DILocation(line: 1592, column: 144, scope: !3434)
!3440 = !DILocation(line: 1592, column: 154, scope: !3434)
!3441 = !DILocation(line: 1592, column: 160, scope: !3434)
!3442 = !DILocation(line: 1592, column: 31, scope: !3443)
!3443 = !DILexicalBlockFile(scope: !3434, file: !260, discriminator: 4)
!3444 = !DILocation(line: 1592, column: 31, scope: !3434)
!3445 = !DILocation(line: 1592, column: 172, scope: !3446)
!3446 = !DILexicalBlockFile(scope: !3430, file: !260, discriminator: 3)
!3447 = !DILocation(line: 1596, column: 11, scope: !2845)
!3448 = !DILocation(line: 1596, column: 2, scope: !2845)
!3449 = !DILocation(line: 1597, column: 1, scope: !2845)
!3450 = distinct !DISubprogram(name: "__inflate", scope: !260, file: !260, line: 992, type: !1814, isLocal: true, isDefinition: true, scopeLine: 993, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !530)
!3451 = !DILocalVariable(name: "strm", arg: 1, scope: !3450, file: !260, line: 992, type: !495)
!3452 = !DILocation(line: 992, column: 39, scope: !3450)
!3453 = !DILocalVariable(name: "s", arg: 2, scope: !3450, file: !260, line: 992, type: !268)
!3454 = !DILocation(line: 992, column: 62, scope: !3450)
!3455 = !DILocalVariable(name: "flush", arg: 3, scope: !3450, file: !260, line: 992, type: !272)
!3456 = !DILocation(line: 992, column: 69, scope: !3450)
!3457 = !DILocalVariable(name: "rc", scope: !3450, file: !260, line: 994, type: !272)
!3458 = !DILocation(line: 994, column: 6, scope: !3450)
!3459 = !DILocalVariable(name: "h", scope: !3450, file: !260, line: 995, type: !1214)
!3460 = !DILocation(line: 995, column: 15, scope: !3450)
!3461 = !DILocation(line: 995, column: 20, scope: !3450)
!3462 = !DILocation(line: 995, column: 23, scope: !3450)
!3463 = !DILocation(line: 997, column: 2, scope: !3450)
!3464 = distinct !{!3464, !3463}
!3465 = !DILocation(line: 997, column: 12, scope: !3466)
!3466 = !DILexicalBlockFile(scope: !3467, file: !260, discriminator: 1)
!3467 = distinct !DILexicalBlock(scope: !3468, file: !260, line: 997, column: 11)
!3468 = distinct !DILexicalBlock(scope: !3450, file: !260, line: 997, column: 5)
!3469 = !DILocation(line: 997, column: 23, scope: !3466)
!3470 = !DILocation(line: 997, column: 11, scope: !3466)
!3471 = !DILocation(line: 997, column: 39, scope: !3472)
!3472 = !DILexicalBlockFile(scope: !3467, file: !260, discriminator: 2)
!3473 = !DILocation(line: 997, column: 192, scope: !3472)
!3474 = !DILocation(line: 997, column: 198, scope: !3472)
!3475 = !DILocation(line: 997, column: 201, scope: !3472)
!3476 = !DILocation(line: 997, column: 227, scope: !3472)
!3477 = !DILocation(line: 997, column: 214, scope: !3472)
!3478 = !DILocation(line: 997, column: 235, scope: !3472)
!3479 = !DILocation(line: 997, column: 238, scope: !3472)
!3480 = !DILocation(line: 997, column: 247, scope: !3472)
!3481 = !DILocation(line: 997, column: 250, scope: !3472)
!3482 = !DILocation(line: 997, column: 260, scope: !3472)
!3483 = !DILocation(line: 997, column: 263, scope: !3472)
!3484 = !DILocation(line: 997, column: 273, scope: !3472)
!3485 = !DILocation(line: 997, column: 276, scope: !3472)
!3486 = !DILocation(line: 997, column: 287, scope: !3472)
!3487 = !DILocation(line: 997, column: 290, scope: !3472)
!3488 = !DILocation(line: 997, column: 300, scope: !3472)
!3489 = !DILocation(line: 997, column: 303, scope: !3472)
!3490 = !DILocation(line: 997, column: 314, scope: !3472)
!3491 = !DILocation(line: 997, column: 317, scope: !3472)
!3492 = !DILocation(line: 997, column: 324, scope: !3472)
!3493 = !DILocation(line: 997, column: 327, scope: !3472)
!3494 = !DILocation(line: 997, column: 31, scope: !3495)
!3495 = !DILexicalBlockFile(scope: !3472, file: !260, discriminator: 4)
!3496 = !DILocation(line: 997, column: 31, scope: !3472)
!3497 = !DILocation(line: 997, column: 337, scope: !3498)
!3498 = !DILexicalBlockFile(scope: !3468, file: !260, discriminator: 3)
!3499 = !DILocation(line: 1004, column: 20, scope: !3450)
!3500 = !DILocation(line: 1004, column: 23, scope: !3450)
!3501 = !DILocation(line: 1004, column: 7, scope: !3450)
!3502 = !DILocation(line: 1004, column: 5, scope: !3450)
!3503 = !DILocation(line: 1005, column: 23, scope: !3450)
!3504 = !DILocation(line: 1005, column: 29, scope: !3450)
!3505 = !DILocation(line: 1005, column: 2, scope: !3450)
!3506 = !DILocation(line: 1007, column: 2, scope: !3450)
!3507 = distinct !{!3507, !3506}
!3508 = !DILocation(line: 1007, column: 12, scope: !3509)
!3509 = !DILexicalBlockFile(scope: !3510, file: !260, discriminator: 1)
!3510 = distinct !DILexicalBlock(scope: !3511, file: !260, line: 1007, column: 11)
!3511 = distinct !DILexicalBlock(scope: !3450, file: !260, line: 1007, column: 5)
!3512 = !DILocation(line: 1007, column: 23, scope: !3509)
!3513 = !DILocation(line: 1007, column: 11, scope: !3509)
!3514 = !DILocation(line: 1007, column: 39, scope: !3515)
!3515 = !DILexicalBlockFile(scope: !3510, file: !260, discriminator: 2)
!3516 = !DILocation(line: 1007, column: 197, scope: !3515)
!3517 = !DILocation(line: 1007, column: 203, scope: !3515)
!3518 = !DILocation(line: 1007, column: 206, scope: !3515)
!3519 = !DILocation(line: 1007, column: 232, scope: !3515)
!3520 = !DILocation(line: 1007, column: 219, scope: !3515)
!3521 = !DILocation(line: 1007, column: 240, scope: !3515)
!3522 = !DILocation(line: 1007, column: 243, scope: !3515)
!3523 = !DILocation(line: 1007, column: 252, scope: !3515)
!3524 = !DILocation(line: 1007, column: 255, scope: !3515)
!3525 = !DILocation(line: 1007, column: 265, scope: !3515)
!3526 = !DILocation(line: 1007, column: 268, scope: !3515)
!3527 = !DILocation(line: 1007, column: 278, scope: !3515)
!3528 = !DILocation(line: 1007, column: 281, scope: !3515)
!3529 = !DILocation(line: 1007, column: 292, scope: !3515)
!3530 = !DILocation(line: 1007, column: 295, scope: !3515)
!3531 = !DILocation(line: 1007, column: 305, scope: !3515)
!3532 = !DILocation(line: 1007, column: 308, scope: !3515)
!3533 = !DILocation(line: 1007, column: 319, scope: !3515)
!3534 = !DILocation(line: 1007, column: 322, scope: !3515)
!3535 = !DILocation(line: 1007, column: 329, scope: !3515)
!3536 = !DILocation(line: 1007, column: 332, scope: !3515)
!3537 = !DILocation(line: 1007, column: 352, scope: !3515)
!3538 = !DILocation(line: 1007, column: 341, scope: !3539)
!3539 = !DILexicalBlockFile(scope: !3515, file: !260, discriminator: 4)
!3540 = !DILocation(line: 1007, column: 31, scope: !3541)
!3541 = !DILexicalBlockFile(scope: !3515, file: !260, discriminator: 5)
!3542 = !DILocation(line: 1007, column: 31, scope: !3515)
!3543 = !DILocation(line: 1007, column: 358, scope: !3544)
!3544 = !DILexicalBlockFile(scope: !3511, file: !260, discriminator: 3)
!3545 = !DILocation(line: 1014, column: 2, scope: !3450)
!3546 = !DILocation(line: 1014, column: 5, scope: !3450)
!3547 = !DILocation(line: 1014, column: 16, scope: !3450)
!3548 = !DILocation(line: 1015, column: 9, scope: !3450)
!3549 = !DILocation(line: 1015, column: 2, scope: !3450)
!3550 = distinct !DISubprogram(name: "output_buffer_empty", scope: !260, file: !260, line: 80, type: !3551, isLocal: true, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !530)
!3551 = !DISubroutineType(types: !3552)
!3552 = !{!272, !268}
!3553 = !DILocalVariable(name: "s", arg: 1, scope: !3550, file: !260, line: 80, type: !268)
!3554 = !DILocation(line: 80, column: 49, scope: !3550)
!3555 = !DILocation(line: 82, column: 10, scope: !3550)
!3556 = !DILocation(line: 82, column: 13, scope: !3550)
!3557 = !DILocation(line: 82, column: 27, scope: !3550)
!3558 = !DILocation(line: 82, column: 30, scope: !3550)
!3559 = !DILocation(line: 82, column: 24, scope: !3550)
!3560 = !DILocation(line: 82, column: 2, scope: !3550)
!3561 = distinct !DISubprogram(name: "__check_stream_end", scope: !260, file: !260, line: 1195, type: !1207, isLocal: true, isDefinition: true, scopeLine: 1196, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !530)
!3562 = !DILocalVariable(name: "strm", arg: 1, scope: !3561, file: !260, line: 1195, type: !495)
!3563 = !DILocation(line: 1195, column: 48, scope: !3561)
!3564 = !DILocalVariable(name: "rc", scope: !3561, file: !260, line: 1197, type: !272)
!3565 = !DILocation(line: 1197, column: 6, scope: !3561)
!3566 = !DILocalVariable(name: "ret", scope: !3561, file: !260, line: 1197, type: !272)
!3567 = !DILocation(line: 1197, column: 10, scope: !3561)
!3568 = !DILocalVariable(name: "d", scope: !3561, file: !260, line: 1198, type: !435)
!3569 = !DILocation(line: 1198, column: 11, scope: !3561)
!3570 = !DILocalVariable(name: "e", scope: !3561, file: !260, line: 1199, type: !3571)
!3571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream_ending", file: !260, line: 1053, size: 320, align: 32, elements: !3572)
!3572 = !{!3573, !3577, !3578, !3579, !3580, !3581, !3582}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3571, file: !260, line: 1054, baseType: !3574, size: 128, align: 8)
!3574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 128, align: 8, elements: !3575)
!3575 = !{!3576}
!3576 = !DISubrange(count: 16)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "proc_bits", scope: !3571, file: !260, line: 1055, baseType: !275, size: 32, align: 32, offset: 128)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "remaining_bytes", scope: !3571, file: !260, line: 1056, baseType: !275, size: 32, align: 32, offset: 160)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !3571, file: !260, line: 1057, baseType: !275, size: 32, align: 32, offset: 192)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3571, file: !260, line: 1058, baseType: !275, size: 32, align: 32, offset: 224)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "in_hdr_scratch_len", scope: !3571, file: !260, line: 1059, baseType: !275, size: 32, align: 32, offset: 256)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3571, file: !260, line: 1060, baseType: !259, size: 32, align: 32, offset: 288)
!3583 = !DILocation(line: 1199, column: 23, scope: !3561)
!3584 = !DILocalVariable(name: "s", scope: !3561, file: !260, line: 1200, type: !268)
!3585 = !DILocation(line: 1200, column: 19, scope: !3561)
!3586 = !DILocation(line: 1200, column: 42, scope: !3561)
!3587 = !DILocation(line: 1200, column: 48, scope: !3561)
!3588 = !DILocation(line: 1200, column: 23, scope: !3561)
!3589 = !DILocalVariable(name: "h", scope: !3561, file: !260, line: 1201, type: !1214)
!3590 = !DILocation(line: 1201, column: 15, scope: !3561)
!3591 = !DILocation(line: 1201, column: 20, scope: !3561)
!3592 = !DILocation(line: 1201, column: 23, scope: !3561)
!3593 = !DILocalVariable(name: "len", scope: !3561, file: !260, line: 1202, type: !275)
!3594 = !DILocation(line: 1202, column: 15, scope: !3561)
!3595 = !DILocalVariable(name: "offs", scope: !3561, file: !260, line: 1203, type: !290)
!3596 = !DILocation(line: 1203, column: 10, scope: !3561)
!3597 = !DILocation(line: 1205, column: 6, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3561, file: !260, line: 1205, column: 6)
!3599 = !DILocation(line: 1205, column: 25, scope: !3598)
!3600 = !DILocation(line: 1205, column: 6, scope: !3561)
!3601 = !DILocation(line: 1206, column: 3, scope: !3602)
!3602 = distinct !DILexicalBlock(scope: !3598, file: !260, line: 1205, column: 66)
!3603 = distinct !{!3603, !3601}
!3604 = !DILocation(line: 1206, column: 13, scope: !3605)
!3605 = !DILexicalBlockFile(scope: !3606, file: !260, discriminator: 1)
!3606 = distinct !DILexicalBlock(scope: !3607, file: !260, line: 1206, column: 12)
!3607 = distinct !DILexicalBlock(scope: !3602, file: !260, line: 1206, column: 6)
!3608 = !DILocation(line: 1206, column: 24, scope: !3605)
!3609 = !DILocation(line: 1206, column: 12, scope: !3605)
!3610 = !DILocation(line: 1206, column: 40, scope: !3611)
!3611 = !DILexicalBlockFile(scope: !3606, file: !260, discriminator: 2)
!3612 = !DILocation(line: 1206, column: 105, scope: !3611)
!3613 = !DILocation(line: 1206, column: 32, scope: !3611)
!3614 = !DILocation(line: 1206, column: 112, scope: !3615)
!3615 = !DILexicalBlockFile(scope: !3607, file: !260, discriminator: 3)
!3616 = !DILocation(line: 1207, column: 3, scope: !3602)
!3617 = !DILocation(line: 1216, column: 6, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3561, file: !260, line: 1216, column: 6)
!3619 = !DILocation(line: 1216, column: 9, scope: !3618)
!3620 = !DILocation(line: 1216, column: 16, scope: !3618)
!3621 = !DILocation(line: 1216, column: 6, scope: !3561)
!3622 = !DILocation(line: 1217, column: 3, scope: !3618)
!3623 = !DILocation(line: 1219, column: 2, scope: !3561)
!3624 = distinct !{!3624, !3623}
!3625 = !DILocation(line: 1219, column: 12, scope: !3626)
!3626 = !DILexicalBlockFile(scope: !3627, file: !260, discriminator: 1)
!3627 = distinct !DILexicalBlock(scope: !3628, file: !260, line: 1219, column: 11)
!3628 = distinct !DILexicalBlock(scope: !3561, file: !260, line: 1219, column: 5)
!3629 = !DILocation(line: 1219, column: 23, scope: !3626)
!3630 = !DILocation(line: 1219, column: 11, scope: !3626)
!3631 = !DILocation(line: 1219, column: 39, scope: !3632)
!3632 = !DILexicalBlockFile(scope: !3627, file: !260, discriminator: 2)
!3633 = !DILocation(line: 1219, column: 104, scope: !3632)
!3634 = !DILocation(line: 1219, column: 31, scope: !3632)
!3635 = !DILocation(line: 1219, column: 111, scope: !3636)
!3636 = !DILexicalBlockFile(scope: !3628, file: !260, discriminator: 3)
!3637 = !DILocation(line: 1230, column: 21, scope: !3561)
!3638 = !DILocation(line: 1230, column: 7, scope: !3561)
!3639 = !DILocation(line: 1230, column: 5, scope: !3561)
!3640 = !DILocation(line: 1231, column: 6, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3561, file: !260, line: 1231, column: 6)
!3642 = !DILocation(line: 1231, column: 9, scope: !3641)
!3643 = !DILocation(line: 1231, column: 6, scope: !3561)
!3644 = !DILocation(line: 1232, column: 3, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3641, file: !260, line: 1231, column: 15)
!3646 = distinct !{!3646, !3644}
!3647 = !DILocation(line: 1232, column: 13, scope: !3648)
!3648 = !DILexicalBlockFile(scope: !3649, file: !260, discriminator: 1)
!3649 = distinct !DILexicalBlock(scope: !3650, file: !260, line: 1232, column: 12)
!3650 = distinct !DILexicalBlock(scope: !3645, file: !260, line: 1232, column: 6)
!3651 = !DILocation(line: 1232, column: 24, scope: !3648)
!3652 = !DILocation(line: 1232, column: 12, scope: !3648)
!3653 = !DILocation(line: 1232, column: 40, scope: !3654)
!3654 = !DILexicalBlockFile(scope: !3649, file: !260, discriminator: 2)
!3655 = !DILocation(line: 1232, column: 133, scope: !3654)
!3656 = !DILocation(line: 1232, column: 32, scope: !3654)
!3657 = !DILocation(line: 1232, column: 138, scope: !3658)
!3658 = !DILexicalBlockFile(scope: !3650, file: !260, discriminator: 3)
!3659 = !DILocation(line: 1234, column: 3, scope: !3645)
!3660 = !DILocation(line: 1238, column: 2, scope: !3561)
!3661 = !DILocation(line: 1239, column: 4, scope: !3561)
!3662 = !DILocation(line: 1239, column: 10, scope: !3561)
!3663 = !DILocation(line: 1240, column: 16, scope: !3561)
!3664 = !DILocation(line: 1240, column: 19, scope: !3561)
!3665 = !DILocation(line: 1240, column: 4, scope: !3561)
!3666 = !DILocation(line: 1240, column: 14, scope: !3561)
!3667 = !DILocation(line: 1241, column: 4, scope: !3561)
!3668 = !DILocation(line: 1241, column: 20, scope: !3561)
!3669 = !DILocation(line: 1242, column: 4, scope: !3561)
!3670 = !DILocation(line: 1242, column: 13, scope: !3561)
!3671 = !DILocation(line: 1243, column: 4, scope: !3561)
!3672 = !DILocation(line: 1243, column: 8, scope: !3561)
!3673 = !DILocation(line: 1244, column: 46, scope: !3561)
!3674 = !DILocation(line: 1244, column: 25, scope: !3561)
!3675 = !DILocation(line: 1244, column: 4, scope: !3561)
!3676 = !DILocation(line: 1244, column: 23, scope: !3561)
!3677 = !DILocalVariable(name: "_a", scope: !3678, file: !260, line: 1246, type: !275)
!3678 = distinct !DILexicalBlock(scope: !3561, file: !260, line: 1246, column: 9)
!3679 = !DILocation(line: 1246, column: 45, scope: !3678)
!3680 = !DILocation(line: 1246, column: 53, scope: !3678)
!3681 = !DILocalVariable(name: "_b", scope: !3678, file: !260, line: 1246, type: !275)
!3682 = !DILocation(line: 1246, column: 105, scope: !3678)
!3683 = !DILocation(line: 1246, column: 113, scope: !3678)
!3684 = !DILocation(line: 1246, column: 131, scope: !3678)
!3685 = !DILocation(line: 1246, column: 136, scope: !3678)
!3686 = !DILocation(line: 1246, column: 134, scope: !3678)
!3687 = !DILocation(line: 1246, column: 141, scope: !3688)
!3688 = !DILexicalBlockFile(scope: !3678, file: !260, discriminator: 1)
!3689 = !DILocation(line: 1246, column: 131, scope: !3688)
!3690 = !DILocation(line: 1246, column: 146, scope: !3691)
!3691 = !DILexicalBlockFile(scope: !3678, file: !260, discriminator: 2)
!3692 = !DILocation(line: 1246, column: 131, scope: !3691)
!3693 = !DILocation(line: 1246, column: 131, scope: !3694)
!3694 = !DILexicalBlockFile(scope: !3678, file: !260, discriminator: 3)
!3695 = !DILocation(line: 1246, column: 74, scope: !3694)
!3696 = !DILocation(line: 1246, column: 150, scope: !3694)
!3697 = !DILocation(line: 1246, column: 6, scope: !3694)
!3698 = !DILocation(line: 1247, column: 16, scope: !3561)
!3699 = !DILocation(line: 1247, column: 10, scope: !3561)
!3700 = !DILocation(line: 1247, column: 12, scope: !3561)
!3701 = !DILocation(line: 1247, column: 27, scope: !3561)
!3702 = !DILocation(line: 1247, column: 30, scope: !3561)
!3703 = !DILocation(line: 1247, column: 35, scope: !3561)
!3704 = !DILocation(line: 1247, column: 2, scope: !3561)
!3705 = !DILocation(line: 1247, column: 41, scope: !3561)
!3706 = !DILocation(line: 1248, column: 23, scope: !3561)
!3707 = !DILocation(line: 1248, column: 4, scope: !3561)
!3708 = !DILocation(line: 1248, column: 20, scope: !3561)
!3709 = !DILocation(line: 1249, column: 16, scope: !3561)
!3710 = !DILocation(line: 1249, column: 4, scope: !3561)
!3711 = !DILocation(line: 1249, column: 13, scope: !3561)
!3712 = !DILocalVariable(name: "_a", scope: !3713, file: !260, line: 1251, type: !506)
!3713 = distinct !DILexicalBlock(scope: !3561, file: !260, line: 1251, column: 9)
!3714 = !DILocation(line: 1251, column: 39, scope: !3713)
!3715 = !DILocation(line: 1251, column: 45, scope: !3713)
!3716 = !DILocation(line: 1251, column: 51, scope: !3713)
!3717 = !DILocalVariable(name: "_b", scope: !3713, file: !260, line: 1251, type: !275)
!3718 = !DILocation(line: 1251, column: 93, scope: !3713)
!3719 = !DILocation(line: 1251, column: 101, scope: !3713)
!3720 = !DILocation(line: 1251, column: 119, scope: !3713)
!3721 = !DILocation(line: 1251, column: 124, scope: !3713)
!3722 = !DILocation(line: 1251, column: 122, scope: !3713)
!3723 = !DILocation(line: 1251, column: 129, scope: !3724)
!3724 = !DILexicalBlockFile(scope: !3713, file: !260, discriminator: 1)
!3725 = !DILocation(line: 1251, column: 119, scope: !3724)
!3726 = !DILocation(line: 1251, column: 134, scope: !3727)
!3727 = !DILexicalBlockFile(scope: !3713, file: !260, discriminator: 2)
!3728 = !DILocation(line: 1251, column: 119, scope: !3727)
!3729 = !DILocation(line: 1251, column: 119, scope: !3730)
!3730 = !DILexicalBlockFile(scope: !3713, file: !260, discriminator: 3)
!3731 = !DILocation(line: 1251, column: 62, scope: !3730)
!3732 = !DILocation(line: 1251, column: 138, scope: !3730)
!3733 = !DILocation(line: 1251, column: 6, scope: !3730)
!3734 = !DILocation(line: 1252, column: 16, scope: !3561)
!3735 = !DILocation(line: 1252, column: 10, scope: !3561)
!3736 = !DILocation(line: 1252, column: 12, scope: !3561)
!3737 = !DILocation(line: 1252, column: 27, scope: !3561)
!3738 = !DILocation(line: 1252, column: 33, scope: !3561)
!3739 = !DILocation(line: 1252, column: 42, scope: !3561)
!3740 = !DILocation(line: 1252, column: 2, scope: !3561)
!3741 = !DILocation(line: 1253, column: 23, scope: !3561)
!3742 = !DILocation(line: 1253, column: 4, scope: !3561)
!3743 = !DILocation(line: 1253, column: 20, scope: !3561)
!3744 = !DILocation(line: 1254, column: 16, scope: !3561)
!3745 = !DILocation(line: 1254, column: 4, scope: !3561)
!3746 = !DILocation(line: 1254, column: 13, scope: !3561)
!3747 = !DILocation(line: 1256, column: 2, scope: !3561)
!3748 = distinct !{!3748, !3747}
!3749 = !DILocation(line: 1256, column: 12, scope: !3750)
!3750 = !DILexicalBlockFile(scope: !3751, file: !260, discriminator: 1)
!3751 = distinct !DILexicalBlock(scope: !3752, file: !260, line: 1256, column: 11)
!3752 = distinct !DILexicalBlock(scope: !3561, file: !260, line: 1256, column: 5)
!3753 = !DILocation(line: 1256, column: 23, scope: !3750)
!3754 = !DILocation(line: 1256, column: 11, scope: !3750)
!3755 = !DILocation(line: 1256, column: 39, scope: !3756)
!3756 = !DILexicalBlockFile(scope: !3751, file: !260, discriminator: 2)
!3757 = !DILocation(line: 1256, column: 134, scope: !3756)
!3758 = !DILocation(line: 1256, column: 154, scope: !3756)
!3759 = !DILocation(line: 1256, column: 160, scope: !3756)
!3760 = !DILocation(line: 1256, column: 31, scope: !3756)
!3761 = !DILocation(line: 1256, column: 171, scope: !3762)
!3762 = !DILexicalBlockFile(scope: !3752, file: !260, discriminator: 3)
!3763 = !DILocation(line: 1260, column: 7, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3561, file: !260, line: 1260, column: 6)
!3765 = !DILocation(line: 1260, column: 18, scope: !3764)
!3766 = !DILocation(line: 1260, column: 6, scope: !3561)
!3767 = !DILocation(line: 1261, column: 16, scope: !3764)
!3768 = !DILocation(line: 1261, column: 28, scope: !3764)
!3769 = !DILocation(line: 1261, column: 26, scope: !3764)
!3770 = !DILocation(line: 1261, column: 33, scope: !3764)
!3771 = !DILocation(line: 1261, column: 3, scope: !3764)
!3772 = !DILocation(line: 1264, column: 2, scope: !3561)
!3773 = !DILocation(line: 1266, column: 13, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3561, file: !260, line: 1264, column: 12)
!3775 = !DILocation(line: 1266, column: 3, scope: !3774)
!3776 = !DILocation(line: 1268, column: 4, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !3774, file: !260, line: 1266, column: 20)
!3778 = distinct !{!3778, !3776}
!3779 = !DILocation(line: 1268, column: 14, scope: !3780)
!3780 = !DILexicalBlockFile(scope: !3781, file: !260, discriminator: 1)
!3781 = distinct !DILexicalBlock(scope: !3782, file: !260, line: 1268, column: 13)
!3782 = distinct !DILexicalBlock(scope: !3777, file: !260, line: 1268, column: 7)
!3783 = !DILocation(line: 1268, column: 25, scope: !3780)
!3784 = !DILocation(line: 1268, column: 13, scope: !3780)
!3785 = !DILocation(line: 1268, column: 41, scope: !3786)
!3786 = !DILexicalBlockFile(scope: !3781, file: !260, discriminator: 2)
!3787 = !DILocation(line: 1268, column: 33, scope: !3786)
!3788 = !DILocation(line: 1268, column: 73, scope: !3789)
!3789 = !DILexicalBlockFile(scope: !3782, file: !260, discriminator: 3)
!3790 = !DILocation(line: 1270, column: 9, scope: !3777)
!3791 = !DILocation(line: 1270, column: 7, scope: !3777)
!3792 = !DILocation(line: 1271, column: 4, scope: !3777)
!3793 = distinct !{!3793, !3792}
!3794 = !DILocation(line: 1271, column: 14, scope: !3795)
!3795 = !DILexicalBlockFile(scope: !3796, file: !260, discriminator: 1)
!3796 = distinct !DILexicalBlock(scope: !3797, file: !260, line: 1271, column: 13)
!3797 = distinct !DILexicalBlock(scope: !3777, file: !260, line: 1271, column: 7)
!3798 = !DILocation(line: 1271, column: 25, scope: !3795)
!3799 = !DILocation(line: 1271, column: 13, scope: !3795)
!3800 = !DILocation(line: 1271, column: 41, scope: !3801)
!3801 = !DILexicalBlockFile(scope: !3796, file: !260, discriminator: 2)
!3802 = !DILocation(line: 1271, column: 93, scope: !3801)
!3803 = !DILocation(line: 1271, column: 96, scope: !3801)
!3804 = !DILocation(line: 1271, column: 33, scope: !3801)
!3805 = !DILocation(line: 1271, column: 101, scope: !3806)
!3806 = !DILexicalBlockFile(scope: !3797, file: !260, discriminator: 3)
!3807 = !DILocation(line: 1272, column: 8, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3777, file: !260, line: 1272, column: 8)
!3809 = !DILocation(line: 1272, column: 8, scope: !3777)
!3810 = !DILocation(line: 1273, column: 5, scope: !3808)
!3811 = !DILocation(line: 1274, column: 4, scope: !3777)
!3812 = !DILocation(line: 1276, column: 12, scope: !3777)
!3813 = !DILocation(line: 1276, column: 14, scope: !3777)
!3814 = !DILocation(line: 1276, column: 4, scope: !3777)
!3815 = !DILocation(line: 1278, column: 7, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3777, file: !260, line: 1276, column: 21)
!3817 = !DILocation(line: 1278, column: 13, scope: !3816)
!3818 = !DILocation(line: 1279, column: 5, scope: !3816)
!3819 = !DILocation(line: 1281, column: 7, scope: !3816)
!3820 = !DILocation(line: 1281, column: 13, scope: !3816)
!3821 = !DILocation(line: 1284, column: 5, scope: !3816)
!3822 = !DILocation(line: 1286, column: 7, scope: !3816)
!3823 = !DILocation(line: 1286, column: 13, scope: !3816)
!3824 = !DILocation(line: 1287, column: 5, scope: !3816)
!3825 = !DILocation(line: 1287, column: 5, scope: !3826)
!3826 = !DILexicalBlockFile(scope: !3816, file: !260, discriminator: 1)
!3827 = !DILocation(line: 1290, column: 5, scope: !3816)
!3828 = !DILocation(line: 1292, column: 8, scope: !3829)
!3829 = distinct !DILexicalBlock(scope: !3777, file: !260, line: 1292, column: 8)
!3830 = !DILocation(line: 1292, column: 10, scope: !3829)
!3831 = !DILocation(line: 1292, column: 8, scope: !3777)
!3832 = !DILocation(line: 1293, column: 5, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3829, file: !260, line: 1292, column: 17)
!3834 = distinct !{!3834, !3832}
!3835 = !DILocation(line: 1293, column: 15, scope: !3836)
!3836 = !DILexicalBlockFile(scope: !3837, file: !260, discriminator: 1)
!3837 = distinct !DILexicalBlock(scope: !3838, file: !260, line: 1293, column: 14)
!3838 = distinct !DILexicalBlock(scope: !3833, file: !260, line: 1293, column: 8)
!3839 = !DILocation(line: 1293, column: 26, scope: !3836)
!3840 = !DILocation(line: 1293, column: 14, scope: !3836)
!3841 = !DILocation(line: 1293, column: 42, scope: !3842)
!3842 = !DILexicalBlockFile(scope: !3837, file: !260, discriminator: 2)
!3843 = !DILocation(line: 1293, column: 34, scope: !3842)
!3844 = !DILocation(line: 1293, column: 112, scope: !3845)
!3845 = !DILexicalBlockFile(scope: !3838, file: !260, discriminator: 3)
!3846 = !DILocation(line: 1295, column: 9, scope: !3833)
!3847 = !DILocation(line: 1296, column: 4, scope: !3833)
!3848 = !DILocation(line: 1297, column: 4, scope: !3777)
!3849 = !DILocation(line: 1300, column: 4, scope: !3777)
!3850 = distinct !{!3850, !3849}
!3851 = !DILocation(line: 1300, column: 14, scope: !3852)
!3852 = !DILexicalBlockFile(scope: !3853, file: !260, discriminator: 1)
!3853 = distinct !DILexicalBlock(scope: !3854, file: !260, line: 1300, column: 13)
!3854 = distinct !DILexicalBlock(scope: !3777, file: !260, line: 1300, column: 7)
!3855 = !DILocation(line: 1300, column: 25, scope: !3852)
!3856 = !DILocation(line: 1300, column: 13, scope: !3852)
!3857 = !DILocation(line: 1300, column: 41, scope: !3858)
!3858 = !DILexicalBlockFile(scope: !3853, file: !260, discriminator: 2)
!3859 = !DILocation(line: 1300, column: 33, scope: !3858)
!3860 = !DILocation(line: 1300, column: 78, scope: !3861)
!3861 = !DILexicalBlockFile(scope: !3854, file: !260, discriminator: 3)
!3862 = !DILocation(line: 1302, column: 9, scope: !3777)
!3863 = !DILocation(line: 1302, column: 7, scope: !3777)
!3864 = !DILocation(line: 1303, column: 4, scope: !3777)
!3865 = distinct !{!3865, !3864}
!3866 = !DILocation(line: 1303, column: 14, scope: !3867)
!3867 = !DILexicalBlockFile(scope: !3868, file: !260, discriminator: 1)
!3868 = distinct !DILexicalBlock(scope: !3869, file: !260, line: 1303, column: 13)
!3869 = distinct !DILexicalBlock(scope: !3777, file: !260, line: 1303, column: 7)
!3870 = !DILocation(line: 1303, column: 25, scope: !3867)
!3871 = !DILocation(line: 1303, column: 13, scope: !3867)
!3872 = !DILocation(line: 1303, column: 41, scope: !3873)
!3873 = !DILexicalBlockFile(scope: !3868, file: !260, discriminator: 2)
!3874 = !DILocation(line: 1303, column: 130, scope: !3873)
!3875 = !DILocation(line: 1303, column: 33, scope: !3873)
!3876 = !DILocation(line: 1303, column: 134, scope: !3877)
!3877 = !DILexicalBlockFile(scope: !3869, file: !260, discriminator: 3)
!3878 = !DILocation(line: 1306, column: 8, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !3777, file: !260, line: 1306, column: 8)
!3880 = !DILocation(line: 1306, column: 8, scope: !3777)
!3881 = !DILocation(line: 1307, column: 5, scope: !3879)
!3882 = !DILocation(line: 1309, column: 4, scope: !3777)
!3883 = !DILocation(line: 1310, column: 8, scope: !3884)
!3884 = distinct !DILexicalBlock(scope: !3777, file: !260, line: 1310, column: 8)
!3885 = !DILocation(line: 1310, column: 10, scope: !3884)
!3886 = !DILocation(line: 1310, column: 8, scope: !3777)
!3887 = !DILocation(line: 1311, column: 5, scope: !3884)
!3888 = !DILocation(line: 1313, column: 6, scope: !3777)
!3889 = !DILocation(line: 1313, column: 12, scope: !3777)
!3890 = !DILocation(line: 1316, column: 8, scope: !3891)
!3891 = distinct !DILexicalBlock(scope: !3777, file: !260, line: 1316, column: 8)
!3892 = !DILocation(line: 1316, column: 12, scope: !3891)
!3893 = !DILocation(line: 1316, column: 8, scope: !3777)
!3894 = !DILocation(line: 1317, column: 5, scope: !3891)
!3895 = !DILocation(line: 1318, column: 4, scope: !3777)
!3896 = !DILocation(line: 1321, column: 4, scope: !3777)
!3897 = distinct !{!3897, !3896}
!3898 = !DILocation(line: 1321, column: 14, scope: !3899)
!3899 = !DILexicalBlockFile(scope: !3900, file: !260, discriminator: 1)
!3900 = distinct !DILexicalBlock(scope: !3901, file: !260, line: 1321, column: 13)
!3901 = distinct !DILexicalBlock(scope: !3777, file: !260, line: 1321, column: 7)
!3902 = !DILocation(line: 1321, column: 25, scope: !3899)
!3903 = !DILocation(line: 1321, column: 13, scope: !3899)
!3904 = !DILocation(line: 1321, column: 41, scope: !3905)
!3905 = !DILexicalBlockFile(scope: !3900, file: !260, discriminator: 2)
!3906 = !DILocation(line: 1321, column: 33, scope: !3905)
!3907 = !DILocation(line: 1321, column: 75, scope: !3908)
!3908 = !DILexicalBlockFile(scope: !3901, file: !260, discriminator: 3)
!3909 = !DILocation(line: 1323, column: 4, scope: !3777)
!3910 = !DILocation(line: 1324, column: 9, scope: !3777)
!3911 = !DILocation(line: 1324, column: 7, scope: !3777)
!3912 = !DILocation(line: 1325, column: 4, scope: !3777)
!3913 = distinct !{!3913, !3912}
!3914 = !DILocation(line: 1325, column: 14, scope: !3915)
!3915 = !DILexicalBlockFile(scope: !3916, file: !260, discriminator: 1)
!3916 = distinct !DILexicalBlock(scope: !3917, file: !260, line: 1325, column: 13)
!3917 = distinct !DILexicalBlock(scope: !3777, file: !260, line: 1325, column: 7)
!3918 = !DILocation(line: 1325, column: 25, scope: !3915)
!3919 = !DILocation(line: 1325, column: 13, scope: !3915)
!3920 = !DILocation(line: 1325, column: 41, scope: !3921)
!3921 = !DILexicalBlockFile(scope: !3916, file: !260, discriminator: 2)
!3922 = !DILocation(line: 1325, column: 127, scope: !3921)
!3923 = !DILocation(line: 1325, column: 33, scope: !3921)
!3924 = !DILocation(line: 1325, column: 131, scope: !3925)
!3925 = !DILexicalBlockFile(scope: !3917, file: !260, discriminator: 3)
!3926 = !DILocation(line: 1327, column: 8, scope: !3927)
!3927 = distinct !DILexicalBlock(scope: !3777, file: !260, line: 1327, column: 8)
!3928 = !DILocation(line: 1327, column: 8, scope: !3777)
!3929 = !DILocation(line: 1328, column: 5, scope: !3927)
!3930 = !DILocation(line: 1329, column: 4, scope: !3777)
!3931 = !DILocation(line: 1331, column: 8, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3777, file: !260, line: 1331, column: 8)
!3933 = !DILocation(line: 1331, column: 10, scope: !3932)
!3934 = !DILocation(line: 1331, column: 8, scope: !3777)
!3935 = !DILocation(line: 1332, column: 5, scope: !3932)
!3936 = !DILocation(line: 1334, column: 6, scope: !3777)
!3937 = !DILocation(line: 1334, column: 12, scope: !3777)
!3938 = !DILocation(line: 1337, column: 8, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3777, file: !260, line: 1337, column: 8)
!3940 = !DILocation(line: 1337, column: 12, scope: !3939)
!3941 = !DILocation(line: 1337, column: 8, scope: !3777)
!3942 = !DILocation(line: 1338, column: 5, scope: !3939)
!3943 = !DILocation(line: 1340, column: 4, scope: !3777)
!3944 = !DILocation(line: 1343, column: 4, scope: !3777)
!3945 = distinct !{!3945, !3944}
!3946 = !DILocation(line: 1343, column: 14, scope: !3947)
!3947 = !DILexicalBlockFile(scope: !3948, file: !260, discriminator: 1)
!3948 = distinct !DILexicalBlock(scope: !3949, file: !260, line: 1343, column: 13)
!3949 = distinct !DILexicalBlock(scope: !3777, file: !260, line: 1343, column: 7)
!3950 = !DILocation(line: 1343, column: 25, scope: !3947)
!3951 = !DILocation(line: 1343, column: 13, scope: !3947)
!3952 = !DILocation(line: 1343, column: 41, scope: !3953)
!3953 = !DILexicalBlockFile(scope: !3948, file: !260, discriminator: 2)
!3954 = !DILocation(line: 1343, column: 90, scope: !3953)
!3955 = !DILocation(line: 1343, column: 78, scope: !3953)
!3956 = !DILocation(line: 1343, column: 33, scope: !3953)
!3957 = !DILocation(line: 1343, column: 99, scope: !3958)
!3958 = !DILexicalBlockFile(scope: !3949, file: !260, discriminator: 3)
!3959 = !DILocation(line: 1344, column: 4, scope: !3777)
!3960 = !DILocation(line: 1264, column: 2, scope: !3961)
!3961 = !DILexicalBlockFile(scope: !3561, file: !260, discriminator: 1)
!3962 = distinct !{!3962, !3772}
!3963 = !DILocation(line: 1363, column: 8, scope: !3964)
!3964 = distinct !DILexicalBlock(scope: !3561, file: !260, line: 1363, column: 6)
!3965 = !DILocation(line: 1363, column: 17, scope: !3964)
!3966 = !DILocation(line: 1363, column: 12, scope: !3964)
!3967 = !DILocation(line: 1363, column: 6, scope: !3561)
!3968 = !DILocation(line: 1364, column: 8, scope: !3964)
!3969 = !DILocation(line: 1364, column: 3, scope: !3964)
!3970 = !DILocation(line: 1367, column: 12, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !3964, file: !260, line: 1365, column: 7)
!3972 = !DILocation(line: 1367, column: 20, scope: !3971)
!3973 = !DILocation(line: 1367, column: 16, scope: !3971)
!3974 = !DILocation(line: 1367, column: 39, scope: !3971)
!3975 = !DILocation(line: 1367, column: 10, scope: !3971)
!3976 = !DILocation(line: 1367, column: 8, scope: !3971)
!3977 = !DILocation(line: 1368, column: 27, scope: !3971)
!3978 = !DILocation(line: 1368, column: 3, scope: !3971)
!3979 = !DILocation(line: 1371, column: 20, scope: !3561)
!3980 = !DILocation(line: 1371, column: 2, scope: !3561)
!3981 = !DILocation(line: 1371, column: 8, scope: !3561)
!3982 = !DILocation(line: 1371, column: 17, scope: !3561)
!3983 = !DILocation(line: 1372, column: 19, scope: !3561)
!3984 = !DILocation(line: 1372, column: 2, scope: !3561)
!3985 = !DILocation(line: 1372, column: 8, scope: !3561)
!3986 = !DILocation(line: 1372, column: 16, scope: !3561)
!3987 = !DILocation(line: 1373, column: 20, scope: !3561)
!3988 = !DILocation(line: 1373, column: 2, scope: !3561)
!3989 = !DILocation(line: 1373, column: 8, scope: !3561)
!3990 = !DILocation(line: 1373, column: 17, scope: !3561)
!3991 = !DILocation(line: 1375, column: 2, scope: !3561)
!3992 = distinct !{!3992, !3991}
!3993 = !DILocation(line: 1375, column: 12, scope: !3994)
!3994 = !DILexicalBlockFile(scope: !3995, file: !260, discriminator: 1)
!3995 = distinct !DILexicalBlock(scope: !3996, file: !260, line: 1375, column: 11)
!3996 = distinct !DILexicalBlock(scope: !3561, file: !260, line: 1375, column: 5)
!3997 = !DILocation(line: 1375, column: 23, scope: !3994)
!3998 = !DILocation(line: 1375, column: 11, scope: !3994)
!3999 = !DILocation(line: 1375, column: 39, scope: !4000)
!4000 = !DILexicalBlockFile(scope: !3995, file: !260, discriminator: 2)
!4001 = !DILocation(line: 1375, column: 124, scope: !4000)
!4002 = !DILocation(line: 1375, column: 131, scope: !4000)
!4003 = !DILocation(line: 1375, column: 151, scope: !4000)
!4004 = !DILocation(line: 1375, column: 158, scope: !4000)
!4005 = !DILocation(line: 1375, column: 164, scope: !4000)
!4006 = !DILocation(line: 1375, column: 157, scope: !4000)
!4007 = !DILocation(line: 1375, column: 31, scope: !4000)
!4008 = !DILocation(line: 1375, column: 174, scope: !4009)
!4009 = !DILexicalBlockFile(scope: !3996, file: !260, discriminator: 3)
!4010 = !DILocation(line: 1378, column: 9, scope: !3561)
!4011 = !DILocation(line: 1378, column: 2, scope: !3561)
!4012 = !DILocation(line: 1381, column: 2, scope: !3561)
!4013 = distinct !{!4013, !4012}
!4014 = !DILocation(line: 1381, column: 12, scope: !4015)
!4015 = !DILexicalBlockFile(scope: !4016, file: !260, discriminator: 1)
!4016 = distinct !DILexicalBlock(scope: !4017, file: !260, line: 1381, column: 11)
!4017 = distinct !DILexicalBlock(scope: !3561, file: !260, line: 1381, column: 5)
!4018 = !DILocation(line: 1381, column: 23, scope: !4015)
!4019 = !DILocation(line: 1381, column: 11, scope: !4015)
!4020 = !DILocation(line: 1381, column: 39, scope: !4021)
!4021 = !DILexicalBlockFile(scope: !4016, file: !260, discriminator: 2)
!4022 = !DILocation(line: 1381, column: 31, scope: !4021)
!4023 = !DILocation(line: 1381, column: 108, scope: !4024)
!4024 = !DILexicalBlockFile(scope: !4017, file: !260, discriminator: 3)
!4025 = !DILocation(line: 1382, column: 2, scope: !3561)
!4026 = !DILocation(line: 1383, column: 1, scope: !3561)
!4027 = distinct !DISubprogram(name: "h_inflateEnd", scope: !260, file: !260, line: 1599, type: !1207, isLocal: false, isDefinition: true, scopeLine: 1600, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !530)
!4028 = !DILocalVariable(name: "strm", arg: 1, scope: !4027, file: !260, line: 1599, type: !495)
!4029 = !DILocation(line: 1599, column: 28, scope: !4027)
!4030 = !DILocalVariable(name: "rc", scope: !4027, file: !260, line: 1601, type: !272)
!4031 = !DILocation(line: 1601, column: 6, scope: !4027)
!4032 = !DILocalVariable(name: "h", scope: !4027, file: !260, line: 1602, type: !1214)
!4033 = !DILocation(line: 1602, column: 15, scope: !4027)
!4034 = !DILocalVariable(name: "s", scope: !4027, file: !260, line: 1603, type: !268)
!4035 = !DILocation(line: 1603, column: 19, scope: !4027)
!4036 = !DILocalVariable(name: "zedc", scope: !4027, file: !260, line: 1604, type: !468)
!4037 = !DILocation(line: 1604, column: 16, scope: !4027)
!4038 = !DILocalVariable(name: "ibuf_bytes", scope: !4027, file: !260, line: 1605, type: !272)
!4039 = !DILocation(line: 1605, column: 6, scope: !4027)
!4040 = !DILocalVariable(name: "obuf_bytes", scope: !4027, file: !260, line: 1605, type: !272)
!4041 = !DILocation(line: 1605, column: 18, scope: !4027)
!4042 = !DILocation(line: 1607, column: 6, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !4027, file: !260, line: 1607, column: 6)
!4044 = !DILocation(line: 1607, column: 11, scope: !4043)
!4045 = !DILocation(line: 1607, column: 6, scope: !4027)
!4046 = !DILocation(line: 1608, column: 3, scope: !4043)
!4047 = !DILocation(line: 1610, column: 25, scope: !4027)
!4048 = !DILocation(line: 1610, column: 31, scope: !4027)
!4049 = !DILocation(line: 1610, column: 6, scope: !4027)
!4050 = !DILocation(line: 1610, column: 4, scope: !4027)
!4051 = !DILocation(line: 1611, column: 6, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !4027, file: !260, line: 1611, column: 6)
!4053 = !DILocation(line: 1611, column: 8, scope: !4052)
!4054 = !DILocation(line: 1611, column: 6, scope: !4027)
!4055 = !DILocation(line: 1612, column: 3, scope: !4052)
!4056 = !DILocation(line: 1613, column: 7, scope: !4027)
!4057 = !DILocation(line: 1613, column: 10, scope: !4027)
!4058 = !DILocation(line: 1613, column: 4, scope: !4027)
!4059 = !DILocation(line: 1614, column: 24, scope: !4027)
!4060 = !DILocation(line: 1614, column: 27, scope: !4027)
!4061 = !DILocation(line: 1614, column: 9, scope: !4027)
!4062 = !DILocation(line: 1614, column: 7, scope: !4027)
!4063 = !DILocation(line: 1616, column: 15, scope: !4027)
!4064 = !DILocation(line: 1616, column: 18, scope: !4027)
!4065 = !DILocation(line: 1616, column: 25, scope: !4027)
!4066 = !DILocation(line: 1616, column: 28, scope: !4027)
!4067 = !DILocation(line: 1616, column: 23, scope: !4027)
!4068 = !DILocation(line: 1616, column: 13, scope: !4027)
!4069 = !DILocation(line: 1617, column: 15, scope: !4027)
!4070 = !DILocation(line: 1617, column: 18, scope: !4027)
!4071 = !DILocation(line: 1617, column: 25, scope: !4027)
!4072 = !DILocation(line: 1617, column: 28, scope: !4027)
!4073 = !DILocation(line: 1617, column: 23, scope: !4027)
!4074 = !DILocation(line: 1617, column: 13, scope: !4027)
!4075 = !DILocation(line: 1618, column: 6, scope: !4076)
!4076 = distinct !DILexicalBlock(scope: !4027, file: !260, line: 1618, column: 6)
!4077 = !DILocation(line: 1618, column: 17, scope: !4076)
!4078 = !DILocation(line: 1618, column: 20, scope: !4079)
!4079 = !DILexicalBlockFile(scope: !4076, file: !260, discriminator: 1)
!4080 = !DILocation(line: 1618, column: 6, scope: !4079)
!4081 = !DILocation(line: 1619, column: 3, scope: !4076)
!4082 = distinct !{!4082, !4081}
!4083 = !DILocation(line: 1619, column: 13, scope: !4084)
!4084 = !DILexicalBlockFile(scope: !4085, file: !260, discriminator: 1)
!4085 = distinct !DILexicalBlock(scope: !4086, file: !260, line: 1619, column: 12)
!4086 = distinct !DILexicalBlock(scope: !4076, file: !260, line: 1619, column: 6)
!4087 = !DILocation(line: 1619, column: 24, scope: !4084)
!4088 = !DILocation(line: 1619, column: 12, scope: !4084)
!4089 = !DILocation(line: 1619, column: 40, scope: !4090)
!4090 = !DILexicalBlockFile(scope: !4085, file: !260, discriminator: 2)
!4091 = !DILocation(line: 1619, column: 123, scope: !4090)
!4092 = !DILocation(line: 1619, column: 129, scope: !4090)
!4093 = !DILocation(line: 1619, column: 141, scope: !4090)
!4094 = !DILocation(line: 1619, column: 32, scope: !4090)
!4095 = !DILocation(line: 1619, column: 154, scope: !4096)
!4096 = !DILexicalBlockFile(scope: !4086, file: !260, discriminator: 3)
!4097 = !DILocation(line: 1619, column: 154, scope: !4098)
!4098 = !DILexicalBlockFile(scope: !4086, file: !260, discriminator: 4)
!4099 = !DILocation(line: 1622, column: 23, scope: !4027)
!4100 = !DILocation(line: 1622, column: 7, scope: !4027)
!4101 = !DILocation(line: 1622, column: 5, scope: !4027)
!4102 = !DILocation(line: 1624, column: 12, scope: !4027)
!4103 = !DILocation(line: 1624, column: 18, scope: !4027)
!4104 = !DILocation(line: 1624, column: 21, scope: !4027)
!4105 = !DILocation(line: 1624, column: 32, scope: !4027)
!4106 = !DILocation(line: 1624, column: 35, scope: !4027)
!4107 = !DILocation(line: 1624, column: 47, scope: !4027)
!4108 = !DILocation(line: 1624, column: 50, scope: !4027)
!4109 = !DILocation(line: 1624, column: 52, scope: !4027)
!4110 = !DILocation(line: 1624, column: 2, scope: !4027)
!4111 = !DILocation(line: 1625, column: 30, scope: !4027)
!4112 = !DILocation(line: 1625, column: 33, scope: !4027)
!4113 = !DILocation(line: 1625, column: 15, scope: !4027)
!4114 = !DILocation(line: 1625, column: 2, scope: !4027)
!4115 = !DILocation(line: 1626, column: 9, scope: !4027)
!4116 = !DILocation(line: 1626, column: 2, scope: !4027)
!4117 = !DILocation(line: 1627, column: 11, scope: !4027)
!4118 = !DILocation(line: 1627, column: 2, scope: !4027)
!4119 = !DILocation(line: 1628, column: 1, scope: !4027)
!4120 = distinct !DISubprogram(name: "zedc_hw_init", scope: !260, file: !260, line: 1638, type: !4121, isLocal: false, isDefinition: true, scopeLine: 1639, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !530)
!4121 = !DISubroutineType(types: !4122)
!4122 = !{null}
!4123 = !DILocalVariable(name: "verb", scope: !4120, file: !260, line: 1640, type: !412)
!4124 = !DILocation(line: 1640, column: 8, scope: !4120)
!4125 = !DILocation(line: 1640, column: 15, scope: !4120)
!4126 = !DILocalVariable(name: "accel", scope: !4120, file: !260, line: 1641, type: !412)
!4127 = !DILocation(line: 1641, column: 8, scope: !4120)
!4128 = !DILocation(line: 1641, column: 16, scope: !4120)
!4129 = !DILocalVariable(name: "ibuf_s", scope: !4120, file: !260, line: 1642, type: !412)
!4130 = !DILocation(line: 1642, column: 8, scope: !4120)
!4131 = !DILocation(line: 1642, column: 17, scope: !4120)
!4132 = !DILocalVariable(name: "obuf_s", scope: !4120, file: !260, line: 1643, type: !412)
!4133 = !DILocation(line: 1643, column: 8, scope: !4120)
!4134 = !DILocation(line: 1643, column: 17, scope: !4120)
!4135 = !DILocalVariable(name: "card", scope: !4120, file: !260, line: 1644, type: !412)
!4136 = !DILocation(line: 1644, column: 8, scope: !4120)
!4137 = !DILocation(line: 1644, column: 15, scope: !4120)
!4138 = !DILocalVariable(name: "xcheck_str", scope: !4120, file: !260, line: 1645, type: !412)
!4139 = !DILocation(line: 1645, column: 8, scope: !4120)
!4140 = !DILocation(line: 1645, column: 21, scope: !4120)
!4141 = !DILocation(line: 1647, column: 19, scope: !4120)
!4142 = !DILocation(line: 1647, column: 2, scope: !4120)
!4143 = !DILocation(line: 1648, column: 19, scope: !4120)
!4144 = !DILocation(line: 1648, column: 2, scope: !4120)
!4145 = !DILocation(line: 1650, column: 6, scope: !4146)
!4146 = distinct !DILexicalBlock(scope: !4120, file: !260, line: 1650, column: 6)
!4147 = !DILocation(line: 1650, column: 11, scope: !4146)
!4148 = !DILocation(line: 1650, column: 6, scope: !4120)
!4149 = !DILocalVariable(name: "z", scope: !4150, file: !260, line: 1651, type: !272)
!4150 = distinct !DILexicalBlock(scope: !4146, file: !260, line: 1650, column: 19)
!4151 = !DILocation(line: 1651, column: 7, scope: !4150)
!4152 = !DILocalVariable(name: "c", scope: !4150, file: !260, line: 1651, type: !272)
!4153 = !DILocation(line: 1651, column: 10, scope: !4150)
!4154 = !DILocation(line: 1653, column: 29, scope: !4150)
!4155 = !DILocation(line: 1653, column: 18, scope: !4150)
!4156 = !DILocation(line: 1653, column: 16, scope: !4150)
!4157 = !DILocation(line: 1654, column: 8, scope: !4150)
!4158 = !DILocation(line: 1654, column: 21, scope: !4150)
!4159 = !DILocation(line: 1654, column: 35, scope: !4150)
!4160 = !DILocation(line: 1654, column: 5, scope: !4150)
!4161 = !DILocation(line: 1655, column: 8, scope: !4150)
!4162 = !DILocation(line: 1655, column: 21, scope: !4150)
!4163 = !DILocation(line: 1655, column: 35, scope: !4150)
!4164 = !DILocation(line: 1655, column: 5, scope: !4150)
!4165 = !DILocation(line: 1657, column: 14, scope: !4150)
!4166 = !DILocation(line: 1657, column: 3, scope: !4150)
!4167 = !DILocation(line: 1658, column: 18, scope: !4150)
!4168 = !DILocation(line: 1658, column: 3, scope: !4150)
!4169 = !DILocation(line: 1659, column: 2, scope: !4150)
!4170 = !DILocation(line: 1661, column: 6, scope: !4171)
!4171 = distinct !DILexicalBlock(scope: !4120, file: !260, line: 1661, column: 6)
!4172 = !DILocation(line: 1661, column: 12, scope: !4171)
!4173 = !DILocation(line: 1661, column: 6, scope: !4120)
!4174 = !DILocation(line: 1662, column: 15, scope: !4175)
!4175 = distinct !DILexicalBlock(scope: !4176, file: !260, line: 1662, column: 7)
!4176 = distinct !DILexicalBlock(scope: !4171, file: !260, line: 1661, column: 20)
!4177 = !DILocation(line: 1662, column: 7, scope: !4175)
!4178 = !DILocation(line: 1662, column: 33, scope: !4175)
!4179 = !DILocation(line: 1662, column: 7, scope: !4176)
!4180 = !DILocation(line: 1663, column: 21, scope: !4175)
!4181 = !DILocation(line: 1663, column: 4, scope: !4175)
!4182 = !DILocation(line: 1665, column: 21, scope: !4175)
!4183 = !DILocation(line: 1666, column: 2, scope: !4176)
!4184 = !DILocation(line: 1668, column: 6, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !4120, file: !260, line: 1668, column: 6)
!4186 = !DILocation(line: 1668, column: 11, scope: !4185)
!4187 = !DILocation(line: 1668, column: 6, scope: !4120)
!4188 = !DILocation(line: 1669, column: 15, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4190, file: !260, line: 1669, column: 7)
!4190 = distinct !DILexicalBlock(scope: !4185, file: !260, line: 1668, column: 19)
!4191 = !DILocation(line: 1669, column: 7, scope: !4189)
!4192 = !DILocation(line: 1669, column: 31, scope: !4189)
!4193 = !DILocation(line: 1669, column: 7, scope: !4190)
!4194 = !DILocation(line: 1670, column: 14, scope: !4189)
!4195 = !DILocation(line: 1670, column: 4, scope: !4189)
!4196 = !DILocation(line: 1672, column: 21, scope: !4189)
!4197 = !DILocation(line: 1672, column: 16, scope: !4189)
!4198 = !DILocation(line: 1672, column: 14, scope: !4189)
!4199 = !DILocation(line: 1673, column: 2, scope: !4190)
!4200 = !DILocation(line: 1675, column: 6, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !4120, file: !260, line: 1675, column: 6)
!4202 = !DILocation(line: 1675, column: 17, scope: !4201)
!4203 = !DILocation(line: 1675, column: 6, scope: !4120)
!4204 = !DILocation(line: 1676, column: 28, scope: !4201)
!4205 = !DILocation(line: 1676, column: 17, scope: !4201)
!4206 = !DILocation(line: 1676, column: 15, scope: !4201)
!4207 = !DILocation(line: 1676, column: 3, scope: !4201)
!4208 = !DILocation(line: 1678, column: 6, scope: !4209)
!4209 = distinct !DILexicalBlock(scope: !4120, file: !260, line: 1678, column: 6)
!4210 = !DILocation(line: 1678, column: 13, scope: !4209)
!4211 = !DILocation(line: 1678, column: 6, scope: !4120)
!4212 = !DILocation(line: 1679, column: 32, scope: !4209)
!4213 = !DILocation(line: 1679, column: 21, scope: !4209)
!4214 = !DILocation(line: 1679, column: 19, scope: !4209)
!4215 = !DILocation(line: 1679, column: 3, scope: !4209)
!4216 = !DILocation(line: 1681, column: 6, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4120, file: !260, line: 1681, column: 6)
!4218 = !DILocation(line: 1681, column: 13, scope: !4217)
!4219 = !DILocation(line: 1681, column: 6, scope: !4120)
!4220 = !DILocation(line: 1682, column: 32, scope: !4217)
!4221 = !DILocation(line: 1682, column: 21, scope: !4217)
!4222 = !DILocation(line: 1682, column: 19, scope: !4217)
!4223 = !DILocation(line: 1682, column: 3, scope: !4217)
!4224 = !DILocation(line: 1687, column: 6, scope: !4225)
!4225 = distinct !DILexicalBlock(scope: !4120, file: !260, line: 1687, column: 6)
!4226 = !DILocation(line: 1687, column: 23, scope: !4225)
!4227 = !DILocation(line: 1687, column: 6, scope: !4120)
!4228 = !DILocation(line: 1688, column: 22, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !4225, file: !260, line: 1687, column: 34)
!4230 = !DILocation(line: 1690, column: 22, scope: !4229)
!4231 = !DILocation(line: 1692, column: 2, scope: !4229)
!4232 = !DILocation(line: 1693, column: 1, scope: !4120)
!4233 = distinct !DISubprogram(name: "zedc_hw_done", scope: !260, file: !260, line: 1695, type: !4121, isLocal: false, isDefinition: true, scopeLine: 1696, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !530)
!4234 = !DILocalVariable(name: "card_no", scope: !4233, file: !260, line: 1697, type: !275)
!4235 = !DILocation(line: 1697, column: 15, scope: !4233)
!4236 = !DILocalVariable(name: "flags", scope: !4233, file: !260, line: 1698, type: !272)
!4237 = !DILocation(line: 1698, column: 6, scope: !4233)
!4238 = !DILocation(line: 1698, column: 15, scope: !4233)
!4239 = !DILocation(line: 1698, column: 36, scope: !4233)
!4240 = !DILocation(line: 1698, column: 34, scope: !4233)
!4241 = !DILocation(line: 1700, column: 6, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !4233, file: !260, line: 1700, column: 6)
!4243 = !DILocation(line: 1700, column: 17, scope: !4242)
!4244 = !DILocation(line: 1700, column: 15, scope: !4242)
!4245 = !DILocation(line: 1700, column: 6, scope: !4233)
!4246 = !DILocation(line: 1701, column: 3, scope: !4247)
!4247 = distinct !DILexicalBlock(scope: !4242, file: !260, line: 1700, column: 25)
!4248 = !DILocation(line: 1702, column: 3, scope: !4247)
!4249 = !DILocation(line: 1703, column: 2, scope: !4247)
!4250 = !DILocation(line: 1705, column: 7, scope: !4251)
!4251 = distinct !DILexicalBlock(scope: !4233, file: !260, line: 1705, column: 6)
!4252 = !DILocation(line: 1705, column: 13, scope: !4251)
!4253 = !DILocation(line: 1705, column: 40, scope: !4251)
!4254 = !DILocation(line: 1705, column: 6, scope: !4233)
!4255 = !DILocation(line: 1706, column: 3, scope: !4251)
!4256 = !DILocation(line: 1708, column: 15, scope: !4257)
!4257 = distinct !DILexicalBlock(scope: !4233, file: !260, line: 1708, column: 2)
!4258 = !DILocation(line: 1708, column: 7, scope: !4257)
!4259 = !DILocation(line: 1708, column: 20, scope: !4260)
!4260 = !DILexicalBlockFile(scope: !4261, file: !260, discriminator: 1)
!4261 = distinct !DILexicalBlock(scope: !4257, file: !260, line: 1708, column: 2)
!4262 = !DILocation(line: 1708, column: 28, scope: !4260)
!4263 = !DILocation(line: 1708, column: 2, scope: !4260)
!4264 = !DILocation(line: 1709, column: 18, scope: !4265)
!4265 = distinct !DILexicalBlock(scope: !4266, file: !260, line: 1709, column: 7)
!4266 = distinct !DILexicalBlock(scope: !4261, file: !260, line: 1708, column: 47)
!4267 = !DILocation(line: 1709, column: 7, scope: !4265)
!4268 = !DILocation(line: 1709, column: 27, scope: !4265)
!4269 = !DILocation(line: 1709, column: 7, scope: !4266)
!4270 = !DILocation(line: 1710, column: 4, scope: !4265)
!4271 = !DILocation(line: 1711, column: 25, scope: !4266)
!4272 = !DILocation(line: 1711, column: 14, scope: !4266)
!4273 = !DILocation(line: 1711, column: 3, scope: !4266)
!4274 = !DILocation(line: 1712, column: 2, scope: !4266)
!4275 = !DILocation(line: 1708, column: 43, scope: !4276)
!4276 = !DILexicalBlockFile(scope: !4261, file: !260, discriminator: 2)
!4277 = !DILocation(line: 1708, column: 2, scope: !4276)
!4278 = distinct !{!4278, !4279}
!4279 = !DILocation(line: 1708, column: 2, scope: !4233)
!4280 = !DILocation(line: 1713, column: 1, scope: !4233)
!4281 = distinct !DISubprogram(name: "output_buffer_bytes", scope: !260, file: !260, line: 88, type: !3551, isLocal: true, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !530)
!4282 = !DILocalVariable(name: "s", arg: 1, scope: !4281, file: !260, line: 88, type: !268)
!4283 = !DILocation(line: 88, column: 49, scope: !4281)
!4284 = !DILocation(line: 90, column: 9, scope: !4281)
!4285 = !DILocation(line: 90, column: 12, scope: !4281)
!4286 = !DILocation(line: 90, column: 19, scope: !4281)
!4287 = !DILocation(line: 90, column: 22, scope: !4281)
!4288 = !DILocation(line: 90, column: 17, scope: !4281)
!4289 = !DILocation(line: 90, column: 2, scope: !4281)
!4290 = distinct !DISubprogram(name: "__in_hdr_bits", scope: !260, file: !260, line: 1155, type: !4291, isLocal: true, isDefinition: true, scopeLine: 1156, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !530)
!4291 = !DISubroutineType(types: !4292)
!4292 = !{!272, !908}
!4293 = !DILocalVariable(name: "strm", arg: 1, scope: !4290, file: !260, line: 1155, type: !908)
!4294 = !DILocation(line: 1155, column: 46, scope: !4290)
!4295 = !DILocalVariable(name: "headerarea_size", scope: !4290, file: !260, line: 1157, type: !275)
!4296 = !DILocation(line: 1157, column: 15, scope: !4290)
!4297 = !DILocation(line: 1158, column: 5, scope: !4290)
!4298 = !DILocation(line: 1158, column: 11, scope: !4290)
!4299 = !DILocation(line: 1158, column: 23, scope: !4290)
!4300 = !DILocation(line: 1158, column: 29, scope: !4290)
!4301 = !DILocation(line: 1158, column: 21, scope: !4290)
!4302 = !DILocation(line: 1158, column: 36, scope: !4290)
!4303 = !DILocation(line: 1158, column: 41, scope: !4290)
!4304 = !DILocation(line: 1158, column: 46, scope: !4290)
!4305 = !DILocalVariable(name: "btype", scope: !4290, file: !260, line: 1159, type: !290)
!4306 = !DILocation(line: 1159, column: 10, scope: !4290)
!4307 = !DILocation(line: 1159, column: 19, scope: !4290)
!4308 = !DILocation(line: 1159, column: 25, scope: !4290)
!4309 = !DILocation(line: 1159, column: 35, scope: !4290)
!4310 = !DILocation(line: 1159, column: 52, scope: !4290)
!4311 = !DILocation(line: 1159, column: 18, scope: !4290)
!4312 = !DILocalVariable(name: "btype_str", scope: !4290, file: !260, line: 1160, type: !482)
!4313 = !DILocation(line: 1160, column: 14, scope: !4290)
!4314 = !DILocation(line: 1163, column: 2, scope: !4290)
!4315 = distinct !{!4315, !4314}
!4316 = !DILocation(line: 1163, column: 12, scope: !4317)
!4317 = !DILexicalBlockFile(scope: !4318, file: !260, discriminator: 1)
!4318 = distinct !DILexicalBlock(scope: !4319, file: !260, line: 1163, column: 11)
!4319 = distinct !DILexicalBlock(scope: !4290, file: !260, line: 1163, column: 5)
!4320 = !DILocation(line: 1163, column: 23, scope: !4317)
!4321 = !DILocation(line: 1163, column: 11, scope: !4317)
!4322 = !DILocation(line: 1163, column: 39, scope: !4323)
!4323 = !DILexicalBlockFile(scope: !4318, file: !260, discriminator: 2)
!4324 = !DILocation(line: 1163, column: 187, scope: !4323)
!4325 = !DILocation(line: 1163, column: 204, scope: !4323)
!4326 = !DILocation(line: 1163, column: 210, scope: !4323)
!4327 = !DILocation(line: 1163, column: 218, scope: !4323)
!4328 = !DILocation(line: 1163, column: 224, scope: !4323)
!4329 = !DILocation(line: 1163, column: 235, scope: !4323)
!4330 = !DILocation(line: 1163, column: 241, scope: !4323)
!4331 = !DILocation(line: 1163, column: 251, scope: !4323)
!4332 = !DILocation(line: 1163, column: 257, scope: !4323)
!4333 = !DILocation(line: 1163, column: 269, scope: !4323)
!4334 = !DILocation(line: 1163, column: 275, scope: !4323)
!4335 = !DILocation(line: 1163, column: 299, scope: !4323)
!4336 = !DILocation(line: 1163, column: 289, scope: !4323)
!4337 = !DILocation(line: 1163, column: 31, scope: !4323)
!4338 = !DILocation(line: 1163, column: 308, scope: !4339)
!4339 = !DILexicalBlockFile(scope: !4319, file: !260, discriminator: 3)
!4340 = !DILocation(line: 1170, column: 9, scope: !4290)
!4341 = !DILocation(line: 1170, column: 15, scope: !4290)
!4342 = !DILocation(line: 1170, column: 2, scope: !4290)
!4343 = distinct !DISubprogram(name: "__in_hdr_scratch_len", scope: !260, file: !260, line: 1129, type: !4344, isLocal: true, isDefinition: true, scopeLine: 1130, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !530)
!4344 = !DISubroutineType(types: !4345)
!4345 = !{!275, !908}
!4346 = !DILocalVariable(name: "strm", arg: 1, scope: !4343, file: !260, line: 1129, type: !908)
!4347 = !DILocation(line: 1129, column: 62, scope: !4343)
!4348 = !DILocalVariable(name: "len", scope: !4343, file: !260, line: 1131, type: !275)
!4349 = !DILocation(line: 1131, column: 15, scope: !4343)
!4350 = !DILocation(line: 1133, column: 8, scope: !4343)
!4351 = !DILocation(line: 1133, column: 14, scope: !4343)
!4352 = !DILocation(line: 1133, column: 23, scope: !4343)
!4353 = !DILocation(line: 1133, column: 29, scope: !4343)
!4354 = !DILocation(line: 1133, column: 21, scope: !4343)
!4355 = !DILocation(line: 1133, column: 41, scope: !4343)
!4356 = !DILocation(line: 1133, column: 47, scope: !4343)
!4357 = !DILocation(line: 1133, column: 39, scope: !4343)
!4358 = !DILocation(line: 1134, column: 3, scope: !4343)
!4359 = !DILocation(line: 1134, column: 9, scope: !4343)
!4360 = !DILocation(line: 1133, column: 56, scope: !4343)
!4361 = !DILocation(line: 1134, column: 22, scope: !4343)
!4362 = !DILocation(line: 1134, column: 28, scope: !4343)
!4363 = !DILocation(line: 1134, column: 20, scope: !4343)
!4364 = !DILocation(line: 1133, column: 6, scope: !4343)
!4365 = !DILocation(line: 1136, column: 20, scope: !4343)
!4366 = !DILocation(line: 1136, column: 24, scope: !4343)
!4367 = !DILocation(line: 1136, column: 9, scope: !4343)
!4368 = !DILocation(line: 1136, column: 2, scope: !4343)
!4369 = distinct !DISubprogram(name: "get_bits", scope: !260, file: !260, line: 1066, type: !4370, isLocal: true, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !530)
!4370 = !DISubroutineType(types: !4371)
!4371 = !{!272, !4372, !275, !4373}
!4372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64, align: 64)
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64, align: 64)
!4374 = !DILocalVariable(name: "e", arg: 1, scope: !4369, file: !260, line: 1066, type: !4372)
!4375 = !DILocation(line: 1066, column: 50, scope: !4369)
!4376 = !DILocalVariable(name: "bits", arg: 2, scope: !4369, file: !260, line: 1066, type: !275)
!4377 = !DILocation(line: 1066, column: 66, scope: !4369)
!4378 = !DILocalVariable(name: "d", arg: 3, scope: !4369, file: !260, line: 1067, type: !4373)
!4379 = !DILocation(line: 1067, column: 17, scope: !4369)
!4380 = !DILocalVariable(name: "rc", scope: !4369, file: !260, line: 1069, type: !272)
!4381 = !DILocation(line: 1069, column: 6, scope: !4369)
!4382 = !DILocalVariable(name: "b", scope: !4369, file: !260, line: 1070, type: !275)
!4383 = !DILocation(line: 1070, column: 15, scope: !4369)
!4384 = !DILocalVariable(name: "proc_bits", scope: !4369, file: !260, line: 1070, type: !275)
!4385 = !DILocation(line: 1070, column: 18, scope: !4369)
!4386 = !DILocalVariable(name: "idx", scope: !4369, file: !260, line: 1070, type: !275)
!4387 = !DILocation(line: 1070, column: 29, scope: !4369)
!4388 = !DILocalVariable(name: "data", scope: !4369, file: !260, line: 1071, type: !435)
!4389 = !DILocation(line: 1071, column: 11, scope: !4369)
!4390 = !DILocation(line: 1073, column: 19, scope: !4391)
!4391 = distinct !DILexicalBlock(scope: !4369, file: !260, line: 1073, column: 2)
!4392 = !DILocation(line: 1073, column: 22, scope: !4391)
!4393 = !DILocation(line: 1073, column: 17, scope: !4391)
!4394 = !DILocation(line: 1073, column: 39, scope: !4391)
!4395 = !DILocation(line: 1073, column: 42, scope: !4391)
!4396 = !DILocation(line: 1073, column: 37, scope: !4391)
!4397 = !DILocation(line: 1073, column: 49, scope: !4391)
!4398 = !DILocation(line: 1073, column: 7, scope: !4391)
!4399 = !DILocation(line: 1073, column: 54, scope: !4400)
!4400 = !DILexicalBlockFile(scope: !4401, file: !260, discriminator: 1)
!4401 = distinct !DILexicalBlock(scope: !4391, file: !260, line: 1073, column: 2)
!4402 = !DILocation(line: 1073, column: 58, scope: !4400)
!4403 = !DILocation(line: 1073, column: 56, scope: !4400)
!4404 = !DILocation(line: 1073, column: 2, scope: !4400)
!4405 = !DILocation(line: 1074, column: 3, scope: !4406)
!4406 = distinct !DILexicalBlock(scope: !4401, file: !260, line: 1073, column: 71)
!4407 = !DILocation(line: 1074, column: 10, scope: !4408)
!4408 = !DILexicalBlockFile(scope: !4409, file: !260, discriminator: 1)
!4409 = distinct !DILexicalBlock(scope: !4410, file: !260, line: 1074, column: 3)
!4410 = distinct !DILexicalBlock(scope: !4406, file: !260, line: 1074, column: 3)
!4411 = !DILocation(line: 1074, column: 20, scope: !4408)
!4412 = !DILocation(line: 1074, column: 24, scope: !4408)
!4413 = !DILocation(line: 1074, column: 27, scope: !4414)
!4414 = !DILexicalBlockFile(scope: !4409, file: !260, discriminator: 2)
!4415 = !DILocation(line: 1074, column: 31, scope: !4414)
!4416 = !DILocation(line: 1074, column: 29, scope: !4414)
!4417 = !DILocation(line: 1074, column: 3, scope: !4418)
!4418 = !DILexicalBlockFile(scope: !4410, file: !260, discriminator: 3)
!4419 = !DILocation(line: 1075, column: 9, scope: !4420)
!4420 = distinct !DILexicalBlock(scope: !4409, file: !260, line: 1074, column: 55)
!4421 = !DILocation(line: 1077, column: 8, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4420, file: !260, line: 1077, column: 8)
!4423 = !DILocation(line: 1077, column: 15, scope: !4422)
!4424 = !DILocation(line: 1077, column: 18, scope: !4422)
!4425 = !DILocation(line: 1077, column: 12, scope: !4422)
!4426 = !DILocation(line: 1077, column: 8, scope: !4420)
!4427 = !DILocation(line: 1078, column: 8, scope: !4428)
!4428 = distinct !DILexicalBlock(scope: !4422, file: !260, line: 1077, column: 28)
!4429 = !DILocation(line: 1079, column: 5, scope: !4428)
!4430 = !DILocation(line: 1081, column: 13, scope: !4431)
!4431 = distinct !DILexicalBlock(scope: !4420, file: !260, line: 1081, column: 8)
!4432 = !DILocation(line: 1081, column: 8, scope: !4431)
!4433 = !DILocation(line: 1081, column: 11, scope: !4431)
!4434 = !DILocation(line: 1081, column: 26, scope: !4431)
!4435 = !DILocation(line: 1081, column: 23, scope: !4431)
!4436 = !DILocation(line: 1081, column: 18, scope: !4431)
!4437 = !DILocation(line: 1081, column: 8, scope: !4420)
!4438 = !DILocation(line: 1082, column: 10, scope: !4431)
!4439 = !DILocation(line: 1082, column: 5, scope: !4431)
!4440 = !DILocation(line: 1083, column: 3, scope: !4420)
!4441 = !DILocation(line: 1074, column: 46, scope: !4442)
!4442 = !DILexicalBlockFile(scope: !4409, file: !260, discriminator: 4)
!4443 = !DILocation(line: 1074, column: 51, scope: !4442)
!4444 = !DILocation(line: 1074, column: 3, scope: !4442)
!4445 = distinct !{!4445, !4405}
!4446 = !DILocation(line: 1084, column: 13, scope: !4406)
!4447 = !DILocation(line: 1085, column: 2, scope: !4406)
!4448 = !DILocation(line: 1073, column: 67, scope: !4449)
!4449 = !DILexicalBlockFile(scope: !4401, file: !260, discriminator: 2)
!4450 = !DILocation(line: 1073, column: 2, scope: !4449)
!4451 = distinct !{!4451, !4452}
!4452 = !DILocation(line: 1073, column: 2, scope: !4369)
!4453 = !DILocation(line: 1086, column: 7, scope: !4369)
!4454 = !DILocation(line: 1086, column: 3, scope: !4369)
!4455 = !DILocation(line: 1086, column: 5, scope: !4369)
!4456 = !DILocation(line: 1087, column: 9, scope: !4369)
!4457 = !DILocation(line: 1087, column: 2, scope: !4369)
!4458 = distinct !DISubprogram(name: "drop_bits", scope: !260, file: !260, line: 1093, type: !4459, isLocal: true, isDefinition: true, scopeLine: 1094, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !530)
!4459 = !DISubroutineType(types: !4460)
!4460 = !{!272, !4372, !275}
!4461 = !DILocalVariable(name: "e", arg: 1, scope: !4458, file: !260, line: 1093, type: !4372)
!4462 = !DILocation(line: 1093, column: 51, scope: !4458)
!4463 = !DILocalVariable(name: "bits", arg: 2, scope: !4458, file: !260, line: 1093, type: !275)
!4464 = !DILocation(line: 1093, column: 67, scope: !4458)
!4465 = !DILocalVariable(name: "idx", scope: !4458, file: !260, line: 1095, type: !275)
!4466 = !DILocation(line: 1095, column: 15, scope: !4458)
!4467 = !DILocation(line: 1098, column: 8, scope: !4458)
!4468 = !DILocation(line: 1098, column: 11, scope: !4458)
!4469 = !DILocation(line: 1098, column: 18, scope: !4458)
!4470 = !DILocation(line: 1098, column: 21, scope: !4458)
!4471 = !DILocation(line: 1098, column: 33, scope: !4458)
!4472 = !DILocation(line: 1098, column: 31, scope: !4458)
!4473 = !DILocation(line: 1098, column: 39, scope: !4458)
!4474 = !DILocation(line: 1098, column: 15, scope: !4458)
!4475 = !DILocation(line: 1098, column: 6, scope: !4458)
!4476 = !DILocation(line: 1099, column: 6, scope: !4477)
!4477 = distinct !DILexicalBlock(scope: !4458, file: !260, line: 1099, column: 6)
!4478 = !DILocation(line: 1099, column: 13, scope: !4477)
!4479 = !DILocation(line: 1099, column: 16, scope: !4477)
!4480 = !DILocation(line: 1099, column: 10, scope: !4477)
!4481 = !DILocation(line: 1099, column: 6, scope: !4458)
!4482 = !DILocation(line: 1101, column: 3, scope: !4483)
!4483 = distinct !DILexicalBlock(scope: !4477, file: !260, line: 1099, column: 26)
!4484 = !DILocation(line: 1104, column: 11, scope: !4458)
!4485 = !DILocation(line: 1104, column: 2, scope: !4458)
!4486 = !DILocation(line: 1104, column: 5, scope: !4458)
!4487 = !DILocation(line: 1104, column: 9, scope: !4458)
!4488 = !DILocation(line: 1105, column: 18, scope: !4458)
!4489 = !DILocation(line: 1105, column: 21, scope: !4458)
!4490 = !DILocation(line: 1105, column: 33, scope: !4458)
!4491 = !DILocation(line: 1105, column: 31, scope: !4458)
!4492 = !DILocation(line: 1105, column: 39, scope: !4458)
!4493 = !DILocation(line: 1105, column: 2, scope: !4458)
!4494 = !DILocation(line: 1105, column: 5, scope: !4458)
!4495 = !DILocation(line: 1105, column: 15, scope: !4458)
!4496 = !DILocation(line: 1107, column: 2, scope: !4458)
!4497 = !DILocation(line: 1108, column: 1, scope: !4458)
!4498 = distinct !DISubprogram(name: "sync_to_byte", scope: !260, file: !260, line: 1115, type: !4499, isLocal: true, isDefinition: true, scopeLine: 1116, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !530)
!4499 = !DISubroutineType(types: !4500)
!4500 = !{!272, !4372}
!4501 = !DILocalVariable(name: "e", arg: 1, scope: !4498, file: !260, line: 1115, type: !4372)
!4502 = !DILocation(line: 1115, column: 54, scope: !4498)
!4503 = !DILocation(line: 1117, column: 6, scope: !4504)
!4504 = distinct !DILexicalBlock(scope: !4498, file: !260, line: 1117, column: 6)
!4505 = !DILocation(line: 1117, column: 9, scope: !4504)
!4506 = !DILocation(line: 1117, column: 19, scope: !4504)
!4507 = !DILocation(line: 1117, column: 6, scope: !4498)
!4508 = !DILocation(line: 1118, column: 3, scope: !4504)
!4509 = !DILocation(line: 1120, column: 2, scope: !4498)
!4510 = !DILocation(line: 1120, column: 5, scope: !4498)
!4511 = !DILocation(line: 1120, column: 15, scope: !4498)
!4512 = !DILocation(line: 1121, column: 2, scope: !4498)
!4513 = !DILocation(line: 1121, column: 5, scope: !4498)
!4514 = !DILocation(line: 1121, column: 8, scope: !4498)
!4515 = !DILocation(line: 1122, column: 2, scope: !4498)
!4516 = !DILocation(line: 1123, column: 1, scope: !4498)
!4517 = distinct !DISubprogram(name: "__reset_hdr_scratch_len", scope: !260, file: !260, line: 1173, type: !4518, isLocal: true, isDefinition: true, scopeLine: 1174, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !530)
!4518 = !DISubroutineType(types: !4519)
!4519 = !{null, !908}
!4520 = !DILocalVariable(name: "strm", arg: 1, scope: !4517, file: !260, line: 1173, type: !908)
!4521 = !DILocation(line: 1173, column: 57, scope: !4517)
!4522 = !DILocation(line: 1175, column: 2, scope: !4517)
!4523 = !DILocation(line: 1175, column: 8, scope: !4517)
!4524 = !DILocation(line: 1175, column: 15, scope: !4517)
!4525 = !DILocation(line: 1176, column: 2, scope: !4517)
!4526 = !DILocation(line: 1176, column: 8, scope: !4517)
!4527 = !DILocation(line: 1176, column: 18, scope: !4517)
!4528 = !DILocation(line: 1177, column: 2, scope: !4517)
!4529 = !DILocation(line: 1177, column: 8, scope: !4517)
!4530 = !DILocation(line: 1177, column: 17, scope: !4517)
!4531 = !DILocation(line: 1178, column: 2, scope: !4517)
!4532 = !DILocation(line: 1178, column: 8, scope: !4517)
!4533 = !DILocation(line: 1178, column: 19, scope: !4517)
!4534 = !DILocation(line: 1179, column: 2, scope: !4517)
!4535 = !DILocation(line: 1179, column: 8, scope: !4517)
!4536 = !DILocation(line: 1179, column: 21, scope: !4517)
!4537 = !DILocation(line: 1180, column: 1, scope: !4517)
