; ModuleID = './[inter]sniff.o.i'
source_filename = "./[inter]sniff.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pcap = type opaque
%struct.pcap_dumper = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.bpf_program = type { i32, %struct.bpf_insn* }
%struct.bpf_insn = type { i16, i8, i8, i32 }
%struct.pcap_pkthdr = type { %struct.timeval, i32, i32 }
%struct.timeval = type { i64, i64 }
%struct.pcap_stat = type { i32, i32, i32 }
%struct.libnet_context = type { i32, i32, %struct.libnet_protocol_block*, %struct.libnet_protocol_block*, i32, i32, i32, i32, i8*, %struct.libnet_stats, i32, [64 x i8], [256 x i8], i32 }
%struct.libnet_protocol_block = type { i8*, i32, i16, i32, i8, i8, i32, %struct.libnet_protocol_block*, %struct.libnet_protocol_block* }
%struct.libnet_stats = type { i64, i64, i64 }
%struct.libnet_ether_addr = type { [6 x i8] }
%struct.in_addr = type { i32 }
%struct.libnet_ipv4_hdr = type { i8, i8, i16, i16, i16, i8, i8, i16, %struct.in_addr, %struct.in_addr }

@npkt = common global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@netp = common global i32 0, align 4
@maskp = common global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"pcap_lookupnet error: %s\0A\0A\00", align 1
@descr = common global %struct.pcap* null, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"pcap_open_live() error: %s\0A\0A\00", align 1
@tcpdl = common global i8* null, align 8
@dumper = common global %struct.pcap_dumper* null, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"pcap_dump_open() error: %s\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"pcap_open_offline() error: %s\0A\0A\00", align 1
@offset = common global i16 0, align 2
@.str.5 = private unnamed_addr constant [33 x i8] c"Can't get hardware address: %s\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Impossible get the mask\0A\0A\00", align 1
@graph = common global i16 0, align 2
@.str.7 = private unnamed_addr constant [19 x i8] c"%sSniffing on:\0A\0A%s\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"\1B[1;36m\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"%s- Device:\09%s%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"%s- MAC address:\09%s%s\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"%s- IP address:\09%s%s\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"%s- Netmask:\09%s%s\0A\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"%s- Promisc mode:\09%s\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"Set\0A\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"Not set\0A\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"%s- Filter:\09%s\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"None\0A\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"%s- Logging:\09%s\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"Sniffed data\0A\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"Traffic\0A\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"Traffic and Sniffed data\0A\00", align 1
@logd = common global %struct._IO_FILE* null, align 8
@.str.25 = private unnamed_addr constant [29 x i8] c"NAST SNIFFER LOGGING REPORT\0A\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"Made on %s, device %s (%s)\0A\0A\00", align 1
@timed = common global [60 x i8] zeroinitializer, align 16
@.str.27 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.28 = private unnamed_addr constant [48 x i8] c"\0AError: unable to open logfile descriptor: %s\0A\0A\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"NAST SNIFFED DATA REPORT\0A\00", align 1
@fp = common global %struct.bpf_program zeroinitializer, align 8
@.str.30 = private unnamed_addr constant [50 x i8] c"Error in pcap_compile, insert a different filter\0A\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"Error calling pcap_setfilter\0A\0A\00", align 1
@demonize = common global i16 0, align 2
@hdr = common global %struct.pcap_pkthdr zeroinitializer, align 8
@packet = common global i8* null, align 8
@stdout = external global %struct._IO_FILE*, align 8
@buf = common global i8* null, align 8
@statistic = common global %struct.pcap_stat zeroinitializer, align 4
@datalink = common global i32 0, align 4
@logname = common global i8* null, align 8
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
define i32 @run_sniffer(i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i8*, i8*, i8*) #0 !dbg !185 {
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  %18 = alloca i16, align 2
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca [256 x i8], align 16
  %24 = alloca %struct.libnet_context*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.libnet_ether_addr*, align 8
  %27 = alloca %struct.in_addr, align 4
  %28 = alloca %struct._IO_FILE*, align 8
  store i16 %0, i16* %12, align 2
  call void @llvm.dbg.declare(metadata i16* %12, metadata !189, metadata !190), !dbg !191
  store i16 %1, i16* %13, align 2
  call void @llvm.dbg.declare(metadata i16* %13, metadata !192, metadata !190), !dbg !193
  store i16 %2, i16* %14, align 2
  call void @llvm.dbg.declare(metadata i16* %14, metadata !194, metadata !190), !dbg !195
  store i16 %3, i16* %15, align 2
  call void @llvm.dbg.declare(metadata i16* %15, metadata !196, metadata !190), !dbg !197
  store i16 %4, i16* %16, align 2
  call void @llvm.dbg.declare(metadata i16* %16, metadata !198, metadata !190), !dbg !199
  store i16 %5, i16* %17, align 2
  call void @llvm.dbg.declare(metadata i16* %17, metadata !200, metadata !190), !dbg !201
  store i16 %6, i16* %18, align 2
  call void @llvm.dbg.declare(metadata i16* %18, metadata !202, metadata !190), !dbg !203
  store i8* %7, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !204, metadata !190), !dbg !205
  store i8* %8, i8** %20, align 8
  call void @llvm.dbg.declare(metadata i8** %20, metadata !206, metadata !190), !dbg !207
  store i8* %9, i8** %21, align 8
  call void @llvm.dbg.declare(metadata i8** %21, metadata !208, metadata !190), !dbg !209
  call void @llvm.dbg.declare(metadata i8** %22, metadata !210, metadata !190), !dbg !211
  call void @llvm.dbg.declare(metadata [256 x i8]* %23, metadata !212, metadata !190), !dbg !216
  call void @llvm.dbg.declare(metadata %struct.libnet_context** %24, metadata !217, metadata !190), !dbg !263
  call void @llvm.dbg.declare(metadata i32* %25, metadata !264, metadata !190), !dbg !265
  call void @llvm.dbg.declare(metadata %struct.libnet_ether_addr** %26, metadata !266, metadata !190), !dbg !274
  call void @llvm.dbg.declare(metadata %struct.in_addr* %27, metadata !275, metadata !190), !dbg !276
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %28, metadata !277, metadata !190), !dbg !278
  store %struct._IO_FILE* null, %struct._IO_FILE** %28, align 8, !dbg !279
  store i32 0, i32* %25, align 4, !dbg !280
  store i32 0, i32* @npkt, align 4, !dbg !281
  %29 = load i8*, i8** %21, align 8, !dbg !282
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #6, !dbg !284
  %31 = icmp ne i32 %30, 0, !dbg !284
  br i1 %31, label %32, label %33, !dbg !285

; <label>:32:                                     ; preds = %10
  store i32 1, i32* %25, align 4, !dbg !286
  br label %33, !dbg !287

; <label>:33:                                     ; preds = %32, %10
  %34 = load i8*, i8** %20, align 8, !dbg !288
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i32 0, i32 0, !dbg !290
  %36 = call i32 @pcap_lookupnet(i8* %34, i32* @netp, i32* @maskp, i8* %35), !dbg !291
  %37 = icmp eq i32 %36, -1, !dbg !292
  br i1 %37, label %38, label %41, !dbg !293

; <label>:38:                                     ; preds = %33
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i32 0, i32 0, !dbg !294
  %40 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0), i8* %39), !dbg !296
  br label %41, !dbg !297

; <label>:41:                                     ; preds = %38, %33
  %42 = load i16, i16* %17, align 2, !dbg !298
  %43 = icmp ne i16 %42, 0, !dbg !298
  br i1 %43, label %44, label %63, !dbg !300

; <label>:44:                                     ; preds = %41
  %45 = load i8*, i8** %20, align 8, !dbg !301
  %46 = load i16, i16* %12, align 2, !dbg !304
  %47 = zext i16 %46 to i32, !dbg !304
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i32 0, i32 0, !dbg !305
  %49 = call %struct.pcap* @pcap_open_live(i8* %45, i32 8192, i32 %47, i32 10, i8* %48), !dbg !306
  store %struct.pcap* %49, %struct.pcap** @descr, align 8, !dbg !307
  %50 = icmp eq %struct.pcap* %49, null, !dbg !308
  br i1 %50, label %51, label %54, !dbg !309

; <label>:51:                                     ; preds = %44
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i32 0, i32 0, !dbg !310
  %53 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i8* %52), !dbg !312
  br label %54, !dbg !313

; <label>:54:                                     ; preds = %51, %44
  %55 = load %struct.pcap*, %struct.pcap** @descr, align 8, !dbg !314
  %56 = load i8*, i8** @tcpdl, align 8, !dbg !316
  %57 = call %struct.pcap_dumper* @pcap_dump_open(%struct.pcap* %55, i8* %56), !dbg !317
  store %struct.pcap_dumper* %57, %struct.pcap_dumper** @dumper, align 8, !dbg !318
  %58 = icmp eq %struct.pcap_dumper* %57, null, !dbg !319
  br i1 %58, label %59, label %62, !dbg !320

; <label>:59:                                     ; preds = %54
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i32 0, i32 0, !dbg !321
  %61 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), i8* %60), !dbg !323
  br label %62, !dbg !324

; <label>:62:                                     ; preds = %59, %54
  br label %87, !dbg !325

; <label>:63:                                     ; preds = %41
  %64 = load i16, i16* %18, align 2, !dbg !326
  %65 = icmp ne i16 %64, 0, !dbg !326
  br i1 %65, label %66, label %75, !dbg !328

; <label>:66:                                     ; preds = %63
  %67 = load i8*, i8** @tcpdl, align 8, !dbg !329
  %68 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i32 0, i32 0, !dbg !332
  %69 = call %struct.pcap* @pcap_open_offline(i8* %67, i8* %68), !dbg !333
  store %struct.pcap* %69, %struct.pcap** @descr, align 8, !dbg !334
  %70 = icmp eq %struct.pcap* %69, null, !dbg !335
  br i1 %70, label %71, label %74, !dbg !336

; <label>:71:                                     ; preds = %66
  %72 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i32 0, i32 0, !dbg !337
  %73 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i8* %72), !dbg !339
  br label %74, !dbg !340

; <label>:74:                                     ; preds = %71, %66
  br label %86, !dbg !341

; <label>:75:                                     ; preds = %63
  %76 = load i8*, i8** %20, align 8, !dbg !342
  %77 = load i16, i16* %12, align 2, !dbg !344
  %78 = zext i16 %77 to i32, !dbg !344
  %79 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i32 0, i32 0, !dbg !345
  %80 = call %struct.pcap* @pcap_open_live(i8* %76, i32 8192, i32 %78, i32 10, i8* %79), !dbg !346
  store %struct.pcap* %80, %struct.pcap** @descr, align 8, !dbg !347
  %81 = icmp eq %struct.pcap* %80, null, !dbg !348
  br i1 %81, label %82, label %85, !dbg !349

