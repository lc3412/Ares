; ModuleID = '/home/lichi/Desktop/genwqe/[task]tools--genwqe_cksum/[inter]tools--genwqe_cksum.o.i'
source_filename = "/home/lichi/Desktop/genwqe/[task]tools--genwqe_cksum/[inter]tools--genwqe_cksum.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.card_dev_t = type opaque
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.ddcb_cmd = type { i64, i64, i8, i8, i8, i8, i16, i16, i16, i16, i32, i64, i64, i64, i64, [64 x i8], %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i64, [96 x i8] }
%struct.asv_runtime_dma_error = type { i64, i32, i16, i16, i64, i64, i64, i32, i16, i16, i64, i64 }
%struct.asiv_memcpy = type { i64, i32, i32, i64, i32, i32, [4 x i64], i16, i16, i32, [3 x i64] }
%struct.asv_memcpy = type { [2 x i64], i32, i32, i32, i32, [4 x i64] }

@verbose_flag = global i32 0, align 4
@main.long_options = internal global [12 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 1, i32* null, i32 67 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 1, i32* null, i32 65 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 1, i32* null, i32 88 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 0, i32* null, i32 71 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i32 0, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 0, i32* null, i32 86 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 0, i32* null, i32 68 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"card\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"accel\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"use-sglist\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"use-adler32\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"check-result\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"bufsize\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"acC:X:Gs:A:vDVh\00", align 1
@optarg = external global i8*, align 8
@.str.12 = private unnamed_addr constant [4 x i8] c"RED\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"GENWQE\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"CAPI\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@version = internal global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0), align 8
@debug_flag = internal global i32 0, align 4
@stdout = external global %struct._IO_FILE*, align 8
@.str.16 = private unnamed_addr constant [58 x i8] c"I have to set Option -G set when in redundant card mode!\0A\00", align 1
@.str.17 = private unnamed_addr constant [55 x i8] c"Err: (card: %d type: %d) Faild to open card:%s/%d; %s\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.18 = private unnamed_addr constant [38 x i8] c"%s:%u: Error: cannot allocate memory\0A\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"genwqe_cksum.c\00", align 1
@optind = external global i32, align 4
@.str.20 = private unnamed_addr constant [714 x i8] c"Usage: %s [-h] [-v, --verbose] [-C, --card <cardno>|RED]\0A\09-C, --card <cardno> use cardno for operation (default 0)\0A\09-A, --accel <GENWQE|CAPI> select accelerator type (CAPI only for ppc64le)\0A\09-V, --version show software version\0A\09-X, --cpu <cpu_number> only run on this CPU number\0A\09-D, --debug create extended debug data on failure\0A\09-G, --use-sglist use the scatter gather list support\0A\09-c, --check-result check result against the software\0A\09-s, --bufsize <bufsize> default is %d KiB\0A\09-a, --adler32 use adler32 instead of crc32\0A\09FILE...\0A\0AThis utility sends memcopy/checksum DDCBs to the application\0Achip unit. The CRC32 is compatible to zlib. The UNIX program\0Acksum is using a different variation of the algorithm.\0A\0A\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"KiB\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"MiB\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"GiB\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"4.0.20-5-g2944\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"err: stat on input file (%s)\0A\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.27 = private unnamed_addr constant [49 x i8] c"%s:%u: Error: err: can't open input file %s: %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [49 x i8] c"%s:%u: Error: err: can't read input file %s: %s\0A\00", align 1
@.str.29 = private unnamed_addr constant [51 x i8] c"\0Aerr: CKSUM DDCB failed, %s (%d)\0A     errno=%d %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [117 x i8] c"  RETC: %03x %s ATTN: %x PROGR: %x\0A  from card CRC32: %08x ADLER: %08x\0A  DEQUEUE=%016llx CMPLT=%016llx DISP=%016llx\0A\00", align 1
@.str.31 = private unnamed_addr constant [121 x i8] c" raddr: %016llx rfmt/chan/disc: %08x rdmae: %04x rsge: %04x\0A waddr: %016llx wfmt/chan/disc: %08x wdmae: %04x wsge: %04x\0A\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"%u %llu %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"err: CRCs do not match %u != %u\0A\00", align 1
@.str.34 = private unnamed_addr constant [28 x i8] c"ATS: 0x%llx use_sglist: %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"Src:  %p\0A\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"Dest: %p\0A\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"Len: 0x%x\0A\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"\0A Dump Data @ %p\0A\00", align 1
@.str.39 = private unnamed_addr constant [53 x i8] c"  crc32=%u adler32=%u inp_processed=%u in %lld usec\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32, i8**) #0 !dbg !297 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.card_dev_t*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !319, metadata !320), !dbg !321
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !322, metadata !320), !dbg !323
  call void @llvm.dbg.declare(metadata i32* %6, metadata !324, metadata !320), !dbg !325
  store i32 0, i32* %6, align 4, !dbg !325
  call void @llvm.dbg.declare(metadata i32* %7, metadata !326, metadata !320), !dbg !327
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %8, metadata !328, metadata !320), !dbg !333
  call void @llvm.dbg.declare(metadata i8** %9, metadata !334, metadata !320), !dbg !338
  call void @llvm.dbg.declare(metadata i8** %10, metadata !339, metadata !320), !dbg !340
  call void @llvm.dbg.declare(metadata i32* %11, metadata !341, metadata !320), !dbg !342
  %21 = call i64 @sysconf(i32 30) #9, !dbg !343
  %22 = trunc i64 %21 to i32, !dbg !343
  store i32 %22, i32* %11, align 4, !dbg !342
  call void @llvm.dbg.declare(metadata i8** %12, metadata !344, metadata !320), !dbg !345
  store i8* null, i8** %12, align 8, !dbg !345
  call void @llvm.dbg.declare(metadata i32* %13, metadata !346, metadata !320), !dbg !347
  store i32 -1, i32* %13, align 4, !dbg !347
  call void @llvm.dbg.declare(metadata i32* %14, metadata !348, metadata !320), !dbg !349
  store i32 0, i32* %14, align 4, !dbg !349
  call void @llvm.dbg.declare(metadata i32* %15, metadata !350, metadata !320), !dbg !351
  store i32 0, i32* %15, align 4, !dbg !351
  call void @llvm.dbg.declare(metadata i32* %16, metadata !352, metadata !320), !dbg !353
  store i32 0, i32* %16, align 4, !dbg !353
  call void @llvm.dbg.declare(metadata i32* %17, metadata !354, metadata !320), !dbg !355
  store i32 0, i32* %17, align 4, !dbg !355
  call void @llvm.dbg.declare(metadata i32* %18, metadata !356, metadata !320), !dbg !357
  store i32 1048576, i32* %18, align 4, !dbg !357
  br label %23, !dbg !358

; <label>:23:                                     ; preds = %2, %97
  call void @llvm.dbg.declare(metadata i32* %19, metadata !359, metadata !320), !dbg !361
  call void @llvm.dbg.declare(metadata i32* %20, metadata !362, metadata !320), !dbg !363
  store i32 0, i32* %20, align 4, !dbg !363
  %24 = load i32, i32* %4, align 4, !dbg !364
  %25 = load i8**, i8*** %5, align 8, !dbg !365
  %26 = call i32 @getopt_long(i32 %24, i8** %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), %struct.option* getelementptr inbounds ([12 x %struct.option], [12 x %struct.option]* @main.long_options, i32 0, i32 0), i32* %20) #9, !dbg !366
  store i32 %26, i32* %19, align 4, !dbg !367
  %27 = load i32, i32* %19, align 4, !dbg !368
  %28 = icmp eq i32 %27, -1, !dbg !370
  br i1 %28, label %29, label %30, !dbg !371

; <label>:29:                                     ; preds = %23
  br label %98, !dbg !372

; <label>:30:                                     ; preds = %23
  %31 = load i32, i32* %19, align 4, !dbg !373
  switch i32 %31, label %93 [
    i32 67, label %32
    i32 65, label %41
    i32 88, label %65
    i32 71, label %69
    i32 97, label %72
    i32 99, label %73
    i32 115, label %76
    i32 104, label %80
    i32 86, label %84
    i32 68, label %87
    i32 118, label %90
  ], !dbg !374

; <label>:32:                                     ; preds = %30
  %33 = load i8*, i8** @optarg, align 8, !dbg !375
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)) #10, !dbg !378
  %35 = icmp eq i32 %34, 0, !dbg !379
  br i1 %35, label %36, label %37, !dbg !380

; <label>:36:                                     ; preds = %32
  store i32 -1, i32* %6, align 4, !dbg !381
  br label %97, !dbg !383

; <label>:37:                                     ; preds = %32
  %38 = load i8*, i8** @optarg, align 8, !dbg !384
  %39 = call i64 @strtol(i8* %38, i8** null, i32 0) #9, !dbg !385
  %40 = trunc i64 %39 to i32, !dbg !385
  store i32 %40, i32* %6, align 4, !dbg !386
  br label %97, !dbg !387

; <label>:41:                                     ; preds = %30
  %42 = load i8*, i8** @optarg, align 8, !dbg !388
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0)) #10, !dbg !390
  %44 = icmp eq i32 %43, 0, !dbg !391
  br i1 %44, label %45, label %46, !dbg !392

; <label>:45:                                     ; preds = %41
  store i32 0, i32* %14, align 4, !dbg !393
  br label %97, !dbg !395

; <label>:46:                                     ; preds = %41
  %47 = load i8*, i8** @optarg, align 8, !dbg !396
  %48 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0)) #10, !dbg !398
  %49 = icmp eq i32 %48, 0, !dbg !399
  br i1 %49, label %50, label %51, !dbg !400

; <label>:50:                                     ; preds = %46
  store i32 2, i32* %14, align 4, !dbg !401
  br label %97, !dbg !403

; <label>:51:                                     ; preds = %46
  %52 = load i8*, i8** @optarg, align 8, !dbg !404
  %53 = call i64 @strtol(i8* %52, i8** null, i32 0) #9, !dbg !405
  %54 = trunc i64 %53 to i32, !dbg !405
  store i32 %54, i32* %14, align 4, !dbg !406
  %55 = load i32, i32* %14, align 4, !dbg !407
  %56 = icmp ne i32 0, %55, !dbg !409
  br i1 %56, label %57, label %64, !dbg !410

; <label>:57:                                     ; preds = %51
  %58 = load i32, i32* %14, align 4, !dbg !411
  %59 = icmp ne i32 2, %58, !dbg !412
  br i1 %59, label %60, label %64, !dbg !413

; <label>:60:                                     ; preds = %57
  %61 = load i8**, i8*** %5, align 8, !dbg !415
  %62 = getelementptr inbounds i8*, i8** %61, i64 0, !dbg !415
  %63 = load i8*, i8** %62, align 8, !dbg !415
  call void @usage(i8* %63), !dbg !417
  call void @exit(i32 1) #11, !dbg !418
  unreachable, !dbg !418

; <label>:64:                                     ; preds = %57, %51
  br label %97, !dbg !419

; <label>:65:                                     ; preds = %30
  %66 = load i8*, i8** @optarg, align 8, !dbg !420
  %67 = call i64 @strtoul(i8* %66, i8** null, i32 0) #9, !dbg !421
  %68 = trunc i64 %67 to i32, !dbg !421
  store i32 %68, i32* %13, align 4, !dbg !422
  br label %97, !dbg !423

; <label>:69:                                     ; preds = %30
  %70 = load i32, i32* %16, align 4, !dbg !424
  %71 = add nsw i32 %70, 1, !dbg !424
  store i32 %71, i32* %16, align 4, !dbg !424
  br label %97, !dbg !425

; <label>:72:                                     ; preds = %30
  store i32 1, i32* %17, align 4, !dbg !426
  br label %97, !dbg !427

; <label>:73:                                     ; preds = %30
  %74 = load i32, i32* %15, align 4, !dbg !428
  %75 = add nsw i32 %74, 1, !dbg !428
  store i32 %75, i32* %15, align 4, !dbg !428
  br label %97, !dbg !429

; <label>:76:                                     ; preds = %30
  %77 = load i8*, i8** @optarg, align 8, !dbg !430
  %78 = call i64 @str_to_num(i8* %77), !dbg !431
  %79 = trunc i64 %78 to i32, !dbg !431
  store i32 %79, i32* %18, align 4, !dbg !432
  br label %97, !dbg !433

; <label>:80:                                     ; preds = %30
  %81 = load i8**, i8*** %5, align 8, !dbg !434
  %82 = getelementptr inbounds i8*, i8** %81, i64 0, !dbg !434
  %83 = load i8*, i8** %82, align 8, !dbg !434
  call void @usage(i8* %83), !dbg !435
  call void @exit(i32 0) #11, !dbg !436
  unreachable, !dbg !436

; <label>:84:                                     ; preds = %30
  %85 = load i8*, i8** @version, align 8, !dbg !437
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* %85), !dbg !438
  call void @exit(i32 0) #11, !dbg !439
  unreachable, !dbg !439

; <label>:87:                                     ; preds = %30
  %88 = load i32, i32* @debug_flag, align 4, !dbg !440
  %89 = add nsw i32 %88, 1, !dbg !440
  store i32 %89, i32* @debug_flag, align 4, !dbg !440
  br label %97, !dbg !441

; <label>:90:                                     ; preds = %30
  %91 = load i32, i32* @verbose_flag, align 4, !dbg !442
  %92 = add nsw i32 %91, 1, !dbg !442
  store i32 %92, i32* @verbose_flag, align 4, !dbg !442
  br label %97, !dbg !443

; <label>:93:                                     ; preds = %30
  %94 = load i8**, i8*** %5, align 8, !dbg !444
  %95 = getelementptr inbounds i8*, i8** %94, i64 0, !dbg !444
  %96 = load i8*, i8** %95, align 8, !dbg !444
  call void @usage(i8* %96), !dbg !445
  call void @exit(i32 1) #11, !dbg !446
  unreachable, !dbg !446

; <label>:97:                                     ; preds = %90, %87, %76, %73, %72, %69, %65, %64, %50, %45, %37, %36
  br label %23, !dbg !447, !llvm.loop !449

; <label>:98:                                     ; preds = %29
  %99 = load i32, i32* %13, align 4, !dbg !450
  %100 = load i32, i32* @verbose_flag, align 4, !dbg !451
  %101 = call i32 @switch_cpu(i32 %99, i32 %100), !dbg !452
  %102 = load i32, i32* @verbose_flag, align 4, !dbg !453
  %103 = sub nsw i32 %102, 1, !dbg !454
  call void @ddcb_debug(i32 %103), !dbg !455
  %104 = load i32, i32* @verbose_flag, align 4, !dbg !456
  call void @genwqe_card_lib_debug(i32 %104), !dbg !457
  %105 = load i32, i32* %6, align 4, !dbg !458
  %106 = icmp eq i32 -1, %105, !dbg !460
  br i1 %106, label %107, label %120, !dbg !461

; <label>:107:                                    ; preds = %98
  %108 = load i32, i32* %16, align 4, !dbg !462
  %109 = icmp ne i32 1, %108, !dbg !465
  br i1 %109, label %110, label %119, !dbg !466

; <label>:110:                                    ; preds = %107
  br label %111, !dbg !467, !llvm.loop !469

; <label>:111:                                    ; preds = %110
  %112 = load i32, i32* @verbose_flag, align 4, !dbg !470
  %113 = icmp ne i32 %112, 0, !dbg !470
  br i1 %113, label %114, label %117, !dbg !470

; <label>:114:                                    ; preds = %111
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !474
  %116 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %115, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.16, i32 0, i32 0)), !dbg !476
  br label %117, !dbg !476

; <label>:117:                                    ; preds = %114, %111
  br label %118, !dbg !477

; <label>:118:                                    ; preds = %117
  store i32 1, i32* %16, align 4, !dbg !479
  br label %119, !dbg !480

; <label>:119:                                    ; preds = %118, %107
  br label %120, !dbg !481

; <label>:120:                                    ; preds = %119, %98
  %121 = load i32, i32* %6, align 4, !dbg !482
  %122 = load i32, i32* %14, align 4, !dbg !483
  %123 = call %struct.card_dev_t* @accel_open(i32 %121, i32 %122, i32 12, i32* %7, i64 0, i64 0), !dbg !484
  store %struct.card_dev_t* %123, %struct.card_dev_t** %8, align 8, !dbg !485
  %124 = load %struct.card_dev_t*, %struct.card_dev_t** %8, align 8, !dbg !486
  %125 = icmp eq %struct.card_dev_t* %124, null, !dbg !488
  br i1 %125, label %126, label %136, !dbg !489

; <label>:126:                                    ; preds = %120
  %127 = load i32, i32* %6, align 4, !dbg !490
  %128 = load i32, i32* %14, align 4, !dbg !492
  %129 = load i32, i32* %7, align 4, !dbg !493
  %130 = call i8* @card_strerror(i32 %129), !dbg !494
  %131 = load i32, i32* %7, align 4, !dbg !495
  %132 = call i32* @__errno_location() #1, !dbg !496
  %133 = load i32, i32* %132, align 4, !dbg !498
  %134 = call i8* @strerror(i32 %133) #9, !dbg !499
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.17, i32 0, i32 0), i32 %127, i32 %128, i8* %130, i32 %131, i8* %134), !dbg !501
  call void @exit(i32 1) #11, !dbg !502
  unreachable, !dbg !502

; <label>:136:                                    ; preds = %120
  %137 = load i32, i32* %16, align 4, !dbg !503
  %138 = icmp ne i32 %137, 0, !dbg !503
  br i1 %138, label %139, label %164, !dbg !505

; <label>:139:                                    ; preds = %136
  %140 = load i32, i32* %11, align 4, !dbg !506
  %141 = zext i32 %140 to i64, !dbg !506
  %142 = load i32, i32* %18, align 4, !dbg !508
  %143 = sext i32 %142 to i64, !dbg !508
  %144 = call noalias i8* @memalign(i64 %141, i64 %143) #9, !dbg !509
  store i8* %144, i8** %9, align 8, !dbg !510
  %145 = load i32, i32* %11, align 4, !dbg !511
  %146 = zext i32 %145 to i64, !dbg !511
  %147 = load i32, i32* %18, align 4, !dbg !512
  %148 = sext i32 %147 to i64, !dbg !512
  %149 = call noalias i8* @memalign(i64 %146, i64 %148) #9, !dbg !513
  store i8* %149, i8** %10, align 8, !dbg !514
  %150 = load i32, i32* %16, align 4, !dbg !515
  %151 = icmp sgt i32 %150, 1, !dbg !517
  br i1 %151, label %152, label %163, !dbg !518

; <label>:152:                                    ; preds = %139
  %153 = load %struct.card_dev_t*, %struct.card_dev_t** %8, align 8, !dbg !519
  %154 = load i8*, i8** %9, align 8, !dbg !521
  %155 = load i32, i32* %18, align 4, !dbg !522
  %156 = sext i32 %155 to i64, !dbg !522
  %157 = call i32 @accel_pin_memory(%struct.card_dev_t* %153, i8* %154, i64 %156, i32 0), !dbg !523
  %158 = load %struct.card_dev_t*, %struct.card_dev_t** %8, align 8, !dbg !524
  %159 = load i8*, i8** %10, align 8, !dbg !525
  %160 = load i32, i32* %18, align 4, !dbg !526
  %161 = sext i32 %160 to i64, !dbg !526
  %162 = call i32 @accel_pin_memory(%struct.card_dev_t* %158, i8* %159, i64 %161, i32 0), !dbg !527
  br label %163, !dbg !528

; <label>:163:                                    ; preds = %152, %139
  br label %173, !dbg !529

