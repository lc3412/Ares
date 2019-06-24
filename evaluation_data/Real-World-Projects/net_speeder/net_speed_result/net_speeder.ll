; ModuleID = 'net_speeder.i'
source_filename = "net_speeder.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pcap_pkthdr = type { %struct.timeval, i32, i32 }
%struct.timeval = type { i64, i64 }
%struct.libnet_ipv4_hdr = type { i8, i8, i16, i16, i16, i8, i8, i16, %struct.in_addr, %struct.in_addr }
%struct.in_addr = type { i32 }
%struct.libnet_context = type { i32, i32, %struct.libnet_protocol_block*, %struct.libnet_protocol_block*, i32, i32, i32, i32, i8*, %struct.libnet_stats, i32, [64 x i8], [256 x i8], i32 }
%struct.libnet_protocol_block = type { i8*, i32, i16, i32, i8, i8, i32, %struct.libnet_protocol_block*, %struct.libnet_protocol_block* }
%struct.libnet_stats = type { i64, i64, i64 }
%struct.pcap = type opaque
%struct.bpf_program = type { i32, %struct.bpf_insn* }
%struct.bpf_insn = type { i16, i8, i8, i32 }

@.str = private unnamed_addr constant [38 x i8] c"Usage: %s [interface][\22filter rule\22]\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"net_speeder\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Options:\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"    interface    Listen on <interface> for packets.\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"    filter       Rules to filter packets.\0A\00", align 1
@got_packet.count = internal global i32 1, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"packet len:[%d] actual write:[%d]\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"err msg:[%s]\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"libnet_init: error %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"Device: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Filter rule: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"ethernet header len:[%d](14:normal, 16:cooked)\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"Couldn't get netmask for device %s: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"init pcap\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"pcap_open_live dev:[%s] err:[%s]\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"init pcap failed\0A\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"init libnet\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"init libnet failed\0A\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"filter rule err:[%s][%s]\0A\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"set filter failed:[%s][%s]\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @print_usage() #0 !dbg !122 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0)), !dbg !125
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !126
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0)), !dbg !127
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i32 0, i32 0)), !dbg !128
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i32 0)), !dbg !129
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !130
  ret void, !dbg !131
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @got_packet(i8*, %struct.pcap_pkthdr*, i8*) #0 !dbg !93 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pcap_pkthdr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.libnet_ipv4_hdr*, align 8
  %8 = alloca %struct.libnet_context*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !132, metadata !133), !dbg !134
  store %struct.pcap_pkthdr* %1, %struct.pcap_pkthdr** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.pcap_pkthdr** %5, metadata !135, metadata !133), !dbg !136
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !137, metadata !133), !dbg !138
  call void @llvm.dbg.declare(metadata %struct.libnet_ipv4_hdr** %7, metadata !139, metadata !133), !dbg !140
  call void @llvm.dbg.declare(metadata %struct.libnet_context** %8, metadata !141, metadata !133), !dbg !142
  %10 = load i8*, i8** %4, align 8, !dbg !143
  %11 = bitcast i8* %10 to %struct.libnet_context*, !dbg !144
  store %struct.libnet_context* %11, %struct.libnet_context** %8, align 8, !dbg !142
  %12 = load i32, i32* @got_packet.count, align 4, !dbg !145
  %13 = add nsw i32 %12, 1, !dbg !145
  store i32 %13, i32* @got_packet.count, align 4, !dbg !145
  %14 = load i8*, i8** %6, align 8, !dbg !146
  %15 = getelementptr inbounds i8, i8* %14, i64 14, !dbg !147
  %16 = bitcast i8* %15 to %struct.libnet_ipv4_hdr*, !dbg !148
  store %struct.libnet_ipv4_hdr* %16, %struct.libnet_ipv4_hdr** %7, align 8, !dbg !149
  %17 = load %struct.libnet_ipv4_hdr*, %struct.libnet_ipv4_hdr** %7, align 8, !dbg !150
  %18 = getelementptr inbounds %struct.libnet_ipv4_hdr, %struct.libnet_ipv4_hdr* %17, i32 0, i32 5, !dbg !152
  %19 = load i8, i8* %18, align 4, !dbg !152
  %20 = zext i8 %19 to i32, !dbg !150
  %21 = icmp ne i32 %20, 88, !dbg !153
  br i1 %21, label %22, label %48, !dbg !154