; <label>:82:                                     ; preds = %75
  %83 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i32 0, i32 0, !dbg !350
  %84 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i8* %83), !dbg !352
  br label %85, !dbg !353

; <label>:85:                                     ; preds = %82, %75
  br label %86

; <label>:86:                                     ; preds = %85, %74
  br label %87

; <label>:87:                                     ; preds = %86, %62
  %88 = load i8*, i8** %20, align 8, !dbg !354
  %89 = load %struct.pcap*, %struct.pcap** @descr, align 8, !dbg !356
  %90 = call i32 @device(i8* %88, %struct.pcap* %89), !dbg !357
  %91 = trunc i32 %90 to i16, !dbg !358
  store i16 %91, i16* @offset, align 2, !dbg !359
  %92 = sext i16 %91 to i32, !dbg !360
  %93 = icmp eq i32 %92, -1, !dbg !361
  br i1 %93, label %94, label %95, !dbg !362

; <label>:94:                                     ; preds = %87
  store i32 -1, i32* %11, align 4, !dbg !363
  br label %297, !dbg !363

; <label>:95:                                     ; preds = %87
  %96 = load i8*, i8** %20, align 8, !dbg !365
  %97 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i32 0, i32 0, !dbg !366
  %98 = call %struct.libnet_context* @libnet_init(i32 0, i8* %96, i8* %97), !dbg !367
  store %struct.libnet_context* %98, %struct.libnet_context** %24, align 8, !dbg !368
  %99 = load %struct.libnet_context*, %struct.libnet_context** %24, align 8, !dbg !369
  %100 = call %struct.libnet_ether_addr* @libnet_get_hwaddr(%struct.libnet_context* %99), !dbg !370
  store %struct.libnet_ether_addr* %100, %struct.libnet_ether_addr** %26, align 8, !dbg !371
  %101 = load %struct.libnet_ether_addr*, %struct.libnet_ether_addr** %26, align 8, !dbg !372
  %102 = icmp ne %struct.libnet_ether_addr* %101, null, !dbg !372
  br i1 %102, label %107, label %103, !dbg !374

; <label>:103:                                    ; preds = %95
  %104 = load %struct.libnet_context*, %struct.libnet_context** %24, align 8, !dbg !375
  %105 = call i8* @libnet_geterror(%struct.libnet_context* %104), !dbg !377
  %106 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i32 0, i32 0), i8* %105), !dbg !378
  br label %107, !dbg !380

; <label>:107:                                    ; preds = %103, %95
  %108 = load i32, i32* @maskp, align 4, !dbg !381
  %109 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %27, i32 0, i32 0, !dbg !382
  store i32 %108, i32* %109, align 4, !dbg !383
  %110 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %27, i32 0, i32 0, !dbg !384
  %111 = load i32, i32* %110, align 4, !dbg !384
  %112 = call i8* @inet_ntoa(i32 %111) #7, !dbg !384
  store i8* %112, i8** %22, align 8, !dbg !386
  %113 = icmp eq i8* %112, null, !dbg !387
  br i1 %113, label %114, label %116, !dbg !388

; <label>:114:                                    ; preds = %107
  %115 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0)), !dbg !389
  br label %116, !dbg !391

; <label>:116:                                    ; preds = %114, %107
  %117 = load i16, i16* @graph, align 2, !dbg !392
  %118 = icmp ne i16 %117, 0, !dbg !392
  br i1 %118, label %189, label %119, !dbg !394

; <label>:119:                                    ; preds = %116
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0)), !dbg !395
  %121 = load i8*, i8** %20, align 8, !dbg !397
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* %121), !dbg !398
  %123 = load %struct.libnet_ether_addr*, %struct.libnet_ether_addr** %26, align 8, !dbg !399
  %124 = getelementptr inbounds %struct.libnet_ether_addr, %struct.libnet_ether_addr* %123, i32 0, i32 0, !dbg !400
  %125 = getelementptr inbounds [6 x i8], [6 x i8]* %124, i32 0, i32 0, !dbg !399
  %126 = call i8* @nast_hex_ntoa(i8* %125), !dbg !401
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* %126), !dbg !402
  %128 = load %struct.libnet_context*, %struct.libnet_context** %24, align 8, !dbg !404
  %129 = call i32 @libnet_get_ipaddr4(%struct.libnet_context* %128), !dbg !405
  %130 = call i8* @libnet_addr2name4(i32 %129, i8 zeroext 0), !dbg !406
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* %130), !dbg !407
  %132 = load i8*, i8** %22, align 8, !dbg !409
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* %132), !dbg !410
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0)), !dbg !411
  %135 = load i16, i16* %12, align 2, !dbg !412
  %136 = icmp ne i16 %135, 0, !dbg !412
  br i1 %136, label %137, label %139, !dbg !414

; <label>:137:                                    ; preds = %119
  %138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0)), !dbg !415
  br label %141, !dbg !415

; <label>:139:                                    ; preds = %119
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0)), !dbg !417
  br label %141

; <label>:141:                                    ; preds = %139, %137
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0)), !dbg !418
  %143 = load i8*, i8** %19, align 8, !dbg !419
  %144 = icmp ne i8* %143, null, !dbg !419
  br i1 %144, label %145, label %148, !dbg !421

; <label>:145:                                    ; preds = %141
  %146 = load i8*, i8** %19, align 8, !dbg !422
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i8* %146), !dbg !424
  br label %150, !dbg !424

; <label>:148:                                    ; preds = %141
  %149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0)), !dbg !425
  br label %150

; <label>:150:                                    ; preds = %148, %145
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0)), !dbg !426
  %152 = load i32, i32* %25, align 4, !dbg !427
  %153 = icmp ne i32 %152, 0, !dbg !427
  br i1 %153, label %159, label %154, !dbg !429

; <label>:154:                                    ; preds = %150
  %155 = load i16, i16* %16, align 2, !dbg !430
  %156 = icmp ne i16 %155, 0, !dbg !430
  br i1 %156, label %159, label %157, !dbg !432

; <label>:157:                                    ; preds = %154
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0)), !dbg !433
  br label %188, !dbg !433

; <label>:159:                                    ; preds = %154, %150
  %160 = load i32, i32* %25, align 4, !dbg !435
  %161 = icmp ne i32 %160, 0, !dbg !435
  br i1 %161, label %162, label %167, !dbg !437

; <label>:162:                                    ; preds = %159
  %163 = load i16, i16* %16, align 2, !dbg !438
  %164 = icmp ne i16 %163, 0, !dbg !438
  br i1 %164, label %167, label %165, !dbg !440

; <label>:165:                                    ; preds = %162
  %166 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0)), !dbg !441
  br label %187, !dbg !441

; <label>:167:                                    ; preds = %162, %159
  %168 = load i32, i32* %25, align 4, !dbg !443
  %169 = icmp ne i32 %168, 0, !dbg !443
  br i1 %169, label %176, label %170, !dbg !445

; <label>:170:                                    ; preds = %167
  %171 = load i16, i16* %16, align 2, !dbg !446
  %172 = zext i16 %171 to i32, !dbg !446
  %173 = icmp ne i32 %172, 0, !dbg !446
  br i1 %173, label %174, label %176, !dbg !448

; <label>:174:                                    ; preds = %170
  %175 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0)), !dbg !449
  br label %186, !dbg !449

; <label>:176:                                    ; preds = %170, %167
  %177 = load i32, i32* %25, align 4, !dbg !451
  %178 = icmp ne i32 %177, 0, !dbg !451
  br i1 %178, label %179, label %185, !dbg !453

; <label>:179:                                    ; preds = %176
  %180 = load i16, i16* %16, align 2, !dbg !454
  %181 = zext i16 %180 to i32, !dbg !454
  %182 = icmp ne i32 %181, 0, !dbg !454
  br i1 %182, label %183, label %185, !dbg !456

; <label>:183:                                    ; preds = %179
  %184 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i32 0, i32 0)), !dbg !457
  br label %185, !dbg !457

; <label>:185:                                    ; preds = %183, %179, %176
  br label %186

; <label>:186:                                    ; preds = %185, %174
  br label %187

; <label>:187:                                    ; preds = %186, %165
  br label %188

; <label>:188:                                    ; preds = %187, %157
  br label %189, !dbg !459

; <label>:189:                                    ; preds = %188, %116
  %190 = load i16, i16* %16, align 2, !dbg !460
  %191 = icmp ne i16 %190, 0, !dbg !460
  br i1 %191, label %192, label %201, !dbg !462

; <label>:192:                                    ; preds = %189
  call void @openfile(), !dbg !463
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** @logd, align 8, !dbg !465
  %194 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %193, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i32 0, i32 0)), !dbg !466
  %195 = load %struct._IO_FILE*, %struct._IO_FILE** @logd, align 8, !dbg !467
  %196 = load i8*, i8** %20, align 8, !dbg !468
  %197 = load %struct.libnet_context*, %struct.libnet_context** %24, align 8, !dbg !469
  %198 = call i32 @libnet_get_ipaddr4(%struct.libnet_context* %197), !dbg !470
  %199 = call i8* @libnet_addr2name4(i32 %198, i8 zeroext 0), !dbg !471
  %200 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %195, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @timed, i32 0, i32 0), i8* %196, i8* %199), !dbg !473
  br label %201, !dbg !475

; <label>:201:                                    ; preds = %192, %189
  %202 = load i32, i32* %25, align 4, !dbg !476
  %203 = icmp ne i32 %202, 0, !dbg !476
  br i1 %203, label %204, label %222, !dbg !478

; <label>:204:                                    ; preds = %201
  %205 = load i8*, i8** %21, align 8, !dbg !479
  %206 = call %struct._IO_FILE* @fopen(i8* %205, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0)), !dbg !482
  store %struct._IO_FILE* %206, %struct._IO_FILE** %28, align 8, !dbg !483
  %207 = icmp eq %struct._IO_FILE* %206, null, !dbg !484
  br i1 %207, label %208, label %213, !dbg !485

; <label>:208:                                    ; preds = %204
  %209 = call i32* @__errno_location() #1, !dbg !486
  %210 = load i32, i32* %209, align 4, !dbg !488
  %211 = call i8* @strerror(i32 %210) #7, !dbg !489
  %212 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.28, i32 0, i32 0), i8* %211), !dbg !491
  br label %213, !dbg !493

