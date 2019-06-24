; ModuleID = '/home/lichi/Desktop/genwqe/[task]tools--genwqe_gzip/[inter]tools--genwqe_gzip.o.i'
source_filename = "/home/lichi/Desktop/genwqe/[task]tools--genwqe_gzip/[inter]tools--genwqe_gzip.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type opaque
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.gz_header_s = type { i32, i64, i32, i32, i8*, i32, i32, i8*, i32, i8*, i32, i32, i32 }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%struct.cpu_set_t = type { [16 x i64] }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@stdin = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [3 x i8] c"gz\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"GENWQE\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"ZLIB_ACCELERATOR\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"ZLIB_CARD\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"gunzip\00", align 1
@CHUNK_o = internal global i32 131072, align 4
@main.long_options = internal global [21 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i32 0, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 0, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 0, i32* null, i32 108 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i32 0, i32* null, i32 76 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 1, i32* null, i32 83 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 0, i32* null, i32 86 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 0, i32* null, i32 49 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 0, i32* null, i32 57 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i32 1, i32* null, i32 88 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0), i32 1, i32* null, i32 65 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i32 1, i32* null, i32 66 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 1, i32* null, i32 69 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32 1, i32* null, i32 78 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i32 1, i32* null, i32 67 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i32 1, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i32 1, i32* null, i32 111 }, %struct.option zeroinitializer], align 16
@.str.5 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"decompress\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"license\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"suffix\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"best\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"accelerator-type\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"card_no\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"software\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"extra\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"i_bufsize\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"o_bufsize\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"E:N:C:cdfqhlLsS:vV123456789?i:o:X:A:B:\00", align 1
@optarg = external global i8*, align 8
@stdout = external global %struct._IO_FILE*, align 8
@verbose = internal global i32 0, align 4
@.str.26 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@version = internal global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0), align 8
@CHUNK_i = internal global i32 131072, align 4
@optind = external global i32, align 4
@.str.27 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.28 = private unnamed_addr constant [10 x i8] c"gzip: %s\0A\00", align 1
@.str.29 = private unnamed_addr constant [45 x i8] c"gzip: %s: Too many levels of symbolic links\0A\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"gzip: No .%s file!\0A\00", align 1
@.str.31 = private unnamed_addr constant [32 x i8] c"gzip: Unable to list contents.\0A\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"gzip: File %s already exists!\0A\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.35 = private unnamed_addr constant [38 x i8] c"gzip: Cannot open output file %s: %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"gzip: Cannot set mode %s: %s\0A\00", align 1
@.str.37 = private unnamed_addr constant [38 x i8] c"gzip: Output must not be a terminal!\0A\00", align 1
@.str.38 = private unnamed_addr constant [38 x i8] c"err: Unable to read extra data rc=%d\0A\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"1.2.11\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c"err: Cannot set gz header! rc=%d\0A\00", align 1
@.str.41 = private unnamed_addr constant [48 x i8] c"deflateBound() %lld bytes for %lld bytes input\0A\00", align 1
@.str.42 = private unnamed_addr constant [49 x i8] c"compressBound() %lld bytes for %lld bytes input\0A\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"4.0.20-5-g2944\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"KiB\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"MiB\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"GiB\00", align 1
@.str.47 = private unnamed_addr constant [42 x i8] c"%s %s\0A(c) Copyright IBM Corp. 2015, 2017\0A\00", align 1
@.str.48 = private unnamed_addr constant [1545 x i8] c"Usage: %s [OPTION]... [FILE]...\0ACompress or uncompress FILEs (by default, compress FILES in-place).\0A\0AMandatory arguments to long options are mandatory for short options too.\0A\0A  -c, --stdout      write on standard output, keep original files unchanged\0A  -d, --decompress  decompress\0A  -f, --force       force overwrite of output file and compress links\0A  -h, --help        give this help\0A  -l, --list        list compressed file contents\0A  -L, --license     display software license\0A  -N, --name        save or restore the original name and time stamp\0A  -q, --quiet       suppress all warnings\0A  -S, --suffix=SUF  use suffix SUF on compressed files\0A  -v, --verbose     verbose mode\0A  -V, --version     display version number\0A  -1, --fast        compress faster\0A  -9, --best        compress better\0A\0ASpecial options for testing and debugging:\0A  -A, --accelerator-type=GENWQE|CAPI CAPI is only available for System p\0A  -B, --card=<card_no> -1 is for automatic card selection\0A  -X, --cpu <cpu>   force to run on CPU <cpu>\0A  -s, --software    force to use software compression/decompression\0A  -i, --i_bufsize   input buffer size (%d KiB)\0A  -o, --o_bufsize   output buffer size (%d KiB)\0A  -N, --name=NAME   write NAME into gzip header\0A  -C, --comment=CM  write CM into gzip header\0A  -E, --extra=EXTRA write EXTRA (file) into gzip header\0A\0AWith no FILE, or when FILE is -, read standard input.\0A\0ANOTE: Not all options are supported in this limited version!\0ASuggestions or patches are welcome!\0A\0AReport bugs via https://github.com/ibm-genwqe/genwqe-user.\0A\0A\00", align 1
@.str.49 = private unnamed_addr constant [52 x i8] c"Code: zlibVersion()=%s Header: ZLIB_VERSION=%s %s\0A\0A\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"consistent\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"inconsistent\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"Called with:\0A\00", align 1
@.str.53 = private unnamed_addr constant [18 x i8] c"  ARGV[%d]: \22%s\22\0A\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"Jan\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"Feb\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"Mar\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"Apr\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"May\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"Jun\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"Jul\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"Aug\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"Sep\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"Oct\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"Nov\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"Dec\00", align 1
@do_list_contents.mon = private unnamed_addr constant [12 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i32 0, i32 0)], align 16
@.str.68 = private unnamed_addr constant [35 x i8] c"err: Cannot read gz header! rc=%d\0A\00", align 1
@.str.69 = private unnamed_addr constant [36 x i8] c"err: inflate(Z_BLOCK) failed rc=%d\0A\00", align 1
@.str.70 = private unnamed_addr constant [80 x i8] c"err: gzip header not entirely decoded! total_in=%ld total_out=%ld head.done=%d\0A\00", align 1
@.str.71 = private unnamed_addr constant [92 x i8] c"         compressed        uncompressed  ratio uncompressed_name\0A%19lld %19lld  %2.2f%% %s\0A\00", align 1
@.str.72 = private unnamed_addr constant [139 x i8] c"method  crc     date  time           compressed        uncompressed  ratio uncompressed_name\0A%s %x %s %2d %d:%d %19lld %19lld  %2.2f%% %s\0A\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"defla\00", align 1
@.str.74 = private unnamed_addr constant [32 x i8] c"GZIP Header\0A Text:        %01X\0A\00", align 1
@.str.75 = private unnamed_addr constant [17 x i8] c" Time:        %s\00", align 1
@.str.76 = private unnamed_addr constant [20 x i8] c" xflags:      %08X\0A\00", align 1
@.str.77 = private unnamed_addr constant [45 x i8] c" OS:          %01X (0x03 Linux per RFC1952)\0A\00", align 1
@.str.78 = private unnamed_addr constant [18 x i8] c" Extra Len:   %d\0A\00", align 1
@.str.79 = private unnamed_addr constant [18 x i8] c" Extra Max:   %d\0A\00", align 1
@.str.80 = private unnamed_addr constant [18 x i8] c" Name:        %s\0A\00", align 1
@.str.81 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.82 = private unnamed_addr constant [18 x i8] c" Name Max:    %d\0A\00", align 1
@.str.83 = private unnamed_addr constant [18 x i8] c" Comment:     %s\0A\00", align 1
@.str.84 = private unnamed_addr constant [18 x i8] c" Comment Max: %d\0A\00", align 1
@.str.85 = private unnamed_addr constant [18 x i8] c" Header CRC : %X\0A\00", align 1
@.str.86 = private unnamed_addr constant [20 x i8] c" Done:        %01X\0A\00", align 1
@.str.87 = private unnamed_addr constant [22 x i8] c"err: Cannot find %s!\0A\00", align 1
@.str.88 = private unnamed_addr constant [30 x i8] c"err: Cannot open file %s: %s\0A\00", align 1
@.str.89 = private unnamed_addr constant [30 x i8] c"err: Cannot read from %s: %s\0A\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c" %08x:\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.92 = private unnamed_addr constant [7 x i8] c" | %s\0A\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.94 = private unnamed_addr constant [12 x i8] c"CHUNK_o=%d\0A\00", align 1
@.str.95 = private unnamed_addr constant [22 x i8] c"ret != Z_STREAM_ERROR\00", align 1
@.str.96 = private unnamed_addr constant [14 x i8] c"genwqe_gzip.c\00", align 1
@__PRETTY_FUNCTION__.def = private unnamed_addr constant [70 x i8] c"int def(FILE *, FILE *, z_stream *, unsigned char *, unsigned char *)\00", align 1
@.str.97 = private unnamed_addr constant [20 x i8] c"strm->avail_in == 0\00", align 1
@.str.98 = private unnamed_addr constant [20 x i8] c"ret == Z_STREAM_END\00", align 1
@.str.99 = private unnamed_addr constant [27 x i8] c"gzip: error reading stdin\0A\00", align 1
@.str.100 = private unnamed_addr constant [28 x i8] c"gzip: error writing stdout\0A\00", align 1
@.str.101 = private unnamed_addr constant [33 x i8] c"gzip: invalid compression level\0A\00", align 1
@.str.102 = private unnamed_addr constant [42 x i8] c"gzip: invalid or incomplete deflate data\0A\00", align 1
@.str.103 = private unnamed_addr constant [21 x i8] c"gzip: out of memory\0A\00", align 1
@.str.104 = private unnamed_addr constant [30 x i8] c"gzip: zlib version mismatch!\0A\00", align 1
@.str.105 = private unnamed_addr constant [13 x i8] c"fread error\0A\00", align 1
@__PRETTY_FUNCTION__.inf = private unnamed_addr constant [70 x i8] c"int inf(FILE *, FILE *, z_stream *, unsigned char *, unsigned char *)\00", align 1
@.str.106 = private unnamed_addr constant [19 x i8] c"NEED Dict........\0A\00", align 1
@.str.107 = private unnamed_addr constant [15 x i8] c"Fault..... %d\0A\00", align 1
@.str.108 = private unnamed_addr constant [14 x i8] c"fwrite fault\0A\00", align 1
@.str.109 = private unnamed_addr constant [18 x i8] c"err: fseek rc=%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32, i8**) #0 !dbg !66 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [4096 x i8], align 16
  %16 = alloca %struct._IO_FILE*, align 8
  %17 = alloca %struct._IO_FILE*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.z_stream_s, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.stat, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i8*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca %struct.gz_header_s, align 8
  %37 = alloca %struct.timeval, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !91, metadata !92), !dbg !93
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !94, metadata !92), !dbg !95
  call void @llvm.dbg.declare(metadata i32* %6, metadata !96, metadata !92), !dbg !97
  store i32 0, i32* %6, align 4, !dbg !97
  call void @llvm.dbg.declare(metadata i8* %7, metadata !98, metadata !92), !dbg !100
  store i8 1, i8* %7, align 1, !dbg !100
  call void @llvm.dbg.declare(metadata i32* %8, metadata !101, metadata !92), !dbg !102
  store i32 0, i32* %8, align 4, !dbg !102
  call void @llvm.dbg.declare(metadata i8* %9, metadata !103, metadata !92), !dbg !104
  store i8 0, i8* %9, align 1, !dbg !104
  call void @llvm.dbg.declare(metadata i8* %10, metadata !105, metadata !92), !dbg !106
  store i8 0, i8* %10, align 1, !dbg !106
  call void @llvm.dbg.declare(metadata i32* %11, metadata !107, metadata !92), !dbg !108
  store i32 31, i32* %11, align 4, !dbg !108
  call void @llvm.dbg.declare(metadata i32* %12, metadata !109, metadata !92), !dbg !110
  store i32 -1, i32* %12, align 4, !dbg !110
  call void @llvm.dbg.declare(metadata i8** %13, metadata !111, metadata !92), !dbg !112
  %38 = load i8**, i8*** %5, align 8, !dbg !113
  %39 = getelementptr inbounds i8*, i8** %38, i64 0, !dbg !113
  %40 = load i8*, i8** %39, align 8, !dbg !113
  %41 = call i8* @__xpg_basename(i8* %40) #9, !dbg !114
  store i8* %41, i8** %13, align 8, !dbg !112
  call void @llvm.dbg.declare(metadata i8** %14, metadata !115, metadata !92), !dbg !116
  store i8* null, i8** %14, align 8, !dbg !116
  call void @llvm.dbg.declare(metadata [4096 x i8]* %15, metadata !117, metadata !92), !dbg !121
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %16, metadata !122, metadata !92), !dbg !176
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !177
  store %struct._IO_FILE* %42, %struct._IO_FILE** %16, align 8, !dbg !176
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %17, metadata !178, metadata !92), !dbg !179
  store %struct._IO_FILE* null, %struct._IO_FILE** %17, align 8, !dbg !179
  call void @llvm.dbg.declare(metadata i8** %18, metadata !180, metadata !92), !dbg !181
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8** %18, align 8, !dbg !181
  call void @llvm.dbg.declare(metadata i32* %19, metadata !182, metadata !92), !dbg !183
  store i32 0, i32* %19, align 4, !dbg !183
  call void @llvm.dbg.declare(metadata i32* %20, metadata !184, metadata !92), !dbg !185
  store i32 -1, i32* %20, align 4, !dbg !185
  call void @llvm.dbg.declare(metadata i8** %21, metadata !186, metadata !92), !dbg !188
  store i8* null, i8** %21, align 8, !dbg !188
  call void @llvm.dbg.declare(metadata i8** %22, metadata !189, metadata !92), !dbg !190
  store i8* null, i8** %22, align 8, !dbg !190
  call void @llvm.dbg.declare(metadata %struct.z_stream_s* %23, metadata !191, metadata !92), !dbg !223
  call void @llvm.dbg.declare(metadata i8** %24, metadata !224, metadata !92), !dbg !225
  store i8* null, i8** %24, align 8, !dbg !225
  call void @llvm.dbg.declare(metadata i8** %25, metadata !226, metadata !92), !dbg !227
  store i8* null, i8** %25, align 8, !dbg !227
  call void @llvm.dbg.declare(metadata i8** %26, metadata !228, metadata !92), !dbg !229
  store i8* null, i8** %26, align 8, !dbg !229
  call void @llvm.dbg.declare(metadata i8** %27, metadata !230, metadata !92), !dbg !231
  store i8* null, i8** %27, align 8, !dbg !231
  call void @llvm.dbg.declare(metadata i32* %28, metadata !232, metadata !92), !dbg !233
  store i32 0, i32* %28, align 4, !dbg !233
  call void @llvm.dbg.declare(metadata %struct.stat* %29, metadata !234, metadata !92), !dbg !269
  call void @llvm.dbg.declare(metadata i8** %30, metadata !270, metadata !92), !dbg !271
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8** %30, align 8, !dbg !271
  call void @llvm.dbg.declare(metadata i8** %31, metadata !272, metadata !92), !dbg !273
  %43 = call i8* @getenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0)) #9, !dbg !274
  store i8* %43, i8** %31, align 8, !dbg !273
  call void @llvm.dbg.declare(metadata i32* %32, metadata !275, metadata !92), !dbg !276
  store i32 0, i32* %32, align 4, !dbg !276
  call void @llvm.dbg.declare(metadata i8** %33, metadata !277, metadata !92), !dbg !278
  %44 = call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0)) #9, !dbg !279
  store i8* %44, i8** %33, align 8, !dbg !278
  %45 = load i8*, i8** %31, align 8, !dbg !280
  %46 = icmp ne i8* %45, null, !dbg !282
  br i1 %46, label %47, label %49, !dbg !283

; <label>:47:                                     ; preds = %2
  %48 = load i8*, i8** %31, align 8, !dbg !284
  store i8* %48, i8** %30, align 8, !dbg !285
  br label %49, !dbg !286

; <label>:49:                                     ; preds = %47, %2
  %50 = load i8*, i8** %33, align 8, !dbg !287
  %51 = icmp ne i8* %50, null, !dbg !289
  br i1 %51, label %52, label %55, !dbg !290

; <label>:52:                                     ; preds = %49
  %53 = load i8*, i8** %33, align 8, !dbg !291
  %54 = call i32 @atoi(i8* %53) #10, !dbg !292
  store i32 %54, i32* %32, align 4, !dbg !293
  br label %55, !dbg !294

; <label>:55:                                     ; preds = %52, %49
  %56 = load i8*, i8** %13, align 8, !dbg !295
  %57 = call i8* @strstr(i8* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0)) #10, !dbg !297
  %58 = icmp ne i8* %57, null, !dbg !298
  br i1 %58, label %59, label %62, !dbg !299

; <label>:59:                                     ; preds = %55
  store i8 0, i8* %7, align 1, !dbg !300
  %60 = load i32, i32* @CHUNK_o, align 4, !dbg !302
  %61 = mul i32 %60, 4, !dbg !302
  store i32 %61, i32* @CHUNK_o, align 4, !dbg !302
  br label %62, !dbg !303

; <label>:62:                                     ; preds = %59, %55
  br label %63, !dbg !304

; <label>:63:                                     ; preds = %62, %132
  call void @llvm.dbg.declare(metadata i32* %34, metadata !305, metadata !92), !dbg !307
  call void @llvm.dbg.declare(metadata i32* %35, metadata !308, metadata !92), !dbg !309
  store i32 0, i32* %35, align 4, !dbg !309
  %64 = load i32, i32* %4, align 4, !dbg !310
  %65 = load i8**, i8*** %5, align 8, !dbg !311
  %66 = call i32 @getopt_long(i32 %64, i8** %65, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i32 0, i32 0), %struct.option* getelementptr inbounds ([21 x %struct.option], [21 x %struct.option]* @main.long_options, i32 0, i32 0), i32* %35) #9, !dbg !312
  store i32 %66, i32* %34, align 4, !dbg !313
  %67 = load i32, i32* %34, align 4, !dbg !314
  %68 = icmp eq i32 %67, -1, !dbg !316
  br i1 %68, label %69, label %70, !dbg !317

; <label>:69:                                     ; preds = %63
  br label %133, !dbg !318

; <label>:70:                                     ; preds = %63
  %71 = load i32, i32* %34, align 4, !dbg !319
  switch i32 %71, label %132 [
    i32 88, label %72
    i32 65, label %76
    i32 66, label %78
    i32 69, label %82
    i32 78, label %84
    i32 67, label %86
    i32 100, label %88
    i32 102, label %89
    i32 113, label %90
    i32 99, label %91
    i32 83, label %93
    i32 115, label %95
    i32 108, label %96
    i32 49, label %99
    i32 50, label %100
    i32 51, label %101
    i32 52, label %102
    i32 53, label %103
    i32 54, label %104
    i32 55, label %105
    i32 56, label %106
    i32 57, label %107
    i32 118, label %108
    i32 86, label %111
    i32 105, label %115
    i32 111, label %119
    i32 76, label %123
    i32 104, label %127
    i32 63, label %127
  ], !dbg !320

; <label>:72:                                     ; preds = %70
  %73 = load i8*, i8** @optarg, align 8, !dbg !321
  %74 = call i64 @strtoul(i8* %73, i8** null, i32 0) #9, !dbg !323
  %75 = trunc i64 %74 to i32, !dbg !323
  store i32 %75, i32* %20, align 4, !dbg !324
  br label %132, !dbg !325

; <label>:76:                                     ; preds = %70
  %77 = load i8*, i8** @optarg, align 8, !dbg !326
  store i8* %77, i8** %30, align 8, !dbg !327
  br label %132, !dbg !328

; <label>:78:                                     ; preds = %70
  %79 = load i8*, i8** @optarg, align 8, !dbg !329
  %80 = call i64 @strtol(i8* %79, i8** null, i32 0) #9, !dbg !330
  %81 = trunc i64 %80 to i32, !dbg !330
  store i32 %81, i32* %32, align 4, !dbg !331
  br label %132, !dbg !332

; <label>:82:                                     ; preds = %70
  %83 = load i8*, i8** @optarg, align 8, !dbg !333
  store i8* %83, i8** %26, align 8, !dbg !334
  br label %132, !dbg !335

; <label>:84:                                     ; preds = %70
  %85 = load i8*, i8** @optarg, align 8, !dbg !336
  store i8* %85, i8** %24, align 8, !dbg !337
  br label %132, !dbg !338

; <label>:86:                                     ; preds = %70
  %87 = load i8*, i8** @optarg, align 8, !dbg !339
  store i8* %87, i8** %25, align 8, !dbg !340
  br label %132, !dbg !341

; <label>:88:                                     ; preds = %70
  store i8 0, i8* %7, align 1, !dbg !342
  br label %132, !dbg !343

; <label>:89:                                     ; preds = %70
  store i8 1, i8* %9, align 1, !dbg !344
  br label %132, !dbg !345

; <label>:90:                                     ; preds = %70
  store i8 1, i8* %10, align 1, !dbg !346
  br label %132, !dbg !347

; <label>:91:                                     ; preds = %70
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !348
  store %struct._IO_FILE* %92, %struct._IO_FILE** %17, align 8, !dbg !349
  br label %132, !dbg !350

; <label>:93:                                     ; preds = %70
  %94 = load i8*, i8** @optarg, align 8, !dbg !351
  store i8* %94, i8** %18, align 8, !dbg !352
  br label %132, !dbg !353

; <label>:95:                                     ; preds = %70
  store i32 1, i32* %19, align 4, !dbg !354
  br label %132, !dbg !355

; <label>:96:                                     ; preds = %70
  %97 = load i32, i32* %8, align 4, !dbg !356
  %98 = add nsw i32 %97, 1, !dbg !356
  store i32 %98, i32* %8, align 4, !dbg !356
  br label %132, !dbg !357

; <label>:99:                                     ; preds = %70
  store i32 1, i32* %12, align 4, !dbg !358
  br label %132, !dbg !359

; <label>:100:                                    ; preds = %70
  store i32 2, i32* %12, align 4, !dbg !360
  br label %132, !dbg !361

; <label>:101:                                    ; preds = %70
  store i32 3, i32* %12, align 4, !dbg !362
  br label %132, !dbg !363

; <label>:102:                                    ; preds = %70
  store i32 4, i32* %12, align 4, !dbg !364
  br label %132, !dbg !365

; <label>:103:                                    ; preds = %70
  store i32 5, i32* %12, align 4, !dbg !366
  br label %132, !dbg !367

; <label>:104:                                    ; preds = %70
  store i32 6, i32* %12, align 4, !dbg !368
  br label %132, !dbg !369

; <label>:105:                                    ; preds = %70
  store i32 7, i32* %12, align 4, !dbg !370
  br label %132, !dbg !371

; <label>:106:                                    ; preds = %70
  store i32 8, i32* %12, align 4, !dbg !372
  br label %132, !dbg !373

; <label>:107:                                    ; preds = %70
  store i32 9, i32* %12, align 4, !dbg !374
  br label %132, !dbg !375

; <label>:108:                                    ; preds = %70
  %109 = load i32, i32* @verbose, align 4, !dbg !376
  %110 = add nsw i32 %109, 1, !dbg !376
  store i32 %110, i32* @verbose, align 4, !dbg !376
  br label %132, !dbg !377

; <label>:111:                                    ; preds = %70
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !378
  %113 = load i8*, i8** @version, align 8, !dbg !379
  %114 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %112, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* %113), !dbg !380
  call void @exit(i32 0) #11, !dbg !381
  unreachable, !dbg !381

; <label>:115:                                    ; preds = %70
  %116 = load i8*, i8** @optarg, align 8, !dbg !382
  %117 = call i64 @str_to_num(i8* %116), !dbg !383
  %118 = trunc i64 %117 to i32, !dbg !383
  store i32 %118, i32* @CHUNK_i, align 4, !dbg !384
  br label %132, !dbg !385

; <label>:119:                                    ; preds = %70
  %120 = load i8*, i8** @optarg, align 8, !dbg !386
  %121 = call i64 @str_to_num(i8* %120), !dbg !387
  %122 = trunc i64 %121 to i32, !dbg !387
  store i32 %122, i32* @CHUNK_o, align 4, !dbg !388
  br label %132, !dbg !389

; <label>:123:                                    ; preds = %70
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !390
  %125 = load i8*, i8** %13, align 8, !dbg !391
  %126 = load i8*, i8** @version, align 8, !dbg !392
  call void @userinfo(%struct._IO_FILE* %124, i8* %125, i8* %126), !dbg !393
  call void @exit(i32 0) #11, !dbg !394
  unreachable, !dbg !394

; <label>:127:                                    ; preds = %70, %70
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !395
  %129 = load i8*, i8** %13, align 8, !dbg !396
  %130 = load i32, i32* %4, align 4, !dbg !397
  %131 = load i8**, i8*** %5, align 8, !dbg !398
  call void @usage(%struct._IO_FILE* %128, i8* %129, i32 %130, i8** %131), !dbg !399
  call void @exit(i32 0) #11, !dbg !400
  unreachable, !dbg !400

; <label>:132:                                    ; preds = %70, %119, %115, %108, %107, %106, %105, %104, %103, %102, %101, %100, %99, %96, %95, %93, %91, %90, %89, %88, %86, %84, %82, %78, %76, %72
  br label %63, !dbg !401, !llvm.loop !403

; <label>:133:                                    ; preds = %69
  %134 = load i32, i32* %20, align 4, !dbg !404
  %135 = icmp ne i32 %134, -1, !dbg !406
  br i1 %135, label %136, label %139, !dbg !407

; <label>:136:                                    ; preds = %133
  %137 = load i32, i32* %20, align 4, !dbg !408
  %138 = call i32 @pin_to_cpu(i32 %137), !dbg !409
  br label %139, !dbg !409

; <label>:139:                                    ; preds = %136, %133
  %140 = load i32, i32* %19, align 4, !dbg !410
  %141 = icmp ne i32 %140, 0, !dbg !410
  br i1 %141, label %142, label %143, !dbg !412

; <label>:142:                                    ; preds = %139
  call void @zlib_set_inflate_impl(i32 0), !dbg !413
  call void @zlib_set_deflate_impl(i32 0), !dbg !415
  br label %146, !dbg !416

; <label>:143:                                    ; preds = %139
  %144 = load i8*, i8** %30, align 8, !dbg !417
  %145 = load i32, i32* %32, align 4, !dbg !419
  call void @zlib_set_accelerator(i8* %144, i32 %145), !dbg !420
  call void @zlib_set_inflate_impl(i32 1), !dbg !421
  call void @zlib_set_deflate_impl(i32 1), !dbg !422
  br label %146

; <label>:146:                                    ; preds = %143, %142
  %147 = load i32, i32* @optind, align 4, !dbg !423
  %148 = load i32, i32* %4, align 4, !dbg !425
  %149 = icmp slt i32 %147, %148, !dbg !426
  br i1 %149, label %150, label %226, !dbg !427

; <label>:150:                                    ; preds = %146
  %151 = load i32, i32* @optind, align 4, !dbg !428
  %152 = add nsw i32 %151, 1, !dbg !428
  store i32 %152, i32* @optind, align 4, !dbg !428
  %153 = sext i32 %151 to i64, !dbg !430
  %154 = load i8**, i8*** %5, align 8, !dbg !430
  %155 = getelementptr inbounds i8*, i8** %154, i64 %153, !dbg !430
  %156 = load i8*, i8** %155, align 8, !dbg !430
  store i8* %156, i8** %14, align 8, !dbg !431
  %157 = load i8*, i8** %14, align 8, !dbg !432
  %158 = call %struct._IO_FILE* @fopen(i8* %157, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0)), !dbg !433
  store %struct._IO_FILE* %158, %struct._IO_FILE** %16, align 8, !dbg !434
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** %16, align 8, !dbg !435
  %160 = icmp ne %struct._IO_FILE* %159, null, !dbg !435
  br i1 %160, label %172, label %161, !dbg !437

; <label>:161:                                    ; preds = %150
  br label %162, !dbg !438, !llvm.loop !440

; <label>:162:                                    ; preds = %161
  %163 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !441
  %164 = call i32* @__errno_location() #1, !dbg !444
  %165 = load i32, i32* %164, align 4, !dbg !445
  %166 = call i8* @strerror(i32 %165) #9, !dbg !446
  %167 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %163, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* %166), !dbg !448
  br label %168, !dbg !450

; <label>:168:                                    ; preds = %162
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !451
  %170 = load i32, i32* %4, align 4, !dbg !452
  %171 = load i8**, i8*** %5, align 8, !dbg !453
  call void @print_args(%struct._IO_FILE* %169, i32 %170, i8** %171), !dbg !454
  call void @exit(i32 79) #11, !dbg !455
  unreachable, !dbg !455

; <label>:172:                                    ; preds = %150
  %173 = load i8*, i8** %14, align 8, !dbg !456
  %174 = call i32 @lstat(i8* %173, %struct.stat* %29) #9, !dbg !457
  store i32 %174, i32* %6, align 4, !dbg !458
  %175 = load i32, i32* %6, align 4, !dbg !459
  %176 = icmp eq i32 %175, 0, !dbg !461
  br i1 %176, label %177, label %188, !dbg !462

; <label>:177:                                    ; preds = %172
  %178 = getelementptr inbounds %struct.stat, %struct.stat* %29, i32 0, i32 3, !dbg !463
  %179 = load i32, i32* %178, align 8, !dbg !463
  %180 = and i32 %179, 61440, !dbg !465
  %181 = icmp eq i32 %180, 40960, !dbg !466
  br i1 %181, label %182, label %188, !dbg !467

; <label>:182:                                    ; preds = %177
  br label %183, !dbg !468, !llvm.loop !470

; <label>:183:                                    ; preds = %182
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !471
  %185 = load i8*, i8** %14, align 8, !dbg !474
  %186 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %184, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.29, i32 0, i32 0), i8* %185), !dbg !475
  br label %187, !dbg !476

; <label>:187:                                    ; preds = %183
  call void @exit(i32 1) #11, !dbg !477
  unreachable, !dbg !477

; <label>:188:                                    ; preds = %177, %172
  %189 = load i32, i32* %8, align 4, !dbg !478
  %190 = icmp ne i32 %189, 0, !dbg !478
  br i1 %190, label %191, label %225, !dbg !480

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds [4096 x i8], [4096 x i8]* %15, i32 0, i32 0, !dbg !481
  %193 = load i8*, i8** %14, align 8, !dbg !483
  %194 = load i8*, i8** %18, align 8, !dbg !484
  %195 = call i32 @strip_ending(i8* %192, i8* %193, i64 4096, i8* %194), !dbg !485
  store i32 %195, i32* %6, align 4, !dbg !486
  %196 = load i32, i32* %6, align 4, !dbg !487
  %197 = icmp slt i32 %196, 0, !dbg !489
  br i1 %197, label %198, label %207, !dbg !490

; <label>:198:                                    ; preds = %191
  br label %199, !dbg !491, !llvm.loop !493

; <label>:199:                                    ; preds = %198
  %200 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !494
  %201 = load i8*, i8** %18, align 8, !dbg !497
  %202 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %200, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0), i8* %201), !dbg !498
  br label %203, !dbg !499

; <label>:203:                                    ; preds = %199
  %204 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !500
  %205 = load i32, i32* %4, align 4, !dbg !501
  %206 = load i8**, i8*** %5, align 8, !dbg !502
  call void @print_args(%struct._IO_FILE* %204, i32 %205, i8** %206), !dbg !503
  call void @exit(i32 1) #11, !dbg !504
  unreachable, !dbg !504

; <label>:207:                                    ; preds = %191
  %208 = load %struct._IO_FILE*, %struct._IO_FILE** %16, align 8, !dbg !505
  %209 = getelementptr inbounds [4096 x i8], [4096 x i8]* %15, i32 0, i32 0, !dbg !506
  %210 = load i32, i32* %8, align 4, !dbg !507
  %211 = call i32 @do_list_contents(%struct._IO_FILE* %208, i8* %209, i32 %210), !dbg !508
  store i32 %211, i32* %6, align 4, !dbg !509
  %212 = load i32, i32* %6, align 4, !dbg !510
  %213 = icmp ne i32 %212, 0, !dbg !512
  br i1 %213, label %214, label %222, !dbg !513

; <label>:214:                                    ; preds = %207
  br label %215, !dbg !514, !llvm.loop !516

; <label>:215:                                    ; preds = %214
  %216 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !517
  %217 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %216, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.31, i32 0, i32 0)), !dbg !520
  br label %218, !dbg !521

; <label>:218:                                    ; preds = %215
  %219 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !522
  %220 = load i32, i32* %4, align 4, !dbg !523
  %221 = load i8**, i8*** %5, align 8, !dbg !524
  call void @print_args(%struct._IO_FILE* %219, i32 %220, i8** %221), !dbg !525
  call void @exit(i32 1) #11, !dbg !526
  unreachable, !dbg !526

; <label>:222:                                    ; preds = %207
  %223 = load %struct._IO_FILE*, %struct._IO_FILE** %16, align 8, !dbg !527
  %224 = call i32 @fclose(%struct._IO_FILE* %223), !dbg !528
  call void @exit(i32 0) #11, !dbg !529
  unreachable, !dbg !529

; <label>:225:                                    ; preds = %188
  br label %226, !dbg !530

; <label>:226:                                    ; preds = %225, %146
  %227 = load i8*, i8** %14, align 8, !dbg !531
  %228 = icmp eq i8* %227, null, !dbg !533
  br i1 %228, label %229, label %231, !dbg !534

; <label>:229:                                    ; preds = %226
  %230 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !535
  store %struct._IO_FILE* %230, %struct._IO_FILE** %17, align 8, !dbg !536
  br label %231, !dbg !537

; <label>:231:                                    ; preds = %229, %226
  %232 = load %struct._IO_FILE*, %struct._IO_FILE** %17, align 8, !dbg !538
  %233 = icmp eq %struct._IO_FILE* %232, null, !dbg !540
  br i1 %233, label %234, label %332, !dbg !541

; <label>:234:                                    ; preds = %231
  %235 = load i8, i8* %7, align 1, !dbg !542
  %236 = trunc i8 %235 to i1, !dbg !542
  br i1 %236, label %237, label %242, !dbg !545

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds [4096 x i8], [4096 x i8]* %15, i32 0, i32 0, !dbg !546
  %239 = load i8*, i8** %14, align 8, !dbg !547
  %240 = load i8*, i8** %18, align 8, !dbg !548
  %241 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %238, i64 4096, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i8* %239, i8* %240) #9, !dbg !549
  br label %259, !dbg !549

; <label>:242:                                    ; preds = %234
  %243 = getelementptr inbounds [4096 x i8], [4096 x i8]* %15, i32 0, i32 0, !dbg !550
  %244 = load i8*, i8** %14, align 8, !dbg !552
  %245 = load i8*, i8** %18, align 8, !dbg !553
  %246 = call i32 @strip_ending(i8* %243, i8* %244, i64 4096, i8* %245), !dbg !554
  store i32 %246, i32* %6, align 4, !dbg !555
  %247 = load i32, i32* %6, align 4, !dbg !556
  %248 = icmp slt i32 %247, 0, !dbg !558
  br i1 %248, label %249, label %258, !dbg !559

; <label>:249:                                    ; preds = %242
  br label %250, !dbg !560, !llvm.loop !562

; <label>:250:                                    ; preds = %249
  %251 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !563
  %252 = load i8*, i8** %18, align 8, !dbg !566
  %253 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %251, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0), i8* %252), !dbg !567
  br label %254, !dbg !568

; <label>:254:                                    ; preds = %250
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !569
  %256 = load i32, i32* %4, align 4, !dbg !570
  %257 = load i8**, i8*** %5, align 8, !dbg !571
  call void @print_args(%struct._IO_FILE* %255, i32 %256, i8** %257), !dbg !572
  call void @exit(i32 1) #11, !dbg !573
  unreachable, !dbg !573

; <label>:258:                                    ; preds = %242
  br label %259

; <label>:259:                                    ; preds = %258, %237
  %260 = getelementptr inbounds [4096 x i8], [4096 x i8]* %15, i32 0, i32 0, !dbg !574
  %261 = call i32 @stat(i8* %260, %struct.stat* %29) #9, !dbg !575
  store i32 %261, i32* %6, align 4, !dbg !576
  %262 = load i8, i8* %9, align 1, !dbg !577
  %263 = trunc i8 %262 to i1, !dbg !577
  br i1 %263, label %276, label %264, !dbg !579

; <label>:264:                                    ; preds = %259
  %265 = load i32, i32* %6, align 4, !dbg !580
  %266 = icmp eq i32 %265, 0, !dbg !582
  br i1 %266, label %267, label %276, !dbg !583

; <label>:267:                                    ; preds = %264
  br label %268, !dbg !584, !llvm.loop !586

; <label>:268:                                    ; preds = %267
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !587
  %270 = getelementptr inbounds [4096 x i8], [4096 x i8]* %15, i32 0, i32 0, !dbg !590
  %271 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %269, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i32 0, i32 0), i8* %270), !dbg !591
  br label %272, !dbg !592