; <label>:22:                                     ; preds = %3
  %23 = load %struct.libnet_ipv4_hdr*, %struct.libnet_ipv4_hdr** %7, align 8, !dbg !155
  %24 = getelementptr inbounds %struct.libnet_ipv4_hdr, %struct.libnet_ipv4_hdr* %23, i32 0, i32 5, !dbg !157
  store i8 88, i8* %24, align 4, !dbg !158
  call void @llvm.dbg.declare(metadata i32* %9, metadata !159, metadata !133), !dbg !160
  %25 = load %struct.libnet_context*, %struct.libnet_context** %8, align 8, !dbg !161
  %26 = load %struct.libnet_ipv4_hdr*, %struct.libnet_ipv4_hdr** %7, align 8, !dbg !162
  %27 = bitcast %struct.libnet_ipv4_hdr* %26 to i8*, !dbg !163
  %28 = load %struct.libnet_ipv4_hdr*, %struct.libnet_ipv4_hdr** %7, align 8, !dbg !164
  %29 = getelementptr inbounds %struct.libnet_ipv4_hdr, %struct.libnet_ipv4_hdr* %28, i32 0, i32 2, !dbg !165
  %30 = load i16, i16* %29, align 2, !dbg !165
  %31 = call zeroext i16 @ntohs(i16 zeroext %30) #2, !dbg !166
  %32 = zext i16 %31 to i32, !dbg !166
  %33 = call i32 @libnet_adv_write_raw_ipv4(%struct.libnet_context* %25, i8* %27, i32 %32), !dbg !167
  store i32 %33, i32* %9, align 4, !dbg !160
  %34 = load i32, i32* %9, align 4, !dbg !169
  %35 = icmp slt i32 %34, 0, !dbg !171
  br i1 %35, label %36, label %47, !dbg !172

; <label>:36:                                     ; preds = %22
  %37 = load %struct.libnet_ipv4_hdr*, %struct.libnet_ipv4_hdr** %7, align 8, !dbg !173
  %38 = getelementptr inbounds %struct.libnet_ipv4_hdr, %struct.libnet_ipv4_hdr* %37, i32 0, i32 2, !dbg !175
  %39 = load i16, i16* %38, align 2, !dbg !175
  %40 = call zeroext i16 @ntohs(i16 zeroext %39) #2, !dbg !176
  %41 = zext i16 %40 to i32, !dbg !176
  %42 = load i32, i32* %9, align 4, !dbg !177
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i32 0, i32 0), i32 %41, i32 %42), !dbg !178
  %44 = load %struct.libnet_context*, %struct.libnet_context** %8, align 8, !dbg !180
  %45 = call i8* @libnet_geterror(%struct.libnet_context* %44), !dbg !181
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i8* %45), !dbg !182
  br label %47, !dbg !183

; <label>:47:                                     ; preds = %36, %22
  br label %49, !dbg !184

; <label>:48:                                     ; preds = %3
  br label %49

; <label>:49:                                     ; preds = %48, %47
  ret void, !dbg !185
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i32 @libnet_adv_write_raw_ipv4(%struct.libnet_context*, i8*, i32) #1

; Function Attrs: nounwind readnone
declare zeroext i16 @ntohs(i16 zeroext) #3

declare i8* @libnet_geterror(%struct.libnet_context*) #1

; Function Attrs: nounwind uwtable
define %struct.libnet_context* @start_libnet(i8*) #0 !dbg !186 {
  %2 = alloca i8*, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca %struct.libnet_context*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !189, metadata !133), !dbg !190
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !191, metadata !133), !dbg !192
  call void @llvm.dbg.declare(metadata %struct.libnet_context** %4, metadata !193, metadata !133), !dbg !194
  %5 = load i8*, i8** %2, align 8, !dbg !195
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i32 0, i32 0, !dbg !196
  %7 = call %struct.libnet_context* @libnet_init(i32 9, i8* %5, i8* %6), !dbg !197
  store %struct.libnet_context* %7, %struct.libnet_context** %4, align 8, !dbg !194
  %8 = load %struct.libnet_context*, %struct.libnet_context** %4, align 8, !dbg !198
  %9 = icmp eq %struct.libnet_context* null, %8, !dbg !200
  br i1 %9, label %10, label %13, !dbg !201

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i32 0, i32 0, !dbg !202
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i8* %11), !dbg !204
  br label %13, !dbg !205

; <label>:13:                                     ; preds = %10, %1
  %14 = load %struct.libnet_context*, %struct.libnet_context** %4, align 8, !dbg !206
  ret %struct.libnet_context* %14, !dbg !207
}

declare %struct.libnet_context* @libnet_init(i32, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @main(i32, i8**) #0 !dbg !208 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [256 x i8], align 16
  %8 = alloca %struct.pcap*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.bpf_program, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.libnet_context*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !212, metadata !133), !dbg !213
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !214, metadata !133), !dbg !215
  call void @llvm.dbg.declare(metadata i8** %6, metadata !216, metadata !133), !dbg !217
  store i8* null, i8** %6, align 8, !dbg !217
  call void @llvm.dbg.declare(metadata [256 x i8]* %7, metadata !218, metadata !133), !dbg !219
  call void @llvm.dbg.declare(metadata %struct.pcap** %8, metadata !220, metadata !133), !dbg !224
  call void @llvm.dbg.declare(metadata i8** %9, metadata !225, metadata !133), !dbg !226
  store i8* null, i8** %9, align 8, !dbg !226
  call void @llvm.dbg.declare(metadata %struct.bpf_program* %10, metadata !227, metadata !133), !dbg !241
  call void @llvm.dbg.declare(metadata i32* %11, metadata !242, metadata !133), !dbg !243
  call void @llvm.dbg.declare(metadata i32* %12, metadata !244, metadata !133), !dbg !245
  %14 = load i32, i32* %4, align 4, !dbg !246
  %15 = icmp eq i32 %14, 3, !dbg !248
  br i1 %15, label %16, label %27, !dbg !249