; <label>:213:                                    ; preds = %208, %204
  %214 = load %struct._IO_FILE*, %struct._IO_FILE** %28, align 8, !dbg !494
  %215 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %214, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i32 0, i32 0)), !dbg !495
  %216 = load %struct._IO_FILE*, %struct._IO_FILE** %28, align 8, !dbg !496
  %217 = load i8*, i8** %20, align 8, !dbg !497
  %218 = load %struct.libnet_context*, %struct.libnet_context** %24, align 8, !dbg !498
  %219 = call i32 @libnet_get_ipaddr4(%struct.libnet_context* %218), !dbg !499
  %220 = call i8* @libnet_addr2name4(i32 %219, i8 zeroext 0), !dbg !500
  %221 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %216, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @timed, i32 0, i32 0), i8* %217, i8* %220), !dbg !502
  br label %222, !dbg !504

; <label>:222:                                    ; preds = %213, %201
  %223 = load %struct.libnet_context*, %struct.libnet_context** %24, align 8, !dbg !505
  call void @libnet_destroy(%struct.libnet_context* %223), !dbg !506
  %224 = load i16, i16* %15, align 2, !dbg !507
  %225 = icmp ne i16 %224, 0, !dbg !507
  br i1 %225, label %226, label %244, !dbg !509

; <label>:226:                                    ; preds = %222
  %227 = load %struct.pcap*, %struct.pcap** @descr, align 8, !dbg !510
  %228 = load i8*, i8** %19, align 8, !dbg !513
  %229 = load i32, i32* @netp, align 4, !dbg !514
  %230 = call i32 @pcap_compile(%struct.pcap* %227, %struct.bpf_program* @fp, i8* %228, i32 0, i32 %229), !dbg !515
  %231 = icmp eq i32 %230, -1, !dbg !516
  br i1 %231, label %232, label %237, !dbg !517

; <label>:232:                                    ; preds = %226
  %233 = call i32 (i32, i8*, ...) @w_error(i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.30, i32 0, i32 0)), !dbg !518
  %234 = icmp eq i32 %233, -1, !dbg !521
  br i1 %234, label %235, label %236, !dbg !522

; <label>:235:                                    ; preds = %232
  store i32 0, i32* %11, align 4, !dbg !523
  br label %297, !dbg !523

; <label>:236:                                    ; preds = %232
  br label %237, !dbg !524

; <label>:237:                                    ; preds = %236, %226
  %238 = load %struct.pcap*, %struct.pcap** @descr, align 8, !dbg !525
  %239 = call i32 @pcap_setfilter(%struct.pcap* %238, %struct.bpf_program* @fp), !dbg !527
  %240 = icmp eq i32 %239, -1, !dbg !528
  br i1 %240, label %241, label %243, !dbg !529

; <label>:241:                                    ; preds = %237
  %242 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i32 0, i32 0)), !dbg !530
  br label %243, !dbg !532

; <label>:243:                                    ; preds = %241, %237
  br label %244, !dbg !533

; <label>:244:                                    ; preds = %243, %222
  %245 = load i16, i16* @demonize, align 2, !dbg !534
  %246 = icmp ne i16 %245, 0, !dbg !534
  br i1 %246, label %247, label %248, !dbg !536

; <label>:247:                                    ; preds = %244
  call void @bkg(), !dbg !537
  br label %248, !dbg !537

; <label>:248:                                    ; preds = %247, %244
  br label %249, !dbg !538

; <label>:249:                                    ; preds = %248, %254, %296
  %250 = load %struct.pcap*, %struct.pcap** @descr, align 8, !dbg !539
  %251 = call i8* @pcap_next(%struct.pcap* %250, %struct.pcap_pkthdr* @hdr), !dbg !541
  store i8* %251, i8** @packet, align 8, !dbg !542
  %252 = load i8*, i8** @packet, align 8, !dbg !543
  %253 = icmp eq i8* %252, null, !dbg !545
  br i1 %253, label %254, label %255, !dbg !546

; <label>:254:                                    ; preds = %249
  br label %249, !dbg !547, !llvm.loop !548

; <label>:255:                                    ; preds = %249
  %256 = load i32, i32* @npkt, align 4, !dbg !549
  %257 = add nsw i32 %256, 1, !dbg !549
  store i32 %257, i32* @npkt, align 4, !dbg !549
  %258 = load i8*, i8** %21, align 8, !dbg !550
  %259 = icmp ne i8* %258, null, !dbg !550
  br i1 %259, label %266, label %260, !dbg !552

; <label>:260:                                    ; preds = %255
  %261 = load i16, i16* %13, align 2, !dbg !553
  %262 = zext i16 %261 to i32, !dbg !553
  %263 = load i16, i16* %14, align 2, !dbg !554
  %264 = zext i16 %263 to i32, !dbg !554
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !555
  call void @sniff(i32 %262, i32 %264, %struct._IO_FILE* %265, %struct._IO_FILE* null), !dbg !556
  br label %275, !dbg !556

; <label>:266:                                    ; preds = %255
  %267 = load i16, i16* %13, align 2, !dbg !557
  %268 = zext i16 %267 to i32, !dbg !557
  %269 = load i16, i16* %14, align 2, !dbg !559
  %270 = zext i16 %269 to i32, !dbg !559
  %271 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !560
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** %28, align 8, !dbg !561
  call void @sniff(i32 %268, i32 %270, %struct._IO_FILE* %271, %struct._IO_FILE* %272), !dbg !562
  %273 = load %struct._IO_FILE*, %struct._IO_FILE** %28, align 8, !dbg !563
  %274 = call i32 @fflush(%struct._IO_FILE* %273), !dbg !564
  br label %275

; <label>:275:                                    ; preds = %266, %260
  %276 = load i16, i16* %16, align 2, !dbg !565
  %277 = icmp ne i16 %276, 0, !dbg !565
  br i1 %277, label %278, label %286, !dbg !567

; <label>:278:                                    ; preds = %275
  %279 = load i16, i16* %13, align 2, !dbg !568
  %280 = zext i16 %279 to i32, !dbg !568
  %281 = load i16, i16* %14, align 2, !dbg !570
  %282 = zext i16 %281 to i32, !dbg !570
  %283 = load %struct._IO_FILE*, %struct._IO_FILE** @logd, align 8, !dbg !571
  call void @sniff(i32 %280, i32 %282, %struct._IO_FILE* %283, %struct._IO_FILE* null), !dbg !572
  %284 = load %struct._IO_FILE*, %struct._IO_FILE** @logd, align 8, !dbg !573
  %285 = call i32 @fflush(%struct._IO_FILE* %284), !dbg !574
  br label %286, !dbg !575

; <label>:286:                                    ; preds = %278, %275
  %287 = load i16, i16* %17, align 2, !dbg !576
  %288 = icmp ne i16 %287, 0, !dbg !576
  br i1 %288, label %289, label %296, !dbg !578

; <label>:289:                                    ; preds = %286
  %290 = load %struct.pcap_dumper*, %struct.pcap_dumper** @dumper, align 8, !dbg !579
  %291 = bitcast %struct.pcap_dumper* %290 to %struct._IO_FILE*, !dbg !581
  %292 = call i32 @fflush(%struct._IO_FILE* %291), !dbg !582
  %293 = load %struct.pcap_dumper*, %struct.pcap_dumper** @dumper, align 8, !dbg !583
  %294 = bitcast %struct.pcap_dumper* %293 to i8*, !dbg !584
  %295 = load i8*, i8** @packet, align 8, !dbg !585
  call void @pcap_dump(i8* %294, %struct.pcap_pkthdr* @hdr, i8* %295), !dbg !586
  br label %296, !dbg !587

; <label>:296:                                    ; preds = %289, %286
  br label %249, !dbg !588, !llvm.loop !548

; <label>:297:                                    ; preds = %235, %94
  %298 = load i32, i32* %11, align 4, !dbg !590
  ret i32 %298, !dbg !590
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare i32 @pcap_lookupnet(i8*, i32*, i32*, i8*) #3

declare i32 @w_error(i32, i8*, ...) #3

declare %struct.pcap* @pcap_open_live(i8*, i32, i32, i32, i8*) #3

declare %struct.pcap_dumper* @pcap_dump_open(%struct.pcap*, i8*) #3

declare %struct.pcap* @pcap_open_offline(i8*, i8*) #3

declare i32 @device(i8*, %struct.pcap*) #3

declare %struct.libnet_context* @libnet_init(i32, i8*, i8*) #3

declare %struct.libnet_ether_addr* @libnet_get_hwaddr(%struct.libnet_context*) #3

declare i8* @libnet_geterror(%struct.libnet_context*) #3

; Function Attrs: nounwind
declare i8* @inet_ntoa(i32) #4

declare i32 @printf(i8*, ...) #3

declare i8* @nast_hex_ntoa(i8*) #3

declare i8* @libnet_addr2name4(i32, i8 zeroext) #3

declare i32 @libnet_get_ipaddr4(%struct.libnet_context*) #3

declare void @openfile() #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @strerror(i32) #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

declare void @libnet_destroy(%struct.libnet_context*) #3

declare i32 @pcap_compile(%struct.pcap*, %struct.bpf_program*, i8*, i32, i32) #3

declare i32 @pcap_setfilter(%struct.pcap*, %struct.bpf_program*) #3

declare void @bkg() #3

declare i8* @pcap_next(%struct.pcap*, %struct.pcap_pkthdr*) #3

; Function Attrs: nounwind uwtable
define void @sniff(i32, i32, %struct._IO_FILE*, %struct._IO_FILE*) #0 !dbg !591 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca %struct._IO_FILE*, align 8
  %9 = alloca %struct.libnet_ipv4_hdr*, align 8
  %10 = alloca i16, align 2
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !594, metadata !190), !dbg !595
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !596, metadata !190), !dbg !597
  store %struct._IO_FILE* %2, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !598, metadata !190), !dbg !599
  store %struct._IO_FILE* %3, %struct._IO_FILE** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %8, metadata !600, metadata !190), !dbg !601
  call void @llvm.dbg.declare(metadata %struct.libnet_ipv4_hdr** %9, metadata !602, metadata !190), !dbg !603
  call void @llvm.dbg.declare(metadata i16* %10, metadata !604, metadata !190), !dbg !606
  %11 = load i8*, i8** @packet, align 8, !dbg !607
  %12 = call zeroext i16 @handle_ethernet(i8* %11), !dbg !608
  store i16 %12, i16* %10, align 2, !dbg !609
  %13 = load i16, i16* %10, align 2, !dbg !610
  %14 = zext i16 %13 to i32, !dbg !610
  %15 = icmp eq i32 %14, 2054, !dbg !612
  br i1 %15, label %20, label %16, !dbg !613

