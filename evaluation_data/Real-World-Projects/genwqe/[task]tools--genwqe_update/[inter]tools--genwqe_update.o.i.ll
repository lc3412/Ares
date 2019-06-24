; ModuleID = '/home/lichi/Desktop/genwqe/[task]tools--genwqe_update/[inter]tools--genwqe_update.o.i'
source_filename = "/home/lichi/Desktop/genwqe/[task]tools--genwqe_update/[inter]tools--genwqe_update.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.genwqe_type = type { i8*, i64 }
%struct.card_dev_t = type opaque
%struct.card_upd_params = type { i8*, i32, i32, i16, i8, i64, i64, i16, i16, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@verbose_flag = global i32 0, align 4
@main.long_options = internal global [8 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 1, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 1, i32* null, i32 67 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 1, i32* null, i32 120 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 1, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 0, i32* null, i32 86 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"card\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"partition\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"C:f:vVhp:x:\00", align 1
@optarg = external global i8*, align 8
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@version = internal global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0), align 8
@optind = external global i32, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"GENWQE_SIM\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.10 = private unnamed_addr constant [47 x i8] c"%s:%u: Error: driver / HW simulation active !\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"genwqe_update.c\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"Card Type: %s\0A\00", align 1
@sysfs_type = internal global [128 x i8] c"unknown\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str.13 = private unnamed_addr constant [21 x i8] c"RBF Size:  %d bytes\0A\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"%s:%u: Error: no input/output file!\0A\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c".rbf\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"%s:%u: Error: '%s' is not an *.rbf file!\0A\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"%s:%u: Error: partition '%c' invalid\0A\00", align 1
@.str.18 = private unnamed_addr constant [45 x i8] c"%s:%u: Error: cannot open card %d! (err=%d)\0A\00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"%s:%u: Error: don't forget to specify a size!\0A\00", align 1
@.str.20 = private unnamed_addr constant [60 x i8] c"%s:%u: Error: reading bitstream failed!\0A  %s (errno=%d/%s)\0A\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"%s:%u: Error: cannot find %s!\0A\00", align 1
@.str.22 = private unnamed_addr constant [86 x i8] c"%s:%u: Error: file size %d bytes does not match required size of bitstream %d bytes!\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.23 = private unnamed_addr constant [60 x i8] c"old bitstream with broken readback. Skipping verification.\0A\00", align 1
@.str.24 = private unnamed_addr constant [139 x i8] c"%s:%u: Error: update process failed!\0A  %s (errno=%d/%s)\0A  Please ensure that you do not see HW222218 where we had problems reading flash.\0A\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"update process succeeded\0A\00", align 1
@.str.26 = private unnamed_addr constant [837 x i8] c"Usage: %s [-h, --help] [-v,--verbose] [-C,--card <cardno>]\0A\09[-V, --version]\0A\09[-v, --verbose]\0A\09[-f, --file <image.rbf>]\0A\09[-p, --partition <partition>] Default: 1\0A\09[-x, --verify <0:no|1:yes>]\0A\0AThis utility updates the Genwqes FLASH with an new image\0Afrom an *.rbf file. Do not disconnect the card from power\0Awhile updating. Ensure you have the correct update\0Aimage. Use of incorrect images or interrupting the update\0Awill make the card unusable.\0AExample flashing a Genwqe default Partition (Partition 1):\0A  %s -C0 -f chip_a5_latest.rbf\0A\0AExample flashing a Genwqe backup Partition (Partition 0):\0A  %s -C0 -p 0 -f chip_a5_latest.rbf\0A\0APlease note that updating the card can take some time.\0ASo please be patient and do not try to abort this process,\0Abecause this might corrupt the card image, and the card\0Awon't work as expected afterwards.\0A\0A\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"4.0.20-5-g2944\00", align 1
@.str.28 = private unnamed_addr constant [37 x i8] c"/sys/class/genwqe/genwqe%d_card/type\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@card_types = internal constant [5 x %struct.genwqe_type] [%struct.genwqe_type { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0), i64 33747356 }, %struct.genwqe_type { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), i64 26724840 }, %struct.genwqe_type { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i64 21465258 }, %struct.genwqe_type { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), i64 11819684 }, %struct.genwqe_type zeroinitializer], align 16
@.str.30 = private unnamed_addr constant [11 x i8] c"GenWQE5-A7\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"GenWQE5-A4\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"GenWQE5-530\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"GenWQE4-230\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"  RETC: %x\0A\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"  ATTN: %x \00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1
@.str.37 = private unnamed_addr constant [43 x i8] c"Parse Error (length wrong, addr bad, ...)\0A\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"CRC Error (data)\0A\00", align 1
@.str.39 = private unnamed_addr constant [40 x i8] c"Flash programmer timeout/sequence err.\0A\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"DMA Timeout\0A\00", align 1
@.str.41 = private unnamed_addr constant [44 x i8] c"Out of Bound (Addr. collision with images)\0A\00", align 1
@.str.42 = private unnamed_addr constant [65 x i8] c"Allication logicIssued a RC not equal to 0x102, 0x104, or 0x108\0A\00", align 1
@.str.43 = private unnamed_addr constant [34 x i8] c"Allication violated SQB protocol\0A\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"LEM Attention\0A\00", align 1
@.str.45 = private unnamed_addr constant [58 x i8] c"Timeout (recoverable). Application quieced successfully.\0A\00", align 1
@.str.46 = private unnamed_addr constant [45 x i8] c"Application times out, Quiece unsuccessful.\0A\00", align 1
@.str.47 = private unnamed_addr constant [20 x i8] c"Queue Access Error\0A\00", align 1
@.str.48 = private unnamed_addr constant [21 x i8] c"DMA engine override\0A\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"Bad ICRC\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"Out of Sequence\0A\00", align 1
@.str.51 = private unnamed_addr constant [22 x i8] c"Unsupported Preamble\0A\00", align 1
@.str.52 = private unnamed_addr constant [20 x i8] c"Unsupported ACFUNC\0A\00", align 1
@.str.53 = private unnamed_addr constant [19 x i8] c"SHI mis-sequenced\0A\00", align 1
@.str.54 = private unnamed_addr constant [19 x i8] c"Illegal VF access\0A\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"unknown\0A\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"  PROGRESS: %x \00", align 1
@.str.57 = private unnamed_addr constant [20 x i8] c"Command Retrieved.\0A\00", align 1
@.str.58 = private unnamed_addr constant [24 x i8] c"Sector Number N erased\0A\00", align 1
@.str.59 = private unnamed_addr constant [20 x i8] c"All Secors Erased.\0A\00", align 1
@.str.60 = private unnamed_addr constant [20 x i8] c"1st Block flashed.\0A\00", align 1
@.str.61 = private unnamed_addr constant [18 x i8] c"Half Programmed.\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32, i8**) #0 !dbg !34 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.card_dev_t*, align 8
  %14 = alloca %struct.card_upd_params, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.stat, align 8
  %21 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !71, metadata !72), !dbg !73
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !74, metadata !72), !dbg !75
  call void @llvm.dbg.declare(metadata i32* %6, metadata !76, metadata !72), !dbg !77
  call void @llvm.dbg.declare(metadata i32* %7, metadata !78, metadata !72), !dbg !79
  call void @llvm.dbg.declare(metadata i32* %8, metadata !80, metadata !72), !dbg !81
  call void @llvm.dbg.declare(metadata i32* %9, metadata !82, metadata !72), !dbg !83
  store i32 0, i32* %9, align 4, !dbg !83
  call void @llvm.dbg.declare(metadata i32* %10, metadata !84, metadata !72), !dbg !85
  store i32 0, i32* %10, align 4, !dbg !85
  call void @llvm.dbg.declare(metadata i32* %11, metadata !86, metadata !72), !dbg !87
  store i32 1, i32* %11, align 4, !dbg !87
  call void @llvm.dbg.declare(metadata i32* %12, metadata !88, metadata !72), !dbg !89
  store i32 0, i32* %12, align 4, !dbg !89
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %13, metadata !90, metadata !72), !dbg !95
  call void @llvm.dbg.declare(metadata %struct.card_upd_params* %14, metadata !96, metadata !72), !dbg !114
  call void @llvm.dbg.declare(metadata i8** %15, metadata !115, metadata !72), !dbg !116
  call void @llvm.dbg.declare(metadata i8** %16, metadata !117, metadata !72), !dbg !118
  call void @llvm.dbg.declare(metadata i64* %17, metadata !119, metadata !72), !dbg !120
  %22 = bitcast %struct.card_upd_params* %14 to i8*, !dbg !121
  call void @llvm.memset.p0i8.i64(i8* %22, i8 0, i64 48, i32 8, i1 false), !dbg !121
  %23 = getelementptr inbounds %struct.card_upd_params, %struct.card_upd_params* %14, i32 0, i32 4, !dbg !122
  store i8 49, i8* %23, align 2, !dbg !123
  br label %24, !dbg !124

; <label>:24:                                     ; preds = %2, %62
  call void @llvm.dbg.declare(metadata i32* %18, metadata !125, metadata !72), !dbg !127
  store i32 0, i32* %18, align 4, !dbg !127
  %25 = load i32, i32* %4, align 4, !dbg !128
  %26 = load i8**, i8*** %5, align 8, !dbg !129
  %27 = call i32 @getopt_long(i32 %25, i8** %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), %struct.option* getelementptr inbounds ([8 x %struct.option], [8 x %struct.option]* @main.long_options, i32 0, i32 0), i32* %18) #8, !dbg !130
  store i32 %27, i32* %6, align 4, !dbg !131
  %28 = load i32, i32* %6, align 4, !dbg !132
  %29 = icmp eq i32 %28, -1, !dbg !134
  br i1 %29, label %30, label %31, !dbg !135

; <label>:30:                                     ; preds = %24
  br label %63, !dbg !136

; <label>:31:                                     ; preds = %24
  %32 = load i32, i32* %6, align 4, !dbg !137
  switch i32 %32, label %58 [
    i32 67, label %33
    i32 102, label %37
    i32 112, label %40
    i32 120, label %44
    i32 104, label %48
    i32 86, label %52
    i32 118, label %55
  ], !dbg !138

; <label>:33:                                     ; preds = %31
  %34 = load i8*, i8** @optarg, align 8, !dbg !139
  %35 = call i64 @strtol(i8* %34, i8** null, i32 0) #8, !dbg !141
  %36 = trunc i64 %35 to i32, !dbg !141
  store i32 %36, i32* %9, align 4, !dbg !142
  br label %62, !dbg !143

; <label>:37:                                     ; preds = %31
  %38 = load i8*, i8** @optarg, align 8, !dbg !144
  %39 = getelementptr inbounds %struct.card_upd_params, %struct.card_upd_params* %14, i32 0, i32 0, !dbg !145
  store i8* %38, i8** %39, align 8, !dbg !146
  br label %62, !dbg !147

; <label>:40:                                     ; preds = %31
  %41 = load i8*, i8** @optarg, align 8, !dbg !148
  %42 = load i8, i8* %41, align 1, !dbg !149
  %43 = getelementptr inbounds %struct.card_upd_params, %struct.card_upd_params* %14, i32 0, i32 4, !dbg !150
  store i8 %42, i8* %43, align 2, !dbg !151
  br label %62, !dbg !152

; <label>:44:                                     ; preds = %31
  %45 = load i8*, i8** @optarg, align 8, !dbg !153
  %46 = call i64 @strtol(i8* %45, i8** null, i32 0) #8, !dbg !154
  %47 = trunc i64 %46 to i32, !dbg !154
  store i32 %47, i32* %11, align 4, !dbg !155
  br label %62, !dbg !156

; <label>:48:                                     ; preds = %31
  %49 = load i8**, i8*** %5, align 8, !dbg !157
  %50 = getelementptr inbounds i8*, i8** %49, i64 0, !dbg !157
  %51 = load i8*, i8** %50, align 8, !dbg !157
  call void @usage(i8* %51), !dbg !158
  call void @exit(i32 0) #9, !dbg !159
  unreachable, !dbg !159

; <label>:52:                                     ; preds = %31
  %53 = load i8*, i8** @version, align 8, !dbg !160
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* %53), !dbg !161
  call void @exit(i32 0) #9, !dbg !162
  unreachable, !dbg !162

