; ModuleID = './[inter]rst.o.i'
source_filename = "./[inter]rst.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pcap = type opaque
%struct.pcap_pkthdr = type { %struct.timeval, i32, i32 }
%struct.timeval = type { i64, i64 }
%struct.pkt = type { i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.pcap_dumper = type opaque
%struct.pcap_stat = type { i32, i32, i32 }
%struct.bpf_program = type { i32, %struct.bpf_insn* }
%struct.bpf_insn = type { i16, i8, i8, i32 }
%struct.libnet_ipv4_hdr = type { i8, i8, i16, i16, i16, i8, i8, i16, %struct.in_addr, %struct.in_addr }
%struct.in_addr = type { i32 }
%struct.libnet_tcp_hdr = type { i16, i16, i32, i32, i8, i8, i16, i16, i16 }
%struct.libnet_context = type { i32, i32, %struct.libnet_protocol_block*, %struct.libnet_protocol_block*, i32, i32, i32, i32, i8*, %struct.libnet_stats, i32, [64 x i8], [256 x i8], i32 }
%struct.libnet_protocol_block = type { i8*, i32, i16, i32, i8, i8, i32, %struct.libnet_protocol_block*, %struct.libnet_protocol_block* }
%struct.libnet_stats = type { i64, i64, i64 }

@graph = common global i16 0, align 2
@demonize = common global i16 0, align 2
@.str = private unnamed_addr constant [58 x i8] c"Is very useless demonize me in resetting connection! Omit\00", align 1
@netp = common global i32 0, align 4
@maskp = common global i32 0, align 4
@errbuf = common global [256 x i8] zeroinitializer, align 16
@descr = common global %struct.pcap* null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"pcap_open_live: %s\0A\00", align 1
@offset = common global i16 0, align 2
@.str.2 = private unnamed_addr constant [6 x i8] c"princ\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"- Waiting for SEQ ACK (%s:%d -> %s:%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"- Waiting for SEQ ACK (%s:%d -> %s)\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"- Waiting for SEQ ACK (%s -> %s:%d)\0A\00", align 1
@hdr = common global %struct.pcap_pkthdr zeroinitializer, align 8
@packet = common global i8* null, align 8
@info = common global %struct.pkt zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [33 x i8] c"- Stoled SEQ (%lu) ACK (%lu)...\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"libnet_init: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Error building tcp header : %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Error building ip header : %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Error writing packet on wire : %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"- Connection has been resetted\0A\0A\00", align 1
@logd = common global %struct._IO_FILE* null, align 8
@npkt = common global i32 0, align 4
@buf = common global i8* null, align 8
@dumper = common global %struct.pcap_dumper* null, align 8
@statistic = common global %struct.pcap_stat zeroinitializer, align 4
@datalink = common global i32 0, align 4
@fp = common global %struct.bpf_program zeroinitializer, align 8
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
define i32 @rst(i8*, i64, i64, i16 zeroext, i16 zeroext) #0 !dbg !238 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca %struct.libnet_ipv4_hdr*, align 8
  %12 = alloca %struct.libnet_tcp_hdr*, align 8
  %13 = alloca %struct.libnet_context*, align 8
  %14 = alloca i16, align 2
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !242, metadata !243), !dbg !244
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !245, metadata !243), !dbg !246
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !247, metadata !243), !dbg !248
  store i16 %3, i16* %9, align 2
  call void @llvm.dbg.declare(metadata i16* %9, metadata !249, metadata !243), !dbg !250
  store i16 %4, i16* %10, align 2
  call void @llvm.dbg.declare(metadata i16* %10, metadata !251, metadata !243), !dbg !252
  call void @llvm.dbg.declare(metadata %struct.libnet_ipv4_hdr** %11, metadata !253, metadata !243), !dbg !254
  call void @llvm.dbg.declare(metadata %struct.libnet_tcp_hdr** %12, metadata !255, metadata !243), !dbg !256
  call void @llvm.dbg.declare(metadata %struct.libnet_context** %13, metadata !257, metadata !243), !dbg !303
  call void @llvm.dbg.declare(metadata i16* %14, metadata !304, metadata !243), !dbg !305
  %15 = load i16, i16* @graph, align 2, !dbg !306
  %16 = icmp ne i16 %15, 0, !dbg !306
  br i1 %16, label %17, label %18, !dbg !308

; <label>:17:                                     ; preds = %5
  call void @init_scr(), !dbg !309
  br label %18, !dbg !309

; <label>:18:                                     ; preds = %17, %5
  %19 = load i16, i16* @demonize, align 2, !dbg !310
  %20 = icmp ne i16 %19, 0, !dbg !310
  br i1 %20, label %21, label %23, !dbg !312

; <label>:21:                                     ; preds = %18
  %22 = call i32 (i32, i8*, ...) @w_error(i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i32 0, i32 0)), !dbg !313
  store i16 0, i16* @demonize, align 2, !dbg !315
  br label %23, !dbg !316

; <label>:23:                                     ; preds = %21, %18
  %24 = load i8*, i8** %6, align 8, !dbg !317
  %25 = call i32 @pcap_lookupnet(i8* %24, i32* @netp, i32* @maskp, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @errbuf, i32 0, i32 0)), !dbg !318
  %26 = load i8*, i8** %6, align 8, !dbg !319
  %27 = call %struct.pcap* @pcap_open_live(i8* %26, i32 8192, i32 1, i32 10, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @errbuf, i32 0, i32 0)), !dbg !321
  store %struct.pcap* %27, %struct.pcap** @descr, align 8, !dbg !322
  %28 = icmp eq %struct.pcap* %27, null, !dbg !323
  br i1 %28, label %29, label %31, !dbg !324

; <label>:29:                                     ; preds = %23
  %30 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @errbuf, i32 0, i32 0)), !dbg !325
  br label %31, !dbg !327

; <label>:31:                                     ; preds = %29, %23
  %32 = load i8*, i8** %6, align 8, !dbg !328
  %33 = load %struct.pcap*, %struct.pcap** @descr, align 8, !dbg !329
  %34 = call i32 @device(i8* %32, %struct.pcap* %33), !dbg !330
  %35 = trunc i32 %34 to i16, !dbg !331
  store i16 %35, i16* @offset, align 2, !dbg !332
  %36 = load i16, i16* %9, align 2, !dbg !333
  %37 = zext i16 %36 to i32, !dbg !333
  %38 = icmp ne i32 %37, 0, !dbg !333
  br i1 %38, label %39, label %54, !dbg !335

; <label>:39:                                     ; preds = %31
  %40 = load i16, i16* %10, align 2, !dbg !336
  %41 = zext i16 %40 to i32, !dbg !336
  %42 = icmp ne i32 %41, 0, !dbg !336
  br i1 %42, label %43, label %54, !dbg !338

; <label>:43:                                     ; preds = %39
  %44 = load i64, i64* %7, align 8, !dbg !339
  %45 = trunc i64 %44 to i32, !dbg !339
  %46 = call i8* @libnet_addr2name4(i32 %45, i8 zeroext 0), !dbg !340
  %47 = load i16, i16* %9, align 2, !dbg !341
  %48 = zext i16 %47 to i32, !dbg !341
  %49 = load i64, i64* %8, align 8, !dbg !342
  %50 = trunc i64 %49 to i32, !dbg !342
  %51 = call i8* @libnet_addr2name4(i32 %50, i8 zeroext 0), !dbg !343
  %52 = load i16, i16* %10, align 2, !dbg !344
  %53 = zext i16 %52 to i32, !dbg !344
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 1, i32 1, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i32 0, i32 0), i8* %46, i32 %48, i8* %51, i32 %53), !dbg !345
  br label %88, !dbg !347

; <label>:54:                                     ; preds = %39, %31
  %55 = load i16, i16* %10, align 2, !dbg !348
  %56 = icmp ne i16 %55, 0, !dbg !348
  br i1 %56, label %70, label %57, !dbg !350

; <label>:57:                                     ; preds = %54
  %58 = load i16, i16* %9, align 2, !dbg !351
  %59 = zext i16 %58 to i32, !dbg !351
  %60 = icmp ne i32 %59, 0, !dbg !351
  br i1 %60, label %61, label %70, !dbg !353

; <label>:61:                                     ; preds = %57
  %62 = load i64, i64* %7, align 8, !dbg !354
  %63 = trunc i64 %62 to i32, !dbg !354
  %64 = call i8* @libnet_addr2name4(i32 %63, i8 zeroext 0), !dbg !355
  %65 = load i16, i16* %9, align 2, !dbg !356
  %66 = zext i16 %65 to i32, !dbg !356
  %67 = load i64, i64* %8, align 8, !dbg !357
  %68 = trunc i64 %67 to i32, !dbg !357
  %69 = call i8* @libnet_addr2name4(i32 %68, i8 zeroext 0), !dbg !358
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 1, i32 1, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i32 0, i32 0), i8* %64, i32 %66, i8* %69), !dbg !359
  br label %87, !dbg !361

