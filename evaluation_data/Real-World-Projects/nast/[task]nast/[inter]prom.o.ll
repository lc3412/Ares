; ModuleID = './[inter]prom.o.i'
source_filename = "./[inter]prom.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.pcap = type opaque
%struct.bpf_program = type { i32, %struct.bpf_insn* }
%struct.bpf_insn = type { i16, i8, i8, i32 }
%struct.pcap_pkthdr = type { %struct.timeval, i32, i32 }
%struct.timeval = type { i64, i64 }
%struct.pcap_dumper = type opaque
%struct.pcap_stat = type { i32, i32, i32 }
%struct.fd_set = type { [16 x i64] }
%struct.libnet_context = type { i32, i32, %struct.libnet_protocol_block*, %struct.libnet_protocol_block*, i32, i32, i32, i32, i8*, %struct.libnet_stats, i32, [64 x i8], [256 x i8], i32 }
%struct.libnet_protocol_block = type { i8*, i32, i16, i32, i8, i8, i32, %struct.libnet_protocol_block*, %struct.libnet_protocol_block* }
%struct.libnet_stats = type { i64, i64, i64 }
%struct.libnet_ether_addr = type { [6 x i8] }
%struct.nast_arp_hdr = type { i16, i16, i8, i8, i16, [6 x i8], [4 x i8], [6 x i8], [4 x i8] }
%struct.host = type { [6 x i8], [4 x i8] }

@psearch.enet_dst = private unnamed_addr constant [6 x i8] c"\FF\FF\00\00\00\00", align 1
@.str = private unnamed_addr constant [21 x i8] c"Logging to file... \0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"NAST SNIFFER SCAN REPORT\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Made on %s\0A\0A\00", align 1
@timed = common global [60 x i8] zeroinitializer, align 16
@graph = common global i16 0, align 2
@demonize = common global i16 0, align 2
@.str.3 = private unnamed_addr constant [55 x i8] c"Is very useless demonize me in checking sniffers! Omit\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"This check can have false response, pay attention!\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"libnet_init: %s\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Can't get hardware address: %s\0A\0A\00", align 1
@netp = common global i32 0, align 4
@maskp = common global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"pcap_lookupnet error: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"Can't get local ip address : %s\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"princ\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"Probe for hosts...\00", align 1
@logd = common global %struct._IO_FILE* null, align 8
@.str.12 = private unnamed_addr constant [67 x i8] c"\0ACan't build truly host list! mmhhh!\0AReport bug to author please\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"\0AWhat are you doing? You are alone in this network!\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"done\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"Scanning for sniffer the following host:\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"Can't build arp header : %s\0A\0A\00", align 1
@descr = common global %struct.pcap* null, align 8
@.str.17 = private unnamed_addr constant [31 x i8] c"pcap_open_liver() error : %s\0A\0A\00", align 1
@fp = common global %struct.bpf_program zeroinitializer, align 8
@.str.18 = private unnamed_addr constant [4 x i8] c"arp\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"error: %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"%s (%s)   --------->\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"%d.%d.%d.%d\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"Error sending arp request : %s\0A\0A\00", align 1
@offset = common global i16 0, align 2
@.str.23 = private unnamed_addr constant [12 x i8] c" Not found\0A\00", align 1
@hdr = common global %struct.pcap_pkthdr zeroinitializer, align 8
@.str.24 = private unnamed_addr constant [9 x i8] c" Found!\0A\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"\0AFinished\0A\0A\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"winfo\00", align 1
@.str.27 = private unnamed_addr constant [52 x i8] c"                                                   \00", align 1
@npkt = common global i32 0, align 4
@packet = common global i8* null, align 8
@buf = common global i8* null, align 8
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
@line_s = common global i32 0, align 4
@row_s = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @psearch(i8*, i64, i16 zeroext) #0 !dbg !182 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i16, align 2
  %8 = alloca [6 x i8], align 1
  %9 = alloca [6 x i8], align 1
  %10 = alloca i64, align 8
  %11 = alloca [256 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.fd_set, align 8
  %15 = alloca %struct.timeval, align 8
  %16 = alloca %struct.libnet_context*, align 8
  %17 = alloca %struct.libnet_ether_addr*, align 8
  %18 = alloca %struct.nast_arp_hdr*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.host*, align 8
  %21 = alloca i16, align 2
  %22 = alloca i16, align 2
  %23 = alloca i16, align 2
  %24 = alloca [16 x i8], align 16
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !188, metadata !189), !dbg !190
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !191, metadata !189), !dbg !192
  store i16 %2, i16* %7, align 2
  call void @llvm.dbg.declare(metadata i16* %7, metadata !193, metadata !189), !dbg !194
  call void @llvm.dbg.declare(metadata [6 x i8]* %8, metadata !195, metadata !189), !dbg !197
  %27 = bitcast [6 x i8]* %8 to i8*, !dbg !197
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @psearch.enet_dst, i32 0, i32 0), i64 6, i32 1, i1 false), !dbg !197
  call void @llvm.dbg.declare(metadata [6 x i8]* %9, metadata !198, metadata !189), !dbg !199
  call void @llvm.dbg.declare(metadata i64* %10, metadata !200, metadata !189), !dbg !201
  call void @llvm.dbg.declare(metadata [256 x i8]* %11, metadata !202, metadata !189), !dbg !206
  call void @llvm.dbg.declare(metadata i32* %12, metadata !207, metadata !189), !dbg !208
  call void @llvm.dbg.declare(metadata i32* %13, metadata !209, metadata !189), !dbg !210
  call void @llvm.dbg.declare(metadata %struct.fd_set* %14, metadata !211, metadata !189), !dbg !219
  call void @llvm.dbg.declare(metadata %struct.timeval* %15, metadata !220, metadata !189), !dbg !221
  call void @llvm.dbg.declare(metadata %struct.libnet_context** %16, metadata !222, metadata !189), !dbg !272
  call void @llvm.dbg.declare(metadata %struct.libnet_ether_addr** %17, metadata !273, metadata !189), !dbg !280
  call void @llvm.dbg.declare(metadata %struct.nast_arp_hdr** %18, metadata !281, metadata !189), !dbg !282
  call void @llvm.dbg.declare(metadata i8** %19, metadata !283, metadata !189), !dbg !284
  call void @llvm.dbg.declare(metadata %struct.host** %20, metadata !285, metadata !189), !dbg !291
  store %struct.host* null, %struct.host** %20, align 8, !dbg !291
  call void @llvm.dbg.declare(metadata i16* %21, metadata !292, metadata !189), !dbg !293
  call void @llvm.dbg.declare(metadata i16* %22, metadata !294, metadata !189), !dbg !295
  call void @llvm.dbg.declare(metadata i16* %23, metadata !296, metadata !189), !dbg !297
  call void @llvm.dbg.declare(metadata [16 x i8]* %24, metadata !298, metadata !189), !dbg !300
  store i16 0, i16* %22, align 2, !dbg !301
  store i16 0, i16* %23, align 2, !dbg !302
  store i32 3, i32* %13, align 4, !dbg !303
  %28 = load i16, i16* %7, align 2, !dbg !304
  %29 = icmp ne i16 %28, 0, !dbg !304
  br i1 %29, label %30, label %39, !dbg !306

; <label>:30:                                     ; preds = %3
  call void @openfile(), !dbg !307
  %31 = load i16, i16* %7, align 2, !dbg !309
  %32 = zext i16 %31 to i32, !dbg !309
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* null, i32 0, i32 0, i32 %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0)), !dbg !310
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !311
  %34 = call i32 @fflush(%struct._IO_FILE* %33), !dbg !312
  %35 = load i16, i16* %7, align 2, !dbg !313
  %36 = zext i16 %35 to i32, !dbg !313
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* null, i32 0, i32 0, i32 %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0)), !dbg !314
  %37 = load i16, i16* %7, align 2, !dbg !315
  %38 = zext i16 %37 to i32, !dbg !315
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* null, i32 0, i32 0, i32 %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @timed, i32 0, i32 0)), !dbg !316
  br label %39, !dbg !317

; <label>:39:                                     ; preds = %30, %3
  %40 = load i16, i16* @graph, align 2, !dbg !318
  %41 = icmp ne i16 %40, 0, !dbg !318
  br i1 %41, label %42, label %43, !dbg !320

; <label>:42:                                     ; preds = %39
  call void @init_scr(), !dbg !321
  br label %43, !dbg !321

; <label>:43:                                     ; preds = %42, %39
  %44 = load i16, i16* @demonize, align 2, !dbg !322
  %45 = icmp ne i16 %44, 0, !dbg !322
  br i1 %45, label %46, label %48, !dbg !324

; <label>:46:                                     ; preds = %43
  %47 = call i32 (i32, i8*, ...) @w_error(i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i32 0, i32 0)), !dbg !325
  store i16 0, i16* @demonize, align 2, !dbg !327
  br label %48, !dbg !328

; <label>:48:                                     ; preds = %46, %43
  %49 = load i16, i16* %7, align 2, !dbg !329
  %50 = zext i16 %49 to i32, !dbg !329
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 7, i32 2, i32 %50, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i32 0, i32 0)), !dbg !330
  %51 = load i8*, i8** %5, align 8, !dbg !331
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i32 0, i32 0, !dbg !333
  %53 = call %struct.libnet_context* @libnet_init(i32 0, i8* %51, i8* %52), !dbg !334
  store %struct.libnet_context* %53, %struct.libnet_context** %16, align 8, !dbg !335
  %54 = icmp eq %struct.libnet_context* %53, null, !dbg !336
  br i1 %54, label %55, label %58, !dbg !337

; <label>:55:                                     ; preds = %48
  %56 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i32 0, i32 0, !dbg !338
  %57 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i8* %56), !dbg !340
  br label %58, !dbg !341

; <label>:58:                                     ; preds = %55, %48
  %59 = load %struct.libnet_context*, %struct.libnet_context** %16, align 8, !dbg !342
  %60 = call %struct.libnet_ether_addr* @libnet_get_hwaddr(%struct.libnet_context* %59), !dbg !344
  store %struct.libnet_ether_addr* %60, %struct.libnet_ether_addr** %17, align 8, !dbg !345
  %61 = icmp eq %struct.libnet_ether_addr* %60, null, !dbg !346
  br i1 %61, label %62, label %66, !dbg !347

; <label>:62:                                     ; preds = %58
  %63 = load %struct.libnet_context*, %struct.libnet_context** %16, align 8, !dbg !348
  %64 = call i8* @libnet_geterror(%struct.libnet_context* %63), !dbg !350
  %65 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0), i8* %64), !dbg !351
  br label %66, !dbg !353

; <label>:66:                                     ; preds = %62, %58
  %67 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i32 0, i32 0, !dbg !354
  %68 = load %struct.libnet_ether_addr*, %struct.libnet_ether_addr** %17, align 8, !dbg !355
  %69 = getelementptr inbounds %struct.libnet_ether_addr, %struct.libnet_ether_addr* %68, i32 0, i32 0, !dbg !356
  %70 = getelementptr inbounds [6 x i8], [6 x i8]* %69, i32 0, i32 0, !dbg !354
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* %70, i64 6, i32 1, i1 false), !dbg !354
  %71 = load i8*, i8** %5, align 8, !dbg !357
  %72 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i32 0, i32 0, !dbg !359
  %73 = call i32 @pcap_lookupnet(i8* %71, i32* @netp, i32* @maskp, i8* %72), !dbg !360
  %74 = icmp eq i32 %73, -1, !dbg !361
  br i1 %74, label %75, label %78, !dbg !362