; <label>:55:                                     ; preds = %31
  %56 = load i32, i32* @verbose_flag, align 4, !dbg !163
  %57 = add nsw i32 %56, 1, !dbg !163
  store i32 %57, i32* @verbose_flag, align 4, !dbg !163
  br label %62, !dbg !164

; <label>:58:                                     ; preds = %31
  %59 = load i8**, i8*** %5, align 8, !dbg !165
  %60 = getelementptr inbounds i8*, i8** %59, i64 0, !dbg !165
  %61 = load i8*, i8** %60, align 8, !dbg !165
  call void @usage(i8* %61), !dbg !166
  call void @exit(i32 1) #9, !dbg !167
  unreachable, !dbg !167

; <label>:62:                                     ; preds = %55, %44, %40, %37, %33
  br label %24, !dbg !168, !llvm.loop !170

; <label>:63:                                     ; preds = %30
  %64 = load i32, i32* @optind, align 4, !dbg !171
  %65 = load i32, i32* %4, align 4, !dbg !173
  %66 = icmp slt i32 %64, %65, !dbg !174
  br i1 %66, label %67, label %75, !dbg !175

; <label>:67:                                     ; preds = %63
  %68 = load i32, i32* @optind, align 4, !dbg !176
  %69 = add nsw i32 %68, 1, !dbg !176
  store i32 %69, i32* @optind, align 4, !dbg !176
  %70 = sext i32 %68 to i64, !dbg !177
  %71 = load i8**, i8*** %5, align 8, !dbg !177
  %72 = getelementptr inbounds i8*, i8** %71, i64 %70, !dbg !177
  %73 = load i8*, i8** %72, align 8, !dbg !177
  %74 = getelementptr inbounds %struct.card_upd_params, %struct.card_upd_params* %14, i32 0, i32 0, !dbg !178
  store i8* %73, i8** %74, align 8, !dbg !179
  br label %75, !dbg !180

; <label>:75:                                     ; preds = %67, %63
  %76 = load i32, i32* @optind, align 4, !dbg !181
  %77 = load i32, i32* %4, align 4, !dbg !183
  %78 = icmp ne i32 %76, %77, !dbg !184
  br i1 %78, label %79, label %83, !dbg !185

; <label>:79:                                     ; preds = %75
  %80 = load i8**, i8*** %5, align 8, !dbg !186
  %81 = getelementptr inbounds i8*, i8** %80, i64 0, !dbg !186
  %82 = load i8*, i8** %81, align 8, !dbg !186
  call void @usage(i8* %82), !dbg !188
  call void @exit(i32 1) #9, !dbg !189
  unreachable, !dbg !189

; <label>:83:                                     ; preds = %75
  %84 = load i32, i32* @verbose_flag, align 4, !dbg !190
  call void @genwqe_card_lib_debug(i32 %84), !dbg !191
  %85 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0)) #8, !dbg !192
  store i8* %85, i8** %15, align 8, !dbg !193
  %86 = load i8*, i8** %15, align 8, !dbg !194
  %87 = icmp ne i8* %86, null, !dbg !196
  br i1 %87, label %88, label %97, !dbg !197

; <label>:88:                                     ; preds = %83
  %89 = load i8*, i8** %15, align 8, !dbg !198
  %90 = call i32 @atoi(i8* %89) #10, !dbg !200
  %91 = icmp sgt i32 %90, 0, !dbg !201
  br i1 %91, label %92, label %97, !dbg !202

; <label>:92:                                     ; preds = %88
  br label %93, !dbg !203, !llvm.loop !205

; <label>:93:                                     ; preds = %92
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !206
  %95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %94, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i32 333), !dbg !209
  br label %96, !dbg !210

; <label>:96:                                     ; preds = %93
  call void @exit(i32 1) #9, !dbg !211
  unreachable, !dbg !211

; <label>:97:                                     ; preds = %88, %83
  %98 = load i32, i32* %9, align 4, !dbg !212
  %99 = call i32 @read_card_type(i32 %98), !dbg !213
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([128 x i8], [128 x i8]* @sysfs_type, i32 0, i32 0)), !dbg !214
  %101 = call i64 @get_rbf_size(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @sysfs_type, i32 0, i32 0)), !dbg !215
  store i64 %101, i64* %17, align 8, !dbg !216
  %102 = load i64, i64* %17, align 8, !dbg !217
  %103 = trunc i64 %102 to i32, !dbg !218
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0), i32 %103), !dbg !219
  %105 = getelementptr inbounds %struct.card_upd_params, %struct.card_upd_params* %14, i32 0, i32 1, !dbg !220
  %106 = load i32, i32* %105, align 8, !dbg !220
  %107 = icmp eq i32 %106, 0, !dbg !222
  br i1 %107, label %108, label %112, !dbg !223

; <label>:108:                                    ; preds = %97
  %109 = load i64, i64* %17, align 8, !dbg !224
  %110 = trunc i64 %109 to i32, !dbg !224
  %111 = getelementptr inbounds %struct.card_upd_params, %struct.card_upd_params* %14, i32 0, i32 1, !dbg !225
  store i32 %110, i32* %111, align 8, !dbg !226
  br label %112, !dbg !227

; <label>:112:                                    ; preds = %108, %97
  %113 = getelementptr inbounds %struct.card_upd_params, %struct.card_upd_params* %14, i32 0, i32 0, !dbg !228
  %114 = load i8*, i8** %113, align 8, !dbg !228
  %115 = icmp eq i8* %114, null, !dbg !230
  br i1 %115, label %116, label %121, !dbg !231

; <label>:116:                                    ; preds = %112
  br label %117, !dbg !232, !llvm.loop !234

; <label>:117:                                    ; preds = %116
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !235
  %119 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %118, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i32 347), !dbg !238
  br label %120, !dbg !239

; <label>:120:                                    ; preds = %117
  call void @exit(i32 66) #9, !dbg !240
  unreachable, !dbg !240

; <label>:121:                                    ; preds = %112
  %122 = getelementptr inbounds %struct.card_upd_params, %struct.card_upd_params* %14, i32 0, i32 0, !dbg !241
  %123 = load i8*, i8** %122, align 8, !dbg !241
  %124 = call i8* @strrchr(i8* %123, i32 46) #10, !dbg !242
  store i8* %124, i8** %16, align 8, !dbg !243
  %125 = load i32, i32* %12, align 4, !dbg !244
  %126 = icmp ne i32 %125, 0, !dbg !244
  br i1 %126, label %141, label %127, !dbg !246

; <label>:127:                                    ; preds = %121
  %128 = load i8*, i8** %16, align 8, !dbg !247
  %129 = icmp eq i8* %128, null, !dbg !249
  br i1 %129, label %134, label %130, !dbg !250

; <label>:130:                                    ; preds = %127
  %131 = load i8*, i8** %16, align 8, !dbg !251
  %132 = call i32 @strncmp(i8* %131, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i64 5) #10, !dbg !253
  %133 = icmp ne i32 %132, 0, !dbg !254
  br i1 %133, label %134, label %141, !dbg !255

; <label>:134:                                    ; preds = %130, %127
  br label %135, !dbg !256, !llvm.loop !258

; <label>:135:                                    ; preds = %134
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !259
  %137 = getelementptr inbounds %struct.card_upd_params, %struct.card_upd_params* %14, i32 0, i32 0, !dbg !262
  %138 = load i8*, i8** %137, align 8, !dbg !262
  %139 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %136, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i32 353, i8* %138), !dbg !263
  br label %140, !dbg !264

; <label>:140:                                    ; preds = %135
  call void @exit(i32 66) #9, !dbg !265
  unreachable, !dbg !265

; <label>:141:                                    ; preds = %130, %121
  %142 = getelementptr inbounds %struct.card_upd_params, %struct.card_upd_params* %14, i32 0, i32 4, !dbg !266
  %143 = load i8, i8* %142, align 2, !dbg !266
  %144 = sext i8 %143 to i32, !dbg !268
  %145 = icmp ne i32 %144, 48, !dbg !269
  br i1 %145, label %146, label %174, !dbg !270

; <label>:146:                                    ; preds = %141
  %147 = getelementptr inbounds %struct.card_upd_params, %struct.card_upd_params* %14, i32 0, i32 4, !dbg !271
  %148 = load i8, i8* %147, align 2, !dbg !271
  %149 = sext i8 %148 to i32, !dbg !273
  %150 = icmp ne i32 %149, 49, !dbg !274
  br i1 %150, label %151, label %174, !dbg !275

; <label>:151:                                    ; preds = %146
  br label %152, !dbg !276, !llvm.loop !278

; <label>:152:                                    ; preds = %151
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !279
  %154 = getelementptr inbounds %struct.card_upd_params, %struct.card_upd_params* %14, i32 0, i32 4, !dbg !282
  %155 = load i8, i8* %154, align 2, !dbg !282
  %156 = sext i8 %155 to i32, !dbg !283
  %157 = sext i32 %156 to i64, !dbg !284
  %158 = call i16** @__ctype_b_loc() #1, !dbg !285
  %159 = load i16*, i16** %158, align 8, !dbg !286
  %160 = getelementptr inbounds i16, i16* %159, i64 %157, !dbg !284
  %161 = load i16, i16* %160, align 2, !dbg !284
  %162 = zext i16 %161 to i32, !dbg !284
  %163 = and i32 %162, 16384, !dbg !282
  %164 = icmp ne i32 %163, 0, !dbg !282
  br i1 %164, label %165, label %169, !dbg !279

; <label>:165:                                    ; preds = %152
  %166 = getelementptr inbounds %struct.card_upd_params, %struct.card_upd_params* %14, i32 0, i32 4, !dbg !287
  %167 = load i8, i8* %166, align 2, !dbg !287
  %168 = sext i8 %167 to i32, !dbg !289
  br label %170, !dbg !290

; <label>:169:                                    ; preds = %152
  br label %170, !dbg !291

; <label>:170:                                    ; preds = %169, %165
  %171 = phi i32 [ %168, %165 ], [ 63, %169 ], !dbg !293
  %172 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %153, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i32 360, i32 %171), !dbg !295
  br label %173, !dbg !296

; <label>:173:                                    ; preds = %170
  call void @exit(i32 64) #9, !dbg !297
  unreachable, !dbg !297

; <label>:174:                                    ; preds = %146, %141
  %175 = load i32, i32* %9, align 4, !dbg !298
  %176 = call %struct.card_dev_t* @genwqe_card_open(i32 %175, i32 4, i32* %8, i64 0, i64 0), !dbg !299
  store %struct.card_dev_t* %176, %struct.card_dev_t** %13, align 8, !dbg !300
  %177 = load %struct.card_dev_t*, %struct.card_dev_t** %13, align 8, !dbg !301
  %178 = icmp eq %struct.card_dev_t* %177, null, !dbg !303
  br i1 %178, label %179, label %186, !dbg !304

; <label>:179:                                    ; preds = %174
  br label %180, !dbg !305, !llvm.loop !307

; <label>:180:                                    ; preds = %179
  %181 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !308
  %182 = load i32, i32* %9, align 4, !dbg !311
  %183 = load i32, i32* %8, align 4, !dbg !312
  %184 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %181, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i32 368, i32 %182, i32 %183), !dbg !313
  br label %185, !dbg !314

; <label>:185:                                    ; preds = %180
  call void @exit(i32 1) #9, !dbg !315
  unreachable, !dbg !315

; <label>:186:                                    ; preds = %174
  %187 = load i32, i32* %10, align 4, !dbg !316
  %188 = icmp ne i32 %187, 0, !dbg !316
  br i1 %188, label %189, label %224, !dbg !318

; <label>:189:                                    ; preds = %186
  %190 = getelementptr inbounds %struct.card_upd_params, %struct.card_upd_params* %14, i32 0, i32 1, !dbg !319
  %191 = load i32, i32* %190, align 8, !dbg !319
  %192 = icmp eq i32 %191, 0, !dbg !322
  br i1 %192, label %193, label %198, !dbg !323

; <label>:193:                                    ; preds = %189
  br label %194, !dbg !324, !llvm.loop !326

