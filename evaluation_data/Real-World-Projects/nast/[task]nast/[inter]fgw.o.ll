; ModuleID = './[inter]fgw.o.i'
source_filename = "./[inter]fgw.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.bpf_program = type { i32, %struct.bpf_insn* }
%struct.bpf_insn = type { i16, i8, i8, i32 }
%struct.pcap_pkthdr = type { %struct.timeval, i32, i32 }
%struct.timeval = type { i64, i64 }
%struct.pcap = type opaque
%struct.pcap_dumper = type opaque
%struct.pcap_stat = type { i32, i32, i32 }
%struct.libnet_ether_addr = type { [6 x i8] }
%struct.libnet_context = type { i32, i32, %struct.libnet_protocol_block*, %struct.libnet_protocol_block*, i32, i32, i32, i32, i8*, %struct.libnet_stats, i32, [64 x i8], [256 x i8], i32 }
%struct.libnet_protocol_block = type { i8*, i32, i16, i32, i8, i8, i32, %struct.libnet_protocol_block*, %struct.libnet_protocol_block* }
%struct.libnet_stats = type { i64, i64, i64 }
%struct.host = type { [6 x i8], [4 x i8] }
%struct.libnet_ipv4_hdr = type { i8, i8, i16, i16, i16, i8, i8, i16, %struct.in_addr, %struct.in_addr }
%struct.in_addr = type { i32 }
%struct.libnet_tcp_hdr = type { i16, i16, i32, i32, i8, i8, i16, i16, i16 }
%struct.fd_set = type { [16 x i64] }

@.str = private unnamed_addr constant [13 x i8] c"66.102.11.99\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Device is null!\0A\00", align 1
@graph = common global i16 0, align 2
@demonize = common global i16 0, align 2
@.str.2 = private unnamed_addr constant [53 x i8] c"Is very useless demonize me in finding gateway! Omit\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Error building tcp header : %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Error building ip header : %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"princ\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"Finding suitable hosts (excluding localhost) -> \00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [67 x i8] c"\0ACan't build truly host list! mmhhh!\0AReport bug to author please\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"What are you doing? You are alone in this network!\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Done\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Trying %d.%d.%d.%d (%s)-> \00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"Error rebuilding ethernet frame : %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"Error writing packet on wire : %s\0A\00", align 1
@netp = common global i32 0, align 4
@maskp = common global i32 0, align 4
@.str.13 = private unnamed_addr constant [29 x i8] c"pcap_open_live() error : %s\0A\00", align 1
@fp = common global %struct.bpf_program zeroinitializer, align 8
@.str.14 = private unnamed_addr constant [30 x i8] c"src port 80 and dst port 2500\00", align 1
@.str.15 = private unnamed_addr constant [78 x i8] c"Bad (timeout due to high traffic to your host, try again later to make sure)\0A\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"Bad\0A\00", align 1
@hdr = common global %struct.pcap_pkthdr zeroinitializer, align 8
@packet = common global i8* null, align 8
@offset = common global i16 0, align 2
@.str.17 = private unnamed_addr constant [6 x i8] c"Yep!\0A\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"winfo\00", align 1
@.str.20 = private unnamed_addr constant [54 x i8] c"                                                     \00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"\0AFinished\0A\00", align 1
@logd = common global %struct._IO_FILE* null, align 8
@npkt = common global i32 0, align 4
@buf = common global i8* null, align 8
@descr = common global %struct.pcap* null, align 8
@dumper = common global %struct.pcap_dumper* null, align 8
@statistic = common global %struct.pcap_stat zeroinitializer, align 4
@datalink = common global i32 0, align 4
@logname = common global i8* null, align 8
@tcpdl = common global i8* null, align 8
@tr = common global i16 0, align 2
@tl = common global i16 0, align 2
@cont = common global i16 0, align 2
@stream_glob = common global i32 0, align 4
@bc_glob = common global i32 0, align 4
@sniff_glob = common global i32 0, align 4
@rst_glob = common global i32 0, align 4
@arp_glob = common global i32 0, align 4
@pt = common global [2 x i64] zeroinitializer, align 16
@lg = common global i32 0, align 4
@tm = common global i64 0, align 8
@timed = common global [60 x i8] zeroinitializer, align 16
@line_s = common global i32 0, align 4
@row_s = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @fgw(i8*) #0 !dbg !228 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.libnet_ether_addr*, align 8
  %7 = alloca [6 x i8], align 1
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.libnet_context*, align 8
  %15 = alloca [256 x i8], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.pcap*, align 8
  %19 = alloca %struct.host*, align 8
  %20 = alloca i16, align 2
  %21 = alloca %struct.libnet_ipv4_hdr*, align 8
  %22 = alloca %struct.libnet_tcp_hdr*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.timeval, align 8
  %25 = alloca %struct.fd_set, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !233, metadata !234), !dbg !235
  call void @llvm.dbg.declare(metadata i8** %4, metadata !236, metadata !234), !dbg !237
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8** %4, align 8, !dbg !237
  call void @llvm.dbg.declare(metadata i64* %5, metadata !238, metadata !234), !dbg !241
  call void @llvm.dbg.declare(metadata %struct.libnet_ether_addr** %6, metadata !242, metadata !234), !dbg !250
  call void @llvm.dbg.declare(metadata [6 x i8]* %7, metadata !251, metadata !234), !dbg !253
  call void @llvm.dbg.declare(metadata i16* %8, metadata !254, metadata !234), !dbg !255
  call void @llvm.dbg.declare(metadata i16* %9, metadata !256, metadata !234), !dbg !257
  call void @llvm.dbg.declare(metadata i16* %10, metadata !258, metadata !234), !dbg !259
  call void @llvm.dbg.declare(metadata i16* %11, metadata !260, metadata !234), !dbg !261
  call void @llvm.dbg.declare(metadata i32* %12, metadata !262, metadata !234), !dbg !263
  call void @llvm.dbg.declare(metadata i32* %13, metadata !264, metadata !234), !dbg !265
  call void @llvm.dbg.declare(metadata %struct.libnet_context** %14, metadata !266, metadata !234), !dbg !315
  call void @llvm.dbg.declare(metadata [256 x i8]* %15, metadata !316, metadata !234), !dbg !318
  call void @llvm.dbg.declare(metadata i32* %16, metadata !319, metadata !234), !dbg !320
  call void @llvm.dbg.declare(metadata i32* %17, metadata !321, metadata !234), !dbg !322
  call void @llvm.dbg.declare(metadata %struct.pcap** %18, metadata !323, metadata !234), !dbg !324
  call void @llvm.dbg.declare(metadata %struct.host** %19, metadata !325, metadata !234), !dbg !335
  call void @llvm.dbg.declare(metadata i16* %20, metadata !336, metadata !234), !dbg !338
  call void @llvm.dbg.declare(metadata %struct.libnet_ipv4_hdr** %21, metadata !339, metadata !234), !dbg !340
  call void @llvm.dbg.declare(metadata %struct.libnet_tcp_hdr** %22, metadata !341, metadata !234), !dbg !342
  call void @llvm.dbg.declare(metadata i32* %23, metadata !343, metadata !234), !dbg !344
  call void @llvm.dbg.declare(metadata %struct.timeval* %24, metadata !345, metadata !234), !dbg !346
  call void @llvm.dbg.declare(metadata %struct.fd_set* %25, metadata !347, metadata !234), !dbg !355
  store i32 0, i32* %17, align 4, !dbg !356
  store i16 0, i16* %10, align 2, !dbg !357
  store i32 0, i32* %16, align 4, !dbg !358
  store i16 0, i16* %9, align 2, !dbg !359
  store i16 0, i16* %11, align 2, !dbg !360
  store i32 1, i32* %13, align 4, !dbg !361
  store i32 1, i32* %12, align 4, !dbg !362
  %28 = load i8*, i8** %3, align 8, !dbg !363
  %29 = icmp ne i8* %28, null, !dbg !363
  br i1 %29, label %32, label %30, !dbg !365

; <label>:30:                                     ; preds = %1
  %31 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0)), !dbg !366
  br label %32, !dbg !368

; <label>:32:                                     ; preds = %30, %1
  %33 = load i16, i16* @graph, align 2, !dbg !369
  %34 = icmp ne i16 %33, 0, !dbg !369
  br i1 %34, label %35, label %36, !dbg !371

; <label>:35:                                     ; preds = %32
  call void @init_scr(), !dbg !372
  br label %36, !dbg !372

; <label>:36:                                     ; preds = %35, %32
  %37 = load i16, i16* @demonize, align 2, !dbg !373
  %38 = icmp ne i16 %37, 0, !dbg !373
  br i1 %38, label %39, label %41, !dbg !375

; <label>:39:                                     ; preds = %36
  %40 = call i32 (i32, i8*, ...) @w_error(i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i32 0, i32 0)), !dbg !376
  store i16 0, i16* @demonize, align 2, !dbg !378
  br label %41, !dbg !379

; <label>:41:                                     ; preds = %39, %36
  %42 = load i8*, i8** %3, align 8, !dbg !380
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i32 0, i32 0, !dbg !381
  %44 = call %struct.libnet_context* @libnet_init(i32 0, i8* %42, i8* %43), !dbg !382
  store %struct.libnet_context* %44, %struct.libnet_context** %14, align 8, !dbg !383
  %45 = load %struct.libnet_context*, %struct.libnet_context** %14, align 8, !dbg !384
  %46 = call i32 @libnet_get_ipaddr4(%struct.libnet_context* %45), !dbg !385
  %47 = zext i32 %46 to i64, !dbg !385
  store i64 %47, i64* %5, align 8, !dbg !386
  %48 = load %struct.libnet_context*, %struct.libnet_context** %14, align 8, !dbg !387
  %49 = call %struct.libnet_ether_addr* @libnet_get_hwaddr(%struct.libnet_context* %48), !dbg !388
  store %struct.libnet_ether_addr* %49, %struct.libnet_ether_addr** %6, align 8, !dbg !389
  store i16 0, i16* %8, align 2, !dbg !390
  br label %50, !dbg !392

; <label>:50:                                     ; preds = %64, %41
  %51 = load i16, i16* %8, align 2, !dbg !393
  %52 = zext i16 %51 to i32, !dbg !393
  %53 = icmp slt i32 %52, 6, !dbg !396
  br i1 %53, label %54, label %67, !dbg !397

; <label>:54:                                     ; preds = %50
  %55 = load i16, i16* %8, align 2, !dbg !398
  %56 = zext i16 %55 to i64, !dbg !400
  %57 = load %struct.libnet_ether_addr*, %struct.libnet_ether_addr** %6, align 8, !dbg !400
  %58 = getelementptr inbounds %struct.libnet_ether_addr, %struct.libnet_ether_addr* %57, i32 0, i32 0, !dbg !401
  %59 = getelementptr inbounds [6 x i8], [6 x i8]* %58, i64 0, i64 %56, !dbg !400
  %60 = load i8, i8* %59, align 1, !dbg !400
  %61 = load i16, i16* %8, align 2, !dbg !402
  %62 = zext i16 %61 to i64, !dbg !403
  %63 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 %62, !dbg !403
  store i8 %60, i8* %63, align 1, !dbg !404
  br label %64, !dbg !403

