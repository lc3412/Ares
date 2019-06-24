; ModuleID = './line18-logpkt.o.i'
source_filename = "./line18-logpkt.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pcap_file_hdr_t = type { i32, i16, i16, i32, i32, i32, i32 }
%struct.logpkt_ctx_t = type { %struct.libnet_context*, [6 x i8], [6 x i8], %struct.sockaddr_storage, %struct.sockaddr_storage, i32, i32, i64 }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%struct.libnet_context = type { i32, i32, %struct.libnet_protocol_block*, %struct.libnet_protocol_block*, i32, i32, i32, i32, i8*, %struct.libnet_stats, i32, [64 x i8], [256 x i8], i32 }
%struct.libnet_protocol_block = type { i8*, i32, i16, i32, i8, i8, i32, %struct.libnet_protocol_block*, %struct.libnet_protocol_block* }
%struct.libnet_stats = type { i64, i64, i64 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.libnet_ether_addr = type { [6 x i8] }
%struct.bpf_program = type { i32, %struct.bpf_insn* }
%struct.bpf_insn = type { i16, i8, i8, i32 }
%struct.logpkt_recv_arp_reply_ctx_t = type { i32, i32, [6 x i8] }
%struct.pcap = type opaque
%struct.pcap_pkthdr = type { %struct.timeval, i32, i32 }
%struct.timeval = type { i64, i64 }
%struct.libnet_802_3_hdr = type { [6 x i8], [6 x i8], i16 }
%struct.libnet_arp_hdr = type { i16, i16, i8, i8, i16 }
%struct.ether_hdr_t = type { [6 x i8], [6 x i8], i16 }
%struct.ip4_hdr_t = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ip6_hdr_t = type { i32, i16, i8, i8, [16 x i8], [16 x i8] }
%struct.tcp_hdr_t = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.pcap_rec_hdr_t = type { i32, i32, i32, i32 }
%struct.timezone = type { i32, i32 }
%struct.libnet_in6_addr = type { %union.anon.0 }
%union.anon.0 = type { [4 x i32] }

@.str = private unnamed_addr constant [42 x i8] c"Warning: Failed to write to pcap log: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Warning: Failed to write packet\0A\00", align 1
@logpkt_ether_lookup.broadcast_ether = private unnamed_addr constant [6 x i8] c"\FF\FF\FF\FF\FF\FF", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Mirroring target must be an IPv4 address.\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Error converting dst IP address: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Error getting src IP address: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Error getting src ethernet address: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Error building arp header: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Error building ethernet header: %s\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Error in pcap_open_live(): %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"arp\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Error in pcap_compile(): %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Error in pcap_setfilter(): %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Error in pcap_dispatch(): %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Error writing arp packet: %s\00", align 1
@.str.14 = private unnamed_addr constant [52 x i8] c"Mirror target is up: %02x:%02x:%02x:%02x:%02x:%02x\0A\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"Error writing packet to PCAP file\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Error building packet\0A\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"Error writing packet: %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"Error writing pcap record hdr: %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"Error writing pcap record: %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"Error building tcp header: %s\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"Error building ip header: %s\00", align 1

; Function Attrs: nounwind uwtable
define i32 @logpkt_pcap_open_fd(i32) #0 !dbg !198 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcap_file_hdr_t, align 1
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !202, metadata !203), !dbg !204
  call void @llvm.dbg.declare(metadata %struct.pcap_file_hdr_t* %4, metadata !205, metadata !203), !dbg !216
  call void @llvm.dbg.declare(metadata i64* %5, metadata !217, metadata !203), !dbg !220
  call void @llvm.dbg.declare(metadata i64* %6, metadata !221, metadata !203), !dbg !222
  %7 = load i32, i32* %3, align 4, !dbg !223
  %8 = call i64 @lseek(i32 %7, i64 0, i32 2) #7, !dbg !224
  store i64 %8, i64* %5, align 8, !dbg !225
  %9 = load i64, i64* %5, align 8, !dbg !226
  %10 = icmp eq i64 %9, -1, !dbg !228
  br i1 %10, label %11, label %12, !dbg !229

; <label>:11:                                     ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !230
  br label %50, !dbg !230

; <label>:12:                                     ; preds = %1
  %13 = load i64, i64* %5, align 8, !dbg !231
  %14 = icmp sgt i64 %13, 0, !dbg !233
  br i1 %14, label %15, label %47, !dbg !234

; <label>:15:                                     ; preds = %12
  %16 = load i32, i32* %3, align 4, !dbg !235
  %17 = call i64 @lseek(i32 %16, i64 0, i32 0) #7, !dbg !238
  %18 = icmp eq i64 %17, -1, !dbg !239
  br i1 %18, label %19, label %20, !dbg !240

; <label>:19:                                     ; preds = %15
  store i32 -1, i32* %2, align 4, !dbg !241
  br label %50, !dbg !241

; <label>:20:                                     ; preds = %15
  %21 = load i32, i32* %3, align 4, !dbg !242
  %22 = bitcast %struct.pcap_file_hdr_t* %4 to i8*, !dbg !243
  %23 = call i64 @read(i32 %21, i8* %22, i64 24), !dbg !244
  store i64 %23, i64* %6, align 8, !dbg !245
  %24 = load i64, i64* %6, align 8, !dbg !246
  %25 = icmp ne i64 %24, 24, !dbg !248
  br i1 %25, label %26, label %27, !dbg !249

; <label>:26:                                     ; preds = %20
  store i32 -1, i32* %2, align 4, !dbg !250
  br label %50, !dbg !250

; <label>:27:                                     ; preds = %20
  %28 = getelementptr inbounds %struct.pcap_file_hdr_t, %struct.pcap_file_hdr_t* %4, i32 0, i32 0, !dbg !251
  %29 = load i32, i32* %28, align 1, !dbg !251
  %30 = icmp eq i32 %29, -1582119980, !dbg !253
  br i1 %30, label %31, label %36, !dbg !254

; <label>:31:                                     ; preds = %27
  %32 = load i32, i32* %3, align 4, !dbg !255
  %33 = call i64 @lseek(i32 %32, i64 0, i32 2) #7, !dbg !256
  %34 = icmp eq i64 %33, -1, !dbg !257
  %35 = select i1 %34, i32 -1, i32 0, !dbg !256
  store i32 %35, i32* %2, align 4, !dbg !258
  br label %50, !dbg !258

; <label>:36:                                     ; preds = %27
  %37 = load i32, i32* %3, align 4, !dbg !259
  %38 = call i64 @lseek(i32 %37, i64 0, i32 0) #7, !dbg !261
  %39 = icmp eq i64 %38, -1, !dbg !262
  br i1 %39, label %40, label %41, !dbg !263

; <label>:40:                                     ; preds = %36
  store i32 -1, i32* %2, align 4, !dbg !264
  br label %50, !dbg !264

; <label>:41:                                     ; preds = %36
  %42 = load i32, i32* %3, align 4, !dbg !265
  %43 = call i32 @ftruncate(i32 %42, i64 0) #7, !dbg !267
  %44 = icmp eq i32 %43, -1, !dbg !268
  br i1 %44, label %45, label %46, !dbg !269

; <label>:45:                                     ; preds = %41
  store i32 -1, i32* %2, align 4, !dbg !270
  br label %50, !dbg !270

; <label>:46:                                     ; preds = %41
  br label %47, !dbg !271

; <label>:47:                                     ; preds = %46, %12
  %48 = load i32, i32* %3, align 4, !dbg !272
  %49 = call i32 @logpkt_write_global_pcap_hdr(i32 %48), !dbg !273
  store i32 %49, i32* %2, align 4, !dbg !274
  br label %50, !dbg !274

; <label>:50:                                     ; preds = %47, %45, %40, %31, %26, %19, %11
  %51 = load i32, i32* %2, align 4, !dbg !275
  ret i32 %51, !dbg !275
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #2

declare i64 @read(i32, i8*, i64) #3

; Function Attrs: nounwind
declare i32 @ftruncate(i32, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @logpkt_write_global_pcap_hdr(i32) #0 !dbg !276 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcap_file_hdr_t, align 1
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !277, metadata !203), !dbg !278
  call void @llvm.dbg.declare(metadata %struct.pcap_file_hdr_t* %3, metadata !279, metadata !203), !dbg !280
  %4 = bitcast %struct.pcap_file_hdr_t* %3 to i8*, !dbg !281
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 24, i32 1, i1 false), !dbg !281
  %5 = getelementptr inbounds %struct.pcap_file_hdr_t, %struct.pcap_file_hdr_t* %3, i32 0, i32 0, !dbg !282
  store i32 -1582119980, i32* %5, align 1, !dbg !283
  %6 = getelementptr inbounds %struct.pcap_file_hdr_t, %struct.pcap_file_hdr_t* %3, i32 0, i32 1, !dbg !284
  store i16 2, i16* %6, align 1, !dbg !285
  %7 = getelementptr inbounds %struct.pcap_file_hdr_t, %struct.pcap_file_hdr_t* %3, i32 0, i32 2, !dbg !286
  store i16 4, i16* %7, align 1, !dbg !287
  %8 = getelementptr inbounds %struct.pcap_file_hdr_t, %struct.pcap_file_hdr_t* %3, i32 0, i32 5, !dbg !288
  store i32 1514, i32* %8, align 1, !dbg !289
  %9 = getelementptr inbounds %struct.pcap_file_hdr_t, %struct.pcap_file_hdr_t* %3, i32 0, i32 6, !dbg !290
  store i32 1, i32* %9, align 1, !dbg !291
  %10 = load i32, i32* %2, align 4, !dbg !292
  %11 = bitcast %struct.pcap_file_hdr_t* %3 to i8*, !dbg !293
  %12 = call i64 @write(i32 %10, i8* %11, i64 24), !dbg !294
  %13 = icmp ne i64 %12, 24, !dbg !295
  %14 = select i1 %13, i32 -1, i32 0, !dbg !294
  ret i32 %14, !dbg !296
}

; Function Attrs: nounwind uwtable
define void @logpkt_ctx_init(%struct.logpkt_ctx_t*, %struct.libnet_context*, i64, i8*, i8*, %struct.sockaddr*, i32, %struct.sockaddr*, i32) #0 !dbg !297 {
  %10 = alloca %struct.logpkt_ctx_t*, align 8
  %11 = alloca %struct.libnet_context*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.sockaddr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.sockaddr*, align 8
  %18 = alloca i32, align 4
  store %struct.logpkt_ctx_t* %0, %struct.logpkt_ctx_t** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.logpkt_ctx_t** %10, metadata !375, metadata !203), !dbg !376
  store %struct.libnet_context* %1, %struct.libnet_context** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.libnet_context** %11, metadata !377, metadata !203), !dbg !378
  store i64 %2, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !379, metadata !203), !dbg !380
  store i8* %3, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !381, metadata !203), !dbg !382
  store i8* %4, i8** %14, align 8
  call void @llvm.dbg.declare(metadata i8** %14, metadata !383, metadata !203), !dbg !384
  store %struct.sockaddr* %5, %struct.sockaddr** %15, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr** %15, metadata !385, metadata !203), !dbg !386
  store i32 %6, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !387, metadata !203), !dbg !388
  store %struct.sockaddr* %7, %struct.sockaddr** %17, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr** %17, metadata !389, metadata !203), !dbg !390
  store i32 %8, i32* %18, align 4
  call void @llvm.dbg.declare(metadata i32* %18, metadata !391, metadata !203), !dbg !392
  %19 = load %struct.libnet_context*, %struct.libnet_context** %11, align 8, !dbg !393
  %20 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %10, align 8, !dbg !394
  %21 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %20, i32 0, i32 0, !dbg !395
  store %struct.libnet_context* %19, %struct.libnet_context** %21, align 8, !dbg !396
  %22 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %10, align 8, !dbg !397
  %23 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %22, i32 0, i32 1, !dbg !398
  %24 = getelementptr inbounds [6 x i8], [6 x i8]* %23, i32 0, i32 0, !dbg !399
  %25 = load i8*, i8** %13, align 8, !dbg !400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 6, i32 1, i1 false), !dbg !399
  %26 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %10, align 8, !dbg !401
  %27 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %26, i32 0, i32 2, !dbg !402
  %28 = getelementptr inbounds [6 x i8], [6 x i8]* %27, i32 0, i32 0, !dbg !403
  %29 = load i8*, i8** %14, align 8, !dbg !404
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 6, i32 1, i1 false), !dbg !403
  %30 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %10, align 8, !dbg !405
  %31 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %30, i32 0, i32 3, !dbg !406
  %32 = bitcast %struct.sockaddr_storage* %31 to i8*, !dbg !407
  %33 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8, !dbg !408
  %34 = bitcast %struct.sockaddr* %33 to i8*, !dbg !407
  %35 = load i32, i32* %16, align 4, !dbg !409
  %36 = zext i32 %35 to i64, !dbg !409
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %34, i64 %36, i32 2, i1 false), !dbg !407
  %37 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %10, align 8, !dbg !410
  %38 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %37, i32 0, i32 4, !dbg !411
  %39 = bitcast %struct.sockaddr_storage* %38 to i8*, !dbg !412
  %40 = load %struct.sockaddr*, %struct.sockaddr** %17, align 8, !dbg !413
  %41 = bitcast %struct.sockaddr* %40 to i8*, !dbg !412
  %42 = load i32, i32* %18, align 4, !dbg !414
  %43 = zext i32 %42 to i64, !dbg !414
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %41, i64 %43, i32 2, i1 false), !dbg !412
  %44 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %10, align 8, !dbg !415
  %45 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %44, i32 0, i32 5, !dbg !416
  store i32 0, i32* %45, align 8, !dbg !417
  %46 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %10, align 8, !dbg !418
  %47 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %46, i32 0, i32 6, !dbg !419
  store i32 0, i32* %47, align 4, !dbg !420
  %48 = load i64, i64* %12, align 8, !dbg !421
  %49 = icmp ne i64 %48, 0, !dbg !421
  br i1 %49, label %50, label %62, !dbg !423

; <label>:50:                                     ; preds = %9
  %51 = load i64, i64* %12, align 8, !dbg !424
  %52 = sub i64 %51, 20, !dbg !426
  %53 = load %struct.sockaddr*, %struct.sockaddr** %17, align 8, !dbg !427
  %54 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %53, i32 0, i32 0, !dbg !428
  %55 = load i16, i16* %54, align 2, !dbg !428
  %56 = zext i16 %55 to i32, !dbg !427
  %57 = icmp eq i32 %56, 2, !dbg !429
  %58 = select i1 %57, i64 20, i64 40, !dbg !427
  %59 = sub i64 %52, %58, !dbg !430
  %60 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %10, align 8, !dbg !431
  %61 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %60, i32 0, i32 7, !dbg !432
  store i64 %59, i64* %61, align 8, !dbg !433
  br label %71, !dbg !434

; <label>:62:                                     ; preds = %9
  %63 = load %struct.sockaddr*, %struct.sockaddr** %17, align 8, !dbg !435
  %64 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %63, i32 0, i32 0, !dbg !437
  %65 = load i16, i16* %64, align 2, !dbg !437
  %66 = zext i16 %65 to i32, !dbg !435
  %67 = icmp eq i32 %66, 2, !dbg !438
  %68 = select i1 %67, i64 1460, i64 1440, !dbg !435
  %69 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %10, align 8, !dbg !439
  %70 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %69, i32 0, i32 7, !dbg !440
  store i64 %68, i64* %70, align 8, !dbg !441
  br label %71

; <label>:71:                                     ; preds = %62, %50
  ret void, !dbg !442
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define i32 @logpkt_write_payload(%struct.logpkt_ctx_t*, i32, i32, i8*, i64) #0 !dbg !443 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.logpkt_ctx_t*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.logpkt_ctx_t* %0, %struct.logpkt_ctx_t** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.logpkt_ctx_t** %7, metadata !446, metadata !203), !dbg !447
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !448, metadata !203), !dbg !449
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !450, metadata !203), !dbg !451
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !452, metadata !203), !dbg !453
  store i64 %4, i64* %11, align 8
  call void @llvm.dbg.declare(metadata i64* %11, metadata !454, metadata !203), !dbg !455
  call void @llvm.dbg.declare(metadata i32* %12, metadata !456, metadata !203), !dbg !457
  %14 = load i32, i32* %9, align 4, !dbg !458
  %15 = icmp eq i32 %14, 0, !dbg !459
  %16 = select i1 %15, i32 1, i32 0, !dbg !460
  store i32 %16, i32* %12, align 4, !dbg !457
  %17 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %7, align 8, !dbg !461
  %18 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %17, i32 0, i32 5, !dbg !463
  %19 = load i32, i32* %18, align 8, !dbg !463
  %20 = icmp eq i32 %19, 0, !dbg !464
  br i1 %20, label %21, label %28, !dbg !465

; <label>:21:                                     ; preds = %5
  %22 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %7, align 8, !dbg !466
  %23 = load i32, i32* %8, align 4, !dbg !469
  %24 = call i32 @logpkt_write_syn_handshake(%struct.logpkt_ctx_t* %22, i32 %23), !dbg !470
  %25 = icmp eq i32 %24, -1, !dbg !471
  br i1 %25, label %26, label %27, !dbg !472

; <label>:26:                                     ; preds = %21
  store i32 -1, i32* %6, align 4, !dbg !473
  br label %96, !dbg !473

; <label>:27:                                     ; preds = %21
  br label %28, !dbg !474

; <label>:28:                                     ; preds = %27, %5
  br label %29, !dbg !475

; <label>:29:                                     ; preds = %77, %28
  %30 = load i64, i64* %11, align 8, !dbg !476
  %31 = icmp ugt i64 %30, 0, !dbg !478
  br i1 %31, label %32, label %84, !dbg !479

; <label>:32:                                     ; preds = %29
  call void @llvm.dbg.declare(metadata i64* %13, metadata !480, metadata !203), !dbg !482
  %33 = load i64, i64* %11, align 8, !dbg !483
  %34 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %7, align 8, !dbg !484
  %35 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %34, i32 0, i32 7, !dbg !485
  %36 = load i64, i64* %35, align 8, !dbg !485
  %37 = icmp ugt i64 %33, %36, !dbg !486
  br i1 %37, label %38, label %42, !dbg !483

; <label>:38:                                     ; preds = %32
  %39 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %7, align 8, !dbg !487
  %40 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %39, i32 0, i32 7, !dbg !489
  %41 = load i64, i64* %40, align 8, !dbg !489
  br label %44, !dbg !490

; <label>:42:                                     ; preds = %32
  %43 = load i64, i64* %11, align 8, !dbg !491
  br label %44, !dbg !493

; <label>:44:                                     ; preds = %42, %38
  %45 = phi i64 [ %41, %38 ], [ %43, %42 ], !dbg !494
  store i64 %45, i64* %13, align 8, !dbg !496
  %46 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %7, align 8, !dbg !497
  %47 = load i32, i32* %8, align 4, !dbg !499
  %48 = load i32, i32* %9, align 4, !dbg !500
  %49 = load i8*, i8** %10, align 8, !dbg !501
  %50 = load i64, i64* %13, align 8, !dbg !502
  %51 = call i32 @logpkt_write_packet(%struct.logpkt_ctx_t* %46, i32 %47, i32 %48, i8 signext 24, i8* %49, i64 %50), !dbg !503
  %52 = icmp eq i32 %51, -1, !dbg !504
  br i1 %52, label %53, label %58, !dbg !505

; <label>:53:                                     ; preds = %44
  %54 = call i32* @__errno_location() #1, !dbg !506
  %55 = load i32, i32* %54, align 4, !dbg !508
  %56 = call i8* @strerror(i32 %55) #7, !dbg !509
  %57 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0), i8* %56), !dbg !511
  store i32 -1, i32* %6, align 4, !dbg !512
  br label %96, !dbg !512

; <label>:58:                                     ; preds = %44
  %59 = load i32, i32* %9, align 4, !dbg !513
  %60 = icmp eq i32 %59, 0, !dbg !515
  br i1 %60, label %61, label %69, !dbg !516

; <label>:61:                                     ; preds = %58
  %62 = load i64, i64* %13, align 8, !dbg !517
  %63 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %7, align 8, !dbg !519
  %64 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %63, i32 0, i32 5, !dbg !520
  %65 = load i32, i32* %64, align 8, !dbg !521
  %66 = zext i32 %65 to i64, !dbg !521
  %67 = add i64 %66, %62, !dbg !521
  %68 = trunc i64 %67 to i32, !dbg !521
  store i32 %68, i32* %64, align 8, !dbg !521
  br label %77, !dbg !522

; <label>:69:                                     ; preds = %58
  %70 = load i64, i64* %13, align 8, !dbg !523
  %71 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %7, align 8, !dbg !525
  %72 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %71, i32 0, i32 6, !dbg !526
  %73 = load i32, i32* %72, align 4, !dbg !527
  %74 = zext i32 %73 to i64, !dbg !527
  %75 = add i64 %74, %70, !dbg !527
  %76 = trunc i64 %75 to i32, !dbg !527
  store i32 %76, i32* %72, align 4, !dbg !527
  br label %77

; <label>:77:                                     ; preds = %69, %61
  %78 = load i64, i64* %13, align 8, !dbg !528
  %79 = load i8*, i8** %10, align 8, !dbg !529
  %80 = getelementptr inbounds i8, i8* %79, i64 %78, !dbg !529
  store i8* %80, i8** %10, align 8, !dbg !529
  %81 = load i64, i64* %13, align 8, !dbg !530
  %82 = load i64, i64* %11, align 8, !dbg !531
  %83 = sub i64 %82, %81, !dbg !531
  store i64 %83, i64* %11, align 8, !dbg !531
  br label %29, !dbg !532, !llvm.loop !534

; <label>:84:                                     ; preds = %29
  %85 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %7, align 8, !dbg !535
  %86 = load i32, i32* %8, align 4, !dbg !537
  %87 = load i32, i32* %12, align 4, !dbg !538
  %88 = call i32 @logpkt_write_packet(%struct.logpkt_ctx_t* %85, i32 %86, i32 %87, i8 signext 16, i8* null, i64 0), !dbg !539
  %89 = icmp eq i32 %88, -1, !dbg !540
  br i1 %89, label %90, label %95, !dbg !541

; <label>:90:                                     ; preds = %84
  %91 = call i32* @__errno_location() #1, !dbg !542
  %92 = load i32, i32* %91, align 4, !dbg !544
  %93 = call i8* @strerror(i32 %92) #7, !dbg !545
  %94 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0), i8* %93), !dbg !547
  store i32 -1, i32* %6, align 4, !dbg !548
  br label %96, !dbg !548

; <label>:95:                                     ; preds = %84
  store i32 0, i32* %6, align 4, !dbg !549
  br label %96, !dbg !549

; <label>:96:                                     ; preds = %95, %90, %53, %26
  %97 = load i32, i32* %6, align 4, !dbg !550
  ret i32 %97, !dbg !550
}

; Function Attrs: nounwind uwtable
define internal i32 @logpkt_write_syn_handshake(%struct.logpkt_ctx_t*, i32) #0 !dbg !551 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.logpkt_ctx_t*, align 8
  %5 = alloca i32, align 4
  store %struct.logpkt_ctx_t* %0, %struct.logpkt_ctx_t** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.logpkt_ctx_t** %4, metadata !554, metadata !203), !dbg !555
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !556, metadata !203), !dbg !557
  %6 = call i32 @sys_rand32(), !dbg !558
  %7 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %4, align 8, !dbg !559
  %8 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %7, i32 0, i32 5, !dbg !560
  store i32 %6, i32* %8, align 8, !dbg !561
  %9 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %4, align 8, !dbg !562
  %10 = load i32, i32* %5, align 4, !dbg !564
  %11 = call i32 @logpkt_write_packet(%struct.logpkt_ctx_t* %9, i32 %10, i32 0, i8 signext 2, i8* null, i64 0), !dbg !565
  %12 = icmp eq i32 %11, -1, !dbg !566
  br i1 %12, label %13, label %14, !dbg !567

; <label>:13:                                     ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !568
  br label %38, !dbg !568

; <label>:14:                                     ; preds = %2
  %15 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %4, align 8, !dbg !569
  %16 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %15, i32 0, i32 5, !dbg !570
  %17 = load i32, i32* %16, align 8, !dbg !571
  %18 = add i32 %17, 1, !dbg !571
  store i32 %18, i32* %16, align 8, !dbg !571
  %19 = call i32 @sys_rand32(), !dbg !572
  %20 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %4, align 8, !dbg !573
  %21 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %20, i32 0, i32 6, !dbg !574
  store i32 %19, i32* %21, align 4, !dbg !575
  %22 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %4, align 8, !dbg !576
  %23 = load i32, i32* %5, align 4, !dbg !578
  %24 = call i32 @logpkt_write_packet(%struct.logpkt_ctx_t* %22, i32 %23, i32 1, i8 signext 18, i8* null, i64 0), !dbg !579
  %25 = icmp eq i32 %24, -1, !dbg !580
  br i1 %25, label %26, label %27, !dbg !581

; <label>:26:                                     ; preds = %14
  store i32 -1, i32* %3, align 4, !dbg !582
  br label %38, !dbg !582

; <label>:27:                                     ; preds = %14
  %28 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %4, align 8, !dbg !583
  %29 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %28, i32 0, i32 6, !dbg !584
  %30 = load i32, i32* %29, align 4, !dbg !585
  %31 = add i32 %30, 1, !dbg !585
  store i32 %31, i32* %29, align 4, !dbg !585
  %32 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %4, align 8, !dbg !586
  %33 = load i32, i32* %5, align 4, !dbg !588
  %34 = call i32 @logpkt_write_packet(%struct.logpkt_ctx_t* %32, i32 %33, i32 0, i8 signext 16, i8* null, i64 0), !dbg !589
  %35 = icmp eq i32 %34, -1, !dbg !590
  br i1 %35, label %36, label %37, !dbg !591

; <label>:36:                                     ; preds = %27
  store i32 -1, i32* %3, align 4, !dbg !592
  br label %38, !dbg !592

; <label>:37:                                     ; preds = %27
  store i32 0, i32* %3, align 4, !dbg !593
  br label %38, !dbg !593

; <label>:38:                                     ; preds = %37, %36, %26, %13
  %39 = load i32, i32* %3, align 4, !dbg !594
  ret i32 %39, !dbg !594
}

; Function Attrs: nounwind uwtable
define internal i32 @logpkt_write_packet(%struct.logpkt_ctx_t*, i32, i32, i8 signext, i8*, i64) #0 !dbg !595 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.logpkt_ctx_t*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca [1514 x i8], align 16
  %16 = alloca i64, align 8
  store %struct.logpkt_ctx_t* %0, %struct.logpkt_ctx_t** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.logpkt_ctx_t** %8, metadata !598, metadata !203), !dbg !599
  store i32 %1, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !600, metadata !203), !dbg !601
  store i32 %2, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !602, metadata !203), !dbg !603
  store i8 %3, i8* %11, align 1
  call void @llvm.dbg.declare(metadata i8* %11, metadata !604, metadata !203), !dbg !605
  store i8* %4, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !606, metadata !203), !dbg !607
  store i64 %5, i64* %13, align 8
  call void @llvm.dbg.declare(metadata i64* %13, metadata !608, metadata !203), !dbg !609
  call void @llvm.dbg.declare(metadata i32* %14, metadata !610, metadata !203), !dbg !611
  %17 = load i32, i32* %9, align 4, !dbg !612
  %18 = icmp ne i32 %17, -1, !dbg !614
  br i1 %18, label %19, label %80, !dbg !615

; <label>:19:                                     ; preds = %6
  call void @llvm.dbg.declare(metadata [1514 x i8]* %15, metadata !616, metadata !203), !dbg !621
  call void @llvm.dbg.declare(metadata i64* %16, metadata !622, metadata !203), !dbg !623
  %20 = load i32, i32* %10, align 4, !dbg !624
  %21 = icmp eq i32 %20, 0, !dbg !626
  br i1 %21, label %22, label %46, !dbg !627

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds [1514 x i8], [1514 x i8]* %15, i32 0, i32 0, !dbg !628
  %24 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %8, align 8, !dbg !630
  %25 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %24, i32 0, i32 1, !dbg !631
  %26 = getelementptr inbounds [6 x i8], [6 x i8]* %25, i32 0, i32 0, !dbg !630
  %27 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %8, align 8, !dbg !632
  %28 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %27, i32 0, i32 2, !dbg !633
  %29 = getelementptr inbounds [6 x i8], [6 x i8]* %28, i32 0, i32 0, !dbg !632
  %30 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %8, align 8, !dbg !634
  %31 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %30, i32 0, i32 3, !dbg !635
  %32 = bitcast %struct.sockaddr_storage* %31 to %struct.sockaddr*, !dbg !636
  %33 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %8, align 8, !dbg !637
  %34 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %33, i32 0, i32 4, !dbg !638
  %35 = bitcast %struct.sockaddr_storage* %34 to %struct.sockaddr*, !dbg !639
  %36 = load i8, i8* %11, align 1, !dbg !640
  %37 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %8, align 8, !dbg !641
  %38 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %37, i32 0, i32 5, !dbg !642
  %39 = load i32, i32* %38, align 8, !dbg !642
  %40 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %8, align 8, !dbg !643
  %41 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %40, i32 0, i32 6, !dbg !644
  %42 = load i32, i32* %41, align 4, !dbg !644
  %43 = load i8*, i8** %12, align 8, !dbg !645
  %44 = load i64, i64* %13, align 8, !dbg !646
  %45 = call i64 @logpkt_pcap_build(i8* %23, i8* %26, i8* %29, %struct.sockaddr* %32, %struct.sockaddr* %35, i8 signext %36, i32 %39, i32 %42, i8* %43, i64 %44), !dbg !647
  store i64 %45, i64* %16, align 8, !dbg !648
  br label %70, !dbg !649

; <label>:46:                                     ; preds = %19
  %47 = getelementptr inbounds [1514 x i8], [1514 x i8]* %15, i32 0, i32 0, !dbg !650
  %48 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %8, align 8, !dbg !652
  %49 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %48, i32 0, i32 2, !dbg !653
  %50 = getelementptr inbounds [6 x i8], [6 x i8]* %49, i32 0, i32 0, !dbg !652
  %51 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %8, align 8, !dbg !654
  %52 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %51, i32 0, i32 1, !dbg !655
  %53 = getelementptr inbounds [6 x i8], [6 x i8]* %52, i32 0, i32 0, !dbg !654
  %54 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %8, align 8, !dbg !656
  %55 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %54, i32 0, i32 4, !dbg !657
  %56 = bitcast %struct.sockaddr_storage* %55 to %struct.sockaddr*, !dbg !658
  %57 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %8, align 8, !dbg !659
  %58 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %57, i32 0, i32 3, !dbg !660
  %59 = bitcast %struct.sockaddr_storage* %58 to %struct.sockaddr*, !dbg !661
  %60 = load i8, i8* %11, align 1, !dbg !662
  %61 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %8, align 8, !dbg !663
  %62 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %61, i32 0, i32 6, !dbg !664
  %63 = load i32, i32* %62, align 4, !dbg !664
  %64 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %8, align 8, !dbg !665
  %65 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %64, i32 0, i32 5, !dbg !666
  %66 = load i32, i32* %65, align 8, !dbg !666
  %67 = load i8*, i8** %12, align 8, !dbg !667
  %68 = load i64, i64* %13, align 8, !dbg !668
  %69 = call i64 @logpkt_pcap_build(i8* %47, i8* %50, i8* %53, %struct.sockaddr* %56, %struct.sockaddr* %59, i8 signext %60, i32 %63, i32 %66, i8* %67, i64 %68), !dbg !669
  store i64 %69, i64* %16, align 8, !dbg !670
  br label %70

