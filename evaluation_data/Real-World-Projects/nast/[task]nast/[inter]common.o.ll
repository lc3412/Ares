; ModuleID = './[inter]common.o.i'
source_filename = "./[inter]common.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.pcap = type opaque
%struct.pcap_stat = type { i32, i32, i32 }
%struct.pcap_dumper = type opaque
%struct.pcap_pkthdr = type { %struct.timeval, i32, i32 }
%struct.timeval = type { i64, i64 }
%struct.bpf_program = type { i32, %struct.bpf_insn* }
%struct.bpf_insn = type { i16, i8, i8, i32 }
%struct.libnet_port_list_chain = type { i16, i16, i16, i8, %struct.libnet_port_list_chain* }
%struct.libnet_context = type { i32, i32, %struct.libnet_protocol_block*, %struct.libnet_protocol_block*, i32, i32, i32, i32, i8*, %struct.libnet_stats, i32, [64 x i8], [256 x i8], i32 }
%struct.libnet_protocol_block = type { i8*, i32, i16, i32, i8, i8, i32, %struct.libnet_protocol_block*, %struct.libnet_protocol_block* }
%struct.libnet_stats = type { i64, i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [28 x i8] c"Error loading libnet core!\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Type connection extremes\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"------------------------\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Cannot resolve input address, type again!\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"1 ip / hostname : \00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"Error: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"1 port (0 to autodetect) : \00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"2 ip / hostname : \00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"2 port (0 to autodetect) : \00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"\0AOnly one port can be zero\0A\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@demonize = common global i16 0, align 2
@.str.11 = private unnamed_addr constant [40 x i8] c"Is very useless demonize me now! Omit\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"1st ip : \00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"1st port : \00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"2nd : \00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"2nd port : \00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Port Scanner extremes\0A\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"Insert IP to scan   : \00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"Insert Port range   : \00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"Bad token in port list: %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [53 x i8] c"Is very useless demonize for single portscan! Omit\0A\0A\00", align 1
@logname = common global i8* null, align 8
@.str.21 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@logd = common global %struct._IO_FILE* null, align 8
@.str.22 = private unnamed_addr constant [40 x i8] c"Unable to open logfile descriptor: %s\0A\0A\00", align 1
@graph = common global i16 0, align 2
@.str.23 = private unnamed_addr constant [27 x i8] c"Thank you for using NAST\0A\0A\00", align 1
@tr = common global i16 0, align 2
@sniff_glob = common global i32 0, align 4
@descr = common global %struct.pcap* null, align 8
@statistic = common global %struct.pcap_stat zeroinitializer, align 4
@.str.24 = private unnamed_addr constant [23 x i8] c"Error: pcap_stats: %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"\0A\0APackets Received:\09\09%d\0A\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"Packets Dropped by kernel:\09%d\0A\00", align 1
@tl = common global i16 0, align 2
@dumper = common global %struct.pcap_dumper* null, align 8
@.str.27 = private unnamed_addr constant [36 x i8] c"\0ARunning in background with PID %d\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.28 = private unnamed_addr constant [30 x i8] c"%02X:%02X:%02X:%02X:%02X:%02X\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"%d.%d.%d.%d\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@offset = common global i16 0, align 2
@npkt = common global i32 0, align 4
@packet = common global i8* null, align 8
@buf = common global i8* null, align 8
@hdr = common global %struct.pcap_pkthdr zeroinitializer, align 8
@maskp = common global i32 0, align 4
@netp = common global i32 0, align 4
@datalink = common global i32 0, align 4
@fp = common global %struct.bpf_program zeroinitializer, align 8
@tcpdl = common global i8* null, align 8
@cont = common global i16 0, align 2
@stream_glob = common global i32 0, align 4
@bc_glob = common global i32 0, align 4
@rst_glob = common global i32 0, align 4
@arp_glob = common global i32 0, align 4
@pt = common global [2 x i64] zeroinitializer, align 16
@lg = common global i32 0, align 4
@tm = common global i64 0, align 8
@timed = common global [60 x i8] zeroinitializer, align 16
@line_s = common global i32 0, align 4
@row_s = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @runcplx(i8 signext, i8*, i32) #0 !dbg !161 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca %struct.libnet_port_list_chain, align 8
  %12 = alloca %struct.libnet_port_list_chain*, align 8
  %13 = alloca [50 x i8], align 16
  %14 = alloca i16, align 2
  %15 = alloca %struct.libnet_context*, align 8
  %16 = alloca [256 x i8], align 16
  store i8 %0, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !165, metadata !166), !dbg !167
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !168, metadata !166), !dbg !169
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !170, metadata !166), !dbg !171
  call void @llvm.dbg.declare(metadata i64* %7, metadata !172, metadata !166), !dbg !175
  call void @llvm.dbg.declare(metadata i64* %8, metadata !176, metadata !166), !dbg !177
  call void @llvm.dbg.declare(metadata i16* %9, metadata !178, metadata !166), !dbg !179
  call void @llvm.dbg.declare(metadata i16* %10, metadata !180, metadata !166), !dbg !181
  call void @llvm.dbg.declare(metadata %struct.libnet_port_list_chain* %11, metadata !182, metadata !166), !dbg !196
  call void @llvm.dbg.declare(metadata %struct.libnet_port_list_chain** %12, metadata !197, metadata !166), !dbg !198
  call void @llvm.dbg.declare(metadata [50 x i8]* %13, metadata !199, metadata !166), !dbg !203
  call void @llvm.dbg.declare(metadata i16* %14, metadata !204, metadata !166), !dbg !205
  call void @llvm.dbg.declare(metadata %struct.libnet_context** %15, metadata !206, metadata !166), !dbg !255
  call void @llvm.dbg.declare(metadata [256 x i8]* %16, metadata !256, metadata !166), !dbg !257
  store i16 0, i16* %14, align 2, !dbg !258
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i32 0, i32 0, !dbg !259
  %18 = call %struct.libnet_context* @libnet_init(i32 0, i8* null, i8* %17), !dbg !261
  store %struct.libnet_context* %18, %struct.libnet_context** %15, align 8, !dbg !262
  %19 = icmp eq %struct.libnet_context* %18, null, !dbg !263
  br i1 %19, label %20, label %22, !dbg !264

; <label>:20:                                     ; preds = %3
  %21 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0)), !dbg !265
  br label %22, !dbg !267

; <label>:22:                                     ; preds = %20, %3
  %23 = load i8, i8* %4, align 1, !dbg !268
  %24 = sext i8 %23 to i32, !dbg !268
  switch i32 %24, label %297 [
    i32 114, label %25
    i32 115, label %118
    i32 83, label %201
    i32 77, label %258
  ], !dbg !269

; <label>:25:                                     ; preds = %22
  br label %26, !dbg !270

; <label>:26:                                     ; preds = %102, %25
  %27 = call i32 @puts(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0)), !dbg !271
  %28 = call i32 @puts(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0)), !dbg !273
  br label %29, !dbg !274, !llvm.loop !275

; <label>:29:                                     ; preds = %52, %26
  %30 = load i16, i16* %14, align 2, !dbg !276
  %31 = icmp ne i16 %30, 0, !dbg !276
  br i1 %31, label %32, label %34, !dbg !279

; <label>:32:                                     ; preds = %29
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0)), !dbg !280
  br label %34, !dbg !280

; <label>:34:                                     ; preds = %32, %29
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0)), !dbg !282
  %36 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i32 0, i32 0, !dbg !283
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !284
  %38 = call i8* @fgets(i8* %36, i32 50, %struct._IO_FILE* %37), !dbg !285
  %39 = load %struct.libnet_context*, %struct.libnet_context** %15, align 8, !dbg !286
  %40 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i32 0, i32 0, !dbg !288
  %41 = call i8* @dn(i8* %40), !dbg !289
  %42 = call i32 @libnet_name2addr4(%struct.libnet_context* %39, i8* %41, i8 zeroext 1), !dbg !290
  %43 = zext i32 %42 to i64, !dbg !292
  store i64 %43, i64* %8, align 8, !dbg !293
  %44 = icmp eq i64 %43, -1, !dbg !294
  br i1 %44, label %45, label %49, !dbg !295

; <label>:45:                                     ; preds = %34
  %46 = load %struct.libnet_context*, %struct.libnet_context** %15, align 8, !dbg !296
  %47 = call i8* @libnet_geterror(%struct.libnet_context* %46), !dbg !298
  %48 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* %47), !dbg !299
  br label %49, !dbg !301

; <label>:49:                                     ; preds = %45, %34
  %50 = load i16, i16* %14, align 2, !dbg !302
  %51 = add i16 %50, 1, !dbg !302
  store i16 %51, i16* %14, align 2, !dbg !302
  br label %52, !dbg !303

; <label>:52:                                     ; preds = %49
  %53 = load i64, i64* %8, align 8, !dbg !304
  %54 = icmp eq i64 %53, -1, !dbg !305
  br i1 %54, label %29, label %55, !dbg !306, !llvm.loop !275

; <label>:55:                                     ; preds = %52
  store i16 0, i16* %14, align 2, !dbg !308
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0)), !dbg !309
  %57 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i32 0, i32 0, !dbg !310
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !311
  %59 = call i8* @fgets(i8* %57, i32 50, %struct._IO_FILE* %58), !dbg !312
  %60 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i32 0, i32 0, !dbg !313
  %61 = call i32 @atoi(i8* %60) #9, !dbg !314
  %62 = trunc i32 %61 to i16, !dbg !314
  store i16 %62, i16* %10, align 2, !dbg !315
  br label %63, !dbg !316, !llvm.loop !317

; <label>:63:                                     ; preds = %86, %55
  %64 = load i16, i16* %14, align 2, !dbg !318
  %65 = icmp ne i16 %64, 0, !dbg !318
  br i1 %65, label %66, label %68, !dbg !321

; <label>:66:                                     ; preds = %63
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0)), !dbg !322
  br label %68, !dbg !322

; <label>:68:                                     ; preds = %66, %63
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0)), !dbg !324
  %70 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i32 0, i32 0, !dbg !325
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !326
  %72 = call i8* @fgets(i8* %70, i32 50, %struct._IO_FILE* %71), !dbg !327
  %73 = load %struct.libnet_context*, %struct.libnet_context** %15, align 8, !dbg !328
  %74 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i32 0, i32 0, !dbg !330
  %75 = call i8* @dn(i8* %74), !dbg !331
  %76 = call i32 @libnet_name2addr4(%struct.libnet_context* %73, i8* %75, i8 zeroext 1), !dbg !332
  %77 = zext i32 %76 to i64, !dbg !334
  store i64 %77, i64* %7, align 8, !dbg !335
  %78 = icmp eq i64 %77, -1, !dbg !336
  br i1 %78, label %79, label %83, !dbg !337

; <label>:79:                                     ; preds = %68
  %80 = load %struct.libnet_context*, %struct.libnet_context** %15, align 8, !dbg !338
  %81 = call i8* @libnet_geterror(%struct.libnet_context* %80), !dbg !340
  %82 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* %81), !dbg !341
  br label %83, !dbg !343

; <label>:83:                                     ; preds = %79, %68
  %84 = load i16, i16* %14, align 2, !dbg !344
  %85 = add i16 %84, 1, !dbg !344
  store i16 %85, i16* %14, align 2, !dbg !344
  br label %86, !dbg !345

; <label>:86:                                     ; preds = %83
  %87 = load i64, i64* %7, align 8, !dbg !346
  %88 = icmp eq i64 %87, -1, !dbg !347
  br i1 %88, label %63, label %89, !dbg !348, !llvm.loop !317

; <label>:89:                                     ; preds = %86
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0)), !dbg !350
  %91 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i32 0, i32 0, !dbg !351
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !352
  %93 = call i8* @fgets(i8* %91, i32 50, %struct._IO_FILE* %92), !dbg !353
  %94 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i32 0, i32 0, !dbg !354
  %95 = call i32 @atoi(i8* %94) #9, !dbg !355
  %96 = trunc i32 %95 to i16, !dbg !355
  store i16 %96, i16* %9, align 2, !dbg !356
  %97 = load i16, i16* %10, align 2, !dbg !357
  %98 = icmp ne i16 %97, 0, !dbg !357
  br i1 %98, label %105, label %99, !dbg !359

; <label>:99:                                     ; preds = %89
  %100 = load i16, i16* %9, align 2, !dbg !360
  %101 = icmp ne i16 %100, 0, !dbg !360
  br i1 %101, label %105, label %102, !dbg !362

; <label>:102:                                    ; preds = %99
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0)), !dbg !363
  store i16 0, i16* %14, align 2, !dbg !365
  %104 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !366
  br label %26, !dbg !367

; <label>:105:                                    ; preds = %99, %89
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)), !dbg !368
  %107 = load i16, i16* @demonize, align 2, !dbg !369
  %108 = icmp ne i16 %107, 0, !dbg !369
  br i1 %108, label %109, label %111, !dbg !371

; <label>:109:                                    ; preds = %105
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i32 0, i32 0)), !dbg !372
  br label %111, !dbg !372