; <label>:70:                                     ; preds = %57, %54
  %71 = load i16, i16* %9, align 2, !dbg !362
  %72 = icmp ne i16 %71, 0, !dbg !362
  br i1 %72, label %86, label %73, !dbg !364

; <label>:73:                                     ; preds = %70
  %74 = load i16, i16* %10, align 2, !dbg !365
  %75 = zext i16 %74 to i32, !dbg !365
  %76 = icmp ne i32 %75, 0, !dbg !365
  br i1 %76, label %77, label %86, !dbg !367

; <label>:77:                                     ; preds = %73
  %78 = load i64, i64* %7, align 8, !dbg !368
  %79 = trunc i64 %78 to i32, !dbg !368
  %80 = call i8* @libnet_addr2name4(i32 %79, i8 zeroext 0), !dbg !369
  %81 = load i64, i64* %8, align 8, !dbg !370
  %82 = trunc i64 %81 to i32, !dbg !370
  %83 = call i8* @libnet_addr2name4(i32 %82, i8 zeroext 0), !dbg !371
  %84 = load i16, i16* %10, align 2, !dbg !372
  %85 = zext i16 %84 to i32, !dbg !372
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 1, i32 1, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i32 0, i32 0), i8* %80, i8* %83, i32 %85), !dbg !373
  br label %86, !dbg !375

; <label>:86:                                     ; preds = %77, %73, %70
  br label %87

; <label>:87:                                     ; preds = %86, %61
  br label %88

; <label>:88:                                     ; preds = %87, %43
  br label %89, !dbg !376

; <label>:89:                                     ; preds = %202, %180, %162, %135, %120, %103, %88
  %90 = load %struct.pcap*, %struct.pcap** @descr, align 8, !dbg !377
  %91 = call i8* @pcap_next(%struct.pcap* %90, %struct.pcap_pkthdr* @hdr), !dbg !381
  store i8* %91, i8** @packet, align 8, !dbg !382
  %92 = load i8*, i8** @packet, align 8, !dbg !383
  %93 = load i16, i16* @offset, align 2, !dbg !384
  %94 = sext i16 %93 to i32, !dbg !384
  %95 = sext i32 %94 to i64, !dbg !385
  %96 = getelementptr inbounds i8, i8* %92, i64 %95, !dbg !385
  %97 = bitcast i8* %96 to %struct.libnet_ipv4_hdr*, !dbg !386
  store %struct.libnet_ipv4_hdr* %97, %struct.libnet_ipv4_hdr** %11, align 8, !dbg !387
  %98 = load %struct.libnet_ipv4_hdr*, %struct.libnet_ipv4_hdr** %11, align 8, !dbg !388
  %99 = getelementptr inbounds %struct.libnet_ipv4_hdr, %struct.libnet_ipv4_hdr* %98, i32 0, i32 6, !dbg !390
  %100 = load i8, i8* %99, align 1, !dbg !390
  %101 = zext i8 %100 to i32, !dbg !388
  %102 = icmp ne i32 %101, 6, !dbg !391
  br i1 %102, label %103, label %104, !dbg !392

; <label>:103:                                    ; preds = %89
  br label %89, !dbg !393, !llvm.loop !394

; <label>:104:                                    ; preds = %89
  %105 = load %struct.libnet_ipv4_hdr*, %struct.libnet_ipv4_hdr** %11, align 8, !dbg !395
  %106 = getelementptr inbounds %struct.libnet_ipv4_hdr, %struct.libnet_ipv4_hdr* %105, i32 0, i32 8, !dbg !397
  %107 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %106, i32 0, i32 0, !dbg !398
  %108 = load i32, i32* %107, align 4, !dbg !398
  %109 = zext i32 %108 to i64, !dbg !395
  %110 = load i64, i64* %7, align 8, !dbg !399
  %111 = icmp ne i64 %109, %110, !dbg !400
  br i1 %111, label %120, label %112, !dbg !401

; <label>:112:                                    ; preds = %104
  %113 = load %struct.libnet_ipv4_hdr*, %struct.libnet_ipv4_hdr** %11, align 8, !dbg !402
  %114 = getelementptr inbounds %struct.libnet_ipv4_hdr, %struct.libnet_ipv4_hdr* %113, i32 0, i32 9, !dbg !404
  %115 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %114, i32 0, i32 0, !dbg !405
  %116 = load i32, i32* %115, align 4, !dbg !405
  %117 = zext i32 %116 to i64, !dbg !402
  %118 = load i64, i64* %8, align 8, !dbg !406
  %119 = icmp ne i64 %117, %118, !dbg !407
  br i1 %119, label %120, label %121, !dbg !408

; <label>:120:                                    ; preds = %112, %104
  br label %89, !dbg !409, !llvm.loop !394

; <label>:121:                                    ; preds = %112
  %122 = load i8*, i8** @packet, align 8, !dbg !410
  %123 = load i16, i16* @offset, align 2, !dbg !411
  %124 = sext i16 %123 to i32, !dbg !411
  %125 = sext i32 %124 to i64, !dbg !412
  %126 = getelementptr inbounds i8, i8* %122, i64 %125, !dbg !412
  %127 = getelementptr inbounds i8, i8* %126, i64 20, !dbg !413
  %128 = bitcast i8* %127 to %struct.libnet_tcp_hdr*, !dbg !414
  store %struct.libnet_tcp_hdr* %128, %struct.libnet_tcp_hdr** %12, align 8, !dbg !415
  %129 = load %struct.libnet_tcp_hdr*, %struct.libnet_tcp_hdr** %12, align 8, !dbg !416
  %130 = getelementptr inbounds %struct.libnet_tcp_hdr, %struct.libnet_tcp_hdr* %129, i32 0, i32 5, !dbg !418
  %131 = load i8, i8* %130, align 1, !dbg !418
  %132 = zext i8 %131 to i32, !dbg !416
  %133 = and i32 %132, 16, !dbg !419
  %134 = icmp ne i32 %133, 0, !dbg !419
  br i1 %134, label %136, label %135, !dbg !420

; <label>:135:                                    ; preds = %121
  br label %89, !dbg !421, !llvm.loop !394

; <label>:136:                                    ; preds = %121
  %137 = load i16, i16* %9, align 2, !dbg !422
  %138 = zext i16 %137 to i32, !dbg !422
  %139 = icmp ne i32 %138, 0, !dbg !422
  br i1 %139, label %140, label %164, !dbg !424

; <label>:140:                                    ; preds = %136
  %141 = load i16, i16* %10, align 2, !dbg !425
  %142 = zext i16 %141 to i32, !dbg !425
  %143 = icmp ne i32 %142, 0, !dbg !425
  br i1 %143, label %144, label %164, !dbg !427

; <label>:144:                                    ; preds = %140
  %145 = load %struct.libnet_tcp_hdr*, %struct.libnet_tcp_hdr** %12, align 8, !dbg !428
  %146 = getelementptr inbounds %struct.libnet_tcp_hdr, %struct.libnet_tcp_hdr* %145, i32 0, i32 0, !dbg !431
  %147 = load i16, i16* %146, align 4, !dbg !431
  %148 = zext i16 %147 to i32, !dbg !428
  %149 = load i16, i16* %9, align 2, !dbg !432
  %150 = call zeroext i16 @htons(i16 zeroext %149) #1, !dbg !433
  %151 = zext i16 %150 to i32, !dbg !433
  %152 = icmp ne i32 %148, %151, !dbg !434
  br i1 %152, label %162, label %153, !dbg !435

; <label>:153:                                    ; preds = %144
  %154 = load %struct.libnet_tcp_hdr*, %struct.libnet_tcp_hdr** %12, align 8, !dbg !436
  %155 = getelementptr inbounds %struct.libnet_tcp_hdr, %struct.libnet_tcp_hdr* %154, i32 0, i32 1, !dbg !438
  %156 = load i16, i16* %155, align 2, !dbg !438
  %157 = zext i16 %156 to i32, !dbg !436
  %158 = load i16, i16* %10, align 2, !dbg !439
  %159 = call zeroext i16 @htons(i16 zeroext %158) #1, !dbg !440
  %160 = zext i16 %159 to i32, !dbg !440
  %161 = icmp ne i32 %157, %160, !dbg !441
  br i1 %161, label %162, label %163, !dbg !442

; <label>:162:                                    ; preds = %153, %144
  br label %89, !dbg !443, !llvm.loop !394

; <label>:163:                                    ; preds = %153
  br label %210, !dbg !444

; <label>:164:                                    ; preds = %140, %136
  %165 = load i16, i16* %10, align 2, !dbg !445
  %166 = icmp ne i16 %165, 0, !dbg !445
  br i1 %166, label %186, label %167, !dbg !447

; <label>:167:                                    ; preds = %164
  %168 = load i16, i16* %9, align 2, !dbg !448
  %169 = zext i16 %168 to i32, !dbg !448
  %170 = icmp ne i32 %169, 0, !dbg !448
  br i1 %170, label %171, label %186, !dbg !450