; <label>:272:                                    ; preds = %268
  %273 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !593
  %274 = load i32, i32* %4, align 4, !dbg !594
  %275 = load i8**, i8*** %5, align 8, !dbg !595
  call void @print_args(%struct._IO_FILE* %273, i32 %274, i8** %275), !dbg !596
  call void @exit(i32 79) #11, !dbg !597
  unreachable, !dbg !597

; <label>:276:                                    ; preds = %264, %259
  %277 = getelementptr inbounds [4096 x i8], [4096 x i8]* %15, i32 0, i32 0, !dbg !598
  %278 = call %struct._IO_FILE* @fopen(i8* %277, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0)), !dbg !599
  store %struct._IO_FILE* %278, %struct._IO_FILE** %17, align 8, !dbg !600
  %279 = load %struct._IO_FILE*, %struct._IO_FILE** %17, align 8, !dbg !601
  %280 = icmp ne %struct._IO_FILE* %279, null, !dbg !601
  br i1 %280, label %293, label %281, !dbg !603

; <label>:281:                                    ; preds = %276
  br label %282, !dbg !604, !llvm.loop !606

; <label>:282:                                    ; preds = %281
  %283 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !607
  %284 = getelementptr inbounds [4096 x i8], [4096 x i8]* %15, i32 0, i32 0, !dbg !610
  %285 = call i32* @__errno_location() #1, !dbg !611
  %286 = load i32, i32* %285, align 4, !dbg !612
  %287 = call i8* @strerror(i32 %286) #9, !dbg !613
  %288 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %283, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.35, i32 0, i32 0), i8* %284, i8* %287), !dbg !615
  br label %289, !dbg !617

; <label>:289:                                    ; preds = %282
  %290 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !618
  %291 = load i32, i32* %4, align 4, !dbg !619
  %292 = load i8**, i8*** %5, align 8, !dbg !620
  call void @print_args(%struct._IO_FILE* %290, i32 %291, i8** %292), !dbg !621
  call void @exit(i32 79) #11, !dbg !622
  unreachable, !dbg !622

; <label>:293:                                    ; preds = %276
  %294 = load %struct._IO_FILE*, %struct._IO_FILE** %16, align 8, !dbg !623
  %295 = call i32 @fileno(%struct._IO_FILE* %294) #9, !dbg !624
  %296 = call i32 @fstat(i32 %295, %struct.stat* %29) #9, !dbg !625
  store i32 %296, i32* %6, align 4, !dbg !627
  %297 = load i32, i32* %6, align 4, !dbg !628
  %298 = icmp eq i32 %297, 0, !dbg !630
  br i1 %298, label %299, label %317, !dbg !631

; <label>:299:                                    ; preds = %293
  %300 = load %struct._IO_FILE*, %struct._IO_FILE** %17, align 8, !dbg !632
  %301 = call i32 @fileno(%struct._IO_FILE* %300) #9, !dbg !634
  %302 = getelementptr inbounds %struct.stat, %struct.stat* %29, i32 0, i32 3, !dbg !635
  %303 = load i32, i32* %302, align 8, !dbg !635
  %304 = call i32 @fchmod(i32 %301, i32 %303) #9, !dbg !636
  store i32 %304, i32* %6, align 4, !dbg !638
  %305 = load i32, i32* %6, align 4, !dbg !639
  %306 = icmp ne i32 %305, 0, !dbg !641
  br i1 %306, label %307, label %316, !dbg !642

; <label>:307:                                    ; preds = %299
  br label %308, !dbg !643, !llvm.loop !645

; <label>:308:                                    ; preds = %307
  %309 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !646
  %310 = getelementptr inbounds [4096 x i8], [4096 x i8]* %15, i32 0, i32 0, !dbg !649
  %311 = call i32* @__errno_location() #1, !dbg !650
  %312 = load i32, i32* %311, align 4, !dbg !651
  %313 = call i8* @strerror(i32 %312) #9, !dbg !652
  %314 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %309, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.36, i32 0, i32 0), i8* %310, i8* %313), !dbg !654
  br label %315, !dbg !656

; <label>:315:                                    ; preds = %308
  call void @exit(i32 79) #11, !dbg !657
  unreachable, !dbg !657

; <label>:316:                                    ; preds = %299
  br label %326, !dbg !658

; <label>:317:                                    ; preds = %293
  br label %318, !dbg !659, !llvm.loop !660

; <label>:318:                                    ; preds = %317
  %319 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !661
  %320 = getelementptr inbounds [4096 x i8], [4096 x i8]* %15, i32 0, i32 0, !dbg !664
  %321 = call i32* @__errno_location() #1, !dbg !665
  %322 = load i32, i32* %321, align 4, !dbg !666
  %323 = call i8* @strerror(i32 %322) #9, !dbg !667
  %324 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %319, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.36, i32 0, i32 0), i8* %320, i8* %323), !dbg !669
  br label %325, !dbg !671

; <label>:325:                                    ; preds = %318
  br label %326

; <label>:326:                                    ; preds = %325, %316
  %327 = load i8*, i8** %24, align 8, !dbg !672
  %328 = icmp eq i8* %327, null, !dbg !674
  br i1 %328, label %329, label %331, !dbg !675

; <label>:329:                                    ; preds = %326
  %330 = load i8*, i8** %14, align 8, !dbg !676
  store i8* %330, i8** %24, align 8, !dbg !677
  br label %331, !dbg !678

; <label>:331:                                    ; preds = %329, %326
  br label %332, !dbg !679

; <label>:332:                                    ; preds = %331, %231
  %333 = load %struct._IO_FILE*, %struct._IO_FILE** %17, align 8, !dbg !680
  %334 = call i32 @fileno(%struct._IO_FILE* %333) #9, !dbg !682
  %335 = call i32 @isatty(i32 %334) #9, !dbg !683
  %336 = icmp ne i32 %335, 0, !dbg !685
  br i1 %336, label %337, label %345, !dbg !686

; <label>:337:                                    ; preds = %332
  br label %338, !dbg !687, !llvm.loop !689

; <label>:338:                                    ; preds = %337
  %339 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !690
  %340 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %339, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.37, i32 0, i32 0)), !dbg !693
  br label %341, !dbg !694

; <label>:341:                                    ; preds = %338
  %342 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !695
  %343 = load i32, i32* %4, align 4, !dbg !696
  %344 = load i8**, i8*** %5, align 8, !dbg !697
  call void @print_args(%struct._IO_FILE* %342, i32 %343, i8** %344), !dbg !698
  call void @exit(i32 1) #11, !dbg !699
  unreachable, !dbg !699

; <label>:345:                                    ; preds = %332
  %346 = load i32, i32* @optind, align 4, !dbg !700
  %347 = load i32, i32* %4, align 4, !dbg !702
  %348 = icmp ne i32 %346, %347, !dbg !703
  br i1 %348, label %349, label %354, !dbg !704

; <label>:349:                                    ; preds = %345
  %350 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !705
  %351 = load i8*, i8** %13, align 8, !dbg !707
  %352 = load i32, i32* %4, align 4, !dbg !708
  %353 = load i8**, i8*** %5, align 8, !dbg !709
  call void @usage(%struct._IO_FILE* %350, i8* %351, i32 %352, i8** %353), !dbg !710
  call void @exit(i32 1) #11, !dbg !711
  unreachable, !dbg !711

; <label>:354:                                    ; preds = %345
  %355 = load i32, i32* @CHUNK_i, align 4, !dbg !712
  %356 = zext i32 %355 to i64, !dbg !712
  %357 = call noalias i8* @malloc(i64 %356) #9, !dbg !713
  store i8* %357, i8** %21, align 8, !dbg !714
  %358 = load i8*, i8** %21, align 8, !dbg !715
  %359 = icmp eq i8* null, %358, !dbg !717
  br i1 %359, label %360, label %371, !dbg !718

; <label>:360:                                    ; preds = %354
  br label %361, !dbg !719, !llvm.loop !721

; <label>:361:                                    ; preds = %360
  %362 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !722
  %363 = call i32* @__errno_location() #1, !dbg !725
  %364 = load i32, i32* %363, align 4, !dbg !726
  %365 = call i8* @strerror(i32 %364) #9, !dbg !727
  %366 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %362, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* %365), !dbg !729
  br label %367, !dbg !731

; <label>:367:                                    ; preds = %361
  %368 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !732
  %369 = load i32, i32* %4, align 4, !dbg !733
  %370 = load i8**, i8*** %5, align 8, !dbg !734
  call void @print_args(%struct._IO_FILE* %368, i32 %369, i8** %370), !dbg !735
  call void @exit(i32 1) #11, !dbg !736
  unreachable, !dbg !736

; <label>:371:                                    ; preds = %354
  %372 = load i32, i32* @CHUNK_o, align 4, !dbg !737
  %373 = zext i32 %372 to i64, !dbg !737
  %374 = call noalias i8* @malloc(i64 %373) #9, !dbg !738
  store i8* %374, i8** %22, align 8, !dbg !739
  %375 = load i8*, i8** %22, align 8, !dbg !740
  %376 = icmp eq i8* null, %375, !dbg !742
  br i1 %376, label %377, label %388, !dbg !743

; <label>:377:                                    ; preds = %371
  br label %378, !dbg !744, !llvm.loop !746

; <label>:378:                                    ; preds = %377
  %379 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !747
  %380 = call i32* @__errno_location() #1, !dbg !750
  %381 = load i32, i32* %380, align 4, !dbg !751
  %382 = call i8* @strerror(i32 %381) #9, !dbg !752
  %383 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %379, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* %382), !dbg !754
  br label %384, !dbg !756

; <label>:384:                                    ; preds = %378
  %385 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !757
  %386 = load i32, i32* %4, align 4, !dbg !758
  %387 = load i8**, i8*** %5, align 8, !dbg !759
  call void @print_args(%struct._IO_FILE* %385, i32 %386, i8** %387), !dbg !760
  call void @exit(i32 1) #11, !dbg !761
  unreachable, !dbg !761

; <label>:388:                                    ; preds = %371
  %389 = bitcast %struct.z_stream_s* %23 to i8*, !dbg !762
  call void @llvm.memset.p0i8.i64(i8* %389, i8 0, i64 112, i32 8, i1 false), !dbg !762
  %390 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %23, i32 0, i32 8, !dbg !763
  store i8* (i8*, i32, i32)* null, i8* (i8*, i32, i32)** %390, align 8, !dbg !764
  %391 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %23, i32 0, i32 9, !dbg !765
  store void (i8*, i8*)* null, void (i8*, i8*)** %391, align 8, !dbg !766
  %392 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %23, i32 0, i32 10, !dbg !767
  store i8* null, i8** %392, align 8, !dbg !768
  %393 = load i8, i8* %7, align 1, !dbg !769
  %394 = trunc i8 %393 to i1, !dbg !769
  br i1 %394, label %395, label %520, !dbg !771

; <label>:395:                                    ; preds = %388
  call void @llvm.dbg.declare(metadata %struct.gz_header_s* %36, metadata !772, metadata !92), !dbg !790
  call void @llvm.dbg.declare(metadata %struct.timeval* %37, metadata !791, metadata !92), !dbg !798
  %396 = load i8*, i8** %26, align 8, !dbg !799
  %397 = icmp ne i8* %396, null, !dbg !799
  br i1 %397, label %398, label %431, !dbg !801

; <label>:398:                                    ; preds = %395
  %399 = load i8*, i8** %26, align 8, !dbg !802
  %400 = call i64 @file_size(i8* %399), !dbg !804
  %401 = trunc i64 %400 to i32, !dbg !804
  store i32 %401, i32* %28, align 4, !dbg !805
  %402 = load i32, i32* %28, align 4, !dbg !806
  %403 = icmp sle i32 %402, 0, !dbg !808
  br i1 %403, label %404, label %406, !dbg !809

; <label>:404:                                    ; preds = %398
  %405 = load i32, i32* %28, align 4, !dbg !810
  store i32 %405, i32* %6, align 4, !dbg !812
  br label %554, !dbg !813

; <label>:406:                                    ; preds = %398
  %407 = load i32, i32* %28, align 4, !dbg !814
  %408 = sext i32 %407 to i64, !dbg !814
  %409 = call noalias i8* @malloc(i64 %408) #9, !dbg !815
  store i8* %409, i8** %27, align 8, !dbg !816
  %410 = load i8*, i8** %27, align 8, !dbg !817
  %411 = icmp eq i8* %410, null, !dbg !819
  br i1 %411, label %412, label %413, !dbg !820

; <label>:412:                                    ; preds = %406
  store i32 -12, i32* %6, align 4, !dbg !821
  br label %554, !dbg !823

; <label>:413:                                    ; preds = %406
  %414 = load i8*, i8** %26, align 8, !dbg !824
  %415 = load i8*, i8** %27, align 8, !dbg !825
  %416 = load i32, i32* %28, align 4, !dbg !826
  %417 = sext i32 %416 to i64, !dbg !826
  %418 = call i64 @file_read(i8* %414, i8* %415, i64 %417), !dbg !827
  %419 = trunc i64 %418 to i32, !dbg !827
  store i32 %419, i32* %6, align 4, !dbg !828
  %420 = load i32, i32* %6, align 4, !dbg !829
  %421 = icmp ne i32 %420, 1, !dbg !831
  br i1 %421, label %422, label %427, !dbg !832

; <label>:422:                                    ; preds = %413
  %423 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !833
  %424 = load i32, i32* %6, align 4, !dbg !835
  %425 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %423, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.38, i32 0, i32 0), i32 %424), !dbg !836
  %426 = load i8*, i8** %27, align 8, !dbg !837
  call void @free(i8* %426) #9, !dbg !838
  br label %554, !dbg !839

; <label>:427:                                    ; preds = %413
  %428 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !840
  %429 = load i8*, i8** %27, align 8, !dbg !841
  %430 = load i32, i32* %28, align 4, !dbg !842
  call void @hexdump(%struct._IO_FILE* %428, i8* %429, i32 %430), !dbg !843
  br label %431, !dbg !844

; <label>:431:                                    ; preds = %427, %395
  %432 = load i32, i32* %12, align 4, !dbg !845
  %433 = load i32, i32* %11, align 4, !dbg !845
  %434 = call i32 @deflateInit2_(%struct.z_stream_s* %23, i32 %432, i32 8, i32 %433, i32 8, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i32 112), !dbg !845
  store i32 %434, i32* %6, align 4, !dbg !846
  %435 = load i32, i32* %6, align 4, !dbg !847
  %436 = icmp ne i32 0, %435, !dbg !849
  br i1 %436, label %437, label %438, !dbg !850

; <label>:437:                                    ; preds = %431
  br label %554, !dbg !851

; <label>:438:                                    ; preds = %431
  %439 = bitcast %struct.gz_header_s* %36 to i8*, !dbg !852
  call void @llvm.memset.p0i8.i64(i8* %439, i8 0, i64 80, i32 8, i1 false), !dbg !852
  %440 = call i32 @gettimeofday(%struct.timeval* %37, %struct.timezone* null) #9, !dbg !853
  %441 = getelementptr inbounds %struct.timeval, %struct.timeval* %37, i32 0, i32 0, !dbg !854
  %442 = load i64, i64* %441, align 8, !dbg !854
  %443 = getelementptr inbounds %struct.gz_header_s, %struct.gz_header_s* %36, i32 0, i32 1, !dbg !855
  store i64 %442, i64* %443, align 8, !dbg !856
  %444 = getelementptr inbounds %struct.gz_header_s, %struct.gz_header_s* %36, i32 0, i32 3, !dbg !857
  store i32 3, i32* %444, align 4, !dbg !858
  %445 = load i8*, i8** %27, align 8, !dbg !859
  %446 = icmp ne i8* %445, null, !dbg !861
  br i1 %446, label %447, label %454, !dbg !862

; <label>:447:                                    ; preds = %438
  %448 = load i8*, i8** %27, align 8, !dbg !863
  %449 = getelementptr inbounds %struct.gz_header_s, %struct.gz_header_s* %36, i32 0, i32 4, !dbg !865
  store i8* %448, i8** %449, align 8, !dbg !866
  %450 = load i32, i32* %28, align 4, !dbg !867
  %451 = getelementptr inbounds %struct.gz_header_s, %struct.gz_header_s* %36, i32 0, i32 5, !dbg !868
  store i32 %450, i32* %451, align 8, !dbg !869
  %452 = load i32, i32* %28, align 4, !dbg !870
  %453 = getelementptr inbounds %struct.gz_header_s, %struct.gz_header_s* %36, i32 0, i32 6, !dbg !871
  store i32 %452, i32* %453, align 4, !dbg !872
  br label %454, !dbg !873

; <label>:454:                                    ; preds = %447, %438
  %455 = load i8*, i8** %25, align 8, !dbg !874
  %456 = icmp ne i8* %455, null, !dbg !876
  br i1 %456, label %457, label %465, !dbg !877

; <label>:457:                                    ; preds = %454
  %458 = load i8*, i8** %25, align 8, !dbg !878
  %459 = getelementptr inbounds %struct.gz_header_s, %struct.gz_header_s* %36, i32 0, i32 9, !dbg !880
  store i8* %458, i8** %459, align 8, !dbg !881
  %460 = load i8*, i8** %25, align 8, !dbg !882
  %461 = call i64 @strlen(i8* %460) #10, !dbg !883
  %462 = add i64 %461, 1, !dbg !884
  %463 = trunc i64 %462 to i32, !dbg !883
  %464 = getelementptr inbounds %struct.gz_header_s, %struct.gz_header_s* %36, i32 0, i32 10, !dbg !885
  store i32 %463, i32* %464, align 8, !dbg !886
  br label %465, !dbg !887

; <label>:465:                                    ; preds = %457, %454
  %466 = load i8*, i8** %24, align 8, !dbg !888
  %467 = icmp ne i8* %466, null, !dbg !890
  br i1 %467, label %468, label %476, !dbg !891

; <label>:468:                                    ; preds = %465
  %469 = load i8*, i8** %24, align 8, !dbg !892
  %470 = getelementptr inbounds %struct.gz_header_s, %struct.gz_header_s* %36, i32 0, i32 7, !dbg !894
  store i8* %469, i8** %470, align 8, !dbg !895
  %471 = load i8*, i8** %24, align 8, !dbg !896
  %472 = call i64 @strlen(i8* %471) #10, !dbg !897
  %473 = add i64 %472, 1, !dbg !898
  %474 = trunc i64 %473 to i32, !dbg !897
  %475 = getelementptr inbounds %struct.gz_header_s, %struct.gz_header_s* %36, i32 0, i32 8, !dbg !899
  store i32 %474, i32* %475, align 8, !dbg !900
  br label %476, !dbg !901

; <label>:476:                                    ; preds = %468, %465
  %477 = call i32 @deflateSetHeader(%struct.z_stream_s* %23, %struct.gz_header_s* %36), !dbg !902
  store i32 %477, i32* %6, align 4, !dbg !903
  %478 = load i32, i32* %6, align 4, !dbg !904
  %479 = icmp ne i32 0, %478, !dbg !906
  br i1 %479, label %480, label %485, !dbg !907

; <label>:480:                                    ; preds = %476
  %481 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !908
  %482 = load i32, i32* %6, align 4, !dbg !910
  %483 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %481, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.40, i32 0, i32 0), i32 %482), !dbg !911
  %484 = call i32 @deflateEnd(%struct.z_stream_s* %23), !dbg !912
  br label %554, !dbg !913

; <label>:485:                                    ; preds = %476
  %486 = load i32, i32* @verbose, align 4, !dbg !914
  %487 = icmp ne i32 %486, 0, !dbg !914
  br i1 %487, label %488, label %503, !dbg !916

; <label>:488:                                    ; preds = %485
  %489 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !917
  %490 = load i32, i32* @CHUNK_i, align 4, !dbg !919
  %491 = zext i32 %490 to i64, !dbg !919
  %492 = call i64 @deflateBound(%struct.z_stream_s* %23, i64 %491), !dbg !920
  %493 = load i32, i32* @CHUNK_i, align 4, !dbg !921
  %494 = zext i32 %493 to i64, !dbg !922
  %495 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %489, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.41, i32 0, i32 0), i64 %492, i64 %494), !dbg !923
  %496 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !924
  %497 = load i32, i32* @CHUNK_i, align 4, !dbg !925
  %498 = zext i32 %497 to i64, !dbg !925
  %499 = call i64 @compressBound(i64 %498), !dbg !926
  %500 = load i32, i32* @CHUNK_i, align 4, !dbg !927
  %501 = zext i32 %500 to i64, !dbg !928
  %502 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %496, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.42, i32 0, i32 0), i64 %499, i64 %501), !dbg !929
  br label %503, !dbg !930

; <label>:503:                                    ; preds = %488, %485
  %504 = load %struct._IO_FILE*, %struct._IO_FILE** %16, align 8, !dbg !931
  %505 = load %struct._IO_FILE*, %struct._IO_FILE** %17, align 8, !dbg !932
  %506 = load i8*, i8** %21, align 8, !dbg !933
  %507 = load i8*, i8** %22, align 8, !dbg !934
  %508 = call i32 @def(%struct._IO_FILE* %504, %struct._IO_FILE* %505, %struct.z_stream_s* %23, i8* %506, i8* %507), !dbg !935
  store i32 %508, i32* %6, align 4, !dbg !936
  %509 = load i32, i32* %6, align 4, !dbg !937
  %510 = icmp ne i32 0, %509, !dbg !939
  br i1 %510, label %511, label %513, !dbg !940

; <label>:511:                                    ; preds = %503
  %512 = load i32, i32* %6, align 4, !dbg !941
  call void @zerr(i32 %512), !dbg !942
  br label %513, !dbg !942

; <label>:513:                                    ; preds = %511, %503
  %514 = load i8*, i8** %27, align 8, !dbg !943
  %515 = icmp ne i8* %514, null, !dbg !945
  br i1 %515, label %516, label %518, !dbg !946

; <label>:516:                                    ; preds = %513
  %517 = load i8*, i8** %27, align 8, !dbg !947
  call void @free(i8* %517) #9, !dbg !948
  br label %518, !dbg !948

; <label>:518:                                    ; preds = %516, %513
  %519 = call i32 @deflateEnd(%struct.z_stream_s* %23), !dbg !949
  br label %553, !dbg !950

; <label>:520:                                    ; preds = %388
  %521 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %23, i32 0, i32 1, !dbg !951
  store i32 0, i32* %521, align 8, !dbg !953
  %522 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %23, i32 0, i32 0, !dbg !954
  store i8* null, i8** %522, align 8, !dbg !955
  %523 = load i32, i32* %11, align 4, !dbg !956
  %524 = call i32 @inflateInit2_(%struct.z_stream_s* %23, i32 %523, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i32 112), !dbg !956
  store i32 %524, i32* %6, align 4, !dbg !957
  %525 = load i32, i32* %6, align 4, !dbg !958
  %526 = icmp ne i32 0, %525, !dbg !960
  br i1 %526, label %527, label %528, !dbg !961

; <label>:527:                                    ; preds = %520
  br label %554, !dbg !962

; <label>:528:                                    ; preds = %520
  br label %529, !dbg !963, !llvm.loop !964

; <label>:529:                                    ; preds = %549, %528
  %530 = load %struct._IO_FILE*, %struct._IO_FILE** %16, align 8, !dbg !965
  %531 = load %struct._IO_FILE*, %struct._IO_FILE** %17, align 8, !dbg !967
  %532 = load i8*, i8** %21, align 8, !dbg !968
  %533 = load i8*, i8** %22, align 8, !dbg !969
  %534 = call i32 @inf(%struct._IO_FILE* %530, %struct._IO_FILE* %531, %struct.z_stream_s* %23, i8* %532, i8* %533), !dbg !970
  store i32 %534, i32* %6, align 4, !dbg !971
  %535 = load i32, i32* %6, align 4, !dbg !972
  %536 = icmp ne i32 1, %535, !dbg !974
  br i1 %536, label %537, label %539, !dbg !975

; <label>:537:                                    ; preds = %529
  %538 = load i32, i32* %6, align 4, !dbg !976
  call void @zerr(i32 %538), !dbg !978
  br label %551, !dbg !979

; <label>:539:                                    ; preds = %529
  br label %540, !dbg !980

; <label>:540:                                    ; preds = %539
  %541 = load %struct._IO_FILE*, %struct._IO_FILE** %16, align 8, !dbg !981
  %542 = call i32 @feof(%struct._IO_FILE* %541) #9, !dbg !983
  %543 = icmp ne i32 %542, 0, !dbg !983
  br i1 %543, label %549, label %544, !dbg !984

; <label>:544:                                    ; preds = %540
  %545 = load %struct._IO_FILE*, %struct._IO_FILE** %16, align 8, !dbg !985
  %546 = call i32 @ferror(%struct._IO_FILE* %545) #9, !dbg !987
  %547 = icmp ne i32 %546, 0, !dbg !988
  %548 = xor i1 %547, true, !dbg !988
  br label %549

; <label>:549:                                    ; preds = %544, %540
  %550 = phi i1 [ false, %540 ], [ %548, %544 ]
  br i1 %550, label %529, label %551, !dbg !989, !llvm.loop !964

; <label>:551:                                    ; preds = %549, %537
  %552 = call i32 @inflateEnd(%struct.z_stream_s* %23), !dbg !991
  br label %553

; <label>:553:                                    ; preds = %551, %518
  br label %554, !dbg !992

; <label>:554:                                    ; preds = %553, %527, %480, %437, %422, %412, %404
  %555 = load i32, i32* %6, align 4, !dbg !994
  %556 = icmp eq i32 %555, 0, !dbg !996
  br i1 %556, label %557, label %582, !dbg !997

; <label>:557:                                    ; preds = %554
  %558 = load %struct._IO_FILE*, %struct._IO_FILE** %16, align 8, !dbg !998
  %559 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1000
  %560 = icmp ne %struct._IO_FILE* %558, %559, !dbg !1001
  br i1 %560, label %561, label %582, !dbg !1002

; <label>:561:                                    ; preds = %557
  %562 = load %struct._IO_FILE*, %struct._IO_FILE** %17, align 8, !dbg !1003
  %563 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1005
  %564 = icmp ne %struct._IO_FILE* %562, %563, !dbg !1006
  br i1 %564, label %565, label %582, !dbg !1007

; <label>:565:                                    ; preds = %561
  %566 = load i8*, i8** %14, align 8, !dbg !1008
  %567 = call i32 @unlink(i8* %566) #9, !dbg !1010
  store i32 %567, i32* %6, align 4, !dbg !1011
  %568 = load i32, i32* %6, align 4, !dbg !1012
  %569 = icmp ne i32 %568, 0, !dbg !1014
  br i1 %569, label %570, label %581, !dbg !1015

; <label>:570:                                    ; preds = %565
  br label %571, !dbg !1016, !llvm.loop !1018

; <label>:571:                                    ; preds = %570
  %572 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1019
  %573 = call i32* @__errno_location() #1, !dbg !1022
  %574 = load i32, i32* %573, align 4, !dbg !1023
  %575 = call i8* @strerror(i32 %574) #9, !dbg !1024
  %576 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %572, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* %575), !dbg !1026
  br label %577, !dbg !1028

; <label>:577:                                    ; preds = %571
  %578 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1029
  %579 = load i32, i32* %4, align 4, !dbg !1030
  %580 = load i8**, i8*** %5, align 8, !dbg !1031
  call void @print_args(%struct._IO_FILE* %578, i32 %579, i8** %580), !dbg !1032
  call void @exit(i32 1) #11, !dbg !1033
  unreachable, !dbg !1033

; <label>:581:                                    ; preds = %565
  br label %582, !dbg !1034

; <label>:582:                                    ; preds = %581, %561, %557, %554
  %583 = load %struct._IO_FILE*, %struct._IO_FILE** %16, align 8, !dbg !1035
  %584 = call i32 @fclose(%struct._IO_FILE* %583), !dbg !1036
  %585 = load %struct._IO_FILE*, %struct._IO_FILE** %17, align 8, !dbg !1037
  %586 = call i32 @fclose(%struct._IO_FILE* %585), !dbg !1038
  %587 = load i8*, i8** %21, align 8, !dbg !1039
  call void @free(i8* %587) #9, !dbg !1040
  %588 = load i8*, i8** %22, align 8, !dbg !1041
  call void @free(i8* %588) #9, !dbg !1042
  %589 = load i32, i32* %6, align 4, !dbg !1043
  call void @exit(i32 %589) #11, !dbg !1044
  unreachable, !dbg !1044
                                                  ; No predecessors!
  %591 = load i32, i32* %3, align 4, !dbg !1045
  ret i32 %591, !dbg !1045
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @__xpg_basename(i8*) #2

; Function Attrs: nounwind
declare i8* @getenv(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #3

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #2

; Function Attrs: nounwind
declare i64 @strtoul(i8*, i8**, i32) #2

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @str_to_num(i8*) #6 !dbg !1046 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1050, metadata !92), !dbg !1051
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1052, metadata !92), !dbg !1053
  %6 = load i8*, i8** %3, align 8, !dbg !1054
  store i8* %6, i8** %4, align 8, !dbg !1053
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1055, metadata !92), !dbg !1056
  %7 = load i8*, i8** %4, align 8, !dbg !1057
  %8 = call i64 @strtoull(i8* %7, i8** %4, i32 0) #9, !dbg !1058
  store i64 %8, i64* %5, align 8, !dbg !1056
  %9 = load i8*, i8** %4, align 8, !dbg !1059
  %10 = load i8, i8* %9, align 1, !dbg !1061
  %11 = sext i8 %10 to i32, !dbg !1061
  %12 = icmp eq i32 %11, 0, !dbg !1062
  br i1 %12, label %13, label %15, !dbg !1063

; <label>:13:                                     ; preds = %1
  %14 = load i64, i64* %5, align 8, !dbg !1064
  store i64 %14, i64* %2, align 8, !dbg !1065
  br label %40, !dbg !1065

; <label>:15:                                     ; preds = %1
  %16 = load i8*, i8** %4, align 8, !dbg !1066
  %17 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0)) #10, !dbg !1068
  %18 = icmp eq i32 %17, 0, !dbg !1069
  br i1 %18, label %19, label %22, !dbg !1070

; <label>:19:                                     ; preds = %15
  %20 = load i64, i64* %5, align 8, !dbg !1071
  %21 = mul i64 %20, 1024, !dbg !1071
  store i64 %21, i64* %5, align 8, !dbg !1071
  br label %38, !dbg !1072

; <label>:22:                                     ; preds = %15
  %23 = load i8*, i8** %4, align 8, !dbg !1073
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0)) #10, !dbg !1075
  %25 = icmp eq i32 %24, 0, !dbg !1076
  br i1 %25, label %26, label %29, !dbg !1077

; <label>:26:                                     ; preds = %22
  %27 = load i64, i64* %5, align 8, !dbg !1078
  %28 = mul i64 %27, 1048576, !dbg !1078
  store i64 %28, i64* %5, align 8, !dbg !1078
  br label %37, !dbg !1079

; <label>:29:                                     ; preds = %22
  %30 = load i8*, i8** %4, align 8, !dbg !1080
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0)) #10, !dbg !1082
  %32 = icmp eq i32 %31, 0, !dbg !1083
  br i1 %32, label %33, label %36, !dbg !1084

; <label>:33:                                     ; preds = %29
  %34 = load i64, i64* %5, align 8, !dbg !1085
  %35 = mul i64 %34, 1073741824, !dbg !1085
  store i64 %35, i64* %5, align 8, !dbg !1085
  br label %36, !dbg !1086

; <label>:36:                                     ; preds = %33, %29
  br label %37

; <label>:37:                                     ; preds = %36, %26
  br label %38

; <label>:38:                                     ; preds = %37, %19
  %39 = load i64, i64* %5, align 8, !dbg !1087
  store i64 %39, i64* %2, align 8, !dbg !1088
  br label %40, !dbg !1088

; <label>:40:                                     ; preds = %38, %13
  %41 = load i64, i64* %2, align 8, !dbg !1089
  ret i64 %41, !dbg !1089
}

; Function Attrs: nounwind uwtable
define internal void @userinfo(%struct._IO_FILE*, i8*, i8*) #0 !dbg !1090 {
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %4, metadata !1093, metadata !92), !dbg !1094
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1095, metadata !92), !dbg !1096
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1097, metadata !92), !dbg !1098
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !1099
  %8 = load i8*, i8** %5, align 8, !dbg !1100
  %9 = call i8* @__xpg_basename(i8* %8) #9, !dbg !1101
  %10 = load i8*, i8** %6, align 8, !dbg !1102
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.47, i32 0, i32 0), i8* %9, i8* %10), !dbg !1103
  ret void, !dbg !1104
}

; Function Attrs: nounwind uwtable
define internal void @usage(%struct._IO_FILE*, i8*, i32, i8**) #0 !dbg !1105 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !1108, metadata !92), !dbg !1109
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1110, metadata !92), !dbg !1111
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1112, metadata !92), !dbg !1113
  store i8** %3, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !1114, metadata !92), !dbg !1115
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !1116
  %10 = load i8*, i8** %6, align 8, !dbg !1117
  %11 = load i32, i32* @CHUNK_i, align 4, !dbg !1118
  %12 = udiv i32 %11, 1024, !dbg !1119
  %13 = load i32, i32* @CHUNK_o, align 4, !dbg !1120
  %14 = udiv i32 %13, 1024, !dbg !1121
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([1545 x i8], [1545 x i8]* @.str.48, i32 0, i32 0), i8* %10, i32 %12, i32 %14), !dbg !1122
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !1123
  call void @print_version(%struct._IO_FILE* %16), !dbg !1124
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !1125
  %18 = load i32, i32* %7, align 4, !dbg !1126
  %19 = load i8**, i8*** %8, align 8, !dbg !1127
  call void @print_args(%struct._IO_FILE* %17, i32 %18, i8** %19), !dbg !1128
  ret void, !dbg !1129
}

; Function Attrs: nounwind uwtable
define internal i32 @pin_to_cpu(i32) #0 !dbg !1130 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpu_set_t*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1133, metadata !92), !dbg !1134
  call void @llvm.dbg.declare(metadata %struct.cpu_set_t** %4, metadata !1135, metadata !92), !dbg !1144
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1145, metadata !92), !dbg !1146
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1147, metadata !92), !dbg !1148
  store i32 1024, i32* %6, align 4, !dbg !1149
  %9 = load i32, i32* %6, align 4, !dbg !1150
  %10 = sext i32 %9 to i64, !dbg !1150
  %11 = call %struct.cpu_set_t* @__sched_cpualloc(i64 %10) #9, !dbg !1150
  store %struct.cpu_set_t* %11, %struct.cpu_set_t** %4, align 8, !dbg !1151
  %12 = load %struct.cpu_set_t*, %struct.cpu_set_t** %4, align 8, !dbg !1152
  %13 = icmp eq %struct.cpu_set_t* %12, null, !dbg !1154
  br i1 %13, label %14, label %16, !dbg !1155

; <label>:14:                                     ; preds = %1
  %15 = call i32 @sched_getcpu() #9, !dbg !1156
  store i32 %15, i32* %2, align 4, !dbg !1157
  br label %60, !dbg !1157

; <label>:16:                                     ; preds = %1
  %17 = load i32, i32* %6, align 4, !dbg !1158
  %18 = sext i32 %17 to i64, !dbg !1159
  %19 = add i64 %18, 64, !dbg !1160
  %20 = sub i64 %19, 1, !dbg !1161
  %21 = udiv i64 %20, 64, !dbg !1162
  %22 = mul i64 %21, 8, !dbg !1163
  store i64 %22, i64* %5, align 8, !dbg !1164
  br label %23, !dbg !1165, !llvm.loop !1166

; <label>:23:                                     ; preds = %16
  %24 = load %struct.cpu_set_t*, %struct.cpu_set_t** %4, align 8, !dbg !1167
  %25 = bitcast %struct.cpu_set_t* %24 to i8*, !dbg !1169
  %26 = load i64, i64* %5, align 8, !dbg !1167
  call void @llvm.memset.p0i8.i64(i8* %25, i8 0, i64 %26, i32 8, i1 false), !dbg !1169
  br label %27, !dbg !1169

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1170, metadata !92), !dbg !1172
  %28 = load i32, i32* %3, align 4, !dbg !1173
  %29 = sext i32 %28 to i64, !dbg !1174
  store i64 %29, i64* %7, align 8, !dbg !1172
  %30 = load i64, i64* %7, align 8, !dbg !1175
  %31 = udiv i64 %30, 8, !dbg !1176
  %32 = load i64, i64* %5, align 8, !dbg !1173
  %33 = icmp ult i64 %31, %32, !dbg !1177
  br i1 %33, label %34, label %46, !dbg !1175

; <label>:34:                                     ; preds = %27
  %35 = load i64, i64* %7, align 8, !dbg !1178
  %36 = urem i64 %35, 64, !dbg !1180
  %37 = shl i64 1, %36, !dbg !1181
  %38 = load i64, i64* %7, align 8, !dbg !1182
  %39 = udiv i64 %38, 64, !dbg !1183
  %40 = load %struct.cpu_set_t*, %struct.cpu_set_t** %4, align 8, !dbg !1184
  %41 = getelementptr inbounds %struct.cpu_set_t, %struct.cpu_set_t* %40, i32 0, i32 0, !dbg !1185
  %42 = getelementptr inbounds [16 x i64], [16 x i64]* %41, i32 0, i32 0, !dbg !1186
  %43 = getelementptr inbounds i64, i64* %42, i64 %39, !dbg !1186
  %44 = load i64, i64* %43, align 8, !dbg !1187
  %45 = or i64 %44, %37, !dbg !1187
  store i64 %45, i64* %43, align 8, !dbg !1187
  br label %47, !dbg !1185