; <label>:64:                                     ; preds = %54
  %65 = load i16, i16* %8, align 2, !dbg !405
  %66 = add i16 %65, 1, !dbg !405
  store i16 %66, i16* %8, align 2, !dbg !405
  br label %50, !dbg !407, !llvm.loop !408

; <label>:67:                                     ; preds = %50
  %68 = load i8*, i8** %3, align 8, !dbg !410
  %69 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i32 0, i32 0, !dbg !411
  %70 = call %struct.libnet_context* @libnet_init(i32 0, i8* %68, i8* %69), !dbg !412
  store %struct.libnet_context* %70, %struct.libnet_context** %14, align 8, !dbg !413
  %71 = load %struct.libnet_context*, %struct.libnet_context** %14, align 8, !dbg !414
  %72 = call i32 @libnet_build_tcp(i16 zeroext 2500, i16 zeroext 80, i32 847930886, i32 524972923, i8 zeroext 2, i16 zeroext 32767, i16 zeroext 0, i16 zeroext 0, i16 zeroext 20, i8* null, i32 0, %struct.libnet_context* %71, i32 0), !dbg !416
  %73 = icmp eq i32 %72, -1, !dbg !417
  br i1 %73, label %74, label %79, !dbg !418

; <label>:74:                                     ; preds = %67
  %75 = load %struct.libnet_context*, %struct.libnet_context** %14, align 8, !dbg !419
  call void @libnet_destroy(%struct.libnet_context* %75), !dbg !421
  %76 = load %struct.libnet_context*, %struct.libnet_context** %14, align 8, !dbg !422
  %77 = call i8* @libnet_geterror(%struct.libnet_context* %76), !dbg !423
  %78 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0), i8* %77), !dbg !424
  br label %79, !dbg !426

; <label>:79:                                     ; preds = %74, %67
  %80 = load i64, i64* %5, align 8, !dbg !427
  %81 = trunc i64 %80 to i32, !dbg !427
  %82 = load %struct.libnet_context*, %struct.libnet_context** %14, align 8, !dbg !429
  %83 = load i8*, i8** %4, align 8, !dbg !430
  %84 = call i32 @libnet_name2addr4(%struct.libnet_context* %82, i8* %83, i8 zeroext 0), !dbg !431
  %85 = load %struct.libnet_context*, %struct.libnet_context** %14, align 8, !dbg !432
  %86 = call i32 @libnet_build_ipv4(i16 zeroext 40, i8 zeroext 8, i16 zeroext -30216, i16 zeroext 0, i8 zeroext 64, i8 zeroext 6, i16 zeroext 0, i32 %81, i32 %84, i8* null, i32 0, %struct.libnet_context* %85, i32 0), !dbg !433
  %87 = icmp eq i32 %86, -1, !dbg !435
  br i1 %87, label %88, label %93, !dbg !436

; <label>:88:                                     ; preds = %79
  %89 = load %struct.libnet_context*, %struct.libnet_context** %14, align 8, !dbg !437
  call void @libnet_destroy(%struct.libnet_context* %89), !dbg !439
  %90 = load %struct.libnet_context*, %struct.libnet_context** %14, align 8, !dbg !440
  %91 = call i8* @libnet_geterror(%struct.libnet_context* %90), !dbg !441
  %92 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0), i8* %91), !dbg !442
  br label %93, !dbg !444

; <label>:93:                                     ; preds = %88, %79
  %94 = load i32, i32* %12, align 4, !dbg !445
  %95 = load i32, i32* %13, align 4, !dbg !446
  %96 = load i32, i32* %17, align 4, !dbg !447
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 %94, i32 %95, i32 %96, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i32 0, i32 0)), !dbg !448
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !449
  %98 = call i32 @fflush(%struct._IO_FILE* %97), !dbg !450
  %99 = load i8*, i8** %3, align 8, !dbg !451
  %100 = call %struct.host* @map_lan(i8* %99, i16 zeroext 0, i16* %11), !dbg !453
  store %struct.host* %100, %struct.host** %19, align 8, !dbg !454
  %101 = icmp eq %struct.host* %100, null, !dbg !455
  br i1 %101, label %102, label %107, !dbg !456

; <label>:102:                                    ; preds = %93
  %103 = call i32 (i32, i8*, ...) @w_error(i32 0, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.7, i32 0, i32 0)), !dbg !457
  %104 = icmp eq i32 %103, -1, !dbg !460
  br i1 %104, label %105, label %106, !dbg !461

; <label>:105:                                    ; preds = %102
  store i32 -1, i32* %2, align 4, !dbg !462
  br label %329, !dbg !462

; <label>:106:                                    ; preds = %102
  br label %107, !dbg !463

; <label>:107:                                    ; preds = %106, %93
  %108 = load i16, i16* %11, align 2, !dbg !464
  %109 = zext i16 %108 to i32, !dbg !464
  %110 = icmp eq i32 %109, 0, !dbg !466
  br i1 %110, label %111, label %116, !dbg !467

; <label>:111:                                    ; preds = %107
  %112 = call i32 (i32, i8*, ...) @w_error(i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i32 0, i32 0)), !dbg !468
  %113 = icmp eq i32 %112, -1, !dbg !471
  br i1 %113, label %114, label %115, !dbg !472

; <label>:114:                                    ; preds = %111
  store i32 -1, i32* %2, align 4, !dbg !473
  br label %329, !dbg !473

; <label>:115:                                    ; preds = %111
  br label %116, !dbg !474

; <label>:116:                                    ; preds = %115, %107
  %117 = load i32, i32* %12, align 4, !dbg !475
  %118 = load i32, i32* %17, align 4, !dbg !476
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 %117, i32 50, i32 %118, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0)), !dbg !477
  %119 = load i32, i32* %12, align 4, !dbg !478
  %120 = add nsw i32 %119, 2, !dbg !479
  store i32 %120, i32* %12, align 4, !dbg !480
  br label %121, !dbg !481

; <label>:121:                                    ; preds = %310, %116
  %122 = load i16, i16* %9, align 2, !dbg !482
  %123 = zext i16 %122 to i32, !dbg !482
  %124 = load i16, i16* %11, align 2, !dbg !484
  %125 = zext i16 %124 to i32, !dbg !484
  %126 = icmp slt i32 %123, %125, !dbg !485
  br i1 %126, label %127, label %316, !dbg !486

; <label>:127:                                    ; preds = %121
  %128 = load i32, i32* %12, align 4, !dbg !487
  %129 = load i32, i32* %13, align 4, !dbg !489
  %130 = load i32, i32* %17, align 4, !dbg !490
  %131 = load i16, i16* %9, align 2, !dbg !491
  %132 = zext i16 %131 to i64, !dbg !492
  %133 = load %struct.host*, %struct.host** %19, align 8, !dbg !492
  %134 = getelementptr inbounds %struct.host, %struct.host* %133, i64 %132, !dbg !492
  %135 = getelementptr inbounds %struct.host, %struct.host* %134, i32 0, i32 1, !dbg !493
  %136 = getelementptr inbounds [4 x i8], [4 x i8]* %135, i64 0, i64 0, !dbg !492
  %137 = load i8, i8* %136, align 1, !dbg !492
  %138 = zext i8 %137 to i32, !dbg !492
  %139 = load i16, i16* %9, align 2, !dbg !494
  %140 = zext i16 %139 to i64, !dbg !495
  %141 = load %struct.host*, %struct.host** %19, align 8, !dbg !495
  %142 = getelementptr inbounds %struct.host, %struct.host* %141, i64 %140, !dbg !495
  %143 = getelementptr inbounds %struct.host, %struct.host* %142, i32 0, i32 1, !dbg !496
  %144 = getelementptr inbounds [4 x i8], [4 x i8]* %143, i64 0, i64 1, !dbg !495
  %145 = load i8, i8* %144, align 1, !dbg !495
  %146 = zext i8 %145 to i32, !dbg !495
  %147 = load i16, i16* %9, align 2, !dbg !497
  %148 = zext i16 %147 to i64, !dbg !498
  %149 = load %struct.host*, %struct.host** %19, align 8, !dbg !498
  %150 = getelementptr inbounds %struct.host, %struct.host* %149, i64 %148, !dbg !498
  %151 = getelementptr inbounds %struct.host, %struct.host* %150, i32 0, i32 1, !dbg !499
  %152 = getelementptr inbounds [4 x i8], [4 x i8]* %151, i64 0, i64 2, !dbg !498
  %153 = load i8, i8* %152, align 1, !dbg !498
  %154 = zext i8 %153 to i32, !dbg !498
  %155 = load i16, i16* %9, align 2, !dbg !500
  %156 = zext i16 %155 to i64, !dbg !501
  %157 = load %struct.host*, %struct.host** %19, align 8, !dbg !501
  %158 = getelementptr inbounds %struct.host, %struct.host* %157, i64 %156, !dbg !501
  %159 = getelementptr inbounds %struct.host, %struct.host* %158, i32 0, i32 1, !dbg !502
  %160 = getelementptr inbounds [4 x i8], [4 x i8]* %159, i64 0, i64 3, !dbg !501
  %161 = load i8, i8* %160, align 1, !dbg !501
  %162 = zext i8 %161 to i32, !dbg !501
  %163 = load i16, i16* %9, align 2, !dbg !503
  %164 = zext i16 %163 to i64, !dbg !504
  %165 = load %struct.host*, %struct.host** %19, align 8, !dbg !504
  %166 = getelementptr inbounds %struct.host, %struct.host* %165, i64 %164, !dbg !504
  %167 = getelementptr inbounds %struct.host, %struct.host* %166, i32 0, i32 0, !dbg !505
  %168 = getelementptr inbounds [6 x i8], [6 x i8]* %167, i32 0, i32 0, !dbg !504
  %169 = call i8* @nast_hex_ntoa(i8* %168), !dbg !506
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 %128, i32 %129, i32 %130, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0), i32 %138, i32 %146, i32 %154, i32 %162, i8* %169), !dbg !507
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !509
  %171 = call i32 @fflush(%struct._IO_FILE* %170), !dbg !510
  %172 = load i16, i16* %9, align 2, !dbg !511
  %173 = zext i16 %172 to i64, !dbg !513
  %174 = load %struct.host*, %struct.host** %19, align 8, !dbg !513
  %175 = getelementptr inbounds %struct.host, %struct.host* %174, i64 %173, !dbg !513
  %176 = getelementptr inbounds %struct.host, %struct.host* %175, i32 0, i32 0, !dbg !514
  %177 = getelementptr inbounds [6 x i8], [6 x i8]* %176, i32 0, i32 0, !dbg !513
  %178 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i32 0, i32 0, !dbg !515
  %179 = load %struct.libnet_context*, %struct.libnet_context** %14, align 8, !dbg !516
  %180 = load i32, i32* %16, align 4, !dbg !517
  %181 = call i32 @libnet_build_ethernet(i8* %177, i8* %178, i16 zeroext 2048, i8* null, i32 0, %struct.libnet_context* %179, i32 %180), !dbg !518
  store i32 %181, i32* %16, align 4, !dbg !519
  %182 = icmp eq i32 %181, -1, !dbg !520
  br i1 %182, label %183, label %188, !dbg !521