; <label>:75:                                     ; preds = %66
  %76 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i32 0, i32 0, !dbg !363
  %77 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0), i8* %76), !dbg !365
  br label %78, !dbg !366

; <label>:78:                                     ; preds = %75, %66
  %79 = load %struct.libnet_context*, %struct.libnet_context** %16, align 8, !dbg !367
  %80 = call i32 @libnet_get_ipaddr4(%struct.libnet_context* %79), !dbg !369
  %81 = zext i32 %80 to i64, !dbg !369
  store i64 %81, i64* %10, align 8, !dbg !370
  %82 = icmp eq i64 %81, -1, !dbg !371
  br i1 %82, label %83, label %87, !dbg !372

; <label>:83:                                     ; preds = %78
  %84 = load %struct.libnet_context*, %struct.libnet_context** %16, align 8, !dbg !373
  %85 = call i8* @libnet_geterror(%struct.libnet_context* %84), !dbg !375
  %86 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i32 0, i32 0), i8* %85), !dbg !376
  br label %87, !dbg !378

; <label>:87:                                     ; preds = %83, %78
  %88 = load i64, i64* %6, align 8, !dbg !379
  %89 = icmp eq i64 %88, 0, !dbg !381
  br i1 %89, label %90, label %115, !dbg !382

; <label>:90:                                     ; preds = %87
  %91 = load i16, i16* %7, align 2, !dbg !383
  %92 = zext i16 %91 to i32, !dbg !383
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 1, i32 1, i32 %92, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0)), !dbg !385
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @logd, align 8, !dbg !386
  %94 = call i32 @fflush(%struct._IO_FILE* %93), !dbg !387
  %95 = load i8*, i8** %5, align 8, !dbg !388
  %96 = call %struct.host* @map_lan(i8* %95, i16 zeroext 0, i16* %23), !dbg !390
  store %struct.host* %96, %struct.host** %20, align 8, !dbg !391
  %97 = icmp eq %struct.host* %96, null, !dbg !392
  br i1 %97, label %98, label %103, !dbg !393

; <label>:98:                                     ; preds = %90
  %99 = call i32 (i32, i8*, ...) @w_error(i32 0, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.12, i32 0, i32 0)), !dbg !394
  %100 = icmp eq i32 %99, -1, !dbg !397
  br i1 %100, label %101, label %102, !dbg !398

; <label>:101:                                    ; preds = %98
  store i32 0, i32* %4, align 4, !dbg !399
  br label %366, !dbg !399

; <label>:102:                                    ; preds = %98
  br label %103, !dbg !400

; <label>:103:                                    ; preds = %102, %90
  %104 = load i16, i16* %23, align 2, !dbg !401
  %105 = zext i16 %104 to i32, !dbg !401
  %106 = icmp eq i32 %105, 0, !dbg !403
  br i1 %106, label %107, label %112, !dbg !404

; <label>:107:                                    ; preds = %103
  %108 = call i32 (i32, i8*, ...) @w_error(i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i32 0, i32 0)), !dbg !405
  %109 = icmp eq i32 %108, -1, !dbg !408
  br i1 %109, label %110, label %111, !dbg !409

; <label>:110:                                    ; preds = %107
  store i32 0, i32* %4, align 4, !dbg !410
  br label %366, !dbg !410

; <label>:111:                                    ; preds = %107
  br label %112, !dbg !411

; <label>:112:                                    ; preds = %111, %103
  %113 = load i16, i16* %7, align 2, !dbg !412
  %114 = zext i16 %113 to i32, !dbg !412
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 1, i32 20, i32 %114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0)), !dbg !413
  br label %115, !dbg !414

; <label>:115:                                    ; preds = %112, %87
  %116 = load i64, i64* %6, align 8, !dbg !415
  %117 = icmp ne i64 %116, 0, !dbg !417
  br i1 %117, label %118, label %121, !dbg !418

; <label>:118:                                    ; preds = %115
  store i16 1, i16* %23, align 2, !dbg !419
  %119 = load i16, i16* %7, align 2, !dbg !421
  %120 = zext i16 %119 to i32, !dbg !421
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 1, i32 1, i32 %120, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i32 0, i32 0)), !dbg !422
  br label %121, !dbg !423

; <label>:121:                                    ; preds = %118, %115
  br label %122, !dbg !424

; <label>:122:                                    ; preds = %342, %121
  %123 = load i16, i16* %22, align 2, !dbg !425
  %124 = zext i16 %123 to i32, !dbg !425
  %125 = load i16, i16* %23, align 2, !dbg !427
  %126 = zext i16 %125 to i32, !dbg !427
  %127 = icmp slt i32 %124, %126, !dbg !428
  br i1 %127, label %128, label %347, !dbg !429

; <label>:128:                                    ; preds = %122
  %129 = load i64, i64* %6, align 8, !dbg !430
  %130 = icmp ne i64 %129, 0, !dbg !433
  br i1 %130, label %131, label %144, !dbg !434

; <label>:131:                                    ; preds = %128
  %132 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i32 0, i32 0, !dbg !435
  %133 = bitcast i64* %10 to i8*, !dbg !438
  %134 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i32 0, i32 0, !dbg !439
  %135 = bitcast i64* %6 to i8*, !dbg !440
  %136 = load %struct.libnet_context*, %struct.libnet_context** %16, align 8, !dbg !441
  %137 = call i32 @libnet_build_arp(i16 zeroext 1, i16 zeroext 2048, i8 zeroext 6, i8 zeroext 4, i16 zeroext 1, i8* %132, i8* %133, i8* %134, i8* %135, i8* null, i32 0, %struct.libnet_context* %136, i32 0), !dbg !442
  %138 = icmp eq i32 %137, -1, !dbg !443
  br i1 %138, label %139, label %143, !dbg !444

; <label>:139:                                    ; preds = %131
  %140 = load %struct.libnet_context*, %struct.libnet_context** %16, align 8, !dbg !445
  %141 = call i8* @libnet_geterror(%struct.libnet_context* %140), !dbg !447
  %142 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i32 0, i32 0), i8* %141), !dbg !448
  br label %143, !dbg !450

; <label>:143:                                    ; preds = %139, %131
  br label %162, !dbg !451

; <label>:144:                                    ; preds = %128
  %145 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i32 0, i32 0, !dbg !452
  %146 = bitcast i64* %10 to i8*, !dbg !455
  %147 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i32 0, i32 0, !dbg !456
  %148 = load i16, i16* %22, align 2, !dbg !457
  %149 = zext i16 %148 to i64, !dbg !458
  %150 = load %struct.host*, %struct.host** %20, align 8, !dbg !458
  %151 = getelementptr inbounds %struct.host, %struct.host* %150, i64 %149, !dbg !458
  %152 = getelementptr inbounds %struct.host, %struct.host* %151, i32 0, i32 1, !dbg !459
  %153 = getelementptr inbounds [4 x i8], [4 x i8]* %152, i32 0, i32 0, !dbg !458
  %154 = load %struct.libnet_context*, %struct.libnet_context** %16, align 8, !dbg !460
  %155 = call i32 @libnet_build_arp(i16 zeroext 1, i16 zeroext 2048, i8 zeroext 6, i8 zeroext 4, i16 zeroext 1, i8* %145, i8* %146, i8* %147, i8* %153, i8* null, i32 0, %struct.libnet_context* %154, i32 0), !dbg !461
  %156 = icmp eq i32 %155, -1, !dbg !462
  br i1 %156, label %157, label %161, !dbg !463

; <label>:157:                                    ; preds = %144
  %158 = load %struct.libnet_context*, %struct.libnet_context** %16, align 8, !dbg !464
  %159 = call i8* @libnet_geterror(%struct.libnet_context* %158), !dbg !466
  %160 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i32 0, i32 0), i8* %159), !dbg !467
  br label %161, !dbg !469

; <label>:161:                                    ; preds = %157, %144
  br label %162

; <label>:162:                                    ; preds = %161, %143
  %163 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i32 0, i32 0, !dbg !470
  %164 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i32 0, i32 0, !dbg !472
  %165 = load %struct.libnet_context*, %struct.libnet_context** %16, align 8, !dbg !473
  %166 = call i32 @libnet_build_ethernet(i8* %163, i8* %164, i16 zeroext 2054, i8* null, i32 0, %struct.libnet_context* %165, i32 0), !dbg !474
  %167 = icmp eq i32 %166, -1, !dbg !475
  br i1 %167, label %168, label %172, !dbg !476

; <label>:168:                                    ; preds = %162
  %169 = load %struct.libnet_context*, %struct.libnet_context** %16, align 8, !dbg !477
  %170 = call i8* @libnet_geterror(%struct.libnet_context* %169), !dbg !479
  %171 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i32 0, i32 0), i8* %170), !dbg !480
  br label %172, !dbg !482

; <label>:172:                                    ; preds = %168, %162
  %173 = load i8*, i8** %5, align 8, !dbg !483
  %174 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i32 0, i32 0, !dbg !485
  %175 = call %struct.pcap* @pcap_open_live(i8* %173, i32 8192, i32 0, i32 10, i8* %174), !dbg !486
  store %struct.pcap* %175, %struct.pcap** @descr, align 8, !dbg !487
  %176 = icmp eq %struct.pcap* %175, null, !dbg !488
  br i1 %176, label %177, label %181, !dbg !489

; <label>:177:                                    ; preds = %172
  %178 = load %struct.libnet_context*, %struct.libnet_context** %16, align 8, !dbg !490
  call void @libnet_destroy(%struct.libnet_context* %178), !dbg !492
  %179 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i32 0, i32 0, !dbg !493
  %180 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i32 0, i32 0), i8* %179), !dbg !494
  br label %181, !dbg !495

; <label>:181:                                    ; preds = %177, %172
  %182 = load %struct.pcap*, %struct.pcap** @descr, align 8, !dbg !496
  %183 = load i32, i32* @netp, align 4, !dbg !498
  %184 = call i32 @pcap_compile(%struct.pcap* %182, %struct.bpf_program* @fp, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i32 0, i32 %183), !dbg !499
  %185 = icmp eq i32 %184, -1, !dbg !500
  br i1 %185, label %186, label %191, !dbg !501

; <label>:186:                                    ; preds = %181
  %187 = load %struct.libnet_context*, %struct.libnet_context** %16, align 8, !dbg !502
  call void @libnet_destroy(%struct.libnet_context* %187), !dbg !504
  %188 = load %struct.pcap*, %struct.pcap** @descr, align 8, !dbg !505
  %189 = call i8* @pcap_geterr(%struct.pcap* %188), !dbg !506
  %190 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i8* %189), !dbg !507
  br label %191, !dbg !509

; <label>:191:                                    ; preds = %186, %181
  %192 = load %struct.pcap*, %struct.pcap** @descr, align 8, !dbg !510
  %193 = call i32 @pcap_setfilter(%struct.pcap* %192, %struct.bpf_program* @fp), !dbg !512
  %194 = icmp eq i32 %193, -1, !dbg !513
  br i1 %194, label %195, label %200, !dbg !514

; <label>:195:                                    ; preds = %191
  %196 = load %struct.libnet_context*, %struct.libnet_context** %16, align 8, !dbg !515
  call void @libnet_destroy(%struct.libnet_context* %196), !dbg !517
  %197 = load %struct.pcap*, %struct.pcap** @descr, align 8, !dbg !518
  %198 = call i8* @pcap_geterr(%struct.pcap* %197), !dbg !519
  %199 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i8* %198), !dbg !520
  br label %200, !dbg !522