; <label>:16:                                     ; preds = %2
  %17 = load i8**, i8*** %5, align 8, !dbg !250
  %18 = getelementptr inbounds i8*, i8** %17, i64 1, !dbg !250
  %19 = load i8*, i8** %18, align 8, !dbg !250
  store i8* %19, i8** %6, align 8, !dbg !252
  %20 = load i8**, i8*** %5, align 8, !dbg !253
  %21 = getelementptr inbounds i8*, i8** %20, i64 2, !dbg !253
  %22 = load i8*, i8** %21, align 8, !dbg !253
  store i8* %22, i8** %9, align 8, !dbg !254
  %23 = load i8*, i8** %6, align 8, !dbg !255
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* %23), !dbg !256
  %25 = load i8*, i8** %9, align 8, !dbg !257
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8* %25), !dbg !258
  br label %28, !dbg !259

; <label>:27:                                     ; preds = %2
  call void @print_usage(), !dbg !260
  store i32 -1, i32* %3, align 4, !dbg !262
  br label %84, !dbg !262

; <label>:28:                                     ; preds = %16
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i32 0, i32 0), i32 14), !dbg !263
  %30 = load i8*, i8** %6, align 8, !dbg !264
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i32 0, i32 0, !dbg !266
  %32 = call i32 @pcap_lookupnet(i8* %30, i32* %11, i32* %12, i8* %31), !dbg !267
  %33 = icmp eq i32 %32, -1, !dbg !268
  br i1 %33, label %34, label %38, !dbg !269

; <label>:34:                                     ; preds = %28
  %35 = load i8*, i8** %6, align 8, !dbg !270
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i32 0, i32 0, !dbg !272
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i32 0, i32 0), i8* %35, i8* %36), !dbg !273
  store i32 0, i32* %11, align 4, !dbg !274
  store i32 0, i32* %12, align 4, !dbg !275
  br label %38, !dbg !276

; <label>:38:                                     ; preds = %34, %28
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0)), !dbg !277
  %40 = load i8*, i8** %6, align 8, !dbg !278
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i32 0, i32 0, !dbg !279
  %42 = call %struct.pcap* @pcap_open_live(i8* %40, i32 65535, i32 1, i32 1000, i8* %41), !dbg !280
  store %struct.pcap* %42, %struct.pcap** %8, align 8, !dbg !281
  %43 = load %struct.pcap*, %struct.pcap** %8, align 8, !dbg !282
  %44 = icmp eq %struct.pcap* %43, null, !dbg !284
  br i1 %44, label %45, label %50, !dbg !285

; <label>:45:                                     ; preds = %38
  %46 = load i8*, i8** %6, align 8, !dbg !286
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i32 0, i32 0, !dbg !288
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i32 0, i32 0), i8* %46, i8* %47), !dbg !289
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0)), !dbg !290
  store i32 -1, i32* %3, align 4, !dbg !291
  br label %84, !dbg !291

; <label>:50:                                     ; preds = %38
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0)), !dbg !292
  call void @llvm.dbg.declare(metadata %struct.libnet_context** %13, metadata !293, metadata !133), !dbg !294
  %52 = load i8*, i8** %6, align 8, !dbg !295
  %53 = call %struct.libnet_context* @start_libnet(i8* %52), !dbg !296
  store %struct.libnet_context* %53, %struct.libnet_context** %13, align 8, !dbg !294
  %54 = load %struct.libnet_context*, %struct.libnet_context** %13, align 8, !dbg !297
  %55 = icmp eq %struct.libnet_context* null, %54, !dbg !299
  br i1 %55, label %56, label %58, !dbg !300

; <label>:56:                                     ; preds = %50
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0)), !dbg !301
  store i32 -1, i32* %3, align 4, !dbg !303
  br label %84, !dbg !303

; <label>:58:                                     ; preds = %50
  %59 = load %struct.pcap*, %struct.pcap** %8, align 8, !dbg !304
  %60 = load i8*, i8** %9, align 8, !dbg !306
  %61 = load i32, i32* %11, align 4, !dbg !307
  %62 = call i32 @pcap_compile(%struct.pcap* %59, %struct.bpf_program* %10, i8* %60, i32 0, i32 %61), !dbg !308
  %63 = icmp eq i32 %62, -1, !dbg !309
  br i1 %63, label %64, label %69, !dbg !310

; <label>:64:                                     ; preds = %58
  %65 = load i8*, i8** %9, align 8, !dbg !311
  %66 = load %struct.pcap*, %struct.pcap** %8, align 8, !dbg !313
  %67 = call i8* @pcap_geterr(%struct.pcap* %66), !dbg !314
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i32 0, i32 0), i8* %65, i8* %67), !dbg !315
  store i32 -1, i32* %3, align 4, !dbg !317
  br label %84, !dbg !317

; <label>:69:                                     ; preds = %58
  %70 = load %struct.pcap*, %struct.pcap** %8, align 8, !dbg !318
  %71 = call i32 @pcap_setfilter(%struct.pcap* %70, %struct.bpf_program* %10), !dbg !320
  %72 = icmp eq i32 %71, -1, !dbg !321
  br i1 %72, label %73, label %78, !dbg !322