; <label>:183:                                    ; preds = %127
  %184 = load %struct.libnet_context*, %struct.libnet_context** %14, align 8, !dbg !522
  call void @libnet_destroy(%struct.libnet_context* %184), !dbg !524
  %185 = load %struct.libnet_context*, %struct.libnet_context** %14, align 8, !dbg !525
  %186 = call i8* @libnet_geterror(%struct.libnet_context* %185), !dbg !526
  %187 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i32 0, i32 0), i8* %186), !dbg !527
  br label %188, !dbg !529

; <label>:188:                                    ; preds = %183, %127
  %189 = load %struct.libnet_context*, %struct.libnet_context** %14, align 8, !dbg !530
  %190 = call i32 @libnet_write(%struct.libnet_context* %189), !dbg !532
  %191 = icmp eq i32 %190, -1, !dbg !533
  br i1 %191, label %192, label %197, !dbg !534

; <label>:192:                                    ; preds = %188
  %193 = load %struct.libnet_context*, %struct.libnet_context** %14, align 8, !dbg !535
  call void @libnet_destroy(%struct.libnet_context* %193), !dbg !537
  %194 = load %struct.libnet_context*, %struct.libnet_context** %14, align 8, !dbg !538
  %195 = call i8* @libnet_geterror(%struct.libnet_context* %194), !dbg !539
  %196 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i32 0, i32 0), i8* %195), !dbg !540
  br label %197, !dbg !542

; <label>:197:                                    ; preds = %192, %188
  %198 = load i8*, i8** %3, align 8, !dbg !543
  %199 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i32 0, i32 0, !dbg !544
  %200 = call i32 @pcap_lookupnet(i8* %198, i32* @netp, i32* @maskp, i8* %199), !dbg !545
  %201 = load i8*, i8** %3, align 8, !dbg !546
  %202 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i32 0, i32 0, !dbg !548
  %203 = call %struct.pcap* @pcap_open_live(i8* %201, i32 8192, i32 0, i32 10, i8* %202), !dbg !549
  store %struct.pcap* %203, %struct.pcap** %18, align 8, !dbg !550
  %204 = icmp eq %struct.pcap* %203, null, !dbg !551
  br i1 %204, label %205, label %209, !dbg !552

; <label>:205:                                    ; preds = %197
  %206 = load %struct.libnet_context*, %struct.libnet_context** %14, align 8, !dbg !553
  call void @libnet_destroy(%struct.libnet_context* %206), !dbg !555
  %207 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i32 0, i32 0, !dbg !556
  %208 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i32 0, i32 0), i8* %207), !dbg !557
  br label %209, !dbg !558

; <label>:209:                                    ; preds = %205, %197
  %210 = load %struct.pcap*, %struct.pcap** %18, align 8, !dbg !559
  %211 = load i32, i32* @netp, align 4, !dbg !560
  %212 = call i32 @pcap_compile(%struct.pcap* %210, %struct.bpf_program* @fp, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 %211), !dbg !561
  %213 = load %struct.pcap*, %struct.pcap** %18, align 8, !dbg !562
  %214 = call i32 @pcap_setfilter(%struct.pcap* %213, %struct.bpf_program* @fp), !dbg !563
  %215 = load %struct.pcap*, %struct.pcap** %18, align 8, !dbg !564
  %216 = call i32 @pcap_fileno(%struct.pcap* %215), !dbg !565
  store i32 %216, i32* %23, align 4, !dbg !566
  br label %217, !dbg !567

; <label>:217:                                    ; preds = %307, %209
  br label %218, !dbg !568, !llvm.loop !572

; <label>:218:                                    ; preds = %217
  call void @llvm.dbg.declare(metadata i32* %26, metadata !573, metadata !234), !dbg !575
  call void @llvm.dbg.declare(metadata i32* %27, metadata !576, metadata !234), !dbg !577
  %219 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %25, i32 0, i32 0, !dbg !578
  %220 = getelementptr inbounds [16 x i64], [16 x i64]* %219, i64 0, i64 0, !dbg !580
  %221 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %220) #6, !dbg !581, !srcloc !582
  %222 = extractvalue { i64, i64* } %221, 0, !dbg !581
  %223 = extractvalue { i64, i64* } %221, 1, !dbg !581
  %224 = trunc i64 %222 to i32, !dbg !581
  store i32 %224, i32* %26, align 4, !dbg !581
  %225 = ptrtoint i64* %223 to i64, !dbg !581
  %226 = trunc i64 %225 to i32, !dbg !581
  store i32 %226, i32* %27, align 4, !dbg !581
  br label %227, !dbg !583

; <label>:227:                                    ; preds = %218
  %228 = load i32, i32* %23, align 4, !dbg !584
  %229 = srem i32 %228, 64, !dbg !585
  %230 = zext i32 %229 to i64, !dbg !586
  %231 = shl i64 1, %230, !dbg !586
  %232 = load i32, i32* %23, align 4, !dbg !584
  %233 = sdiv i32 %232, 64, !dbg !585
  %234 = sext i32 %233 to i64, !dbg !587
  %235 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %25, i32 0, i32 0, !dbg !588
  %236 = getelementptr inbounds [16 x i64], [16 x i64]* %235, i64 0, i64 %234, !dbg !587
  %237 = load i64, i64* %236, align 8, !dbg !589
  %238 = or i64 %237, %231, !dbg !589
  store i64 %238, i64* %236, align 8, !dbg !589
  %239 = getelementptr inbounds %struct.timeval, %struct.timeval* %24, i32 0, i32 0, !dbg !590
  store i64 2, i64* %239, align 8, !dbg !591
  %240 = getelementptr inbounds %struct.timeval, %struct.timeval* %24, i32 0, i32 1, !dbg !592
  store i64 0, i64* %240, align 8, !dbg !593
  %241 = load i16, i16* %10, align 2, !dbg !594
  %242 = zext i16 %241 to i32, !dbg !594
  %243 = icmp eq i32 %242, 30, !dbg !596
  br i1 %243, label %244, label %247, !dbg !597

; <label>:244:                                    ; preds = %227
  %245 = load i32, i32* %12, align 4, !dbg !598
  %246 = load i32, i32* %17, align 4, !dbg !600
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 %245, i32 2, i32 %246, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.15, i32 0, i32 0)), !dbg !601
  br label %310, !dbg !602

; <label>:247:                                    ; preds = %227
  %248 = load i32, i32* %23, align 4, !dbg !603
  %249 = add nsw i32 %248, 1, !dbg !605
  %250 = call i32 @select(i32 %249, %struct.fd_set* %25, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* %24), !dbg !606
  %251 = icmp ne i32 %250, 0, !dbg !606
  br i1 %251, label %255, label %252, !dbg !607

; <label>:252:                                    ; preds = %247
  %253 = load i32, i32* %12, align 4, !dbg !608
  %254 = load i32, i32* %17, align 4, !dbg !610
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 %253, i32 50, i32 %254, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0)), !dbg !611
  br label %310, !dbg !612

; <label>:255:                                    ; preds = %247
  %256 = load %struct.pcap*, %struct.pcap** %18, align 8, !dbg !613
  %257 = call i8* @pcap_next(%struct.pcap* %256, %struct.pcap_pkthdr* @hdr), !dbg !614
  store i8* %257, i8** @packet, align 8, !dbg !615
  %258 = load i8*, i8** @packet, align 8, !dbg !616
  %259 = icmp eq i8* %258, null, !dbg !618
  br i1 %259, label %260, label %261, !dbg !619

; <label>:260:                                    ; preds = %255
  br label %310, !dbg !620

; <label>:261:                                    ; preds = %255
  %262 = load i8*, i8** @packet, align 8, !dbg !622
  %263 = call zeroext i16 @handle_ethernet(i8* %262), !dbg !623
  store i16 %263, i16* %20, align 2, !dbg !624
  %264 = load i16, i16* %20, align 2, !dbg !625
  %265 = zext i16 %264 to i32, !dbg !625
  %266 = icmp eq i32 %265, 2048, !dbg !627
  br i1 %266, label %267, label %307, !dbg !628

; <label>:267:                                    ; preds = %261
  %268 = load i8*, i8** @packet, align 8, !dbg !629
  %269 = load i16, i16* @offset, align 2, !dbg !631
  %270 = sext i16 %269 to i32, !dbg !631
  %271 = sext i32 %270 to i64, !dbg !632
  %272 = getelementptr inbounds i8, i8* %268, i64 %271, !dbg !632
  %273 = bitcast i8* %272 to %struct.libnet_ipv4_hdr*, !dbg !633
  store %struct.libnet_ipv4_hdr* %273, %struct.libnet_ipv4_hdr** %21, align 8, !dbg !634
  %274 = load i8*, i8** @packet, align 8, !dbg !635
  %275 = load i16, i16* @offset, align 2, !dbg !636
  %276 = sext i16 %275 to i32, !dbg !636
  %277 = sext i32 %276 to i64, !dbg !637
  %278 = getelementptr inbounds i8, i8* %274, i64 %277, !dbg !637
  %279 = getelementptr inbounds i8, i8* %278, i64 20, !dbg !638
  %280 = bitcast i8* %279 to %struct.libnet_tcp_hdr*, !dbg !639
  store %struct.libnet_tcp_hdr* %280, %struct.libnet_tcp_hdr** %22, align 8, !dbg !640
  %281 = load %struct.libnet_tcp_hdr*, %struct.libnet_tcp_hdr** %22, align 8, !dbg !641
  %282 = getelementptr inbounds %struct.libnet_tcp_hdr, %struct.libnet_tcp_hdr* %281, i32 0, i32 0, !dbg !643
  %283 = load i16, i16* %282, align 4, !dbg !643
  %284 = call zeroext i16 @ntohs(i16 zeroext %283) #1, !dbg !644
  %285 = zext i16 %284 to i32, !dbg !644
  %286 = icmp eq i32 %285, 80, !dbg !645
  br i1 %286, label %287, label %306, !dbg !646

; <label>:287:                                    ; preds = %267
  %288 = load %struct.libnet_tcp_hdr*, %struct.libnet_tcp_hdr** %22, align 8, !dbg !647
  %289 = getelementptr inbounds %struct.libnet_tcp_hdr, %struct.libnet_tcp_hdr* %288, i32 0, i32 1, !dbg !649
  %290 = load i16, i16* %289, align 2, !dbg !649
  %291 = call zeroext i16 @ntohs(i16 zeroext %290) #1, !dbg !650
  %292 = zext i16 %291 to i32, !dbg !650
  %293 = icmp eq i32 %292, 2500, !dbg !651
  br i1 %293, label %294, label %306, !dbg !652

; <label>:294:                                    ; preds = %287
  %295 = load %struct.libnet_ipv4_hdr*, %struct.libnet_ipv4_hdr** %21, align 8, !dbg !653
  %296 = getelementptr inbounds %struct.libnet_ipv4_hdr, %struct.libnet_ipv4_hdr* %295, i32 0, i32 8, !dbg !655
  %297 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %296, i32 0, i32 0, !dbg !656
  %298 = load i32, i32* %297, align 4, !dbg !656
  %299 = call i8* @inet_ntoa(i32 %298) #6, !dbg !656
  %300 = load i8*, i8** %4, align 8, !dbg !657
  %301 = call i32 @strcmp(i8* %299, i8* %300) #7, !dbg !658
  %302 = icmp ne i32 %301, 0, !dbg !660
  br i1 %302, label %306, label %303, !dbg !661