; <label>:200:                                    ; preds = %195, %191
  %201 = load %struct.pcap*, %struct.pcap** @descr, align 8, !dbg !523
  %202 = call i32 @pcap_fileno(%struct.pcap* %201), !dbg !524
  store i32 %202, i32* %12, align 4, !dbg !525
  %203 = load i64, i64* %6, align 8, !dbg !526
  %204 = icmp ne i64 %203, 0, !dbg !528
  br i1 %204, label %205, label %215, !dbg !529

; <label>:205:                                    ; preds = %200
  %206 = load i32, i32* %13, align 4, !dbg !530
  %207 = load i16, i16* %7, align 2, !dbg !532
  %208 = zext i16 %207 to i32, !dbg !532
  %209 = load i64, i64* %6, align 8, !dbg !533
  %210 = trunc i64 %209 to i32, !dbg !533
  %211 = call i8* @libnet_addr2name4(i32 %210, i8 zeroext 0), !dbg !534
  %212 = load i64, i64* %6, align 8, !dbg !535
  %213 = trunc i64 %212 to i32, !dbg !535
  %214 = call i8* @libnet_addr2name4(i32 %213, i8 zeroext 1), !dbg !536
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %206, i32 1, i32 %208, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i32 0, i32 0), i8* %211, i8* %214), !dbg !538
  br label %257, !dbg !540

; <label>:215:                                    ; preds = %200
  %216 = getelementptr inbounds [16 x i8], [16 x i8]* %24, i32 0, i32 0, !dbg !541
  %217 = load i16, i16* %22, align 2, !dbg !543
  %218 = zext i16 %217 to i64, !dbg !544
  %219 = load %struct.host*, %struct.host** %20, align 8, !dbg !544
  %220 = getelementptr inbounds %struct.host, %struct.host* %219, i64 %218, !dbg !544
  %221 = getelementptr inbounds %struct.host, %struct.host* %220, i32 0, i32 1, !dbg !545
  %222 = getelementptr inbounds [4 x i8], [4 x i8]* %221, i64 0, i64 0, !dbg !544
  %223 = load i8, i8* %222, align 1, !dbg !544
  %224 = zext i8 %223 to i32, !dbg !544
  %225 = load i16, i16* %22, align 2, !dbg !546
  %226 = zext i16 %225 to i64, !dbg !547
  %227 = load %struct.host*, %struct.host** %20, align 8, !dbg !547
  %228 = getelementptr inbounds %struct.host, %struct.host* %227, i64 %226, !dbg !547
  %229 = getelementptr inbounds %struct.host, %struct.host* %228, i32 0, i32 1, !dbg !548
  %230 = getelementptr inbounds [4 x i8], [4 x i8]* %229, i64 0, i64 1, !dbg !547
  %231 = load i8, i8* %230, align 1, !dbg !547
  %232 = zext i8 %231 to i32, !dbg !547
  %233 = load i16, i16* %22, align 2, !dbg !549
  %234 = zext i16 %233 to i64, !dbg !550
  %235 = load %struct.host*, %struct.host** %20, align 8, !dbg !550
  %236 = getelementptr inbounds %struct.host, %struct.host* %235, i64 %234, !dbg !550
  %237 = getelementptr inbounds %struct.host, %struct.host* %236, i32 0, i32 1, !dbg !551
  %238 = getelementptr inbounds [4 x i8], [4 x i8]* %237, i64 0, i64 2, !dbg !550
  %239 = load i8, i8* %238, align 1, !dbg !550
  %240 = zext i8 %239 to i32, !dbg !550
  %241 = load i16, i16* %22, align 2, !dbg !552
  %242 = zext i16 %241 to i64, !dbg !553
  %243 = load %struct.host*, %struct.host** %20, align 8, !dbg !553
  %244 = getelementptr inbounds %struct.host, %struct.host* %243, i64 %242, !dbg !553
  %245 = getelementptr inbounds %struct.host, %struct.host* %244, i32 0, i32 1, !dbg !554
  %246 = getelementptr inbounds [4 x i8], [4 x i8]* %245, i64 0, i64 3, !dbg !553
  %247 = load i8, i8* %246, align 1, !dbg !553
  %248 = zext i8 %247 to i32, !dbg !553
  %249 = call i32 (i8*, i8*, ...) @sprintf(i8* %216, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i32 %224, i32 %232, i32 %240, i32 %248) #6, !dbg !555
  %250 = load i32, i32* %13, align 4, !dbg !556
  %251 = load i16, i16* %7, align 2, !dbg !557
  %252 = zext i16 %251 to i32, !dbg !557
  %253 = getelementptr inbounds [16 x i8], [16 x i8]* %24, i32 0, i32 0, !dbg !558
  %254 = getelementptr inbounds [16 x i8], [16 x i8]* %24, i32 0, i32 0, !dbg !559
  %255 = call i32 @inet_addr(i8* %254) #6, !dbg !560
  %256 = call i8* @libnet_addr2name4(i32 %255, i8 zeroext 1), !dbg !561
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %250, i32 1, i32 %252, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i32 0, i32 0), i8* %253, i8* %256), !dbg !563
  br label %257

; <label>:257:                                    ; preds = %215, %205
  %258 = load %struct._IO_FILE*, %struct._IO_FILE** @logd, align 8, !dbg !565
  %259 = call i32 @fflush(%struct._IO_FILE* %258), !dbg !566
  %260 = load %struct.libnet_context*, %struct.libnet_context** %16, align 8, !dbg !567
  %261 = call i32 @libnet_write(%struct.libnet_context* %260), !dbg !569
  %262 = icmp eq i32 %261, -1, !dbg !570
  br i1 %262, label %263, label %267, !dbg !571

; <label>:263:                                    ; preds = %257
  %264 = load %struct.libnet_context*, %struct.libnet_context** %16, align 8, !dbg !572
  %265 = call i8* @libnet_geterror(%struct.libnet_context* %264), !dbg !574
  %266 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i32 0, i32 0), i8* %265), !dbg !575
  br label %267, !dbg !577

; <label>:267:                                    ; preds = %263, %257
  %268 = load i8*, i8** %5, align 8, !dbg !578
  %269 = load %struct.pcap*, %struct.pcap** @descr, align 8, !dbg !580
  %270 = call i32 @device(i8* %268, %struct.pcap* %269), !dbg !581
  %271 = trunc i32 %270 to i16, !dbg !582
  store i16 %271, i16* @offset, align 2, !dbg !583
  %272 = sext i16 %271 to i32, !dbg !584
  %273 = icmp eq i32 %272, -1, !dbg !585
  br i1 %273, label %274, label %275, !dbg !586

; <label>:274:                                    ; preds = %267
  store i32 -1, i32* %4, align 4, !dbg !587
  br label %366, !dbg !587

; <label>:275:                                    ; preds = %267
  store i16 1, i16* %21, align 2, !dbg !589
  br label %276, !dbg !590

; <label>:276:                                    ; preds = %334, %275
  br label %277, !dbg !591, !llvm.loop !595

; <label>:277:                                    ; preds = %276
  call void @llvm.dbg.declare(metadata i32* %25, metadata !596, metadata !189), !dbg !598
  call void @llvm.dbg.declare(metadata i32* %26, metadata !599, metadata !189), !dbg !600
  %278 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %14, i32 0, i32 0, !dbg !601
  %279 = getelementptr inbounds [16 x i64], [16 x i64]* %278, i64 0, i64 0, !dbg !603
  %280 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %279) #6, !dbg !604, !srcloc !605
  %281 = extractvalue { i64, i64* } %280, 0, !dbg !604
  %282 = extractvalue { i64, i64* } %280, 1, !dbg !604
  %283 = trunc i64 %281 to i32, !dbg !604
  store i32 %283, i32* %25, align 4, !dbg !604
  %284 = ptrtoint i64* %282 to i64, !dbg !604
  %285 = trunc i64 %284 to i32, !dbg !604
  store i32 %285, i32* %26, align 4, !dbg !604
  br label %286, !dbg !606

; <label>:286:                                    ; preds = %277
  %287 = load i32, i32* %12, align 4, !dbg !607
  %288 = srem i32 %287, 64, !dbg !608
  %289 = zext i32 %288 to i64, !dbg !609
  %290 = shl i64 1, %289, !dbg !609
  %291 = load i32, i32* %12, align 4, !dbg !607
  %292 = sdiv i32 %291, 64, !dbg !608
  %293 = sext i32 %292 to i64, !dbg !610
  %294 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %14, i32 0, i32 0, !dbg !611
  %295 = getelementptr inbounds [16 x i64], [16 x i64]* %294, i64 0, i64 %293, !dbg !610
  %296 = load i64, i64* %295, align 8, !dbg !612
  %297 = or i64 %296, %290, !dbg !612
  store i64 %297, i64* %295, align 8, !dbg !612
  %298 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 0, !dbg !613
  store i64 3, i64* %298, align 8, !dbg !614
  %299 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 1, !dbg !615
  store i64 0, i64* %299, align 8, !dbg !616
  %300 = load i32, i32* %12, align 4, !dbg !617
  %301 = add nsw i32 %300, 1, !dbg !619
  %302 = call i32 @select(i32 %301, %struct.fd_set* %14, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* %15), !dbg !620
  %303 = icmp ne i32 %302, 0, !dbg !620
  br i1 %303, label %304, label %308, !dbg !621

; <label>:304:                                    ; preds = %286
  %305 = load i16, i16* %21, align 2, !dbg !622
  %306 = zext i16 %305 to i32, !dbg !622
  %307 = icmp eq i32 %306, 10, !dbg !624
  br i1 %307, label %308, label %312, !dbg !625

; <label>:308:                                    ; preds = %304, %286
  %309 = load i32, i32* %13, align 4, !dbg !626
  %310 = load i16, i16* %7, align 2, !dbg !628
  %311 = zext i16 %310 to i32, !dbg !628
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %309, i32 45, i32 %311, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0)), !dbg !629
  br label %337, !dbg !630

; <label>:312:                                    ; preds = %304
  %313 = load %struct.pcap*, %struct.pcap** @descr, align 8, !dbg !631
  %314 = call i8* @pcap_next(%struct.pcap* %313, %struct.pcap_pkthdr* @hdr), !dbg !633
  store i8* %314, i8** %19, align 8, !dbg !634
  %315 = icmp ne i8* %314, null, !dbg !635
  br i1 %315, label %316, label %334, !dbg !636

; <label>:316:                                    ; preds = %312
  %317 = load i8*, i8** %19, align 8, !dbg !637
  %318 = load i16, i16* @offset, align 2, !dbg !639
  %319 = sext i16 %318 to i32, !dbg !639
  %320 = sext i32 %319 to i64, !dbg !640
  %321 = getelementptr inbounds i8, i8* %317, i64 %320, !dbg !640
  %322 = bitcast i8* %321 to %struct.nast_arp_hdr*, !dbg !641
  store %struct.nast_arp_hdr* %322, %struct.nast_arp_hdr** %18, align 8, !dbg !642
  %323 = load %struct.nast_arp_hdr*, %struct.nast_arp_hdr** %18, align 8, !dbg !643
  %324 = getelementptr inbounds %struct.nast_arp_hdr, %struct.nast_arp_hdr* %323, i32 0, i32 4, !dbg !645
  %325 = load i16, i16* %324, align 2, !dbg !645
  %326 = call zeroext i16 @ntohs(i16 zeroext %325) #1, !dbg !646
  %327 = zext i16 %326 to i32, !dbg !646
  %328 = icmp eq i32 %327, 2, !dbg !647
  br i1 %328, label %329, label %333, !dbg !648