; <label>:164:                                    ; preds = %136
  %165 = load %struct.card_dev_t*, %struct.card_dev_t** %8, align 8, !dbg !530
  %166 = load i32, i32* %18, align 4, !dbg !532
  %167 = sext i32 %166 to i64, !dbg !532
  %168 = call i8* @accel_malloc(%struct.card_dev_t* %165, i64 %167), !dbg !533
  store i8* %168, i8** %9, align 8, !dbg !534
  %169 = load %struct.card_dev_t*, %struct.card_dev_t** %8, align 8, !dbg !535
  %170 = load i32, i32* %18, align 4, !dbg !536
  %171 = sext i32 %170 to i64, !dbg !536
  %172 = call i8* @accel_malloc(%struct.card_dev_t* %169, i64 %171), !dbg !537
  store i8* %172, i8** %10, align 8, !dbg !538
  br label %173

; <label>:173:                                    ; preds = %164, %163
  %174 = load i8*, i8** %9, align 8, !dbg !539
  %175 = icmp eq i8* %174, null, !dbg !541
  br i1 %175, label %179, label %176, !dbg !542

; <label>:176:                                    ; preds = %173
  %177 = load i8*, i8** %10, align 8, !dbg !543
  %178 = icmp eq i8* %177, null, !dbg !545
  br i1 %178, label %179, label %184, !dbg !546

; <label>:179:                                    ; preds = %176, %173
  br label %180, !dbg !547, !llvm.loop !549

; <label>:180:                                    ; preds = %179
  %181 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !550
  %182 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %181, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i32 426), !dbg !553
  br label %183, !dbg !554

; <label>:183:                                    ; preds = %180
  call void @exit(i32 1) #11, !dbg !555
  unreachable, !dbg !555

; <label>:184:                                    ; preds = %176
  br label %185, !dbg !556

; <label>:185:                                    ; preds = %189, %184
  %186 = load i32, i32* @optind, align 4, !dbg !557
  %187 = load i32, i32* %4, align 4, !dbg !558
  %188 = icmp slt i32 %186, %187, !dbg !559
  br i1 %188, label %189, label %205, !dbg !560

; <label>:189:                                    ; preds = %185
  %190 = load i32, i32* @optind, align 4, !dbg !561
  %191 = add nsw i32 %190, 1, !dbg !561
  store i32 %191, i32* @optind, align 4, !dbg !561
  %192 = sext i32 %190 to i64, !dbg !563
  %193 = load i8**, i8*** %5, align 8, !dbg !563
  %194 = getelementptr inbounds i8*, i8** %193, i64 %192, !dbg !563
  %195 = load i8*, i8** %194, align 8, !dbg !563
  store i8* %195, i8** %12, align 8, !dbg !564
  %196 = load %struct.card_dev_t*, %struct.card_dev_t** %8, align 8, !dbg !565
  %197 = load i8*, i8** %12, align 8, !dbg !566
  %198 = load i8*, i8** %9, align 8, !dbg !567
  %199 = load i8*, i8** %10, align 8, !dbg !568
  %200 = load i32, i32* %18, align 4, !dbg !569
  %201 = load i32, i32* %15, align 4, !dbg !570
  %202 = load i32, i32* %16, align 4, !dbg !571
  %203 = load i32, i32* %17, align 4, !dbg !572
  %204 = call i32 @process_in_file(%struct.card_dev_t* %196, i8* %197, i8* %198, i8* %199, i32 %200, i32 %201, i32 %202, i32 %203), !dbg !573
  br label %185, !dbg !574, !llvm.loop !576

; <label>:205:                                    ; preds = %185
  %206 = load i32, i32* %16, align 4, !dbg !577
  %207 = icmp ne i32 %206, 0, !dbg !577
  br i1 %207, label %208, label %225, !dbg !579

; <label>:208:                                    ; preds = %205
  %209 = load i32, i32* %16, align 4, !dbg !580
  %210 = icmp sgt i32 %209, 1, !dbg !583
  br i1 %210, label %211, label %222, !dbg !584

; <label>:211:                                    ; preds = %208
  %212 = load %struct.card_dev_t*, %struct.card_dev_t** %8, align 8, !dbg !585
  %213 = load i8*, i8** %9, align 8, !dbg !587
  %214 = load i32, i32* %18, align 4, !dbg !588
  %215 = sext i32 %214 to i64, !dbg !588
  %216 = call i32 @accel_unpin_memory(%struct.card_dev_t* %212, i8* %213, i64 %215), !dbg !589
  %217 = load %struct.card_dev_t*, %struct.card_dev_t** %8, align 8, !dbg !590
  %218 = load i8*, i8** %10, align 8, !dbg !591
  %219 = load i32, i32* %18, align 4, !dbg !592
  %220 = sext i32 %219 to i64, !dbg !592
  %221 = call i32 @accel_unpin_memory(%struct.card_dev_t* %217, i8* %218, i64 %220), !dbg !593
  br label %222, !dbg !594

; <label>:222:                                    ; preds = %211, %208
  %223 = load i8*, i8** %9, align 8, !dbg !595
  call void @free(i8* %223) #9, !dbg !596
  %224 = load i8*, i8** %10, align 8, !dbg !597
  call void @free(i8* %224) #9, !dbg !598
  br label %236, !dbg !599

; <label>:225:                                    ; preds = %205
  %226 = load %struct.card_dev_t*, %struct.card_dev_t** %8, align 8, !dbg !600
  %227 = load i8*, i8** %9, align 8, !dbg !602
  %228 = load i32, i32* %18, align 4, !dbg !603
  %229 = sext i32 %228 to i64, !dbg !603
  %230 = call i32 @accel_free(%struct.card_dev_t* %226, i8* %227, i64 %229), !dbg !604
  %231 = load %struct.card_dev_t*, %struct.card_dev_t** %8, align 8, !dbg !605
  %232 = load i8*, i8** %10, align 8, !dbg !606
  %233 = load i32, i32* %18, align 4, !dbg !607
  %234 = sext i32 %233 to i64, !dbg !607
  %235 = call i32 @accel_free(%struct.card_dev_t* %231, i8* %232, i64 %234), !dbg !608
  br label %236

; <label>:236:                                    ; preds = %225, %222
  %237 = load %struct.card_dev_t*, %struct.card_dev_t** %8, align 8, !dbg !609
  %238 = call i32 @accel_close(%struct.card_dev_t* %237), !dbg !610
  call void @exit(i32 0) #11, !dbg !611
  unreachable, !dbg !611
                                                  ; No predecessors!
  %240 = load i32, i32* %3, align 4, !dbg !612
  ret i32 %240, !dbg !612
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i64 @sysconf(i32) #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #2

; Function Attrs: nounwind uwtable
define internal void @usage(i8*) #0 !dbg !613 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !616, metadata !320), !dbg !617
  %3 = load i8*, i8** %2, align 8, !dbg !618
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([714 x i8], [714 x i8]* @.str.20, i32 0, i32 0), i8* %3, i32 1024), !dbg !619
  ret void, !dbg !620
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind
declare i64 @strtoul(i8*, i8**, i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @str_to_num(i8*) #5 !dbg !621 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !624, metadata !320), !dbg !625
  call void @llvm.dbg.declare(metadata i8** %4, metadata !626, metadata !320), !dbg !627
  %6 = load i8*, i8** %3, align 8, !dbg !628
  store i8* %6, i8** %4, align 8, !dbg !627
  call void @llvm.dbg.declare(metadata i64* %5, metadata !629, metadata !320), !dbg !630
  %7 = load i8*, i8** %4, align 8, !dbg !631
  %8 = call i64 @strtoull(i8* %7, i8** %4, i32 0) #9, !dbg !632
  store i64 %8, i64* %5, align 8, !dbg !630
  %9 = load i8*, i8** %4, align 8, !dbg !633
  %10 = load i8, i8* %9, align 1, !dbg !635
  %11 = sext i8 %10 to i32, !dbg !635
  %12 = icmp eq i32 %11, 0, !dbg !636
  br i1 %12, label %13, label %15, !dbg !637

; <label>:13:                                     ; preds = %1
  %14 = load i64, i64* %5, align 8, !dbg !638
  store i64 %14, i64* %2, align 8, !dbg !639
  br label %40, !dbg !639

; <label>:15:                                     ; preds = %1
  %16 = load i8*, i8** %4, align 8, !dbg !640
  %17 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0)) #10, !dbg !642
  %18 = icmp eq i32 %17, 0, !dbg !643
  br i1 %18, label %19, label %22, !dbg !644

; <label>:19:                                     ; preds = %15
  %20 = load i64, i64* %5, align 8, !dbg !645
  %21 = mul i64 %20, 1024, !dbg !645
  store i64 %21, i64* %5, align 8, !dbg !645
  br label %38, !dbg !646

; <label>:22:                                     ; preds = %15
  %23 = load i8*, i8** %4, align 8, !dbg !647
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0)) #10, !dbg !649
  %25 = icmp eq i32 %24, 0, !dbg !650
  br i1 %25, label %26, label %29, !dbg !651

; <label>:26:                                     ; preds = %22
  %27 = load i64, i64* %5, align 8, !dbg !652
  %28 = mul i64 %27, 1048576, !dbg !652
  store i64 %28, i64* %5, align 8, !dbg !652
  br label %37, !dbg !653

; <label>:29:                                     ; preds = %22
  %30 = load i8*, i8** %4, align 8, !dbg !654
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0)) #10, !dbg !656
  %32 = icmp eq i32 %31, 0, !dbg !657
  br i1 %32, label %33, label %36, !dbg !658

; <label>:33:                                     ; preds = %29
  %34 = load i64, i64* %5, align 8, !dbg !659
  %35 = mul i64 %34, 1073741824, !dbg !659
  store i64 %35, i64* %5, align 8, !dbg !659
  br label %36, !dbg !660

; <label>:36:                                     ; preds = %33, %29
  br label %37

; <label>:37:                                     ; preds = %36, %26
  br label %38

; <label>:38:                                     ; preds = %37, %19
  %39 = load i64, i64* %5, align 8, !dbg !661
  store i64 %39, i64* %2, align 8, !dbg !662
  br label %40, !dbg !662

; <label>:40:                                     ; preds = %38, %13
  %41 = load i64, i64* %2, align 8, !dbg !663
  ret i64 %41, !dbg !663
}

declare i32 @printf(i8*, ...) #6

declare i32 @switch_cpu(i32, i32) #6

declare void @ddcb_debug(i32) #6

declare void @genwqe_card_lib_debug(i32) #6

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #6

declare %struct.card_dev_t* @accel_open(i32, i32, i32, i32*, i64, i64) #6

declare i8* @card_strerror(i32) #6

; Function Attrs: nounwind
declare i8* @strerror(i32) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #7

; Function Attrs: nounwind
declare noalias i8* @memalign(i64, i64) #2

declare i32 @accel_pin_memory(%struct.card_dev_t*, i8*, i64, i32) #6

declare i8* @accel_malloc(%struct.card_dev_t*, i64) #6

; Function Attrs: nounwind uwtable
define internal i32 @process_in_file(%struct.card_dev_t*, i8*, i8*, i8*, i32, i32, i32, i32) #0 !dbg !664 {
  %9 = alloca %struct.card_dev_t*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.stat, align 8
  %20 = alloca %struct._IO_FILE*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.ddcb_cmd, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.asv_runtime_dma_error*, align 8
  store %struct.card_dev_t* %0, %struct.card_dev_t** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %9, metadata !667, metadata !320), !dbg !668
  store i8* %1, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !669, metadata !320), !dbg !670
  store i8* %2, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !671, metadata !320), !dbg !672
  store i8* %3, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !673, metadata !320), !dbg !674
  store i32 %4, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !675, metadata !320), !dbg !676
  store i32 %5, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !677, metadata !320), !dbg !678
  store i32 %6, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !679, metadata !320), !dbg !680
  store i32 %7, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !681, metadata !320), !dbg !682
  call void @llvm.dbg.declare(metadata i32* %17, metadata !683, metadata !320), !dbg !684
  call void @llvm.dbg.declare(metadata i32* %18, metadata !685, metadata !320), !dbg !686
  call void @llvm.dbg.declare(metadata %struct.stat* %19, metadata !687, metadata !320), !dbg !725
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %20, metadata !726, metadata !320), !dbg !781
  call void @llvm.dbg.declare(metadata i32* %21, metadata !782, metadata !320), !dbg !783
  store i32 0, i32* %21, align 4, !dbg !783
  call void @llvm.dbg.declare(metadata i32* %22, metadata !784, metadata !320), !dbg !785
  store i32 0, i32* %22, align 4, !dbg !785
  call void @llvm.dbg.declare(metadata i32* %23, metadata !786, metadata !320), !dbg !787
  store i32 1, i32* %23, align 4, !dbg !787
  call void @llvm.dbg.declare(metadata i32* %24, metadata !788, metadata !320), !dbg !789
  call void @llvm.dbg.declare(metadata %struct.ddcb_cmd* %25, metadata !790, metadata !320), !dbg !828
  call void @llvm.dbg.declare(metadata i32* %26, metadata !829, metadata !320), !dbg !830
  %32 = load i32, i32* %14, align 4, !dbg !831
  %33 = icmp ne i32 %32, 0, !dbg !831
  br i1 %33, label %34, label %37, !dbg !833

; <label>:34:                                     ; preds = %8
  %35 = call i64 @crc32(i64 0, i8* null, i32 0), !dbg !834
  %36 = trunc i64 %35 to i32, !dbg !834
  store i32 %36, i32* %21, align 4, !dbg !835
  br label %37, !dbg !836

; <label>:37:                                     ; preds = %34, %8
  %38 = load i8*, i8** %10, align 8, !dbg !837
  %39 = call i32 @stat(i8* %38, %struct.stat* %19) #9, !dbg !839
  %40 = icmp eq i32 %39, -1, !dbg !840
  br i1 %40, label %41, label %47, !dbg !841

; <label>:41:                                     ; preds = %37
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !842
  %43 = call i32* @__errno_location() #1, !dbg !844
  %44 = load i32, i32* %43, align 4, !dbg !845
  %45 = call i8* @strerror(i32 %44) #9, !dbg !846
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i32 0, i32 0), i8* %45), !dbg !848
  call void @exit(i32 79) #11, !dbg !849
  unreachable, !dbg !849

; <label>:47:                                     ; preds = %37
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %19, i32 0, i32 8, !dbg !850
  %49 = load i64, i64* %48, align 8, !dbg !850
  %50 = trunc i64 %49 to i32, !dbg !851
  store i32 %50, i32* %18, align 4, !dbg !852
  %51 = load i8*, i8** %10, align 8, !dbg !853
  %52 = call %struct._IO_FILE* @fopen(i8* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0)), !dbg !854
  store %struct._IO_FILE* %52, %struct._IO_FILE** %20, align 8, !dbg !855
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %20, align 8, !dbg !856
  %54 = icmp ne %struct._IO_FILE* %53, null, !dbg !856
  br i1 %54, label %64, label %55, !dbg !858

; <label>:55:                                     ; preds = %47
  br label %56, !dbg !859, !llvm.loop !861

; <label>:56:                                     ; preds = %55
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !862
  %58 = load i8*, i8** %10, align 8, !dbg !865
  %59 = call i32* @__errno_location() #1, !dbg !866
  %60 = load i32, i32* %59, align 4, !dbg !867
  %61 = call i8* @strerror(i32 %60) #9, !dbg !868
  %62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i32 201, i8* %58, i8* %61), !dbg !870
  br label %63, !dbg !872

; <label>:63:                                     ; preds = %56
  call void @exit(i32 79) #11, !dbg !873
  unreachable, !dbg !873

; <label>:64:                                     ; preds = %47
  br label %65, !dbg !874

; <label>:65:                                     ; preds = %235, %64
  %66 = load i32, i32* %18, align 4, !dbg !875
  %67 = icmp ne i32 %66, 0, !dbg !877
  br i1 %67, label %68, label %239, !dbg !877

; <label>:68:                                     ; preds = %65
  call void @llvm.dbg.declare(metadata i32* %27, metadata !878, metadata !320), !dbg !880
  call void @llvm.dbg.declare(metadata i32* %28, metadata !881, metadata !320), !dbg !883
  %69 = load i32, i32* %13, align 4, !dbg !884
  store i32 %69, i32* %28, align 4, !dbg !883
  call void @llvm.dbg.declare(metadata i32* %29, metadata !885, metadata !320), !dbg !886
  %70 = load i32, i32* %18, align 4, !dbg !887
  store i32 %70, i32* %29, align 4, !dbg !886
  %71 = load i32, i32* %28, align 4, !dbg !888
  %72 = load i32, i32* %29, align 4, !dbg !889
  %73 = icmp slt i32 %71, %72, !dbg !890
  br i1 %73, label %74, label %76, !dbg !888

; <label>:74:                                     ; preds = %68
  %75 = load i32, i32* %28, align 4, !dbg !891
  br label %78, !dbg !893

; <label>:76:                                     ; preds = %68
  %77 = load i32, i32* %29, align 4, !dbg !894
  br label %78, !dbg !896

; <label>:78:                                     ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ], !dbg !897
  store i32 %79, i32* %30, align 4, !dbg !899
  %80 = load i32, i32* %30, align 4, !dbg !900
  store i32 %80, i32* %27, align 4, !dbg !901
  %81 = load i8*, i8** %11, align 8, !dbg !902
  %82 = load i32, i32* %27, align 4, !dbg !903
  %83 = sext i32 %82 to i64, !dbg !903
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %20, align 8, !dbg !904
  %85 = call i64 @fread(i8* %81, i64 %83, i64 1, %struct._IO_FILE* %84), !dbg !905
  %86 = trunc i64 %85 to i32, !dbg !905
  store i32 %86, i32* %17, align 4, !dbg !906
  %87 = load i32, i32* %17, align 4, !dbg !907
  %88 = icmp ne i32 %87, 1, !dbg !909
  br i1 %88, label %89, label %98, !dbg !910

; <label>:89:                                     ; preds = %78
  br label %90, !dbg !911, !llvm.loop !913

; <label>:90:                                     ; preds = %89
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !914
  %92 = load i8*, i8** %10, align 8, !dbg !917
  %93 = call i32* @__errno_location() #1, !dbg !918
  %94 = load i32, i32* %93, align 4, !dbg !919
  %95 = call i8* @strerror(i32 %94) #9, !dbg !920
  %96 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i32 211, i8* %92, i8* %95), !dbg !922
  br label %97, !dbg !924

; <label>:97:                                     ; preds = %90
  call void @exit(i32 79) #11, !dbg !925
  unreachable, !dbg !925

; <label>:98:                                     ; preds = %78
  %99 = load i32, i32* %14, align 4, !dbg !926
  %100 = icmp ne i32 %99, 0, !dbg !926
  br i1 %100, label %101, label %108, !dbg !928

; <label>:101:                                    ; preds = %98
  %102 = load i32, i32* %21, align 4, !dbg !929
  %103 = zext i32 %102 to i64, !dbg !929
  %104 = load i8*, i8** %11, align 8, !dbg !930
  %105 = load i32, i32* %27, align 4, !dbg !931
  %106 = call i64 @crc32(i64 %103, i8* %104, i32 %105), !dbg !932
  %107 = trunc i64 %106 to i32, !dbg !932
  store i32 %107, i32* %21, align 4, !dbg !933
  br label %108, !dbg !934