; <label>:194:                                    ; preds = %193
  %195 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !327
  %196 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %195, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i32 375), !dbg !330
  br label %197, !dbg !331

; <label>:197:                                    ; preds = %194
  store i32 1, i32* %7, align 4, !dbg !332
  br label %297, !dbg !333

; <label>:198:                                    ; preds = %189
  %199 = load %struct.card_dev_t*, %struct.card_dev_t** %13, align 8, !dbg !334
  %200 = call i32 @genwqe_flash_read(%struct.card_dev_t* %199, %struct.card_upd_params* %14), !dbg !335
  store i32 %200, i32* %7, align 4, !dbg !336
  %201 = load i32, i32* %7, align 4, !dbg !337
  %202 = icmp slt i32 %201, 0, !dbg !339
  br i1 %202, label %203, label %223, !dbg !340

; <label>:203:                                    ; preds = %198
  call void @llvm.dbg.declare(metadata i32* %19, metadata !341, metadata !72), !dbg !343
  %204 = call i32* @__errno_location() #1, !dbg !344
  %205 = load i32, i32* %204, align 4, !dbg !345
  store i32 %205, i32* %19, align 4, !dbg !343
  br label %206, !dbg !346, !llvm.loop !347

; <label>:206:                                    ; preds = %203
  %207 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !348
  %208 = load i32, i32* %7, align 4, !dbg !351
  %209 = call i8* @card_strerror(i32 %208), !dbg !352
  %210 = load i32, i32* %19, align 4, !dbg !353
  %211 = load i32, i32* %19, align 4, !dbg !354
  %212 = call i8* @strerror(i32 %211) #8, !dbg !355
  %213 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %207, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i32 385, i8* %209, i32 %210, i8* %212), !dbg !357
  br label %214, !dbg !359

; <label>:214:                                    ; preds = %206
  %215 = getelementptr inbounds %struct.card_upd_params, %struct.card_upd_params* %14, i32 0, i32 7, !dbg !360
  %216 = load i16, i16* %215, align 8, !dbg !360
  %217 = zext i16 %216 to i32, !dbg !361
  %218 = getelementptr inbounds %struct.card_upd_params, %struct.card_upd_params* %14, i32 0, i32 8, !dbg !362
  %219 = load i16, i16* %218, align 2, !dbg !362
  %220 = zext i16 %219 to i32, !dbg !363
  %221 = getelementptr inbounds %struct.card_upd_params, %struct.card_upd_params* %14, i32 0, i32 9, !dbg !364
  %222 = load i32, i32* %221, align 4, !dbg !364
  call void @print_move_flash_results(i32 %217, i32 %220, i32 %222), !dbg !365
  store i32 1, i32* %7, align 4, !dbg !366
  br label %297, !dbg !367

; <label>:223:                                    ; preds = %198
  br label %296, !dbg !368

; <label>:224:                                    ; preds = %186
  call void @llvm.dbg.declare(metadata %struct.stat* %20, metadata !369, metadata !72), !dbg !408
  %225 = getelementptr inbounds %struct.card_upd_params, %struct.card_upd_params* %14, i32 0, i32 0, !dbg !409
  %226 = load i8*, i8** %225, align 8, !dbg !409
  %227 = call i32 @lstat(i8* %226, %struct.stat* %20) #8, !dbg !410
  store i32 %227, i32* %7, align 4, !dbg !411
  %228 = load i32, i32* %7, align 4, !dbg !412
  %229 = icmp ne i32 %228, 0, !dbg !414
  br i1 %229, label %230, label %237, !dbg !415

; <label>:230:                                    ; preds = %224
  br label %231, !dbg !416, !llvm.loop !418

; <label>:231:                                    ; preds = %230
  %232 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !419
  %233 = getelementptr inbounds %struct.card_upd_params, %struct.card_upd_params* %14, i32 0, i32 0, !dbg !422
  %234 = load i8*, i8** %233, align 8, !dbg !422
  %235 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %232, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i32 396, i8* %234), !dbg !423
  br label %236, !dbg !424

; <label>:236:                                    ; preds = %231
  store i32 1, i32* %7, align 4, !dbg !425
  br label %297, !dbg !426

; <label>:237:                                    ; preds = %224
  %238 = load i32, i32* %12, align 4, !dbg !427
  %239 = icmp ne i32 %238, 0, !dbg !427
  br i1 %239, label %257, label %240, !dbg !429

; <label>:240:                                    ; preds = %237
  %241 = getelementptr inbounds %struct.stat, %struct.stat* %20, i32 0, i32 8, !dbg !430
  %242 = load i64, i64* %241, align 8, !dbg !430
  %243 = getelementptr inbounds %struct.card_upd_params, %struct.card_upd_params* %14, i32 0, i32 1, !dbg !432
  %244 = load i32, i32* %243, align 8, !dbg !432
  %245 = zext i32 %244 to i64, !dbg !433
  %246 = icmp ne i64 %242, %245, !dbg !434
  br i1 %246, label %247, label %257, !dbg !435

; <label>:247:                                    ; preds = %240
  br label %248, !dbg !436, !llvm.loop !438

; <label>:248:                                    ; preds = %247
  %249 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !439
  %250 = getelementptr inbounds %struct.stat, %struct.stat* %20, i32 0, i32 8, !dbg !442
  %251 = load i64, i64* %250, align 8, !dbg !442
  %252 = trunc i64 %251 to i32, !dbg !443
  %253 = getelementptr inbounds %struct.card_upd_params, %struct.card_upd_params* %14, i32 0, i32 1, !dbg !444
  %254 = load i32, i32* %253, align 8, !dbg !444
  %255 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %249, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i32 404, i32 %252, i32 %254), !dbg !445
  br label %256, !dbg !446

; <label>:256:                                    ; preds = %248
  store i32 1, i32* %7, align 4, !dbg !447
  br label %297, !dbg !448

; <label>:257:                                    ; preds = %240, %237
  %258 = load %struct.card_dev_t*, %struct.card_dev_t** %13, align 8, !dbg !449
  %259 = load i32, i32* %11, align 4, !dbg !450
  %260 = call i32 @genwqe_flash_update(%struct.card_dev_t* %258, %struct.card_upd_params* %14, i32 %259), !dbg !451
  store i32 %260, i32* %7, align 4, !dbg !452
  %261 = load i32, i32* %7, align 4, !dbg !453
  %262 = icmp slt i32 %261, 0, !dbg !455
  br i1 %262, label %263, label %295, !dbg !456

; <label>:263:                                    ; preds = %257
  call void @llvm.dbg.declare(metadata i32* %21, metadata !457, metadata !72), !dbg !459
  %264 = call i32* @__errno_location() #1, !dbg !460
  %265 = load i32, i32* %264, align 4, !dbg !461
  store i32 %265, i32* %21, align 4, !dbg !459
  %266 = load i32, i32* %21, align 4, !dbg !462
  %267 = icmp eq i32 %266, 28, !dbg !464
  br i1 %267, label %268, label %277, !dbg !465

; <label>:268:                                    ; preds = %263
  br label %269, !dbg !466, !llvm.loop !468

; <label>:269:                                    ; preds = %268
  %270 = load i32, i32* @verbose_flag, align 4, !dbg !469
  %271 = icmp ne i32 %270, 0, !dbg !469
  br i1 %271, label %272, label %275, !dbg !469

; <label>:272:                                    ; preds = %269
  %273 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !473
  %274 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %273, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.23, i32 0, i32 0)), !dbg !475
  br label %275, !dbg !475

; <label>:275:                                    ; preds = %272, %269
  br label %276, !dbg !476

; <label>:276:                                    ; preds = %275
  store i32 0, i32* %7, align 4, !dbg !478
  br label %297, !dbg !479

; <label>:277:                                    ; preds = %263
  br label %278, !dbg !480, !llvm.loop !481

; <label>:278:                                    ; preds = %277
  %279 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !482
  %280 = load i32, i32* %7, align 4, !dbg !485
  %281 = call i8* @card_strerror(i32 %280), !dbg !486
  %282 = load i32, i32* %21, align 4, !dbg !487
  %283 = load i32, i32* %21, align 4, !dbg !488
  %284 = call i8* @strerror(i32 %283) #8, !dbg !489
  %285 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %279, i8* getelementptr inbounds ([139 x i8], [139 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i32 424, i8* %281, i32 %282, i8* %284), !dbg !491
  br label %286, !dbg !493

; <label>:286:                                    ; preds = %278
  %287 = getelementptr inbounds %struct.card_upd_params, %struct.card_upd_params* %14, i32 0, i32 7, !dbg !494
  %288 = load i16, i16* %287, align 8, !dbg !494
  %289 = zext i16 %288 to i32, !dbg !495
  %290 = getelementptr inbounds %struct.card_upd_params, %struct.card_upd_params* %14, i32 0, i32 8, !dbg !496
  %291 = load i16, i16* %290, align 2, !dbg !496
  %292 = zext i16 %291 to i32, !dbg !497
  %293 = getelementptr inbounds %struct.card_upd_params, %struct.card_upd_params* %14, i32 0, i32 9, !dbg !498
  %294 = load i32, i32* %293, align 4, !dbg !498
  call void @print_move_flash_results(i32 %289, i32 %292, i32 %294), !dbg !499
  store i32 1, i32* %7, align 4, !dbg !500
  br label %295, !dbg !501

; <label>:295:                                    ; preds = %286, %257
  br label %296

; <label>:296:                                    ; preds = %295, %223
  br label %297, !dbg !502

; <label>:297:                                    ; preds = %296, %276, %256, %236, %214, %197
  %298 = load %struct.card_dev_t*, %struct.card_dev_t** %13, align 8, !dbg !504
  %299 = call i32 @genwqe_card_close(%struct.card_dev_t* %298), !dbg !505
  %300 = load i32, i32* %7, align 4, !dbg !506
  %301 = icmp eq i32 %300, 0, !dbg !508
  br i1 %301, label %302, label %304, !dbg !509

; <label>:302:                                    ; preds = %297
  %303 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i32 0, i32 0)), !dbg !510
  br label %304, !dbg !510

; <label>:304:                                    ; preds = %302, %297
  %305 = load i32, i32* %7, align 4, !dbg !511
  call void @exit(i32 %305) #9, !dbg !512
  unreachable, !dbg !512
                                                  ; No predecessors!
  %307 = load i32, i32* %3, align 4, !dbg !513
  ret i32 %307, !dbg !513
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #3

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #3

; Function Attrs: nounwind uwtable
define internal void @usage(i8*) #0 !dbg !514 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !517, metadata !72), !dbg !518
  %3 = load i8*, i8** %2, align 8, !dbg !519
  %4 = load i8*, i8** %2, align 8, !dbg !520
  %5 = load i8*, i8** %2, align 8, !dbg !521
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([837 x i8], [837 x i8]* @.str.26, i32 0, i32 0), i8* %3, i8* %4, i8* %5), !dbg !522
  ret void, !dbg !523
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

declare i32 @printf(i8*, ...) #5

declare void @genwqe_card_lib_debug(i32) #5

; Function Attrs: nounwind
declare i8* @getenv(i8*) #3

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #6

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #5

; Function Attrs: nounwind uwtable
define internal i32 @read_card_type(i32) #0 !dbg !524 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [128 x i8], align 16
  %6 = alloca %struct._IO_FILE*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !527, metadata !72), !dbg !528
  call void @llvm.dbg.declare(metadata i32* %4, metadata !529, metadata !72), !dbg !530
  call void @llvm.dbg.declare(metadata [128 x i8]* %5, metadata !531, metadata !72), !dbg !532
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !533, metadata !72), !dbg !585
  %7 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i32 0, i32 0, !dbg !586
  %8 = load i32, i32* %3, align 4, !dbg !587
  %9 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %7, i64 128, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.28, i32 0, i32 0), i32 %8) #8, !dbg !588
  store i8 0, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @sysfs_type, i64 0, i64 127), align 1, !dbg !589
  %10 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i32 0, i32 0, !dbg !590
  %11 = call %struct._IO_FILE* @fopen(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0)), !dbg !591
  store %struct._IO_FILE* %11, %struct._IO_FILE** %6, align 8, !dbg !592
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !593
  %13 = icmp eq %struct._IO_FILE* %12, null, !dbg !595
  br i1 %13, label %14, label %15, !dbg !596