; <label>:303:                                    ; preds = %294
  %304 = load i32, i32* %12, align 4, !dbg !662
  %305 = load i32, i32* %17, align 4, !dbg !664
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 %304, i32 50, i32 %305, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0)), !dbg !665
  br label %310, !dbg !666

; <label>:306:                                    ; preds = %294, %287, %267
  br label %307, !dbg !667

; <label>:307:                                    ; preds = %306, %261
  %308 = load i16, i16* %10, align 2, !dbg !668
  %309 = add i16 %308, 1, !dbg !668
  store i16 %309, i16* %10, align 2, !dbg !668
  br label %217, !dbg !669, !llvm.loop !671

; <label>:310:                                    ; preds = %303, %260, %252, %244
  %311 = load %struct.pcap*, %struct.pcap** %18, align 8, !dbg !672
  call void @pcap_close(%struct.pcap* %311), !dbg !673
  store i16 1, i16* %10, align 2, !dbg !674
  %312 = load i16, i16* %9, align 2, !dbg !675
  %313 = add i16 %312, 1, !dbg !675
  store i16 %313, i16* %9, align 2, !dbg !675
  %314 = load i32, i32* %12, align 4, !dbg !676
  %315 = add nsw i32 %314, 1, !dbg !676
  store i32 %315, i32* %12, align 4, !dbg !676
  br label %121, !dbg !677, !llvm.loop !679

; <label>:316:                                    ; preds = %121
  %317 = load i16, i16* @graph, align 2, !dbg !680
  %318 = icmp ne i16 %317, 0, !dbg !680
  br i1 %318, label %321, label %319, !dbg !682

; <label>:319:                                    ; preds = %316
  %320 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0)), !dbg !683
  br label %321, !dbg !683

; <label>:321:                                    ; preds = %319, %316
  %322 = load i32, i32* %17, align 4, !dbg !684
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 2, i32 1, i32 %322, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.20, i32 0, i32 0)), !dbg !685
  %323 = load i32, i32* %17, align 4, !dbg !686
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 2, i32 2, i32 %323, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0)), !dbg !687
  %324 = load %struct.libnet_context*, %struct.libnet_context** %14, align 8, !dbg !688
  %325 = icmp ne %struct.libnet_context* %324, null, !dbg !688
  br i1 %325, label %326, label %328, !dbg !690

; <label>:326:                                    ; preds = %321
  %327 = load %struct.libnet_context*, %struct.libnet_context** %14, align 8, !dbg !691
  call void @libnet_destroy(%struct.libnet_context* %327), !dbg !693
  br label %328, !dbg !693

; <label>:328:                                    ; preds = %326, %321
  store i32 0, i32* %2, align 4, !dbg !694
  br label %329, !dbg !694

; <label>:329:                                    ; preds = %328, %114, %105
  %330 = load i32, i32* %2, align 4, !dbg !695
  ret i32 %330, !dbg !695
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @w_error(i32, i8*, ...) #2

declare void @init_scr() #2

declare %struct.libnet_context* @libnet_init(i32, i8*, i8*) #2

declare i32 @libnet_get_ipaddr4(%struct.libnet_context*) #2

declare %struct.libnet_ether_addr* @libnet_get_hwaddr(%struct.libnet_context*) #2

declare i32 @libnet_build_tcp(i16 zeroext, i16 zeroext, i32, i32, i8 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i8*, i32, %struct.libnet_context*, i32) #2

declare void @libnet_destroy(%struct.libnet_context*) #2

declare i8* @libnet_geterror(%struct.libnet_context*) #2

declare i32 @libnet_build_ipv4(i16 zeroext, i8 zeroext, i16 zeroext, i16 zeroext, i8 zeroext, i8 zeroext, i16 zeroext, i32, i32, i8*, i32, %struct.libnet_context*, i32) #2

declare i32 @libnet_name2addr4(%struct.libnet_context*, i8*, i8 zeroext) #2

declare void @n_print(i8*, i32, i32, i32, i8*, ...) #2

declare i32 @fflush(%struct._IO_FILE*) #2

declare %struct.host* @map_lan(i8*, i16 zeroext, i16*) #2

declare i8* @nast_hex_ntoa(i8*) #2

declare i32 @libnet_build_ethernet(i8*, i8*, i16 zeroext, i8*, i32, %struct.libnet_context*, i32) #2

declare i32 @libnet_write(%struct.libnet_context*) #2

declare i32 @pcap_lookupnet(i8*, i32*, i32*, i8*) #2

declare %struct.pcap* @pcap_open_live(i8*, i32, i32, i32, i8*) #2

declare i32 @pcap_compile(%struct.pcap*, %struct.bpf_program*, i8*, i32, i32) #2

declare i32 @pcap_setfilter(%struct.pcap*, %struct.bpf_program*) #2

declare i32 @pcap_fileno(%struct.pcap*) #2

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #2

declare i8* @pcap_next(%struct.pcap*, %struct.pcap_pkthdr*) #2

declare zeroext i16 @handle_ethernet(i8*) #2

; Function Attrs: nounwind readnone
declare zeroext i16 @ntohs(i16 zeroext) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind
declare i8* @inet_ntoa(i32) #5

declare void @pcap_close(%struct.pcap*) #2