; <label>:73:                                     ; preds = %69
  %74 = load i8*, i8** %9, align 8, !dbg !323
  %75 = load %struct.pcap*, %struct.pcap** %8, align 8, !dbg !325
  %76 = call i8* @pcap_geterr(%struct.pcap* %75), !dbg !326
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i32 0, i32 0), i8* %74, i8* %76), !dbg !327
  store i32 -1, i32* %3, align 4, !dbg !329
  br label %84, !dbg !329

; <label>:78:                                     ; preds = %69
  br label %79, !dbg !330

; <label>:79:                                     ; preds = %78, %79
  %80 = load %struct.pcap*, %struct.pcap** %8, align 8, !dbg !331
  %81 = load %struct.libnet_context*, %struct.libnet_context** %13, align 8, !dbg !333
  %82 = bitcast %struct.libnet_context* %81 to i8*, !dbg !334
  %83 = call i32 @pcap_loop(%struct.pcap* %80, i32 1, void (i8*, %struct.pcap_pkthdr*, i8*)* @got_packet, i8* %82), !dbg !335
  br label %79, !dbg !336, !llvm.loop !338

; <label>:84:                                     ; preds = %73, %64, %56, %45, %27
  %85 = load i32, i32* %3, align 4, !dbg !339
  ret i32 %85, !dbg !339
}

declare i32 @pcap_lookupnet(i8*, i32*, i32*, i8*) #1

declare %struct.pcap* @pcap_open_live(i8*, i32, i32, i32, i8*) #1

declare i32 @pcap_compile(%struct.pcap*, %struct.bpf_program*, i8*, i32, i32) #1

declare i8* @pcap_geterr(%struct.pcap*) #1

declare i32 @pcap_setfilter(%struct.pcap*, %struct.bpf_program*) #1