; <label>:46:                                     ; preds = %27
  br label %47, !dbg !1188

; <label>:47:                                     ; preds = %46, %34
  %48 = phi i64 [ %45, %34 ], [ 0, %46 ], !dbg !1190
  store i64 %48, i64* %8, align 8, !dbg !1192
  %49 = load i64, i64* %8, align 8, !dbg !1193
  %50 = load i64, i64* %5, align 8, !dbg !1194
  %51 = load %struct.cpu_set_t*, %struct.cpu_set_t** %4, align 8, !dbg !1196
  %52 = call i32 @sched_setaffinity(i32 0, i64 %50, %struct.cpu_set_t* %51) #9, !dbg !1197
  %53 = icmp slt i32 %52, 0, !dbg !1198
  br i1 %53, label %54, label %57, !dbg !1199

; <label>:54:                                     ; preds = %47
  %55 = load %struct.cpu_set_t*, %struct.cpu_set_t** %4, align 8, !dbg !1200
  call void @__sched_cpufree(%struct.cpu_set_t* %55) #9, !dbg !1200
  %56 = call i32 @sched_getcpu() #9, !dbg !1202
  store i32 %56, i32* %2, align 4, !dbg !1203
  br label %60, !dbg !1203

; <label>:57:                                     ; preds = %47
  %58 = load %struct.cpu_set_t*, %struct.cpu_set_t** %4, align 8, !dbg !1204
  call void @__sched_cpufree(%struct.cpu_set_t* %58) #9, !dbg !1204
  %59 = load i32, i32* %3, align 4, !dbg !1205
  store i32 %59, i32* %2, align 4, !dbg !1206
  br label %60, !dbg !1206

; <label>:60:                                     ; preds = %57, %54, %14
  %61 = load i32, i32* %2, align 4, !dbg !1207
  ret i32 %61, !dbg !1207
}

declare void @zlib_set_inflate_impl(i32) #4

declare void @zlib_set_deflate_impl(i32) #4

declare void @zlib_set_accelerator(i8*, i32) #4

declare %struct._IO_FILE* @fopen(i8*, i8*) #4

; Function Attrs: nounwind
declare i8* @strerror(i32) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #7

; Function Attrs: nounwind uwtable
define internal void @print_args(%struct._IO_FILE*, i32, i8**) #0 !dbg !1208 {
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %4, metadata !1211, metadata !92), !dbg !1212
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1213, metadata !92), !dbg !1214
  store i8** %2, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !1215, metadata !92), !dbg !1216
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1217, metadata !92), !dbg !1218
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !1219
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i32 0, i32 0)), !dbg !1220
  store i32 0, i32* %7, align 4, !dbg !1221
  br label %10, !dbg !1223

; <label>:10:                                     ; preds = %23, %3
  %11 = load i32, i32* %7, align 4, !dbg !1224
  %12 = load i32, i32* %5, align 4, !dbg !1227
  %13 = icmp slt i32 %11, %12, !dbg !1228
  br i1 %13, label %14, label %26, !dbg !1229

; <label>:14:                                     ; preds = %10
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !1230
  %16 = load i32, i32* %7, align 4, !dbg !1231
  %17 = load i32, i32* %7, align 4, !dbg !1232
  %18 = sext i32 %17 to i64, !dbg !1233
  %19 = load i8**, i8*** %6, align 8, !dbg !1233
  %20 = getelementptr inbounds i8*, i8** %19, i64 %18, !dbg !1233
  %21 = load i8*, i8** %20, align 8, !dbg !1233
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.53, i32 0, i32 0), i32 %16, i8* %21), !dbg !1234
  br label %23, !dbg !1234

; <label>:23:                                     ; preds = %14
  %24 = load i32, i32* %7, align 4, !dbg !1235
  %25 = add nsw i32 %24, 1, !dbg !1235
  store i32 %25, i32* %7, align 4, !dbg !1235
  br label %10, !dbg !1237, !llvm.loop !1238

; <label>:26:                                     ; preds = %10
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !1240
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i32 0, i32 0)), !dbg !1241
  ret void, !dbg !1242
}

; Function Attrs: nounwind
declare i32 @lstat(i8*, %struct.stat*) #2

; Function Attrs: nounwind uwtable
define internal i32 @strip_ending(i8*, i8*, i64, i8*) #0 !dbg !1243 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1246, metadata !92), !dbg !1247
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1248, metadata !92), !dbg !1249
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1250, metadata !92), !dbg !1251
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1252, metadata !92), !dbg !1253
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1254, metadata !92), !dbg !1255
  %11 = load i8*, i8** %6, align 8, !dbg !1256
  %12 = load i64, i64* %8, align 8, !dbg !1257
  %13 = load i8*, i8** %7, align 8, !dbg !1258
  %14 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %11, i64 %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0), i8* %13) #9, !dbg !1259
  %15 = load i8*, i8** %6, align 8, !dbg !1260
  %16 = load i8*, i8** %9, align 8, !dbg !1261
  %17 = call i8* @strstr(i8* %15, i8* %16) #10, !dbg !1262
  store i8* %17, i8** %10, align 8, !dbg !1263
  %18 = load i8*, i8** %10, align 8, !dbg !1264
  %19 = icmp eq i8* %18, null, !dbg !1266
  br i1 %19, label %20, label %21, !dbg !1267

; <label>:20:                                     ; preds = %4
  store i32 -1, i32* %5, align 4, !dbg !1268
  br label %25, !dbg !1268

; <label>:21:                                     ; preds = %4
  %22 = load i8*, i8** %10, align 8, !dbg !1269
  %23 = getelementptr inbounds i8, i8* %22, i32 -1, !dbg !1269
  store i8* %23, i8** %10, align 8, !dbg !1269
  %24 = load i8*, i8** %10, align 8, !dbg !1270
  store i8 0, i8* %24, align 1, !dbg !1271
  store i32 0, i32* %5, align 4, !dbg !1272
  br label %25, !dbg !1272

; <label>:25:                                     ; preds = %21, %20
  %26 = load i32, i32* %5, align 4, !dbg !1273
  ret i32 %26, !dbg !1273
}

; Function Attrs: nounwind uwtable
define internal i32 @do_list_contents(%struct._IO_FILE*, i8*, i32) #0 !dbg !1274 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.stat, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca %struct.z_stream_s, align 8
  %16 = alloca [4096 x i8], align 16
  %17 = alloca [4096 x i8], align 16
  %18 = alloca %struct.gz_header_s, align 8
  %19 = alloca [65536 x i8], align 16
  %20 = alloca [1024 x i8], align 16
  %21 = alloca [1024 x i8], align 16
  %22 = alloca i32, align 4
  %23 = alloca [12 x i8*], align 16
  %24 = alloca i64, align 8
  %25 = alloca %struct.tm*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !1277, metadata !92), !dbg !1278
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1279, metadata !92), !dbg !1280
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1281, metadata !92), !dbg !1282
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1283, metadata !92), !dbg !1284
  call void @llvm.dbg.declare(metadata %struct.stat* %9, metadata !1285, metadata !92), !dbg !1286
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1287, metadata !92), !dbg !1289
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1290, metadata !92), !dbg !1291
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1292, metadata !92), !dbg !1293
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1294, metadata !92), !dbg !1295
  call void @llvm.dbg.declare(metadata float* %14, metadata !1296, metadata !92), !dbg !1297
  store float 0.000000e+00, float* %14, align 4, !dbg !1297
  call void @llvm.dbg.declare(metadata %struct.z_stream_s* %15, metadata !1298, metadata !92), !dbg !1299
  call void @llvm.dbg.declare(metadata [4096 x i8]* %16, metadata !1300, metadata !92), !dbg !1302
  call void @llvm.dbg.declare(metadata [4096 x i8]* %17, metadata !1303, metadata !92), !dbg !1304
  call void @llvm.dbg.declare(metadata %struct.gz_header_s* %18, metadata !1305, metadata !92), !dbg !1306
  call void @llvm.dbg.declare(metadata [65536 x i8]* %19, metadata !1307, metadata !92), !dbg !1311
  call void @llvm.dbg.declare(metadata [1024 x i8]* %20, metadata !1312, metadata !92), !dbg !1316
  call void @llvm.dbg.declare(metadata [1024 x i8]* %21, metadata !1317, metadata !92), !dbg !1318
  call void @llvm.dbg.declare(metadata i32* %22, metadata !1319, metadata !92), !dbg !1320
  store i32 31, i32* %22, align 4, !dbg !1320
  call void @llvm.dbg.declare(metadata [12 x i8*]* %23, metadata !1321, metadata !92), !dbg !1325
  %26 = bitcast [12 x i8*]* %23 to i8*, !dbg !1325
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* bitcast ([12 x i8*]* @do_list_contents.mon to i8*), i64 96, i32 16, i1 false), !dbg !1325
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !1326
  %28 = call i32 @fileno(%struct._IO_FILE* %27) #9, !dbg !1327
  %29 = call i32 @fstat(i32 %28, %struct.stat* %9) #9, !dbg !1328
  store i32 %29, i32* %8, align 4, !dbg !1330
  %30 = load i32, i32* %8, align 4, !dbg !1331
  %31 = icmp ne i32 %30, 0, !dbg !1333
  br i1 %31, label %32, label %34, !dbg !1334

; <label>:32:                                     ; preds = %3
  %33 = load i32, i32* %8, align 4, !dbg !1335
  store i32 %33, i32* %4, align 4, !dbg !1336
  br label %193, !dbg !1336

; <label>:34:                                     ; preds = %3
  %35 = bitcast %struct.z_stream_s* %15 to i8*, !dbg !1337
  call void @llvm.memset.p0i8.i64(i8* %35, i8 0, i64 112, i32 8, i1 false), !dbg !1337
  %36 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %15, i32 0, i32 1, !dbg !1338
  store i32 0, i32* %36, align 8, !dbg !1339
  %37 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %15, i32 0, i32 0, !dbg !1340
  store i8* null, i8** %37, align 8, !dbg !1341
  %38 = load i32, i32* %22, align 4, !dbg !1342
  %39 = call i32 @inflateInit2_(%struct.z_stream_s* %15, i32 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i32 112), !dbg !1342
  store i32 %39, i32* %8, align 4, !dbg !1343
  %40 = load i32, i32* %8, align 4, !dbg !1344
  %41 = icmp ne i32 0, %40, !dbg !1346
  br i1 %41, label %42, label %44, !dbg !1347

; <label>:42:                                     ; preds = %34
  %43 = load i32, i32* %8, align 4, !dbg !1348
  store i32 %43, i32* %4, align 4, !dbg !1349
  br label %193, !dbg !1349

; <label>:44:                                     ; preds = %34
  %45 = getelementptr inbounds [4096 x i8], [4096 x i8]* %17, i32 0, i32 0, !dbg !1350
  %46 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %15, i32 0, i32 3, !dbg !1351
  store i8* %45, i8** %46, align 8, !dbg !1352
  %47 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %15, i32 0, i32 4, !dbg !1353
  store i32 4096, i32* %47, align 8, !dbg !1354
  %48 = getelementptr inbounds [4096 x i8], [4096 x i8]* %16, i32 0, i32 0, !dbg !1355
  %49 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %15, i32 0, i32 0, !dbg !1356
  store i8* %48, i8** %49, align 8, !dbg !1357
  %50 = getelementptr inbounds [4096 x i8], [4096 x i8]* %16, i32 0, i32 0, !dbg !1358
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !1359
  %52 = call i64 @fread(i8* %50, i64 1, i64 4096, %struct._IO_FILE* %51), !dbg !1360
  %53 = trunc i64 %52 to i32, !dbg !1360
  %54 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %15, i32 0, i32 1, !dbg !1361
  store i32 %53, i32* %54, align 8, !dbg !1362
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !1363
  %56 = call i32 @ferror(%struct._IO_FILE* %55) #9, !dbg !1365
  %57 = icmp ne i32 %56, 0, !dbg !1365
  br i1 %57, label %58, label %59, !dbg !1366

; <label>:58:                                     ; preds = %44
  store i32 -1, i32* %4, align 4, !dbg !1367
  br label %193, !dbg !1367

; <label>:59:                                     ; preds = %44
  %60 = getelementptr inbounds [65536 x i8], [65536 x i8]* %19, i32 0, i32 0, !dbg !1368
  %61 = getelementptr inbounds %struct.gz_header_s, %struct.gz_header_s* %18, i32 0, i32 4, !dbg !1369
  store i8* %60, i8** %61, align 8, !dbg !1370
  %62 = getelementptr inbounds %struct.gz_header_s, %struct.gz_header_s* %18, i32 0, i32 5, !dbg !1371
  store i32 0, i32* %62, align 8, !dbg !1372
  %63 = getelementptr inbounds %struct.gz_header_s, %struct.gz_header_s* %18, i32 0, i32 6, !dbg !1373
  store i32 65536, i32* %63, align 4, !dbg !1374
  %64 = getelementptr inbounds [1024 x i8], [1024 x i8]* %20, i32 0, i32 0, !dbg !1375
  %65 = getelementptr inbounds %struct.gz_header_s, %struct.gz_header_s* %18, i32 0, i32 9, !dbg !1376
  store i8* %64, i8** %65, align 8, !dbg !1377
  %66 = getelementptr inbounds %struct.gz_header_s, %struct.gz_header_s* %18, i32 0, i32 10, !dbg !1378
  store i32 1024, i32* %66, align 8, !dbg !1379
  %67 = getelementptr inbounds [1024 x i8], [1024 x i8]* %21, i32 0, i32 0, !dbg !1380
  %68 = getelementptr inbounds %struct.gz_header_s, %struct.gz_header_s* %18, i32 0, i32 7, !dbg !1381
  store i8* %67, i8** %68, align 8, !dbg !1382
  %69 = getelementptr inbounds %struct.gz_header_s, %struct.gz_header_s* %18, i32 0, i32 8, !dbg !1383
  store i32 1024, i32* %69, align 8, !dbg !1384
  %70 = call i32 @inflateGetHeader(%struct.z_stream_s* %15, %struct.gz_header_s* %18), !dbg !1385
  store i32 %70, i32* %8, align 4, !dbg !1386
  %71 = load i32, i32* %8, align 4, !dbg !1387
  %72 = icmp ne i32 0, %71, !dbg !1389
  br i1 %72, label %73, label %78, !dbg !1390

; <label>:73:                                     ; preds = %59
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1391
  %75 = load i32, i32* %8, align 4, !dbg !1393
  %76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.68, i32 0, i32 0), i32 %75), !dbg !1394
  %77 = load i32, i32* %8, align 4, !dbg !1395
  store i32 %77, i32* %4, align 4, !dbg !1396
  br label %193, !dbg !1396

; <label>:78:                                     ; preds = %59
  %79 = call i32 @inflate(%struct.z_stream_s* %15, i32 5), !dbg !1397
  store i32 %79, i32* %8, align 4, !dbg !1398
  %80 = load i32, i32* %8, align 4, !dbg !1399
  %81 = icmp ne i32 0, %80, !dbg !1401
  br i1 %81, label %82, label %87, !dbg !1402

; <label>:82:                                     ; preds = %78
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1403
  %84 = load i32, i32* %8, align 4, !dbg !1405
  %85 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.69, i32 0, i32 0), i32 %84), !dbg !1406
  %86 = load i32, i32* %8, align 4, !dbg !1407
  store i32 %86, i32* %4, align 4, !dbg !1408
  br label %193, !dbg !1408

; <label>:87:                                     ; preds = %78
  %88 = getelementptr inbounds %struct.gz_header_s, %struct.gz_header_s* %18, i32 0, i32 12, !dbg !1409
  %89 = load i32, i32* %88, align 8, !dbg !1409
  %90 = icmp eq i32 %89, 0, !dbg !1411
  br i1 %90, label %91, label %100, !dbg !1412

; <label>:91:                                     ; preds = %87
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1413
  %93 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %15, i32 0, i32 2, !dbg !1415
  %94 = load i64, i64* %93, align 8, !dbg !1415
  %95 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %15, i32 0, i32 5, !dbg !1416
  %96 = load i64, i64* %95, align 8, !dbg !1416
  %97 = getelementptr inbounds %struct.gz_header_s, %struct.gz_header_s* %18, i32 0, i32 12, !dbg !1417
  %98 = load i32, i32* %97, align 8, !dbg !1417
  %99 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %92, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.70, i32 0, i32 0), i64 %94, i64 %96, i32 %98), !dbg !1418
  store i32 -3, i32* %4, align 4, !dbg !1419
  br label %193, !dbg !1419

; <label>:100:                                    ; preds = %87
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !1420
  %102 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 8, !dbg !1421
  %103 = load i64, i64* %102, align 8, !dbg !1421
  %104 = sub i64 %103, 8, !dbg !1422
  %105 = call i32 @fseek(%struct._IO_FILE* %101, i64 %104, i32 0), !dbg !1423
  store i32 %105, i32* %8, align 4, !dbg !1424
  %106 = load i32, i32* %8, align 4, !dbg !1425
  %107 = icmp ne i32 %106, 0, !dbg !1427
  br i1 %107, label %108, label %110, !dbg !1428

; <label>:108:                                    ; preds = %100
  %109 = load i32, i32* %8, align 4, !dbg !1429
  store i32 %109, i32* %4, align 4, !dbg !1430
  br label %193, !dbg !1430

; <label>:110:                                    ; preds = %100
  %111 = bitcast i32* %10 to i8*, !dbg !1431
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !1432
  %113 = call i64 @fread(i8* %111, i64 4, i64 1, %struct._IO_FILE* %112), !dbg !1433
  %114 = trunc i64 %113 to i32, !dbg !1433
  store i32 %114, i32* %8, align 4, !dbg !1434
  %115 = load i32, i32* %8, align 4, !dbg !1435
  %116 = icmp ne i32 %115, 1, !dbg !1437
  br i1 %116, label %117, label %118, !dbg !1438

; <label>:117:                                    ; preds = %110
  store i32 -1, i32* %4, align 4, !dbg !1439
  br label %193, !dbg !1439

; <label>:118:                                    ; preds = %110
  %119 = load i32, i32* %10, align 4, !dbg !1440
  store i32 %119, i32* %11, align 4, !dbg !1441
  %120 = bitcast i32* %10 to i8*, !dbg !1442
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !1443
  %122 = call i64 @fread(i8* %120, i64 4, i64 1, %struct._IO_FILE* %121), !dbg !1444
  %123 = trunc i64 %122 to i32, !dbg !1444
  store i32 %123, i32* %8, align 4, !dbg !1445
  %124 = load i32, i32* %8, align 4, !dbg !1446
  %125 = icmp ne i32 %124, 1, !dbg !1448
  br i1 %125, label %126, label %127, !dbg !1449

; <label>:126:                                    ; preds = %118
  store i32 -1, i32* %4, align 4, !dbg !1450
  br label %193, !dbg !1450

; <label>:127:                                    ; preds = %118
  %128 = load i32, i32* %10, align 4, !dbg !1451
  store i32 %128, i32* %12, align 4, !dbg !1452
  %129 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 8, !dbg !1453
  %130 = load i64, i64* %129, align 8, !dbg !1453
  %131 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %15, i32 0, i32 2, !dbg !1454
  %132 = load i64, i64* %131, align 8, !dbg !1454
  %133 = sub i64 %130, %132, !dbg !1455
  %134 = sub i64 %133, 8, !dbg !1456
  %135 = trunc i64 %134 to i32, !dbg !1457
  store i32 %135, i32* %13, align 4, !dbg !1458
  %136 = load i32, i32* %12, align 4, !dbg !1459
  %137 = icmp ne i32 %136, 0, !dbg !1459
  br i1 %137, label %138, label %146, !dbg !1461

; <label>:138:                                    ; preds = %127
  %139 = load i32, i32* %13, align 4, !dbg !1462
  %140 = uitofp i32 %139 to float, !dbg !1463
  %141 = fmul float %140, 1.000000e+02, !dbg !1464
  %142 = load i32, i32* %12, align 4, !dbg !1465
  %143 = uitofp i32 %142 to float, !dbg !1465
  %144 = fdiv float %141, %143, !dbg !1466
  %145 = fsub float 1.000000e+02, %144, !dbg !1467
  store float %145, float* %14, align 4, !dbg !1468
  br label %146, !dbg !1469

; <label>:146:                                    ; preds = %138, %127
  %147 = load i32, i32* @verbose, align 4, !dbg !1470
  %148 = icmp ne i32 %147, 0, !dbg !1470
  br i1 %148, label %159, label %149, !dbg !1472

; <label>:149:                                    ; preds = %146
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1473
  %151 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 8, !dbg !1475
  %152 = load i64, i64* %151, align 8, !dbg !1475
  %153 = load i32, i32* %12, align 4, !dbg !1476
  %154 = zext i32 %153 to i64, !dbg !1477
  %155 = load float, float* %14, align 4, !dbg !1478
  %156 = fpext float %155 to double, !dbg !1478
  %157 = load i8*, i8** %6, align 8, !dbg !1479
  %158 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %150, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.71, i32 0, i32 0), i64 %152, i64 %154, double %156, i8* %157), !dbg !1480
  br label %187, !dbg !1481

; <label>:159:                                    ; preds = %146
  call void @llvm.dbg.declare(metadata i64* %24, metadata !1482, metadata !92), !dbg !1484
  %160 = call i64 @time(i64* null) #9, !dbg !1485
  store i64 %160, i64* %24, align 8, !dbg !1484
  call void @llvm.dbg.declare(metadata %struct.tm** %25, metadata !1486, metadata !92), !dbg !1501
  %161 = call %struct.tm* @localtime(i64* %24) #9, !dbg !1502
  store %struct.tm* %161, %struct.tm** %25, align 8, !dbg !1501
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1503
  %163 = load i32, i32* %11, align 4, !dbg !1504
  %164 = load %struct.tm*, %struct.tm** %25, align 8, !dbg !1505
  %165 = getelementptr inbounds %struct.tm, %struct.tm* %164, i32 0, i32 4, !dbg !1506
  %166 = load i32, i32* %165, align 8, !dbg !1506
  %167 = sext i32 %166 to i64, !dbg !1507
  %168 = getelementptr inbounds [12 x i8*], [12 x i8*]* %23, i64 0, i64 %167, !dbg !1507
  %169 = load i8*, i8** %168, align 8, !dbg !1507
  %170 = load %struct.tm*, %struct.tm** %25, align 8, !dbg !1508
  %171 = getelementptr inbounds %struct.tm, %struct.tm* %170, i32 0, i32 3, !dbg !1509
  %172 = load i32, i32* %171, align 4, !dbg !1509
  %173 = load %struct.tm*, %struct.tm** %25, align 8, !dbg !1510
  %174 = getelementptr inbounds %struct.tm, %struct.tm* %173, i32 0, i32 2, !dbg !1511
  %175 = load i32, i32* %174, align 8, !dbg !1511
  %176 = load %struct.tm*, %struct.tm** %25, align 8, !dbg !1512
  %177 = getelementptr inbounds %struct.tm, %struct.tm* %176, i32 0, i32 1, !dbg !1513
  %178 = load i32, i32* %177, align 4, !dbg !1513
  %179 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 8, !dbg !1514
  %180 = load i64, i64* %179, align 8, !dbg !1514
  %181 = load i32, i32* %12, align 4, !dbg !1515
  %182 = zext i32 %181 to i64, !dbg !1516
  %183 = load float, float* %14, align 4, !dbg !1517
  %184 = fpext float %183 to double, !dbg !1517
  %185 = load i8*, i8** %6, align 8, !dbg !1518
  %186 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %162, i8* getelementptr inbounds ([139 x i8], [139 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i32 0, i32 0), i32 %163, i8* %169, i32 %172, i32 %175, i32 %178, i64 %180, i64 %182, double %184, i8* %185), !dbg !1519
  br label %187

; <label>:187:                                    ; preds = %159, %149
  %188 = load i32, i32* %7, align 4, !dbg !1520
  %189 = icmp sgt i32 %188, 1, !dbg !1522
  br i1 %189, label %190, label %192, !dbg !1523

; <label>:190:                                    ; preds = %187
  %191 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1524
  call void @do_print_gzip_hdr(%struct.gz_header_s* %18, %struct._IO_FILE* %191), !dbg !1525
  br label %192, !dbg !1525

; <label>:192:                                    ; preds = %190, %187
  store i32 0, i32* %4, align 4, !dbg !1526
  br label %193, !dbg !1526

; <label>:193:                                    ; preds = %192, %126, %117, %108, %91, %82, %73, %58, %42, %32
  %194 = load i32, i32* %4, align 4, !dbg !1527
  ret i32 %194, !dbg !1527
}

declare i32 @fclose(%struct._IO_FILE*) #4

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #2

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #2

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i32 @fchmod(i32, i32) #2

; Function Attrs: nounwind
declare i32 @isatty(i32) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #8

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @file_size(i8*) #6 !dbg !1528 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stat, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1533, metadata !92), !dbg !1534
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1535, metadata !92), !dbg !1536
  call void @llvm.dbg.declare(metadata %struct.stat* %5, metadata !1537, metadata !92), !dbg !1538
  %6 = load i8*, i8** %3, align 8, !dbg !1539
  %7 = call i32 @lstat(i8* %6, %struct.stat* %5) #9, !dbg !1540
  store i32 %7, i32* %4, align 4, !dbg !1541
  %8 = load i32, i32* %4, align 4, !dbg !1542
  %9 = icmp ne i32 %8, 0, !dbg !1544
  br i1 %9, label %10, label %16, !dbg !1545

; <label>:10:                                     ; preds = %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1546
  %12 = load i8*, i8** %3, align 8, !dbg !1548
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.87, i32 0, i32 0), i8* %12), !dbg !1549
  %14 = load i32, i32* %4, align 4, !dbg !1550
  %15 = sext i32 %14 to i64, !dbg !1550
  store i64 %15, i64* %2, align 8, !dbg !1551
  br label %19, !dbg !1551

; <label>:16:                                     ; preds = %1
  %17 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 8, !dbg !1552
  %18 = load i64, i64* %17, align 8, !dbg !1552
  store i64 %18, i64* %2, align 8, !dbg !1553
  br label %19, !dbg !1553

; <label>:19:                                     ; preds = %16, %10
  %20 = load i64, i64* %2, align 8, !dbg !1554
  ret i64 %20, !dbg !1554
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @file_read(i8*, i8*, i64) #6 !dbg !1555 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1558, metadata !92), !dbg !1559
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1560, metadata !92), !dbg !1561
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1562, metadata !92), !dbg !1563
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1564, metadata !92), !dbg !1565
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %9, metadata !1566, metadata !92), !dbg !1567
  %10 = load i8*, i8** %5, align 8, !dbg !1568
  %11 = icmp eq i8* %10, null, !dbg !1570
  br i1 %11, label %18, label %12, !dbg !1571

; <label>:12:                                     ; preds = %3
  %13 = load i8*, i8** %6, align 8, !dbg !1572
  %14 = icmp eq i8* %13, null, !dbg !1574
  br i1 %14, label %18, label %15, !dbg !1575

; <label>:15:                                     ; preds = %12
  %16 = load i64, i64* %7, align 8, !dbg !1576
  %17 = icmp eq i64 %16, 0, !dbg !1578
  br i1 %17, label %18, label %19, !dbg !1579

; <label>:18:                                     ; preds = %15, %12, %3
  store i64 -22, i64* %4, align 8, !dbg !1580
  br label %53, !dbg !1580

; <label>:19:                                     ; preds = %15
  %20 = load i8*, i8** %5, align 8, !dbg !1581
  %21 = call %struct._IO_FILE* @fopen(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0)), !dbg !1582
  store %struct._IO_FILE* %21, %struct._IO_FILE** %9, align 8, !dbg !1583
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !1584
  %23 = icmp ne %struct._IO_FILE* %22, null, !dbg !1584
  br i1 %23, label %31, label %24, !dbg !1586

; <label>:24:                                     ; preds = %19
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1587
  %26 = load i8*, i8** %5, align 8, !dbg !1589
  %27 = call i32* @__errno_location() #1, !dbg !1590
  %28 = load i32, i32* %27, align 4, !dbg !1591
  %29 = call i8* @strerror(i32 %28) #9, !dbg !1592
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.88, i32 0, i32 0), i8* %26, i8* %29), !dbg !1594
  store i64 -19, i64* %4, align 8, !dbg !1595
  br label %53, !dbg !1595

; <label>:31:                                     ; preds = %19
  %32 = load i8*, i8** %6, align 8, !dbg !1596
  %33 = load i64, i64* %7, align 8, !dbg !1597
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !1598
  %35 = call i64 @fread(i8* %32, i64 %33, i64 1, %struct._IO_FILE* %34), !dbg !1599
  %36 = trunc i64 %35 to i32, !dbg !1599
  store i32 %36, i32* %8, align 4, !dbg !1600
  %37 = load i32, i32* %8, align 4, !dbg !1601
  %38 = icmp eq i32 %37, -1, !dbg !1603
  br i1 %38, label %39, label %48, !dbg !1604

; <label>:39:                                     ; preds = %31
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1605
  %41 = load i8*, i8** %5, align 8, !dbg !1607
  %42 = call i32* @__errno_location() #1, !dbg !1608
  %43 = load i32, i32* %42, align 4, !dbg !1609
  %44 = call i8* @strerror(i32 %43) #9, !dbg !1610
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.89, i32 0, i32 0), i8* %41, i8* %44), !dbg !1612
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !1613
  %47 = call i32 @fclose(%struct._IO_FILE* %46), !dbg !1614
  store i64 -5, i64* %4, align 8, !dbg !1615
  br label %53, !dbg !1615

; <label>:48:                                     ; preds = %31
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !1616
  %50 = call i32 @fclose(%struct._IO_FILE* %49), !dbg !1617
  %51 = load i32, i32* %8, align 4, !dbg !1618
  %52 = sext i32 %51 to i64, !dbg !1618
  store i64 %52, i64* %4, align 8, !dbg !1619
  br label %53, !dbg !1619

; <label>:53:                                     ; preds = %48, %39, %24, %18
  %54 = load i64, i64* %4, align 8, !dbg !1620
  ret i64 %54, !dbg !1620
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @hexdump(%struct._IO_FILE*, i8*, i32) #6 !dbg !1621 {
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca [17 x i8], align 16
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %4, metadata !1626, metadata !92), !dbg !1627
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1628, metadata !92), !dbg !1629
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1630, metadata !92), !dbg !1631
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1632, metadata !92), !dbg !1633
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1634, metadata !92), !dbg !1635
  store i32 0, i32* %8, align 4, !dbg !1635
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1636, metadata !92), !dbg !1639
  %11 = load i8*, i8** %5, align 8, !dbg !1640
  store i8* %11, i8** %9, align 8, !dbg !1639
  call void @llvm.dbg.declare(metadata [17 x i8]* %10, metadata !1641, metadata !92), !dbg !1645
  %12 = load i32, i32* %6, align 4, !dbg !1646
  %13 = icmp eq i32 %12, 0, !dbg !1648
  br i1 %13, label %14, label %15, !dbg !1649

; <label>:14:                                     ; preds = %3
  br label %106, !dbg !1650

; <label>:15:                                     ; preds = %3
  store i32 0, i32* %7, align 4, !dbg !1651
  br label %16, !dbg !1653

; <label>:16:                                     ; preds = %75, %15
  %17 = load i32, i32* %7, align 4, !dbg !1654
  %18 = load i32, i32* %6, align 4, !dbg !1657
  %19 = icmp ult i32 %17, %18, !dbg !1658
  br i1 %19, label %20, label %78, !dbg !1659

; <label>:20:                                     ; preds = %16
  %21 = load i32, i32* %7, align 4, !dbg !1660
  %22 = and i32 %21, 15, !dbg !1663
  %23 = icmp eq i32 %22, 0, !dbg !1664
  br i1 %23, label %24, label %29, !dbg !1665

; <label>:24:                                     ; preds = %20
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !1666
  %26 = load i32, i32* %7, align 4, !dbg !1668
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i32 0, i32 0), i32 %26), !dbg !1669
  %28 = getelementptr inbounds [17 x i8], [17 x i8]* %10, i32 0, i32 0, !dbg !1670
  call void @llvm.memset.p0i8.i64(i8* %28, i8 0, i64 17, i32 16, i1 false), !dbg !1670
  store i32 0, i32* %8, align 4, !dbg !1671
  br label %29, !dbg !1672

; <label>:29:                                     ; preds = %24, %20
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !1673
  %31 = load i32, i32* %7, align 4, !dbg !1674
  %32 = zext i32 %31 to i64, !dbg !1675
  %33 = load i8*, i8** %9, align 8, !dbg !1675
  %34 = getelementptr inbounds i8, i8* %33, i64 %32, !dbg !1675
  %35 = load i8, i8* %34, align 1, !dbg !1675
  %36 = zext i8 %35 to i32, !dbg !1675
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i32 0, i32 0), i32 %36), !dbg !1676
  %38 = load i32, i32* %7, align 4, !dbg !1677
  %39 = zext i32 %38 to i64, !dbg !1678
  %40 = load i8*, i8** %9, align 8, !dbg !1678
  %41 = getelementptr inbounds i8, i8* %40, i64 %39, !dbg !1678
  %42 = load i8, i8* %41, align 1, !dbg !1678
  %43 = zext i8 %42 to i32, !dbg !1679
  %44 = sext i32 %43 to i64, !dbg !1680
  %45 = call i16** @__ctype_b_loc() #1, !dbg !1681
  %46 = load i16*, i16** %45, align 8, !dbg !1677
  %47 = getelementptr inbounds i16, i16* %46, i64 %44, !dbg !1680
  %48 = load i16, i16* %47, align 2, !dbg !1680
  %49 = zext i16 %48 to i32, !dbg !1680
  %50 = and i32 %49, 8, !dbg !1682
  %51 = icmp ne i32 %50, 0, !dbg !1682
  br i1 %51, label %52, label %59, !dbg !1678

; <label>:52:                                     ; preds = %29
  %53 = load i32, i32* %7, align 4, !dbg !1683
  %54 = zext i32 %53 to i64, !dbg !1685
  %55 = load i8*, i8** %9, align 8, !dbg !1685
  %56 = getelementptr inbounds i8, i8* %55, i64 %54, !dbg !1685
  %57 = load i8, i8* %56, align 1, !dbg !1685
  %58 = zext i8 %57 to i32, !dbg !1685
  br label %60, !dbg !1686

; <label>:59:                                     ; preds = %29
  br label %60, !dbg !1687

; <label>:60:                                     ; preds = %59, %52
  %61 = phi i32 [ %58, %52 ], [ 46, %59 ], !dbg !1689
  %62 = trunc i32 %61 to i8, !dbg !1689
  %63 = load i32, i32* %8, align 4, !dbg !1691
  %64 = add i32 %63, 1, !dbg !1691
  store i32 %64, i32* %8, align 4, !dbg !1691
  %65 = zext i32 %63 to i64, !dbg !1692
  %66 = getelementptr inbounds [17 x i8], [17 x i8]* %10, i64 0, i64 %65, !dbg !1692
  store i8 %62, i8* %66, align 1, !dbg !1693
  %67 = load i32, i32* %7, align 4, !dbg !1694
  %68 = and i32 %67, 15, !dbg !1696
  %69 = icmp eq i32 %68, 15, !dbg !1697
  br i1 %69, label %70, label %74, !dbg !1698

; <label>:70:                                     ; preds = %60
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !1699
  %72 = getelementptr inbounds [17 x i8], [17 x i8]* %10, i32 0, i32 0, !dbg !1700
  %73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.92, i32 0, i32 0), i8* %72), !dbg !1701
  br label %74, !dbg !1701

; <label>:74:                                     ; preds = %70, %60
  br label %75, !dbg !1702

; <label>:75:                                     ; preds = %74
  %76 = load i32, i32* %7, align 4, !dbg !1703
  %77 = add i32 %76, 1, !dbg !1703
  store i32 %77, i32* %7, align 4, !dbg !1703
  br label %16, !dbg !1705, !llvm.loop !1706

; <label>:78:                                     ; preds = %16
  br label %79, !dbg !1708

; <label>:79:                                     ; preds = %100, %78
  %80 = load i32, i32* %7, align 4, !dbg !1709
  %81 = load i32, i32* %6, align 4, !dbg !1713
  %82 = add i32 %81, 15, !dbg !1714
  %83 = and i32 %82, -16, !dbg !1715
  %84 = icmp ult i32 %80, %83, !dbg !1716
  br i1 %84, label %85, label %103, !dbg !1717

; <label>:85:                                     ; preds = %79
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !1718
  %87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.93, i32 0, i32 0)), !dbg !1720
  %88 = load i32, i32* %8, align 4, !dbg !1721
  %89 = add i32 %88, 1, !dbg !1721
  store i32 %89, i32* %8, align 4, !dbg !1721
  %90 = zext i32 %88 to i64, !dbg !1722
  %91 = getelementptr inbounds [17 x i8], [17 x i8]* %10, i64 0, i64 %90, !dbg !1722
  store i8 32, i8* %91, align 1, !dbg !1723
  %92 = load i32, i32* %7, align 4, !dbg !1724
  %93 = and i32 %92, 15, !dbg !1726
  %94 = icmp eq i32 %93, 15, !dbg !1727
  br i1 %94, label %95, label %99, !dbg !1728