; <label>:14:                                     ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !597
  br label %30, !dbg !597

; <label>:15:                                     ; preds = %1
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !598
  %17 = call i64 @fread(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @sysfs_type, i32 0, i32 0), i64 1, i64 128, %struct._IO_FILE* %16), !dbg !599
  %18 = trunc i64 %17 to i32, !dbg !599
  store i32 %18, i32* %4, align 4, !dbg !600
  store i8 0, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @sysfs_type, i64 0, i64 127), align 1, !dbg !601
  %19 = load i32, i32* %4, align 4, !dbg !602
  %20 = icmp sle i32 %19, 0, !dbg !604
  br i1 %20, label %21, label %24, !dbg !605

; <label>:21:                                     ; preds = %15
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !606
  %23 = call i32 @fclose(%struct._IO_FILE* %22), !dbg !608
  store i32 -2, i32* %2, align 4, !dbg !609
  br label %30, !dbg !609

; <label>:24:                                     ; preds = %15
  %25 = call i64 @strlen(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @sysfs_type, i32 0, i32 0)) #10, !dbg !610
  %26 = sub i64 %25, 1, !dbg !611
  %27 = getelementptr inbounds [128 x i8], [128 x i8]* @sysfs_type, i64 0, i64 %26, !dbg !612
  store i8 0, i8* %27, align 1, !dbg !613
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !614
  %29 = call i32 @fclose(%struct._IO_FILE* %28), !dbg !615
  store i32 0, i32* %2, align 4, !dbg !616
  br label %30, !dbg !616

; <label>:30:                                     ; preds = %24, %21, %14
  %31 = load i32, i32* %2, align 4, !dbg !617
  ret i32 %31, !dbg !617
}

; Function Attrs: nounwind uwtable
define internal i64 @get_rbf_size(i8*) #0 !dbg !618 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.genwqe_type*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !621, metadata !72), !dbg !622
  call void @llvm.dbg.declare(metadata %struct.genwqe_type** %4, metadata !623, metadata !72), !dbg !625
  store %struct.genwqe_type* getelementptr inbounds ([5 x %struct.genwqe_type], [5 x %struct.genwqe_type]* @card_types, i64 0, i64 0), %struct.genwqe_type** %4, align 8, !dbg !626
  br label %5, !dbg !628

; <label>:5:                                      ; preds = %22, %1
  %6 = load %struct.genwqe_type*, %struct.genwqe_type** %4, align 8, !dbg !629
  %7 = getelementptr inbounds %struct.genwqe_type, %struct.genwqe_type* %6, i32 0, i32 0, !dbg !632
  %8 = load i8*, i8** %7, align 8, !dbg !632
  %9 = icmp ne i8* %8, null, !dbg !633
  br i1 %9, label %10, label %25, !dbg !634

; <label>:10:                                     ; preds = %5
  %11 = load i8*, i8** %3, align 8, !dbg !635
  %12 = load %struct.genwqe_type*, %struct.genwqe_type** %4, align 8, !dbg !638
  %13 = getelementptr inbounds %struct.genwqe_type, %struct.genwqe_type* %12, i32 0, i32 0, !dbg !639
  %14 = load i8*, i8** %13, align 8, !dbg !639
  %15 = call i32 @strcmp(i8* %11, i8* %14) #10, !dbg !640
  %16 = icmp eq i32 %15, 0, !dbg !641
  br i1 %16, label %17, label %21, !dbg !642

; <label>:17:                                     ; preds = %10
  %18 = load %struct.genwqe_type*, %struct.genwqe_type** %4, align 8, !dbg !643
  %19 = getelementptr inbounds %struct.genwqe_type, %struct.genwqe_type* %18, i32 0, i32 1, !dbg !644
  %20 = load i64, i64* %19, align 8, !dbg !644
  store i64 %20, i64* %2, align 8, !dbg !645
  br label %26, !dbg !645

; <label>:21:                                     ; preds = %10
  br label %22, !dbg !646

; <label>:22:                                     ; preds = %21
  %23 = load %struct.genwqe_type*, %struct.genwqe_type** %4, align 8, !dbg !647
  %24 = getelementptr inbounds %struct.genwqe_type, %struct.genwqe_type* %23, i32 1, !dbg !647
  store %struct.genwqe_type* %24, %struct.genwqe_type** %4, align 8, !dbg !647
  br label %5, !dbg !649, !llvm.loop !650

; <label>:25:                                     ; preds = %5
  store i64 0, i64* %2, align 8, !dbg !652
  br label %26, !dbg !652

; <label>:26:                                     ; preds = %25, %17
  %27 = load i64, i64* %2, align 8, !dbg !653
  ret i64 %27, !dbg !653
}

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #6

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #6

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #7

declare %struct.card_dev_t* @genwqe_card_open(i32, i32, i32*, i64, i64) #5

declare i32 @genwqe_flash_read(%struct.card_dev_t*, %struct.card_upd_params*) #5

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #7

declare i8* @card_strerror(i32) #5

; Function Attrs: nounwind
declare i8* @strerror(i32) #3

; Function Attrs: nounwind uwtable
define internal void @print_move_flash_results(i32, i32, i32) #0 !dbg !654 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !657, metadata !72), !dbg !658
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !659, metadata !72), !dbg !660
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !661, metadata !72), !dbg !662
  %7 = load i32, i32* %4, align 4, !dbg !663
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0), i32 %7), !dbg !664
  %9 = load i32, i32* %5, align 4, !dbg !665
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), i32 %9), !dbg !666
  %11 = load i32, i32* %5, align 4, !dbg !667
  switch i32 %11, label %50 [
    i32 0, label %12
    i32 1, label %14
    i32 2, label %16
    i32 3, label %18
    i32 4, label %20
    i32 5, label %22
    i32 57345, label %24
    i32 57346, label %26
    i32 57347, label %28
    i32 57348, label %30
    i32 57349, label %32
    i32 57350, label %34
    i32 57351, label %36
    i32 61440, label %38
    i32 61441, label %40
    i32 61442, label %42
    i32 61443, label %44
    i32 61444, label %46
    i32 61445, label %48
  ], !dbg !668

; <label>:12:                                     ; preds = %3
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i32 0, i32 0)), !dbg !669
  br label %52, !dbg !671

; <label>:14:                                     ; preds = %3
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.37, i32 0, i32 0)), !dbg !672
  br label %52, !dbg !673

; <label>:16:                                     ; preds = %3
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i32 0, i32 0)), !dbg !674
  br label %52, !dbg !675

; <label>:18:                                     ; preds = %3
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i32 0, i32 0)), !dbg !676
  br label %52, !dbg !677

; <label>:20:                                     ; preds = %3
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i32 0, i32 0)), !dbg !678
  br label %52, !dbg !679

; <label>:22:                                     ; preds = %3
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.41, i32 0, i32 0)), !dbg !680
  br label %52, !dbg !681

; <label>:24:                                     ; preds = %3
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.42, i32 0, i32 0)), !dbg !682
  br label %52, !dbg !683

; <label>:26:                                     ; preds = %3
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.43, i32 0, i32 0)), !dbg !684
  br label %52, !dbg !685

; <label>:28:                                     ; preds = %3
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0)), !dbg !686
  br label %52, !dbg !687

; <label>:30:                                     ; preds = %3
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.45, i32 0, i32 0)), !dbg !688
  br label %52, !dbg !689

; <label>:32:                                     ; preds = %3
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.46, i32 0, i32 0)), !dbg !690
  br label %52, !dbg !691

; <label>:34:                                     ; preds = %3
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i32 0, i32 0)), !dbg !692
  br label %52, !dbg !693

; <label>:36:                                     ; preds = %3
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.48, i32 0, i32 0)), !dbg !694
  br label %52, !dbg !695

; <label>:38:                                     ; preds = %3
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0)), !dbg !696
  br label %52, !dbg !697

; <label>:40:                                     ; preds = %3
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.50, i32 0, i32 0)), !dbg !698
  br label %52, !dbg !699

; <label>:42:                                     ; preds = %3
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.51, i32 0, i32 0)), !dbg !700
  br label %52, !dbg !701

; <label>:44:                                     ; preds = %3
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.52, i32 0, i32 0)), !dbg !702
  br label %52, !dbg !703

; <label>:46:                                     ; preds = %3
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i32 0, i32 0)), !dbg !704
  br label %52, !dbg !705

; <label>:48:                                     ; preds = %3
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.54, i32 0, i32 0)), !dbg !706
  br label %52, !dbg !707

; <label>:50:                                     ; preds = %3
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0)), !dbg !708
  br label %52, !dbg !709

; <label>:52:                                     ; preds = %50, %48, %46, %44, %42, %40, %38, %36, %34, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12
  %53 = load i32, i32* %6, align 4, !dbg !710
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.56, i32 0, i32 0), i32 %53), !dbg !711
  %55 = load i32, i32* %6, align 4, !dbg !712
  switch i32 %55, label %66 [
    i32 0, label %56
    i32 256, label %58
    i32 512, label %60
    i32 513, label %62
    i32 515, label %64
  ], !dbg !713

; <label>:56:                                     ; preds = %52
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.57, i32 0, i32 0)), !dbg !714
  br label %66, !dbg !716

; <label>:58:                                     ; preds = %52
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.58, i32 0, i32 0)), !dbg !717
  br label %66, !dbg !718

; <label>:60:                                     ; preds = %52
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.59, i32 0, i32 0)), !dbg !719
  br label %66, !dbg !720

; <label>:62:                                     ; preds = %52
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.60, i32 0, i32 0)), !dbg !721
  br label %66, !dbg !722

; <label>:64:                                     ; preds = %52
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.61, i32 0, i32 0)), !dbg !723
  br label %66, !dbg !724

; <label>:66:                                     ; preds = %52, %64, %62, %60, %58, %56
  ret void, !dbg !725
}

; Function Attrs: nounwind
declare i32 @lstat(i8*, %struct.stat*) #3

declare i32 @genwqe_flash_update(%struct.card_dev_t*, %struct.card_upd_params*, i32) #5

declare i32 @genwqe_card_close(%struct.card_dev_t*) #5

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #5

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #5