; <label>:111:                                    ; preds = %109, %105
  %112 = load i8*, i8** %5, align 8, !dbg !373
  %113 = load i64, i64* %8, align 8, !dbg !374
  %114 = load i64, i64* %7, align 8, !dbg !375
  %115 = load i16, i16* %10, align 2, !dbg !376
  %116 = load i16, i16* %9, align 2, !dbg !377
  %117 = call i32 @rst(i8* %112, i64 %113, i64 %114, i16 zeroext %115, i16 zeroext %116), !dbg !378
  br label %297, !dbg !379

; <label>:118:                                    ; preds = %22
  %119 = call i32 @puts(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0)), !dbg !380
  %120 = call i32 @puts(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0)), !dbg !381
  br label %121, !dbg !382, !llvm.loop !383

; <label>:121:                                    ; preds = %144, %118
  %122 = load i16, i16* %14, align 2, !dbg !384
  %123 = icmp ne i16 %122, 0, !dbg !384
  br i1 %123, label %124, label %126, !dbg !387

; <label>:124:                                    ; preds = %121
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0)), !dbg !388
  br label %126, !dbg !388

; <label>:126:                                    ; preds = %124, %121
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0)), !dbg !390
  %128 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i32 0, i32 0, !dbg !391
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !392
  %130 = call i8* @fgets(i8* %128, i32 50, %struct._IO_FILE* %129), !dbg !393
  %131 = load %struct.libnet_context*, %struct.libnet_context** %15, align 8, !dbg !394
  %132 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i32 0, i32 0, !dbg !396
  %133 = call i8* @dn(i8* %132), !dbg !397
  %134 = call i32 @libnet_name2addr4(%struct.libnet_context* %131, i8* %133, i8 zeroext 1), !dbg !399
  %135 = zext i32 %134 to i64, !dbg !401
  store i64 %135, i64* %8, align 8, !dbg !402
  %136 = icmp eq i64 %135, -1, !dbg !403
  br i1 %136, label %137, label %141, !dbg !404

; <label>:137:                                    ; preds = %126
  %138 = load %struct.libnet_context*, %struct.libnet_context** %15, align 8, !dbg !405
  %139 = call i8* @libnet_geterror(%struct.libnet_context* %138), !dbg !407
  %140 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* %139), !dbg !408
  br label %141, !dbg !410

; <label>:141:                                    ; preds = %137, %126
  %142 = load i16, i16* %14, align 2, !dbg !411
  %143 = add i16 %142, 1, !dbg !411
  store i16 %143, i16* %14, align 2, !dbg !411
  br label %144, !dbg !412

; <label>:144:                                    ; preds = %141
  %145 = load i64, i64* %8, align 8, !dbg !413
  %146 = icmp eq i64 %145, -1, !dbg !414
  br i1 %146, label %121, label %147, !dbg !415, !llvm.loop !383

; <label>:147:                                    ; preds = %144
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0)), !dbg !417
  %149 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i32 0, i32 0, !dbg !418
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !419
  %151 = call i8* @fgets(i8* %149, i32 50, %struct._IO_FILE* %150), !dbg !420
  %152 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i32 0, i32 0, !dbg !421
  %153 = call i32 @atoi(i8* %152) #9, !dbg !422
  %154 = trunc i32 %153 to i16, !dbg !422
  store i16 %154, i16* %10, align 2, !dbg !423
  store i16 0, i16* %14, align 2, !dbg !424
  br label %155, !dbg !425, !llvm.loop !426

; <label>:155:                                    ; preds = %178, %147
  %156 = load i16, i16* %14, align 2, !dbg !427
  %157 = icmp ne i16 %156, 0, !dbg !427
  br i1 %157, label %158, label %160, !dbg !430

; <label>:158:                                    ; preds = %155
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0)), !dbg !431
  br label %160, !dbg !431

; <label>:160:                                    ; preds = %158, %155
  %161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0)), !dbg !433
  %162 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i32 0, i32 0, !dbg !434
  %163 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !435
  %164 = call i8* @fgets(i8* %162, i32 50, %struct._IO_FILE* %163), !dbg !436
  %165 = load %struct.libnet_context*, %struct.libnet_context** %15, align 8, !dbg !437
  %166 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i32 0, i32 0, !dbg !439
  %167 = call i8* @dn(i8* %166), !dbg !440
  %168 = call i32 @libnet_name2addr4(%struct.libnet_context* %165, i8* %167, i8 zeroext 1), !dbg !441
  %169 = zext i32 %168 to i64, !dbg !443
  store i64 %169, i64* %7, align 8, !dbg !444
  %170 = icmp eq i64 %169, -1, !dbg !445
  br i1 %170, label %171, label %175, !dbg !446

; <label>:171:                                    ; preds = %160
  %172 = load %struct.libnet_context*, %struct.libnet_context** %15, align 8, !dbg !447
  %173 = call i8* @libnet_geterror(%struct.libnet_context* %172), !dbg !449
  %174 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* %173), !dbg !450
  br label %175, !dbg !452

; <label>:175:                                    ; preds = %171, %160
  %176 = load i16, i16* %14, align 2, !dbg !453
  %177 = add i16 %176, 1, !dbg !453
  store i16 %177, i16* %14, align 2, !dbg !453
  br label %178, !dbg !454

; <label>:178:                                    ; preds = %175
  %179 = load i64, i64* %7, align 8, !dbg !455
  %180 = icmp eq i64 %179, -1, !dbg !456
  br i1 %180, label %155, label %181, !dbg !457, !llvm.loop !426

; <label>:181:                                    ; preds = %178
  %182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0)), !dbg !459
  %183 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i32 0, i32 0, !dbg !460
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !461
  %185 = call i8* @fgets(i8* %183, i32 50, %struct._IO_FILE* %184), !dbg !462
  %186 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i32 0, i32 0, !dbg !463
  %187 = call i32 @atoi(i8* %186) #9, !dbg !464
  %188 = trunc i32 %187 to i16, !dbg !464
  store i16 %188, i16* %9, align 2, !dbg !465
  %189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)), !dbg !466
  %190 = load i16, i16* @demonize, align 2, !dbg !467
  %191 = icmp ne i16 %190, 0, !dbg !467
  br i1 %191, label %192, label %193, !dbg !469

; <label>:192:                                    ; preds = %181
  call void @bkg(), !dbg !470
  br label %193, !dbg !470

; <label>:193:                                    ; preds = %192, %181
  %194 = load i8*, i8** %5, align 8, !dbg !471
  %195 = load i64, i64* %8, align 8, !dbg !472
  %196 = load i64, i64* %7, align 8, !dbg !473
  %197 = load i16, i16* %10, align 2, !dbg !474
  %198 = load i16, i16* %9, align 2, !dbg !475
  %199 = load i32, i32* %6, align 4, !dbg !476
  %200 = call i32 @stream(i8* %194, i64 %195, i64 %196, i16 zeroext %197, i16 zeroext %198, i32 %199), !dbg !477
  br label %297, !dbg !478

; <label>:201:                                    ; preds = %22
  %202 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0)), !dbg !479
  %203 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0)), !dbg !480
  %204 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i32 0, i32 0, !dbg !481
  %205 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !482
  %206 = call i8* @fgets(i8* %204, i32 50, %struct._IO_FILE* %205), !dbg !483
  %207 = load %struct.libnet_context*, %struct.libnet_context** %15, align 8, !dbg !484
  %208 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i32 0, i32 0, !dbg !486
  %209 = call i8* @dn(i8* %208), !dbg !487
  %210 = call i32 @libnet_name2addr4(%struct.libnet_context* %207, i8* %209, i8 zeroext 1), !dbg !488
  %211 = zext i32 %210 to i64, !dbg !490
  store i64 %211, i64* %7, align 8, !dbg !491
  %212 = icmp eq i64 %211, -1, !dbg !492
  br i1 %212, label %213, label %217, !dbg !493

; <label>:213:                                    ; preds = %201
  %214 = load %struct.libnet_context*, %struct.libnet_context** %15, align 8, !dbg !494
  %215 = call i8* @libnet_geterror(%struct.libnet_context* %214), !dbg !496
  %216 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* %215), !dbg !497
  br label %217, !dbg !499

; <label>:217:                                    ; preds = %213, %201
  br label %218, !dbg !500, !llvm.loop !501

; <label>:218:                                    ; preds = %234, %217
  %219 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i32 0, i32 0, !dbg !502
  call void @llvm.memset.p0i8.i64(i8* %219, i8 0, i64 50, i32 16, i1 false), !dbg !502
  %220 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0)), !dbg !504
  %221 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i32 0, i32 0, !dbg !505
  %222 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !506
  %223 = call i8* @fgets(i8* %221, i32 50, %struct._IO_FILE* %222), !dbg !507
  br label %224, !dbg !508

; <label>:224:                                    ; preds = %218
  %225 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i32 0, i32 0, !dbg !509
  %226 = call i8* @dn(i8* %225), !dbg !510
  %227 = call i32 @atoi(i8* %226) #9, !dbg !511
  %228 = icmp slt i32 %227, 1, !dbg !513
  br i1 %228, label %234, label %229, !dbg !514

; <label>:229:                                    ; preds = %224
  %230 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i32 0, i32 0, !dbg !515
  %231 = call i8* @dn(i8* %230), !dbg !517
  %232 = call i32 @atoi(i8* %231) #9, !dbg !518
  %233 = icmp sgt i32 %232, 65536, !dbg !520
  br label %234, !dbg !521

; <label>:234:                                    ; preds = %229, %224
  %235 = phi i1 [ true, %224 ], [ %233, %229 ]
  br i1 %235, label %218, label %236, !dbg !522, !llvm.loop !501

; <label>:236:                                    ; preds = %234
  store %struct.libnet_port_list_chain* %11, %struct.libnet_port_list_chain** %12, align 8, !dbg !524
  %237 = load %struct.libnet_context*, %struct.libnet_context** %15, align 8, !dbg !525
  %238 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i32 0, i32 0, !dbg !527
  %239 = call i8* @dn(i8* %238), !dbg !528
  %240 = call i32 @libnet_plist_chain_new(%struct.libnet_context* %237, %struct.libnet_port_list_chain** %12, i8* %239), !dbg !529
  %241 = icmp eq i32 %240, -1, !dbg !531
  br i1 %241, label %242, label %246, !dbg !532

; <label>:242:                                    ; preds = %236
  %243 = load %struct.libnet_context*, %struct.libnet_context** %15, align 8, !dbg !533
  %244 = call i8* @libnet_geterror(%struct.libnet_context* %243), !dbg !535
  %245 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i32 0, i32 0), i8* %244), !dbg !536
  br label %246, !dbg !538

; <label>:246:                                    ; preds = %242, %236
  %247 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)), !dbg !539
  %248 = load i16, i16* @demonize, align 2, !dbg !540
  %249 = icmp ne i16 %248, 0, !dbg !540
  br i1 %249, label %250, label %252, !dbg !542

; <label>:250:                                    ; preds = %246
  %251 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.20, i32 0, i32 0)), !dbg !543
  br label %252, !dbg !543

; <label>:252:                                    ; preds = %250, %246
  %253 = load i8*, i8** %5, align 8, !dbg !544
  %254 = load i64, i64* %7, align 8, !dbg !545
  %255 = load %struct.libnet_port_list_chain*, %struct.libnet_port_list_chain** %12, align 8, !dbg !546
  %256 = load i32, i32* %6, align 4, !dbg !547
  %257 = call i32 @port(i8* %253, i64 %254, %struct.libnet_port_list_chain* %255, i32 %256), !dbg !548
  br label %297, !dbg !549

; <label>:258:                                    ; preds = %22
  %259 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0)), !dbg !550
  br label %260, !dbg !551, !llvm.loop !552

; <label>:260:                                    ; preds = %275, %258
  %261 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0)), !dbg !553
  %262 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i32 0, i32 0, !dbg !555
  %263 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !556
  %264 = call i8* @fgets(i8* %262, i32 50, %struct._IO_FILE* %263), !dbg !557
  br label %265, !dbg !558

; <label>:265:                                    ; preds = %260
  %266 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i32 0, i32 0, !dbg !559
  %267 = call i8* @dn(i8* %266), !dbg !560
  %268 = call i32 @atoi(i8* %267) #9, !dbg !561
  %269 = icmp slt i32 %268, 1, !dbg !562
  br i1 %269, label %275, label %270, !dbg !563

; <label>:270:                                    ; preds = %265
  %271 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i32 0, i32 0, !dbg !564
  %272 = call i8* @dn(i8* %271), !dbg !565
  %273 = call i32 @atoi(i8* %272) #9, !dbg !566
  %274 = icmp sgt i32 %273, 65536, !dbg !567
  br label %275, !dbg !568

; <label>:275:                                    ; preds = %270, %265
  %276 = phi i1 [ true, %265 ], [ %274, %270 ]
  br i1 %276, label %260, label %277, !dbg !569, !llvm.loop !552

; <label>:277:                                    ; preds = %275
  store %struct.libnet_port_list_chain* %11, %struct.libnet_port_list_chain** %12, align 8, !dbg !571
  %278 = load %struct.libnet_context*, %struct.libnet_context** %15, align 8, !dbg !572
  %279 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i32 0, i32 0, !dbg !574
  %280 = call i8* @dn(i8* %279), !dbg !575
  %281 = call i32 @libnet_plist_chain_new(%struct.libnet_context* %278, %struct.libnet_port_list_chain** %12, i8* %280), !dbg !576
  %282 = icmp eq i32 %281, -1, !dbg !578
  br i1 %282, label %283, label %287, !dbg !579