; <label>:70:                                     ; preds = %46, %22
  %71 = getelementptr inbounds [1514 x i8], [1514 x i8]* %15, i32 0, i32 0, !dbg !671
  %72 = load i64, i64* %16, align 8, !dbg !672
  %73 = load i32, i32* %9, align 4, !dbg !673
  %74 = call i32 @logpkt_pcap_write(i8* %71, i64 %72, i32 %73), !dbg !674
  store i32 %74, i32* %14, align 4, !dbg !675
  %75 = load i32, i32* %14, align 4, !dbg !676
  %76 = icmp eq i32 %75, -1, !dbg !678
  br i1 %76, label %77, label %79, !dbg !679

; <label>:77:                                     ; preds = %70
  %78 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i32 0, i32 0)), !dbg !680
  store i32 -1, i32* %7, align 4, !dbg !682
  br label %159, !dbg !682

; <label>:79:                                     ; preds = %70
  br label %157, !dbg !683

; <label>:80:                                     ; preds = %6
  %81 = load i32, i32* %10, align 4, !dbg !684
  %82 = icmp eq i32 %81, 0, !dbg !687
  br i1 %82, label %83, label %109, !dbg !688

; <label>:83:                                     ; preds = %80
  %84 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %8, align 8, !dbg !689
  %85 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %84, i32 0, i32 0, !dbg !691
  %86 = load %struct.libnet_context*, %struct.libnet_context** %85, align 8, !dbg !691
  %87 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %8, align 8, !dbg !692
  %88 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %87, i32 0, i32 1, !dbg !693
  %89 = getelementptr inbounds [6 x i8], [6 x i8]* %88, i32 0, i32 0, !dbg !692
  %90 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %8, align 8, !dbg !694
  %91 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %90, i32 0, i32 2, !dbg !695
  %92 = getelementptr inbounds [6 x i8], [6 x i8]* %91, i32 0, i32 0, !dbg !694
  %93 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %8, align 8, !dbg !696
  %94 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %93, i32 0, i32 3, !dbg !697
  %95 = bitcast %struct.sockaddr_storage* %94 to %struct.sockaddr*, !dbg !698
  %96 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %8, align 8, !dbg !699
  %97 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %96, i32 0, i32 4, !dbg !700
  %98 = bitcast %struct.sockaddr_storage* %97 to %struct.sockaddr*, !dbg !701
  %99 = load i8, i8* %11, align 1, !dbg !702
  %100 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %8, align 8, !dbg !703
  %101 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %100, i32 0, i32 5, !dbg !704
  %102 = load i32, i32* %101, align 8, !dbg !704
  %103 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %8, align 8, !dbg !705
  %104 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %103, i32 0, i32 6, !dbg !706
  %105 = load i32, i32* %104, align 4, !dbg !706
  %106 = load i8*, i8** %12, align 8, !dbg !707
  %107 = load i64, i64* %13, align 8, !dbg !708
  %108 = call i32 @logpkt_mirror_build(%struct.libnet_context* %86, i8* %89, i8* %92, %struct.sockaddr* %95, %struct.sockaddr* %98, i8 signext %99, i32 %102, i32 %105, i8* %106, i64 %107), !dbg !709
  store i32 %108, i32* %14, align 4, !dbg !710
  br label %135, !dbg !711

; <label>:109:                                    ; preds = %80
  %110 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %8, align 8, !dbg !712
  %111 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %110, i32 0, i32 0, !dbg !714
  %112 = load %struct.libnet_context*, %struct.libnet_context** %111, align 8, !dbg !714
  %113 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %8, align 8, !dbg !715
  %114 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %113, i32 0, i32 1, !dbg !716
  %115 = getelementptr inbounds [6 x i8], [6 x i8]* %114, i32 0, i32 0, !dbg !715
  %116 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %8, align 8, !dbg !717
  %117 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %116, i32 0, i32 2, !dbg !718
  %118 = getelementptr inbounds [6 x i8], [6 x i8]* %117, i32 0, i32 0, !dbg !717
  %119 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %8, align 8, !dbg !719
  %120 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %119, i32 0, i32 4, !dbg !720
  %121 = bitcast %struct.sockaddr_storage* %120 to %struct.sockaddr*, !dbg !721
  %122 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %8, align 8, !dbg !722
  %123 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %122, i32 0, i32 3, !dbg !723
  %124 = bitcast %struct.sockaddr_storage* %123 to %struct.sockaddr*, !dbg !724
  %125 = load i8, i8* %11, align 1, !dbg !725
  %126 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %8, align 8, !dbg !726
  %127 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %126, i32 0, i32 6, !dbg !727
  %128 = load i32, i32* %127, align 4, !dbg !727
  %129 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %8, align 8, !dbg !728
  %130 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %129, i32 0, i32 5, !dbg !729
  %131 = load i32, i32* %130, align 8, !dbg !729
  %132 = load i8*, i8** %12, align 8, !dbg !730
  %133 = load i64, i64* %13, align 8, !dbg !731
  %134 = call i32 @logpkt_mirror_build(%struct.libnet_context* %112, i8* %115, i8* %118, %struct.sockaddr* %121, %struct.sockaddr* %124, i8 signext %125, i32 %128, i32 %131, i8* %132, i64 %133), !dbg !732
  store i32 %134, i32* %14, align 4, !dbg !733
  br label %135

; <label>:135:                                    ; preds = %109, %83
  %136 = load i32, i32* %14, align 4, !dbg !734
  %137 = icmp eq i32 %136, -1, !dbg !736
  br i1 %137, label %138, label %140, !dbg !737

; <label>:138:                                    ; preds = %135
  %139 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0)), !dbg !738
  store i32 -1, i32* %7, align 4, !dbg !740
  br label %159, !dbg !740

; <label>:140:                                    ; preds = %135
  %141 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %8, align 8, !dbg !741
  %142 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %141, i32 0, i32 0, !dbg !742
  %143 = load %struct.libnet_context*, %struct.libnet_context** %142, align 8, !dbg !742
  %144 = call i32 @libnet_write(%struct.libnet_context* %143), !dbg !743
  store i32 %144, i32* %14, align 4, !dbg !744
  %145 = load i32, i32* %14, align 4, !dbg !745
  %146 = icmp eq i32 %145, -1, !dbg !747
  br i1 %146, label %147, label %153, !dbg !748

; <label>:147:                                    ; preds = %140
  %148 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %8, align 8, !dbg !749
  %149 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %148, i32 0, i32 0, !dbg !751
  %150 = load %struct.libnet_context*, %struct.libnet_context** %149, align 8, !dbg !751
  %151 = call i8* @libnet_geterror(%struct.libnet_context* %150), !dbg !752
  %152 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i32 0, i32 0), i8* %151), !dbg !753
  br label %153, !dbg !754

; <label>:153:                                    ; preds = %147, %140
  %154 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %8, align 8, !dbg !755
  %155 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %154, i32 0, i32 0, !dbg !756
  %156 = load %struct.libnet_context*, %struct.libnet_context** %155, align 8, !dbg !756
  call void @libnet_clear_packet(%struct.libnet_context* %156), !dbg !757
  br label %157

; <label>:157:                                    ; preds = %153, %79
  %158 = load i32, i32* %14, align 4, !dbg !758
  store i32 %158, i32* %7, align 4, !dbg !759
  br label %159, !dbg !759

; <label>:159:                                    ; preds = %157, %138, %77
  %160 = load i32, i32* %7, align 4, !dbg !760
  ret i32 %160, !dbg !760
}

declare i32 @log_err_printf(i8*, ...) #3

; Function Attrs: nounwind
declare i8* @strerror(i32) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: nounwind uwtable
define i32 @logpkt_write_close(%struct.logpkt_ctx_t*, i32, i32) #0 !dbg !761 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.logpkt_ctx_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.logpkt_ctx_t* %0, %struct.logpkt_ctx_t** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.logpkt_ctx_t** %5, metadata !764, metadata !203), !dbg !765
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !766, metadata !203), !dbg !767
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !768, metadata !203), !dbg !769
  call void @llvm.dbg.declare(metadata i32* %8, metadata !770, metadata !203), !dbg !771
  %9 = load i32, i32* %7, align 4, !dbg !772
  %10 = icmp eq i32 %9, 0, !dbg !773
  %11 = select i1 %10, i32 1, i32 0, !dbg !774
  store i32 %11, i32* %8, align 4, !dbg !771
  %12 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %5, align 8, !dbg !775
  %13 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %12, i32 0, i32 5, !dbg !777
  %14 = load i32, i32* %13, align 8, !dbg !777
  %15 = icmp eq i32 %14, 0, !dbg !778
  br i1 %15, label %16, label %23, !dbg !779

; <label>:16:                                     ; preds = %3
  %17 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %5, align 8, !dbg !780
  %18 = load i32, i32* %6, align 4, !dbg !783
  %19 = call i32 @logpkt_write_syn_handshake(%struct.logpkt_ctx_t* %17, i32 %18), !dbg !784
  %20 = icmp eq i32 %19, -1, !dbg !785
  br i1 %20, label %21, label %22, !dbg !786

; <label>:21:                                     ; preds = %16
  store i32 -1, i32* %4, align 4, !dbg !787
  br label %74, !dbg !787

; <label>:22:                                     ; preds = %16
  br label %23, !dbg !788

; <label>:23:                                     ; preds = %22, %3
  %24 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %5, align 8, !dbg !789
  %25 = load i32, i32* %6, align 4, !dbg !791
  %26 = load i32, i32* %7, align 4, !dbg !792
  %27 = call i32 @logpkt_write_packet(%struct.logpkt_ctx_t* %24, i32 %25, i32 %26, i8 signext 17, i8* null, i64 0), !dbg !793
  %28 = icmp eq i32 %27, -1, !dbg !794
  br i1 %28, label %29, label %31, !dbg !795

; <label>:29:                                     ; preds = %23
  %30 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0)), !dbg !796
  store i32 -1, i32* %4, align 4, !dbg !798
  br label %74, !dbg !798

; <label>:31:                                     ; preds = %23
  %32 = load i32, i32* %7, align 4, !dbg !799
  %33 = icmp eq i32 %32, 0, !dbg !801
  br i1 %33, label %34, label %39, !dbg !802

; <label>:34:                                     ; preds = %31
  %35 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %5, align 8, !dbg !803
  %36 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %35, i32 0, i32 5, !dbg !805
  %37 = load i32, i32* %36, align 8, !dbg !806
  %38 = add i32 %37, 1, !dbg !806
  store i32 %38, i32* %36, align 8, !dbg !806
  br label %44, !dbg !807

; <label>:39:                                     ; preds = %31
  %40 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %5, align 8, !dbg !808
  %41 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %40, i32 0, i32 6, !dbg !810
  %42 = load i32, i32* %41, align 4, !dbg !811
  %43 = add i32 %42, 1, !dbg !811
  store i32 %43, i32* %41, align 4, !dbg !811
  br label %44

; <label>:44:                                     ; preds = %39, %34
  %45 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %5, align 8, !dbg !812
  %46 = load i32, i32* %6, align 4, !dbg !814
  %47 = load i32, i32* %8, align 4, !dbg !815
  %48 = call i32 @logpkt_write_packet(%struct.logpkt_ctx_t* %45, i32 %46, i32 %47, i8 signext 17, i8* null, i64 0), !dbg !816
  %49 = icmp eq i32 %48, -1, !dbg !817
  br i1 %49, label %50, label %52, !dbg !818

; <label>:50:                                     ; preds = %44
  %51 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0)), !dbg !819
  store i32 -1, i32* %4, align 4, !dbg !821
  br label %74, !dbg !821

; <label>:52:                                     ; preds = %44
  %53 = load i32, i32* %8, align 4, !dbg !822
  %54 = icmp eq i32 %53, 0, !dbg !824
  br i1 %54, label %55, label %60, !dbg !825

; <label>:55:                                     ; preds = %52
  %56 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %5, align 8, !dbg !826
  %57 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %56, i32 0, i32 5, !dbg !828
  %58 = load i32, i32* %57, align 8, !dbg !829
  %59 = add i32 %58, 1, !dbg !829
  store i32 %59, i32* %57, align 8, !dbg !829
  br label %65, !dbg !830

; <label>:60:                                     ; preds = %52
  %61 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %5, align 8, !dbg !831
  %62 = getelementptr inbounds %struct.logpkt_ctx_t, %struct.logpkt_ctx_t* %61, i32 0, i32 6, !dbg !833
  %63 = load i32, i32* %62, align 4, !dbg !834
  %64 = add i32 %63, 1, !dbg !834
  store i32 %64, i32* %62, align 4, !dbg !834
  br label %65

; <label>:65:                                     ; preds = %60, %55
  %66 = load %struct.logpkt_ctx_t*, %struct.logpkt_ctx_t** %5, align 8, !dbg !835
  %67 = load i32, i32* %6, align 4, !dbg !837
  %68 = load i32, i32* %7, align 4, !dbg !838
  %69 = call i32 @logpkt_write_packet(%struct.logpkt_ctx_t* %66, i32 %67, i32 %68, i8 signext 16, i8* null, i64 0), !dbg !839
  %70 = icmp eq i32 %69, -1, !dbg !840
  br i1 %70, label %71, label %73, !dbg !841

; <label>:71:                                     ; preds = %65
  %72 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0)), !dbg !842
  store i32 -1, i32* %4, align 4, !dbg !844
  br label %74, !dbg !844

; <label>:73:                                     ; preds = %65
  store i32 0, i32* %4, align 4, !dbg !845
  br label %74, !dbg !845

; <label>:74:                                     ; preds = %73, %71, %50, %29, %21
  %75 = load i32, i32* %4, align 4, !dbg !846
  ret i32 %75, !dbg !846
}

; Function Attrs: nounwind uwtable
define i32 @logpkt_ether_lookup(%struct.libnet_context*, i8*, i8*, i8*, i8*) #0 !dbg !847 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.libnet_context*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [256 x i8], align 16
  %13 = alloca [6 x i8], align 1
  %14 = alloca [6 x i8], align 1
  %15 = alloca %struct.libnet_ether_addr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.bpf_program, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.logpkt_recv_arp_reply_ctx_t, align 4
  %20 = alloca %struct.pcap*, align 8
  store %struct.libnet_context* %0, %struct.libnet_context** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.libnet_context** %7, metadata !852, metadata !203), !dbg !853
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !854, metadata !203), !dbg !855
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !856, metadata !203), !dbg !857
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !858, metadata !203), !dbg !859
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !860, metadata !203), !dbg !861
  call void @llvm.dbg.declare(metadata [256 x i8]* %12, metadata !862, metadata !203), !dbg !863
  call void @llvm.dbg.declare(metadata [6 x i8]* %13, metadata !864, metadata !203), !dbg !865
  %21 = bitcast [6 x i8]* %13 to i8*, !dbg !865
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @logpkt_ether_lookup.broadcast_ether, i32 0, i32 0), i64 6, i32 1, i1 false), !dbg !865
  call void @llvm.dbg.declare(metadata [6 x i8]* %14, metadata !866, metadata !203), !dbg !867
  %22 = bitcast [6 x i8]* %14 to i8*, !dbg !867
  call void @llvm.memset.p0i8.i64(i8* %22, i8 0, i64 6, i32 1, i1 false), !dbg !867
  call void @llvm.dbg.declare(metadata %struct.libnet_ether_addr** %15, metadata !868, metadata !203), !dbg !873
  call void @llvm.dbg.declare(metadata i32* %16, metadata !874, metadata !203), !dbg !875
  call void @llvm.dbg.declare(metadata %struct.bpf_program* %17, metadata !876, metadata !203), !dbg !890
  call void @llvm.dbg.declare(metadata i32* %18, metadata !891, metadata !203), !dbg !892
  store i32 50, i32* %18, align 4, !dbg !892
  call void @llvm.dbg.declare(metadata %struct.logpkt_recv_arp_reply_ctx_t* %19, metadata !893, metadata !203), !dbg !894
  %23 = load i8*, i8** %10, align 8, !dbg !895
  %24 = call i32 @sys_get_af(i8* %23), !dbg !897
  %25 = icmp ne i32 %24, 2, !dbg !898
  br i1 %25, label %26, label %28, !dbg !899

; <label>:26:                                     ; preds = %5
  %27 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i32 0, i32 0)), !dbg !900
  store i32 -1, i32* %6, align 4, !dbg !902
  br label %182, !dbg !902

; <label>:28:                                     ; preds = %5
  %29 = getelementptr inbounds %struct.logpkt_recv_arp_reply_ctx_t, %struct.logpkt_recv_arp_reply_ctx_t* %19, i32 0, i32 1, !dbg !903
  store i32 -1, i32* %29, align 4, !dbg !904
  %30 = load %struct.libnet_context*, %struct.libnet_context** %7, align 8, !dbg !905
  %31 = load i8*, i8** %10, align 8, !dbg !906
  %32 = call i32 @libnet_name2addr4(%struct.libnet_context* %30, i8* %31, i8 zeroext 0), !dbg !907
  %33 = getelementptr inbounds %struct.logpkt_recv_arp_reply_ctx_t, %struct.logpkt_recv_arp_reply_ctx_t* %19, i32 0, i32 0, !dbg !908
  store i32 %32, i32* %33, align 4, !dbg !909
  %34 = getelementptr inbounds %struct.logpkt_recv_arp_reply_ctx_t, %struct.logpkt_recv_arp_reply_ctx_t* %19, i32 0, i32 0, !dbg !910
  %35 = load i32, i32* %34, align 4, !dbg !910
  %36 = icmp eq i32 %35, -1, !dbg !912
  br i1 %36, label %37, label %41, !dbg !913

; <label>:37:                                     ; preds = %28
  %38 = load %struct.libnet_context*, %struct.libnet_context** %7, align 8, !dbg !914
  %39 = call i8* @libnet_geterror(%struct.libnet_context* %38), !dbg !916
  %40 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i8* %39), !dbg !917
  br label %178, !dbg !918

; <label>:41:                                     ; preds = %28
  %42 = load %struct.libnet_context*, %struct.libnet_context** %7, align 8, !dbg !919
  %43 = call i32 @libnet_get_ipaddr4(%struct.libnet_context* %42), !dbg !920
  store i32 %43, i32* %16, align 4, !dbg !921
  %44 = load i32, i32* %16, align 4, !dbg !922
  %45 = icmp eq i32 %44, -1, !dbg !924
  br i1 %45, label %46, label %50, !dbg !925

; <label>:46:                                     ; preds = %41
  %47 = load %struct.libnet_context*, %struct.libnet_context** %7, align 8, !dbg !926
  %48 = call i8* @libnet_geterror(%struct.libnet_context* %47), !dbg !928
  %49 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0), i8* %48), !dbg !929
  br label %178, !dbg !930

; <label>:50:                                     ; preds = %41
  %51 = load %struct.libnet_context*, %struct.libnet_context** %7, align 8, !dbg !931
  %52 = call %struct.libnet_ether_addr* @libnet_get_hwaddr(%struct.libnet_context* %51), !dbg !932
  store %struct.libnet_ether_addr* %52, %struct.libnet_ether_addr** %15, align 8, !dbg !933
  %53 = load %struct.libnet_ether_addr*, %struct.libnet_ether_addr** %15, align 8, !dbg !934
  %54 = icmp eq %struct.libnet_ether_addr* %53, null, !dbg !936
  br i1 %54, label %55, label %59, !dbg !937

; <label>:55:                                     ; preds = %50
  %56 = load %struct.libnet_context*, %struct.libnet_context** %7, align 8, !dbg !938
  %57 = call i8* @libnet_geterror(%struct.libnet_context* %56), !dbg !940
  %58 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i32 0, i32 0), i8* %57), !dbg !941
  br label %178, !dbg !942

; <label>:59:                                     ; preds = %50
  %60 = load i8*, i8** %8, align 8, !dbg !943
  %61 = load %struct.libnet_ether_addr*, %struct.libnet_ether_addr** %15, align 8, !dbg !944
  %62 = getelementptr inbounds %struct.libnet_ether_addr, %struct.libnet_ether_addr* %61, i32 0, i32 0, !dbg !945
  %63 = getelementptr inbounds [6 x i8], [6 x i8]* %62, i32 0, i32 0, !dbg !946
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %60, i8* %63, i64 6, i32 1, i1 false), !dbg !946
  %64 = load i8*, i8** %8, align 8, !dbg !947
  %65 = bitcast i32* %16 to i8*, !dbg !949
  %66 = getelementptr inbounds [6 x i8], [6 x i8]* %14, i32 0, i32 0, !dbg !950
  %67 = getelementptr inbounds %struct.logpkt_recv_arp_reply_ctx_t, %struct.logpkt_recv_arp_reply_ctx_t* %19, i32 0, i32 0, !dbg !951
  %68 = bitcast i32* %67 to i8*, !dbg !952
  %69 = load %struct.libnet_context*, %struct.libnet_context** %7, align 8, !dbg !953
  %70 = call i32 @libnet_autobuild_arp(i16 zeroext 1, i8* %64, i8* %65, i8* %66, i8* %68, %struct.libnet_context* %69), !dbg !954
  %71 = icmp eq i32 %70, -1, !dbg !955
  br i1 %71, label %72, label %76, !dbg !956

; <label>:72:                                     ; preds = %59
  %73 = load %struct.libnet_context*, %struct.libnet_context** %7, align 8, !dbg !957
  %74 = call i8* @libnet_geterror(%struct.libnet_context* %73), !dbg !959
  %75 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0), i8* %74), !dbg !960
  br label %178, !dbg !961

; <label>:76:                                     ; preds = %59
  %77 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i32 0, i32 0, !dbg !962
  %78 = load %struct.libnet_context*, %struct.libnet_context** %7, align 8, !dbg !964
  %79 = call i32 @libnet_autobuild_ethernet(i8* %77, i16 zeroext 2054, %struct.libnet_context* %78), !dbg !965
  %80 = icmp eq i32 %79, -1, !dbg !966
  br i1 %80, label %81, label %85, !dbg !967

; <label>:81:                                     ; preds = %76
  %82 = load %struct.libnet_context*, %struct.libnet_context** %7, align 8, !dbg !968
  %83 = call i8* @libnet_geterror(%struct.libnet_context* %82), !dbg !970
  %84 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0), i8* %83), !dbg !971
  br label %178, !dbg !972

; <label>:85:                                     ; preds = %76
  call void @llvm.dbg.declare(metadata %struct.pcap** %20, metadata !973, metadata !203), !dbg !977
  %86 = load i8*, i8** %11, align 8, !dbg !978
  %87 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i32 0, i32 0, !dbg !979
  %88 = call %struct.pcap* @pcap_open_live(i8* %86, i32 100, i32 0, i32 10, i8* %87), !dbg !980
  store %struct.pcap* %88, %struct.pcap** %20, align 8, !dbg !977
  %89 = load %struct.pcap*, %struct.pcap** %20, align 8, !dbg !981
  %90 = icmp eq %struct.pcap* %89, null, !dbg !983
  br i1 %90, label %91, label %94, !dbg !984

; <label>:91:                                     ; preds = %85
  %92 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i32 0, i32 0, !dbg !985
  %93 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0), i8* %92), !dbg !987
  br label %178, !dbg !988

; <label>:94:                                     ; preds = %85
  %95 = load %struct.pcap*, %struct.pcap** %20, align 8, !dbg !989
  %96 = call i32 @pcap_compile(%struct.pcap* %95, %struct.bpf_program* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 0, i32 -1), !dbg !991
  %97 = icmp eq i32 %96, -1, !dbg !992
  br i1 %97, label %98, label %102, !dbg !993

; <label>:98:                                     ; preds = %94
  %99 = load %struct.pcap*, %struct.pcap** %20, align 8, !dbg !994
  %100 = call i8* @pcap_geterr(%struct.pcap* %99), !dbg !996
  %101 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0), i8* %100), !dbg !997
  br label %176, !dbg !998

; <label>:102:                                    ; preds = %94
  %103 = load %struct.pcap*, %struct.pcap** %20, align 8, !dbg !999
  %104 = call i32 @pcap_setfilter(%struct.pcap* %103, %struct.bpf_program* %17), !dbg !1001
  %105 = icmp eq i32 %104, -1, !dbg !1002
  br i1 %105, label %106, label %110, !dbg !1003

; <label>:106:                                    ; preds = %102
  %107 = load %struct.pcap*, %struct.pcap** %20, align 8, !dbg !1004
  %108 = call i8* @pcap_geterr(%struct.pcap* %107), !dbg !1006
  %109 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0), i8* %108), !dbg !1007
  br label %175, !dbg !1008

; <label>:110:                                    ; preds = %102
  br label %111, !dbg !1009, !llvm.loop !1010

; <label>:111:                                    ; preds = %139, %110
  %112 = load %struct.libnet_context*, %struct.libnet_context** %7, align 8, !dbg !1011
  %113 = call i32 @libnet_write(%struct.libnet_context* %112), !dbg !1014
  %114 = icmp ne i32 %113, -1, !dbg !1015
  br i1 %114, label %115, label %125, !dbg !1016

; <label>:115:                                    ; preds = %111
  %116 = load %struct.pcap*, %struct.pcap** %20, align 8, !dbg !1017
  %117 = bitcast %struct.logpkt_recv_arp_reply_ctx_t* %19 to i8*, !dbg !1020
  %118 = call i32 @pcap_dispatch(%struct.pcap* %116, i32 1000, void (i8*, %struct.pcap_pkthdr*, i8*)* @logpkt_recv_arp_reply, i8* %117), !dbg !1021
  %119 = icmp slt i32 %118, 0, !dbg !1022
  br i1 %119, label %120, label %124, !dbg !1023

; <label>:120:                                    ; preds = %115
  %121 = load %struct.pcap*, %struct.pcap** %20, align 8, !dbg !1024
  %122 = call i8* @pcap_geterr(%struct.pcap* %121), !dbg !1026
  %123 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i32 0, i32 0), i8* %122), !dbg !1027
  br label %141, !dbg !1028

; <label>:124:                                    ; preds = %115
  br label %129, !dbg !1029

; <label>:125:                                    ; preds = %111
  %126 = load %struct.libnet_context*, %struct.libnet_context** %7, align 8, !dbg !1030
  %127 = call i8* @libnet_geterror(%struct.libnet_context* %126), !dbg !1032
  %128 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i32 0, i32 0), i8* %127), !dbg !1033
  br label %141, !dbg !1034

; <label>:129:                                    ; preds = %124
  %130 = call i32 @sleep(i32 1), !dbg !1035
  br label %131, !dbg !1036

; <label>:131:                                    ; preds = %129
  %132 = getelementptr inbounds %struct.logpkt_recv_arp_reply_ctx_t, %struct.logpkt_recv_arp_reply_ctx_t* %19, i32 0, i32 1, !dbg !1037
  %133 = load i32, i32* %132, align 4, !dbg !1037
  %134 = icmp eq i32 %133, -1, !dbg !1039
  br i1 %134, label %135, label %139, !dbg !1040

; <label>:135:                                    ; preds = %131
  %136 = load i32, i32* %18, align 4, !dbg !1041
  %137 = add nsw i32 %136, -1, !dbg !1041
  store i32 %137, i32* %18, align 4, !dbg !1041
  %138 = icmp sgt i32 %137, 0, !dbg !1043
  br label %139

; <label>:139:                                    ; preds = %135, %131
  %140 = phi i1 [ false, %131 ], [ %138, %135 ]
  br i1 %140, label %111, label %141, !dbg !1044, !llvm.loop !1010

; <label>:141:                                    ; preds = %139, %125, %120
  %142 = getelementptr inbounds %struct.logpkt_recv_arp_reply_ctx_t, %struct.logpkt_recv_arp_reply_ctx_t* %19, i32 0, i32 1, !dbg !1046
  %143 = load i32, i32* %142, align 4, !dbg !1046
  %144 = icmp eq i32 %143, 0, !dbg !1048
  br i1 %144, label %145, label %174, !dbg !1049

; <label>:145:                                    ; preds = %141
  %146 = load i8*, i8** %9, align 8, !dbg !1050
  %147 = getelementptr inbounds %struct.logpkt_recv_arp_reply_ctx_t, %struct.logpkt_recv_arp_reply_ctx_t* %19, i32 0, i32 2, !dbg !1052
  %148 = bitcast [6 x i8]* %147 to i8*, !dbg !1053
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %146, i8* %148, i64 6, i32 1, i1 false), !dbg !1053
  %149 = load i8*, i8** %9, align 8, !dbg !1054
  %150 = getelementptr inbounds i8, i8* %149, i64 0, !dbg !1054
  %151 = load i8, i8* %150, align 1, !dbg !1054
  %152 = zext i8 %151 to i32, !dbg !1054
  %153 = load i8*, i8** %9, align 8, !dbg !1055
  %154 = getelementptr inbounds i8, i8* %153, i64 1, !dbg !1055
  %155 = load i8, i8* %154, align 1, !dbg !1055
  %156 = zext i8 %155 to i32, !dbg !1055
  %157 = load i8*, i8** %9, align 8, !dbg !1056
  %158 = getelementptr inbounds i8, i8* %157, i64 2, !dbg !1056
  %159 = load i8, i8* %158, align 1, !dbg !1056
  %160 = zext i8 %159 to i32, !dbg !1056
  %161 = load i8*, i8** %9, align 8, !dbg !1057
  %162 = getelementptr inbounds i8, i8* %161, i64 3, !dbg !1057
  %163 = load i8, i8* %162, align 1, !dbg !1057
  %164 = zext i8 %163 to i32, !dbg !1057
  %165 = load i8*, i8** %9, align 8, !dbg !1058
  %166 = getelementptr inbounds i8, i8* %165, i64 4, !dbg !1058
  %167 = load i8, i8* %166, align 1, !dbg !1058
  %168 = zext i8 %167 to i32, !dbg !1058
  %169 = load i8*, i8** %9, align 8, !dbg !1059
  %170 = getelementptr inbounds i8, i8* %169, i64 5, !dbg !1059
  %171 = load i8, i8* %170, align 1, !dbg !1059
  %172 = zext i8 %171 to i32, !dbg !1059
  %173 = call i32 (i8*, ...) @log_dbg_printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14, i32 0, i32 0), i32 %152, i32 %156, i32 %160, i32 %164, i32 %168, i32 %172), !dbg !1060
  br label %174, !dbg !1061

; <label>:174:                                    ; preds = %145, %141
  br label %175, !dbg !1062

; <label>:175:                                    ; preds = %174, %106
  call void @pcap_freecode(%struct.bpf_program* %17), !dbg !1064
  br label %176, !dbg !1064

; <label>:176:                                    ; preds = %175, %98
  %177 = load %struct.pcap*, %struct.pcap** %20, align 8, !dbg !1065
  call void @pcap_close(%struct.pcap* %177), !dbg !1066
  br label %178, !dbg !1066

; <label>:178:                                    ; preds = %176, %91, %81, %72, %55, %46, %37
  %179 = load %struct.libnet_context*, %struct.libnet_context** %7, align 8, !dbg !1067
  call void @libnet_clear_packet(%struct.libnet_context* %179), !dbg !1068
  %180 = getelementptr inbounds %struct.logpkt_recv_arp_reply_ctx_t, %struct.logpkt_recv_arp_reply_ctx_t* %19, i32 0, i32 1, !dbg !1069
  %181 = load i32, i32* %180, align 4, !dbg !1069
  store i32 %181, i32* %6, align 4, !dbg !1070
  br label %182, !dbg !1070