; <label>:108:                                    ; preds = %101, %98
  %109 = load %struct.card_dev_t*, %struct.card_dev_t** %9, align 8, !dbg !935
  %110 = load i8*, i8** %11, align 8, !dbg !936
  %111 = load i8*, i8** %12, align 8, !dbg !937
  %112 = load i32, i32* %27, align 4, !dbg !938
  %113 = sext i32 %112 to i64, !dbg !938
  %114 = load i32, i32* %15, align 4, !dbg !939
  %115 = call i32 @accel_cksum(%struct.card_dev_t* %109, %struct.ddcb_cmd* %25, i8* %110, i8* %111, i64 %113, i32* %22, i32* %23, i32* %24, i32 %114), !dbg !940
  store i32 %115, i32* %17, align 4, !dbg !941
  %116 = call i32* @__errno_location() #1, !dbg !942
  %117 = load i32, i32* %116, align 4, !dbg !943
  store i32 %117, i32* %26, align 4, !dbg !944
  %118 = load i32, i32* %17, align 4, !dbg !945
  %119 = icmp ne i32 %118, 0, !dbg !947
  br i1 %119, label %120, label %206, !dbg !948

; <label>:120:                                    ; preds = %108
  call void @llvm.dbg.declare(metadata %struct.asv_runtime_dma_error** %31, metadata !949, metadata !320), !dbg !951
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !952
  %122 = load i32, i32* %17, align 4, !dbg !953
  %123 = call i8* @card_strerror(i32 %122), !dbg !954
  %124 = load i32, i32* %17, align 4, !dbg !955
  %125 = load i32, i32* %26, align 4, !dbg !956
  %126 = load i32, i32* %26, align 4, !dbg !957
  %127 = call i8* @strerror(i32 %126) #9, !dbg !958
  %128 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %121, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.29, i32 0, i32 0), i8* %123, i32 %124, i32 %125, i8* %127), !dbg !959
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !960
  %130 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %25, i32 0, i32 7, !dbg !961
  %131 = load i16, i16* %130, align 2, !dbg !961
  %132 = zext i16 %131 to i32, !dbg !962
  %133 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %25, i32 0, i32 7, !dbg !963
  %134 = load i16, i16* %133, align 2, !dbg !963
  %135 = zext i16 %134 to i32, !dbg !964
  %136 = call i8* @retc_strerror(i32 %135), !dbg !965
  %137 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %25, i32 0, i32 8, !dbg !966
  %138 = load i16, i16* %137, align 8, !dbg !966
  %139 = zext i16 %138 to i32, !dbg !967
  %140 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %25, i32 0, i32 10, !dbg !968
  %141 = load i32, i32* %140, align 4, !dbg !968
  %142 = load i32, i32* %22, align 4, !dbg !969
  %143 = load i32, i32* %23, align 4, !dbg !970
  %144 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %25, i32 0, i32 11, !dbg !971
  %145 = load i64, i64* %144, align 8, !dbg !971
  %146 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %25, i32 0, i32 12, !dbg !972
  %147 = load i64, i64* %146, align 8, !dbg !972
  %148 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %25, i32 0, i32 13, !dbg !973
  %149 = load i64, i64* %148, align 8, !dbg !973
  %150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %129, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.30, i32 0, i32 0), i32 %132, i8* %136, i32 %139, i32 %141, i32 %142, i32 %143, i64 %145, i64 %147, i64 %149), !dbg !974
  %151 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %25, i32 0, i32 7, !dbg !975
  %152 = load i16, i16* %151, align 2, !dbg !975
  %153 = zext i16 %152 to i32, !dbg !977
  %154 = icmp eq i32 %153, 272, !dbg !978
  br i1 %154, label %155, label %202, !dbg !979

; <label>:155:                                    ; preds = %120
  %156 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %25, i32 0, i32 8, !dbg !980
  %157 = load i16, i16* %156, align 8, !dbg !980
  %158 = zext i16 %157 to i32, !dbg !981
  %159 = icmp eq i32 %158, 57351, !dbg !982
  br i1 %159, label %160, label %202, !dbg !983

; <label>:160:                                    ; preds = %155
  %161 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %25, i32 0, i32 15, !dbg !985
  %162 = getelementptr inbounds [64 x i8], [64 x i8]* %161, i32 0, i32 0, !dbg !987
  %163 = bitcast i8* %162 to %struct.asv_runtime_dma_error*, !dbg !988
  store %struct.asv_runtime_dma_error* %163, %struct.asv_runtime_dma_error** %31, align 8, !dbg !989
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !990
  %165 = load %struct.asv_runtime_dma_error*, %struct.asv_runtime_dma_error** %31, align 8, !dbg !991
  %166 = getelementptr inbounds %struct.asv_runtime_dma_error, %struct.asv_runtime_dma_error* %165, i32 0, i32 0, !dbg !992
  %167 = load i64, i64* %166, align 1, !dbg !992
  %168 = call i64 @__fswab64(i64 %167), !dbg !993
  %169 = load %struct.asv_runtime_dma_error*, %struct.asv_runtime_dma_error** %31, align 8, !dbg !994
  %170 = getelementptr inbounds %struct.asv_runtime_dma_error, %struct.asv_runtime_dma_error* %169, i32 0, i32 1, !dbg !995
  %171 = load i32, i32* %170, align 1, !dbg !995
  %172 = call i32 @__fswab32(i32 %171), !dbg !996
  %173 = load %struct.asv_runtime_dma_error*, %struct.asv_runtime_dma_error** %31, align 8, !dbg !997
  %174 = getelementptr inbounds %struct.asv_runtime_dma_error, %struct.asv_runtime_dma_error* %173, i32 0, i32 2, !dbg !998
  %175 = load i16, i16* %174, align 1, !dbg !998
  %176 = call zeroext i16 @__fswab16(i16 zeroext %175), !dbg !999
  %177 = zext i16 %176 to i32, !dbg !999
  %178 = load %struct.asv_runtime_dma_error*, %struct.asv_runtime_dma_error** %31, align 8, !dbg !1000
  %179 = getelementptr inbounds %struct.asv_runtime_dma_error, %struct.asv_runtime_dma_error* %178, i32 0, i32 3, !dbg !1001
  %180 = load i16, i16* %179, align 1, !dbg !1001
  %181 = call zeroext i16 @__fswab16(i16 zeroext %180), !dbg !1002
  %182 = zext i16 %181 to i32, !dbg !1002
  %183 = load %struct.asv_runtime_dma_error*, %struct.asv_runtime_dma_error** %31, align 8, !dbg !1003
  %184 = getelementptr inbounds %struct.asv_runtime_dma_error, %struct.asv_runtime_dma_error* %183, i32 0, i32 6, !dbg !1004
  %185 = load i64, i64* %184, align 1, !dbg !1004
  %186 = call i64 @__fswab64(i64 %185), !dbg !1005
  %187 = load %struct.asv_runtime_dma_error*, %struct.asv_runtime_dma_error** %31, align 8, !dbg !1006
  %188 = getelementptr inbounds %struct.asv_runtime_dma_error, %struct.asv_runtime_dma_error* %187, i32 0, i32 7, !dbg !1007
  %189 = load i32, i32* %188, align 1, !dbg !1007
  %190 = call i32 @__fswab32(i32 %189), !dbg !1008
  %191 = load %struct.asv_runtime_dma_error*, %struct.asv_runtime_dma_error** %31, align 8, !dbg !1009
  %192 = getelementptr inbounds %struct.asv_runtime_dma_error, %struct.asv_runtime_dma_error* %191, i32 0, i32 8, !dbg !1010
  %193 = load i16, i16* %192, align 1, !dbg !1010
  %194 = call zeroext i16 @__fswab16(i16 zeroext %193), !dbg !1011
  %195 = zext i16 %194 to i32, !dbg !1011
  %196 = load %struct.asv_runtime_dma_error*, %struct.asv_runtime_dma_error** %31, align 8, !dbg !1012
  %197 = getelementptr inbounds %struct.asv_runtime_dma_error, %struct.asv_runtime_dma_error* %196, i32 0, i32 9, !dbg !1013
  %198 = load i16, i16* %197, align 1, !dbg !1013
  %199 = call zeroext i16 @__fswab16(i16 zeroext %198), !dbg !1014
  %200 = zext i16 %199 to i32, !dbg !1014
  %201 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %164, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.31, i32 0, i32 0), i64 %168, i32 %172, i32 %177, i32 %182, i64 %186, i32 %190, i32 %195, i32 %200), !dbg !1015
  br label %202, !dbg !1016

; <label>:202:                                    ; preds = %160, %155, %120
  %203 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1017
  %204 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %25, i32 0, i32 15, !dbg !1018
  %205 = getelementptr inbounds [64 x i8], [64 x i8]* %204, i32 0, i32 0, !dbg !1019
  call void @ddcb_hexdump(%struct._IO_FILE* %203, i8* %205, i32 64), !dbg !1020
  call void @exit(i32 1) #11, !dbg !1021
  unreachable, !dbg !1021

; <label>:206:                                    ; preds = %108
  br label %207, !dbg !1022, !llvm.loop !1023

; <label>:207:                                    ; preds = %206
  %208 = load i32, i32* @verbose_flag, align 4, !dbg !1024
  %209 = icmp ne i32 %208, 0, !dbg !1024
  br i1 %209, label %210, label %233, !dbg !1024

; <label>:210:                                    ; preds = %207
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1028
  %212 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %25, i32 0, i32 7, !dbg !1030
  %213 = load i16, i16* %212, align 2, !dbg !1030
  %214 = zext i16 %213 to i32, !dbg !1031
  %215 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %25, i32 0, i32 7, !dbg !1032
  %216 = load i16, i16* %215, align 2, !dbg !1032
  %217 = zext i16 %216 to i32, !dbg !1033
  %218 = call i8* @retc_strerror(i32 %217), !dbg !1034
  %219 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %25, i32 0, i32 8, !dbg !1035
  %220 = load i16, i16* %219, align 8, !dbg !1035
  %221 = zext i16 %220 to i32, !dbg !1036
  %222 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %25, i32 0, i32 10, !dbg !1037
  %223 = load i32, i32* %222, align 4, !dbg !1037
  %224 = load i32, i32* %22, align 4, !dbg !1038
  %225 = load i32, i32* %23, align 4, !dbg !1039
  %226 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %25, i32 0, i32 11, !dbg !1040
  %227 = load i64, i64* %226, align 8, !dbg !1040
  %228 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %25, i32 0, i32 12, !dbg !1041
  %229 = load i64, i64* %228, align 8, !dbg !1041
  %230 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %25, i32 0, i32 13, !dbg !1042
  %231 = load i64, i64* %230, align 8, !dbg !1042
  %232 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %211, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.30, i32 0, i32 0), i32 %214, i8* %218, i32 %221, i32 %223, i32 %224, i32 %225, i64 %227, i64 %229, i64 %231), !dbg !1043
  br label %233, !dbg !1045

; <label>:233:                                    ; preds = %210, %207
  br label %234, !dbg !1046

; <label>:234:                                    ; preds = %233
  br label %235

; <label>:235:                                    ; preds = %234
  %236 = load i32, i32* %27, align 4, !dbg !1048
  %237 = load i32, i32* %18, align 4, !dbg !1049
  %238 = sub nsw i32 %237, %236, !dbg !1049
  store i32 %238, i32* %18, align 4, !dbg !1049
  br label %65, !dbg !1050, !llvm.loop !1052

; <label>:239:                                    ; preds = %65
  %240 = load i32, i32* %16, align 4, !dbg !1053
  %241 = icmp ne i32 %240, 0, !dbg !1053
  br i1 %241, label %242, label %248, !dbg !1055

; <label>:242:                                    ; preds = %239
  %243 = load i32, i32* %23, align 4, !dbg !1056
  %244 = getelementptr inbounds %struct.stat, %struct.stat* %19, i32 0, i32 8, !dbg !1057
  %245 = load i64, i64* %244, align 8, !dbg !1057
  %246 = load i8*, i8** %10, align 8, !dbg !1058
  %247 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 %243, i64 %245, i8* %246), !dbg !1059
  br label %254, !dbg !1059

; <label>:248:                                    ; preds = %239
  %249 = load i32, i32* %22, align 4, !dbg !1060
  %250 = getelementptr inbounds %struct.stat, %struct.stat* %19, i32 0, i32 8, !dbg !1061
  %251 = load i64, i64* %250, align 8, !dbg !1061
  %252 = load i8*, i8** %10, align 8, !dbg !1062
  %253 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 %249, i64 %251, i8* %252), !dbg !1063
  br label %254

; <label>:254:                                    ; preds = %248, %242
  %255 = load i32, i32* %14, align 4, !dbg !1064
  %256 = icmp ne i32 %255, 0, !dbg !1066
  br i1 %256, label %257, label %266, !dbg !1067

; <label>:257:                                    ; preds = %254
  %258 = load i32, i32* %22, align 4, !dbg !1068
  %259 = load i32, i32* %21, align 4, !dbg !1070
  %260 = icmp ne i32 %258, %259, !dbg !1071
  br i1 %260, label %261, label %266, !dbg !1072

; <label>:261:                                    ; preds = %257
  %262 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1073
  %263 = load i32, i32* %22, align 4, !dbg !1075
  %264 = load i32, i32* %21, align 4, !dbg !1076
  %265 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %262, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.33, i32 0, i32 0), i32 %263, i32 %264), !dbg !1077
  br label %266, !dbg !1078

; <label>:266:                                    ; preds = %261, %257, %254
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** %20, align 8, !dbg !1079
  %268 = call i32 @fclose(%struct._IO_FILE* %267), !dbg !1080
  ret i32 0, !dbg !1081
}

declare i32 @accel_unpin_memory(%struct.card_dev_t*, i8*, i64) #6

; Function Attrs: nounwind
declare void @free(i8*) #2

declare i32 @accel_free(%struct.card_dev_t*, i8*, i64) #6

declare i32 @accel_close(%struct.card_dev_t*) #6

; Function Attrs: nounwind
declare i64 @strtoull(i8*, i8**, i32) #2

declare i64 @crc32(i64, i8*, i32) #6

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #6

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #6

; Function Attrs: nounwind uwtable
define internal i32 @accel_cksum(%struct.card_dev_t*, %struct.ddcb_cmd*, i8*, i8*, i64, i32*, i32*, i32*, i32) #0 !dbg !1082 {
  %10 = alloca %struct.card_dev_t*, align 8
  %11 = alloca %struct.ddcb_cmd*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.asiv_memcpy*, align 8
  %21 = alloca %struct.asv_memcpy*, align 8
  %22 = alloca i64, align 8
  store %struct.card_dev_t* %0, %struct.card_dev_t** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %10, metadata !1087, metadata !320), !dbg !1088
  store %struct.ddcb_cmd* %1, %struct.ddcb_cmd** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.ddcb_cmd** %11, metadata !1089, metadata !320), !dbg !1090
  store i8* %2, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1091, metadata !320), !dbg !1092
  store i8* %3, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1093, metadata !320), !dbg !1094
  store i64 %4, i64* %14, align 8
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1095, metadata !320), !dbg !1096
  store i32* %5, i32** %15, align 8
  call void @llvm.dbg.declare(metadata i32** %15, metadata !1097, metadata !320), !dbg !1098
  store i32* %6, i32** %16, align 8
  call void @llvm.dbg.declare(metadata i32** %16, metadata !1099, metadata !320), !dbg !1100
  store i32* %7, i32** %17, align 8
  call void @llvm.dbg.declare(metadata i32** %17, metadata !1101, metadata !320), !dbg !1102
  store i32 %8, i32* %18, align 4
  call void @llvm.dbg.declare(metadata i32* %18, metadata !1103, metadata !320), !dbg !1104
  call void @llvm.dbg.declare(metadata i32* %19, metadata !1105, metadata !320), !dbg !1106
  call void @llvm.dbg.declare(metadata %struct.asiv_memcpy** %20, metadata !1107, metadata !320), !dbg !1108
  call void @llvm.dbg.declare(metadata %struct.asv_memcpy** %21, metadata !1109, metadata !320), !dbg !1110
  call void @llvm.dbg.declare(metadata i64* %22, metadata !1111, metadata !320), !dbg !1112
  %23 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !1113
  call void @ddcb_cmd_init(%struct.ddcb_cmd* %23), !dbg !1114
  %24 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !1115
  %25 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %24, i32 0, i32 14, !dbg !1116
  store i64 0, i64* %25, align 8, !dbg !1117
  %26 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !1118
  %27 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %26, i32 0, i32 2, !dbg !1119
  store i8 1, i8* %27, align 8, !dbg !1120
  %28 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !1121
  %29 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %28, i32 0, i32 3, !dbg !1122
  store i8 3, i8* %29, align 1, !dbg !1123
  %30 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !1124
  %31 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %30, i32 0, i32 6, !dbg !1125
  store i16 0, i16* %31, align 4, !dbg !1126
  %32 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !1127
  %33 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %32, i32 0, i32 4, !dbg !1128
  store i8 32, i8* %33, align 2, !dbg !1129
  %34 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !1130
  %35 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %34, i32 0, i32 5, !dbg !1131
  store i8 64, i8* %35, align 1, !dbg !1132
  %36 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !1133
  %37 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %36, i32 0, i32 16, !dbg !1134
  %38 = bitcast %union.anon* %37 to %struct.anon*, !dbg !1134
  %39 = getelementptr inbounds %struct.anon, %struct.anon* %38, i32 0, i32 1, !dbg !1134
  %40 = bitcast [96 x i8]* %39 to %struct.asiv_memcpy*, !dbg !1135
  store %struct.asiv_memcpy* %40, %struct.asiv_memcpy** %20, align 8, !dbg !1136
  %41 = load i8*, i8** %12, align 8, !dbg !1137
  %42 = ptrtoint i8* %41 to i64, !dbg !1138
  %43 = call i64 @__fswab64(i64 %42), !dbg !1139
  %44 = load %struct.asiv_memcpy*, %struct.asiv_memcpy** %20, align 8, !dbg !1140
  %45 = getelementptr inbounds %struct.asiv_memcpy, %struct.asiv_memcpy* %44, i32 0, i32 0, !dbg !1141
  store i64 %43, i64* %45, align 1, !dbg !1142
  %46 = load i64, i64* %14, align 8, !dbg !1143
  %47 = trunc i64 %46 to i32, !dbg !1144
  %48 = call i32 @__fswab32(i32 %47), !dbg !1145
  %49 = load %struct.asiv_memcpy*, %struct.asiv_memcpy** %20, align 8, !dbg !1146
  %50 = getelementptr inbounds %struct.asiv_memcpy, %struct.asiv_memcpy* %49, i32 0, i32 1, !dbg !1147
  store i32 %48, i32* %50, align 1, !dbg !1148
  %51 = load i8*, i8** %13, align 8, !dbg !1149
  %52 = ptrtoint i8* %51 to i64, !dbg !1150
  %53 = call i64 @__fswab64(i64 %52), !dbg !1151
  %54 = load %struct.asiv_memcpy*, %struct.asiv_memcpy** %20, align 8, !dbg !1152
  %55 = getelementptr inbounds %struct.asiv_memcpy, %struct.asiv_memcpy* %54, i32 0, i32 3, !dbg !1153
  store i64 %53, i64* %55, align 1, !dbg !1154
  %56 = load i64, i64* %14, align 8, !dbg !1155
  %57 = trunc i64 %56 to i32, !dbg !1156
  %58 = call i32 @__fswab32(i32 %57), !dbg !1157
  %59 = load %struct.asiv_memcpy*, %struct.asiv_memcpy** %20, align 8, !dbg !1158
  %60 = getelementptr inbounds %struct.asiv_memcpy, %struct.asiv_memcpy* %59, i32 0, i32 4, !dbg !1159
  store i32 %58, i32* %60, align 1, !dbg !1160
  %61 = load i32*, i32** %16, align 8, !dbg !1161
  %62 = load i32, i32* %61, align 4, !dbg !1162
  %63 = call i32 @__fswab32(i32 %62), !dbg !1163
  %64 = load %struct.asiv_memcpy*, %struct.asiv_memcpy** %20, align 8, !dbg !1164
  %65 = getelementptr inbounds %struct.asiv_memcpy, %struct.asiv_memcpy* %64, i32 0, i32 5, !dbg !1165
  store i32 %63, i32* %65, align 1, !dbg !1166
  %66 = load i32*, i32** %15, align 8, !dbg !1167
  %67 = load i32, i32* %66, align 4, !dbg !1168
  %68 = call i32 @__fswab32(i32 %67), !dbg !1169
  %69 = load %struct.asiv_memcpy*, %struct.asiv_memcpy** %20, align 8, !dbg !1170
  %70 = getelementptr inbounds %struct.asiv_memcpy, %struct.asiv_memcpy* %69, i32 0, i32 2, !dbg !1171
  store i32 %68, i32* %70, align 1, !dbg !1172
  %71 = load i32, i32* %18, align 4, !dbg !1173
  %72 = icmp ne i32 %71, 0, !dbg !1173
  br i1 %72, label %73, label %74, !dbg !1175