; <label>:283:                                    ; preds = %277
  %284 = load %struct.libnet_context*, %struct.libnet_context** %15, align 8, !dbg !580
  %285 = call i8* @libnet_geterror(%struct.libnet_context* %284), !dbg !582
  %286 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i32 0, i32 0), i8* %285), !dbg !583
  br label %287, !dbg !585

; <label>:287:                                    ; preds = %283, %277
  %288 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)), !dbg !586
  %289 = load i16, i16* @demonize, align 2, !dbg !587
  %290 = icmp ne i16 %289, 0, !dbg !587
  br i1 %290, label %291, label %292, !dbg !589

; <label>:291:                                    ; preds = %287
  call void @bkg(), !dbg !590
  br label %292, !dbg !590

; <label>:292:                                    ; preds = %291, %287
  %293 = load i8*, i8** %5, align 8, !dbg !591
  %294 = load %struct.libnet_port_list_chain*, %struct.libnet_port_list_chain** %12, align 8, !dbg !592
  %295 = load i32, i32* %6, align 4, !dbg !593
  %296 = call i32 @mhport(i8* %293, %struct.libnet_port_list_chain* %294, i32 %295), !dbg !594
  br label %297, !dbg !595

; <label>:297:                                    ; preds = %22, %292, %252, %193, %111
  %298 = load %struct.libnet_context*, %struct.libnet_context** %15, align 8, !dbg !596
  %299 = icmp ne %struct.libnet_context* %298, null, !dbg !596
  br i1 %299, label %300, label %302, !dbg !598

; <label>:300:                                    ; preds = %297
  %301 = load %struct.libnet_context*, %struct.libnet_context** %15, align 8, !dbg !599
  call void @libnet_destroy(%struct.libnet_context* %301), !dbg !601
  br label %302, !dbg !601

; <label>:302:                                    ; preds = %300, %297
  ret i32 0, !dbg !602
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct.libnet_context* @libnet_init(i32, i8*, i8*) #2

declare i32 @w_error(i32, i8*, ...) #2

declare i32 @puts(i8*) #2

declare i32 @printf(i8*, ...) #2

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

declare i32 @libnet_name2addr4(%struct.libnet_context*, i8*, i8 zeroext) #2

; Function Attrs: nounwind uwtable
define i8* @dn(i8*) #0 !dbg !603 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !606, metadata !166), !dbg !607
  %3 = load i8*, i8** %2, align 8, !dbg !608
  %4 = call i64 @strlen(i8* %3) #9, !dbg !610
  %5 = sub i64 %4, 1, !dbg !611
  %6 = load i8*, i8** %2, align 8, !dbg !612
  %7 = getelementptr inbounds i8, i8* %6, i64 %5, !dbg !612
  %8 = load i8, i8* %7, align 1, !dbg !612
  %9 = sext i8 %8 to i32, !dbg !612
  %10 = icmp eq i32 %9, 10, !dbg !613
  br i1 %10, label %11, label %17, !dbg !614

; <label>:11:                                     ; preds = %1
  %12 = load i8*, i8** %2, align 8, !dbg !615
  %13 = call i64 @strlen(i8* %12) #9, !dbg !616
  %14 = sub i64 %13, 1, !dbg !617
  %15 = load i8*, i8** %2, align 8, !dbg !618
  %16 = getelementptr inbounds i8, i8* %15, i64 %14, !dbg !618
  store i8 0, i8* %16, align 1, !dbg !619
  br label %17, !dbg !618

; <label>:17:                                     ; preds = %11, %1
  %18 = load i8*, i8** %2, align 8, !dbg !620
  ret i8* %18, !dbg !621
}

declare i8* @libnet_geterror(%struct.libnet_context*) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

declare i32 @assert(...) #2

declare i32 @rst(i8*, i64, i64, i16 zeroext, i16 zeroext) #2

; Function Attrs: nounwind uwtable
define void @bkg() #0 !dbg !622 {
  %1 = call i32 @fork() #8, !dbg !625
  %2 = icmp ne i32 %1, 0, !dbg !625
  br i1 %2, label %3, label %4, !dbg !627

; <label>:3:                                      ; preds = %0
  call void @exit(i32 0) #10, !dbg !628
  unreachable, !dbg !628

; <label>:4:                                      ; preds = %0
  %5 = call i32 @getpid() #8, !dbg !630
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.27, i32 0, i32 0), i32 %5), !dbg !631
  %7 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)), !dbg !633
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !634
  %9 = call i32 @fclose(%struct._IO_FILE* %8), !dbg !635
  ret void, !dbg !636
}

declare i32 @stream(i8*, i64, i64, i16 zeroext, i16 zeroext, i32) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

declare i32 @libnet_plist_chain_new(%struct.libnet_context*, %struct.libnet_port_list_chain**, i8*) #2

declare i32 @port(i8*, i64, %struct.libnet_port_list_chain*, i32) #2

declare i32 @mhport(i8*, %struct.libnet_port_list_chain*, i32) #2

declare void @libnet_destroy(%struct.libnet_context*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define void @openfile() #0 !dbg !637 {
  %1 = load i8*, i8** @logname, align 8, !dbg !638
  %2 = call %struct._IO_FILE* @fopen(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0)), !dbg !640
  store %struct._IO_FILE* %2, %struct._IO_FILE** @logd, align 8, !dbg !641
  %3 = icmp eq %struct._IO_FILE* %2, null, !dbg !642
  br i1 %3, label %4, label %9, !dbg !643

; <label>:4:                                      ; preds = %0
  %5 = call i32* @__errno_location() #1, !dbg !644
  %6 = load i32, i32* %5, align 4, !dbg !646
  %7 = call i8* @strerror(i32 %6) #8, !dbg !647
  %8 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i32 0, i32 0), i8* %7), !dbg !649
  br label %9, !dbg !651

; <label>:9:                                      ; preds = %4, %0
  ret void, !dbg !652
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @strerror(i32) #5

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

; Function Attrs: nounwind uwtable
define void @sigexit() #0 !dbg !653 {
  %1 = load i16, i16* @graph, align 2, !dbg !654
  %2 = icmp ne i16 %1, 0, !dbg !654
  br i1 %2, label %3, label %6, !dbg !656

; <label>:3:                                      ; preds = %0
  %4 = call i32 @endwin(), !dbg !657
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i32 0, i32 0)), !dbg !659
  call void @exit(i32 0) #10, !dbg !660
  unreachable, !dbg !660

; <label>:6:                                      ; preds = %0
  %7 = load i16, i16* @tr, align 2, !dbg !661
  %8 = icmp ne i16 %7, 0, !dbg !661
  br i1 %8, label %26, label %9, !dbg !663

; <label>:9:                                      ; preds = %6
  %10 = load i32, i32* @sniff_glob, align 4, !dbg !664
  %11 = icmp ne i32 %10, 0, !dbg !664
  br i1 %11, label %12, label %26, !dbg !666

; <label>:12:                                     ; preds = %9
  %13 = load %struct.pcap*, %struct.pcap** @descr, align 8, !dbg !667
  %14 = call i32 @pcap_stats(%struct.pcap* %13, %struct.pcap_stat* @statistic), !dbg !670
  %15 = icmp slt i32 %14, 0, !dbg !671
  br i1 %15, label %16, label %20, !dbg !672

; <label>:16:                                     ; preds = %12
  %17 = load %struct.pcap*, %struct.pcap** @descr, align 8, !dbg !673
  %18 = call i8* @pcap_geterr(%struct.pcap* %17), !dbg !674
  %19 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i32 0, i32 0), i8* %18), !dbg !675
  br label %25, !dbg !677

; <label>:20:                                     ; preds = %12
  %21 = load i32, i32* getelementptr inbounds (%struct.pcap_stat, %struct.pcap_stat* @statistic, i32 0, i32 0), align 4, !dbg !678
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i32 0, i32 0), i32 %21), !dbg !680
  %23 = load i32, i32* getelementptr inbounds (%struct.pcap_stat, %struct.pcap_stat* @statistic, i32 0, i32 1), align 4, !dbg !681
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i32 0, i32 0), i32 %23), !dbg !682
  br label %25

; <label>:25:                                     ; preds = %20, %16
  br label %26, !dbg !683

; <label>:26:                                     ; preds = %25, %9, %6
  %27 = load i16, i16* @tl, align 2, !dbg !684
  %28 = icmp ne i16 %27, 0, !dbg !684
  br i1 %28, label %29, label %31, !dbg !686

; <label>:29:                                     ; preds = %26
  %30 = load %struct.pcap_dumper*, %struct.pcap_dumper** @dumper, align 8, !dbg !687
  call void @pcap_dump_close(%struct.pcap_dumper* %30), !dbg !688
  br label %31, !dbg !688

; <label>:31:                                     ; preds = %29, %26
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @logd, align 8, !dbg !689
  %33 = icmp ne %struct._IO_FILE* %32, null, !dbg !689
  br i1 %33, label %34, label %37, !dbg !691

; <label>:34:                                     ; preds = %31
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @logd, align 8, !dbg !692
  %36 = call i32 @fclose(%struct._IO_FILE* %35), !dbg !693
  br label %37, !dbg !693

; <label>:37:                                     ; preds = %34, %31
  call void @exit(i32 0) #10, !dbg !694
  unreachable, !dbg !694
                                                  ; No predecessors!
  ret void, !dbg !695
}

declare i32 @endwin() #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #7

declare i32 @pcap_stats(%struct.pcap*, %struct.pcap_stat*) #2

declare i8* @pcap_geterr(%struct.pcap*) #2

declare void @pcap_dump_close(%struct.pcap_dumper*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i32 @fork() #5

; Function Attrs: nounwind
declare i32 @getpid() #5

; Function Attrs: nounwind uwtable
define i8* @nast_hex_ntoa(i8*) #0 !dbg !696 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !699, metadata !166), !dbg !700
  call void @llvm.dbg.declare(metadata i8** %3, metadata !701, metadata !166), !dbg !702
  %4 = call noalias i8* @calloc(i64 18, i64 1) #8, !dbg !703
  store i8* %4, i8** %3, align 8, !dbg !702
  %5 = load i8*, i8** %3, align 8, !dbg !704
  %6 = load i8*, i8** %2, align 8, !dbg !705
  %7 = getelementptr inbounds i8, i8* %6, i64 0, !dbg !705
  %8 = load i8, i8* %7, align 1, !dbg !705
  %9 = zext i8 %8 to i32, !dbg !705
  %10 = load i8*, i8** %2, align 8, !dbg !706
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !706
  %12 = load i8, i8* %11, align 1, !dbg !706
  %13 = zext i8 %12 to i32, !dbg !706
  %14 = load i8*, i8** %2, align 8, !dbg !707
  %15 = getelementptr inbounds i8, i8* %14, i64 2, !dbg !707
  %16 = load i8, i8* %15, align 1, !dbg !707
  %17 = zext i8 %16 to i32, !dbg !707
  %18 = load i8*, i8** %2, align 8, !dbg !708
  %19 = getelementptr inbounds i8, i8* %18, i64 3, !dbg !708
  %20 = load i8, i8* %19, align 1, !dbg !708
  %21 = zext i8 %20 to i32, !dbg !708
  %22 = load i8*, i8** %2, align 8, !dbg !709
  %23 = getelementptr inbounds i8, i8* %22, i64 4, !dbg !709
  %24 = load i8, i8* %23, align 1, !dbg !709
  %25 = zext i8 %24 to i32, !dbg !709
  %26 = load i8*, i8** %2, align 8, !dbg !710
  %27 = getelementptr inbounds i8, i8* %26, i64 5, !dbg !710
  %28 = load i8, i8* %27, align 1, !dbg !710
  %29 = zext i8 %28 to i32, !dbg !710
  %30 = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i32 0, i32 0), i32 %9, i32 %13, i32 %17, i32 %21, i32 %25, i32 %29) #8, !dbg !711
  %31 = load i8*, i8** %3, align 8, !dbg !712
  ret i8* %31, !dbg !713
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #5

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #5

; Function Attrs: nounwind uwtable
define i8* @nast_atoda(i8*) #0 !dbg !714 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !715, metadata !166), !dbg !716
  call void @llvm.dbg.declare(metadata i8** %3, metadata !717, metadata !166), !dbg !718
  %4 = call noalias i8* @calloc(i64 16, i64 1) #8, !dbg !719
  store i8* %4, i8** %3, align 8, !dbg !718
  %5 = load i8*, i8** %3, align 8, !dbg !720
  %6 = load i8*, i8** %2, align 8, !dbg !721
  %7 = getelementptr inbounds i8, i8* %6, i64 0, !dbg !721
  %8 = load i8, i8* %7, align 1, !dbg !721
  %9 = zext i8 %8 to i32, !dbg !721
  %10 = load i8*, i8** %2, align 8, !dbg !722
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !722
  %12 = load i8, i8* %11, align 1, !dbg !722
  %13 = zext i8 %12 to i32, !dbg !722
  %14 = load i8*, i8** %2, align 8, !dbg !723
  %15 = getelementptr inbounds i8, i8* %14, i64 2, !dbg !723
  %16 = load i8, i8* %15, align 1, !dbg !723
  %17 = zext i8 %16 to i32, !dbg !723
  %18 = load i8*, i8** %2, align 8, !dbg !724
  %19 = getelementptr inbounds i8, i8* %18, i64 3, !dbg !724
  %20 = load i8, i8* %19, align 1, !dbg !724
  %21 = zext i8 %20 to i32, !dbg !724
  %22 = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0), i32 %9, i32 %13, i32 %17, i32 %21) #8, !dbg !725
  %23 = load i8*, i8** %3, align 8, !dbg !726
  ret i8* %23, !dbg !727
}