; <label>:16:                                     ; preds = %4
  %17 = load i16, i16* %10, align 2, !dbg !614
  %18 = zext i16 %17 to i32, !dbg !614
  %19 = icmp eq i32 %18, 32821, !dbg !616
  br i1 %19, label %20, label %22, !dbg !617

; <label>:20:                                     ; preds = %16, %4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !618
  call void @handle_ARP(%struct._IO_FILE* %21), !dbg !619
  br label %22, !dbg !619

; <label>:22:                                     ; preds = %20, %16
  %23 = load i8*, i8** @packet, align 8, !dbg !620
  %24 = load i16, i16* @offset, align 2, !dbg !621
  %25 = sext i16 %24 to i32, !dbg !621
  %26 = sext i32 %25 to i64, !dbg !622
  %27 = getelementptr inbounds i8, i8* %23, i64 %26, !dbg !622
  %28 = bitcast i8* %27 to %struct.libnet_ipv4_hdr*, !dbg !623
  store %struct.libnet_ipv4_hdr* %28, %struct.libnet_ipv4_hdr** %9, align 8, !dbg !624
  %29 = load %struct.libnet_ipv4_hdr*, %struct.libnet_ipv4_hdr** %9, align 8, !dbg !625
  %30 = getelementptr inbounds %struct.libnet_ipv4_hdr, %struct.libnet_ipv4_hdr* %29, i32 0, i32 6, !dbg !626
  %31 = load i8, i8* %30, align 1, !dbg !626
  %32 = zext i8 %31 to i32, !dbg !625
  switch i32 %32, label %56 [
    i32 6, label %33
    i32 17, label %40
    i32 1, label %47
    i32 2, label %54
  ], !dbg !627

; <label>:33:                                     ; preds = %22
  %34 = load i32, i32* %5, align 4, !dbg !628
  %35 = trunc i32 %34 to i16, !dbg !628
  %36 = load i32, i32* %6, align 4, !dbg !630
  %37 = trunc i32 %36 to i16, !dbg !630
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !631
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8, !dbg !632
  call void @handle_TCP(i16 zeroext %35, i16 zeroext %37, %struct._IO_FILE* %38, %struct._IO_FILE* %39), !dbg !633
  br label %56, !dbg !634

; <label>:40:                                     ; preds = %22
  %41 = load i32, i32* %5, align 4, !dbg !635
  %42 = trunc i32 %41 to i16, !dbg !635
  %43 = load i32, i32* %6, align 4, !dbg !636
  %44 = trunc i32 %43 to i16, !dbg !636
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !637
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8, !dbg !638
  call void @handle_UDP(i16 zeroext %42, i16 zeroext %44, %struct._IO_FILE* %45, %struct._IO_FILE* %46), !dbg !639
  br label %56, !dbg !640

; <label>:47:                                     ; preds = %22
  %48 = load i32, i32* %5, align 4, !dbg !641
  %49 = trunc i32 %48 to i16, !dbg !641
  %50 = load i32, i32* %6, align 4, !dbg !642
  %51 = trunc i32 %50 to i16, !dbg !642
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !643
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8, !dbg !644
  call void @handle_ICMP(i16 zeroext %49, i16 zeroext %51, %struct._IO_FILE* %52, %struct._IO_FILE* %53), !dbg !645
  br label %56, !dbg !646

; <label>:54:                                     ; preds = %22
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !647
  call void @handle_IGMP(%struct._IO_FILE* %55), !dbg !648
  br label %56, !dbg !649

; <label>:56:                                     ; preds = %22, %54, %47, %40, %33
  ret void, !dbg !650
}

declare i32 @fflush(%struct._IO_FILE*) #3

declare void @pcap_dump(i8*, %struct.pcap_pkthdr*, i8*) #3

declare zeroext i16 @handle_ethernet(i8*) #3

declare void @handle_ARP(%struct._IO_FILE*) #3

declare void @handle_TCP(i16 zeroext, i16 zeroext, %struct._IO_FILE*, %struct._IO_FILE*) #3

declare void @handle_UDP(i16 zeroext, i16 zeroext, %struct._IO_FILE*, %struct._IO_FILE*) #3

declare void @handle_ICMP(i16 zeroext, i16 zeroext, %struct._IO_FILE*, %struct._IO_FILE*) #3