; <label>:73:                                     ; preds = %9
  store i64 6, i64* %22, align 8, !dbg !1176
  br label %75, !dbg !1177

; <label>:74:                                     ; preds = %9
  store i64 4, i64* %22, align 8, !dbg !1178
  br label %75

; <label>:75:                                     ; preds = %74, %73
  %76 = load i64, i64* %22, align 8, !dbg !1179
  %77 = and i64 %76, 15, !dbg !1180
  %78 = shl i64 %77, 44, !dbg !1181
  %79 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !1182
  %80 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %79, i32 0, i32 16, !dbg !1183
  %81 = bitcast %union.anon* %80 to %struct.anon*, !dbg !1183
  %82 = getelementptr inbounds %struct.anon, %struct.anon* %81, i32 0, i32 0, !dbg !1183
  store i64 %78, i64* %82, align 8, !dbg !1184
  %83 = load i32, i32* %18, align 4, !dbg !1185
  %84 = icmp ne i32 %83, 0, !dbg !1185
  br i1 %84, label %85, label %86, !dbg !1187

; <label>:85:                                     ; preds = %75
  store i64 7, i64* %22, align 8, !dbg !1188
  br label %87, !dbg !1189

; <label>:86:                                     ; preds = %75
  store i64 5, i64* %22, align 8, !dbg !1190
  br label %87

; <label>:87:                                     ; preds = %86, %85
  %88 = load i64, i64* %22, align 8, !dbg !1191
  %89 = and i64 %88, 15, !dbg !1192
  %90 = shl i64 %89, 36, !dbg !1193
  %91 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !1194
  %92 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %91, i32 0, i32 16, !dbg !1195
  %93 = bitcast %union.anon* %92 to %struct.anon*, !dbg !1195
  %94 = getelementptr inbounds %struct.anon, %struct.anon* %93, i32 0, i32 0, !dbg !1195
  %95 = load i64, i64* %94, align 8, !dbg !1196
  %96 = or i64 %95, %90, !dbg !1196
  store i64 %96, i64* %94, align 8, !dbg !1196
  %97 = load i32, i32* @verbose_flag, align 4, !dbg !1197
  %98 = icmp ne i32 %97, 0, !dbg !1197
  br i1 %98, label %99, label %118, !dbg !1199

; <label>:99:                                     ; preds = %87
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1200
  %101 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !1202
  %102 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %101, i32 0, i32 16, !dbg !1203
  %103 = bitcast %union.anon* %102 to %struct.anon*, !dbg !1203
  %104 = getelementptr inbounds %struct.anon, %struct.anon* %103, i32 0, i32 0, !dbg !1203
  %105 = load i64, i64* %104, align 8, !dbg !1203
  %106 = load i32, i32* %18, align 4, !dbg !1204
  %107 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %100, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.34, i32 0, i32 0), i64 %105, i32 %106), !dbg !1205
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1206
  %109 = load i8*, i8** %12, align 8, !dbg !1207
  %110 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %108, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i8* %109), !dbg !1208
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1209
  %112 = load i8*, i8** %13, align 8, !dbg !1210
  %113 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i8* %112), !dbg !1211
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1212
  %115 = load i64, i64* %14, align 8, !dbg !1213
  %116 = trunc i64 %115 to i32, !dbg !1214
  %117 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %114, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), i32 %116), !dbg !1215
  br label %118, !dbg !1216

; <label>:118:                                    ; preds = %99, %87
  %119 = load i32, i32* @verbose_flag, align 4, !dbg !1217
  %120 = icmp sgt i32 %119, 1, !dbg !1219
  br i1 %120, label %121, label %128, !dbg !1220

; <label>:121:                                    ; preds = %118
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1221
  %123 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !1223
  %124 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %122, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i32 0, i32 0), %struct.ddcb_cmd* %123), !dbg !1224
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1225
  %126 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !1226
  %127 = bitcast %struct.ddcb_cmd* %126 to i8*, !dbg !1226
  call void @ddcb_hexdump(%struct._IO_FILE* %125, i8* %127, i32 232), !dbg !1227
  br label %128, !dbg !1228

; <label>:128:                                    ; preds = %121, %118
  %129 = call i64 @get_us(), !dbg !1229
  %130 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !1230
  %131 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %130, i32 0, i32 13, !dbg !1231
  store i64 %129, i64* %131, align 8, !dbg !1232
  %132 = load %struct.card_dev_t*, %struct.card_dev_t** %10, align 8, !dbg !1233
  %133 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !1234
  %134 = call i32 @accel_ddcb_execute(%struct.card_dev_t* %132, %struct.ddcb_cmd* %133, i32* null, i32* null), !dbg !1235
  store i32 %134, i32* %19, align 4, !dbg !1236
  %135 = call i64 @get_us(), !dbg !1237
  %136 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !1238
  %137 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %136, i32 0, i32 13, !dbg !1239
  %138 = load i64, i64* %137, align 8, !dbg !1239
  %139 = sub i64 %135, %138, !dbg !1240
  %140 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !1241
  %141 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %140, i32 0, i32 13, !dbg !1242
  store i64 %139, i64* %141, align 8, !dbg !1243
  %142 = load i32, i32* @verbose_flag, align 4, !dbg !1244
  %143 = icmp sgt i32 %142, 1, !dbg !1246
  br i1 %143, label %144, label %151, !dbg !1247

; <label>:144:                                    ; preds = %128
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1248
  %146 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !1250
  %147 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %145, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i32 0, i32 0), %struct.ddcb_cmd* %146), !dbg !1251
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1252
  %149 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !1253
  %150 = bitcast %struct.ddcb_cmd* %149 to i8*, !dbg !1253
  call void @ddcb_hexdump(%struct._IO_FILE* %148, i8* %150, i32 232), !dbg !1254
  br label %151, !dbg !1255

; <label>:151:                                    ; preds = %144, %128
  %152 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !1256
  %153 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %152, i32 0, i32 15, !dbg !1257
  %154 = bitcast [64 x i8]* %153 to %struct.asv_memcpy*, !dbg !1258
  store %struct.asv_memcpy* %154, %struct.asv_memcpy** %21, align 8, !dbg !1259
  %155 = load %struct.asv_memcpy*, %struct.asv_memcpy** %21, align 8, !dbg !1260
  %156 = getelementptr inbounds %struct.asv_memcpy, %struct.asv_memcpy* %155, i32 0, i32 1, !dbg !1261
  %157 = load i32, i32* %156, align 1, !dbg !1261
  %158 = call i32 @__fswab32(i32 %157), !dbg !1262
  %159 = load i32*, i32** %15, align 8, !dbg !1263
  store i32 %158, i32* %159, align 4, !dbg !1264
  %160 = load %struct.asv_memcpy*, %struct.asv_memcpy** %21, align 8, !dbg !1265
  %161 = getelementptr inbounds %struct.asv_memcpy, %struct.asv_memcpy* %160, i32 0, i32 2, !dbg !1266
  %162 = load i32, i32* %161, align 1, !dbg !1266
  %163 = call i32 @__fswab32(i32 %162), !dbg !1267
  %164 = load i32*, i32** %16, align 8, !dbg !1268
  store i32 %163, i32* %164, align 4, !dbg !1269
  %165 = load %struct.asv_memcpy*, %struct.asv_memcpy** %21, align 8, !dbg !1270
  %166 = getelementptr inbounds %struct.asv_memcpy, %struct.asv_memcpy* %165, i32 0, i32 3, !dbg !1271
  %167 = load i32, i32* %166, align 1, !dbg !1271
  %168 = call i32 @__fswab32(i32 %167), !dbg !1272
  %169 = load i32*, i32** %17, align 8, !dbg !1273
  store i32 %168, i32* %169, align 4, !dbg !1274
  %170 = load i32, i32* @verbose_flag, align 4, !dbg !1275
  %171 = icmp ne i32 %170, 0, !dbg !1275
  br i1 %171, label %172, label %184, !dbg !1277

; <label>:172:                                    ; preds = %151
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1278
  %174 = load i32*, i32** %15, align 8, !dbg !1279
  %175 = load i32, i32* %174, align 4, !dbg !1280
  %176 = load i32*, i32** %16, align 8, !dbg !1281
  %177 = load i32, i32* %176, align 4, !dbg !1282
  %178 = load i32*, i32** %17, align 8, !dbg !1283
  %179 = load i32, i32* %178, align 4, !dbg !1284
  %180 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %11, align 8, !dbg !1285
  %181 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %180, i32 0, i32 13, !dbg !1286
  %182 = load i64, i64* %181, align 8, !dbg !1286
  %183 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %173, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.39, i32 0, i32 0), i32 %175, i32 %177, i32 %179, i64 %182), !dbg !1287
  br label %184, !dbg !1287

; <label>:184:                                    ; preds = %172, %151
  %185 = load i32, i32* %19, align 4, !dbg !1288
  ret i32 %185, !dbg !1289
}

declare i8* @retc_strerror(i32) #6

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @__fswab64(i64) #5 !dbg !1290 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !1294, metadata !320), !dbg !1295
  %3 = load i64, i64* %2, align 8, !dbg !1296
  %4 = call i64 @__arch_swab64(i64 %3), !dbg !1297
  ret i64 %4, !dbg !1298
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__fswab32(i32) #5 !dbg !1299 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1302, metadata !320), !dbg !1303
  %3 = load i32, i32* %2, align 4, !dbg !1304
  %4 = call i32 @__arch_swab32(i32 %3), !dbg !1305
  ret i32 %4, !dbg !1306
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @__fswab16(i16 zeroext) #5 !dbg !1307 {
  %2 = alloca i16, align 2
  store i16 %0, i16* %2, align 2
  call void @llvm.dbg.declare(metadata i16* %2, metadata !1310, metadata !320), !dbg !1311
  %3 = load i16, i16* %2, align 2, !dbg !1312
  %4 = zext i16 %3 to i32, !dbg !1313
  %5 = and i32 %4, 255, !dbg !1314
  %6 = shl i32 %5, 8, !dbg !1315
  %7 = load i16, i16* %2, align 2, !dbg !1316
  %8 = zext i16 %7 to i32, !dbg !1317
  %9 = and i32 %8, 65280, !dbg !1318
  %10 = ashr i32 %9, 8, !dbg !1319
  %11 = or i32 %6, %10, !dbg !1320
  %12 = trunc i32 %11 to i16, !dbg !1321
  ret i16 %12, !dbg !1322
}

declare void @ddcb_hexdump(%struct._IO_FILE*, i8*, i32) #6

declare i32 @fclose(%struct._IO_FILE*) #6

; Function Attrs: inlinehint nounwind uwtable
define internal void @ddcb_cmd_init(%struct.ddcb_cmd*) #5 !dbg !1323 {
  %2 = alloca %struct.ddcb_cmd*, align 8
  %3 = alloca i64, align 8
  store %struct.ddcb_cmd* %0, %struct.ddcb_cmd** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.ddcb_cmd** %2, metadata !1326, metadata !320), !dbg !1327
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1328, metadata !320), !dbg !1329
  %4 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %2, align 8, !dbg !1330
  %5 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %4, i32 0, i32 13, !dbg !1331
  %6 = load i64, i64* %5, align 8, !dbg !1331
  store i64 %6, i64* %3, align 8, !dbg !1332
  %7 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %2, align 8, !dbg !1333
  %8 = bitcast %struct.ddcb_cmd* %7 to i8*, !dbg !1334
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 232, i32 8, i1 false), !dbg !1334
  %9 = load i64, i64* %3, align 8, !dbg !1335
  %10 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %2, align 8, !dbg !1336
  %11 = getelementptr inbounds %struct.ddcb_cmd, %struct.ddcb_cmd* %10, i32 0, i32 13, !dbg !1337
  store i64 %9, i64* %11, align 8, !dbg !1338
  ret void, !dbg !1339
}

; Function Attrs: nounwind uwtable
define internal i64 @get_us() #0 !dbg !1340 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.timespec, align 8
  call void @llvm.dbg.declare(metadata i64* %1, metadata !1343, metadata !320), !dbg !1344
  call void @llvm.dbg.declare(metadata %struct.timespec* %2, metadata !1345, metadata !320), !dbg !1346
  %3 = call i32 @clock_gettime(i32 4, %struct.timespec* %2) #9, !dbg !1347
  %4 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 0, !dbg !1348
  %5 = load i64, i64* %4, align 8, !dbg !1348
  %6 = mul nsw i64 %5, 1000000, !dbg !1349
  %7 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 1, !dbg !1350
  %8 = load i64, i64* %7, align 8, !dbg !1350
  %9 = sdiv i64 %8, 1000, !dbg !1351
  %10 = add nsw i64 %6, %9, !dbg !1352
  store i64 %10, i64* %1, align 8, !dbg !1353
  %11 = load i64, i64* %1, align 8, !dbg !1354
  ret i64 %11, !dbg !1355
}

declare i32 @accel_ddcb_execute(%struct.card_dev_t*, %struct.ddcb_cmd*, i32*, i32*) #6

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #8