; <label>:182:                                    ; preds = %178, %26
  %183 = load i32, i32* %6, align 4, !dbg !1071
  ret i32 %183, !dbg !1071
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

declare i32 @sys_get_af(i8*) #3

declare i32 @libnet_name2addr4(%struct.libnet_context*, i8*, i8 zeroext) #3

declare i8* @libnet_geterror(%struct.libnet_context*) #3

declare i32 @libnet_get_ipaddr4(%struct.libnet_context*) #3

declare %struct.libnet_ether_addr* @libnet_get_hwaddr(%struct.libnet_context*) #3

declare i32 @libnet_autobuild_arp(i16 zeroext, i8*, i8*, i8*, i8*, %struct.libnet_context*) #3

declare i32 @libnet_autobuild_ethernet(i8*, i16 zeroext, %struct.libnet_context*) #3

declare %struct.pcap* @pcap_open_live(i8*, i32, i32, i32, i8*) #3

declare i32 @pcap_compile(%struct.pcap*, %struct.bpf_program*, i8*, i32, i32) #3

declare i8* @pcap_geterr(%struct.pcap*) #3

declare i32 @pcap_setfilter(%struct.pcap*, %struct.bpf_program*) #3

declare i32 @libnet_write(%struct.libnet_context*) #3

declare i32 @pcap_dispatch(%struct.pcap*, i32, void (i8*, %struct.pcap_pkthdr*, i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @logpkt_recv_arp_reply(i8*, %struct.pcap_pkthdr*, i8*) #0 !dbg !1072 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pcap_pkthdr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.logpkt_recv_arp_reply_ctx_t*, align 8
  %8 = alloca %struct.libnet_802_3_hdr*, align 8
  %9 = alloca %struct.libnet_arp_hdr*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1075, metadata !203), !dbg !1076
  store %struct.pcap_pkthdr* %1, %struct.pcap_pkthdr** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.pcap_pkthdr** %5, metadata !1077, metadata !203), !dbg !1078
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1079, metadata !203), !dbg !1080
  call void @llvm.dbg.declare(metadata %struct.logpkt_recv_arp_reply_ctx_t** %7, metadata !1081, metadata !203), !dbg !1082
  %10 = load i8*, i8** %4, align 8, !dbg !1083
  %11 = bitcast i8* %10 to %struct.logpkt_recv_arp_reply_ctx_t*, !dbg !1084
  store %struct.logpkt_recv_arp_reply_ctx_t* %11, %struct.logpkt_recv_arp_reply_ctx_t** %7, align 8, !dbg !1082
  call void @llvm.dbg.declare(metadata %struct.libnet_802_3_hdr** %8, metadata !1085, metadata !203), !dbg !1092
  %12 = load i8*, i8** %6, align 8, !dbg !1093
  %13 = bitcast i8* %12 to %struct.libnet_802_3_hdr*, !dbg !1094
  store %struct.libnet_802_3_hdr* %13, %struct.libnet_802_3_hdr** %8, align 8, !dbg !1092
  call void @llvm.dbg.declare(metadata %struct.libnet_arp_hdr** %9, metadata !1095, metadata !203), !dbg !1104
  %14 = load %struct.libnet_802_3_hdr*, %struct.libnet_802_3_hdr** %8, align 8, !dbg !1105
  %15 = bitcast %struct.libnet_802_3_hdr* %14 to i8*, !dbg !1106
  %16 = getelementptr inbounds i8, i8* %15, i64 14, !dbg !1107
  %17 = bitcast i8* %16 to %struct.libnet_arp_hdr*, !dbg !1108
  store %struct.libnet_arp_hdr* %17, %struct.libnet_arp_hdr** %9, align 8, !dbg !1104
  %18 = load %struct.libnet_arp_hdr*, %struct.libnet_arp_hdr** %9, align 8, !dbg !1109
  %19 = getelementptr inbounds %struct.libnet_arp_hdr, %struct.libnet_arp_hdr* %18, i32 0, i32 4, !dbg !1111
  %20 = load i16, i16* %19, align 2, !dbg !1111
  %21 = call zeroext i16 @htons(i16 zeroext %20) #1, !dbg !1112
  %22 = zext i16 %21 to i32, !dbg !1112
  %23 = icmp ne i32 %22, 2, !dbg !1113
  br i1 %23, label %24, label %25, !dbg !1114

; <label>:24:                                     ; preds = %3
  br label %76, !dbg !1115

; <label>:25:                                     ; preds = %3
  %26 = load %struct.libnet_arp_hdr*, %struct.libnet_arp_hdr** %9, align 8, !dbg !1116
  %27 = getelementptr inbounds %struct.libnet_arp_hdr, %struct.libnet_arp_hdr* %26, i32 0, i32 1, !dbg !1118
  %28 = load i16, i16* %27, align 2, !dbg !1118
  %29 = call zeroext i16 @htons(i16 zeroext %28) #1, !dbg !1119
  %30 = zext i16 %29 to i32, !dbg !1119
  %31 = icmp ne i32 %30, 2048, !dbg !1120
  br i1 %31, label %32, label %33, !dbg !1121

; <label>:32:                                     ; preds = %25
  br label %76, !dbg !1122

; <label>:33:                                     ; preds = %25
  %34 = load %struct.libnet_arp_hdr*, %struct.libnet_arp_hdr** %9, align 8, !dbg !1123
  %35 = getelementptr inbounds %struct.libnet_arp_hdr, %struct.libnet_arp_hdr* %34, i32 0, i32 0, !dbg !1125
  %36 = load i16, i16* %35, align 2, !dbg !1125
  %37 = call zeroext i16 @htons(i16 zeroext %36) #1, !dbg !1126
  %38 = zext i16 %37 to i32, !dbg !1126
  %39 = icmp ne i32 %38, 1, !dbg !1127
  br i1 %39, label %40, label %41, !dbg !1128

; <label>:40:                                     ; preds = %33
  br label %76, !dbg !1129

; <label>:41:                                     ; preds = %33
  %42 = load %struct.logpkt_recv_arp_reply_ctx_t*, %struct.logpkt_recv_arp_reply_ctx_t** %7, align 8, !dbg !1130
  %43 = getelementptr inbounds %struct.logpkt_recv_arp_reply_ctx_t, %struct.logpkt_recv_arp_reply_ctx_t* %42, i32 0, i32 0, !dbg !1132
  %44 = bitcast i32* %43 to i8*, !dbg !1133
  %45 = load %struct.libnet_arp_hdr*, %struct.libnet_arp_hdr** %9, align 8, !dbg !1134
  %46 = bitcast %struct.libnet_arp_hdr* %45 to i8*, !dbg !1135
  %47 = load %struct.libnet_arp_hdr*, %struct.libnet_arp_hdr** %9, align 8, !dbg !1136
  %48 = getelementptr inbounds %struct.libnet_arp_hdr, %struct.libnet_arp_hdr* %47, i32 0, i32 2, !dbg !1137
  %49 = load i8, i8* %48, align 2, !dbg !1137
  %50 = zext i8 %49 to i32, !dbg !1136
  %51 = sext i32 %50 to i64, !dbg !1138
  %52 = getelementptr inbounds i8, i8* %46, i64 %51, !dbg !1138
  %53 = getelementptr inbounds i8, i8* %52, i64 8, !dbg !1139
  %54 = call i32 @memcmp(i8* %44, i8* %53, i64 4) #8, !dbg !1140
  %55 = icmp ne i32 %54, 0, !dbg !1140
  br i1 %55, label %56, label %57, !dbg !1141

; <label>:56:                                     ; preds = %41
  br label %76, !dbg !1142

; <label>:57:                                     ; preds = %41
  %58 = load %struct.libnet_arp_hdr*, %struct.libnet_arp_hdr** %9, align 8, !dbg !1143
  %59 = bitcast %struct.libnet_arp_hdr* %58 to i8*, !dbg !1145
  %60 = getelementptr inbounds i8, i8* %59, i64 8, !dbg !1146
  %61 = load %struct.libnet_802_3_hdr*, %struct.libnet_802_3_hdr** %8, align 8, !dbg !1147
  %62 = getelementptr inbounds %struct.libnet_802_3_hdr, %struct.libnet_802_3_hdr* %61, i32 0, i32 1, !dbg !1148
  %63 = getelementptr inbounds [6 x i8], [6 x i8]* %62, i32 0, i32 0, !dbg !1147
  %64 = call i32 @memcmp(i8* %60, i8* %63, i64 6) #8, !dbg !1149
  %65 = icmp ne i32 %64, 0, !dbg !1149
  br i1 %65, label %66, label %67, !dbg !1150

; <label>:66:                                     ; preds = %57
  br label %76, !dbg !1151

; <label>:67:                                     ; preds = %57
  %68 = load %struct.logpkt_recv_arp_reply_ctx_t*, %struct.logpkt_recv_arp_reply_ctx_t** %7, align 8, !dbg !1152
  %69 = getelementptr inbounds %struct.logpkt_recv_arp_reply_ctx_t, %struct.logpkt_recv_arp_reply_ctx_t* %68, i32 0, i32 2, !dbg !1153
  %70 = getelementptr inbounds [6 x i8], [6 x i8]* %69, i32 0, i32 0, !dbg !1154
  %71 = load %struct.libnet_arp_hdr*, %struct.libnet_arp_hdr** %9, align 8, !dbg !1155
  %72 = bitcast %struct.libnet_arp_hdr* %71 to i8*, !dbg !1156
  %73 = getelementptr inbounds i8, i8* %72, i64 8, !dbg !1157
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %70, i8* %73, i64 6, i32 1, i1 false), !dbg !1154
  %74 = load %struct.logpkt_recv_arp_reply_ctx_t*, %struct.logpkt_recv_arp_reply_ctx_t** %7, align 8, !dbg !1158
  %75 = getelementptr inbounds %struct.logpkt_recv_arp_reply_ctx_t, %struct.logpkt_recv_arp_reply_ctx_t* %74, i32 0, i32 1, !dbg !1159
  store i32 0, i32* %75, align 4, !dbg !1160
  br label %76, !dbg !1161

; <label>:76:                                     ; preds = %67, %66, %56, %40, %32, %24
  ret void, !dbg !1162
}

declare i32 @sleep(i32) #3

declare i32 @log_dbg_printf(i8*, ...) #3

declare void @pcap_freecode(%struct.bpf_program*) #3

declare void @pcap_close(%struct.pcap*) #3

declare void @libnet_clear_packet(%struct.libnet_context*) #3

declare i64 @write(i32, i8*, i64) #3

declare i32 @sys_rand32() #3

; Function Attrs: nounwind uwtable
define internal i64 @logpkt_pcap_build(i8*, i8*, i8*, %struct.sockaddr*, %struct.sockaddr*, i8 signext, i32, i32, i8*, i64) #0 !dbg !1164 {
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.sockaddr*, align 8
  %15 = alloca %struct.sockaddr*, align 8
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.ether_hdr_t*, align 8
  %22 = alloca %struct.ip4_hdr_t*, align 8
  %23 = alloca %struct.ip6_hdr_t*, align 8
  %24 = alloca %struct.tcp_hdr_t*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i16*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i16*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i16*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i16*, align 8
  %34 = alloca i64, align 8
  store i8* %0, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1167, metadata !203), !dbg !1168
  store i8* %1, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1169, metadata !203), !dbg !1170
  store i8* %2, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1171, metadata !203), !dbg !1172
  store %struct.sockaddr* %3, %struct.sockaddr** %14, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr** %14, metadata !1173, metadata !203), !dbg !1174
  store %struct.sockaddr* %4, %struct.sockaddr** %15, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr** %15, metadata !1175, metadata !203), !dbg !1176
  store i8 %5, i8* %16, align 1
  call void @llvm.dbg.declare(metadata i8* %16, metadata !1177, metadata !203), !dbg !1178
  store i32 %6, i32* %17, align 4
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1179, metadata !203), !dbg !1180
  store i32 %7, i32* %18, align 4
  call void @llvm.dbg.declare(metadata i32* %18, metadata !1181, metadata !203), !dbg !1182
  store i8* %8, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !1183, metadata !203), !dbg !1184
  store i64 %9, i64* %20, align 8
  call void @llvm.dbg.declare(metadata i64* %20, metadata !1185, metadata !203), !dbg !1186
  call void @llvm.dbg.declare(metadata %struct.ether_hdr_t** %21, metadata !1187, metadata !203), !dbg !1188
  call void @llvm.dbg.declare(metadata %struct.ip4_hdr_t** %22, metadata !1189, metadata !203), !dbg !1190
  call void @llvm.dbg.declare(metadata %struct.ip6_hdr_t** %23, metadata !1191, metadata !203), !dbg !1192
  call void @llvm.dbg.declare(metadata %struct.tcp_hdr_t** %24, metadata !1193, metadata !203), !dbg !1194
  call void @llvm.dbg.declare(metadata i64* %25, metadata !1195, metadata !203), !dbg !1196
  call void @llvm.dbg.declare(metadata i32* %26, metadata !1197, metadata !203), !dbg !1198
  %35 = load i8*, i8** %11, align 8, !dbg !1199
  %36 = bitcast i8* %35 to %struct.ether_hdr_t*, !dbg !1200
  store %struct.ether_hdr_t* %36, %struct.ether_hdr_t** %21, align 8, !dbg !1201
  %37 = load %struct.ether_hdr_t*, %struct.ether_hdr_t** %21, align 8, !dbg !1202
  %38 = getelementptr inbounds %struct.ether_hdr_t, %struct.ether_hdr_t* %37, i32 0, i32 1, !dbg !1203
  %39 = getelementptr inbounds [6 x i8], [6 x i8]* %38, i32 0, i32 0, !dbg !1204
  %40 = load i8*, i8** %12, align 8, !dbg !1205
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 6, i32 1, i1 false), !dbg !1204
  %41 = load %struct.ether_hdr_t*, %struct.ether_hdr_t** %21, align 8, !dbg !1206
  %42 = getelementptr inbounds %struct.ether_hdr_t, %struct.ether_hdr_t* %41, i32 0, i32 0, !dbg !1207
  %43 = getelementptr inbounds [6 x i8], [6 x i8]* %42, i32 0, i32 0, !dbg !1208
  %44 = load i8*, i8** %13, align 8, !dbg !1209
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 6, i32 1, i1 false), !dbg !1208
  store i64 14, i64* %25, align 8, !dbg !1210
  %45 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8, !dbg !1211
  %46 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %45, i32 0, i32 0, !dbg !1213
  %47 = load i16, i16* %46, align 2, !dbg !1213
  %48 = zext i16 %47 to i32, !dbg !1211
  %49 = icmp eq i32 %48, 2, !dbg !1214
  br i1 %49, label %50, label %177, !dbg !1215

; <label>:50:                                     ; preds = %10
  %51 = call zeroext i16 @htons(i16 zeroext 2048) #1, !dbg !1216
  %52 = load %struct.ether_hdr_t*, %struct.ether_hdr_t** %21, align 8, !dbg !1218
  %53 = getelementptr inbounds %struct.ether_hdr_t, %struct.ether_hdr_t* %52, i32 0, i32 2, !dbg !1219
  store i16 %51, i16* %53, align 1, !dbg !1220
  %54 = load %struct.ether_hdr_t*, %struct.ether_hdr_t** %21, align 8, !dbg !1221
  %55 = bitcast %struct.ether_hdr_t* %54 to i8*, !dbg !1222
  %56 = getelementptr inbounds i8, i8* %55, i64 14, !dbg !1223
  %57 = bitcast i8* %56 to %struct.ip4_hdr_t*, !dbg !1224
  store %struct.ip4_hdr_t* %57, %struct.ip4_hdr_t** %22, align 8, !dbg !1225
  %58 = load %struct.ip4_hdr_t*, %struct.ip4_hdr_t** %22, align 8, !dbg !1226
  %59 = getelementptr inbounds %struct.ip4_hdr_t, %struct.ip4_hdr_t* %58, i32 0, i32 0, !dbg !1227
  store i8 69, i8* %59, align 1, !dbg !1228
  %60 = load %struct.ip4_hdr_t*, %struct.ip4_hdr_t** %22, align 8, !dbg !1229
  %61 = getelementptr inbounds %struct.ip4_hdr_t, %struct.ip4_hdr_t* %60, i32 0, i32 1, !dbg !1230
  store i8 0, i8* %61, align 1, !dbg !1231
  %62 = load i64, i64* %20, align 8, !dbg !1232
  %63 = add i64 40, %62, !dbg !1233
  %64 = trunc i64 %63 to i16, !dbg !1234
  %65 = call zeroext i16 @htons(i16 zeroext %64) #1, !dbg !1235
  %66 = load %struct.ip4_hdr_t*, %struct.ip4_hdr_t** %22, align 8, !dbg !1236
  %67 = getelementptr inbounds %struct.ip4_hdr_t, %struct.ip4_hdr_t* %66, i32 0, i32 2, !dbg !1237
  store i16 %65, i16* %67, align 1, !dbg !1238
  %68 = call zeroext i16 @sys_rand16(), !dbg !1239
  %69 = load %struct.ip4_hdr_t*, %struct.ip4_hdr_t** %22, align 8, !dbg !1240
  %70 = getelementptr inbounds %struct.ip4_hdr_t, %struct.ip4_hdr_t* %69, i32 0, i32 3, !dbg !1241
  store i16 %68, i16* %70, align 1, !dbg !1242
  %71 = load %struct.ip4_hdr_t*, %struct.ip4_hdr_t** %22, align 8, !dbg !1243
  %72 = getelementptr inbounds %struct.ip4_hdr_t, %struct.ip4_hdr_t* %71, i32 0, i32 4, !dbg !1244
  store i16 0, i16* %72, align 1, !dbg !1245
  %73 = load %struct.ip4_hdr_t*, %struct.ip4_hdr_t** %22, align 8, !dbg !1246
  %74 = getelementptr inbounds %struct.ip4_hdr_t, %struct.ip4_hdr_t* %73, i32 0, i32 5, !dbg !1247
  store i8 64, i8* %74, align 1, !dbg !1248
  %75 = load %struct.ip4_hdr_t*, %struct.ip4_hdr_t** %22, align 8, !dbg !1249
  %76 = getelementptr inbounds %struct.ip4_hdr_t, %struct.ip4_hdr_t* %75, i32 0, i32 6, !dbg !1250
  store i8 6, i8* %76, align 1, !dbg !1251
  %77 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8, !dbg !1252
  %78 = bitcast %struct.sockaddr* %77 to %struct.sockaddr_in*, !dbg !1253
  %79 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %78, i32 0, i32 2, !dbg !1253
  %80 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %79, i32 0, i32 0, !dbg !1254
  %81 = load i32, i32* %80, align 4, !dbg !1254
  %82 = load %struct.ip4_hdr_t*, %struct.ip4_hdr_t** %22, align 8, !dbg !1255
  %83 = getelementptr inbounds %struct.ip4_hdr_t, %struct.ip4_hdr_t* %82, i32 0, i32 8, !dbg !1256
  store i32 %81, i32* %83, align 1, !dbg !1257
  %84 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8, !dbg !1258
  %85 = bitcast %struct.sockaddr* %84 to %struct.sockaddr_in*, !dbg !1259
  %86 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %85, i32 0, i32 2, !dbg !1259
  %87 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %86, i32 0, i32 0, !dbg !1260
  %88 = load i32, i32* %87, align 4, !dbg !1260
  %89 = load %struct.ip4_hdr_t*, %struct.ip4_hdr_t** %22, align 8, !dbg !1261
  %90 = getelementptr inbounds %struct.ip4_hdr_t, %struct.ip4_hdr_t* %89, i32 0, i32 9, !dbg !1262
  store i32 %88, i32* %90, align 1, !dbg !1263
  %91 = load %struct.ip4_hdr_t*, %struct.ip4_hdr_t** %22, align 8, !dbg !1264
  %92 = getelementptr inbounds %struct.ip4_hdr_t, %struct.ip4_hdr_t* %91, i32 0, i32 7, !dbg !1265
  store i16 0, i16* %92, align 1, !dbg !1266
  store i32 0, i32* %26, align 4, !dbg !1267
  call void @llvm.dbg.declare(metadata i16** %27, metadata !1269, metadata !203), !dbg !1271
  %93 = load %struct.ip4_hdr_t*, %struct.ip4_hdr_t** %22, align 8, !dbg !1272
  %94 = bitcast %struct.ip4_hdr_t* %93 to i16*, !dbg !1273
  store i16* %94, i16** %27, align 8, !dbg !1271
  call void @llvm.dbg.declare(metadata i64* %28, metadata !1274, metadata !203), !dbg !1275
  store i64 10, i64* %28, align 8, !dbg !1275
  br label %95, !dbg !1276

; <label>:95:                                     ; preds = %99, %50
  %96 = load i64, i64* %28, align 8, !dbg !1277
  %97 = add i64 %96, -1, !dbg !1277
  store i64 %97, i64* %28, align 8, !dbg !1277
  %98 = icmp ne i64 %96, 0, !dbg !1279
  br i1 %98, label %99, label %106, !dbg !1279

; <label>:99:                                     ; preds = %95
  %100 = load i16*, i16** %27, align 8, !dbg !1280
  %101 = getelementptr inbounds i16, i16* %100, i32 1, !dbg !1280
  store i16* %101, i16** %27, align 8, !dbg !1280
  %102 = load i16, i16* %100, align 2, !dbg !1283
  %103 = zext i16 %102 to i32, !dbg !1283
  %104 = load i32, i32* %26, align 4, !dbg !1284
  %105 = add i32 %104, %103, !dbg !1284
  store i32 %105, i32* %26, align 4, !dbg !1284
  br label %95, !dbg !1285, !llvm.loop !1286

; <label>:106:                                    ; preds = %95
  %107 = load i32, i32* %26, align 4, !dbg !1287
  %108 = lshr i32 %107, 16, !dbg !1289
  %109 = load i32, i32* %26, align 4, !dbg !1290
  %110 = and i32 %109, 65535, !dbg !1291
  %111 = add i32 %108, %110, !dbg !1292
  store i32 %111, i32* %26, align 4, !dbg !1293
  %112 = load i32, i32* %26, align 4, !dbg !1294
  %113 = lshr i32 %112, 16, !dbg !1295
  %114 = load i32, i32* %26, align 4, !dbg !1296
  %115 = add i32 %114, %113, !dbg !1296
  store i32 %115, i32* %26, align 4, !dbg !1296
  %116 = load i32, i32* %26, align 4, !dbg !1297
  %117 = xor i32 %116, -1, !dbg !1298
  store i32 %117, i32* %26, align 4, !dbg !1299
  %118 = load i32, i32* %26, align 4, !dbg !1300
  %119 = trunc i32 %118 to i16, !dbg !1300
  %120 = load %struct.ip4_hdr_t*, %struct.ip4_hdr_t** %22, align 8, !dbg !1301
  %121 = getelementptr inbounds %struct.ip4_hdr_t, %struct.ip4_hdr_t* %120, i32 0, i32 7, !dbg !1302
  store i16 %119, i16* %121, align 1, !dbg !1303
  %122 = load i64, i64* %25, align 8, !dbg !1304
  %123 = add i64 %122, 20, !dbg !1304
  store i64 %123, i64* %25, align 8, !dbg !1304
  %124 = load %struct.ip4_hdr_t*, %struct.ip4_hdr_t** %22, align 8, !dbg !1305
  %125 = bitcast %struct.ip4_hdr_t* %124 to i8*, !dbg !1306
  %126 = getelementptr inbounds i8, i8* %125, i64 20, !dbg !1307
  %127 = bitcast i8* %126 to %struct.tcp_hdr_t*, !dbg !1308
  store %struct.tcp_hdr_t* %127, %struct.tcp_hdr_t** %24, align 8, !dbg !1309
  %128 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8, !dbg !1310
  %129 = bitcast %struct.sockaddr* %128 to %struct.sockaddr_in*, !dbg !1311
  %130 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %129, i32 0, i32 1, !dbg !1311
  %131 = load i16, i16* %130, align 2, !dbg !1311
  %132 = load %struct.tcp_hdr_t*, %struct.tcp_hdr_t** %24, align 8, !dbg !1312
  %133 = getelementptr inbounds %struct.tcp_hdr_t, %struct.tcp_hdr_t* %132, i32 0, i32 0, !dbg !1313
  store i16 %131, i16* %133, align 1, !dbg !1314
  %134 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8, !dbg !1315
  %135 = bitcast %struct.sockaddr* %134 to %struct.sockaddr_in*, !dbg !1316
  %136 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %135, i32 0, i32 1, !dbg !1316
  %137 = load i16, i16* %136, align 2, !dbg !1316
  %138 = load %struct.tcp_hdr_t*, %struct.tcp_hdr_t** %24, align 8, !dbg !1317
  %139 = getelementptr inbounds %struct.tcp_hdr_t, %struct.tcp_hdr_t* %138, i32 0, i32 1, !dbg !1318
  store i16 %137, i16* %139, align 1, !dbg !1319
  store i32 0, i32* %26, align 4, !dbg !1320
  %140 = load %struct.ip4_hdr_t*, %struct.ip4_hdr_t** %22, align 8, !dbg !1322
  %141 = getelementptr inbounds %struct.ip4_hdr_t, %struct.ip4_hdr_t* %140, i32 0, i32 8, !dbg !1324
  %142 = load i32, i32* %141, align 1, !dbg !1324
  %143 = lshr i32 %142, 16, !dbg !1325
  %144 = load %struct.ip4_hdr_t*, %struct.ip4_hdr_t** %22, align 8, !dbg !1326
  %145 = getelementptr inbounds %struct.ip4_hdr_t, %struct.ip4_hdr_t* %144, i32 0, i32 8, !dbg !1327
  %146 = load i32, i32* %145, align 1, !dbg !1327
  %147 = and i32 %146, 65535, !dbg !1328
  %148 = add i32 %143, %147, !dbg !1329
  %149 = load i32, i32* %26, align 4, !dbg !1330
  %150 = add i32 %149, %148, !dbg !1330
  store i32 %150, i32* %26, align 4, !dbg !1330
  %151 = load %struct.ip4_hdr_t*, %struct.ip4_hdr_t** %22, align 8, !dbg !1331
  %152 = getelementptr inbounds %struct.ip4_hdr_t, %struct.ip4_hdr_t* %151, i32 0, i32 9, !dbg !1333
  %153 = load i32, i32* %152, align 1, !dbg !1333
  %154 = lshr i32 %153, 16, !dbg !1334
  %155 = load %struct.ip4_hdr_t*, %struct.ip4_hdr_t** %22, align 8, !dbg !1335
  %156 = getelementptr inbounds %struct.ip4_hdr_t, %struct.ip4_hdr_t* %155, i32 0, i32 9, !dbg !1336
  %157 = load i32, i32* %156, align 1, !dbg !1336
  %158 = and i32 %157, 65535, !dbg !1337
  %159 = add i32 %154, %158, !dbg !1338
  %160 = load i32, i32* %26, align 4, !dbg !1339
  %161 = add i32 %160, %159, !dbg !1339
  store i32 %161, i32* %26, align 4, !dbg !1339
  %162 = load %struct.ip4_hdr_t*, %struct.ip4_hdr_t** %22, align 8, !dbg !1340
  %163 = getelementptr inbounds %struct.ip4_hdr_t, %struct.ip4_hdr_t* %162, i32 0, i32 6, !dbg !1342
  %164 = load i8, i8* %163, align 1, !dbg !1342
  %165 = zext i8 %164 to i16, !dbg !1340
  %166 = call zeroext i16 @htons(i16 zeroext %165) #1, !dbg !1343
  %167 = zext i16 %166 to i32, !dbg !1344
  %168 = load i32, i32* %26, align 4, !dbg !1345
  %169 = add i32 %168, %167, !dbg !1345
  store i32 %169, i32* %26, align 4, !dbg !1345
  %170 = load i64, i64* %20, align 8, !dbg !1346
  %171 = add i64 20, %170, !dbg !1348
  %172 = trunc i64 %171 to i16, !dbg !1349
  %173 = call zeroext i16 @htons(i16 zeroext %172) #1, !dbg !1350
  %174 = zext i16 %173 to i32, !dbg !1351
  %175 = load i32, i32* %26, align 4, !dbg !1352
  %176 = add i32 %175, %174, !dbg !1352
  store i32 %176, i32* %26, align 4, !dbg !1352
  br label %283, !dbg !1353