; <label>:171:                                    ; preds = %167
  %172 = load %struct.libnet_tcp_hdr*, %struct.libnet_tcp_hdr** %12, align 8, !dbg !451
  %173 = getelementptr inbounds %struct.libnet_tcp_hdr, %struct.libnet_tcp_hdr* %172, i32 0, i32 0, !dbg !454
  %174 = load i16, i16* %173, align 4, !dbg !454
  %175 = zext i16 %174 to i32, !dbg !451
  %176 = load i16, i16* %9, align 2, !dbg !455
  %177 = call zeroext i16 @htons(i16 zeroext %176) #1, !dbg !456
  %178 = zext i16 %177 to i32, !dbg !456
  %179 = icmp ne i32 %175, %178, !dbg !457
  br i1 %179, label %180, label %181, !dbg !458

; <label>:180:                                    ; preds = %171
  br label %89, !dbg !459, !llvm.loop !394

; <label>:181:                                    ; preds = %171
  %182 = load %struct.libnet_tcp_hdr*, %struct.libnet_tcp_hdr** %12, align 8, !dbg !460
  %183 = getelementptr inbounds %struct.libnet_tcp_hdr, %struct.libnet_tcp_hdr* %182, i32 0, i32 1, !dbg !461
  %184 = load i16, i16* %183, align 2, !dbg !461
  %185 = call zeroext i16 @htons(i16 zeroext %184) #1, !dbg !462
  store i16 %185, i16* %10, align 2, !dbg !463
  br label %209, !dbg !464

; <label>:186:                                    ; preds = %167, %164
  %187 = load i16, i16* %9, align 2, !dbg !465
  %188 = icmp ne i16 %187, 0, !dbg !465
  br i1 %188, label %208, label %189, !dbg !467

; <label>:189:                                    ; preds = %186
  %190 = load i16, i16* %10, align 2, !dbg !468
  %191 = zext i16 %190 to i32, !dbg !468
  %192 = icmp ne i32 %191, 0, !dbg !468
  br i1 %192, label %193, label %208, !dbg !470

; <label>:193:                                    ; preds = %189
  %194 = load %struct.libnet_tcp_hdr*, %struct.libnet_tcp_hdr** %12, align 8, !dbg !471
  %195 = getelementptr inbounds %struct.libnet_tcp_hdr, %struct.libnet_tcp_hdr* %194, i32 0, i32 1, !dbg !474
  %196 = load i16, i16* %195, align 2, !dbg !474
  %197 = zext i16 %196 to i32, !dbg !471
  %198 = load i16, i16* %10, align 2, !dbg !475
  %199 = call zeroext i16 @htons(i16 zeroext %198) #1, !dbg !476
  %200 = zext i16 %199 to i32, !dbg !476
  %201 = icmp ne i32 %197, %200, !dbg !477
  br i1 %201, label %202, label %203, !dbg !478

; <label>:202:                                    ; preds = %193
  br label %89, !dbg !479, !llvm.loop !394

; <label>:203:                                    ; preds = %193
  %204 = load %struct.libnet_tcp_hdr*, %struct.libnet_tcp_hdr** %12, align 8, !dbg !480
  %205 = getelementptr inbounds %struct.libnet_tcp_hdr, %struct.libnet_tcp_hdr* %204, i32 0, i32 0, !dbg !481
  %206 = load i16, i16* %205, align 4, !dbg !481
  %207 = call zeroext i16 @htons(i16 zeroext %206) #1, !dbg !482
  store i16 %207, i16* %9, align 2, !dbg !483
  br label %208, !dbg !484

; <label>:208:                                    ; preds = %203, %189, %186
  br label %209

; <label>:209:                                    ; preds = %208, %181
  br label %210

; <label>:210:                                    ; preds = %209, %163
  %211 = load %struct.libnet_tcp_hdr*, %struct.libnet_tcp_hdr** %12, align 8, !dbg !485
  %212 = getelementptr inbounds %struct.libnet_tcp_hdr, %struct.libnet_tcp_hdr* %211, i32 0, i32 2, !dbg !486
  %213 = load i32, i32* %212, align 4, !dbg !486
  %214 = call i32 @htonl(i32 %213) #1, !dbg !487
  %215 = zext i32 %214 to i64, !dbg !487
  store i64 %215, i64* getelementptr inbounds (%struct.pkt, %struct.pkt* @info, i32 0, i32 0), align 8, !dbg !488
  %216 = load %struct.libnet_tcp_hdr*, %struct.libnet_tcp_hdr** %12, align 8, !dbg !489
  %217 = getelementptr inbounds %struct.libnet_tcp_hdr, %struct.libnet_tcp_hdr* %216, i32 0, i32 3, !dbg !490
  %218 = load i32, i32* %217, align 4, !dbg !490
  %219 = call i32 @htonl(i32 %218) #1, !dbg !491
  %220 = zext i32 %219 to i64, !dbg !491
  store i64 %220, i64* getelementptr inbounds (%struct.pkt, %struct.pkt* @info, i32 0, i32 1), align 8, !dbg !492
  %221 = load i64, i64* getelementptr inbounds (%struct.pkt, %struct.pkt* @info, i32 0, i32 0), align 8, !dbg !493
  %222 = load i64, i64* getelementptr inbounds (%struct.pkt, %struct.pkt* @info, i32 0, i32 1), align 8, !dbg !494
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 3, i32 1, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0), i64 %221, i64 %222), !dbg !495
  br label %223, !dbg !496

; <label>:223:                                    ; preds = %210
  %224 = load %struct.pcap*, %struct.pcap** @descr, align 8, !dbg !497
  call void @pcap_close(%struct.pcap* %224), !dbg !498
  %225 = call %struct.libnet_context* @libnet_init(i32 1, i8* null, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @errbuf, i32 0, i32 0)), !dbg !499
  store %struct.libnet_context* %225, %struct.libnet_context** %13, align 8, !dbg !501
  %226 = icmp eq %struct.libnet_context* %225, null, !dbg !502
  br i1 %226, label %227, label %229, !dbg !503

; <label>:227:                                    ; preds = %223
  %228 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @errbuf, i32 0, i32 0)), !dbg !504
  br label %229, !dbg !506

; <label>:229:                                    ; preds = %227, %223
  %230 = load i16, i16* %9, align 2, !dbg !507
  %231 = load i16, i16* %10, align 2, !dbg !509
  %232 = load i64, i64* getelementptr inbounds (%struct.pkt, %struct.pkt* @info, i32 0, i32 0), align 8, !dbg !510
  %233 = trunc i64 %232 to i32, !dbg !511
  %234 = load i64, i64* getelementptr inbounds (%struct.pkt, %struct.pkt* @info, i32 0, i32 1), align 8, !dbg !512
  %235 = trunc i64 %234 to i32, !dbg !513
  %236 = load %struct.libnet_context*, %struct.libnet_context** %13, align 8, !dbg !514
  %237 = call i32 @libnet_build_tcp(i16 zeroext %230, i16 zeroext %231, i32 %233, i32 %235, i8 zeroext 4, i16 zeroext 32767, i16 zeroext 0, i16 zeroext 0, i16 zeroext 20, i8* null, i32 0, %struct.libnet_context* %236, i32 0), !dbg !515
  %238 = icmp eq i32 %237, -1, !dbg !516
  br i1 %238, label %239, label %244, !dbg !517

; <label>:239:                                    ; preds = %229
  %240 = load %struct.libnet_context*, %struct.libnet_context** %13, align 8, !dbg !518
  call void @libnet_destroy(%struct.libnet_context* %240), !dbg !520
  %241 = load %struct.libnet_context*, %struct.libnet_context** %13, align 8, !dbg !521
  %242 = call i8* @libnet_geterror(%struct.libnet_context* %241), !dbg !522
  %243 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i32 0, i32 0), i8* %242), !dbg !523
  br label %244, !dbg !525

; <label>:244:                                    ; preds = %239, %229
  %245 = load i64, i64* %7, align 8, !dbg !526
  %246 = trunc i64 %245 to i32, !dbg !526
  %247 = load i64, i64* %8, align 8, !dbg !528
  %248 = trunc i64 %247 to i32, !dbg !528
  %249 = load %struct.libnet_context*, %struct.libnet_context** %13, align 8, !dbg !529
  %250 = call i32 @libnet_build_ipv4(i16 zeroext 40, i8 zeroext 8, i16 zeroext -30216, i16 zeroext 0, i8 zeroext 64, i8 zeroext 6, i16 zeroext 0, i32 %246, i32 %248, i8* null, i32 0, %struct.libnet_context* %249, i32 0), !dbg !530
  %251 = icmp eq i32 %250, -1, !dbg !531
  br i1 %251, label %252, label %257, !dbg !532

; <label>:252:                                    ; preds = %244
  %253 = load %struct.libnet_context*, %struct.libnet_context** %13, align 8, !dbg !533
  call void @libnet_destroy(%struct.libnet_context* %253), !dbg !535
  %254 = load %struct.libnet_context*, %struct.libnet_context** %13, align 8, !dbg !536
  %255 = call i8* @libnet_geterror(%struct.libnet_context* %254), !dbg !537
  %256 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i32 0, i32 0), i8* %255), !dbg !538
  br label %257, !dbg !540