; <label>:329:                                    ; preds = %316
  %330 = load i32, i32* %13, align 4, !dbg !649
  %331 = load i16, i16* %7, align 2, !dbg !651
  %332 = zext i16 %331 to i32, !dbg !651
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %330, i32 45, i32 %332, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0)), !dbg !652
  br label %337, !dbg !653

; <label>:333:                                    ; preds = %316
  br label %334, !dbg !654

; <label>:334:                                    ; preds = %333, %312
  %335 = load i16, i16* %21, align 2, !dbg !655
  %336 = add i16 %335, 1, !dbg !655
  store i16 %336, i16* %21, align 2, !dbg !655
  br label %276, !dbg !656, !llvm.loop !658

; <label>:337:                                    ; preds = %329, %308
  %338 = load %struct.pcap*, %struct.pcap** @descr, align 8, !dbg !659
  %339 = icmp ne %struct.pcap* %338, null, !dbg !659
  br i1 %339, label %340, label %342, !dbg !661

; <label>:340:                                    ; preds = %337
  %341 = load %struct.pcap*, %struct.pcap** @descr, align 8, !dbg !662
  call void @pcap_close(%struct.pcap* %341), !dbg !664
  br label %342, !dbg !664

; <label>:342:                                    ; preds = %340, %337
  %343 = load i16, i16* %22, align 2, !dbg !665
  %344 = add i16 %343, 1, !dbg !665
  store i16 %344, i16* %22, align 2, !dbg !665
  %345 = load i32, i32* %13, align 4, !dbg !666
  %346 = add nsw i32 %345, 1, !dbg !666
  store i32 %346, i32* %13, align 4, !dbg !666
  br label %122, !dbg !667, !llvm.loop !669

; <label>:347:                                    ; preds = %122
  %348 = load %struct.libnet_context*, %struct.libnet_context** %16, align 8, !dbg !670
  %349 = icmp ne %struct.libnet_context* %348, null, !dbg !670
  br i1 %349, label %350, label %352, !dbg !672

; <label>:350:                                    ; preds = %347
  %351 = load %struct.libnet_context*, %struct.libnet_context** %16, align 8, !dbg !673
  call void @libnet_destroy(%struct.libnet_context* %351), !dbg !675
  br label %352, !dbg !675

; <label>:352:                                    ; preds = %350, %347
  %353 = load i16, i16* %7, align 2, !dbg !676
  %354 = icmp ne i16 %353, 0, !dbg !676
  br i1 %354, label %355, label %360, !dbg !678

; <label>:355:                                    ; preds = %352
  %356 = load i16, i16* %7, align 2, !dbg !679
  %357 = zext i16 %356 to i32, !dbg !679
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* null, i32 0, i32 0, i32 %357, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0)), !dbg !681
  %358 = load %struct._IO_FILE*, %struct._IO_FILE** @logd, align 8, !dbg !682
  %359 = call i32 @fclose(%struct._IO_FILE* %358), !dbg !683
  br label %365, !dbg !684

; <label>:360:                                    ; preds = %352
  %361 = load i16, i16* %7, align 2, !dbg !685
  %362 = zext i16 %361 to i32, !dbg !685
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 1, i32 1, i32 %362, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.27, i32 0, i32 0)), !dbg !687
  %363 = load i16, i16* %7, align 2, !dbg !688
  %364 = zext i16 %363 to i32, !dbg !688
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 1, i32 1, i32 %364, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0)), !dbg !689
  br label %365

; <label>:365:                                    ; preds = %360, %355
  store i32 0, i32* %4, align 4, !dbg !690
  br label %366, !dbg !690

; <label>:366:                                    ; preds = %365, %274, %110, %101
  %367 = load i32, i32* %4, align 4, !dbg !691
  ret i32 %367, !dbg !691
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

declare void @openfile() #3

declare void @n_print(i8*, i32, i32, i32, i8*, ...) #3

declare i32 @fflush(%struct._IO_FILE*) #3

declare void @init_scr() #3

declare i32 @w_error(i32, i8*, ...) #3

declare %struct.libnet_context* @libnet_init(i32, i8*, i8*) #3

declare %struct.libnet_ether_addr* @libnet_get_hwaddr(%struct.libnet_context*) #3

declare i8* @libnet_geterror(%struct.libnet_context*) #3

declare i32 @pcap_lookupnet(i8*, i32*, i32*, i8*) #3

declare i32 @libnet_get_ipaddr4(%struct.libnet_context*) #3

declare %struct.host* @map_lan(i8*, i16 zeroext, i16*) #3

declare i32 @libnet_build_arp(i16 zeroext, i16 zeroext, i8 zeroext, i8 zeroext, i16 zeroext, i8*, i8*, i8*, i8*, i8*, i32, %struct.libnet_context*, i32) #3

declare i32 @libnet_build_ethernet(i8*, i8*, i16 zeroext, i8*, i32, %struct.libnet_context*, i32) #3

declare %struct.pcap* @pcap_open_live(i8*, i32, i32, i32, i8*) #3

declare void @libnet_destroy(%struct.libnet_context*) #3

declare i32 @pcap_compile(%struct.pcap*, %struct.bpf_program*, i8*, i32, i32) #3

declare i8* @pcap_geterr(%struct.pcap*) #3

declare i32 @pcap_setfilter(%struct.pcap*, %struct.bpf_program*) #3

declare i32 @pcap_fileno(%struct.pcap*) #3

declare i8* @libnet_addr2name4(i32, i8 zeroext) #3

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

; Function Attrs: nounwind
declare i32 @inet_addr(i8*) #4

declare i32 @libnet_write(%struct.libnet_context*) #3

declare i32 @device(i8*, %struct.pcap*) #3

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #3

declare i8* @pcap_next(%struct.pcap*, %struct.pcap_pkthdr*) #3

; Function Attrs: nounwind readnone
declare zeroext i16 @ntohs(i16 zeroext) #5

declare void @pcap_close(%struct.pcap*) #3