; Function Attrs: nounwind
declare i32 @clock_gettime(i32, %struct.timespec*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @__arch_swab64(i64) #5 !dbg !1356 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !1358, metadata !320), !dbg !1359
  %3 = load i64, i64* %2, align 8, !dbg !1360
  %4 = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %3) #1, !dbg !1361, !srcloc !1362
  store i64 %4, i64* %2, align 8, !dbg !1361
  %5 = load i64, i64* %2, align 8, !dbg !1363
  ret i64 %5, !dbg !1364
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__arch_swab32(i32) #5 !dbg !1365 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1366, metadata !320), !dbg !1367
  %3 = load i32, i32* %2, align 4, !dbg !1368
  %4 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %3) #1, !dbg !1369, !srcloc !1370
  store i32 %4, i32* %2, align 4, !dbg !1369
  %5 = load i32, i32* %2, align 4, !dbg !1371
  ret i32 %5, !dbg !1372
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly }
attributes #11 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!316, !317}
!llvm.ident = !{!318}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !221, globals: !292)
!1 = !DIFile(filename: "/home/lichi/Desktop/genwqe/[task]tools--genwqe_cksum/[inter]tools--genwqe_cksum.o.i", directory: "/home/lichi/Desktop")
!2 = !{!3}
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
!221 = !{!222, !225, !226, !227, !250, !253, !255, !256, !257, !258, !259, !234, !236, !280}
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, align: 64)
!224 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!226 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64, align: 64)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asv_runtime_dma_error", file: !229, line: 101, size: 512, align: 8, elements: !230)
!229 = !DIFile(filename: "../include/libcard.h", directory: "/home/lichi/Desktop")
!230 = !{!231, !235, !238, !241, !242, !243, !244, !245, !246, !247, !248, !249}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "raddr_be64", scope: !228, file: !229, line: 102, baseType: !232, size: 64, align: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !233, line: 55, baseType: !234)
!233 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop")
!234 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "rfmt_chan_disccnt_be32", scope: !228, file: !229, line: 103, baseType: !236, size: 32, align: 32, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !233, line: 51, baseType: !237)
!237 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "rdmae_be16", scope: !228, file: !229, line: 104, baseType: !239, size: 16, align: 16, offset: 96)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !233, line: 49, baseType: !240)
!240 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "rsge_be16", scope: !228, file: !229, line: 105, baseType: !239, size: 16, align: 16, offset: 112)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "res0", scope: !228, file: !229, line: 107, baseType: !232, size: 64, align: 64, offset: 128)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "res1", scope: !228, file: !229, line: 108, baseType: !232, size: 64, align: 64, offset: 192)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "waddr_be64", scope: !228, file: !229, line: 110, baseType: !232, size: 64, align: 64, offset: 256)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "wfmt_chan_disccnt_be32", scope: !228, file: !229, line: 111, baseType: !236, size: 32, align: 32, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "wdmae_be16", scope: !228, file: !229, line: 112, baseType: !239, size: 16, align: 16, offset: 352)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "wsge_be16", scope: !228, file: !229, line: 113, baseType: !239, size: 16, align: 16, offset: 368)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "res2", scope: !228, file: !229, line: 115, baseType: !232, size: 64, align: 64, offset: 384)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "res3", scope: !228, file: !229, line: 116, baseType: !232, size: 64, align: 64, offset: 448)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !251, line: 30, baseType: !252)
!251 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "/home/lichi/Desktop")
!252 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be64", file: !254, line: 32, baseType: !250)
!254 = !DIFile(filename: "/usr/include/linux/types.h", directory: "/home/lichi/Desktop")
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !251, line: 26, baseType: !237)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !254, line: 30, baseType: !255)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !251, line: 23, baseType: !240)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !254, line: 28, baseType: !257)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asiv_memcpy", file: !261, line: 42, size: 768, align: 8, elements: !262)
!261 = !DIFile(filename: "../include/memcopy_ddcb.h", directory: "/home/lichi/Desktop")
!262 = !{!263, !264, !265, !266, !267, !268, !269, !273, !274, !275, !276}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "inp_buff", scope: !260, file: !261, line: 43, baseType: !232, size: 64, align: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "inp_buff_len", scope: !260, file: !261, line: 44, baseType: !236, size: 32, align: 32, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "in_crc32", scope: !260, file: !261, line: 45, baseType: !236, size: 32, align: 32, offset: 96)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "outp_buff", scope: !260, file: !261, line: 47, baseType: !232, size: 64, align: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "outp_buff_len", scope: !260, file: !261, line: 48, baseType: !236, size: 32, align: 32, offset: 192)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "in_adler32", scope: !260, file: !261, line: 49, baseType: !236, size: 32, align: 32, offset: 224)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "res0", scope: !260, file: !261, line: 51, baseType: !270, size: 256, align: 64, offset: 256)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 256, align: 64, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 4)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "res1", scope: !260, file: !261, line: 52, baseType: !239, size: 16, align: 16, offset: 512)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "input_lists", scope: !260, file: !261, line: 53, baseType: !239, size: 16, align: 16, offset: 528)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "res2", scope: !260, file: !261, line: 54, baseType: !236, size: 32, align: 32, offset: 544)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "res3", scope: !260, file: !261, line: 56, baseType: !277, size: 192, align: 64, offset: 576)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 192, align: 64, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: 3)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64, align: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asv_memcpy", file: !261, line: 63, size: 512, align: 8, elements: !282)
!282 = !{!283, !287, !288, !289, !290, !291}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "res0", scope: !281, file: !261, line: 64, baseType: !284, size: 128, align: 64)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 128, align: 64, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 2)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "out_crc32", scope: !281, file: !261, line: 65, baseType: !236, size: 32, align: 32, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "out_adler32", scope: !281, file: !261, line: 66, baseType: !236, size: 32, align: 32, offset: 160)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "inp_processed", scope: !281, file: !261, line: 67, baseType: !236, size: 32, align: 32, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "outp_returned", scope: !281, file: !261, line: 68, baseType: !236, size: 32, align: 32, offset: 224)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "res1", scope: !281, file: !261, line: 69, baseType: !270, size: 256, align: 64, offset: 256)
!292 = !{!293, !296, !314, !315}
!293 = distinct !DIGlobalVariable(name: "verbose_flag", scope: !0, file: !294, line: 36, type: !295, isLocal: false, isDefinition: true, variable: i32* @verbose_flag)
!294 = !DIFile(filename: "genwqe_cksum.c", directory: "/home/lichi/Desktop")
!295 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!296 = distinct !DIGlobalVariable(name: "long_options", scope: !297, file: !294, line: 306, type: !301, isLocal: true, isDefinition: true, variable: [12 x %struct.option]* @main.long_options)
!297 = distinct !DISubprogram(name: "main", scope: !294, file: !294, line: 288, type: !298, isLocal: false, isDefinition: true, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !300)
!298 = !DISubroutineType(types: !299)
!299 = !{!295, !295, !222}
!300 = !{}
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 3072, align: 64, elements: !312)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !303, line: 104, size: 256, align: 64, elements: !304)
!303 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/lichi/Desktop")
!304 = !{!305, !308, !309, !311}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !302, file: !303, line: 106, baseType: !306, size: 64, align: 64)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !302, file: !303, line: 109, baseType: !295, size: 32, align: 32, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !302, file: !303, line: 110, baseType: !310, size: 64, align: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64, align: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !302, file: !303, line: 111, baseType: !295, size: 32, align: 32, offset: 192)
!312 = !{!313}
!313 = !DISubrange(count: 12)
!314 = distinct !DIGlobalVariable(name: "version", scope: !0, file: !294, line: 41, type: !306, isLocal: true, isDefinition: true, variable: i8** @version)
!315 = distinct !DIGlobalVariable(name: "debug_flag", scope: !0, file: !294, line: 37, type: !295, isLocal: true, isDefinition: true, variable: i32* @debug_flag)
!316 = !{i32 2, !"Dwarf Version", i32 4}
!317 = !{i32 2, !"Debug Info Version", i32 3}
!318 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!319 = !DILocalVariable(name: "argc", arg: 1, scope: !297, file: !294, line: 288, type: !295)
!320 = !DIExpression()
!321 = !DILocation(line: 288, column: 14, scope: !297)
!322 = !DILocalVariable(name: "argv", arg: 2, scope: !297, file: !294, line: 288, type: !222)
!323 = !DILocation(line: 288, column: 26, scope: !297)
!324 = !DILocalVariable(name: "card_no", scope: !297, file: !294, line: 290, type: !295)
!325 = !DILocation(line: 290, column: 6, scope: !297)
!326 = !DILocalVariable(name: "err_code", scope: !297, file: !294, line: 290, type: !295)
!327 = !DILocation(line: 290, column: 19, scope: !297)
!328 = !DILocalVariable(name: "accel", scope: !297, file: !294, line: 291, type: !329)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "accel_t", file: !330, line: 198, baseType: !331)
!330 = !DIFile(filename: "../include/libddcb.h", directory: "/home/lichi/Desktop")
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!332 = !DICompositeType(tag: DW_TAG_structure_type, name: "card_dev_t", file: !330, line: 198, flags: DIFlagFwdDecl)
!333 = !DILocation(line: 291, column: 10, scope: !297)
!334 = !DILocalVariable(name: "ibuf", scope: !297, file: !294, line: 292, type: !335)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64, align: 64)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !233, line: 48, baseType: !337)
!337 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!338 = !DILocation(line: 292, column: 11, scope: !297)
!339 = !DILocalVariable(name: "obuf", scope: !297, file: !294, line: 292, type: !335)
!340 = !DILocation(line: 292, column: 18, scope: !297)
!341 = !DILocalVariable(name: "page_size", scope: !297, file: !294, line: 293, type: !237)
!342 = !DILocation(line: 293, column: 15, scope: !297)
!343 = !DILocation(line: 293, column: 27, scope: !297)
!344 = !DILocalVariable(name: "in_f", scope: !297, file: !294, line: 294, type: !306)
!345 = !DILocation(line: 294, column: 14, scope: !297)
!346 = !DILocalVariable(name: "cpu", scope: !297, file: !294, line: 295, type: !295)
!347 = !DILocation(line: 295, column: 6, scope: !297)
!348 = !DILocalVariable(name: "card_type", scope: !297, file: !294, line: 296, type: !295)
!349 = !DILocation(line: 296, column: 6, scope: !297)
!350 = !DILocalVariable(name: "check_result", scope: !297, file: !294, line: 297, type: !295)
!351 = !DILocation(line: 297, column: 6, scope: !297)
!352 = !DILocalVariable(name: "use_sglist", scope: !297, file: !294, line: 298, type: !295)
!353 = !DILocation(line: 298, column: 6, scope: !297)
!354 = !DILocalVariable(name: "use_adler", scope: !297, file: !294, line: 299, type: !295)
!355 = !DILocation(line: 299, column: 6, scope: !297)
!356 = !DILocalVariable(name: "data_buf_size", scope: !297, file: !294, line: 300, type: !295)
!357 = !DILocation(line: 300, column: 6, scope: !297)
!358 = !DILocation(line: 302, column: 2, scope: !297)
!359 = !DILocalVariable(name: "ch", scope: !360, file: !294, line: 303, type: !295)
!360 = distinct !DILexicalBlock(scope: !297, file: !294, line: 302, column: 12)
!361 = !DILocation(line: 303, column: 7, scope: !360)
!362 = !DILocalVariable(name: "option_index", scope: !360, file: !294, line: 304, type: !295)
!363 = !DILocation(line: 304, column: 7, scope: !360)
!364 = !DILocation(line: 327, column: 20, scope: !360)
!365 = !DILocation(line: 327, column: 26, scope: !360)
!366 = !DILocation(line: 327, column: 8, scope: !360)
!367 = !DILocation(line: 327, column: 6, scope: !360)
!368 = !DILocation(line: 329, column: 7, scope: !369)
!369 = distinct !DILexicalBlock(scope: !360, file: !294, line: 329, column: 7)
!370 = !DILocation(line: 329, column: 10, scope: !369)
!371 = !DILocation(line: 329, column: 7, scope: !360)
!372 = !DILocation(line: 330, column: 4, scope: !369)
!373 = !DILocation(line: 332, column: 11, scope: !360)
!374 = !DILocation(line: 332, column: 3, scope: !360)
!375 = !DILocation(line: 335, column: 15, scope: !376)
!376 = distinct !DILexicalBlock(scope: !377, file: !294, line: 335, column: 8)
!377 = distinct !DILexicalBlock(scope: !360, file: !294, line: 332, column: 15)
!378 = !DILocation(line: 335, column: 8, scope: !376)
!379 = !DILocation(line: 335, column: 30, scope: !376)
!380 = !DILocation(line: 335, column: 8, scope: !377)
!381 = !DILocation(line: 336, column: 13, scope: !382)
!382 = distinct !DILexicalBlock(scope: !376, file: !294, line: 335, column: 36)
!383 = !DILocation(line: 337, column: 5, scope: !382)
!384 = !DILocation(line: 339, column: 21, scope: !377)
!385 = !DILocation(line: 339, column: 14, scope: !377)
!386 = !DILocation(line: 339, column: 12, scope: !377)
!387 = !DILocation(line: 340, column: 4, scope: !377)
!388 = !DILocation(line: 342, column: 15, scope: !389)
!389 = distinct !DILexicalBlock(scope: !377, file: !294, line: 342, column: 8)
!390 = !DILocation(line: 342, column: 8, scope: !389)
!391 = !DILocation(line: 342, column: 33, scope: !389)
!392 = !DILocation(line: 342, column: 8, scope: !377)
!393 = !DILocation(line: 343, column: 15, scope: !394)
!394 = distinct !DILexicalBlock(scope: !389, file: !294, line: 342, column: 39)
!395 = !DILocation(line: 344, column: 5, scope: !394)
!396 = !DILocation(line: 346, column: 15, scope: !397)
!397 = distinct !DILexicalBlock(scope: !377, file: !294, line: 346, column: 8)
!398 = !DILocation(line: 346, column: 8, scope: !397)
!399 = !DILocation(line: 346, column: 31, scope: !397)
!400 = !DILocation(line: 346, column: 8, scope: !377)
!401 = !DILocation(line: 347, column: 15, scope: !402)
!402 = distinct !DILexicalBlock(scope: !397, file: !294, line: 346, column: 37)
!403 = !DILocation(line: 348, column: 5, scope: !402)
!404 = !DILocation(line: 351, column: 23, scope: !377)
!405 = !DILocation(line: 351, column: 16, scope: !377)
!406 = !DILocation(line: 351, column: 14, scope: !377)
!407 = !DILocation(line: 352, column: 19, scope: !408)
!408 = distinct !DILexicalBlock(scope: !377, file: !294, line: 352, column: 8)
!409 = !DILocation(line: 352, column: 16, scope: !408)
!410 = !DILocation(line: 352, column: 30, scope: !408)
!411 = !DILocation(line: 353, column: 16, scope: !408)
!412 = !DILocation(line: 353, column: 13, scope: !408)
!413 = !DILocation(line: 352, column: 8, scope: !414)
!414 = !DILexicalBlockFile(scope: !377, file: !294, discriminator: 1)
!415 = !DILocation(line: 354, column: 11, scope: !416)
!416 = distinct !DILexicalBlock(scope: !408, file: !294, line: 353, column: 28)
!417 = !DILocation(line: 354, column: 5, scope: !416)
!418 = !DILocation(line: 355, column: 5, scope: !416)
!419 = !DILocation(line: 357, column: 4, scope: !377)
!420 = !DILocation(line: 359, column: 18, scope: !377)
!421 = !DILocation(line: 359, column: 10, scope: !377)
!422 = !DILocation(line: 359, column: 8, scope: !377)
!423 = !DILocation(line: 360, column: 4, scope: !377)
!424 = !DILocation(line: 362, column: 14, scope: !377)
!425 = !DILocation(line: 363, column: 4, scope: !377)
!426 = !DILocation(line: 365, column: 14, scope: !377)
!427 = !DILocation(line: 366, column: 4, scope: !377)
!428 = !DILocation(line: 368, column: 16, scope: !377)
!429 = !DILocation(line: 369, column: 4, scope: !377)
!430 = !DILocation(line: 371, column: 31, scope: !377)
!431 = !DILocation(line: 371, column: 20, scope: !377)
!432 = !DILocation(line: 371, column: 18, scope: !377)
!433 = !DILocation(line: 372, column: 4, scope: !377)
!434 = !DILocation(line: 375, column: 10, scope: !377)
!435 = !DILocation(line: 375, column: 4, scope: !377)
!436 = !DILocation(line: 376, column: 4, scope: !377)
!437 = !DILocation(line: 379, column: 19, scope: !377)
!438 = !DILocation(line: 379, column: 4, scope: !377)
!439 = !DILocation(line: 380, column: 4, scope: !377)
!440 = !DILocation(line: 382, column: 14, scope: !377)
!441 = !DILocation(line: 383, column: 4, scope: !377)
!442 = !DILocation(line: 385, column: 16, scope: !377)
!443 = !DILocation(line: 386, column: 4, scope: !377)
!444 = !DILocation(line: 388, column: 10, scope: !377)
!445 = !DILocation(line: 388, column: 4, scope: !377)
!446 = !DILocation(line: 389, column: 4, scope: !377)
!447 = !DILocation(line: 302, column: 2, scope: !448)
!448 = !DILexicalBlockFile(scope: !297, file: !294, discriminator: 1)
!449 = distinct !{!449, !358}
!450 = !DILocation(line: 393, column: 13, scope: !297)
!451 = !DILocation(line: 393, column: 18, scope: !297)
!452 = !DILocation(line: 393, column: 2, scope: !297)
!453 = !DILocation(line: 394, column: 13, scope: !297)
!454 = !DILocation(line: 394, column: 26, scope: !297)
!455 = !DILocation(line: 394, column: 2, scope: !297)
!456 = !DILocation(line: 395, column: 24, scope: !297)
!457 = !DILocation(line: 395, column: 2, scope: !297)
!458 = !DILocation(line: 396, column: 12, scope: !459)
!459 = distinct !DILexicalBlock(scope: !297, file: !294, line: 396, column: 6)
!460 = !DILocation(line: 396, column: 9, scope: !459)
!461 = !DILocation(line: 396, column: 6, scope: !297)
!462 = !DILocation(line: 397, column: 12, scope: !463)
!463 = distinct !DILexicalBlock(scope: !464, file: !294, line: 397, column: 7)
!464 = distinct !DILexicalBlock(scope: !459, file: !294, line: 396, column: 21)
!465 = !DILocation(line: 397, column: 9, scope: !463)
!466 = !DILocation(line: 397, column: 7, scope: !464)
!467 = !DILocation(line: 398, column: 4, scope: !468)
!468 = distinct !DILexicalBlock(scope: !463, file: !294, line: 397, column: 24)
!469 = distinct !{!469, !467}
!470 = !DILocation(line: 398, column: 13, scope: !471)
!471 = !DILexicalBlockFile(scope: !472, file: !294, discriminator: 1)
!472 = distinct !DILexicalBlock(scope: !473, file: !294, line: 398, column: 13)
!473 = distinct !DILexicalBlock(scope: !468, file: !294, line: 398, column: 7)
!474 = !DILocation(line: 398, column: 3, scope: !475)
!475 = !DILexicalBlockFile(scope: !472, file: !294, discriminator: 2)
!476 = !DILocation(line: 398, column: 27, scope: !475)
!477 = !DILocation(line: 398, column: 71, scope: !478)
!478 = !DILexicalBlockFile(scope: !473, file: !294, discriminator: 3)
!479 = !DILocation(line: 400, column: 15, scope: !468)
!480 = !DILocation(line: 401, column: 3, scope: !468)
!481 = !DILocation(line: 402, column: 2, scope: !464)
!482 = !DILocation(line: 404, column: 21, scope: !297)
!483 = !DILocation(line: 404, column: 30, scope: !297)
!484 = !DILocation(line: 404, column: 10, scope: !297)
!485 = !DILocation(line: 404, column: 8, scope: !297)
!486 = !DILocation(line: 406, column: 6, scope: !487)
!487 = distinct !DILexicalBlock(scope: !297, file: !294, line: 406, column: 6)
!488 = !DILocation(line: 406, column: 12, scope: !487)
!489 = !DILocation(line: 406, column: 6, scope: !297)
!490 = !DILocation(line: 408, column: 4, scope: !491)
!491 = distinct !DILexicalBlock(scope: !487, file: !294, line: 406, column: 20)
!492 = !DILocation(line: 408, column: 13, scope: !491)
!493 = !DILocation(line: 409, column: 18, scope: !491)
!494 = !DILocation(line: 409, column: 4, scope: !491)
!495 = !DILocation(line: 409, column: 29, scope: !491)
!496 = !DILocation(line: 409, column: 49, scope: !497)
!497 = !DILexicalBlockFile(scope: !491, file: !294, discriminator: 1)
!498 = !DILocation(line: 409, column: 48, scope: !491)
!499 = !DILocation(line: 409, column: 39, scope: !500)
!500 = !DILexicalBlockFile(scope: !491, file: !294, discriminator: 2)
!501 = !DILocation(line: 407, column: 3, scope: !491)
!502 = !DILocation(line: 410, column: 3, scope: !491)
!503 = !DILocation(line: 413, column: 6, scope: !504)
!504 = distinct !DILexicalBlock(scope: !297, file: !294, line: 413, column: 6)
!505 = !DILocation(line: 413, column: 6, scope: !297)
!506 = !DILocation(line: 414, column: 19, scope: !507)
!507 = distinct !DILexicalBlock(scope: !504, file: !294, line: 413, column: 18)
!508 = !DILocation(line: 414, column: 30, scope: !507)
!509 = !DILocation(line: 414, column: 10, scope: !507)
!510 = !DILocation(line: 414, column: 8, scope: !507)
!511 = !DILocation(line: 415, column: 19, scope: !507)
!512 = !DILocation(line: 415, column: 30, scope: !507)
!513 = !DILocation(line: 415, column: 10, scope: !507)
!514 = !DILocation(line: 415, column: 8, scope: !507)
!515 = !DILocation(line: 416, column: 7, scope: !516)
!516 = distinct !DILexicalBlock(scope: !507, file: !294, line: 416, column: 7)
!517 = !DILocation(line: 416, column: 18, scope: !516)
!518 = !DILocation(line: 416, column: 7, scope: !507)
!519 = !DILocation(line: 417, column: 21, scope: !520)
!520 = distinct !DILexicalBlock(scope: !516, file: !294, line: 416, column: 23)
!521 = !DILocation(line: 417, column: 28, scope: !520)
!522 = !DILocation(line: 417, column: 34, scope: !520)
!523 = !DILocation(line: 417, column: 4, scope: !520)
!524 = !DILocation(line: 418, column: 21, scope: !520)
!525 = !DILocation(line: 418, column: 28, scope: !520)
!526 = !DILocation(line: 418, column: 34, scope: !520)
!527 = !DILocation(line: 418, column: 4, scope: !520)
!528 = !DILocation(line: 419, column: 3, scope: !520)
!529 = !DILocation(line: 420, column: 2, scope: !507)
!530 = !DILocation(line: 421, column: 23, scope: !531)
!531 = distinct !DILexicalBlock(scope: !504, file: !294, line: 420, column: 9)
!532 = !DILocation(line: 421, column: 30, scope: !531)
!533 = !DILocation(line: 421, column: 10, scope: !531)
!534 = !DILocation(line: 421, column: 8, scope: !531)
!535 = !DILocation(line: 422, column: 23, scope: !531)
!536 = !DILocation(line: 422, column: 30, scope: !531)
!537 = !DILocation(line: 422, column: 10, scope: !531)
!538 = !DILocation(line: 422, column: 8, scope: !531)
!539 = !DILocation(line: 425, column: 7, scope: !540)
!540 = distinct !DILexicalBlock(scope: !297, file: !294, line: 425, column: 6)
!541 = !DILocation(line: 425, column: 12, scope: !540)
!542 = !DILocation(line: 425, column: 20, scope: !540)
!543 = !DILocation(line: 425, column: 24, scope: !544)
!544 = !DILexicalBlockFile(scope: !540, file: !294, discriminator: 1)
!545 = !DILocation(line: 425, column: 29, scope: !544)
!546 = !DILocation(line: 425, column: 6, scope: !544)
!547 = !DILocation(line: 426, column: 3, scope: !548)
!548 = distinct !DILexicalBlock(scope: !540, file: !294, line: 425, column: 39)
!549 = distinct !{!549, !547}
!550 = !DILocation(line: 426, column: 2, scope: !551)
!551 = !DILexicalBlockFile(scope: !552, file: !294, discriminator: 1)
!552 = distinct !DILexicalBlock(scope: !548, file: !294, line: 426, column: 6)
!553 = !DILocation(line: 426, column: 8, scope: !551)
!554 = !DILocation(line: 426, column: 73, scope: !551)
!555 = !DILocation(line: 427, column: 3, scope: !548)
!556 = !DILocation(line: 430, column: 2, scope: !297)
!557 = !DILocation(line: 430, column: 9, scope: !448)
!558 = !DILocation(line: 430, column: 18, scope: !448)
!559 = !DILocation(line: 430, column: 16, scope: !448)
!560 = !DILocation(line: 430, column: 2, scope: !448)
!561 = !DILocation(line: 431, column: 21, scope: !562)
!562 = distinct !DILexicalBlock(scope: !297, file: !294, line: 430, column: 24)
!563 = !DILocation(line: 431, column: 10, scope: !562)
!564 = !DILocation(line: 431, column: 8, scope: !562)
!565 = !DILocation(line: 432, column: 19, scope: !562)
!566 = !DILocation(line: 432, column: 26, scope: !562)
!567 = !DILocation(line: 432, column: 32, scope: !562)
!568 = !DILocation(line: 432, column: 38, scope: !562)
!569 = !DILocation(line: 432, column: 44, scope: !562)
!570 = !DILocation(line: 433, column: 4, scope: !562)
!571 = !DILocation(line: 433, column: 18, scope: !562)
!572 = !DILocation(line: 433, column: 30, scope: !562)
!573 = !DILocation(line: 432, column: 3, scope: !562)
!574 = !DILocation(line: 430, column: 2, scope: !575)
!575 = !DILexicalBlockFile(scope: !297, file: !294, discriminator: 2)
!576 = distinct !{!576, !556}
!577 = !DILocation(line: 436, column: 6, scope: !578)
!578 = distinct !DILexicalBlock(scope: !297, file: !294, line: 436, column: 6)
!579 = !DILocation(line: 436, column: 6, scope: !297)
!580 = !DILocation(line: 437, column: 7, scope: !581)
!581 = distinct !DILexicalBlock(scope: !582, file: !294, line: 437, column: 7)
!582 = distinct !DILexicalBlock(scope: !578, file: !294, line: 436, column: 18)
!583 = !DILocation(line: 437, column: 18, scope: !581)
!584 = !DILocation(line: 437, column: 7, scope: !582)
!585 = !DILocation(line: 438, column: 23, scope: !586)
!586 = distinct !DILexicalBlock(scope: !581, file: !294, line: 437, column: 23)
!587 = !DILocation(line: 438, column: 30, scope: !586)
!588 = !DILocation(line: 438, column: 36, scope: !586)
!589 = !DILocation(line: 438, column: 4, scope: !586)
!590 = !DILocation(line: 439, column: 23, scope: !586)
!591 = !DILocation(line: 439, column: 30, scope: !586)
!592 = !DILocation(line: 439, column: 36, scope: !586)
!593 = !DILocation(line: 439, column: 4, scope: !586)
!594 = !DILocation(line: 440, column: 3, scope: !586)
!595 = !DILocation(line: 441, column: 8, scope: !582)
!596 = !DILocation(line: 441, column: 3, scope: !582)
!597 = !DILocation(line: 442, column: 8, scope: !582)
!598 = !DILocation(line: 442, column: 3, scope: !582)
!599 = !DILocation(line: 443, column: 2, scope: !582)
!600 = !DILocation(line: 444, column: 14, scope: !601)
!601 = distinct !DILexicalBlock(scope: !578, file: !294, line: 443, column: 9)
!602 = !DILocation(line: 444, column: 21, scope: !601)
!603 = !DILocation(line: 444, column: 27, scope: !601)
!604 = !DILocation(line: 444, column: 3, scope: !601)
!605 = !DILocation(line: 445, column: 14, scope: !601)
!606 = !DILocation(line: 445, column: 21, scope: !601)
!607 = !DILocation(line: 445, column: 27, scope: !601)
!608 = !DILocation(line: 445, column: 3, scope: !601)
!609 = !DILocation(line: 448, column: 14, scope: !297)
!610 = !DILocation(line: 448, column: 2, scope: !297)
!611 = !DILocation(line: 449, column: 2, scope: !297)
!612 = !DILocation(line: 450, column: 1, scope: !297)
!613 = distinct !DISubprogram(name: "usage", scope: !294, file: !294, line: 58, type: !614, isLocal: true, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !300)
!614 = !DISubroutineType(types: !615)
!615 = !{null, !306}
!616 = !DILocalVariable(name: "prog", arg: 1, scope: !613, file: !294, line: 58, type: !306)
!617 = !DILocation(line: 58, column: 31, scope: !613)
!618 = !DILocation(line: 75, column: 9, scope: !613)
!619 = !DILocation(line: 60, column: 2, scope: !613)
!620 = !DILocation(line: 76, column: 1, scope: !613)
!621 = distinct !DISubprogram(name: "str_to_num", scope: !294, file: !294, line: 84, type: !622, isLocal: true, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !300)
!622 = !DISubroutineType(types: !623)
!623 = !{!232, !223}
!624 = !DILocalVariable(name: "str", arg: 1, scope: !621, file: !294, line: 84, type: !223)
!625 = !DILocation(line: 84, column: 41, scope: !621)
!626 = !DILocalVariable(name: "s", scope: !621, file: !294, line: 86, type: !223)
!627 = !DILocation(line: 86, column: 8, scope: !621)
!628 = !DILocation(line: 86, column: 12, scope: !621)
!629 = !DILocalVariable(name: "num", scope: !621, file: !294, line: 87, type: !232)
!630 = !DILocation(line: 87, column: 11, scope: !621)
!631 = !DILocation(line: 87, column: 26, scope: !621)
!632 = !DILocation(line: 87, column: 17, scope: !621)
!633 = !DILocation(line: 89, column: 7, scope: !634)
!634 = distinct !DILexicalBlock(scope: !621, file: !294, line: 89, column: 6)
!635 = !DILocation(line: 89, column: 6, scope: !634)
!636 = !DILocation(line: 89, column: 9, scope: !634)
!637 = !DILocation(line: 89, column: 6, scope: !621)
!638 = !DILocation(line: 90, column: 10, scope: !634)
!639 = !DILocation(line: 90, column: 3, scope: !634)
!640 = !DILocation(line: 92, column: 13, scope: !641)
!641 = distinct !DILexicalBlock(scope: !621, file: !294, line: 92, column: 6)
!642 = !DILocation(line: 92, column: 6, scope: !641)
!643 = !DILocation(line: 92, column: 23, scope: !641)
!644 = !DILocation(line: 92, column: 6, scope: !621)
!645 = !DILocation(line: 93, column: 7, scope: !641)
!646 = !DILocation(line: 93, column: 3, scope: !641)
!647 = !DILocation(line: 94, column: 18, scope: !648)
!648 = distinct !DILexicalBlock(scope: !641, file: !294, line: 94, column: 11)
!649 = !DILocation(line: 94, column: 11, scope: !648)
!650 = !DILocation(line: 94, column: 28, scope: !648)
!651 = !DILocation(line: 94, column: 11, scope: !641)
!652 = !DILocation(line: 95, column: 7, scope: !648)
!653 = !DILocation(line: 95, column: 3, scope: !648)
!654 = !DILocation(line: 96, column: 18, scope: !655)
!655 = distinct !DILexicalBlock(scope: !648, file: !294, line: 96, column: 11)
!656 = !DILocation(line: 96, column: 11, scope: !655)
!657 = !DILocation(line: 96, column: 28, scope: !655)
!658 = !DILocation(line: 96, column: 11, scope: !648)
!659 = !DILocation(line: 97, column: 7, scope: !655)
!660 = !DILocation(line: 97, column: 3, scope: !655)
!661 = !DILocation(line: 99, column: 9, scope: !621)
!662 = !DILocation(line: 99, column: 2, scope: !621)
!663 = !DILocation(line: 100, column: 1, scope: !621)
!664 = distinct !DISubprogram(name: "process_in_file", scope: !294, file: !294, line: 172, type: !665, isLocal: true, isDefinition: true, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !300)
!665 = !DISubroutineType(types: !666)
!666 = !{!295, !329, !306, !335, !225, !295, !295, !295, !295}
!667 = !DILocalVariable(name: "accel", arg: 1, scope: !664, file: !294, line: 172, type: !329)
!668 = !DILocation(line: 172, column: 36, scope: !664)
!669 = !DILocalVariable(name: "in_f", arg: 2, scope: !664, file: !294, line: 172, type: !306)
!670 = !DILocation(line: 172, column: 55, scope: !664)
!671 = !DILocalVariable(name: "ibuf", arg: 3, scope: !664, file: !294, line: 173, type: !335)
!672 = !DILocation(line: 173, column: 16, scope: !664)
!673 = !DILocalVariable(name: "obuf", arg: 4, scope: !664, file: !294, line: 173, type: !225)
!674 = !DILocation(line: 173, column: 28, scope: !664)
!675 = !DILocalVariable(name: "ibuf_size", arg: 5, scope: !664, file: !294, line: 173, type: !295)
!676 = !DILocation(line: 173, column: 38, scope: !664)
!677 = !DILocalVariable(name: "check_result", arg: 6, scope: !664, file: !294, line: 174, type: !295)
!678 = !DILocation(line: 174, column: 11, scope: !664)
!679 = !DILocalVariable(name: "use_sglist", arg: 7, scope: !664, file: !294, line: 175, type: !295)
!680 = !DILocation(line: 175, column: 11, scope: !664)
!681 = !DILocalVariable(name: "use_adler", arg: 8, scope: !664, file: !294, line: 176, type: !295)
!682 = !DILocation(line: 176, column: 32, scope: !664)
!683 = !DILocalVariable(name: "rc", scope: !664, file: !294, line: 178, type: !295)
!684 = !DILocation(line: 178, column: 6, scope: !664)
!685 = !DILocalVariable(name: "size_f", scope: !664, file: !294, line: 178, type: !295)
!686 = !DILocation(line: 178, column: 10, scope: !664)
!687 = !DILocalVariable(name: "st", scope: !664, file: !294, line: 179, type: !688)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !689, line: 46, size: 1152, align: 64, elements: !690)
!689 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop")
!690 = !{!691, !694, !696, !698, !700, !702, !704, !705, !706, !709, !711, !713, !721, !722, !723}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !688, file: !689, line: 48, baseType: !692, size: 64, align: 64)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !693, line: 124, baseType: !234)
!693 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop")
!694 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !688, file: !689, line: 53, baseType: !695, size: 64, align: 64, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !693, line: 127, baseType: !234)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !688, file: !689, line: 61, baseType: !697, size: 64, align: 64, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !693, line: 130, baseType: !234)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !688, file: !689, line: 62, baseType: !699, size: 32, align: 32, offset: 192)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !693, line: 129, baseType: !237)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !688, file: !689, line: 64, baseType: !701, size: 32, align: 32, offset: 224)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !693, line: 125, baseType: !237)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !688, file: !689, line: 65, baseType: !703, size: 32, align: 32, offset: 256)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !693, line: 126, baseType: !237)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !688, file: !689, line: 67, baseType: !295, size: 32, align: 32, offset: 288)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !688, file: !689, line: 69, baseType: !692, size: 64, align: 64, offset: 320)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !688, file: !689, line: 74, baseType: !707, size: 64, align: 64, offset: 384)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !693, line: 131, baseType: !708)
!708 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !688, file: !689, line: 78, baseType: !710, size: 64, align: 64, offset: 448)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !693, line: 153, baseType: !708)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !688, file: !689, line: 80, baseType: !712, size: 64, align: 64, offset: 512)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !693, line: 158, baseType: !708)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !688, file: !689, line: 91, baseType: !714, size: 128, align: 64, offset: 576)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !715, line: 120, size: 128, align: 64, elements: !716)
!715 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop")
!716 = !{!717, !719}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !714, file: !715, line: 122, baseType: !718, size: 64, align: 64)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !693, line: 139, baseType: !708)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !714, file: !715, line: 123, baseType: !720, size: 64, align: 64, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !693, line: 175, baseType: !708)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !688, file: !689, line: 92, baseType: !714, size: 128, align: 64, offset: 704)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !688, file: !689, line: 93, baseType: !714, size: 128, align: 64, offset: 832)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !688, file: !689, line: 106, baseType: !724, size: 192, align: 64, offset: 960)
!724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !720, size: 192, align: 64, elements: !278)
!725 = !DILocation(line: 179, column: 14, scope: !664)
!726 = !DILocalVariable(name: "i_fp", scope: !664, file: !294, line: 180, type: !727)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64, align: 64)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !729, line: 48, baseType: !730)
!729 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop")
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !731, line: 241, size: 1728, align: 64, elements: !732)
!731 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop")
!732 = !{!733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !753, !754, !755, !756, !757, !758, !760, !764, !767, !769, !770, !771, !772, !773, !776, !777}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !730, file: !731, line: 242, baseType: !295, size: 32, align: 32)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !730, file: !731, line: 247, baseType: !223, size: 64, align: 64, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !730, file: !731, line: 248, baseType: !223, size: 64, align: 64, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !730, file: !731, line: 249, baseType: !223, size: 64, align: 64, offset: 192)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !730, file: !731, line: 250, baseType: !223, size: 64, align: 64, offset: 256)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !730, file: !731, line: 251, baseType: !223, size: 64, align: 64, offset: 320)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !730, file: !731, line: 252, baseType: !223, size: 64, align: 64, offset: 384)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !730, file: !731, line: 253, baseType: !223, size: 64, align: 64, offset: 448)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !730, file: !731, line: 254, baseType: !223, size: 64, align: 64, offset: 512)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !730, file: !731, line: 256, baseType: !223, size: 64, align: 64, offset: 576)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !730, file: !731, line: 257, baseType: !223, size: 64, align: 64, offset: 640)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !730, file: !731, line: 258, baseType: !223, size: 64, align: 64, offset: 704)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !730, file: !731, line: 260, baseType: !746, size: 64, align: 64, offset: 768)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64, align: 64)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !731, line: 156, size: 192, align: 64, elements: !748)
!748 = !{!749, !750, !752}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !747, file: !731, line: 157, baseType: !746, size: 64, align: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !747, file: !731, line: 158, baseType: !751, size: 64, align: 64, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64, align: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !747, file: !731, line: 162, baseType: !295, size: 32, align: 32, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !730, file: !731, line: 262, baseType: !751, size: 64, align: 64, offset: 832)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !730, file: !731, line: 264, baseType: !295, size: 32, align: 32, offset: 896)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !730, file: !731, line: 268, baseType: !295, size: 32, align: 32, offset: 928)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !730, file: !731, line: 270, baseType: !707, size: 64, align: 64, offset: 960)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !730, file: !731, line: 274, baseType: !240, size: 16, align: 16, offset: 1024)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !730, file: !731, line: 275, baseType: !759, size: 8, align: 8, offset: 1040)
!759 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !730, file: !731, line: 276, baseType: !761, size: 8, align: 8, offset: 1048)
!761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 8, align: 8, elements: !762)
!762 = !{!763}
!763 = !DISubrange(count: 1)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !730, file: !731, line: 280, baseType: !765, size: 64, align: 64, offset: 1088)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64, align: 64)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !731, line: 150, baseType: null)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !730, file: !731, line: 289, baseType: !768, size: 64, align: 64, offset: 1152)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !693, line: 132, baseType: !708)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !730, file: !731, line: 297, baseType: !225, size: 64, align: 64, offset: 1216)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !730, file: !731, line: 298, baseType: !225, size: 64, align: 64, offset: 1280)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !730, file: !731, line: 299, baseType: !225, size: 64, align: 64, offset: 1344)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !730, file: !731, line: 300, baseType: !225, size: 64, align: 64, offset: 1408)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !730, file: !731, line: 302, baseType: !774, size: 64, align: 64, offset: 1472)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !775, line: 216, baseType: !234)
!775 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop")
!776 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !730, file: !731, line: 303, baseType: !295, size: 32, align: 32, offset: 1536)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !730, file: !731, line: 305, baseType: !778, size: 160, align: 8, offset: 1568)
!778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 160, align: 8, elements: !779)
!779 = !{!780}
!780 = !DISubrange(count: 20)
!781 = !DILocation(line: 180, column: 8, scope: !664)
!782 = !DILocalVariable(name: "crc", scope: !664, file: !294, line: 181, type: !236)
!783 = !DILocation(line: 181, column: 11, scope: !664)
!784 = !DILocalVariable(name: "m_crc32", scope: !664, file: !294, line: 181, type: !236)
!785 = !DILocation(line: 181, column: 20, scope: !664)
!786 = !DILocalVariable(name: "m_adler32", scope: !664, file: !294, line: 182, type: !236)
!787 = !DILocation(line: 182, column: 11, scope: !664)
!788 = !DILocalVariable(name: "m_inp_processed", scope: !664, file: !294, line: 183, type: !236)
!789 = !DILocation(line: 183, column: 11, scope: !664)
!790 = !DILocalVariable(name: "cmd", scope: !664, file: !294, line: 184, type: !791)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ddcb_cmd", file: !330, line: 154, size: 1856, align: 64, elements: !792)
!792 = !{!793, !794, !795, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !813}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "next_addr", scope: !791, file: !330, line: 155, baseType: !250, size: 64, align: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !791, file: !330, line: 156, baseType: !250, size: 64, align: 64, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "acfunc", scope: !791, file: !330, line: 158, baseType: !796, size: 8, align: 8, offset: 128)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !251, line: 20, baseType: !337)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !791, file: !330, line: 159, baseType: !796, size: 8, align: 8, offset: 136)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "asiv_length", scope: !791, file: !330, line: 160, baseType: !796, size: 8, align: 8, offset: 144)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "asv_length", scope: !791, file: !330, line: 161, baseType: !796, size: 8, align: 8, offset: 152)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "cmdopts", scope: !791, file: !330, line: 162, baseType: !257, size: 16, align: 16, offset: 160)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "retc", scope: !791, file: !330, line: 163, baseType: !257, size: 16, align: 16, offset: 176)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "attn", scope: !791, file: !330, line: 165, baseType: !257, size: 16, align: 16, offset: 192)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "vcrc", scope: !791, file: !330, line: 166, baseType: !257, size: 16, align: 16, offset: 208)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !791, file: !330, line: 167, baseType: !255, size: 32, align: 32, offset: 224)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "deque_ts", scope: !791, file: !330, line: 169, baseType: !250, size: 64, align: 64, offset: 256)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "cmplt_ts", scope: !791, file: !330, line: 170, baseType: !250, size: 64, align: 64, offset: 320)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "disp_ts", scope: !791, file: !330, line: 171, baseType: !250, size: 64, align: 64, offset: 384)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "ddata_addr", scope: !791, file: !330, line: 173, baseType: !250, size: 64, align: 64, offset: 448)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "asv", scope: !791, file: !330, line: 175, baseType: !810, size: 512, align: 8, offset: 512)
!810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !796, size: 512, align: 8, elements: !811)
!811 = !{!812}
!812 = !DISubrange(count: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, scope: !791, file: !330, line: 177, baseType: !814, size: 832, align: 64, offset: 1024)
!814 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !791, file: !330, line: 177, size: 832, align: 64, elements: !815)
!815 = !{!816, !824}
!816 = !DIDerivedType(tag: DW_TAG_member, scope: !814, file: !330, line: 179, baseType: !817, size: 832, align: 64)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !814, file: !330, line: 179, size: 832, align: 64, elements: !818)
!818 = !{!819, !820}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "ats", scope: !817, file: !330, line: 180, baseType: !250, size: 64, align: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "asiv", scope: !817, file: !330, line: 181, baseType: !821, size: 768, align: 8, offset: 64)
!821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !796, size: 768, align: 8, elements: !822)
!822 = !{!823}
!823 = !DISubrange(count: 96)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "__asiv", scope: !814, file: !330, line: 184, baseType: !825, size: 832, align: 8)
!825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !796, size: 832, align: 8, elements: !826)
!826 = !{!827}
!827 = !DISubrange(count: 104)
!828 = !DILocation(line: 184, column: 18, scope: !664)
!829 = !DILocalVariable(name: "xerrno", scope: !664, file: !294, line: 185, type: !295)
!830 = !DILocation(line: 185, column: 6, scope: !664)
!831 = !DILocation(line: 187, column: 6, scope: !832)
!832 = distinct !DILexicalBlock(scope: !664, file: !294, line: 187, column: 6)
!833 = !DILocation(line: 187, column: 6, scope: !664)
!834 = !DILocation(line: 188, column: 9, scope: !832)
!835 = !DILocation(line: 188, column: 7, scope: !832)
!836 = !DILocation(line: 188, column: 3, scope: !832)
!837 = !DILocation(line: 191, column: 11, scope: !838)
!838 = distinct !DILexicalBlock(scope: !664, file: !294, line: 191, column: 6)
!839 = !DILocation(line: 191, column: 6, scope: !838)
!840 = !DILocation(line: 191, column: 22, scope: !838)
!841 = !DILocation(line: 191, column: 6, scope: !664)
!842 = !DILocation(line: 192, column: 10, scope: !843)
!843 = distinct !DILexicalBlock(scope: !838, file: !294, line: 191, column: 29)
!844 = !DILocation(line: 193, column: 14, scope: !843)
!845 = !DILocation(line: 193, column: 13, scope: !843)
!846 = !DILocation(line: 193, column: 4, scope: !847)
!847 = !DILexicalBlockFile(scope: !843, file: !294, discriminator: 1)
!848 = !DILocation(line: 192, column: 3, scope: !843)
!849 = !DILocation(line: 194, column: 4, scope: !843)
!850 = !DILocation(line: 196, column: 14, scope: !664)
!851 = !DILocation(line: 196, column: 11, scope: !664)
!852 = !DILocation(line: 196, column: 9, scope: !664)
!853 = !DILocation(line: 198, column: 15, scope: !664)
!854 = !DILocation(line: 198, column: 9, scope: !664)
!855 = !DILocation(line: 198, column: 7, scope: !664)
!856 = !DILocation(line: 199, column: 7, scope: !857)
!857 = distinct !DILexicalBlock(scope: !664, file: !294, line: 199, column: 6)
!858 = !DILocation(line: 199, column: 6, scope: !664)
!859 = !DILocation(line: 200, column: 3, scope: !860)
!860 = distinct !DILexicalBlock(scope: !857, file: !294, line: 199, column: 13)
!861 = distinct !{!861, !859}
!862 = !DILocation(line: 200, column: 2, scope: !863)
!863 = !DILexicalBlockFile(scope: !864, file: !294, discriminator: 1)
!864 = distinct !DILexicalBlock(scope: !860, file: !294, line: 200, column: 6)
!865 = !DILocation(line: 200, column: 5, scope: !863)
!866 = !DILocation(line: 200, column: 4, scope: !863)
!867 = !DILocation(line: 200, column: 3, scope: !863)
!868 = !DILocation(line: 200, column: 11, scope: !869)
!869 = !DILexicalBlockFile(scope: !863, file: !294, discriminator: 2)
!870 = !DILocation(line: 200, column: 8, scope: !871)
!871 = !DILexicalBlockFile(scope: !863, file: !294, discriminator: 3)
!872 = !DILocation(line: 200, column: 6, scope: !863)
!873 = !DILocation(line: 202, column: 3, scope: !860)
!874 = !DILocation(line: 205, column: 2, scope: !664)
!875 = !DILocation(line: 205, column: 9, scope: !876)
!876 = !DILexicalBlockFile(scope: !664, file: !294, discriminator: 1)
!877 = !DILocation(line: 205, column: 2, scope: !876)
!878 = !DILocalVariable(name: "tocopy", scope: !879, file: !294, line: 206, type: !295)
!879 = distinct !DILexicalBlock(scope: !664, file: !294, line: 205, column: 17)
!880 = !DILocation(line: 206, column: 7, scope: !879)
!881 = !DILocalVariable(name: "_a", scope: !882, file: !294, line: 206, type: !295)
!882 = distinct !DILexicalBlock(scope: !879, file: !294, line: 206, column: 17)
!883 = !DILocation(line: 206, column: 42, scope: !882)
!884 = !DILocation(line: 206, column: 48, scope: !882)
!885 = !DILocalVariable(name: "_b", scope: !882, file: !294, line: 206, type: !295)
!886 = !DILocation(line: 206, column: 80, scope: !882)
!887 = !DILocation(line: 206, column: 86, scope: !882)
!888 = !DILocation(line: 206, column: 95, scope: !882)
!889 = !DILocation(line: 206, column: 100, scope: !882)
!890 = !DILocation(line: 206, column: 98, scope: !882)
!891 = !DILocation(line: 206, column: 105, scope: !892)
!892 = !DILexicalBlockFile(scope: !882, file: !294, discriminator: 1)
!893 = !DILocation(line: 206, column: 95, scope: !892)
!894 = !DILocation(line: 206, column: 110, scope: !895)
!895 = !DILexicalBlockFile(scope: !882, file: !294, discriminator: 2)
!896 = !DILocation(line: 206, column: 95, scope: !895)
!897 = !DILocation(line: 206, column: 95, scope: !898)
!898 = !DILexicalBlockFile(scope: !882, file: !294, discriminator: 3)
!899 = !DILocation(line: 206, column: 60, scope: !898)
!900 = !DILocation(line: 206, column: 114, scope: !898)
!901 = !DILocation(line: 206, column: 7, scope: !898)
!902 = !DILocation(line: 208, column: 14, scope: !879)
!903 = !DILocation(line: 208, column: 20, scope: !879)
!904 = !DILocation(line: 208, column: 31, scope: !879)
!905 = !DILocation(line: 208, column: 8, scope: !879)
!906 = !DILocation(line: 208, column: 6, scope: !879)
!907 = !DILocation(line: 209, column: 7, scope: !908)
!908 = distinct !DILexicalBlock(scope: !879, file: !294, line: 209, column: 7)
!909 = !DILocation(line: 209, column: 10, scope: !908)
!910 = !DILocation(line: 209, column: 7, scope: !879)
!911 = !DILocation(line: 210, column: 4, scope: !912)
!912 = distinct !DILexicalBlock(scope: !908, file: !294, line: 209, column: 16)
!913 = distinct !{!913, !911}
!914 = !DILocation(line: 210, column: 3, scope: !915)
!915 = !DILexicalBlockFile(scope: !916, file: !294, discriminator: 1)
!916 = distinct !DILexicalBlock(scope: !912, file: !294, line: 210, column: 7)
!917 = !DILocation(line: 210, column: 6, scope: !915)
!918 = !DILocation(line: 210, column: 5, scope: !915)
!919 = !DILocation(line: 210, column: 4, scope: !915)
!920 = !DILocation(line: 210, column: 12, scope: !921)
!921 = !DILexicalBlockFile(scope: !915, file: !294, discriminator: 2)
!922 = !DILocation(line: 210, column: 9, scope: !923)
!923 = !DILexicalBlockFile(scope: !915, file: !294, discriminator: 3)
!924 = !DILocation(line: 210, column: 7, scope: !915)
!925 = !DILocation(line: 212, column: 4, scope: !912)
!926 = !DILocation(line: 215, column: 7, scope: !927)
!927 = distinct !DILexicalBlock(scope: !879, file: !294, line: 215, column: 7)
!928 = !DILocation(line: 215, column: 7, scope: !879)
!929 = !DILocation(line: 216, column: 16, scope: !927)
!930 = !DILocation(line: 216, column: 21, scope: !927)
!931 = !DILocation(line: 216, column: 27, scope: !927)
!932 = !DILocation(line: 216, column: 10, scope: !927)
!933 = !DILocation(line: 216, column: 8, scope: !927)
!934 = !DILocation(line: 216, column: 4, scope: !927)
!935 = !DILocation(line: 218, column: 20, scope: !879)
!936 = !DILocation(line: 218, column: 33, scope: !879)
!937 = !DILocation(line: 218, column: 39, scope: !879)
!938 = !DILocation(line: 218, column: 45, scope: !879)
!939 = !DILocation(line: 220, column: 11, scope: !879)
!940 = !DILocation(line: 218, column: 8, scope: !879)
!941 = !DILocation(line: 218, column: 6, scope: !879)
!942 = !DILocation(line: 221, column: 13, scope: !879)
!943 = !DILocation(line: 221, column: 12, scope: !879)
!944 = !DILocation(line: 221, column: 10, scope: !879)
!945 = !DILocation(line: 224, column: 7, scope: !946)
!946 = distinct !DILexicalBlock(scope: !879, file: !294, line: 224, column: 7)
!947 = !DILocation(line: 224, column: 10, scope: !946)
!948 = !DILocation(line: 224, column: 7, scope: !879)
!949 = !DILocalVariable(name: "d", scope: !950, file: !294, line: 225, type: !227)
!950 = distinct !DILexicalBlock(scope: !946, file: !294, line: 224, column: 16)
!951 = !DILocation(line: 225, column: 34, scope: !950)
!952 = !DILocation(line: 227, column: 11, scope: !950)
!953 = !DILocation(line: 229, column: 41, scope: !950)
!954 = !DILocation(line: 229, column: 27, scope: !950)
!955 = !DILocation(line: 230, column: 5, scope: !950)
!956 = !DILocation(line: 230, column: 9, scope: !950)
!957 = !DILocation(line: 230, column: 26, scope: !950)
!958 = !DILocation(line: 230, column: 17, scope: !950)
!959 = !DILocation(line: 227, column: 4, scope: !950)
!960 = !DILocation(line: 232, column: 11, scope: !950)
!961 = !DILocation(line: 235, column: 9, scope: !950)
!962 = !DILocation(line: 235, column: 5, scope: !950)
!963 = !DILocation(line: 235, column: 33, scope: !950)
!964 = !DILocation(line: 235, column: 29, scope: !950)
!965 = !DILocation(line: 235, column: 15, scope: !950)
!966 = !DILocation(line: 236, column: 9, scope: !950)
!967 = !DILocation(line: 236, column: 5, scope: !950)
!968 = !DILocation(line: 236, column: 19, scope: !950)
!969 = !DILocation(line: 236, column: 29, scope: !950)
!970 = !DILocation(line: 236, column: 38, scope: !950)
!971 = !DILocation(line: 237, column: 20, scope: !950)
!972 = !DILocation(line: 238, column: 20, scope: !950)
!973 = !DILocation(line: 239, column: 20, scope: !950)
!974 = !DILocation(line: 232, column: 4, scope: !950)
!975 = !DILocation(line: 241, column: 13, scope: !976)
!976 = distinct !DILexicalBlock(scope: !950, file: !294, line: 241, column: 8)
!977 = !DILocation(line: 241, column: 9, scope: !976)
!978 = !DILocation(line: 241, column: 18, scope: !976)
!979 = !DILocation(line: 241, column: 29, scope: !976)
!980 = !DILocation(line: 242, column: 13, scope: !976)
!981 = !DILocation(line: 242, column: 9, scope: !976)
!982 = !DILocation(line: 242, column: 18, scope: !976)
!983 = !DILocation(line: 241, column: 8, scope: !984)
!984 = !DILexicalBlockFile(scope: !950, file: !294, discriminator: 1)
!985 = !DILocation(line: 243, column: 45, scope: !986)
!986 = distinct !DILexicalBlock(scope: !976, file: !294, line: 242, column: 30)
!987 = !DILocation(line: 243, column: 41, scope: !986)
!988 = !DILocation(line: 243, column: 9, scope: !986)
!989 = !DILocation(line: 243, column: 7, scope: !986)
!990 = !DILocation(line: 244, column: 12, scope: !986)
!991 = !DILocation(line: 249, column: 16, scope: !986)
!992 = !DILocation(line: 249, column: 19, scope: !986)
!993 = !DILocation(line: 249, column: 62, scope: !986)
!994 = !DILocation(line: 250, column: 5, scope: !986)
!995 = !DILocation(line: 250, column: 8, scope: !986)
!996 = !DILocation(line: 250, column: 42, scope: !986)
!997 = !DILocation(line: 251, column: 5, scope: !986)
!998 = !DILocation(line: 251, column: 8, scope: !986)
!999 = !DILocation(line: 251, column: 36, scope: !986)
!1000 = !DILocation(line: 252, column: 5, scope: !986)
!1001 = !DILocation(line: 252, column: 8, scope: !986)
!1002 = !DILocation(line: 252, column: 36, scope: !986)
!1003 = !DILocation(line: 253, column: 16, scope: !986)
!1004 = !DILocation(line: 253, column: 19, scope: !986)
!1005 = !DILocation(line: 253, column: 62, scope: !986)
!1006 = !DILocation(line: 254, column: 5, scope: !986)
!1007 = !DILocation(line: 254, column: 8, scope: !986)
!1008 = !DILocation(line: 254, column: 42, scope: !986)
!1009 = !DILocation(line: 255, column: 5, scope: !986)
!1010 = !DILocation(line: 255, column: 8, scope: !986)
!1011 = !DILocation(line: 255, column: 36, scope: !986)
!1012 = !DILocation(line: 256, column: 5, scope: !986)
!1013 = !DILocation(line: 256, column: 8, scope: !986)
!1014 = !DILocation(line: 256, column: 36, scope: !986)
!1015 = !DILocation(line: 244, column: 5, scope: !986)
!1016 = !DILocation(line: 257, column: 4, scope: !986)
!1017 = !DILocation(line: 258, column: 16, scope: !950)
!1018 = !DILocation(line: 258, column: 28, scope: !950)
!1019 = !DILocation(line: 258, column: 24, scope: !950)
!1020 = !DILocation(line: 258, column: 4, scope: !950)
!1021 = !DILocation(line: 259, column: 4, scope: !950)
!1022 = !DILocation(line: 261, column: 4, scope: !946)
!1023 = distinct !{!1023, !1022}
!1024 = !DILocation(line: 261, column: 13, scope: !1025)
!1025 = !DILexicalBlockFile(scope: !1026, file: !294, discriminator: 1)
!1026 = distinct !DILexicalBlock(scope: !1027, file: !294, line: 261, column: 13)
!1027 = distinct !DILexicalBlock(scope: !946, file: !294, line: 261, column: 7)
!1028 = !DILocation(line: 261, column: 3, scope: !1029)
!1029 = !DILexicalBlockFile(scope: !1026, file: !294, discriminator: 2)
!1030 = !DILocation(line: 261, column: 138, scope: !1029)
!1031 = !DILocation(line: 261, column: 134, scope: !1029)
!1032 = !DILocation(line: 261, column: 162, scope: !1029)
!1033 = !DILocation(line: 261, column: 158, scope: !1029)
!1034 = !DILocation(line: 261, column: 144, scope: !1029)
!1035 = !DILocation(line: 261, column: 173, scope: !1029)
!1036 = !DILocation(line: 261, column: 169, scope: !1029)
!1037 = !DILocation(line: 261, column: 183, scope: !1029)
!1038 = !DILocation(line: 261, column: 193, scope: !1029)
!1039 = !DILocation(line: 261, column: 202, scope: !1029)
!1040 = !DILocation(line: 261, column: 228, scope: !1029)
!1041 = !DILocation(line: 261, column: 253, scope: !1029)
!1042 = !DILocation(line: 261, column: 278, scope: !1029)
!1043 = !DILocation(line: 261, column: 27, scope: !1044)
!1044 = !DILexicalBlockFile(scope: !1029, file: !294, discriminator: 4)
!1045 = !DILocation(line: 261, column: 27, scope: !1029)
!1046 = !DILocation(line: 261, column: 288, scope: !1047)
!1047 = !DILexicalBlockFile(scope: !1027, file: !294, discriminator: 3)
!1048 = !DILocation(line: 270, column: 13, scope: !879)
!1049 = !DILocation(line: 270, column: 10, scope: !879)
!1050 = !DILocation(line: 205, column: 2, scope: !1051)
!1051 = !DILexicalBlockFile(scope: !664, file: !294, discriminator: 2)
!1052 = distinct !{!1052, !874}
!1053 = !DILocation(line: 273, column: 6, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !664, file: !294, line: 273, column: 6)
!1055 = !DILocation(line: 273, column: 6, scope: !664)
!1056 = !DILocation(line: 274, column: 26, scope: !1054)
!1057 = !DILocation(line: 274, column: 51, scope: !1054)
!1058 = !DILocation(line: 274, column: 60, scope: !1054)
!1059 = !DILocation(line: 274, column: 3, scope: !1054)
!1060 = !DILocation(line: 276, column: 26, scope: !1054)
!1061 = !DILocation(line: 276, column: 49, scope: !1054)
!1062 = !DILocation(line: 276, column: 58, scope: !1054)
!1063 = !DILocation(line: 276, column: 3, scope: !1054)
!1064 = !DILocation(line: 278, column: 7, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !664, file: !294, line: 278, column: 6)
!1066 = !DILocation(line: 278, column: 6, scope: !1065)
!1067 = !DILocation(line: 278, column: 21, scope: !1065)
!1068 = !DILocation(line: 278, column: 25, scope: !1069)
!1069 = !DILexicalBlockFile(scope: !1065, file: !294, discriminator: 1)
!1070 = !DILocation(line: 278, column: 36, scope: !1069)
!1071 = !DILocation(line: 278, column: 33, scope: !1069)
!1072 = !DILocation(line: 278, column: 6, scope: !1069)
!1073 = !DILocation(line: 279, column: 10, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1065, file: !294, line: 278, column: 42)
!1075 = !DILocation(line: 280, column: 4, scope: !1074)
!1076 = !DILocation(line: 280, column: 13, scope: !1074)
!1077 = !DILocation(line: 279, column: 3, scope: !1074)
!1078 = !DILocation(line: 281, column: 2, scope: !1074)
!1079 = !DILocation(line: 283, column: 9, scope: !664)
!1080 = !DILocation(line: 283, column: 2, scope: !664)
!1081 = !DILocation(line: 284, column: 2, scope: !664)
!1082 = distinct !DISubprogram(name: "accel_cksum", scope: !294, file: !294, line: 102, type: !1083, isLocal: true, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !300)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!295, !329, !1085, !225, !225, !774, !1086, !1086, !1086, !295}
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64, align: 64)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!1087 = !DILocalVariable(name: "accel", arg: 1, scope: !1082, file: !294, line: 102, type: !329)
!1088 = !DILocation(line: 102, column: 32, scope: !1082)
!1089 = !DILocalVariable(name: "cmd", arg: 2, scope: !1082, file: !294, line: 103, type: !1085)
!1090 = !DILocation(line: 103, column: 25, scope: !1082)
!1091 = !DILocalVariable(name: "src", arg: 3, scope: !1082, file: !294, line: 104, type: !225)
!1092 = !DILocation(line: 104, column: 14, scope: !1082)
!1093 = !DILocalVariable(name: "dest", arg: 4, scope: !1082, file: !294, line: 104, type: !225)
!1094 = !DILocation(line: 104, column: 25, scope: !1082)
!1095 = !DILocalVariable(name: "n", arg: 5, scope: !1082, file: !294, line: 104, type: !774)
!1096 = !DILocation(line: 104, column: 38, scope: !1082)
!1097 = !DILocalVariable(name: "crc32", arg: 6, scope: !1082, file: !294, line: 105, type: !1086)
!1098 = !DILocation(line: 105, column: 18, scope: !1082)
!1099 = !DILocalVariable(name: "adler32", arg: 7, scope: !1082, file: !294, line: 106, type: !1086)
!1100 = !DILocation(line: 106, column: 18, scope: !1082)
!1101 = !DILocalVariable(name: "inp_processed", arg: 8, scope: !1082, file: !294, line: 107, type: !1086)
!1102 = !DILocation(line: 107, column: 18, scope: !1082)
!1103 = !DILocalVariable(name: "use_sglist", arg: 9, scope: !1082, file: !294, line: 108, type: !295)
!1104 = !DILocation(line: 108, column: 12, scope: !1082)
!1105 = !DILocalVariable(name: "rc", scope: !1082, file: !294, line: 110, type: !295)
!1106 = !DILocation(line: 110, column: 6, scope: !1082)
!1107 = !DILocalVariable(name: "asiv", scope: !1082, file: !294, line: 111, type: !259)
!1108 = !DILocation(line: 111, column: 22, scope: !1082)
!1109 = !DILocalVariable(name: "asv", scope: !1082, file: !294, line: 112, type: !280)
!1110 = !DILocation(line: 112, column: 21, scope: !1082)
!1111 = !DILocalVariable(name: "ats_type", scope: !1082, file: !294, line: 113, type: !232)
!1112 = !DILocation(line: 113, column: 11, scope: !1082)
!1113 = !DILocation(line: 115, column: 16, scope: !1082)
!1114 = !DILocation(line: 115, column: 2, scope: !1082)
!1115 = !DILocation(line: 116, column: 2, scope: !1082)
!1116 = !DILocation(line: 116, column: 7, scope: !1082)
!1117 = !DILocation(line: 116, column: 18, scope: !1082)
!1118 = !DILocation(line: 117, column: 2, scope: !1082)
!1119 = !DILocation(line: 117, column: 7, scope: !1082)
!1120 = !DILocation(line: 117, column: 14, scope: !1082)
!1121 = !DILocation(line: 118, column: 2, scope: !1082)
!1122 = !DILocation(line: 118, column: 7, scope: !1082)
!1123 = !DILocation(line: 118, column: 11, scope: !1082)
!1124 = !DILocation(line: 119, column: 2, scope: !1082)
!1125 = !DILocation(line: 119, column: 7, scope: !1082)
!1126 = !DILocation(line: 119, column: 15, scope: !1082)
!1127 = !DILocation(line: 120, column: 2, scope: !1082)
!1128 = !DILocation(line: 120, column: 7, scope: !1082)
!1129 = !DILocation(line: 120, column: 18, scope: !1082)
!1130 = !DILocation(line: 121, column: 2, scope: !1082)
!1131 = !DILocation(line: 121, column: 7, scope: !1082)
!1132 = !DILocation(line: 121, column: 18, scope: !1082)
!1133 = !DILocation(line: 124, column: 32, scope: !1082)
!1134 = !DILocation(line: 124, column: 37, scope: !1082)
!1135 = !DILocation(line: 124, column: 9, scope: !1082)
!1136 = !DILocation(line: 124, column: 7, scope: !1082)
!1137 = !DILocation(line: 125, column: 38, scope: !1082)
!1138 = !DILocation(line: 125, column: 23, scope: !1082)
!1139 = !DILocation(line: 125, column: 69, scope: !1082)
!1140 = !DILocation(line: 125, column: 2, scope: !1082)
!1141 = !DILocation(line: 125, column: 8, scope: !1082)
!1142 = !DILocation(line: 125, column: 17, scope: !1082)
!1143 = !DILocation(line: 126, column: 33, scope: !1082)
!1144 = !DILocation(line: 126, column: 23, scope: !1082)
!1145 = !DILocation(line: 126, column: 60, scope: !1082)
!1146 = !DILocation(line: 126, column: 2, scope: !1082)
!1147 = !DILocation(line: 126, column: 8, scope: !1082)
!1148 = !DILocation(line: 126, column: 21, scope: !1082)
!1149 = !DILocation(line: 127, column: 38, scope: !1082)
!1150 = !DILocation(line: 127, column: 23, scope: !1082)
!1151 = !DILocation(line: 127, column: 69, scope: !1082)
!1152 = !DILocation(line: 127, column: 2, scope: !1082)
!1153 = !DILocation(line: 127, column: 8, scope: !1082)
!1154 = !DILocation(line: 127, column: 18, scope: !1082)
!1155 = !DILocation(line: 128, column: 33, scope: !1082)
!1156 = !DILocation(line: 128, column: 23, scope: !1082)
!1157 = !DILocation(line: 128, column: 60, scope: !1082)
!1158 = !DILocation(line: 128, column: 2, scope: !1082)
!1159 = !DILocation(line: 128, column: 8, scope: !1082)
!1160 = !DILocation(line: 128, column: 22, scope: !1082)
!1161 = !DILocation(line: 129, column: 24, scope: !1082)
!1162 = !DILocation(line: 129, column: 23, scope: !1082)
!1163 = !DILocation(line: 129, column: 60, scope: !1082)
!1164 = !DILocation(line: 129, column: 2, scope: !1082)
!1165 = !DILocation(line: 129, column: 8, scope: !1082)
!1166 = !DILocation(line: 129, column: 19, scope: !1082)
!1167 = !DILocation(line: 130, column: 24, scope: !1082)
!1168 = !DILocation(line: 130, column: 23, scope: !1082)
!1169 = !DILocation(line: 130, column: 60, scope: !1082)
!1170 = !DILocation(line: 130, column: 2, scope: !1082)
!1171 = !DILocation(line: 130, column: 8, scope: !1082)
!1172 = !DILocation(line: 130, column: 17, scope: !1082)
!1173 = !DILocation(line: 132, column: 6, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1082, file: !294, line: 132, column: 6)
!1175 = !DILocation(line: 132, column: 6, scope: !1082)
!1176 = !DILocation(line: 133, column: 12, scope: !1174)
!1177 = !DILocation(line: 133, column: 3, scope: !1174)
!1178 = !DILocation(line: 134, column: 16, scope: !1174)
!1179 = !DILocation(line: 135, column: 16, scope: !1082)
!1180 = !DILocation(line: 135, column: 26, scope: !1082)
!1181 = !DILocation(line: 135, column: 33, scope: !1082)
!1182 = !DILocation(line: 135, column: 2, scope: !1082)
!1183 = !DILocation(line: 135, column: 7, scope: !1082)
!1184 = !DILocation(line: 135, column: 11, scope: !1082)
!1185 = !DILocation(line: 136, column: 6, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1082, file: !294, line: 136, column: 6)
!1187 = !DILocation(line: 136, column: 6, scope: !1082)
!1188 = !DILocation(line: 137, column: 12, scope: !1186)
!1189 = !DILocation(line: 137, column: 3, scope: !1186)
!1190 = !DILocation(line: 138, column: 16, scope: !1186)
!1191 = !DILocation(line: 139, column: 17, scope: !1082)
!1192 = !DILocation(line: 139, column: 27, scope: !1082)
!1193 = !DILocation(line: 139, column: 34, scope: !1082)
!1194 = !DILocation(line: 139, column: 2, scope: !1082)
!1195 = !DILocation(line: 139, column: 7, scope: !1082)
!1196 = !DILocation(line: 139, column: 11, scope: !1082)
!1197 = !DILocation(line: 141, column: 6, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1082, file: !294, line: 141, column: 6)
!1199 = !DILocation(line: 141, column: 6, scope: !1082)
!1200 = !DILocation(line: 142, column: 10, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1198, file: !294, line: 141, column: 20)
!1202 = !DILocation(line: 142, column: 61, scope: !1201)
!1203 = !DILocation(line: 142, column: 66, scope: !1201)
!1204 = !DILocation(line: 142, column: 71, scope: !1201)
!1205 = !DILocation(line: 142, column: 3, scope: !1201)
!1206 = !DILocation(line: 143, column: 10, scope: !1201)
!1207 = !DILocation(line: 143, column: 32, scope: !1201)
!1208 = !DILocation(line: 143, column: 3, scope: !1201)
!1209 = !DILocation(line: 144, column: 10, scope: !1201)
!1210 = !DILocation(line: 144, column: 32, scope: !1201)
!1211 = !DILocation(line: 144, column: 3, scope: !1201)
!1212 = !DILocation(line: 145, column: 10, scope: !1201)
!1213 = !DILocation(line: 145, column: 43, scope: !1201)
!1214 = !DILocation(line: 145, column: 33, scope: !1201)
!1215 = !DILocation(line: 145, column: 3, scope: !1201)
!1216 = !DILocation(line: 146, column: 2, scope: !1201)
!1217 = !DILocation(line: 148, column: 6, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1082, file: !294, line: 148, column: 6)
!1219 = !DILocation(line: 148, column: 19, scope: !1218)
!1220 = !DILocation(line: 148, column: 6, scope: !1082)
!1221 = !DILocation(line: 149, column: 10, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1218, file: !294, line: 148, column: 24)
!1223 = !DILocation(line: 149, column: 41, scope: !1222)
!1224 = !DILocation(line: 149, column: 3, scope: !1222)
!1225 = !DILocation(line: 150, column: 15, scope: !1222)
!1226 = !DILocation(line: 150, column: 23, scope: !1222)
!1227 = !DILocation(line: 150, column: 3, scope: !1222)
!1228 = !DILocation(line: 151, column: 2, scope: !1222)
!1229 = !DILocation(line: 152, column: 17, scope: !1082)
!1230 = !DILocation(line: 152, column: 2, scope: !1082)
!1231 = !DILocation(line: 152, column: 7, scope: !1082)
!1232 = !DILocation(line: 152, column: 15, scope: !1082)
!1233 = !DILocation(line: 153, column: 26, scope: !1082)
!1234 = !DILocation(line: 153, column: 33, scope: !1082)
!1235 = !DILocation(line: 153, column: 7, scope: !1082)
!1236 = !DILocation(line: 153, column: 5, scope: !1082)
!1237 = !DILocation(line: 154, column: 17, scope: !1082)
!1238 = !DILocation(line: 154, column: 28, scope: !1082)
!1239 = !DILocation(line: 154, column: 33, scope: !1082)
!1240 = !DILocation(line: 154, column: 26, scope: !1082)
!1241 = !DILocation(line: 154, column: 2, scope: !1082)
!1242 = !DILocation(line: 154, column: 7, scope: !1082)
!1243 = !DILocation(line: 154, column: 15, scope: !1082)
!1244 = !DILocation(line: 155, column: 6, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1082, file: !294, line: 155, column: 6)
!1246 = !DILocation(line: 155, column: 19, scope: !1245)
!1247 = !DILocation(line: 155, column: 6, scope: !1082)
!1248 = !DILocation(line: 156, column: 10, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1245, file: !294, line: 155, column: 24)
!1250 = !DILocation(line: 156, column: 41, scope: !1249)
!1251 = !DILocation(line: 156, column: 3, scope: !1249)
!1252 = !DILocation(line: 157, column: 15, scope: !1249)
!1253 = !DILocation(line: 157, column: 23, scope: !1249)
!1254 = !DILocation(line: 157, column: 3, scope: !1249)
!1255 = !DILocation(line: 158, column: 2, scope: !1249)
!1256 = !DILocation(line: 160, column: 30, scope: !1082)
!1257 = !DILocation(line: 160, column: 35, scope: !1082)
!1258 = !DILocation(line: 160, column: 8, scope: !1082)
!1259 = !DILocation(line: 160, column: 6, scope: !1082)
!1260 = !DILocation(line: 161, column: 17, scope: !1082)
!1261 = !DILocation(line: 161, column: 22, scope: !1082)
!1262 = !DILocation(line: 161, column: 54, scope: !1082)
!1263 = !DILocation(line: 161, column: 3, scope: !1082)
!1264 = !DILocation(line: 161, column: 9, scope: !1082)
!1265 = !DILocation(line: 162, column: 18, scope: !1082)
!1266 = !DILocation(line: 162, column: 23, scope: !1082)
!1267 = !DILocation(line: 162, column: 55, scope: !1082)
!1268 = !DILocation(line: 162, column: 3, scope: !1082)
!1269 = !DILocation(line: 162, column: 11, scope: !1082)
!1270 = !DILocation(line: 163, column: 18, scope: !1082)
!1271 = !DILocation(line: 163, column: 23, scope: !1082)
!1272 = !DILocation(line: 163, column: 55, scope: !1082)
!1273 = !DILocation(line: 163, column: 3, scope: !1082)
!1274 = !DILocation(line: 163, column: 17, scope: !1082)
!1275 = !DILocation(line: 165, column: 6, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1082, file: !294, line: 165, column: 6)
!1277 = !DILocation(line: 165, column: 6, scope: !1082)
!1278 = !DILocation(line: 166, column: 10, scope: !1276)
!1279 = !DILocation(line: 167, column: 5, scope: !1276)
!1280 = !DILocation(line: 167, column: 4, scope: !1276)
!1281 = !DILocation(line: 167, column: 13, scope: !1276)
!1282 = !DILocation(line: 167, column: 12, scope: !1276)
!1283 = !DILocation(line: 167, column: 23, scope: !1276)
!1284 = !DILocation(line: 167, column: 22, scope: !1276)
!1285 = !DILocation(line: 167, column: 49, scope: !1276)
!1286 = !DILocation(line: 167, column: 54, scope: !1276)
!1287 = !DILocation(line: 166, column: 3, scope: !1276)
!1288 = !DILocation(line: 169, column: 9, scope: !1082)
!1289 = !DILocation(line: 169, column: 2, scope: !1082)
!1290 = distinct !DISubprogram(name: "__fswab64", scope: !1291, file: !1291, line: 68, type: !1292, isLocal: true, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !300)
!1291 = !DIFile(filename: "/usr/include/linux/swab.h", directory: "/home/lichi/Desktop")
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!250, !250}
!1294 = !DILocalVariable(name: "val", arg: 1, scope: !1290, file: !1291, line: 68, type: !250)
!1295 = !DILocation(line: 68, column: 41, scope: !1290)
!1296 = !DILocation(line: 73, column: 23, scope: !1290)
!1297 = !DILocation(line: 73, column: 9, scope: !1290)
!1298 = !DILocation(line: 73, column: 2, scope: !1290)
!1299 = distinct !DISubprogram(name: "__fswab32", scope: !1291, file: !1291, line: 57, type: !1300, isLocal: true, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !300)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!255, !255}
!1302 = !DILocalVariable(name: "val", arg: 1, scope: !1299, file: !1291, line: 57, type: !255)
!1303 = !DILocation(line: 57, column: 41, scope: !1299)
!1304 = !DILocation(line: 62, column: 23, scope: !1299)
!1305 = !DILocation(line: 62, column: 9, scope: !1299)
!1306 = !DILocation(line: 62, column: 2, scope: !1299)
!1307 = distinct !DISubprogram(name: "__fswab16", scope: !1291, file: !1291, line: 46, type: !1308, isLocal: true, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !300)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!257, !257}
!1310 = !DILocalVariable(name: "val", arg: 1, scope: !1307, file: !1291, line: 46, type: !257)
!1311 = !DILocation(line: 46, column: 41, scope: !1307)
!1312 = !DILocation(line: 53, column: 29, scope: !1307)
!1313 = !DILocation(line: 53, column: 21, scope: !1307)
!1314 = !DILocation(line: 53, column: 34, scope: !1307)
!1315 = !DILocation(line: 53, column: 52, scope: !1307)
!1316 = !DILocation(line: 53, column: 70, scope: !1307)
!1317 = !DILocation(line: 53, column: 62, scope: !1307)
!1318 = !DILocation(line: 53, column: 75, scope: !1307)
!1319 = !DILocation(line: 53, column: 93, scope: !1307)
!1320 = !DILocation(line: 53, column: 58, scope: !1307)
!1321 = !DILocation(line: 53, column: 10, scope: !1307)
!1322 = !DILocation(line: 53, column: 2, scope: !1307)
!1323 = distinct !DISubprogram(name: "ddcb_cmd_init", scope: !330, file: !330, line: 188, type: !1324, isLocal: true, isDefinition: true, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !300)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{null, !1085}
!1326 = !DILocalVariable(name: "cmd", arg: 1, scope: !1323, file: !330, line: 188, type: !1085)
!1327 = !DILocation(line: 188, column: 51, scope: !1323)
!1328 = !DILocalVariable(name: "tstamp", scope: !1323, file: !330, line: 190, type: !250)
!1329 = !DILocation(line: 190, column: 8, scope: !1323)
!1330 = !DILocation(line: 192, column: 11, scope: !1323)
!1331 = !DILocation(line: 192, column: 16, scope: !1323)
!1332 = !DILocation(line: 192, column: 9, scope: !1323)
!1333 = !DILocation(line: 193, column: 9, scope: !1323)
!1334 = !DILocation(line: 193, column: 2, scope: !1323)
!1335 = !DILocation(line: 194, column: 17, scope: !1323)
!1336 = !DILocation(line: 194, column: 2, scope: !1323)
!1337 = !DILocation(line: 194, column: 7, scope: !1323)
!1338 = !DILocation(line: 194, column: 15, scope: !1323)
!1339 = !DILocation(line: 195, column: 1, scope: !1323)
!1340 = distinct !DISubprogram(name: "get_us", scope: !294, file: !294, line: 43, type: !1341, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !300)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{!232}
!1343 = !DILocalVariable(name: "t", scope: !1340, file: !294, line: 45, type: !232)
!1344 = !DILocation(line: 45, column: 11, scope: !1340)
!1345 = !DILocalVariable(name: "now", scope: !1340, file: !294, line: 46, type: !714)
!1346 = !DILocation(line: 46, column: 18, scope: !1340)
!1347 = !DILocation(line: 48, column: 2, scope: !1340)
!1348 = !DILocation(line: 49, column: 10, scope: !1340)
!1349 = !DILocation(line: 49, column: 17, scope: !1340)
!1350 = !DILocation(line: 49, column: 33, scope: !1340)
!1351 = !DILocation(line: 49, column: 41, scope: !1340)
!1352 = !DILocation(line: 49, column: 27, scope: !1340)
!1353 = !DILocation(line: 49, column: 4, scope: !1340)
!1354 = !DILocation(line: 50, column: 9, scope: !1340)
!1355 = !DILocation(line: 50, column: 2, scope: !1340)
!1356 = distinct !DISubprogram(name: "__arch_swab64", scope: !1357, file: !1357, line: 14, type: !1292, isLocal: true, isDefinition: true, scopeLine: 15, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !300)
!1357 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/asm/swab.h", directory: "/home/lichi/Desktop")
!1358 = !DILocalVariable(name: "val", arg: 1, scope: !1356, file: !1357, line: 14, type: !250)
!1359 = !DILocation(line: 14, column: 45, scope: !1356)
!1360 = !DILocation(line: 30, column: 42, scope: !1356)
!1361 = !DILocation(line: 30, column: 2, scope: !1356)
!1362 = !{i32 113337}
!1363 = !DILocation(line: 31, column: 9, scope: !1356)
!1364 = !DILocation(line: 31, column: 2, scope: !1356)
!1365 = distinct !DISubprogram(name: "__arch_swab32", scope: !1357, file: !1357, line: 7, type: !1300, isLocal: true, isDefinition: true, scopeLine: 8, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !300)
!1366 = !DILocalVariable(name: "val", arg: 1, scope: !1365, file: !1357, line: 7, type: !255)
!1367 = !DILocation(line: 7, column: 45, scope: !1365)
!1368 = !DILocation(line: 9, column: 42, scope: !1365)
!1369 = !DILocation(line: 9, column: 2, scope: !1365)
!1370 = !{i32 113169}
!1371 = !DILocation(line: 10, column: 9, scope: !1365)
!1372 = !DILocation(line: 10, column: 2, scope: !1365)