; Function Attrs: nounwind uwtable
define void @n_print(i8*, i32, i32, i32, i8*, ...) #0 !dbg !728 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca [2048 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !731, metadata !166), !dbg !732
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !733, metadata !166), !dbg !734
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !735, metadata !166), !dbg !736
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !737, metadata !166), !dbg !738
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !739, metadata !166), !dbg !740
  call void @llvm.dbg.declare(metadata [2048 x i8]* %11, metadata !741, metadata !166), !dbg !745
  call void @llvm.dbg.declare(metadata i32* %12, metadata !746, metadata !166), !dbg !747
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %13, metadata !748, metadata !166), !dbg !760
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %13, i32 0, i32 0, !dbg !761
  %15 = bitcast %struct.__va_list_tag* %14 to i8*, !dbg !761
  call void @llvm.va_start(i8* %15), !dbg !761
  %16 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i32 0, i32 0, !dbg !762
  %17 = load i8*, i8** %10, align 8, !dbg !763
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %13, i32 0, i32 0, !dbg !764
  %19 = call i32 @vsnprintf(i8* %16, i64 2048, i8* %17, %struct.__va_list_tag* %18) #8, !dbg !765
  store i32 %19, i32* %12, align 4, !dbg !766
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %13, i32 0, i32 0, !dbg !767
  %21 = bitcast %struct.__va_list_tag* %20 to i8*, !dbg !767
  call void @llvm.va_end(i8* %21), !dbg !767
  %22 = load i16, i16* @graph, align 2, !dbg !768
  %23 = icmp ne i16 %22, 0, !dbg !768
  br i1 %23, label %31, label %24, !dbg !770

; <label>:24:                                     ; preds = %5
  %25 = load i32, i32* %9, align 4, !dbg !771
  %26 = icmp ne i32 %25, 0, !dbg !771
  br i1 %26, label %31, label %27, !dbg !773

; <label>:27:                                     ; preds = %24
  %28 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i32 0, i32 0, !dbg !774
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i8* %28), !dbg !776
  %30 = call i32 @fflush(%struct._IO_FILE* null), !dbg !777
  br label %31, !dbg !778

; <label>:31:                                     ; preds = %27, %24, %5
  %32 = load i16, i16* @graph, align 2, !dbg !779
  %33 = icmp ne i16 %32, 0, !dbg !779
  br i1 %33, label %44, label %34, !dbg !781

; <label>:34:                                     ; preds = %31
  %35 = load i32, i32* %9, align 4, !dbg !782
  %36 = icmp ne i32 %35, 0, !dbg !782
  br i1 %36, label %37, label %44, !dbg !784

; <label>:37:                                     ; preds = %34
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @logd, align 8, !dbg !785
  %39 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i32 0, i32 0, !dbg !787
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), i8* %39), !dbg !788
  %41 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i32 0, i32 0, !dbg !789
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i8* %41), !dbg !790
  %43 = call i32 @fflush(%struct._IO_FILE* null), !dbg !791
  br label %44, !dbg !792

; <label>:44:                                     ; preds = %37, %34, %31
  %45 = load i16, i16* @graph, align 2, !dbg !793
  %46 = zext i16 %45 to i32, !dbg !793
  %47 = icmp ne i32 %46, 0, !dbg !793
  br i1 %47, label %48, label %60, !dbg !795

; <label>:48:                                     ; preds = %44
  %49 = load i32, i32* %9, align 4, !dbg !796
  %50 = icmp ne i32 %49, 0, !dbg !796
  br i1 %50, label %51, label %60, !dbg !798

; <label>:51:                                     ; preds = %48
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @logd, align 8, !dbg !799
  %53 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i32 0, i32 0, !dbg !801
  %54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i8* %53), !dbg !802
  %55 = load i8*, i8** %6, align 8, !dbg !803
  %56 = load i32, i32* %7, align 4, !dbg !804
  %57 = load i32, i32* %8, align 4, !dbg !805
  %58 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i32 0, i32 0, !dbg !806
  %59 = call i32 @ng_print(i8* %55, i32 %56, i32 %57, i8* %58), !dbg !807
  br label %60, !dbg !808

; <label>:60:                                     ; preds = %51, %48, %44
  %61 = load i16, i16* @graph, align 2, !dbg !809
  %62 = zext i16 %61 to i32, !dbg !809
  %63 = icmp ne i32 %62, 0, !dbg !809
  br i1 %63, label %64, label %73, !dbg !811

; <label>:64:                                     ; preds = %60
  %65 = load i32, i32* %9, align 4, !dbg !812
  %66 = icmp ne i32 %65, 0, !dbg !812
  br i1 %66, label %73, label %67, !dbg !814

; <label>:67:                                     ; preds = %64
  %68 = load i8*, i8** %6, align 8, !dbg !815
  %69 = load i32, i32* %7, align 4, !dbg !816
  %70 = load i32, i32* %8, align 4, !dbg !817
  %71 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i32 0, i32 0, !dbg !818
  %72 = call i32 @ng_print(i8* %68, i32 %69, i32 %70, i8* %71), !dbg !819
  br label %73, !dbg !819

; <label>:73:                                     ; preds = %67, %64, %60
  ret void, !dbg !820
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #8

; Function Attrs: nounwind
declare i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #5

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #8