declare i32 @fclose(%struct._IO_FILE*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { argmemonly nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!179, !180}
!llvm.ident = !{!181}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !35)
!1 = !DIFile(filename: "[inter]prom.o.i", directory: "/home/lichi/Desktop/nast/[task]nast")
!2 = !{}
!3 = !{!4, !5, !11, !14, !15}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !7, line: 33, baseType: !8)
!7 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !9, line: 30, baseType: !10)
!9 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!10 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fd_mask", file: !12, line: 54, baseType: !13)
!12 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/select.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!13 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!14 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nast_arp_hdr", file: !17, line: 27, size: 224, align: 16, elements: !18)
!17 = !DIFile(filename: "include/ARPhdr.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!18 = !{!19, !21, !22, !23, !24, !25, !29, !33, !34}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "ar_hrd", scope: !16, file: !17, line: 29, baseType: !20, size: 16, align: 16)
!20 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "ar_pro", scope: !16, file: !17, line: 30, baseType: !20, size: 16, align: 16, offset: 16)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "ar_hln", scope: !16, file: !17, line: 31, baseType: !10, size: 8, align: 8, offset: 32)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "ar_pln", scope: !16, file: !17, line: 32, baseType: !10, size: 8, align: 8, offset: 40)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "ar_op", scope: !16, file: !17, line: 33, baseType: !20, size: 16, align: 16, offset: 48)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "__ar_sha", scope: !16, file: !17, line: 35, baseType: !26, size: 48, align: 8, offset: 64)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 48, align: 8, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 6)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "__ar_sip", scope: !16, file: !17, line: 36, baseType: !30, size: 32, align: 8, offset: 112)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 32, align: 8, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 4)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "__ar_tha", scope: !16, file: !17, line: 37, baseType: !26, size: 48, align: 8, offset: 144)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "__ar_tip", scope: !16, file: !17, line: 38, baseType: !30, size: 32, align: 8, offset: 192)
!35 = !{!36, !96, !98, !99, !100, !101, !120, !124, !128, !134, !135, !136, !137, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !168, !169, !172, !176, !177, !178}
!36 = distinct !DIGlobalVariable(name: "logd", scope: !0, file: !37, line: 98, type: !38, isLocal: false, isDefinition: true, variable: %struct._IO_FILE** @logd)
!37 = !DIFile(filename: "include/nast.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !40, line: 48, baseType: !41)
!40 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !42, line: 241, size: 1728, align: 64, elements: !43)
!42 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!43 = !{!44, !45, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !66, !67, !68, !69, !71, !72, !74, !78, !81, !83, !84, !85, !86, !87, !91, !92}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !41, file: !42, line: 242, baseType: !14, size: 32, align: 32)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !41, file: !42, line: 247, baseType: !46, size: 64, align: 64, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !41, file: !42, line: 248, baseType: !46, size: 64, align: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !41, file: !42, line: 249, baseType: !46, size: 64, align: 64, offset: 192)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !41, file: !42, line: 250, baseType: !46, size: 64, align: 64, offset: 256)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !41, file: !42, line: 251, baseType: !46, size: 64, align: 64, offset: 320)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !41, file: !42, line: 252, baseType: !46, size: 64, align: 64, offset: 384)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !41, file: !42, line: 253, baseType: !46, size: 64, align: 64, offset: 448)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !41, file: !42, line: 254, baseType: !46, size: 64, align: 64, offset: 512)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !41, file: !42, line: 256, baseType: !46, size: 64, align: 64, offset: 576)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !41, file: !42, line: 257, baseType: !46, size: 64, align: 64, offset: 640)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !41, file: !42, line: 258, baseType: !46, size: 64, align: 64, offset: 704)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !41, file: !42, line: 260, baseType: !59, size: 64, align: 64, offset: 768)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !42, line: 156, size: 192, align: 64, elements: !61)
!61 = !{!62, !63, !65}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !60, file: !42, line: 157, baseType: !59, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !60, file: !42, line: 158, baseType: !64, size: 64, align: 64, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !60, file: !42, line: 162, baseType: !14, size: 32, align: 32, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !41, file: !42, line: 262, baseType: !64, size: 64, align: 64, offset: 832)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !41, file: !42, line: 264, baseType: !14, size: 32, align: 32, offset: 896)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !41, file: !42, line: 268, baseType: !14, size: 32, align: 32, offset: 928)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !41, file: !42, line: 270, baseType: !70, size: 64, align: 64, offset: 960)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !9, line: 131, baseType: !13)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !41, file: !42, line: 274, baseType: !20, size: 16, align: 16, offset: 1024)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !41, file: !42, line: 275, baseType: !73, size: 8, align: 8, offset: 1040)
!73 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !41, file: !42, line: 276, baseType: !75, size: 8, align: 8, offset: 1048)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 8, align: 8, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 1)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !41, file: !42, line: 280, baseType: !79, size: 64, align: 64, offset: 1088)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !42, line: 150, baseType: null)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !41, file: !42, line: 289, baseType: !82, size: 64, align: 64, offset: 1152)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !9, line: 132, baseType: !13)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !41, file: !42, line: 297, baseType: !4, size: 64, align: 64, offset: 1216)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !41, file: !42, line: 298, baseType: !4, size: 64, align: 64, offset: 1280)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !41, file: !42, line: 299, baseType: !4, size: 64, align: 64, offset: 1344)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !41, file: !42, line: 300, baseType: !4, size: 64, align: 64, offset: 1408)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !41, file: !42, line: 302, baseType: !88, size: 64, align: 64, offset: 1472)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !89, line: 216, baseType: !90)
!89 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!90 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !41, file: !42, line: 303, baseType: !14, size: 32, align: 32, offset: 1536)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !41, file: !42, line: 305, baseType: !93, size: 160, align: 8, offset: 1568)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 160, align: 8, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 20)
!96 = distinct !DIGlobalVariable(name: "offset", scope: !0, file: !37, line: 99, type: !97, isLocal: false, isDefinition: true, variable: i16* @offset)
!97 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!98 = distinct !DIGlobalVariable(name: "npkt", scope: !0, file: !37, line: 100, type: !14, isLocal: false, isDefinition: true, variable: i32* @npkt)
!99 = distinct !DIGlobalVariable(name: "packet", scope: !0, file: !37, line: 101, type: !5, isLocal: false, isDefinition: true, variable: i8** @packet)
!100 = distinct !DIGlobalVariable(name: "buf", scope: !0, file: !37, line: 102, type: !5, isLocal: false, isDefinition: true, variable: i8** @buf)
!101 = distinct !DIGlobalVariable(name: "hdr", scope: !0, file: !37, line: 103, type: !102, isLocal: false, isDefinition: true, variable: %struct.pcap_pkthdr* @hdr)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcap_pkthdr", file: !103, line: 199, size: 192, align: 64, elements: !104)
!103 = !DIFile(filename: "/usr/local/include/pcap/pcap.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!104 = !{!105, !113, !119}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !102, file: !103, line: 200, baseType: !106, size: 128, align: 64)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !107, line: 30, size: 128, align: 64, elements: !108)
!107 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!108 = !{!109, !111}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !106, file: !107, line: 32, baseType: !110, size: 64, align: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !9, line: 139, baseType: !13)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !106, file: !107, line: 33, baseType: !112, size: 64, align: 64, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !9, line: 141, baseType: !13)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "caplen", scope: !102, file: !103, line: 201, baseType: !114, size: 32, align: 32, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "bpf_u_int32", file: !115, line: 85, baseType: !116)
!115 = !DIFile(filename: "/usr/local/include/pcap/bpf.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !7, line: 35, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_int", file: !9, line: 32, baseType: !118)
!118 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !102, file: !103, line: 202, baseType: !114, size: 32, align: 32, offset: 160)
!120 = distinct !DIGlobalVariable(name: "descr", scope: !0, file: !37, line: 104, type: !121, isLocal: false, isDefinition: true, variable: %struct.pcap** @descr)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "pcap_t", file: !103, line: 118, baseType: !123)
!123 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcap", file: !103, line: 118, flags: DIFlagFwdDecl)
!124 = distinct !DIGlobalVariable(name: "dumper", scope: !0, file: !37, line: 105, type: !125, isLocal: false, isDefinition: true, variable: %struct.pcap_dumper** @dumper)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "pcap_dumper_t", file: !103, line: 119, baseType: !127)
!127 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcap_dumper", file: !103, line: 119, flags: DIFlagFwdDecl)
!128 = distinct !DIGlobalVariable(name: "statistic", scope: !0, file: !37, line: 106, type: !129, isLocal: false, isDefinition: true, variable: %struct.pcap_stat* @statistic)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcap_stat", file: !103, line: 208, size: 96, align: 32, elements: !130)
!130 = !{!131, !132, !133}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "ps_recv", scope: !129, file: !103, line: 209, baseType: !116, size: 32, align: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "ps_drop", scope: !129, file: !103, line: 210, baseType: !116, size: 32, align: 32, offset: 32)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "ps_ifdrop", scope: !129, file: !103, line: 211, baseType: !116, size: 32, align: 32, offset: 64)
!134 = distinct !DIGlobalVariable(name: "maskp", scope: !0, file: !37, line: 107, type: !114, isLocal: false, isDefinition: true, variable: i32* @maskp)
!135 = distinct !DIGlobalVariable(name: "netp", scope: !0, file: !37, line: 108, type: !114, isLocal: false, isDefinition: true, variable: i32* @netp)
!136 = distinct !DIGlobalVariable(name: "datalink", scope: !0, file: !37, line: 109, type: !14, isLocal: false, isDefinition: true, variable: i32* @datalink)
!137 = distinct !DIGlobalVariable(name: "fp", scope: !0, file: !37, line: 110, type: !138, isLocal: false, isDefinition: true, variable: %struct.bpf_program* @fp)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_program", file: !115, line: 104, size: 128, align: 64, elements: !139)
!139 = !{!140, !141}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "bf_len", scope: !138, file: !115, line: 105, baseType: !116, size: 32, align: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "bf_insns", scope: !138, file: !115, line: 106, baseType: !142, size: 64, align: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64, align: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_insn", file: !115, line: 234, size: 64, align: 32, elements: !144)
!144 = !{!145, !148, !149, !150}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !143, file: !115, line: 235, baseType: !146, size: 16, align: 16)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_short", file: !7, line: 34, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_short", file: !9, line: 31, baseType: !20)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "jt", scope: !143, file: !115, line: 236, baseType: !6, size: 8, align: 8, offset: 16)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "jf", scope: !143, file: !115, line: 237, baseType: !6, size: 8, align: 8, offset: 24)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !143, file: !115, line: 238, baseType: !114, size: 32, align: 32, offset: 32)
!151 = distinct !DIGlobalVariable(name: "logname", scope: !0, file: !37, line: 111, type: !46, isLocal: false, isDefinition: true, variable: i8** @logname)
!152 = distinct !DIGlobalVariable(name: "tcpdl", scope: !0, file: !37, line: 112, type: !46, isLocal: false, isDefinition: true, variable: i8** @tcpdl)
!153 = distinct !DIGlobalVariable(name: "tr", scope: !0, file: !37, line: 113, type: !146, isLocal: false, isDefinition: true, variable: i16* @tr)
!154 = distinct !DIGlobalVariable(name: "tl", scope: !0, file: !37, line: 113, type: !146, isLocal: false, isDefinition: true, variable: i16* @tl)
!155 = distinct !DIGlobalVariable(name: "graph", scope: !0, file: !37, line: 114, type: !146, isLocal: false, isDefinition: true, variable: i16* @graph)
!156 = distinct !DIGlobalVariable(name: "cont", scope: !0, file: !37, line: 115, type: !146, isLocal: false, isDefinition: true, variable: i16* @cont)
!157 = distinct !DIGlobalVariable(name: "stream_glob", scope: !0, file: !37, line: 117, type: !14, isLocal: false, isDefinition: true, variable: i32* @stream_glob)
!158 = distinct !DIGlobalVariable(name: "bc_glob", scope: !0, file: !37, line: 118, type: !14, isLocal: false, isDefinition: true, variable: i32* @bc_glob)
!159 = distinct !DIGlobalVariable(name: "sniff_glob", scope: !0, file: !37, line: 119, type: !14, isLocal: false, isDefinition: true, variable: i32* @sniff_glob)
!160 = distinct !DIGlobalVariable(name: "rst_glob", scope: !0, file: !37, line: 120, type: !14, isLocal: false, isDefinition: true, variable: i32* @rst_glob)
!161 = distinct !DIGlobalVariable(name: "arp_glob", scope: !0, file: !37, line: 121, type: !14, isLocal: false, isDefinition: true, variable: i32* @arp_glob)
!162 = distinct !DIGlobalVariable(name: "pt", scope: !0, file: !37, line: 122, type: !163, isLocal: false, isDefinition: true, variable: [2 x i64]* @pt)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 128, align: 64, elements: !166)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !165, line: 60, baseType: !90)
!165 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!166 = !{!167}
!167 = !DISubrange(count: 2)
!168 = distinct !DIGlobalVariable(name: "lg", scope: !0, file: !37, line: 123, type: !14, isLocal: false, isDefinition: true, variable: i32* @lg)
!169 = distinct !DIGlobalVariable(name: "tm", scope: !0, file: !37, line: 132, type: !170, isLocal: false, isDefinition: true, variable: i64* @tm)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !171, line: 75, baseType: !110)
!171 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!172 = distinct !DIGlobalVariable(name: "timed", scope: !0, file: !37, line: 133, type: !173, isLocal: false, isDefinition: true, variable: [60 x i8]* @timed)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 480, align: 8, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 60)
!176 = distinct !DIGlobalVariable(name: "demonize", scope: !0, file: !37, line: 136, type: !146, isLocal: false, isDefinition: true, variable: i16* @demonize)
!177 = distinct !DIGlobalVariable(name: "line_s", scope: !0, file: !37, line: 138, type: !14, isLocal: false, isDefinition: true, variable: i32* @line_s)
!178 = distinct !DIGlobalVariable(name: "row_s", scope: !0, file: !37, line: 139, type: !14, isLocal: false, isDefinition: true, variable: i32* @row_s)
!179 = !{i32 2, !"Dwarf Version", i32 4}
!180 = !{i32 2, !"Debug Info Version", i32 3}
!181 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!182 = distinct !DISubprogram(name: "psearch", scope: !183, file: !183, line: 24, type: !184, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!183 = !DIFile(filename: "prom.c", directory: "/home/lichi/Desktop/nast/[task]nast")
!184 = !DISubroutineType(types: !185)
!185 = !{!14, !46, !186, !146}
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_long", file: !7, line: 36, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_long", file: !9, line: 33, baseType: !90)
!188 = !DILocalVariable(name: "dev", arg: 1, scope: !182, file: !183, line: 24, type: !46)
!189 = !DIExpression()
!190 = !DILocation(line: 24, column: 20, scope: !182)
!191 = !DILocalVariable(name: "ip_dst", arg: 2, scope: !182, file: !183, line: 24, type: !186)
!192 = !DILocation(line: 24, column: 32, scope: !182)
!193 = !DILocalVariable(name: "lg", arg: 3, scope: !182, file: !183, line: 24, type: !146)
!194 = !DILocation(line: 24, column: 48, scope: !182)
!195 = !DILocalVariable(name: "enet_dst", scope: !182, file: !183, line: 26, type: !196)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 48, align: 8, elements: !27)
!197 = !DILocation(line: 26, column: 11, scope: !182)
!198 = !DILocalVariable(name: "enet_src", scope: !182, file: !183, line: 30, type: !196)
!199 = !DILocation(line: 30, column: 11, scope: !182)
!200 = !DILocalVariable(name: "ip_src", scope: !182, file: !183, line: 31, type: !186)
!201 = !DILocation(line: 31, column: 11, scope: !182)
!202 = !DILocalVariable(name: "errbuf", scope: !182, file: !183, line: 32, type: !203)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 2048, align: 8, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 256)
!206 = !DILocation(line: 32, column: 9, scope: !182)
!207 = !DILocalVariable(name: "sd", scope: !182, file: !183, line: 33, type: !14)
!208 = !DILocation(line: 33, column: 8, scope: !182)
!209 = !DILocalVariable(name: "ln", scope: !182, file: !183, line: 33, type: !14)
!210 = !DILocation(line: 33, column: 11, scope: !182)
!211 = !DILocalVariable(name: "rfsd", scope: !182, file: !183, line: 34, type: !212)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "fd_set", file: !12, line: 75, baseType: !213)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 64, size: 1024, align: 64, elements: !214)
!214 = !{!215}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "__fds_bits", scope: !213, file: !12, line: 72, baseType: !216, size: 1024, align: 64)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 1024, align: 64, elements: !217)
!217 = !{!218}
!218 = !DISubrange(count: 16)
!219 = !DILocation(line: 34, column: 11, scope: !182)
!220 = !DILocalVariable(name: "tv", scope: !182, file: !183, line: 35, type: !106)
!221 = !DILocation(line: 35, column: 19, scope: !182)
!222 = !DILocalVariable(name: "l", scope: !182, file: !183, line: 36, type: !223)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, align: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "libnet_t", file: !225, line: 235, baseType: !226)
!225 = !DIFile(filename: "/usr/local/include/libnet/libnet-structures.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_context", file: !225, line: 186, size: 3200, align: 64, elements: !227)
!227 = !{!228, !229, !230, !252, !253, !254, !255, !256, !257, !258, !265, !266, !270, !271}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !226, file: !225, line: 192, baseType: !14, size: 32, align: 32)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "injection_type", scope: !226, file: !225, line: 194, baseType: !14, size: 32, align: 32, offset: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_blocks", scope: !226, file: !225, line: 206, baseType: !231, size: 64, align: 64, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64, align: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "libnet_pblock_t", file: !225, line: 178, baseType: !233)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_protocol_block", file: !225, line: 77, size: 384, align: 64, elements: !234)
!234 = !{!235, !239, !241, !243, !244, !245, !246, !249, !251}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !233, file: !225, line: 79, baseType: !236, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64, align: 64)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !238, line: 48, baseType: !10)
!238 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!239 = !DIDerivedType(tag: DW_TAG_member, name: "b_len", scope: !233, file: !225, line: 80, baseType: !240, size: 32, align: 32, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !238, line: 51, baseType: !118)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "h_len", scope: !233, file: !225, line: 81, baseType: !242, size: 16, align: 16, offset: 96)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !238, line: 49, baseType: !20)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "copied", scope: !233, file: !225, line: 92, baseType: !240, size: 32, align: 32, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !233, file: !225, line: 94, baseType: !237, size: 8, align: 8, offset: 160)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !233, file: !225, line: 168, baseType: !237, size: 8, align: 8, offset: 168)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "ptag", scope: !233, file: !225, line: 170, baseType: !247, size: 32, align: 32, offset: 192)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "libnet_ptag_t", file: !225, line: 70, baseType: !248)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !7, line: 196, baseType: !14)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !233, file: !225, line: 175, baseType: !250, size: 64, align: 64, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !233, file: !225, line: 176, baseType: !250, size: 64, align: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "pblock_end", scope: !226, file: !225, line: 207, baseType: !231, size: 64, align: 64, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "n_pblocks", scope: !226, file: !225, line: 208, baseType: !240, size: 32, align: 32, offset: 192)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "link_type", scope: !226, file: !225, line: 210, baseType: !14, size: 32, align: 32, offset: 224)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "link_offset", scope: !226, file: !225, line: 224, baseType: !14, size: 32, align: 32, offset: 256)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "aligner", scope: !226, file: !225, line: 225, baseType: !14, size: 32, align: 32, offset: 288)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !226, file: !225, line: 226, baseType: !46, size: 64, align: 64, offset: 320)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !226, file: !225, line: 228, baseType: !259, size: 192, align: 64, offset: 384)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_stats", file: !225, line: 52, size: 192, align: 64, elements: !260)
!260 = !{!261, !263, !264}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "packets_sent", scope: !259, file: !225, line: 55, baseType: !262, size: 64, align: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !238, line: 55, baseType: !90)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "packet_errors", scope: !259, file: !225, line: 56, baseType: !262, size: 64, align: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_written", scope: !259, file: !225, line: 57, baseType: !262, size: 64, align: 64, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "ptag_state", scope: !226, file: !225, line: 229, baseType: !247, size: 32, align: 32, offset: 576)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !226, file: !225, line: 230, baseType: !267, size: 512, align: 8, offset: 608)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 512, align: 8, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "err_buf", scope: !226, file: !225, line: 232, baseType: !203, size: 2048, align: 8, offset: 1120)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "total_size", scope: !226, file: !225, line: 233, baseType: !240, size: 32, align: 32, offset: 3168)
!272 = !DILocation(line: 36, column: 14, scope: !182)
!273 = !DILocalVariable(name: "e", scope: !182, file: !183, line: 37, type: !274)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64, align: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_ether_addr", file: !276, line: 530, size: 48, align: 8, elements: !277)
!276 = !DIFile(filename: "/usr/local/include/libnet/libnet-headers.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!277 = !{!278}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "ether_addr_octet", scope: !275, file: !276, line: 532, baseType: !279, size: 48, align: 8)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 48, align: 8, elements: !27)
!280 = !DILocation(line: 37, column: 30, scope: !182)
!281 = !DILocalVariable(name: "arp", scope: !182, file: !183, line: 38, type: !15)
!282 = !DILocation(line: 38, column: 25, scope: !182)
!283 = !DILocalVariable(name: "pkt", scope: !182, file: !183, line: 39, type: !5)
!284 = !DILocation(line: 39, column: 12, scope: !182)
!285 = !DILocalVariable(name: "uphost", scope: !182, file: !183, line: 40, type: !286)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64, align: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "host", file: !37, line: 125, size: 80, align: 8, elements: !288)
!288 = !{!289, !290}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "mac", scope: !287, file: !37, line: 127, baseType: !26, size: 48, align: 8)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !287, file: !37, line: 128, baseType: !30, size: 32, align: 8, offset: 48)
!291 = !DILocation(line: 40, column: 17, scope: !182)
!292 = !DILocalVariable(name: "pcount", scope: !182, file: !183, line: 41, type: !146)
!293 = !DILocation(line: 41, column: 12, scope: !182)
!294 = !DILocalVariable(name: "i", scope: !182, file: !183, line: 41, type: !146)
!295 = !DILocation(line: 41, column: 20, scope: !182)
!296 = !DILocalVariable(name: "k", scope: !182, file: !183, line: 41, type: !146)
!297 = !DILocation(line: 41, column: 23, scope: !182)
!298 = !DILocalVariable(name: "ip", scope: !182, file: !183, line: 42, type: !299)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 128, align: 8, elements: !217)
!300 = !DILocation(line: 42, column: 11, scope: !182)
!301 = !DILocation(line: 44, column: 10, scope: !182)
!302 = !DILocation(line: 44, column: 6, scope: !182)
!303 = !DILocation(line: 45, column: 7, scope: !182)
!304 = !DILocation(line: 47, column: 8, scope: !305)
!305 = distinct !DILexicalBlock(scope: !182, file: !183, line: 47, column: 8)
!306 = !DILocation(line: 47, column: 8, scope: !182)
!307 = !DILocation(line: 49, column: 2, scope: !308)
!308 = distinct !DILexicalBlock(scope: !305, file: !183, line: 48, column: 6)
!309 = !DILocation(line: 50, column: 19, scope: !308)
!310 = !DILocation(line: 50, column: 2, scope: !308)
!311 = !DILocation(line: 51, column: 9, scope: !308)
!312 = !DILocation(line: 51, column: 2, scope: !308)
!313 = !DILocation(line: 52, column: 19, scope: !308)
!314 = !DILocation(line: 52, column: 2, scope: !308)
!315 = !DILocation(line: 53, column: 19, scope: !308)
!316 = !DILocation(line: 53, column: 2, scope: !308)
!317 = !DILocation(line: 54, column: 6, scope: !308)
!318 = !DILocation(line: 57, column: 8, scope: !319)
!319 = distinct !DILexicalBlock(scope: !182, file: !183, line: 57, column: 8)
!320 = !DILocation(line: 57, column: 8, scope: !182)
!321 = !DILocation(line: 58, column: 6, scope: !319)
!322 = !DILocation(line: 62, column: 8, scope: !323)
!323 = distinct !DILexicalBlock(scope: !182, file: !183, line: 62, column: 8)
!324 = !DILocation(line: 62, column: 8, scope: !182)
!325 = !DILocation(line: 64, column: 2, scope: !326)
!326 = distinct !DILexicalBlock(scope: !323, file: !183, line: 63, column: 6)
!327 = !DILocation(line: 65, column: 10, scope: !326)
!328 = !DILocation(line: 66, column: 6, scope: !326)
!329 = !DILocation(line: 69, column: 22, scope: !182)
!330 = !DILocation(line: 69, column: 4, scope: !182)
!331 = !DILocation(line: 71, column: 38, scope: !332)
!332 = distinct !DILexicalBlock(scope: !182, file: !183, line: 71, column: 8)
!333 = !DILocation(line: 71, column: 43, scope: !332)
!334 = !DILocation(line: 71, column: 13, scope: !332)
!335 = !DILocation(line: 71, column: 11, scope: !332)
!336 = !DILocation(line: 71, column: 51, scope: !332)
!337 = !DILocation(line: 71, column: 8, scope: !182)
!338 = !DILocation(line: 73, column: 43, scope: !339)
!339 = distinct !DILexicalBlock(scope: !332, file: !183, line: 72, column: 6)
!340 = !DILocation(line: 73, column: 9, scope: !339)
!341 = !DILocation(line: 74, column: 6, scope: !339)
!342 = !DILocation(line: 76, column: 31, scope: !343)
!343 = distinct !DILexicalBlock(scope: !182, file: !183, line: 76, column: 8)
!344 = !DILocation(line: 76, column: 13, scope: !343)
!345 = !DILocation(line: 76, column: 11, scope: !343)
!346 = !DILocation(line: 76, column: 34, scope: !343)
!347 = !DILocation(line: 76, column: 8, scope: !182)
!348 = !DILocation(line: 78, column: 67, scope: !349)
!349 = distinct !DILexicalBlock(scope: !343, file: !183, line: 77, column: 6)
!350 = !DILocation(line: 78, column: 51, scope: !349)
!351 = !DILocation(line: 78, column: 2, scope: !352)
!352 = !DILexicalBlockFile(scope: !349, file: !183, discriminator: 1)
!353 = !DILocation(line: 79, column: 6, scope: !349)
!354 = !DILocation(line: 81, column: 4, scope: !182)
!355 = !DILocation(line: 81, column: 22, scope: !182)
!356 = !DILocation(line: 81, column: 25, scope: !182)
!357 = !DILocation(line: 83, column: 24, scope: !358)
!358 = distinct !DILexicalBlock(scope: !182, file: !183, line: 83, column: 8)
!359 = !DILocation(line: 83, column: 44, scope: !358)
!360 = !DILocation(line: 83, column: 9, scope: !358)
!361 = !DILocation(line: 83, column: 52, scope: !358)
!362 = !DILocation(line: 83, column: 8, scope: !182)
!363 = !DILocation(line: 85, column: 43, scope: !364)
!364 = distinct !DILexicalBlock(scope: !358, file: !183, line: 84, column: 6)
!365 = !DILocation(line: 85, column: 2, scope: !364)
!366 = !DILocation(line: 86, column: 6, scope: !364)
!367 = !DILocation(line: 88, column: 37, scope: !368)
!368 = distinct !DILexicalBlock(scope: !182, file: !183, line: 88, column: 8)
!369 = !DILocation(line: 88, column: 18, scope: !368)
!370 = !DILocation(line: 88, column: 16, scope: !368)
!371 = !DILocation(line: 88, column: 40, scope: !368)
!372 = !DILocation(line: 88, column: 8, scope: !182)
!373 = !DILocation(line: 90, column: 68, scope: !374)
!374 = distinct !DILexicalBlock(scope: !368, file: !183, line: 89, column: 6)
!375 = !DILocation(line: 90, column: 52, scope: !374)
!376 = !DILocation(line: 90, column: 2, scope: !377)
!377 = !DILexicalBlockFile(scope: !374, file: !183, discriminator: 1)
!378 = !DILocation(line: 91, column: 6, scope: !374)
!379 = !DILocation(line: 95, column: 8, scope: !380)
!380 = distinct !DILexicalBlock(scope: !182, file: !183, line: 95, column: 8)
!381 = !DILocation(line: 95, column: 14, scope: !380)
!382 = !DILocation(line: 95, column: 8, scope: !182)
!383 = !DILocation(line: 97, column: 23, scope: !384)
!384 = distinct !DILexicalBlock(scope: !380, file: !183, line: 96, column: 6)
!385 = !DILocation(line: 97, column: 2, scope: !384)
!386 = !DILocation(line: 98, column: 10, scope: !384)
!387 = !DILocation(line: 98, column: 2, scope: !384)
!388 = !DILocation(line: 99, column: 24, scope: !389)
!389 = distinct !DILexicalBlock(scope: !384, file: !183, line: 99, column: 6)
!390 = !DILocation(line: 99, column: 16, scope: !389)
!391 = !DILocation(line: 99, column: 14, scope: !389)
!392 = !DILocation(line: 99, column: 36, scope: !389)
!393 = !DILocation(line: 99, column: 6, scope: !384)
!394 = !DILocation(line: 101, column: 10, scope: !395)
!395 = distinct !DILexicalBlock(scope: !396, file: !183, line: 101, column: 10)
!396 = distinct !DILexicalBlock(scope: !389, file: !183, line: 100, column: 4)
!397 = !DILocation(line: 101, column: 94, scope: !395)
!398 = !DILocation(line: 101, column: 10, scope: !396)
!399 = !DILocation(line: 102, column: 9, scope: !395)
!400 = !DILocation(line: 103, column: 4, scope: !396)
!401 = !DILocation(line: 104, column: 6, scope: !402)
!402 = distinct !DILexicalBlock(scope: !384, file: !183, line: 104, column: 6)
!403 = !DILocation(line: 104, column: 7, scope: !402)
!404 = !DILocation(line: 104, column: 6, scope: !384)
!405 = !DILocation(line: 106, column: 10, scope: !406)
!406 = distinct !DILexicalBlock(scope: !407, file: !183, line: 106, column: 10)
!407 = distinct !DILexicalBlock(scope: !402, file: !183, line: 105, column: 4)
!408 = !DILocation(line: 106, column: 80, scope: !406)
!409 = !DILocation(line: 106, column: 10, scope: !407)
!410 = !DILocation(line: 107, column: 9, scope: !406)
!411 = !DILocation(line: 108, column: 4, scope: !407)
!412 = !DILocation(line: 109, column: 24, scope: !384)
!413 = !DILocation(line: 109, column: 2, scope: !384)
!414 = !DILocation(line: 110, column: 6, scope: !384)
!415 = !DILocation(line: 113, column: 8, scope: !416)
!416 = distinct !DILexicalBlock(scope: !182, file: !183, line: 113, column: 8)
!417 = !DILocation(line: 113, column: 14, scope: !416)
!418 = !DILocation(line: 113, column: 8, scope: !182)
!419 = !DILocation(line: 115, column: 5, scope: !420)
!420 = distinct !DILexicalBlock(scope: !416, file: !183, line: 114, column: 4)
!421 = !DILocation(line: 116, column: 24, scope: !420)
!422 = !DILocation(line: 116, column: 4, scope: !420)
!423 = !DILocation(line: 117, column: 4, scope: !420)
!424 = !DILocation(line: 119, column: 4, scope: !182)
!425 = !DILocation(line: 119, column: 11, scope: !426)
!426 = !DILexicalBlockFile(scope: !182, file: !183, discriminator: 1)
!427 = !DILocation(line: 119, column: 15, scope: !426)
!428 = !DILocation(line: 119, column: 13, scope: !426)
!429 = !DILocation(line: 119, column: 4, scope: !426)
!430 = !DILocation(line: 122, column: 6, scope: !431)
!431 = distinct !DILexicalBlock(scope: !432, file: !183, line: 122, column: 6)
!432 = distinct !DILexicalBlock(scope: !182, file: !183, line: 120, column: 6)
!433 = !DILocation(line: 122, column: 12, scope: !431)
!434 = !DILocation(line: 122, column: 6, scope: !432)
!435 = !DILocation(line: 125, column: 7, scope: !436)
!436 = distinct !DILexicalBlock(scope: !437, file: !183, line: 124, column: 11)
!437 = distinct !DILexicalBlock(scope: !431, file: !183, line: 123, column: 4)
!438 = !DILocation(line: 125, column: 17, scope: !436)
!439 = !DILocation(line: 125, column: 36, scope: !436)
!440 = !DILocation(line: 125, column: 46, scope: !436)
!441 = !DILocation(line: 126, column: 15, scope: !436)
!442 = !DILocation(line: 124, column: 11, scope: !436)
!443 = !DILocation(line: 126, column: 20, scope: !436)
!444 = !DILocation(line: 124, column: 11, scope: !437)
!445 = !DILocation(line: 128, column: 67, scope: !446)
!446 = distinct !DILexicalBlock(scope: !436, file: !183, line: 127, column: 9)
!447 = !DILocation(line: 128, column: 51, scope: !446)
!448 = !DILocation(line: 128, column: 5, scope: !449)
!449 = !DILexicalBlockFile(scope: !446, file: !183, discriminator: 1)
!450 = !DILocation(line: 129, column: 9, scope: !446)
!451 = !DILocation(line: 130, column: 4, scope: !437)
!452 = !DILocation(line: 135, column: 7, scope: !453)
!453 = distinct !DILexicalBlock(scope: !454, file: !183, line: 134, column: 11)
!454 = distinct !DILexicalBlock(scope: !431, file: !183, line: 133, column: 4)
!455 = !DILocation(line: 135, column: 17, scope: !453)
!456 = !DILocation(line: 135, column: 36, scope: !453)
!457 = !DILocation(line: 135, column: 53, scope: !453)
!458 = !DILocation(line: 135, column: 46, scope: !453)
!459 = !DILocation(line: 135, column: 56, scope: !453)
!460 = !DILocation(line: 136, column: 15, scope: !453)
!461 = !DILocation(line: 134, column: 11, scope: !453)
!462 = !DILocation(line: 136, column: 20, scope: !453)
!463 = !DILocation(line: 134, column: 11, scope: !454)
!464 = !DILocation(line: 138, column: 67, scope: !465)
!465 = distinct !DILexicalBlock(scope: !453, file: !183, line: 137, column: 9)
!466 = !DILocation(line: 138, column: 51, scope: !465)
!467 = !DILocation(line: 138, column: 5, scope: !468)
!468 = !DILexicalBlockFile(scope: !465, file: !183, discriminator: 1)
!469 = !DILocation(line: 139, column: 9, scope: !465)
!470 = !DILocation(line: 142, column: 28, scope: !471)
!471 = distinct !DILexicalBlock(scope: !432, file: !183, line: 142, column: 6)
!472 = !DILocation(line: 142, column: 38, scope: !471)
!473 = !DILocation(line: 142, column: 71, scope: !471)
!474 = !DILocation(line: 142, column: 6, scope: !471)
!475 = !DILocation(line: 142, column: 76, scope: !471)
!476 = !DILocation(line: 142, column: 6, scope: !432)
!477 = !DILocation(line: 144, column: 69, scope: !478)
!478 = distinct !DILexicalBlock(scope: !471, file: !183, line: 143, column: 4)
!479 = !DILocation(line: 144, column: 53, scope: !478)
!480 = !DILocation(line: 144, column: 7, scope: !481)
!481 = !DILexicalBlockFile(scope: !478, file: !183, discriminator: 1)
!482 = !DILocation(line: 145, column: 4, scope: !478)
!483 = !DILocation(line: 148, column: 30, scope: !484)
!484 = distinct !DILexicalBlock(scope: !432, file: !183, line: 148, column: 6)
!485 = !DILocation(line: 148, column: 49, scope: !484)
!486 = !DILocation(line: 148, column: 15, scope: !484)
!487 = !DILocation(line: 148, column: 13, scope: !484)
!488 = !DILocation(line: 148, column: 57, scope: !484)
!489 = !DILocation(line: 148, column: 6, scope: !432)
!490 = !DILocation(line: 150, column: 22, scope: !491)
!491 = distinct !DILexicalBlock(scope: !484, file: !183, line: 149, column: 4)
!492 = !DILocation(line: 150, column: 7, scope: !491)
!493 = !DILocation(line: 151, column: 54, scope: !491)
!494 = !DILocation(line: 151, column: 7, scope: !491)
!495 = !DILocation(line: 152, column: 4, scope: !491)
!496 = !DILocation(line: 154, column: 20, scope: !497)
!497 = distinct !DILexicalBlock(scope: !432, file: !183, line: 154, column: 6)
!498 = !DILocation(line: 154, column: 38, scope: !497)
!499 = !DILocation(line: 154, column: 7, scope: !497)
!500 = !DILocation(line: 154, column: 44, scope: !497)
!501 = !DILocation(line: 154, column: 6, scope: !432)
!502 = !DILocation(line: 156, column: 22, scope: !503)
!503 = distinct !DILexicalBlock(scope: !497, file: !183, line: 155, column: 4)
!504 = !DILocation(line: 156, column: 7, scope: !503)
!505 = !DILocation(line: 157, column: 46, scope: !503)
!506 = !DILocation(line: 157, column: 33, scope: !503)
!507 = !DILocation(line: 157, column: 7, scope: !508)
!508 = !DILexicalBlockFile(scope: !503, file: !183, discriminator: 1)
!509 = !DILocation(line: 158, column: 4, scope: !503)
!510 = !DILocation(line: 160, column: 22, scope: !511)
!511 = distinct !DILexicalBlock(scope: !432, file: !183, line: 160, column: 6)
!512 = !DILocation(line: 160, column: 7, scope: !511)
!513 = !DILocation(line: 160, column: 33, scope: !511)
!514 = !DILocation(line: 160, column: 6, scope: !432)
!515 = !DILocation(line: 162, column: 22, scope: !516)
!516 = distinct !DILexicalBlock(scope: !511, file: !183, line: 161, column: 4)
!517 = !DILocation(line: 162, column: 7, scope: !516)
!518 = !DILocation(line: 163, column: 46, scope: !516)
!519 = !DILocation(line: 163, column: 33, scope: !516)
!520 = !DILocation(line: 163, column: 7, scope: !521)
!521 = !DILexicalBlockFile(scope: !516, file: !183, discriminator: 1)
!522 = !DILocation(line: 164, column: 4, scope: !516)
!523 = !DILocation(line: 166, column: 19, scope: !432)
!524 = !DILocation(line: 166, column: 7, scope: !432)
!525 = !DILocation(line: 166, column: 5, scope: !432)
!526 = !DILocation(line: 168, column: 6, scope: !527)
!527 = distinct !DILexicalBlock(scope: !432, file: !183, line: 168, column: 6)
!528 = !DILocation(line: 168, column: 12, scope: !527)
!529 = !DILocation(line: 168, column: 6, scope: !432)
!530 = !DILocation(line: 168, column: 34, scope: !531)
!531 = !DILexicalBlockFile(scope: !527, file: !183, discriminator: 1)
!532 = !DILocation(line: 168, column: 39, scope: !531)
!533 = !DILocation(line: 168, column: 84, scope: !531)
!534 = !DILocation(line: 168, column: 66, scope: !531)
!535 = !DILocation(line: 168, column: 131, scope: !531)
!536 = !DILocation(line: 168, column: 113, scope: !537)
!537 = !DILexicalBlockFile(scope: !531, file: !183, discriminator: 2)
!538 = !DILocation(line: 168, column: 17, scope: !539)
!539 = !DILexicalBlockFile(scope: !531, file: !183, discriminator: 3)
!540 = !DILocation(line: 168, column: 17, scope: !531)
!541 = !DILocation(line: 171, column: 16, scope: !542)
!542 = distinct !DILexicalBlock(scope: !527, file: !183, line: 170, column: 4)
!543 = !DILocation(line: 171, column: 42, scope: !542)
!544 = !DILocation(line: 171, column: 35, scope: !542)
!545 = !DILocation(line: 171, column: 45, scope: !542)
!546 = !DILocation(line: 171, column: 59, scope: !542)
!547 = !DILocation(line: 171, column: 52, scope: !542)
!548 = !DILocation(line: 171, column: 62, scope: !542)
!549 = !DILocation(line: 171, column: 76, scope: !542)
!550 = !DILocation(line: 171, column: 69, scope: !542)
!551 = !DILocation(line: 171, column: 79, scope: !542)
!552 = !DILocation(line: 171, column: 93, scope: !542)
!553 = !DILocation(line: 171, column: 86, scope: !542)
!554 = !DILocation(line: 171, column: 96, scope: !542)
!555 = !DILocation(line: 171, column: 7, scope: !542)
!556 = !DILocation(line: 172, column: 24, scope: !542)
!557 = !DILocation(line: 172, column: 29, scope: !542)
!558 = !DILocation(line: 172, column: 56, scope: !542)
!559 = !DILocation(line: 172, column: 88, scope: !542)
!560 = !DILocation(line: 172, column: 78, scope: !542)
!561 = !DILocation(line: 172, column: 60, scope: !562)
!562 = !DILexicalBlockFile(scope: !542, file: !183, discriminator: 1)
!563 = !DILocation(line: 172, column: 7, scope: !564)
!564 = !DILexicalBlockFile(scope: !542, file: !183, discriminator: 2)
!565 = !DILocation(line: 174, column: 10, scope: !432)
!566 = !DILocation(line: 174, column: 2, scope: !432)
!567 = !DILocation(line: 177, column: 19, scope: !568)
!568 = distinct !DILexicalBlock(scope: !432, file: !183, line: 177, column: 6)
!569 = !DILocation(line: 177, column: 6, scope: !568)
!570 = !DILocation(line: 177, column: 21, scope: !568)
!571 = !DILocation(line: 177, column: 6, scope: !432)
!572 = !DILocation(line: 179, column: 72, scope: !573)
!573 = distinct !DILexicalBlock(scope: !568, file: !183, line: 178, column: 4)
!574 = !DILocation(line: 179, column: 56, scope: !573)
!575 = !DILocation(line: 179, column: 7, scope: !576)
!576 = !DILexicalBlockFile(scope: !573, file: !183, discriminator: 1)
!577 = !DILocation(line: 180, column: 4, scope: !573)
!578 = !DILocation(line: 182, column: 22, scope: !579)
!579 = distinct !DILexicalBlock(scope: !432, file: !183, line: 182, column: 6)
!580 = !DILocation(line: 182, column: 26, scope: !579)
!581 = !DILocation(line: 182, column: 15, scope: !579)
!582 = !DILocation(line: 182, column: 14, scope: !579)
!583 = !DILocation(line: 182, column: 13, scope: !579)
!584 = !DILocation(line: 182, column: 6, scope: !579)
!585 = !DILocation(line: 182, column: 34, scope: !579)
!586 = !DILocation(line: 182, column: 6, scope: !432)
!587 = !DILocation(line: 182, column: 40, scope: !588)
!588 = !DILexicalBlockFile(scope: !579, file: !183, discriminator: 1)
!589 = !DILocation(line: 183, column: 8, scope: !432)
!590 = !DILocation(line: 185, column: 2, scope: !432)
!591 = !DILocation(line: 188, column: 6, scope: !592)
!592 = distinct !DILexicalBlock(scope: !593, file: !183, line: 186, column: 4)
!593 = distinct !DILexicalBlock(scope: !594, file: !183, line: 185, column: 2)
!594 = distinct !DILexicalBlock(scope: !432, file: !183, line: 185, column: 2)
!595 = distinct !{!595, !591}
!596 = !DILocalVariable(name: "__d0", scope: !597, file: !183, line: 188, type: !14)
!597 = distinct !DILexicalBlock(scope: !592, file: !183, line: 188, column: 9)
!598 = !DILocation(line: 188, column: 15, scope: !597)
!599 = !DILocalVariable(name: "__d1", scope: !597, file: !183, line: 188, type: !14)
!600 = !DILocation(line: 188, column: 21, scope: !597)
!601 = !DILocation(line: 188, column: 9, scope: !602)
!602 = !DILexicalBlockFile(scope: !597, file: !183, discriminator: 1)
!603 = !DILocation(line: 188, column: 158, scope: !602)
!604 = !DILocation(line: 188, column: 27, scope: !602)
!605 = !{i32 229883}
!606 = !DILocation(line: 188, column: 38, scope: !602)
!607 = !DILocation(line: 189, column: 6, scope: !592)
!608 = !DILocation(line: 189, column: 8, scope: !592)
!609 = !DILocation(line: 189, column: 64, scope: !592)
!610 = !DILocation(line: 189, column: 15, scope: !592)
!611 = !DILocation(line: 189, column: 9, scope: !592)
!612 = !DILocation(line: 189, column: 43, scope: !592)
!613 = !DILocation(line: 190, column: 10, scope: !592)
!614 = !DILocation(line: 190, column: 17, scope: !592)
!615 = !DILocation(line: 191, column: 10, scope: !592)
!616 = !DILocation(line: 191, column: 18, scope: !592)
!617 = !DILocation(line: 193, column: 19, scope: !618)
!618 = distinct !DILexicalBlock(scope: !592, file: !183, line: 193, column: 11)
!619 = !DILocation(line: 193, column: 21, scope: !618)
!620 = !DILocation(line: 193, column: 12, scope: !618)
!621 = !DILocation(line: 193, column: 48, scope: !618)
!622 = !DILocation(line: 193, column: 52, scope: !623)
!623 = !DILexicalBlockFile(scope: !618, file: !183, discriminator: 1)
!624 = !DILocation(line: 193, column: 58, scope: !623)
!625 = !DILocation(line: 193, column: 11, scope: !623)
!626 = !DILocation(line: 195, column: 22, scope: !627)
!627 = distinct !DILexicalBlock(scope: !618, file: !183, line: 194, column: 9)
!628 = !DILocation(line: 195, column: 28, scope: !627)
!629 = !DILocation(line: 195, column: 5, scope: !627)
!630 = !DILocation(line: 196, column: 5, scope: !627)
!631 = !DILocation(line: 199, column: 39, scope: !632)
!632 = distinct !DILexicalBlock(scope: !592, file: !183, line: 199, column: 11)
!633 = !DILocation(line: 199, column: 29, scope: !632)
!634 = !DILocation(line: 199, column: 16, scope: !632)
!635 = !DILocation(line: 199, column: 52, scope: !632)
!636 = !DILocation(line: 199, column: 11, scope: !592)
!637 = !DILocation(line: 201, column: 36, scope: !638)
!638 = distinct !DILexicalBlock(scope: !632, file: !183, line: 200, column: 9)
!639 = !DILocation(line: 201, column: 40, scope: !638)
!640 = !DILocation(line: 201, column: 39, scope: !638)
!641 = !DILocation(line: 201, column: 11, scope: !638)
!642 = !DILocation(line: 201, column: 9, scope: !638)
!643 = !DILocation(line: 203, column: 15, scope: !644)
!644 = distinct !DILexicalBlock(scope: !638, file: !183, line: 203, column: 9)
!645 = !DILocation(line: 203, column: 20, scope: !644)
!646 = !DILocation(line: 203, column: 9, scope: !644)
!647 = !DILocation(line: 203, column: 26, scope: !644)
!648 = !DILocation(line: 203, column: 9, scope: !638)
!649 = !DILocation(line: 205, column: 27, scope: !650)
!650 = distinct !DILexicalBlock(scope: !644, file: !183, line: 204, column: 7)
!651 = !DILocation(line: 205, column: 33, scope: !650)
!652 = !DILocation(line: 205, column: 10, scope: !650)
!653 = !DILocation(line: 206, column: 10, scope: !650)
!654 = !DILocation(line: 208, column: 9, scope: !638)
!655 = !DILocation(line: 210, column: 13, scope: !592)
!656 = !DILocation(line: 185, column: 2, scope: !657)
!657 = !DILexicalBlockFile(scope: !593, file: !183, discriminator: 1)
!658 = distinct !{!658, !590}
!659 = !DILocation(line: 215, column: 6, scope: !660)
!660 = distinct !DILexicalBlock(scope: !432, file: !183, line: 215, column: 6)
!661 = !DILocation(line: 215, column: 6, scope: !432)
!662 = !DILocation(line: 215, column: 24, scope: !663)
!663 = !DILexicalBlockFile(scope: !660, file: !183, discriminator: 1)
!664 = !DILocation(line: 215, column: 13, scope: !663)
!665 = !DILocation(line: 216, column: 3, scope: !432)
!666 = !DILocation(line: 217, column: 2, scope: !432)
!667 = !DILocation(line: 119, column: 4, scope: !668)
!668 = !DILexicalBlockFile(scope: !182, file: !183, discriminator: 2)
!669 = distinct !{!669, !424}
!670 = !DILocation(line: 221, column: 8, scope: !671)
!671 = distinct !DILexicalBlock(scope: !182, file: !183, line: 221, column: 8)
!672 = !DILocation(line: 221, column: 8, scope: !182)
!673 = !DILocation(line: 221, column: 26, scope: !674)
!674 = !DILexicalBlockFile(scope: !671, file: !183, discriminator: 1)
!675 = !DILocation(line: 221, column: 11, scope: !674)
!676 = !DILocation(line: 222, column: 8, scope: !677)
!677 = distinct !DILexicalBlock(scope: !182, file: !183, line: 222, column: 8)
!678 = !DILocation(line: 222, column: 8, scope: !182)
!679 = !DILocation(line: 224, column: 19, scope: !680)
!680 = distinct !DILexicalBlock(scope: !677, file: !183, line: 223, column: 6)
!681 = !DILocation(line: 224, column: 2, scope: !680)
!682 = !DILocation(line: 225, column: 10, scope: !680)
!683 = !DILocation(line: 225, column: 2, scope: !680)
!684 = !DILocation(line: 226, column: 6, scope: !680)
!685 = !DILocation(line: 229, column: 22, scope: !686)
!686 = distinct !DILexicalBlock(scope: !677, file: !183, line: 228, column: 6)
!687 = !DILocation(line: 229, column: 2, scope: !686)
!688 = !DILocation(line: 230, column: 23, scope: !686)
!689 = !DILocation(line: 230, column: 2, scope: !686)
!690 = !DILocation(line: 232, column: 4, scope: !182)
!691 = !DILocation(line: 233, column: 1, scope: !182)