declare i32 @printf(i8*, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!225, !226}
!llvm.ident = !{!227}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !32, globals: !82)
!1 = !DIFile(filename: "[inter]fgw.o.i", directory: "/home/lichi/Desktop/nast/[task]nast")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 40, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31}
!6 = !DIEnumerator(name: "IPPROTO_IP", value: 0)
!7 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1)
!8 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2)
!9 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4)
!10 = !DIEnumerator(name: "IPPROTO_TCP", value: 6)
!11 = !DIEnumerator(name: "IPPROTO_EGP", value: 8)
!12 = !DIEnumerator(name: "IPPROTO_PUP", value: 12)
!13 = !DIEnumerator(name: "IPPROTO_UDP", value: 17)
!14 = !DIEnumerator(name: "IPPROTO_IDP", value: 22)
!15 = !DIEnumerator(name: "IPPROTO_TP", value: 29)
!16 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33)
!17 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41)
!18 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46)
!19 = !DIEnumerator(name: "IPPROTO_GRE", value: 47)
!20 = !DIEnumerator(name: "IPPROTO_ESP", value: 50)
!21 = !DIEnumerator(name: "IPPROTO_AH", value: 51)
!22 = !DIEnumerator(name: "IPPROTO_MTP", value: 92)
!23 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94)
!24 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98)
!25 = !DIEnumerator(name: "IPPROTO_PIM", value: 103)
!26 = !DIEnumerator(name: "IPPROTO_COMP", value: 108)
!27 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132)
!28 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136)
!29 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137)
!30 = !DIEnumerator(name: "IPPROTO_RAW", value: 255)
!31 = !DIEnumerator(name: "IPPROTO_MAX", value: 256)
!32 = !{!33, !34, !37, !38, !44, !69}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fd_mask", file: !35, line: 54, baseType: !36)
!35 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/select.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!36 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!37 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !40, line: 33, baseType: !41)
!40 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !42, line: 30, baseType: !43)
!42 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!43 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_ipv4_hdr", file: !46, line: 666, size: 160, align: 32, elements: !47)
!46 = !DIFile(filename: "/usr/local/include/libnet/libnet-headers.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!47 = !{!48, !51, !52, !53, !56, !57, !58, !59, !60, !61, !68}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "ip_hl", scope: !45, file: !46, line: 669, baseType: !49, size: 4, align: 8, flags: DIFlagBitField, extraData: i64 0)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !50, line: 48, baseType: !43)
!50 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!51 = !DIDerivedType(tag: DW_TAG_member, name: "ip_v", scope: !45, file: !46, line: 670, baseType: !49, size: 4, align: 8, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "ip_tos", scope: !45, file: !46, line: 676, baseType: !49, size: 8, align: 8, offset: 8)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "ip_len", scope: !45, file: !46, line: 689, baseType: !54, size: 16, align: 16, offset: 16)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !50, line: 49, baseType: !55)
!55 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "ip_id", scope: !45, file: !46, line: 690, baseType: !54, size: 16, align: 16, offset: 32)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "ip_off", scope: !45, file: !46, line: 691, baseType: !54, size: 16, align: 16, offset: 48)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "ip_ttl", scope: !45, file: !46, line: 704, baseType: !49, size: 8, align: 8, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "ip_p", scope: !45, file: !46, line: 705, baseType: !49, size: 8, align: 8, offset: 72)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "ip_sum", scope: !45, file: !46, line: 706, baseType: !54, size: 16, align: 16, offset: 80)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "ip_src", scope: !45, file: !46, line: 707, baseType: !62, size: 32, align: 32, offset: 96)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !4, line: 31, size: 32, align: 32, elements: !63)
!63 = !{!64}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !62, file: !4, line: 33, baseType: !65, size: 32, align: 32)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !4, line: 30, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !50, line: 51, baseType: !67)
!67 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "ip_dst", scope: !45, file: !46, line: 707, baseType: !62, size: 32, align: 32, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_tcp_hdr", file: !46, line: 1653, size: 160, align: 32, elements: !71)
!71 = !{!72, !73, !74, !75, !76, !77, !78, !79, !80, !81}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "th_sport", scope: !70, file: !46, line: 1655, baseType: !54, size: 16, align: 16)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "th_dport", scope: !70, file: !46, line: 1656, baseType: !54, size: 16, align: 16, offset: 16)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "th_seq", scope: !70, file: !46, line: 1657, baseType: !66, size: 32, align: 32, offset: 32)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "th_ack", scope: !70, file: !46, line: 1658, baseType: !66, size: 32, align: 32, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "th_x2", scope: !70, file: !46, line: 1660, baseType: !49, size: 4, align: 8, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "th_off", scope: !70, file: !46, line: 1661, baseType: !49, size: 4, align: 8, offset: 100, flags: DIFlagBitField, extraData: i64 96)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "th_flags", scope: !70, file: !46, line: 1667, baseType: !49, size: 8, align: 8, offset: 104)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "th_win", scope: !70, file: !46, line: 1692, baseType: !54, size: 16, align: 16, offset: 112)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "th_sum", scope: !70, file: !46, line: 1693, baseType: !54, size: 16, align: 16, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "th_urp", scope: !70, file: !46, line: 1694, baseType: !54, size: 16, align: 16, offset: 144)
!82 = !{!83, !143, !145, !146, !147, !148, !166, !170, !174, !180, !181, !182, !183, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !214, !215, !218, !222, !223, !224}
!83 = distinct !DIGlobalVariable(name: "logd", scope: !0, file: !84, line: 98, type: !85, isLocal: false, isDefinition: true, variable: %struct._IO_FILE** @logd)
!84 = !DIFile(filename: "include/nast.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !87, line: 48, baseType: !88)
!87 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !89, line: 241, size: 1728, align: 64, elements: !90)
!89 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!90 = !{!91, !92, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !113, !114, !115, !116, !118, !119, !121, !125, !128, !130, !131, !132, !133, !134, !138, !139}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !88, file: !89, line: 242, baseType: !37, size: 32, align: 32)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !88, file: !89, line: 247, baseType: !93, size: 64, align: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !88, file: !89, line: 248, baseType: !93, size: 64, align: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !88, file: !89, line: 249, baseType: !93, size: 64, align: 64, offset: 192)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !88, file: !89, line: 250, baseType: !93, size: 64, align: 64, offset: 256)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !88, file: !89, line: 251, baseType: !93, size: 64, align: 64, offset: 320)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !88, file: !89, line: 252, baseType: !93, size: 64, align: 64, offset: 384)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !88, file: !89, line: 253, baseType: !93, size: 64, align: 64, offset: 448)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !88, file: !89, line: 254, baseType: !93, size: 64, align: 64, offset: 512)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !88, file: !89, line: 256, baseType: !93, size: 64, align: 64, offset: 576)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !88, file: !89, line: 257, baseType: !93, size: 64, align: 64, offset: 640)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !88, file: !89, line: 258, baseType: !93, size: 64, align: 64, offset: 704)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !88, file: !89, line: 260, baseType: !106, size: 64, align: 64, offset: 768)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64, align: 64)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !89, line: 156, size: 192, align: 64, elements: !108)
!108 = !{!109, !110, !112}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !107, file: !89, line: 157, baseType: !106, size: 64, align: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !107, file: !89, line: 158, baseType: !111, size: 64, align: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, align: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !107, file: !89, line: 162, baseType: !37, size: 32, align: 32, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !88, file: !89, line: 262, baseType: !111, size: 64, align: 64, offset: 832)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !88, file: !89, line: 264, baseType: !37, size: 32, align: 32, offset: 896)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !88, file: !89, line: 268, baseType: !37, size: 32, align: 32, offset: 928)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !88, file: !89, line: 270, baseType: !117, size: 64, align: 64, offset: 960)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !42, line: 131, baseType: !36)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !88, file: !89, line: 274, baseType: !55, size: 16, align: 16, offset: 1024)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !88, file: !89, line: 275, baseType: !120, size: 8, align: 8, offset: 1040)
!120 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !88, file: !89, line: 276, baseType: !122, size: 8, align: 8, offset: 1048)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 8, align: 8, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 1)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !88, file: !89, line: 280, baseType: !126, size: 64, align: 64, offset: 1088)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !89, line: 150, baseType: null)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !88, file: !89, line: 289, baseType: !129, size: 64, align: 64, offset: 1152)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !42, line: 132, baseType: !36)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !88, file: !89, line: 297, baseType: !33, size: 64, align: 64, offset: 1216)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !88, file: !89, line: 298, baseType: !33, size: 64, align: 64, offset: 1280)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !88, file: !89, line: 299, baseType: !33, size: 64, align: 64, offset: 1344)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !88, file: !89, line: 300, baseType: !33, size: 64, align: 64, offset: 1408)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !88, file: !89, line: 302, baseType: !135, size: 64, align: 64, offset: 1472)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !136, line: 216, baseType: !137)
!136 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!137 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !88, file: !89, line: 303, baseType: !37, size: 32, align: 32, offset: 1536)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !88, file: !89, line: 305, baseType: !140, size: 160, align: 8, offset: 1568)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 160, align: 8, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 20)
!143 = distinct !DIGlobalVariable(name: "offset", scope: !0, file: !84, line: 99, type: !144, isLocal: false, isDefinition: true, variable: i16* @offset)
!144 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!145 = distinct !DIGlobalVariable(name: "npkt", scope: !0, file: !84, line: 100, type: !37, isLocal: false, isDefinition: true, variable: i32* @npkt)
!146 = distinct !DIGlobalVariable(name: "packet", scope: !0, file: !84, line: 101, type: !38, isLocal: false, isDefinition: true, variable: i8** @packet)
!147 = distinct !DIGlobalVariable(name: "buf", scope: !0, file: !84, line: 102, type: !38, isLocal: false, isDefinition: true, variable: i8** @buf)
!148 = distinct !DIGlobalVariable(name: "hdr", scope: !0, file: !84, line: 103, type: !149, isLocal: false, isDefinition: true, variable: %struct.pcap_pkthdr* @hdr)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcap_pkthdr", file: !150, line: 199, size: 192, align: 64, elements: !151)
!150 = !DIFile(filename: "/usr/local/include/pcap/pcap.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!151 = !{!152, !160, !165}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !149, file: !150, line: 200, baseType: !153, size: 128, align: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !154, line: 30, size: 128, align: 64, elements: !155)
!154 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!155 = !{!156, !158}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !153, file: !154, line: 32, baseType: !157, size: 64, align: 64)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !42, line: 139, baseType: !36)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !153, file: !154, line: 33, baseType: !159, size: 64, align: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !42, line: 141, baseType: !36)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "caplen", scope: !149, file: !150, line: 201, baseType: !161, size: 32, align: 32, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "bpf_u_int32", file: !162, line: 85, baseType: !163)
!162 = !DIFile(filename: "/usr/local/include/pcap/bpf.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !40, line: 35, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_int", file: !42, line: 32, baseType: !67)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !149, file: !150, line: 202, baseType: !161, size: 32, align: 32, offset: 160)
!166 = distinct !DIGlobalVariable(name: "descr", scope: !0, file: !84, line: 104, type: !167, isLocal: false, isDefinition: true, variable: %struct.pcap** @descr)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64, align: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "pcap_t", file: !150, line: 118, baseType: !169)
!169 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcap", file: !150, line: 118, flags: DIFlagFwdDecl)
!170 = distinct !DIGlobalVariable(name: "dumper", scope: !0, file: !84, line: 105, type: !171, isLocal: false, isDefinition: true, variable: %struct.pcap_dumper** @dumper)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "pcap_dumper_t", file: !150, line: 119, baseType: !173)
!173 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcap_dumper", file: !150, line: 119, flags: DIFlagFwdDecl)
!174 = distinct !DIGlobalVariable(name: "statistic", scope: !0, file: !84, line: 106, type: !175, isLocal: false, isDefinition: true, variable: %struct.pcap_stat* @statistic)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcap_stat", file: !150, line: 208, size: 96, align: 32, elements: !176)
!176 = !{!177, !178, !179}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "ps_recv", scope: !175, file: !150, line: 209, baseType: !163, size: 32, align: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "ps_drop", scope: !175, file: !150, line: 210, baseType: !163, size: 32, align: 32, offset: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "ps_ifdrop", scope: !175, file: !150, line: 211, baseType: !163, size: 32, align: 32, offset: 64)
!180 = distinct !DIGlobalVariable(name: "maskp", scope: !0, file: !84, line: 107, type: !161, isLocal: false, isDefinition: true, variable: i32* @maskp)
!181 = distinct !DIGlobalVariable(name: "netp", scope: !0, file: !84, line: 108, type: !161, isLocal: false, isDefinition: true, variable: i32* @netp)
!182 = distinct !DIGlobalVariable(name: "datalink", scope: !0, file: !84, line: 109, type: !37, isLocal: false, isDefinition: true, variable: i32* @datalink)
!183 = distinct !DIGlobalVariable(name: "fp", scope: !0, file: !84, line: 110, type: !184, isLocal: false, isDefinition: true, variable: %struct.bpf_program* @fp)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_program", file: !162, line: 104, size: 128, align: 64, elements: !185)
!185 = !{!186, !187}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "bf_len", scope: !184, file: !162, line: 105, baseType: !163, size: 32, align: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "bf_insns", scope: !184, file: !162, line: 106, baseType: !188, size: 64, align: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64, align: 64)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_insn", file: !162, line: 234, size: 64, align: 32, elements: !190)
!190 = !{!191, !194, !195, !196}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !189, file: !162, line: 235, baseType: !192, size: 16, align: 16)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_short", file: !40, line: 34, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_short", file: !42, line: 31, baseType: !55)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "jt", scope: !189, file: !162, line: 236, baseType: !39, size: 8, align: 8, offset: 16)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "jf", scope: !189, file: !162, line: 237, baseType: !39, size: 8, align: 8, offset: 24)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !189, file: !162, line: 238, baseType: !161, size: 32, align: 32, offset: 32)
!197 = distinct !DIGlobalVariable(name: "logname", scope: !0, file: !84, line: 111, type: !93, isLocal: false, isDefinition: true, variable: i8** @logname)
!198 = distinct !DIGlobalVariable(name: "tcpdl", scope: !0, file: !84, line: 112, type: !93, isLocal: false, isDefinition: true, variable: i8** @tcpdl)
!199 = distinct !DIGlobalVariable(name: "tr", scope: !0, file: !84, line: 113, type: !192, isLocal: false, isDefinition: true, variable: i16* @tr)
!200 = distinct !DIGlobalVariable(name: "tl", scope: !0, file: !84, line: 113, type: !192, isLocal: false, isDefinition: true, variable: i16* @tl)
!201 = distinct !DIGlobalVariable(name: "graph", scope: !0, file: !84, line: 114, type: !192, isLocal: false, isDefinition: true, variable: i16* @graph)
!202 = distinct !DIGlobalVariable(name: "cont", scope: !0, file: !84, line: 115, type: !192, isLocal: false, isDefinition: true, variable: i16* @cont)
!203 = distinct !DIGlobalVariable(name: "stream_glob", scope: !0, file: !84, line: 117, type: !37, isLocal: false, isDefinition: true, variable: i32* @stream_glob)
!204 = distinct !DIGlobalVariable(name: "bc_glob", scope: !0, file: !84, line: 118, type: !37, isLocal: false, isDefinition: true, variable: i32* @bc_glob)
!205 = distinct !DIGlobalVariable(name: "sniff_glob", scope: !0, file: !84, line: 119, type: !37, isLocal: false, isDefinition: true, variable: i32* @sniff_glob)
!206 = distinct !DIGlobalVariable(name: "rst_glob", scope: !0, file: !84, line: 120, type: !37, isLocal: false, isDefinition: true, variable: i32* @rst_glob)
!207 = distinct !DIGlobalVariable(name: "arp_glob", scope: !0, file: !84, line: 121, type: !37, isLocal: false, isDefinition: true, variable: i32* @arp_glob)
!208 = distinct !DIGlobalVariable(name: "pt", scope: !0, file: !84, line: 122, type: !209, isLocal: false, isDefinition: true, variable: [2 x i64]* @pt)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 128, align: 64, elements: !212)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !211, line: 60, baseType: !137)
!211 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!212 = !{!213}
!213 = !DISubrange(count: 2)
!214 = distinct !DIGlobalVariable(name: "lg", scope: !0, file: !84, line: 123, type: !37, isLocal: false, isDefinition: true, variable: i32* @lg)
!215 = distinct !DIGlobalVariable(name: "tm", scope: !0, file: !84, line: 132, type: !216, isLocal: false, isDefinition: true, variable: i64* @tm)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !217, line: 75, baseType: !157)
!217 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!218 = distinct !DIGlobalVariable(name: "timed", scope: !0, file: !84, line: 133, type: !219, isLocal: false, isDefinition: true, variable: [60 x i8]* @timed)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 480, align: 8, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 60)
!222 = distinct !DIGlobalVariable(name: "demonize", scope: !0, file: !84, line: 136, type: !192, isLocal: false, isDefinition: true, variable: i16* @demonize)
!223 = distinct !DIGlobalVariable(name: "line_s", scope: !0, file: !84, line: 138, type: !37, isLocal: false, isDefinition: true, variable: i32* @line_s)
!224 = distinct !DIGlobalVariable(name: "row_s", scope: !0, file: !84, line: 139, type: !37, isLocal: false, isDefinition: true, variable: i32* @row_s)
!225 = !{i32 2, !"Dwarf Version", i32 4}
!226 = !{i32 2, !"Debug Info Version", i32 3}
!227 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!228 = distinct !DISubprogram(name: "fgw", scope: !229, file: !229, line: 34, type: !230, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !232)
!229 = !DIFile(filename: "fgw.c", directory: "/home/lichi/Desktop/nast/[task]nast")
!230 = !DISubroutineType(types: !231)
!231 = !{!37, !38}
!232 = !{}
!233 = !DILocalVariable(name: "dev", arg: 1, scope: !228, file: !229, line: 34, type: !38)
!234 = !DIExpression()
!235 = !DILocation(line: 34, column: 18, scope: !228)
!236 = !DILocalVariable(name: "extip", scope: !228, file: !229, line: 37, type: !38)
!237 = !DILocation(line: 37, column: 12, scope: !228)
!238 = !DILocalVariable(name: "myip", scope: !228, file: !229, line: 41, type: !239)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_long", file: !40, line: 36, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_long", file: !42, line: 33, baseType: !137)
!241 = !DILocation(line: 41, column: 11, scope: !228)
!242 = !DILocalVariable(name: "tmpmac", scope: !228, file: !229, line: 42, type: !243)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, align: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_ether_addr", file: !46, line: 530, size: 48, align: 8, elements: !245)
!245 = !{!246}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "ether_addr_octet", scope: !244, file: !46, line: 532, baseType: !247, size: 48, align: 8)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 48, align: 8, elements: !248)
!248 = !{!249}
!249 = !DISubrange(count: 6)
!250 = !DILocation(line: 42, column: 30, scope: !228)
!251 = !DILocalVariable(name: "mymac", scope: !228, file: !229, line: 43, type: !252)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 48, align: 8, elements: !248)
!253 = !DILocation(line: 43, column: 11, scope: !228)
!254 = !DILocalVariable(name: "i", scope: !228, file: !229, line: 44, type: !192)
!255 = !DILocation(line: 44, column: 12, scope: !228)
!256 = !DILocalVariable(name: "k", scope: !228, file: !229, line: 44, type: !192)
!257 = !DILocation(line: 44, column: 15, scope: !228)
!258 = !DILocalVariable(name: "pcount", scope: !228, file: !229, line: 44, type: !192)
!259 = !DILocation(line: 44, column: 18, scope: !228)
!260 = !DILocalVariable(name: "n", scope: !228, file: !229, line: 45, type: !192)
!261 = !DILocation(line: 45, column: 12, scope: !228)
!262 = !DILocalVariable(name: "line", scope: !228, file: !229, line: 46, type: !37)
!263 = !DILocation(line: 46, column: 8, scope: !228)
!264 = !DILocalVariable(name: "col", scope: !228, file: !229, line: 46, type: !37)
!265 = !DILocation(line: 46, column: 13, scope: !228)
!266 = !DILocalVariable(name: "l", scope: !228, file: !229, line: 47, type: !267)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64, align: 64)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "libnet_t", file: !269, line: 235, baseType: !270)
!269 = !DIFile(filename: "/usr/local/include/libnet/libnet-structures.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_context", file: !269, line: 186, size: 3200, align: 64, elements: !271)
!271 = !{!272, !273, !274, !292, !293, !294, !295, !296, !297, !298, !305, !306, !310, !314}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !270, file: !269, line: 192, baseType: !37, size: 32, align: 32)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "injection_type", scope: !270, file: !269, line: 194, baseType: !37, size: 32, align: 32, offset: 32)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_blocks", scope: !270, file: !269, line: 206, baseType: !275, size: 64, align: 64, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64, align: 64)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "libnet_pblock_t", file: !269, line: 178, baseType: !277)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_protocol_block", file: !269, line: 77, size: 384, align: 64, elements: !278)
!278 = !{!279, !281, !282, !283, !284, !285, !286, !289, !291}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !277, file: !269, line: 79, baseType: !280, size: 64, align: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "b_len", scope: !277, file: !269, line: 80, baseType: !66, size: 32, align: 32, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "h_len", scope: !277, file: !269, line: 81, baseType: !54, size: 16, align: 16, offset: 96)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "copied", scope: !277, file: !269, line: 92, baseType: !66, size: 32, align: 32, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !277, file: !269, line: 94, baseType: !49, size: 8, align: 8, offset: 160)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !277, file: !269, line: 168, baseType: !49, size: 8, align: 8, offset: 168)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "ptag", scope: !277, file: !269, line: 170, baseType: !287, size: 32, align: 32, offset: 192)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "libnet_ptag_t", file: !269, line: 70, baseType: !288)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !40, line: 196, baseType: !37)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !277, file: !269, line: 175, baseType: !290, size: 64, align: 64, offset: 256)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64, align: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !277, file: !269, line: 176, baseType: !290, size: 64, align: 64, offset: 320)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "pblock_end", scope: !270, file: !269, line: 207, baseType: !275, size: 64, align: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "n_pblocks", scope: !270, file: !269, line: 208, baseType: !66, size: 32, align: 32, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "link_type", scope: !270, file: !269, line: 210, baseType: !37, size: 32, align: 32, offset: 224)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "link_offset", scope: !270, file: !269, line: 224, baseType: !37, size: 32, align: 32, offset: 256)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "aligner", scope: !270, file: !269, line: 225, baseType: !37, size: 32, align: 32, offset: 288)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !270, file: !269, line: 226, baseType: !93, size: 64, align: 64, offset: 320)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !270, file: !269, line: 228, baseType: !299, size: 192, align: 64, offset: 384)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_stats", file: !269, line: 52, size: 192, align: 64, elements: !300)
!300 = !{!301, !303, !304}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "packets_sent", scope: !299, file: !269, line: 55, baseType: !302, size: 64, align: 64)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !50, line: 55, baseType: !137)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "packet_errors", scope: !299, file: !269, line: 56, baseType: !302, size: 64, align: 64, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_written", scope: !299, file: !269, line: 57, baseType: !302, size: 64, align: 64, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "ptag_state", scope: !270, file: !269, line: 229, baseType: !287, size: 32, align: 32, offset: 576)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !270, file: !269, line: 230, baseType: !307, size: 512, align: 8, offset: 608)
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 512, align: 8, elements: !308)
!308 = !{!309}
!309 = !DISubrange(count: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "err_buf", scope: !270, file: !269, line: 232, baseType: !311, size: 2048, align: 8, offset: 1120)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 2048, align: 8, elements: !312)
!312 = !{!313}
!313 = !DISubrange(count: 256)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "total_size", scope: !270, file: !269, line: 233, baseType: !66, size: 32, align: 32, offset: 3168)
!315 = !DILocation(line: 47, column: 14, scope: !228)
!316 = !DILocalVariable(name: "ebuf", scope: !228, file: !229, line: 48, type: !317)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 2048, align: 8, elements: !312)
!318 = !DILocation(line: 48, column: 11, scope: !228)
!319 = !DILocalVariable(name: "ptag", scope: !228, file: !229, line: 49, type: !287)
!320 = !DILocation(line: 49, column: 18, scope: !228)
!321 = !DILocalVariable(name: "lg", scope: !228, file: !229, line: 52, type: !37)
!322 = !DILocation(line: 52, column: 8, scope: !228)
!323 = !DILocalVariable(name: "p", scope: !228, file: !229, line: 54, type: !167)
!324 = !DILocation(line: 54, column: 12, scope: !228)
!325 = !DILocalVariable(name: "uphost", scope: !228, file: !229, line: 56, type: !326)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64, align: 64)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "host", file: !84, line: 125, size: 80, align: 8, elements: !328)
!328 = !{!329, !331}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "mac", scope: !327, file: !84, line: 127, baseType: !330, size: 48, align: 8)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 48, align: 8, elements: !248)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !327, file: !84, line: 128, baseType: !332, size: 32, align: 8, offset: 48)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 32, align: 8, elements: !333)
!333 = !{!334}
!334 = !DISubrange(count: 4)
!335 = !DILocation(line: 56, column: 18, scope: !228)
!336 = !DILocalVariable(name: "type", scope: !228, file: !229, line: 59, type: !337)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int16_t", file: !40, line: 201, baseType: !55)
!338 = !DILocation(line: 59, column: 14, scope: !228)
!339 = !DILocalVariable(name: "ip", scope: !228, file: !229, line: 60, type: !44)
!340 = !DILocation(line: 60, column: 28, scope: !228)
!341 = !DILocalVariable(name: "tcp", scope: !228, file: !229, line: 61, type: !69)
!342 = !DILocation(line: 61, column: 27, scope: !228)
!343 = !DILocalVariable(name: "sd", scope: !228, file: !229, line: 62, type: !37)
!344 = !DILocation(line: 62, column: 8, scope: !228)
!345 = !DILocalVariable(name: "tv", scope: !228, file: !229, line: 64, type: !153)
!346 = !DILocation(line: 64, column: 19, scope: !228)
!347 = !DILocalVariable(name: "rfsd", scope: !228, file: !229, line: 65, type: !348)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "fd_set", file: !35, line: 75, baseType: !349)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 64, size: 1024, align: 64, elements: !350)
!350 = !{!351}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "__fds_bits", scope: !349, file: !35, line: 72, baseType: !352, size: 1024, align: 64)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 1024, align: 64, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 16)
!355 = !DILocation(line: 65, column: 11, scope: !228)
!356 = !DILocation(line: 67, column: 31, scope: !228)
!357 = !DILocation(line: 67, column: 26, scope: !228)
!358 = !DILocation(line: 67, column: 17, scope: !228)
!359 = !DILocation(line: 67, column: 10, scope: !228)
!360 = !DILocation(line: 67, column: 6, scope: !228)
!361 = !DILocation(line: 68, column: 15, scope: !228)
!362 = !DILocation(line: 68, column: 9, scope: !228)
!363 = !DILocation(line: 71, column: 9, scope: !364)
!364 = distinct !DILexicalBlock(scope: !228, file: !229, line: 71, column: 8)
!365 = !DILocation(line: 71, column: 8, scope: !228)
!366 = !DILocation(line: 73, column: 2, scope: !367)
!367 = distinct !DILexicalBlock(scope: !364, file: !229, line: 72, column: 6)
!368 = !DILocation(line: 74, column: 6, scope: !367)
!369 = !DILocation(line: 76, column: 8, scope: !370)
!370 = distinct !DILexicalBlock(scope: !228, file: !229, line: 76, column: 8)
!371 = !DILocation(line: 76, column: 8, scope: !228)
!372 = !DILocation(line: 77, column: 6, scope: !370)
!373 = !DILocation(line: 80, column: 8, scope: !374)
!374 = distinct !DILexicalBlock(scope: !228, file: !229, line: 80, column: 8)
!375 = !DILocation(line: 80, column: 8, scope: !228)
!376 = !DILocation(line: 82, column: 6, scope: !377)
!377 = distinct !DILexicalBlock(scope: !374, file: !229, line: 81, column: 4)
!378 = !DILocation(line: 83, column: 15, scope: !377)
!379 = !DILocation(line: 84, column: 4, scope: !377)
!380 = !DILocation(line: 86, column: 33, scope: !228)
!381 = !DILocation(line: 86, column: 38, scope: !228)
!382 = !DILocation(line: 86, column: 8, scope: !228)
!383 = !DILocation(line: 86, column: 6, scope: !228)
!384 = !DILocation(line: 87, column: 30, scope: !228)
!385 = !DILocation(line: 87, column: 11, scope: !228)
!386 = !DILocation(line: 87, column: 9, scope: !228)
!387 = !DILocation(line: 88, column: 31, scope: !228)
!388 = !DILocation(line: 88, column: 13, scope: !228)
!389 = !DILocation(line: 88, column: 11, scope: !228)
!390 = !DILocation(line: 89, column: 10, scope: !391)
!391 = distinct !DILexicalBlock(scope: !228, file: !229, line: 89, column: 4)
!392 = !DILocation(line: 89, column: 9, scope: !391)
!393 = !DILocation(line: 89, column: 14, scope: !394)
!394 = !DILexicalBlockFile(scope: !395, file: !229, discriminator: 1)
!395 = distinct !DILexicalBlock(scope: !391, file: !229, line: 89, column: 4)
!396 = !DILocation(line: 89, column: 15, scope: !394)
!397 = !DILocation(line: 89, column: 4, scope: !394)
!398 = !DILocation(line: 89, column: 58, scope: !399)
!399 = !DILexicalBlockFile(scope: !395, file: !229, discriminator: 2)
!400 = !DILocation(line: 89, column: 33, scope: !399)
!401 = !DILocation(line: 89, column: 41, scope: !399)
!402 = !DILocation(line: 89, column: 30, scope: !399)
!403 = !DILocation(line: 89, column: 24, scope: !399)
!404 = !DILocation(line: 89, column: 32, scope: !399)
!405 = !DILocation(line: 89, column: 20, scope: !406)
!406 = !DILexicalBlockFile(scope: !395, file: !229, discriminator: 3)
!407 = !DILocation(line: 89, column: 4, scope: !406)
!408 = distinct !{!408, !409}
!409 = !DILocation(line: 89, column: 4, scope: !228)
!410 = !DILocation(line: 92, column: 33, scope: !228)
!411 = !DILocation(line: 92, column: 38, scope: !228)
!412 = !DILocation(line: 92, column: 8, scope: !228)
!413 = !DILocation(line: 92, column: 6, scope: !228)
!414 = !DILocation(line: 95, column: 99, scope: !415)
!415 = distinct !DILexicalBlock(scope: !228, file: !229, line: 95, column: 8)
!416 = !DILocation(line: 95, column: 8, scope: !415)
!417 = !DILocation(line: 95, column: 104, scope: !415)
!418 = !DILocation(line: 95, column: 8, scope: !228)
!419 = !DILocation(line: 97, column: 18, scope: !420)
!420 = distinct !DILexicalBlock(scope: !415, file: !229, line: 96, column: 6)
!421 = !DILocation(line: 97, column: 2, scope: !420)
!422 = !DILocation(line: 98, column: 65, scope: !420)
!423 = !DILocation(line: 98, column: 49, scope: !420)
!424 = !DILocation(line: 98, column: 2, scope: !425)
!425 = !DILexicalBlockFile(scope: !420, file: !229, discriminator: 1)
!426 = !DILocation(line: 99, column: 6, scope: !420)
!427 = !DILocation(line: 101, column: 92, scope: !428)
!428 = distinct !DILexicalBlock(scope: !228, file: !229, line: 101, column: 8)
!429 = !DILocation(line: 101, column: 116, scope: !428)
!430 = !DILocation(line: 101, column: 119, scope: !428)
!431 = !DILocation(line: 101, column: 98, scope: !428)
!432 = !DILocation(line: 101, column: 157, scope: !428)
!433 = !DILocation(line: 101, column: 8, scope: !434)
!434 = !DILexicalBlockFile(scope: !428, file: !229, discriminator: 1)
!435 = !DILocation(line: 101, column: 162, scope: !428)
!436 = !DILocation(line: 101, column: 8, scope: !228)
!437 = !DILocation(line: 103, column: 17, scope: !438)
!438 = distinct !DILexicalBlock(scope: !428, file: !229, line: 102, column: 6)
!439 = !DILocation(line: 103, column: 2, scope: !438)
!440 = !DILocation(line: 104, column: 64, scope: !438)
!441 = !DILocation(line: 104, column: 48, scope: !438)
!442 = !DILocation(line: 104, column: 2, scope: !443)
!443 = !DILexicalBlockFile(scope: !438, file: !229, discriminator: 1)
!444 = !DILocation(line: 105, column: 6, scope: !438)
!445 = !DILocation(line: 107, column: 21, scope: !228)
!446 = !DILocation(line: 107, column: 26, scope: !228)
!447 = !DILocation(line: 107, column: 30, scope: !228)
!448 = !DILocation(line: 107, column: 4, scope: !228)
!449 = !DILocation(line: 108, column: 11, scope: !228)
!450 = !DILocation(line: 108, column: 4, scope: !228)
!451 = !DILocation(line: 111, column: 26, scope: !452)
!452 = distinct !DILexicalBlock(scope: !228, file: !229, line: 111, column: 8)
!453 = !DILocation(line: 111, column: 18, scope: !452)
!454 = !DILocation(line: 111, column: 16, scope: !452)
!455 = !DILocation(line: 111, column: 38, scope: !452)
!456 = !DILocation(line: 111, column: 8, scope: !228)
!457 = !DILocation(line: 113, column: 5, scope: !458)
!458 = distinct !DILexicalBlock(scope: !459, file: !229, line: 113, column: 5)
!459 = distinct !DILexicalBlock(scope: !452, file: !229, line: 112, column: 6)
!460 = !DILocation(line: 113, column: 89, scope: !458)
!461 = !DILocation(line: 113, column: 5, scope: !459)
!462 = !DILocation(line: 114, column: 4, scope: !458)
!463 = !DILocation(line: 115, column: 6, scope: !459)
!464 = !DILocation(line: 116, column: 8, scope: !465)
!465 = distinct !DILexicalBlock(scope: !228, file: !229, line: 116, column: 8)
!466 = !DILocation(line: 116, column: 9, scope: !465)
!467 = !DILocation(line: 116, column: 8, scope: !228)
!468 = !DILocation(line: 118, column: 5, scope: !469)
!469 = distinct !DILexicalBlock(scope: !470, file: !229, line: 118, column: 5)
!470 = distinct !DILexicalBlock(scope: !465, file: !229, line: 117, column: 6)
!471 = !DILocation(line: 118, column: 72, scope: !469)
!472 = !DILocation(line: 118, column: 5, scope: !470)
!473 = !DILocation(line: 119, column: 2, scope: !469)
!474 = !DILocation(line: 120, column: 6, scope: !470)
!475 = !DILocation(line: 122, column: 21, scope: !228)
!476 = !DILocation(line: 122, column: 29, scope: !228)
!477 = !DILocation(line: 122, column: 4, scope: !228)
!478 = !DILocation(line: 124, column: 11, scope: !228)
!479 = !DILocation(line: 124, column: 15, scope: !228)
!480 = !DILocation(line: 124, column: 9, scope: !228)
!481 = !DILocation(line: 126, column: 4, scope: !228)
!482 = !DILocation(line: 126, column: 11, scope: !483)
!483 = !DILexicalBlockFile(scope: !228, file: !229, discriminator: 1)
!484 = !DILocation(line: 126, column: 15, scope: !483)
!485 = !DILocation(line: 126, column: 13, scope: !483)
!486 = !DILocation(line: 126, column: 4, scope: !483)
!487 = !DILocation(line: 128, column: 19, scope: !488)
!488 = distinct !DILexicalBlock(scope: !228, file: !229, line: 127, column: 6)
!489 = !DILocation(line: 128, column: 24, scope: !488)
!490 = !DILocation(line: 128, column: 28, scope: !488)
!491 = !DILocation(line: 128, column: 67, scope: !488)
!492 = !DILocation(line: 128, column: 60, scope: !488)
!493 = !DILocation(line: 128, column: 70, scope: !488)
!494 = !DILocation(line: 128, column: 84, scope: !488)
!495 = !DILocation(line: 128, column: 77, scope: !488)
!496 = !DILocation(line: 128, column: 87, scope: !488)
!497 = !DILocation(line: 128, column: 101, scope: !488)
!498 = !DILocation(line: 128, column: 94, scope: !488)
!499 = !DILocation(line: 128, column: 104, scope: !488)
!500 = !DILocation(line: 128, column: 118, scope: !488)
!501 = !DILocation(line: 128, column: 111, scope: !488)
!502 = !DILocation(line: 128, column: 121, scope: !488)
!503 = !DILocation(line: 128, column: 150, scope: !488)
!504 = !DILocation(line: 128, column: 143, scope: !488)
!505 = !DILocation(line: 128, column: 153, scope: !488)
!506 = !DILocation(line: 128, column: 128, scope: !488)
!507 = !DILocation(line: 128, column: 2, scope: !508)
!508 = !DILexicalBlockFile(scope: !488, file: !229, discriminator: 1)
!509 = !DILocation(line: 129, column: 9, scope: !488)
!510 = !DILocation(line: 129, column: 2, scope: !488)
!511 = !DILocation(line: 131, column: 44, scope: !512)
!512 = distinct !DILexicalBlock(scope: !488, file: !229, line: 131, column: 6)
!513 = !DILocation(line: 131, column: 37, scope: !512)
!514 = !DILocation(line: 131, column: 47, scope: !512)
!515 = !DILocation(line: 131, column: 52, scope: !512)
!516 = !DILocation(line: 131, column: 75, scope: !512)
!517 = !DILocation(line: 131, column: 78, scope: !512)
!518 = !DILocation(line: 131, column: 14, scope: !512)
!519 = !DILocation(line: 131, column: 12, scope: !512)
!520 = !DILocation(line: 131, column: 84, scope: !512)
!521 = !DILocation(line: 131, column: 6, scope: !488)
!522 = !DILocation(line: 133, column: 22, scope: !523)
!523 = distinct !DILexicalBlock(scope: !512, file: !229, line: 132, column: 4)
!524 = !DILocation(line: 133, column: 7, scope: !523)
!525 = !DILocation(line: 134, column: 76, scope: !523)
!526 = !DILocation(line: 134, column: 60, scope: !523)
!527 = !DILocation(line: 134, column: 7, scope: !528)
!528 = !DILexicalBlockFile(scope: !523, file: !229, discriminator: 1)
!529 = !DILocation(line: 135, column: 4, scope: !523)
!530 = !DILocation(line: 137, column: 20, scope: !531)
!531 = distinct !DILexicalBlock(scope: !488, file: !229, line: 137, column: 6)
!532 = !DILocation(line: 137, column: 6, scope: !531)
!533 = !DILocation(line: 137, column: 23, scope: !531)
!534 = !DILocation(line: 137, column: 6, scope: !488)
!535 = !DILocation(line: 139, column: 22, scope: !536)
!536 = distinct !DILexicalBlock(scope: !531, file: !229, line: 138, column: 4)
!537 = !DILocation(line: 139, column: 7, scope: !536)
!538 = !DILocation(line: 140, column: 73, scope: !536)
!539 = !DILocation(line: 140, column: 57, scope: !536)
!540 = !DILocation(line: 140, column: 7, scope: !541)
!541 = !DILexicalBlockFile(scope: !536, file: !229, discriminator: 1)
!542 = !DILocation(line: 141, column: 4, scope: !536)
!543 = !DILocation(line: 143, column: 17, scope: !488)
!544 = !DILocation(line: 143, column: 34, scope: !488)
!545 = !DILocation(line: 143, column: 2, scope: !488)
!546 = !DILocation(line: 145, column: 27, scope: !547)
!547 = distinct !DILexicalBlock(scope: !488, file: !229, line: 145, column: 6)
!548 = !DILocation(line: 145, column: 46, scope: !547)
!549 = !DILocation(line: 145, column: 11, scope: !547)
!550 = !DILocation(line: 145, column: 9, scope: !547)
!551 = !DILocation(line: 145, column: 52, scope: !547)
!552 = !DILocation(line: 145, column: 6, scope: !488)
!553 = !DILocation(line: 147, column: 22, scope: !554)
!554 = distinct !DILexicalBlock(scope: !547, file: !229, line: 146, column: 4)
!555 = !DILocation(line: 147, column: 7, scope: !554)
!556 = !DILocation(line: 148, column: 51, scope: !554)
!557 = !DILocation(line: 148, column: 7, scope: !554)
!558 = !DILocation(line: 149, column: 4, scope: !554)
!559 = !DILocation(line: 152, column: 15, scope: !488)
!560 = !DILocation(line: 152, column: 55, scope: !488)
!561 = !DILocation(line: 152, column: 2, scope: !488)
!562 = !DILocation(line: 153, column: 17, scope: !488)
!563 = !DILocation(line: 153, column: 2, scope: !488)
!564 = !DILocation(line: 155, column: 19, scope: !488)
!565 = !DILocation(line: 155, column: 7, scope: !488)
!566 = !DILocation(line: 155, column: 5, scope: !488)
!567 = !DILocation(line: 159, column: 2, scope: !488)
!568 = !DILocation(line: 163, column: 6, scope: !569)
!569 = distinct !DILexicalBlock(scope: !570, file: !229, line: 160, column: 4)
!570 = distinct !DILexicalBlock(scope: !571, file: !229, line: 159, column: 2)
!571 = distinct !DILexicalBlock(scope: !488, file: !229, line: 159, column: 2)
!572 = distinct !{!572, !568}
!573 = !DILocalVariable(name: "__d0", scope: !574, file: !229, line: 163, type: !37)
!574 = distinct !DILexicalBlock(scope: !569, file: !229, line: 163, column: 9)
!575 = !DILocation(line: 163, column: 15, scope: !574)
!576 = !DILocalVariable(name: "__d1", scope: !574, file: !229, line: 163, type: !37)
!577 = !DILocation(line: 163, column: 21, scope: !574)
!578 = !DILocation(line: 163, column: 9, scope: !579)
!579 = !DILexicalBlockFile(scope: !574, file: !229, discriminator: 1)
!580 = !DILocation(line: 163, column: 158, scope: !579)
!581 = !DILocation(line: 163, column: 27, scope: !579)
!582 = !{i32 228572}
!583 = !DILocation(line: 163, column: 38, scope: !579)
!584 = !DILocation(line: 164, column: 6, scope: !569)
!585 = !DILocation(line: 164, column: 8, scope: !569)
!586 = !DILocation(line: 164, column: 64, scope: !569)
!587 = !DILocation(line: 164, column: 15, scope: !569)
!588 = !DILocation(line: 164, column: 9, scope: !569)
!589 = !DILocation(line: 164, column: 43, scope: !569)
!590 = !DILocation(line: 165, column: 10, scope: !569)
!591 = !DILocation(line: 165, column: 17, scope: !569)
!592 = !DILocation(line: 166, column: 10, scope: !569)
!593 = !DILocation(line: 166, column: 18, scope: !569)
!594 = !DILocation(line: 169, column: 11, scope: !595)
!595 = distinct !DILexicalBlock(scope: !569, file: !229, line: 169, column: 11)
!596 = !DILocation(line: 169, column: 18, scope: !595)
!597 = !DILocation(line: 169, column: 11, scope: !569)
!598 = !DILocation(line: 171, column: 22, scope: !599)
!599 = distinct !DILexicalBlock(scope: !595, file: !229, line: 170, column: 9)
!600 = !DILocation(line: 171, column: 29, scope: !599)
!601 = !DILocation(line: 171, column: 5, scope: !599)
!602 = !DILocation(line: 172, column: 5, scope: !599)
!603 = !DILocation(line: 175, column: 19, scope: !604)
!604 = distinct !DILexicalBlock(scope: !569, file: !229, line: 175, column: 11)
!605 = !DILocation(line: 175, column: 21, scope: !604)
!606 = !DILocation(line: 175, column: 12, scope: !604)
!607 = !DILocation(line: 175, column: 11, scope: !569)
!608 = !DILocation(line: 177, column: 22, scope: !609)
!609 = distinct !DILexicalBlock(scope: !604, file: !229, line: 176, column: 9)
!610 = !DILocation(line: 177, column: 30, scope: !609)
!611 = !DILocation(line: 177, column: 5, scope: !609)
!612 = !DILocation(line: 178, column: 5, scope: !609)
!613 = !DILocation(line: 182, column: 38, scope: !569)
!614 = !DILocation(line: 182, column: 27, scope: !569)
!615 = !DILocation(line: 182, column: 14, scope: !569)
!616 = !DILocation(line: 184, column: 11, scope: !617)
!617 = distinct !DILexicalBlock(scope: !569, file: !229, line: 184, column: 11)
!618 = !DILocation(line: 184, column: 17, scope: !617)
!619 = !DILocation(line: 184, column: 11, scope: !569)
!620 = !DILocation(line: 187, column: 5, scope: !621)
!621 = distinct !DILexicalBlock(scope: !617, file: !229, line: 185, column: 9)
!622 = !DILocation(line: 190, column: 31, scope: !569)
!623 = !DILocation(line: 190, column: 14, scope: !569)
!624 = !DILocation(line: 190, column: 12, scope: !569)
!625 = !DILocation(line: 192, column: 11, scope: !626)
!626 = distinct !DILexicalBlock(scope: !569, file: !229, line: 192, column: 11)
!627 = !DILocation(line: 192, column: 15, scope: !626)
!628 = !DILocation(line: 192, column: 11, scope: !569)
!629 = !DILocation(line: 194, column: 38, scope: !630)
!630 = distinct !DILexicalBlock(scope: !626, file: !229, line: 193, column: 9)
!631 = !DILocation(line: 194, column: 47, scope: !630)
!632 = !DILocation(line: 194, column: 45, scope: !630)
!633 = !DILocation(line: 194, column: 10, scope: !630)
!634 = !DILocation(line: 194, column: 8, scope: !630)
!635 = !DILocation(line: 195, column: 38, scope: !630)
!636 = !DILocation(line: 195, column: 47, scope: !630)
!637 = !DILocation(line: 195, column: 45, scope: !630)
!638 = !DILocation(line: 195, column: 54, scope: !630)
!639 = !DILocation(line: 195, column: 11, scope: !630)
!640 = !DILocation(line: 195, column: 9, scope: !630)
!641 = !DILocation(line: 198, column: 16, scope: !642)
!642 = distinct !DILexicalBlock(scope: !630, file: !229, line: 198, column: 9)
!643 = !DILocation(line: 198, column: 21, scope: !642)
!644 = !DILocation(line: 198, column: 10, scope: !642)
!645 = !DILocation(line: 198, column: 30, scope: !642)
!646 = !DILocation(line: 198, column: 36, scope: !642)
!647 = !DILocation(line: 198, column: 46, scope: !648)
!648 = !DILexicalBlockFile(scope: !642, file: !229, discriminator: 1)
!649 = !DILocation(line: 198, column: 51, scope: !648)
!650 = !DILocation(line: 198, column: 40, scope: !648)
!651 = !DILocation(line: 198, column: 60, scope: !648)
!652 = !DILocation(line: 198, column: 68, scope: !648)
!653 = !DILocation(line: 198, column: 90, scope: !654)
!654 = !DILexicalBlockFile(scope: !642, file: !229, discriminator: 2)
!655 = !DILocation(line: 198, column: 94, scope: !654)
!656 = !DILocation(line: 198, column: 80, scope: !654)
!657 = !DILocation(line: 198, column: 103, scope: !654)
!658 = !DILocation(line: 198, column: 73, scope: !659)
!659 = !DILexicalBlockFile(scope: !654, file: !229, discriminator: 3)
!660 = !DILocation(line: 198, column: 73, scope: !654)
!661 = !DILocation(line: 198, column: 9, scope: !654)
!662 = !DILocation(line: 200, column: 27, scope: !663)
!663 = distinct !DILexicalBlock(scope: !642, file: !229, line: 199, column: 7)
!664 = !DILocation(line: 200, column: 35, scope: !663)
!665 = !DILocation(line: 200, column: 10, scope: !663)
!666 = !DILocation(line: 201, column: 10, scope: !663)
!667 = !DILocation(line: 203, column: 9, scope: !630)
!668 = !DILocation(line: 205, column: 14, scope: !569)
!669 = !DILocation(line: 159, column: 2, scope: !670)
!670 = !DILexicalBlockFile(scope: !570, file: !229, discriminator: 1)
!671 = distinct !{!671, !567}
!672 = !DILocation(line: 208, column: 13, scope: !488)
!673 = !DILocation(line: 208, column: 2, scope: !488)
!674 = !DILocation(line: 209, column: 9, scope: !488)
!675 = !DILocation(line: 210, column: 3, scope: !488)
!676 = !DILocation(line: 211, column: 2, scope: !488)
!677 = !DILocation(line: 126, column: 4, scope: !678)
!678 = !DILexicalBlockFile(scope: !228, file: !229, discriminator: 2)
!679 = distinct !{!679, !481}
!680 = !DILocation(line: 214, column: 8, scope: !681)
!681 = distinct !DILexicalBlock(scope: !228, file: !229, line: 214, column: 7)
!682 = !DILocation(line: 214, column: 7, scope: !228)
!683 = !DILocation(line: 215, column: 6, scope: !681)
!684 = !DILocation(line: 216, column: 24, scope: !228)
!685 = !DILocation(line: 216, column: 4, scope: !228)
!686 = !DILocation(line: 217, column: 24, scope: !228)
!687 = !DILocation(line: 217, column: 4, scope: !228)
!688 = !DILocation(line: 219, column: 8, scope: !689)
!689 = distinct !DILexicalBlock(scope: !228, file: !229, line: 219, column: 8)
!690 = !DILocation(line: 219, column: 8, scope: !228)
!691 = !DILocation(line: 219, column: 26, scope: !692)
!692 = !DILexicalBlockFile(scope: !689, file: !229, discriminator: 1)
!693 = !DILocation(line: 219, column: 11, scope: !692)
!694 = !DILocation(line: 223, column: 4, scope: !228)
!695 = !DILocation(line: 224, column: 1, scope: !228)