declare void @handle_IGMP(%struct._IO_FILE*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!182, !183}
!llvm.ident = !{!184}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !97)
!1 = !DIFile(filename: "[inter]sniff.o.i", directory: "/home/lichi/Desktop/nast/[task]nast")
!2 = !{}
!3 = !{!4, !5, !11, !72}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !7, line: 33, baseType: !8)
!7 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !9, line: 30, baseType: !10)
!9 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!10 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !13, line: 48, baseType: !14)
!13 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !15, line: 241, size: 1728, align: 64, elements: !16)
!15 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!16 = !{!17, !19, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !40, !41, !42, !43, !46, !48, !50, !54, !57, !59, !60, !61, !62, !63, !67, !68}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !14, file: !15, line: 242, baseType: !18, size: 32, align: 32)
!18 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !14, file: !15, line: 247, baseType: !20, size: 64, align: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !14, file: !15, line: 248, baseType: !20, size: 64, align: 64, offset: 128)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !14, file: !15, line: 249, baseType: !20, size: 64, align: 64, offset: 192)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !14, file: !15, line: 250, baseType: !20, size: 64, align: 64, offset: 256)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !14, file: !15, line: 251, baseType: !20, size: 64, align: 64, offset: 320)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !14, file: !15, line: 252, baseType: !20, size: 64, align: 64, offset: 384)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !14, file: !15, line: 253, baseType: !20, size: 64, align: 64, offset: 448)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !14, file: !15, line: 254, baseType: !20, size: 64, align: 64, offset: 512)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !14, file: !15, line: 256, baseType: !20, size: 64, align: 64, offset: 576)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !14, file: !15, line: 257, baseType: !20, size: 64, align: 64, offset: 640)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !14, file: !15, line: 258, baseType: !20, size: 64, align: 64, offset: 704)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !14, file: !15, line: 260, baseType: !33, size: 64, align: 64, offset: 768)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !15, line: 156, size: 192, align: 64, elements: !35)
!35 = !{!36, !37, !39}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !34, file: !15, line: 157, baseType: !33, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !34, file: !15, line: 158, baseType: !38, size: 64, align: 64, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !34, file: !15, line: 162, baseType: !18, size: 32, align: 32, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !14, file: !15, line: 262, baseType: !38, size: 64, align: 64, offset: 832)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !14, file: !15, line: 264, baseType: !18, size: 32, align: 32, offset: 896)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !14, file: !15, line: 268, baseType: !18, size: 32, align: 32, offset: 928)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !14, file: !15, line: 270, baseType: !44, size: 64, align: 64, offset: 960)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !9, line: 131, baseType: !45)
!45 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !14, file: !15, line: 274, baseType: !47, size: 16, align: 16, offset: 1024)
!47 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !14, file: !15, line: 275, baseType: !49, size: 8, align: 8, offset: 1040)
!49 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !14, file: !15, line: 276, baseType: !51, size: 8, align: 8, offset: 1048)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 8, align: 8, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 1)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !14, file: !15, line: 280, baseType: !55, size: 64, align: 64, offset: 1088)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !15, line: 150, baseType: null)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !14, file: !15, line: 289, baseType: !58, size: 64, align: 64, offset: 1152)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !9, line: 132, baseType: !45)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !14, file: !15, line: 297, baseType: !4, size: 64, align: 64, offset: 1216)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !14, file: !15, line: 298, baseType: !4, size: 64, align: 64, offset: 1280)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !14, file: !15, line: 299, baseType: !4, size: 64, align: 64, offset: 1344)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !14, file: !15, line: 300, baseType: !4, size: 64, align: 64, offset: 1408)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !14, file: !15, line: 302, baseType: !64, size: 64, align: 64, offset: 1472)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !65, line: 216, baseType: !66)
!65 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!66 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !14, file: !15, line: 303, baseType: !18, size: 32, align: 32, offset: 1536)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !14, file: !15, line: 305, baseType: !69, size: 160, align: 8, offset: 1568)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 160, align: 8, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 20)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_ipv4_hdr", file: !74, line: 666, size: 160, align: 32, elements: !75)
!74 = !DIFile(filename: "/usr/local/include/libnet/libnet-headers.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!75 = !{!76, !79, !80, !81, !83, !84, !85, !86, !87, !88, !96}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "ip_hl", scope: !73, file: !74, line: 669, baseType: !77, size: 4, align: 8, flags: DIFlagBitField, extraData: i64 0)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !78, line: 48, baseType: !10)
!78 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!79 = !DIDerivedType(tag: DW_TAG_member, name: "ip_v", scope: !73, file: !74, line: 670, baseType: !77, size: 4, align: 8, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "ip_tos", scope: !73, file: !74, line: 676, baseType: !77, size: 8, align: 8, offset: 8)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "ip_len", scope: !73, file: !74, line: 689, baseType: !82, size: 16, align: 16, offset: 16)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !78, line: 49, baseType: !47)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "ip_id", scope: !73, file: !74, line: 690, baseType: !82, size: 16, align: 16, offset: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "ip_off", scope: !73, file: !74, line: 691, baseType: !82, size: 16, align: 16, offset: 48)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "ip_ttl", scope: !73, file: !74, line: 704, baseType: !77, size: 8, align: 8, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "ip_p", scope: !73, file: !74, line: 705, baseType: !77, size: 8, align: 8, offset: 72)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "ip_sum", scope: !73, file: !74, line: 706, baseType: !82, size: 16, align: 16, offset: 80)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "ip_src", scope: !73, file: !74, line: 707, baseType: !89, size: 32, align: 32, offset: 96)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !90, line: 31, size: 32, align: 32, elements: !91)
!90 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!91 = !{!92}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !89, file: !90, line: 33, baseType: !93, size: 32, align: 32)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !90, line: 30, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !78, line: 51, baseType: !95)
!95 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "ip_dst", scope: !73, file: !74, line: 707, baseType: !89, size: 32, align: 32, offset: 128)
!97 = !{!98, !100, !102, !103, !104, !105, !123, !127, !131, !137, !138, !139, !140, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !171, !172, !175, !179, !180, !181}
!98 = distinct !DIGlobalVariable(name: "logd", scope: !0, file: !99, line: 98, type: !11, isLocal: false, isDefinition: true, variable: %struct._IO_FILE** @logd)
!99 = !DIFile(filename: "include/nast.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!100 = distinct !DIGlobalVariable(name: "offset", scope: !0, file: !99, line: 99, type: !101, isLocal: false, isDefinition: true, variable: i16* @offset)
!101 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!102 = distinct !DIGlobalVariable(name: "npkt", scope: !0, file: !99, line: 100, type: !18, isLocal: false, isDefinition: true, variable: i32* @npkt)
!103 = distinct !DIGlobalVariable(name: "packet", scope: !0, file: !99, line: 101, type: !5, isLocal: false, isDefinition: true, variable: i8** @packet)
!104 = distinct !DIGlobalVariable(name: "buf", scope: !0, file: !99, line: 102, type: !5, isLocal: false, isDefinition: true, variable: i8** @buf)
!105 = distinct !DIGlobalVariable(name: "hdr", scope: !0, file: !99, line: 103, type: !106, isLocal: false, isDefinition: true, variable: %struct.pcap_pkthdr* @hdr)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcap_pkthdr", file: !107, line: 199, size: 192, align: 64, elements: !108)
!107 = !DIFile(filename: "/usr/local/include/pcap/pcap.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!108 = !{!109, !117, !122}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !106, file: !107, line: 200, baseType: !110, size: 128, align: 64)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !111, line: 30, size: 128, align: 64, elements: !112)
!111 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!112 = !{!113, !115}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !110, file: !111, line: 32, baseType: !114, size: 64, align: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !9, line: 139, baseType: !45)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !110, file: !111, line: 33, baseType: !116, size: 64, align: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !9, line: 141, baseType: !45)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "caplen", scope: !106, file: !107, line: 201, baseType: !118, size: 32, align: 32, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "bpf_u_int32", file: !119, line: 85, baseType: !120)
!119 = !DIFile(filename: "/usr/local/include/pcap/bpf.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !7, line: 35, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_int", file: !9, line: 32, baseType: !95)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !106, file: !107, line: 202, baseType: !118, size: 32, align: 32, offset: 160)
!123 = distinct !DIGlobalVariable(name: "descr", scope: !0, file: !99, line: 104, type: !124, isLocal: false, isDefinition: true, variable: %struct.pcap** @descr)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "pcap_t", file: !107, line: 118, baseType: !126)
!126 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcap", file: !107, line: 118, flags: DIFlagFwdDecl)
!127 = distinct !DIGlobalVariable(name: "dumper", scope: !0, file: !99, line: 105, type: !128, isLocal: false, isDefinition: true, variable: %struct.pcap_dumper** @dumper)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "pcap_dumper_t", file: !107, line: 119, baseType: !130)
!130 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcap_dumper", file: !107, line: 119, flags: DIFlagFwdDecl)
!131 = distinct !DIGlobalVariable(name: "statistic", scope: !0, file: !99, line: 106, type: !132, isLocal: false, isDefinition: true, variable: %struct.pcap_stat* @statistic)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcap_stat", file: !107, line: 208, size: 96, align: 32, elements: !133)
!133 = !{!134, !135, !136}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "ps_recv", scope: !132, file: !107, line: 209, baseType: !120, size: 32, align: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "ps_drop", scope: !132, file: !107, line: 210, baseType: !120, size: 32, align: 32, offset: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "ps_ifdrop", scope: !132, file: !107, line: 211, baseType: !120, size: 32, align: 32, offset: 64)
!137 = distinct !DIGlobalVariable(name: "maskp", scope: !0, file: !99, line: 107, type: !118, isLocal: false, isDefinition: true, variable: i32* @maskp)
!138 = distinct !DIGlobalVariable(name: "netp", scope: !0, file: !99, line: 108, type: !118, isLocal: false, isDefinition: true, variable: i32* @netp)
!139 = distinct !DIGlobalVariable(name: "datalink", scope: !0, file: !99, line: 109, type: !18, isLocal: false, isDefinition: true, variable: i32* @datalink)
!140 = distinct !DIGlobalVariable(name: "fp", scope: !0, file: !99, line: 110, type: !141, isLocal: false, isDefinition: true, variable: %struct.bpf_program* @fp)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_program", file: !119, line: 104, size: 128, align: 64, elements: !142)
!142 = !{!143, !144}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "bf_len", scope: !141, file: !119, line: 105, baseType: !120, size: 32, align: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "bf_insns", scope: !141, file: !119, line: 106, baseType: !145, size: 64, align: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_insn", file: !119, line: 234, size: 64, align: 32, elements: !147)
!147 = !{!148, !151, !152, !153}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !146, file: !119, line: 235, baseType: !149, size: 16, align: 16)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_short", file: !7, line: 34, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_short", file: !9, line: 31, baseType: !47)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "jt", scope: !146, file: !119, line: 236, baseType: !6, size: 8, align: 8, offset: 16)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "jf", scope: !146, file: !119, line: 237, baseType: !6, size: 8, align: 8, offset: 24)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !146, file: !119, line: 238, baseType: !118, size: 32, align: 32, offset: 32)
!154 = distinct !DIGlobalVariable(name: "logname", scope: !0, file: !99, line: 111, type: !20, isLocal: false, isDefinition: true, variable: i8** @logname)
!155 = distinct !DIGlobalVariable(name: "tcpdl", scope: !0, file: !99, line: 112, type: !20, isLocal: false, isDefinition: true, variable: i8** @tcpdl)
!156 = distinct !DIGlobalVariable(name: "tr", scope: !0, file: !99, line: 113, type: !149, isLocal: false, isDefinition: true, variable: i16* @tr)
!157 = distinct !DIGlobalVariable(name: "tl", scope: !0, file: !99, line: 113, type: !149, isLocal: false, isDefinition: true, variable: i16* @tl)
!158 = distinct !DIGlobalVariable(name: "graph", scope: !0, file: !99, line: 114, type: !149, isLocal: false, isDefinition: true, variable: i16* @graph)
!159 = distinct !DIGlobalVariable(name: "cont", scope: !0, file: !99, line: 115, type: !149, isLocal: false, isDefinition: true, variable: i16* @cont)
!160 = distinct !DIGlobalVariable(name: "stream_glob", scope: !0, file: !99, line: 117, type: !18, isLocal: false, isDefinition: true, variable: i32* @stream_glob)
!161 = distinct !DIGlobalVariable(name: "bc_glob", scope: !0, file: !99, line: 118, type: !18, isLocal: false, isDefinition: true, variable: i32* @bc_glob)
!162 = distinct !DIGlobalVariable(name: "sniff_glob", scope: !0, file: !99, line: 119, type: !18, isLocal: false, isDefinition: true, variable: i32* @sniff_glob)
!163 = distinct !DIGlobalVariable(name: "rst_glob", scope: !0, file: !99, line: 120, type: !18, isLocal: false, isDefinition: true, variable: i32* @rst_glob)
!164 = distinct !DIGlobalVariable(name: "arp_glob", scope: !0, file: !99, line: 121, type: !18, isLocal: false, isDefinition: true, variable: i32* @arp_glob)
!165 = distinct !DIGlobalVariable(name: "pt", scope: !0, file: !99, line: 122, type: !166, isLocal: false, isDefinition: true, variable: [2 x i64]* @pt)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 128, align: 64, elements: !169)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !168, line: 60, baseType: !66)
!168 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!169 = !{!170}
!170 = !DISubrange(count: 2)
!171 = distinct !DIGlobalVariable(name: "lg", scope: !0, file: !99, line: 123, type: !18, isLocal: false, isDefinition: true, variable: i32* @lg)
!172 = distinct !DIGlobalVariable(name: "tm", scope: !0, file: !99, line: 132, type: !173, isLocal: false, isDefinition: true, variable: i64* @tm)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !174, line: 75, baseType: !114)
!174 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!175 = distinct !DIGlobalVariable(name: "timed", scope: !0, file: !99, line: 133, type: !176, isLocal: false, isDefinition: true, variable: [60 x i8]* @timed)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 480, align: 8, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 60)
!179 = distinct !DIGlobalVariable(name: "demonize", scope: !0, file: !99, line: 136, type: !149, isLocal: false, isDefinition: true, variable: i16* @demonize)
!180 = distinct !DIGlobalVariable(name: "line_s", scope: !0, file: !99, line: 138, type: !18, isLocal: false, isDefinition: true, variable: i32* @line_s)
!181 = distinct !DIGlobalVariable(name: "row_s", scope: !0, file: !99, line: 139, type: !18, isLocal: false, isDefinition: true, variable: i32* @row_s)
!182 = !{i32 2, !"Dwarf Version", i32 4}
!183 = !{i32 2, !"Debug Info Version", i32 3}
!184 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!185 = distinct !DISubprogram(name: "run_sniffer", scope: !186, file: !186, line: 27, type: !187, isLocal: false, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!186 = !DIFile(filename: "sniff.c", directory: "/home/lichi/Desktop/nast/[task]nast")
!187 = !DISubroutineType(types: !188)
!188 = !{!18, !149, !149, !149, !149, !149, !149, !149, !20, !20, !20}
!189 = !DILocalVariable(name: "promisc", arg: 1, scope: !185, file: !186, line: 27, type: !149)
!190 = !DIExpression()
!191 = !DILocation(line: 27, column: 26, scope: !185)
!192 = !DILocalVariable(name: "data", arg: 2, scope: !185, file: !186, line: 27, type: !149)
!193 = !DILocation(line: 27, column: 43, scope: !185)
!194 = !DILocalVariable(name: "hex", arg: 3, scope: !185, file: !186, line: 27, type: !149)
!195 = !DILocation(line: 27, column: 57, scope: !185)
!196 = !DILocalVariable(name: "f", arg: 4, scope: !185, file: !186, line: 27, type: !149)
!197 = !DILocation(line: 27, column: 70, scope: !185)
!198 = !DILocalVariable(name: "l", arg: 5, scope: !185, file: !186, line: 27, type: !149)
!199 = !DILocation(line: 27, column: 81, scope: !185)
!200 = !DILocalVariable(name: "tcpdlog", arg: 6, scope: !185, file: !186, line: 27, type: !149)
!201 = !DILocation(line: 27, column: 92, scope: !185)
!202 = !DILocalVariable(name: "tcpdread", arg: 7, scope: !185, file: !186, line: 27, type: !149)
!203 = !DILocation(line: 27, column: 109, scope: !185)
!204 = !DILocalVariable(name: "filter", arg: 8, scope: !185, file: !186, line: 27, type: !20)
!205 = !DILocation(line: 27, column: 125, scope: !185)
!206 = !DILocalVariable(name: "dev", arg: 9, scope: !185, file: !186, line: 27, type: !20)
!207 = !DILocation(line: 27, column: 139, scope: !185)
!208 = !DILocalVariable(name: "ldname", arg: 10, scope: !185, file: !186, line: 27, type: !20)
!209 = !DILocation(line: 27, column: 150, scope: !185)
!210 = !DILocalVariable(name: "mask", scope: !185, file: !186, line: 29, type: !20)
!211 = !DILocation(line: 29, column: 10, scope: !185)
!212 = !DILocalVariable(name: "errbuf", scope: !185, file: !186, line: 30, type: !213)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 2048, align: 8, elements: !214)
!214 = !{!215}
!215 = !DISubrange(count: 256)
!216 = !DILocation(line: 30, column: 9, scope: !185)
!217 = !DILocalVariable(name: "L", scope: !185, file: !186, line: 31, type: !218)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64, align: 64)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "libnet_t", file: !220, line: 235, baseType: !221)
!220 = !DIFile(filename: "/usr/local/include/libnet/libnet-structures.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_context", file: !220, line: 186, size: 3200, align: 64, elements: !222)
!222 = !{!223, !224, !225, !243, !244, !245, !246, !247, !248, !249, !256, !257, !261, !262}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !221, file: !220, line: 192, baseType: !18, size: 32, align: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "injection_type", scope: !221, file: !220, line: 194, baseType: !18, size: 32, align: 32, offset: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_blocks", scope: !221, file: !220, line: 206, baseType: !226, size: 64, align: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "libnet_pblock_t", file: !220, line: 178, baseType: !228)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_protocol_block", file: !220, line: 77, size: 384, align: 64, elements: !229)
!229 = !{!230, !232, !233, !234, !235, !236, !237, !240, !242}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !228, file: !220, line: 79, baseType: !231, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "b_len", scope: !228, file: !220, line: 80, baseType: !94, size: 32, align: 32, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "h_len", scope: !228, file: !220, line: 81, baseType: !82, size: 16, align: 16, offset: 96)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "copied", scope: !228, file: !220, line: 92, baseType: !94, size: 32, align: 32, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !228, file: !220, line: 94, baseType: !77, size: 8, align: 8, offset: 160)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !228, file: !220, line: 168, baseType: !77, size: 8, align: 8, offset: 168)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "ptag", scope: !228, file: !220, line: 170, baseType: !238, size: 32, align: 32, offset: 192)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "libnet_ptag_t", file: !220, line: 70, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !7, line: 196, baseType: !18)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !228, file: !220, line: 175, baseType: !241, size: 64, align: 64, offset: 256)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64, align: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !228, file: !220, line: 176, baseType: !241, size: 64, align: 64, offset: 320)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "pblock_end", scope: !221, file: !220, line: 207, baseType: !226, size: 64, align: 64, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "n_pblocks", scope: !221, file: !220, line: 208, baseType: !94, size: 32, align: 32, offset: 192)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "link_type", scope: !221, file: !220, line: 210, baseType: !18, size: 32, align: 32, offset: 224)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "link_offset", scope: !221, file: !220, line: 224, baseType: !18, size: 32, align: 32, offset: 256)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "aligner", scope: !221, file: !220, line: 225, baseType: !18, size: 32, align: 32, offset: 288)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !221, file: !220, line: 226, baseType: !20, size: 64, align: 64, offset: 320)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !221, file: !220, line: 228, baseType: !250, size: 192, align: 64, offset: 384)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_stats", file: !220, line: 52, size: 192, align: 64, elements: !251)
!251 = !{!252, !254, !255}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "packets_sent", scope: !250, file: !220, line: 55, baseType: !253, size: 64, align: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !78, line: 55, baseType: !66)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "packet_errors", scope: !250, file: !220, line: 56, baseType: !253, size: 64, align: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_written", scope: !250, file: !220, line: 57, baseType: !253, size: 64, align: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "ptag_state", scope: !221, file: !220, line: 229, baseType: !238, size: 32, align: 32, offset: 576)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !221, file: !220, line: 230, baseType: !258, size: 512, align: 8, offset: 608)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 512, align: 8, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "err_buf", scope: !221, file: !220, line: 232, baseType: !213, size: 2048, align: 8, offset: 1120)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "total_size", scope: !221, file: !220, line: 233, baseType: !94, size: 32, align: 32, offset: 3168)
!263 = !DILocation(line: 31, column: 14, scope: !185)
!264 = !DILocalVariable(name: "ld", scope: !185, file: !186, line: 32, type: !18)
!265 = !DILocation(line: 32, column: 8, scope: !185)
!266 = !DILocalVariable(name: "e", scope: !185, file: !186, line: 33, type: !267)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64, align: 64)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_ether_addr", file: !74, line: 530, size: 48, align: 8, elements: !269)
!269 = !{!270}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "ether_addr_octet", scope: !268, file: !74, line: 532, baseType: !271, size: 48, align: 8)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 48, align: 8, elements: !272)
!272 = !{!273}
!273 = !DISubrange(count: 6)
!274 = !DILocation(line: 33, column: 30, scope: !185)
!275 = !DILocalVariable(name: "addr", scope: !185, file: !186, line: 34, type: !89)
!276 = !DILocation(line: 34, column: 19, scope: !185)
!277 = !DILocalVariable(name: "ldd", scope: !185, file: !186, line: 36, type: !11)
!278 = !DILocation(line: 36, column: 10, scope: !185)
!279 = !DILocation(line: 38, column: 8, scope: !185)
!280 = !DILocation(line: 39, column: 7, scope: !185)
!281 = !DILocation(line: 40, column: 9, scope: !185)
!282 = !DILocation(line: 41, column: 16, scope: !283)
!283 = distinct !DILexicalBlock(scope: !185, file: !186, line: 41, column: 8)
!284 = !DILocation(line: 41, column: 8, scope: !283)
!285 = !DILocation(line: 41, column: 8, scope: !185)
!286 = !DILocation(line: 42, column: 9, scope: !283)
!287 = !DILocation(line: 42, column: 6, scope: !283)
!288 = !DILocation(line: 45, column: 24, scope: !289)
!289 = distinct !DILexicalBlock(scope: !185, file: !186, line: 45, column: 8)
!290 = !DILocation(line: 45, column: 41, scope: !289)
!291 = !DILocation(line: 45, column: 9, scope: !289)
!292 = !DILocation(line: 45, column: 49, scope: !289)
!293 = !DILocation(line: 45, column: 8, scope: !185)
!294 = !DILocation(line: 47, column: 45, scope: !295)
!295 = distinct !DILexicalBlock(scope: !289, file: !186, line: 46, column: 6)
!296 = !DILocation(line: 47, column: 2, scope: !295)
!297 = !DILocation(line: 48, column: 6, scope: !295)
!298 = !DILocation(line: 50, column: 8, scope: !299)
!299 = distinct !DILexicalBlock(scope: !185, file: !186, line: 50, column: 8)
!300 = !DILocation(line: 50, column: 8, scope: !185)
!301 = !DILocation(line: 52, column: 31, scope: !302)
!302 = distinct !DILexicalBlock(scope: !303, file: !186, line: 52, column: 6)
!303 = distinct !DILexicalBlock(scope: !299, file: !186, line: 51, column: 6)
!304 = !DILocation(line: 52, column: 43, scope: !302)
!305 = !DILocation(line: 52, column: 56, scope: !302)
!306 = !DILocation(line: 52, column: 15, scope: !302)
!307 = !DILocation(line: 52, column: 13, scope: !302)
!308 = !DILocation(line: 52, column: 64, scope: !302)
!309 = !DILocation(line: 52, column: 6, scope: !303)
!310 = !DILocation(line: 54, column: 51, scope: !311)
!311 = distinct !DILexicalBlock(scope: !302, file: !186, line: 53, column: 4)
!312 = !DILocation(line: 54, column: 7, scope: !311)
!313 = !DILocation(line: 55, column: 4, scope: !311)
!314 = !DILocation(line: 57, column: 31, scope: !315)
!315 = distinct !DILexicalBlock(scope: !303, file: !186, line: 57, column: 6)
!316 = !DILocation(line: 57, column: 37, scope: !315)
!317 = !DILocation(line: 57, column: 16, scope: !315)
!318 = !DILocation(line: 57, column: 14, scope: !315)
!319 = !DILocation(line: 57, column: 44, scope: !315)
!320 = !DILocation(line: 57, column: 6, scope: !303)
!321 = !DILocation(line: 59, column: 51, scope: !322)
!322 = distinct !DILexicalBlock(scope: !315, file: !186, line: 58, column: 4)
!323 = !DILocation(line: 59, column: 7, scope: !322)
!324 = !DILocation(line: 60, column: 4, scope: !322)
!325 = !DILocation(line: 61, column: 6, scope: !303)
!326 = !DILocation(line: 63, column: 12, scope: !327)
!327 = distinct !DILexicalBlock(scope: !299, file: !186, line: 63, column: 12)
!328 = !DILocation(line: 63, column: 12, scope: !299)
!329 = !DILocation(line: 65, column: 33, scope: !330)
!330 = distinct !DILexicalBlock(scope: !331, file: !186, line: 65, column: 6)
!331 = distinct !DILexicalBlock(scope: !327, file: !186, line: 64, column: 6)
!332 = !DILocation(line: 65, column: 39, scope: !330)
!333 = !DILocation(line: 65, column: 15, scope: !330)
!334 = !DILocation(line: 65, column: 13, scope: !330)
!335 = !DILocation(line: 65, column: 47, scope: !330)
!336 = !DILocation(line: 65, column: 6, scope: !331)
!337 = !DILocation(line: 67, column: 54, scope: !338)
!338 = distinct !DILexicalBlock(scope: !330, file: !186, line: 66, column: 4)
!339 = !DILocation(line: 67, column: 7, scope: !338)
!340 = !DILocation(line: 68, column: 4, scope: !338)
!341 = !DILocation(line: 69, column: 6, scope: !331)
!342 = !DILocation(line: 71, column: 38, scope: !343)
!343 = distinct !DILexicalBlock(scope: !327, file: !186, line: 71, column: 13)
!344 = !DILocation(line: 71, column: 50, scope: !343)
!345 = !DILocation(line: 71, column: 63, scope: !343)
!346 = !DILocation(line: 71, column: 22, scope: !343)
!347 = !DILocation(line: 71, column: 20, scope: !343)
!348 = !DILocation(line: 71, column: 71, scope: !343)
!349 = !DILocation(line: 71, column: 13, scope: !327)
!350 = !DILocation(line: 73, column: 46, scope: !351)
!351 = distinct !DILexicalBlock(scope: !343, file: !186, line: 72, column: 6)
!352 = !DILocation(line: 73, column: 2, scope: !351)
!353 = !DILocation(line: 74, column: 6, scope: !351)
!354 = !DILocation(line: 76, column: 24, scope: !355)
!355 = distinct !DILexicalBlock(scope: !185, file: !186, line: 76, column: 8)
!356 = !DILocation(line: 76, column: 28, scope: !355)
!357 = !DILocation(line: 76, column: 17, scope: !355)
!358 = !DILocation(line: 76, column: 16, scope: !355)
!359 = !DILocation(line: 76, column: 15, scope: !355)
!360 = !DILocation(line: 76, column: 8, scope: !355)
!361 = !DILocation(line: 76, column: 36, scope: !355)
!362 = !DILocation(line: 76, column: 8, scope: !185)
!363 = !DILocation(line: 76, column: 42, scope: !364)
!364 = !DILexicalBlockFile(scope: !355, file: !186, discriminator: 1)
!365 = !DILocation(line: 78, column: 33, scope: !185)
!366 = !DILocation(line: 78, column: 38, scope: !185)
!367 = !DILocation(line: 78, column: 8, scope: !185)
!368 = !DILocation(line: 78, column: 6, scope: !185)
!369 = !DILocation(line: 80, column: 26, scope: !185)
!370 = !DILocation(line: 80, column: 8, scope: !185)
!371 = !DILocation(line: 80, column: 6, scope: !185)
!372 = !DILocation(line: 81, column: 9, scope: !373)
!373 = distinct !DILexicalBlock(scope: !185, file: !186, line: 81, column: 8)
!374 = !DILocation(line: 81, column: 8, scope: !185)
!375 = !DILocation(line: 83, column: 67, scope: !376)
!376 = distinct !DILexicalBlock(scope: !373, file: !186, line: 82, column: 6)
!377 = !DILocation(line: 83, column: 51, scope: !376)
!378 = !DILocation(line: 83, column: 2, scope: !379)
!379 = !DILexicalBlockFile(scope: !376, file: !186, discriminator: 1)
!380 = !DILocation(line: 84, column: 6, scope: !376)
!381 = !DILocation(line: 86, column: 18, scope: !185)
!382 = !DILocation(line: 86, column: 9, scope: !185)
!383 = !DILocation(line: 86, column: 16, scope: !185)
!384 = !DILocation(line: 87, column: 16, scope: !385)
!385 = distinct !DILexicalBlock(scope: !185, file: !186, line: 87, column: 8)
!386 = !DILocation(line: 87, column: 14, scope: !385)
!387 = !DILocation(line: 87, column: 32, scope: !385)
!388 = !DILocation(line: 87, column: 8, scope: !185)
!389 = !DILocation(line: 89, column: 2, scope: !390)
!390 = distinct !DILexicalBlock(scope: !385, file: !186, line: 88, column: 6)
!391 = !DILocation(line: 90, column: 6, scope: !390)
!392 = !DILocation(line: 92, column: 8, scope: !393)
!393 = distinct !DILexicalBlock(scope: !185, file: !186, line: 92, column: 7)
!394 = !DILocation(line: 92, column: 7, scope: !185)
!395 = !DILocation(line: 94, column: 2, scope: !396)
!396 = distinct !DILexicalBlock(scope: !393, file: !186, line: 93, column: 6)
!397 = !DILocation(line: 95, column: 53, scope: !396)
!398 = !DILocation(line: 95, column: 2, scope: !396)
!399 = !DILocation(line: 96, column: 74, scope: !396)
!400 = !DILocation(line: 96, column: 77, scope: !396)
!401 = !DILocation(line: 96, column: 59, scope: !396)
!402 = !DILocation(line: 96, column: 2, scope: !403)
!403 = !DILexicalBlockFile(scope: !396, file: !186, discriminator: 1)
!404 = !DILocation(line: 97, column: 95, scope: !396)
!405 = !DILocation(line: 97, column: 76, scope: !396)
!406 = !DILocation(line: 97, column: 58, scope: !403)
!407 = !DILocation(line: 97, column: 2, scope: !408)
!408 = !DILexicalBlockFile(scope: !396, file: !186, discriminator: 2)
!409 = !DILocation(line: 98, column: 54, scope: !396)
!410 = !DILocation(line: 98, column: 2, scope: !396)
!411 = !DILocation(line: 100, column: 2, scope: !396)
!412 = !DILocation(line: 101, column: 6, scope: !413)
!413 = distinct !DILexicalBlock(scope: !396, file: !186, line: 101, column: 6)
!414 = !DILocation(line: 101, column: 6, scope: !396)
!415 = !DILocation(line: 101, column: 15, scope: !416)
!416 = !DILexicalBlockFile(scope: !413, file: !186, discriminator: 1)
!417 = !DILocation(line: 102, column: 7, scope: !413)
!418 = !DILocation(line: 104, column: 2, scope: !396)
!419 = !DILocation(line: 105, column: 6, scope: !420)
!420 = distinct !DILexicalBlock(scope: !396, file: !186, line: 105, column: 6)
!421 = !DILocation(line: 105, column: 6, scope: !396)
!422 = !DILocation(line: 105, column: 29, scope: !423)
!423 = !DILexicalBlockFile(scope: !420, file: !186, discriminator: 1)
!424 = !DILocation(line: 105, column: 14, scope: !423)
!425 = !DILocation(line: 106, column: 7, scope: !420)
!426 = !DILocation(line: 108, column: 2, scope: !396)
!427 = !DILocation(line: 109, column: 7, scope: !428)
!428 = distinct !DILexicalBlock(scope: !396, file: !186, line: 109, column: 6)
!429 = !DILocation(line: 109, column: 10, scope: !428)
!430 = !DILocation(line: 109, column: 14, scope: !431)
!431 = !DILexicalBlockFile(scope: !428, file: !186, discriminator: 1)
!432 = !DILocation(line: 109, column: 6, scope: !431)
!433 = !DILocation(line: 109, column: 17, scope: !434)
!434 = !DILexicalBlockFile(scope: !428, file: !186, discriminator: 2)
!435 = !DILocation(line: 110, column: 11, scope: !436)
!436 = distinct !DILexicalBlock(scope: !428, file: !186, line: 110, column: 11)
!437 = !DILocation(line: 110, column: 14, scope: !436)
!438 = !DILocation(line: 110, column: 18, scope: !439)
!439 = !DILexicalBlockFile(scope: !436, file: !186, discriminator: 1)
!440 = !DILocation(line: 110, column: 11, scope: !439)
!441 = !DILocation(line: 110, column: 21, scope: !442)
!442 = !DILexicalBlockFile(scope: !436, file: !186, discriminator: 2)
!443 = !DILocation(line: 111, column: 12, scope: !444)
!444 = distinct !DILexicalBlock(scope: !436, file: !186, line: 111, column: 11)
!445 = !DILocation(line: 111, column: 15, scope: !444)
!446 = !DILocation(line: 111, column: 18, scope: !447)
!447 = !DILexicalBlockFile(scope: !444, file: !186, discriminator: 1)
!448 = !DILocation(line: 111, column: 11, scope: !447)
!449 = !DILocation(line: 111, column: 21, scope: !450)
!450 = !DILexicalBlockFile(scope: !444, file: !186, discriminator: 2)
!451 = !DILocation(line: 112, column: 11, scope: !452)
!452 = distinct !DILexicalBlock(scope: !444, file: !186, line: 112, column: 11)
!453 = !DILocation(line: 112, column: 14, scope: !452)
!454 = !DILocation(line: 112, column: 17, scope: !455)
!455 = !DILexicalBlockFile(scope: !452, file: !186, discriminator: 1)
!456 = !DILocation(line: 112, column: 11, scope: !455)
!457 = !DILocation(line: 112, column: 20, scope: !458)
!458 = !DILexicalBlockFile(scope: !452, file: !186, discriminator: 2)
!459 = !DILocation(line: 113, column: 6, scope: !396)
!460 = !DILocation(line: 115, column: 8, scope: !461)
!461 = distinct !DILexicalBlock(scope: !185, file: !186, line: 115, column: 8)
!462 = !DILocation(line: 115, column: 8, scope: !185)
!463 = !DILocation(line: 117, column: 2, scope: !464)
!464 = distinct !DILexicalBlock(scope: !461, file: !186, line: 116, column: 6)
!465 = !DILocation(line: 119, column: 10, scope: !464)
!466 = !DILocation(line: 119, column: 2, scope: !464)
!467 = !DILocation(line: 120, column: 10, scope: !464)
!468 = !DILocation(line: 120, column: 57, scope: !464)
!469 = !DILocation(line: 120, column: 99, scope: !464)
!470 = !DILocation(line: 120, column: 80, scope: !464)
!471 = !DILocation(line: 120, column: 62, scope: !472)
!472 = !DILexicalBlockFile(scope: !464, file: !186, discriminator: 1)
!473 = !DILocation(line: 120, column: 2, scope: !474)
!474 = !DILexicalBlockFile(scope: !464, file: !186, discriminator: 2)
!475 = !DILocation(line: 121, column: 6, scope: !464)
!476 = !DILocation(line: 124, column: 8, scope: !477)
!477 = distinct !DILexicalBlock(scope: !185, file: !186, line: 124, column: 8)
!478 = !DILocation(line: 124, column: 8, scope: !185)
!479 = !DILocation(line: 126, column: 20, scope: !480)
!480 = distinct !DILexicalBlock(scope: !481, file: !186, line: 126, column: 6)
!481 = distinct !DILexicalBlock(scope: !477, file: !186, line: 125, column: 6)
!482 = !DILocation(line: 126, column: 14, scope: !480)
!483 = !DILocation(line: 126, column: 11, scope: !480)
!484 = !DILocation(line: 126, column: 34, scope: !480)
!485 = !DILocation(line: 126, column: 6, scope: !481)
!486 = !DILocation(line: 128, column: 82, scope: !487)
!487 = distinct !DILexicalBlock(scope: !480, file: !186, line: 127, column: 4)
!488 = !DILocation(line: 128, column: 81, scope: !487)
!489 = !DILocation(line: 128, column: 72, scope: !490)
!490 = !DILexicalBlockFile(scope: !487, file: !186, discriminator: 1)
!491 = !DILocation(line: 128, column: 7, scope: !492)
!492 = !DILexicalBlockFile(scope: !487, file: !186, discriminator: 2)
!493 = !DILocation(line: 129, column: 4, scope: !487)
!494 = !DILocation(line: 131, column: 10, scope: !481)
!495 = !DILocation(line: 131, column: 2, scope: !481)
!496 = !DILocation(line: 132, column: 10, scope: !481)
!497 = !DILocation(line: 132, column: 56, scope: !481)
!498 = !DILocation(line: 132, column: 98, scope: !481)
!499 = !DILocation(line: 132, column: 79, scope: !481)
!500 = !DILocation(line: 132, column: 61, scope: !501)
!501 = !DILexicalBlockFile(scope: !481, file: !186, discriminator: 1)
!502 = !DILocation(line: 132, column: 2, scope: !503)
!503 = !DILexicalBlockFile(scope: !481, file: !186, discriminator: 2)
!504 = !DILocation(line: 133, column: 6, scope: !481)
!505 = !DILocation(line: 135, column: 19, scope: !185)
!506 = !DILocation(line: 135, column: 4, scope: !185)
!507 = !DILocation(line: 137, column: 8, scope: !508)
!508 = distinct !DILexicalBlock(scope: !185, file: !186, line: 137, column: 8)
!509 = !DILocation(line: 137, column: 8, scope: !185)
!510 = !DILocation(line: 139, column: 18, scope: !511)
!511 = distinct !DILexicalBlock(scope: !512, file: !186, line: 139, column: 5)
!512 = distinct !DILexicalBlock(scope: !508, file: !186, line: 138, column: 6)
!513 = !DILocation(line: 139, column: 28, scope: !511)
!514 = !DILocation(line: 139, column: 37, scope: !511)
!515 = !DILocation(line: 139, column: 5, scope: !511)
!516 = !DILocation(line: 139, column: 43, scope: !511)
!517 = !DILocation(line: 139, column: 5, scope: !512)
!518 = !DILocation(line: 141, column: 10, scope: !519)
!519 = distinct !DILexicalBlock(scope: !520, file: !186, line: 141, column: 10)
!520 = distinct !DILexicalBlock(scope: !511, file: !186, line: 140, column: 4)
!521 = !DILocation(line: 141, column: 74, scope: !519)
!522 = !DILocation(line: 141, column: 10, scope: !520)
!523 = !DILocation(line: 142, column: 8, scope: !519)
!524 = !DILocation(line: 143, column: 4, scope: !520)
!525 = !DILocation(line: 144, column: 20, scope: !526)
!526 = distinct !DILexicalBlock(scope: !512, file: !186, line: 144, column: 5)
!527 = !DILocation(line: 144, column: 5, scope: !526)
!528 = !DILocation(line: 144, column: 31, scope: !526)
!529 = !DILocation(line: 144, column: 5, scope: !512)
!530 = !DILocation(line: 146, column: 7, scope: !531)
!531 = distinct !DILexicalBlock(scope: !526, file: !186, line: 145, column: 4)
!532 = !DILocation(line: 147, column: 4, scope: !531)
!533 = !DILocation(line: 149, column: 6, scope: !512)
!534 = !DILocation(line: 152, column: 8, scope: !535)
!535 = distinct !DILexicalBlock(scope: !185, file: !186, line: 152, column: 8)
!536 = !DILocation(line: 152, column: 8, scope: !185)
!537 = !DILocation(line: 153, column: 6, scope: !535)
!538 = !DILocation(line: 156, column: 4, scope: !185)
!539 = !DILocation(line: 158, column: 36, scope: !540)
!540 = distinct !DILexicalBlock(scope: !185, file: !186, line: 157, column: 6)
!541 = !DILocation(line: 158, column: 25, scope: !540)
!542 = !DILocation(line: 158, column: 12, scope: !540)
!543 = !DILocation(line: 159, column: 7, scope: !544)
!544 = distinct !DILexicalBlock(scope: !540, file: !186, line: 159, column: 7)
!545 = !DILocation(line: 159, column: 13, scope: !544)
!546 = !DILocation(line: 159, column: 7, scope: !540)
!547 = !DILocation(line: 160, column: 3, scope: !544)
!548 = distinct !{!548, !538}
!549 = !DILocation(line: 162, column: 7, scope: !540)
!550 = !DILocation(line: 164, column: 12, scope: !551)
!551 = distinct !DILexicalBlock(scope: !540, file: !186, line: 164, column: 11)
!552 = !DILocation(line: 164, column: 11, scope: !540)
!553 = !DILocation(line: 165, column: 17, scope: !551)
!554 = !DILocation(line: 165, column: 23, scope: !551)
!555 = !DILocation(line: 165, column: 27, scope: !551)
!556 = !DILocation(line: 165, column: 10, scope: !551)
!557 = !DILocation(line: 171, column: 12, scope: !558)
!558 = distinct !DILexicalBlock(scope: !551, file: !186, line: 170, column: 9)
!559 = !DILocation(line: 171, column: 18, scope: !558)
!560 = !DILocation(line: 171, column: 22, scope: !558)
!561 = !DILocation(line: 171, column: 30, scope: !558)
!562 = !DILocation(line: 171, column: 5, scope: !558)
!563 = !DILocation(line: 172, column: 13, scope: !558)
!564 = !DILocation(line: 172, column: 5, scope: !558)
!565 = !DILocation(line: 175, column: 11, scope: !566)
!566 = distinct !DILexicalBlock(scope: !540, file: !186, line: 175, column: 11)
!567 = !DILocation(line: 175, column: 11, scope: !540)
!568 = !DILocation(line: 177, column: 12, scope: !569)
!569 = distinct !DILexicalBlock(scope: !566, file: !186, line: 176, column: 9)
!570 = !DILocation(line: 177, column: 18, scope: !569)
!571 = !DILocation(line: 177, column: 23, scope: !569)
!572 = !DILocation(line: 177, column: 5, scope: !569)
!573 = !DILocation(line: 178, column: 13, scope: !569)
!574 = !DILocation(line: 178, column: 5, scope: !569)
!575 = !DILocation(line: 179, column: 9, scope: !569)
!576 = !DILocation(line: 181, column: 11, scope: !577)
!577 = distinct !DILexicalBlock(scope: !540, file: !186, line: 181, column: 11)
!578 = !DILocation(line: 181, column: 11, scope: !540)
!579 = !DILocation(line: 183, column: 27, scope: !580)
!580 = distinct !DILexicalBlock(scope: !577, file: !186, line: 182, column: 9)
!581 = !DILocation(line: 183, column: 19, scope: !580)
!582 = !DILocation(line: 183, column: 12, scope: !580)
!583 = !DILocation(line: 184, column: 32, scope: !580)
!584 = !DILocation(line: 184, column: 22, scope: !580)
!585 = !DILocation(line: 184, column: 44, scope: !580)
!586 = !DILocation(line: 184, column: 12, scope: !580)
!587 = !DILocation(line: 185, column: 9, scope: !580)
!588 = !DILocation(line: 156, column: 4, scope: !589)
!589 = !DILexicalBlockFile(scope: !185, file: !186, discriminator: 1)
!590 = !DILocation(line: 194, column: 1, scope: !185)
!591 = distinct !DISubprogram(name: "sniff", scope: !186, file: !186, line: 197, type: !592, isLocal: false, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!592 = !DISubroutineType(types: !593)
!593 = !{null, !18, !18, !11, !11}
!594 = !DILocalVariable(name: "d", arg: 1, scope: !591, file: !186, line: 197, type: !18)
!595 = !DILocation(line: 197, column: 17, scope: !591)
!596 = !DILocalVariable(name: "x", arg: 2, scope: !591, file: !186, line: 197, type: !18)
!597 = !DILocation(line: 197, column: 24, scope: !591)
!598 = !DILocalVariable(name: "output", arg: 3, scope: !591, file: !186, line: 197, type: !11)
!599 = !DILocation(line: 197, column: 33, scope: !591)
!600 = !DILocalVariable(name: "ldd", arg: 4, scope: !591, file: !186, line: 197, type: !11)
!601 = !DILocation(line: 197, column: 47, scope: !591)
!602 = !DILocalVariable(name: "ip", scope: !591, file: !186, line: 199, type: !72)
!603 = !DILocation(line: 199, column: 28, scope: !591)
!604 = !DILocalVariable(name: "type", scope: !591, file: !186, line: 200, type: !605)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int16_t", file: !7, line: 201, baseType: !47)
!606 = !DILocation(line: 200, column: 14, scope: !591)
!607 = !DILocation(line: 202, column: 28, scope: !591)
!608 = !DILocation(line: 202, column: 11, scope: !591)
!609 = !DILocation(line: 202, column: 9, scope: !591)
!610 = !DILocation(line: 204, column: 9, scope: !611)
!611 = distinct !DILexicalBlock(scope: !591, file: !186, line: 204, column: 8)
!612 = !DILocation(line: 204, column: 13, scope: !611)
!613 = !DILocation(line: 204, column: 29, scope: !611)
!614 = !DILocation(line: 204, column: 33, scope: !615)
!615 = !DILexicalBlockFile(scope: !611, file: !186, discriminator: 1)
!616 = !DILocation(line: 204, column: 37, scope: !615)
!617 = !DILocation(line: 204, column: 8, scope: !615)
!618 = !DILocation(line: 205, column: 17, scope: !611)
!619 = !DILocation(line: 205, column: 6, scope: !611)
!620 = !DILocation(line: 207, column: 37, scope: !591)
!621 = !DILocation(line: 207, column: 44, scope: !591)
!622 = !DILocation(line: 207, column: 43, scope: !591)
!623 = !DILocation(line: 207, column: 9, scope: !591)
!624 = !DILocation(line: 207, column: 7, scope: !591)
!625 = !DILocation(line: 208, column: 11, scope: !591)
!626 = !DILocation(line: 208, column: 15, scope: !591)
!627 = !DILocation(line: 208, column: 4, scope: !591)
!628 = !DILocation(line: 211, column: 14, scope: !629)
!629 = distinct !DILexicalBlock(scope: !591, file: !186, line: 209, column: 6)
!630 = !DILocation(line: 211, column: 17, scope: !629)
!631 = !DILocation(line: 211, column: 20, scope: !629)
!632 = !DILocation(line: 211, column: 28, scope: !629)
!633 = !DILocation(line: 211, column: 2, scope: !629)
!634 = !DILocation(line: 212, column: 2, scope: !629)
!635 = !DILocation(line: 214, column: 14, scope: !629)
!636 = !DILocation(line: 214, column: 17, scope: !629)
!637 = !DILocation(line: 214, column: 20, scope: !629)
!638 = !DILocation(line: 214, column: 28, scope: !629)
!639 = !DILocation(line: 214, column: 2, scope: !629)
!640 = !DILocation(line: 215, column: 2, scope: !629)
!641 = !DILocation(line: 217, column: 15, scope: !629)
!642 = !DILocation(line: 217, column: 18, scope: !629)
!643 = !DILocation(line: 217, column: 21, scope: !629)
!644 = !DILocation(line: 217, column: 29, scope: !629)
!645 = !DILocation(line: 217, column: 2, scope: !629)
!646 = !DILocation(line: 218, column: 2, scope: !629)
!647 = !DILocation(line: 220, column: 15, scope: !629)
!648 = !DILocation(line: 220, column: 2, scope: !629)
!649 = !DILocation(line: 221, column: 2, scope: !629)
!650 = !DILocation(line: 224, column: 1, scope: !591)