; <label>:257:                                    ; preds = %252, %244
  store i16 0, i16* %14, align 2, !dbg !541
  br label %258, !dbg !543

; <label>:258:                                    ; preds = %272, %257
  %259 = load i16, i16* %14, align 2, !dbg !544
  %260 = zext i16 %259 to i32, !dbg !544
  %261 = icmp slt i32 %260, 2, !dbg !547
  br i1 %261, label %262, label %275, !dbg !548

; <label>:262:                                    ; preds = %258
  %263 = load %struct.libnet_context*, %struct.libnet_context** %13, align 8, !dbg !549
  %264 = call i32 @libnet_write(%struct.libnet_context* %263), !dbg !551
  %265 = icmp eq i32 %264, -1, !dbg !552
  br i1 %265, label %266, label %271, !dbg !553

; <label>:266:                                    ; preds = %262
  %267 = load %struct.libnet_context*, %struct.libnet_context** %13, align 8, !dbg !554
  call void @libnet_destroy(%struct.libnet_context* %267), !dbg !556
  %268 = load %struct.libnet_context*, %struct.libnet_context** %13, align 8, !dbg !557
  %269 = call i8* @libnet_geterror(%struct.libnet_context* %268), !dbg !558
  %270 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i32 0, i32 0), i8* %269), !dbg !559
  br label %271, !dbg !561

; <label>:271:                                    ; preds = %266, %262
  br label %272, !dbg !562

; <label>:272:                                    ; preds = %271
  %273 = load i16, i16* %14, align 2, !dbg !564
  %274 = add i16 %273, 1, !dbg !564
  store i16 %274, i16* %14, align 2, !dbg !564
  br label %258, !dbg !566, !llvm.loop !567

; <label>:275:                                    ; preds = %258
  %276 = load %struct.libnet_context*, %struct.libnet_context** %13, align 8, !dbg !569
  call void @libnet_destroy(%struct.libnet_context* %276), !dbg !570
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 5, i32 1, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i32 0, i32 0)), !dbg !571
  ret i32 0, !dbg !572
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @init_scr() #2

declare i32 @w_error(i32, i8*, ...) #2

declare i32 @pcap_lookupnet(i8*, i32*, i32*, i8*) #2

declare %struct.pcap* @pcap_open_live(i8*, i32, i32, i32, i8*) #2

declare i32 @device(i8*, %struct.pcap*) #2

declare void @n_print(i8*, i32, i32, i32, i8*, ...) #2

declare i8* @libnet_addr2name4(i32, i8 zeroext) #2

declare i8* @pcap_next(%struct.pcap*, %struct.pcap_pkthdr*) #2

; Function Attrs: nounwind readnone
declare zeroext i16 @htons(i16 zeroext) #3

; Function Attrs: nounwind readnone
declare i32 @htonl(i32) #3

declare void @pcap_close(%struct.pcap*) #2

declare %struct.libnet_context* @libnet_init(i32, i8*, i8*) #2

declare i32 @libnet_build_tcp(i16 zeroext, i16 zeroext, i32, i32, i8 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i8*, i32, %struct.libnet_context*, i32) #2

declare void @libnet_destroy(%struct.libnet_context*) #2

declare i8* @libnet_geterror(%struct.libnet_context*) #2

declare i32 @libnet_build_ipv4(i16 zeroext, i8 zeroext, i16 zeroext, i16 zeroext, i8 zeroext, i8 zeroext, i16 zeroext, i32, i32, i8*, i32, %struct.libnet_context*, i32) #2