; <label>:95:                                     ; preds = %85
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !1729
  %97 = getelementptr inbounds [17 x i8], [17 x i8]* %10, i32 0, i32 0, !dbg !1730
  %98 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.92, i32 0, i32 0), i8* %97), !dbg !1731
  br label %99, !dbg !1731

; <label>:99:                                     ; preds = %95, %85
  br label %100, !dbg !1732

; <label>:100:                                    ; preds = %99
  %101 = load i32, i32* %7, align 4, !dbg !1733
  %102 = add i32 %101, 1, !dbg !1733
  store i32 %102, i32* %7, align 4, !dbg !1733
  br label %79, !dbg !1735, !llvm.loop !1736

; <label>:103:                                    ; preds = %79
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !1737
  %105 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %104, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i32 0, i32 0)), !dbg !1738
  br label %106, !dbg !1739

; <label>:106:                                    ; preds = %103, %14
  ret void, !dbg !1740
}

declare i32 @deflateInit2_(%struct.z_stream_s*, i32, i32, i32, i32, i32, i8*, i32) #4

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @deflateSetHeader(%struct.z_stream_s*, %struct.gz_header_s*) #4

declare i32 @deflateEnd(%struct.z_stream_s*) #4

declare i64 @deflateBound(%struct.z_stream_s*, i64) #4

declare i64 @compressBound(i64) #4

; Function Attrs: nounwind uwtable
define internal i32 @def(%struct._IO_FILE*, %struct._IO_FILE*, %struct.z_stream_s*, i8*, i8*) #0 !dbg !1742 {
  %6 = alloca i32, align 4
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca %struct._IO_FILE*, align 8
  %9 = alloca %struct.z_stream_s*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !1746, metadata !92), !dbg !1747
  store %struct._IO_FILE* %1, %struct._IO_FILE** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %8, metadata !1748, metadata !92), !dbg !1749
  store %struct.z_stream_s* %2, %struct.z_stream_s** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.z_stream_s** %9, metadata !1750, metadata !92), !dbg !1751
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1752, metadata !92), !dbg !1753
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1754, metadata !92), !dbg !1755
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1756, metadata !92), !dbg !1757
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1758, metadata !92), !dbg !1759
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1760, metadata !92), !dbg !1761
  br label %15, !dbg !1762, !llvm.loop !1763

; <label>:15:                                     ; preds = %92, %5
  %16 = load i8*, i8** %10, align 8, !dbg !1764
  %17 = load i32, i32* @CHUNK_i, align 4, !dbg !1766
  %18 = zext i32 %17 to i64, !dbg !1766
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !1767
  %20 = call i64 @fread(i8* %16, i64 1, i64 %18, %struct._IO_FILE* %19), !dbg !1768
  %21 = trunc i64 %20 to i32, !dbg !1768
  %22 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8, !dbg !1769
  %23 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %22, i32 0, i32 1, !dbg !1770
  store i32 %21, i32* %23, align 8, !dbg !1771
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !1772
  %25 = call i32 @ferror(%struct._IO_FILE* %24) #9, !dbg !1774
  %26 = icmp ne i32 %25, 0, !dbg !1774
  br i1 %26, label %27, label %28, !dbg !1775

; <label>:27:                                     ; preds = %15
  store i32 -1, i32* %6, align 4, !dbg !1776
  br label %102, !dbg !1776

; <label>:28:                                     ; preds = %15
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !1778
  %30 = call i32 @feof(%struct._IO_FILE* %29) #9, !dbg !1779
  %31 = icmp ne i32 %30, 0, !dbg !1779
  %32 = select i1 %31, i32 4, i32 0, !dbg !1779
  store i32 %32, i32* %13, align 4, !dbg !1780
  %33 = load i8*, i8** %10, align 8, !dbg !1781
  %34 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8, !dbg !1782
  %35 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %34, i32 0, i32 0, !dbg !1783
  store i8* %33, i8** %35, align 8, !dbg !1784
  br label %36, !dbg !1785, !llvm.loop !1786

; <label>:36:                                     ; preds = %78, %28
  %37 = load i32, i32* @verbose, align 4, !dbg !1787
  %38 = icmp ne i32 %37, 0, !dbg !1787
  br i1 %38, label %39, label %43, !dbg !1790

; <label>:39:                                     ; preds = %36
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1791
  %41 = load i32, i32* @CHUNK_o, align 4, !dbg !1792
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.94, i32 0, i32 0), i32 %41), !dbg !1793
  br label %43, !dbg !1793

; <label>:43:                                     ; preds = %39, %36
  %44 = load i32, i32* @CHUNK_o, align 4, !dbg !1794
  %45 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8, !dbg !1795
  %46 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %45, i32 0, i32 4, !dbg !1796
  store i32 %44, i32* %46, align 8, !dbg !1797
  %47 = load i8*, i8** %11, align 8, !dbg !1798
  %48 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8, !dbg !1799
  %49 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %48, i32 0, i32 3, !dbg !1800
  store i8* %47, i8** %49, align 8, !dbg !1801
  %50 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8, !dbg !1802
  %51 = load i32, i32* %13, align 4, !dbg !1803
  %52 = call i32 @deflate(%struct.z_stream_s* %50, i32 %51), !dbg !1804
  store i32 %52, i32* %12, align 4, !dbg !1805
  %53 = load i32, i32* %12, align 4, !dbg !1806
  %54 = icmp ne i32 %53, -2, !dbg !1807
  br i1 %54, label %55, label %56, !dbg !1808

; <label>:55:                                     ; preds = %43
  br label %58, !dbg !1809

; <label>:56:                                     ; preds = %43
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.96, i32 0, i32 0), i32 166, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__PRETTY_FUNCTION__.def, i32 0, i32 0)) #11, !dbg !1811
  unreachable, !dbg !1811
                                                  ; No predecessors!
  br label %58, !dbg !1813

; <label>:58:                                     ; preds = %57, %55
  %59 = load i32, i32* @CHUNK_o, align 4, !dbg !1815
  %60 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8, !dbg !1816
  %61 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %60, i32 0, i32 4, !dbg !1817
  %62 = load i32, i32* %61, align 8, !dbg !1817
  %63 = sub i32 %59, %62, !dbg !1818
  store i32 %63, i32* %14, align 4, !dbg !1819
  %64 = load i8*, i8** %11, align 8, !dbg !1820
  %65 = load i32, i32* %14, align 4, !dbg !1822
  %66 = zext i32 %65 to i64, !dbg !1822
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8, !dbg !1823
  %68 = call i64 @fwrite(i8* %64, i64 1, i64 %66, %struct._IO_FILE* %67), !dbg !1824
  %69 = load i32, i32* %14, align 4, !dbg !1825
  %70 = zext i32 %69 to i64, !dbg !1825
  %71 = icmp ne i64 %68, %70, !dbg !1826
  br i1 %71, label %76, label %72, !dbg !1827

; <label>:72:                                     ; preds = %58
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8, !dbg !1828
  %74 = call i32 @ferror(%struct._IO_FILE* %73) #9, !dbg !1829
  %75 = icmp ne i32 %74, 0, !dbg !1829
  br i1 %75, label %76, label %77, !dbg !1830

; <label>:76:                                     ; preds = %72, %58
  store i32 -1, i32* %6, align 4, !dbg !1831
  br label %102, !dbg !1831

; <label>:77:                                     ; preds = %72
  br label %78, !dbg !1833

; <label>:78:                                     ; preds = %77
  %79 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8, !dbg !1834
  %80 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %79, i32 0, i32 4, !dbg !1836
  %81 = load i32, i32* %80, align 8, !dbg !1836
  %82 = icmp eq i32 %81, 0, !dbg !1837
  br i1 %82, label %36, label %83, !dbg !1838, !llvm.loop !1786

; <label>:83:                                     ; preds = %78
  %84 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8, !dbg !1839
  %85 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %84, i32 0, i32 1, !dbg !1840
  %86 = load i32, i32* %85, align 8, !dbg !1840
  %87 = icmp eq i32 %86, 0, !dbg !1841
  br i1 %87, label %88, label %89, !dbg !1842

; <label>:88:                                     ; preds = %83
  br label %91, !dbg !1843

; <label>:89:                                     ; preds = %83
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.96, i32 0, i32 0), i32 173, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__PRETTY_FUNCTION__.def, i32 0, i32 0)) #11, !dbg !1844
  unreachable, !dbg !1844
                                                  ; No predecessors!
  br label %91, !dbg !1846

; <label>:91:                                     ; preds = %90, %88
  br label %92, !dbg !1848

; <label>:92:                                     ; preds = %91
  %93 = load i32, i32* %13, align 4, !dbg !1849
  %94 = icmp ne i32 %93, 4, !dbg !1851
  br i1 %94, label %15, label %95, !dbg !1852, !llvm.loop !1763

; <label>:95:                                     ; preds = %92
  %96 = load i32, i32* %12, align 4, !dbg !1853
  %97 = icmp eq i32 %96, 1, !dbg !1854
  br i1 %97, label %98, label %99, !dbg !1855

; <label>:98:                                     ; preds = %95
  br label %101, !dbg !1856

; <label>:99:                                     ; preds = %95
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.96, i32 0, i32 0), i32 177, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__PRETTY_FUNCTION__.def, i32 0, i32 0)) #11, !dbg !1857
  unreachable, !dbg !1857
                                                  ; No predecessors!
  br label %101, !dbg !1859

; <label>:101:                                    ; preds = %100, %98
  store i32 0, i32* %6, align 4, !dbg !1861
  br label %102, !dbg !1861

; <label>:102:                                    ; preds = %101, %76, %27
  %103 = load i32, i32* %6, align 4, !dbg !1862
  ret i32 %103, !dbg !1862
}

; Function Attrs: nounwind uwtable
define internal void @zerr(i32) #0 !dbg !1863 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1866, metadata !92), !dbg !1867
  %3 = load i32, i32* %2, align 4, !dbg !1868
  switch i32 %3, label %43 [
    i32 -1, label %4
    i32 -2, label %23
    i32 -3, label %28
    i32 -4, label %33
    i32 -6, label %38
  ], !dbg !1869

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1870
  %6 = call i32 @ferror(%struct._IO_FILE* %5) #9, !dbg !1873
  %7 = icmp ne i32 %6, 0, !dbg !1873
  br i1 %7, label %8, label %13, !dbg !1874

; <label>:8:                                      ; preds = %4
  br label %9, !dbg !1875, !llvm.loop !1876

; <label>:9:                                      ; preds = %8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1877
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.99, i32 0, i32 0)), !dbg !1880
  br label %12, !dbg !1881

; <label>:12:                                     ; preds = %9
  br label %13, !dbg !1882

; <label>:13:                                     ; preds = %12, %4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1884
  %15 = call i32 @ferror(%struct._IO_FILE* %14) #9, !dbg !1886
  %16 = icmp ne i32 %15, 0, !dbg !1886
  br i1 %16, label %17, label %22, !dbg !1887

; <label>:17:                                     ; preds = %13
  br label %18, !dbg !1888, !llvm.loop !1889

; <label>:18:                                     ; preds = %17
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1890
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.100, i32 0, i32 0)), !dbg !1893
  br label %21, !dbg !1894

; <label>:21:                                     ; preds = %18
  br label %22, !dbg !1895

; <label>:22:                                     ; preds = %21, %13
  br label %43, !dbg !1897

; <label>:23:                                     ; preds = %1
  br label %24, !dbg !1898, !llvm.loop !1899

; <label>:24:                                     ; preds = %23
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1900
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.101, i32 0, i32 0)), !dbg !1903
  br label %27, !dbg !1904

; <label>:27:                                     ; preds = %24
  br label %43, !dbg !1905

; <label>:28:                                     ; preds = %1
  br label %29, !dbg !1906, !llvm.loop !1907

; <label>:29:                                     ; preds = %28
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1908
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.102, i32 0, i32 0)), !dbg !1911
  br label %32, !dbg !1912

; <label>:32:                                     ; preds = %29
  br label %43, !dbg !1913

; <label>:33:                                     ; preds = %1
  br label %34, !dbg !1914, !llvm.loop !1915

; <label>:34:                                     ; preds = %33
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1916
  %36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.103, i32 0, i32 0)), !dbg !1919
  br label %37, !dbg !1920

; <label>:37:                                     ; preds = %34
  br label %43, !dbg !1921

; <label>:38:                                     ; preds = %1
  br label %39, !dbg !1922, !llvm.loop !1923

; <label>:39:                                     ; preds = %38
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1924
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.104, i32 0, i32 0)), !dbg !1927
  br label %42, !dbg !1928

; <label>:42:                                     ; preds = %39
  br label %43, !dbg !1929

; <label>:43:                                     ; preds = %1, %42, %37, %32, %27, %22
  ret void, !dbg !1930
}

declare i32 @inflateInit2_(%struct.z_stream_s*, i32, i8*, i32) #4

; Function Attrs: nounwind uwtable
define internal i32 @inf(%struct._IO_FILE*, %struct._IO_FILE*, %struct.z_stream_s*, i8*, i8*) #0 !dbg !1931 {
  %6 = alloca i32, align 4
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca %struct._IO_FILE*, align 8
  %9 = alloca %struct.z_stream_s*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !1932, metadata !92), !dbg !1933
  store %struct._IO_FILE* %1, %struct._IO_FILE** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %8, metadata !1934, metadata !92), !dbg !1935
  store %struct.z_stream_s* %2, %struct.z_stream_s** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.z_stream_s** %9, metadata !1936, metadata !92), !dbg !1937
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1938, metadata !92), !dbg !1939
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1940, metadata !92), !dbg !1941
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1942, metadata !92), !dbg !1943
  store i32 0, i32* %12, align 4, !dbg !1943
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1944, metadata !92), !dbg !1945
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1946, metadata !92), !dbg !1947
  call void @llvm.dbg.declare(metadata i64* %15, metadata !1948, metadata !92), !dbg !1949
  store i64 0, i64* %15, align 8, !dbg !1949
  call void @llvm.dbg.declare(metadata i64* %16, metadata !1950, metadata !92), !dbg !1951
  %17 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8, !dbg !1952
  %18 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %17, i32 0, i32 1, !dbg !1953
  store i32 0, i32* %18, align 8, !dbg !1954
  %19 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8, !dbg !1955
  %20 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %19, i32 0, i32 0, !dbg !1956
  store i8* null, i8** %20, align 8, !dbg !1957
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !1958
  %22 = call i64 @ftell(%struct._IO_FILE* %21), !dbg !1959
  store i64 %22, i64* %14, align 8, !dbg !1960
  store i64 0, i64* %15, align 8, !dbg !1961
  br label %23, !dbg !1962, !llvm.loop !1963

; <label>:23:                                     ; preds = %107, %5
  %24 = load i8*, i8** %10, align 8, !dbg !1964
  %25 = load i32, i32* @CHUNK_i, align 4, !dbg !1966
  %26 = zext i32 %25 to i64, !dbg !1966
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !1967
  %28 = call i64 @fread(i8* %24, i64 1, i64 %26, %struct._IO_FILE* %27), !dbg !1968
  %29 = trunc i64 %28 to i32, !dbg !1968
  %30 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8, !dbg !1969
  %31 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %30, i32 0, i32 1, !dbg !1970
  store i32 %29, i32* %31, align 8, !dbg !1971
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !1972
  %33 = call i32 @ferror(%struct._IO_FILE* %32) #9, !dbg !1974
  %34 = icmp ne i32 %33, 0, !dbg !1974
  br i1 %34, label %35, label %38, !dbg !1975

; <label>:35:                                     ; preds = %23
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1976
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.105, i32 0, i32 0)), !dbg !1978
  store i32 -1, i32* %6, align 4, !dbg !1979
  br label %135, !dbg !1979

; <label>:38:                                     ; preds = %23
  %39 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8, !dbg !1980
  %40 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %39, i32 0, i32 1, !dbg !1982
  %41 = load i32, i32* %40, align 8, !dbg !1982
  %42 = icmp eq i32 0, %41, !dbg !1983
  br i1 %42, label %43, label %44, !dbg !1984

; <label>:43:                                     ; preds = %38
  br label %110, !dbg !1985

; <label>:44:                                     ; preds = %38
  %45 = load i8*, i8** %10, align 8, !dbg !1986
  %46 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8, !dbg !1987
  %47 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %46, i32 0, i32 0, !dbg !1988
  store i8* %45, i8** %47, align 8, !dbg !1989
  br label %48, !dbg !1987

; <label>:48:                                     ; preds = %115, %44
  br label %49, !dbg !1990, !llvm.loop !1991

; <label>:49:                                     ; preds = %101, %48
  %50 = load i32, i32* @CHUNK_o, align 4, !dbg !1992
  %51 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8, !dbg !1994
  %52 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %51, i32 0, i32 4, !dbg !1995
  store i32 %50, i32* %52, align 8, !dbg !1996
  %53 = load i8*, i8** %11, align 8, !dbg !1997
  %54 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8, !dbg !1998
  %55 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %54, i32 0, i32 3, !dbg !1999
  store i8* %53, i8** %55, align 8, !dbg !2000
  %56 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8, !dbg !2001
  %57 = call i32 @inflate(%struct.z_stream_s* %56, i32 0), !dbg !2002
  store i32 %57, i32* %12, align 4, !dbg !2003
  %58 = load i32, i32* %12, align 4, !dbg !2004
  %59 = icmp ne i32 %58, -2, !dbg !2005
  br i1 %59, label %60, label %61, !dbg !2006

; <label>:60:                                     ; preds = %49
  br label %63, !dbg !2007

; <label>:61:                                     ; preds = %49
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.96, i32 0, i32 0), i32 219, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__PRETTY_FUNCTION__.inf, i32 0, i32 0)) #11, !dbg !2009
  unreachable, !dbg !2009
                                                  ; No predecessors!
  br label %63, !dbg !2011

; <label>:63:                                     ; preds = %62, %60
  %64 = load i32, i32* %12, align 4, !dbg !2013
  switch i32 %64, label %80 [
    i32 0, label %65
    i32 1, label %66
    i32 2, label %72
    i32 -3, label %75
    i32 -4, label %75
  ], !dbg !2014

; <label>:65:                                     ; preds = %63
  br label %80, !dbg !2015

; <label>:66:                                     ; preds = %63
  %67 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8, !dbg !2017
  %68 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %67, i32 0, i32 2, !dbg !2018
  %69 = load i64, i64* %68, align 8, !dbg !2018
  %70 = load i64, i64* %15, align 8, !dbg !2019
  %71 = add i64 %70, %69, !dbg !2019
  store i64 %71, i64* %15, align 8, !dbg !2019
  br label %80, !dbg !2020

; <label>:72:                                     ; preds = %63
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2021
  %74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.106, i32 0, i32 0)), !dbg !2022
  store i32 -3, i32* %6, align 4, !dbg !2023
  br label %135, !dbg !2023

; <label>:75:                                     ; preds = %63, %63
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2024
  %77 = load i32, i32* %12, align 4, !dbg !2025
  %78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.107, i32 0, i32 0), i32 %77), !dbg !2026
  %79 = load i32, i32* %12, align 4, !dbg !2027
  store i32 %79, i32* %6, align 4, !dbg !2028
  br label %135, !dbg !2028

; <label>:80:                                     ; preds = %63, %66, %65
  %81 = load i32, i32* @CHUNK_o, align 4, !dbg !2029
  %82 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8, !dbg !2030
  %83 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %82, i32 0, i32 4, !dbg !2031
  %84 = load i32, i32* %83, align 8, !dbg !2031
  %85 = sub i32 %81, %84, !dbg !2032
  %86 = zext i32 %85 to i64, !dbg !2029
  store i64 %86, i64* %16, align 8, !dbg !2033
  %87 = load i8*, i8** %11, align 8, !dbg !2034
  %88 = load i64, i64* %16, align 8, !dbg !2036
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8, !dbg !2037
  %90 = call i64 @fwrite(i8* %87, i64 1, i64 %88, %struct._IO_FILE* %89), !dbg !2038
  %91 = load i64, i64* %16, align 8, !dbg !2039
  %92 = icmp ne i64 %90, %91, !dbg !2040
  br i1 %92, label %97, label %93, !dbg !2041

; <label>:93:                                     ; preds = %80
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8, !dbg !2042
  %95 = call i32 @ferror(%struct._IO_FILE* %94) #9, !dbg !2043
  %96 = icmp ne i32 %95, 0, !dbg !2043
  br i1 %96, label %97, label %100, !dbg !2044

; <label>:97:                                     ; preds = %93, %80
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2045
  %99 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.108, i32 0, i32 0)), !dbg !2047
  store i32 -1, i32* %6, align 4, !dbg !2048
  br label %135, !dbg !2048

; <label>:100:                                    ; preds = %93
  br label %101, !dbg !2049

; <label>:101:                                    ; preds = %100
  %102 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8, !dbg !2050
  %103 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %102, i32 0, i32 4, !dbg !2052
  %104 = load i32, i32* %103, align 8, !dbg !2052
  %105 = icmp eq i32 %104, 0, !dbg !2053
  br i1 %105, label %49, label %106, !dbg !2054, !llvm.loop !1991

; <label>:106:                                    ; preds = %101
  br label %107, !dbg !2055

; <label>:107:                                    ; preds = %106
  %108 = load i32, i32* %12, align 4, !dbg !2056
  %109 = icmp ne i32 %108, 1, !dbg !2058
  br i1 %109, label %23, label %110, !dbg !2059, !llvm.loop !1963

; <label>:110:                                    ; preds = %107, %43
  %111 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8, !dbg !2060
  %112 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %111, i32 0, i32 1, !dbg !2062
  %113 = load i32, i32* %112, align 8, !dbg !2062
  %114 = icmp ugt i32 %113, 16384, !dbg !2063
  br i1 %114, label %115, label %118, !dbg !2064

; <label>:115:                                    ; preds = %110
  %116 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8, !dbg !2065
  %117 = call i32 @inflateReset(%struct.z_stream_s* %116), !dbg !2067
  br label %48, !dbg !2068

; <label>:118:                                    ; preds = %110
  %119 = load i64, i64* %15, align 8, !dbg !2069
  %120 = load i64, i64* %14, align 8, !dbg !2070
  %121 = add nsw i64 %120, %119, !dbg !2070
  store i64 %121, i64* %14, align 8, !dbg !2070
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2071
  %123 = load i64, i64* %14, align 8, !dbg !2072
  %124 = call i32 @fseek(%struct._IO_FILE* %122, i64 %123, i32 0), !dbg !2073
  store i32 %124, i32* %13, align 4, !dbg !2074
  %125 = load i32, i32* %13, align 4, !dbg !2075
  %126 = icmp eq i32 %125, -1, !dbg !2077
  br i1 %126, label %127, label %131, !dbg !2078

; <label>:127:                                    ; preds = %118
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2079
  %129 = load i32, i32* %13, align 4, !dbg !2080
  %130 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %128, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.109, i32 0, i32 0), i32 %129), !dbg !2081
  br label %131, !dbg !2081

; <label>:131:                                    ; preds = %127, %118
  %132 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8, !dbg !2082
  %133 = call i32 @inflateReset(%struct.z_stream_s* %132), !dbg !2083
  %134 = load i32, i32* %12, align 4, !dbg !2084
  store i32 %134, i32* %6, align 4, !dbg !2085
  br label %135, !dbg !2085

; <label>:135:                                    ; preds = %131, %97, %75, %72, %35
  %136 = load i32, i32* %6, align 4, !dbg !2086
  ret i32 %136, !dbg !2086
}

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #2

declare i32 @inflateEnd(%struct.z_stream_s*) #4

; Function Attrs: nounwind
declare i32 @unlink(i8*) #2

; Function Attrs: nounwind
declare i64 @strtoull(i8*, i8**, i32) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @print_version(%struct._IO_FILE*) #0 !dbg !2087 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !2090, metadata !92), !dbg !2091
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !2092
  %4 = call i8* @zlibVersion(), !dbg !2093
  %5 = call i8* @zlibVersion(), !dbg !2094
  %6 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0)) #10, !dbg !2095
  %7 = icmp eq i32 %6, 0, !dbg !2097
  %8 = select i1 %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.51, i32 0, i32 0), !dbg !2098
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.49, i32 0, i32 0), i8* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i8* %8), !dbg !2099
  ret void, !dbg !2100
}

declare i8* @zlibVersion() #4

; Function Attrs: nounwind
declare %struct.cpu_set_t* @__sched_cpualloc(i64) #2

; Function Attrs: nounwind
declare i32 @sched_getcpu() #2

; Function Attrs: nounwind
declare i32 @sched_setaffinity(i32, i64, %struct.cpu_set_t*) #2

; Function Attrs: nounwind
declare void @__sched_cpufree(%struct.cpu_set_t*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #8

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #4

declare i32 @inflateGetHeader(%struct.z_stream_s*, %struct.gz_header_s*) #4

declare i32 @inflate(%struct.z_stream_s*, i32) #4

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #4

; Function Attrs: nounwind
declare i64 @time(i64*) #2

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #2

; Function Attrs: nounwind uwtable
define internal void @do_print_gzip_hdr(%struct.gz_header_s*, %struct._IO_FILE*) #0 !dbg !2101 {
  %3 = alloca %struct.gz_header_s*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  store %struct.gz_header_s* %0, %struct.gz_header_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.gz_header_s** %3, metadata !2106, metadata !92), !dbg !2107
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %4, metadata !2108, metadata !92), !dbg !2109
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !2110
  %6 = load %struct.gz_header_s*, %struct.gz_header_s** %3, align 8, !dbg !2111
  %7 = getelementptr inbounds %struct.gz_header_s, %struct.gz_header_s* %6, i32 0, i32 0, !dbg !2112
  %8 = load i32, i32* %7, align 8, !dbg !2112
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.74, i32 0, i32 0), i32 %8), !dbg !2113
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !2114
  %11 = load %struct.gz_header_s*, %struct.gz_header_s** %3, align 8, !dbg !2115
  %12 = getelementptr inbounds %struct.gz_header_s, %struct.gz_header_s* %11, i32 0, i32 1, !dbg !2116
  %13 = call i8* @ctime(i64* %12) #9, !dbg !2117
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.75, i32 0, i32 0), i8* %13), !dbg !2118
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !2120
  %16 = load %struct.gz_header_s*, %struct.gz_header_s** %3, align 8, !dbg !2121
  %17 = getelementptr inbounds %struct.gz_header_s, %struct.gz_header_s* %16, i32 0, i32 2, !dbg !2122
  %18 = load i32, i32* %17, align 8, !dbg !2122
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.76, i32 0, i32 0), i32 %18), !dbg !2123
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !2124
  %21 = load %struct.gz_header_s*, %struct.gz_header_s** %3, align 8, !dbg !2125
  %22 = getelementptr inbounds %struct.gz_header_s, %struct.gz_header_s* %21, i32 0, i32 3, !dbg !2126
  %23 = load i32, i32* %22, align 4, !dbg !2126
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.77, i32 0, i32 0), i32 %23), !dbg !2127
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !2128
  %26 = load %struct.gz_header_s*, %struct.gz_header_s** %3, align 8, !dbg !2129
  %27 = getelementptr inbounds %struct.gz_header_s, %struct.gz_header_s* %26, i32 0, i32 5, !dbg !2130
  %28 = load i32, i32* %27, align 8, !dbg !2130
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.78, i32 0, i32 0), i32 %28), !dbg !2131
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !2132
  %31 = load %struct.gz_header_s*, %struct.gz_header_s** %3, align 8, !dbg !2133
  %32 = getelementptr inbounds %struct.gz_header_s, %struct.gz_header_s* %31, i32 0, i32 6, !dbg !2134
  %33 = load i32, i32* %32, align 4, !dbg !2134
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.79, i32 0, i32 0), i32 %33), !dbg !2135
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !2136
  %36 = load %struct.gz_header_s*, %struct.gz_header_s** %3, align 8, !dbg !2137
  %37 = getelementptr inbounds %struct.gz_header_s, %struct.gz_header_s* %36, i32 0, i32 4, !dbg !2138
  %38 = load i8*, i8** %37, align 8, !dbg !2138
  %39 = load %struct.gz_header_s*, %struct.gz_header_s** %3, align 8, !dbg !2139
  %40 = getelementptr inbounds %struct.gz_header_s, %struct.gz_header_s* %39, i32 0, i32 5, !dbg !2140
  %41 = load i32, i32* %40, align 8, !dbg !2140
  call void @hexdump(%struct._IO_FILE* %35, i8* %38, i32 %41), !dbg !2141
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !2142
  %43 = load %struct.gz_header_s*, %struct.gz_header_s** %3, align 8, !dbg !2143
  %44 = getelementptr inbounds %struct.gz_header_s, %struct.gz_header_s* %43, i32 0, i32 7, !dbg !2144
  %45 = load i8*, i8** %44, align 8, !dbg !2144
  %46 = icmp ne i8* %45, null, !dbg !2143
  br i1 %46, label %47, label %51, !dbg !2143

; <label>:47:                                     ; preds = %2
  %48 = load %struct.gz_header_s*, %struct.gz_header_s** %3, align 8, !dbg !2145
  %49 = getelementptr inbounds %struct.gz_header_s, %struct.gz_header_s* %48, i32 0, i32 7, !dbg !2146
  %50 = load i8*, i8** %49, align 8, !dbg !2146
  br label %52, !dbg !2147

; <label>:51:                                     ; preds = %2
  br label %52, !dbg !2148

; <label>:52:                                     ; preds = %51, %47
  %53 = phi i8* [ %50, %47 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.81, i32 0, i32 0), %51 ], !dbg !2150
  %54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.80, i32 0, i32 0), i8* %53), !dbg !2152
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !2153
  %56 = load %struct.gz_header_s*, %struct.gz_header_s** %3, align 8, !dbg !2154
  %57 = getelementptr inbounds %struct.gz_header_s, %struct.gz_header_s* %56, i32 0, i32 8, !dbg !2155
  %58 = load i32, i32* %57, align 8, !dbg !2155
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.82, i32 0, i32 0), i32 %58), !dbg !2156
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !2157
  %61 = load %struct.gz_header_s*, %struct.gz_header_s** %3, align 8, !dbg !2158
  %62 = getelementptr inbounds %struct.gz_header_s, %struct.gz_header_s* %61, i32 0, i32 9, !dbg !2159
  %63 = load i8*, i8** %62, align 8, !dbg !2159
  %64 = icmp ne i8* %63, null, !dbg !2158
  br i1 %64, label %65, label %69, !dbg !2158

; <label>:65:                                     ; preds = %52
  %66 = load %struct.gz_header_s*, %struct.gz_header_s** %3, align 8, !dbg !2160
  %67 = getelementptr inbounds %struct.gz_header_s, %struct.gz_header_s* %66, i32 0, i32 9, !dbg !2161
  %68 = load i8*, i8** %67, align 8, !dbg !2161
  br label %70, !dbg !2162

; <label>:69:                                     ; preds = %52
  br label %70, !dbg !2163

; <label>:70:                                     ; preds = %69, %65
  %71 = phi i8* [ %68, %65 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.81, i32 0, i32 0), %69 ], !dbg !2164
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.83, i32 0, i32 0), i8* %71), !dbg !2165
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !2166
  %74 = load %struct.gz_header_s*, %struct.gz_header_s** %3, align 8, !dbg !2167
  %75 = getelementptr inbounds %struct.gz_header_s, %struct.gz_header_s* %74, i32 0, i32 10, !dbg !2168
  %76 = load i32, i32* %75, align 8, !dbg !2168
  %77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.84, i32 0, i32 0), i32 %76), !dbg !2169
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !2170
  %79 = load %struct.gz_header_s*, %struct.gz_header_s** %3, align 8, !dbg !2171
  %80 = getelementptr inbounds %struct.gz_header_s, %struct.gz_header_s* %79, i32 0, i32 11, !dbg !2172
  %81 = load i32, i32* %80, align 4, !dbg !2172
  %82 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.85, i32 0, i32 0), i32 %81), !dbg !2173
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !2174
  %84 = load %struct.gz_header_s*, %struct.gz_header_s** %3, align 8, !dbg !2175
  %85 = getelementptr inbounds %struct.gz_header_s, %struct.gz_header_s* %84, i32 0, i32 12, !dbg !2176
  %86 = load i32, i32* %85, align 8, !dbg !2176
  %87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.86, i32 0, i32 0), i32 %86), !dbg !2177
  ret void, !dbg !2178
}

; Function Attrs: nounwind
declare i8* @ctime(i64*) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #7

declare i32 @deflate(%struct.z_stream_s*, i32) #4

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #5

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #4

declare i64 @ftell(%struct._IO_FILE*) #4