declare i32 @fflush(%struct._IO_FILE*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @ng_print(i8*, i32, i32, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!158, !159}
!llvm.ident = !{!160}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !5)
!1 = !DIFile(filename: "[inter]common.o.i", directory: "/home/lichi/Desktop/nast/[task]nast")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !70, !72, !73, !79, !80, !99, !103, !107, !113, !114, !115, !116, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !147, !148, !151, !155, !156, !157}
!6 = distinct !DIGlobalVariable(name: "logd", scope: !0, file: !7, line: 98, type: !8, isLocal: false, isDefinition: true, variable: %struct._IO_FILE** @logd)
!7 = !DIFile(filename: "include/nast.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !10, line: 48, baseType: !11)
!10 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !12, line: 241, size: 1728, align: 64, elements: !13)
!12 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!13 = !{!14, !16, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !37, !38, !39, !40, !44, !46, !48, !52, !55, !57, !58, !59, !60, !61, !65, !66}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !11, file: !12, line: 242, baseType: !15, size: 32, align: 32)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !11, file: !12, line: 247, baseType: !17, size: 64, align: 64, offset: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !11, file: !12, line: 248, baseType: !17, size: 64, align: 64, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !11, file: !12, line: 249, baseType: !17, size: 64, align: 64, offset: 192)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !11, file: !12, line: 250, baseType: !17, size: 64, align: 64, offset: 256)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !11, file: !12, line: 251, baseType: !17, size: 64, align: 64, offset: 320)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !11, file: !12, line: 252, baseType: !17, size: 64, align: 64, offset: 384)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !11, file: !12, line: 253, baseType: !17, size: 64, align: 64, offset: 448)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !11, file: !12, line: 254, baseType: !17, size: 64, align: 64, offset: 512)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !11, file: !12, line: 256, baseType: !17, size: 64, align: 64, offset: 576)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !11, file: !12, line: 257, baseType: !17, size: 64, align: 64, offset: 640)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !11, file: !12, line: 258, baseType: !17, size: 64, align: 64, offset: 704)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !11, file: !12, line: 260, baseType: !30, size: 64, align: 64, offset: 768)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !12, line: 156, size: 192, align: 64, elements: !32)
!32 = !{!33, !34, !36}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !31, file: !12, line: 157, baseType: !30, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !31, file: !12, line: 158, baseType: !35, size: 64, align: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !31, file: !12, line: 162, baseType: !15, size: 32, align: 32, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !11, file: !12, line: 262, baseType: !35, size: 64, align: 64, offset: 832)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !11, file: !12, line: 264, baseType: !15, size: 32, align: 32, offset: 896)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !11, file: !12, line: 268, baseType: !15, size: 32, align: 32, offset: 928)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !11, file: !12, line: 270, baseType: !41, size: 64, align: 64, offset: 960)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !42, line: 131, baseType: !43)
!42 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!43 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !11, file: !12, line: 274, baseType: !45, size: 16, align: 16, offset: 1024)
!45 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !11, file: !12, line: 275, baseType: !47, size: 8, align: 8, offset: 1040)
!47 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !11, file: !12, line: 276, baseType: !49, size: 8, align: 8, offset: 1048)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8, align: 8, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 1)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !11, file: !12, line: 280, baseType: !53, size: 64, align: 64, offset: 1088)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !12, line: 150, baseType: null)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !11, file: !12, line: 289, baseType: !56, size: 64, align: 64, offset: 1152)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !42, line: 132, baseType: !43)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !11, file: !12, line: 297, baseType: !4, size: 64, align: 64, offset: 1216)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !11, file: !12, line: 298, baseType: !4, size: 64, align: 64, offset: 1280)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !11, file: !12, line: 299, baseType: !4, size: 64, align: 64, offset: 1344)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !11, file: !12, line: 300, baseType: !4, size: 64, align: 64, offset: 1408)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !11, file: !12, line: 302, baseType: !62, size: 64, align: 64, offset: 1472)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !63, line: 216, baseType: !64)
!63 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!64 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !11, file: !12, line: 303, baseType: !15, size: 32, align: 32, offset: 1536)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !11, file: !12, line: 305, baseType: !67, size: 160, align: 8, offset: 1568)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 160, align: 8, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 20)
!70 = distinct !DIGlobalVariable(name: "offset", scope: !0, file: !7, line: 99, type: !71, isLocal: false, isDefinition: true, variable: i16* @offset)
!71 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!72 = distinct !DIGlobalVariable(name: "npkt", scope: !0, file: !7, line: 100, type: !15, isLocal: false, isDefinition: true, variable: i32* @npkt)
!73 = distinct !DIGlobalVariable(name: "packet", scope: !0, file: !7, line: 101, type: !74, isLocal: false, isDefinition: true, variable: i8** @packet)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !76, line: 33, baseType: !77)
!76 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !42, line: 30, baseType: !78)
!78 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!79 = distinct !DIGlobalVariable(name: "buf", scope: !0, file: !7, line: 102, type: !74, isLocal: false, isDefinition: true, variable: i8** @buf)
!80 = distinct !DIGlobalVariable(name: "hdr", scope: !0, file: !7, line: 103, type: !81, isLocal: false, isDefinition: true, variable: %struct.pcap_pkthdr* @hdr)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcap_pkthdr", file: !82, line: 199, size: 192, align: 64, elements: !83)
!82 = !DIFile(filename: "/usr/local/include/pcap/pcap.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!83 = !{!84, !92, !98}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !81, file: !82, line: 200, baseType: !85, size: 128, align: 64)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !86, line: 30, size: 128, align: 64, elements: !87)
!86 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!87 = !{!88, !90}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !85, file: !86, line: 32, baseType: !89, size: 64, align: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !42, line: 139, baseType: !43)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !85, file: !86, line: 33, baseType: !91, size: 64, align: 64, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !42, line: 141, baseType: !43)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "caplen", scope: !81, file: !82, line: 201, baseType: !93, size: 32, align: 32, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "bpf_u_int32", file: !94, line: 85, baseType: !95)
!94 = !DIFile(filename: "/usr/local/include/pcap/bpf.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !76, line: 35, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_int", file: !42, line: 32, baseType: !97)
!97 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !81, file: !82, line: 202, baseType: !93, size: 32, align: 32, offset: 160)
!99 = distinct !DIGlobalVariable(name: "descr", scope: !0, file: !7, line: 104, type: !100, isLocal: false, isDefinition: true, variable: %struct.pcap** @descr)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, align: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "pcap_t", file: !82, line: 118, baseType: !102)
!102 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcap", file: !82, line: 118, flags: DIFlagFwdDecl)
!103 = distinct !DIGlobalVariable(name: "dumper", scope: !0, file: !7, line: 105, type: !104, isLocal: false, isDefinition: true, variable: %struct.pcap_dumper** @dumper)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "pcap_dumper_t", file: !82, line: 119, baseType: !106)
!106 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcap_dumper", file: !82, line: 119, flags: DIFlagFwdDecl)
!107 = distinct !DIGlobalVariable(name: "statistic", scope: !0, file: !7, line: 106, type: !108, isLocal: false, isDefinition: true, variable: %struct.pcap_stat* @statistic)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcap_stat", file: !82, line: 208, size: 96, align: 32, elements: !109)
!109 = !{!110, !111, !112}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "ps_recv", scope: !108, file: !82, line: 209, baseType: !95, size: 32, align: 32)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "ps_drop", scope: !108, file: !82, line: 210, baseType: !95, size: 32, align: 32, offset: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "ps_ifdrop", scope: !108, file: !82, line: 211, baseType: !95, size: 32, align: 32, offset: 64)
!113 = distinct !DIGlobalVariable(name: "maskp", scope: !0, file: !7, line: 107, type: !93, isLocal: false, isDefinition: true, variable: i32* @maskp)
!114 = distinct !DIGlobalVariable(name: "netp", scope: !0, file: !7, line: 108, type: !93, isLocal: false, isDefinition: true, variable: i32* @netp)
!115 = distinct !DIGlobalVariable(name: "datalink", scope: !0, file: !7, line: 109, type: !15, isLocal: false, isDefinition: true, variable: i32* @datalink)
!116 = distinct !DIGlobalVariable(name: "fp", scope: !0, file: !7, line: 110, type: !117, isLocal: false, isDefinition: true, variable: %struct.bpf_program* @fp)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_program", file: !94, line: 104, size: 128, align: 64, elements: !118)
!118 = !{!119, !120}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "bf_len", scope: !117, file: !94, line: 105, baseType: !95, size: 32, align: 32)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "bf_insns", scope: !117, file: !94, line: 106, baseType: !121, size: 64, align: 64, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_insn", file: !94, line: 234, size: 64, align: 32, elements: !123)
!123 = !{!124, !127, !128, !129}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !122, file: !94, line: 235, baseType: !125, size: 16, align: 16)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_short", file: !76, line: 34, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_short", file: !42, line: 31, baseType: !45)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "jt", scope: !122, file: !94, line: 236, baseType: !75, size: 8, align: 8, offset: 16)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "jf", scope: !122, file: !94, line: 237, baseType: !75, size: 8, align: 8, offset: 24)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !122, file: !94, line: 238, baseType: !93, size: 32, align: 32, offset: 32)
!130 = distinct !DIGlobalVariable(name: "logname", scope: !0, file: !7, line: 111, type: !17, isLocal: false, isDefinition: true, variable: i8** @logname)
!131 = distinct !DIGlobalVariable(name: "tcpdl", scope: !0, file: !7, line: 112, type: !17, isLocal: false, isDefinition: true, variable: i8** @tcpdl)
!132 = distinct !DIGlobalVariable(name: "tr", scope: !0, file: !7, line: 113, type: !125, isLocal: false, isDefinition: true, variable: i16* @tr)
!133 = distinct !DIGlobalVariable(name: "tl", scope: !0, file: !7, line: 113, type: !125, isLocal: false, isDefinition: true, variable: i16* @tl)
!134 = distinct !DIGlobalVariable(name: "graph", scope: !0, file: !7, line: 114, type: !125, isLocal: false, isDefinition: true, variable: i16* @graph)
!135 = distinct !DIGlobalVariable(name: "cont", scope: !0, file: !7, line: 115, type: !125, isLocal: false, isDefinition: true, variable: i16* @cont)
!136 = distinct !DIGlobalVariable(name: "stream_glob", scope: !0, file: !7, line: 117, type: !15, isLocal: false, isDefinition: true, variable: i32* @stream_glob)
!137 = distinct !DIGlobalVariable(name: "bc_glob", scope: !0, file: !7, line: 118, type: !15, isLocal: false, isDefinition: true, variable: i32* @bc_glob)
!138 = distinct !DIGlobalVariable(name: "sniff_glob", scope: !0, file: !7, line: 119, type: !15, isLocal: false, isDefinition: true, variable: i32* @sniff_glob)
!139 = distinct !DIGlobalVariable(name: "rst_glob", scope: !0, file: !7, line: 120, type: !15, isLocal: false, isDefinition: true, variable: i32* @rst_glob)
!140 = distinct !DIGlobalVariable(name: "arp_glob", scope: !0, file: !7, line: 121, type: !15, isLocal: false, isDefinition: true, variable: i32* @arp_glob)
!141 = distinct !DIGlobalVariable(name: "pt", scope: !0, file: !7, line: 122, type: !142, isLocal: false, isDefinition: true, variable: [2 x i64]* @pt)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 128, align: 64, elements: !145)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !144, line: 60, baseType: !64)
!144 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!145 = !{!146}
!146 = !DISubrange(count: 2)
!147 = distinct !DIGlobalVariable(name: "lg", scope: !0, file: !7, line: 123, type: !15, isLocal: false, isDefinition: true, variable: i32* @lg)
!148 = distinct !DIGlobalVariable(name: "tm", scope: !0, file: !7, line: 132, type: !149, isLocal: false, isDefinition: true, variable: i64* @tm)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !150, line: 75, baseType: !89)
!150 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!151 = distinct !DIGlobalVariable(name: "timed", scope: !0, file: !7, line: 133, type: !152, isLocal: false, isDefinition: true, variable: [60 x i8]* @timed)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 480, align: 8, elements: !153)
!153 = !{!154}
!154 = !DISubrange(count: 60)
!155 = distinct !DIGlobalVariable(name: "demonize", scope: !0, file: !7, line: 136, type: !125, isLocal: false, isDefinition: true, variable: i16* @demonize)
!156 = distinct !DIGlobalVariable(name: "line_s", scope: !0, file: !7, line: 138, type: !15, isLocal: false, isDefinition: true, variable: i32* @line_s)
!157 = distinct !DIGlobalVariable(name: "row_s", scope: !0, file: !7, line: 139, type: !15, isLocal: false, isDefinition: true, variable: i32* @row_s)
!158 = !{i32 2, !"Dwarf Version", i32 4}
!159 = !{i32 2, !"Debug Info Version", i32 3}
!160 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!161 = distinct !DISubprogram(name: "runcplx", scope: !162, file: !162, line: 35, type: !163, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!162 = !DIFile(filename: "common.c", directory: "/home/lichi/Desktop/nast/[task]nast")
!163 = !DISubroutineType(types: !164)
!164 = !{!15, !18, !17, !15}
!165 = !DILocalVariable(name: "what", arg: 1, scope: !161, file: !162, line: 35, type: !18)
!166 = !DIExpression()
!167 = !DILocation(line: 35, column: 19, scope: !161)
!168 = !DILocalVariable(name: "dev", arg: 2, scope: !161, file: !162, line: 35, type: !17)
!169 = !DILocation(line: 35, column: 31, scope: !161)
!170 = !DILocalVariable(name: "l", arg: 3, scope: !161, file: !162, line: 35, type: !15)
!171 = !DILocation(line: 35, column: 40, scope: !161)
!172 = !DILocalVariable(name: "ip_dst", scope: !161, file: !162, line: 37, type: !173)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_long", file: !76, line: 36, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_long", file: !42, line: 33, baseType: !64)
!175 = !DILocation(line: 37, column: 11, scope: !161)
!176 = !DILocalVariable(name: "ip_src", scope: !161, file: !162, line: 37, type: !173)
!177 = !DILocation(line: 37, column: 19, scope: !161)
!178 = !DILocalVariable(name: "port_dst", scope: !161, file: !162, line: 38, type: !125)
!179 = !DILocation(line: 38, column: 12, scope: !161)
!180 = !DILocalVariable(name: "port_src", scope: !161, file: !162, line: 38, type: !125)
!181 = !DILocation(line: 38, column: 22, scope: !161)
!182 = !DILocalVariable(name: "plist", scope: !161, file: !162, line: 39, type: !183)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "libnet_plist_t", file: !184, line: 40, baseType: !185)
!184 = !DIFile(filename: "/usr/local/include/libnet/libnet-structures.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_port_list_chain", file: !184, line: 41, size: 128, align: 64, elements: !186)
!186 = !{!187, !190, !191, !192, !194}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !185, file: !184, line: 43, baseType: !188, size: 16, align: 16)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !189, line: 49, baseType: !45)
!189 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!190 = !DIDerivedType(tag: DW_TAG_member, name: "bport", scope: !185, file: !184, line: 44, baseType: !188, size: 16, align: 16, offset: 16)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "eport", scope: !185, file: !184, line: 45, baseType: !188, size: 16, align: 16, offset: 32)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !185, file: !184, line: 46, baseType: !193, size: 8, align: 8, offset: 48)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !189, line: 48, baseType: !78)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !185, file: !184, line: 47, baseType: !195, size: 64, align: 64, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!196 = !DILocation(line: 39, column: 19, scope: !161)
!197 = !DILocalVariable(name: "plist_p", scope: !161, file: !162, line: 39, type: !195)
!198 = !DILocation(line: 39, column: 27, scope: !161)
!199 = !DILocalVariable(name: "buff", scope: !161, file: !162, line: 40, type: !200)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 400, align: 8, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 50)
!203 = !DILocation(line: 40, column: 9, scope: !161)
!204 = !DILocalVariable(name: "i", scope: !161, file: !162, line: 41, type: !125)
!205 = !DILocation(line: 41, column: 12, scope: !161)
!206 = !DILocalVariable(name: "L", scope: !161, file: !162, line: 42, type: !207)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "libnet_t", file: !184, line: 235, baseType: !209)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_context", file: !184, line: 186, size: 3200, align: 64, elements: !210)
!210 = !{!211, !212, !213, !232, !233, !234, !235, !236, !237, !238, !245, !246, !250, !254}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !209, file: !184, line: 192, baseType: !15, size: 32, align: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "injection_type", scope: !209, file: !184, line: 194, baseType: !15, size: 32, align: 32, offset: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_blocks", scope: !209, file: !184, line: 206, baseType: !214, size: 64, align: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64, align: 64)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "libnet_pblock_t", file: !184, line: 178, baseType: !216)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_protocol_block", file: !184, line: 77, size: 384, align: 64, elements: !217)
!217 = !{!218, !220, !222, !223, !224, !225, !226, !229, !231}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !216, file: !184, line: 79, baseType: !219, size: 64, align: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, align: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "b_len", scope: !216, file: !184, line: 80, baseType: !221, size: 32, align: 32, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !189, line: 51, baseType: !97)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "h_len", scope: !216, file: !184, line: 81, baseType: !188, size: 16, align: 16, offset: 96)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "copied", scope: !216, file: !184, line: 92, baseType: !221, size: 32, align: 32, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !216, file: !184, line: 94, baseType: !193, size: 8, align: 8, offset: 160)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !216, file: !184, line: 168, baseType: !193, size: 8, align: 8, offset: 168)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "ptag", scope: !216, file: !184, line: 170, baseType: !227, size: 32, align: 32, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "libnet_ptag_t", file: !184, line: 70, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !76, line: 196, baseType: !15)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !216, file: !184, line: 175, baseType: !230, size: 64, align: 64, offset: 256)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !216, file: !184, line: 176, baseType: !230, size: 64, align: 64, offset: 320)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "pblock_end", scope: !209, file: !184, line: 207, baseType: !214, size: 64, align: 64, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "n_pblocks", scope: !209, file: !184, line: 208, baseType: !221, size: 32, align: 32, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "link_type", scope: !209, file: !184, line: 210, baseType: !15, size: 32, align: 32, offset: 224)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "link_offset", scope: !209, file: !184, line: 224, baseType: !15, size: 32, align: 32, offset: 256)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "aligner", scope: !209, file: !184, line: 225, baseType: !15, size: 32, align: 32, offset: 288)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !209, file: !184, line: 226, baseType: !17, size: 64, align: 64, offset: 320)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !209, file: !184, line: 228, baseType: !239, size: 192, align: 64, offset: 384)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_stats", file: !184, line: 52, size: 192, align: 64, elements: !240)
!240 = !{!241, !243, !244}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "packets_sent", scope: !239, file: !184, line: 55, baseType: !242, size: 64, align: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !189, line: 55, baseType: !64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "packet_errors", scope: !239, file: !184, line: 56, baseType: !242, size: 64, align: 64, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_written", scope: !239, file: !184, line: 57, baseType: !242, size: 64, align: 64, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "ptag_state", scope: !209, file: !184, line: 229, baseType: !227, size: 32, align: 32, offset: 576)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !209, file: !184, line: 230, baseType: !247, size: 512, align: 8, offset: 608)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 512, align: 8, elements: !248)
!248 = !{!249}
!249 = !DISubrange(count: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "err_buf", scope: !209, file: !184, line: 232, baseType: !251, size: 2048, align: 8, offset: 1120)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 2048, align: 8, elements: !252)
!252 = !{!253}
!253 = !DISubrange(count: 256)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "total_size", scope: !209, file: !184, line: 233, baseType: !221, size: 32, align: 32, offset: 3168)
!255 = !DILocation(line: 42, column: 14, scope: !161)
!256 = !DILocalVariable(name: "errbuf", scope: !161, file: !162, line: 43, type: !251)
!257 = !DILocation(line: 43, column: 9, scope: !161)
!258 = !DILocation(line: 45, column: 6, scope: !161)
!259 = !DILocation(line: 46, column: 44, scope: !260)
!260 = distinct !DILexicalBlock(scope: !161, file: !162, line: 46, column: 8)
!261 = !DILocation(line: 46, column: 13, scope: !260)
!262 = !DILocation(line: 46, column: 11, scope: !260)
!263 = !DILocation(line: 46, column: 52, scope: !260)
!264 = !DILocation(line: 46, column: 8, scope: !161)
!265 = !DILocation(line: 48, column: 2, scope: !266)
!266 = distinct !DILexicalBlock(scope: !260, file: !162, line: 47, column: 6)
!267 = !DILocation(line: 49, column: 6, scope: !266)
!268 = !DILocation(line: 51, column: 12, scope: !161)
!269 = !DILocation(line: 51, column: 4, scope: !161)
!270 = !DILocation(line: 52, column: 6, scope: !161)
!271 = !DILocation(line: 56, column: 2, scope: !272)
!272 = distinct !DILexicalBlock(scope: !161, file: !162, line: 52, column: 6)
!273 = !DILocation(line: 57, column: 2, scope: !272)
!274 = !DILocation(line: 58, column: 2, scope: !272)
!275 = distinct !{!275, !274}
!276 = !DILocation(line: 60, column: 11, scope: !277)
!277 = distinct !DILexicalBlock(scope: !278, file: !162, line: 60, column: 11)
!278 = distinct !DILexicalBlock(scope: !272, file: !162, line: 59, column: 4)
!279 = !DILocation(line: 60, column: 11, scope: !278)
!280 = !DILocation(line: 60, column: 14, scope: !281)
!281 = !DILexicalBlockFile(scope: !277, file: !162, discriminator: 1)
!282 = !DILocation(line: 61, column: 7, scope: !278)
!283 = !DILocation(line: 62, column: 14, scope: !278)
!284 = !DILocation(line: 62, column: 23, scope: !278)
!285 = !DILocation(line: 62, column: 7, scope: !278)
!286 = !DILocation(line: 63, column: 39, scope: !287)
!287 = distinct !DILexicalBlock(scope: !278, file: !162, line: 63, column: 11)
!288 = !DILocation(line: 63, column: 46, scope: !287)
!289 = !DILocation(line: 63, column: 42, scope: !287)
!290 = !DILocation(line: 63, column: 21, scope: !291)
!291 = !DILexicalBlockFile(scope: !287, file: !162, discriminator: 1)
!292 = !DILocation(line: 63, column: 21, scope: !287)
!293 = !DILocation(line: 63, column: 19, scope: !287)
!294 = !DILocation(line: 63, column: 68, scope: !287)
!295 = !DILocation(line: 63, column: 11, scope: !278)
!296 = !DILocation(line: 65, column: 46, scope: !297)
!297 = distinct !DILexicalBlock(scope: !287, file: !162, line: 64, column: 9)
!298 = !DILocation(line: 65, column: 30, scope: !297)
!299 = !DILocation(line: 65, column: 5, scope: !300)
!300 = !DILexicalBlockFile(scope: !297, file: !162, discriminator: 1)
!301 = !DILocation(line: 66, column: 9, scope: !297)
!302 = !DILocation(line: 67, column: 9, scope: !278)
!303 = !DILocation(line: 68, column: 4, scope: !278)
!304 = !DILocation(line: 69, column: 9, scope: !272)
!305 = !DILocation(line: 69, column: 16, scope: !272)
!306 = !DILocation(line: 68, column: 4, scope: !307)
!307 = !DILexicalBlockFile(scope: !278, file: !162, discriminator: 1)
!308 = !DILocation(line: 71, column: 4, scope: !272)
!309 = !DILocation(line: 72, column: 2, scope: !272)
!310 = !DILocation(line: 73, column: 9, scope: !272)
!311 = !DILocation(line: 73, column: 18, scope: !272)
!312 = !DILocation(line: 73, column: 2, scope: !272)
!313 = !DILocation(line: 74, column: 18, scope: !272)
!314 = !DILocation(line: 74, column: 13, scope: !272)
!315 = !DILocation(line: 74, column: 11, scope: !272)
!316 = !DILocation(line: 75, column: 2, scope: !272)
!317 = distinct !{!317, !316}
!318 = !DILocation(line: 77, column: 11, scope: !319)
!319 = distinct !DILexicalBlock(scope: !320, file: !162, line: 77, column: 11)
!320 = distinct !DILexicalBlock(scope: !272, file: !162, line: 76, column: 4)
!321 = !DILocation(line: 77, column: 11, scope: !320)
!322 = !DILocation(line: 77, column: 14, scope: !323)
!323 = !DILexicalBlockFile(scope: !319, file: !162, discriminator: 1)
!324 = !DILocation(line: 78, column: 7, scope: !320)
!325 = !DILocation(line: 79, column: 14, scope: !320)
!326 = !DILocation(line: 79, column: 23, scope: !320)
!327 = !DILocation(line: 79, column: 7, scope: !320)
!328 = !DILocation(line: 80, column: 39, scope: !329)
!329 = distinct !DILexicalBlock(scope: !320, file: !162, line: 80, column: 11)
!330 = !DILocation(line: 80, column: 46, scope: !329)
!331 = !DILocation(line: 80, column: 42, scope: !329)
!332 = !DILocation(line: 80, column: 21, scope: !333)
!333 = !DILexicalBlockFile(scope: !329, file: !162, discriminator: 1)
!334 = !DILocation(line: 80, column: 21, scope: !329)
!335 = !DILocation(line: 80, column: 19, scope: !329)
!336 = !DILocation(line: 80, column: 68, scope: !329)
!337 = !DILocation(line: 80, column: 11, scope: !320)
!338 = !DILocation(line: 82, column: 47, scope: !339)
!339 = distinct !DILexicalBlock(scope: !329, file: !162, line: 81, column: 9)
!340 = !DILocation(line: 82, column: 31, scope: !339)
!341 = !DILocation(line: 82, column: 5, scope: !342)
!342 = !DILexicalBlockFile(scope: !339, file: !162, discriminator: 1)
!343 = !DILocation(line: 83, column: 9, scope: !339)
!344 = !DILocation(line: 85, column: 8, scope: !320)
!345 = !DILocation(line: 86, column: 4, scope: !320)
!346 = !DILocation(line: 87, column: 9, scope: !272)
!347 = !DILocation(line: 87, column: 16, scope: !272)
!348 = !DILocation(line: 86, column: 4, scope: !349)
!349 = !DILexicalBlockFile(scope: !320, file: !162, discriminator: 1)
!350 = !DILocation(line: 89, column: 2, scope: !272)
!351 = !DILocation(line: 90, column: 9, scope: !272)
!352 = !DILocation(line: 90, column: 18, scope: !272)
!353 = !DILocation(line: 90, column: 2, scope: !272)
!354 = !DILocation(line: 91, column: 18, scope: !272)
!355 = !DILocation(line: 91, column: 13, scope: !272)
!356 = !DILocation(line: 91, column: 11, scope: !272)
!357 = !DILocation(line: 92, column: 7, scope: !358)
!358 = distinct !DILexicalBlock(scope: !272, file: !162, line: 92, column: 6)
!359 = !DILocation(line: 92, column: 16, scope: !358)
!360 = !DILocation(line: 92, column: 20, scope: !361)
!361 = !DILexicalBlockFile(scope: !358, file: !162, discriminator: 1)
!362 = !DILocation(line: 92, column: 6, scope: !361)
!363 = !DILocation(line: 94, column: 7, scope: !364)
!364 = distinct !DILexicalBlock(scope: !358, file: !162, line: 93, column: 4)
!365 = !DILocation(line: 95, column: 8, scope: !364)
!366 = !DILocation(line: 96, column: 1, scope: !364)
!367 = !DILocation(line: 97, column: 7, scope: !364)
!368 = !DILocation(line: 100, column: 2, scope: !272)
!369 = !DILocation(line: 103, column: 6, scope: !370)
!370 = distinct !DILexicalBlock(scope: !272, file: !162, line: 103, column: 6)
!371 = !DILocation(line: 103, column: 6, scope: !272)
!372 = !DILocation(line: 104, column: 4, scope: !370)
!373 = !DILocation(line: 106, column: 7, scope: !272)
!374 = !DILocation(line: 106, column: 12, scope: !272)
!375 = !DILocation(line: 106, column: 20, scope: !272)
!376 = !DILocation(line: 106, column: 28, scope: !272)
!377 = !DILocation(line: 106, column: 38, scope: !272)
!378 = !DILocation(line: 106, column: 2, scope: !272)
!379 = !DILocation(line: 107, column: 2, scope: !272)
!380 = !DILocation(line: 110, column: 2, scope: !272)
!381 = !DILocation(line: 111, column: 2, scope: !272)
!382 = !DILocation(line: 112, column: 2, scope: !272)
!383 = distinct !{!383, !382}
!384 = !DILocation(line: 114, column: 11, scope: !385)
!385 = distinct !DILexicalBlock(scope: !386, file: !162, line: 114, column: 11)
!386 = distinct !DILexicalBlock(scope: !272, file: !162, line: 113, column: 4)
!387 = !DILocation(line: 114, column: 11, scope: !386)
!388 = !DILocation(line: 114, column: 14, scope: !389)
!389 = !DILexicalBlockFile(scope: !385, file: !162, discriminator: 1)
!390 = !DILocation(line: 115, column: 7, scope: !386)
!391 = !DILocation(line: 116, column: 14, scope: !386)
!392 = !DILocation(line: 115, column: 23, scope: !386)
!393 = !DILocation(line: 116, column: 7, scope: !386)
!394 = !DILocation(line: 116, column: 39, scope: !395)
!395 = distinct !DILexicalBlock(scope: !386, file: !162, line: 116, column: 11)
!396 = !DILocation(line: 116, column: 46, scope: !395)
!397 = !DILocation(line: 116, column: 42, scope: !398)
!398 = !DILexicalBlockFile(scope: !395, file: !162, discriminator: 1)
!399 = !DILocation(line: 116, column: 21, scope: !400)
!400 = !DILexicalBlockFile(scope: !395, file: !162, discriminator: 2)
!401 = !DILocation(line: 116, column: 21, scope: !395)
!402 = !DILocation(line: 116, column: 19, scope: !395)
!403 = !DILocation(line: 116, column: 68, scope: !395)
!404 = !DILocation(line: 116, column: 11, scope: !386)
!405 = !DILocation(line: 118, column: 46, scope: !406)
!406 = distinct !DILexicalBlock(scope: !395, file: !162, line: 117, column: 9)
!407 = !DILocation(line: 118, column: 30, scope: !406)
!408 = !DILocation(line: 118, column: 5, scope: !409)
!409 = !DILexicalBlockFile(scope: !406, file: !162, discriminator: 1)
!410 = !DILocation(line: 119, column: 9, scope: !406)
!411 = !DILocation(line: 120, column: 9, scope: !386)
!412 = !DILocation(line: 121, column: 4, scope: !386)
!413 = !DILocation(line: 122, column: 9, scope: !272)
!414 = !DILocation(line: 122, column: 16, scope: !272)
!415 = !DILocation(line: 121, column: 4, scope: !416)
!416 = !DILexicalBlockFile(scope: !386, file: !162, discriminator: 1)
!417 = !DILocation(line: 123, column: 2, scope: !272)
!418 = !DILocation(line: 124, column: 9, scope: !272)
!419 = !DILocation(line: 124, column: 18, scope: !272)
!420 = !DILocation(line: 124, column: 2, scope: !272)
!421 = !DILocation(line: 125, column: 18, scope: !272)
!422 = !DILocation(line: 125, column: 13, scope: !272)
!423 = !DILocation(line: 125, column: 11, scope: !272)
!424 = !DILocation(line: 127, column: 4, scope: !272)
!425 = !DILocation(line: 128, column: 2, scope: !272)
!426 = distinct !{!426, !425}
!427 = !DILocation(line: 130, column: 11, scope: !428)
!428 = distinct !DILexicalBlock(scope: !429, file: !162, line: 130, column: 11)
!429 = distinct !DILexicalBlock(scope: !272, file: !162, line: 129, column: 4)
!430 = !DILocation(line: 130, column: 11, scope: !429)
!431 = !DILocation(line: 130, column: 14, scope: !432)
!432 = !DILexicalBlockFile(scope: !428, file: !162, discriminator: 1)
!433 = !DILocation(line: 131, column: 7, scope: !429)
!434 = !DILocation(line: 132, column: 14, scope: !429)
!435 = !DILocation(line: 132, column: 23, scope: !429)
!436 = !DILocation(line: 132, column: 7, scope: !429)
!437 = !DILocation(line: 133, column: 39, scope: !438)
!438 = distinct !DILexicalBlock(scope: !429, file: !162, line: 133, column: 11)
!439 = !DILocation(line: 133, column: 46, scope: !438)
!440 = !DILocation(line: 133, column: 42, scope: !438)
!441 = !DILocation(line: 133, column: 21, scope: !442)
!442 = !DILexicalBlockFile(scope: !438, file: !162, discriminator: 1)
!443 = !DILocation(line: 133, column: 21, scope: !438)
!444 = !DILocation(line: 133, column: 19, scope: !438)
!445 = !DILocation(line: 133, column: 68, scope: !438)
!446 = !DILocation(line: 133, column: 11, scope: !429)
!447 = !DILocation(line: 135, column: 47, scope: !448)
!448 = distinct !DILexicalBlock(scope: !438, file: !162, line: 134, column: 9)
!449 = !DILocation(line: 135, column: 31, scope: !448)
!450 = !DILocation(line: 135, column: 5, scope: !451)
!451 = !DILexicalBlockFile(scope: !448, file: !162, discriminator: 1)
!452 = !DILocation(line: 136, column: 9, scope: !448)
!453 = !DILocation(line: 138, column: 8, scope: !429)
!454 = !DILocation(line: 139, column: 4, scope: !429)
!455 = !DILocation(line: 140, column: 9, scope: !272)
!456 = !DILocation(line: 140, column: 16, scope: !272)
!457 = !DILocation(line: 139, column: 4, scope: !458)
!458 = !DILexicalBlockFile(scope: !429, file: !162, discriminator: 1)
!459 = !DILocation(line: 141, column: 2, scope: !272)
!460 = !DILocation(line: 142, column: 9, scope: !272)
!461 = !DILocation(line: 142, column: 18, scope: !272)
!462 = !DILocation(line: 142, column: 2, scope: !272)
!463 = !DILocation(line: 143, column: 18, scope: !272)
!464 = !DILocation(line: 143, column: 13, scope: !272)
!465 = !DILocation(line: 143, column: 11, scope: !272)
!466 = !DILocation(line: 145, column: 2, scope: !272)
!467 = !DILocation(line: 148, column: 6, scope: !468)
!468 = distinct !DILexicalBlock(scope: !272, file: !162, line: 148, column: 6)
!469 = !DILocation(line: 148, column: 6, scope: !272)
!470 = !DILocation(line: 149, column: 4, scope: !468)
!471 = !DILocation(line: 151, column: 10, scope: !272)
!472 = !DILocation(line: 151, column: 15, scope: !272)
!473 = !DILocation(line: 151, column: 23, scope: !272)
!474 = !DILocation(line: 151, column: 31, scope: !272)
!475 = !DILocation(line: 151, column: 41, scope: !272)
!476 = !DILocation(line: 151, column: 50, scope: !272)
!477 = !DILocation(line: 151, column: 2, scope: !272)
!478 = !DILocation(line: 152, column: 2, scope: !272)
!479 = !DILocation(line: 155, column: 2, scope: !272)
!480 = !DILocation(line: 156, column: 2, scope: !272)
!481 = !DILocation(line: 157, column: 8, scope: !272)
!482 = !DILocation(line: 157, column: 17, scope: !272)
!483 = !DILocation(line: 157, column: 2, scope: !272)
!484 = !DILocation(line: 158, column: 34, scope: !485)
!485 = distinct !DILexicalBlock(scope: !272, file: !162, line: 158, column: 6)
!486 = !DILocation(line: 158, column: 40, scope: !485)
!487 = !DILocation(line: 158, column: 37, scope: !485)
!488 = !DILocation(line: 158, column: 16, scope: !489)
!489 = !DILexicalBlockFile(scope: !485, file: !162, discriminator: 1)
!490 = !DILocation(line: 158, column: 16, scope: !485)
!491 = !DILocation(line: 158, column: 14, scope: !485)
!492 = !DILocation(line: 158, column: 62, scope: !485)
!493 = !DILocation(line: 158, column: 6, scope: !272)
!494 = !DILocation(line: 160, column: 49, scope: !495)
!495 = distinct !DILexicalBlock(scope: !485, file: !162, line: 159, column: 4)
!496 = !DILocation(line: 160, column: 33, scope: !495)
!497 = !DILocation(line: 160, column: 7, scope: !498)
!498 = !DILexicalBlockFile(scope: !495, file: !162, discriminator: 1)
!499 = !DILocation(line: 161, column: 4, scope: !495)
!500 = !DILocation(line: 162, column: 2, scope: !272)
!501 = distinct !{!501, !500}
!502 = !DILocation(line: 164, column: 7, scope: !503)
!503 = distinct !DILexicalBlock(scope: !272, file: !162, line: 163, column: 4)
!504 = !DILocation(line: 165, column: 7, scope: !503)
!505 = !DILocation(line: 166, column: 13, scope: !503)
!506 = !DILocation(line: 166, column: 22, scope: !503)
!507 = !DILocation(line: 166, column: 7, scope: !503)
!508 = !DILocation(line: 167, column: 4, scope: !503)
!509 = !DILocation(line: 168, column: 17, scope: !272)
!510 = !DILocation(line: 168, column: 14, scope: !272)
!511 = !DILocation(line: 168, column: 9, scope: !512)
!512 = !DILexicalBlockFile(scope: !272, file: !162, discriminator: 2)
!513 = !DILocation(line: 168, column: 24, scope: !272)
!514 = !DILocation(line: 168, column: 28, scope: !272)
!515 = !DILocation(line: 168, column: 39, scope: !516)
!516 = !DILexicalBlockFile(scope: !272, file: !162, discriminator: 1)
!517 = !DILocation(line: 168, column: 36, scope: !516)
!518 = !DILocation(line: 168, column: 31, scope: !519)
!519 = !DILexicalBlockFile(scope: !516, file: !162, discriminator: 3)
!520 = !DILocation(line: 168, column: 46, scope: !516)
!521 = !DILocation(line: 168, column: 28, scope: !516)
!522 = !DILocation(line: 167, column: 4, scope: !523)
!523 = !DILexicalBlockFile(scope: !503, file: !162, discriminator: 1)
!524 = !DILocation(line: 169, column: 10, scope: !272)
!525 = !DILocation(line: 170, column: 29, scope: !526)
!526 = distinct !DILexicalBlock(scope: !272, file: !162, line: 170, column: 6)
!527 = !DILocation(line: 170, column: 45, scope: !526)
!528 = !DILocation(line: 170, column: 42, scope: !526)
!529 = !DILocation(line: 170, column: 6, scope: !530)
!530 = !DILexicalBlockFile(scope: !526, file: !162, discriminator: 1)
!531 = !DILocation(line: 170, column: 52, scope: !526)
!532 = !DILocation(line: 170, column: 6, scope: !272)
!533 = !DILocation(line: 172, column: 65, scope: !534)
!534 = distinct !DILexicalBlock(scope: !526, file: !162, line: 171, column: 4)
!535 = !DILocation(line: 172, column: 49, scope: !534)
!536 = !DILocation(line: 172, column: 7, scope: !537)
!537 = !DILexicalBlockFile(scope: !534, file: !162, discriminator: 1)
!538 = !DILocation(line: 173, column: 4, scope: !534)
!539 = !DILocation(line: 174, column: 2, scope: !272)
!540 = !DILocation(line: 177, column: 6, scope: !541)
!541 = distinct !DILexicalBlock(scope: !272, file: !162, line: 177, column: 6)
!542 = !DILocation(line: 177, column: 6, scope: !272)
!543 = !DILocation(line: 178, column: 4, scope: !541)
!544 = !DILocation(line: 180, column: 7, scope: !272)
!545 = !DILocation(line: 180, column: 11, scope: !272)
!546 = !DILocation(line: 180, column: 18, scope: !272)
!547 = !DILocation(line: 180, column: 26, scope: !272)
!548 = !DILocation(line: 180, column: 2, scope: !272)
!549 = !DILocation(line: 181, column: 2, scope: !272)
!550 = !DILocation(line: 184, column: 2, scope: !272)
!551 = !DILocation(line: 185, column: 2, scope: !272)
!552 = distinct !{!552, !551}
!553 = !DILocation(line: 187, column: 7, scope: !554)
!554 = distinct !DILexicalBlock(scope: !272, file: !162, line: 186, column: 4)
!555 = !DILocation(line: 188, column: 13, scope: !554)
!556 = !DILocation(line: 188, column: 22, scope: !554)
!557 = !DILocation(line: 188, column: 7, scope: !554)
!558 = !DILocation(line: 189, column: 4, scope: !554)
!559 = !DILocation(line: 190, column: 17, scope: !272)
!560 = !DILocation(line: 190, column: 14, scope: !272)
!561 = !DILocation(line: 190, column: 9, scope: !512)
!562 = !DILocation(line: 190, column: 24, scope: !272)
!563 = !DILocation(line: 190, column: 28, scope: !272)
!564 = !DILocation(line: 190, column: 39, scope: !516)
!565 = !DILocation(line: 190, column: 36, scope: !516)
!566 = !DILocation(line: 190, column: 31, scope: !519)
!567 = !DILocation(line: 190, column: 46, scope: !516)
!568 = !DILocation(line: 190, column: 28, scope: !516)
!569 = !DILocation(line: 189, column: 4, scope: !570)
!570 = !DILexicalBlockFile(scope: !554, file: !162, discriminator: 1)
!571 = !DILocation(line: 191, column: 10, scope: !272)
!572 = !DILocation(line: 192, column: 29, scope: !573)
!573 = distinct !DILexicalBlock(scope: !272, file: !162, line: 192, column: 6)
!574 = !DILocation(line: 192, column: 45, scope: !573)
!575 = !DILocation(line: 192, column: 42, scope: !573)
!576 = !DILocation(line: 192, column: 6, scope: !577)
!577 = !DILexicalBlockFile(scope: !573, file: !162, discriminator: 1)
!578 = !DILocation(line: 192, column: 52, scope: !573)
!579 = !DILocation(line: 192, column: 6, scope: !272)
!580 = !DILocation(line: 194, column: 65, scope: !581)
!581 = distinct !DILexicalBlock(scope: !573, file: !162, line: 193, column: 4)
!582 = !DILocation(line: 194, column: 49, scope: !581)
!583 = !DILocation(line: 194, column: 7, scope: !584)
!584 = !DILexicalBlockFile(scope: !581, file: !162, discriminator: 1)
!585 = !DILocation(line: 195, column: 4, scope: !581)
!586 = !DILocation(line: 196, column: 2, scope: !272)
!587 = !DILocation(line: 199, column: 6, scope: !588)
!588 = distinct !DILexicalBlock(scope: !272, file: !162, line: 199, column: 6)
!589 = !DILocation(line: 199, column: 6, scope: !272)
!590 = !DILocation(line: 200, column: 4, scope: !588)
!591 = !DILocation(line: 202, column: 10, scope: !272)
!592 = !DILocation(line: 202, column: 14, scope: !272)
!593 = !DILocation(line: 202, column: 22, scope: !272)
!594 = !DILocation(line: 202, column: 2, scope: !272)
!595 = !DILocation(line: 203, column: 2, scope: !272)
!596 = !DILocation(line: 206, column: 8, scope: !597)
!597 = distinct !DILexicalBlock(scope: !161, file: !162, line: 206, column: 8)
!598 = !DILocation(line: 206, column: 8, scope: !161)
!599 = !DILocation(line: 206, column: 26, scope: !600)
!600 = !DILexicalBlockFile(scope: !597, file: !162, discriminator: 1)
!601 = !DILocation(line: 206, column: 11, scope: !600)
!602 = !DILocation(line: 208, column: 4, scope: !161)
!603 = distinct !DISubprogram(name: "dn", scope: !162, file: !162, line: 212, type: !604, isLocal: false, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!604 = !DISubroutineType(types: !605)
!605 = !{!17, !17}
!606 = !DILocalVariable(name: "s", arg: 1, scope: !603, file: !162, line: 212, type: !17)
!607 = !DILocation(line: 212, column: 19, scope: !603)
!608 = !DILocation(line: 214, column: 17, scope: !609)
!609 = distinct !DILexicalBlock(scope: !603, file: !162, line: 214, column: 8)
!610 = !DILocation(line: 214, column: 10, scope: !609)
!611 = !DILocation(line: 214, column: 19, scope: !609)
!612 = !DILocation(line: 214, column: 8, scope: !609)
!613 = !DILocation(line: 214, column: 22, scope: !609)
!614 = !DILocation(line: 214, column: 8, scope: !603)
!615 = !DILocation(line: 215, column: 15, scope: !609)
!616 = !DILocation(line: 215, column: 8, scope: !609)
!617 = !DILocation(line: 215, column: 17, scope: !609)
!618 = !DILocation(line: 215, column: 6, scope: !609)
!619 = !DILocation(line: 215, column: 20, scope: !609)
!620 = !DILocation(line: 216, column: 11, scope: !603)
!621 = !DILocation(line: 216, column: 4, scope: !603)
!622 = distinct !DISubprogram(name: "bkg", scope: !162, file: !162, line: 263, type: !623, isLocal: false, isDefinition: true, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!623 = !DISubroutineType(types: !624)
!624 = !{null}
!625 = !DILocation(line: 265, column: 8, scope: !626)
!626 = distinct !DILexicalBlock(scope: !622, file: !162, line: 265, column: 8)
!627 = !DILocation(line: 265, column: 8, scope: !622)
!628 = !DILocation(line: 265, column: 16, scope: !629)
!629 = !DILexicalBlockFile(scope: !626, file: !162, discriminator: 1)
!630 = !DILocation(line: 266, column: 53, scope: !622)
!631 = !DILocation(line: 266, column: 4, scope: !632)
!632 = !DILexicalBlockFile(scope: !622, file: !162, discriminator: 1)
!633 = !DILocation(line: 267, column: 4, scope: !622)
!634 = !DILocation(line: 268, column: 11, scope: !622)
!635 = !DILocation(line: 268, column: 4, scope: !622)
!636 = !DILocation(line: 269, column: 1, scope: !622)
!637 = distinct !DISubprogram(name: "openfile", scope: !162, file: !162, line: 220, type: !623, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!638 = !DILocation(line: 222, column: 23, scope: !639)
!639 = distinct !DILexicalBlock(scope: !637, file: !162, line: 222, column: 8)
!640 = !DILocation(line: 222, column: 17, scope: !639)
!641 = !DILocation(line: 222, column: 14, scope: !639)
!642 = !DILocation(line: 222, column: 38, scope: !639)
!643 = !DILocation(line: 222, column: 8, scope: !637)
!644 = !DILocation(line: 224, column: 68, scope: !645)
!645 = distinct !DILexicalBlock(scope: !639, file: !162, line: 223, column: 6)
!646 = !DILocation(line: 224, column: 67, scope: !645)
!647 = !DILocation(line: 224, column: 58, scope: !648)
!648 = !DILexicalBlockFile(scope: !645, file: !162, discriminator: 1)
!649 = !DILocation(line: 224, column: 2, scope: !650)
!650 = !DILexicalBlockFile(scope: !645, file: !162, discriminator: 2)
!651 = !DILocation(line: 225, column: 6, scope: !645)
!652 = !DILocation(line: 226, column: 1, scope: !637)
!653 = distinct !DISubprogram(name: "sigexit", scope: !162, file: !162, line: 229, type: !623, isLocal: false, isDefinition: true, scopeLine: 230, isOptimized: false, unit: !0, variables: !2)
!654 = !DILocation(line: 233, column: 7, scope: !655)
!655 = distinct !DILexicalBlock(scope: !653, file: !162, line: 233, column: 7)
!656 = !DILocation(line: 233, column: 7, scope: !653)
!657 = !DILocation(line: 235, column: 2, scope: !658)
!658 = distinct !DILexicalBlock(scope: !655, file: !162, line: 234, column: 6)
!659 = !DILocation(line: 236, column: 2, scope: !658)
!660 = !DILocation(line: 237, column: 2, scope: !658)
!661 = !DILocation(line: 242, column: 9, scope: !662)
!662 = distinct !DILexicalBlock(scope: !653, file: !162, line: 242, column: 8)
!663 = !DILocation(line: 242, column: 12, scope: !662)
!664 = !DILocation(line: 242, column: 15, scope: !665)
!665 = !DILexicalBlockFile(scope: !662, file: !162, discriminator: 1)
!666 = !DILocation(line: 242, column: 8, scope: !665)
!667 = !DILocation(line: 244, column: 17, scope: !668)
!668 = distinct !DILexicalBlock(scope: !669, file: !162, line: 244, column: 6)
!669 = distinct !DILexicalBlock(scope: !662, file: !162, line: 243, column: 6)
!670 = !DILocation(line: 244, column: 6, scope: !668)
!671 = !DILocation(line: 244, column: 35, scope: !668)
!672 = !DILocation(line: 244, column: 6, scope: !669)
!673 = !DILocation(line: 245, column: 54, scope: !668)
!674 = !DILocation(line: 245, column: 42, scope: !668)
!675 = !DILocation(line: 245, column: 4, scope: !676)
!676 = !DILexicalBlockFile(scope: !668, file: !162, discriminator: 1)
!677 = !DILocation(line: 245, column: 4, scope: !668)
!678 = !DILocation(line: 248, column: 57, scope: !679)
!679 = distinct !DILexicalBlock(scope: !668, file: !162, line: 247, column: 4)
!680 = !DILocation(line: 248, column: 7, scope: !679)
!681 = !DILocation(line: 249, column: 60, scope: !679)
!682 = !DILocation(line: 249, column: 7, scope: !679)
!683 = !DILocation(line: 251, column: 6, scope: !669)
!684 = !DILocation(line: 253, column: 8, scope: !685)
!685 = distinct !DILexicalBlock(scope: !653, file: !162, line: 253, column: 8)
!686 = !DILocation(line: 253, column: 8, scope: !653)
!687 = !DILocation(line: 254, column: 22, scope: !685)
!688 = !DILocation(line: 254, column: 6, scope: !685)
!689 = !DILocation(line: 256, column: 8, scope: !690)
!690 = distinct !DILexicalBlock(scope: !653, file: !162, line: 256, column: 8)
!691 = !DILocation(line: 256, column: 8, scope: !653)
!692 = !DILocation(line: 257, column: 13, scope: !690)
!693 = !DILocation(line: 257, column: 6, scope: !690)
!694 = !DILocation(line: 259, column: 4, scope: !653)
!695 = !DILocation(line: 260, column: 1, scope: !653)
!696 = distinct !DISubprogram(name: "nast_hex_ntoa", scope: !162, file: !162, line: 272, type: !697, isLocal: false, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!697 = !DISubroutineType(types: !698)
!698 = !{!17, !74}
!699 = !DILocalVariable(name: "s", arg: 1, scope: !696, file: !162, line: 272, type: !74)
!700 = !DILocation(line: 272, column: 31, scope: !696)
!701 = !DILocalVariable(name: "r", scope: !696, file: !162, line: 274, type: !17)
!702 = !DILocation(line: 274, column: 10, scope: !696)
!703 = !DILocation(line: 274, column: 14, scope: !696)
!704 = !DILocation(line: 276, column: 13, scope: !696)
!705 = !DILocation(line: 277, column: 6, scope: !696)
!706 = !DILocation(line: 277, column: 12, scope: !696)
!707 = !DILocation(line: 277, column: 18, scope: !696)
!708 = !DILocation(line: 277, column: 24, scope: !696)
!709 = !DILocation(line: 277, column: 30, scope: !696)
!710 = !DILocation(line: 277, column: 36, scope: !696)
!711 = !DILocation(line: 276, column: 4, scope: !696)
!712 = !DILocation(line: 279, column: 11, scope: !696)
!713 = !DILocation(line: 279, column: 4, scope: !696)
!714 = distinct !DISubprogram(name: "nast_atoda", scope: !162, file: !162, line: 283, type: !697, isLocal: false, isDefinition: true, scopeLine: 284, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!715 = !DILocalVariable(name: "s", arg: 1, scope: !714, file: !162, line: 283, type: !74)
!716 = !DILocation(line: 283, column: 28, scope: !714)
!717 = !DILocalVariable(name: "r", scope: !714, file: !162, line: 285, type: !17)
!718 = !DILocation(line: 285, column: 10, scope: !714)
!719 = !DILocation(line: 285, column: 14, scope: !714)
!720 = !DILocation(line: 287, column: 13, scope: !714)
!721 = !DILocation(line: 287, column: 31, scope: !714)
!722 = !DILocation(line: 287, column: 37, scope: !714)
!723 = !DILocation(line: 287, column: 43, scope: !714)
!724 = !DILocation(line: 287, column: 49, scope: !714)
!725 = !DILocation(line: 287, column: 4, scope: !714)
!726 = !DILocation(line: 289, column: 11, scope: !714)
!727 = !DILocation(line: 289, column: 4, scope: !714)
!728 = distinct !DISubprogram(name: "n_print", scope: !162, file: !162, line: 292, type: !729, isLocal: false, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!729 = !DISubroutineType(types: !730)
!730 = !{null, !17, !15, !15, !15, !17, null}
!731 = !DILocalVariable(name: "wins", arg: 1, scope: !728, file: !162, line: 292, type: !17)
!732 = !DILocation(line: 292, column: 20, scope: !728)
!733 = !DILocalVariable(name: "y", arg: 2, scope: !728, file: !162, line: 292, type: !15)
!734 = !DILocation(line: 292, column: 30, scope: !728)
!735 = !DILocalVariable(name: "x", arg: 3, scope: !728, file: !162, line: 292, type: !15)
!736 = !DILocation(line: 292, column: 37, scope: !728)
!737 = !DILocalVariable(name: "lg", arg: 4, scope: !728, file: !162, line: 292, type: !15)
!738 = !DILocation(line: 292, column: 44, scope: !728)
!739 = !DILocalVariable(name: "string", arg: 5, scope: !728, file: !162, line: 292, type: !17)
!740 = !DILocation(line: 292, column: 54, scope: !728)
!741 = !DILocalVariable(name: "msg", scope: !728, file: !162, line: 294, type: !742)
!742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 16384, align: 8, elements: !743)
!743 = !{!744}
!744 = !DISubrange(count: 2048)
!745 = !DILocation(line: 294, column: 9, scope: !728)
!746 = !DILocalVariable(name: "n", scope: !728, file: !162, line: 295, type: !15)
!747 = !DILocation(line: 295, column: 8, scope: !728)
!748 = !DILocalVariable(name: "ap", scope: !728, file: !162, line: 296, type: !749)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !10, line: 79, baseType: !750)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !751, line: 40, baseType: !752)
!751 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 296, baseType: !753)
!753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !754, size: 192, align: 64, elements: !50)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 296, size: 192, align: 64, elements: !755)
!755 = !{!756, !757, !758, !759}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !754, file: !1, line: 296, baseType: !97, size: 32, align: 32)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !754, file: !1, line: 296, baseType: !97, size: 32, align: 32, offset: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !754, file: !1, line: 296, baseType: !4, size: 64, align: 64, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !754, file: !1, line: 296, baseType: !4, size: 64, align: 64, offset: 128)
!760 = !DILocation(line: 296, column: 12, scope: !728)
!761 = !DILocation(line: 298, column: 3, scope: !728)
!762 = !DILocation(line: 299, column: 18, scope: !728)
!763 = !DILocation(line: 299, column: 29, scope: !728)
!764 = !DILocation(line: 299, column: 37, scope: !728)
!765 = !DILocation(line: 299, column: 8, scope: !728)
!766 = !DILocation(line: 299, column: 6, scope: !728)
!767 = !DILocation(line: 300, column: 3, scope: !728)
!768 = !DILocation(line: 302, column: 8, scope: !769)
!769 = distinct !DILexicalBlock(scope: !728, file: !162, line: 302, column: 7)
!770 = !DILocation(line: 302, column: 14, scope: !769)
!771 = !DILocation(line: 302, column: 18, scope: !772)
!772 = !DILexicalBlockFile(scope: !769, file: !162, discriminator: 1)
!773 = !DILocation(line: 302, column: 7, scope: !772)
!774 = !DILocation(line: 304, column: 14, scope: !775)
!775 = distinct !DILexicalBlock(scope: !769, file: !162, line: 303, column: 6)
!776 = !DILocation(line: 304, column: 2, scope: !775)
!777 = !DILocation(line: 305, column: 2, scope: !775)
!778 = !DILocation(line: 306, column: 6, scope: !775)
!779 = !DILocation(line: 308, column: 8, scope: !780)
!780 = distinct !DILexicalBlock(scope: !728, file: !162, line: 308, column: 7)
!781 = !DILocation(line: 308, column: 14, scope: !780)
!782 = !DILocation(line: 308, column: 17, scope: !783)
!783 = !DILexicalBlockFile(scope: !780, file: !162, discriminator: 1)
!784 = !DILocation(line: 308, column: 7, scope: !783)
!785 = !DILocation(line: 310, column: 10, scope: !786)
!786 = distinct !DILexicalBlock(scope: !780, file: !162, line: 309, column: 6)
!787 = !DILocation(line: 310, column: 22, scope: !786)
!788 = !DILocation(line: 310, column: 2, scope: !786)
!789 = !DILocation(line: 311, column: 14, scope: !786)
!790 = !DILocation(line: 311, column: 2, scope: !786)
!791 = !DILocation(line: 312, column: 2, scope: !786)
!792 = !DILocation(line: 313, column: 6, scope: !786)
!793 = !DILocation(line: 316, column: 7, scope: !794)
!794 = distinct !DILexicalBlock(scope: !728, file: !162, line: 316, column: 7)
!795 = !DILocation(line: 316, column: 13, scope: !794)
!796 = !DILocation(line: 316, column: 16, scope: !797)
!797 = !DILexicalBlockFile(scope: !794, file: !162, discriminator: 1)
!798 = !DILocation(line: 316, column: 7, scope: !797)
!799 = !DILocation(line: 318, column: 10, scope: !800)
!800 = distinct !DILexicalBlock(scope: !794, file: !162, line: 317, column: 6)
!801 = !DILocation(line: 318, column: 20, scope: !800)
!802 = !DILocation(line: 318, column: 2, scope: !800)
!803 = !DILocation(line: 319, column: 11, scope: !800)
!804 = !DILocation(line: 319, column: 16, scope: !800)
!805 = !DILocation(line: 319, column: 18, scope: !800)
!806 = !DILocation(line: 319, column: 20, scope: !800)
!807 = !DILocation(line: 319, column: 2, scope: !800)
!808 = !DILocation(line: 320, column: 6, scope: !800)
!809 = !DILocation(line: 322, column: 7, scope: !810)
!810 = distinct !DILexicalBlock(scope: !728, file: !162, line: 322, column: 7)
!811 = !DILocation(line: 322, column: 13, scope: !810)
!812 = !DILocation(line: 322, column: 17, scope: !813)
!813 = !DILexicalBlockFile(scope: !810, file: !162, discriminator: 1)
!814 = !DILocation(line: 322, column: 7, scope: !813)
!815 = !DILocation(line: 323, column: 15, scope: !810)
!816 = !DILocation(line: 323, column: 20, scope: !810)
!817 = !DILocation(line: 323, column: 22, scope: !810)
!818 = !DILocation(line: 323, column: 24, scope: !810)
!819 = !DILocation(line: 323, column: 6, scope: !810)
!820 = !DILocation(line: 325, column: 1, scope: !728)