; <label>:177:                                    ; preds = %10
  %178 = call zeroext i16 @htons(i16 zeroext -31011) #1, !dbg !1354
  %179 = load %struct.ether_hdr_t*, %struct.ether_hdr_t** %21, align 8, !dbg !1356
  %180 = getelementptr inbounds %struct.ether_hdr_t, %struct.ether_hdr_t* %179, i32 0, i32 2, !dbg !1357
  store i16 %178, i16* %180, align 1, !dbg !1358
  %181 = load %struct.ether_hdr_t*, %struct.ether_hdr_t** %21, align 8, !dbg !1359
  %182 = bitcast %struct.ether_hdr_t* %181 to i8*, !dbg !1360
  %183 = getelementptr inbounds i8, i8* %182, i64 14, !dbg !1361
  %184 = bitcast i8* %183 to %struct.ip6_hdr_t*, !dbg !1362
  store %struct.ip6_hdr_t* %184, %struct.ip6_hdr_t** %23, align 8, !dbg !1363
  %185 = call i32 @htonl(i32 1610612736) #1, !dbg !1364
  %186 = load %struct.ip6_hdr_t*, %struct.ip6_hdr_t** %23, align 8, !dbg !1365
  %187 = getelementptr inbounds %struct.ip6_hdr_t, %struct.ip6_hdr_t* %186, i32 0, i32 0, !dbg !1366
  store i32 %185, i32* %187, align 1, !dbg !1367
  %188 = load i64, i64* %20, align 8, !dbg !1368
  %189 = add i64 20, %188, !dbg !1369
  %190 = trunc i64 %189 to i16, !dbg !1370
  %191 = call zeroext i16 @htons(i16 zeroext %190) #1, !dbg !1371
  %192 = load %struct.ip6_hdr_t*, %struct.ip6_hdr_t** %23, align 8, !dbg !1372
  %193 = getelementptr inbounds %struct.ip6_hdr_t, %struct.ip6_hdr_t* %192, i32 0, i32 1, !dbg !1373
  store i16 %191, i16* %193, align 1, !dbg !1374
  %194 = load %struct.ip6_hdr_t*, %struct.ip6_hdr_t** %23, align 8, !dbg !1375
  %195 = getelementptr inbounds %struct.ip6_hdr_t, %struct.ip6_hdr_t* %194, i32 0, i32 2, !dbg !1376
  store i8 6, i8* %195, align 1, !dbg !1377
  %196 = load %struct.ip6_hdr_t*, %struct.ip6_hdr_t** %23, align 8, !dbg !1378
  %197 = getelementptr inbounds %struct.ip6_hdr_t, %struct.ip6_hdr_t* %196, i32 0, i32 3, !dbg !1379
  store i8 -1, i8* %197, align 1, !dbg !1380
  %198 = load %struct.ip6_hdr_t*, %struct.ip6_hdr_t** %23, align 8, !dbg !1381
  %199 = getelementptr inbounds %struct.ip6_hdr_t, %struct.ip6_hdr_t* %198, i32 0, i32 4, !dbg !1382
  %200 = getelementptr inbounds [16 x i8], [16 x i8]* %199, i32 0, i32 0, !dbg !1383
  %201 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8, !dbg !1384
  %202 = bitcast %struct.sockaddr* %201 to %struct.sockaddr_in6*, !dbg !1385
  %203 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %202, i32 0, i32 3, !dbg !1385
  %204 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %203, i32 0, i32 0, !dbg !1386
  %205 = bitcast %union.anon* %204 to [16 x i8]*, !dbg !1387
  %206 = getelementptr inbounds [16 x i8], [16 x i8]* %205, i32 0, i32 0, !dbg !1383
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %200, i8* %206, i64 16, i32 1, i1 false), !dbg !1383
  %207 = load %struct.ip6_hdr_t*, %struct.ip6_hdr_t** %23, align 8, !dbg !1388
  %208 = getelementptr inbounds %struct.ip6_hdr_t, %struct.ip6_hdr_t* %207, i32 0, i32 5, !dbg !1389
  %209 = getelementptr inbounds [16 x i8], [16 x i8]* %208, i32 0, i32 0, !dbg !1390
  %210 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8, !dbg !1391
  %211 = bitcast %struct.sockaddr* %210 to %struct.sockaddr_in6*, !dbg !1392
  %212 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %211, i32 0, i32 3, !dbg !1392
  %213 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %212, i32 0, i32 0, !dbg !1393
  %214 = bitcast %union.anon* %213 to [16 x i8]*, !dbg !1394
  %215 = getelementptr inbounds [16 x i8], [16 x i8]* %214, i32 0, i32 0, !dbg !1390
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %209, i8* %215, i64 16, i32 1, i1 false), !dbg !1390
  %216 = load i64, i64* %25, align 8, !dbg !1395
  %217 = add i64 %216, 40, !dbg !1395
  store i64 %217, i64* %25, align 8, !dbg !1395
  %218 = load %struct.ip6_hdr_t*, %struct.ip6_hdr_t** %23, align 8, !dbg !1396
  %219 = bitcast %struct.ip6_hdr_t* %218 to i8*, !dbg !1397
  %220 = getelementptr inbounds i8, i8* %219, i64 40, !dbg !1398
  %221 = bitcast i8* %220 to %struct.tcp_hdr_t*, !dbg !1399
  store %struct.tcp_hdr_t* %221, %struct.tcp_hdr_t** %24, align 8, !dbg !1400
  %222 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8, !dbg !1401
  %223 = bitcast %struct.sockaddr* %222 to %struct.sockaddr_in6*, !dbg !1402
  %224 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %223, i32 0, i32 1, !dbg !1402
  %225 = load i16, i16* %224, align 2, !dbg !1402
  %226 = load %struct.tcp_hdr_t*, %struct.tcp_hdr_t** %24, align 8, !dbg !1403
  %227 = getelementptr inbounds %struct.tcp_hdr_t, %struct.tcp_hdr_t* %226, i32 0, i32 0, !dbg !1404
  store i16 %225, i16* %227, align 1, !dbg !1405
  %228 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8, !dbg !1406
  %229 = bitcast %struct.sockaddr* %228 to %struct.sockaddr_in6*, !dbg !1407
  %230 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %229, i32 0, i32 1, !dbg !1407
  %231 = load i16, i16* %230, align 2, !dbg !1407
  %232 = load %struct.tcp_hdr_t*, %struct.tcp_hdr_t** %24, align 8, !dbg !1408
  %233 = getelementptr inbounds %struct.tcp_hdr_t, %struct.tcp_hdr_t* %232, i32 0, i32 1, !dbg !1409
  store i16 %231, i16* %233, align 1, !dbg !1410
  store i32 0, i32* %26, align 4, !dbg !1411
  call void @llvm.dbg.declare(metadata i16** %29, metadata !1413, metadata !203), !dbg !1415
  %234 = load %struct.ip6_hdr_t*, %struct.ip6_hdr_t** %23, align 8, !dbg !1416
  %235 = getelementptr inbounds %struct.ip6_hdr_t, %struct.ip6_hdr_t* %234, i32 0, i32 4, !dbg !1417
  %236 = getelementptr inbounds [16 x i8], [16 x i8]* %235, i32 0, i32 0, !dbg !1418
  %237 = bitcast i8* %236 to i16*, !dbg !1419
  store i16* %237, i16** %29, align 8, !dbg !1415
  call void @llvm.dbg.declare(metadata i64* %30, metadata !1420, metadata !203), !dbg !1421
  store i64 8, i64* %30, align 8, !dbg !1421
  br label %238, !dbg !1422

; <label>:238:                                    ; preds = %242, %177
  %239 = load i64, i64* %30, align 8, !dbg !1423
  %240 = add i64 %239, -1, !dbg !1423
  store i64 %240, i64* %30, align 8, !dbg !1423
  %241 = icmp ne i64 %239, 0, !dbg !1425
  br i1 %241, label %242, label %249, !dbg !1425

; <label>:242:                                    ; preds = %238
  %243 = load i16*, i16** %29, align 8, !dbg !1426
  %244 = getelementptr inbounds i16, i16* %243, i32 1, !dbg !1426
  store i16* %244, i16** %29, align 8, !dbg !1426
  %245 = load i16, i16* %243, align 2, !dbg !1429
  %246 = zext i16 %245 to i32, !dbg !1429
  %247 = load i32, i32* %26, align 4, !dbg !1430
  %248 = add i32 %247, %246, !dbg !1430
  store i32 %248, i32* %26, align 4, !dbg !1430
  br label %238, !dbg !1431, !llvm.loop !1432

; <label>:249:                                    ; preds = %238
  call void @llvm.dbg.declare(metadata i16** %31, metadata !1433, metadata !203), !dbg !1435
  %250 = load %struct.ip6_hdr_t*, %struct.ip6_hdr_t** %23, align 8, !dbg !1436
  %251 = getelementptr inbounds %struct.ip6_hdr_t, %struct.ip6_hdr_t* %250, i32 0, i32 5, !dbg !1437
  %252 = getelementptr inbounds [16 x i8], [16 x i8]* %251, i32 0, i32 0, !dbg !1438
  %253 = bitcast i8* %252 to i16*, !dbg !1439
  store i16* %253, i16** %31, align 8, !dbg !1435
  call void @llvm.dbg.declare(metadata i64* %32, metadata !1440, metadata !203), !dbg !1441
  store i64 8, i64* %32, align 8, !dbg !1441
  br label %254, !dbg !1442

; <label>:254:                                    ; preds = %258, %249
  %255 = load i64, i64* %32, align 8, !dbg !1443
  %256 = add i64 %255, -1, !dbg !1443
  store i64 %256, i64* %32, align 8, !dbg !1443
  %257 = icmp ne i64 %255, 0, !dbg !1445
  br i1 %257, label %258, label %265, !dbg !1445

; <label>:258:                                    ; preds = %254
  %259 = load i16*, i16** %31, align 8, !dbg !1446
  %260 = getelementptr inbounds i16, i16* %259, i32 1, !dbg !1446
  store i16* %260, i16** %31, align 8, !dbg !1446
  %261 = load i16, i16* %259, align 2, !dbg !1449
  %262 = zext i16 %261 to i32, !dbg !1449
  %263 = load i32, i32* %26, align 4, !dbg !1450
  %264 = add i32 %263, %262, !dbg !1450
  store i32 %264, i32* %26, align 4, !dbg !1450
  br label %254, !dbg !1451, !llvm.loop !1452

; <label>:265:                                    ; preds = %254
  %266 = load %struct.ip6_hdr_t*, %struct.ip6_hdr_t** %23, align 8, !dbg !1453
  %267 = getelementptr inbounds %struct.ip6_hdr_t, %struct.ip6_hdr_t* %266, i32 0, i32 1, !dbg !1455
  %268 = load i16, i16* %267, align 1, !dbg !1455
  %269 = zext i16 %268 to i32, !dbg !1456
  %270 = ashr i32 %269, 16, !dbg !1457
  %271 = load %struct.ip6_hdr_t*, %struct.ip6_hdr_t** %23, align 8, !dbg !1458
  %272 = getelementptr inbounds %struct.ip6_hdr_t, %struct.ip6_hdr_t* %271, i32 0, i32 1, !dbg !1459
  %273 = load i16, i16* %272, align 1, !dbg !1459
  %274 = zext i16 %273 to i32, !dbg !1460
  %275 = and i32 %274, 65535, !dbg !1461
  %276 = add nsw i32 %270, %275, !dbg !1462
  %277 = load i32, i32* %26, align 4, !dbg !1463
  %278 = add i32 %277, %276, !dbg !1463
  store i32 %278, i32* %26, align 4, !dbg !1463
  %279 = call zeroext i16 @htons(i16 zeroext 6) #1, !dbg !1464
  %280 = zext i16 %279 to i32, !dbg !1466
  %281 = load i32, i32* %26, align 4, !dbg !1467
  %282 = add i32 %281, %280, !dbg !1467
  store i32 %282, i32* %26, align 4, !dbg !1467
  br label %283

; <label>:283:                                    ; preds = %265, %106
  %284 = load i32, i32* %17, align 4, !dbg !1468
  %285 = call i32 @htonl(i32 %284) #1, !dbg !1469
  %286 = load %struct.tcp_hdr_t*, %struct.tcp_hdr_t** %24, align 8, !dbg !1470
  %287 = getelementptr inbounds %struct.tcp_hdr_t, %struct.tcp_hdr_t* %286, i32 0, i32 2, !dbg !1471
  store i32 %285, i32* %287, align 1, !dbg !1472
  %288 = load i32, i32* %18, align 4, !dbg !1473
  %289 = call i32 @htonl(i32 %288) #1, !dbg !1474
  %290 = load %struct.tcp_hdr_t*, %struct.tcp_hdr_t** %24, align 8, !dbg !1475
  %291 = getelementptr inbounds %struct.tcp_hdr_t, %struct.tcp_hdr_t* %290, i32 0, i32 3, !dbg !1476
  store i32 %289, i32* %291, align 1, !dbg !1477
  %292 = load i8, i8* %16, align 1, !dbg !1478
  %293 = sext i8 %292 to i32, !dbg !1478
  %294 = or i32 20480, %293, !dbg !1479
  %295 = trunc i32 %294 to i16, !dbg !1480
  %296 = call zeroext i16 @htons(i16 zeroext %295) #1, !dbg !1481
  %297 = load %struct.tcp_hdr_t*, %struct.tcp_hdr_t** %24, align 8, !dbg !1482
  %298 = getelementptr inbounds %struct.tcp_hdr_t, %struct.tcp_hdr_t* %297, i32 0, i32 4, !dbg !1483
  store i16 %296, i16* %298, align 1, !dbg !1484
  %299 = call zeroext i16 @htons(i16 zeroext 32767) #1, !dbg !1485
  %300 = load %struct.tcp_hdr_t*, %struct.tcp_hdr_t** %24, align 8, !dbg !1486
  %301 = getelementptr inbounds %struct.tcp_hdr_t, %struct.tcp_hdr_t* %300, i32 0, i32 5, !dbg !1487
  store i16 %299, i16* %301, align 1, !dbg !1488
  %302 = load %struct.tcp_hdr_t*, %struct.tcp_hdr_t** %24, align 8, !dbg !1489
  %303 = getelementptr inbounds %struct.tcp_hdr_t, %struct.tcp_hdr_t* %302, i32 0, i32 7, !dbg !1490
  store i16 0, i16* %303, align 1, !dbg !1491
  %304 = load %struct.tcp_hdr_t*, %struct.tcp_hdr_t** %24, align 8, !dbg !1492
  %305 = getelementptr inbounds %struct.tcp_hdr_t, %struct.tcp_hdr_t* %304, i32 0, i32 6, !dbg !1493
  store i16 0, i16* %305, align 1, !dbg !1494
  %306 = load i64, i64* %25, align 8, !dbg !1495
  %307 = add i64 %306, 20, !dbg !1495
  store i64 %307, i64* %25, align 8, !dbg !1495
  %308 = load %struct.tcp_hdr_t*, %struct.tcp_hdr_t** %24, align 8, !dbg !1496
  %309 = bitcast %struct.tcp_hdr_t* %308 to i8*, !dbg !1497
  %310 = getelementptr inbounds i8, i8* %309, i64 20, !dbg !1498
  %311 = load i8*, i8** %19, align 8, !dbg !1499
  %312 = load i64, i64* %20, align 8, !dbg !1500
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %310, i8* %311, i64 %312, i32 1, i1 false), !dbg !1501
  call void @llvm.dbg.declare(metadata i16** %33, metadata !1502, metadata !203), !dbg !1504
  %313 = load %struct.tcp_hdr_t*, %struct.tcp_hdr_t** %24, align 8, !dbg !1505
  %314 = bitcast %struct.tcp_hdr_t* %313 to i16*, !dbg !1506
  store i16* %314, i16** %33, align 8, !dbg !1504
  call void @llvm.dbg.declare(metadata i64* %34, metadata !1507, metadata !203), !dbg !1508
  %315 = load i64, i64* %20, align 8, !dbg !1509
  %316 = add i64 20, %315, !dbg !1510
  %317 = lshr i64 %316, 1, !dbg !1511
  store i64 %317, i64* %34, align 8, !dbg !1508
  br label %318, !dbg !1512

; <label>:318:                                    ; preds = %322, %283
  %319 = load i64, i64* %34, align 8, !dbg !1513
  %320 = add i64 %319, -1, !dbg !1513
  store i64 %320, i64* %34, align 8, !dbg !1513
  %321 = icmp ne i64 %319, 0, !dbg !1515
  br i1 %321, label %322, label %329, !dbg !1515

; <label>:322:                                    ; preds = %318
  %323 = load i16*, i16** %33, align 8, !dbg !1516
  %324 = getelementptr inbounds i16, i16* %323, i32 1, !dbg !1516
  store i16* %324, i16** %33, align 8, !dbg !1516
  %325 = load i16, i16* %323, align 2, !dbg !1519
  %326 = zext i16 %325 to i32, !dbg !1519
  %327 = load i32, i32* %26, align 4, !dbg !1520
  %328 = add i32 %327, %326, !dbg !1520
  store i32 %328, i32* %26, align 4, !dbg !1520
  br label %318, !dbg !1521, !llvm.loop !1522

; <label>:329:                                    ; preds = %318
  %330 = load i64, i64* %20, align 8, !dbg !1523
  %331 = add i64 20, %330, !dbg !1526
  %332 = and i64 %331, 1, !dbg !1527
  %333 = icmp ne i64 %332, 0, !dbg !1527
  br i1 %333, label %334, label %345, !dbg !1528

; <label>:334:                                    ; preds = %329
  %335 = load i16*, i16** %33, align 8, !dbg !1529
  %336 = bitcast i16* %335 to i8*, !dbg !1532
  %337 = load i8, i8* %336, align 1, !dbg !1532
  %338 = sext i8 %337 to i32, !dbg !1532
  %339 = shl i32 %338, 8, !dbg !1533
  %340 = trunc i32 %339 to i16, !dbg !1532
  %341 = call zeroext i16 @htons(i16 zeroext %340) #1, !dbg !1534
  %342 = zext i16 %341 to i32, !dbg !1534
  %343 = load i32, i32* %26, align 4, !dbg !1535
  %344 = add i32 %343, %342, !dbg !1535
  store i32 %344, i32* %26, align 4, !dbg !1535
  br label %345, !dbg !1536

; <label>:345:                                    ; preds = %334, %329
  %346 = load i32, i32* %26, align 4, !dbg !1537
  %347 = lshr i32 %346, 16, !dbg !1539
  %348 = load i32, i32* %26, align 4, !dbg !1540
  %349 = and i32 %348, 65535, !dbg !1541
  %350 = add i32 %347, %349, !dbg !1542
  store i32 %350, i32* %26, align 4, !dbg !1543
  %351 = load i32, i32* %26, align 4, !dbg !1544
  %352 = lshr i32 %351, 16, !dbg !1545
  %353 = load i32, i32* %26, align 4, !dbg !1546
  %354 = add i32 %353, %352, !dbg !1546
  store i32 %354, i32* %26, align 4, !dbg !1546
  %355 = load i32, i32* %26, align 4, !dbg !1547
  %356 = xor i32 %355, -1, !dbg !1548
  store i32 %356, i32* %26, align 4, !dbg !1549
  %357 = load i32, i32* %26, align 4, !dbg !1550
  %358 = trunc i32 %357 to i16, !dbg !1550
  %359 = load %struct.tcp_hdr_t*, %struct.tcp_hdr_t** %24, align 8, !dbg !1551
  %360 = getelementptr inbounds %struct.tcp_hdr_t, %struct.tcp_hdr_t* %359, i32 0, i32 6, !dbg !1552
  store i16 %358, i16* %360, align 1, !dbg !1553
  %361 = load i64, i64* %25, align 8, !dbg !1554
  %362 = load i64, i64* %20, align 8, !dbg !1555
  %363 = add i64 %361, %362, !dbg !1556
  ret i64 %363, !dbg !1557
}

; Function Attrs: nounwind uwtable
define internal i32 @logpkt_pcap_write(i8*, i64, i32) #0 !dbg !1558 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pcap_rec_hdr_t, align 1
  %9 = alloca %struct.timeval, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1561, metadata !203), !dbg !1562
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1563, metadata !203), !dbg !1564
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1565, metadata !203), !dbg !1566
  call void @llvm.dbg.declare(metadata %struct.pcap_rec_hdr_t* %8, metadata !1567, metadata !203), !dbg !1575
  call void @llvm.dbg.declare(metadata %struct.timeval* %9, metadata !1576, metadata !203), !dbg !1577
  %10 = call i32 @gettimeofday(%struct.timeval* %9, %struct.timezone* null) #7, !dbg !1578
  %11 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0, !dbg !1579
  %12 = load i64, i64* %11, align 8, !dbg !1579
  %13 = trunc i64 %12 to i32, !dbg !1580
  %14 = getelementptr inbounds %struct.pcap_rec_hdr_t, %struct.pcap_rec_hdr_t* %8, i32 0, i32 0, !dbg !1581
  store i32 %13, i32* %14, align 1, !dbg !1582
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1, !dbg !1583
  %16 = load i64, i64* %15, align 8, !dbg !1583
  %17 = trunc i64 %16 to i32, !dbg !1584
  %18 = getelementptr inbounds %struct.pcap_rec_hdr_t, %struct.pcap_rec_hdr_t* %8, i32 0, i32 1, !dbg !1585
  store i32 %17, i32* %18, align 1, !dbg !1586
  %19 = load i64, i64* %6, align 8, !dbg !1587
  %20 = trunc i64 %19 to i32, !dbg !1587
  %21 = getelementptr inbounds %struct.pcap_rec_hdr_t, %struct.pcap_rec_hdr_t* %8, i32 0, i32 2, !dbg !1588
  store i32 %20, i32* %21, align 1, !dbg !1589
  %22 = getelementptr inbounds %struct.pcap_rec_hdr_t, %struct.pcap_rec_hdr_t* %8, i32 0, i32 3, !dbg !1590
  store i32 %20, i32* %22, align 1, !dbg !1591
  %23 = load i32, i32* %7, align 4, !dbg !1592
  %24 = bitcast %struct.pcap_rec_hdr_t* %8 to i8*, !dbg !1594
  %25 = call i64 @write(i32 %23, i8* %24, i64 16), !dbg !1595
  %26 = icmp ne i64 %25, 16, !dbg !1596
  br i1 %26, label %27, label %32, !dbg !1597

; <label>:27:                                     ; preds = %3
  %28 = call i32* @__errno_location() #1, !dbg !1598
  %29 = load i32, i32* %28, align 4, !dbg !1600
  %30 = call i8* @strerror(i32 %29) #7, !dbg !1601
  %31 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i32 0, i32 0), i8* %30), !dbg !1603
  store i32 -1, i32* %4, align 4, !dbg !1604
  br label %45, !dbg !1604

; <label>:32:                                     ; preds = %3
  %33 = load i32, i32* %7, align 4, !dbg !1605
  %34 = load i8*, i8** %5, align 8, !dbg !1607
  %35 = load i64, i64* %6, align 8, !dbg !1608
  %36 = call i64 @write(i32 %33, i8* %34, i64 %35), !dbg !1609
  %37 = load i64, i64* %6, align 8, !dbg !1610
  %38 = icmp ne i64 %36, %37, !dbg !1611
  br i1 %38, label %39, label %44, !dbg !1612

; <label>:39:                                     ; preds = %32
  %40 = call i32* @__errno_location() #1, !dbg !1613
  %41 = load i32, i32* %40, align 4, !dbg !1615
  %42 = call i8* @strerror(i32 %41) #7, !dbg !1616
  %43 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i32 0, i32 0), i8* %42), !dbg !1618
  store i32 -1, i32* %4, align 4, !dbg !1619
  br label %45, !dbg !1619

; <label>:44:                                     ; preds = %32
  store i32 0, i32* %4, align 4, !dbg !1620
  br label %45, !dbg !1620

; <label>:45:                                     ; preds = %44, %39, %27
  %46 = load i32, i32* %4, align 4, !dbg !1621
  ret i32 %46, !dbg !1621
}

; Function Attrs: nounwind uwtable
define internal i32 @logpkt_mirror_build(%struct.libnet_context*, i8*, i8*, %struct.sockaddr*, %struct.sockaddr*, i8 signext, i32, i32, i8*, i64) #0 !dbg !1622 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.libnet_context*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.sockaddr*, align 8
  %16 = alloca %struct.sockaddr*, align 8
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.libnet_in6_addr, align 8
  %24 = alloca %struct.libnet_in6_addr, align 8
  store %struct.libnet_context* %0, %struct.libnet_context** %12, align 8
  call void @llvm.dbg.declare(metadata %struct.libnet_context** %12, metadata !1625, metadata !203), !dbg !1626
  store i8* %1, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1627, metadata !203), !dbg !1628
  store i8* %2, i8** %14, align 8
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1629, metadata !203), !dbg !1630
  store %struct.sockaddr* %3, %struct.sockaddr** %15, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr** %15, metadata !1631, metadata !203), !dbg !1632
  store %struct.sockaddr* %4, %struct.sockaddr** %16, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr** %16, metadata !1633, metadata !203), !dbg !1634
  store i8 %5, i8* %17, align 1
  call void @llvm.dbg.declare(metadata i8* %17, metadata !1635, metadata !203), !dbg !1636
  store i32 %6, i32* %18, align 4
  call void @llvm.dbg.declare(metadata i32* %18, metadata !1637, metadata !203), !dbg !1638
  store i32 %7, i32* %19, align 4
  call void @llvm.dbg.declare(metadata i32* %19, metadata !1639, metadata !203), !dbg !1640
  store i8* %8, i8** %20, align 8
  call void @llvm.dbg.declare(metadata i8** %20, metadata !1641, metadata !203), !dbg !1642
  store i64 %9, i64* %21, align 8
  call void @llvm.dbg.declare(metadata i64* %21, metadata !1643, metadata !203), !dbg !1644
  call void @llvm.dbg.declare(metadata i32* %22, metadata !1645, metadata !203), !dbg !1646
  %25 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8, !dbg !1647
  %26 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %25, i32 0, i32 0, !dbg !1648
  %27 = load i16, i16* %26, align 2, !dbg !1648
  %28 = zext i16 %27 to i32, !dbg !1647
  %29 = icmp eq i32 %28, 2, !dbg !1649
  br i1 %29, label %30, label %36, !dbg !1647

; <label>:30:                                     ; preds = %10
  %31 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8, !dbg !1650
  %32 = bitcast %struct.sockaddr* %31 to %struct.sockaddr_in*, !dbg !1651
  %33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %32, i32 0, i32 1, !dbg !1651
  %34 = load i16, i16* %33, align 2, !dbg !1651
  %35 = zext i16 %34 to i32, !dbg !1652
  br label %42, !dbg !1653

; <label>:36:                                     ; preds = %10
  %37 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8, !dbg !1655
  %38 = bitcast %struct.sockaddr* %37 to %struct.sockaddr_in6*, !dbg !1656
  %39 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %38, i32 0, i32 1, !dbg !1656
  %40 = load i16, i16* %39, align 2, !dbg !1656
  %41 = zext i16 %40 to i32, !dbg !1657
  br label %42, !dbg !1658

; <label>:42:                                     ; preds = %36, %30
  %43 = phi i32 [ %35, %30 ], [ %41, %36 ], !dbg !1660
  %44 = trunc i32 %43 to i16, !dbg !1660
  %45 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8, !dbg !1662
  %46 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %45, i32 0, i32 0, !dbg !1663
  %47 = load i16, i16* %46, align 2, !dbg !1663
  %48 = zext i16 %47 to i32, !dbg !1662
  %49 = icmp eq i32 %48, 2, !dbg !1664
  br i1 %49, label %50, label %56, !dbg !1662

; <label>:50:                                     ; preds = %42
  %51 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8, !dbg !1665
  %52 = bitcast %struct.sockaddr* %51 to %struct.sockaddr_in*, !dbg !1666
  %53 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %52, i32 0, i32 1, !dbg !1666
  %54 = load i16, i16* %53, align 2, !dbg !1666
  %55 = zext i16 %54 to i32, !dbg !1667
  br label %62, !dbg !1668

; <label>:56:                                     ; preds = %42
  %57 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8, !dbg !1669
  %58 = bitcast %struct.sockaddr* %57 to %struct.sockaddr_in6*, !dbg !1670
  %59 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %58, i32 0, i32 1, !dbg !1670
  %60 = load i16, i16* %59, align 2, !dbg !1670
  %61 = zext i16 %60 to i32, !dbg !1671
  br label %62, !dbg !1672

; <label>:62:                                     ; preds = %56, %50
  %63 = phi i32 [ %55, %50 ], [ %61, %56 ], !dbg !1673
  %64 = trunc i32 %63 to i16, !dbg !1673
  %65 = load i32, i32* %18, align 4, !dbg !1674
  %66 = load i32, i32* %19, align 4, !dbg !1675
  %67 = load i8, i8* %17, align 1, !dbg !1676
  %68 = load i64, i64* %21, align 8, !dbg !1677
  %69 = add i64 20, %68, !dbg !1678
  %70 = trunc i64 %69 to i16, !dbg !1679
  %71 = load i8*, i8** %20, align 8, !dbg !1680
  %72 = load i64, i64* %21, align 8, !dbg !1681
  %73 = trunc i64 %72 to i32, !dbg !1681
  %74 = load %struct.libnet_context*, %struct.libnet_context** %12, align 8, !dbg !1682
  %75 = call i32 @libnet_build_tcp(i16 zeroext %44, i16 zeroext %64, i32 %65, i32 %66, i8 zeroext %67, i16 zeroext 32767, i16 zeroext 0, i16 zeroext 0, i16 zeroext %70, i8* %71, i32 %73, %struct.libnet_context* %74, i32 0), !dbg !1683
  store i32 %75, i32* %22, align 4, !dbg !1685
  %76 = load i32, i32* %22, align 4, !dbg !1686
  %77 = icmp eq i32 %76, -1, !dbg !1688
  br i1 %77, label %78, label %82, !dbg !1689

; <label>:78:                                     ; preds = %62
  %79 = load %struct.libnet_context*, %struct.libnet_context** %12, align 8, !dbg !1690
  %80 = call i8* @libnet_geterror(%struct.libnet_context* %79), !dbg !1692
  %81 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i32 0, i32 0), i8* %80), !dbg !1693
  store i32 -1, i32* %11, align 4, !dbg !1694
  br label %149, !dbg !1694

; <label>:82:                                     ; preds = %62
  %83 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8, !dbg !1695
  %84 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %83, i32 0, i32 0, !dbg !1697
  %85 = load i16, i16* %84, align 2, !dbg !1697
  %86 = zext i16 %85 to i32, !dbg !1695
  %87 = icmp eq i32 %86, 2, !dbg !1698
  br i1 %87, label %88, label %105, !dbg !1699

; <label>:88:                                     ; preds = %82
  %89 = load i64, i64* %21, align 8, !dbg !1700
  %90 = add i64 40, %89, !dbg !1702
  %91 = trunc i64 %90 to i16, !dbg !1703
  %92 = call zeroext i16 @sys_rand16(), !dbg !1704
  %93 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8, !dbg !1705
  %94 = bitcast %struct.sockaddr* %93 to %struct.sockaddr_in*, !dbg !1706
  %95 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %94, i32 0, i32 2, !dbg !1706
  %96 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %95, i32 0, i32 0, !dbg !1707
  %97 = load i32, i32* %96, align 4, !dbg !1707
  %98 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8, !dbg !1708
  %99 = bitcast %struct.sockaddr* %98 to %struct.sockaddr_in*, !dbg !1709
  %100 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %99, i32 0, i32 2, !dbg !1709
  %101 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %100, i32 0, i32 0, !dbg !1710
  %102 = load i32, i32* %101, align 4, !dbg !1710
  %103 = load %struct.libnet_context*, %struct.libnet_context** %12, align 8, !dbg !1711
  %104 = call i32 @libnet_build_ipv4(i16 zeroext %91, i8 zeroext 0, i16 zeroext %92, i16 zeroext 16384, i8 zeroext 64, i8 zeroext 6, i16 zeroext 0, i32 %97, i32 %102, i8* null, i32 0, %struct.libnet_context* %103, i32 0), !dbg !1712
  store i32 %104, i32* %22, align 4, !dbg !1713
  br label %123, !dbg !1714

; <label>:105:                                    ; preds = %82
  %106 = load i64, i64* %21, align 8, !dbg !1715
  %107 = add i64 60, %106, !dbg !1717
  %108 = trunc i64 %107 to i16, !dbg !1718
  %109 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8, !dbg !1719
  %110 = bitcast %struct.sockaddr* %109 to %struct.sockaddr_in6*, !dbg !1720
  %111 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %110, i32 0, i32 3, !dbg !1720
  %112 = bitcast %struct.in6_addr* %111 to %struct.libnet_in6_addr*, !dbg !1721
  %113 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8, !dbg !1722
  %114 = bitcast %struct.sockaddr* %113 to %struct.sockaddr_in6*, !dbg !1723
  %115 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %114, i32 0, i32 3, !dbg !1723
  %116 = bitcast %struct.in6_addr* %115 to %struct.libnet_in6_addr*, !dbg !1724
  %117 = load %struct.libnet_context*, %struct.libnet_context** %12, align 8, !dbg !1725
  %118 = bitcast %struct.libnet_in6_addr* %23 to i8*, !dbg !1726
  %119 = bitcast %struct.libnet_in6_addr* %112 to i8*, !dbg !1726
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %118, i8* %119, i64 16, i32 4, i1 false), !dbg !1726
  %120 = bitcast %struct.libnet_in6_addr* %24 to i8*, !dbg !1726
  %121 = bitcast %struct.libnet_in6_addr* %116 to i8*, !dbg !1726
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %120, i8* %121, i64 16, i32 4, i1 false), !dbg !1727
  %122 = call i32 @libnet_build_ipv6(i8 zeroext 0, i32 0, i16 zeroext %108, i8 zeroext 6, i8 zeroext -1, %struct.libnet_in6_addr* byval align 8 %23, %struct.libnet_in6_addr* byval align 8 %24, i8* null, i32 0, %struct.libnet_context* %117, i32 0), !dbg !1729
  store i32 %122, i32* %22, align 4, !dbg !1731
  br label %123

; <label>:123:                                    ; preds = %105, %88
  %124 = load i32, i32* %22, align 4, !dbg !1732
  %125 = icmp eq i32 %124, -1, !dbg !1734
  br i1 %125, label %126, label %130, !dbg !1735