declare i32 @fclose(%struct._IO_FILE*) #5

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!68, !69}
!llvm.ident = !{!70}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !18, globals: !30)
!1 = !DIFile(filename: "/home/lichi/Desktop/genwqe/[task]tools--genwqe_update/[inter]tools--genwqe_update.o.i", directory: "/home/lichi/Desktop")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 46, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/lichi/Desktop")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17}
!6 = !DIEnumerator(name: "_ISupper", value: 256)
!7 = !DIEnumerator(name: "_ISlower", value: 512)
!8 = !DIEnumerator(name: "_ISalpha", value: 1024)
!9 = !DIEnumerator(name: "_ISdigit", value: 2048)
!10 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!11 = !DIEnumerator(name: "_ISspace", value: 8192)
!12 = !DIEnumerator(name: "_ISprint", value: 16384)
!13 = !DIEnumerator(name: "_ISgraph", value: 32768)
!14 = !DIEnumerator(name: "_ISblank", value: 1)
!15 = !DIEnumerator(name: "_IScntrl", value: 2)
!16 = !DIEnumerator(name: "_ISpunct", value: 4)
!17 = !DIEnumerator(name: "_ISalnum", value: 8)
!18 = !{!19, !22, !23, !24, !25}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!23 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!24 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !26, line: 102, baseType: !27)
!26 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !28, line: 172, baseType: !29)
!28 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop")
!29 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!30 = !{!31, !33, !51, !52, !56}
!31 = distinct !DIGlobalVariable(name: "verbose_flag", scope: !0, file: !32, line: 40, type: !23, isLocal: false, isDefinition: true, variable: i32* @verbose_flag)
!32 = !DIFile(filename: "genwqe_update.c", directory: "/home/lichi/Desktop")
!33 = distinct !DIGlobalVariable(name: "long_options", scope: !34, file: !32, line: 270, type: !38, isLocal: true, isDefinition: true, variable: [8 x %struct.option]* @main.long_options)
!34 = distinct !DISubprogram(name: "main", scope: !32, file: !32, line: 252, type: !35, isLocal: false, isDefinition: true, scopeLine: 253, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !37)
!35 = !DISubroutineType(types: !36)
!36 = !{!23, !23, !19}
!37 = !{}
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 2048, align: 64, elements: !49)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !40, line: 104, size: 256, align: 64, elements: !41)
!40 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/lichi/Desktop")
!41 = !{!42, !45, !46, !48}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !39, file: !40, line: 106, baseType: !43, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !39, file: !40, line: 109, baseType: !23, size: 32, align: 32, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !39, file: !40, line: 110, baseType: !47, size: 64, align: 64, offset: 128)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !39, file: !40, line: 111, baseType: !23, size: 32, align: 32, offset: 192)
!49 = !{!50}
!50 = !DISubrange(count: 8)
!51 = distinct !DIGlobalVariable(name: "version", scope: !0, file: !32, line: 42, type: !43, isLocal: true, isDefinition: true, variable: i8** @version)
!52 = distinct !DIGlobalVariable(name: "sysfs_type", scope: !0, file: !32, line: 43, type: !53, isLocal: true, isDefinition: true, variable: [128 x i8]* @sysfs_type)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 1024, align: 8, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 128)
!56 = distinct !DIGlobalVariable(name: "card_types", scope: !0, file: !32, line: 55, type: !57, isLocal: true, isDefinition: true, variable: [5 x %struct.genwqe_type]* @card_types)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 640, align: 64, elements: !66)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "genwqe_type", file: !32, line: 45, size: 128, align: 64, elements: !60)
!60 = !{!61, !62}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "card_id", scope: !59, file: !32, line: 46, baseType: !43, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "rbf_size", scope: !59, file: !32, line: 47, baseType: !63, size: 64, align: 64, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !64, line: 216, baseType: !65)
!64 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop")
!65 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!66 = !{!67}
!67 = !DISubrange(count: 5)
!68 = !{i32 2, !"Dwarf Version", i32 4}
!69 = !{i32 2, !"Debug Info Version", i32 3}
!70 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!71 = !DILocalVariable(name: "argc", arg: 1, scope: !34, file: !32, line: 252, type: !23)
!72 = !DIExpression()
!73 = !DILocation(line: 252, column: 14, scope: !34)
!74 = !DILocalVariable(name: "argv", arg: 2, scope: !34, file: !32, line: 252, type: !19)
!75 = !DILocation(line: 252, column: 26, scope: !34)
!76 = !DILocalVariable(name: "ch", scope: !34, file: !32, line: 254, type: !23)
!77 = !DILocation(line: 254, column: 6, scope: !34)
!78 = !DILocalVariable(name: "rc", scope: !34, file: !32, line: 254, type: !23)
!79 = !DILocation(line: 254, column: 10, scope: !34)
!80 = !DILocalVariable(name: "err_code", scope: !34, file: !32, line: 254, type: !23)
!81 = !DILocation(line: 254, column: 14, scope: !34)
!82 = !DILocalVariable(name: "card_no", scope: !34, file: !32, line: 255, type: !23)
!83 = !DILocation(line: 255, column: 6, scope: !34)
!84 = !DILocalVariable(name: "read_back", scope: !34, file: !32, line: 256, type: !23)
!85 = !DILocation(line: 256, column: 6, scope: !34)
!86 = !DILocalVariable(name: "verify", scope: !34, file: !32, line: 257, type: !23)
!87 = !DILocation(line: 257, column: 6, scope: !34)
!88 = !DILocalVariable(name: "force", scope: !34, file: !32, line: 258, type: !23)
!89 = !DILocation(line: 258, column: 6, scope: !34)
!90 = !DILocalVariable(name: "card", scope: !34, file: !32, line: 259, type: !91)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "card_handle_t", file: !92, line: 95, baseType: !93)
!92 = !DIFile(filename: "../include/libcard.h", directory: "/home/lichi/Desktop")
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = !DICompositeType(tag: DW_TAG_structure_type, name: "card_dev_t", file: !92, line: 95, flags: DIFlagFwdDecl)
!95 = !DILocation(line: 259, column: 16, scope: !34)
!96 = !DILocalVariable(name: "upd", scope: !34, file: !32, line: 260, type: !97)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "card_upd_params", file: !92, line: 337, size: 384, align: 64, elements: !98)
!98 = !{!99, !100, !104, !105, !107, !108, !110, !111, !112, !113}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !97, file: !92, line: 338, baseType: !43, size: 64, align: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "flength", scope: !97, file: !92, line: 339, baseType: !101, size: 32, align: 32, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !102, line: 51, baseType: !103)
!102 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop")
!103 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !97, file: !92, line: 340, baseType: !101, size: 32, align: 32, offset: 96)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !97, file: !92, line: 341, baseType: !106, size: 16, align: 16, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !102, line: 49, baseType: !24)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "partition", scope: !97, file: !92, line: 342, baseType: !21, size: 8, align: 8, offset: 144)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "slu_id", scope: !97, file: !92, line: 344, baseType: !109, size: 64, align: 64, offset: 192)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !102, line: 55, baseType: !65)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "app_id", scope: !97, file: !92, line: 345, baseType: !109, size: 64, align: 64, offset: 256)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "retc", scope: !97, file: !92, line: 347, baseType: !106, size: 16, align: 16, offset: 320)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "attn", scope: !97, file: !92, line: 348, baseType: !106, size: 16, align: 16, offset: 336)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !97, file: !92, line: 349, baseType: !101, size: 32, align: 32, offset: 352)
!114 = !DILocation(line: 260, column: 25, scope: !34)
!115 = !DILocalVariable(name: "env", scope: !34, file: !32, line: 261, type: !20)
!116 = !DILocation(line: 261, column: 8, scope: !34)
!117 = !DILocalVariable(name: "pext", scope: !34, file: !32, line: 262, type: !20)
!118 = !DILocation(line: 262, column: 8, scope: !34)
!119 = !DILocalVariable(name: "rbf_size", scope: !34, file: !32, line: 263, type: !63)
!120 = !DILocation(line: 263, column: 9, scope: !34)
!121 = !DILocation(line: 265, column: 2, scope: !34)
!122 = !DILocation(line: 266, column: 6, scope: !34)
!123 = !DILocation(line: 266, column: 16, scope: !34)
!124 = !DILocation(line: 268, column: 2, scope: !34)
!125 = !DILocalVariable(name: "option_index", scope: !126, file: !32, line: 269, type: !23)
!126 = distinct !DILexicalBlock(scope: !34, file: !32, line: 268, column: 12)
!127 = !DILocation(line: 269, column: 7, scope: !126)
!128 = !DILocation(line: 284, column: 20, scope: !126)
!129 = !DILocation(line: 284, column: 26, scope: !126)
!130 = !DILocation(line: 284, column: 8, scope: !126)
!131 = !DILocation(line: 284, column: 6, scope: !126)
!132 = !DILocation(line: 286, column: 7, scope: !133)
!133 = distinct !DILexicalBlock(scope: !126, file: !32, line: 286, column: 7)
!134 = !DILocation(line: 286, column: 10, scope: !133)
!135 = !DILocation(line: 286, column: 7, scope: !126)
!136 = !DILocation(line: 287, column: 4, scope: !133)
!137 = !DILocation(line: 289, column: 11, scope: !126)
!138 = !DILocation(line: 289, column: 3, scope: !126)
!139 = !DILocation(line: 292, column: 21, scope: !140)
!140 = distinct !DILexicalBlock(scope: !126, file: !32, line: 289, column: 15)
!141 = !DILocation(line: 292, column: 14, scope: !140)
!142 = !DILocation(line: 292, column: 12, scope: !140)
!143 = !DILocation(line: 293, column: 4, scope: !140)
!144 = !DILocation(line: 296, column: 16, scope: !140)
!145 = !DILocation(line: 296, column: 8, scope: !140)
!146 = !DILocation(line: 296, column: 14, scope: !140)
!147 = !DILocation(line: 297, column: 4, scope: !140)
!148 = !DILocation(line: 299, column: 21, scope: !140)
!149 = !DILocation(line: 299, column: 20, scope: !140)
!150 = !DILocation(line: 299, column: 8, scope: !140)
!151 = !DILocation(line: 299, column: 18, scope: !140)
!152 = !DILocation(line: 300, column: 4, scope: !140)
!153 = !DILocation(line: 302, column: 20, scope: !140)
!154 = !DILocation(line: 302, column: 13, scope: !140)
!155 = !DILocation(line: 302, column: 11, scope: !140)
!156 = !DILocation(line: 303, column: 4, scope: !140)
!157 = !DILocation(line: 305, column: 10, scope: !140)
!158 = !DILocation(line: 305, column: 4, scope: !140)
!159 = !DILocation(line: 306, column: 4, scope: !140)
!160 = !DILocation(line: 309, column: 19, scope: !140)
!161 = !DILocation(line: 309, column: 4, scope: !140)
!162 = !DILocation(line: 310, column: 4, scope: !140)
!163 = !DILocation(line: 312, column: 16, scope: !140)
!164 = !DILocation(line: 313, column: 4, scope: !140)
!165 = !DILocation(line: 315, column: 10, scope: !140)
!166 = !DILocation(line: 315, column: 4, scope: !140)
!167 = !DILocation(line: 316, column: 4, scope: !140)
!168 = !DILocation(line: 268, column: 2, scope: !169)
!169 = !DILexicalBlockFile(scope: !34, file: !32, discriminator: 1)
!170 = distinct !{!170, !124}
!171 = !DILocation(line: 320, column: 6, scope: !172)
!172 = distinct !DILexicalBlock(scope: !34, file: !32, line: 320, column: 6)
!173 = !DILocation(line: 320, column: 15, scope: !172)
!174 = !DILocation(line: 320, column: 13, scope: !172)
!175 = !DILocation(line: 320, column: 6, scope: !34)
!176 = !DILocation(line: 321, column: 26, scope: !172)
!177 = !DILocation(line: 321, column: 15, scope: !172)
!178 = !DILocation(line: 321, column: 7, scope: !172)
!179 = !DILocation(line: 321, column: 13, scope: !172)
!180 = !DILocation(line: 321, column: 3, scope: !172)
!181 = !DILocation(line: 323, column: 6, scope: !182)
!182 = distinct !DILexicalBlock(scope: !34, file: !32, line: 323, column: 6)
!183 = !DILocation(line: 323, column: 16, scope: !182)
!184 = !DILocation(line: 323, column: 13, scope: !182)
!185 = !DILocation(line: 323, column: 6, scope: !34)
!186 = !DILocation(line: 324, column: 9, scope: !187)
!187 = distinct !DILexicalBlock(scope: !182, file: !32, line: 323, column: 22)
!188 = !DILocation(line: 324, column: 3, scope: !187)
!189 = !DILocation(line: 325, column: 3, scope: !187)
!190 = !DILocation(line: 328, column: 24, scope: !34)
!191 = !DILocation(line: 328, column: 2, scope: !34)
!192 = !DILocation(line: 331, column: 8, scope: !34)
!193 = !DILocation(line: 331, column: 6, scope: !34)
!194 = !DILocation(line: 332, column: 7, scope: !195)
!195 = distinct !DILexicalBlock(scope: !34, file: !32, line: 332, column: 6)
!196 = !DILocation(line: 332, column: 6, scope: !195)
!197 = !DILocation(line: 332, column: 12, scope: !195)
!198 = !DILocation(line: 332, column: 21, scope: !199)
!199 = !DILexicalBlockFile(scope: !195, file: !32, discriminator: 1)
!200 = !DILocation(line: 332, column: 16, scope: !199)
!201 = !DILocation(line: 332, column: 26, scope: !199)
!202 = !DILocation(line: 332, column: 6, scope: !199)
!203 = !DILocation(line: 333, column: 3, scope: !204)
!204 = distinct !DILexicalBlock(scope: !195, file: !32, line: 332, column: 32)
!205 = distinct !{!205, !203}
!206 = !DILocation(line: 333, column: 2, scope: !207)
!207 = !DILexicalBlockFile(scope: !208, file: !32, discriminator: 1)
!208 = distinct !DILexicalBlock(scope: !204, file: !32, line: 333, column: 6)
!209 = !DILocation(line: 333, column: 8, scope: !207)
!210 = !DILocation(line: 333, column: 83, scope: !207)
!211 = !DILocation(line: 334, column: 3, scope: !204)
!212 = !DILocation(line: 337, column: 17, scope: !34)
!213 = !DILocation(line: 337, column: 2, scope: !34)
!214 = !DILocation(line: 338, column: 2, scope: !34)
!215 = !DILocation(line: 340, column: 13, scope: !34)
!216 = !DILocation(line: 340, column: 11, scope: !34)
!217 = !DILocation(line: 341, column: 39, scope: !34)
!218 = !DILocation(line: 341, column: 34, scope: !34)
!219 = !DILocation(line: 341, column: 2, scope: !34)
!220 = !DILocation(line: 342, column: 10, scope: !221)
!221 = distinct !DILexicalBlock(scope: !34, file: !32, line: 342, column: 6)
!222 = !DILocation(line: 342, column: 18, scope: !221)
!223 = !DILocation(line: 342, column: 6, scope: !34)
!224 = !DILocation(line: 343, column: 17, scope: !221)
!225 = !DILocation(line: 343, column: 7, scope: !221)
!226 = !DILocation(line: 343, column: 15, scope: !221)
!227 = !DILocation(line: 343, column: 3, scope: !221)
!228 = !DILocation(line: 346, column: 10, scope: !229)
!229 = distinct !DILexicalBlock(scope: !34, file: !32, line: 346, column: 6)
!230 = !DILocation(line: 346, column: 16, scope: !229)
!231 = !DILocation(line: 346, column: 6, scope: !34)
!232 = !DILocation(line: 347, column: 3, scope: !233)
!233 = distinct !DILexicalBlock(scope: !229, file: !32, line: 346, column: 24)
!234 = distinct !{!234, !232}
!235 = !DILocation(line: 347, column: 2, scope: !236)
!236 = !DILexicalBlockFile(scope: !237, file: !32, discriminator: 1)
!237 = distinct !DILexicalBlock(scope: !233, file: !32, line: 347, column: 6)
!238 = !DILocation(line: 347, column: 8, scope: !236)
!239 = !DILocation(line: 347, column: 73, scope: !236)
!240 = !DILocation(line: 348, column: 3, scope: !233)
!241 = !DILocation(line: 351, column: 21, scope: !34)
!242 = !DILocation(line: 351, column: 9, scope: !34)
!243 = !DILocation(line: 351, column: 7, scope: !34)
!244 = !DILocation(line: 352, column: 7, scope: !245)
!245 = distinct !DILexicalBlock(scope: !34, file: !32, line: 352, column: 6)
!246 = !DILocation(line: 352, column: 13, scope: !245)
!247 = !DILocation(line: 352, column: 18, scope: !248)
!248 = !DILexicalBlockFile(scope: !245, file: !32, discriminator: 1)
!249 = !DILocation(line: 352, column: 23, scope: !248)
!250 = !DILocation(line: 352, column: 31, scope: !248)
!251 = !DILocation(line: 352, column: 43, scope: !252)
!252 = !DILexicalBlockFile(scope: !245, file: !32, discriminator: 2)
!253 = !DILocation(line: 352, column: 35, scope: !252)
!254 = !DILocation(line: 352, column: 60, scope: !252)
!255 = !DILocation(line: 352, column: 6, scope: !252)
!256 = !DILocation(line: 353, column: 3, scope: !257)
!257 = distinct !DILexicalBlock(scope: !245, file: !32, line: 352, column: 68)
!258 = distinct !{!258, !256}
!259 = !DILocation(line: 353, column: 2, scope: !260)
!260 = !DILexicalBlockFile(scope: !261, file: !32, discriminator: 1)
!261 = distinct !DILexicalBlock(scope: !257, file: !32, line: 353, column: 6)
!262 = !DILocation(line: 353, column: 81, scope: !260)
!263 = !DILocation(line: 353, column: 8, scope: !260)
!264 = !DILocation(line: 353, column: 89, scope: !260)
!265 = !DILocation(line: 354, column: 3, scope: !257)
!266 = !DILocation(line: 358, column: 10, scope: !267)
!267 = distinct !DILexicalBlock(scope: !34, file: !32, line: 358, column: 6)
!268 = !DILocation(line: 358, column: 6, scope: !267)
!269 = !DILocation(line: 358, column: 20, scope: !267)
!270 = !DILocation(line: 358, column: 27, scope: !267)
!271 = !DILocation(line: 358, column: 34, scope: !272)
!272 = !DILexicalBlockFile(scope: !267, file: !32, discriminator: 1)
!273 = !DILocation(line: 358, column: 30, scope: !272)
!274 = !DILocation(line: 358, column: 44, scope: !272)
!275 = !DILocation(line: 358, column: 6, scope: !272)
!276 = !DILocation(line: 359, column: 3, scope: !277)
!277 = distinct !DILexicalBlock(scope: !267, file: !32, line: 358, column: 52)
!278 = distinct !{!278, !276}
!279 = !DILocation(line: 359, column: 2, scope: !280)
!280 = !DILexicalBlockFile(scope: !281, file: !32, discriminator: 1)
!281 = distinct !DILexicalBlock(scope: !277, file: !32, line: 359, column: 6)
!282 = !DILocation(line: 359, column: 6, scope: !280)
!283 = !DILocation(line: 359, column: 23, scope: !280)
!284 = !DILocation(line: 359, column: 3, scope: !280)
!285 = !DILocation(line: 359, column: 5, scope: !280)
!286 = !DILocation(line: 359, column: 4, scope: !280)
!287 = !DILocation(line: 359, column: 8, scope: !288)
!288 = !DILexicalBlockFile(scope: !281, file: !32, discriminator: 2)
!289 = !DILocation(line: 359, column: 4, scope: !288)
!290 = !DILocation(line: 359, column: 2, scope: !288)
!291 = !DILocation(line: 359, column: 2, scope: !292)
!292 = !DILexicalBlockFile(scope: !281, file: !32, discriminator: 3)
!293 = !DILocation(line: 359, column: 2, scope: !294)
!294 = !DILexicalBlockFile(scope: !281, file: !32, discriminator: 4)
!295 = !DILocation(line: 359, column: 8, scope: !294)
!296 = !DILocation(line: 359, column: 26, scope: !294)
!297 = !DILocation(line: 361, column: 3, scope: !277)
!298 = !DILocation(line: 365, column: 26, scope: !34)
!299 = !DILocation(line: 365, column: 9, scope: !34)
!300 = !DILocation(line: 365, column: 7, scope: !34)
!301 = !DILocation(line: 367, column: 6, scope: !302)
!302 = distinct !DILexicalBlock(scope: !34, file: !32, line: 367, column: 6)
!303 = !DILocation(line: 367, column: 11, scope: !302)
!304 = !DILocation(line: 367, column: 6, scope: !34)
!305 = !DILocation(line: 368, column: 3, scope: !306)
!306 = distinct !DILexicalBlock(scope: !302, file: !32, line: 367, column: 19)
!307 = distinct !{!307, !305}
!308 = !DILocation(line: 368, column: 2, scope: !309)
!309 = !DILexicalBlockFile(scope: !310, file: !32, discriminator: 1)
!310 = distinct !DILexicalBlock(scope: !306, file: !32, line: 368, column: 6)
!311 = !DILocation(line: 368, column: 80, scope: !309)
!312 = !DILocation(line: 368, column: 89, scope: !309)
!313 = !DILocation(line: 368, column: 8, scope: !309)
!314 = !DILocation(line: 368, column: 100, scope: !309)
!315 = !DILocation(line: 369, column: 3, scope: !306)
!316 = !DILocation(line: 373, column: 6, scope: !317)
!317 = distinct !DILexicalBlock(scope: !34, file: !32, line: 373, column: 6)
!318 = !DILocation(line: 373, column: 6, scope: !34)
!319 = !DILocation(line: 374, column: 11, scope: !320)
!320 = distinct !DILexicalBlock(scope: !321, file: !32, line: 374, column: 7)
!321 = distinct !DILexicalBlock(scope: !317, file: !32, line: 373, column: 17)
!322 = !DILocation(line: 374, column: 19, scope: !320)
!323 = !DILocation(line: 374, column: 7, scope: !321)
!324 = !DILocation(line: 375, column: 4, scope: !325)
!325 = distinct !DILexicalBlock(scope: !320, file: !32, line: 374, column: 25)
!326 = distinct !{!326, !324}
!327 = !DILocation(line: 375, column: 3, scope: !328)
!328 = !DILexicalBlockFile(scope: !329, file: !32, discriminator: 1)
!329 = distinct !DILexicalBlock(scope: !325, file: !32, line: 375, column: 7)
!330 = !DILocation(line: 375, column: 9, scope: !328)
!331 = !DILocation(line: 375, column: 84, scope: !328)
!332 = !DILocation(line: 376, column: 7, scope: !325)
!333 = !DILocation(line: 377, column: 4, scope: !325)
!334 = !DILocation(line: 379, column: 26, scope: !321)
!335 = !DILocation(line: 379, column: 8, scope: !321)
!336 = !DILocation(line: 379, column: 6, scope: !321)
!337 = !DILocation(line: 380, column: 7, scope: !338)
!338 = distinct !DILexicalBlock(scope: !321, file: !32, line: 380, column: 7)
!339 = !DILocation(line: 380, column: 10, scope: !338)
!340 = !DILocation(line: 380, column: 7, scope: !321)
!341 = !DILocalVariable(name: "xerrno", scope: !342, file: !32, line: 381, type: !23)
!342 = distinct !DILexicalBlock(scope: !338, file: !32, line: 380, column: 15)
!343 = !DILocation(line: 381, column: 8, scope: !342)
!344 = !DILocation(line: 381, column: 18, scope: !342)
!345 = !DILocation(line: 381, column: 17, scope: !342)
!346 = !DILocation(line: 383, column: 4, scope: !342)
!347 = distinct !{!347, !346}
!348 = !DILocation(line: 383, column: 3, scope: !349)
!349 = !DILexicalBlockFile(scope: !350, file: !32, discriminator: 1)
!350 = distinct !DILexicalBlock(scope: !342, file: !32, line: 383, column: 7)
!351 = !DILocation(line: 383, column: 20, scope: !349)
!352 = !DILocation(line: 383, column: 6, scope: !349)
!353 = !DILocation(line: 383, column: 25, scope: !349)
!354 = !DILocation(line: 383, column: 42, scope: !349)
!355 = !DILocation(line: 383, column: 33, scope: !356)
!356 = !DILexicalBlockFile(scope: !349, file: !32, discriminator: 2)
!357 = !DILocation(line: 383, column: 9, scope: !358)
!358 = !DILexicalBlockFile(scope: !349, file: !32, discriminator: 3)
!359 = !DILocation(line: 383, column: 52, scope: !349)
!360 = !DILocation(line: 386, column: 33, scope: !342)
!361 = !DILocation(line: 386, column: 29, scope: !342)
!362 = !DILocation(line: 386, column: 43, scope: !342)
!363 = !DILocation(line: 386, column: 39, scope: !342)
!364 = !DILocation(line: 387, column: 12, scope: !342)
!365 = !DILocation(line: 386, column: 4, scope: !342)
!366 = !DILocation(line: 388, column: 7, scope: !342)
!367 = !DILocation(line: 389, column: 4, scope: !342)
!368 = !DILocation(line: 391, column: 2, scope: !321)
!369 = !DILocalVariable(name: "s", scope: !370, file: !32, line: 392, type: !371)
!370 = distinct !DILexicalBlock(scope: !317, file: !32, line: 391, column: 9)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !372, line: 46, size: 1152, align: 64, elements: !373)
!372 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop")
!373 = !{!374, !376, !378, !380, !382, !384, !386, !387, !388, !390, !392, !394, !402, !403, !404}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !371, file: !372, line: 48, baseType: !375, size: 64, align: 64)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !28, line: 124, baseType: !65)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !371, file: !372, line: 53, baseType: !377, size: 64, align: 64, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !28, line: 127, baseType: !65)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !371, file: !372, line: 61, baseType: !379, size: 64, align: 64, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !28, line: 130, baseType: !65)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !371, file: !372, line: 62, baseType: !381, size: 32, align: 32, offset: 192)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !28, line: 129, baseType: !103)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !371, file: !372, line: 64, baseType: !383, size: 32, align: 32, offset: 224)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !28, line: 125, baseType: !103)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !371, file: !372, line: 65, baseType: !385, size: 32, align: 32, offset: 256)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !28, line: 126, baseType: !103)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !371, file: !372, line: 67, baseType: !23, size: 32, align: 32, offset: 288)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !371, file: !372, line: 69, baseType: !375, size: 64, align: 64, offset: 320)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !371, file: !372, line: 74, baseType: !389, size: 64, align: 64, offset: 384)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !28, line: 131, baseType: !29)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !371, file: !372, line: 78, baseType: !391, size: 64, align: 64, offset: 448)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !28, line: 153, baseType: !29)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !371, file: !372, line: 80, baseType: !393, size: 64, align: 64, offset: 512)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !28, line: 158, baseType: !29)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !371, file: !372, line: 91, baseType: !395, size: 128, align: 64, offset: 576)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !396, line: 120, size: 128, align: 64, elements: !397)
!396 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop")
!397 = !{!398, !400}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !395, file: !396, line: 122, baseType: !399, size: 64, align: 64)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !28, line: 139, baseType: !29)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !395, file: !396, line: 123, baseType: !401, size: 64, align: 64, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !28, line: 175, baseType: !29)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !371, file: !372, line: 92, baseType: !395, size: 128, align: 64, offset: 704)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !371, file: !372, line: 93, baseType: !395, size: 128, align: 64, offset: 832)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !371, file: !372, line: 106, baseType: !405, size: 192, align: 64, offset: 960)
!405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !401, size: 192, align: 64, elements: !406)
!406 = !{!407}
!407 = !DISubrange(count: 3)
!408 = !DILocation(line: 392, column: 15, scope: !370)
!409 = !DILocation(line: 394, column: 18, scope: !370)
!410 = !DILocation(line: 394, column: 8, scope: !370)
!411 = !DILocation(line: 394, column: 6, scope: !370)
!412 = !DILocation(line: 395, column: 7, scope: !413)
!413 = distinct !DILexicalBlock(scope: !370, file: !32, line: 395, column: 7)
!414 = !DILocation(line: 395, column: 10, scope: !413)
!415 = !DILocation(line: 395, column: 7, scope: !370)
!416 = !DILocation(line: 396, column: 4, scope: !417)
!417 = distinct !DILexicalBlock(scope: !413, file: !32, line: 395, column: 16)
!418 = distinct !{!418, !416}
!419 = !DILocation(line: 396, column: 3, scope: !420)
!420 = !DILexicalBlockFile(scope: !421, file: !32, discriminator: 1)
!421 = distinct !DILexicalBlock(scope: !417, file: !32, line: 396, column: 7)
!422 = !DILocation(line: 396, column: 71, scope: !420)
!423 = !DILocation(line: 396, column: 9, scope: !420)
!424 = !DILocation(line: 396, column: 79, scope: !420)
!425 = !DILocation(line: 397, column: 7, scope: !417)
!426 = !DILocation(line: 398, column: 4, scope: !417)
!427 = !DILocation(line: 401, column: 8, scope: !428)
!428 = distinct !DILexicalBlock(scope: !370, file: !32, line: 401, column: 7)
!429 = !DILocation(line: 401, column: 14, scope: !428)
!430 = !DILocation(line: 401, column: 20, scope: !431)
!431 = !DILexicalBlockFile(scope: !428, file: !32, discriminator: 1)
!432 = !DILocation(line: 401, column: 44, scope: !431)
!433 = !DILocation(line: 401, column: 31, scope: !431)
!434 = !DILocation(line: 401, column: 28, scope: !431)
!435 = !DILocation(line: 401, column: 7, scope: !431)
!436 = !DILocation(line: 402, column: 4, scope: !437)
!437 = distinct !DILexicalBlock(scope: !428, file: !32, line: 401, column: 54)
!438 = distinct !{!438, !436}
!439 = !DILocation(line: 402, column: 3, scope: !440)
!440 = !DILexicalBlockFile(scope: !441, file: !32, discriminator: 1)
!441 = distinct !DILexicalBlock(scope: !437, file: !32, line: 402, column: 7)
!442 = !DILocation(line: 402, column: 13, scope: !440)
!443 = !DILocation(line: 402, column: 6, scope: !440)
!444 = !DILocation(line: 402, column: 26, scope: !440)
!445 = !DILocation(line: 402, column: 9, scope: !440)
!446 = !DILocation(line: 402, column: 36, scope: !440)
!447 = !DILocation(line: 405, column: 7, scope: !437)
!448 = !DILocation(line: 406, column: 4, scope: !437)
!449 = !DILocation(line: 409, column: 28, scope: !370)
!450 = !DILocation(line: 409, column: 40, scope: !370)
!451 = !DILocation(line: 409, column: 8, scope: !370)
!452 = !DILocation(line: 409, column: 6, scope: !370)
!453 = !DILocation(line: 410, column: 7, scope: !454)
!454 = distinct !DILexicalBlock(scope: !370, file: !32, line: 410, column: 7)
!455 = !DILocation(line: 410, column: 10, scope: !454)
!456 = !DILocation(line: 410, column: 7, scope: !370)
!457 = !DILocalVariable(name: "xerrno", scope: !458, file: !32, line: 411, type: !23)
!458 = distinct !DILexicalBlock(scope: !454, file: !32, line: 410, column: 15)
!459 = !DILocation(line: 411, column: 8, scope: !458)
!460 = !DILocation(line: 411, column: 18, scope: !458)
!461 = !DILocation(line: 411, column: 17, scope: !458)
!462 = !DILocation(line: 413, column: 8, scope: !463)
!463 = distinct !DILexicalBlock(scope: !458, file: !32, line: 413, column: 8)
!464 = !DILocation(line: 413, column: 15, scope: !463)
!465 = !DILocation(line: 413, column: 8, scope: !458)
!466 = !DILocation(line: 414, column: 5, scope: !467)
!467 = distinct !DILexicalBlock(scope: !463, file: !32, line: 413, column: 25)
!468 = distinct !{!468, !466}
!469 = !DILocation(line: 414, column: 14, scope: !470)
!470 = !DILexicalBlockFile(scope: !471, file: !32, discriminator: 1)
!471 = distinct !DILexicalBlock(scope: !472, file: !32, line: 414, column: 14)
!472 = distinct !DILexicalBlock(scope: !467, file: !32, line: 414, column: 8)
!473 = !DILocation(line: 414, column: 4, scope: !474)
!474 = !DILexicalBlockFile(scope: !471, file: !32, discriminator: 2)
!475 = !DILocation(line: 414, column: 28, scope: !474)
!476 = !DILocation(line: 414, column: 74, scope: !477)
!477 = !DILexicalBlockFile(scope: !472, file: !32, discriminator: 3)
!478 = !DILocation(line: 416, column: 8, scope: !467)
!479 = !DILocation(line: 417, column: 5, scope: !467)
!480 = !DILocation(line: 419, column: 4, scope: !458)
!481 = distinct !{!481, !480}
!482 = !DILocation(line: 419, column: 3, scope: !483)
!483 = !DILexicalBlockFile(scope: !484, file: !32, discriminator: 1)
!484 = distinct !DILexicalBlock(scope: !458, file: !32, line: 419, column: 7)
!485 = !DILocation(line: 419, column: 20, scope: !483)
!486 = !DILocation(line: 419, column: 6, scope: !483)
!487 = !DILocation(line: 419, column: 25, scope: !483)
!488 = !DILocation(line: 419, column: 42, scope: !483)
!489 = !DILocation(line: 419, column: 33, scope: !490)
!490 = !DILexicalBlockFile(scope: !483, file: !32, discriminator: 2)
!491 = !DILocation(line: 419, column: 9, scope: !492)
!492 = !DILexicalBlockFile(scope: !483, file: !32, discriminator: 3)
!493 = !DILocation(line: 419, column: 52, scope: !483)
!494 = !DILocation(line: 426, column: 33, scope: !458)
!495 = !DILocation(line: 426, column: 29, scope: !458)
!496 = !DILocation(line: 426, column: 43, scope: !458)
!497 = !DILocation(line: 426, column: 39, scope: !458)
!498 = !DILocation(line: 427, column: 12, scope: !458)
!499 = !DILocation(line: 426, column: 4, scope: !458)
!500 = !DILocation(line: 428, column: 7, scope: !458)
!501 = !DILocation(line: 429, column: 3, scope: !458)
!502 = !DILocation(line: 373, column: 6, scope: !503)
!503 = !DILexicalBlockFile(scope: !317, file: !32, discriminator: 1)
!504 = !DILocation(line: 433, column: 20, scope: !34)
!505 = !DILocation(line: 433, column: 2, scope: !34)
!506 = !DILocation(line: 434, column: 6, scope: !507)
!507 = distinct !DILexicalBlock(scope: !34, file: !32, line: 434, column: 6)
!508 = !DILocation(line: 434, column: 9, scope: !507)
!509 = !DILocation(line: 434, column: 6, scope: !34)
!510 = !DILocation(line: 435, column: 3, scope: !507)
!511 = !DILocation(line: 436, column: 7, scope: !34)
!512 = !DILocation(line: 436, column: 2, scope: !34)
!513 = !DILocation(line: 437, column: 1, scope: !34)
!514 = distinct !DISubprogram(name: "usage", scope: !32, file: !32, line: 134, type: !515, isLocal: true, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !37)
!515 = !DISubroutineType(types: !516)
!516 = !{null, !43}
!517 = !DILocalVariable(name: "prog", arg: 1, scope: !514, file: !32, line: 134, type: !43)
!518 = !DILocation(line: 134, column: 31, scope: !514)
!519 = !DILocation(line: 158, column: 9, scope: !514)
!520 = !DILocation(line: 158, column: 15, scope: !514)
!521 = !DILocation(line: 158, column: 21, scope: !514)
!522 = !DILocation(line: 136, column: 2, scope: !514)
!523 = !DILocation(line: 159, column: 1, scope: !514)
!524 = distinct !DISubprogram(name: "read_card_type", scope: !32, file: !32, line: 79, type: !525, isLocal: true, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !37)
!525 = !DISubroutineType(types: !526)
!526 = !{!23, !23}
!527 = !DILocalVariable(name: "card_no", arg: 1, scope: !524, file: !32, line: 79, type: !23)
!528 = !DILocation(line: 79, column: 31, scope: !524)
!529 = !DILocalVariable(name: "rc", scope: !524, file: !32, line: 81, type: !23)
!530 = !DILocation(line: 81, column: 6, scope: !524)
!531 = !DILocalVariable(name: "sysfs", scope: !524, file: !32, line: 82, type: !53)
!532 = !DILocation(line: 82, column: 7, scope: !524)
!533 = !DILocalVariable(name: "fp", scope: !524, file: !32, line: 83, type: !534)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64, align: 64)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !26, line: 48, baseType: !536)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !537, line: 241, size: 1728, align: 64, elements: !538)
!537 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop")
!538 = !{!539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !559, !560, !561, !562, !563, !564, !566, !570, !573, !575, !576, !577, !578, !579, !580, !581}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !536, file: !537, line: 242, baseType: !23, size: 32, align: 32)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !536, file: !537, line: 247, baseType: !20, size: 64, align: 64, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !536, file: !537, line: 248, baseType: !20, size: 64, align: 64, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !536, file: !537, line: 249, baseType: !20, size: 64, align: 64, offset: 192)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !536, file: !537, line: 250, baseType: !20, size: 64, align: 64, offset: 256)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !536, file: !537, line: 251, baseType: !20, size: 64, align: 64, offset: 320)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !536, file: !537, line: 252, baseType: !20, size: 64, align: 64, offset: 384)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !536, file: !537, line: 253, baseType: !20, size: 64, align: 64, offset: 448)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !536, file: !537, line: 254, baseType: !20, size: 64, align: 64, offset: 512)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !536, file: !537, line: 256, baseType: !20, size: 64, align: 64, offset: 576)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !536, file: !537, line: 257, baseType: !20, size: 64, align: 64, offset: 640)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !536, file: !537, line: 258, baseType: !20, size: 64, align: 64, offset: 704)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !536, file: !537, line: 260, baseType: !552, size: 64, align: 64, offset: 768)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64, align: 64)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !537, line: 156, size: 192, align: 64, elements: !554)
!554 = !{!555, !556, !558}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !553, file: !537, line: 157, baseType: !552, size: 64, align: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !553, file: !537, line: 158, baseType: !557, size: 64, align: 64, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64, align: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !553, file: !537, line: 162, baseType: !23, size: 32, align: 32, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !536, file: !537, line: 262, baseType: !557, size: 64, align: 64, offset: 832)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !536, file: !537, line: 264, baseType: !23, size: 32, align: 32, offset: 896)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !536, file: !537, line: 268, baseType: !23, size: 32, align: 32, offset: 928)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !536, file: !537, line: 270, baseType: !389, size: 64, align: 64, offset: 960)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !536, file: !537, line: 274, baseType: !24, size: 16, align: 16, offset: 1024)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !536, file: !537, line: 275, baseType: !565, size: 8, align: 8, offset: 1040)
!565 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !536, file: !537, line: 276, baseType: !567, size: 8, align: 8, offset: 1048)
!567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 8, align: 8, elements: !568)
!568 = !{!569}
!569 = !DISubrange(count: 1)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !536, file: !537, line: 280, baseType: !571, size: 64, align: 64, offset: 1088)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64, align: 64)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !537, line: 150, baseType: null)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !536, file: !537, line: 289, baseType: !574, size: 64, align: 64, offset: 1152)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !28, line: 132, baseType: !29)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !536, file: !537, line: 297, baseType: !22, size: 64, align: 64, offset: 1216)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !536, file: !537, line: 298, baseType: !22, size: 64, align: 64, offset: 1280)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !536, file: !537, line: 299, baseType: !22, size: 64, align: 64, offset: 1344)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !536, file: !537, line: 300, baseType: !22, size: 64, align: 64, offset: 1408)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !536, file: !537, line: 302, baseType: !63, size: 64, align: 64, offset: 1472)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !536, file: !537, line: 303, baseType: !23, size: 32, align: 32, offset: 1536)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !536, file: !537, line: 305, baseType: !582, size: 160, align: 8, offset: 1568)
!582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 160, align: 8, elements: !583)
!583 = !{!584}
!584 = !DISubrange(count: 20)
!585 = !DILocation(line: 83, column: 8, scope: !524)
!586 = !DILocation(line: 85, column: 11, scope: !524)
!587 = !DILocation(line: 85, column: 85, scope: !524)
!588 = !DILocation(line: 85, column: 2, scope: !524)
!589 = !DILocation(line: 86, column: 30, scope: !524)
!590 = !DILocation(line: 88, column: 13, scope: !524)
!591 = !DILocation(line: 88, column: 7, scope: !524)
!592 = !DILocation(line: 88, column: 5, scope: !524)
!593 = !DILocation(line: 89, column: 6, scope: !594)
!594 = distinct !DILexicalBlock(scope: !524, file: !32, line: 89, column: 6)
!595 = !DILocation(line: 89, column: 9, scope: !594)
!596 = !DILocation(line: 89, column: 6, scope: !524)
!597 = !DILocation(line: 90, column: 3, scope: !594)
!598 = !DILocation(line: 92, column: 48, scope: !524)
!599 = !DILocation(line: 92, column: 7, scope: !524)
!600 = !DILocation(line: 92, column: 5, scope: !524)
!601 = !DILocation(line: 93, column: 35, scope: !524)
!602 = !DILocation(line: 94, column: 6, scope: !603)
!603 = distinct !DILexicalBlock(scope: !524, file: !32, line: 94, column: 6)
!604 = !DILocation(line: 94, column: 9, scope: !603)
!605 = !DILocation(line: 94, column: 6, scope: !524)
!606 = !DILocation(line: 95, column: 10, scope: !607)
!607 = distinct !DILexicalBlock(scope: !603, file: !32, line: 94, column: 15)
!608 = !DILocation(line: 95, column: 3, scope: !607)
!609 = !DILocation(line: 96, column: 3, scope: !607)
!610 = !DILocation(line: 99, column: 13, scope: !524)
!611 = !DILocation(line: 99, column: 31, scope: !524)
!612 = !DILocation(line: 99, column: 2, scope: !524)
!613 = !DILocation(line: 99, column: 35, scope: !524)
!614 = !DILocation(line: 100, column: 9, scope: !524)
!615 = !DILocation(line: 100, column: 2, scope: !524)
!616 = !DILocation(line: 101, column: 2, scope: !524)
!617 = !DILocation(line: 102, column: 1, scope: !524)
!618 = distinct !DISubprogram(name: "get_rbf_size", scope: !32, file: !32, line: 63, type: !619, isLocal: true, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !37)
!619 = !DISubroutineType(types: !620)
!620 = !{!63, !20}
!621 = !DILocalVariable(name: "card_type", arg: 1, scope: !618, file: !32, line: 63, type: !20)
!622 = !DILocation(line: 63, column: 34, scope: !618)
!623 = !DILocalVariable(name: "t", scope: !618, file: !32, line: 65, type: !624)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!625 = !DILocation(line: 65, column: 28, scope: !618)
!626 = !DILocation(line: 67, column: 9, scope: !627)
!627 = distinct !DILexicalBlock(scope: !618, file: !32, line: 67, column: 2)
!628 = !DILocation(line: 67, column: 7, scope: !627)
!629 = !DILocation(line: 67, column: 27, scope: !630)
!630 = !DILexicalBlockFile(scope: !631, file: !32, discriminator: 1)
!631 = distinct !DILexicalBlock(scope: !627, file: !32, line: 67, column: 2)
!632 = !DILocation(line: 67, column: 30, scope: !630)
!633 = !DILocation(line: 67, column: 38, scope: !630)
!634 = !DILocation(line: 67, column: 2, scope: !630)
!635 = !DILocation(line: 68, column: 14, scope: !636)
!636 = distinct !DILexicalBlock(scope: !637, file: !32, line: 68, column: 7)
!637 = distinct !DILexicalBlock(scope: !631, file: !32, line: 67, column: 51)
!638 = !DILocation(line: 68, column: 25, scope: !636)
!639 = !DILocation(line: 68, column: 28, scope: !636)
!640 = !DILocation(line: 68, column: 7, scope: !636)
!641 = !DILocation(line: 68, column: 37, scope: !636)
!642 = !DILocation(line: 68, column: 7, scope: !637)
!643 = !DILocation(line: 69, column: 11, scope: !636)
!644 = !DILocation(line: 69, column: 14, scope: !636)
!645 = !DILocation(line: 69, column: 4, scope: !636)
!646 = !DILocation(line: 70, column: 2, scope: !637)
!647 = !DILocation(line: 67, column: 47, scope: !648)
!648 = !DILexicalBlockFile(scope: !631, file: !32, discriminator: 2)
!649 = !DILocation(line: 67, column: 2, scope: !648)
!650 = distinct !{!650, !651}
!651 = !DILocation(line: 67, column: 2, scope: !618)
!652 = !DILocation(line: 71, column: 2, scope: !618)
!653 = !DILocation(line: 72, column: 1, scope: !618)
!654 = distinct !DISubprogram(name: "print_move_flash_results", scope: !32, file: !32, line: 161, type: !655, isLocal: true, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !37)
!655 = !DISubroutineType(types: !656)
!656 = !{null, !23, !23, !23}
!657 = !DILocalVariable(name: "retc", arg: 1, scope: !654, file: !32, line: 161, type: !23)
!658 = !DILocation(line: 161, column: 42, scope: !654)
!659 = !DILocalVariable(name: "attn", arg: 2, scope: !654, file: !32, line: 161, type: !23)
!660 = !DILocation(line: 161, column: 52, scope: !654)
!661 = !DILocalVariable(name: "progress", arg: 3, scope: !654, file: !32, line: 161, type: !23)
!662 = !DILocation(line: 161, column: 62, scope: !654)
!663 = !DILocation(line: 163, column: 25, scope: !654)
!664 = !DILocation(line: 163, column: 2, scope: !654)
!665 = !DILocation(line: 164, column: 24, scope: !654)
!666 = !DILocation(line: 164, column: 2, scope: !654)
!667 = !DILocation(line: 165, column: 10, scope: !654)
!668 = !DILocation(line: 165, column: 2, scope: !654)
!669 = !DILocation(line: 167, column: 3, scope: !670)
!670 = distinct !DILexicalBlock(scope: !654, file: !32, line: 165, column: 16)
!671 = !DILocation(line: 168, column: 3, scope: !670)
!672 = !DILocation(line: 170, column: 3, scope: !670)
!673 = !DILocation(line: 171, column: 3, scope: !670)
!674 = !DILocation(line: 173, column: 3, scope: !670)
!675 = !DILocation(line: 174, column: 3, scope: !670)
!676 = !DILocation(line: 176, column: 3, scope: !670)
!677 = !DILocation(line: 177, column: 3, scope: !670)
!678 = !DILocation(line: 179, column: 3, scope: !670)
!679 = !DILocation(line: 180, column: 3, scope: !670)
!680 = !DILocation(line: 182, column: 3, scope: !670)
!681 = !DILocation(line: 183, column: 3, scope: !670)
!682 = !DILocation(line: 185, column: 3, scope: !670)
!683 = !DILocation(line: 187, column: 3, scope: !670)
!684 = !DILocation(line: 189, column: 3, scope: !670)
!685 = !DILocation(line: 190, column: 3, scope: !670)
!686 = !DILocation(line: 192, column: 3, scope: !670)
!687 = !DILocation(line: 193, column: 3, scope: !670)
!688 = !DILocation(line: 195, column: 3, scope: !670)
!689 = !DILocation(line: 197, column: 3, scope: !670)
!690 = !DILocation(line: 199, column: 3, scope: !670)
!691 = !DILocation(line: 200, column: 3, scope: !670)
!692 = !DILocation(line: 202, column: 3, scope: !670)
!693 = !DILocation(line: 203, column: 3, scope: !670)
!694 = !DILocation(line: 205, column: 3, scope: !670)
!695 = !DILocation(line: 206, column: 3, scope: !670)
!696 = !DILocation(line: 208, column: 3, scope: !670)
!697 = !DILocation(line: 209, column: 3, scope: !670)
!698 = !DILocation(line: 211, column: 3, scope: !670)
!699 = !DILocation(line: 212, column: 3, scope: !670)
!700 = !DILocation(line: 214, column: 3, scope: !670)
!701 = !DILocation(line: 215, column: 3, scope: !670)
!702 = !DILocation(line: 217, column: 3, scope: !670)
!703 = !DILocation(line: 218, column: 3, scope: !670)
!704 = !DILocation(line: 220, column: 3, scope: !670)
!705 = !DILocation(line: 221, column: 3, scope: !670)
!706 = !DILocation(line: 223, column: 3, scope: !670)
!707 = !DILocation(line: 224, column: 3, scope: !670)
!708 = !DILocation(line: 226, column: 3, scope: !670)
!709 = !DILocation(line: 227, column: 3, scope: !670)
!710 = !DILocation(line: 229, column: 28, scope: !654)
!711 = !DILocation(line: 229, column: 2, scope: !654)
!712 = !DILocation(line: 230, column: 10, scope: !654)
!713 = !DILocation(line: 230, column: 2, scope: !654)
!714 = !DILocation(line: 232, column: 3, scope: !715)
!715 = distinct !DILexicalBlock(scope: !654, file: !32, line: 230, column: 20)
!716 = !DILocation(line: 233, column: 3, scope: !715)
!717 = !DILocation(line: 235, column: 3, scope: !715)
!718 = !DILocation(line: 236, column: 3, scope: !715)
!719 = !DILocation(line: 238, column: 3, scope: !715)
!720 = !DILocation(line: 239, column: 3, scope: !715)
!721 = !DILocation(line: 241, column: 3, scope: !715)
!722 = !DILocation(line: 242, column: 3, scope: !715)
!723 = !DILocation(line: 244, column: 3, scope: !715)
!724 = !DILocation(line: 245, column: 3, scope: !715)
!725 = !DILocation(line: 247, column: 1, scope: !654)