declare i32 @libnet_write(%struct.libnet_context*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!235, !236}
!llvm.ident = !{!237}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !32, globals: !78)
!1 = !DIFile(filename: "[inter]rst.o.i", directory: "/home/lichi/Desktop/nast/[task]nast")
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
!32 = !{!33, !34, !40, !65}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !36, line: 33, baseType: !37)
!36 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !38, line: 30, baseType: !39)
!38 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!39 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_ipv4_hdr", file: !42, line: 666, size: 160, align: 32, elements: !43)
!42 = !DIFile(filename: "/usr/local/include/libnet/libnet-headers.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!43 = !{!44, !47, !48, !49, !52, !53, !54, !55, !56, !57, !64}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "ip_hl", scope: !41, file: !42, line: 669, baseType: !45, size: 4, align: 8, flags: DIFlagBitField, extraData: i64 0)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !46, line: 48, baseType: !39)
!46 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!47 = !DIDerivedType(tag: DW_TAG_member, name: "ip_v", scope: !41, file: !42, line: 670, baseType: !45, size: 4, align: 8, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "ip_tos", scope: !41, file: !42, line: 676, baseType: !45, size: 8, align: 8, offset: 8)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "ip_len", scope: !41, file: !42, line: 689, baseType: !50, size: 16, align: 16, offset: 16)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !46, line: 49, baseType: !51)
!51 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "ip_id", scope: !41, file: !42, line: 690, baseType: !50, size: 16, align: 16, offset: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "ip_off", scope: !41, file: !42, line: 691, baseType: !50, size: 16, align: 16, offset: 48)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "ip_ttl", scope: !41, file: !42, line: 704, baseType: !45, size: 8, align: 8, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "ip_p", scope: !41, file: !42, line: 705, baseType: !45, size: 8, align: 8, offset: 72)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "ip_sum", scope: !41, file: !42, line: 706, baseType: !50, size: 16, align: 16, offset: 80)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "ip_src", scope: !41, file: !42, line: 707, baseType: !58, size: 32, align: 32, offset: 96)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !4, line: 31, size: 32, align: 32, elements: !59)
!59 = !{!60}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !58, file: !4, line: 33, baseType: !61, size: 32, align: 32)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !4, line: 30, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !46, line: 51, baseType: !63)
!63 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "ip_dst", scope: !41, file: !42, line: 707, baseType: !58, size: 32, align: 32, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_tcp_hdr", file: !42, line: 1653, size: 160, align: 32, elements: !67)
!67 = !{!68, !69, !70, !71, !72, !73, !74, !75, !76, !77}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "th_sport", scope: !66, file: !42, line: 1655, baseType: !50, size: 16, align: 16)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "th_dport", scope: !66, file: !42, line: 1656, baseType: !50, size: 16, align: 16, offset: 16)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "th_seq", scope: !66, file: !42, line: 1657, baseType: !62, size: 32, align: 32, offset: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "th_ack", scope: !66, file: !42, line: 1658, baseType: !62, size: 32, align: 32, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "th_x2", scope: !66, file: !42, line: 1660, baseType: !45, size: 4, align: 8, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "th_off", scope: !66, file: !42, line: 1661, baseType: !45, size: 4, align: 8, offset: 100, flags: DIFlagBitField, extraData: i64 96)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "th_flags", scope: !66, file: !42, line: 1667, baseType: !45, size: 8, align: 8, offset: 104)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "th_win", scope: !66, file: !42, line: 1692, baseType: !50, size: 16, align: 16, offset: 112)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "th_sum", scope: !66, file: !42, line: 1693, baseType: !50, size: 16, align: 16, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "th_urp", scope: !66, file: !42, line: 1694, baseType: !50, size: 16, align: 16, offset: 144)
!78 = !{!79, !141, !143, !144, !145, !146, !164, !168, !172, !178, !179, !180, !181, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !212, !213, !216, !220, !221, !222, !223, !228}
!79 = distinct !DIGlobalVariable(name: "logd", scope: !0, file: !80, line: 98, type: !81, isLocal: false, isDefinition: true, variable: %struct._IO_FILE** @logd)
!80 = !DIFile(filename: "include/nast.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, align: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !83, line: 48, baseType: !84)
!83 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !85, line: 241, size: 1728, align: 64, elements: !86)
!85 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!86 = !{!87, !89, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !110, !111, !112, !113, !116, !117, !119, !123, !126, !128, !129, !130, !131, !132, !136, !137}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !84, file: !85, line: 242, baseType: !88, size: 32, align: 32)
!88 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !84, file: !85, line: 247, baseType: !90, size: 64, align: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!91 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !84, file: !85, line: 248, baseType: !90, size: 64, align: 64, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !84, file: !85, line: 249, baseType: !90, size: 64, align: 64, offset: 192)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !84, file: !85, line: 250, baseType: !90, size: 64, align: 64, offset: 256)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !84, file: !85, line: 251, baseType: !90, size: 64, align: 64, offset: 320)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !84, file: !85, line: 252, baseType: !90, size: 64, align: 64, offset: 384)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !84, file: !85, line: 253, baseType: !90, size: 64, align: 64, offset: 448)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !84, file: !85, line: 254, baseType: !90, size: 64, align: 64, offset: 512)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !84, file: !85, line: 256, baseType: !90, size: 64, align: 64, offset: 576)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !84, file: !85, line: 257, baseType: !90, size: 64, align: 64, offset: 640)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !84, file: !85, line: 258, baseType: !90, size: 64, align: 64, offset: 704)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !84, file: !85, line: 260, baseType: !103, size: 64, align: 64, offset: 768)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !85, line: 156, size: 192, align: 64, elements: !105)
!105 = !{!106, !107, !109}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !104, file: !85, line: 157, baseType: !103, size: 64, align: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !104, file: !85, line: 158, baseType: !108, size: 64, align: 64, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !104, file: !85, line: 162, baseType: !88, size: 32, align: 32, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !84, file: !85, line: 262, baseType: !108, size: 64, align: 64, offset: 832)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !84, file: !85, line: 264, baseType: !88, size: 32, align: 32, offset: 896)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !84, file: !85, line: 268, baseType: !88, size: 32, align: 32, offset: 928)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !84, file: !85, line: 270, baseType: !114, size: 64, align: 64, offset: 960)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !38, line: 131, baseType: !115)
!115 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !84, file: !85, line: 274, baseType: !51, size: 16, align: 16, offset: 1024)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !84, file: !85, line: 275, baseType: !118, size: 8, align: 8, offset: 1040)
!118 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !84, file: !85, line: 276, baseType: !120, size: 8, align: 8, offset: 1048)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 8, align: 8, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 1)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !84, file: !85, line: 280, baseType: !124, size: 64, align: 64, offset: 1088)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !85, line: 150, baseType: null)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !84, file: !85, line: 289, baseType: !127, size: 64, align: 64, offset: 1152)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !38, line: 132, baseType: !115)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !84, file: !85, line: 297, baseType: !33, size: 64, align: 64, offset: 1216)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !84, file: !85, line: 298, baseType: !33, size: 64, align: 64, offset: 1280)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !84, file: !85, line: 299, baseType: !33, size: 64, align: 64, offset: 1344)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !84, file: !85, line: 300, baseType: !33, size: 64, align: 64, offset: 1408)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !84, file: !85, line: 302, baseType: !133, size: 64, align: 64, offset: 1472)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !134, line: 216, baseType: !135)
!134 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!135 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !84, file: !85, line: 303, baseType: !88, size: 32, align: 32, offset: 1536)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !84, file: !85, line: 305, baseType: !138, size: 160, align: 8, offset: 1568)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 160, align: 8, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 20)
!141 = distinct !DIGlobalVariable(name: "offset", scope: !0, file: !80, line: 99, type: !142, isLocal: false, isDefinition: true, variable: i16* @offset)
!142 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!143 = distinct !DIGlobalVariable(name: "npkt", scope: !0, file: !80, line: 100, type: !88, isLocal: false, isDefinition: true, variable: i32* @npkt)
!144 = distinct !DIGlobalVariable(name: "packet", scope: !0, file: !80, line: 101, type: !34, isLocal: false, isDefinition: true, variable: i8** @packet)
!145 = distinct !DIGlobalVariable(name: "buf", scope: !0, file: !80, line: 102, type: !34, isLocal: false, isDefinition: true, variable: i8** @buf)
!146 = distinct !DIGlobalVariable(name: "hdr", scope: !0, file: !80, line: 103, type: !147, isLocal: false, isDefinition: true, variable: %struct.pcap_pkthdr* @hdr)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcap_pkthdr", file: !148, line: 199, size: 192, align: 64, elements: !149)
!148 = !DIFile(filename: "/usr/local/include/pcap/pcap.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!149 = !{!150, !158, !163}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !147, file: !148, line: 200, baseType: !151, size: 128, align: 64)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !152, line: 30, size: 128, align: 64, elements: !153)
!152 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!153 = !{!154, !156}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !151, file: !152, line: 32, baseType: !155, size: 64, align: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !38, line: 139, baseType: !115)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !151, file: !152, line: 33, baseType: !157, size: 64, align: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !38, line: 141, baseType: !115)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "caplen", scope: !147, file: !148, line: 201, baseType: !159, size: 32, align: 32, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "bpf_u_int32", file: !160, line: 85, baseType: !161)
!160 = !DIFile(filename: "/usr/local/include/pcap/bpf.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !36, line: 35, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_int", file: !38, line: 32, baseType: !63)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !147, file: !148, line: 202, baseType: !159, size: 32, align: 32, offset: 160)
!164 = distinct !DIGlobalVariable(name: "descr", scope: !0, file: !80, line: 104, type: !165, isLocal: false, isDefinition: true, variable: %struct.pcap** @descr)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, align: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "pcap_t", file: !148, line: 118, baseType: !167)
!167 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcap", file: !148, line: 118, flags: DIFlagFwdDecl)
!168 = distinct !DIGlobalVariable(name: "dumper", scope: !0, file: !80, line: 105, type: !169, isLocal: false, isDefinition: true, variable: %struct.pcap_dumper** @dumper)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64, align: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "pcap_dumper_t", file: !148, line: 119, baseType: !171)
!171 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcap_dumper", file: !148, line: 119, flags: DIFlagFwdDecl)
!172 = distinct !DIGlobalVariable(name: "statistic", scope: !0, file: !80, line: 106, type: !173, isLocal: false, isDefinition: true, variable: %struct.pcap_stat* @statistic)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcap_stat", file: !148, line: 208, size: 96, align: 32, elements: !174)
!174 = !{!175, !176, !177}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "ps_recv", scope: !173, file: !148, line: 209, baseType: !161, size: 32, align: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "ps_drop", scope: !173, file: !148, line: 210, baseType: !161, size: 32, align: 32, offset: 32)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "ps_ifdrop", scope: !173, file: !148, line: 211, baseType: !161, size: 32, align: 32, offset: 64)
!178 = distinct !DIGlobalVariable(name: "maskp", scope: !0, file: !80, line: 107, type: !159, isLocal: false, isDefinition: true, variable: i32* @maskp)
!179 = distinct !DIGlobalVariable(name: "netp", scope: !0, file: !80, line: 108, type: !159, isLocal: false, isDefinition: true, variable: i32* @netp)
!180 = distinct !DIGlobalVariable(name: "datalink", scope: !0, file: !80, line: 109, type: !88, isLocal: false, isDefinition: true, variable: i32* @datalink)
!181 = distinct !DIGlobalVariable(name: "fp", scope: !0, file: !80, line: 110, type: !182, isLocal: false, isDefinition: true, variable: %struct.bpf_program* @fp)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_program", file: !160, line: 104, size: 128, align: 64, elements: !183)
!183 = !{!184, !185}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "bf_len", scope: !182, file: !160, line: 105, baseType: !161, size: 32, align: 32)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "bf_insns", scope: !182, file: !160, line: 106, baseType: !186, size: 64, align: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, align: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_insn", file: !160, line: 234, size: 64, align: 32, elements: !188)
!188 = !{!189, !192, !193, !194}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !187, file: !160, line: 235, baseType: !190, size: 16, align: 16)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_short", file: !36, line: 34, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_short", file: !38, line: 31, baseType: !51)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "jt", scope: !187, file: !160, line: 236, baseType: !35, size: 8, align: 8, offset: 16)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "jf", scope: !187, file: !160, line: 237, baseType: !35, size: 8, align: 8, offset: 24)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !187, file: !160, line: 238, baseType: !159, size: 32, align: 32, offset: 32)
!195 = distinct !DIGlobalVariable(name: "logname", scope: !0, file: !80, line: 111, type: !90, isLocal: false, isDefinition: true, variable: i8** @logname)
!196 = distinct !DIGlobalVariable(name: "tcpdl", scope: !0, file: !80, line: 112, type: !90, isLocal: false, isDefinition: true, variable: i8** @tcpdl)
!197 = distinct !DIGlobalVariable(name: "tr", scope: !0, file: !80, line: 113, type: !190, isLocal: false, isDefinition: true, variable: i16* @tr)
!198 = distinct !DIGlobalVariable(name: "tl", scope: !0, file: !80, line: 113, type: !190, isLocal: false, isDefinition: true, variable: i16* @tl)
!199 = distinct !DIGlobalVariable(name: "graph", scope: !0, file: !80, line: 114, type: !190, isLocal: false, isDefinition: true, variable: i16* @graph)
!200 = distinct !DIGlobalVariable(name: "cont", scope: !0, file: !80, line: 115, type: !190, isLocal: false, isDefinition: true, variable: i16* @cont)
!201 = distinct !DIGlobalVariable(name: "stream_glob", scope: !0, file: !80, line: 117, type: !88, isLocal: false, isDefinition: true, variable: i32* @stream_glob)
!202 = distinct !DIGlobalVariable(name: "bc_glob", scope: !0, file: !80, line: 118, type: !88, isLocal: false, isDefinition: true, variable: i32* @bc_glob)
!203 = distinct !DIGlobalVariable(name: "sniff_glob", scope: !0, file: !80, line: 119, type: !88, isLocal: false, isDefinition: true, variable: i32* @sniff_glob)
!204 = distinct !DIGlobalVariable(name: "rst_glob", scope: !0, file: !80, line: 120, type: !88, isLocal: false, isDefinition: true, variable: i32* @rst_glob)
!205 = distinct !DIGlobalVariable(name: "arp_glob", scope: !0, file: !80, line: 121, type: !88, isLocal: false, isDefinition: true, variable: i32* @arp_glob)
!206 = distinct !DIGlobalVariable(name: "pt", scope: !0, file: !80, line: 122, type: !207, isLocal: false, isDefinition: true, variable: [2 x i64]* @pt)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 128, align: 64, elements: !210)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !209, line: 60, baseType: !135)
!209 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!210 = !{!211}
!211 = !DISubrange(count: 2)
!212 = distinct !DIGlobalVariable(name: "lg", scope: !0, file: !80, line: 123, type: !88, isLocal: false, isDefinition: true, variable: i32* @lg)
!213 = distinct !DIGlobalVariable(name: "tm", scope: !0, file: !80, line: 132, type: !214, isLocal: false, isDefinition: true, variable: i64* @tm)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !215, line: 75, baseType: !155)
!215 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!216 = distinct !DIGlobalVariable(name: "timed", scope: !0, file: !80, line: 133, type: !217, isLocal: false, isDefinition: true, variable: [60 x i8]* @timed)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 480, align: 8, elements: !218)
!218 = !{!219}
!219 = !DISubrange(count: 60)
!220 = distinct !DIGlobalVariable(name: "demonize", scope: !0, file: !80, line: 136, type: !190, isLocal: false, isDefinition: true, variable: i16* @demonize)
!221 = distinct !DIGlobalVariable(name: "line_s", scope: !0, file: !80, line: 138, type: !88, isLocal: false, isDefinition: true, variable: i32* @line_s)
!222 = distinct !DIGlobalVariable(name: "row_s", scope: !0, file: !80, line: 139, type: !88, isLocal: false, isDefinition: true, variable: i32* @row_s)
!223 = distinct !DIGlobalVariable(name: "errbuf", scope: !0, file: !224, line: 27, type: !225, isLocal: false, isDefinition: true, variable: [256 x i8]* @errbuf)
!224 = !DIFile(filename: "rst.c", directory: "/home/lichi/Desktop/nast/[task]nast")
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 2048, align: 8, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 256)
!228 = distinct !DIGlobalVariable(name: "info", scope: !0, file: !224, line: 28, type: !229, isLocal: false, isDefinition: true, variable: %struct.pkt* @info)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkt", file: !224, line: 22, size: 128, align: 64, elements: !230)
!230 = !{!231, !234}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !229, file: !224, line: 24, baseType: !232, size: 64, align: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_long", file: !36, line: 36, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_long", file: !38, line: 33, baseType: !135)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "ack", scope: !229, file: !224, line: 25, baseType: !232, size: 64, align: 64, offset: 64)
!235 = !{i32 2, !"Dwarf Version", i32 4}
!236 = !{i32 2, !"Debug Info Version", i32 3}
!237 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!238 = distinct !DISubprogram(name: "rst", scope: !224, file: !224, line: 32, type: !239, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !241)
!239 = !DISubroutineType(types: !240)
!240 = !{!88, !90, !232, !232, !190, !190}
!241 = !{}
!242 = !DILocalVariable(name: "dev", arg: 1, scope: !238, file: !224, line: 32, type: !90)
!243 = !DIExpression()
!244 = !DILocation(line: 32, column: 16, scope: !238)
!245 = !DILocalVariable(name: "ip_src", arg: 2, scope: !238, file: !224, line: 32, type: !232)
!246 = !DILocation(line: 32, column: 27, scope: !238)
!247 = !DILocalVariable(name: "ip_dst", arg: 3, scope: !238, file: !224, line: 32, type: !232)
!248 = !DILocation(line: 32, column: 41, scope: !238)
!249 = !DILocalVariable(name: "sport", arg: 4, scope: !238, file: !224, line: 32, type: !190)
!250 = !DILocation(line: 32, column: 56, scope: !238)
!251 = !DILocalVariable(name: "dport", arg: 5, scope: !238, file: !224, line: 32, type: !190)
!252 = !DILocation(line: 32, column: 70, scope: !238)
!253 = !DILocalVariable(name: "ip", scope: !238, file: !224, line: 34, type: !40)
!254 = !DILocation(line: 34, column: 28, scope: !238)
!255 = !DILocalVariable(name: "tcp", scope: !238, file: !224, line: 35, type: !65)
!256 = !DILocation(line: 35, column: 27, scope: !238)
!257 = !DILocalVariable(name: "l", scope: !238, file: !224, line: 36, type: !258)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64, align: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "libnet_t", file: !260, line: 235, baseType: !261)
!260 = !DIFile(filename: "/usr/local/include/libnet/libnet-structures.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_context", file: !260, line: 186, size: 3200, align: 64, elements: !262)
!262 = !{!263, !264, !265, !283, !284, !285, !286, !287, !288, !289, !296, !297, !301, !302}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !261, file: !260, line: 192, baseType: !88, size: 32, align: 32)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "injection_type", scope: !261, file: !260, line: 194, baseType: !88, size: 32, align: 32, offset: 32)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_blocks", scope: !261, file: !260, line: 206, baseType: !266, size: 64, align: 64, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "libnet_pblock_t", file: !260, line: 178, baseType: !268)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_protocol_block", file: !260, line: 77, size: 384, align: 64, elements: !269)
!269 = !{!270, !272, !273, !274, !275, !276, !277, !280, !282}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !268, file: !260, line: 79, baseType: !271, size: 64, align: 64)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "b_len", scope: !268, file: !260, line: 80, baseType: !62, size: 32, align: 32, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "h_len", scope: !268, file: !260, line: 81, baseType: !50, size: 16, align: 16, offset: 96)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "copied", scope: !268, file: !260, line: 92, baseType: !62, size: 32, align: 32, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !268, file: !260, line: 94, baseType: !45, size: 8, align: 8, offset: 160)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !268, file: !260, line: 168, baseType: !45, size: 8, align: 8, offset: 168)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "ptag", scope: !268, file: !260, line: 170, baseType: !278, size: 32, align: 32, offset: 192)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "libnet_ptag_t", file: !260, line: 70, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !36, line: 196, baseType: !88)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !268, file: !260, line: 175, baseType: !281, size: 64, align: 64, offset: 256)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64, align: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !268, file: !260, line: 176, baseType: !281, size: 64, align: 64, offset: 320)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "pblock_end", scope: !261, file: !260, line: 207, baseType: !266, size: 64, align: 64, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "n_pblocks", scope: !261, file: !260, line: 208, baseType: !62, size: 32, align: 32, offset: 192)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "link_type", scope: !261, file: !260, line: 210, baseType: !88, size: 32, align: 32, offset: 224)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "link_offset", scope: !261, file: !260, line: 224, baseType: !88, size: 32, align: 32, offset: 256)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "aligner", scope: !261, file: !260, line: 225, baseType: !88, size: 32, align: 32, offset: 288)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !261, file: !260, line: 226, baseType: !90, size: 64, align: 64, offset: 320)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !261, file: !260, line: 228, baseType: !290, size: 192, align: 64, offset: 384)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_stats", file: !260, line: 52, size: 192, align: 64, elements: !291)
!291 = !{!292, !294, !295}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "packets_sent", scope: !290, file: !260, line: 55, baseType: !293, size: 64, align: 64)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !46, line: 55, baseType: !135)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "packet_errors", scope: !290, file: !260, line: 56, baseType: !293, size: 64, align: 64, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_written", scope: !290, file: !260, line: 57, baseType: !293, size: 64, align: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "ptag_state", scope: !261, file: !260, line: 229, baseType: !278, size: 32, align: 32, offset: 576)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !261, file: !260, line: 230, baseType: !298, size: 512, align: 8, offset: 608)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 512, align: 8, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "err_buf", scope: !261, file: !260, line: 232, baseType: !225, size: 2048, align: 8, offset: 1120)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "total_size", scope: !261, file: !260, line: 233, baseType: !62, size: 32, align: 32, offset: 3168)
!303 = !DILocation(line: 36, column: 14, scope: !238)
!304 = !DILocalVariable(name: "n", scope: !238, file: !224, line: 37, type: !190)
!305 = !DILocation(line: 37, column: 12, scope: !238)
!306 = !DILocation(line: 40, column: 7, scope: !307)
!307 = distinct !DILexicalBlock(scope: !238, file: !224, line: 40, column: 7)
!308 = !DILocation(line: 40, column: 7, scope: !238)
!309 = !DILocation(line: 41, column: 6, scope: !307)
!310 = !DILocation(line: 44, column: 8, scope: !311)
!311 = distinct !DILexicalBlock(scope: !238, file: !224, line: 44, column: 8)
!312 = !DILocation(line: 44, column: 8, scope: !238)
!313 = !DILocation(line: 46, column: 2, scope: !314)
!314 = distinct !DILexicalBlock(scope: !311, file: !224, line: 45, column: 6)
!315 = !DILocation(line: 47, column: 10, scope: !314)
!316 = !DILocation(line: 48, column: 6, scope: !314)
!317 = !DILocation(line: 50, column: 20, scope: !238)
!318 = !DILocation(line: 50, column: 4, scope: !238)
!319 = !DILocation(line: 52, column: 29, scope: !320)
!320 = distinct !DILexicalBlock(scope: !238, file: !224, line: 52, column: 7)
!321 = !DILocation(line: 52, column: 14, scope: !320)
!322 = !DILocation(line: 52, column: 13, scope: !320)
!323 = !DILocation(line: 52, column: 57, scope: !320)
!324 = !DILocation(line: 52, column: 7, scope: !238)
!325 = !DILocation(line: 54, column: 2, scope: !326)
!326 = distinct !DILexicalBlock(scope: !320, file: !224, line: 53, column: 6)
!327 = !DILocation(line: 55, column: 6, scope: !326)
!328 = !DILocation(line: 57, column: 19, scope: !238)
!329 = !DILocation(line: 57, column: 23, scope: !238)
!330 = !DILocation(line: 57, column: 12, scope: !238)
!331 = !DILocation(line: 57, column: 11, scope: !238)
!332 = !DILocation(line: 57, column: 10, scope: !238)
!333 = !DILocation(line: 59, column: 8, scope: !334)
!334 = distinct !DILexicalBlock(scope: !238, file: !224, line: 59, column: 8)
!335 = !DILocation(line: 59, column: 14, scope: !334)
!336 = !DILocation(line: 59, column: 17, scope: !337)
!337 = !DILexicalBlockFile(scope: !334, file: !224, discriminator: 1)
!338 = !DILocation(line: 59, column: 8, scope: !337)
!339 = !DILocation(line: 60, column: 89, scope: !334)
!340 = !DILocation(line: 60, column: 71, scope: !334)
!341 = !DILocation(line: 60, column: 101, scope: !334)
!342 = !DILocation(line: 60, column: 125, scope: !334)
!343 = !DILocation(line: 60, column: 107, scope: !337)
!344 = !DILocation(line: 60, column: 137, scope: !334)
!345 = !DILocation(line: 60, column: 6, scope: !346)
!346 = !DILexicalBlockFile(scope: !334, file: !224, discriminator: 2)
!347 = !DILocation(line: 60, column: 6, scope: !334)
!348 = !DILocation(line: 61, column: 14, scope: !349)
!349 = distinct !DILexicalBlock(scope: !334, file: !224, line: 61, column: 13)
!350 = !DILocation(line: 61, column: 20, scope: !349)
!351 = !DILocation(line: 61, column: 23, scope: !352)
!352 = !DILexicalBlockFile(scope: !349, file: !224, discriminator: 1)
!353 = !DILocation(line: 61, column: 13, scope: !352)
!354 = !DILocation(line: 62, column: 86, scope: !349)
!355 = !DILocation(line: 62, column: 68, scope: !349)
!356 = !DILocation(line: 62, column: 98, scope: !349)
!357 = !DILocation(line: 62, column: 122, scope: !349)
!358 = !DILocation(line: 62, column: 104, scope: !352)
!359 = !DILocation(line: 62, column: 6, scope: !360)
!360 = !DILexicalBlockFile(scope: !349, file: !224, discriminator: 2)
!361 = !DILocation(line: 62, column: 6, scope: !349)
!362 = !DILocation(line: 63, column: 14, scope: !363)
!363 = distinct !DILexicalBlock(scope: !349, file: !224, line: 63, column: 13)
!364 = !DILocation(line: 63, column: 20, scope: !363)
!365 = !DILocation(line: 63, column: 23, scope: !366)
!366 = !DILexicalBlockFile(scope: !363, file: !224, discriminator: 1)
!367 = !DILocation(line: 63, column: 13, scope: !366)
!368 = !DILocation(line: 64, column: 86, scope: !363)
!369 = !DILocation(line: 64, column: 68, scope: !363)
!370 = !DILocation(line: 64, column: 116, scope: !363)
!371 = !DILocation(line: 64, column: 98, scope: !366)
!372 = !DILocation(line: 64, column: 128, scope: !363)
!373 = !DILocation(line: 64, column: 6, scope: !374)
!374 = !DILexicalBlockFile(scope: !363, file: !224, discriminator: 2)
!375 = !DILocation(line: 64, column: 6, scope: !363)
!376 = !DILocation(line: 66, column: 4, scope: !238)
!377 = !DILocation(line: 69, column: 32, scope: !378)
!378 = distinct !DILexicalBlock(scope: !379, file: !224, line: 67, column: 6)
!379 = distinct !DILexicalBlock(scope: !380, file: !224, line: 66, column: 4)
!380 = distinct !DILexicalBlock(scope: !238, file: !224, line: 66, column: 4)
!381 = !DILocation(line: 69, column: 22, scope: !378)
!382 = !DILocation(line: 69, column: 9, scope: !378)
!383 = !DILocation(line: 71, column: 35, scope: !378)
!384 = !DILocation(line: 71, column: 44, scope: !378)
!385 = !DILocation(line: 71, column: 42, scope: !378)
!386 = !DILocation(line: 71, column: 7, scope: !378)
!387 = !DILocation(line: 71, column: 5, scope: !378)
!388 = !DILocation(line: 72, column: 6, scope: !389)
!389 = distinct !DILexicalBlock(scope: !378, file: !224, line: 72, column: 6)
!390 = !DILocation(line: 72, column: 10, scope: !389)
!391 = !DILocation(line: 72, column: 15, scope: !389)
!392 = !DILocation(line: 72, column: 6, scope: !378)
!393 = !DILocation(line: 73, column: 4, scope: !389)
!394 = distinct !{!394, !376}
!395 = !DILocation(line: 74, column: 7, scope: !396)
!396 = distinct !DILexicalBlock(scope: !378, file: !224, line: 74, column: 6)
!397 = !DILocation(line: 74, column: 11, scope: !396)
!398 = !DILocation(line: 74, column: 18, scope: !396)
!399 = !DILocation(line: 74, column: 28, scope: !396)
!400 = !DILocation(line: 74, column: 25, scope: !396)
!401 = !DILocation(line: 74, column: 36, scope: !396)
!402 = !DILocation(line: 74, column: 40, scope: !403)
!403 = !DILexicalBlockFile(scope: !396, file: !224, discriminator: 1)
!404 = !DILocation(line: 74, column: 44, scope: !403)
!405 = !DILocation(line: 74, column: 51, scope: !403)
!406 = !DILocation(line: 74, column: 61, scope: !403)
!407 = !DILocation(line: 74, column: 58, scope: !403)
!408 = !DILocation(line: 74, column: 6, scope: !403)
!409 = !DILocation(line: 75, column: 4, scope: !396)
!410 = !DILocation(line: 76, column: 35, scope: !378)
!411 = !DILocation(line: 76, column: 44, scope: !378)
!412 = !DILocation(line: 76, column: 42, scope: !378)
!413 = !DILocation(line: 76, column: 51, scope: !378)
!414 = !DILocation(line: 76, column: 8, scope: !378)
!415 = !DILocation(line: 76, column: 6, scope: !378)
!416 = !DILocation(line: 78, column: 8, scope: !417)
!417 = distinct !DILexicalBlock(scope: !378, file: !224, line: 78, column: 6)
!418 = !DILocation(line: 78, column: 13, scope: !417)
!419 = !DILocation(line: 78, column: 22, scope: !417)
!420 = !DILocation(line: 78, column: 6, scope: !378)
!421 = !DILocation(line: 79, column: 4, scope: !417)
!422 = !DILocation(line: 82, column: 6, scope: !423)
!423 = distinct !DILexicalBlock(scope: !378, file: !224, line: 82, column: 6)
!424 = !DILocation(line: 82, column: 12, scope: !423)
!425 = !DILocation(line: 82, column: 15, scope: !426)
!426 = !DILexicalBlockFile(scope: !423, file: !224, discriminator: 1)
!427 = !DILocation(line: 82, column: 6, scope: !426)
!428 = !DILocation(line: 84, column: 12, scope: !429)
!429 = distinct !DILexicalBlock(scope: !430, file: !224, line: 84, column: 11)
!430 = distinct !DILexicalBlock(scope: !423, file: !224, line: 83, column: 4)
!431 = !DILocation(line: 84, column: 17, scope: !429)
!432 = !DILocation(line: 84, column: 35, scope: !429)
!433 = !DILocation(line: 84, column: 29, scope: !429)
!434 = !DILocation(line: 84, column: 26, scope: !429)
!435 = !DILocation(line: 84, column: 43, scope: !429)
!436 = !DILocation(line: 84, column: 47, scope: !437)
!437 = !DILexicalBlockFile(scope: !429, file: !224, discriminator: 1)
!438 = !DILocation(line: 84, column: 52, scope: !437)
!439 = !DILocation(line: 84, column: 70, scope: !437)
!440 = !DILocation(line: 84, column: 64, scope: !437)
!441 = !DILocation(line: 84, column: 61, scope: !437)
!442 = !DILocation(line: 84, column: 11, scope: !437)
!443 = !DILocation(line: 85, column: 9, scope: !429)
!444 = !DILocation(line: 86, column: 4, scope: !430)
!445 = !DILocation(line: 88, column: 12, scope: !446)
!446 = distinct !DILexicalBlock(scope: !423, file: !224, line: 88, column: 11)
!447 = !DILocation(line: 88, column: 18, scope: !446)
!448 = !DILocation(line: 88, column: 21, scope: !449)
!449 = !DILexicalBlockFile(scope: !446, file: !224, discriminator: 1)
!450 = !DILocation(line: 88, column: 11, scope: !449)
!451 = !DILocation(line: 90, column: 12, scope: !452)
!452 = distinct !DILexicalBlock(scope: !453, file: !224, line: 90, column: 11)
!453 = distinct !DILexicalBlock(scope: !446, file: !224, line: 89, column: 4)
!454 = !DILocation(line: 90, column: 17, scope: !452)
!455 = !DILocation(line: 90, column: 35, scope: !452)
!456 = !DILocation(line: 90, column: 29, scope: !452)
!457 = !DILocation(line: 90, column: 26, scope: !452)
!458 = !DILocation(line: 90, column: 11, scope: !453)
!459 = !DILocation(line: 91, column: 9, scope: !452)
!460 = !DILocation(line: 93, column: 22, scope: !453)
!461 = !DILocation(line: 93, column: 27, scope: !453)
!462 = !DILocation(line: 93, column: 15, scope: !453)
!463 = !DILocation(line: 93, column: 13, scope: !453)
!464 = !DILocation(line: 94, column: 4, scope: !453)
!465 = !DILocation(line: 96, column: 12, scope: !466)
!466 = distinct !DILexicalBlock(scope: !446, file: !224, line: 96, column: 11)
!467 = !DILocation(line: 96, column: 18, scope: !466)
!468 = !DILocation(line: 96, column: 21, scope: !469)
!469 = !DILexicalBlockFile(scope: !466, file: !224, discriminator: 1)
!470 = !DILocation(line: 96, column: 11, scope: !469)
!471 = !DILocation(line: 98, column: 12, scope: !472)
!472 = distinct !DILexicalBlock(scope: !473, file: !224, line: 98, column: 11)
!473 = distinct !DILexicalBlock(scope: !466, file: !224, line: 97, column: 4)
!474 = !DILocation(line: 98, column: 17, scope: !472)
!475 = !DILocation(line: 98, column: 35, scope: !472)
!476 = !DILocation(line: 98, column: 29, scope: !472)
!477 = !DILocation(line: 98, column: 26, scope: !472)
!478 = !DILocation(line: 98, column: 11, scope: !473)
!479 = !DILocation(line: 99, column: 9, scope: !472)
!480 = !DILocation(line: 101, column: 22, scope: !473)
!481 = !DILocation(line: 101, column: 27, scope: !473)
!482 = !DILocation(line: 101, column: 15, scope: !473)
!483 = !DILocation(line: 101, column: 13, scope: !473)
!484 = !DILocation(line: 102, column: 4, scope: !473)
!485 = !DILocation(line: 104, column: 20, scope: !378)
!486 = !DILocation(line: 104, column: 25, scope: !378)
!487 = !DILocation(line: 104, column: 13, scope: !378)
!488 = !DILocation(line: 104, column: 11, scope: !378)
!489 = !DILocation(line: 105, column: 20, scope: !378)
!490 = !DILocation(line: 105, column: 25, scope: !378)
!491 = !DILocation(line: 105, column: 13, scope: !378)
!492 = !DILocation(line: 105, column: 11, scope: !378)
!493 = !DILocation(line: 107, column: 66, scope: !378)
!494 = !DILocation(line: 107, column: 76, scope: !378)
!495 = !DILocation(line: 107, column: 2, scope: !378)
!496 = !DILocation(line: 108, column: 2, scope: !378)
!497 = !DILocation(line: 111, column: 15, scope: !238)
!498 = !DILocation(line: 111, column: 4, scope: !238)
!499 = !DILocation(line: 115, column: 13, scope: !500)
!500 = distinct !DILexicalBlock(scope: !238, file: !224, line: 115, column: 8)
!501 = !DILocation(line: 115, column: 11, scope: !500)
!502 = !DILocation(line: 115, column: 52, scope: !500)
!503 = !DILocation(line: 115, column: 8, scope: !238)
!504 = !DILocation(line: 117, column: 2, scope: !505)
!505 = distinct !DILexicalBlock(scope: !500, file: !224, line: 116, column: 6)
!506 = !DILocation(line: 118, column: 6, scope: !505)
!507 = !DILocation(line: 120, column: 26, scope: !508)
!508 = distinct !DILexicalBlock(scope: !238, file: !224, line: 120, column: 8)
!509 = !DILocation(line: 120, column: 33, scope: !508)
!510 = !DILocation(line: 120, column: 45, scope: !508)
!511 = !DILocation(line: 120, column: 40, scope: !508)
!512 = !DILocation(line: 120, column: 55, scope: !508)
!513 = !DILocation(line: 120, column: 50, scope: !508)
!514 = !DILocation(line: 120, column: 103, scope: !508)
!515 = !DILocation(line: 120, column: 8, scope: !508)
!516 = !DILocation(line: 120, column: 108, scope: !508)
!517 = !DILocation(line: 120, column: 8, scope: !238)
!518 = !DILocation(line: 122, column: 18, scope: !519)
!519 = distinct !DILexicalBlock(scope: !508, file: !224, line: 121, column: 6)
!520 = !DILocation(line: 122, column: 2, scope: !519)
!521 = !DILocation(line: 123, column: 65, scope: !519)
!522 = !DILocation(line: 123, column: 49, scope: !519)
!523 = !DILocation(line: 123, column: 2, scope: !524)
!524 = !DILexicalBlockFile(scope: !519, file: !224, discriminator: 1)
!525 = !DILocation(line: 124, column: 6, scope: !519)
!526 = !DILocation(line: 126, column: 92, scope: !527)
!527 = distinct !DILexicalBlock(scope: !238, file: !224, line: 126, column: 8)
!528 = !DILocation(line: 126, column: 101, scope: !527)
!529 = !DILocation(line: 126, column: 119, scope: !527)
!530 = !DILocation(line: 126, column: 8, scope: !527)
!531 = !DILocation(line: 126, column: 124, scope: !527)
!532 = !DILocation(line: 126, column: 8, scope: !238)
!533 = !DILocation(line: 128, column: 18, scope: !534)
!534 = distinct !DILexicalBlock(scope: !527, file: !224, line: 127, column: 6)
!535 = !DILocation(line: 128, column: 2, scope: !534)
!536 = !DILocation(line: 129, column: 64, scope: !534)
!537 = !DILocation(line: 129, column: 48, scope: !534)
!538 = !DILocation(line: 129, column: 2, scope: !539)
!539 = !DILexicalBlockFile(scope: !534, file: !224, discriminator: 1)
!540 = !DILocation(line: 130, column: 6, scope: !534)
!541 = !DILocation(line: 133, column: 11, scope: !542)
!542 = distinct !DILexicalBlock(scope: !238, file: !224, line: 133, column: 4)
!543 = !DILocation(line: 133, column: 9, scope: !542)
!544 = !DILocation(line: 133, column: 16, scope: !545)
!545 = !DILexicalBlockFile(scope: !546, file: !224, discriminator: 1)
!546 = distinct !DILexicalBlock(scope: !542, file: !224, line: 133, column: 4)
!547 = !DILocation(line: 133, column: 18, scope: !545)
!548 = !DILocation(line: 133, column: 4, scope: !545)
!549 = !DILocation(line: 134, column: 24, scope: !550)
!550 = distinct !DILexicalBlock(scope: !546, file: !224, line: 134, column: 10)
!551 = !DILocation(line: 134, column: 10, scope: !550)
!552 = !DILocation(line: 134, column: 27, scope: !550)
!553 = !DILocation(line: 134, column: 10, scope: !546)
!554 = !DILocation(line: 136, column: 19, scope: !555)
!555 = distinct !DILexicalBlock(scope: !550, file: !224, line: 135, column: 8)
!556 = !DILocation(line: 136, column: 4, scope: !555)
!557 = !DILocation(line: 137, column: 70, scope: !555)
!558 = !DILocation(line: 137, column: 54, scope: !555)
!559 = !DILocation(line: 137, column: 4, scope: !560)
!560 = !DILexicalBlockFile(scope: !555, file: !224, discriminator: 1)
!561 = !DILocation(line: 138, column: 8, scope: !555)
!562 = !DILocation(line: 134, column: 31, scope: !563)
!563 = !DILexicalBlockFile(scope: !550, file: !224, discriminator: 1)
!564 = !DILocation(line: 133, column: 25, scope: !565)
!565 = !DILexicalBlockFile(scope: !546, file: !224, discriminator: 2)
!566 = !DILocation(line: 133, column: 4, scope: !565)
!567 = distinct !{!567, !568}
!568 = !DILocation(line: 133, column: 4, scope: !238)
!569 = !DILocation(line: 140, column: 19, scope: !238)
!570 = !DILocation(line: 140, column: 4, scope: !238)
!571 = !DILocation(line: 141, column: 4, scope: !238)
!572 = !DILocation(line: 143, column: 4, scope: !238)