; <label>:126:                                    ; preds = %123
  %127 = load %struct.libnet_context*, %struct.libnet_context** %12, align 8, !dbg !1736
  %128 = call i8* @libnet_geterror(%struct.libnet_context* %127), !dbg !1738
  %129 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i32 0, i32 0), i8* %128), !dbg !1739
  store i32 -1, i32* %11, align 4, !dbg !1740
  br label %149, !dbg !1740

; <label>:130:                                    ; preds = %123
  %131 = load i8*, i8** %14, align 8, !dbg !1741
  %132 = load i8*, i8** %13, align 8, !dbg !1742
  %133 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8, !dbg !1743
  %134 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %133, i32 0, i32 0, !dbg !1744
  %135 = load i16, i16* %134, align 2, !dbg !1744
  %136 = zext i16 %135 to i32, !dbg !1743
  %137 = icmp eq i32 %136, 2, !dbg !1745
  %138 = select i1 %137, i32 2048, i32 34525, !dbg !1743
  %139 = trunc i32 %138 to i16, !dbg !1743
  %140 = load %struct.libnet_context*, %struct.libnet_context** %12, align 8, !dbg !1746
  %141 = call i32 @libnet_build_ethernet(i8* %131, i8* %132, i16 zeroext %139, i8* null, i32 0, %struct.libnet_context* %140, i32 0), !dbg !1747
  store i32 %141, i32* %22, align 4, !dbg !1748
  %142 = load i32, i32* %22, align 4, !dbg !1749
  %143 = icmp eq i32 %142, -1, !dbg !1751
  br i1 %143, label %144, label %148, !dbg !1752

; <label>:144:                                    ; preds = %130
  %145 = load %struct.libnet_context*, %struct.libnet_context** %12, align 8, !dbg !1753
  %146 = call i8* @libnet_geterror(%struct.libnet_context* %145), !dbg !1755
  %147 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0), i8* %146), !dbg !1756
  store i32 -1, i32* %11, align 4, !dbg !1757
  br label %149, !dbg !1757

; <label>:148:                                    ; preds = %130
  store i32 0, i32* %11, align 4, !dbg !1758
  br label %149, !dbg !1758

; <label>:149:                                    ; preds = %148, %144, %126, %78
  %150 = load i32, i32* %11, align 4, !dbg !1759
  ret i32 %150, !dbg !1759
}

; Function Attrs: nounwind readnone
declare zeroext i16 @htons(i16 zeroext) #5

declare zeroext i16 @sys_rand16() #3

; Function Attrs: nounwind readnone
declare i32 @htonl(i32) #5

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #2

declare i32 @libnet_build_tcp(i16 zeroext, i16 zeroext, i32, i32, i8 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i8*, i32, %struct.libnet_context*, i32) #3

declare i32 @libnet_build_ipv4(i16 zeroext, i8 zeroext, i16 zeroext, i16 zeroext, i8 zeroext, i8 zeroext, i16 zeroext, i32, i32, i8*, i32, %struct.libnet_context*, i32) #3

declare i32 @libnet_build_ipv6(i8 zeroext, i32, i16 zeroext, i8 zeroext, i8 zeroext, %struct.libnet_in6_addr* byval align 8, %struct.libnet_in6_addr* byval align 8, i8*, i32, %struct.libnet_context*, i32) #3