declare i32 @inflateReset(%struct.z_stream_s*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly }
attributes #11 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!88, !89}
!llvm.ident = !{!90}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !30, globals: !64)
!1 = !DIFile(filename: "/home/lichi/Desktop/genwqe/[task]tools--genwqe_gzip/[inter]tools--genwqe_gzip.o.i", directory: "/home/lichi/Desktop")
!2 = !{!3, !15}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "zlib_impl", file: !4, line: 26, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../include/zaddons.h", directory: "/home/lichi/Desktop")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!6 = !DIEnumerator(name: "ZLIB_SW_IMPL", value: 0)
!7 = !DIEnumerator(name: "ZLIB_HW_IMPL", value: 1)
!8 = !DIEnumerator(name: "ZLIB_MAX_IMPL", value: 2)
!9 = !DIEnumerator(name: "ZLIB_IMPL_MASK", value: 15)
!10 = !DIEnumerator(name: "ZLIB_FLAG_USE_FLAT_BUFFERS", value: 16)
!11 = !DIEnumerator(name: "ZLIB_FLAG_CACHE_HANDLES", value: 32)
!12 = !DIEnumerator(name: "ZLIB_FLAG_OMIT_LAST_DICT", value: 64)
!13 = !DIEnumerator(name: "ZLIB_FLAG_USE_POLLING", value: 128)
!14 = !DIEnumerator(name: "ZLIB_FLAG_DISABLE_CV_FOR_Z_STREAM_END", value: 256)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 46, size: 32, align: 32, elements: !17)
!16 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/lichi/Desktop")
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29}
!18 = !DIEnumerator(name: "_ISupper", value: 256)
!19 = !DIEnumerator(name: "_ISlower", value: 512)
!20 = !DIEnumerator(name: "_ISalpha", value: 1024)
!21 = !DIEnumerator(name: "_ISdigit", value: 2048)
!22 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!23 = !DIEnumerator(name: "_ISspace", value: 8192)
!24 = !DIEnumerator(name: "_ISprint", value: 16384)
!25 = !DIEnumerator(name: "_ISgraph", value: 32768)
!26 = !DIEnumerator(name: "_ISblank", value: 1)
!27 = !DIEnumerator(name: "_IScntrl", value: 2)
!28 = !DIEnumerator(name: "_ISpunct", value: 4)
!29 = !DIEnumerator(name: "_ISalnum", value: 8)
!30 = !{!31, !32, !35, !36, !41, !42, !45, !46, !49, !51, !52, !33, !58, !61, !62}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!35 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bytef", file: !38, line: 400, baseType: !39)
!38 = !DIFile(filename: "/usr/local/include/zconf.h", directory: "/home/lichi/Desktop")
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "Byte", file: !38, line: 391, baseType: !40)
!40 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!41 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__cpu_mask", file: !43, line: 118, baseType: !44)
!43 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sched.h", directory: "/home/lichi/Desktop")
!44 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !47, line: 26, baseType: !48)
!47 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "/home/lichi/Desktop")
!48 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !50, line: 29, baseType: !46)
!50 = !DIFile(filename: "/usr/include/linux/types.h", directory: "/home/lichi/Desktop")
!51 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !54, line: 75, baseType: !55)
!54 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop")
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !56, line: 139, baseType: !57)
!56 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop")
!57 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !60, line: 48, baseType: !40)
!60 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop")
!61 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !63, line: 216, baseType: !44)
!63 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop")
!64 = !{!65, !84, !85, !86, !87}
!65 = distinct !DIGlobalVariable(name: "long_options", scope: !66, file: !67, line: 686, type: !71, isLocal: true, isDefinition: true, variable: [21 x %struct.option]* @main.long_options)
!66 = distinct !DISubprogram(name: "main", scope: !67, file: !67, line: 635, type: !68, isLocal: false, isDefinition: true, scopeLine: 636, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!67 = !DIFile(filename: "genwqe_gzip.c", directory: "/home/lichi/Desktop")
!68 = !DISubroutineType(types: !69)
!69 = !{!35, !35, !32}
!70 = !{}
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 5376, align: 64, elements: !82)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !73, line: 104, size: 256, align: 64, elements: !74)
!73 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/lichi/Desktop")
!74 = !{!75, !78, !79, !81}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !72, file: !73, line: 106, baseType: !76, size: 64, align: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !72, file: !73, line: 109, baseType: !35, size: 32, align: 32, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !72, file: !73, line: 110, baseType: !80, size: 64, align: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !72, file: !73, line: 111, baseType: !35, size: 32, align: 32, offset: 192)
!82 = !{!83}
!83 = !DISubrange(count: 21)
!84 = distinct !DIGlobalVariable(name: "CHUNK_o", scope: !0, file: !67, line: 104, type: !48, isLocal: true, isDefinition: true, variable: i32* @CHUNK_o)
!85 = distinct !DIGlobalVariable(name: "verbose", scope: !0, file: !67, line: 100, type: !35, isLocal: true, isDefinition: true, variable: i32* @verbose)
!86 = distinct !DIGlobalVariable(name: "version", scope: !0, file: !67, line: 72, type: !76, isLocal: true, isDefinition: true, variable: i8** @version)
!87 = distinct !DIGlobalVariable(name: "CHUNK_i", scope: !0, file: !67, line: 103, type: !48, isLocal: true, isDefinition: true, variable: i32* @CHUNK_i)
!88 = !{i32 2, !"Dwarf Version", i32 4}
!89 = !{i32 2, !"Debug Info Version", i32 3}
!90 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!91 = !DILocalVariable(name: "argc", arg: 1, scope: !66, file: !67, line: 635, type: !35)
!92 = !DIExpression()
!93 = !DILocation(line: 635, column: 14, scope: !66)
!94 = !DILocalVariable(name: "argv", arg: 2, scope: !66, file: !67, line: 635, type: !32)
!95 = !DILocation(line: 635, column: 27, scope: !66)
!96 = !DILocalVariable(name: "rc", scope: !66, file: !67, line: 637, type: !35)
!97 = !DILocation(line: 637, column: 6, scope: !66)
!98 = !DILocalVariable(name: "compress", scope: !66, file: !67, line: 638, type: !99)
!99 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!100 = !DILocation(line: 638, column: 6, scope: !66)
!101 = !DILocalVariable(name: "list_contents", scope: !66, file: !67, line: 639, type: !35)
!102 = !DILocation(line: 639, column: 6, scope: !66)
!103 = !DILocalVariable(name: "force", scope: !66, file: !67, line: 640, type: !99)
!104 = !DILocation(line: 640, column: 6, scope: !66)
!105 = !DILocalVariable(name: "quiet", scope: !66, file: !67, line: 641, type: !99)
!106 = !DILocation(line: 641, column: 6, scope: !66)
!107 = !DILocalVariable(name: "window_bits", scope: !66, file: !67, line: 642, type: !35)
!108 = !DILocation(line: 642, column: 6, scope: !66)
!109 = !DILocalVariable(name: "level", scope: !66, file: !67, line: 643, type: !35)
!110 = !DILocation(line: 643, column: 6, scope: !66)
!111 = !DILocalVariable(name: "prog", scope: !66, file: !67, line: 644, type: !33)
!112 = !DILocation(line: 644, column: 8, scope: !66)
!113 = !DILocation(line: 644, column: 23, scope: !66)
!114 = !DILocation(line: 644, column: 14, scope: !66)
!115 = !DILocalVariable(name: "in_f", scope: !66, file: !67, line: 645, type: !76)
!116 = !DILocation(line: 645, column: 14, scope: !66)
!117 = !DILocalVariable(name: "out_f", scope: !66, file: !67, line: 646, type: !118)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 32768, align: 8, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 4096)
!121 = !DILocation(line: 646, column: 7, scope: !66)
!122 = !DILocalVariable(name: "i_fp", scope: !66, file: !67, line: 647, type: !123)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !125, line: 48, baseType: !126)
!125 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop")
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !127, line: 241, size: 1728, align: 64, elements: !128)
!127 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop")
!128 = !{!129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !149, !150, !151, !152, !154, !155, !157, !161, !164, !166, !167, !168, !169, !170, !171, !172}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !126, file: !127, line: 242, baseType: !35, size: 32, align: 32)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !126, file: !127, line: 247, baseType: !33, size: 64, align: 64, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !126, file: !127, line: 248, baseType: !33, size: 64, align: 64, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !126, file: !127, line: 249, baseType: !33, size: 64, align: 64, offset: 192)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !126, file: !127, line: 250, baseType: !33, size: 64, align: 64, offset: 256)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !126, file: !127, line: 251, baseType: !33, size: 64, align: 64, offset: 320)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !126, file: !127, line: 252, baseType: !33, size: 64, align: 64, offset: 384)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !126, file: !127, line: 253, baseType: !33, size: 64, align: 64, offset: 448)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !126, file: !127, line: 254, baseType: !33, size: 64, align: 64, offset: 512)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !126, file: !127, line: 256, baseType: !33, size: 64, align: 64, offset: 576)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !126, file: !127, line: 257, baseType: !33, size: 64, align: 64, offset: 640)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !126, file: !127, line: 258, baseType: !33, size: 64, align: 64, offset: 704)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !126, file: !127, line: 260, baseType: !142, size: 64, align: 64, offset: 768)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64, align: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !127, line: 156, size: 192, align: 64, elements: !144)
!144 = !{!145, !146, !148}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !143, file: !127, line: 157, baseType: !142, size: 64, align: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !143, file: !127, line: 158, baseType: !147, size: 64, align: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !143, file: !127, line: 162, baseType: !35, size: 32, align: 32, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !126, file: !127, line: 262, baseType: !147, size: 64, align: 64, offset: 832)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !126, file: !127, line: 264, baseType: !35, size: 32, align: 32, offset: 896)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !126, file: !127, line: 268, baseType: !35, size: 32, align: 32, offset: 928)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !126, file: !127, line: 270, baseType: !153, size: 64, align: 64, offset: 960)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !56, line: 131, baseType: !57)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !126, file: !127, line: 274, baseType: !61, size: 16, align: 16, offset: 1024)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !126, file: !127, line: 275, baseType: !156, size: 8, align: 8, offset: 1040)
!156 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !126, file: !127, line: 276, baseType: !158, size: 8, align: 8, offset: 1048)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 8, align: 8, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 1)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !126, file: !127, line: 280, baseType: !162, size: 64, align: 64, offset: 1088)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, align: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !127, line: 150, baseType: null)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !126, file: !127, line: 289, baseType: !165, size: 64, align: 64, offset: 1152)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !56, line: 132, baseType: !57)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !126, file: !127, line: 297, baseType: !31, size: 64, align: 64, offset: 1216)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !126, file: !127, line: 298, baseType: !31, size: 64, align: 64, offset: 1280)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !126, file: !127, line: 299, baseType: !31, size: 64, align: 64, offset: 1344)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !126, file: !127, line: 300, baseType: !31, size: 64, align: 64, offset: 1408)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !126, file: !127, line: 302, baseType: !62, size: 64, align: 64, offset: 1472)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !126, file: !127, line: 303, baseType: !35, size: 32, align: 32, offset: 1536)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !126, file: !127, line: 305, baseType: !173, size: 160, align: 8, offset: 1568)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 160, align: 8, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 20)
!176 = !DILocation(line: 647, column: 8, scope: !66)
!177 = !DILocation(line: 647, column: 14, scope: !66)
!178 = !DILocalVariable(name: "o_fp", scope: !66, file: !67, line: 648, type: !123)
!179 = !DILocation(line: 648, column: 8, scope: !66)
!180 = !DILocalVariable(name: "suffix", scope: !66, file: !67, line: 649, type: !76)
!181 = !DILocation(line: 649, column: 14, scope: !66)
!182 = !DILocalVariable(name: "force_software", scope: !66, file: !67, line: 650, type: !35)
!183 = !DILocation(line: 650, column: 6, scope: !66)
!184 = !DILocalVariable(name: "cpu", scope: !66, file: !67, line: 651, type: !35)
!185 = !DILocation(line: 651, column: 6, scope: !66)
!186 = !DILocalVariable(name: "in", scope: !66, file: !67, line: 652, type: !187)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!188 = !DILocation(line: 652, column: 17, scope: !66)
!189 = !DILocalVariable(name: "out", scope: !66, file: !67, line: 653, type: !187)
!190 = !DILocation(line: 653, column: 17, scope: !66)
!191 = !DILocalVariable(name: "strm", scope: !66, file: !67, line: 654, type: !192)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "z_stream", file: !193, line: 106, baseType: !194)
!193 = !DIFile(filename: "/usr/local/include/zlib.h", directory: "/home/lichi/Desktop")
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_stream_s", file: !193, line: 86, size: 896, align: 64, elements: !195)
!195 = !{!196, !197, !199, !201, !202, !203, !204, !205, !208, !214, !219, !220, !221, !222}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !194, file: !193, line: 87, baseType: !36, size: 64, align: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !194, file: !193, line: 88, baseType: !198, size: 32, align: 32, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "uInt", file: !38, line: 393, baseType: !48)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !194, file: !193, line: 89, baseType: !200, size: 64, align: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "uLong", file: !38, line: 394, baseType: !44)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !194, file: !193, line: 91, baseType: !36, size: 64, align: 64, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !194, file: !193, line: 92, baseType: !198, size: 32, align: 32, offset: 256)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !194, file: !193, line: 93, baseType: !200, size: 64, align: 64, offset: 320)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !194, file: !193, line: 95, baseType: !33, size: 64, align: 64, offset: 384)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !194, file: !193, line: 96, baseType: !206, size: 64, align: 64, offset: 448)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!207 = !DICompositeType(tag: DW_TAG_structure_type, name: "internal_state", file: !193, line: 84, flags: DIFlagFwdDecl)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "zalloc", scope: !194, file: !193, line: 98, baseType: !209, size: 64, align: 64, offset: 512)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "alloc_func", file: !193, line: 81, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!213, !213, !198, !198}
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "voidpf", file: !38, line: 409, baseType: !31)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "zfree", scope: !194, file: !193, line: 99, baseType: !215, size: 64, align: 64, offset: 576)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "free_func", file: !193, line: 82, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{null, !213, !213}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !194, file: !193, line: 100, baseType: !213, size: 64, align: 64, offset: 640)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "data_type", scope: !194, file: !193, line: 102, baseType: !35, size: 32, align: 32, offset: 704)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "adler", scope: !194, file: !193, line: 104, baseType: !200, size: 64, align: 64, offset: 768)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !194, file: !193, line: 105, baseType: !200, size: 64, align: 64, offset: 832)
!223 = !DILocation(line: 654, column: 11, scope: !66)
!224 = !DILocalVariable(name: "name", scope: !66, file: !67, line: 655, type: !76)
!225 = !DILocation(line: 655, column: 14, scope: !66)
!226 = !DILocalVariable(name: "comment", scope: !66, file: !67, line: 656, type: !33)
!227 = !DILocation(line: 656, column: 8, scope: !66)
!228 = !DILocalVariable(name: "extra_fname", scope: !66, file: !67, line: 657, type: !76)
!229 = !DILocation(line: 657, column: 14, scope: !66)
!230 = !DILocalVariable(name: "extra", scope: !66, file: !67, line: 658, type: !58)
!231 = !DILocation(line: 658, column: 11, scope: !66)
!232 = !DILocalVariable(name: "extra_len", scope: !66, file: !67, line: 659, type: !35)
!233 = !DILocation(line: 659, column: 6, scope: !66)
!234 = !DILocalVariable(name: "s", scope: !66, file: !67, line: 660, type: !235)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !236, line: 46, size: 1152, align: 64, elements: !237)
!236 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop")
!237 = !{!238, !240, !242, !244, !246, !248, !250, !251, !252, !253, !255, !257, !263, !264, !265}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !235, file: !236, line: 48, baseType: !239, size: 64, align: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !56, line: 124, baseType: !44)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !235, file: !236, line: 53, baseType: !241, size: 64, align: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !56, line: 127, baseType: !44)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !235, file: !236, line: 61, baseType: !243, size: 64, align: 64, offset: 128)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !56, line: 130, baseType: !44)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !235, file: !236, line: 62, baseType: !245, size: 32, align: 32, offset: 192)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !56, line: 129, baseType: !48)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !235, file: !236, line: 64, baseType: !247, size: 32, align: 32, offset: 224)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !56, line: 125, baseType: !48)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !235, file: !236, line: 65, baseType: !249, size: 32, align: 32, offset: 256)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !56, line: 126, baseType: !48)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !235, file: !236, line: 67, baseType: !35, size: 32, align: 32, offset: 288)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !235, file: !236, line: 69, baseType: !239, size: 64, align: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !235, file: !236, line: 74, baseType: !153, size: 64, align: 64, offset: 384)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !235, file: !236, line: 78, baseType: !254, size: 64, align: 64, offset: 448)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !56, line: 153, baseType: !57)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !235, file: !236, line: 80, baseType: !256, size: 64, align: 64, offset: 512)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !56, line: 158, baseType: !57)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !235, file: !236, line: 91, baseType: !258, size: 128, align: 64, offset: 576)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !54, line: 120, size: 128, align: 64, elements: !259)
!259 = !{!260, !261}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !258, file: !54, line: 122, baseType: !55, size: 64, align: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !258, file: !54, line: 123, baseType: !262, size: 64, align: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !56, line: 175, baseType: !57)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !235, file: !236, line: 92, baseType: !258, size: 128, align: 64, offset: 704)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !235, file: !236, line: 93, baseType: !258, size: 128, align: 64, offset: 832)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !235, file: !236, line: 106, baseType: !266, size: 192, align: 64, offset: 960)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 192, align: 64, elements: !267)
!267 = !{!268}
!268 = !DISubrange(count: 3)
!269 = !DILocation(line: 660, column: 14, scope: !66)
!270 = !DILocalVariable(name: "accel", scope: !66, file: !67, line: 661, type: !76)
!271 = !DILocation(line: 661, column: 14, scope: !66)
!272 = !DILocalVariable(name: "accel_env", scope: !66, file: !67, line: 662, type: !76)
!273 = !DILocation(line: 662, column: 14, scope: !66)
!274 = !DILocation(line: 662, column: 26, scope: !66)
!275 = !DILocalVariable(name: "card_no", scope: !66, file: !67, line: 663, type: !35)
!276 = !DILocation(line: 663, column: 6, scope: !66)
!277 = !DILocalVariable(name: "card_no_env", scope: !66, file: !67, line: 664, type: !76)
!278 = !DILocation(line: 664, column: 14, scope: !66)
!279 = !DILocation(line: 664, column: 28, scope: !66)
!280 = !DILocation(line: 668, column: 6, scope: !281)
!281 = distinct !DILexicalBlock(scope: !66, file: !67, line: 668, column: 6)
!282 = !DILocation(line: 668, column: 16, scope: !281)
!283 = !DILocation(line: 668, column: 6, scope: !66)
!284 = !DILocation(line: 669, column: 11, scope: !281)
!285 = !DILocation(line: 669, column: 9, scope: !281)
!286 = !DILocation(line: 669, column: 3, scope: !281)
!287 = !DILocation(line: 671, column: 6, scope: !288)
!288 = distinct !DILexicalBlock(scope: !66, file: !67, line: 671, column: 6)
!289 = !DILocation(line: 671, column: 18, scope: !288)
!290 = !DILocation(line: 671, column: 6, scope: !66)
!291 = !DILocation(line: 672, column: 18, scope: !288)
!292 = !DILocation(line: 672, column: 13, scope: !288)
!293 = !DILocation(line: 672, column: 11, scope: !288)
!294 = !DILocation(line: 672, column: 3, scope: !288)
!295 = !DILocation(line: 678, column: 13, scope: !296)
!296 = distinct !DILexicalBlock(scope: !66, file: !67, line: 678, column: 6)
!297 = !DILocation(line: 678, column: 6, scope: !296)
!298 = !DILocation(line: 678, column: 29, scope: !296)
!299 = !DILocation(line: 678, column: 6, scope: !66)
!300 = !DILocation(line: 679, column: 12, scope: !301)
!301 = distinct !DILexicalBlock(scope: !296, file: !67, line: 678, column: 35)
!302 = !DILocation(line: 680, column: 11, scope: !301)
!303 = !DILocation(line: 681, column: 2, scope: !301)
!304 = !DILocation(line: 683, column: 2, scope: !66)
!305 = !DILocalVariable(name: "ch", scope: !306, file: !67, line: 684, type: !35)
!306 = distinct !DILexicalBlock(scope: !66, file: !67, line: 683, column: 12)
!307 = !DILocation(line: 684, column: 7, scope: !306)
!308 = !DILocalVariable(name: "option_index", scope: !306, file: !67, line: 685, type: !35)
!309 = !DILocation(line: 685, column: 7, scope: !306)
!310 = !DILocation(line: 714, column: 20, scope: !306)
!311 = !DILocation(line: 714, column: 26, scope: !306)
!312 = !DILocation(line: 714, column: 8, scope: !306)
!313 = !DILocation(line: 714, column: 6, scope: !306)
!314 = !DILocation(line: 717, column: 7, scope: !315)
!315 = distinct !DILexicalBlock(scope: !306, file: !67, line: 717, column: 7)
!316 = !DILocation(line: 717, column: 10, scope: !315)
!317 = !DILocation(line: 717, column: 7, scope: !306)
!318 = !DILocation(line: 718, column: 4, scope: !315)
!319 = !DILocation(line: 720, column: 11, scope: !306)
!320 = !DILocation(line: 720, column: 3, scope: !306)
!321 = !DILocation(line: 723, column: 18, scope: !322)
!322 = distinct !DILexicalBlock(scope: !306, file: !67, line: 720, column: 15)
!323 = !DILocation(line: 723, column: 10, scope: !322)
!324 = !DILocation(line: 723, column: 8, scope: !322)
!325 = !DILocation(line: 724, column: 4, scope: !322)
!326 = !DILocation(line: 726, column: 12, scope: !322)
!327 = !DILocation(line: 726, column: 10, scope: !322)
!328 = !DILocation(line: 727, column: 4, scope: !322)
!329 = !DILocation(line: 729, column: 21, scope: !322)
!330 = !DILocation(line: 729, column: 14, scope: !322)
!331 = !DILocation(line: 729, column: 12, scope: !322)
!332 = !DILocation(line: 730, column: 4, scope: !322)
!333 = !DILocation(line: 733, column: 18, scope: !322)
!334 = !DILocation(line: 733, column: 16, scope: !322)
!335 = !DILocation(line: 734, column: 4, scope: !322)
!336 = !DILocation(line: 736, column: 11, scope: !322)
!337 = !DILocation(line: 736, column: 9, scope: !322)
!338 = !DILocation(line: 737, column: 4, scope: !322)
!339 = !DILocation(line: 739, column: 14, scope: !322)
!340 = !DILocation(line: 739, column: 12, scope: !322)
!341 = !DILocation(line: 740, column: 4, scope: !322)
!342 = !DILocation(line: 742, column: 13, scope: !322)
!343 = !DILocation(line: 743, column: 4, scope: !322)
!344 = !DILocation(line: 745, column: 10, scope: !322)
!345 = !DILocation(line: 746, column: 4, scope: !322)
!346 = !DILocation(line: 749, column: 10, scope: !322)
!347 = !DILocation(line: 750, column: 4, scope: !322)
!348 = !DILocation(line: 752, column: 10, scope: !322)
!349 = !DILocation(line: 752, column: 9, scope: !322)
!350 = !DILocation(line: 753, column: 4, scope: !322)
!351 = !DILocation(line: 755, column: 13, scope: !322)
!352 = !DILocation(line: 755, column: 11, scope: !322)
!353 = !DILocation(line: 756, column: 4, scope: !322)
!354 = !DILocation(line: 758, column: 19, scope: !322)
!355 = !DILocation(line: 759, column: 4, scope: !322)
!356 = !DILocation(line: 761, column: 17, scope: !322)
!357 = !DILocation(line: 762, column: 4, scope: !322)
!358 = !DILocation(line: 764, column: 10, scope: !322)
!359 = !DILocation(line: 765, column: 4, scope: !322)
!360 = !DILocation(line: 767, column: 10, scope: !322)
!361 = !DILocation(line: 768, column: 4, scope: !322)
!362 = !DILocation(line: 770, column: 10, scope: !322)
!363 = !DILocation(line: 771, column: 4, scope: !322)
!364 = !DILocation(line: 773, column: 10, scope: !322)
!365 = !DILocation(line: 774, column: 4, scope: !322)
!366 = !DILocation(line: 776, column: 10, scope: !322)
!367 = !DILocation(line: 777, column: 4, scope: !322)
!368 = !DILocation(line: 779, column: 10, scope: !322)
!369 = !DILocation(line: 780, column: 4, scope: !322)
!370 = !DILocation(line: 782, column: 10, scope: !322)
!371 = !DILocation(line: 783, column: 4, scope: !322)
!372 = !DILocation(line: 785, column: 10, scope: !322)
!373 = !DILocation(line: 786, column: 4, scope: !322)
!374 = !DILocation(line: 788, column: 10, scope: !322)
!375 = !DILocation(line: 789, column: 4, scope: !322)
!376 = !DILocation(line: 791, column: 11, scope: !322)
!377 = !DILocation(line: 792, column: 4, scope: !322)
!378 = !DILocation(line: 794, column: 11, scope: !322)
!379 = !DILocation(line: 794, column: 27, scope: !322)
!380 = !DILocation(line: 794, column: 4, scope: !322)
!381 = !DILocation(line: 795, column: 4, scope: !322)
!382 = !DILocation(line: 798, column: 25, scope: !322)
!383 = !DILocation(line: 798, column: 14, scope: !322)
!384 = !DILocation(line: 798, column: 12, scope: !322)
!385 = !DILocation(line: 799, column: 4, scope: !322)
!386 = !DILocation(line: 801, column: 25, scope: !322)
!387 = !DILocation(line: 801, column: 14, scope: !322)
!388 = !DILocation(line: 801, column: 12, scope: !322)
!389 = !DILocation(line: 802, column: 4, scope: !322)
!390 = !DILocation(line: 804, column: 12, scope: !322)
!391 = !DILocation(line: 804, column: 20, scope: !322)
!392 = !DILocation(line: 804, column: 26, scope: !322)
!393 = !DILocation(line: 804, column: 4, scope: !322)
!394 = !DILocation(line: 805, column: 4, scope: !322)
!395 = !DILocation(line: 809, column: 9, scope: !322)
!396 = !DILocation(line: 809, column: 17, scope: !322)
!397 = !DILocation(line: 809, column: 23, scope: !322)
!398 = !DILocation(line: 809, column: 29, scope: !322)
!399 = !DILocation(line: 809, column: 4, scope: !322)
!400 = !DILocation(line: 810, column: 4, scope: !322)
!401 = !DILocation(line: 683, column: 2, scope: !402)
!402 = !DILexicalBlockFile(scope: !66, file: !67, discriminator: 1)
!403 = distinct !{!403, !304}
!404 = !DILocation(line: 815, column: 6, scope: !405)
!405 = distinct !DILexicalBlock(scope: !66, file: !67, line: 815, column: 6)
!406 = !DILocation(line: 815, column: 10, scope: !405)
!407 = !DILocation(line: 815, column: 6, scope: !66)
!408 = !DILocation(line: 816, column: 14, scope: !405)
!409 = !DILocation(line: 816, column: 3, scope: !405)
!410 = !DILocation(line: 818, column: 6, scope: !411)
!411 = distinct !DILexicalBlock(scope: !66, file: !67, line: 818, column: 6)
!412 = !DILocation(line: 818, column: 6, scope: !66)
!413 = !DILocation(line: 819, column: 3, scope: !414)
!414 = distinct !DILexicalBlock(scope: !411, file: !67, line: 818, column: 22)
!415 = !DILocation(line: 820, column: 3, scope: !414)
!416 = !DILocation(line: 821, column: 2, scope: !414)
!417 = !DILocation(line: 822, column: 24, scope: !418)
!418 = distinct !DILexicalBlock(scope: !411, file: !67, line: 821, column: 9)
!419 = !DILocation(line: 822, column: 31, scope: !418)
!420 = !DILocation(line: 822, column: 3, scope: !418)
!421 = !DILocation(line: 823, column: 3, scope: !418)
!422 = !DILocation(line: 824, column: 3, scope: !418)
!423 = !DILocation(line: 828, column: 6, scope: !424)
!424 = distinct !DILexicalBlock(scope: !66, file: !67, line: 828, column: 6)
!425 = !DILocation(line: 828, column: 15, scope: !424)
!426 = !DILocation(line: 828, column: 13, scope: !424)
!427 = !DILocation(line: 828, column: 6, scope: !66)
!428 = !DILocation(line: 829, column: 21, scope: !429)
!429 = distinct !DILexicalBlock(scope: !424, file: !67, line: 828, column: 21)
!430 = !DILocation(line: 829, column: 10, scope: !429)
!431 = !DILocation(line: 829, column: 8, scope: !429)
!432 = !DILocation(line: 831, column: 16, scope: !429)
!433 = !DILocation(line: 831, column: 10, scope: !429)
!434 = !DILocation(line: 831, column: 8, scope: !429)
!435 = !DILocation(line: 832, column: 8, scope: !436)
!436 = distinct !DILexicalBlock(scope: !429, file: !67, line: 832, column: 7)
!437 = !DILocation(line: 832, column: 7, scope: !429)
!438 = !DILocation(line: 833, column: 4, scope: !439)
!439 = distinct !DILexicalBlock(scope: !436, file: !67, line: 832, column: 14)
!440 = distinct !{!440, !438}
!441 = !DILocation(line: 833, column: 3, scope: !442)
!442 = !DILexicalBlockFile(scope: !443, file: !67, discriminator: 1)
!443 = distinct !DILexicalBlock(scope: !439, file: !67, line: 833, column: 7)
!444 = !DILocation(line: 833, column: 5, scope: !442)
!445 = !DILocation(line: 833, column: 4, scope: !442)
!446 = !DILocation(line: 833, column: 22, scope: !447)
!447 = !DILexicalBlockFile(scope: !442, file: !67, discriminator: 2)
!448 = !DILocation(line: 833, column: 9, scope: !449)
!449 = !DILexicalBlockFile(scope: !442, file: !67, discriminator: 3)
!450 = !DILocation(line: 833, column: 7, scope: !442)
!451 = !DILocation(line: 834, column: 14, scope: !439)
!452 = !DILocation(line: 834, column: 22, scope: !439)
!453 = !DILocation(line: 834, column: 28, scope: !439)
!454 = !DILocation(line: 834, column: 4, scope: !439)
!455 = !DILocation(line: 835, column: 4, scope: !439)
!456 = !DILocation(line: 838, column: 14, scope: !429)
!457 = !DILocation(line: 838, column: 8, scope: !429)
!458 = !DILocation(line: 838, column: 6, scope: !429)
!459 = !DILocation(line: 839, column: 8, scope: !460)
!460 = distinct !DILexicalBlock(scope: !429, file: !67, line: 839, column: 7)
!461 = !DILocation(line: 839, column: 11, scope: !460)
!462 = !DILocation(line: 839, column: 17, scope: !460)
!463 = !DILocation(line: 839, column: 21, scope: !464)
!464 = !DILexicalBlockFile(scope: !460, file: !67, discriminator: 1)
!465 = !DILocation(line: 839, column: 22, scope: !464)
!466 = !DILocation(line: 839, column: 33, scope: !464)
!467 = !DILocation(line: 839, column: 7, scope: !464)
!468 = !DILocation(line: 840, column: 4, scope: !469)
!469 = distinct !DILexicalBlock(scope: !460, file: !67, line: 839, column: 39)
!470 = distinct !{!470, !468}
!471 = !DILocation(line: 840, column: 3, scope: !472)
!472 = !DILexicalBlockFile(scope: !473, file: !67, discriminator: 1)
!473 = distinct !DILexicalBlock(scope: !469, file: !67, line: 840, column: 7)
!474 = !DILocation(line: 840, column: 57, scope: !472)
!475 = !DILocation(line: 840, column: 9, scope: !472)
!476 = !DILocation(line: 840, column: 64, scope: !472)
!477 = !DILocation(line: 842, column: 4, scope: !469)
!478 = !DILocation(line: 845, column: 7, scope: !479)
!479 = distinct !DILexicalBlock(scope: !429, file: !67, line: 845, column: 7)
!480 = !DILocation(line: 845, column: 7, scope: !429)
!481 = !DILocation(line: 846, column: 22, scope: !482)
!482 = distinct !DILexicalBlock(scope: !479, file: !67, line: 845, column: 22)
!483 = !DILocation(line: 846, column: 29, scope: !482)
!484 = !DILocation(line: 846, column: 44, scope: !482)
!485 = !DILocation(line: 846, column: 9, scope: !482)
!486 = !DILocation(line: 846, column: 7, scope: !482)
!487 = !DILocation(line: 847, column: 8, scope: !488)
!488 = distinct !DILexicalBlock(scope: !482, file: !67, line: 847, column: 8)
!489 = !DILocation(line: 847, column: 11, scope: !488)
!490 = !DILocation(line: 847, column: 8, scope: !482)
!491 = !DILocation(line: 848, column: 5, scope: !492)
!492 = distinct !DILexicalBlock(scope: !488, file: !67, line: 847, column: 16)
!493 = distinct !{!493, !491}
!494 = !DILocation(line: 848, column: 4, scope: !495)
!495 = !DILexicalBlockFile(scope: !496, file: !67, discriminator: 1)
!496 = distinct !DILexicalBlock(scope: !492, file: !67, line: 848, column: 8)
!497 = !DILocation(line: 848, column: 33, scope: !495)
!498 = !DILocation(line: 848, column: 10, scope: !495)
!499 = !DILocation(line: 848, column: 42, scope: !495)
!500 = !DILocation(line: 849, column: 15, scope: !492)
!501 = !DILocation(line: 849, column: 23, scope: !492)
!502 = !DILocation(line: 849, column: 29, scope: !492)
!503 = !DILocation(line: 849, column: 5, scope: !492)
!504 = !DILocation(line: 850, column: 5, scope: !492)
!505 = !DILocation(line: 853, column: 26, scope: !482)
!506 = !DILocation(line: 853, column: 32, scope: !482)
!507 = !DILocation(line: 853, column: 39, scope: !482)
!508 = !DILocation(line: 853, column: 9, scope: !482)
!509 = !DILocation(line: 853, column: 7, scope: !482)
!510 = !DILocation(line: 854, column: 8, scope: !511)
!511 = distinct !DILexicalBlock(scope: !482, file: !67, line: 854, column: 8)
!512 = !DILocation(line: 854, column: 11, scope: !511)
!513 = !DILocation(line: 854, column: 8, scope: !482)
!514 = !DILocation(line: 855, column: 5, scope: !515)
!515 = distinct !DILexicalBlock(scope: !511, file: !67, line: 854, column: 17)
!516 = distinct !{!516, !514}
!517 = !DILocation(line: 855, column: 4, scope: !518)
!518 = !DILexicalBlockFile(scope: !519, file: !67, discriminator: 1)
!519 = distinct !DILexicalBlock(scope: !515, file: !67, line: 855, column: 8)
!520 = !DILocation(line: 855, column: 10, scope: !518)
!521 = !DILocation(line: 855, column: 46, scope: !518)
!522 = !DILocation(line: 856, column: 15, scope: !515)
!523 = !DILocation(line: 856, column: 23, scope: !515)
!524 = !DILocation(line: 856, column: 29, scope: !515)
!525 = !DILocation(line: 856, column: 5, scope: !515)
!526 = !DILocation(line: 857, column: 5, scope: !515)
!527 = !DILocation(line: 859, column: 11, scope: !482)
!528 = !DILocation(line: 859, column: 4, scope: !482)
!529 = !DILocation(line: 860, column: 4, scope: !482)
!530 = !DILocation(line: 862, column: 2, scope: !429)
!531 = !DILocation(line: 864, column: 6, scope: !532)
!532 = distinct !DILexicalBlock(scope: !66, file: !67, line: 864, column: 6)
!533 = !DILocation(line: 864, column: 11, scope: !532)
!534 = !DILocation(line: 864, column: 6, scope: !66)
!535 = !DILocation(line: 865, column: 9, scope: !532)
!536 = !DILocation(line: 865, column: 8, scope: !532)
!537 = !DILocation(line: 865, column: 3, scope: !532)
!538 = !DILocation(line: 867, column: 6, scope: !539)
!539 = distinct !DILexicalBlock(scope: !66, file: !67, line: 867, column: 6)
!540 = !DILocation(line: 867, column: 11, scope: !539)
!541 = !DILocation(line: 867, column: 6, scope: !66)
!542 = !DILocation(line: 868, column: 7, scope: !543)
!543 = distinct !DILexicalBlock(scope: !544, file: !67, line: 868, column: 7)
!544 = distinct !DILexicalBlock(scope: !539, file: !67, line: 867, column: 19)
!545 = !DILocation(line: 868, column: 7, scope: !544)
!546 = !DILocation(line: 869, column: 13, scope: !543)
!547 = !DILocation(line: 869, column: 38, scope: !543)
!548 = !DILocation(line: 869, column: 44, scope: !543)
!549 = !DILocation(line: 869, column: 4, scope: !543)
!550 = !DILocation(line: 871, column: 22, scope: !551)
!551 = distinct !DILexicalBlock(scope: !543, file: !67, line: 870, column: 8)
!552 = !DILocation(line: 871, column: 29, scope: !551)
!553 = !DILocation(line: 871, column: 44, scope: !551)
!554 = !DILocation(line: 871, column: 9, scope: !551)
!555 = !DILocation(line: 871, column: 7, scope: !551)
!556 = !DILocation(line: 872, column: 8, scope: !557)
!557 = distinct !DILexicalBlock(scope: !551, file: !67, line: 872, column: 8)
!558 = !DILocation(line: 872, column: 11, scope: !557)
!559 = !DILocation(line: 872, column: 8, scope: !551)
!560 = !DILocation(line: 873, column: 5, scope: !561)
!561 = distinct !DILexicalBlock(scope: !557, file: !67, line: 872, column: 16)
!562 = distinct !{!562, !560}
!563 = !DILocation(line: 873, column: 4, scope: !564)
!564 = !DILexicalBlockFile(scope: !565, file: !67, discriminator: 1)
!565 = distinct !DILexicalBlock(scope: !561, file: !67, line: 873, column: 8)
!566 = !DILocation(line: 873, column: 33, scope: !564)
!567 = !DILocation(line: 873, column: 10, scope: !564)
!568 = !DILocation(line: 873, column: 42, scope: !564)
!569 = !DILocation(line: 874, column: 15, scope: !561)
!570 = !DILocation(line: 874, column: 23, scope: !561)
!571 = !DILocation(line: 874, column: 29, scope: !561)
!572 = !DILocation(line: 874, column: 5, scope: !561)
!573 = !DILocation(line: 875, column: 5, scope: !561)
!574 = !DILocation(line: 879, column: 13, scope: !544)
!575 = !DILocation(line: 879, column: 8, scope: !544)
!576 = !DILocation(line: 879, column: 6, scope: !544)
!577 = !DILocation(line: 880, column: 8, scope: !578)
!578 = distinct !DILexicalBlock(scope: !544, file: !67, line: 880, column: 7)
!579 = !DILocation(line: 880, column: 14, scope: !578)
!580 = !DILocation(line: 880, column: 18, scope: !581)
!581 = !DILexicalBlockFile(scope: !578, file: !67, discriminator: 1)
!582 = !DILocation(line: 880, column: 21, scope: !581)
!583 = !DILocation(line: 880, column: 7, scope: !581)
!584 = !DILocation(line: 881, column: 4, scope: !585)
!585 = distinct !DILexicalBlock(scope: !578, file: !67, line: 880, column: 28)
!586 = distinct !{!586, !584}
!587 = !DILocation(line: 881, column: 3, scope: !588)
!588 = !DILexicalBlockFile(scope: !589, file: !67, discriminator: 1)
!589 = distinct !DILexicalBlock(scope: !585, file: !67, line: 881, column: 7)
!590 = !DILocation(line: 881, column: 43, scope: !588)
!591 = !DILocation(line: 881, column: 9, scope: !588)
!592 = !DILocation(line: 881, column: 51, scope: !588)
!593 = !DILocation(line: 882, column: 14, scope: !585)
!594 = !DILocation(line: 882, column: 22, scope: !585)
!595 = !DILocation(line: 882, column: 28, scope: !585)
!596 = !DILocation(line: 882, column: 4, scope: !585)
!597 = !DILocation(line: 883, column: 4, scope: !585)
!598 = !DILocation(line: 886, column: 16, scope: !544)
!599 = !DILocation(line: 886, column: 10, scope: !544)
!600 = !DILocation(line: 886, column: 8, scope: !544)
!601 = !DILocation(line: 887, column: 8, scope: !602)
!602 = distinct !DILexicalBlock(scope: !544, file: !67, line: 887, column: 7)
!603 = !DILocation(line: 887, column: 7, scope: !544)
!604 = !DILocation(line: 888, column: 4, scope: !605)
!605 = distinct !DILexicalBlock(scope: !602, file: !67, line: 887, column: 14)
!606 = distinct !{!606, !604}
!607 = !DILocation(line: 888, column: 3, scope: !608)
!608 = !DILexicalBlockFile(scope: !609, file: !67, discriminator: 1)
!609 = distinct !DILexicalBlock(scope: !605, file: !67, line: 888, column: 7)
!610 = !DILocation(line: 888, column: 50, scope: !608)
!611 = !DILocation(line: 888, column: 5, scope: !608)
!612 = !DILocation(line: 888, column: 4, scope: !608)
!613 = !DILocation(line: 888, column: 57, scope: !614)
!614 = !DILexicalBlockFile(scope: !608, file: !67, discriminator: 2)
!615 = !DILocation(line: 888, column: 9, scope: !616)
!616 = !DILexicalBlockFile(scope: !608, file: !67, discriminator: 3)
!617 = !DILocation(line: 888, column: 7, scope: !608)
!618 = !DILocation(line: 890, column: 14, scope: !605)
!619 = !DILocation(line: 890, column: 22, scope: !605)
!620 = !DILocation(line: 890, column: 28, scope: !605)
!621 = !DILocation(line: 890, column: 4, scope: !605)
!622 = !DILocation(line: 891, column: 4, scope: !605)
!623 = !DILocation(line: 895, column: 21, scope: !544)
!624 = !DILocation(line: 895, column: 14, scope: !544)
!625 = !DILocation(line: 895, column: 8, scope: !626)
!626 = !DILexicalBlockFile(scope: !544, file: !67, discriminator: 1)
!627 = !DILocation(line: 895, column: 6, scope: !544)
!628 = !DILocation(line: 896, column: 7, scope: !629)
!629 = distinct !DILexicalBlock(scope: !544, file: !67, line: 896, column: 7)
!630 = !DILocation(line: 896, column: 10, scope: !629)
!631 = !DILocation(line: 896, column: 7, scope: !544)
!632 = !DILocation(line: 897, column: 23, scope: !633)
!633 = distinct !DILexicalBlock(scope: !629, file: !67, line: 896, column: 16)
!634 = !DILocation(line: 897, column: 16, scope: !633)
!635 = !DILocation(line: 897, column: 32, scope: !633)
!636 = !DILocation(line: 897, column: 9, scope: !637)
!637 = !DILexicalBlockFile(scope: !633, file: !67, discriminator: 1)
!638 = !DILocation(line: 897, column: 7, scope: !633)
!639 = !DILocation(line: 898, column: 8, scope: !640)
!640 = distinct !DILexicalBlock(scope: !633, file: !67, line: 898, column: 8)
!641 = !DILocation(line: 898, column: 11, scope: !640)
!642 = !DILocation(line: 898, column: 8, scope: !633)
!643 = !DILocation(line: 899, column: 5, scope: !644)
!644 = distinct !DILexicalBlock(scope: !640, file: !67, line: 898, column: 17)
!645 = distinct !{!645, !643}
!646 = !DILocation(line: 899, column: 4, scope: !647)
!647 = !DILexicalBlockFile(scope: !648, file: !67, discriminator: 1)
!648 = distinct !DILexicalBlock(scope: !644, file: !67, line: 899, column: 8)
!649 = !DILocation(line: 899, column: 43, scope: !647)
!650 = !DILocation(line: 899, column: 6, scope: !647)
!651 = !DILocation(line: 899, column: 5, scope: !647)
!652 = !DILocation(line: 899, column: 50, scope: !653)
!653 = !DILexicalBlockFile(scope: !647, file: !67, discriminator: 2)
!654 = !DILocation(line: 899, column: 10, scope: !655)
!655 = !DILexicalBlockFile(scope: !647, file: !67, discriminator: 3)
!656 = !DILocation(line: 899, column: 8, scope: !647)
!657 = !DILocation(line: 901, column: 5, scope: !644)
!658 = !DILocation(line: 903, column: 3, scope: !633)
!659 = !DILocation(line: 904, column: 4, scope: !629)
!660 = distinct !{!660, !659}
!661 = !DILocation(line: 904, column: 3, scope: !662)
!662 = !DILexicalBlockFile(scope: !663, file: !67, discriminator: 1)
!663 = distinct !DILexicalBlock(scope: !629, file: !67, line: 904, column: 7)
!664 = !DILocation(line: 904, column: 42, scope: !662)
!665 = !DILocation(line: 904, column: 5, scope: !662)
!666 = !DILocation(line: 904, column: 4, scope: !662)
!667 = !DILocation(line: 904, column: 49, scope: !668)
!668 = !DILexicalBlockFile(scope: !662, file: !67, discriminator: 2)
!669 = !DILocation(line: 904, column: 9, scope: !670)
!670 = !DILexicalBlockFile(scope: !662, file: !67, discriminator: 3)
!671 = !DILocation(line: 904, column: 7, scope: !662)
!672 = !DILocation(line: 910, column: 7, scope: !673)
!673 = distinct !DILexicalBlock(scope: !544, file: !67, line: 910, column: 7)
!674 = !DILocation(line: 910, column: 12, scope: !673)
!675 = !DILocation(line: 910, column: 7, scope: !544)
!676 = !DILocation(line: 911, column: 11, scope: !673)
!677 = !DILocation(line: 911, column: 9, scope: !673)
!678 = !DILocation(line: 911, column: 4, scope: !673)
!679 = !DILocation(line: 912, column: 2, scope: !544)
!680 = !DILocation(line: 914, column: 20, scope: !681)
!681 = distinct !DILexicalBlock(scope: !66, file: !67, line: 914, column: 6)
!682 = !DILocation(line: 914, column: 13, scope: !681)
!683 = !DILocation(line: 914, column: 6, scope: !684)
!684 = !DILexicalBlockFile(scope: !681, file: !67, discriminator: 1)
!685 = !DILocation(line: 914, column: 6, scope: !681)
!686 = !DILocation(line: 914, column: 6, scope: !66)
!687 = !DILocation(line: 915, column: 3, scope: !688)
!688 = distinct !DILexicalBlock(scope: !681, file: !67, line: 914, column: 28)
!689 = distinct !{!689, !687}
!690 = !DILocation(line: 915, column: 2, scope: !691)
!691 = !DILexicalBlockFile(scope: !692, file: !67, discriminator: 1)
!692 = distinct !DILexicalBlock(scope: !688, file: !67, line: 915, column: 6)
!693 = !DILocation(line: 915, column: 8, scope: !691)
!694 = !DILocation(line: 915, column: 50, scope: !691)
!695 = !DILocation(line: 916, column: 13, scope: !688)
!696 = !DILocation(line: 916, column: 21, scope: !688)
!697 = !DILocation(line: 916, column: 27, scope: !688)
!698 = !DILocation(line: 916, column: 3, scope: !688)
!699 = !DILocation(line: 917, column: 3, scope: !688)
!700 = !DILocation(line: 920, column: 6, scope: !701)
!701 = distinct !DILexicalBlock(scope: !66, file: !67, line: 920, column: 6)
!702 = !DILocation(line: 920, column: 16, scope: !701)
!703 = !DILocation(line: 920, column: 13, scope: !701)
!704 = !DILocation(line: 920, column: 6, scope: !66)
!705 = !DILocation(line: 921, column: 8, scope: !706)
!706 = distinct !DILexicalBlock(scope: !701, file: !67, line: 920, column: 22)
!707 = !DILocation(line: 921, column: 16, scope: !706)
!708 = !DILocation(line: 921, column: 22, scope: !706)
!709 = !DILocation(line: 921, column: 28, scope: !706)
!710 = !DILocation(line: 921, column: 3, scope: !706)
!711 = !DILocation(line: 922, column: 3, scope: !706)
!712 = !DILocation(line: 925, column: 14, scope: !66)
!713 = !DILocation(line: 925, column: 7, scope: !66)
!714 = !DILocation(line: 925, column: 5, scope: !66)
!715 = !DILocation(line: 926, column: 13, scope: !716)
!716 = distinct !DILexicalBlock(scope: !66, file: !67, line: 926, column: 5)
!717 = !DILocation(line: 926, column: 10, scope: !716)
!718 = !DILocation(line: 926, column: 5, scope: !66)
!719 = !DILocation(line: 927, column: 3, scope: !720)
!720 = distinct !DILexicalBlock(scope: !716, file: !67, line: 926, column: 17)
!721 = distinct !{!721, !719}
!722 = !DILocation(line: 927, column: 2, scope: !723)
!723 = !DILexicalBlockFile(scope: !724, file: !67, discriminator: 1)
!724 = distinct !DILexicalBlock(scope: !720, file: !67, line: 927, column: 6)
!725 = !DILocation(line: 927, column: 4, scope: !723)
!726 = !DILocation(line: 927, column: 3, scope: !723)
!727 = !DILocation(line: 927, column: 21, scope: !728)
!728 = !DILexicalBlockFile(scope: !723, file: !67, discriminator: 2)
!729 = !DILocation(line: 927, column: 8, scope: !730)
!730 = !DILexicalBlockFile(scope: !723, file: !67, discriminator: 3)
!731 = !DILocation(line: 927, column: 6, scope: !723)
!732 = !DILocation(line: 928, column: 13, scope: !720)
!733 = !DILocation(line: 928, column: 21, scope: !720)
!734 = !DILocation(line: 928, column: 27, scope: !720)
!735 = !DILocation(line: 928, column: 3, scope: !720)
!736 = !DILocation(line: 929, column: 3, scope: !720)
!737 = !DILocation(line: 932, column: 15, scope: !66)
!738 = !DILocation(line: 932, column: 8, scope: !66)
!739 = !DILocation(line: 932, column: 6, scope: !66)
!740 = !DILocation(line: 933, column: 13, scope: !741)
!741 = distinct !DILexicalBlock(scope: !66, file: !67, line: 933, column: 5)
!742 = !DILocation(line: 933, column: 10, scope: !741)
!743 = !DILocation(line: 933, column: 5, scope: !66)
!744 = !DILocation(line: 934, column: 3, scope: !745)
!745 = distinct !DILexicalBlock(scope: !741, file: !67, line: 933, column: 18)
!746 = distinct !{!746, !744}
!747 = !DILocation(line: 934, column: 2, scope: !748)
!748 = !DILexicalBlockFile(scope: !749, file: !67, discriminator: 1)
!749 = distinct !DILexicalBlock(scope: !745, file: !67, line: 934, column: 6)
!750 = !DILocation(line: 934, column: 4, scope: !748)
!751 = !DILocation(line: 934, column: 3, scope: !748)
!752 = !DILocation(line: 934, column: 21, scope: !753)
!753 = !DILexicalBlockFile(scope: !748, file: !67, discriminator: 2)
!754 = !DILocation(line: 934, column: 8, scope: !755)
!755 = !DILexicalBlockFile(scope: !748, file: !67, discriminator: 3)
!756 = !DILocation(line: 934, column: 6, scope: !748)
!757 = !DILocation(line: 935, column: 13, scope: !745)
!758 = !DILocation(line: 935, column: 21, scope: !745)
!759 = !DILocation(line: 935, column: 27, scope: !745)
!760 = !DILocation(line: 935, column: 3, scope: !745)
!761 = !DILocation(line: 936, column: 3, scope: !745)
!762 = !DILocation(line: 940, column: 2, scope: !66)
!763 = !DILocation(line: 941, column: 7, scope: !66)
!764 = !DILocation(line: 941, column: 14, scope: !66)
!765 = !DILocation(line: 942, column: 7, scope: !66)
!766 = !DILocation(line: 942, column: 13, scope: !66)
!767 = !DILocation(line: 943, column: 7, scope: !66)
!768 = !DILocation(line: 943, column: 14, scope: !66)
!769 = !DILocation(line: 945, column: 6, scope: !770)
!770 = distinct !DILexicalBlock(scope: !66, file: !67, line: 945, column: 6)
!771 = !DILocation(line: 945, column: 6, scope: !66)
!772 = !DILocalVariable(name: "head", scope: !773, file: !67, line: 946, type: !774)
!773 = distinct !DILexicalBlock(scope: !770, file: !67, line: 945, column: 16)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "gz_header", file: !193, line: 129, baseType: !775)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gz_header_s", file: !193, line: 114, size: 640, align: 64, elements: !776)
!776 = !{!777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !775, file: !193, line: 115, baseType: !35, size: 32, align: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !775, file: !193, line: 116, baseType: !200, size: 64, align: 64, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "xflags", scope: !775, file: !193, line: 117, baseType: !35, size: 32, align: 32, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "os", scope: !775, file: !193, line: 118, baseType: !35, size: 32, align: 32, offset: 160)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !775, file: !193, line: 119, baseType: !36, size: 64, align: 64, offset: 192)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "extra_len", scope: !775, file: !193, line: 120, baseType: !198, size: 32, align: 32, offset: 256)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "extra_max", scope: !775, file: !193, line: 121, baseType: !198, size: 32, align: 32, offset: 288)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !775, file: !193, line: 122, baseType: !36, size: 64, align: 64, offset: 320)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "name_max", scope: !775, file: !193, line: 123, baseType: !198, size: 32, align: 32, offset: 384)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !775, file: !193, line: 124, baseType: !36, size: 64, align: 64, offset: 448)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "comm_max", scope: !775, file: !193, line: 125, baseType: !198, size: 32, align: 32, offset: 512)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "hcrc", scope: !775, file: !193, line: 126, baseType: !35, size: 32, align: 32, offset: 544)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !775, file: !193, line: 127, baseType: !35, size: 32, align: 32, offset: 576)
!790 = !DILocation(line: 946, column: 13, scope: !773)
!791 = !DILocalVariable(name: "tv", scope: !773, file: !67, line: 947, type: !792)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !793, line: 30, size: 128, align: 64, elements: !794)
!793 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop")
!794 = !{!795, !796}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !792, file: !793, line: 32, baseType: !55, size: 64, align: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !792, file: !793, line: 33, baseType: !797, size: 64, align: 64, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !56, line: 141, baseType: !57)
!798 = !DILocation(line: 947, column: 18, scope: !773)
!799 = !DILocation(line: 949, column: 7, scope: !800)
!800 = distinct !DILexicalBlock(scope: !773, file: !67, line: 949, column: 7)
!801 = !DILocation(line: 949, column: 7, scope: !773)
!802 = !DILocation(line: 950, column: 26, scope: !803)
!803 = distinct !DILexicalBlock(scope: !800, file: !67, line: 949, column: 20)
!804 = !DILocation(line: 950, column: 16, scope: !803)
!805 = !DILocation(line: 950, column: 14, scope: !803)
!806 = !DILocation(line: 951, column: 8, scope: !807)
!807 = distinct !DILexicalBlock(scope: !803, file: !67, line: 951, column: 8)
!808 = !DILocation(line: 951, column: 18, scope: !807)
!809 = !DILocation(line: 951, column: 8, scope: !803)
!810 = !DILocation(line: 952, column: 10, scope: !811)
!811 = distinct !DILexicalBlock(scope: !807, file: !67, line: 951, column: 24)
!812 = !DILocation(line: 952, column: 8, scope: !811)
!813 = !DILocation(line: 953, column: 5, scope: !811)
!814 = !DILocation(line: 956, column: 19, scope: !803)
!815 = !DILocation(line: 956, column: 12, scope: !803)
!816 = !DILocation(line: 956, column: 10, scope: !803)
!817 = !DILocation(line: 957, column: 8, scope: !818)
!818 = distinct !DILexicalBlock(scope: !803, file: !67, line: 957, column: 8)
!819 = !DILocation(line: 957, column: 14, scope: !818)
!820 = !DILocation(line: 957, column: 8, scope: !803)
!821 = !DILocation(line: 958, column: 8, scope: !822)
!822 = distinct !DILexicalBlock(scope: !818, file: !67, line: 957, column: 22)
!823 = !DILocation(line: 959, column: 5, scope: !822)
!824 = !DILocation(line: 962, column: 19, scope: !803)
!825 = !DILocation(line: 962, column: 32, scope: !803)
!826 = !DILocation(line: 962, column: 39, scope: !803)
!827 = !DILocation(line: 962, column: 9, scope: !803)
!828 = !DILocation(line: 962, column: 7, scope: !803)
!829 = !DILocation(line: 963, column: 8, scope: !830)
!830 = distinct !DILexicalBlock(scope: !803, file: !67, line: 963, column: 8)
!831 = !DILocation(line: 963, column: 11, scope: !830)
!832 = !DILocation(line: 963, column: 8, scope: !803)
!833 = !DILocation(line: 964, column: 12, scope: !834)
!834 = distinct !DILexicalBlock(scope: !830, file: !67, line: 963, column: 17)
!835 = !DILocation(line: 965, column: 22, scope: !834)
!836 = !DILocation(line: 964, column: 5, scope: !834)
!837 = !DILocation(line: 966, column: 10, scope: !834)
!838 = !DILocation(line: 966, column: 5, scope: !834)
!839 = !DILocation(line: 967, column: 5, scope: !834)
!840 = !DILocation(line: 970, column: 11, scope: !803)
!841 = !DILocation(line: 970, column: 19, scope: !803)
!842 = !DILocation(line: 970, column: 26, scope: !803)
!843 = !DILocation(line: 970, column: 4, scope: !803)
!844 = !DILocation(line: 971, column: 3, scope: !803)
!845 = !DILocation(line: 974, column: 7, scope: !773)
!846 = !DILocation(line: 974, column: 6, scope: !773)
!847 = !DILocation(line: 976, column: 14, scope: !848)
!848 = distinct !DILexicalBlock(scope: !773, file: !67, line: 976, column: 6)
!849 = !DILocation(line: 976, column: 11, scope: !848)
!850 = !DILocation(line: 976, column: 6, scope: !773)
!851 = !DILocation(line: 977, column: 4, scope: !848)
!852 = !DILocation(line: 979, column: 3, scope: !773)
!853 = !DILocation(line: 981, column: 3, scope: !773)
!854 = !DILocation(line: 982, column: 18, scope: !773)
!855 = !DILocation(line: 982, column: 8, scope: !773)
!856 = !DILocation(line: 982, column: 13, scope: !773)
!857 = !DILocation(line: 983, column: 8, scope: !773)
!858 = !DILocation(line: 983, column: 11, scope: !773)
!859 = !DILocation(line: 985, column: 7, scope: !860)
!860 = distinct !DILexicalBlock(scope: !773, file: !67, line: 985, column: 7)
!861 = !DILocation(line: 985, column: 13, scope: !860)
!862 = !DILocation(line: 985, column: 7, scope: !773)
!863 = !DILocation(line: 986, column: 17, scope: !864)
!864 = distinct !DILexicalBlock(scope: !860, file: !67, line: 985, column: 21)
!865 = !DILocation(line: 986, column: 9, scope: !864)
!866 = !DILocation(line: 986, column: 15, scope: !864)
!867 = !DILocation(line: 987, column: 21, scope: !864)
!868 = !DILocation(line: 987, column: 9, scope: !864)
!869 = !DILocation(line: 987, column: 19, scope: !864)
!870 = !DILocation(line: 988, column: 21, scope: !864)
!871 = !DILocation(line: 988, column: 9, scope: !864)
!872 = !DILocation(line: 988, column: 19, scope: !864)
!873 = !DILocation(line: 989, column: 3, scope: !864)
!874 = !DILocation(line: 990, column: 7, scope: !875)
!875 = distinct !DILexicalBlock(scope: !773, file: !67, line: 990, column: 7)
!876 = !DILocation(line: 990, column: 15, scope: !875)
!877 = !DILocation(line: 990, column: 7, scope: !773)
!878 = !DILocation(line: 991, column: 28, scope: !879)
!879 = distinct !DILexicalBlock(scope: !875, file: !67, line: 990, column: 23)
!880 = !DILocation(line: 991, column: 9, scope: !879)
!881 = !DILocation(line: 991, column: 17, scope: !879)
!882 = !DILocation(line: 992, column: 27, scope: !879)
!883 = !DILocation(line: 992, column: 20, scope: !879)
!884 = !DILocation(line: 992, column: 36, scope: !879)
!885 = !DILocation(line: 992, column: 9, scope: !879)
!886 = !DILocation(line: 992, column: 18, scope: !879)
!887 = !DILocation(line: 993, column: 3, scope: !879)
!888 = !DILocation(line: 994, column: 7, scope: !889)
!889 = distinct !DILexicalBlock(scope: !773, file: !67, line: 994, column: 7)
!890 = !DILocation(line: 994, column: 12, scope: !889)
!891 = !DILocation(line: 994, column: 7, scope: !773)
!892 = !DILocation(line: 995, column: 25, scope: !893)
!893 = distinct !DILexicalBlock(scope: !889, file: !67, line: 994, column: 20)
!894 = !DILocation(line: 995, column: 9, scope: !893)
!895 = !DILocation(line: 995, column: 14, scope: !893)
!896 = !DILocation(line: 996, column: 27, scope: !893)
!897 = !DILocation(line: 996, column: 20, scope: !893)
!898 = !DILocation(line: 996, column: 33, scope: !893)
!899 = !DILocation(line: 996, column: 9, scope: !893)
!900 = !DILocation(line: 996, column: 18, scope: !893)
!901 = !DILocation(line: 997, column: 3, scope: !893)
!902 = !DILocation(line: 999, column: 8, scope: !773)
!903 = !DILocation(line: 999, column: 6, scope: !773)
!904 = !DILocation(line: 1000, column: 14, scope: !905)
!905 = distinct !DILexicalBlock(scope: !773, file: !67, line: 1000, column: 6)
!906 = !DILocation(line: 1000, column: 11, scope: !905)
!907 = !DILocation(line: 1000, column: 6, scope: !773)
!908 = !DILocation(line: 1001, column: 11, scope: !909)
!909 = distinct !DILexicalBlock(scope: !905, file: !67, line: 1000, column: 18)
!910 = !DILocation(line: 1002, column: 5, scope: !909)
!911 = !DILocation(line: 1001, column: 4, scope: !909)
!912 = !DILocation(line: 1003, column: 4, scope: !909)
!913 = !DILocation(line: 1004, column: 4, scope: !909)
!914 = !DILocation(line: 1006, column: 7, scope: !915)
!915 = distinct !DILexicalBlock(scope: !773, file: !67, line: 1006, column: 7)
!916 = !DILocation(line: 1006, column: 7, scope: !773)
!917 = !DILocation(line: 1007, column: 11, scope: !918)
!918 = distinct !DILexicalBlock(scope: !915, file: !67, line: 1006, column: 16)
!919 = !DILocation(line: 1009, column: 36, scope: !918)
!920 = !DILocation(line: 1009, column: 16, scope: !918)
!921 = !DILocation(line: 1010, column: 16, scope: !918)
!922 = !DILocation(line: 1010, column: 5, scope: !918)
!923 = !DILocation(line: 1007, column: 4, scope: !918)
!924 = !DILocation(line: 1011, column: 11, scope: !918)
!925 = !DILocation(line: 1013, column: 30, scope: !918)
!926 = !DILocation(line: 1013, column: 16, scope: !918)
!927 = !DILocation(line: 1014, column: 16, scope: !918)
!928 = !DILocation(line: 1014, column: 5, scope: !918)
!929 = !DILocation(line: 1011, column: 4, scope: !918)
!930 = !DILocation(line: 1015, column: 3, scope: !918)
!931 = !DILocation(line: 1018, column: 12, scope: !773)
!932 = !DILocation(line: 1018, column: 18, scope: !773)
!933 = !DILocation(line: 1018, column: 31, scope: !773)
!934 = !DILocation(line: 1018, column: 35, scope: !773)
!935 = !DILocation(line: 1018, column: 8, scope: !773)
!936 = !DILocation(line: 1018, column: 6, scope: !773)
!937 = !DILocation(line: 1019, column: 14, scope: !938)
!938 = distinct !DILexicalBlock(scope: !773, file: !67, line: 1019, column: 6)
!939 = !DILocation(line: 1019, column: 11, scope: !938)
!940 = !DILocation(line: 1019, column: 6, scope: !773)
!941 = !DILocation(line: 1020, column: 9, scope: !938)
!942 = !DILocation(line: 1020, column: 4, scope: !938)
!943 = !DILocation(line: 1022, column: 7, scope: !944)
!944 = distinct !DILexicalBlock(scope: !773, file: !67, line: 1022, column: 7)
!945 = !DILocation(line: 1022, column: 13, scope: !944)
!946 = !DILocation(line: 1022, column: 7, scope: !773)
!947 = !DILocation(line: 1023, column: 9, scope: !944)
!948 = !DILocation(line: 1023, column: 4, scope: !944)
!949 = !DILocation(line: 1025, column: 3, scope: !773)
!950 = !DILocation(line: 1026, column: 2, scope: !773)
!951 = !DILocation(line: 1028, column: 8, scope: !952)
!952 = distinct !DILexicalBlock(scope: !770, file: !67, line: 1026, column: 9)
!953 = !DILocation(line: 1028, column: 17, scope: !952)
!954 = !DILocation(line: 1029, column: 8, scope: !952)
!955 = !DILocation(line: 1029, column: 16, scope: !952)
!956 = !DILocation(line: 1030, column: 7, scope: !952)
!957 = !DILocation(line: 1030, column: 6, scope: !952)
!958 = !DILocation(line: 1031, column: 14, scope: !959)
!959 = distinct !DILexicalBlock(scope: !952, file: !67, line: 1031, column: 6)
!960 = !DILocation(line: 1031, column: 11, scope: !959)
!961 = !DILocation(line: 1031, column: 6, scope: !952)
!962 = !DILocation(line: 1032, column: 4, scope: !959)
!963 = !DILocation(line: 1034, column: 3, scope: !952)
!964 = distinct !{!964, !963}
!965 = !DILocation(line: 1035, column: 13, scope: !966)
!966 = distinct !DILexicalBlock(scope: !952, file: !67, line: 1034, column: 6)
!967 = !DILocation(line: 1035, column: 19, scope: !966)
!968 = !DILocation(line: 1035, column: 32, scope: !966)
!969 = !DILocation(line: 1035, column: 36, scope: !966)
!970 = !DILocation(line: 1035, column: 9, scope: !966)
!971 = !DILocation(line: 1035, column: 7, scope: !966)
!972 = !DILocation(line: 1036, column: 23, scope: !973)
!973 = distinct !DILexicalBlock(scope: !966, file: !67, line: 1036, column: 7)
!974 = !DILocation(line: 1036, column: 20, scope: !973)
!975 = !DILocation(line: 1036, column: 7, scope: !966)
!976 = !DILocation(line: 1037, column: 10, scope: !977)
!977 = distinct !DILexicalBlock(scope: !973, file: !67, line: 1036, column: 27)
!978 = !DILocation(line: 1037, column: 5, scope: !977)
!979 = !DILocation(line: 1038, column: 5, scope: !977)
!980 = !DILocation(line: 1040, column: 3, scope: !966)
!981 = !DILocation(line: 1040, column: 18, scope: !982)
!982 = !DILexicalBlockFile(scope: !952, file: !67, discriminator: 1)
!983 = !DILocation(line: 1040, column: 13, scope: !982)
!984 = !DILocation(line: 1040, column: 24, scope: !982)
!985 = !DILocation(line: 1040, column: 35, scope: !986)
!986 = !DILexicalBlockFile(scope: !952, file: !67, discriminator: 2)
!987 = !DILocation(line: 1040, column: 28, scope: !986)
!988 = !DILocation(line: 1040, column: 27, scope: !986)
!989 = !DILocation(line: 1040, column: 3, scope: !990)
!990 = !DILexicalBlockFile(scope: !966, file: !67, discriminator: 3)
!991 = !DILocation(line: 1042, column: 3, scope: !952)
!992 = !DILocation(line: 945, column: 6, scope: !993)
!993 = !DILexicalBlockFile(scope: !770, file: !67, discriminator: 1)
!994 = !DILocation(line: 1048, column: 7, scope: !995)
!995 = distinct !DILexicalBlock(scope: !66, file: !67, line: 1048, column: 6)
!996 = !DILocation(line: 1048, column: 10, scope: !995)
!997 = !DILocation(line: 1048, column: 26, scope: !995)
!998 = !DILocation(line: 1048, column: 30, scope: !999)
!999 = !DILexicalBlockFile(scope: !995, file: !67, discriminator: 1)
!1000 = !DILocation(line: 1048, column: 38, scope: !999)
!1001 = !DILocation(line: 1048, column: 35, scope: !999)
!1002 = !DILocation(line: 1048, column: 45, scope: !999)
!1003 = !DILocation(line: 1048, column: 49, scope: !1004)
!1004 = !DILexicalBlockFile(scope: !995, file: !67, discriminator: 2)
!1005 = !DILocation(line: 1048, column: 57, scope: !1004)
!1006 = !DILocation(line: 1048, column: 54, scope: !1004)
!1007 = !DILocation(line: 1048, column: 6, scope: !1004)
!1008 = !DILocation(line: 1049, column: 15, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !995, file: !67, line: 1048, column: 66)
!1010 = !DILocation(line: 1049, column: 8, scope: !1009)
!1011 = !DILocation(line: 1049, column: 6, scope: !1009)
!1012 = !DILocation(line: 1050, column: 7, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1009, file: !67, line: 1050, column: 7)
!1014 = !DILocation(line: 1050, column: 10, scope: !1013)
!1015 = !DILocation(line: 1050, column: 7, scope: !1009)
!1016 = !DILocation(line: 1051, column: 4, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1013, file: !67, line: 1050, column: 16)
!1018 = distinct !{!1018, !1016}
!1019 = !DILocation(line: 1051, column: 3, scope: !1020)
!1020 = !DILexicalBlockFile(scope: !1021, file: !67, discriminator: 1)
!1021 = distinct !DILexicalBlock(scope: !1017, file: !67, line: 1051, column: 7)
!1022 = !DILocation(line: 1051, column: 5, scope: !1020)
!1023 = !DILocation(line: 1051, column: 4, scope: !1020)
!1024 = !DILocation(line: 1051, column: 22, scope: !1025)
!1025 = !DILexicalBlockFile(scope: !1020, file: !67, discriminator: 2)
!1026 = !DILocation(line: 1051, column: 9, scope: !1027)
!1027 = !DILexicalBlockFile(scope: !1020, file: !67, discriminator: 3)
!1028 = !DILocation(line: 1051, column: 7, scope: !1020)
!1029 = !DILocation(line: 1052, column: 14, scope: !1017)
!1030 = !DILocation(line: 1052, column: 22, scope: !1017)
!1031 = !DILocation(line: 1052, column: 28, scope: !1017)
!1032 = !DILocation(line: 1052, column: 4, scope: !1017)
!1033 = !DILocation(line: 1053, column: 4, scope: !1017)
!1034 = !DILocation(line: 1055, column: 2, scope: !1009)
!1035 = !DILocation(line: 1057, column: 9, scope: !66)
!1036 = !DILocation(line: 1057, column: 2, scope: !66)
!1037 = !DILocation(line: 1058, column: 9, scope: !66)
!1038 = !DILocation(line: 1058, column: 2, scope: !66)
!1039 = !DILocation(line: 1059, column: 7, scope: !66)
!1040 = !DILocation(line: 1059, column: 2, scope: !66)
!1041 = !DILocation(line: 1060, column: 7, scope: !66)
!1042 = !DILocation(line: 1060, column: 2, scope: !66)
!1043 = !DILocation(line: 1062, column: 7, scope: !66)
!1044 = !DILocation(line: 1062, column: 2, scope: !66)
!1045 = !DILocation(line: 1063, column: 1, scope: !66)
!1046 = distinct !DISubprogram(name: "str_to_num", scope: !67, file: !67, line: 293, type: !1047, isLocal: true, isDefinition: true, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!1049, !33}
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !60, line: 55, baseType: !44)
!1050 = !DILocalVariable(name: "str", arg: 1, scope: !1046, file: !67, line: 293, type: !33)
!1051 = !DILocation(line: 293, column: 41, scope: !1046)
!1052 = !DILocalVariable(name: "s", scope: !1046, file: !67, line: 295, type: !33)
!1053 = !DILocation(line: 295, column: 8, scope: !1046)
!1054 = !DILocation(line: 295, column: 12, scope: !1046)
!1055 = !DILocalVariable(name: "num", scope: !1046, file: !67, line: 296, type: !1049)
!1056 = !DILocation(line: 296, column: 11, scope: !1046)
!1057 = !DILocation(line: 296, column: 26, scope: !1046)
!1058 = !DILocation(line: 296, column: 17, scope: !1046)
!1059 = !DILocation(line: 298, column: 7, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1046, file: !67, line: 298, column: 6)
!1061 = !DILocation(line: 298, column: 6, scope: !1060)
!1062 = !DILocation(line: 298, column: 9, scope: !1060)
!1063 = !DILocation(line: 298, column: 6, scope: !1046)
!1064 = !DILocation(line: 299, column: 10, scope: !1060)
!1065 = !DILocation(line: 299, column: 3, scope: !1060)
!1066 = !DILocation(line: 301, column: 13, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1046, file: !67, line: 301, column: 6)
!1068 = !DILocation(line: 301, column: 6, scope: !1067)
!1069 = !DILocation(line: 301, column: 23, scope: !1067)
!1070 = !DILocation(line: 301, column: 6, scope: !1046)
!1071 = !DILocation(line: 302, column: 7, scope: !1067)
!1072 = !DILocation(line: 302, column: 3, scope: !1067)
!1073 = !DILocation(line: 303, column: 18, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1067, file: !67, line: 303, column: 11)
!1075 = !DILocation(line: 303, column: 11, scope: !1074)
!1076 = !DILocation(line: 303, column: 28, scope: !1074)
!1077 = !DILocation(line: 303, column: 11, scope: !1067)
!1078 = !DILocation(line: 304, column: 7, scope: !1074)
!1079 = !DILocation(line: 304, column: 3, scope: !1074)
!1080 = !DILocation(line: 305, column: 18, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1074, file: !67, line: 305, column: 11)
!1082 = !DILocation(line: 305, column: 11, scope: !1081)
!1083 = !DILocation(line: 305, column: 28, scope: !1081)
!1084 = !DILocation(line: 305, column: 11, scope: !1074)
!1085 = !DILocation(line: 306, column: 7, scope: !1081)
!1086 = !DILocation(line: 306, column: 3, scope: !1081)
!1087 = !DILocation(line: 308, column: 9, scope: !1046)
!1088 = !DILocation(line: 308, column: 2, scope: !1046)
!1089 = !DILocation(line: 309, column: 1, scope: !1046)
!1090 = distinct !DISubprogram(name: "userinfo", scope: !67, file: !67, line: 311, type: !1091, isLocal: true, isDefinition: true, scopeLine: 312, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{null, !123, !33, !76}
!1093 = !DILocalVariable(name: "fp", arg: 1, scope: !1090, file: !67, line: 311, type: !123)
!1094 = !DILocation(line: 311, column: 28, scope: !1090)
!1095 = !DILocalVariable(name: "prog", arg: 2, scope: !1090, file: !67, line: 311, type: !33)
!1096 = !DILocation(line: 311, column: 38, scope: !1090)
!1097 = !DILocalVariable(name: "version", arg: 3, scope: !1090, file: !67, line: 311, type: !76)
!1098 = !DILocation(line: 311, column: 56, scope: !1090)
!1099 = !DILocation(line: 313, column: 10, scope: !1090)
!1100 = !DILocation(line: 314, column: 11, scope: !1090)
!1101 = !DILocation(line: 314, column: 2, scope: !1090)
!1102 = !DILocation(line: 314, column: 18, scope: !1090)
!1103 = !DILocation(line: 313, column: 2, scope: !1090)
!1104 = !DILocation(line: 315, column: 1, scope: !1090)
!1105 = distinct !DISubprogram(name: "usage", scope: !67, file: !67, line: 335, type: !1106, isLocal: true, isDefinition: true, scopeLine: 336, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{null, !123, !33, !35, !32}
!1108 = !DILocalVariable(name: "fp", arg: 1, scope: !1105, file: !67, line: 335, type: !123)
!1109 = !DILocation(line: 335, column: 25, scope: !1105)
!1110 = !DILocalVariable(name: "prog", arg: 2, scope: !1105, file: !67, line: 335, type: !33)
!1111 = !DILocation(line: 335, column: 35, scope: !1105)
!1112 = !DILocalVariable(name: "argc", arg: 3, scope: !1105, file: !67, line: 335, type: !35)
!1113 = !DILocation(line: 335, column: 45, scope: !1105)
!1114 = !DILocalVariable(name: "argv", arg: 4, scope: !1105, file: !67, line: 335, type: !32)
!1115 = !DILocation(line: 335, column: 57, scope: !1105)
!1116 = !DILocation(line: 337, column: 10, scope: !1105)
!1117 = !DILocation(line: 373, column: 9, scope: !1105)
!1118 = !DILocation(line: 373, column: 15, scope: !1105)
!1119 = !DILocation(line: 373, column: 22, scope: !1105)
!1120 = !DILocation(line: 373, column: 29, scope: !1105)
!1121 = !DILocation(line: 373, column: 36, scope: !1105)
!1122 = !DILocation(line: 337, column: 2, scope: !1105)
!1123 = !DILocation(line: 375, column: 16, scope: !1105)
!1124 = !DILocation(line: 375, column: 2, scope: !1105)
!1125 = !DILocation(line: 376, column: 13, scope: !1105)
!1126 = !DILocation(line: 376, column: 17, scope: !1105)
!1127 = !DILocation(line: 376, column: 23, scope: !1105)
!1128 = !DILocation(line: 376, column: 2, scope: !1105)
!1129 = !DILocation(line: 377, column: 1, scope: !1105)
!1130 = distinct !DISubprogram(name: "pin_to_cpu", scope: !67, file: !67, line: 110, type: !1131, isLocal: true, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!35, !35}
!1133 = !DILocalVariable(name: "run_cpu", arg: 1, scope: !1130, file: !67, line: 110, type: !35)
!1134 = !DILocation(line: 110, column: 27, scope: !1130)
!1135 = !DILocalVariable(name: "cpusetp", scope: !1130, file: !67, line: 112, type: !1136)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64, align: 64)
!1137 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpu_set_t", file: !43, line: 128, baseType: !1138)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !43, line: 125, size: 1024, align: 64, elements: !1139)
!1139 = !{!1140}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "__bits", scope: !1138, file: !43, line: 127, baseType: !1141, size: 1024, align: 64)
!1141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 1024, align: 64, elements: !1142)
!1142 = !{!1143}
!1143 = !DISubrange(count: 16)
!1144 = !DILocation(line: 112, column: 13, scope: !1130)
!1145 = !DILocalVariable(name: "size", scope: !1130, file: !67, line: 113, type: !62)
!1146 = !DILocation(line: 113, column: 9, scope: !1130)
!1147 = !DILocalVariable(name: "num_cpus", scope: !1130, file: !67, line: 114, type: !35)
!1148 = !DILocation(line: 114, column: 6, scope: !1130)
!1149 = !DILocation(line: 116, column: 11, scope: !1130)
!1150 = !DILocation(line: 117, column: 11, scope: !1130)
!1151 = !DILocation(line: 117, column: 10, scope: !1130)
!1152 = !DILocation(line: 118, column: 6, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1130, file: !67, line: 118, column: 6)
!1154 = !DILocation(line: 118, column: 14, scope: !1153)
!1155 = !DILocation(line: 118, column: 6, scope: !1130)
!1156 = !DILocation(line: 119, column: 10, scope: !1153)
!1157 = !DILocation(line: 119, column: 3, scope: !1153)
!1158 = !DILocation(line: 121, column: 8, scope: !1130)
!1159 = !DILocation(line: 121, column: 11, scope: !1130)
!1160 = !DILocation(line: 121, column: 10, scope: !1130)
!1161 = !DILocation(line: 121, column: 38, scope: !1130)
!1162 = !DILocation(line: 121, column: 43, scope: !1130)
!1163 = !DILocation(line: 121, column: 72, scope: !1130)
!1164 = !DILocation(line: 121, column: 7, scope: !1130)
!1165 = !DILocation(line: 123, column: 1, scope: !1130)
!1166 = distinct !{!1166, !1165}
!1167 = !DILocation(line: 123, column: 1, scope: !1168)
!1168 = !DILexicalBlockFile(scope: !1130, file: !67, discriminator: 1)
!1169 = !DILocation(line: 123, column: 4, scope: !1168)
!1170 = !DILocalVariable(name: "__cpu", scope: !1171, file: !67, line: 124, type: !62)
!1171 = distinct !DILexicalBlock(scope: !1130, file: !67, line: 124, column: 17)
!1172 = !DILocation(line: 124, column: 26, scope: !1171)
!1173 = !DILocation(line: 124, column: 1, scope: !1171)
!1174 = !DILocation(line: 124, column: 34, scope: !1171)
!1175 = !DILocation(line: 124, column: 4, scope: !1171)
!1176 = !DILocation(line: 124, column: 10, scope: !1171)
!1177 = !DILocation(line: 124, column: 14, scope: !1171)
!1178 = !DILocation(line: 124, column: 76, scope: !1179)
!1179 = !DILexicalBlockFile(scope: !1171, file: !67, discriminator: 1)
!1180 = !DILocation(line: 124, column: 83, scope: !1179)
!1181 = !DILocation(line: 124, column: 71, scope: !1179)
!1182 = !DILocation(line: 124, column: 15, scope: !1179)
!1183 = !DILocation(line: 124, column: 22, scope: !1179)
!1184 = !DILocation(line: 124, column: 1, scope: !1179)
!1185 = !DILocation(line: 124, column: 4, scope: !1179)
!1186 = !DILocation(line: 124, column: 6, scope: !1179)
!1187 = !DILocation(line: 124, column: 52, scope: !1179)
!1188 = !DILocation(line: 124, column: 4, scope: !1189)
!1189 = !DILexicalBlockFile(scope: !1171, file: !67, discriminator: 2)
!1190 = !DILocation(line: 124, column: 4, scope: !1191)
!1191 = !DILexicalBlockFile(scope: !1171, file: !67, discriminator: 3)
!1192 = !DILocation(line: 124, column: 19, scope: !1191)
!1193 = !DILocation(line: 124, column: 119, scope: !1191)
!1194 = !DILocation(line: 125, column: 27, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1130, file: !67, line: 125, column: 6)
!1196 = !DILocation(line: 125, column: 33, scope: !1195)
!1197 = !DILocation(line: 125, column: 6, scope: !1195)
!1198 = !DILocation(line: 125, column: 42, scope: !1195)
!1199 = !DILocation(line: 125, column: 6, scope: !1130)
!1200 = !DILocation(line: 126, column: 2, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1195, file: !67, line: 125, column: 47)
!1202 = !DILocation(line: 127, column: 10, scope: !1201)
!1203 = !DILocation(line: 127, column: 3, scope: !1201)
!1204 = !DILocation(line: 131, column: 1, scope: !1130)
!1205 = !DILocation(line: 132, column: 9, scope: !1130)
!1206 = !DILocation(line: 132, column: 2, scope: !1130)
!1207 = !DILocation(line: 133, column: 1, scope: !1130)
!1208 = distinct !DISubprogram(name: "print_args", scope: !67, file: !67, line: 317, type: !1209, isLocal: true, isDefinition: true, scopeLine: 318, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{null, !123, !35, !32}
!1211 = !DILocalVariable(name: "fp", arg: 1, scope: !1208, file: !67, line: 317, type: !123)
!1212 = !DILocation(line: 317, column: 30, scope: !1208)
!1213 = !DILocalVariable(name: "argc", arg: 2, scope: !1208, file: !67, line: 317, type: !35)
!1214 = !DILocation(line: 317, column: 38, scope: !1208)
!1215 = !DILocalVariable(name: "argv", arg: 3, scope: !1208, file: !67, line: 317, type: !32)
!1216 = !DILocation(line: 317, column: 51, scope: !1208)
!1217 = !DILocalVariable(name: "i", scope: !1208, file: !67, line: 319, type: !35)
!1218 = !DILocation(line: 319, column: 6, scope: !1208)
!1219 = !DILocation(line: 321, column: 10, scope: !1208)
!1220 = !DILocation(line: 321, column: 2, scope: !1208)
!1221 = !DILocation(line: 322, column: 9, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1208, file: !67, line: 322, column: 2)
!1223 = !DILocation(line: 322, column: 7, scope: !1222)
!1224 = !DILocation(line: 322, column: 14, scope: !1225)
!1225 = !DILexicalBlockFile(scope: !1226, file: !67, discriminator: 1)
!1226 = distinct !DILexicalBlock(scope: !1222, file: !67, line: 322, column: 2)
!1227 = !DILocation(line: 322, column: 18, scope: !1225)
!1228 = !DILocation(line: 322, column: 16, scope: !1225)
!1229 = !DILocation(line: 322, column: 2, scope: !1225)
!1230 = !DILocation(line: 323, column: 11, scope: !1226)
!1231 = !DILocation(line: 323, column: 39, scope: !1226)
!1232 = !DILocation(line: 323, column: 47, scope: !1226)
!1233 = !DILocation(line: 323, column: 42, scope: !1226)
!1234 = !DILocation(line: 323, column: 3, scope: !1226)
!1235 = !DILocation(line: 322, column: 25, scope: !1236)
!1236 = !DILexicalBlockFile(scope: !1226, file: !67, discriminator: 2)
!1237 = !DILocation(line: 322, column: 2, scope: !1236)
!1238 = distinct !{!1238, !1239}
!1239 = !DILocation(line: 322, column: 2, scope: !1208)
!1240 = !DILocation(line: 324, column: 10, scope: !1208)
!1241 = !DILocation(line: 324, column: 2, scope: !1208)
!1242 = !DILocation(line: 325, column: 1, scope: !1208)
!1243 = distinct !DISubprogram(name: "strip_ending", scope: !67, file: !67, line: 617, type: !1244, isLocal: true, isDefinition: true, scopeLine: 619, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!35, !33, !76, !62, !76}
!1246 = !DILocalVariable(name: "oname", arg: 1, scope: !1243, file: !67, line: 617, type: !33)
!1247 = !DILocation(line: 617, column: 31, scope: !1243)
!1248 = !DILocalVariable(name: "iname", arg: 2, scope: !1243, file: !67, line: 617, type: !76)
!1249 = !DILocation(line: 617, column: 50, scope: !1243)
!1250 = !DILocalVariable(name: "n", arg: 3, scope: !1243, file: !67, line: 617, type: !62)
!1251 = !DILocation(line: 617, column: 64, scope: !1243)
!1252 = !DILocalVariable(name: "suffix", arg: 4, scope: !1243, file: !67, line: 618, type: !76)
!1253 = !DILocation(line: 618, column: 16, scope: !1243)
!1254 = !DILocalVariable(name: "ending", scope: !1243, file: !67, line: 620, type: !33)
!1255 = !DILocation(line: 620, column: 8, scope: !1243)
!1256 = !DILocation(line: 622, column: 11, scope: !1243)
!1257 = !DILocation(line: 622, column: 18, scope: !1243)
!1258 = !DILocation(line: 622, column: 27, scope: !1243)
!1259 = !DILocation(line: 622, column: 2, scope: !1243)
!1260 = !DILocation(line: 624, column: 18, scope: !1243)
!1261 = !DILocation(line: 624, column: 25, scope: !1243)
!1262 = !DILocation(line: 624, column: 11, scope: !1243)
!1263 = !DILocation(line: 624, column: 9, scope: !1243)
!1264 = !DILocation(line: 625, column: 6, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1243, file: !67, line: 625, column: 6)
!1266 = !DILocation(line: 625, column: 13, scope: !1265)
!1267 = !DILocation(line: 625, column: 6, scope: !1243)
!1268 = !DILocation(line: 626, column: 3, scope: !1265)
!1269 = !DILocation(line: 628, column: 8, scope: !1243)
!1270 = !DILocation(line: 629, column: 3, scope: !1243)
!1271 = !DILocation(line: 629, column: 10, scope: !1243)
!1272 = !DILocation(line: 630, column: 2, scope: !1243)
!1273 = !DILocation(line: 631, column: 1, scope: !1243)
!1274 = distinct !DISubprogram(name: "do_list_contents", scope: !67, file: !67, line: 505, type: !1275, isLocal: true, isDefinition: true, scopeLine: 506, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!35, !123, !33, !35}
!1277 = !DILocalVariable(name: "fp", arg: 1, scope: !1274, file: !67, line: 505, type: !123)
!1278 = !DILocation(line: 505, column: 35, scope: !1274)
!1279 = !DILocalVariable(name: "out_f", arg: 2, scope: !1274, file: !67, line: 505, type: !33)
!1280 = !DILocation(line: 505, column: 45, scope: !1274)
!1281 = !DILocalVariable(name: "list_contents", arg: 3, scope: !1274, file: !67, line: 505, type: !35)
!1282 = !DILocation(line: 505, column: 56, scope: !1274)
!1283 = !DILocalVariable(name: "rc", scope: !1274, file: !67, line: 507, type: !35)
!1284 = !DILocation(line: 507, column: 6, scope: !1274)
!1285 = !DILocalVariable(name: "st", scope: !1274, file: !67, line: 508, type: !235)
!1286 = !DILocation(line: 508, column: 14, scope: !1274)
!1287 = !DILocalVariable(name: "d", scope: !1274, file: !67, line: 509, type: !1288)
!1288 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !60, line: 51, baseType: !48)
!1289 = !DILocation(line: 509, column: 11, scope: !1274)
!1290 = !DILocalVariable(name: "crc32", scope: !1274, file: !67, line: 509, type: !1288)
!1291 = !DILocation(line: 509, column: 14, scope: !1274)
!1292 = !DILocalVariable(name: "size", scope: !1274, file: !67, line: 509, type: !1288)
!1293 = !DILocation(line: 509, column: 21, scope: !1274)
!1294 = !DILocalVariable(name: "compressed_size", scope: !1274, file: !67, line: 509, type: !1288)
!1295 = !DILocation(line: 509, column: 27, scope: !1274)
!1296 = !DILocalVariable(name: "ratio", scope: !1274, file: !67, line: 510, type: !51)
!1297 = !DILocation(line: 510, column: 8, scope: !1274)
!1298 = !DILocalVariable(name: "strm", scope: !1274, file: !67, line: 511, type: !192)
!1299 = !DILocation(line: 511, column: 11, scope: !1274)
!1300 = !DILocalVariable(name: "in", scope: !1274, file: !67, line: 512, type: !1301)
!1301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 32768, align: 8, elements: !119)
!1302 = !DILocation(line: 512, column: 10, scope: !1274)
!1303 = !DILocalVariable(name: "out", scope: !1274, file: !67, line: 513, type: !1301)
!1304 = !DILocation(line: 513, column: 10, scope: !1274)
!1305 = !DILocalVariable(name: "head", scope: !1274, file: !67, line: 514, type: !774)
!1306 = !DILocation(line: 514, column: 12, scope: !1274)
!1307 = !DILocalVariable(name: "extra", scope: !1274, file: !67, line: 515, type: !1308)
!1308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 524288, align: 8, elements: !1309)
!1309 = !{!1310}
!1310 = !DISubrange(count: 65536)
!1311 = !DILocation(line: 515, column: 10, scope: !1274)
!1312 = !DILocalVariable(name: "comment", scope: !1274, file: !67, line: 516, type: !1313)
!1313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 8192, align: 8, elements: !1314)
!1314 = !{!1315}
!1315 = !DISubrange(count: 1024)
!1316 = !DILocation(line: 516, column: 10, scope: !1274)
!1317 = !DILocalVariable(name: "name", scope: !1274, file: !67, line: 517, type: !1313)
!1318 = !DILocation(line: 517, column: 10, scope: !1274)
!1319 = !DILocalVariable(name: "window_bits", scope: !1274, file: !67, line: 518, type: !35)
!1320 = !DILocation(line: 518, column: 6, scope: !1274)
!1321 = !DILocalVariable(name: "mon", scope: !1274, file: !67, line: 519, type: !1322)
!1322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 768, align: 64, elements: !1323)
!1323 = !{!1324}
!1324 = !DISubrange(count: 12)
!1325 = !DILocation(line: 519, column: 14, scope: !1274)
!1326 = !DILocation(line: 522, column: 20, scope: !1274)
!1327 = !DILocation(line: 522, column: 13, scope: !1274)
!1328 = !DILocation(line: 522, column: 7, scope: !1329)
!1329 = !DILexicalBlockFile(scope: !1274, file: !67, discriminator: 1)
!1330 = !DILocation(line: 522, column: 5, scope: !1274)
!1331 = !DILocation(line: 523, column: 6, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1274, file: !67, line: 523, column: 6)
!1333 = !DILocation(line: 523, column: 9, scope: !1332)
!1334 = !DILocation(line: 523, column: 6, scope: !1274)
!1335 = !DILocation(line: 524, column: 10, scope: !1332)
!1336 = !DILocation(line: 524, column: 3, scope: !1332)
!1337 = !DILocation(line: 526, column: 2, scope: !1274)
!1338 = !DILocation(line: 527, column: 7, scope: !1274)
!1339 = !DILocation(line: 527, column: 16, scope: !1274)
!1340 = !DILocation(line: 528, column: 7, scope: !1274)
!1341 = !DILocation(line: 528, column: 15, scope: !1274)
!1342 = !DILocation(line: 529, column: 6, scope: !1274)
!1343 = !DILocation(line: 529, column: 5, scope: !1274)
!1344 = !DILocation(line: 530, column: 13, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1274, file: !67, line: 530, column: 5)
!1346 = !DILocation(line: 530, column: 10, scope: !1345)
!1347 = !DILocation(line: 530, column: 5, scope: !1274)
!1348 = !DILocation(line: 531, column: 10, scope: !1345)
!1349 = !DILocation(line: 531, column: 3, scope: !1345)
!1350 = !DILocation(line: 533, column: 18, scope: !1274)
!1351 = !DILocation(line: 533, column: 7, scope: !1274)
!1352 = !DILocation(line: 533, column: 16, scope: !1274)
!1353 = !DILocation(line: 534, column: 7, scope: !1274)
!1354 = !DILocation(line: 534, column: 17, scope: !1274)
!1355 = !DILocation(line: 535, column: 17, scope: !1274)
!1356 = !DILocation(line: 535, column: 7, scope: !1274)
!1357 = !DILocation(line: 535, column: 15, scope: !1274)
!1358 = !DILocation(line: 536, column: 24, scope: !1274)
!1359 = !DILocation(line: 536, column: 43, scope: !1274)
!1360 = !DILocation(line: 536, column: 18, scope: !1274)
!1361 = !DILocation(line: 536, column: 7, scope: !1274)
!1362 = !DILocation(line: 536, column: 16, scope: !1274)
!1363 = !DILocation(line: 537, column: 13, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1274, file: !67, line: 537, column: 6)
!1365 = !DILocation(line: 537, column: 6, scope: !1364)
!1366 = !DILocation(line: 537, column: 6, scope: !1274)
!1367 = !DILocation(line: 538, column: 3, scope: !1364)
!1368 = !DILocation(line: 540, column: 15, scope: !1274)
!1369 = !DILocation(line: 540, column: 7, scope: !1274)
!1370 = !DILocation(line: 540, column: 13, scope: !1274)
!1371 = !DILocation(line: 541, column: 7, scope: !1274)
!1372 = !DILocation(line: 541, column: 17, scope: !1274)
!1373 = !DILocation(line: 542, column: 7, scope: !1274)
!1374 = !DILocation(line: 542, column: 17, scope: !1274)
!1375 = !DILocation(line: 544, column: 17, scope: !1274)
!1376 = !DILocation(line: 544, column: 7, scope: !1274)
!1377 = !DILocation(line: 544, column: 15, scope: !1274)
!1378 = !DILocation(line: 545, column: 7, scope: !1274)
!1379 = !DILocation(line: 545, column: 16, scope: !1274)
!1380 = !DILocation(line: 547, column: 14, scope: !1274)
!1381 = !DILocation(line: 547, column: 7, scope: !1274)
!1382 = !DILocation(line: 547, column: 12, scope: !1274)
!1383 = !DILocation(line: 548, column: 7, scope: !1274)
!1384 = !DILocation(line: 548, column: 16, scope: !1274)
!1385 = !DILocation(line: 550, column: 7, scope: !1274)
!1386 = !DILocation(line: 550, column: 5, scope: !1274)
!1387 = !DILocation(line: 551, column: 13, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1274, file: !67, line: 551, column: 5)
!1389 = !DILocation(line: 551, column: 10, scope: !1388)
!1390 = !DILocation(line: 551, column: 5, scope: !1274)
!1391 = !DILocation(line: 552, column: 10, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1388, file: !67, line: 551, column: 17)
!1393 = !DILocation(line: 552, column: 57, scope: !1392)
!1394 = !DILocation(line: 552, column: 3, scope: !1392)
!1395 = !DILocation(line: 553, column: 10, scope: !1392)
!1396 = !DILocation(line: 553, column: 3, scope: !1392)
!1397 = !DILocation(line: 556, column: 7, scope: !1274)
!1398 = !DILocation(line: 556, column: 5, scope: !1274)
!1399 = !DILocation(line: 557, column: 13, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1274, file: !67, line: 557, column: 5)
!1401 = !DILocation(line: 557, column: 10, scope: !1400)
!1402 = !DILocation(line: 557, column: 5, scope: !1274)
!1403 = !DILocation(line: 558, column: 10, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1400, file: !67, line: 557, column: 17)
!1405 = !DILocation(line: 558, column: 58, scope: !1404)
!1406 = !DILocation(line: 558, column: 3, scope: !1404)
!1407 = !DILocation(line: 559, column: 10, scope: !1404)
!1408 = !DILocation(line: 559, column: 3, scope: !1404)
!1409 = !DILocation(line: 562, column: 11, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1274, file: !67, line: 562, column: 6)
!1411 = !DILocation(line: 562, column: 16, scope: !1410)
!1412 = !DILocation(line: 562, column: 6, scope: !1274)
!1413 = !DILocation(line: 563, column: 10, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1410, file: !67, line: 562, column: 22)
!1415 = !DILocation(line: 565, column: 9, scope: !1414)
!1416 = !DILocation(line: 565, column: 24, scope: !1414)
!1417 = !DILocation(line: 565, column: 40, scope: !1414)
!1418 = !DILocation(line: 563, column: 3, scope: !1414)
!1419 = !DILocation(line: 566, column: 3, scope: !1414)
!1420 = !DILocation(line: 569, column: 13, scope: !1274)
!1421 = !DILocation(line: 569, column: 20, scope: !1274)
!1422 = !DILocation(line: 569, column: 28, scope: !1274)
!1423 = !DILocation(line: 569, column: 7, scope: !1274)
!1424 = !DILocation(line: 569, column: 5, scope: !1274)
!1425 = !DILocation(line: 570, column: 6, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1274, file: !67, line: 570, column: 6)
!1427 = !DILocation(line: 570, column: 9, scope: !1426)
!1428 = !DILocation(line: 570, column: 6, scope: !1274)
!1429 = !DILocation(line: 571, column: 10, scope: !1426)
!1430 = !DILocation(line: 571, column: 3, scope: !1426)
!1431 = !DILocation(line: 573, column: 13, scope: !1274)
!1432 = !DILocation(line: 573, column: 31, scope: !1274)
!1433 = !DILocation(line: 573, column: 7, scope: !1274)
!1434 = !DILocation(line: 573, column: 5, scope: !1274)
!1435 = !DILocation(line: 574, column: 6, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1274, file: !67, line: 574, column: 6)
!1437 = !DILocation(line: 574, column: 9, scope: !1436)
!1438 = !DILocation(line: 574, column: 6, scope: !1274)
!1439 = !DILocation(line: 575, column: 3, scope: !1436)
!1440 = !DILocation(line: 576, column: 9, scope: !1274)
!1441 = !DILocation(line: 576, column: 8, scope: !1274)
!1442 = !DILocation(line: 578, column: 13, scope: !1274)
!1443 = !DILocation(line: 578, column: 31, scope: !1274)
!1444 = !DILocation(line: 578, column: 7, scope: !1274)
!1445 = !DILocation(line: 578, column: 5, scope: !1274)
!1446 = !DILocation(line: 579, column: 6, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1274, file: !67, line: 579, column: 6)
!1448 = !DILocation(line: 579, column: 9, scope: !1447)
!1449 = !DILocation(line: 579, column: 6, scope: !1274)
!1450 = !DILocation(line: 580, column: 3, scope: !1447)
!1451 = !DILocation(line: 581, column: 8, scope: !1274)
!1452 = !DILocation(line: 581, column: 7, scope: !1274)
!1453 = !DILocation(line: 585, column: 23, scope: !1274)
!1454 = !DILocation(line: 585, column: 38, scope: !1274)
!1455 = !DILocation(line: 585, column: 31, scope: !1274)
!1456 = !DILocation(line: 585, column: 47, scope: !1274)
!1457 = !DILocation(line: 585, column: 20, scope: !1274)
!1458 = !DILocation(line: 585, column: 18, scope: !1274)
!1459 = !DILocation(line: 586, column: 6, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1274, file: !67, line: 586, column: 6)
!1461 = !DILocation(line: 586, column: 6, scope: !1274)
!1462 = !DILocation(line: 587, column: 24, scope: !1460)
!1463 = !DILocation(line: 587, column: 17, scope: !1460)
!1464 = !DILocation(line: 587, column: 40, scope: !1460)
!1465 = !DILocation(line: 587, column: 48, scope: !1460)
!1466 = !DILocation(line: 587, column: 46, scope: !1460)
!1467 = !DILocation(line: 587, column: 15, scope: !1460)
!1468 = !DILocation(line: 587, column: 9, scope: !1460)
!1469 = !DILocation(line: 587, column: 3, scope: !1460)
!1470 = !DILocation(line: 589, column: 7, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1274, file: !67, line: 589, column: 6)
!1472 = !DILocation(line: 589, column: 6, scope: !1274)
!1473 = !DILocation(line: 590, column: 10, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1471, file: !67, line: 589, column: 16)
!1475 = !DILocation(line: 594, column: 18, scope: !1474)
!1476 = !DILocation(line: 594, column: 38, scope: !1474)
!1477 = !DILocation(line: 594, column: 27, scope: !1474)
!1478 = !DILocation(line: 594, column: 44, scope: !1474)
!1479 = !DILocation(line: 595, column: 4, scope: !1474)
!1480 = !DILocation(line: 590, column: 3, scope: !1474)
!1481 = !DILocation(line: 596, column: 2, scope: !1474)
!1482 = !DILocalVariable(name: "t", scope: !1483, file: !67, line: 597, type: !53)
!1483 = distinct !DILexicalBlock(scope: !1471, file: !67, line: 596, column: 9)
!1484 = !DILocation(line: 597, column: 10, scope: !1483)
!1485 = !DILocation(line: 597, column: 14, scope: !1483)
!1486 = !DILocalVariable(name: "tm", scope: !1483, file: !67, line: 598, type: !1487)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64, align: 64)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !54, line: 133, size: 448, align: 64, elements: !1489)
!1489 = !{!1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !1488, file: !54, line: 135, baseType: !35, size: 32, align: 32)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !1488, file: !54, line: 136, baseType: !35, size: 32, align: 32, offset: 32)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !1488, file: !54, line: 137, baseType: !35, size: 32, align: 32, offset: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !1488, file: !54, line: 138, baseType: !35, size: 32, align: 32, offset: 96)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !1488, file: !54, line: 139, baseType: !35, size: 32, align: 32, offset: 128)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !1488, file: !54, line: 140, baseType: !35, size: 32, align: 32, offset: 160)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !1488, file: !54, line: 141, baseType: !35, size: 32, align: 32, offset: 192)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !1488, file: !54, line: 142, baseType: !35, size: 32, align: 32, offset: 224)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !1488, file: !54, line: 143, baseType: !35, size: 32, align: 32, offset: 256)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !1488, file: !54, line: 146, baseType: !57, size: 64, align: 64, offset: 320)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !1488, file: !54, line: 147, baseType: !76, size: 64, align: 64, offset: 384)
!1501 = !DILocation(line: 598, column: 14, scope: !1483)
!1502 = !DILocation(line: 598, column: 19, scope: !1483)
!1503 = !DILocation(line: 601, column: 10, scope: !1483)
!1504 = !DILocation(line: 605, column: 13, scope: !1483)
!1505 = !DILocation(line: 606, column: 8, scope: !1483)
!1506 = !DILocation(line: 606, column: 12, scope: !1483)
!1507 = !DILocation(line: 606, column: 4, scope: !1483)
!1508 = !DILocation(line: 606, column: 21, scope: !1483)
!1509 = !DILocation(line: 606, column: 25, scope: !1483)
!1510 = !DILocation(line: 606, column: 34, scope: !1483)
!1511 = !DILocation(line: 606, column: 38, scope: !1483)
!1512 = !DILocation(line: 606, column: 47, scope: !1483)
!1513 = !DILocation(line: 606, column: 51, scope: !1483)
!1514 = !DILocation(line: 607, column: 18, scope: !1483)
!1515 = !DILocation(line: 607, column: 38, scope: !1483)
!1516 = !DILocation(line: 607, column: 27, scope: !1483)
!1517 = !DILocation(line: 607, column: 44, scope: !1483)
!1518 = !DILocation(line: 608, column: 4, scope: !1483)
!1519 = !DILocation(line: 601, column: 3, scope: !1483)
!1520 = !DILocation(line: 611, column: 6, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1274, file: !67, line: 611, column: 6)
!1522 = !DILocation(line: 611, column: 20, scope: !1521)
!1523 = !DILocation(line: 611, column: 6, scope: !1274)
!1524 = !DILocation(line: 612, column: 27, scope: !1521)
!1525 = !DILocation(line: 612, column: 3, scope: !1521)
!1526 = !DILocation(line: 614, column: 2, scope: !1274)
!1527 = !DILocation(line: 615, column: 1, scope: !1274)
!1528 = distinct !DISubprogram(name: "file_size", scope: !67, file: !67, line: 434, type: !1529, isLocal: true, isDefinition: true, scopeLine: 435, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!1531, !76}
!1531 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !125, line: 102, baseType: !1532)
!1532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !56, line: 172, baseType: !57)
!1533 = !DILocalVariable(name: "fname", arg: 1, scope: !1528, file: !67, line: 434, type: !76)
!1534 = !DILocation(line: 434, column: 31, scope: !1528)
!1535 = !DILocalVariable(name: "rc", scope: !1528, file: !67, line: 436, type: !35)
!1536 = !DILocation(line: 436, column: 6, scope: !1528)
!1537 = !DILocalVariable(name: "s", scope: !1528, file: !67, line: 437, type: !235)
!1538 = !DILocation(line: 437, column: 14, scope: !1528)
!1539 = !DILocation(line: 439, column: 13, scope: !1528)
!1540 = !DILocation(line: 439, column: 7, scope: !1528)
!1541 = !DILocation(line: 439, column: 5, scope: !1528)
!1542 = !DILocation(line: 440, column: 6, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1528, file: !67, line: 440, column: 6)
!1544 = !DILocation(line: 440, column: 9, scope: !1543)
!1545 = !DILocation(line: 440, column: 6, scope: !1528)
!1546 = !DILocation(line: 441, column: 10, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1543, file: !67, line: 440, column: 15)
!1548 = !DILocation(line: 441, column: 44, scope: !1547)
!1549 = !DILocation(line: 441, column: 3, scope: !1547)
!1550 = !DILocation(line: 442, column: 10, scope: !1547)
!1551 = !DILocation(line: 442, column: 3, scope: !1547)
!1552 = !DILocation(line: 445, column: 11, scope: !1528)
!1553 = !DILocation(line: 445, column: 2, scope: !1528)
!1554 = !DILocation(line: 446, column: 1, scope: !1528)
!1555 = distinct !DISubprogram(name: "file_read", scope: !67, file: !67, line: 449, type: !1556, isLocal: true, isDefinition: true, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!1531, !76, !58, !62}
!1558 = !DILocalVariable(name: "fname", arg: 1, scope: !1555, file: !67, line: 449, type: !76)
!1559 = !DILocation(line: 449, column: 23, scope: !1555)
!1560 = !DILocalVariable(name: "buff", arg: 2, scope: !1555, file: !67, line: 449, type: !58)
!1561 = !DILocation(line: 449, column: 39, scope: !1555)
!1562 = !DILocalVariable(name: "len", arg: 3, scope: !1555, file: !67, line: 449, type: !62)
!1563 = !DILocation(line: 449, column: 52, scope: !1555)
!1564 = !DILocalVariable(name: "rc", scope: !1555, file: !67, line: 451, type: !35)
!1565 = !DILocation(line: 451, column: 6, scope: !1555)
!1566 = !DILocalVariable(name: "fp", scope: !1555, file: !67, line: 452, type: !123)
!1567 = !DILocation(line: 452, column: 8, scope: !1555)
!1568 = !DILocation(line: 454, column: 7, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1555, file: !67, line: 454, column: 6)
!1570 = !DILocation(line: 454, column: 13, scope: !1569)
!1571 = !DILocation(line: 454, column: 21, scope: !1569)
!1572 = !DILocation(line: 454, column: 25, scope: !1573)
!1573 = !DILexicalBlockFile(scope: !1569, file: !67, discriminator: 1)
!1574 = !DILocation(line: 454, column: 30, scope: !1573)
!1575 = !DILocation(line: 454, column: 39, scope: !1573)
!1576 = !DILocation(line: 454, column: 43, scope: !1577)
!1577 = !DILexicalBlockFile(scope: !1569, file: !67, discriminator: 2)
!1578 = !DILocation(line: 454, column: 47, scope: !1577)
!1579 = !DILocation(line: 454, column: 6, scope: !1577)
!1580 = !DILocation(line: 455, column: 3, scope: !1569)
!1581 = !DILocation(line: 457, column: 13, scope: !1555)
!1582 = !DILocation(line: 457, column: 7, scope: !1555)
!1583 = !DILocation(line: 457, column: 5, scope: !1555)
!1584 = !DILocation(line: 458, column: 7, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1555, file: !67, line: 458, column: 6)
!1586 = !DILocation(line: 458, column: 6, scope: !1555)
!1587 = !DILocation(line: 459, column: 10, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1585, file: !67, line: 458, column: 11)
!1589 = !DILocation(line: 460, column: 4, scope: !1588)
!1590 = !DILocation(line: 460, column: 21, scope: !1588)
!1591 = !DILocation(line: 460, column: 20, scope: !1588)
!1592 = !DILocation(line: 460, column: 11, scope: !1593)
!1593 = !DILexicalBlockFile(scope: !1588, file: !67, discriminator: 1)
!1594 = !DILocation(line: 459, column: 3, scope: !1588)
!1595 = !DILocation(line: 461, column: 3, scope: !1588)
!1596 = !DILocation(line: 463, column: 13, scope: !1555)
!1597 = !DILocation(line: 463, column: 19, scope: !1555)
!1598 = !DILocation(line: 463, column: 27, scope: !1555)
!1599 = !DILocation(line: 463, column: 7, scope: !1555)
!1600 = !DILocation(line: 463, column: 5, scope: !1555)
!1601 = !DILocation(line: 464, column: 6, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1555, file: !67, line: 464, column: 6)
!1603 = !DILocation(line: 464, column: 9, scope: !1602)
!1604 = !DILocation(line: 464, column: 6, scope: !1555)
!1605 = !DILocation(line: 465, column: 10, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1602, file: !67, line: 464, column: 16)
!1607 = !DILocation(line: 466, column: 4, scope: !1606)
!1608 = !DILocation(line: 466, column: 21, scope: !1606)
!1609 = !DILocation(line: 466, column: 20, scope: !1606)
!1610 = !DILocation(line: 466, column: 11, scope: !1611)
!1611 = !DILexicalBlockFile(scope: !1606, file: !67, discriminator: 1)
!1612 = !DILocation(line: 465, column: 3, scope: !1606)
!1613 = !DILocation(line: 467, column: 10, scope: !1606)
!1614 = !DILocation(line: 467, column: 3, scope: !1606)
!1615 = !DILocation(line: 468, column: 3, scope: !1606)
!1616 = !DILocation(line: 471, column: 9, scope: !1555)
!1617 = !DILocation(line: 471, column: 2, scope: !1555)
!1618 = !DILocation(line: 472, column: 9, scope: !1555)
!1619 = !DILocation(line: 472, column: 2, scope: !1555)
!1620 = !DILocation(line: 473, column: 1, scope: !1555)
!1621 = distinct !DISubprogram(name: "hexdump", scope: !67, file: !67, line: 379, type: !1622, isLocal: true, isDefinition: true, scopeLine: 380, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{null, !123, !1624, !48}
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64, align: 64)
!1625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1626 = !DILocalVariable(name: "fp", arg: 1, scope: !1621, file: !67, line: 379, type: !123)
!1627 = !DILocation(line: 379, column: 34, scope: !1621)
!1628 = !DILocalVariable(name: "buff", arg: 2, scope: !1621, file: !67, line: 379, type: !1624)
!1629 = !DILocation(line: 379, column: 50, scope: !1621)
!1630 = !DILocalVariable(name: "size", arg: 3, scope: !1621, file: !67, line: 379, type: !48)
!1631 = !DILocation(line: 379, column: 69, scope: !1621)
!1632 = !DILocalVariable(name: "i", scope: !1621, file: !67, line: 381, type: !48)
!1633 = !DILocation(line: 381, column: 15, scope: !1621)
!1634 = !DILocalVariable(name: "j", scope: !1621, file: !67, line: 381, type: !48)
!1635 = !DILocation(line: 381, column: 18, scope: !1621)
!1636 = !DILocalVariable(name: "b", scope: !1621, file: !67, line: 382, type: !1637)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64, align: 64)
!1638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!1639 = !DILocation(line: 382, column: 17, scope: !1621)
!1640 = !DILocation(line: 382, column: 32, scope: !1621)
!1641 = !DILocalVariable(name: "ascii", scope: !1621, file: !67, line: 383, type: !1642)
!1642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 136, align: 8, elements: !1643)
!1643 = !{!1644}
!1644 = !DISubrange(count: 17)
!1645 = !DILocation(line: 383, column: 7, scope: !1621)
!1646 = !DILocation(line: 385, column: 6, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1621, file: !67, line: 385, column: 6)
!1648 = !DILocation(line: 385, column: 11, scope: !1647)
!1649 = !DILocation(line: 385, column: 6, scope: !1621)
!1650 = !DILocation(line: 386, column: 3, scope: !1647)
!1651 = !DILocation(line: 388, column: 9, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1621, file: !67, line: 388, column: 2)
!1653 = !DILocation(line: 388, column: 7, scope: !1652)
!1654 = !DILocation(line: 388, column: 14, scope: !1655)
!1655 = !DILexicalBlockFile(scope: !1656, file: !67, discriminator: 1)
!1656 = distinct !DILexicalBlock(scope: !1652, file: !67, line: 388, column: 2)
!1657 = !DILocation(line: 388, column: 18, scope: !1655)
!1658 = !DILocation(line: 388, column: 16, scope: !1655)
!1659 = !DILocation(line: 388, column: 2, scope: !1655)
!1660 = !DILocation(line: 389, column: 8, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !67, line: 389, column: 7)
!1662 = distinct !DILexicalBlock(scope: !1656, file: !67, line: 388, column: 29)
!1663 = !DILocation(line: 389, column: 10, scope: !1661)
!1664 = !DILocation(line: 389, column: 18, scope: !1661)
!1665 = !DILocation(line: 389, column: 7, scope: !1662)
!1666 = !DILocation(line: 390, column: 12, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1661, file: !67, line: 389, column: 27)
!1668 = !DILocation(line: 390, column: 26, scope: !1667)
!1669 = !DILocation(line: 390, column: 4, scope: !1667)
!1670 = !DILocation(line: 391, column: 4, scope: !1667)
!1671 = !DILocation(line: 392, column: 6, scope: !1667)
!1672 = !DILocation(line: 393, column: 3, scope: !1667)
!1673 = !DILocation(line: 394, column: 11, scope: !1662)
!1674 = !DILocation(line: 394, column: 26, scope: !1662)
!1675 = !DILocation(line: 394, column: 24, scope: !1662)
!1676 = !DILocation(line: 394, column: 3, scope: !1662)
!1677 = !DILocation(line: 395, column: 17, scope: !1662)
!1678 = !DILocation(line: 395, column: 15, scope: !1662)
!1679 = !DILocation(line: 395, column: 36, scope: !1662)
!1680 = !DILocation(line: 395, column: 16, scope: !1662)
!1681 = !DILocation(line: 395, column: 18, scope: !1662)
!1682 = !DILocation(line: 395, column: 19, scope: !1662)
!1683 = !DILocation(line: 395, column: 33, scope: !1684)
!1684 = !DILexicalBlockFile(scope: !1662, file: !67, discriminator: 1)
!1685 = !DILocation(line: 395, column: 31, scope: !1684)
!1686 = !DILocation(line: 395, column: 15, scope: !1684)
!1687 = !DILocation(line: 395, column: 15, scope: !1688)
!1688 = !DILexicalBlockFile(scope: !1662, file: !67, discriminator: 2)
!1689 = !DILocation(line: 395, column: 15, scope: !1690)
!1690 = !DILexicalBlockFile(scope: !1662, file: !67, discriminator: 3)
!1691 = !DILocation(line: 395, column: 10, scope: !1690)
!1692 = !DILocation(line: 395, column: 3, scope: !1690)
!1693 = !DILocation(line: 395, column: 14, scope: !1690)
!1694 = !DILocation(line: 397, column: 8, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1662, file: !67, line: 397, column: 7)
!1696 = !DILocation(line: 397, column: 10, scope: !1695)
!1697 = !DILocation(line: 397, column: 18, scope: !1695)
!1698 = !DILocation(line: 397, column: 7, scope: !1662)
!1699 = !DILocation(line: 398, column: 12, scope: !1695)
!1700 = !DILocation(line: 398, column: 27, scope: !1695)
!1701 = !DILocation(line: 398, column: 4, scope: !1695)
!1702 = !DILocation(line: 399, column: 2, scope: !1662)
!1703 = !DILocation(line: 388, column: 25, scope: !1704)
!1704 = !DILexicalBlockFile(scope: !1656, file: !67, discriminator: 2)
!1705 = !DILocation(line: 388, column: 2, scope: !1704)
!1706 = distinct !{!1706, !1707}
!1707 = !DILocation(line: 388, column: 2, scope: !1621)
!1708 = !DILocation(line: 402, column: 2, scope: !1621)
!1709 = !DILocation(line: 402, column: 9, scope: !1710)
!1710 = !DILexicalBlockFile(scope: !1711, file: !67, discriminator: 1)
!1711 = distinct !DILexicalBlock(scope: !1712, file: !67, line: 402, column: 2)
!1712 = distinct !DILexicalBlock(scope: !1621, file: !67, line: 402, column: 2)
!1713 = !DILocation(line: 402, column: 15, scope: !1710)
!1714 = !DILocation(line: 402, column: 20, scope: !1710)
!1715 = !DILocation(line: 402, column: 27, scope: !1710)
!1716 = !DILocation(line: 402, column: 11, scope: !1710)
!1717 = !DILocation(line: 402, column: 2, scope: !1710)
!1718 = !DILocation(line: 403, column: 11, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1711, file: !67, line: 402, column: 41)
!1720 = !DILocation(line: 403, column: 3, scope: !1719)
!1721 = !DILocation(line: 404, column: 10, scope: !1719)
!1722 = !DILocation(line: 404, column: 3, scope: !1719)
!1723 = !DILocation(line: 404, column: 14, scope: !1719)
!1724 = !DILocation(line: 406, column: 8, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1719, file: !67, line: 406, column: 7)
!1726 = !DILocation(line: 406, column: 10, scope: !1725)
!1727 = !DILocation(line: 406, column: 18, scope: !1725)
!1728 = !DILocation(line: 406, column: 7, scope: !1719)
!1729 = !DILocation(line: 407, column: 12, scope: !1725)
!1730 = !DILocation(line: 407, column: 27, scope: !1725)
!1731 = !DILocation(line: 407, column: 4, scope: !1725)
!1732 = !DILocation(line: 408, column: 2, scope: !1719)
!1733 = !DILocation(line: 402, column: 37, scope: !1734)
!1734 = !DILexicalBlockFile(scope: !1711, file: !67, discriminator: 2)
!1735 = !DILocation(line: 402, column: 2, scope: !1734)
!1736 = distinct !{!1736, !1708}
!1737 = !DILocation(line: 410, column: 10, scope: !1621)
!1738 = !DILocation(line: 410, column: 2, scope: !1621)
!1739 = !DILocation(line: 411, column: 1, scope: !1621)
!1740 = !DILocation(line: 411, column: 1, scope: !1741)
!1741 = !DILexicalBlockFile(scope: !1621, file: !67, discriminator: 1)
!1742 = distinct !DISubprogram(name: "def", scope: !67, file: !67, line: 142, type: !1743, isLocal: true, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!35, !123, !123, !1745, !187, !187}
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, align: 64)
!1746 = !DILocalVariable(name: "source", arg: 1, scope: !1742, file: !67, line: 142, type: !123)
!1747 = !DILocation(line: 142, column: 22, scope: !1742)
!1748 = !DILocalVariable(name: "dest", arg: 2, scope: !1742, file: !67, line: 142, type: !123)
!1749 = !DILocation(line: 142, column: 36, scope: !1742)
!1750 = !DILocalVariable(name: "strm", arg: 3, scope: !1742, file: !67, line: 142, type: !1745)
!1751 = !DILocation(line: 142, column: 52, scope: !1742)
!1752 = !DILocalVariable(name: "in", arg: 4, scope: !1742, file: !67, line: 143, type: !187)
!1753 = !DILocation(line: 143, column: 24, scope: !1742)
!1754 = !DILocalVariable(name: "out", arg: 5, scope: !1742, file: !67, line: 143, type: !187)
!1755 = !DILocation(line: 143, column: 43, scope: !1742)
!1756 = !DILocalVariable(name: "ret", scope: !1742, file: !67, line: 145, type: !35)
!1757 = !DILocation(line: 145, column: 6, scope: !1742)
!1758 = !DILocalVariable(name: "flush", scope: !1742, file: !67, line: 145, type: !35)
!1759 = !DILocation(line: 145, column: 11, scope: !1742)
!1760 = !DILocalVariable(name: "have", scope: !1742, file: !67, line: 146, type: !48)
!1761 = !DILocation(line: 146, column: 11, scope: !1742)
!1762 = !DILocation(line: 149, column: 2, scope: !1742)
!1763 = distinct !{!1763, !1762}
!1764 = !DILocation(line: 150, column: 26, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1742, file: !67, line: 149, column: 5)
!1766 = !DILocation(line: 150, column: 33, scope: !1765)
!1767 = !DILocation(line: 150, column: 42, scope: !1765)
!1768 = !DILocation(line: 150, column: 20, scope: !1765)
!1769 = !DILocation(line: 150, column: 3, scope: !1765)
!1770 = !DILocation(line: 150, column: 9, scope: !1765)
!1771 = !DILocation(line: 150, column: 18, scope: !1765)
!1772 = !DILocation(line: 151, column: 14, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1765, file: !67, line: 151, column: 7)
!1774 = !DILocation(line: 151, column: 7, scope: !1773)
!1775 = !DILocation(line: 151, column: 7, scope: !1765)
!1776 = !DILocation(line: 152, column: 4, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1773, file: !67, line: 151, column: 23)
!1778 = !DILocation(line: 154, column: 16, scope: !1765)
!1779 = !DILocation(line: 154, column: 11, scope: !1765)
!1780 = !DILocation(line: 154, column: 9, scope: !1765)
!1781 = !DILocation(line: 155, column: 19, scope: !1765)
!1782 = !DILocation(line: 155, column: 3, scope: !1765)
!1783 = !DILocation(line: 155, column: 9, scope: !1765)
!1784 = !DILocation(line: 155, column: 17, scope: !1765)
!1785 = !DILocation(line: 159, column: 3, scope: !1765)
!1786 = distinct !{!1786, !1785}
!1787 = !DILocation(line: 160, column: 8, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !67, line: 160, column: 8)
!1789 = distinct !DILexicalBlock(scope: !1765, file: !67, line: 159, column: 6)
!1790 = !DILocation(line: 160, column: 8, scope: !1789)
!1791 = !DILocation(line: 161, column: 12, scope: !1788)
!1792 = !DILocation(line: 161, column: 36, scope: !1788)
!1793 = !DILocation(line: 161, column: 5, scope: !1788)
!1794 = !DILocation(line: 163, column: 22, scope: !1789)
!1795 = !DILocation(line: 163, column: 4, scope: !1789)
!1796 = !DILocation(line: 163, column: 10, scope: !1789)
!1797 = !DILocation(line: 163, column: 20, scope: !1789)
!1798 = !DILocation(line: 164, column: 21, scope: !1789)
!1799 = !DILocation(line: 164, column: 4, scope: !1789)
!1800 = !DILocation(line: 164, column: 10, scope: !1789)
!1801 = !DILocation(line: 164, column: 19, scope: !1789)
!1802 = !DILocation(line: 165, column: 18, scope: !1789)
!1803 = !DILocation(line: 165, column: 24, scope: !1789)
!1804 = !DILocation(line: 165, column: 10, scope: !1789)
!1805 = !DILocation(line: 165, column: 8, scope: !1789)
!1806 = !DILocation(line: 166, column: 3, scope: !1789)
!1807 = !DILocation(line: 166, column: 7, scope: !1789)
!1808 = !DILocation(line: 166, column: 4, scope: !1789)
!1809 = !DILocation(line: 166, column: 4, scope: !1810)
!1810 = !DILexicalBlockFile(scope: !1789, file: !67, discriminator: 1)
!1811 = !DILocation(line: 166, column: 24, scope: !1812)
!1812 = !DILexicalBlockFile(scope: !1789, file: !67, discriminator: 2)
!1813 = !DILocation(line: 166, column: 4, scope: !1814)
!1814 = !DILexicalBlockFile(scope: !1789, file: !67, discriminator: 3)
!1815 = !DILocation(line: 167, column: 11, scope: !1789)
!1816 = !DILocation(line: 167, column: 21, scope: !1789)
!1817 = !DILocation(line: 167, column: 27, scope: !1789)
!1818 = !DILocation(line: 167, column: 19, scope: !1789)
!1819 = !DILocation(line: 167, column: 9, scope: !1789)
!1820 = !DILocation(line: 168, column: 15, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1789, file: !67, line: 168, column: 8)
!1822 = !DILocation(line: 168, column: 23, scope: !1821)
!1823 = !DILocation(line: 168, column: 29, scope: !1821)
!1824 = !DILocation(line: 168, column: 8, scope: !1821)
!1825 = !DILocation(line: 168, column: 38, scope: !1821)
!1826 = !DILocation(line: 168, column: 35, scope: !1821)
!1827 = !DILocation(line: 168, column: 43, scope: !1821)
!1828 = !DILocation(line: 169, column: 12, scope: !1821)
!1829 = !DILocation(line: 169, column: 5, scope: !1821)
!1830 = !DILocation(line: 168, column: 8, scope: !1810)
!1831 = !DILocation(line: 170, column: 5, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1821, file: !67, line: 169, column: 19)
!1833 = !DILocation(line: 172, column: 3, scope: !1789)
!1834 = !DILocation(line: 172, column: 12, scope: !1835)
!1835 = !DILexicalBlockFile(scope: !1765, file: !67, discriminator: 1)
!1836 = !DILocation(line: 172, column: 18, scope: !1835)
!1837 = !DILocation(line: 172, column: 28, scope: !1835)
!1838 = !DILocation(line: 172, column: 3, scope: !1835)
!1839 = !DILocation(line: 173, column: 2, scope: !1765)
!1840 = !DILocation(line: 173, column: 8, scope: !1765)
!1841 = !DILocation(line: 173, column: 17, scope: !1765)
!1842 = !DILocation(line: 173, column: 3, scope: !1765)
!1843 = !DILocation(line: 173, column: 3, scope: !1835)
!1844 = !DILocation(line: 173, column: 19, scope: !1845)
!1845 = !DILexicalBlockFile(scope: !1765, file: !67, discriminator: 2)
!1846 = !DILocation(line: 173, column: 3, scope: !1847)
!1847 = !DILexicalBlockFile(scope: !1765, file: !67, discriminator: 3)
!1848 = !DILocation(line: 176, column: 2, scope: !1765)
!1849 = !DILocation(line: 176, column: 11, scope: !1850)
!1850 = !DILexicalBlockFile(scope: !1742, file: !67, discriminator: 1)
!1851 = !DILocation(line: 176, column: 17, scope: !1850)
!1852 = !DILocation(line: 176, column: 2, scope: !1850)
!1853 = !DILocation(line: 177, column: 1, scope: !1742)
!1854 = !DILocation(line: 177, column: 5, scope: !1742)
!1855 = !DILocation(line: 177, column: 2, scope: !1742)
!1856 = !DILocation(line: 177, column: 2, scope: !1850)
!1857 = !DILocation(line: 177, column: 19, scope: !1858)
!1858 = !DILexicalBlockFile(scope: !1742, file: !67, discriminator: 2)
!1859 = !DILocation(line: 177, column: 2, scope: !1860)
!1860 = !DILexicalBlockFile(scope: !1742, file: !67, discriminator: 3)
!1861 = !DILocation(line: 179, column: 2, scope: !1742)
!1862 = !DILocation(line: 180, column: 1, scope: !1742)
!1863 = distinct !DISubprogram(name: "zerr", scope: !67, file: !67, line: 263, type: !1864, isLocal: true, isDefinition: true, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{null, !35}
!1866 = !DILocalVariable(name: "ret", arg: 1, scope: !1863, file: !67, line: 263, type: !35)
!1867 = !DILocation(line: 263, column: 22, scope: !1863)
!1868 = !DILocation(line: 265, column: 10, scope: !1863)
!1869 = !DILocation(line: 265, column: 2, scope: !1863)
!1870 = !DILocation(line: 267, column: 13, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !67, line: 267, column: 7)
!1872 = distinct !DILexicalBlock(scope: !1863, file: !67, line: 265, column: 15)
!1873 = !DILocation(line: 267, column: 7, scope: !1871)
!1874 = !DILocation(line: 267, column: 7, scope: !1872)
!1875 = !DILocation(line: 268, column: 4, scope: !1871)
!1876 = distinct !{!1876, !1875}
!1877 = !DILocation(line: 268, column: 3, scope: !1878)
!1878 = !DILexicalBlockFile(scope: !1879, file: !67, discriminator: 1)
!1879 = distinct !DILexicalBlock(scope: !1871, file: !67, line: 268, column: 7)
!1880 = !DILocation(line: 268, column: 9, scope: !1878)
!1881 = !DILocation(line: 268, column: 40, scope: !1878)
!1882 = !DILocation(line: 268, column: 40, scope: !1883)
!1883 = !DILexicalBlockFile(scope: !1879, file: !67, discriminator: 2)
!1884 = !DILocation(line: 269, column: 13, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1872, file: !67, line: 269, column: 7)
!1886 = !DILocation(line: 269, column: 7, scope: !1885)
!1887 = !DILocation(line: 269, column: 7, scope: !1872)
!1888 = !DILocation(line: 270, column: 4, scope: !1885)
!1889 = distinct !{!1889, !1888}
!1890 = !DILocation(line: 270, column: 3, scope: !1891)
!1891 = !DILexicalBlockFile(scope: !1892, file: !67, discriminator: 1)
!1892 = distinct !DILexicalBlock(scope: !1885, file: !67, line: 270, column: 7)
!1893 = !DILocation(line: 270, column: 9, scope: !1891)
!1894 = !DILocation(line: 270, column: 41, scope: !1891)
!1895 = !DILocation(line: 270, column: 41, scope: !1896)
!1896 = !DILexicalBlockFile(scope: !1892, file: !67, discriminator: 2)
!1897 = !DILocation(line: 271, column: 3, scope: !1872)
!1898 = !DILocation(line: 273, column: 3, scope: !1872)
!1899 = distinct !{!1899, !1898}
!1900 = !DILocation(line: 273, column: 2, scope: !1901)
!1901 = !DILexicalBlockFile(scope: !1902, file: !67, discriminator: 1)
!1902 = distinct !DILexicalBlock(scope: !1872, file: !67, line: 273, column: 6)
!1903 = !DILocation(line: 273, column: 8, scope: !1901)
!1904 = !DILocation(line: 273, column: 45, scope: !1901)
!1905 = !DILocation(line: 274, column: 3, scope: !1872)
!1906 = !DILocation(line: 276, column: 3, scope: !1872)
!1907 = distinct !{!1907, !1906}
!1908 = !DILocation(line: 276, column: 2, scope: !1909)
!1909 = !DILexicalBlockFile(scope: !1910, file: !67, discriminator: 1)
!1910 = distinct !DILexicalBlock(scope: !1872, file: !67, line: 276, column: 6)
!1911 = !DILocation(line: 276, column: 8, scope: !1909)
!1912 = !DILocation(line: 276, column: 54, scope: !1909)
!1913 = !DILocation(line: 277, column: 3, scope: !1872)
!1914 = !DILocation(line: 279, column: 3, scope: !1872)
!1915 = distinct !{!1915, !1914}
!1916 = !DILocation(line: 279, column: 2, scope: !1917)
!1917 = !DILexicalBlockFile(scope: !1918, file: !67, discriminator: 1)
!1918 = distinct !DILexicalBlock(scope: !1872, file: !67, line: 279, column: 6)
!1919 = !DILocation(line: 279, column: 8, scope: !1917)
!1920 = !DILocation(line: 279, column: 33, scope: !1917)
!1921 = !DILocation(line: 280, column: 3, scope: !1872)
!1922 = !DILocation(line: 282, column: 3, scope: !1872)
!1923 = distinct !{!1923, !1922}
!1924 = !DILocation(line: 282, column: 2, scope: !1925)
!1925 = !DILexicalBlockFile(scope: !1926, file: !67, discriminator: 1)
!1926 = distinct !DILexicalBlock(scope: !1872, file: !67, line: 282, column: 6)
!1927 = !DILocation(line: 282, column: 8, scope: !1925)
!1928 = !DILocation(line: 282, column: 42, scope: !1925)
!1929 = !DILocation(line: 283, column: 3, scope: !1872)
!1930 = !DILocation(line: 285, column: 1, scope: !1863)
!1931 = distinct !DISubprogram(name: "inf", scope: !67, file: !67, line: 188, type: !1743, isLocal: true, isDefinition: true, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!1932 = !DILocalVariable(name: "source", arg: 1, scope: !1931, file: !67, line: 188, type: !123)
!1933 = !DILocation(line: 188, column: 22, scope: !1931)
!1934 = !DILocalVariable(name: "dest", arg: 2, scope: !1931, file: !67, line: 188, type: !123)
!1935 = !DILocation(line: 188, column: 36, scope: !1931)
!1936 = !DILocalVariable(name: "strm", arg: 3, scope: !1931, file: !67, line: 188, type: !1745)
!1937 = !DILocation(line: 188, column: 52, scope: !1931)
!1938 = !DILocalVariable(name: "in", arg: 4, scope: !1931, file: !67, line: 189, type: !187)
!1939 = !DILocation(line: 189, column: 24, scope: !1931)
!1940 = !DILocalVariable(name: "out", arg: 5, scope: !1931, file: !67, line: 189, type: !187)
!1941 = !DILocation(line: 189, column: 43, scope: !1931)
!1942 = !DILocalVariable(name: "ret", scope: !1931, file: !67, line: 191, type: !35)
!1943 = !DILocation(line: 191, column: 6, scope: !1931)
!1944 = !DILocalVariable(name: "rc", scope: !1931, file: !67, line: 192, type: !35)
!1945 = !DILocation(line: 192, column: 6, scope: !1931)
!1946 = !DILocalVariable(name: "start_offs", scope: !1931, file: !67, line: 193, type: !57)
!1947 = !DILocation(line: 193, column: 7, scope: !1931)
!1948 = !DILocalVariable(name: "read_offs", scope: !1931, file: !67, line: 194, type: !57)
!1949 = !DILocation(line: 194, column: 7, scope: !1931)
!1950 = !DILocalVariable(name: "have", scope: !1931, file: !67, line: 195, type: !57)
!1951 = !DILocation(line: 195, column: 7, scope: !1931)
!1952 = !DILocation(line: 197, column: 2, scope: !1931)
!1953 = !DILocation(line: 197, column: 8, scope: !1931)
!1954 = !DILocation(line: 197, column: 17, scope: !1931)
!1955 = !DILocation(line: 198, column: 2, scope: !1931)
!1956 = !DILocation(line: 198, column: 8, scope: !1931)
!1957 = !DILocation(line: 198, column: 16, scope: !1931)
!1958 = !DILocation(line: 200, column: 21, scope: !1931)
!1959 = !DILocation(line: 200, column: 15, scope: !1931)
!1960 = !DILocation(line: 200, column: 13, scope: !1931)
!1961 = !DILocation(line: 201, column: 12, scope: !1931)
!1962 = !DILocation(line: 204, column: 2, scope: !1931)
!1963 = distinct !{!1963, !1962}
!1964 = !DILocation(line: 205, column: 26, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1931, file: !67, line: 204, column: 5)
!1966 = !DILocation(line: 205, column: 33, scope: !1965)
!1967 = !DILocation(line: 205, column: 42, scope: !1965)
!1968 = !DILocation(line: 205, column: 20, scope: !1965)
!1969 = !DILocation(line: 205, column: 3, scope: !1965)
!1970 = !DILocation(line: 205, column: 9, scope: !1965)
!1971 = !DILocation(line: 205, column: 18, scope: !1965)
!1972 = !DILocation(line: 206, column: 14, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1965, file: !67, line: 206, column: 7)
!1974 = !DILocation(line: 206, column: 7, scope: !1973)
!1975 = !DILocation(line: 206, column: 7, scope: !1965)
!1976 = !DILocation(line: 207, column: 11, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1973, file: !67, line: 206, column: 23)
!1978 = !DILocation(line: 207, column: 4, scope: !1977)
!1979 = !DILocation(line: 208, column: 4, scope: !1977)
!1980 = !DILocation(line: 210, column: 12, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1965, file: !67, line: 210, column: 7)
!1982 = !DILocation(line: 210, column: 18, scope: !1981)
!1983 = !DILocation(line: 210, column: 9, scope: !1981)
!1984 = !DILocation(line: 210, column: 7, scope: !1965)
!1985 = !DILocation(line: 211, column: 4, scope: !1981)
!1986 = !DILocation(line: 212, column: 19, scope: !1965)
!1987 = !DILocation(line: 212, column: 3, scope: !1965)
!1988 = !DILocation(line: 212, column: 9, scope: !1965)
!1989 = !DILocation(line: 212, column: 17, scope: !1965)
!1990 = !DILocation(line: 215, column: 3, scope: !1965)
!1991 = distinct !{!1991, !1990}
!1992 = !DILocation(line: 216, column: 22, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1965, file: !67, line: 215, column: 6)
!1994 = !DILocation(line: 216, column: 4, scope: !1993)
!1995 = !DILocation(line: 216, column: 10, scope: !1993)
!1996 = !DILocation(line: 216, column: 20, scope: !1993)
!1997 = !DILocation(line: 217, column: 21, scope: !1993)
!1998 = !DILocation(line: 217, column: 4, scope: !1993)
!1999 = !DILocation(line: 217, column: 10, scope: !1993)
!2000 = !DILocation(line: 217, column: 19, scope: !1993)
!2001 = !DILocation(line: 218, column: 18, scope: !1993)
!2002 = !DILocation(line: 218, column: 10, scope: !1993)
!2003 = !DILocation(line: 218, column: 8, scope: !1993)
!2004 = !DILocation(line: 219, column: 3, scope: !1993)
!2005 = !DILocation(line: 219, column: 7, scope: !1993)
!2006 = !DILocation(line: 219, column: 4, scope: !1993)
!2007 = !DILocation(line: 219, column: 4, scope: !2008)
!2008 = !DILexicalBlockFile(scope: !1993, file: !67, discriminator: 1)
!2009 = !DILocation(line: 219, column: 24, scope: !2010)
!2010 = !DILexicalBlockFile(scope: !1993, file: !67, discriminator: 2)
!2011 = !DILocation(line: 219, column: 4, scope: !2012)
!2012 = !DILexicalBlockFile(scope: !1993, file: !67, discriminator: 3)
!2013 = !DILocation(line: 221, column: 12, scope: !1993)
!2014 = !DILocation(line: 221, column: 4, scope: !1993)
!2015 = !DILocation(line: 224, column: 5, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !1993, file: !67, line: 221, column: 17)
!2017 = !DILocation(line: 226, column: 18, scope: !2016)
!2018 = !DILocation(line: 226, column: 24, scope: !2016)
!2019 = !DILocation(line: 226, column: 15, scope: !2016)
!2020 = !DILocation(line: 227, column: 5, scope: !2016)
!2021 = !DILocation(line: 229, column: 12, scope: !2016)
!2022 = !DILocation(line: 229, column: 5, scope: !2016)
!2023 = !DILocation(line: 230, column: 5, scope: !2016)
!2024 = !DILocation(line: 233, column: 12, scope: !2016)
!2025 = !DILocation(line: 233, column: 39, scope: !2016)
!2026 = !DILocation(line: 233, column: 5, scope: !2016)
!2027 = !DILocation(line: 234, column: 12, scope: !2016)
!2028 = !DILocation(line: 234, column: 5, scope: !2016)
!2029 = !DILocation(line: 236, column: 11, scope: !1993)
!2030 = !DILocation(line: 236, column: 21, scope: !1993)
!2031 = !DILocation(line: 236, column: 27, scope: !1993)
!2032 = !DILocation(line: 236, column: 19, scope: !1993)
!2033 = !DILocation(line: 236, column: 9, scope: !1993)
!2034 = !DILocation(line: 237, column: 15, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !1993, file: !67, line: 237, column: 8)
!2036 = !DILocation(line: 237, column: 23, scope: !2035)
!2037 = !DILocation(line: 237, column: 29, scope: !2035)
!2038 = !DILocation(line: 237, column: 8, scope: !2035)
!2039 = !DILocation(line: 237, column: 46, scope: !2035)
!2040 = !DILocation(line: 237, column: 35, scope: !2035)
!2041 = !DILocation(line: 237, column: 51, scope: !2035)
!2042 = !DILocation(line: 238, column: 12, scope: !2035)
!2043 = !DILocation(line: 238, column: 5, scope: !2035)
!2044 = !DILocation(line: 237, column: 8, scope: !2008)
!2045 = !DILocation(line: 239, column: 12, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2035, file: !67, line: 238, column: 19)
!2047 = !DILocation(line: 239, column: 5, scope: !2046)
!2048 = !DILocation(line: 240, column: 5, scope: !2046)
!2049 = !DILocation(line: 242, column: 3, scope: !1993)
!2050 = !DILocation(line: 242, column: 12, scope: !2051)
!2051 = !DILexicalBlockFile(scope: !1965, file: !67, discriminator: 1)
!2052 = !DILocation(line: 242, column: 18, scope: !2051)
!2053 = !DILocation(line: 242, column: 28, scope: !2051)
!2054 = !DILocation(line: 242, column: 3, scope: !2051)
!2055 = !DILocation(line: 244, column: 2, scope: !1965)
!2056 = !DILocation(line: 244, column: 11, scope: !2057)
!2057 = !DILexicalBlockFile(scope: !1931, file: !67, discriminator: 1)
!2058 = !DILocation(line: 244, column: 15, scope: !2057)
!2059 = !DILocation(line: 244, column: 2, scope: !2057)
!2060 = !DILocation(line: 247, column: 6, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !1931, file: !67, line: 247, column: 6)
!2062 = !DILocation(line: 247, column: 12, scope: !2061)
!2063 = !DILocation(line: 247, column: 21, scope: !2061)
!2064 = !DILocation(line: 247, column: 6, scope: !1931)
!2065 = !DILocation(line: 248, column: 16, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2061, file: !67, line: 247, column: 36)
!2067 = !DILocation(line: 248, column: 3, scope: !2066)
!2068 = !DILocation(line: 249, column: 3, scope: !2066)
!2069 = !DILocation(line: 253, column: 16, scope: !1931)
!2070 = !DILocation(line: 253, column: 13, scope: !1931)
!2071 = !DILocation(line: 254, column: 13, scope: !1931)
!2072 = !DILocation(line: 254, column: 21, scope: !1931)
!2073 = !DILocation(line: 254, column: 7, scope: !1931)
!2074 = !DILocation(line: 254, column: 5, scope: !1931)
!2075 = !DILocation(line: 255, column: 6, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !1931, file: !67, line: 255, column: 6)
!2077 = !DILocation(line: 255, column: 9, scope: !2076)
!2078 = !DILocation(line: 255, column: 6, scope: !1931)
!2079 = !DILocation(line: 256, column: 10, scope: !2076)
!2080 = !DILocation(line: 256, column: 40, scope: !2076)
!2081 = !DILocation(line: 256, column: 3, scope: !2076)
!2082 = !DILocation(line: 258, column: 15, scope: !1931)
!2083 = !DILocation(line: 258, column: 2, scope: !1931)
!2084 = !DILocation(line: 259, column: 9, scope: !1931)
!2085 = !DILocation(line: 259, column: 2, scope: !1931)
!2086 = !DILocation(line: 260, column: 1, scope: !1931)
!2087 = distinct !DISubprogram(name: "print_version", scope: !67, file: !67, line: 327, type: !2088, isLocal: true, isDefinition: true, scopeLine: 328, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{null, !123}
!2090 = !DILocalVariable(name: "fp", arg: 1, scope: !2087, file: !67, line: 327, type: !123)
!2091 = !DILocation(line: 327, column: 33, scope: !2087)
!2092 = !DILocation(line: 329, column: 10, scope: !2087)
!2093 = !DILocation(line: 330, column: 3, scope: !2087)
!2094 = !DILocation(line: 331, column: 10, scope: !2087)
!2095 = !DILocation(line: 331, column: 3, scope: !2096)
!2096 = !DILexicalBlockFile(scope: !2087, file: !67, discriminator: 1)
!2097 = !DILocation(line: 331, column: 38, scope: !2087)
!2098 = !DILocation(line: 331, column: 3, scope: !2087)
!2099 = !DILocation(line: 329, column: 2, scope: !2087)
!2100 = !DILocation(line: 333, column: 1, scope: !2087)
!2101 = distinct !DISubprogram(name: "do_print_gzip_hdr", scope: !67, file: !67, line: 413, type: !2102, isLocal: true, isDefinition: true, scopeLine: 414, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{null, !2104, !123}
!2104 = !DIDerivedType(tag: DW_TAG_typedef, name: "gz_headerp", file: !193, line: 131, baseType: !2105)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64, align: 64)
!2106 = !DILocalVariable(name: "head", arg: 1, scope: !2101, file: !67, line: 413, type: !2104)
!2107 = !DILocation(line: 413, column: 42, scope: !2101)
!2108 = !DILocalVariable(name: "fp", arg: 2, scope: !2101, file: !67, line: 413, type: !123)
!2109 = !DILocation(line: 413, column: 54, scope: !2101)
!2110 = !DILocation(line: 415, column: 10, scope: !2101)
!2111 = !DILocation(line: 416, column: 27, scope: !2101)
!2112 = !DILocation(line: 416, column: 33, scope: !2101)
!2113 = !DILocation(line: 415, column: 2, scope: !2101)
!2114 = !DILocation(line: 417, column: 10, scope: !2101)
!2115 = !DILocation(line: 417, column: 51, scope: !2101)
!2116 = !DILocation(line: 417, column: 57, scope: !2101)
!2117 = !DILocation(line: 417, column: 34, scope: !2101)
!2118 = !DILocation(line: 417, column: 2, scope: !2119)
!2119 = !DILexicalBlockFile(scope: !2101, file: !67, discriminator: 1)
!2120 = !DILocation(line: 418, column: 10, scope: !2101)
!2121 = !DILocation(line: 418, column: 38, scope: !2101)
!2122 = !DILocation(line: 418, column: 44, scope: !2101)
!2123 = !DILocation(line: 418, column: 2, scope: !2101)
!2124 = !DILocation(line: 419, column: 10, scope: !2101)
!2125 = !DILocation(line: 419, column: 63, scope: !2101)
!2126 = !DILocation(line: 419, column: 69, scope: !2101)
!2127 = !DILocation(line: 419, column: 2, scope: !2101)
!2128 = !DILocation(line: 420, column: 10, scope: !2101)
!2129 = !DILocation(line: 420, column: 36, scope: !2101)
!2130 = !DILocation(line: 420, column: 42, scope: !2101)
!2131 = !DILocation(line: 420, column: 2, scope: !2101)
!2132 = !DILocation(line: 421, column: 10, scope: !2101)
!2133 = !DILocation(line: 421, column: 36, scope: !2101)
!2134 = !DILocation(line: 421, column: 42, scope: !2101)
!2135 = !DILocation(line: 421, column: 2, scope: !2101)
!2136 = !DILocation(line: 422, column: 10, scope: !2101)
!2137 = !DILocation(line: 422, column: 14, scope: !2101)
!2138 = !DILocation(line: 422, column: 20, scope: !2101)
!2139 = !DILocation(line: 422, column: 27, scope: !2101)
!2140 = !DILocation(line: 422, column: 33, scope: !2101)
!2141 = !DILocation(line: 422, column: 2, scope: !2101)
!2142 = !DILocation(line: 423, column: 10, scope: !2101)
!2143 = !DILocation(line: 424, column: 3, scope: !2101)
!2144 = !DILocation(line: 424, column: 9, scope: !2101)
!2145 = !DILocation(line: 424, column: 24, scope: !2119)
!2146 = !DILocation(line: 424, column: 30, scope: !2119)
!2147 = !DILocation(line: 424, column: 3, scope: !2119)
!2148 = !DILocation(line: 424, column: 3, scope: !2149)
!2149 = !DILexicalBlockFile(scope: !2101, file: !67, discriminator: 2)
!2150 = !DILocation(line: 424, column: 3, scope: !2151)
!2151 = !DILexicalBlockFile(scope: !2101, file: !67, discriminator: 3)
!2152 = !DILocation(line: 423, column: 2, scope: !2119)
!2153 = !DILocation(line: 425, column: 10, scope: !2101)
!2154 = !DILocation(line: 425, column: 36, scope: !2101)
!2155 = !DILocation(line: 425, column: 42, scope: !2101)
!2156 = !DILocation(line: 425, column: 2, scope: !2101)
!2157 = !DILocation(line: 426, column: 10, scope: !2101)
!2158 = !DILocation(line: 427, column: 3, scope: !2101)
!2159 = !DILocation(line: 427, column: 9, scope: !2101)
!2160 = !DILocation(line: 427, column: 27, scope: !2119)
!2161 = !DILocation(line: 427, column: 33, scope: !2119)
!2162 = !DILocation(line: 427, column: 3, scope: !2119)
!2163 = !DILocation(line: 427, column: 3, scope: !2149)
!2164 = !DILocation(line: 427, column: 3, scope: !2151)
!2165 = !DILocation(line: 426, column: 2, scope: !2119)
!2166 = !DILocation(line: 428, column: 10, scope: !2101)
!2167 = !DILocation(line: 428, column: 36, scope: !2101)
!2168 = !DILocation(line: 428, column: 42, scope: !2101)
!2169 = !DILocation(line: 428, column: 2, scope: !2101)
!2170 = !DILocation(line: 429, column: 10, scope: !2101)
!2171 = !DILocation(line: 429, column: 36, scope: !2101)
!2172 = !DILocation(line: 429, column: 42, scope: !2101)
!2173 = !DILocation(line: 429, column: 2, scope: !2101)
!2174 = !DILocation(line: 430, column: 10, scope: !2101)
!2175 = !DILocation(line: 430, column: 38, scope: !2101)
!2176 = !DILocation(line: 430, column: 44, scope: !2101)
!2177 = !DILocation(line: 430, column: 2, scope: !2101)
!2178 = !DILocation(line: 431, column: 1, scope: !2101)