declare i32 @pcap_loop(%struct.pcap*, i32, void (i8*, %struct.pcap_pkthdr*, i8*)*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!119, !120}
!llvm.ident = !{!121}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !91)
!1 = !DIFile(filename: "net_speeder.i", directory: "/home/lichi/Desktop/net_speed_master")
!2 = !{}
!3 = !{!4, !64, !84, !86, !87}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "libnet_t", file: !6, line: 235, baseType: !7)
!6 = !DIFile(filename: "/usr/include/libnet/libnet-structures.h", directory: "/home/lichi/Desktop/net_speed_master")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_context", file: !6, line: 186, size: 3200, align: 64, elements: !8)
!8 = !{!9, !11, !12, !38, !39, !40, !41, !42, !43, !46, !54, !55, !59, !63}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !7, file: !6, line: 192, baseType: !10, size: 32, align: 32)
!10 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "injection_type", scope: !7, file: !6, line: 194, baseType: !10, size: 32, align: 32, offset: 32)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_blocks", scope: !7, file: !6, line: 206, baseType: !13, size: 64, align: 64, offset: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "libnet_pblock_t", file: !6, line: 178, baseType: !15)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_protocol_block", file: !6, line: 77, size: 384, align: 64, elements: !16)
!16 = !{!17, !22, !25, !28, !29, !30, !31, !35, !37}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !15, file: !6, line: 79, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !20, line: 48, baseType: !21)
!20 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/net_speed_master")
!21 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "b_len", scope: !15, file: !6, line: 80, baseType: !23, size: 32, align: 32, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !20, line: 51, baseType: !24)
!24 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "h_len", scope: !15, file: !6, line: 81, baseType: !26, size: 16, align: 16, offset: 96)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !20, line: 49, baseType: !27)
!27 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "copied", scope: !15, file: !6, line: 92, baseType: !23, size: 32, align: 32, offset: 128)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !15, file: !6, line: 94, baseType: !19, size: 8, align: 8, offset: 160)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !15, file: !6, line: 168, baseType: !19, size: 8, align: 8, offset: 168)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "ptag", scope: !15, file: !6, line: 170, baseType: !32, size: 32, align: 32, offset: 192)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "libnet_ptag_t", file: !6, line: 70, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !34, line: 196, baseType: !10)
!34 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/net_speed_master")
!35 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !15, file: !6, line: 175, baseType: !36, size: 64, align: 64, offset: 256)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !15, file: !6, line: 176, baseType: !36, size: 64, align: 64, offset: 320)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "pblock_end", scope: !7, file: !6, line: 207, baseType: !13, size: 64, align: 64, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "n_pblocks", scope: !7, file: !6, line: 208, baseType: !23, size: 32, align: 32, offset: 192)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "link_type", scope: !7, file: !6, line: 210, baseType: !10, size: 32, align: 32, offset: 224)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "link_offset", scope: !7, file: !6, line: 224, baseType: !10, size: 32, align: 32, offset: 256)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "aligner", scope: !7, file: !6, line: 225, baseType: !10, size: 32, align: 32, offset: 288)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !7, file: !6, line: 226, baseType: !44, size: 64, align: 64, offset: 320)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !7, file: !6, line: 228, baseType: !47, size: 192, align: 64, offset: 384)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_stats", file: !6, line: 52, size: 192, align: 64, elements: !48)
!48 = !{!49, !52, !53}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "packets_sent", scope: !47, file: !6, line: 55, baseType: !50, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !20, line: 55, baseType: !51)
!51 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "packet_errors", scope: !47, file: !6, line: 56, baseType: !50, size: 64, align: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_written", scope: !47, file: !6, line: 57, baseType: !50, size: 64, align: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "ptag_state", scope: !7, file: !6, line: 229, baseType: !32, size: 32, align: 32, offset: 576)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !7, file: !6, line: 230, baseType: !56, size: 512, align: 8, offset: 608)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 512, align: 8, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "err_buf", scope: !7, file: !6, line: 232, baseType: !60, size: 2048, align: 8, offset: 1120)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 2048, align: 8, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 256)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "total_size", scope: !7, file: !6, line: 233, baseType: !23, size: 32, align: 32, offset: 3168)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_ipv4_hdr", file: !66, line: 666, size: 160, align: 32, elements: !67)
!66 = !DIFile(filename: "/usr/include/libnet/libnet-headers.h", directory: "/home/lichi/Desktop/net_speed_master")
!67 = !{!68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !83}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "ip_hl", scope: !65, file: !66, line: 669, baseType: !19, size: 4, align: 8, flags: DIFlagBitField, extraData: i64 0)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "ip_v", scope: !65, file: !66, line: 670, baseType: !19, size: 4, align: 8, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "ip_tos", scope: !65, file: !66, line: 676, baseType: !19, size: 8, align: 8, offset: 8)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "ip_len", scope: !65, file: !66, line: 689, baseType: !26, size: 16, align: 16, offset: 16)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "ip_id", scope: !65, file: !66, line: 690, baseType: !26, size: 16, align: 16, offset: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "ip_off", scope: !65, file: !66, line: 691, baseType: !26, size: 16, align: 16, offset: 48)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "ip_ttl", scope: !65, file: !66, line: 704, baseType: !19, size: 8, align: 8, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "ip_p", scope: !65, file: !66, line: 705, baseType: !19, size: 8, align: 8, offset: 72)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "ip_sum", scope: !65, file: !66, line: 706, baseType: !26, size: 16, align: 16, offset: 80)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "ip_src", scope: !65, file: !66, line: 707, baseType: !78, size: 32, align: 32, offset: 96)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !79, line: 31, size: 32, align: 32, elements: !80)
!79 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/net_speed_master")
!80 = !{!81}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !78, file: !79, line: 33, baseType: !82, size: 32, align: 32)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !79, line: 30, baseType: !23)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "ip_dst", scope: !65, file: !66, line: 707, baseType: !78, size: 32, align: 32, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int8_t", file: !34, line: 200, baseType: !21)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, align: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !34, line: 33, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !90, line: 30, baseType: !21)
!90 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/net_speed_master")
!91 = !{!92}
!92 = distinct !DIGlobalVariable(name: "count", scope: !93, file: !94, line: 38, type: !10, isLocal: true, isDefinition: true, variable: i32* @got_packet.count)
!93 = distinct !DISubprogram(name: "got_packet", scope: !94, file: !94, line: 37, type: !95, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!94 = !DIFile(filename: "net_speeder.c", directory: "/home/lichi/Desktop/net_speed_master")
!95 = !DISubroutineType(types: !96)
!96 = !{null, !87, !97, !117}
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcap_pkthdr", file: !100, line: 160, size: 192, align: 64, elements: !101)
!100 = !DIFile(filename: "/usr/include/pcap/pcap.h", directory: "/home/lichi/Desktop/net_speed_master")
!101 = !{!102, !111, !116}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !99, file: !100, line: 161, baseType: !103, size: 128, align: 64)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !104, line: 30, size: 128, align: 64, elements: !105)
!104 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/net_speed_master")
!105 = !{!106, !109}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !103, file: !104, line: 32, baseType: !107, size: 64, align: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !90, line: 139, baseType: !108)
!108 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !103, file: !104, line: 33, baseType: !110, size: 64, align: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !90, line: 141, baseType: !108)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "caplen", scope: !99, file: !100, line: 162, baseType: !112, size: 32, align: 32, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "bpf_u_int32", file: !113, line: 87, baseType: !114)
!113 = !DIFile(filename: "/usr/include/pcap/bpf.h", directory: "/home/lichi/Desktop/net_speed_master")
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !34, line: 35, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_int", file: !90, line: 32, baseType: !24)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !99, file: !100, line: 163, baseType: !112, size: 32, align: 32, offset: 160)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!119 = !{i32 2, !"Dwarf Version", i32 4}
!120 = !{i32 2, !"Debug Info Version", i32 3}
!121 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!122 = distinct !DISubprogram(name: "print_usage", scope: !94, file: !94, line: 28, type: !123, isLocal: false, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!123 = !DISubroutineType(types: !124)
!124 = !{null}
!125 = !DILocation(line: 29, column: 2, scope: !122)
!126 = !DILocation(line: 30, column: 2, scope: !122)
!127 = !DILocation(line: 31, column: 2, scope: !122)
!128 = !DILocation(line: 32, column: 2, scope: !122)
!129 = !DILocation(line: 33, column: 2, scope: !122)
!130 = !DILocation(line: 34, column: 2, scope: !122)
!131 = !DILocation(line: 35, column: 1, scope: !122)
!132 = !DILocalVariable(name: "args", arg: 1, scope: !93, file: !94, line: 37, type: !87)
!133 = !DIExpression()
!134 = !DILocation(line: 37, column: 25, scope: !93)
!135 = !DILocalVariable(name: "header", arg: 2, scope: !93, file: !94, line: 37, type: !97)
!136 = !DILocation(line: 37, column: 57, scope: !93)
!137 = !DILocalVariable(name: "packet", arg: 3, scope: !93, file: !94, line: 37, type: !117)
!138 = !DILocation(line: 37, column: 79, scope: !93)
!139 = !DILocalVariable(name: "ip", scope: !93, file: !94, line: 39, type: !64)
!140 = !DILocation(line: 39, column: 26, scope: !93)
!141 = !DILocalVariable(name: "libnet_handler", scope: !93, file: !94, line: 41, type: !4)
!142 = !DILocation(line: 41, column: 12, scope: !93)
!143 = !DILocation(line: 41, column: 41, scope: !93)
!144 = !DILocation(line: 41, column: 29, scope: !93)
!145 = !DILocation(line: 42, column: 7, scope: !93)
!146 = !DILocation(line: 44, column: 33, scope: !93)
!147 = !DILocation(line: 44, column: 40, scope: !93)
!148 = !DILocation(line: 44, column: 7, scope: !93)
!149 = !DILocation(line: 44, column: 5, scope: !93)
!150 = !DILocation(line: 46, column: 5, scope: !151)
!151 = distinct !DILexicalBlock(scope: !93, file: !94, line: 46, column: 5)
!152 = !DILocation(line: 46, column: 9, scope: !151)
!153 = !DILocation(line: 46, column: 16, scope: !151)
!154 = !DILocation(line: 46, column: 5, scope: !93)
!155 = !DILocation(line: 47, column: 3, scope: !156)
!156 = distinct !DILexicalBlock(scope: !151, file: !94, line: 46, column: 23)
!157 = !DILocation(line: 47, column: 7, scope: !156)
!158 = !DILocation(line: 47, column: 14, scope: !156)
!159 = !DILocalVariable(name: "len_written", scope: !156, file: !94, line: 48, type: !10)
!160 = !DILocation(line: 48, column: 7, scope: !156)
!161 = !DILocation(line: 48, column: 47, scope: !156)
!162 = !DILocation(line: 48, column: 75, scope: !156)
!163 = !DILocation(line: 48, column: 63, scope: !156)
!164 = !DILocation(line: 48, column: 85, scope: !156)
!165 = !DILocation(line: 48, column: 89, scope: !156)
!166 = !DILocation(line: 48, column: 79, scope: !156)
!167 = !DILocation(line: 48, column: 21, scope: !168)
!168 = !DILexicalBlockFile(scope: !156, file: !94, discriminator: 1)
!169 = !DILocation(line: 49, column: 6, scope: !170)
!170 = distinct !DILexicalBlock(scope: !156, file: !94, line: 49, column: 6)
!171 = !DILocation(line: 49, column: 18, scope: !170)
!172 = !DILocation(line: 49, column: 6, scope: !156)
!173 = !DILocation(line: 50, column: 56, scope: !174)
!174 = distinct !DILexicalBlock(scope: !170, file: !94, line: 49, column: 23)
!175 = !DILocation(line: 50, column: 60, scope: !174)
!176 = !DILocation(line: 50, column: 50, scope: !174)
!177 = !DILocation(line: 50, column: 69, scope: !174)
!178 = !DILocation(line: 50, column: 4, scope: !179)
!179 = !DILexicalBlockFile(scope: !174, file: !94, discriminator: 1)
!180 = !DILocation(line: 51, column: 45, scope: !174)
!181 = !DILocation(line: 51, column: 29, scope: !174)
!182 = !DILocation(line: 51, column: 4, scope: !179)
!183 = !DILocation(line: 52, column: 3, scope: !174)
!184 = !DILocation(line: 53, column: 2, scope: !156)
!185 = !DILocation(line: 56, column: 2, scope: !93)
!186 = distinct !DISubprogram(name: "start_libnet", scope: !94, file: !94, line: 59, type: !187, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!187 = !DISubroutineType(types: !188)
!188 = !{!4, !44}
!189 = !DILocalVariable(name: "dev", arg: 1, scope: !186, file: !94, line: 59, type: !44)
!190 = !DILocation(line: 59, column: 30, scope: !186)
!191 = !DILocalVariable(name: "errbuf", scope: !186, file: !94, line: 60, type: !60)
!192 = !DILocation(line: 60, column: 7, scope: !186)
!193 = !DILocalVariable(name: "libnet_handler", scope: !186, file: !94, line: 61, type: !4)
!194 = !DILocation(line: 61, column: 12, scope: !186)
!195 = !DILocation(line: 61, column: 57, scope: !186)
!196 = !DILocation(line: 61, column: 62, scope: !186)
!197 = !DILocation(line: 61, column: 29, scope: !186)
!198 = !DILocation(line: 63, column: 12, scope: !199)
!199 = distinct !DILexicalBlock(scope: !186, file: !94, line: 63, column: 4)
!200 = !DILocation(line: 63, column: 9, scope: !199)
!201 = !DILocation(line: 63, column: 4, scope: !186)
!202 = !DILocation(line: 64, column: 37, scope: !203)
!203 = distinct !DILexicalBlock(scope: !199, file: !94, line: 63, column: 28)
!204 = !DILocation(line: 64, column: 3, scope: !203)
!205 = !DILocation(line: 65, column: 2, scope: !203)
!206 = !DILocation(line: 66, column: 9, scope: !186)
!207 = !DILocation(line: 66, column: 2, scope: !186)
!208 = distinct !DISubprogram(name: "main", scope: !94, file: !94, line: 70, type: !209, isLocal: false, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!209 = !DISubroutineType(types: !210)
!210 = !{!10, !10, !211}
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!212 = !DILocalVariable(name: "argc", arg: 1, scope: !208, file: !94, line: 70, type: !10)
!213 = !DILocation(line: 70, column: 14, scope: !208)
!214 = !DILocalVariable(name: "argv", arg: 2, scope: !208, file: !94, line: 70, type: !211)
!215 = !DILocation(line: 70, column: 27, scope: !208)
!216 = !DILocalVariable(name: "dev", scope: !208, file: !94, line: 71, type: !44)
!217 = !DILocation(line: 71, column: 8, scope: !208)
!218 = !DILocalVariable(name: "errbuf", scope: !208, file: !94, line: 72, type: !60)
!219 = !DILocation(line: 72, column: 7, scope: !208)
!220 = !DILocalVariable(name: "handle", scope: !208, file: !94, line: 73, type: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "pcap_t", file: !100, line: 79, baseType: !223)
!223 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcap", file: !100, line: 79, flags: DIFlagFwdDecl)
!224 = !DILocation(line: 73, column: 10, scope: !208)
!225 = !DILocalVariable(name: "filter_rule", scope: !208, file: !94, line: 75, type: !44)
!226 = !DILocation(line: 75, column: 8, scope: !208)
!227 = !DILocalVariable(name: "fp", scope: !208, file: !94, line: 76, type: !228)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_program", file: !113, line: 106, size: 128, align: 64, elements: !229)
!229 = !{!230, !231}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "bf_len", scope: !228, file: !113, line: 107, baseType: !114, size: 32, align: 32)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "bf_insns", scope: !228, file: !113, line: 108, baseType: !232, size: 64, align: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_insn", file: !113, line: 1472, size: 64, align: 32, elements: !234)
!234 = !{!235, !238, !239, !240}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !233, file: !113, line: 1473, baseType: !236, size: 16, align: 16)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_short", file: !34, line: 34, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_short", file: !90, line: 31, baseType: !27)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "jt", scope: !233, file: !113, line: 1474, baseType: !88, size: 8, align: 8, offset: 16)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "jf", scope: !233, file: !113, line: 1475, baseType: !88, size: 8, align: 8, offset: 24)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !233, file: !113, line: 1476, baseType: !112, size: 32, align: 32, offset: 32)
!241 = !DILocation(line: 76, column: 21, scope: !208)
!242 = !DILocalVariable(name: "net", scope: !208, file: !94, line: 77, type: !112)
!243 = !DILocation(line: 77, column: 14, scope: !208)
!244 = !DILocalVariable(name: "mask", scope: !208, file: !94, line: 77, type: !112)
!245 = !DILocation(line: 77, column: 19, scope: !208)
!246 = !DILocation(line: 79, column: 6, scope: !247)
!247 = distinct !DILexicalBlock(scope: !208, file: !94, line: 79, column: 6)
!248 = !DILocation(line: 79, column: 11, scope: !247)
!249 = !DILocation(line: 79, column: 6, scope: !208)
!250 = !DILocation(line: 80, column: 9, scope: !251)
!251 = distinct !DILexicalBlock(scope: !247, file: !94, line: 79, column: 17)
!252 = !DILocation(line: 80, column: 7, scope: !251)
!253 = !DILocation(line: 81, column: 17, scope: !251)
!254 = !DILocation(line: 81, column: 15, scope: !251)
!255 = !DILocation(line: 82, column: 26, scope: !251)
!256 = !DILocation(line: 82, column: 3, scope: !251)
!257 = !DILocation(line: 83, column: 31, scope: !251)
!258 = !DILocation(line: 83, column: 3, scope: !251)
!259 = !DILocation(line: 84, column: 2, scope: !251)
!260 = !DILocation(line: 85, column: 3, scope: !261)
!261 = distinct !DILexicalBlock(scope: !247, file: !94, line: 84, column: 9)
!262 = !DILocation(line: 86, column: 3, scope: !261)
!263 = !DILocation(line: 89, column: 2, scope: !208)
!264 = !DILocation(line: 91, column: 21, scope: !265)
!265 = distinct !DILexicalBlock(scope: !208, file: !94, line: 91, column: 6)
!266 = !DILocation(line: 91, column: 39, scope: !265)
!267 = !DILocation(line: 91, column: 6, scope: !265)
!268 = !DILocation(line: 91, column: 47, scope: !265)
!269 = !DILocation(line: 91, column: 6, scope: !208)
!270 = !DILocation(line: 92, column: 54, scope: !271)
!271 = distinct !DILexicalBlock(scope: !265, file: !94, line: 91, column: 54)
!272 = !DILocation(line: 92, column: 59, scope: !271)
!273 = !DILocation(line: 92, column: 3, scope: !271)
!274 = !DILocation(line: 93, column: 7, scope: !271)
!275 = !DILocation(line: 94, column: 8, scope: !271)
!276 = !DILocation(line: 95, column: 2, scope: !271)
!277 = !DILocation(line: 97, column: 2, scope: !208)
!278 = !DILocation(line: 98, column: 26, scope: !208)
!279 = !DILocation(line: 98, column: 47, scope: !208)
!280 = !DILocation(line: 98, column: 11, scope: !208)
!281 = !DILocation(line: 98, column: 9, scope: !208)
!282 = !DILocation(line: 99, column: 5, scope: !283)
!283 = distinct !DILexicalBlock(scope: !208, file: !94, line: 99, column: 5)
!284 = !DILocation(line: 99, column: 12, scope: !283)
!285 = !DILocation(line: 99, column: 5, scope: !208)
!286 = !DILocation(line: 100, column: 48, scope: !287)
!287 = distinct !DILexicalBlock(scope: !283, file: !94, line: 99, column: 20)
!288 = !DILocation(line: 100, column: 53, scope: !287)
!289 = !DILocation(line: 100, column: 3, scope: !287)
!290 = !DILocation(line: 101, column: 3, scope: !287)
!291 = !DILocation(line: 102, column: 3, scope: !287)
!292 = !DILocation(line: 105, column: 2, scope: !208)
!293 = !DILocalVariable(name: "libnet_handler", scope: !208, file: !94, line: 106, type: !4)
!294 = !DILocation(line: 106, column: 12, scope: !208)
!295 = !DILocation(line: 106, column: 42, scope: !208)
!296 = !DILocation(line: 106, column: 29, scope: !208)
!297 = !DILocation(line: 107, column: 12, scope: !298)
!298 = distinct !DILexicalBlock(scope: !208, file: !94, line: 107, column: 4)
!299 = !DILocation(line: 107, column: 9, scope: !298)
!300 = !DILocation(line: 107, column: 4, scope: !208)
!301 = !DILocation(line: 108, column: 3, scope: !302)
!302 = distinct !DILexicalBlock(scope: !298, file: !94, line: 107, column: 28)
!303 = !DILocation(line: 109, column: 3, scope: !302)
!304 = !DILocation(line: 112, column: 19, scope: !305)
!305 = distinct !DILexicalBlock(scope: !208, file: !94, line: 112, column: 6)
!306 = !DILocation(line: 112, column: 32, scope: !305)
!307 = !DILocation(line: 112, column: 48, scope: !305)
!308 = !DILocation(line: 112, column: 6, scope: !305)
!309 = !DILocation(line: 112, column: 53, scope: !305)
!310 = !DILocation(line: 112, column: 6, scope: !208)
!311 = !DILocation(line: 113, column: 40, scope: !312)
!312 = distinct !DILexicalBlock(scope: !305, file: !94, line: 112, column: 60)
!313 = !DILocation(line: 113, column: 65, scope: !312)
!314 = !DILocation(line: 113, column: 53, scope: !312)
!315 = !DILocation(line: 113, column: 3, scope: !316)
!316 = !DILexicalBlockFile(scope: !312, file: !94, discriminator: 1)
!317 = !DILocation(line: 114, column: 3, scope: !312)
!318 = !DILocation(line: 117, column: 21, scope: !319)
!319 = distinct !DILexicalBlock(scope: !208, file: !94, line: 117, column: 6)
!320 = !DILocation(line: 117, column: 6, scope: !319)
!321 = !DILocation(line: 117, column: 34, scope: !319)
!322 = !DILocation(line: 117, column: 6, scope: !208)
!323 = !DILocation(line: 118, column: 42, scope: !324)
!324 = distinct !DILexicalBlock(scope: !319, file: !94, line: 117, column: 41)
!325 = !DILocation(line: 118, column: 67, scope: !324)
!326 = !DILocation(line: 118, column: 55, scope: !324)
!327 = !DILocation(line: 118, column: 3, scope: !328)
!328 = !DILexicalBlockFile(scope: !324, file: !94, discriminator: 1)
!329 = !DILocation(line: 119, column: 3, scope: !324)
!330 = !DILocation(line: 122, column: 2, scope: !208)
!331 = !DILocation(line: 123, column: 13, scope: !332)
!332 = distinct !DILexicalBlock(scope: !208, file: !94, line: 122, column: 11)
!333 = !DILocation(line: 123, column: 46, scope: !332)
!334 = !DILocation(line: 123, column: 36, scope: !332)
!335 = !DILocation(line: 123, column: 3, scope: !332)
!336 = !DILocation(line: 122, column: 2, scope: !337)
!337 = !DILexicalBlockFile(scope: !208, file: !94, discriminator: 1)
!338 = distinct !{!338, !330}
!339 = !DILocation(line: 131, column: 1, scope: !208)