declare i32 @libnet_build_ethernet(i8*, i8*, i16 zeroext, i8*, i32, %struct.libnet_context*, i32) #3

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!195, !196}
!llvm.ident = !{!197}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !32)
!1 = !DIFile(filename: "line18-logpkt.o.i", directory: "/home/lichi/Desktop/sslsplit/task1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 40, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/sslsplit/task1")
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
!32 = !{!33, !35, !38, !39, !42, !47, !73, !86, !98, !112, !128, !129, !141, !154, !175, !97, !177, !187}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !36, line: 51, baseType: !37)
!36 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!37 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !36, line: 48, baseType: !41)
!41 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "pcap_handler", file: !43, line: 237, baseType: !44)
!43 = !DIFile(filename: "/usr/include/pcap/pcap.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !47, !52, !71}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !49, line: 33, baseType: !50)
!49 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !51, line: 30, baseType: !41)
!51 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcap_pkthdr", file: !43, line: 160, size: 192, align: 64, elements: !55)
!55 = !{!56, !65, !70}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !54, file: !43, line: 161, baseType: !57, size: 128, align: 64)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !58, line: 30, size: 128, align: 64, elements: !59)
!58 = !DIFile(filename: "/usr/include/bits/time.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!59 = !{!60, !63}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !57, file: !58, line: 32, baseType: !61, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !51, line: 139, baseType: !62)
!62 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !57, file: !58, line: 33, baseType: !64, size: 64, align: 64, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !51, line: 141, baseType: !62)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "caplen", scope: !54, file: !43, line: 162, baseType: !66, size: 32, align: 32, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "bpf_u_int32", file: !67, line: 87, baseType: !68)
!67 = !DIFile(filename: "/usr/include/pcap/bpf.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !49, line: 35, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_int", file: !51, line: 32, baseType: !37)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !54, file: !43, line: 163, baseType: !66, size: 32, align: 32, offset: 160)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !76, line: 153, size: 128, align: 16, elements: !77)
!76 = !DIFile(filename: "/usr/include/bits/socket.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!77 = !{!78, !82}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !75, file: !76, line: 155, baseType: !79, size: 16, align: 16)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !80, line: 28, baseType: !81)
!80 = !DIFile(filename: "/usr/include/bits/sockaddr.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!81 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !75, file: !76, line: 156, baseType: !83, size: 112, align: 8, offset: 16)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 112, align: 8, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 14)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "ether_hdr_t", file: !88, line: 72, baseType: !89)
!88 = !DIFile(filename: "logpkt.c", directory: "/home/lichi/Desktop/sslsplit/task1")
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !88, line: 68, size: 112, align: 8, elements: !90)
!90 = !{!91, !95, !96}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "dst_mac", scope: !89, file: !88, line: 69, baseType: !92, size: 48, align: 8)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 48, align: 8, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 6)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "src_mac", scope: !89, file: !88, line: 70, baseType: !92, size: 48, align: 8, offset: 48)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "ethertype", scope: !89, file: !88, line: 71, baseType: !97, size: 16, align: 16, offset: 96)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !36, line: 49, baseType: !81)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, align: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip4_hdr_t", file: !88, line: 92, baseType: !100)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !88, line: 81, size: 160, align: 8, elements: !101)
!101 = !{!102, !103, !104, !105, !106, !107, !108, !109, !110, !111}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "version_ihl", scope: !100, file: !88, line: 82, baseType: !40, size: 8, align: 8)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "dscp_ecn", scope: !100, file: !88, line: 83, baseType: !40, size: 8, align: 8, offset: 8)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !100, file: !88, line: 84, baseType: !97, size: 16, align: 16, offset: 16)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !100, file: !88, line: 85, baseType: !97, size: 16, align: 16, offset: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !100, file: !88, line: 86, baseType: !97, size: 16, align: 16, offset: 48)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !100, file: !88, line: 87, baseType: !40, size: 8, align: 8, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !100, file: !88, line: 88, baseType: !40, size: 8, align: 8, offset: 72)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "chksum", scope: !100, file: !88, line: 89, baseType: !97, size: 16, align: 16, offset: 80)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "src_addr", scope: !100, file: !88, line: 90, baseType: !35, size: 32, align: 32, offset: 96)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "dst_addr", scope: !100, file: !88, line: 91, baseType: !35, size: 32, align: 32, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, align: 64)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !4, line: 239, size: 128, align: 32, elements: !115)
!115 = !{!116, !117, !119, !124}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !114, file: !4, line: 241, baseType: !79, size: 16, align: 16)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !114, file: !4, line: 242, baseType: !118, size: 16, align: 16, offset: 16)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !4, line: 119, baseType: !97)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !114, file: !4, line: 243, baseType: !120, size: 32, align: 32, offset: 32)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !4, line: 31, size: 32, align: 32, elements: !121)
!121 = !{!122}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !120, file: !4, line: 33, baseType: !123, size: 32, align: 32)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !4, line: 30, baseType: !35)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !114, file: !4, line: 246, baseType: !125, size: 64, align: 8, offset: 64)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 64, align: 8, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 8)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_hdr_t", file: !88, line: 112, baseType: !131)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !88, line: 103, size: 160, align: 8, elements: !132)
!132 = !{!133, !134, !135, !136, !137, !138, !139, !140}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "src_port", scope: !131, file: !88, line: 104, baseType: !97, size: 16, align: 16)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "dst_port", scope: !131, file: !88, line: 105, baseType: !97, size: 16, align: 16, offset: 16)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !131, file: !88, line: 106, baseType: !35, size: 32, align: 32, offset: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "ack", scope: !131, file: !88, line: 107, baseType: !35, size: 32, align: 32, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !131, file: !88, line: 108, baseType: !97, size: 16, align: 16, offset: 96)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "win", scope: !131, file: !88, line: 109, baseType: !97, size: 16, align: 16, offset: 112)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "chksum", scope: !131, file: !88, line: 110, baseType: !97, size: 16, align: 16, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "urgp", scope: !131, file: !88, line: 111, baseType: !97, size: 16, align: 16, offset: 144)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64, align: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip6_hdr_t", file: !88, line: 101, baseType: !143)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !88, line: 94, size: 320, align: 8, elements: !144)
!144 = !{!145, !146, !147, !148, !149, !153}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !143, file: !88, line: 95, baseType: !35, size: 32, align: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !143, file: !88, line: 96, baseType: !97, size: 16, align: 16, offset: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "next_hdr", scope: !143, file: !88, line: 97, baseType: !40, size: 8, align: 8, offset: 48)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "hop_limit", scope: !143, file: !88, line: 98, baseType: !40, size: 8, align: 8, offset: 56)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "src_addr", scope: !143, file: !88, line: 99, baseType: !150, size: 128, align: 8, offset: 64)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 128, align: 8, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 16)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "dst_addr", scope: !143, file: !88, line: 100, baseType: !150, size: 128, align: 8, offset: 192)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64, align: 64)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !4, line: 254, size: 224, align: 32, elements: !157)
!157 = !{!158, !159, !160, !161, !174}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !156, file: !4, line: 256, baseType: !79, size: 16, align: 16)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !156, file: !4, line: 257, baseType: !118, size: 16, align: 16, offset: 16)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !156, file: !4, line: 258, baseType: !35, size: 32, align: 32, offset: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !156, file: !4, line: 259, baseType: !162, size: 128, align: 32, offset: 64)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !4, line: 211, size: 128, align: 32, elements: !163)
!163 = !{!164}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !162, file: !4, line: 220, baseType: !165, size: 128, align: 32)
!165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !162, file: !4, line: 213, size: 128, align: 32, elements: !166)
!166 = !{!167, !168, !170}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !165, file: !4, line: 215, baseType: !150, size: 128, align: 8)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !165, file: !4, line: 217, baseType: !169, size: 128, align: 16)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 128, align: 16, elements: !126)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !165, file: !4, line: 218, baseType: !171, size: 128, align: 32)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 128, align: 32, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 4)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !156, file: !4, line: 260, baseType: !35, size: 32, align: 32, offset: 192)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !49, line: 109, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !51, line: 172, baseType: !62)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_in6_addr", file: !179, line: 741, size: 128, align: 32, elements: !180)
!179 = !DIFile(filename: "/usr/include/libnet/libnet-headers.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!180 = !{!181}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr", scope: !178, file: !179, line: 748, baseType: !182, size: 128, align: 32)
!182 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !178, file: !179, line: 743, size: 128, align: 32, elements: !183)
!183 = !{!184, !185, !186}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !182, file: !179, line: 745, baseType: !150, size: 128, align: 8)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !182, file: !179, line: 746, baseType: !169, size: 128, align: 16)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !182, file: !179, line: 747, baseType: !171, size: 128, align: 32)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, align: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "logpkt_recv_arp_reply_ctx_t", file: !88, line: 685, baseType: !189)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !88, line: 681, size: 128, align: 32, elements: !190)
!190 = !{!191, !192, !194}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !189, file: !88, line: 682, baseType: !35, size: 32, align: 32)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !189, file: !88, line: 683, baseType: !193, size: 32, align: 32, offset: 32)
!193 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "ether", scope: !189, file: !88, line: 684, baseType: !92, size: 48, align: 8, offset: 64)
!195 = !{i32 2, !"Dwarf Version", i32 4}
!196 = !{i32 2, !"Debug Info Version", i32 3}
!197 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!198 = distinct !DISubprogram(name: "logpkt_pcap_open_fd", scope: !88, file: !88, line: 218, type: !199, isLocal: false, isDefinition: true, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !201)
!199 = !DISubroutineType(types: !200)
!200 = !{!193, !193}
!201 = !{}
!202 = !DILocalVariable(name: "fd", arg: 1, scope: !198, file: !88, line: 218, type: !193)
!203 = !DIExpression()
!204 = !DILocation(line: 218, column: 25, scope: !198)
!205 = !DILocalVariable(name: "hdr", scope: !198, file: !88, line: 219, type: !206)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "pcap_file_hdr_t", file: !88, line: 57, baseType: !207)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !88, line: 49, size: 192, align: 8, elements: !208)
!208 = !{!209, !210, !211, !212, !213, !214, !215}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "magic_number", scope: !207, file: !88, line: 50, baseType: !35, size: 32, align: 32)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "version_major", scope: !207, file: !88, line: 51, baseType: !97, size: 16, align: 16, offset: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "version_minor", scope: !207, file: !88, line: 52, baseType: !97, size: 16, align: 16, offset: 48)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "thiszone", scope: !207, file: !88, line: 53, baseType: !35, size: 32, align: 32, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "sigfigs", scope: !207, file: !88, line: 54, baseType: !35, size: 32, align: 32, offset: 96)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "snaplen", scope: !207, file: !88, line: 55, baseType: !35, size: 32, align: 32, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "network", scope: !207, file: !88, line: 56, baseType: !35, size: 32, align: 32, offset: 160)
!216 = !DILocation(line: 219, column: 18, scope: !198)
!217 = !DILocalVariable(name: "sz", scope: !198, file: !88, line: 220, type: !218)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !49, line: 86, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !51, line: 131, baseType: !62)
!220 = !DILocation(line: 220, column: 8, scope: !198)
!221 = !DILocalVariable(name: "n", scope: !198, file: !88, line: 221, type: !175)
!222 = !DILocation(line: 221, column: 10, scope: !198)
!223 = !DILocation(line: 223, column: 13, scope: !198)
!224 = !DILocation(line: 223, column: 7, scope: !198)
!225 = !DILocation(line: 223, column: 5, scope: !198)
!226 = !DILocation(line: 224, column: 6, scope: !227)
!227 = distinct !DILexicalBlock(scope: !198, file: !88, line: 224, column: 6)
!228 = !DILocation(line: 224, column: 9, scope: !227)
!229 = !DILocation(line: 224, column: 6, scope: !198)
!230 = !DILocation(line: 225, column: 3, scope: !227)
!231 = !DILocation(line: 227, column: 6, scope: !232)
!232 = distinct !DILexicalBlock(scope: !198, file: !88, line: 227, column: 6)
!233 = !DILocation(line: 227, column: 9, scope: !232)
!234 = !DILocation(line: 227, column: 6, scope: !198)
!235 = !DILocation(line: 228, column: 13, scope: !236)
!236 = distinct !DILexicalBlock(scope: !237, file: !88, line: 228, column: 7)
!237 = distinct !DILexicalBlock(scope: !232, file: !88, line: 227, column: 14)
!238 = !DILocation(line: 228, column: 7, scope: !236)
!239 = !DILocation(line: 228, column: 29, scope: !236)
!240 = !DILocation(line: 228, column: 7, scope: !237)
!241 = !DILocation(line: 229, column: 4, scope: !236)
!242 = !DILocation(line: 230, column: 12, scope: !237)
!243 = !DILocation(line: 230, column: 16, scope: !237)
!244 = !DILocation(line: 230, column: 7, scope: !237)
!245 = !DILocation(line: 230, column: 5, scope: !237)
!246 = !DILocation(line: 231, column: 7, scope: !247)
!247 = distinct !DILexicalBlock(scope: !237, file: !88, line: 231, column: 7)
!248 = !DILocation(line: 231, column: 9, scope: !247)
!249 = !DILocation(line: 231, column: 7, scope: !237)
!250 = !DILocation(line: 232, column: 4, scope: !247)
!251 = !DILocation(line: 233, column: 11, scope: !252)
!252 = distinct !DILexicalBlock(scope: !237, file: !88, line: 233, column: 7)
!253 = !DILocation(line: 233, column: 24, scope: !252)
!254 = !DILocation(line: 233, column: 7, scope: !237)
!255 = !DILocation(line: 234, column: 17, scope: !252)
!256 = !DILocation(line: 234, column: 11, scope: !252)
!257 = !DILocation(line: 234, column: 33, scope: !252)
!258 = !DILocation(line: 234, column: 4, scope: !252)
!259 = !DILocation(line: 235, column: 13, scope: !260)
!260 = distinct !DILexicalBlock(scope: !237, file: !88, line: 235, column: 7)
!261 = !DILocation(line: 235, column: 7, scope: !260)
!262 = !DILocation(line: 235, column: 29, scope: !260)
!263 = !DILocation(line: 235, column: 7, scope: !237)
!264 = !DILocation(line: 236, column: 4, scope: !260)
!265 = !DILocation(line: 237, column: 17, scope: !266)
!266 = distinct !DILexicalBlock(scope: !237, file: !88, line: 237, column: 7)
!267 = !DILocation(line: 237, column: 7, scope: !266)
!268 = !DILocation(line: 237, column: 24, scope: !266)
!269 = !DILocation(line: 237, column: 7, scope: !237)
!270 = !DILocation(line: 238, column: 4, scope: !266)
!271 = !DILocation(line: 239, column: 2, scope: !237)
!272 = !DILocation(line: 241, column: 38, scope: !198)
!273 = !DILocation(line: 241, column: 9, scope: !198)
!274 = !DILocation(line: 241, column: 2, scope: !198)
!275 = !DILocation(line: 242, column: 1, scope: !198)
!276 = distinct !DISubprogram(name: "logpkt_write_global_pcap_hdr", scope: !88, file: !88, line: 193, type: !199, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !201)
!277 = !DILocalVariable(name: "fd", arg: 1, scope: !276, file: !88, line: 193, type: !193)
!278 = !DILocation(line: 193, column: 34, scope: !276)
!279 = !DILocalVariable(name: "hdr", scope: !276, file: !88, line: 195, type: !206)
!280 = !DILocation(line: 195, column: 18, scope: !276)
!281 = !DILocation(line: 197, column: 2, scope: !276)
!282 = !DILocation(line: 198, column: 6, scope: !276)
!283 = !DILocation(line: 198, column: 19, scope: !276)
!284 = !DILocation(line: 199, column: 6, scope: !276)
!285 = !DILocation(line: 199, column: 20, scope: !276)
!286 = !DILocation(line: 200, column: 6, scope: !276)
!287 = !DILocation(line: 200, column: 20, scope: !276)
!288 = !DILocation(line: 201, column: 6, scope: !276)
!289 = !DILocation(line: 201, column: 14, scope: !276)
!290 = !DILocation(line: 202, column: 6, scope: !276)
!291 = !DILocation(line: 202, column: 14, scope: !276)
!292 = !DILocation(line: 203, column: 15, scope: !276)
!293 = !DILocation(line: 203, column: 19, scope: !276)
!294 = !DILocation(line: 203, column: 9, scope: !276)
!295 = !DILocation(line: 203, column: 38, scope: !276)
!296 = !DILocation(line: 203, column: 2, scope: !276)
!297 = distinct !DISubprogram(name: "logpkt_ctx_init", scope: !88, file: !88, line: 254, type: !298, isLocal: false, isDefinition: true, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !201)
!298 = !DISubroutineType(types: !299)
!299 = !{null, !300, !306, !369, !371, !371, !73, !373, !73, !373}
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "logpkt_ctx_t", file: !302, line: 54, baseType: !303)
!302 = !DIFile(filename: "logpkt.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !302, line: 45, size: 2368, align: 64, elements: !304)
!304 = !{!305, !354, !355, !356, !365, !366, !367, !368}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "libnet", scope: !303, file: !302, line: 46, baseType: !306, size: 64, align: 64)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "libnet_t", file: !308, line: 235, baseType: !309)
!308 = !DIFile(filename: "/usr/include/libnet/libnet-structures.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_context", file: !308, line: 186, size: 3200, align: 64, elements: !310)
!310 = !{!311, !312, !313, !330, !331, !332, !333, !334, !335, !336, !344, !345, !349, !353}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !309, file: !308, line: 192, baseType: !193, size: 32, align: 32)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "injection_type", scope: !309, file: !308, line: 194, baseType: !193, size: 32, align: 32, offset: 32)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_blocks", scope: !309, file: !308, line: 206, baseType: !314, size: 64, align: 64, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64, align: 64)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "libnet_pblock_t", file: !308, line: 178, baseType: !316)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_protocol_block", file: !308, line: 77, size: 384, align: 64, elements: !317)
!317 = !{!318, !319, !320, !321, !322, !323, !324, !327, !329}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !316, file: !308, line: 79, baseType: !39, size: 64, align: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "b_len", scope: !316, file: !308, line: 80, baseType: !35, size: 32, align: 32, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "h_len", scope: !316, file: !308, line: 81, baseType: !97, size: 16, align: 16, offset: 96)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "copied", scope: !316, file: !308, line: 92, baseType: !35, size: 32, align: 32, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !316, file: !308, line: 94, baseType: !40, size: 8, align: 8, offset: 160)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !316, file: !308, line: 168, baseType: !40, size: 8, align: 8, offset: 168)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "ptag", scope: !316, file: !308, line: 170, baseType: !325, size: 32, align: 32, offset: 192)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "libnet_ptag_t", file: !308, line: 70, baseType: !326)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !49, line: 196, baseType: !193)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !316, file: !308, line: 175, baseType: !328, size: 64, align: 64, offset: 256)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64, align: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !316, file: !308, line: 176, baseType: !328, size: 64, align: 64, offset: 320)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "pblock_end", scope: !309, file: !308, line: 207, baseType: !314, size: 64, align: 64, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "n_pblocks", scope: !309, file: !308, line: 208, baseType: !35, size: 32, align: 32, offset: 192)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "link_type", scope: !309, file: !308, line: 210, baseType: !193, size: 32, align: 32, offset: 224)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "link_offset", scope: !309, file: !308, line: 224, baseType: !193, size: 32, align: 32, offset: 256)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "aligner", scope: !309, file: !308, line: 225, baseType: !193, size: 32, align: 32, offset: 288)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !309, file: !308, line: 226, baseType: !33, size: 64, align: 64, offset: 320)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !309, file: !308, line: 228, baseType: !337, size: 192, align: 64, offset: 384)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_stats", file: !308, line: 52, size: 192, align: 64, elements: !338)
!338 = !{!339, !342, !343}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "packets_sent", scope: !337, file: !308, line: 55, baseType: !340, size: 64, align: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !36, line: 55, baseType: !341)
!341 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "packet_errors", scope: !337, file: !308, line: 56, baseType: !340, size: 64, align: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_written", scope: !337, file: !308, line: 57, baseType: !340, size: 64, align: 64, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "ptag_state", scope: !309, file: !308, line: 229, baseType: !325, size: 32, align: 32, offset: 576)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !309, file: !308, line: 230, baseType: !346, size: 512, align: 8, offset: 608)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 512, align: 8, elements: !347)
!347 = !{!348}
!348 = !DISubrange(count: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "err_buf", scope: !309, file: !308, line: 232, baseType: !350, size: 2048, align: 8, offset: 1120)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 2048, align: 8, elements: !351)
!351 = !{!352}
!352 = !DISubrange(count: 256)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "total_size", scope: !309, file: !308, line: 233, baseType: !35, size: 32, align: 32, offset: 3168)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "src_ether", scope: !303, file: !302, line: 47, baseType: !92, size: 48, align: 8, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "dst_ether", scope: !303, file: !302, line: 48, baseType: !92, size: 48, align: 8, offset: 112)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "src_addr", scope: !303, file: !302, line: 49, baseType: !357, size: 1024, align: 64, offset: 192)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !76, line: 166, size: 1024, align: 64, elements: !358)
!358 = !{!359, !360, !364}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !357, file: !76, line: 168, baseType: !79, size: 16, align: 16)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !357, file: !76, line: 169, baseType: !361, size: 944, align: 8, offset: 16)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 944, align: 8, elements: !362)
!362 = !{!363}
!363 = !DISubrange(count: 118)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !357, file: !76, line: 170, baseType: !341, size: 64, align: 64, offset: 960)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "dst_addr", scope: !303, file: !302, line: 50, baseType: !357, size: 1024, align: 64, offset: 1216)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "src_seq", scope: !303, file: !302, line: 51, baseType: !35, size: 32, align: 32, offset: 2240)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "dst_seq", scope: !303, file: !302, line: 52, baseType: !35, size: 32, align: 32, offset: 2272)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "mss", scope: !303, file: !302, line: 53, baseType: !369, size: 64, align: 64, offset: 2304)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !370, line: 216, baseType: !341)
!370 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64, align: 64)
!372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !76, line: 33, baseType: !374)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !51, line: 189, baseType: !37)
!375 = !DILocalVariable(name: "ctx", arg: 1, scope: !297, file: !88, line: 254, type: !300)
!376 = !DILocation(line: 254, column: 31, scope: !297)
!377 = !DILocalVariable(name: "libnet", arg: 2, scope: !297, file: !88, line: 254, type: !306)
!378 = !DILocation(line: 254, column: 46, scope: !297)
!379 = !DILocalVariable(name: "mtu", arg: 3, scope: !297, file: !88, line: 254, type: !369)
!380 = !DILocation(line: 254, column: 61, scope: !297)
!381 = !DILocalVariable(name: "src_ether", arg: 4, scope: !297, file: !88, line: 255, type: !371)
!382 = !DILocation(line: 255, column: 32, scope: !297)
!383 = !DILocalVariable(name: "dst_ether", arg: 5, scope: !297, file: !88, line: 255, type: !371)
!384 = !DILocation(line: 255, column: 58, scope: !297)
!385 = !DILocalVariable(name: "src_addr", arg: 6, scope: !297, file: !88, line: 256, type: !73)
!386 = !DILocation(line: 256, column: 40, scope: !297)
!387 = !DILocalVariable(name: "src_addr_len", arg: 7, scope: !297, file: !88, line: 256, type: !373)
!388 = !DILocation(line: 256, column: 60, scope: !297)
!389 = !DILocalVariable(name: "dst_addr", arg: 8, scope: !297, file: !88, line: 257, type: !73)
!390 = !DILocation(line: 257, column: 40, scope: !297)
!391 = !DILocalVariable(name: "dst_addr_len", arg: 9, scope: !297, file: !88, line: 257, type: !373)
!392 = !DILocation(line: 257, column: 60, scope: !297)
!393 = !DILocation(line: 259, column: 16, scope: !297)
!394 = !DILocation(line: 259, column: 2, scope: !297)
!395 = !DILocation(line: 259, column: 7, scope: !297)
!396 = !DILocation(line: 259, column: 14, scope: !297)
!397 = !DILocation(line: 260, column: 9, scope: !297)
!398 = !DILocation(line: 260, column: 14, scope: !297)
!399 = !DILocation(line: 260, column: 2, scope: !297)
!400 = !DILocation(line: 260, column: 25, scope: !297)
!401 = !DILocation(line: 261, column: 9, scope: !297)
!402 = !DILocation(line: 261, column: 14, scope: !297)
!403 = !DILocation(line: 261, column: 2, scope: !297)
!404 = !DILocation(line: 261, column: 25, scope: !297)
!405 = !DILocation(line: 262, column: 10, scope: !297)
!406 = !DILocation(line: 262, column: 15, scope: !297)
!407 = !DILocation(line: 262, column: 2, scope: !297)
!408 = !DILocation(line: 262, column: 25, scope: !297)
!409 = !DILocation(line: 262, column: 35, scope: !297)
!410 = !DILocation(line: 263, column: 10, scope: !297)
!411 = !DILocation(line: 263, column: 15, scope: !297)
!412 = !DILocation(line: 263, column: 2, scope: !297)
!413 = !DILocation(line: 263, column: 25, scope: !297)
!414 = !DILocation(line: 263, column: 35, scope: !297)
!415 = !DILocation(line: 264, column: 2, scope: !297)
!416 = !DILocation(line: 264, column: 7, scope: !297)
!417 = !DILocation(line: 264, column: 15, scope: !297)
!418 = !DILocation(line: 265, column: 2, scope: !297)
!419 = !DILocation(line: 265, column: 7, scope: !297)
!420 = !DILocation(line: 265, column: 15, scope: !297)
!421 = !DILocation(line: 266, column: 6, scope: !422)
!422 = distinct !DILexicalBlock(scope: !297, file: !88, line: 266, column: 6)
!423 = !DILocation(line: 266, column: 6, scope: !297)
!424 = !DILocation(line: 267, column: 14, scope: !425)
!425 = distinct !DILexicalBlock(scope: !422, file: !88, line: 266, column: 11)
!426 = !DILocation(line: 267, column: 18, scope: !425)
!427 = !DILocation(line: 268, column: 21, scope: !425)
!428 = !DILocation(line: 268, column: 31, scope: !425)
!429 = !DILocation(line: 268, column: 41, scope: !425)
!430 = !DILocation(line: 268, column: 18, scope: !425)
!431 = !DILocation(line: 267, column: 3, scope: !425)
!432 = !DILocation(line: 267, column: 8, scope: !425)
!433 = !DILocation(line: 267, column: 12, scope: !425)
!434 = !DILocation(line: 271, column: 2, scope: !425)
!435 = !DILocation(line: 272, column: 14, scope: !436)
!436 = distinct !DILexicalBlock(scope: !422, file: !88, line: 271, column: 9)
!437 = !DILocation(line: 272, column: 24, scope: !436)
!438 = !DILocation(line: 272, column: 34, scope: !436)
!439 = !DILocation(line: 272, column: 3, scope: !436)
!440 = !DILocation(line: 272, column: 8, scope: !436)
!441 = !DILocation(line: 272, column: 12, scope: !436)
!442 = !DILocation(line: 274, column: 1, scope: !297)
!443 = distinct !DISubprogram(name: "logpkt_write_payload", scope: !88, file: !88, line: 598, type: !444, isLocal: false, isDefinition: true, scopeLine: 600, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !201)
!444 = !DISubroutineType(types: !445)
!445 = !{!193, !300, !193, !193, !371, !369}
!446 = !DILocalVariable(name: "ctx", arg: 1, scope: !443, file: !88, line: 598, type: !300)
!447 = !DILocation(line: 598, column: 36, scope: !443)
!448 = !DILocalVariable(name: "fd", arg: 2, scope: !443, file: !88, line: 598, type: !193)
!449 = !DILocation(line: 598, column: 45, scope: !443)
!450 = !DILocalVariable(name: "direction", arg: 3, scope: !443, file: !88, line: 598, type: !193)
!451 = !DILocation(line: 598, column: 53, scope: !443)
!452 = !DILocalVariable(name: "payload", arg: 4, scope: !443, file: !88, line: 599, type: !371)
!453 = !DILocation(line: 599, column: 37, scope: !443)
!454 = !DILocalVariable(name: "payloadlen", arg: 5, scope: !443, file: !88, line: 599, type: !369)
!455 = !DILocation(line: 599, column: 53, scope: !443)
!456 = !DILocalVariable(name: "other_direction", scope: !443, file: !88, line: 601, type: !193)
!457 = !DILocation(line: 601, column: 6, scope: !443)
!458 = !DILocation(line: 601, column: 25, scope: !443)
!459 = !DILocation(line: 601, column: 35, scope: !443)
!460 = !DILocation(line: 601, column: 24, scope: !443)
!461 = !DILocation(line: 604, column: 6, scope: !462)
!462 = distinct !DILexicalBlock(scope: !443, file: !88, line: 604, column: 6)
!463 = !DILocation(line: 604, column: 11, scope: !462)
!464 = !DILocation(line: 604, column: 19, scope: !462)
!465 = !DILocation(line: 604, column: 6, scope: !443)
!466 = !DILocation(line: 605, column: 34, scope: !467)
!467 = distinct !DILexicalBlock(scope: !468, file: !88, line: 605, column: 7)
!468 = distinct !DILexicalBlock(scope: !462, file: !88, line: 604, column: 25)
!469 = !DILocation(line: 605, column: 39, scope: !467)
!470 = !DILocation(line: 605, column: 7, scope: !467)
!471 = !DILocation(line: 605, column: 43, scope: !467)
!472 = !DILocation(line: 605, column: 7, scope: !468)
!473 = !DILocation(line: 606, column: 4, scope: !467)
!474 = !DILocation(line: 607, column: 2, scope: !468)
!475 = !DILocation(line: 609, column: 2, scope: !443)
!476 = !DILocation(line: 609, column: 9, scope: !477)
!477 = !DILexicalBlockFile(scope: !443, file: !88, discriminator: 1)
!478 = !DILocation(line: 609, column: 20, scope: !477)
!479 = !DILocation(line: 609, column: 2, scope: !477)
!480 = !DILocalVariable(name: "n", scope: !481, file: !88, line: 610, type: !369)
!481 = distinct !DILexicalBlock(scope: !443, file: !88, line: 609, column: 25)
!482 = !DILocation(line: 610, column: 10, scope: !481)
!483 = !DILocation(line: 610, column: 14, scope: !481)
!484 = !DILocation(line: 610, column: 27, scope: !481)
!485 = !DILocation(line: 610, column: 32, scope: !481)
!486 = !DILocation(line: 610, column: 25, scope: !481)
!487 = !DILocation(line: 610, column: 38, scope: !488)
!488 = !DILexicalBlockFile(scope: !481, file: !88, discriminator: 1)
!489 = !DILocation(line: 610, column: 43, scope: !488)
!490 = !DILocation(line: 610, column: 14, scope: !488)
!491 = !DILocation(line: 610, column: 49, scope: !492)
!492 = !DILexicalBlockFile(scope: !481, file: !88, discriminator: 2)
!493 = !DILocation(line: 610, column: 14, scope: !492)
!494 = !DILocation(line: 610, column: 14, scope: !495)
!495 = !DILexicalBlockFile(scope: !481, file: !88, discriminator: 3)
!496 = !DILocation(line: 610, column: 10, scope: !495)
!497 = !DILocation(line: 611, column: 27, scope: !498)
!498 = distinct !DILexicalBlock(scope: !481, file: !88, line: 611, column: 7)
!499 = !DILocation(line: 611, column: 32, scope: !498)
!500 = !DILocation(line: 611, column: 36, scope: !498)
!501 = !DILocation(line: 612, column: 42, scope: !498)
!502 = !DILocation(line: 612, column: 51, scope: !498)
!503 = !DILocation(line: 611, column: 7, scope: !498)
!504 = !DILocation(line: 612, column: 54, scope: !498)
!505 = !DILocation(line: 611, column: 7, scope: !481)
!506 = !DILocation(line: 614, column: 39, scope: !507)
!507 = distinct !DILexicalBlock(scope: !498, file: !88, line: 612, column: 61)
!508 = !DILocation(line: 614, column: 38, scope: !507)
!509 = !DILocation(line: 614, column: 29, scope: !510)
!510 = !DILexicalBlockFile(scope: !507, file: !88, discriminator: 1)
!511 = !DILocation(line: 613, column: 4, scope: !507)
!512 = !DILocation(line: 615, column: 4, scope: !507)
!513 = !DILocation(line: 617, column: 7, scope: !514)
!514 = distinct !DILexicalBlock(scope: !481, file: !88, line: 617, column: 7)
!515 = !DILocation(line: 617, column: 17, scope: !514)
!516 = !DILocation(line: 617, column: 7, scope: !481)
!517 = !DILocation(line: 618, column: 20, scope: !518)
!518 = distinct !DILexicalBlock(scope: !514, file: !88, line: 617, column: 23)
!519 = !DILocation(line: 618, column: 4, scope: !518)
!520 = !DILocation(line: 618, column: 9, scope: !518)
!521 = !DILocation(line: 618, column: 17, scope: !518)
!522 = !DILocation(line: 619, column: 3, scope: !518)
!523 = !DILocation(line: 620, column: 20, scope: !524)
!524 = distinct !DILexicalBlock(scope: !514, file: !88, line: 619, column: 10)
!525 = !DILocation(line: 620, column: 4, scope: !524)
!526 = !DILocation(line: 620, column: 9, scope: !524)
!527 = !DILocation(line: 620, column: 17, scope: !524)
!528 = !DILocation(line: 622, column: 14, scope: !481)
!529 = !DILocation(line: 622, column: 11, scope: !481)
!530 = !DILocation(line: 623, column: 17, scope: !481)
!531 = !DILocation(line: 623, column: 14, scope: !481)
!532 = !DILocation(line: 609, column: 2, scope: !533)
!533 = !DILexicalBlockFile(scope: !443, file: !88, discriminator: 2)
!534 = distinct !{!534, !475}
!535 = !DILocation(line: 626, column: 26, scope: !536)
!536 = distinct !DILexicalBlock(scope: !443, file: !88, line: 626, column: 6)
!537 = !DILocation(line: 626, column: 31, scope: !536)
!538 = !DILocation(line: 626, column: 35, scope: !536)
!539 = !DILocation(line: 626, column: 6, scope: !536)
!540 = !DILocation(line: 627, column: 42, scope: !536)
!541 = !DILocation(line: 626, column: 6, scope: !443)
!542 = !DILocation(line: 629, column: 28, scope: !543)
!543 = distinct !DILexicalBlock(scope: !536, file: !88, line: 627, column: 49)
!544 = !DILocation(line: 629, column: 27, scope: !543)
!545 = !DILocation(line: 629, column: 18, scope: !546)
!546 = !DILexicalBlockFile(scope: !543, file: !88, discriminator: 1)
!547 = !DILocation(line: 628, column: 3, scope: !543)
!548 = !DILocation(line: 630, column: 3, scope: !543)
!549 = !DILocation(line: 632, column: 2, scope: !443)
!550 = !DILocation(line: 633, column: 1, scope: !443)
!551 = distinct !DISubprogram(name: "logpkt_write_syn_handshake", scope: !88, file: !88, line: 574, type: !552, isLocal: true, isDefinition: true, scopeLine: 575, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !201)
!552 = !DISubroutineType(types: !553)
!553 = !{!193, !300, !193}
!554 = !DILocalVariable(name: "ctx", arg: 1, scope: !551, file: !88, line: 574, type: !300)
!555 = !DILocation(line: 574, column: 42, scope: !551)
!556 = !DILocalVariable(name: "fd", arg: 2, scope: !551, file: !88, line: 574, type: !193)
!557 = !DILocation(line: 574, column: 51, scope: !551)
!558 = !DILocation(line: 576, column: 17, scope: !551)
!559 = !DILocation(line: 576, column: 2, scope: !551)
!560 = !DILocation(line: 576, column: 7, scope: !551)
!561 = !DILocation(line: 576, column: 15, scope: !551)
!562 = !DILocation(line: 577, column: 26, scope: !563)
!563 = distinct !DILexicalBlock(scope: !551, file: !88, line: 577, column: 6)
!564 = !DILocation(line: 577, column: 31, scope: !563)
!565 = !DILocation(line: 577, column: 6, scope: !563)
!566 = !DILocation(line: 578, column: 42, scope: !563)
!567 = !DILocation(line: 577, column: 6, scope: !551)
!568 = !DILocation(line: 579, column: 3, scope: !563)
!569 = !DILocation(line: 580, column: 2, scope: !551)
!570 = !DILocation(line: 580, column: 7, scope: !551)
!571 = !DILocation(line: 580, column: 15, scope: !551)
!572 = !DILocation(line: 581, column: 17, scope: !551)
!573 = !DILocation(line: 581, column: 2, scope: !551)
!574 = !DILocation(line: 581, column: 7, scope: !551)
!575 = !DILocation(line: 581, column: 15, scope: !551)
!576 = !DILocation(line: 582, column: 26, scope: !577)
!577 = distinct !DILexicalBlock(scope: !551, file: !88, line: 582, column: 6)
!578 = !DILocation(line: 582, column: 31, scope: !577)
!579 = !DILocation(line: 582, column: 6, scope: !577)
!580 = !DILocation(line: 583, column: 49, scope: !577)
!581 = !DILocation(line: 582, column: 6, scope: !551)
!582 = !DILocation(line: 584, column: 3, scope: !577)
!583 = !DILocation(line: 585, column: 2, scope: !551)
!584 = !DILocation(line: 585, column: 7, scope: !551)
!585 = !DILocation(line: 585, column: 15, scope: !551)
!586 = !DILocation(line: 586, column: 26, scope: !587)
!587 = distinct !DILexicalBlock(scope: !551, file: !88, line: 586, column: 6)
!588 = !DILocation(line: 586, column: 31, scope: !587)
!589 = !DILocation(line: 586, column: 6, scope: !587)
!590 = !DILocation(line: 587, column: 42, scope: !587)
!591 = !DILocation(line: 586, column: 6, scope: !551)
!592 = !DILocation(line: 588, column: 3, scope: !587)
!593 = !DILocation(line: 589, column: 2, scope: !551)
!594 = !DILocation(line: 590, column: 1, scope: !551)
!595 = distinct !DISubprogram(name: "logpkt_write_packet", scope: !88, file: !88, line: 501, type: !596, isLocal: true, isDefinition: true, scopeLine: 503, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !201)
!596 = !DISubroutineType(types: !597)
!597 = !{!193, !300, !193, !193, !34, !371, !369}
!598 = !DILocalVariable(name: "ctx", arg: 1, scope: !595, file: !88, line: 501, type: !300)
!599 = !DILocation(line: 501, column: 35, scope: !595)
!600 = !DILocalVariable(name: "fd", arg: 2, scope: !595, file: !88, line: 501, type: !193)
!601 = !DILocation(line: 501, column: 44, scope: !595)
!602 = !DILocalVariable(name: "direction", arg: 3, scope: !595, file: !88, line: 501, type: !193)
!603 = !DILocation(line: 501, column: 52, scope: !595)
!604 = !DILocalVariable(name: "flags", arg: 4, scope: !595, file: !88, line: 501, type: !34)
!605 = !DILocation(line: 501, column: 68, scope: !595)
!606 = !DILocalVariable(name: "payload", arg: 5, scope: !595, file: !88, line: 502, type: !371)
!607 = !DILocation(line: 502, column: 36, scope: !595)
!608 = !DILocalVariable(name: "payloadlen", arg: 6, scope: !595, file: !88, line: 502, type: !369)
!609 = !DILocation(line: 502, column: 52, scope: !595)
!610 = !DILocalVariable(name: "rv", scope: !595, file: !88, line: 504, type: !193)
!611 = !DILocation(line: 504, column: 6, scope: !595)
!612 = !DILocation(line: 506, column: 6, scope: !613)
!613 = distinct !DILexicalBlock(scope: !595, file: !88, line: 506, column: 6)
!614 = !DILocation(line: 506, column: 9, scope: !613)
!615 = !DILocation(line: 506, column: 6, scope: !595)
!616 = !DILocalVariable(name: "buf", scope: !617, file: !88, line: 507, type: !618)
!617 = distinct !DILexicalBlock(scope: !613, file: !88, line: 506, column: 16)
!618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 12112, align: 8, elements: !619)
!619 = !{!620}
!620 = !DISubrange(count: 1514)
!621 = !DILocation(line: 507, column: 11, scope: !617)
!622 = !DILocalVariable(name: "sz", scope: !617, file: !88, line: 508, type: !369)
!623 = !DILocation(line: 508, column: 10, scope: !617)
!624 = !DILocation(line: 509, column: 7, scope: !625)
!625 = distinct !DILexicalBlock(scope: !617, file: !88, line: 509, column: 7)
!626 = !DILocation(line: 509, column: 17, scope: !625)
!627 = !DILocation(line: 509, column: 7, scope: !617)
!628 = !DILocation(line: 510, column: 27, scope: !629)
!629 = distinct !DILexicalBlock(scope: !625, file: !88, line: 509, column: 23)
!630 = !DILocation(line: 511, column: 27, scope: !629)
!631 = !DILocation(line: 511, column: 32, scope: !629)
!632 = !DILocation(line: 511, column: 43, scope: !629)
!633 = !DILocation(line: 511, column: 48, scope: !629)
!634 = !DILocation(line: 512, column: 55, scope: !629)
!635 = !DILocation(line: 512, column: 60, scope: !629)
!636 = !DILocation(line: 512, column: 28, scope: !629)
!637 = !DILocation(line: 513, column: 55, scope: !629)
!638 = !DILocation(line: 513, column: 60, scope: !629)
!639 = !DILocation(line: 513, column: 28, scope: !629)
!640 = !DILocation(line: 514, column: 27, scope: !629)
!641 = !DILocation(line: 515, column: 27, scope: !629)
!642 = !DILocation(line: 515, column: 32, scope: !629)
!643 = !DILocation(line: 515, column: 41, scope: !629)
!644 = !DILocation(line: 515, column: 46, scope: !629)
!645 = !DILocation(line: 516, column: 27, scope: !629)
!646 = !DILocation(line: 516, column: 36, scope: !629)
!647 = !DILocation(line: 510, column: 9, scope: !629)
!648 = !DILocation(line: 510, column: 7, scope: !629)
!649 = !DILocation(line: 517, column: 3, scope: !629)
!650 = !DILocation(line: 518, column: 27, scope: !651)
!651 = distinct !DILexicalBlock(scope: !625, file: !88, line: 517, column: 10)
!652 = !DILocation(line: 519, column: 27, scope: !651)
!653 = !DILocation(line: 519, column: 32, scope: !651)
!654 = !DILocation(line: 519, column: 43, scope: !651)
!655 = !DILocation(line: 519, column: 48, scope: !651)
!656 = !DILocation(line: 520, column: 55, scope: !651)
!657 = !DILocation(line: 520, column: 60, scope: !651)
!658 = !DILocation(line: 520, column: 28, scope: !651)
!659 = !DILocation(line: 521, column: 55, scope: !651)
!660 = !DILocation(line: 521, column: 60, scope: !651)
!661 = !DILocation(line: 521, column: 28, scope: !651)
!662 = !DILocation(line: 522, column: 27, scope: !651)
!663 = !DILocation(line: 523, column: 27, scope: !651)
!664 = !DILocation(line: 523, column: 32, scope: !651)
!665 = !DILocation(line: 523, column: 41, scope: !651)
!666 = !DILocation(line: 523, column: 46, scope: !651)
!667 = !DILocation(line: 524, column: 27, scope: !651)
!668 = !DILocation(line: 524, column: 36, scope: !651)
!669 = !DILocation(line: 518, column: 9, scope: !651)
!670 = !DILocation(line: 518, column: 7, scope: !651)
!671 = !DILocation(line: 526, column: 26, scope: !617)
!672 = !DILocation(line: 526, column: 31, scope: !617)
!673 = !DILocation(line: 526, column: 35, scope: !617)
!674 = !DILocation(line: 526, column: 8, scope: !617)
!675 = !DILocation(line: 526, column: 6, scope: !617)
!676 = !DILocation(line: 527, column: 7, scope: !677)
!677 = distinct !DILexicalBlock(scope: !617, file: !88, line: 527, column: 7)
!678 = !DILocation(line: 527, column: 10, scope: !677)
!679 = !DILocation(line: 527, column: 7, scope: !617)
!680 = !DILocation(line: 528, column: 4, scope: !681)
!681 = distinct !DILexicalBlock(scope: !677, file: !88, line: 527, column: 17)
!682 = !DILocation(line: 529, column: 4, scope: !681)
!683 = !DILocation(line: 531, column: 2, scope: !617)
!684 = !DILocation(line: 536, column: 7, scope: !685)
!685 = distinct !DILexicalBlock(scope: !686, file: !88, line: 536, column: 7)
!686 = distinct !DILexicalBlock(scope: !613, file: !88, line: 531, column: 9)
!687 = !DILocation(line: 536, column: 17, scope: !685)
!688 = !DILocation(line: 536, column: 7, scope: !686)
!689 = !DILocation(line: 537, column: 29, scope: !690)
!690 = distinct !DILexicalBlock(scope: !685, file: !88, line: 536, column: 23)
!691 = !DILocation(line: 537, column: 34, scope: !690)
!692 = !DILocation(line: 538, column: 29, scope: !690)
!693 = !DILocation(line: 538, column: 34, scope: !690)
!694 = !DILocation(line: 538, column: 45, scope: !690)
!695 = !DILocation(line: 538, column: 50, scope: !690)
!696 = !DILocation(line: 539, column: 57, scope: !690)
!697 = !DILocation(line: 539, column: 62, scope: !690)
!698 = !DILocation(line: 539, column: 30, scope: !690)
!699 = !DILocation(line: 540, column: 57, scope: !690)
!700 = !DILocation(line: 540, column: 62, scope: !690)
!701 = !DILocation(line: 540, column: 30, scope: !690)
!702 = !DILocation(line: 541, column: 29, scope: !690)
!703 = !DILocation(line: 542, column: 29, scope: !690)
!704 = !DILocation(line: 542, column: 34, scope: !690)
!705 = !DILocation(line: 542, column: 43, scope: !690)
!706 = !DILocation(line: 542, column: 48, scope: !690)
!707 = !DILocation(line: 543, column: 29, scope: !690)
!708 = !DILocation(line: 543, column: 38, scope: !690)
!709 = !DILocation(line: 537, column: 9, scope: !690)
!710 = !DILocation(line: 537, column: 7, scope: !690)
!711 = !DILocation(line: 544, column: 3, scope: !690)
!712 = !DILocation(line: 545, column: 29, scope: !713)
!713 = distinct !DILexicalBlock(scope: !685, file: !88, line: 544, column: 10)
!714 = !DILocation(line: 545, column: 34, scope: !713)
!715 = !DILocation(line: 546, column: 29, scope: !713)
!716 = !DILocation(line: 546, column: 34, scope: !713)
!717 = !DILocation(line: 546, column: 45, scope: !713)
!718 = !DILocation(line: 546, column: 50, scope: !713)
!719 = !DILocation(line: 547, column: 57, scope: !713)
!720 = !DILocation(line: 547, column: 62, scope: !713)
!721 = !DILocation(line: 547, column: 30, scope: !713)
!722 = !DILocation(line: 548, column: 57, scope: !713)
!723 = !DILocation(line: 548, column: 62, scope: !713)
!724 = !DILocation(line: 548, column: 30, scope: !713)
!725 = !DILocation(line: 549, column: 29, scope: !713)
!726 = !DILocation(line: 550, column: 29, scope: !713)
!727 = !DILocation(line: 550, column: 34, scope: !713)
!728 = !DILocation(line: 550, column: 43, scope: !713)
!729 = !DILocation(line: 550, column: 48, scope: !713)
!730 = !DILocation(line: 551, column: 29, scope: !713)
!731 = !DILocation(line: 551, column: 38, scope: !713)
!732 = !DILocation(line: 545, column: 9, scope: !713)
!733 = !DILocation(line: 545, column: 7, scope: !713)
!734 = !DILocation(line: 553, column: 7, scope: !735)
!735 = distinct !DILexicalBlock(scope: !686, file: !88, line: 553, column: 7)
!736 = !DILocation(line: 553, column: 10, scope: !735)
!737 = !DILocation(line: 553, column: 7, scope: !686)
!738 = !DILocation(line: 554, column: 4, scope: !739)
!739 = distinct !DILexicalBlock(scope: !735, file: !88, line: 553, column: 17)
!740 = !DILocation(line: 555, column: 4, scope: !739)
!741 = !DILocation(line: 557, column: 21, scope: !686)
!742 = !DILocation(line: 557, column: 26, scope: !686)
!743 = !DILocation(line: 557, column: 8, scope: !686)
!744 = !DILocation(line: 557, column: 6, scope: !686)
!745 = !DILocation(line: 558, column: 7, scope: !746)
!746 = distinct !DILexicalBlock(scope: !686, file: !88, line: 558, column: 7)
!747 = !DILocation(line: 558, column: 10, scope: !746)
!748 = !DILocation(line: 558, column: 7, scope: !686)
!749 = !DILocation(line: 560, column: 35, scope: !750)
!750 = distinct !DILexicalBlock(scope: !746, file: !88, line: 558, column: 17)
!751 = !DILocation(line: 560, column: 40, scope: !750)
!752 = !DILocation(line: 560, column: 19, scope: !750)
!753 = !DILocation(line: 559, column: 4, scope: !750)
!754 = !DILocation(line: 561, column: 3, scope: !750)
!755 = !DILocation(line: 562, column: 23, scope: !686)
!756 = !DILocation(line: 562, column: 28, scope: !686)
!757 = !DILocation(line: 562, column: 3, scope: !686)
!758 = !DILocation(line: 567, column: 9, scope: !595)
!759 = !DILocation(line: 567, column: 2, scope: !595)
!760 = !DILocation(line: 568, column: 1, scope: !595)
!761 = distinct !DISubprogram(name: "logpkt_write_close", scope: !88, file: !88, line: 640, type: !762, isLocal: false, isDefinition: true, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !201)
!762 = !DISubroutineType(types: !763)
!763 = !{!193, !300, !193, !193}
!764 = !DILocalVariable(name: "ctx", arg: 1, scope: !761, file: !88, line: 640, type: !300)
!765 = !DILocation(line: 640, column: 34, scope: !761)
!766 = !DILocalVariable(name: "fd", arg: 2, scope: !761, file: !88, line: 640, type: !193)
!767 = !DILocation(line: 640, column: 43, scope: !761)
!768 = !DILocalVariable(name: "direction", arg: 3, scope: !761, file: !88, line: 640, type: !193)
!769 = !DILocation(line: 640, column: 51, scope: !761)
!770 = !DILocalVariable(name: "other_direction", scope: !761, file: !88, line: 641, type: !193)
!771 = !DILocation(line: 641, column: 6, scope: !761)
!772 = !DILocation(line: 641, column: 25, scope: !761)
!773 = !DILocation(line: 641, column: 35, scope: !761)
!774 = !DILocation(line: 641, column: 24, scope: !761)
!775 = !DILocation(line: 644, column: 6, scope: !776)
!776 = distinct !DILexicalBlock(scope: !761, file: !88, line: 644, column: 6)
!777 = !DILocation(line: 644, column: 11, scope: !776)
!778 = !DILocation(line: 644, column: 19, scope: !776)
!779 = !DILocation(line: 644, column: 6, scope: !761)
!780 = !DILocation(line: 645, column: 34, scope: !781)
!781 = distinct !DILexicalBlock(scope: !782, file: !88, line: 645, column: 7)
!782 = distinct !DILexicalBlock(scope: !776, file: !88, line: 644, column: 25)
!783 = !DILocation(line: 645, column: 39, scope: !781)
!784 = !DILocation(line: 645, column: 7, scope: !781)
!785 = !DILocation(line: 645, column: 43, scope: !781)
!786 = !DILocation(line: 645, column: 7, scope: !782)
!787 = !DILocation(line: 646, column: 4, scope: !781)
!788 = !DILocation(line: 647, column: 2, scope: !782)
!789 = !DILocation(line: 649, column: 26, scope: !790)
!790 = distinct !DILexicalBlock(scope: !761, file: !88, line: 649, column: 6)
!791 = !DILocation(line: 649, column: 31, scope: !790)
!792 = !DILocation(line: 649, column: 35, scope: !790)
!793 = !DILocation(line: 649, column: 6, scope: !790)
!794 = !DILocation(line: 650, column: 49, scope: !790)
!795 = !DILocation(line: 649, column: 6, scope: !761)
!796 = !DILocation(line: 651, column: 3, scope: !797)
!797 = distinct !DILexicalBlock(scope: !790, file: !88, line: 650, column: 56)
!798 = !DILocation(line: 652, column: 3, scope: !797)
!799 = !DILocation(line: 654, column: 6, scope: !800)
!800 = distinct !DILexicalBlock(scope: !761, file: !88, line: 654, column: 6)
!801 = !DILocation(line: 654, column: 16, scope: !800)
!802 = !DILocation(line: 654, column: 6, scope: !761)
!803 = !DILocation(line: 655, column: 3, scope: !804)
!804 = distinct !DILexicalBlock(scope: !800, file: !88, line: 654, column: 22)
!805 = !DILocation(line: 655, column: 8, scope: !804)
!806 = !DILocation(line: 655, column: 16, scope: !804)
!807 = !DILocation(line: 656, column: 2, scope: !804)
!808 = !DILocation(line: 657, column: 3, scope: !809)
!809 = distinct !DILexicalBlock(scope: !800, file: !88, line: 656, column: 9)
!810 = !DILocation(line: 657, column: 8, scope: !809)
!811 = !DILocation(line: 657, column: 16, scope: !809)
!812 = !DILocation(line: 660, column: 26, scope: !813)
!813 = distinct !DILexicalBlock(scope: !761, file: !88, line: 660, column: 6)
!814 = !DILocation(line: 660, column: 31, scope: !813)
!815 = !DILocation(line: 660, column: 35, scope: !813)
!816 = !DILocation(line: 660, column: 6, scope: !813)
!817 = !DILocation(line: 661, column: 49, scope: !813)
!818 = !DILocation(line: 660, column: 6, scope: !761)
!819 = !DILocation(line: 662, column: 3, scope: !820)
!820 = distinct !DILexicalBlock(scope: !813, file: !88, line: 661, column: 56)
!821 = !DILocation(line: 663, column: 3, scope: !820)
!822 = !DILocation(line: 665, column: 6, scope: !823)
!823 = distinct !DILexicalBlock(scope: !761, file: !88, line: 665, column: 6)
!824 = !DILocation(line: 665, column: 22, scope: !823)
!825 = !DILocation(line: 665, column: 6, scope: !761)
!826 = !DILocation(line: 666, column: 3, scope: !827)
!827 = distinct !DILexicalBlock(scope: !823, file: !88, line: 665, column: 28)
!828 = !DILocation(line: 666, column: 8, scope: !827)
!829 = !DILocation(line: 666, column: 16, scope: !827)
!830 = !DILocation(line: 667, column: 2, scope: !827)
!831 = !DILocation(line: 668, column: 3, scope: !832)
!832 = distinct !DILexicalBlock(scope: !823, file: !88, line: 667, column: 9)
!833 = !DILocation(line: 668, column: 8, scope: !832)
!834 = !DILocation(line: 668, column: 16, scope: !832)
!835 = !DILocation(line: 671, column: 26, scope: !836)
!836 = distinct !DILexicalBlock(scope: !761, file: !88, line: 671, column: 6)
!837 = !DILocation(line: 671, column: 31, scope: !836)
!838 = !DILocation(line: 671, column: 35, scope: !836)
!839 = !DILocation(line: 671, column: 6, scope: !836)
!840 = !DILocation(line: 672, column: 42, scope: !836)
!841 = !DILocation(line: 671, column: 6, scope: !761)
!842 = !DILocation(line: 673, column: 3, scope: !843)
!843 = distinct !DILexicalBlock(scope: !836, file: !88, line: 672, column: 49)
!844 = !DILocation(line: 674, column: 3, scope: !843)
!845 = !DILocation(line: 677, column: 2, scope: !761)
!846 = !DILocation(line: 678, column: 1, scope: !761)
!847 = distinct !DISubprogram(name: "logpkt_ether_lookup", scope: !88, file: !88, line: 728, type: !848, isLocal: false, isDefinition: true, scopeLine: 731, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !201)
!848 = !DISubroutineType(types: !849)
!849 = !{!193, !306, !39, !39, !850, !850}
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64, align: 64)
!851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!852 = !DILocalVariable(name: "libnet", arg: 1, scope: !847, file: !88, line: 728, type: !306)
!853 = !DILocation(line: 728, column: 31, scope: !847)
!854 = !DILocalVariable(name: "src_ether", arg: 2, scope: !847, file: !88, line: 729, type: !39)
!855 = !DILocation(line: 729, column: 30, scope: !847)
!856 = !DILocalVariable(name: "dst_ether", arg: 3, scope: !847, file: !88, line: 729, type: !39)
!857 = !DILocation(line: 729, column: 50, scope: !847)
!858 = !DILocalVariable(name: "dst_ip_s", arg: 4, scope: !847, file: !88, line: 730, type: !850)
!859 = !DILocation(line: 730, column: 33, scope: !847)
!860 = !DILocalVariable(name: "dst_if_s", arg: 5, scope: !847, file: !88, line: 730, type: !850)
!861 = !DILocation(line: 730, column: 55, scope: !847)
!862 = !DILocalVariable(name: "errbuf", scope: !847, file: !88, line: 732, type: !350)
!863 = !DILocation(line: 732, column: 7, scope: !847)
!864 = !DILocalVariable(name: "broadcast_ether", scope: !847, file: !88, line: 733, type: !92)
!865 = !DILocation(line: 733, column: 10, scope: !847)
!866 = !DILocalVariable(name: "zero_ether", scope: !847, file: !88, line: 735, type: !92)
!867 = !DILocation(line: 735, column: 10, scope: !847)
!868 = !DILocalVariable(name: "src_ether_addr", scope: !847, file: !88, line: 737, type: !869)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64, align: 64)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_ether_addr", file: !179, line: 530, size: 48, align: 8, elements: !871)
!871 = !{!872}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "ether_addr_octet", scope: !870, file: !179, line: 532, baseType: !92, size: 48, align: 8)
!873 = !DILocation(line: 737, column: 28, scope: !847)
!874 = !DILocalVariable(name: "src_ip", scope: !847, file: !88, line: 738, type: !35)
!875 = !DILocation(line: 738, column: 11, scope: !847)
!876 = !DILocalVariable(name: "bp", scope: !847, file: !88, line: 739, type: !877)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_program", file: !67, line: 106, size: 128, align: 64, elements: !878)
!878 = !{!879, !880}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "bf_len", scope: !877, file: !67, line: 107, baseType: !68, size: 32, align: 32)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "bf_insns", scope: !877, file: !67, line: 108, baseType: !881, size: 64, align: 64, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64, align: 64)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_insn", file: !67, line: 1472, size: 64, align: 32, elements: !883)
!883 = !{!884, !887, !888, !889}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !882, file: !67, line: 1473, baseType: !885, size: 16, align: 16)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_short", file: !49, line: 34, baseType: !886)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_short", file: !51, line: 31, baseType: !81)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "jt", scope: !882, file: !67, line: 1474, baseType: !48, size: 8, align: 8, offset: 16)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "jf", scope: !882, file: !67, line: 1475, baseType: !48, size: 8, align: 8, offset: 24)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !882, file: !67, line: 1476, baseType: !66, size: 32, align: 32, offset: 32)
!890 = !DILocation(line: 739, column: 21, scope: !847)
!891 = !DILocalVariable(name: "count", scope: !847, file: !88, line: 740, type: !193)
!892 = !DILocation(line: 740, column: 6, scope: !847)
!893 = !DILocalVariable(name: "ctx", scope: !847, file: !88, line: 741, type: !188)
!894 = !DILocation(line: 741, column: 30, scope: !847)
!895 = !DILocation(line: 743, column: 17, scope: !896)
!896 = distinct !DILexicalBlock(scope: !847, file: !88, line: 743, column: 6)
!897 = !DILocation(line: 743, column: 6, scope: !896)
!898 = !DILocation(line: 743, column: 27, scope: !896)
!899 = !DILocation(line: 743, column: 6, scope: !847)
!900 = !DILocation(line: 744, column: 3, scope: !901)
!901 = distinct !DILexicalBlock(scope: !896, file: !88, line: 743, column: 38)
!902 = !DILocation(line: 745, column: 3, scope: !901)
!903 = !DILocation(line: 748, column: 6, scope: !847)
!904 = !DILocation(line: 748, column: 13, scope: !847)
!905 = !DILocation(line: 749, column: 29, scope: !847)
!906 = !DILocation(line: 749, column: 45, scope: !847)
!907 = !DILocation(line: 749, column: 11, scope: !847)
!908 = !DILocation(line: 749, column: 6, scope: !847)
!909 = !DILocation(line: 749, column: 9, scope: !847)
!910 = !DILocation(line: 751, column: 10, scope: !911)
!911 = distinct !DILexicalBlock(scope: !847, file: !88, line: 751, column: 6)
!912 = !DILocation(line: 751, column: 13, scope: !911)
!913 = !DILocation(line: 751, column: 6, scope: !847)
!914 = !DILocation(line: 753, column: 34, scope: !915)
!915 = distinct !DILexicalBlock(scope: !911, file: !88, line: 751, column: 30)
!916 = !DILocation(line: 753, column: 18, scope: !915)
!917 = !DILocation(line: 752, column: 3, scope: !915)
!918 = !DILocation(line: 754, column: 3, scope: !915)
!919 = !DILocation(line: 756, column: 30, scope: !847)
!920 = !DILocation(line: 756, column: 11, scope: !847)
!921 = !DILocation(line: 756, column: 9, scope: !847)
!922 = !DILocation(line: 757, column: 6, scope: !923)
!923 = distinct !DILexicalBlock(scope: !847, file: !88, line: 757, column: 6)
!924 = !DILocation(line: 757, column: 13, scope: !923)
!925 = !DILocation(line: 757, column: 6, scope: !847)
!926 = !DILocation(line: 759, column: 34, scope: !927)
!927 = distinct !DILexicalBlock(scope: !923, file: !88, line: 757, column: 30)
!928 = !DILocation(line: 759, column: 18, scope: !927)
!929 = !DILocation(line: 758, column: 3, scope: !927)
!930 = !DILocation(line: 760, column: 3, scope: !927)
!931 = !DILocation(line: 762, column: 37, scope: !847)
!932 = !DILocation(line: 762, column: 19, scope: !847)
!933 = !DILocation(line: 762, column: 17, scope: !847)
!934 = !DILocation(line: 763, column: 6, scope: !935)
!935 = distinct !DILexicalBlock(scope: !847, file: !88, line: 763, column: 6)
!936 = !DILocation(line: 763, column: 21, scope: !935)
!937 = !DILocation(line: 763, column: 6, scope: !847)
!938 = !DILocation(line: 765, column: 34, scope: !939)
!939 = distinct !DILexicalBlock(scope: !935, file: !88, line: 763, column: 29)
!940 = !DILocation(line: 765, column: 18, scope: !939)
!941 = !DILocation(line: 764, column: 3, scope: !939)
!942 = !DILocation(line: 766, column: 3, scope: !939)
!943 = !DILocation(line: 768, column: 9, scope: !847)
!944 = !DILocation(line: 768, column: 20, scope: !847)
!945 = !DILocation(line: 768, column: 36, scope: !847)
!946 = !DILocation(line: 768, column: 2, scope: !847)
!947 = !DILocation(line: 771, column: 27, scope: !948)
!948 = distinct !DILexicalBlock(scope: !847, file: !88, line: 770, column: 6)
!949 = !DILocation(line: 772, column: 27, scope: !948)
!950 = !DILocation(line: 773, column: 27, scope: !948)
!951 = !DILocation(line: 774, column: 42, scope: !948)
!952 = !DILocation(line: 774, column: 27, scope: !948)
!953 = !DILocation(line: 775, column: 27, scope: !948)
!954 = !DILocation(line: 770, column: 6, scope: !948)
!955 = !DILocation(line: 775, column: 35, scope: !948)
!956 = !DILocation(line: 770, column: 6, scope: !847)
!957 = !DILocation(line: 777, column: 34, scope: !958)
!958 = distinct !DILexicalBlock(scope: !948, file: !88, line: 775, column: 42)
!959 = !DILocation(line: 777, column: 18, scope: !958)
!960 = !DILocation(line: 776, column: 3, scope: !958)
!961 = !DILocation(line: 778, column: 3, scope: !958)
!962 = !DILocation(line: 781, column: 32, scope: !963)
!963 = distinct !DILexicalBlock(scope: !847, file: !88, line: 781, column: 6)
!964 = !DILocation(line: 783, column: 32, scope: !963)
!965 = !DILocation(line: 781, column: 6, scope: !963)
!966 = !DILocation(line: 783, column: 40, scope: !963)
!967 = !DILocation(line: 781, column: 6, scope: !847)
!968 = !DILocation(line: 785, column: 34, scope: !969)
!969 = distinct !DILexicalBlock(scope: !963, file: !88, line: 783, column: 47)
!970 = !DILocation(line: 785, column: 18, scope: !969)
!971 = !DILocation(line: 784, column: 3, scope: !969)
!972 = !DILocation(line: 786, column: 3, scope: !969)
!973 = !DILocalVariable(name: "pcap", scope: !847, file: !88, line: 789, type: !974)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64, align: 64)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "pcap_t", file: !43, line: 79, baseType: !976)
!976 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcap", file: !43, line: 79, flags: DIFlagFwdDecl)
!977 = !DILocation(line: 789, column: 10, scope: !847)
!978 = !DILocation(line: 789, column: 32, scope: !847)
!979 = !DILocation(line: 789, column: 54, scope: !847)
!980 = !DILocation(line: 789, column: 17, scope: !847)
!981 = !DILocation(line: 790, column: 6, scope: !982)
!982 = distinct !DILexicalBlock(scope: !847, file: !88, line: 790, column: 6)
!983 = !DILocation(line: 790, column: 11, scope: !982)
!984 = !DILocation(line: 790, column: 6, scope: !847)
!985 = !DILocation(line: 791, column: 53, scope: !986)
!986 = distinct !DILexicalBlock(scope: !982, file: !88, line: 790, column: 19)
!987 = !DILocation(line: 791, column: 3, scope: !986)
!988 = !DILocation(line: 792, column: 3, scope: !986)
!989 = !DILocation(line: 795, column: 19, scope: !990)
!990 = distinct !DILexicalBlock(scope: !847, file: !88, line: 795, column: 6)
!991 = !DILocation(line: 795, column: 6, scope: !990)
!992 = !DILocation(line: 795, column: 44, scope: !990)
!993 = !DILocation(line: 795, column: 6, scope: !847)
!994 = !DILocation(line: 797, column: 30, scope: !995)
!995 = distinct !DILexicalBlock(scope: !990, file: !88, line: 795, column: 51)
!996 = !DILocation(line: 797, column: 18, scope: !995)
!997 = !DILocation(line: 796, column: 3, scope: !995)
!998 = !DILocation(line: 798, column: 3, scope: !995)
!999 = !DILocation(line: 800, column: 21, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !847, file: !88, line: 800, column: 6)
!1001 = !DILocation(line: 800, column: 6, scope: !1000)
!1002 = !DILocation(line: 800, column: 32, scope: !1000)
!1003 = !DILocation(line: 800, column: 6, scope: !847)
!1004 = !DILocation(line: 802, column: 30, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1000, file: !88, line: 800, column: 39)
!1006 = !DILocation(line: 802, column: 18, scope: !1005)
!1007 = !DILocation(line: 801, column: 3, scope: !1005)
!1008 = !DILocation(line: 803, column: 3, scope: !1005)
!1009 = !DILocation(line: 806, column: 2, scope: !847)
!1010 = distinct !{!1010, !1009}
!1011 = !DILocation(line: 807, column: 20, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1013, file: !88, line: 807, column: 7)
!1013 = distinct !DILexicalBlock(scope: !847, file: !88, line: 806, column: 5)
!1014 = !DILocation(line: 807, column: 7, scope: !1012)
!1015 = !DILocation(line: 807, column: 28, scope: !1012)
!1016 = !DILocation(line: 807, column: 7, scope: !1013)
!1017 = !DILocation(line: 810, column: 22, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !88, line: 810, column: 8)
!1019 = distinct !DILexicalBlock(scope: !1012, file: !88, line: 807, column: 35)
!1020 = !DILocation(line: 812, column: 22, scope: !1018)
!1021 = !DILocation(line: 810, column: 8, scope: !1018)
!1022 = !DILocation(line: 812, column: 37, scope: !1018)
!1023 = !DILocation(line: 810, column: 8, scope: !1019)
!1024 = !DILocation(line: 814, column: 32, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1018, file: !88, line: 812, column: 42)
!1026 = !DILocation(line: 814, column: 20, scope: !1025)
!1027 = !DILocation(line: 813, column: 5, scope: !1025)
!1028 = !DILocation(line: 815, column: 5, scope: !1025)
!1029 = !DILocation(line: 817, column: 3, scope: !1019)
!1030 = !DILocation(line: 819, column: 35, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1012, file: !88, line: 817, column: 10)
!1032 = !DILocation(line: 819, column: 19, scope: !1031)
!1033 = !DILocation(line: 818, column: 4, scope: !1031)
!1034 = !DILocation(line: 820, column: 4, scope: !1031)
!1035 = !DILocation(line: 822, column: 3, scope: !1013)
!1036 = !DILocation(line: 823, column: 2, scope: !1013)
!1037 = !DILocation(line: 823, column: 15, scope: !1038)
!1038 = !DILexicalBlockFile(scope: !847, file: !88, discriminator: 1)
!1039 = !DILocation(line: 823, column: 22, scope: !1038)
!1040 = !DILocation(line: 823, column: 28, scope: !1038)
!1041 = !DILocation(line: 823, column: 31, scope: !1042)
!1042 = !DILexicalBlockFile(scope: !847, file: !88, discriminator: 2)
!1043 = !DILocation(line: 823, column: 39, scope: !1042)
!1044 = !DILocation(line: 823, column: 2, scope: !1045)
!1045 = !DILexicalBlockFile(scope: !1013, file: !88, discriminator: 3)
!1046 = !DILocation(line: 825, column: 10, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !847, file: !88, line: 825, column: 6)
!1048 = !DILocation(line: 825, column: 17, scope: !1047)
!1049 = !DILocation(line: 825, column: 6, scope: !847)
!1050 = !DILocation(line: 826, column: 10, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1047, file: !88, line: 825, column: 23)
!1052 = !DILocation(line: 826, column: 26, scope: !1051)
!1053 = !DILocation(line: 826, column: 3, scope: !1051)
!1054 = !DILocation(line: 829, column: 18, scope: !1051)
!1055 = !DILocation(line: 829, column: 32, scope: !1051)
!1056 = !DILocation(line: 829, column: 46, scope: !1051)
!1057 = !DILocation(line: 830, column: 18, scope: !1051)
!1058 = !DILocation(line: 830, column: 32, scope: !1051)
!1059 = !DILocation(line: 830, column: 46, scope: !1051)
!1060 = !DILocation(line: 827, column: 3, scope: !1051)
!1061 = !DILocation(line: 831, column: 2, scope: !1051)
!1062 = !DILocation(line: 825, column: 20, scope: !1063)
!1063 = !DILexicalBlockFile(scope: !1047, file: !88, discriminator: 1)
!1064 = !DILocation(line: 834, column: 2, scope: !847)
!1065 = !DILocation(line: 836, column: 13, scope: !847)
!1066 = !DILocation(line: 836, column: 2, scope: !847)
!1067 = !DILocation(line: 838, column: 22, scope: !847)
!1068 = !DILocation(line: 838, column: 2, scope: !847)
!1069 = !DILocation(line: 839, column: 13, scope: !847)
!1070 = !DILocation(line: 839, column: 2, scope: !847)
!1071 = !DILocation(line: 840, column: 1, scope: !847)
!1072 = distinct !DISubprogram(name: "logpkt_recv_arp_reply", scope: !88, file: !88, line: 691, type: !1073, isLocal: true, isDefinition: true, scopeLine: 694, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !201)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{null, !39, !52, !371}
!1075 = !DILocalVariable(name: "user", arg: 1, scope: !1072, file: !88, line: 691, type: !39)
!1076 = !DILocation(line: 691, column: 32, scope: !1072)
!1077 = !DILocalVariable(name: "h", arg: 2, scope: !1072, file: !88, line: 692, type: !52)
!1078 = !DILocation(line: 692, column: 73, scope: !1072)
!1079 = !DILocalVariable(name: "packet", arg: 3, scope: !1072, file: !88, line: 693, type: !371)
!1080 = !DILocation(line: 693, column: 38, scope: !1072)
!1081 = !DILocalVariable(name: "ctx", scope: !1072, file: !88, line: 695, type: !187)
!1082 = !DILocation(line: 695, column: 31, scope: !1072)
!1083 = !DILocation(line: 695, column: 67, scope: !1072)
!1084 = !DILocation(line: 695, column: 37, scope: !1072)
!1085 = !DILocalVariable(name: "heth", scope: !1072, file: !88, line: 696, type: !1086)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64, align: 64)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_802_3_hdr", file: !179, line: 183, size: 112, align: 16, elements: !1088)
!1088 = !{!1089, !1090, !1091}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "_802_3_dhost", scope: !1087, file: !179, line: 185, baseType: !92, size: 48, align: 8)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "_802_3_shost", scope: !1087, file: !179, line: 186, baseType: !92, size: 48, align: 8, offset: 48)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_802_3_len", scope: !1087, file: !179, line: 187, baseType: !97, size: 16, align: 16, offset: 96)
!1092 = !DILocation(line: 696, column: 27, scope: !1072)
!1093 = !DILocation(line: 696, column: 41, scope: !1072)
!1094 = !DILocation(line: 696, column: 34, scope: !1072)
!1095 = !DILocalVariable(name: "harp", scope: !1072, file: !88, line: 697, type: !1096)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64, align: 64)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_arp_hdr", file: !179, line: 196, size: 64, align: 16, elements: !1098)
!1098 = !{!1099, !1100, !1101, !1102, !1103}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "ar_hrd", scope: !1097, file: !179, line: 198, baseType: !97, size: 16, align: 16)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "ar_pro", scope: !1097, file: !179, line: 213, baseType: !97, size: 16, align: 16, offset: 16)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "ar_hln", scope: !1097, file: !179, line: 214, baseType: !40, size: 8, align: 8, offset: 32)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "ar_pln", scope: !1097, file: !179, line: 215, baseType: !40, size: 8, align: 8, offset: 40)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "ar_op", scope: !1097, file: !179, line: 216, baseType: !97, size: 16, align: 16, offset: 48)
!1104 = !DILocation(line: 697, column: 25, scope: !1072)
!1105 = !DILocation(line: 697, column: 47, scope: !1072)
!1106 = !DILocation(line: 697, column: 40, scope: !1072)
!1107 = !DILocation(line: 697, column: 52, scope: !1072)
!1108 = !DILocation(line: 697, column: 32, scope: !1072)
!1109 = !DILocation(line: 700, column: 12, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1072, file: !88, line: 700, column: 6)
!1111 = !DILocation(line: 700, column: 18, scope: !1110)
!1112 = !DILocation(line: 700, column: 6, scope: !1110)
!1113 = !DILocation(line: 700, column: 25, scope: !1110)
!1114 = !DILocation(line: 700, column: 6, scope: !1072)
!1115 = !DILocation(line: 701, column: 3, scope: !1110)
!1116 = !DILocation(line: 702, column: 12, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1072, file: !88, line: 702, column: 6)
!1118 = !DILocation(line: 702, column: 18, scope: !1117)
!1119 = !DILocation(line: 702, column: 6, scope: !1117)
!1120 = !DILocation(line: 702, column: 26, scope: !1117)
!1121 = !DILocation(line: 702, column: 6, scope: !1072)
!1122 = !DILocation(line: 703, column: 3, scope: !1117)
!1123 = !DILocation(line: 704, column: 12, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1072, file: !88, line: 704, column: 6)
!1125 = !DILocation(line: 704, column: 18, scope: !1124)
!1126 = !DILocation(line: 704, column: 6, scope: !1124)
!1127 = !DILocation(line: 704, column: 26, scope: !1124)
!1128 = !DILocation(line: 704, column: 6, scope: !1072)
!1129 = !DILocation(line: 705, column: 3, scope: !1124)
!1130 = !DILocation(line: 708, column: 16, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1072, file: !88, line: 708, column: 6)
!1132 = !DILocation(line: 708, column: 21, scope: !1131)
!1133 = !DILocation(line: 708, column: 15, scope: !1131)
!1134 = !DILocation(line: 708, column: 32, scope: !1131)
!1135 = !DILocation(line: 708, column: 25, scope: !1131)
!1136 = !DILocation(line: 708, column: 39, scope: !1131)
!1137 = !DILocation(line: 708, column: 45, scope: !1131)
!1138 = !DILocation(line: 708, column: 37, scope: !1131)
!1139 = !DILocation(line: 708, column: 52, scope: !1131)
!1140 = !DILocation(line: 708, column: 8, scope: !1131)
!1141 = !DILocation(line: 708, column: 6, scope: !1072)
!1142 = !DILocation(line: 709, column: 3, scope: !1131)
!1143 = !DILocation(line: 712, column: 24, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1072, file: !88, line: 712, column: 6)
!1145 = !DILocation(line: 712, column: 15, scope: !1144)
!1146 = !DILocation(line: 712, column: 29, scope: !1144)
!1147 = !DILocation(line: 713, column: 15, scope: !1144)
!1148 = !DILocation(line: 713, column: 21, scope: !1144)
!1149 = !DILocation(line: 712, column: 8, scope: !1144)
!1150 = !DILocation(line: 712, column: 6, scope: !1072)
!1151 = !DILocation(line: 714, column: 3, scope: !1144)
!1152 = !DILocation(line: 716, column: 9, scope: !1072)
!1153 = !DILocation(line: 716, column: 14, scope: !1072)
!1154 = !DILocation(line: 716, column: 2, scope: !1072)
!1155 = !DILocation(line: 717, column: 18, scope: !1072)
!1156 = !DILocation(line: 717, column: 9, scope: !1072)
!1157 = !DILocation(line: 717, column: 23, scope: !1072)
!1158 = !DILocation(line: 719, column: 2, scope: !1072)
!1159 = !DILocation(line: 719, column: 7, scope: !1072)
!1160 = !DILocation(line: 719, column: 14, scope: !1072)
!1161 = !DILocation(line: 720, column: 1, scope: !1072)
!1162 = !DILocation(line: 720, column: 1, scope: !1163)
!1163 = !DILexicalBlockFile(scope: !1072, file: !88, discriminator: 1)
!1164 = distinct !DISubprogram(name: "logpkt_pcap_build", scope: !88, file: !88, line: 316, type: !1165, isLocal: true, isDefinition: true, scopeLine: 322, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !201)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!369, !39, !39, !39, !73, !73, !34, !35, !35, !371, !369}
!1167 = !DILocalVariable(name: "pkt", arg: 1, scope: !1164, file: !88, line: 316, type: !39)
!1168 = !DILocation(line: 316, column: 28, scope: !1164)
!1169 = !DILocalVariable(name: "src_ether", arg: 2, scope: !1164, file: !88, line: 317, type: !39)
!1170 = !DILocation(line: 317, column: 28, scope: !1164)
!1171 = !DILocalVariable(name: "dst_ether", arg: 3, scope: !1164, file: !88, line: 317, type: !39)
!1172 = !DILocation(line: 317, column: 48, scope: !1164)
!1173 = !DILocalVariable(name: "src_addr", arg: 4, scope: !1164, file: !88, line: 318, type: !73)
!1174 = !DILocation(line: 318, column: 42, scope: !1164)
!1175 = !DILocalVariable(name: "dst_addr", arg: 5, scope: !1164, file: !88, line: 319, type: !73)
!1176 = !DILocation(line: 319, column: 42, scope: !1164)
!1177 = !DILocalVariable(name: "flags", arg: 6, scope: !1164, file: !88, line: 320, type: !34)
!1178 = !DILocation(line: 320, column: 24, scope: !1164)
!1179 = !DILocalVariable(name: "seq", arg: 7, scope: !1164, file: !88, line: 320, type: !35)
!1180 = !DILocation(line: 320, column: 40, scope: !1164)
!1181 = !DILocalVariable(name: "ack", arg: 8, scope: !1164, file: !88, line: 320, type: !35)
!1182 = !DILocation(line: 320, column: 54, scope: !1164)
!1183 = !DILocalVariable(name: "payload", arg: 9, scope: !1164, file: !88, line: 321, type: !371)
!1184 = !DILocation(line: 321, column: 34, scope: !1164)
!1185 = !DILocalVariable(name: "payloadlen", arg: 10, scope: !1164, file: !88, line: 321, type: !369)
!1186 = !DILocation(line: 321, column: 50, scope: !1164)
!1187 = !DILocalVariable(name: "ether_hdr", scope: !1164, file: !88, line: 323, type: !86)
!1188 = !DILocation(line: 323, column: 15, scope: !1164)
!1189 = !DILocalVariable(name: "ip4_hdr", scope: !1164, file: !88, line: 324, type: !98)
!1190 = !DILocation(line: 324, column: 13, scope: !1164)
!1191 = !DILocalVariable(name: "ip6_hdr", scope: !1164, file: !88, line: 325, type: !141)
!1192 = !DILocation(line: 325, column: 13, scope: !1164)
!1193 = !DILocalVariable(name: "tcp_hdr", scope: !1164, file: !88, line: 326, type: !129)
!1194 = !DILocation(line: 326, column: 13, scope: !1164)
!1195 = !DILocalVariable(name: "sz", scope: !1164, file: !88, line: 327, type: !369)
!1196 = !DILocation(line: 327, column: 9, scope: !1164)
!1197 = !DILocalVariable(name: "sum", scope: !1164, file: !88, line: 328, type: !35)
!1198 = !DILocation(line: 328, column: 11, scope: !1164)
!1199 = !DILocation(line: 330, column: 29, scope: !1164)
!1200 = !DILocation(line: 330, column: 14, scope: !1164)
!1201 = !DILocation(line: 330, column: 12, scope: !1164)
!1202 = !DILocation(line: 331, column: 9, scope: !1164)
!1203 = !DILocation(line: 331, column: 20, scope: !1164)
!1204 = !DILocation(line: 331, column: 2, scope: !1164)
!1205 = !DILocation(line: 331, column: 29, scope: !1164)
!1206 = !DILocation(line: 332, column: 9, scope: !1164)
!1207 = !DILocation(line: 332, column: 20, scope: !1164)
!1208 = !DILocation(line: 332, column: 2, scope: !1164)
!1209 = !DILocation(line: 332, column: 29, scope: !1164)
!1210 = !DILocation(line: 333, column: 5, scope: !1164)
!1211 = !DILocation(line: 335, column: 6, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1164, file: !88, line: 335, column: 6)
!1213 = !DILocation(line: 335, column: 16, scope: !1212)
!1214 = !DILocation(line: 335, column: 26, scope: !1212)
!1215 = !DILocation(line: 335, column: 6, scope: !1164)
!1216 = !DILocation(line: 336, column: 26, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1212, file: !88, line: 335, column: 37)
!1218 = !DILocation(line: 336, column: 3, scope: !1217)
!1219 = !DILocation(line: 336, column: 14, scope: !1217)
!1220 = !DILocation(line: 336, column: 24, scope: !1217)
!1221 = !DILocation(line: 337, column: 39, scope: !1217)
!1222 = !DILocation(line: 337, column: 28, scope: !1217)
!1223 = !DILocation(line: 337, column: 50, scope: !1217)
!1224 = !DILocation(line: 337, column: 13, scope: !1217)
!1225 = !DILocation(line: 337, column: 11, scope: !1217)
!1226 = !DILocation(line: 339, column: 3, scope: !1217)
!1227 = !DILocation(line: 339, column: 12, scope: !1217)
!1228 = !DILocation(line: 339, column: 24, scope: !1217)
!1229 = !DILocation(line: 340, column: 3, scope: !1217)
!1230 = !DILocation(line: 340, column: 12, scope: !1217)
!1231 = !DILocation(line: 340, column: 21, scope: !1217)
!1232 = !DILocation(line: 342, column: 44, scope: !1217)
!1233 = !DILocation(line: 342, column: 42, scope: !1217)
!1234 = !DILocation(line: 341, column: 24, scope: !1217)
!1235 = !DILocation(line: 341, column: 18, scope: !1217)
!1236 = !DILocation(line: 341, column: 3, scope: !1217)
!1237 = !DILocation(line: 341, column: 12, scope: !1217)
!1238 = !DILocation(line: 341, column: 16, scope: !1217)
!1239 = !DILocation(line: 343, column: 17, scope: !1217)
!1240 = !DILocation(line: 343, column: 3, scope: !1217)
!1241 = !DILocation(line: 343, column: 12, scope: !1217)
!1242 = !DILocation(line: 343, column: 15, scope: !1217)
!1243 = !DILocation(line: 344, column: 3, scope: !1217)
!1244 = !DILocation(line: 344, column: 12, scope: !1217)
!1245 = !DILocation(line: 344, column: 17, scope: !1217)
!1246 = !DILocation(line: 345, column: 3, scope: !1217)
!1247 = !DILocation(line: 345, column: 12, scope: !1217)
!1248 = !DILocation(line: 345, column: 16, scope: !1217)
!1249 = !DILocation(line: 346, column: 3, scope: !1217)
!1250 = !DILocation(line: 346, column: 12, scope: !1217)
!1251 = !DILocation(line: 346, column: 18, scope: !1217)
!1252 = !DILocation(line: 347, column: 53, scope: !1217)
!1253 = !DILocation(line: 347, column: 65, scope: !1217)
!1254 = !DILocation(line: 347, column: 74, scope: !1217)
!1255 = !DILocation(line: 347, column: 3, scope: !1217)
!1256 = !DILocation(line: 347, column: 12, scope: !1217)
!1257 = !DILocation(line: 347, column: 21, scope: !1217)
!1258 = !DILocation(line: 348, column: 53, scope: !1217)
!1259 = !DILocation(line: 348, column: 65, scope: !1217)
!1260 = !DILocation(line: 348, column: 74, scope: !1217)
!1261 = !DILocation(line: 348, column: 3, scope: !1217)
!1262 = !DILocation(line: 348, column: 12, scope: !1217)
!1263 = !DILocation(line: 348, column: 21, scope: !1217)
!1264 = !DILocation(line: 349, column: 3, scope: !1217)
!1265 = !DILocation(line: 349, column: 12, scope: !1217)
!1266 = !DILocation(line: 349, column: 19, scope: !1217)
!1267 = !DILocation(line: 350, column: 11, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1217, file: !88, line: 350, column: 3)
!1269 = !DILocalVariable(name: "p", scope: !1270, file: !88, line: 351, type: !128)
!1270 = distinct !DILexicalBlock(scope: !1217, file: !88, line: 351, column: 3)
!1271 = !DILocation(line: 351, column: 15, scope: !1270)
!1272 = !DILocation(line: 351, column: 32, scope: !1270)
!1273 = !DILocation(line: 351, column: 19, scope: !1270)
!1274 = !DILocalVariable(name: "words", scope: !1270, file: !88, line: 351, type: !369)
!1275 = !DILocation(line: 351, column: 49, scope: !1270)
!1276 = !DILocation(line: 351, column: 83, scope: !1270)
!1277 = !DILocation(line: 351, column: 95, scope: !1278)
!1278 = !DILexicalBlockFile(scope: !1270, file: !88, discriminator: 1)
!1279 = !DILocation(line: 351, column: 83, scope: !1278)
!1280 = !DILocation(line: 351, column: 112, scope: !1281)
!1281 = !DILexicalBlockFile(scope: !1282, file: !88, discriminator: 2)
!1282 = distinct !DILexicalBlock(scope: !1270, file: !88, line: 351, column: 99)
!1283 = !DILocation(line: 351, column: 110, scope: !1281)
!1284 = !DILocation(line: 351, column: 107, scope: !1281)
!1285 = !DILocation(line: 351, column: 83, scope: !1281)
!1286 = distinct !{!1286, !1276}
!1287 = !DILocation(line: 352, column: 15, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1217, file: !88, line: 352, column: 3)
!1289 = !DILocation(line: 352, column: 20, scope: !1288)
!1290 = !DILocation(line: 352, column: 31, scope: !1288)
!1291 = !DILocation(line: 352, column: 36, scope: !1288)
!1292 = !DILocation(line: 352, column: 27, scope: !1288)
!1293 = !DILocation(line: 352, column: 11, scope: !1288)
!1294 = !DILocation(line: 352, column: 58, scope: !1288)
!1295 = !DILocation(line: 352, column: 63, scope: !1288)
!1296 = !DILocation(line: 352, column: 53, scope: !1288)
!1297 = !DILocation(line: 352, column: 81, scope: !1288)
!1298 = !DILocation(line: 352, column: 79, scope: !1288)
!1299 = !DILocation(line: 352, column: 77, scope: !1288)
!1300 = !DILocation(line: 353, column: 21, scope: !1217)
!1301 = !DILocation(line: 353, column: 3, scope: !1217)
!1302 = !DILocation(line: 353, column: 12, scope: !1217)
!1303 = !DILocation(line: 353, column: 19, scope: !1217)
!1304 = !DILocation(line: 354, column: 6, scope: !1217)
!1305 = !DILocation(line: 355, column: 39, scope: !1217)
!1306 = !DILocation(line: 355, column: 28, scope: !1217)
!1307 = !DILocation(line: 355, column: 48, scope: !1217)
!1308 = !DILocation(line: 355, column: 13, scope: !1217)
!1309 = !DILocation(line: 355, column: 11, scope: !1217)
!1310 = !DILocation(line: 357, column: 53, scope: !1217)
!1311 = !DILocation(line: 357, column: 65, scope: !1217)
!1312 = !DILocation(line: 357, column: 3, scope: !1217)
!1313 = !DILocation(line: 357, column: 12, scope: !1217)
!1314 = !DILocation(line: 357, column: 21, scope: !1217)
!1315 = !DILocation(line: 358, column: 53, scope: !1217)
!1316 = !DILocation(line: 358, column: 65, scope: !1217)
!1317 = !DILocation(line: 358, column: 3, scope: !1217)
!1318 = !DILocation(line: 358, column: 12, scope: !1217)
!1319 = !DILocation(line: 358, column: 21, scope: !1217)
!1320 = !DILocation(line: 360, column: 11, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1217, file: !88, line: 360, column: 3)
!1322 = !DILocation(line: 361, column: 16, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1217, file: !88, line: 361, column: 3)
!1324 = !DILocation(line: 361, column: 25, scope: !1323)
!1325 = !DILocation(line: 361, column: 35, scope: !1323)
!1326 = !DILocation(line: 361, column: 46, scope: !1323)
!1327 = !DILocation(line: 361, column: 55, scope: !1323)
!1328 = !DILocation(line: 361, column: 65, scope: !1323)
!1329 = !DILocation(line: 361, column: 42, scope: !1323)
!1330 = !DILocation(line: 361, column: 11, scope: !1323)
!1331 = !DILocation(line: 362, column: 16, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1217, file: !88, line: 362, column: 3)
!1333 = !DILocation(line: 362, column: 25, scope: !1332)
!1334 = !DILocation(line: 362, column: 35, scope: !1332)
!1335 = !DILocation(line: 362, column: 46, scope: !1332)
!1336 = !DILocation(line: 362, column: 55, scope: !1332)
!1337 = !DILocation(line: 362, column: 65, scope: !1332)
!1338 = !DILocation(line: 362, column: 42, scope: !1332)
!1339 = !DILocation(line: 362, column: 11, scope: !1332)
!1340 = !DILocation(line: 363, column: 21, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1217, file: !88, line: 363, column: 3)
!1342 = !DILocation(line: 363, column: 30, scope: !1341)
!1343 = !DILocation(line: 363, column: 15, scope: !1341)
!1344 = !DILocation(line: 363, column: 14, scope: !1341)
!1345 = !DILocation(line: 363, column: 11, scope: !1341)
!1346 = !DILocation(line: 364, column: 41, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1217, file: !88, line: 364, column: 3)
!1348 = !DILocation(line: 364, column: 39, scope: !1347)
!1349 = !DILocation(line: 364, column: 21, scope: !1347)
!1350 = !DILocation(line: 364, column: 15, scope: !1347)
!1351 = !DILocation(line: 364, column: 14, scope: !1347)
!1352 = !DILocation(line: 364, column: 11, scope: !1347)
!1353 = !DILocation(line: 365, column: 2, scope: !1217)
!1354 = !DILocation(line: 366, column: 26, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1212, file: !88, line: 365, column: 9)
!1356 = !DILocation(line: 366, column: 3, scope: !1355)
!1357 = !DILocation(line: 366, column: 14, scope: !1355)
!1358 = !DILocation(line: 366, column: 24, scope: !1355)
!1359 = !DILocation(line: 367, column: 39, scope: !1355)
!1360 = !DILocation(line: 367, column: 28, scope: !1355)
!1361 = !DILocation(line: 367, column: 50, scope: !1355)
!1362 = !DILocation(line: 367, column: 13, scope: !1355)
!1363 = !DILocation(line: 367, column: 11, scope: !1355)
!1364 = !DILocation(line: 369, column: 20, scope: !1355)
!1365 = !DILocation(line: 369, column: 3, scope: !1355)
!1366 = !DILocation(line: 369, column: 12, scope: !1355)
!1367 = !DILocation(line: 369, column: 18, scope: !1355)
!1368 = !DILocation(line: 370, column: 44, scope: !1355)
!1369 = !DILocation(line: 370, column: 42, scope: !1355)
!1370 = !DILocation(line: 370, column: 24, scope: !1355)
!1371 = !DILocation(line: 370, column: 18, scope: !1355)
!1372 = !DILocation(line: 370, column: 3, scope: !1355)
!1373 = !DILocation(line: 370, column: 12, scope: !1355)
!1374 = !DILocation(line: 370, column: 16, scope: !1355)
!1375 = !DILocation(line: 371, column: 3, scope: !1355)
!1376 = !DILocation(line: 371, column: 12, scope: !1355)
!1377 = !DILocation(line: 371, column: 21, scope: !1355)
!1378 = !DILocation(line: 372, column: 3, scope: !1355)
!1379 = !DILocation(line: 372, column: 12, scope: !1355)
!1380 = !DILocation(line: 372, column: 22, scope: !1355)
!1381 = !DILocation(line: 373, column: 10, scope: !1355)
!1382 = !DILocation(line: 373, column: 19, scope: !1355)
!1383 = !DILocation(line: 373, column: 3, scope: !1355)
!1384 = !DILocation(line: 373, column: 60, scope: !1355)
!1385 = !DILocation(line: 373, column: 72, scope: !1355)
!1386 = !DILocation(line: 373, column: 55, scope: !1355)
!1387 = !DILocation(line: 373, column: 63, scope: !1355)
!1388 = !DILocation(line: 375, column: 10, scope: !1355)
!1389 = !DILocation(line: 375, column: 19, scope: !1355)
!1390 = !DILocation(line: 375, column: 3, scope: !1355)
!1391 = !DILocation(line: 375, column: 60, scope: !1355)
!1392 = !DILocation(line: 375, column: 72, scope: !1355)
!1393 = !DILocation(line: 375, column: 55, scope: !1355)
!1394 = !DILocation(line: 375, column: 63, scope: !1355)
!1395 = !DILocation(line: 377, column: 6, scope: !1355)
!1396 = !DILocation(line: 378, column: 39, scope: !1355)
!1397 = !DILocation(line: 378, column: 28, scope: !1355)
!1398 = !DILocation(line: 378, column: 48, scope: !1355)
!1399 = !DILocation(line: 378, column: 13, scope: !1355)
!1400 = !DILocation(line: 378, column: 11, scope: !1355)
!1401 = !DILocation(line: 380, column: 54, scope: !1355)
!1402 = !DILocation(line: 380, column: 66, scope: !1355)
!1403 = !DILocation(line: 380, column: 3, scope: !1355)
!1404 = !DILocation(line: 380, column: 12, scope: !1355)
!1405 = !DILocation(line: 380, column: 21, scope: !1355)
!1406 = !DILocation(line: 381, column: 54, scope: !1355)
!1407 = !DILocation(line: 381, column: 66, scope: !1355)
!1408 = !DILocation(line: 381, column: 3, scope: !1355)
!1409 = !DILocation(line: 381, column: 12, scope: !1355)
!1410 = !DILocation(line: 381, column: 21, scope: !1355)
!1411 = !DILocation(line: 383, column: 11, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1355, file: !88, line: 383, column: 3)
!1413 = !DILocalVariable(name: "p", scope: !1414, file: !88, line: 384, type: !128)
!1414 = distinct !DILexicalBlock(scope: !1355, file: !88, line: 384, column: 3)
!1415 = !DILocation(line: 384, column: 15, scope: !1414)
!1416 = !DILocation(line: 384, column: 32, scope: !1414)
!1417 = !DILocation(line: 384, column: 41, scope: !1414)
!1418 = !DILocation(line: 384, column: 31, scope: !1414)
!1419 = !DILocation(line: 384, column: 19, scope: !1414)
!1420 = !DILocalVariable(name: "words", scope: !1414, file: !88, line: 384, type: !369)
!1421 = !DILocation(line: 384, column: 59, scope: !1414)
!1422 = !DILocation(line: 384, column: 101, scope: !1414)
!1423 = !DILocation(line: 384, column: 113, scope: !1424)
!1424 = !DILexicalBlockFile(scope: !1414, file: !88, discriminator: 1)
!1425 = !DILocation(line: 384, column: 101, scope: !1424)
!1426 = !DILocation(line: 384, column: 130, scope: !1427)
!1427 = !DILexicalBlockFile(scope: !1428, file: !88, discriminator: 2)
!1428 = distinct !DILexicalBlock(scope: !1414, file: !88, line: 384, column: 117)
!1429 = !DILocation(line: 384, column: 128, scope: !1427)
!1430 = !DILocation(line: 384, column: 125, scope: !1427)
!1431 = !DILocation(line: 384, column: 101, scope: !1427)
!1432 = distinct !{!1432, !1422}
!1433 = !DILocalVariable(name: "p", scope: !1434, file: !88, line: 386, type: !128)
!1434 = distinct !DILexicalBlock(scope: !1355, file: !88, line: 386, column: 3)
!1435 = !DILocation(line: 386, column: 15, scope: !1434)
!1436 = !DILocation(line: 386, column: 32, scope: !1434)
!1437 = !DILocation(line: 386, column: 41, scope: !1434)
!1438 = !DILocation(line: 386, column: 31, scope: !1434)
!1439 = !DILocation(line: 386, column: 19, scope: !1434)
!1440 = !DILocalVariable(name: "words", scope: !1434, file: !88, line: 386, type: !369)
!1441 = !DILocation(line: 386, column: 59, scope: !1434)
!1442 = !DILocation(line: 386, column: 101, scope: !1434)
!1443 = !DILocation(line: 386, column: 113, scope: !1444)
!1444 = !DILexicalBlockFile(scope: !1434, file: !88, discriminator: 1)
!1445 = !DILocation(line: 386, column: 101, scope: !1444)
!1446 = !DILocation(line: 386, column: 130, scope: !1447)
!1447 = !DILexicalBlockFile(scope: !1448, file: !88, discriminator: 2)
!1448 = distinct !DILexicalBlock(scope: !1434, file: !88, line: 386, column: 117)
!1449 = !DILocation(line: 386, column: 128, scope: !1447)
!1450 = !DILocation(line: 386, column: 125, scope: !1447)
!1451 = !DILocation(line: 386, column: 101, scope: !1447)
!1452 = distinct !{!1452, !1442}
!1453 = !DILocation(line: 388, column: 16, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1355, file: !88, line: 388, column: 3)
!1455 = !DILocation(line: 388, column: 25, scope: !1454)
!1456 = !DILocation(line: 388, column: 15, scope: !1454)
!1457 = !DILocation(line: 388, column: 30, scope: !1454)
!1458 = !DILocation(line: 388, column: 41, scope: !1454)
!1459 = !DILocation(line: 388, column: 50, scope: !1454)
!1460 = !DILocation(line: 388, column: 40, scope: !1454)
!1461 = !DILocation(line: 388, column: 55, scope: !1454)
!1462 = !DILocation(line: 388, column: 37, scope: !1454)
!1463 = !DILocation(line: 388, column: 11, scope: !1454)
!1464 = !DILocation(line: 389, column: 15, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1355, file: !88, line: 389, column: 3)
!1466 = !DILocation(line: 389, column: 14, scope: !1465)
!1467 = !DILocation(line: 389, column: 11, scope: !1465)
!1468 = !DILocation(line: 391, column: 23, scope: !1164)
!1469 = !DILocation(line: 391, column: 17, scope: !1164)
!1470 = !DILocation(line: 391, column: 2, scope: !1164)
!1471 = !DILocation(line: 391, column: 11, scope: !1164)
!1472 = !DILocation(line: 391, column: 15, scope: !1164)
!1473 = !DILocation(line: 392, column: 23, scope: !1164)
!1474 = !DILocation(line: 392, column: 17, scope: !1164)
!1475 = !DILocation(line: 392, column: 2, scope: !1164)
!1476 = !DILocation(line: 392, column: 11, scope: !1164)
!1477 = !DILocation(line: 392, column: 15, scope: !1164)
!1478 = !DILocation(line: 393, column: 32, scope: !1164)
!1479 = !DILocation(line: 393, column: 31, scope: !1164)
!1480 = !DILocation(line: 393, column: 25, scope: !1164)
!1481 = !DILocation(line: 393, column: 19, scope: !1164)
!1482 = !DILocation(line: 393, column: 2, scope: !1164)
!1483 = !DILocation(line: 393, column: 11, scope: !1164)
!1484 = !DILocation(line: 393, column: 17, scope: !1164)
!1485 = !DILocation(line: 394, column: 17, scope: !1164)
!1486 = !DILocation(line: 394, column: 2, scope: !1164)
!1487 = !DILocation(line: 394, column: 11, scope: !1164)
!1488 = !DILocation(line: 394, column: 15, scope: !1164)
!1489 = !DILocation(line: 395, column: 2, scope: !1164)
!1490 = !DILocation(line: 395, column: 11, scope: !1164)
!1491 = !DILocation(line: 395, column: 16, scope: !1164)
!1492 = !DILocation(line: 396, column: 2, scope: !1164)
!1493 = !DILocation(line: 396, column: 11, scope: !1164)
!1494 = !DILocation(line: 396, column: 18, scope: !1164)
!1495 = !DILocation(line: 397, column: 5, scope: !1164)
!1496 = !DILocation(line: 398, column: 21, scope: !1164)
!1497 = !DILocation(line: 398, column: 10, scope: !1164)
!1498 = !DILocation(line: 398, column: 30, scope: !1164)
!1499 = !DILocation(line: 398, column: 51, scope: !1164)
!1500 = !DILocation(line: 398, column: 60, scope: !1164)
!1501 = !DILocation(line: 398, column: 2, scope: !1164)
!1502 = !DILocalVariable(name: "p", scope: !1503, file: !88, line: 399, type: !128)
!1503 = distinct !DILexicalBlock(scope: !1164, file: !88, line: 399, column: 2)
!1504 = !DILocation(line: 399, column: 14, scope: !1503)
!1505 = !DILocation(line: 399, column: 31, scope: !1503)
!1506 = !DILocation(line: 399, column: 18, scope: !1503)
!1507 = !DILocalVariable(name: "words", scope: !1503, file: !88, line: 399, type: !369)
!1508 = !DILocation(line: 399, column: 48, scope: !1503)
!1509 = !DILocation(line: 399, column: 77, scope: !1503)
!1510 = !DILocation(line: 399, column: 75, scope: !1503)
!1511 = !DILocation(line: 399, column: 89, scope: !1503)
!1512 = !DILocation(line: 399, column: 95, scope: !1503)
!1513 = !DILocation(line: 399, column: 107, scope: !1514)
!1514 = !DILexicalBlockFile(scope: !1503, file: !88, discriminator: 1)
!1515 = !DILocation(line: 399, column: 95, scope: !1514)
!1516 = !DILocation(line: 399, column: 124, scope: !1517)
!1517 = !DILexicalBlockFile(scope: !1518, file: !88, discriminator: 2)
!1518 = distinct !DILexicalBlock(scope: !1503, file: !88, line: 399, column: 111)
!1519 = !DILocation(line: 399, column: 122, scope: !1517)
!1520 = !DILocation(line: 399, column: 119, scope: !1517)
!1521 = !DILocation(line: 399, column: 95, scope: !1517)
!1522 = distinct !{!1522, !1512}
!1523 = !DILocation(line: 399, column: 155, scope: !1524)
!1524 = !DILexicalBlockFile(scope: !1525, file: !88, discriminator: 3)
!1525 = distinct !DILexicalBlock(scope: !1503, file: !88, line: 399, column: 134)
!1526 = !DILocation(line: 399, column: 153, scope: !1524)
!1527 = !DILocation(line: 399, column: 167, scope: !1524)
!1528 = !DILocation(line: 399, column: 134, scope: !1524)
!1529 = !DILocation(line: 399, column: 199, scope: !1530)
!1530 = !DILexicalBlockFile(scope: !1531, file: !88, discriminator: 4)
!1531 = distinct !DILexicalBlock(scope: !1525, file: !88, line: 399, column: 172)
!1532 = !DILocation(line: 399, column: 189, scope: !1530)
!1533 = !DILocation(line: 399, column: 202, scope: !1530)
!1534 = !DILocation(line: 399, column: 183, scope: !1530)
!1535 = !DILocation(line: 399, column: 180, scope: !1530)
!1536 = !DILocation(line: 399, column: 209, scope: !1530)
!1537 = !DILocation(line: 400, column: 14, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1164, file: !88, line: 400, column: 2)
!1539 = !DILocation(line: 400, column: 19, scope: !1538)
!1540 = !DILocation(line: 400, column: 30, scope: !1538)
!1541 = !DILocation(line: 400, column: 35, scope: !1538)
!1542 = !DILocation(line: 400, column: 26, scope: !1538)
!1543 = !DILocation(line: 400, column: 10, scope: !1538)
!1544 = !DILocation(line: 400, column: 57, scope: !1538)
!1545 = !DILocation(line: 400, column: 62, scope: !1538)
!1546 = !DILocation(line: 400, column: 52, scope: !1538)
!1547 = !DILocation(line: 400, column: 80, scope: !1538)
!1548 = !DILocation(line: 400, column: 78, scope: !1538)
!1549 = !DILocation(line: 400, column: 76, scope: !1538)
!1550 = !DILocation(line: 401, column: 20, scope: !1164)
!1551 = !DILocation(line: 401, column: 2, scope: !1164)
!1552 = !DILocation(line: 401, column: 11, scope: !1164)
!1553 = !DILocation(line: 401, column: 18, scope: !1164)
!1554 = !DILocation(line: 402, column: 9, scope: !1164)
!1555 = !DILocation(line: 402, column: 14, scope: !1164)
!1556 = !DILocation(line: 402, column: 12, scope: !1164)
!1557 = !DILocation(line: 402, column: 2, scope: !1164)
!1558 = distinct !DISubprogram(name: "logpkt_pcap_write", scope: !88, file: !88, line: 281, type: !1559, isLocal: true, isDefinition: true, scopeLine: 282, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !201)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!193, !371, !369, !193}
!1561 = !DILocalVariable(name: "pkt", arg: 1, scope: !1558, file: !88, line: 281, type: !371)
!1562 = !DILocation(line: 281, column: 34, scope: !1558)
!1563 = !DILocalVariable(name: "pktsz", arg: 2, scope: !1558, file: !88, line: 281, type: !369)
!1564 = !DILocation(line: 281, column: 46, scope: !1558)
!1565 = !DILocalVariable(name: "fd", arg: 3, scope: !1558, file: !88, line: 281, type: !193)
!1566 = !DILocation(line: 281, column: 57, scope: !1558)
!1567 = !DILocalVariable(name: "rec_hdr", scope: !1558, file: !88, line: 283, type: !1568)
!1568 = !DIDerivedType(tag: DW_TAG_typedef, name: "pcap_rec_hdr_t", file: !88, line: 64, baseType: !1569)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !88, line: 59, size: 128, align: 8, elements: !1570)
!1570 = !{!1571, !1572, !1573, !1574}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "ts_sec", scope: !1569, file: !88, line: 60, baseType: !35, size: 32, align: 32)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "ts_usec", scope: !1569, file: !88, line: 61, baseType: !35, size: 32, align: 32, offset: 32)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "incl_len", scope: !1569, file: !88, line: 62, baseType: !35, size: 32, align: 32, offset: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "orig_len", scope: !1569, file: !88, line: 63, baseType: !35, size: 32, align: 32, offset: 96)
!1575 = !DILocation(line: 283, column: 17, scope: !1558)
!1576 = !DILocalVariable(name: "tv", scope: !1558, file: !88, line: 284, type: !57)
!1577 = !DILocation(line: 284, column: 17, scope: !1558)
!1578 = !DILocation(line: 286, column: 2, scope: !1558)
!1579 = !DILocation(line: 287, column: 22, scope: !1558)
!1580 = !DILocation(line: 287, column: 19, scope: !1558)
!1581 = !DILocation(line: 287, column: 10, scope: !1558)
!1582 = !DILocation(line: 287, column: 17, scope: !1558)
!1583 = !DILocation(line: 288, column: 23, scope: !1558)
!1584 = !DILocation(line: 288, column: 20, scope: !1558)
!1585 = !DILocation(line: 288, column: 10, scope: !1558)
!1586 = !DILocation(line: 288, column: 18, scope: !1558)
!1587 = !DILocation(line: 289, column: 40, scope: !1558)
!1588 = !DILocation(line: 289, column: 29, scope: !1558)
!1589 = !DILocation(line: 289, column: 38, scope: !1558)
!1590 = !DILocation(line: 289, column: 10, scope: !1558)
!1591 = !DILocation(line: 289, column: 19, scope: !1558)
!1592 = !DILocation(line: 291, column: 12, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1558, file: !88, line: 291, column: 6)
!1594 = !DILocation(line: 291, column: 16, scope: !1593)
!1595 = !DILocation(line: 291, column: 6, scope: !1593)
!1596 = !DILocation(line: 291, column: 43, scope: !1593)
!1597 = !DILocation(line: 291, column: 6, scope: !1558)
!1598 = !DILocation(line: 293, column: 28, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1593, file: !88, line: 291, column: 63)
!1600 = !DILocation(line: 293, column: 27, scope: !1599)
!1601 = !DILocation(line: 293, column: 18, scope: !1602)
!1602 = !DILexicalBlockFile(scope: !1599, file: !88, discriminator: 1)
!1603 = !DILocation(line: 292, column: 3, scope: !1599)
!1604 = !DILocation(line: 294, column: 3, scope: !1599)
!1605 = !DILocation(line: 296, column: 12, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1558, file: !88, line: 296, column: 6)
!1607 = !DILocation(line: 296, column: 16, scope: !1606)
!1608 = !DILocation(line: 296, column: 21, scope: !1606)
!1609 = !DILocation(line: 296, column: 6, scope: !1606)
!1610 = !DILocation(line: 296, column: 40, scope: !1606)
!1611 = !DILocation(line: 296, column: 28, scope: !1606)
!1612 = !DILocation(line: 296, column: 6, scope: !1558)
!1613 = !DILocation(line: 298, column: 28, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1606, file: !88, line: 296, column: 47)
!1615 = !DILocation(line: 298, column: 27, scope: !1614)
!1616 = !DILocation(line: 298, column: 18, scope: !1617)
!1617 = !DILexicalBlockFile(scope: !1614, file: !88, discriminator: 1)
!1618 = !DILocation(line: 297, column: 3, scope: !1614)
!1619 = !DILocation(line: 299, column: 3, scope: !1614)
!1620 = !DILocation(line: 301, column: 2, scope: !1558)
!1621 = !DILocation(line: 302, column: 1, scope: !1558)
!1622 = distinct !DISubprogram(name: "logpkt_mirror_build", scope: !88, file: !88, line: 411, type: !1623, isLocal: true, isDefinition: true, scopeLine: 417, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !201)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{!193, !306, !39, !39, !73, !73, !34, !35, !35, !371, !369}
!1625 = !DILocalVariable(name: "libnet", arg: 1, scope: !1622, file: !88, line: 411, type: !306)
!1626 = !DILocation(line: 411, column: 31, scope: !1622)
!1627 = !DILocalVariable(name: "src_ether", arg: 2, scope: !1622, file: !88, line: 412, type: !39)
!1628 = !DILocation(line: 412, column: 30, scope: !1622)
!1629 = !DILocalVariable(name: "dst_ether", arg: 3, scope: !1622, file: !88, line: 412, type: !39)
!1630 = !DILocation(line: 412, column: 50, scope: !1622)
!1631 = !DILocalVariable(name: "src_addr", arg: 4, scope: !1622, file: !88, line: 413, type: !73)
!1632 = !DILocation(line: 413, column: 44, scope: !1622)
!1633 = !DILocalVariable(name: "dst_addr", arg: 5, scope: !1622, file: !88, line: 414, type: !73)
!1634 = !DILocation(line: 414, column: 44, scope: !1622)
!1635 = !DILocalVariable(name: "flags", arg: 6, scope: !1622, file: !88, line: 415, type: !34)
!1636 = !DILocation(line: 415, column: 26, scope: !1622)
!1637 = !DILocalVariable(name: "seq", arg: 7, scope: !1622, file: !88, line: 415, type: !35)
!1638 = !DILocation(line: 415, column: 42, scope: !1622)
!1639 = !DILocalVariable(name: "ack", arg: 8, scope: !1622, file: !88, line: 415, type: !35)
!1640 = !DILocation(line: 415, column: 56, scope: !1622)
!1641 = !DILocalVariable(name: "payload", arg: 9, scope: !1622, file: !88, line: 416, type: !371)
!1642 = !DILocation(line: 416, column: 36, scope: !1622)
!1643 = !DILocalVariable(name: "payloadlen", arg: 10, scope: !1622, file: !88, line: 416, type: !369)
!1644 = !DILocation(line: 416, column: 52, scope: !1622)
!1645 = !DILocalVariable(name: "ptag", scope: !1622, file: !88, line: 418, type: !325)
!1646 = !DILocation(line: 418, column: 16, scope: !1622)
!1647 = !DILocation(line: 420, column: 26, scope: !1622)
!1648 = !DILocation(line: 420, column: 36, scope: !1622)
!1649 = !DILocation(line: 420, column: 46, scope: !1622)
!1650 = !DILocation(line: 421, column: 57, scope: !1622)
!1651 = !DILocation(line: 421, column: 69, scope: !1622)
!1652 = !DILocation(line: 421, column: 27, scope: !1622)
!1653 = !DILocation(line: 420, column: 26, scope: !1654)
!1654 = !DILexicalBlockFile(scope: !1622, file: !88, discriminator: 1)
!1655 = !DILocation(line: 422, column: 59, scope: !1622)
!1656 = !DILocation(line: 422, column: 71, scope: !1622)
!1657 = !DILocation(line: 422, column: 28, scope: !1622)
!1658 = !DILocation(line: 420, column: 26, scope: !1659)
!1659 = !DILexicalBlockFile(scope: !1622, file: !88, discriminator: 2)
!1660 = !DILocation(line: 420, column: 26, scope: !1661)
!1661 = !DILexicalBlockFile(scope: !1622, file: !88, discriminator: 3)
!1662 = !DILocation(line: 423, column: 26, scope: !1622)
!1663 = !DILocation(line: 423, column: 36, scope: !1622)
!1664 = !DILocation(line: 423, column: 46, scope: !1622)
!1665 = !DILocation(line: 424, column: 57, scope: !1622)
!1666 = !DILocation(line: 424, column: 69, scope: !1622)
!1667 = !DILocation(line: 424, column: 27, scope: !1622)
!1668 = !DILocation(line: 423, column: 26, scope: !1654)
!1669 = !DILocation(line: 425, column: 59, scope: !1622)
!1670 = !DILocation(line: 425, column: 71, scope: !1622)
!1671 = !DILocation(line: 425, column: 28, scope: !1622)
!1672 = !DILocation(line: 423, column: 26, scope: !1659)
!1673 = !DILocation(line: 423, column: 26, scope: !1661)
!1674 = !DILocation(line: 426, column: 26, scope: !1622)
!1675 = !DILocation(line: 427, column: 26, scope: !1622)
!1676 = !DILocation(line: 428, column: 26, scope: !1622)
!1677 = !DILocation(line: 432, column: 40, scope: !1622)
!1678 = !DILocation(line: 432, column: 38, scope: !1622)
!1679 = !DILocation(line: 432, column: 25, scope: !1622)
!1680 = !DILocation(line: 433, column: 37, scope: !1622)
!1681 = !DILocation(line: 433, column: 46, scope: !1622)
!1682 = !DILocation(line: 434, column: 26, scope: !1622)
!1683 = !DILocation(line: 420, column: 9, scope: !1684)
!1684 = !DILexicalBlockFile(scope: !1622, file: !88, discriminator: 4)
!1685 = !DILocation(line: 420, column: 7, scope: !1684)
!1686 = !DILocation(line: 435, column: 6, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1622, file: !88, line: 435, column: 6)
!1688 = !DILocation(line: 435, column: 11, scope: !1687)
!1689 = !DILocation(line: 435, column: 6, scope: !1622)
!1690 = !DILocation(line: 437, column: 34, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1687, file: !88, line: 435, column: 18)
!1692 = !DILocation(line: 437, column: 18, scope: !1691)
!1693 = !DILocation(line: 436, column: 3, scope: !1691)
!1694 = !DILocation(line: 438, column: 3, scope: !1691)
!1695 = !DILocation(line: 441, column: 6, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1622, file: !88, line: 441, column: 6)
!1697 = !DILocation(line: 441, column: 16, scope: !1696)
!1698 = !DILocation(line: 441, column: 26, scope: !1696)
!1699 = !DILocation(line: 441, column: 6, scope: !1622)
!1700 = !DILocation(line: 443, column: 28, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1696, file: !88, line: 441, column: 37)
!1702 = !DILocation(line: 442, column: 56, scope: !1701)
!1703 = !DILocation(line: 442, column: 27, scope: !1701)
!1704 = !DILocation(line: 446, column: 28, scope: !1701)
!1705 = !DILocation(line: 451, column: 58, scope: !1701)
!1706 = !DILocation(line: 451, column: 70, scope: !1701)
!1707 = !DILocation(line: 451, column: 79, scope: !1701)
!1708 = !DILocation(line: 452, column: 58, scope: !1701)
!1709 = !DILocation(line: 452, column: 70, scope: !1701)
!1710 = !DILocation(line: 452, column: 79, scope: !1701)
!1711 = !DILocation(line: 454, column: 28, scope: !1701)
!1712 = !DILocation(line: 442, column: 10, scope: !1701)
!1713 = !DILocation(line: 442, column: 8, scope: !1701)
!1714 = !DILocation(line: 455, column: 2, scope: !1701)
!1715 = !DILocation(line: 459, column: 28, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1696, file: !88, line: 455, column: 9)
!1717 = !DILocation(line: 458, column: 56, scope: !1716)
!1718 = !DILocation(line: 458, column: 27, scope: !1716)
!1719 = !DILocation(line: 463, column: 60, scope: !1716)
!1720 = !DILocation(line: 463, column: 72, scope: !1716)
!1721 = !DILocation(line: 462, column: 28, scope: !1716)
!1722 = !DILocation(line: 465, column: 60, scope: !1716)
!1723 = !DILocation(line: 465, column: 72, scope: !1716)
!1724 = !DILocation(line: 464, column: 28, scope: !1716)
!1725 = !DILocation(line: 467, column: 28, scope: !1716)
!1726 = !DILocation(line: 456, column: 10, scope: !1716)
!1727 = !DILocation(line: 456, column: 10, scope: !1728)
!1728 = !DILexicalBlockFile(scope: !1716, file: !88, discriminator: 1)
!1729 = !DILocation(line: 456, column: 10, scope: !1730)
!1730 = !DILexicalBlockFile(scope: !1716, file: !88, discriminator: 2)
!1731 = !DILocation(line: 456, column: 8, scope: !1716)
!1732 = !DILocation(line: 469, column: 6, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1622, file: !88, line: 469, column: 6)
!1734 = !DILocation(line: 469, column: 11, scope: !1733)
!1735 = !DILocation(line: 469, column: 6, scope: !1622)
!1736 = !DILocation(line: 471, column: 34, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1733, file: !88, line: 469, column: 18)
!1738 = !DILocation(line: 471, column: 18, scope: !1737)
!1739 = !DILocation(line: 470, column: 3, scope: !1737)
!1740 = !DILocation(line: 472, column: 3, scope: !1737)
!1741 = !DILocation(line: 475, column: 31, scope: !1622)
!1742 = !DILocation(line: 476, column: 31, scope: !1622)
!1743 = !DILocation(line: 477, column: 31, scope: !1622)
!1744 = !DILocation(line: 477, column: 41, scope: !1622)
!1745 = !DILocation(line: 477, column: 51, scope: !1622)
!1746 = !DILocation(line: 480, column: 31, scope: !1622)
!1747 = !DILocation(line: 475, column: 9, scope: !1622)
!1748 = !DILocation(line: 475, column: 7, scope: !1622)
!1749 = !DILocation(line: 481, column: 6, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1622, file: !88, line: 481, column: 6)
!1751 = !DILocation(line: 481, column: 11, scope: !1750)
!1752 = !DILocation(line: 481, column: 6, scope: !1622)
!1753 = !DILocation(line: 483, column: 34, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1750, file: !88, line: 481, column: 18)
!1755 = !DILocation(line: 483, column: 18, scope: !1754)
!1756 = !DILocation(line: 482, column: 3, scope: !1754)
!1757 = !DILocation(line: 484, column: 3, scope: !1754)
!1758 = !DILocation(line: 486, column: 2, scope: !1622)
!1759 = !DILocation(line: 487, column: 1, scope: !1622)
