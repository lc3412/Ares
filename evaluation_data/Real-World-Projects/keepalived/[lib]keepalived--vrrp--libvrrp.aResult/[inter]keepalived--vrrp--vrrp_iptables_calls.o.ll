; ModuleID = './[inter]keepalived--vrrp--vrrp_iptables_calls.o.i'
source_filename = "./[inter]keepalived--vrrp--vrrp_iptables_calls.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._list = type { %struct._element*, %struct._element*, i32, void (i8*)*, void (%struct._IO_FILE*, i8*)* }
%struct._element = type { %struct._element*, %struct._element*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.xtc_handle = type opaque
%struct._ip_address = type { %struct.ifaddrmsg, %union.anon, %struct._interface*, i8*, i32, i32, i8, %union.anon.1, i8, %struct._static_track_group*, i8, i8, i8 }
%struct.ifaddrmsg = type { i8, i8, i8, i8, i32 }
%union.anon = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.0 }
%union.anon.0 = type { [4 x i32] }
%struct._interface = type { [16 x i8], i32, %struct.in_addr, %struct.in6_addr, i32, i8, i32, i16, [32 x i8], [32 x i8], i64, i32, i8, i32, %struct._interface*, i32, %struct._interface*, i8, %struct._garp_delay*, i8, i32, i32, i32, i32, i32, i8, %struct._list* }
%struct.in_addr = type { i32 }
%struct._garp_delay = type { %struct.timeval, i8, %struct.timeval, i8, %struct.timeval, %struct.timeval, i32 }
%struct.timeval = type { i64, i64 }
%union.anon.1 = type { %struct.in6_addr }
%struct._static_track_group = type { i8*, %struct._vector*, %struct._list* }
%struct._vector = type { i32, i32, i8** }
%struct.ipt_entry = type { %struct.ipt_ip, i32, i16, i16, i32, %struct.xt_counters, [0 x i8] }
%struct.ipt_ip = type { %struct.in_addr, %struct.in_addr, %struct.in_addr, %struct.in_addr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], i16, i8, i8 }
%struct.xt_counters = type { i64, i64 }
%struct.xt_entry_target = type { %union.anon.2, [0 x i8] }
%union.anon.2 = type { %struct.anon.4, [16 x i8] }
%struct.anon.4 = type { i16, %struct.xt_target* }
%struct.xt_target = type opaque
%struct.xt_entry_match = type { %union.anon.5, [0 x i8] }
%union.anon.5 = type { %struct.anon.7, [16 x i8] }
%struct.anon.7 = type { i16, %struct.xt_match* }
%struct.xt_match = type opaque
%struct.ipt_icmp = type { i8, [2 x i8], i8 }
%struct.anon = type { %struct.in_addr, %struct.in_addr }
%struct.anon.6 = type { i16, [29 x i8], i8 }
%struct.anon.3 = type { i16, [29 x i8], i8 }
%struct.ip6t_entry = type { %struct.ip6t_ip6, i32, i16, i16, i32, %struct.xt_counters, [0 x i8] }
%struct.ip6t_ip6 = type { %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], i16, i8, i8, i8 }
%struct.ip6t_icmp = type { i8, [2 x i8], i8 }
%struct.sigaction = type { %union.anon.8, %struct.__sigset_t, i32, void ()* }
%union.anon.8 = type { void (i32)* }
%struct.__sigset_t = type { [16 x i64] }
%struct.xt_set_info_match_v4 = type { %struct.xt_set_info, %struct.ip_set_counter_match, %struct.ip_set_counter_match, i32 }
%struct.xt_set_info = type { i16, i8, i8 }
%struct.ip_set_counter_match = type { i64, i8 }
%struct.ip_set_req_get_set_family = type { i32, i32, i32, %union.ip_set_name_index }
%union.ip_set_name_index = type { i16, [30 x i8] }
%struct.ip_set_req_version = type { i32, i32 }
%struct.ip_set_req_get_set = type { i32, i32, %union.ip_set_name_index }

@.str = private unnamed_addr constant [28 x i8] c"iptc_commit returned %d: %s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"icmp\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"ip4tables_process_entry for chain %s returned %d: %s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"icmp6\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"ip6tables_process_entry for chain %s returned %d: %s\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"iptc_insert_entry for chain %s returned %d: %s\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"ip6tc_insert_entry for chain %s returned %d: %s\00", align 1
@garp_delay = common global %struct._list* null, align 8
@.str.8 = private unnamed_addr constant [49 x i8] c"Problem when communicating with ipset, errno=%d.\00", align 1
@.str.9 = private unnamed_addr constant [75 x i8] c"Incorrect return size from kernel during ipset lookup, (want %zu, got %zu)\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Set %s doesn't exist.\00", align 1
@.str.11 = private unnamed_addr constant [62 x i8] c"The protocol family of set %s is %s, which is not applicable.\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"IPv4\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"IPv6\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"Can't open socket to ipset.\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"Kernel module xt_set is not loaded in.\00", align 1

; Function Attrs: nounwind uwtable
define %struct.xtc_handle* @ip4tables_open(i8*) #0 !dbg !312 {
  %2 = alloca %struct.xtc_handle*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.xtc_handle*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !322, metadata !323), !dbg !324
  call void @llvm.dbg.declare(metadata %struct.xtc_handle** %4, metadata !325, metadata !323), !dbg !326
  %5 = load i8*, i8** %3, align 8, !dbg !327
  %6 = call %struct.xtc_handle* @iptc_init(i8* %5), !dbg !329
  store %struct.xtc_handle* %6, %struct.xtc_handle** %4, align 8, !dbg !330
  %7 = icmp ne %struct.xtc_handle* %6, null, !dbg !330
  br i1 %7, label %9, label %8, !dbg !331

; <label>:8:                                      ; preds = %1
  store %struct.xtc_handle* null, %struct.xtc_handle** %2, align 8, !dbg !332
  br label %11, !dbg !332

; <label>:9:                                      ; preds = %1
  %10 = load %struct.xtc_handle*, %struct.xtc_handle** %4, align 8, !dbg !333
  store %struct.xtc_handle* %10, %struct.xtc_handle** %2, align 8, !dbg !334
  br label %11, !dbg !334

; <label>:11:                                     ; preds = %9, %8
  %12 = load %struct.xtc_handle*, %struct.xtc_handle** %2, align 8, !dbg !335
  ret %struct.xtc_handle* %12, !dbg !335
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct.xtc_handle* @iptc_init(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @ip4tables_close(%struct.xtc_handle*, i32) #0 !dbg !336 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xtc_handle*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xtc_handle* %0, %struct.xtc_handle** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.xtc_handle** %4, metadata !339, metadata !323), !dbg !340
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !341, metadata !323), !dbg !342
  call void @llvm.dbg.declare(metadata i32* %6, metadata !343, metadata !323), !dbg !344
  store i32 1, i32* %6, align 4, !dbg !344
  call void @llvm.dbg.declare(metadata i32* %7, metadata !345, metadata !323), !dbg !346
  %8 = load i32, i32* %5, align 4, !dbg !347
  %9 = icmp ne i32 %8, 0, !dbg !347
  br i1 %9, label %10, label %21, !dbg !349

; <label>:10:                                     ; preds = %2
  %11 = load %struct.xtc_handle*, %struct.xtc_handle** %4, align 8, !dbg !350
  %12 = call i32 @iptc_commit(%struct.xtc_handle* %11), !dbg !353
  store i32 %12, i32* %6, align 4, !dbg !354
  %13 = icmp ne i32 %12, 1, !dbg !355
  br i1 %13, label %14, label %20, !dbg !356

; <label>:14:                                     ; preds = %10
  %15 = call i32* @__errno_location() #1, !dbg !357
  %16 = load i32, i32* %15, align 4, !dbg !359
  store i32 %16, i32* %7, align 4, !dbg !360
  %17 = load i32, i32* %6, align 4, !dbg !361
  %18 = load i32, i32* %7, align 4, !dbg !362
  %19 = call i8* @iptc_strerror(i32 %18), !dbg !363
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i32 %17, i8* %19), !dbg !364
  br label %20, !dbg !366

; <label>:20:                                     ; preds = %14, %10
  br label %21, !dbg !367

; <label>:21:                                     ; preds = %20, %2
  %22 = load %struct.xtc_handle*, %struct.xtc_handle** %4, align 8, !dbg !368
  call void @iptc_free(%struct.xtc_handle* %22), !dbg !369
  %23 = load i32, i32* %6, align 4, !dbg !370
  %24 = icmp eq i32 %23, 1, !dbg !372
  br i1 %24, label %25, label %26, !dbg !373

; <label>:25:                                     ; preds = %21
  store i32 0, i32* %3, align 4, !dbg !374
  br label %28, !dbg !374

; <label>:26:                                     ; preds = %21
  %27 = load i32, i32* %7, align 4, !dbg !375
  store i32 %27, i32* %3, align 4, !dbg !376
  br label %28, !dbg !376

; <label>:28:                                     ; preds = %26, %25
  %29 = load i32, i32* %3, align 4, !dbg !377
  ret i32 %29, !dbg !377
}

declare i32 @iptc_commit(%struct.xtc_handle*) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

declare void @log_message(i32, i8*, ...) #2

declare i8* @iptc_strerror(i32) #2

declare void @iptc_free(%struct.xtc_handle*) #2

; Function Attrs: nounwind uwtable
define i32 @ip4tables_is_chain(%struct.xtc_handle*, i8*) #0 !dbg !378 {
  %3 = alloca %struct.xtc_handle*, align 8
  %4 = alloca i8*, align 8
  store %struct.xtc_handle* %0, %struct.xtc_handle** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.xtc_handle** %3, metadata !381, metadata !323), !dbg !382
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !383, metadata !323), !dbg !384
  %5 = load i8*, i8** %4, align 8, !dbg !385
  %6 = load %struct.xtc_handle*, %struct.xtc_handle** %3, align 8, !dbg !386
  %7 = call i32 @iptc_is_chain(i8* %5, %struct.xtc_handle* %6), !dbg !387
  ret i32 %7, !dbg !388
}

declare i32 @iptc_is_chain(i8*, %struct.xtc_handle*) #2

; Function Attrs: nounwind uwtable
define i32 @ip4tables_process_entry(%struct.xtc_handle*, i8*, i32, i8*, %struct._ip_address*, %struct._ip_address*, i8*, i8*, i16 zeroext, i8 zeroext, i32, i1 zeroext) #0 !dbg !389 {
  %13 = alloca i32, align 4
  %14 = alloca %struct.xtc_handle*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct._ip_address*, align 8
  %19 = alloca %struct._ip_address*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i16, align 2
  %23 = alloca i8, align 1
  %24 = alloca i32, align 4
  %25 = alloca i8, align 1
  %26 = alloca i64, align 8
  %27 = alloca %struct.ipt_entry*, align 8
  %28 = alloca %struct.xt_entry_target*, align 8
  %29 = alloca %struct.xt_entry_match*, align 8
  %30 = alloca [32 x i8], align 16
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca %struct.ipt_icmp*, align 8
  %34 = alloca i8*, align 8
  store %struct.xtc_handle* %0, %struct.xtc_handle** %14, align 8
  call void @llvm.dbg.declare(metadata %struct.xtc_handle** %14, metadata !508, metadata !323), !dbg !509
  store i8* %1, i8** %15, align 8
  call void @llvm.dbg.declare(metadata i8** %15, metadata !510, metadata !323), !dbg !511
  store i32 %2, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !512, metadata !323), !dbg !513
  store i8* %3, i8** %17, align 8
  call void @llvm.dbg.declare(metadata i8** %17, metadata !514, metadata !323), !dbg !515
  store %struct._ip_address* %4, %struct._ip_address** %18, align 8
  call void @llvm.dbg.declare(metadata %struct._ip_address** %18, metadata !516, metadata !323), !dbg !517
  store %struct._ip_address* %5, %struct._ip_address** %19, align 8
  call void @llvm.dbg.declare(metadata %struct._ip_address** %19, metadata !518, metadata !323), !dbg !519
  store i8* %6, i8** %20, align 8
  call void @llvm.dbg.declare(metadata i8** %20, metadata !520, metadata !323), !dbg !521
  store i8* %7, i8** %21, align 8
  call void @llvm.dbg.declare(metadata i8** %21, metadata !522, metadata !323), !dbg !523
  store i16 %8, i16* %22, align 2
  call void @llvm.dbg.declare(metadata i16* %22, metadata !524, metadata !323), !dbg !525
  store i8 %9, i8* %23, align 1
  call void @llvm.dbg.declare(metadata i8* %23, metadata !526, metadata !323), !dbg !527
  store i32 %10, i32* %24, align 4
  call void @llvm.dbg.declare(metadata i32* %24, metadata !528, metadata !323), !dbg !529
  %35 = zext i1 %11 to i8
  store i8 %35, i8* %25, align 1
  call void @llvm.dbg.declare(metadata i8* %25, metadata !530, metadata !323), !dbg !531
  call void @llvm.dbg.declare(metadata i64* %26, metadata !532, metadata !323), !dbg !533
  call void @llvm.dbg.declare(metadata %struct.ipt_entry** %27, metadata !534, metadata !323), !dbg !535
  call void @llvm.dbg.declare(metadata %struct.xt_entry_target** %28, metadata !536, metadata !323), !dbg !558
  call void @llvm.dbg.declare(metadata %struct.xt_entry_match** %29, metadata !559, metadata !323), !dbg !560
  call void @llvm.dbg.declare(metadata [32 x i8]* %30, metadata !561, metadata !323), !dbg !564
  call void @llvm.dbg.declare(metadata i32* %31, metadata !565, metadata !323), !dbg !566
  call void @llvm.dbg.declare(metadata i32* %32, metadata !567, metadata !323), !dbg !568
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* %30, i32 0, i32 0, !dbg !569
  call void @llvm.memset.p0i8.i64(i8* %36, i8 0, i64 32, i32 16, i1 false), !dbg !569
  store i64 152, i64* %26, align 8, !dbg !570
  %37 = load i16, i16* %22, align 2, !dbg !571
  %38 = zext i16 %37 to i32, !dbg !571
  %39 = icmp eq i32 %38, 1, !dbg !573
  br i1 %39, label %40, label %43, !dbg !574

; <label>:40:                                     ; preds = %12
  %41 = load i64, i64* %26, align 8, !dbg !575
  %42 = add i64 %41, 40, !dbg !575
  store i64 %42, i64* %26, align 8, !dbg !575
  br label %43, !dbg !576

; <label>:43:                                     ; preds = %40, %12
  %44 = load i64, i64* %26, align 8, !dbg !577
  %45 = call i8* @zalloc(i64 %44), !dbg !578
  %46 = bitcast i8* %45 to %struct.ipt_entry*, !dbg !579
  store %struct.ipt_entry* %46, %struct.ipt_entry** %27, align 8, !dbg !580
  %47 = load %struct.ipt_entry*, %struct.ipt_entry** %27, align 8, !dbg !581
  %48 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %47, i32 0, i32 2, !dbg !582
  store i16 112, i16* %48, align 8, !dbg !583
  %49 = load %struct._ip_address*, %struct._ip_address** %18, align 8, !dbg !584
  %50 = icmp ne %struct._ip_address* %49, null, !dbg !584
  br i1 %50, label %51, label %72, !dbg !586

; <label>:51:                                     ; preds = %43
  %52 = load %struct._ip_address*, %struct._ip_address** %18, align 8, !dbg !587
  %53 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %52, i32 0, i32 0, !dbg !589
  %54 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %53, i32 0, i32 0, !dbg !590
  %55 = load i8, i8* %54, align 8, !dbg !590
  %56 = zext i8 %55 to i32, !dbg !587
  %57 = icmp ne i32 %56, 0, !dbg !591
  br i1 %57, label %58, label %72, !dbg !592

; <label>:58:                                     ; preds = %51
  %59 = load %struct.ipt_entry*, %struct.ipt_entry** %27, align 8, !dbg !593
  %60 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %59, i32 0, i32 0, !dbg !595
  %61 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %60, i32 0, i32 0, !dbg !596
  %62 = bitcast %struct.in_addr* %61 to i8*, !dbg !597
  %63 = load %struct._ip_address*, %struct._ip_address** %18, align 8, !dbg !598
  %64 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %63, i32 0, i32 1, !dbg !599
  %65 = bitcast %union.anon* %64 to %struct.anon*, !dbg !600
  %66 = getelementptr inbounds %struct.anon, %struct.anon* %65, i32 0, i32 0, !dbg !601
  %67 = bitcast %struct.in_addr* %66 to i8*, !dbg !597
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %67, i64 4, i32 8, i1 false), !dbg !597
  %68 = load %struct.ipt_entry*, %struct.ipt_entry** %27, align 8, !dbg !602
  %69 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %68, i32 0, i32 0, !dbg !603
  %70 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %69, i32 0, i32 2, !dbg !604
  %71 = bitcast %struct.in_addr* %70 to i8*, !dbg !605
  call void @llvm.memset.p0i8.i64(i8* %71, i8 -1, i64 4, i32 8, i1 false), !dbg !605
  br label %72, !dbg !606

; <label>:72:                                     ; preds = %58, %51, %43
  %73 = load %struct._ip_address*, %struct._ip_address** %19, align 8, !dbg !607
  %74 = icmp ne %struct._ip_address* %73, null, !dbg !607
  br i1 %74, label %75, label %96, !dbg !609

; <label>:75:                                     ; preds = %72
  %76 = load %struct._ip_address*, %struct._ip_address** %19, align 8, !dbg !610
  %77 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %76, i32 0, i32 0, !dbg !612
  %78 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %77, i32 0, i32 0, !dbg !613
  %79 = load i8, i8* %78, align 8, !dbg !613
  %80 = zext i8 %79 to i32, !dbg !610
  %81 = icmp ne i32 %80, 0, !dbg !614
  br i1 %81, label %82, label %96, !dbg !615

; <label>:82:                                     ; preds = %75
  %83 = load %struct.ipt_entry*, %struct.ipt_entry** %27, align 8, !dbg !616
  %84 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %83, i32 0, i32 0, !dbg !618
  %85 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %84, i32 0, i32 1, !dbg !619
  %86 = bitcast %struct.in_addr* %85 to i8*, !dbg !620
  %87 = load %struct._ip_address*, %struct._ip_address** %19, align 8, !dbg !621
  %88 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %87, i32 0, i32 1, !dbg !622
  %89 = bitcast %union.anon* %88 to %struct.anon*, !dbg !623
  %90 = getelementptr inbounds %struct.anon, %struct.anon* %89, i32 0, i32 0, !dbg !624
  %91 = bitcast %struct.in_addr* %90 to i8*, !dbg !620
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %86, i8* %91, i64 4, i32 4, i1 false), !dbg !620
  %92 = load %struct.ipt_entry*, %struct.ipt_entry** %27, align 8, !dbg !625
  %93 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %92, i32 0, i32 0, !dbg !626
  %94 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %93, i32 0, i32 3, !dbg !627
  %95 = bitcast %struct.in_addr* %94 to i8*, !dbg !628
  call void @llvm.memset.p0i8.i64(i8* %95, i8 -1, i64 4, i32 4, i1 false), !dbg !628
  br label %96, !dbg !629

; <label>:96:                                     ; preds = %82, %75, %72
  %97 = load i8*, i8** %20, align 8, !dbg !630
  %98 = icmp ne i8* %97, null, !dbg !630
  br i1 %98, label %99, label %109, !dbg !632

; <label>:99:                                     ; preds = %96
  %100 = load %struct.ipt_entry*, %struct.ipt_entry** %27, align 8, !dbg !633
  %101 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %100, i32 0, i32 0, !dbg !634
  %102 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %101, i32 0, i32 4, !dbg !635
  %103 = getelementptr inbounds [16 x i8], [16 x i8]* %102, i32 0, i32 0, !dbg !633
  %104 = load %struct.ipt_entry*, %struct.ipt_entry** %27, align 8, !dbg !636
  %105 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %104, i32 0, i32 0, !dbg !637
  %106 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %105, i32 0, i32 6, !dbg !638
  %107 = getelementptr inbounds [16 x i8], [16 x i8]* %106, i32 0, i32 0, !dbg !636
  %108 = load i8*, i8** %20, align 8, !dbg !639
  call void @set_iface(i8* %103, i8* %107, i8* %108), !dbg !640
  br label %109, !dbg !640

; <label>:109:                                    ; preds = %99, %96
  %110 = load i8*, i8** %21, align 8, !dbg !641
  %111 = icmp ne i8* %110, null, !dbg !641
  br i1 %111, label %112, label %122, !dbg !643

; <label>:112:                                    ; preds = %109
  %113 = load %struct.ipt_entry*, %struct.ipt_entry** %27, align 8, !dbg !644
  %114 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %113, i32 0, i32 0, !dbg !645
  %115 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %114, i32 0, i32 5, !dbg !646
  %116 = getelementptr inbounds [16 x i8], [16 x i8]* %115, i32 0, i32 0, !dbg !644
  %117 = load %struct.ipt_entry*, %struct.ipt_entry** %27, align 8, !dbg !647
  %118 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %117, i32 0, i32 0, !dbg !648
  %119 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %118, i32 0, i32 7, !dbg !649
  %120 = getelementptr inbounds [16 x i8], [16 x i8]* %119, i32 0, i32 0, !dbg !647
  %121 = load i8*, i8** %21, align 8, !dbg !650
  call void @set_iface(i8* %116, i8* %120, i8* %121), !dbg !651
  br label %122, !dbg !651

; <label>:122:                                    ; preds = %112, %109
  %123 = load i16, i16* %22, align 2, !dbg !652
  %124 = zext i16 %123 to i32, !dbg !652
  %125 = icmp ne i32 %124, 59, !dbg !654
  br i1 %125, label %126, label %186, !dbg !655

; <label>:126:                                    ; preds = %122
  %127 = load i16, i16* %22, align 2, !dbg !656
  %128 = load %struct.ipt_entry*, %struct.ipt_entry** %27, align 8, !dbg !658
  %129 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %128, i32 0, i32 0, !dbg !659
  %130 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %129, i32 0, i32 8, !dbg !660
  store i16 %127, i16* %130, align 8, !dbg !661
  %131 = load i16, i16* %22, align 2, !dbg !662
  %132 = zext i16 %131 to i32, !dbg !662
  %133 = icmp eq i32 %132, 1, !dbg !664
  br i1 %133, label %134, label %185, !dbg !665

; <label>:134:                                    ; preds = %126
  %135 = load %struct.ipt_entry*, %struct.ipt_entry** %27, align 8, !dbg !666
  %136 = bitcast %struct.ipt_entry* %135 to i8*, !dbg !668
  %137 = load %struct.ipt_entry*, %struct.ipt_entry** %27, align 8, !dbg !669
  %138 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %137, i32 0, i32 2, !dbg !670
  %139 = load i16, i16* %138, align 8, !dbg !670
  %140 = zext i16 %139 to i32, !dbg !669
  %141 = sext i32 %140 to i64, !dbg !671
  %142 = getelementptr inbounds i8, i8* %136, i64 %141, !dbg !671
  %143 = bitcast i8* %142 to %struct.xt_entry_match*, !dbg !672
  store %struct.xt_entry_match* %143, %struct.xt_entry_match** %29, align 8, !dbg !673
  %144 = load %struct.xt_entry_match*, %struct.xt_entry_match** %29, align 8, !dbg !674
  %145 = getelementptr inbounds %struct.xt_entry_match, %struct.xt_entry_match* %144, i32 0, i32 0, !dbg !675
  %146 = bitcast %union.anon.5* %145 to i16*, !dbg !676
  store i16 40, i16* %146, align 8, !dbg !677
  %147 = load %struct.xt_entry_match*, %struct.xt_entry_match** %29, align 8, !dbg !678
  %148 = getelementptr inbounds %struct.xt_entry_match, %struct.xt_entry_match* %147, i32 0, i32 0, !dbg !679
  %149 = bitcast %union.anon.5* %148 to %struct.anon.6*, !dbg !680
  %150 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %149, i32 0, i32 2, !dbg !681
  store i8 0, i8* %150, align 1, !dbg !682
  %151 = load %struct.ipt_entry*, %struct.ipt_entry** %27, align 8, !dbg !683
  %152 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %151, i32 0, i32 2, !dbg !684
  %153 = load i16, i16* %152, align 8, !dbg !684
  %154 = zext i16 %153 to i32, !dbg !683
  %155 = load %struct.xt_entry_match*, %struct.xt_entry_match** %29, align 8, !dbg !685
  %156 = getelementptr inbounds %struct.xt_entry_match, %struct.xt_entry_match* %155, i32 0, i32 0, !dbg !686
  %157 = bitcast %union.anon.5* %156 to i16*, !dbg !687
  %158 = load i16, i16* %157, align 8, !dbg !687
  %159 = zext i16 %158 to i32, !dbg !685
  %160 = add nsw i32 %154, %159, !dbg !688
  %161 = trunc i32 %160 to i16, !dbg !689
  %162 = load %struct.ipt_entry*, %struct.ipt_entry** %27, align 8, !dbg !690
  %163 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %162, i32 0, i32 2, !dbg !691
  store i16 %161, i16* %163, align 8, !dbg !692
  %164 = load %struct.xt_entry_match*, %struct.xt_entry_match** %29, align 8, !dbg !693
  %165 = getelementptr inbounds %struct.xt_entry_match, %struct.xt_entry_match* %164, i32 0, i32 0, !dbg !694
  %166 = bitcast %union.anon.5* %165 to %struct.anon.6*, !dbg !695
  %167 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %166, i32 0, i32 1, !dbg !696
  %168 = getelementptr inbounds [29 x i8], [29 x i8]* %167, i32 0, i32 0, !dbg !693
  %169 = call i8* @strcpy(i8* %168, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)) #7, !dbg !697
  call void @llvm.dbg.declare(metadata %struct.ipt_icmp** %33, metadata !698, metadata !323), !dbg !699
  %170 = load %struct.xt_entry_match*, %struct.xt_entry_match** %29, align 8, !dbg !700
  %171 = getelementptr inbounds %struct.xt_entry_match, %struct.xt_entry_match* %170, i32 0, i32 1, !dbg !701
  %172 = getelementptr inbounds [0 x i8], [0 x i8]* %171, i32 0, i32 0, !dbg !700
  %173 = bitcast i8* %172 to %struct.ipt_icmp*, !dbg !702
  store %struct.ipt_icmp* %173, %struct.ipt_icmp** %33, align 8, !dbg !699
  %174 = load i8, i8* %23, align 1, !dbg !703
  %175 = load %struct.ipt_icmp*, %struct.ipt_icmp** %33, align 8, !dbg !704
  %176 = getelementptr inbounds %struct.ipt_icmp, %struct.ipt_icmp* %175, i32 0, i32 0, !dbg !705
  store i8 %174, i8* %176, align 1, !dbg !706
  %177 = load %struct.ipt_icmp*, %struct.ipt_icmp** %33, align 8, !dbg !707
  %178 = getelementptr inbounds %struct.ipt_icmp, %struct.ipt_icmp* %177, i32 0, i32 1, !dbg !708
  %179 = getelementptr inbounds [2 x i8], [2 x i8]* %178, i64 0, i64 0, !dbg !707
  store i8 0, i8* %179, align 1, !dbg !709
  %180 = load %struct.ipt_icmp*, %struct.ipt_icmp** %33, align 8, !dbg !710
  %181 = getelementptr inbounds %struct.ipt_icmp, %struct.ipt_icmp* %180, i32 0, i32 1, !dbg !711
  %182 = getelementptr inbounds [2 x i8], [2 x i8]* %181, i64 0, i64 1, !dbg !710
  store i8 -1, i8* %182, align 1, !dbg !712
  %183 = load %struct.ipt_icmp*, %struct.ipt_icmp** %33, align 8, !dbg !713
  %184 = getelementptr inbounds %struct.ipt_icmp, %struct.ipt_icmp* %183, i32 0, i32 2, !dbg !714
  store i8 0, i8* %184, align 1, !dbg !715
  br label %185, !dbg !716

; <label>:185:                                    ; preds = %134, %126
  br label %186, !dbg !717

; <label>:186:                                    ; preds = %185, %122
  %187 = load i64, i64* %26, align 8, !dbg !718
  %188 = trunc i64 %187 to i16, !dbg !719
  %189 = load %struct.ipt_entry*, %struct.ipt_entry** %27, align 8, !dbg !720
  %190 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %189, i32 0, i32 3, !dbg !721
  store i16 %188, i16* %190, align 2, !dbg !722
  %191 = load %struct.ipt_entry*, %struct.ipt_entry** %27, align 8, !dbg !723
  %192 = call %struct.xt_entry_target* @ipt_get_target(%struct.ipt_entry* %191), !dbg !724
  store %struct.xt_entry_target* %192, %struct.xt_entry_target** %28, align 8, !dbg !725
  %193 = load %struct.xt_entry_target*, %struct.xt_entry_target** %28, align 8, !dbg !726
  %194 = getelementptr inbounds %struct.xt_entry_target, %struct.xt_entry_target* %193, i32 0, i32 0, !dbg !727
  %195 = bitcast %union.anon.2* %194 to %struct.anon.3*, !dbg !728
  %196 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %195, i32 0, i32 0, !dbg !729
  store i16 40, i16* %196, align 8, !dbg !730
  %197 = load %struct.xt_entry_target*, %struct.xt_entry_target** %28, align 8, !dbg !731
  %198 = getelementptr inbounds %struct.xt_entry_target, %struct.xt_entry_target* %197, i32 0, i32 0, !dbg !732
  %199 = bitcast %union.anon.2* %198 to %struct.anon.3*, !dbg !733
  %200 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %199, i32 0, i32 1, !dbg !734
  %201 = getelementptr inbounds [29 x i8], [29 x i8]* %200, i32 0, i32 0, !dbg !731
  %202 = load i8*, i8** %17, align 8, !dbg !735
  %203 = call i8* @strcpy(i8* %201, i8* %202) #7, !dbg !736
  %204 = getelementptr inbounds [32 x i8], [32 x i8]* %30, i32 0, i32 0, !dbg !737
  %205 = load i8*, i8** %15, align 8, !dbg !738
  %206 = call i8* @strcpy(i8* %204, i8* %205) #7, !dbg !739
  %207 = load i32, i32* %24, align 4, !dbg !740
  %208 = icmp eq i32 %207, 0, !dbg !742
  br i1 %208, label %209, label %225, !dbg !743

; <label>:209:                                    ; preds = %186
  %210 = load %struct.ipt_entry*, %struct.ipt_entry** %27, align 8, !dbg !744
  %211 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %210, i32 0, i32 3, !dbg !746
  %212 = load i16, i16* %211, align 2, !dbg !746
  %213 = zext i16 %212 to i64, !dbg !747
  %214 = call i8* @llvm.stacksave(), !dbg !747
  store i8* %214, i8** %34, align 8, !dbg !747
  %215 = alloca i8, i64 %213, align 16, !dbg !747
  call void @llvm.dbg.declare(metadata i8* %215, metadata !748, metadata !752), !dbg !753
  %216 = load %struct.ipt_entry*, %struct.ipt_entry** %27, align 8, !dbg !754
  %217 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %216, i32 0, i32 3, !dbg !755
  %218 = load i16, i16* %217, align 2, !dbg !755
  %219 = zext i16 %218 to i64, !dbg !754
  call void @llvm.memset.p0i8.i64(i8* %215, i8 -1, i64 %219, i32 16, i1 false), !dbg !756
  %220 = getelementptr inbounds [32 x i8], [32 x i8]* %30, i32 0, i32 0, !dbg !757
  %221 = load %struct.ipt_entry*, %struct.ipt_entry** %27, align 8, !dbg !758
  %222 = load %struct.xtc_handle*, %struct.xtc_handle** %14, align 8, !dbg !759
  %223 = call i32 @iptc_delete_entry(i8* %220, %struct.ipt_entry* %221, i8* %215, %struct.xtc_handle* %222), !dbg !760
  store i32 %223, i32* %31, align 4, !dbg !761
  %224 = load i8*, i8** %34, align 8, !dbg !762
  call void @llvm.stackrestore(i8* %224), !dbg !762
  br label %240, !dbg !763

; <label>:225:                                    ; preds = %186
  %226 = load i32, i32* %16, align 4, !dbg !764
  %227 = icmp eq i32 %226, -1, !dbg !766
  br i1 %227, label %228, label %233, !dbg !767

; <label>:228:                                    ; preds = %225
  %229 = getelementptr inbounds [32 x i8], [32 x i8]* %30, i32 0, i32 0, !dbg !768
  %230 = load %struct.ipt_entry*, %struct.ipt_entry** %27, align 8, !dbg !769
  %231 = load %struct.xtc_handle*, %struct.xtc_handle** %14, align 8, !dbg !770
  %232 = call i32 @iptc_append_entry(i8* %229, %struct.ipt_entry* %230, %struct.xtc_handle* %231), !dbg !771
  store i32 %232, i32* %31, align 4, !dbg !772
  br label %239, !dbg !773

; <label>:233:                                    ; preds = %225
  %234 = getelementptr inbounds [32 x i8], [32 x i8]* %30, i32 0, i32 0, !dbg !774
  %235 = load %struct.ipt_entry*, %struct.ipt_entry** %27, align 8, !dbg !775
  %236 = load i32, i32* %16, align 4, !dbg !776
  %237 = load %struct.xtc_handle*, %struct.xtc_handle** %14, align 8, !dbg !777
  %238 = call i32 @iptc_insert_entry(i8* %234, %struct.ipt_entry* %235, i32 %236, %struct.xtc_handle* %237), !dbg !778
  store i32 %238, i32* %31, align 4, !dbg !779
  br label %239

; <label>:239:                                    ; preds = %233, %228
  br label %240

; <label>:240:                                    ; preds = %239, %209
  %241 = call i32* @__errno_location() #1, !dbg !780
  %242 = load i32, i32* %241, align 4, !dbg !781
  store i32 %242, i32* %32, align 4, !dbg !782
  %243 = load %struct.ipt_entry*, %struct.ipt_entry** %27, align 8, !dbg !783
  %244 = bitcast %struct.ipt_entry* %243 to i8*, !dbg !783
  call void @free(i8* %244) #7, !dbg !784
  store %struct.ipt_entry* null, %struct.ipt_entry** %27, align 8, !dbg !785
  %245 = load i32, i32* %31, align 4, !dbg !786
  %246 = icmp ne i32 %245, 1, !dbg !788
  br i1 %246, label %247, label %259, !dbg !789

; <label>:247:                                    ; preds = %240
  %248 = load i8, i8* %25, align 1, !dbg !790
  %249 = trunc i8 %248 to i1, !dbg !790
  br i1 %249, label %250, label %253, !dbg !792

; <label>:250:                                    ; preds = %247
  %251 = load i32, i32* %32, align 4, !dbg !793
  %252 = icmp ne i32 %251, 2, !dbg !795
  br i1 %252, label %253, label %259, !dbg !796

; <label>:253:                                    ; preds = %250, %247
  %254 = getelementptr inbounds [32 x i8], [32 x i8]* %30, i32 0, i32 0, !dbg !797
  %255 = load i32, i32* %31, align 4, !dbg !799
  %256 = load i32, i32* %32, align 4, !dbg !800
  %257 = call i8* @iptc_strerror(i32 %256), !dbg !801
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i32 0, i32 0), i8* %254, i32 %255, i8* %257), !dbg !802
  %258 = load i32, i32* %32, align 4, !dbg !804
  store i32 %258, i32* %13, align 4, !dbg !805
  br label %260, !dbg !805

; <label>:259:                                    ; preds = %250, %240
  store i32 0, i32* %13, align 4, !dbg !806
  br label %260, !dbg !806

; <label>:260:                                    ; preds = %259, %253
  %261 = load i32, i32* %13, align 4, !dbg !807
  ret i32 %261, !dbg !807
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

declare i8* @zalloc(i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal void @set_iface(i8*, i8*, i8*) #0 !dbg !808 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !812, metadata !323), !dbg !813
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !814, metadata !323), !dbg !815
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !816, metadata !323), !dbg !817
  call void @llvm.dbg.declare(metadata i64* %7, metadata !818, metadata !323), !dbg !819
  %8 = load i8*, i8** %6, align 8, !dbg !820
  %9 = call i64 @strlen(i8* %8) #9, !dbg !821
  store i64 %9, i64* %7, align 8, !dbg !819
  %10 = load i8*, i8** %4, align 8, !dbg !822
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 16, i32 1, i1 false), !dbg !823
  %11 = load i8*, i8** %5, align 8, !dbg !824
  call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 16, i32 1, i1 false), !dbg !825
  %12 = load i8*, i8** %4, align 8, !dbg !826
  %13 = load i8*, i8** %6, align 8, !dbg !827
  %14 = call i8* @strcpy(i8* %12, i8* %13) #7, !dbg !828
  %15 = load i64, i64* %7, align 8, !dbg !829
  %16 = icmp ne i64 %15, 0, !dbg !829
  br i1 %16, label %18, label %17, !dbg !831

; <label>:17:                                     ; preds = %3
  br label %22, !dbg !832

; <label>:18:                                     ; preds = %3
  %19 = load i8*, i8** %5, align 8, !dbg !833
  %20 = load i64, i64* %7, align 8, !dbg !834
  %21 = add i64 %20, 1, !dbg !835
  call void @llvm.memset.p0i8.i64(i8* %19, i8 -1, i64 %21, i32 1, i1 false), !dbg !836
  br label %22, !dbg !837

; <label>:22:                                     ; preds = %18, %17
  ret void, !dbg !838
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #5

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.xt_entry_target* @ipt_get_target(%struct.ipt_entry*) #6 !dbg !840 {
  %2 = alloca %struct.ipt_entry*, align 8
  store %struct.ipt_entry* %0, %struct.ipt_entry** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.ipt_entry** %2, metadata !843, metadata !323), !dbg !844
  %3 = load %struct.ipt_entry*, %struct.ipt_entry** %2, align 8, !dbg !845
  %4 = bitcast %struct.ipt_entry* %3 to i8*, !dbg !846
  %5 = load %struct.ipt_entry*, %struct.ipt_entry** %2, align 8, !dbg !847
  %6 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %5, i32 0, i32 2, !dbg !848
  %7 = load i16, i16* %6, align 8, !dbg !848
  %8 = zext i16 %7 to i32, !dbg !847
  %9 = sext i32 %8 to i64, !dbg !849
  %10 = getelementptr i8, i8* %4, i64 %9, !dbg !849
  %11 = bitcast i8* %10 to %struct.xt_entry_target*, !dbg !846
  ret %struct.xt_entry_target* %11, !dbg !850
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #7

declare i32 @iptc_delete_entry(i8*, %struct.ipt_entry*, i8*, %struct.xtc_handle*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #7

declare i32 @iptc_append_entry(i8*, %struct.ipt_entry*, %struct.xtc_handle*) #2

declare i32 @iptc_insert_entry(i8*, %struct.ipt_entry*, i32, %struct.xtc_handle*) #2

; Function Attrs: nounwind
declare void @free(i8*) #5

; Function Attrs: nounwind uwtable
define %struct.xtc_handle* @ip6tables_open(i8*) #0 !dbg !851 {
  %2 = alloca %struct.xtc_handle*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.xtc_handle*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !852, metadata !323), !dbg !853
  call void @llvm.dbg.declare(metadata %struct.xtc_handle** %4, metadata !854, metadata !323), !dbg !855
  %5 = load i8*, i8** %3, align 8, !dbg !856
  %6 = call %struct.xtc_handle* @ip6tc_init(i8* %5), !dbg !858
  store %struct.xtc_handle* %6, %struct.xtc_handle** %4, align 8, !dbg !859
  %7 = icmp ne %struct.xtc_handle* %6, null, !dbg !859
  br i1 %7, label %9, label %8, !dbg !860

; <label>:8:                                      ; preds = %1
  store %struct.xtc_handle* null, %struct.xtc_handle** %2, align 8, !dbg !861
  br label %11, !dbg !861

; <label>:9:                                      ; preds = %1
  %10 = load %struct.xtc_handle*, %struct.xtc_handle** %4, align 8, !dbg !862
  store %struct.xtc_handle* %10, %struct.xtc_handle** %2, align 8, !dbg !863
  br label %11, !dbg !863

; <label>:11:                                     ; preds = %9, %8
  %12 = load %struct.xtc_handle*, %struct.xtc_handle** %2, align 8, !dbg !864
  ret %struct.xtc_handle* %12, !dbg !864
}

declare %struct.xtc_handle* @ip6tc_init(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @ip6tables_close(%struct.xtc_handle*, i32) #0 !dbg !865 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xtc_handle*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xtc_handle* %0, %struct.xtc_handle** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.xtc_handle** %4, metadata !866, metadata !323), !dbg !867
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !868, metadata !323), !dbg !869
  call void @llvm.dbg.declare(metadata i32* %6, metadata !870, metadata !323), !dbg !871
  store i32 1, i32* %6, align 4, !dbg !871
  call void @llvm.dbg.declare(metadata i32* %7, metadata !872, metadata !323), !dbg !873
  %8 = load i32, i32* %5, align 4, !dbg !874
  %9 = icmp ne i32 %8, 0, !dbg !874
  br i1 %9, label %10, label %21, !dbg !876

; <label>:10:                                     ; preds = %2
  %11 = load %struct.xtc_handle*, %struct.xtc_handle** %4, align 8, !dbg !877
  %12 = call i32 @ip6tc_commit(%struct.xtc_handle* %11), !dbg !880
  store i32 %12, i32* %6, align 4, !dbg !881
  %13 = icmp ne i32 %12, 1, !dbg !882
  br i1 %13, label %14, label %20, !dbg !883

; <label>:14:                                     ; preds = %10
  %15 = call i32* @__errno_location() #1, !dbg !884
  %16 = load i32, i32* %15, align 4, !dbg !886
  store i32 %16, i32* %7, align 4, !dbg !887
  %17 = load i32, i32* %6, align 4, !dbg !888
  %18 = load i32, i32* %7, align 4, !dbg !889
  %19 = call i8* @ip6tc_strerror(i32 %18), !dbg !890
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i32 %17, i8* %19), !dbg !891
  br label %20, !dbg !893

; <label>:20:                                     ; preds = %14, %10
  br label %21, !dbg !894

; <label>:21:                                     ; preds = %20, %2
  %22 = load %struct.xtc_handle*, %struct.xtc_handle** %4, align 8, !dbg !895
  call void @ip6tc_free(%struct.xtc_handle* %22), !dbg !896
  %23 = load i32, i32* %6, align 4, !dbg !897
  %24 = icmp eq i32 %23, 1, !dbg !899
  br i1 %24, label %25, label %26, !dbg !900

; <label>:25:                                     ; preds = %21
  store i32 0, i32* %3, align 4, !dbg !901
  br label %28, !dbg !901

; <label>:26:                                     ; preds = %21
  %27 = load i32, i32* %7, align 4, !dbg !902
  store i32 %27, i32* %3, align 4, !dbg !903
  br label %28, !dbg !903

; <label>:28:                                     ; preds = %26, %25
  %29 = load i32, i32* %3, align 4, !dbg !904
  ret i32 %29, !dbg !904
}

declare i32 @ip6tc_commit(%struct.xtc_handle*) #2

declare i8* @ip6tc_strerror(i32) #2

declare void @ip6tc_free(%struct.xtc_handle*) #2

; Function Attrs: nounwind uwtable
define i32 @ip6tables_is_chain(%struct.xtc_handle*, i8*) #0 !dbg !905 {
  %3 = alloca %struct.xtc_handle*, align 8
  %4 = alloca i8*, align 8
  store %struct.xtc_handle* %0, %struct.xtc_handle** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.xtc_handle** %3, metadata !906, metadata !323), !dbg !907
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !908, metadata !323), !dbg !909
  %5 = load i8*, i8** %4, align 8, !dbg !910
  %6 = load %struct.xtc_handle*, %struct.xtc_handle** %3, align 8, !dbg !911
  %7 = call i32 @ip6tc_is_chain(i8* %5, %struct.xtc_handle* %6), !dbg !912
  ret i32 %7, !dbg !913
}

declare i32 @ip6tc_is_chain(i8*, %struct.xtc_handle*) #2

; Function Attrs: nounwind uwtable
define i32 @ip6tables_process_entry(%struct.xtc_handle*, i8*, i32, i8*, %struct._ip_address*, %struct._ip_address*, i8*, i8*, i16 zeroext, i8 zeroext, i32, i1 zeroext) #0 !dbg !914 {
  %13 = alloca i32, align 4
  %14 = alloca %struct.xtc_handle*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct._ip_address*, align 8
  %19 = alloca %struct._ip_address*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i16, align 2
  %23 = alloca i8, align 1
  %24 = alloca i32, align 4
  %25 = alloca i8, align 1
  %26 = alloca i64, align 8
  %27 = alloca %struct.ip6t_entry*, align 8
  %28 = alloca %struct.xt_entry_target*, align 8
  %29 = alloca %struct.xt_entry_match*, align 8
  %30 = alloca [32 x i8], align 16
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca %struct.ip6t_icmp*, align 8
  %34 = alloca i8*, align 8
  store %struct.xtc_handle* %0, %struct.xtc_handle** %14, align 8
  call void @llvm.dbg.declare(metadata %struct.xtc_handle** %14, metadata !915, metadata !323), !dbg !916
  store i8* %1, i8** %15, align 8
  call void @llvm.dbg.declare(metadata i8** %15, metadata !917, metadata !323), !dbg !918
  store i32 %2, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !919, metadata !323), !dbg !920
  store i8* %3, i8** %17, align 8
  call void @llvm.dbg.declare(metadata i8** %17, metadata !921, metadata !323), !dbg !922
  store %struct._ip_address* %4, %struct._ip_address** %18, align 8
  call void @llvm.dbg.declare(metadata %struct._ip_address** %18, metadata !923, metadata !323), !dbg !924
  store %struct._ip_address* %5, %struct._ip_address** %19, align 8
  call void @llvm.dbg.declare(metadata %struct._ip_address** %19, metadata !925, metadata !323), !dbg !926
  store i8* %6, i8** %20, align 8
  call void @llvm.dbg.declare(metadata i8** %20, metadata !927, metadata !323), !dbg !928
  store i8* %7, i8** %21, align 8
  call void @llvm.dbg.declare(metadata i8** %21, metadata !929, metadata !323), !dbg !930
  store i16 %8, i16* %22, align 2
  call void @llvm.dbg.declare(metadata i16* %22, metadata !931, metadata !323), !dbg !932
  store i8 %9, i8* %23, align 1
  call void @llvm.dbg.declare(metadata i8* %23, metadata !933, metadata !323), !dbg !934
  store i32 %10, i32* %24, align 4
  call void @llvm.dbg.declare(metadata i32* %24, metadata !935, metadata !323), !dbg !936
  %35 = zext i1 %11 to i8
  store i8 %35, i8* %25, align 1
  call void @llvm.dbg.declare(metadata i8* %25, metadata !937, metadata !323), !dbg !938
  call void @llvm.dbg.declare(metadata i64* %26, metadata !939, metadata !323), !dbg !940
  call void @llvm.dbg.declare(metadata %struct.ip6t_entry** %27, metadata !941, metadata !323), !dbg !942
  call void @llvm.dbg.declare(metadata %struct.xt_entry_target** %28, metadata !943, metadata !323), !dbg !944
  call void @llvm.dbg.declare(metadata %struct.xt_entry_match** %29, metadata !945, metadata !323), !dbg !946
  call void @llvm.dbg.declare(metadata [32 x i8]* %30, metadata !947, metadata !323), !dbg !948
  call void @llvm.dbg.declare(metadata i32* %31, metadata !949, metadata !323), !dbg !950
  call void @llvm.dbg.declare(metadata i32* %32, metadata !951, metadata !323), !dbg !952
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* %30, i32 0, i32 0, !dbg !953
  call void @llvm.memset.p0i8.i64(i8* %36, i8 0, i64 32, i32 16, i1 false), !dbg !953
  store i64 208, i64* %26, align 8, !dbg !954
  %37 = load i16, i16* %22, align 2, !dbg !955
  %38 = zext i16 %37 to i32, !dbg !955
  %39 = icmp eq i32 %38, 58, !dbg !957
  br i1 %39, label %40, label %43, !dbg !958

; <label>:40:                                     ; preds = %12
  %41 = load i64, i64* %26, align 8, !dbg !959
  %42 = add i64 %41, 40, !dbg !959
  store i64 %42, i64* %26, align 8, !dbg !959
  br label %43, !dbg !960

; <label>:43:                                     ; preds = %40, %12
  %44 = load i64, i64* %26, align 8, !dbg !961
  %45 = call i8* @zalloc(i64 %44), !dbg !962
  %46 = bitcast i8* %45 to %struct.ip6t_entry*, !dbg !963
  store %struct.ip6t_entry* %46, %struct.ip6t_entry** %27, align 8, !dbg !964
  %47 = load %struct.ip6t_entry*, %struct.ip6t_entry** %27, align 8, !dbg !965
  %48 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %47, i32 0, i32 2, !dbg !966
  store i16 168, i16* %48, align 4, !dbg !967
  %49 = load %struct._ip_address*, %struct._ip_address** %18, align 8, !dbg !968
  %50 = icmp ne %struct._ip_address* %49, null, !dbg !968
  br i1 %50, label %51, label %71, !dbg !970

; <label>:51:                                     ; preds = %43
  %52 = load %struct._ip_address*, %struct._ip_address** %18, align 8, !dbg !971
  %53 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %52, i32 0, i32 0, !dbg !973
  %54 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %53, i32 0, i32 0, !dbg !974
  %55 = load i8, i8* %54, align 8, !dbg !974
  %56 = zext i8 %55 to i32, !dbg !971
  %57 = icmp ne i32 %56, 0, !dbg !975
  br i1 %57, label %58, label %71, !dbg !976

; <label>:58:                                     ; preds = %51
  %59 = load %struct.ip6t_entry*, %struct.ip6t_entry** %27, align 8, !dbg !977
  %60 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %59, i32 0, i32 0, !dbg !979
  %61 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %60, i32 0, i32 0, !dbg !980
  %62 = bitcast %struct.in6_addr* %61 to i8*, !dbg !981
  %63 = load %struct._ip_address*, %struct._ip_address** %18, align 8, !dbg !982
  %64 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %63, i32 0, i32 1, !dbg !983
  %65 = bitcast %union.anon* %64 to %struct.in6_addr*, !dbg !984
  %66 = bitcast %struct.in6_addr* %65 to i8*, !dbg !981
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %66, i64 16, i32 8, i1 false), !dbg !981
  %67 = load %struct.ip6t_entry*, %struct.ip6t_entry** %27, align 8, !dbg !985
  %68 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %67, i32 0, i32 0, !dbg !986
  %69 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %68, i32 0, i32 2, !dbg !987
  %70 = bitcast %struct.in6_addr* %69 to i8*, !dbg !988
  call void @llvm.memset.p0i8.i64(i8* %70, i8 -1, i64 16, i32 8, i1 false), !dbg !988
  br label %71, !dbg !989

; <label>:71:                                     ; preds = %58, %51, %43
  %72 = load %struct._ip_address*, %struct._ip_address** %19, align 8, !dbg !990
  %73 = icmp ne %struct._ip_address* %72, null, !dbg !990
  br i1 %73, label %74, label %94, !dbg !992

; <label>:74:                                     ; preds = %71
  %75 = load %struct._ip_address*, %struct._ip_address** %19, align 8, !dbg !993
  %76 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %75, i32 0, i32 0, !dbg !995
  %77 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %76, i32 0, i32 0, !dbg !996
  %78 = load i8, i8* %77, align 8, !dbg !996
  %79 = zext i8 %78 to i32, !dbg !993
  %80 = icmp ne i32 %79, 0, !dbg !997
  br i1 %80, label %81, label %94, !dbg !998

; <label>:81:                                     ; preds = %74
  %82 = load %struct.ip6t_entry*, %struct.ip6t_entry** %27, align 8, !dbg !999
  %83 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %82, i32 0, i32 0, !dbg !1001
  %84 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %83, i32 0, i32 1, !dbg !1002
  %85 = bitcast %struct.in6_addr* %84 to i8*, !dbg !1003
  %86 = load %struct._ip_address*, %struct._ip_address** %19, align 8, !dbg !1004
  %87 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %86, i32 0, i32 1, !dbg !1005
  %88 = bitcast %union.anon* %87 to %struct.in6_addr*, !dbg !1006
  %89 = bitcast %struct.in6_addr* %88 to i8*, !dbg !1003
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %85, i8* %89, i64 16, i32 8, i1 false), !dbg !1003
  %90 = load %struct.ip6t_entry*, %struct.ip6t_entry** %27, align 8, !dbg !1007
  %91 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %90, i32 0, i32 0, !dbg !1008
  %92 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %91, i32 0, i32 3, !dbg !1009
  %93 = bitcast %struct.in6_addr* %92 to i8*, !dbg !1010
  call void @llvm.memset.p0i8.i64(i8* %93, i8 -1, i64 16, i32 8, i1 false), !dbg !1010
  br label %94, !dbg !1011

; <label>:94:                                     ; preds = %81, %74, %71
  %95 = load i8*, i8** %20, align 8, !dbg !1012
  %96 = icmp ne i8* %95, null, !dbg !1012
  br i1 %96, label %97, label %107, !dbg !1014

; <label>:97:                                     ; preds = %94
  %98 = load %struct.ip6t_entry*, %struct.ip6t_entry** %27, align 8, !dbg !1015
  %99 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %98, i32 0, i32 0, !dbg !1016
  %100 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %99, i32 0, i32 4, !dbg !1017
  %101 = getelementptr inbounds [16 x i8], [16 x i8]* %100, i32 0, i32 0, !dbg !1015
  %102 = load %struct.ip6t_entry*, %struct.ip6t_entry** %27, align 8, !dbg !1018
  %103 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %102, i32 0, i32 0, !dbg !1019
  %104 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %103, i32 0, i32 6, !dbg !1020
  %105 = getelementptr inbounds [16 x i8], [16 x i8]* %104, i32 0, i32 0, !dbg !1018
  %106 = load i8*, i8** %20, align 8, !dbg !1021
  call void @set_iface(i8* %101, i8* %105, i8* %106), !dbg !1022
  br label %107, !dbg !1022

; <label>:107:                                    ; preds = %97, %94
  %108 = load i8*, i8** %21, align 8, !dbg !1023
  %109 = icmp ne i8* %108, null, !dbg !1023
  br i1 %109, label %110, label %120, !dbg !1025

; <label>:110:                                    ; preds = %107
  %111 = load %struct.ip6t_entry*, %struct.ip6t_entry** %27, align 8, !dbg !1026
  %112 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %111, i32 0, i32 0, !dbg !1027
  %113 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %112, i32 0, i32 5, !dbg !1028
  %114 = getelementptr inbounds [16 x i8], [16 x i8]* %113, i32 0, i32 0, !dbg !1026
  %115 = load %struct.ip6t_entry*, %struct.ip6t_entry** %27, align 8, !dbg !1029
  %116 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %115, i32 0, i32 0, !dbg !1030
  %117 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %116, i32 0, i32 7, !dbg !1031
  %118 = getelementptr inbounds [16 x i8], [16 x i8]* %117, i32 0, i32 0, !dbg !1029
  %119 = load i8*, i8** %21, align 8, !dbg !1032
  call void @set_iface(i8* %114, i8* %118, i8* %119), !dbg !1033
  br label %120, !dbg !1033

; <label>:120:                                    ; preds = %110, %107
  %121 = load i16, i16* %22, align 2, !dbg !1034
  %122 = zext i16 %121 to i32, !dbg !1034
  %123 = icmp ne i32 %122, 59, !dbg !1036
  br i1 %123, label %124, label %191, !dbg !1037

; <label>:124:                                    ; preds = %120
  %125 = load i16, i16* %22, align 2, !dbg !1038
  %126 = load %struct.ip6t_entry*, %struct.ip6t_entry** %27, align 8, !dbg !1040
  %127 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %126, i32 0, i32 0, !dbg !1041
  %128 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %127, i32 0, i32 8, !dbg !1042
  store i16 %125, i16* %128, align 8, !dbg !1043
  %129 = load %struct.ip6t_entry*, %struct.ip6t_entry** %27, align 8, !dbg !1044
  %130 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %129, i32 0, i32 0, !dbg !1045
  %131 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %130, i32 0, i32 10, !dbg !1046
  %132 = load i8, i8* %131, align 1, !dbg !1047
  %133 = zext i8 %132 to i32, !dbg !1047
  %134 = or i32 %133, 1, !dbg !1047
  %135 = trunc i32 %134 to i8, !dbg !1047
  store i8 %135, i8* %131, align 1, !dbg !1047
  %136 = load i16, i16* %22, align 2, !dbg !1048
  %137 = zext i16 %136 to i32, !dbg !1048
  %138 = icmp eq i32 %137, 58, !dbg !1050
  br i1 %138, label %139, label %190, !dbg !1051

; <label>:139:                                    ; preds = %124
  %140 = load %struct.ip6t_entry*, %struct.ip6t_entry** %27, align 8, !dbg !1052
  %141 = bitcast %struct.ip6t_entry* %140 to i8*, !dbg !1054
  %142 = load %struct.ip6t_entry*, %struct.ip6t_entry** %27, align 8, !dbg !1055
  %143 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %142, i32 0, i32 2, !dbg !1056
  %144 = load i16, i16* %143, align 4, !dbg !1056
  %145 = zext i16 %144 to i32, !dbg !1055
  %146 = sext i32 %145 to i64, !dbg !1057
  %147 = getelementptr inbounds i8, i8* %141, i64 %146, !dbg !1057
  %148 = bitcast i8* %147 to %struct.xt_entry_match*, !dbg !1058
  store %struct.xt_entry_match* %148, %struct.xt_entry_match** %29, align 8, !dbg !1059
  %149 = load %struct.xt_entry_match*, %struct.xt_entry_match** %29, align 8, !dbg !1060
  %150 = getelementptr inbounds %struct.xt_entry_match, %struct.xt_entry_match* %149, i32 0, i32 0, !dbg !1061
  %151 = bitcast %union.anon.5* %150 to i16*, !dbg !1062
  store i16 40, i16* %151, align 8, !dbg !1063
  %152 = load %struct.xt_entry_match*, %struct.xt_entry_match** %29, align 8, !dbg !1064
  %153 = getelementptr inbounds %struct.xt_entry_match, %struct.xt_entry_match* %152, i32 0, i32 0, !dbg !1065
  %154 = bitcast %union.anon.5* %153 to %struct.anon.6*, !dbg !1066
  %155 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %154, i32 0, i32 2, !dbg !1067
  store i8 0, i8* %155, align 1, !dbg !1068
  %156 = load %struct.ip6t_entry*, %struct.ip6t_entry** %27, align 8, !dbg !1069
  %157 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %156, i32 0, i32 2, !dbg !1070
  %158 = load i16, i16* %157, align 4, !dbg !1070
  %159 = zext i16 %158 to i32, !dbg !1069
  %160 = load %struct.xt_entry_match*, %struct.xt_entry_match** %29, align 8, !dbg !1071
  %161 = getelementptr inbounds %struct.xt_entry_match, %struct.xt_entry_match* %160, i32 0, i32 0, !dbg !1072
  %162 = bitcast %union.anon.5* %161 to i16*, !dbg !1073
  %163 = load i16, i16* %162, align 8, !dbg !1073
  %164 = zext i16 %163 to i32, !dbg !1071
  %165 = add nsw i32 %159, %164, !dbg !1074
  %166 = trunc i32 %165 to i16, !dbg !1075
  %167 = load %struct.ip6t_entry*, %struct.ip6t_entry** %27, align 8, !dbg !1076
  %168 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %167, i32 0, i32 2, !dbg !1077
  store i16 %166, i16* %168, align 4, !dbg !1078
  %169 = load %struct.xt_entry_match*, %struct.xt_entry_match** %29, align 8, !dbg !1079
  %170 = getelementptr inbounds %struct.xt_entry_match, %struct.xt_entry_match* %169, i32 0, i32 0, !dbg !1080
  %171 = bitcast %union.anon.5* %170 to %struct.anon.6*, !dbg !1081
  %172 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %171, i32 0, i32 1, !dbg !1082
  %173 = getelementptr inbounds [29 x i8], [29 x i8]* %172, i32 0, i32 0, !dbg !1079
  %174 = call i8* @strcpy(i8* %173, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)) #7, !dbg !1083
  call void @llvm.dbg.declare(metadata %struct.ip6t_icmp** %33, metadata !1084, metadata !323), !dbg !1085
  %175 = load %struct.xt_entry_match*, %struct.xt_entry_match** %29, align 8, !dbg !1086
  %176 = getelementptr inbounds %struct.xt_entry_match, %struct.xt_entry_match* %175, i32 0, i32 1, !dbg !1087
  %177 = getelementptr inbounds [0 x i8], [0 x i8]* %176, i32 0, i32 0, !dbg !1086
  %178 = bitcast i8* %177 to %struct.ip6t_icmp*, !dbg !1088
  store %struct.ip6t_icmp* %178, %struct.ip6t_icmp** %33, align 8, !dbg !1085
  %179 = load i8, i8* %23, align 1, !dbg !1089
  %180 = load %struct.ip6t_icmp*, %struct.ip6t_icmp** %33, align 8, !dbg !1090
  %181 = getelementptr inbounds %struct.ip6t_icmp, %struct.ip6t_icmp* %180, i32 0, i32 0, !dbg !1091
  store i8 %179, i8* %181, align 1, !dbg !1092
  %182 = load %struct.ip6t_icmp*, %struct.ip6t_icmp** %33, align 8, !dbg !1093
  %183 = getelementptr inbounds %struct.ip6t_icmp, %struct.ip6t_icmp* %182, i32 0, i32 1, !dbg !1094
  %184 = getelementptr inbounds [2 x i8], [2 x i8]* %183, i64 0, i64 0, !dbg !1093
  store i8 0, i8* %184, align 1, !dbg !1095
  %185 = load %struct.ip6t_icmp*, %struct.ip6t_icmp** %33, align 8, !dbg !1096
  %186 = getelementptr inbounds %struct.ip6t_icmp, %struct.ip6t_icmp* %185, i32 0, i32 1, !dbg !1097
  %187 = getelementptr inbounds [2 x i8], [2 x i8]* %186, i64 0, i64 1, !dbg !1096
  store i8 -1, i8* %187, align 1, !dbg !1098
  %188 = load %struct.ip6t_icmp*, %struct.ip6t_icmp** %33, align 8, !dbg !1099
  %189 = getelementptr inbounds %struct.ip6t_icmp, %struct.ip6t_icmp* %188, i32 0, i32 2, !dbg !1100
  store i8 0, i8* %189, align 1, !dbg !1101
  br label %190, !dbg !1102

; <label>:190:                                    ; preds = %139, %124
  br label %191, !dbg !1103

; <label>:191:                                    ; preds = %190, %120
  %192 = load i64, i64* %26, align 8, !dbg !1104
  %193 = trunc i64 %192 to i16, !dbg !1105
  %194 = load %struct.ip6t_entry*, %struct.ip6t_entry** %27, align 8, !dbg !1106
  %195 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %194, i32 0, i32 3, !dbg !1107
  store i16 %193, i16* %195, align 2, !dbg !1108
  %196 = load %struct.ip6t_entry*, %struct.ip6t_entry** %27, align 8, !dbg !1109
  %197 = call %struct.xt_entry_target* @ip6t_get_target(%struct.ip6t_entry* %196), !dbg !1110
  store %struct.xt_entry_target* %197, %struct.xt_entry_target** %28, align 8, !dbg !1111
  %198 = load %struct.xt_entry_target*, %struct.xt_entry_target** %28, align 8, !dbg !1112
  %199 = getelementptr inbounds %struct.xt_entry_target, %struct.xt_entry_target* %198, i32 0, i32 0, !dbg !1113
  %200 = bitcast %union.anon.2* %199 to %struct.anon.3*, !dbg !1114
  %201 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %200, i32 0, i32 0, !dbg !1115
  store i16 40, i16* %201, align 8, !dbg !1116
  %202 = load %struct.xt_entry_target*, %struct.xt_entry_target** %28, align 8, !dbg !1117
  %203 = getelementptr inbounds %struct.xt_entry_target, %struct.xt_entry_target* %202, i32 0, i32 0, !dbg !1118
  %204 = bitcast %union.anon.2* %203 to %struct.anon.3*, !dbg !1119
  %205 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %204, i32 0, i32 1, !dbg !1120
  %206 = getelementptr inbounds [29 x i8], [29 x i8]* %205, i32 0, i32 0, !dbg !1117
  %207 = load i8*, i8** %17, align 8, !dbg !1121
  %208 = call i8* @strcpy(i8* %206, i8* %207) #7, !dbg !1122
  %209 = getelementptr inbounds [32 x i8], [32 x i8]* %30, i32 0, i32 0, !dbg !1123
  %210 = load i8*, i8** %15, align 8, !dbg !1124
  %211 = call i8* @strcpy(i8* %209, i8* %210) #7, !dbg !1125
  %212 = load i32, i32* %24, align 4, !dbg !1126
  %213 = icmp eq i32 %212, 0, !dbg !1128
  br i1 %213, label %214, label %230, !dbg !1129

; <label>:214:                                    ; preds = %191
  %215 = load %struct.ip6t_entry*, %struct.ip6t_entry** %27, align 8, !dbg !1130
  %216 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %215, i32 0, i32 3, !dbg !1132
  %217 = load i16, i16* %216, align 2, !dbg !1132
  %218 = zext i16 %217 to i64, !dbg !1133
  %219 = call i8* @llvm.stacksave(), !dbg !1133
  store i8* %219, i8** %34, align 8, !dbg !1133
  %220 = alloca i8, i64 %218, align 16, !dbg !1133
  call void @llvm.dbg.declare(metadata i8* %220, metadata !1134, metadata !752), !dbg !1135
  %221 = load %struct.ip6t_entry*, %struct.ip6t_entry** %27, align 8, !dbg !1136
  %222 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %221, i32 0, i32 3, !dbg !1137
  %223 = load i16, i16* %222, align 2, !dbg !1137
  %224 = zext i16 %223 to i64, !dbg !1136
  call void @llvm.memset.p0i8.i64(i8* %220, i8 -1, i64 %224, i32 16, i1 false), !dbg !1138
  %225 = getelementptr inbounds [32 x i8], [32 x i8]* %30, i32 0, i32 0, !dbg !1139
  %226 = load %struct.ip6t_entry*, %struct.ip6t_entry** %27, align 8, !dbg !1140
  %227 = load %struct.xtc_handle*, %struct.xtc_handle** %14, align 8, !dbg !1141
  %228 = call i32 @ip6tc_delete_entry(i8* %225, %struct.ip6t_entry* %226, i8* %220, %struct.xtc_handle* %227), !dbg !1142
  store i32 %228, i32* %31, align 4, !dbg !1143
  %229 = load i8*, i8** %34, align 8, !dbg !1144
  call void @llvm.stackrestore(i8* %229), !dbg !1144
  br label %245, !dbg !1145

; <label>:230:                                    ; preds = %191
  %231 = load i32, i32* %16, align 4, !dbg !1146
  %232 = icmp eq i32 %231, -1, !dbg !1148
  br i1 %232, label %233, label %238, !dbg !1149

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds [32 x i8], [32 x i8]* %30, i32 0, i32 0, !dbg !1150
  %235 = load %struct.ip6t_entry*, %struct.ip6t_entry** %27, align 8, !dbg !1151
  %236 = load %struct.xtc_handle*, %struct.xtc_handle** %14, align 8, !dbg !1152
  %237 = call i32 @ip6tc_append_entry(i8* %234, %struct.ip6t_entry* %235, %struct.xtc_handle* %236), !dbg !1153
  store i32 %237, i32* %31, align 4, !dbg !1154
  br label %244, !dbg !1155

; <label>:238:                                    ; preds = %230
  %239 = getelementptr inbounds [32 x i8], [32 x i8]* %30, i32 0, i32 0, !dbg !1156
  %240 = load %struct.ip6t_entry*, %struct.ip6t_entry** %27, align 8, !dbg !1157
  %241 = load i32, i32* %16, align 4, !dbg !1158
  %242 = load %struct.xtc_handle*, %struct.xtc_handle** %14, align 8, !dbg !1159
  %243 = call i32 @ip6tc_insert_entry(i8* %239, %struct.ip6t_entry* %240, i32 %241, %struct.xtc_handle* %242), !dbg !1160
  store i32 %243, i32* %31, align 4, !dbg !1161
  br label %244

; <label>:244:                                    ; preds = %238, %233
  br label %245

; <label>:245:                                    ; preds = %244, %214
  %246 = call i32* @__errno_location() #1, !dbg !1162
  %247 = load i32, i32* %246, align 4, !dbg !1163
  store i32 %247, i32* %32, align 4, !dbg !1164
  %248 = load %struct.ip6t_entry*, %struct.ip6t_entry** %27, align 8, !dbg !1165
  %249 = bitcast %struct.ip6t_entry* %248 to i8*, !dbg !1165
  call void @free(i8* %249) #7, !dbg !1166
  store %struct.ip6t_entry* null, %struct.ip6t_entry** %27, align 8, !dbg !1167
  %250 = load i32, i32* %31, align 4, !dbg !1168
  %251 = icmp ne i32 %250, 1, !dbg !1170
  br i1 %251, label %252, label %264, !dbg !1171

; <label>:252:                                    ; preds = %245
  %253 = load i8, i8* %25, align 1, !dbg !1172
  %254 = trunc i8 %253 to i1, !dbg !1172
  br i1 %254, label %255, label %258, !dbg !1174

; <label>:255:                                    ; preds = %252
  %256 = load i32, i32* %32, align 4, !dbg !1175
  %257 = icmp ne i32 %256, 2, !dbg !1177
  br i1 %257, label %258, label %264, !dbg !1178

; <label>:258:                                    ; preds = %255, %252
  %259 = getelementptr inbounds [32 x i8], [32 x i8]* %30, i32 0, i32 0, !dbg !1179
  %260 = load i32, i32* %31, align 4, !dbg !1181
  %261 = load i32, i32* %32, align 4, !dbg !1182
  %262 = call i8* @ip6tc_strerror(i32 %261), !dbg !1183
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i32 0, i32 0), i8* %259, i32 %260, i8* %262), !dbg !1184
  %263 = load i32, i32* %32, align 4, !dbg !1186
  store i32 %263, i32* %13, align 4, !dbg !1187
  br label %265, !dbg !1187

; <label>:264:                                    ; preds = %255, %245
  store i32 0, i32* %13, align 4, !dbg !1188
  br label %265, !dbg !1188

; <label>:265:                                    ; preds = %264, %258
  %266 = load i32, i32* %13, align 4, !dbg !1189
  ret i32 %266, !dbg !1189
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.xt_entry_target* @ip6t_get_target(%struct.ip6t_entry*) #6 !dbg !1190 {
  %2 = alloca %struct.ip6t_entry*, align 8
  store %struct.ip6t_entry* %0, %struct.ip6t_entry** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.ip6t_entry** %2, metadata !1193, metadata !323), !dbg !1194
  %3 = load %struct.ip6t_entry*, %struct.ip6t_entry** %2, align 8, !dbg !1195
  %4 = bitcast %struct.ip6t_entry* %3 to i8*, !dbg !1196
  %5 = load %struct.ip6t_entry*, %struct.ip6t_entry** %2, align 8, !dbg !1197
  %6 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %5, i32 0, i32 2, !dbg !1198
  %7 = load i16, i16* %6, align 4, !dbg !1198
  %8 = zext i16 %7 to i32, !dbg !1197
  %9 = sext i32 %8 to i64, !dbg !1199
  %10 = getelementptr i8, i8* %4, i64 %9, !dbg !1199
  %11 = bitcast i8* %10 to %struct.xt_entry_target*, !dbg !1196
  ret %struct.xt_entry_target* %11, !dbg !1200
}

declare i32 @ip6tc_delete_entry(i8*, %struct.ip6t_entry*, i8*, %struct.xtc_handle*) #2

declare i32 @ip6tc_append_entry(i8*, %struct.ip6t_entry*, %struct.xtc_handle*) #2

declare i32 @ip6tc_insert_entry(i8*, %struct.ip6t_entry*, i32, %struct.xtc_handle*) #2

; Function Attrs: nounwind uwtable
define zeroext i1 @load_xtables_module(i8*, i8*) #0 !dbg !1201 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sigaction, align 8
  %6 = alloca %struct.sigaction, align 8
  %7 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1204, metadata !323), !dbg !1205
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1206, metadata !323), !dbg !1207
  call void @llvm.dbg.declare(metadata %struct.sigaction* %5, metadata !1208, metadata !323), !dbg !1303
  call void @llvm.dbg.declare(metadata %struct.sigaction* %6, metadata !1304, metadata !323), !dbg !1305
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1306, metadata !323), !dbg !1307
  store i8 1, i8* %7, align 1, !dbg !1307
  %8 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i32 0, i32 0, !dbg !1308
  %9 = bitcast %union.anon.8* %8 to void (i32)**, !dbg !1309
  store void (i32)* null, void (i32)** %9, align 8, !dbg !1310
  %10 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i32 0, i32 1, !dbg !1311
  %11 = call i32 @sigemptyset(%struct.__sigset_t* %10) #7, !dbg !1312
  %12 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i32 0, i32 2, !dbg !1313
  store i32 0, i32* %12, align 8, !dbg !1314
  %13 = call i32 @sigaction(i32 17, %struct.sigaction* %5, %struct.sigaction* %6) #7, !dbg !1315
  %14 = load i8*, i8** %3, align 8, !dbg !1316
  %15 = call i32 @xtables_insmod(i8* %14, i8* null, i1 zeroext true), !dbg !1318
  %16 = icmp ne i32 %15, 0, !dbg !1318
  br i1 %16, label %17, label %18, !dbg !1319

; <label>:17:                                     ; preds = %2
  store i8 0, i8* %7, align 1, !dbg !1320
  br label %18, !dbg !1321

; <label>:18:                                     ; preds = %17, %2
  %19 = call i32 @sigaction(i32 17, %struct.sigaction* %6, %struct.sigaction* null) #7, !dbg !1322
  %20 = load i8, i8* %7, align 1, !dbg !1323
  %21 = trunc i8 %20 to i1, !dbg !1323
  ret i1 %21, !dbg !1324
}

; Function Attrs: nounwind
declare i32 @sigemptyset(%struct.__sigset_t*) #5

; Function Attrs: nounwind
declare i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #5

declare i32 @xtables_insmod(i8*, i8*, i1 zeroext) #2

; Function Attrs: nounwind uwtable
define i32 @ip4tables_add_rules(%struct.xtc_handle*, i8*, i32, i8 zeroext, i8 zeroext, i8*, i8*, i16 zeroext, i8 zeroext, i32, i1 zeroext) #0 !dbg !1325 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.xtc_handle*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i16, align 2
  %21 = alloca i8, align 1
  %22 = alloca i32, align 4
  %23 = alloca i8, align 1
  %24 = alloca i64, align 8
  %25 = alloca %struct.ipt_entry*, align 8
  %26 = alloca %struct.xt_entry_target*, align 8
  %27 = alloca %struct.xt_entry_match*, align 8
  %28 = alloca %struct.xt_set_info_match_v4*, align 8
  %29 = alloca [32 x i8], align 16
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.ipt_icmp*, align 8
  %33 = alloca i8*, align 8
  store %struct.xtc_handle* %0, %struct.xtc_handle** %13, align 8
  call void @llvm.dbg.declare(metadata %struct.xtc_handle** %13, metadata !1328, metadata !323), !dbg !1329
  store i8* %1, i8** %14, align 8
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1330, metadata !323), !dbg !1331
  store i32 %2, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1332, metadata !323), !dbg !1333
  store i8 %3, i8* %16, align 1
  call void @llvm.dbg.declare(metadata i8* %16, metadata !1334, metadata !323), !dbg !1335
  store i8 %4, i8* %17, align 1
  call void @llvm.dbg.declare(metadata i8* %17, metadata !1336, metadata !323), !dbg !1337
  store i8* %5, i8** %18, align 8
  call void @llvm.dbg.declare(metadata i8** %18, metadata !1338, metadata !323), !dbg !1339
  store i8* %6, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !1340, metadata !323), !dbg !1341
  store i16 %7, i16* %20, align 2
  call void @llvm.dbg.declare(metadata i16* %20, metadata !1342, metadata !323), !dbg !1343
  store i8 %8, i8* %21, align 1
  call void @llvm.dbg.declare(metadata i8* %21, metadata !1344, metadata !323), !dbg !1345
  store i32 %9, i32* %22, align 4
  call void @llvm.dbg.declare(metadata i32* %22, metadata !1346, metadata !323), !dbg !1347
  %34 = zext i1 %10 to i8
  store i8 %34, i8* %23, align 1
  call void @llvm.dbg.declare(metadata i8* %23, metadata !1348, metadata !323), !dbg !1349
  call void @llvm.dbg.declare(metadata i64* %24, metadata !1350, metadata !323), !dbg !1351
  call void @llvm.dbg.declare(metadata %struct.ipt_entry** %25, metadata !1352, metadata !323), !dbg !1353
  call void @llvm.dbg.declare(metadata %struct.xt_entry_target** %26, metadata !1354, metadata !323), !dbg !1355
  call void @llvm.dbg.declare(metadata %struct.xt_entry_match** %27, metadata !1356, metadata !323), !dbg !1357
  call void @llvm.dbg.declare(metadata %struct.xt_set_info_match_v4** %28, metadata !1358, metadata !323), !dbg !1359
  call void @llvm.dbg.declare(metadata [32 x i8]* %29, metadata !1360, metadata !323), !dbg !1361
  call void @llvm.dbg.declare(metadata i32* %30, metadata !1362, metadata !323), !dbg !1363
  call void @llvm.dbg.declare(metadata i32* %31, metadata !1364, metadata !323), !dbg !1365
  %35 = getelementptr inbounds [32 x i8], [32 x i8]* %29, i32 0, i32 0, !dbg !1366
  call void @llvm.memset.p0i8.i64(i8* %35, i8 0, i64 32, i32 16, i1 false), !dbg !1366
  store i64 232, i64* %24, align 8, !dbg !1367
  %36 = load i16, i16* %20, align 2, !dbg !1368
  %37 = zext i16 %36 to i32, !dbg !1368
  %38 = icmp eq i32 %37, 1, !dbg !1370
  br i1 %38, label %39, label %42, !dbg !1371

; <label>:39:                                     ; preds = %11
  %40 = load i64, i64* %24, align 8, !dbg !1372
  %41 = add i64 %40, 40, !dbg !1372
  store i64 %41, i64* %24, align 8, !dbg !1372
  br label %42, !dbg !1373

; <label>:42:                                     ; preds = %39, %11
  %43 = load i64, i64* %24, align 8, !dbg !1374
  %44 = call i8* @zalloc(i64 %43), !dbg !1375
  %45 = bitcast i8* %44 to %struct.ipt_entry*, !dbg !1376
  store %struct.ipt_entry* %45, %struct.ipt_entry** %25, align 8, !dbg !1377
  %46 = load %struct.ipt_entry*, %struct.ipt_entry** %25, align 8, !dbg !1378
  %47 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %46, i32 0, i32 2, !dbg !1379
  store i16 112, i16* %47, align 8, !dbg !1380
  %48 = load %struct.ipt_entry*, %struct.ipt_entry** %25, align 8, !dbg !1381
  %49 = bitcast %struct.ipt_entry* %48 to i8*, !dbg !1382
  %50 = load %struct.ipt_entry*, %struct.ipt_entry** %25, align 8, !dbg !1383
  %51 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %50, i32 0, i32 2, !dbg !1384
  %52 = load i16, i16* %51, align 8, !dbg !1384
  %53 = zext i16 %52 to i32, !dbg !1383
  %54 = sext i32 %53 to i64, !dbg !1385
  %55 = getelementptr inbounds i8, i8* %49, i64 %54, !dbg !1385
  %56 = bitcast i8* %55 to %struct.xt_entry_match*, !dbg !1386
  store %struct.xt_entry_match* %56, %struct.xt_entry_match** %27, align 8, !dbg !1387
  %57 = load %struct.xt_entry_match*, %struct.xt_entry_match** %27, align 8, !dbg !1388
  %58 = getelementptr inbounds %struct.xt_entry_match, %struct.xt_entry_match* %57, i32 0, i32 0, !dbg !1389
  %59 = bitcast %union.anon.5* %58 to i16*, !dbg !1390
  store i16 80, i16* %59, align 8, !dbg !1391
  %60 = load %struct.xt_entry_match*, %struct.xt_entry_match** %27, align 8, !dbg !1392
  %61 = getelementptr inbounds %struct.xt_entry_match, %struct.xt_entry_match* %60, i32 0, i32 0, !dbg !1393
  %62 = bitcast %union.anon.5* %61 to %struct.anon.6*, !dbg !1394
  %63 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %62, i32 0, i32 2, !dbg !1395
  store i8 4, i8* %63, align 1, !dbg !1396
  %64 = load %struct.ipt_entry*, %struct.ipt_entry** %25, align 8, !dbg !1397
  %65 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %64, i32 0, i32 2, !dbg !1398
  %66 = load i16, i16* %65, align 8, !dbg !1398
  %67 = zext i16 %66 to i32, !dbg !1397
  %68 = load %struct.xt_entry_match*, %struct.xt_entry_match** %27, align 8, !dbg !1399
  %69 = getelementptr inbounds %struct.xt_entry_match, %struct.xt_entry_match* %68, i32 0, i32 0, !dbg !1400
  %70 = bitcast %union.anon.5* %69 to i16*, !dbg !1401
  %71 = load i16, i16* %70, align 8, !dbg !1401
  %72 = zext i16 %71 to i32, !dbg !1399
  %73 = add nsw i32 %67, %72, !dbg !1402
  %74 = trunc i32 %73 to i16, !dbg !1403
  %75 = load %struct.ipt_entry*, %struct.ipt_entry** %25, align 8, !dbg !1404
  %76 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %75, i32 0, i32 2, !dbg !1405
  store i16 %74, i16* %76, align 8, !dbg !1406
  %77 = load %struct.xt_entry_match*, %struct.xt_entry_match** %27, align 8, !dbg !1407
  %78 = getelementptr inbounds %struct.xt_entry_match, %struct.xt_entry_match* %77, i32 0, i32 0, !dbg !1408
  %79 = bitcast %union.anon.5* %78 to %struct.anon.6*, !dbg !1409
  %80 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %79, i32 0, i32 1, !dbg !1410
  %81 = getelementptr inbounds [29 x i8], [29 x i8]* %80, i32 0, i32 0, !dbg !1407
  %82 = call i8* @strcpy(i8* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0)) #7, !dbg !1411
  %83 = load %struct.xt_entry_match*, %struct.xt_entry_match** %27, align 8, !dbg !1412
  %84 = getelementptr inbounds %struct.xt_entry_match, %struct.xt_entry_match* %83, i32 0, i32 1, !dbg !1413
  %85 = getelementptr inbounds [0 x i8], [0 x i8]* %84, i32 0, i32 0, !dbg !1412
  %86 = bitcast i8* %85 to %struct.xt_set_info_match_v4*, !dbg !1414
  store %struct.xt_set_info_match_v4* %86, %struct.xt_set_info_match_v4** %28, align 8, !dbg !1415
  %87 = load %struct.xt_set_info_match_v4*, %struct.xt_set_info_match_v4** %28, align 8, !dbg !1416
  %88 = bitcast %struct.xt_set_info_match_v4* %87 to i8*, !dbg !1417
  call void @llvm.memset.p0i8.i64(i8* %88, i8 0, i64 48, i32 8, i1 false), !dbg !1417
  %89 = load i8*, i8** %19, align 8, !dbg !1418
  %90 = load %struct.xt_set_info_match_v4*, %struct.xt_set_info_match_v4** %28, align 8, !dbg !1419
  %91 = getelementptr inbounds %struct.xt_set_info_match_v4, %struct.xt_set_info_match_v4* %90, i32 0, i32 0, !dbg !1420
  %92 = load i8, i8* %23, align 1, !dbg !1421
  %93 = trunc i8 %92 to i1, !dbg !1421
  call void @get_set_byname(i8* %89, %struct.xt_set_info* %91, i32 2, i1 zeroext %93), !dbg !1422
  %94 = load %struct.xt_set_info_match_v4*, %struct.xt_set_info_match_v4** %28, align 8, !dbg !1423
  %95 = getelementptr inbounds %struct.xt_set_info_match_v4, %struct.xt_set_info_match_v4* %94, i32 0, i32 0, !dbg !1425
  %96 = getelementptr inbounds %struct.xt_set_info, %struct.xt_set_info* %95, i32 0, i32 0, !dbg !1426
  %97 = load i16, i16* %96, align 8, !dbg !1426
  %98 = zext i16 %97 to i32, !dbg !1423
  %99 = icmp eq i32 %98, 65535, !dbg !1427
  br i1 %99, label %100, label %103, !dbg !1428

; <label>:100:                                    ; preds = %42
  %101 = load %struct.ipt_entry*, %struct.ipt_entry** %25, align 8, !dbg !1429
  %102 = bitcast %struct.ipt_entry* %101 to i8*, !dbg !1429
  call void @free(i8* %102) #7, !dbg !1431
  store %struct.ipt_entry* null, %struct.ipt_entry** %25, align 8, !dbg !1432
  store i32 -1, i32* %12, align 4, !dbg !1433
  br label %247, !dbg !1433

; <label>:103:                                    ; preds = %42
  %104 = load i8, i8* %16, align 1, !dbg !1434
  %105 = load %struct.xt_set_info_match_v4*, %struct.xt_set_info_match_v4** %28, align 8, !dbg !1435
  %106 = getelementptr inbounds %struct.xt_set_info_match_v4, %struct.xt_set_info_match_v4* %105, i32 0, i32 0, !dbg !1436
  %107 = getelementptr inbounds %struct.xt_set_info, %struct.xt_set_info* %106, i32 0, i32 1, !dbg !1437
  store i8 %104, i8* %107, align 2, !dbg !1438
  %108 = load i8, i8* %17, align 1, !dbg !1439
  %109 = load %struct.xt_set_info_match_v4*, %struct.xt_set_info_match_v4** %28, align 8, !dbg !1440
  %110 = getelementptr inbounds %struct.xt_set_info_match_v4, %struct.xt_set_info_match_v4* %109, i32 0, i32 0, !dbg !1441
  %111 = getelementptr inbounds %struct.xt_set_info, %struct.xt_set_info* %110, i32 0, i32 2, !dbg !1442
  store i8 %108, i8* %111, align 1, !dbg !1443
  %112 = load i16, i16* %20, align 2, !dbg !1444
  %113 = zext i16 %112 to i32, !dbg !1444
  %114 = icmp ne i32 %113, 59, !dbg !1446
  br i1 %114, label %115, label %175, !dbg !1447

; <label>:115:                                    ; preds = %103
  %116 = load i16, i16* %20, align 2, !dbg !1448
  %117 = load %struct.ipt_entry*, %struct.ipt_entry** %25, align 8, !dbg !1450
  %118 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %117, i32 0, i32 0, !dbg !1451
  %119 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %118, i32 0, i32 8, !dbg !1452
  store i16 %116, i16* %119, align 8, !dbg !1453
  %120 = load i16, i16* %20, align 2, !dbg !1454
  %121 = zext i16 %120 to i32, !dbg !1454
  %122 = icmp eq i32 %121, 1, !dbg !1456
  br i1 %122, label %123, label %174, !dbg !1457

; <label>:123:                                    ; preds = %115
  %124 = load %struct.ipt_entry*, %struct.ipt_entry** %25, align 8, !dbg !1458
  %125 = bitcast %struct.ipt_entry* %124 to i8*, !dbg !1460
  %126 = load %struct.ipt_entry*, %struct.ipt_entry** %25, align 8, !dbg !1461
  %127 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %126, i32 0, i32 2, !dbg !1462
  %128 = load i16, i16* %127, align 8, !dbg !1462
  %129 = zext i16 %128 to i32, !dbg !1461
  %130 = sext i32 %129 to i64, !dbg !1463
  %131 = getelementptr inbounds i8, i8* %125, i64 %130, !dbg !1463
  %132 = bitcast i8* %131 to %struct.xt_entry_match*, !dbg !1464
  store %struct.xt_entry_match* %132, %struct.xt_entry_match** %27, align 8, !dbg !1465
  %133 = load %struct.xt_entry_match*, %struct.xt_entry_match** %27, align 8, !dbg !1466
  %134 = getelementptr inbounds %struct.xt_entry_match, %struct.xt_entry_match* %133, i32 0, i32 0, !dbg !1467
  %135 = bitcast %union.anon.5* %134 to i16*, !dbg !1468
  store i16 40, i16* %135, align 8, !dbg !1469
  %136 = load %struct.xt_entry_match*, %struct.xt_entry_match** %27, align 8, !dbg !1470
  %137 = getelementptr inbounds %struct.xt_entry_match, %struct.xt_entry_match* %136, i32 0, i32 0, !dbg !1471
  %138 = bitcast %union.anon.5* %137 to %struct.anon.6*, !dbg !1472
  %139 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %138, i32 0, i32 2, !dbg !1473
  store i8 0, i8* %139, align 1, !dbg !1474
  %140 = load %struct.ipt_entry*, %struct.ipt_entry** %25, align 8, !dbg !1475
  %141 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %140, i32 0, i32 2, !dbg !1476
  %142 = load i16, i16* %141, align 8, !dbg !1476
  %143 = zext i16 %142 to i32, !dbg !1475
  %144 = load %struct.xt_entry_match*, %struct.xt_entry_match** %27, align 8, !dbg !1477
  %145 = getelementptr inbounds %struct.xt_entry_match, %struct.xt_entry_match* %144, i32 0, i32 0, !dbg !1478
  %146 = bitcast %union.anon.5* %145 to i16*, !dbg !1479
  %147 = load i16, i16* %146, align 8, !dbg !1479
  %148 = zext i16 %147 to i32, !dbg !1477
  %149 = add nsw i32 %143, %148, !dbg !1480
  %150 = trunc i32 %149 to i16, !dbg !1481
  %151 = load %struct.ipt_entry*, %struct.ipt_entry** %25, align 8, !dbg !1482
  %152 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %151, i32 0, i32 2, !dbg !1483
  store i16 %150, i16* %152, align 8, !dbg !1484
  %153 = load %struct.xt_entry_match*, %struct.xt_entry_match** %27, align 8, !dbg !1485
  %154 = getelementptr inbounds %struct.xt_entry_match, %struct.xt_entry_match* %153, i32 0, i32 0, !dbg !1486
  %155 = bitcast %union.anon.5* %154 to %struct.anon.6*, !dbg !1487
  %156 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %155, i32 0, i32 1, !dbg !1488
  %157 = getelementptr inbounds [29 x i8], [29 x i8]* %156, i32 0, i32 0, !dbg !1485
  %158 = call i8* @strcpy(i8* %157, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)) #7, !dbg !1489
  call void @llvm.dbg.declare(metadata %struct.ipt_icmp** %32, metadata !1490, metadata !323), !dbg !1491
  %159 = load %struct.xt_entry_match*, %struct.xt_entry_match** %27, align 8, !dbg !1492
  %160 = getelementptr inbounds %struct.xt_entry_match, %struct.xt_entry_match* %159, i32 0, i32 1, !dbg !1493
  %161 = getelementptr inbounds [0 x i8], [0 x i8]* %160, i32 0, i32 0, !dbg !1492
  %162 = bitcast i8* %161 to %struct.ipt_icmp*, !dbg !1494
  store %struct.ipt_icmp* %162, %struct.ipt_icmp** %32, align 8, !dbg !1491
  %163 = load i8, i8* %21, align 1, !dbg !1495
  %164 = load %struct.ipt_icmp*, %struct.ipt_icmp** %32, align 8, !dbg !1496
  %165 = getelementptr inbounds %struct.ipt_icmp, %struct.ipt_icmp* %164, i32 0, i32 0, !dbg !1497
  store i8 %163, i8* %165, align 1, !dbg !1498
  %166 = load %struct.ipt_icmp*, %struct.ipt_icmp** %32, align 8, !dbg !1499
  %167 = getelementptr inbounds %struct.ipt_icmp, %struct.ipt_icmp* %166, i32 0, i32 1, !dbg !1500
  %168 = getelementptr inbounds [2 x i8], [2 x i8]* %167, i64 0, i64 0, !dbg !1499
  store i8 0, i8* %168, align 1, !dbg !1501
  %169 = load %struct.ipt_icmp*, %struct.ipt_icmp** %32, align 8, !dbg !1502
  %170 = getelementptr inbounds %struct.ipt_icmp, %struct.ipt_icmp* %169, i32 0, i32 1, !dbg !1503
  %171 = getelementptr inbounds [2 x i8], [2 x i8]* %170, i64 0, i64 1, !dbg !1502
  store i8 -1, i8* %171, align 1, !dbg !1504
  %172 = load %struct.ipt_icmp*, %struct.ipt_icmp** %32, align 8, !dbg !1505
  %173 = getelementptr inbounds %struct.ipt_icmp, %struct.ipt_icmp* %172, i32 0, i32 2, !dbg !1506
  store i8 0, i8* %173, align 1, !dbg !1507
  br label %174, !dbg !1508

; <label>:174:                                    ; preds = %123, %115
  br label %175, !dbg !1509

; <label>:175:                                    ; preds = %174, %103
  %176 = load i64, i64* %24, align 8, !dbg !1510
  %177 = trunc i64 %176 to i16, !dbg !1511
  %178 = load %struct.ipt_entry*, %struct.ipt_entry** %25, align 8, !dbg !1512
  %179 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %178, i32 0, i32 3, !dbg !1513
  store i16 %177, i16* %179, align 2, !dbg !1514
  %180 = load %struct.ipt_entry*, %struct.ipt_entry** %25, align 8, !dbg !1515
  %181 = call %struct.xt_entry_target* @ipt_get_target(%struct.ipt_entry* %180), !dbg !1516
  store %struct.xt_entry_target* %181, %struct.xt_entry_target** %26, align 8, !dbg !1517
  %182 = load %struct.xt_entry_target*, %struct.xt_entry_target** %26, align 8, !dbg !1518
  %183 = getelementptr inbounds %struct.xt_entry_target, %struct.xt_entry_target* %182, i32 0, i32 0, !dbg !1519
  %184 = bitcast %union.anon.2* %183 to %struct.anon.3*, !dbg !1520
  %185 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %184, i32 0, i32 0, !dbg !1521
  store i16 40, i16* %185, align 8, !dbg !1522
  %186 = load %struct.xt_entry_target*, %struct.xt_entry_target** %26, align 8, !dbg !1523
  %187 = getelementptr inbounds %struct.xt_entry_target, %struct.xt_entry_target* %186, i32 0, i32 0, !dbg !1524
  %188 = bitcast %union.anon.2* %187 to %struct.anon.3*, !dbg !1525
  %189 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %188, i32 0, i32 1, !dbg !1526
  %190 = getelementptr inbounds [29 x i8], [29 x i8]* %189, i32 0, i32 0, !dbg !1523
  %191 = load i8*, i8** %18, align 8, !dbg !1527
  %192 = call i8* @strcpy(i8* %190, i8* %191) #7, !dbg !1528
  %193 = getelementptr inbounds [32 x i8], [32 x i8]* %29, i32 0, i32 0, !dbg !1529
  %194 = load i8*, i8** %14, align 8, !dbg !1530
  %195 = call i8* @strcpy(i8* %193, i8* %194) #7, !dbg !1531
  %196 = load i32, i32* %22, align 4, !dbg !1532
  %197 = icmp eq i32 %196, 0, !dbg !1534
  br i1 %197, label %198, label %214, !dbg !1535

; <label>:198:                                    ; preds = %175
  %199 = load %struct.ipt_entry*, %struct.ipt_entry** %25, align 8, !dbg !1536
  %200 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %199, i32 0, i32 3, !dbg !1538
  %201 = load i16, i16* %200, align 2, !dbg !1538
  %202 = zext i16 %201 to i64, !dbg !1539
  %203 = call i8* @llvm.stacksave(), !dbg !1539
  store i8* %203, i8** %33, align 8, !dbg !1539
  %204 = alloca i8, i64 %202, align 16, !dbg !1539
  call void @llvm.dbg.declare(metadata i8* %204, metadata !1540, metadata !752), !dbg !1541
  %205 = load %struct.ipt_entry*, %struct.ipt_entry** %25, align 8, !dbg !1542
  %206 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %205, i32 0, i32 3, !dbg !1543
  %207 = load i16, i16* %206, align 2, !dbg !1543
  %208 = zext i16 %207 to i64, !dbg !1542
  call void @llvm.memset.p0i8.i64(i8* %204, i8 -1, i64 %208, i32 16, i1 false), !dbg !1544
  %209 = getelementptr inbounds [32 x i8], [32 x i8]* %29, i32 0, i32 0, !dbg !1545
  %210 = load %struct.ipt_entry*, %struct.ipt_entry** %25, align 8, !dbg !1546
  %211 = load %struct.xtc_handle*, %struct.xtc_handle** %13, align 8, !dbg !1547
  %212 = call i32 @iptc_delete_entry(i8* %209, %struct.ipt_entry* %210, i8* %204, %struct.xtc_handle* %211), !dbg !1548
  store i32 %212, i32* %30, align 4, !dbg !1549
  %213 = load i8*, i8** %33, align 8, !dbg !1550
  call void @llvm.stackrestore(i8* %213), !dbg !1550
  br label %229, !dbg !1551

; <label>:214:                                    ; preds = %175
  %215 = load i32, i32* %15, align 4, !dbg !1552
  %216 = icmp eq i32 %215, -1, !dbg !1554
  br i1 %216, label %217, label %222, !dbg !1555

; <label>:217:                                    ; preds = %214
  %218 = getelementptr inbounds [32 x i8], [32 x i8]* %29, i32 0, i32 0, !dbg !1556
  %219 = load %struct.ipt_entry*, %struct.ipt_entry** %25, align 8, !dbg !1557
  %220 = load %struct.xtc_handle*, %struct.xtc_handle** %13, align 8, !dbg !1558
  %221 = call i32 @iptc_append_entry(i8* %218, %struct.ipt_entry* %219, %struct.xtc_handle* %220), !dbg !1559
  store i32 %221, i32* %30, align 4, !dbg !1560
  br label %228, !dbg !1561

; <label>:222:                                    ; preds = %214
  %223 = getelementptr inbounds [32 x i8], [32 x i8]* %29, i32 0, i32 0, !dbg !1562
  %224 = load %struct.ipt_entry*, %struct.ipt_entry** %25, align 8, !dbg !1563
  %225 = load i32, i32* %15, align 4, !dbg !1564
  %226 = load %struct.xtc_handle*, %struct.xtc_handle** %13, align 8, !dbg !1565
  %227 = call i32 @iptc_insert_entry(i8* %223, %struct.ipt_entry* %224, i32 %225, %struct.xtc_handle* %226), !dbg !1566
  store i32 %227, i32* %30, align 4, !dbg !1567
  br label %228

; <label>:228:                                    ; preds = %222, %217
  br label %229

; <label>:229:                                    ; preds = %228, %198
  %230 = call i32* @__errno_location() #1, !dbg !1568
  %231 = load i32, i32* %230, align 4, !dbg !1569
  store i32 %231, i32* %31, align 4, !dbg !1570
  %232 = load %struct.ipt_entry*, %struct.ipt_entry** %25, align 8, !dbg !1571
  %233 = bitcast %struct.ipt_entry* %232 to i8*, !dbg !1571
  call void @free(i8* %233) #7, !dbg !1572
  store %struct.ipt_entry* null, %struct.ipt_entry** %25, align 8, !dbg !1573
  %234 = load i32, i32* %30, align 4, !dbg !1574
  %235 = icmp ne i32 %234, 1, !dbg !1576
  br i1 %235, label %236, label %246, !dbg !1577

; <label>:236:                                    ; preds = %229
  %237 = load i8, i8* %23, align 1, !dbg !1578
  %238 = trunc i8 %237 to i1, !dbg !1578
  br i1 %238, label %244, label %239, !dbg !1581

; <label>:239:                                    ; preds = %236
  %240 = getelementptr inbounds [32 x i8], [32 x i8]* %29, i32 0, i32 0, !dbg !1582
  %241 = load i32, i32* %30, align 4, !dbg !1583
  %242 = load i32, i32* %31, align 4, !dbg !1584
  %243 = call i8* @iptc_strerror(i32 %242), !dbg !1585
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i32 0, i32 0), i8* %240, i32 %241, i8* %243), !dbg !1586
  br label %244, !dbg !1588

; <label>:244:                                    ; preds = %239, %236
  %245 = load i32, i32* %31, align 4, !dbg !1589
  store i32 %245, i32* %12, align 4, !dbg !1590
  br label %247, !dbg !1590

; <label>:246:                                    ; preds = %229
  store i32 0, i32* %12, align 4, !dbg !1591
  br label %247, !dbg !1591

; <label>:247:                                    ; preds = %246, %244, %100
  %248 = load i32, i32* %12, align 4, !dbg !1592
  ret i32 %248, !dbg !1592
}

; Function Attrs: nounwind uwtable
define internal void @get_set_byname(i8*, %struct.xt_set_info*, i32, i1 zeroext) #0 !dbg !1593 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.xt_set_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca %struct.ip_set_req_get_set_family, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1597, metadata !323), !dbg !1598
  store %struct.xt_set_info* %1, %struct.xt_set_info** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.xt_set_info** %6, metadata !1599, metadata !323), !dbg !1600
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1601, metadata !323), !dbg !1602
  %14 = zext i1 %3 to i8
  store i8 %14, i8* %8, align 1
  call void @llvm.dbg.declare(metadata i8* %8, metadata !1603, metadata !323), !dbg !1604
  call void @llvm.dbg.declare(metadata %struct.ip_set_req_get_set_family* %9, metadata !1605, metadata !323), !dbg !1616
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1617, metadata !323), !dbg !1621
  store i32 44, i32* %10, align 4, !dbg !1621
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1622, metadata !323), !dbg !1623
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1624, metadata !323), !dbg !1625
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1626, metadata !323), !dbg !1627
  %15 = load %struct.xt_set_info*, %struct.xt_set_info** %6, align 8, !dbg !1628
  %16 = getelementptr inbounds %struct.xt_set_info, %struct.xt_set_info* %15, i32 0, i32 0, !dbg !1629
  store i16 -1, i16* %16, align 2, !dbg !1630
  %17 = call i32 @get_version(i32* %13), !dbg !1631
  store i32 %17, i32* %12, align 4, !dbg !1632
  %18 = load i32, i32* %13, align 4, !dbg !1633
  %19 = getelementptr inbounds %struct.ip_set_req_get_set_family, %struct.ip_set_req_get_set_family* %9, i32 0, i32 1, !dbg !1634
  store i32 %18, i32* %19, align 4, !dbg !1635
  %20 = getelementptr inbounds %struct.ip_set_req_get_set_family, %struct.ip_set_req_get_set_family* %9, i32 0, i32 0, !dbg !1636
  store i32 8, i32* %20, align 4, !dbg !1637
  %21 = getelementptr inbounds %struct.ip_set_req_get_set_family, %struct.ip_set_req_get_set_family* %9, i32 0, i32 3, !dbg !1638
  %22 = bitcast %union.ip_set_name_index* %21 to [32 x i8]*, !dbg !1639
  %23 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i32 0, i32 0, !dbg !1640
  %24 = load i8*, i8** %5, align 8, !dbg !1641
  %25 = call i8* @strncpy(i8* %23, i8* %24, i64 32) #7, !dbg !1642
  %26 = getelementptr inbounds %struct.ip_set_req_get_set_family, %struct.ip_set_req_get_set_family* %9, i32 0, i32 3, !dbg !1643
  %27 = bitcast %union.ip_set_name_index* %26 to [32 x i8]*, !dbg !1644
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %27, i64 0, i64 31, !dbg !1645
  store i8 0, i8* %28, align 1, !dbg !1646
  %29 = load i32, i32* %12, align 4, !dbg !1647
  %30 = bitcast %struct.ip_set_req_get_set_family* %9 to i8*, !dbg !1648
  %31 = call i32 @getsockopt(i32 %29, i32 0, i32 83, i8* %30, i32* %10) #7, !dbg !1649
  store i32 %31, i32* %11, align 4, !dbg !1650
  %32 = load i32, i32* %11, align 4, !dbg !1651
  %33 = icmp ne i32 %32, 0, !dbg !1653
  br i1 %33, label %34, label %47, !dbg !1654

; <label>:34:                                     ; preds = %4
  %35 = call i32* @__errno_location() #1, !dbg !1655
  %36 = load i32, i32* %35, align 4, !dbg !1657
  %37 = icmp eq i32 %36, 74, !dbg !1658
  br i1 %37, label %38, label %47, !dbg !1659

; <label>:38:                                     ; preds = %34
  %39 = load i8*, i8** %5, align 8, !dbg !1660
  %40 = load %struct.xt_set_info*, %struct.xt_set_info** %6, align 8, !dbg !1662
  %41 = load i32, i32* %12, align 4, !dbg !1663
  %42 = load i32, i32* %13, align 4, !dbg !1664
  %43 = load i8, i8* %8, align 1, !dbg !1665
  %44 = trunc i8 %43 to i1, !dbg !1665
  call void @get_set_byname_only(i8* %39, %struct.xt_set_info* %40, i32 %41, i32 %42, i1 zeroext %44), !dbg !1666
  %45 = load i32, i32* %12, align 4, !dbg !1667
  %46 = call i32 @close(i32 %45), !dbg !1668
  br label %110, !dbg !1669

; <label>:47:                                     ; preds = %34, %4
  %48 = load i32, i32* %12, align 4, !dbg !1670
  %49 = call i32 @close(i32 %48), !dbg !1671
  %50 = load i32, i32* %11, align 4, !dbg !1672
  %51 = icmp ne i32 %50, 0, !dbg !1674
  br i1 %51, label %52, label %59, !dbg !1675

; <label>:52:                                     ; preds = %47
  %53 = load i8, i8* %8, align 1, !dbg !1676
  %54 = trunc i8 %53 to i1, !dbg !1676
  br i1 %54, label %58, label %55, !dbg !1679

; <label>:55:                                     ; preds = %52
  %56 = call i32* @__errno_location() #1, !dbg !1680
  %57 = load i32, i32* %56, align 4, !dbg !1681
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i32 0, i32 0), i32 %57), !dbg !1682
  br label %58, !dbg !1682

; <label>:58:                                     ; preds = %55, %52
  br label %110, !dbg !1683

; <label>:59:                                     ; preds = %47
  %60 = load i32, i32* %10, align 4, !dbg !1684
  %61 = zext i32 %60 to i64, !dbg !1684
  %62 = icmp ne i64 %61, 44, !dbg !1686
  br i1 %62, label %63, label %70, !dbg !1687

; <label>:63:                                     ; preds = %59
  %64 = load i8, i8* %8, align 1, !dbg !1688
  %65 = trunc i8 %64 to i1, !dbg !1688
  br i1 %65, label %69, label %66, !dbg !1691

; <label>:66:                                     ; preds = %63
  %67 = load i32, i32* %10, align 4, !dbg !1692
  %68 = zext i32 %67 to i64, !dbg !1693
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.9, i32 0, i32 0), i64 44, i64 %68), !dbg !1694
  br label %69, !dbg !1694

; <label>:69:                                     ; preds = %66, %63
  br label %109, !dbg !1695

; <label>:70:                                     ; preds = %59
  %71 = getelementptr inbounds %struct.ip_set_req_get_set_family, %struct.ip_set_req_get_set_family* %9, i32 0, i32 3, !dbg !1696
  %72 = bitcast %union.ip_set_name_index* %71 to i16*, !dbg !1698
  %73 = load i16, i16* %72, align 4, !dbg !1698
  %74 = zext i16 %73 to i32, !dbg !1699
  %75 = icmp eq i32 %74, 65535, !dbg !1700
  br i1 %75, label %76, label %82, !dbg !1701

; <label>:76:                                     ; preds = %70
  %77 = load i8, i8* %8, align 1, !dbg !1702
  %78 = trunc i8 %77 to i1, !dbg !1702
  br i1 %78, label %81, label %79, !dbg !1705

; <label>:79:                                     ; preds = %76
  %80 = load i8*, i8** %5, align 8, !dbg !1706
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0), i8* %80), !dbg !1707
  br label %81, !dbg !1707

; <label>:81:                                     ; preds = %79, %76
  br label %108, !dbg !1708

; <label>:82:                                     ; preds = %70
  %83 = getelementptr inbounds %struct.ip_set_req_get_set_family, %struct.ip_set_req_get_set_family* %9, i32 0, i32 2, !dbg !1709
  %84 = load i32, i32* %83, align 4, !dbg !1709
  %85 = load i32, i32* %7, align 4, !dbg !1711
  %86 = icmp eq i32 %84, %85, !dbg !1712
  br i1 %86, label %101, label %87, !dbg !1713

; <label>:87:                                     ; preds = %82
  %88 = getelementptr inbounds %struct.ip_set_req_get_set_family, %struct.ip_set_req_get_set_family* %9, i32 0, i32 2, !dbg !1714
  %89 = load i32, i32* %88, align 4, !dbg !1714
  %90 = icmp eq i32 %89, 0, !dbg !1715
  br i1 %90, label %101, label %91, !dbg !1716

; <label>:91:                                     ; preds = %87
  %92 = load i8, i8* %8, align 1, !dbg !1718
  %93 = trunc i8 %92 to i1, !dbg !1718
  br i1 %93, label %100, label %94, !dbg !1721

; <label>:94:                                     ; preds = %91
  %95 = load i8*, i8** %5, align 8, !dbg !1722
  %96 = getelementptr inbounds %struct.ip_set_req_get_set_family, %struct.ip_set_req_get_set_family* %9, i32 0, i32 2, !dbg !1723
  %97 = load i32, i32* %96, align 4, !dbg !1723
  %98 = icmp eq i32 %97, 2, !dbg !1724
  %99 = select i1 %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), !dbg !1725
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.11, i32 0, i32 0), i8* %95, i8* %99), !dbg !1726
  br label %100, !dbg !1726

; <label>:100:                                    ; preds = %94, %91
  br label %107, !dbg !1727

; <label>:101:                                    ; preds = %87, %82
  %102 = getelementptr inbounds %struct.ip_set_req_get_set_family, %struct.ip_set_req_get_set_family* %9, i32 0, i32 3, !dbg !1728
  %103 = bitcast %union.ip_set_name_index* %102 to i16*, !dbg !1729
  %104 = load i16, i16* %103, align 4, !dbg !1729
  %105 = load %struct.xt_set_info*, %struct.xt_set_info** %6, align 8, !dbg !1730
  %106 = getelementptr inbounds %struct.xt_set_info, %struct.xt_set_info* %105, i32 0, i32 0, !dbg !1731
  store i16 %104, i16* %106, align 2, !dbg !1732
  br label %107

; <label>:107:                                    ; preds = %101, %100
  br label %108

; <label>:108:                                    ; preds = %107, %81
  br label %109

; <label>:109:                                    ; preds = %108, %69
  br label %110

; <label>:110:                                    ; preds = %38, %109, %58
  ret void, !dbg !1733
}

; Function Attrs: nounwind uwtable
define i32 @ip6tables_add_rules(%struct.xtc_handle*, i8*, i32, i8 zeroext, i8 zeroext, i8*, i8*, i16 zeroext, i8 zeroext, i32, i1 zeroext) #0 !dbg !1734 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.xtc_handle*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i16, align 2
  %21 = alloca i8, align 1
  %22 = alloca i32, align 4
  %23 = alloca i8, align 1
  %24 = alloca i64, align 8
  %25 = alloca %struct.ip6t_entry*, align 8
  %26 = alloca %struct.xt_entry_target*, align 8
  %27 = alloca %struct.xt_entry_match*, align 8
  %28 = alloca %struct.xt_set_info_match_v4*, align 8
  %29 = alloca [32 x i8], align 16
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.ip6t_icmp*, align 8
  %33 = alloca i8*, align 8
  store %struct.xtc_handle* %0, %struct.xtc_handle** %13, align 8
  call void @llvm.dbg.declare(metadata %struct.xtc_handle** %13, metadata !1735, metadata !323), !dbg !1736
  store i8* %1, i8** %14, align 8
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1737, metadata !323), !dbg !1738
  store i32 %2, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1739, metadata !323), !dbg !1740
  store i8 %3, i8* %16, align 1
  call void @llvm.dbg.declare(metadata i8* %16, metadata !1741, metadata !323), !dbg !1742
  store i8 %4, i8* %17, align 1
  call void @llvm.dbg.declare(metadata i8* %17, metadata !1743, metadata !323), !dbg !1744
  store i8* %5, i8** %18, align 8
  call void @llvm.dbg.declare(metadata i8** %18, metadata !1745, metadata !323), !dbg !1746
  store i8* %6, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !1747, metadata !323), !dbg !1748
  store i16 %7, i16* %20, align 2
  call void @llvm.dbg.declare(metadata i16* %20, metadata !1749, metadata !323), !dbg !1750
  store i8 %8, i8* %21, align 1
  call void @llvm.dbg.declare(metadata i8* %21, metadata !1751, metadata !323), !dbg !1752
  store i32 %9, i32* %22, align 4
  call void @llvm.dbg.declare(metadata i32* %22, metadata !1753, metadata !323), !dbg !1754
  %34 = zext i1 %10 to i8
  store i8 %34, i8* %23, align 1
  call void @llvm.dbg.declare(metadata i8* %23, metadata !1755, metadata !323), !dbg !1756
  call void @llvm.dbg.declare(metadata i64* %24, metadata !1757, metadata !323), !dbg !1758
  call void @llvm.dbg.declare(metadata %struct.ip6t_entry** %25, metadata !1759, metadata !323), !dbg !1760
  call void @llvm.dbg.declare(metadata %struct.xt_entry_target** %26, metadata !1761, metadata !323), !dbg !1762
  call void @llvm.dbg.declare(metadata %struct.xt_entry_match** %27, metadata !1763, metadata !323), !dbg !1764
  call void @llvm.dbg.declare(metadata %struct.xt_set_info_match_v4** %28, metadata !1765, metadata !323), !dbg !1766
  call void @llvm.dbg.declare(metadata [32 x i8]* %29, metadata !1767, metadata !323), !dbg !1768
  call void @llvm.dbg.declare(metadata i32* %30, metadata !1769, metadata !323), !dbg !1770
  call void @llvm.dbg.declare(metadata i32* %31, metadata !1771, metadata !323), !dbg !1772
  %35 = getelementptr inbounds [32 x i8], [32 x i8]* %29, i32 0, i32 0, !dbg !1773
  call void @llvm.memset.p0i8.i64(i8* %35, i8 0, i64 32, i32 16, i1 false), !dbg !1773
  store i64 288, i64* %24, align 8, !dbg !1774
  %36 = load i16, i16* %20, align 2, !dbg !1775
  %37 = zext i16 %36 to i32, !dbg !1775
  %38 = icmp eq i32 %37, 58, !dbg !1777
  br i1 %38, label %39, label %42, !dbg !1778

; <label>:39:                                     ; preds = %11
  %40 = load i64, i64* %24, align 8, !dbg !1779
  %41 = add i64 %40, 40, !dbg !1779
  store i64 %41, i64* %24, align 8, !dbg !1779
  br label %42, !dbg !1780

; <label>:42:                                     ; preds = %39, %11
  %43 = load i64, i64* %24, align 8, !dbg !1781
  %44 = call i8* @zalloc(i64 %43), !dbg !1782
  %45 = bitcast i8* %44 to %struct.ip6t_entry*, !dbg !1783
  store %struct.ip6t_entry* %45, %struct.ip6t_entry** %25, align 8, !dbg !1784
  %46 = load %struct.ip6t_entry*, %struct.ip6t_entry** %25, align 8, !dbg !1785
  %47 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %46, i32 0, i32 2, !dbg !1786
  store i16 168, i16* %47, align 4, !dbg !1787
  %48 = load %struct.ip6t_entry*, %struct.ip6t_entry** %25, align 8, !dbg !1788
  %49 = bitcast %struct.ip6t_entry* %48 to i8*, !dbg !1789
  %50 = load %struct.ip6t_entry*, %struct.ip6t_entry** %25, align 8, !dbg !1790
  %51 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %50, i32 0, i32 2, !dbg !1791
  %52 = load i16, i16* %51, align 4, !dbg !1791
  %53 = zext i16 %52 to i32, !dbg !1790
  %54 = sext i32 %53 to i64, !dbg !1792
  %55 = getelementptr inbounds i8, i8* %49, i64 %54, !dbg !1792
  %56 = bitcast i8* %55 to %struct.xt_entry_match*, !dbg !1793
  store %struct.xt_entry_match* %56, %struct.xt_entry_match** %27, align 8, !dbg !1794
  %57 = load %struct.xt_entry_match*, %struct.xt_entry_match** %27, align 8, !dbg !1795
  %58 = getelementptr inbounds %struct.xt_entry_match, %struct.xt_entry_match* %57, i32 0, i32 0, !dbg !1796
  %59 = bitcast %union.anon.5* %58 to i16*, !dbg !1797
  store i16 80, i16* %59, align 8, !dbg !1798
  %60 = load %struct.xt_entry_match*, %struct.xt_entry_match** %27, align 8, !dbg !1799
  %61 = getelementptr inbounds %struct.xt_entry_match, %struct.xt_entry_match* %60, i32 0, i32 0, !dbg !1800
  %62 = bitcast %union.anon.5* %61 to %struct.anon.6*, !dbg !1801
  %63 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %62, i32 0, i32 2, !dbg !1802
  store i8 4, i8* %63, align 1, !dbg !1803
  %64 = load %struct.ip6t_entry*, %struct.ip6t_entry** %25, align 8, !dbg !1804
  %65 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %64, i32 0, i32 2, !dbg !1805
  %66 = load i16, i16* %65, align 4, !dbg !1805
  %67 = zext i16 %66 to i32, !dbg !1804
  %68 = load %struct.xt_entry_match*, %struct.xt_entry_match** %27, align 8, !dbg !1806
  %69 = getelementptr inbounds %struct.xt_entry_match, %struct.xt_entry_match* %68, i32 0, i32 0, !dbg !1807
  %70 = bitcast %union.anon.5* %69 to i16*, !dbg !1808
  %71 = load i16, i16* %70, align 8, !dbg !1808
  %72 = zext i16 %71 to i32, !dbg !1806
  %73 = add nsw i32 %67, %72, !dbg !1809
  %74 = trunc i32 %73 to i16, !dbg !1810
  %75 = load %struct.ip6t_entry*, %struct.ip6t_entry** %25, align 8, !dbg !1811
  %76 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %75, i32 0, i32 2, !dbg !1812
  store i16 %74, i16* %76, align 4, !dbg !1813
  %77 = load %struct.xt_entry_match*, %struct.xt_entry_match** %27, align 8, !dbg !1814
  %78 = getelementptr inbounds %struct.xt_entry_match, %struct.xt_entry_match* %77, i32 0, i32 0, !dbg !1815
  %79 = bitcast %union.anon.5* %78 to %struct.anon.6*, !dbg !1816
  %80 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %79, i32 0, i32 1, !dbg !1817
  %81 = getelementptr inbounds [29 x i8], [29 x i8]* %80, i32 0, i32 0, !dbg !1814
  %82 = call i8* @strcpy(i8* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0)) #7, !dbg !1818
  %83 = load %struct.xt_entry_match*, %struct.xt_entry_match** %27, align 8, !dbg !1819
  %84 = getelementptr inbounds %struct.xt_entry_match, %struct.xt_entry_match* %83, i32 0, i32 1, !dbg !1820
  %85 = getelementptr inbounds [0 x i8], [0 x i8]* %84, i32 0, i32 0, !dbg !1819
  %86 = bitcast i8* %85 to %struct.xt_set_info_match_v4*, !dbg !1821
  store %struct.xt_set_info_match_v4* %86, %struct.xt_set_info_match_v4** %28, align 8, !dbg !1822
  %87 = load %struct.xt_set_info_match_v4*, %struct.xt_set_info_match_v4** %28, align 8, !dbg !1823
  %88 = bitcast %struct.xt_set_info_match_v4* %87 to i8*, !dbg !1824
  call void @llvm.memset.p0i8.i64(i8* %88, i8 0, i64 48, i32 8, i1 false), !dbg !1824
  %89 = load i8*, i8** %19, align 8, !dbg !1825
  %90 = load %struct.xt_set_info_match_v4*, %struct.xt_set_info_match_v4** %28, align 8, !dbg !1826
  %91 = getelementptr inbounds %struct.xt_set_info_match_v4, %struct.xt_set_info_match_v4* %90, i32 0, i32 0, !dbg !1827
  %92 = load i8, i8* %23, align 1, !dbg !1828
  %93 = trunc i8 %92 to i1, !dbg !1828
  call void @get_set_byname(i8* %89, %struct.xt_set_info* %91, i32 10, i1 zeroext %93), !dbg !1829
  %94 = load %struct.xt_set_info_match_v4*, %struct.xt_set_info_match_v4** %28, align 8, !dbg !1830
  %95 = getelementptr inbounds %struct.xt_set_info_match_v4, %struct.xt_set_info_match_v4* %94, i32 0, i32 0, !dbg !1832
  %96 = getelementptr inbounds %struct.xt_set_info, %struct.xt_set_info* %95, i32 0, i32 0, !dbg !1833
  %97 = load i16, i16* %96, align 8, !dbg !1833
  %98 = zext i16 %97 to i32, !dbg !1830
  %99 = icmp eq i32 %98, 65535, !dbg !1834
  br i1 %99, label %100, label %103, !dbg !1835

; <label>:100:                                    ; preds = %42
  %101 = load %struct.ip6t_entry*, %struct.ip6t_entry** %25, align 8, !dbg !1836
  %102 = bitcast %struct.ip6t_entry* %101 to i8*, !dbg !1836
  call void @free(i8* %102) #7, !dbg !1838
  store %struct.ip6t_entry* null, %struct.ip6t_entry** %25, align 8, !dbg !1839
  store i32 -1, i32* %12, align 4, !dbg !1840
  br label %254, !dbg !1840

; <label>:103:                                    ; preds = %42
  %104 = load i8, i8* %16, align 1, !dbg !1841
  %105 = load %struct.xt_set_info_match_v4*, %struct.xt_set_info_match_v4** %28, align 8, !dbg !1842
  %106 = getelementptr inbounds %struct.xt_set_info_match_v4, %struct.xt_set_info_match_v4* %105, i32 0, i32 0, !dbg !1843
  %107 = getelementptr inbounds %struct.xt_set_info, %struct.xt_set_info* %106, i32 0, i32 1, !dbg !1844
  store i8 %104, i8* %107, align 2, !dbg !1845
  %108 = load i8, i8* %17, align 1, !dbg !1846
  %109 = load %struct.xt_set_info_match_v4*, %struct.xt_set_info_match_v4** %28, align 8, !dbg !1847
  %110 = getelementptr inbounds %struct.xt_set_info_match_v4, %struct.xt_set_info_match_v4* %109, i32 0, i32 0, !dbg !1848
  %111 = getelementptr inbounds %struct.xt_set_info, %struct.xt_set_info* %110, i32 0, i32 2, !dbg !1849
  store i8 %108, i8* %111, align 1, !dbg !1850
  %112 = load i16, i16* %20, align 2, !dbg !1851
  %113 = zext i16 %112 to i32, !dbg !1851
  %114 = icmp ne i32 %113, 59, !dbg !1853
  br i1 %114, label %115, label %182, !dbg !1854

; <label>:115:                                    ; preds = %103
  %116 = load i16, i16* %20, align 2, !dbg !1855
  %117 = load %struct.ip6t_entry*, %struct.ip6t_entry** %25, align 8, !dbg !1857
  %118 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %117, i32 0, i32 0, !dbg !1858
  %119 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %118, i32 0, i32 8, !dbg !1859
  store i16 %116, i16* %119, align 8, !dbg !1860
  %120 = load %struct.ip6t_entry*, %struct.ip6t_entry** %25, align 8, !dbg !1861
  %121 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %120, i32 0, i32 0, !dbg !1862
  %122 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %121, i32 0, i32 10, !dbg !1863
  %123 = load i8, i8* %122, align 1, !dbg !1864
  %124 = zext i8 %123 to i32, !dbg !1864
  %125 = or i32 %124, 1, !dbg !1864
  %126 = trunc i32 %125 to i8, !dbg !1864
  store i8 %126, i8* %122, align 1, !dbg !1864
  %127 = load i16, i16* %20, align 2, !dbg !1865
  %128 = zext i16 %127 to i32, !dbg !1865
  %129 = icmp eq i32 %128, 58, !dbg !1867
  br i1 %129, label %130, label %181, !dbg !1868

; <label>:130:                                    ; preds = %115
  %131 = load %struct.ip6t_entry*, %struct.ip6t_entry** %25, align 8, !dbg !1869
  %132 = bitcast %struct.ip6t_entry* %131 to i8*, !dbg !1871
  %133 = load %struct.ip6t_entry*, %struct.ip6t_entry** %25, align 8, !dbg !1872
  %134 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %133, i32 0, i32 2, !dbg !1873
  %135 = load i16, i16* %134, align 4, !dbg !1873
  %136 = zext i16 %135 to i32, !dbg !1872
  %137 = sext i32 %136 to i64, !dbg !1874
  %138 = getelementptr inbounds i8, i8* %132, i64 %137, !dbg !1874
  %139 = bitcast i8* %138 to %struct.xt_entry_match*, !dbg !1875
  store %struct.xt_entry_match* %139, %struct.xt_entry_match** %27, align 8, !dbg !1876
  %140 = load %struct.xt_entry_match*, %struct.xt_entry_match** %27, align 8, !dbg !1877
  %141 = getelementptr inbounds %struct.xt_entry_match, %struct.xt_entry_match* %140, i32 0, i32 0, !dbg !1878
  %142 = bitcast %union.anon.5* %141 to i16*, !dbg !1879
  store i16 40, i16* %142, align 8, !dbg !1880
  %143 = load %struct.xt_entry_match*, %struct.xt_entry_match** %27, align 8, !dbg !1881
  %144 = getelementptr inbounds %struct.xt_entry_match, %struct.xt_entry_match* %143, i32 0, i32 0, !dbg !1882
  %145 = bitcast %union.anon.5* %144 to %struct.anon.6*, !dbg !1883
  %146 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %145, i32 0, i32 2, !dbg !1884
  store i8 0, i8* %146, align 1, !dbg !1885
  %147 = load %struct.ip6t_entry*, %struct.ip6t_entry** %25, align 8, !dbg !1886
  %148 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %147, i32 0, i32 2, !dbg !1887
  %149 = load i16, i16* %148, align 4, !dbg !1887
  %150 = zext i16 %149 to i32, !dbg !1886
  %151 = load %struct.xt_entry_match*, %struct.xt_entry_match** %27, align 8, !dbg !1888
  %152 = getelementptr inbounds %struct.xt_entry_match, %struct.xt_entry_match* %151, i32 0, i32 0, !dbg !1889
  %153 = bitcast %union.anon.5* %152 to i16*, !dbg !1890
  %154 = load i16, i16* %153, align 8, !dbg !1890
  %155 = zext i16 %154 to i32, !dbg !1888
  %156 = add nsw i32 %150, %155, !dbg !1891
  %157 = trunc i32 %156 to i16, !dbg !1892
  %158 = load %struct.ip6t_entry*, %struct.ip6t_entry** %25, align 8, !dbg !1893
  %159 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %158, i32 0, i32 2, !dbg !1894
  store i16 %157, i16* %159, align 4, !dbg !1895
  %160 = load %struct.xt_entry_match*, %struct.xt_entry_match** %27, align 8, !dbg !1896
  %161 = getelementptr inbounds %struct.xt_entry_match, %struct.xt_entry_match* %160, i32 0, i32 0, !dbg !1897
  %162 = bitcast %union.anon.5* %161 to %struct.anon.6*, !dbg !1898
  %163 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %162, i32 0, i32 1, !dbg !1899
  %164 = getelementptr inbounds [29 x i8], [29 x i8]* %163, i32 0, i32 0, !dbg !1896
  %165 = call i8* @strcpy(i8* %164, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)) #7, !dbg !1900
  call void @llvm.dbg.declare(metadata %struct.ip6t_icmp** %32, metadata !1901, metadata !323), !dbg !1902
  %166 = load %struct.xt_entry_match*, %struct.xt_entry_match** %27, align 8, !dbg !1903
  %167 = getelementptr inbounds %struct.xt_entry_match, %struct.xt_entry_match* %166, i32 0, i32 1, !dbg !1904
  %168 = getelementptr inbounds [0 x i8], [0 x i8]* %167, i32 0, i32 0, !dbg !1903
  %169 = bitcast i8* %168 to %struct.ip6t_icmp*, !dbg !1905
  store %struct.ip6t_icmp* %169, %struct.ip6t_icmp** %32, align 8, !dbg !1902
  %170 = load i8, i8* %21, align 1, !dbg !1906
  %171 = load %struct.ip6t_icmp*, %struct.ip6t_icmp** %32, align 8, !dbg !1907
  %172 = getelementptr inbounds %struct.ip6t_icmp, %struct.ip6t_icmp* %171, i32 0, i32 0, !dbg !1908
  store i8 %170, i8* %172, align 1, !dbg !1909
  %173 = load %struct.ip6t_icmp*, %struct.ip6t_icmp** %32, align 8, !dbg !1910
  %174 = getelementptr inbounds %struct.ip6t_icmp, %struct.ip6t_icmp* %173, i32 0, i32 1, !dbg !1911
  %175 = getelementptr inbounds [2 x i8], [2 x i8]* %174, i64 0, i64 0, !dbg !1910
  store i8 0, i8* %175, align 1, !dbg !1912
  %176 = load %struct.ip6t_icmp*, %struct.ip6t_icmp** %32, align 8, !dbg !1913
  %177 = getelementptr inbounds %struct.ip6t_icmp, %struct.ip6t_icmp* %176, i32 0, i32 1, !dbg !1914
  %178 = getelementptr inbounds [2 x i8], [2 x i8]* %177, i64 0, i64 1, !dbg !1913
  store i8 -1, i8* %178, align 1, !dbg !1915
  %179 = load %struct.ip6t_icmp*, %struct.ip6t_icmp** %32, align 8, !dbg !1916
  %180 = getelementptr inbounds %struct.ip6t_icmp, %struct.ip6t_icmp* %179, i32 0, i32 2, !dbg !1917
  store i8 0, i8* %180, align 1, !dbg !1918
  br label %181, !dbg !1919

; <label>:181:                                    ; preds = %130, %115
  br label %182, !dbg !1920

; <label>:182:                                    ; preds = %181, %103
  %183 = load i64, i64* %24, align 8, !dbg !1921
  %184 = trunc i64 %183 to i16, !dbg !1922
  %185 = load %struct.ip6t_entry*, %struct.ip6t_entry** %25, align 8, !dbg !1923
  %186 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %185, i32 0, i32 3, !dbg !1924
  store i16 %184, i16* %186, align 2, !dbg !1925
  %187 = load %struct.ip6t_entry*, %struct.ip6t_entry** %25, align 8, !dbg !1926
  %188 = call %struct.xt_entry_target* @ip6t_get_target(%struct.ip6t_entry* %187), !dbg !1927
  store %struct.xt_entry_target* %188, %struct.xt_entry_target** %26, align 8, !dbg !1928
  %189 = load %struct.xt_entry_target*, %struct.xt_entry_target** %26, align 8, !dbg !1929
  %190 = getelementptr inbounds %struct.xt_entry_target, %struct.xt_entry_target* %189, i32 0, i32 0, !dbg !1930
  %191 = bitcast %union.anon.2* %190 to %struct.anon.3*, !dbg !1931
  %192 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %191, i32 0, i32 0, !dbg !1932
  store i16 40, i16* %192, align 8, !dbg !1933
  %193 = load %struct.xt_entry_target*, %struct.xt_entry_target** %26, align 8, !dbg !1934
  %194 = getelementptr inbounds %struct.xt_entry_target, %struct.xt_entry_target* %193, i32 0, i32 0, !dbg !1935
  %195 = bitcast %union.anon.2* %194 to %struct.anon.3*, !dbg !1936
  %196 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %195, i32 0, i32 1, !dbg !1937
  %197 = getelementptr inbounds [29 x i8], [29 x i8]* %196, i32 0, i32 0, !dbg !1934
  %198 = load i8*, i8** %18, align 8, !dbg !1938
  %199 = call i8* @strcpy(i8* %197, i8* %198) #7, !dbg !1939
  %200 = getelementptr inbounds [32 x i8], [32 x i8]* %29, i32 0, i32 0, !dbg !1940
  %201 = load i8*, i8** %14, align 8, !dbg !1941
  %202 = call i8* @strcpy(i8* %200, i8* %201) #7, !dbg !1942
  %203 = load i32, i32* %22, align 4, !dbg !1943
  %204 = icmp eq i32 %203, 0, !dbg !1945
  br i1 %204, label %205, label %221, !dbg !1946

; <label>:205:                                    ; preds = %182
  %206 = load %struct.ip6t_entry*, %struct.ip6t_entry** %25, align 8, !dbg !1947
  %207 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %206, i32 0, i32 3, !dbg !1949
  %208 = load i16, i16* %207, align 2, !dbg !1949
  %209 = zext i16 %208 to i64, !dbg !1950
  %210 = call i8* @llvm.stacksave(), !dbg !1950
  store i8* %210, i8** %33, align 8, !dbg !1950
  %211 = alloca i8, i64 %209, align 16, !dbg !1950
  call void @llvm.dbg.declare(metadata i8* %211, metadata !1951, metadata !752), !dbg !1952
  %212 = load %struct.ip6t_entry*, %struct.ip6t_entry** %25, align 8, !dbg !1953
  %213 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %212, i32 0, i32 3, !dbg !1954
  %214 = load i16, i16* %213, align 2, !dbg !1954
  %215 = zext i16 %214 to i64, !dbg !1953
  call void @llvm.memset.p0i8.i64(i8* %211, i8 -1, i64 %215, i32 16, i1 false), !dbg !1955
  %216 = getelementptr inbounds [32 x i8], [32 x i8]* %29, i32 0, i32 0, !dbg !1956
  %217 = load %struct.ip6t_entry*, %struct.ip6t_entry** %25, align 8, !dbg !1957
  %218 = load %struct.xtc_handle*, %struct.xtc_handle** %13, align 8, !dbg !1958
  %219 = call i32 @ip6tc_delete_entry(i8* %216, %struct.ip6t_entry* %217, i8* %211, %struct.xtc_handle* %218), !dbg !1959
  store i32 %219, i32* %30, align 4, !dbg !1960
  %220 = load i8*, i8** %33, align 8, !dbg !1961
  call void @llvm.stackrestore(i8* %220), !dbg !1961
  br label %236, !dbg !1962

; <label>:221:                                    ; preds = %182
  %222 = load i32, i32* %15, align 4, !dbg !1963
  %223 = icmp eq i32 %222, -1, !dbg !1965
  br i1 %223, label %224, label %229, !dbg !1966

; <label>:224:                                    ; preds = %221
  %225 = getelementptr inbounds [32 x i8], [32 x i8]* %29, i32 0, i32 0, !dbg !1967
  %226 = load %struct.ip6t_entry*, %struct.ip6t_entry** %25, align 8, !dbg !1968
  %227 = load %struct.xtc_handle*, %struct.xtc_handle** %13, align 8, !dbg !1969
  %228 = call i32 @ip6tc_append_entry(i8* %225, %struct.ip6t_entry* %226, %struct.xtc_handle* %227), !dbg !1970
  store i32 %228, i32* %30, align 4, !dbg !1971
  br label %235, !dbg !1972

; <label>:229:                                    ; preds = %221
  %230 = getelementptr inbounds [32 x i8], [32 x i8]* %29, i32 0, i32 0, !dbg !1973
  %231 = load %struct.ip6t_entry*, %struct.ip6t_entry** %25, align 8, !dbg !1974
  %232 = load i32, i32* %15, align 4, !dbg !1975
  %233 = load %struct.xtc_handle*, %struct.xtc_handle** %13, align 8, !dbg !1976
  %234 = call i32 @ip6tc_insert_entry(i8* %230, %struct.ip6t_entry* %231, i32 %232, %struct.xtc_handle* %233), !dbg !1977
  store i32 %234, i32* %30, align 4, !dbg !1978
  br label %235

; <label>:235:                                    ; preds = %229, %224
  br label %236

; <label>:236:                                    ; preds = %235, %205
  %237 = call i32* @__errno_location() #1, !dbg !1979
  %238 = load i32, i32* %237, align 4, !dbg !1980
  store i32 %238, i32* %31, align 4, !dbg !1981
  %239 = load %struct.ip6t_entry*, %struct.ip6t_entry** %25, align 8, !dbg !1982
  %240 = bitcast %struct.ip6t_entry* %239 to i8*, !dbg !1982
  call void @free(i8* %240) #7, !dbg !1983
  store %struct.ip6t_entry* null, %struct.ip6t_entry** %25, align 8, !dbg !1984
  %241 = load i32, i32* %30, align 4, !dbg !1985
  %242 = icmp ne i32 %241, 1, !dbg !1987
  br i1 %242, label %243, label %253, !dbg !1988

; <label>:243:                                    ; preds = %236
  %244 = load i8, i8* %23, align 1, !dbg !1989
  %245 = trunc i8 %244 to i1, !dbg !1989
  br i1 %245, label %251, label %246, !dbg !1992

; <label>:246:                                    ; preds = %243
  %247 = getelementptr inbounds [32 x i8], [32 x i8]* %29, i32 0, i32 0, !dbg !1993
  %248 = load i32, i32* %30, align 4, !dbg !1994
  %249 = load i32, i32* %31, align 4, !dbg !1995
  %250 = call i8* @ip6tc_strerror(i32 %249), !dbg !1996
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i32 0, i32 0), i8* %247, i32 %248, i8* %250), !dbg !1997
  br label %251, !dbg !1999

; <label>:251:                                    ; preds = %246, %243
  %252 = load i32, i32* %31, align 4, !dbg !2000
  store i32 %252, i32* %12, align 4, !dbg !2001
  br label %254, !dbg !2001

; <label>:253:                                    ; preds = %236
  store i32 0, i32* %12, align 4, !dbg !2002
  br label %254, !dbg !2002

; <label>:254:                                    ; preds = %253, %251, %100
  %255 = load i32, i32* %12, align 4, !dbg !2003
  ret i32 %255, !dbg !2003
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #8

; Function Attrs: nounwind uwtable
define internal i32 @get_version(i32*) #0 !dbg !2004 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ip_set_req_version, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  call void @llvm.dbg.declare(metadata i32** %2, metadata !2008, metadata !323), !dbg !2009
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2010, metadata !323), !dbg !2011
  %7 = call i32 @socket(i32 2, i32 524291, i32 255) #7, !dbg !2012
  store i32 %7, i32* %3, align 4, !dbg !2011
  call void @llvm.dbg.declare(metadata %struct.ip_set_req_version* %4, metadata !2013, metadata !323), !dbg !2018
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2019, metadata !323), !dbg !2020
  store i32 8, i32* %5, align 4, !dbg !2020
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2021, metadata !323), !dbg !2022
  %8 = load i32, i32* %3, align 4, !dbg !2023
  %9 = icmp slt i32 %8, 0, !dbg !2025
  br i1 %9, label %10, label %11, !dbg !2026

; <label>:10:                                     ; preds = %1
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i32 0, i32 0)), !dbg !2027
  br label %11, !dbg !2027

; <label>:11:                                     ; preds = %10, %1
  %12 = getelementptr inbounds %struct.ip_set_req_version, %struct.ip_set_req_version* %4, i32 0, i32 0, !dbg !2028
  store i32 256, i32* %12, align 4, !dbg !2029
  %13 = load i32, i32* %3, align 4, !dbg !2030
  %14 = bitcast %struct.ip_set_req_version* %4 to i8*, !dbg !2031
  %15 = call i32 @getsockopt(i32 %13, i32 0, i32 83, i8* %14, i32* %5) #7, !dbg !2032
  store i32 %15, i32* %6, align 4, !dbg !2033
  %16 = load i32, i32* %6, align 4, !dbg !2034
  %17 = icmp ne i32 %16, 0, !dbg !2036
  br i1 %17, label %18, label %19, !dbg !2037

; <label>:18:                                     ; preds = %11
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i32 0, i32 0)), !dbg !2038
  br label %19, !dbg !2038

; <label>:19:                                     ; preds = %18, %11
  %20 = getelementptr inbounds %struct.ip_set_req_version, %struct.ip_set_req_version* %4, i32 0, i32 1, !dbg !2039
  %21 = load i32, i32* %20, align 4, !dbg !2039
  %22 = load i32*, i32** %2, align 8, !dbg !2040
  store i32 %21, i32* %22, align 4, !dbg !2041
  %23 = load i32, i32* %3, align 4, !dbg !2042
  ret i32 %23, !dbg !2043
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #5

; Function Attrs: nounwind
declare i32 @getsockopt(i32, i32, i32, i8*, i32*) #5

; Function Attrs: nounwind uwtable
define internal void @get_set_byname_only(i8*, %struct.xt_set_info*, i32, i32, i1 zeroext) #0 !dbg !2044 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.xt_set_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca %struct.ip_set_req_get_set, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2047, metadata !323), !dbg !2048
  store %struct.xt_set_info* %1, %struct.xt_set_info** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.xt_set_info** %7, metadata !2049, metadata !323), !dbg !2050
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2051, metadata !323), !dbg !2052
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2053, metadata !323), !dbg !2054
  %14 = zext i1 %4 to i8
  store i8 %14, i8* %10, align 1
  call void @llvm.dbg.declare(metadata i8* %10, metadata !2055, metadata !323), !dbg !2056
  call void @llvm.dbg.declare(metadata %struct.ip_set_req_get_set* %11, metadata !2057, metadata !323), !dbg !2063
  %15 = bitcast %struct.ip_set_req_get_set* %11 to i8*, !dbg !2063
  call void @llvm.memset.p0i8.i64(i8* %15, i8 0, i64 40, i32 4, i1 false), !dbg !2063
  %16 = getelementptr inbounds %struct.ip_set_req_get_set, %struct.ip_set_req_get_set* %11, i32 0, i32 1, !dbg !2064
  %17 = load i32, i32* %9, align 4, !dbg !2065
  store i32 %17, i32* %16, align 4, !dbg !2064
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2066, metadata !323), !dbg !2067
  store i32 40, i32* %12, align 4, !dbg !2067
  call void @llvm.dbg.declare(metadata i32* %13, metadata !2068, metadata !323), !dbg !2069
  %18 = getelementptr inbounds %struct.ip_set_req_get_set, %struct.ip_set_req_get_set* %11, i32 0, i32 0, !dbg !2070
  store i32 6, i32* %18, align 4, !dbg !2071
  %19 = getelementptr inbounds %struct.ip_set_req_get_set, %struct.ip_set_req_get_set* %11, i32 0, i32 2, !dbg !2072
  %20 = bitcast %union.ip_set_name_index* %19 to [32 x i8]*, !dbg !2073
  %21 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i32 0, i32 0, !dbg !2074
  %22 = load i8*, i8** %6, align 8, !dbg !2075
  %23 = call i8* @strncpy(i8* %21, i8* %22, i64 32) #7, !dbg !2076
  %24 = getelementptr inbounds %struct.ip_set_req_get_set, %struct.ip_set_req_get_set* %11, i32 0, i32 2, !dbg !2077
  %25 = bitcast %union.ip_set_name_index* %24 to [32 x i8]*, !dbg !2078
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %25, i64 0, i64 31, !dbg !2079
  store i8 0, i8* %26, align 1, !dbg !2080
  %27 = load i32, i32* %8, align 4, !dbg !2081
  %28 = bitcast %struct.ip_set_req_get_set* %11 to i8*, !dbg !2082
  %29 = call i32 @getsockopt(i32 %27, i32 0, i32 83, i8* %28, i32* %12) #7, !dbg !2083
  store i32 %29, i32* %13, align 4, !dbg !2084
  %30 = load i32, i32* %13, align 4, !dbg !2085
  %31 = icmp ne i32 %30, 0, !dbg !2087
  br i1 %31, label %32, label %39, !dbg !2088

; <label>:32:                                     ; preds = %5
  %33 = load i8, i8* %10, align 1, !dbg !2089
  %34 = trunc i8 %33 to i1, !dbg !2089
  br i1 %34, label %38, label %35, !dbg !2092

; <label>:35:                                     ; preds = %32
  %36 = call i32* @__errno_location() #1, !dbg !2093
  %37 = load i32, i32* %36, align 4, !dbg !2094
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i32 0, i32 0), i32 %37), !dbg !2095
  br label %38, !dbg !2095

; <label>:38:                                     ; preds = %35, %32
  br label %70, !dbg !2096

; <label>:39:                                     ; preds = %5
  %40 = load i32, i32* %12, align 4, !dbg !2097
  %41 = zext i32 %40 to i64, !dbg !2097
  %42 = icmp ne i64 %41, 40, !dbg !2099
  br i1 %42, label %43, label %50, !dbg !2100

; <label>:43:                                     ; preds = %39
  %44 = load i8, i8* %10, align 1, !dbg !2101
  %45 = trunc i8 %44 to i1, !dbg !2101
  br i1 %45, label %49, label %46, !dbg !2104

; <label>:46:                                     ; preds = %43
  %47 = load i32, i32* %12, align 4, !dbg !2105
  %48 = zext i32 %47 to i64, !dbg !2106
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.9, i32 0, i32 0), i64 40, i64 %48), !dbg !2107
  br label %49, !dbg !2107

; <label>:49:                                     ; preds = %46, %43
  br label %69, !dbg !2108

; <label>:50:                                     ; preds = %39
  %51 = getelementptr inbounds %struct.ip_set_req_get_set, %struct.ip_set_req_get_set* %11, i32 0, i32 2, !dbg !2109
  %52 = bitcast %union.ip_set_name_index* %51 to i16*, !dbg !2111
  %53 = load i16, i16* %52, align 4, !dbg !2111
  %54 = zext i16 %53 to i32, !dbg !2112
  %55 = icmp eq i32 %54, 65535, !dbg !2113
  br i1 %55, label %56, label %62, !dbg !2114

; <label>:56:                                     ; preds = %50
  %57 = load i8, i8* %10, align 1, !dbg !2115
  %58 = trunc i8 %57 to i1, !dbg !2115
  br i1 %58, label %61, label %59, !dbg !2118

; <label>:59:                                     ; preds = %56
  %60 = load i8*, i8** %6, align 8, !dbg !2119
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0), i8* %60), !dbg !2120
  br label %61, !dbg !2120

; <label>:61:                                     ; preds = %59, %56
  br label %68, !dbg !2121

; <label>:62:                                     ; preds = %50
  %63 = getelementptr inbounds %struct.ip_set_req_get_set, %struct.ip_set_req_get_set* %11, i32 0, i32 2, !dbg !2122
  %64 = bitcast %union.ip_set_name_index* %63 to i16*, !dbg !2123
  %65 = load i16, i16* %64, align 4, !dbg !2123
  %66 = load %struct.xt_set_info*, %struct.xt_set_info** %7, align 8, !dbg !2124
  %67 = getelementptr inbounds %struct.xt_set_info, %struct.xt_set_info* %66, i32 0, i32 0, !dbg !2125
  store i16 %65, i16* %67, align 2, !dbg !2126
  br label %68

; <label>:68:                                     ; preds = %62, %61
  br label %69

; <label>:69:                                     ; preds = %68, %49
  br label %70

; <label>:70:                                     ; preds = %69, %38
  ret void, !dbg !2127
}

declare i32 @close(i32) #2

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!309, !310}
!llvm.ident = !{!311}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !65, globals: !229)
!1 = !DIFile(filename: "[inter]keepalived--vrrp--vrrp_iptables_calls.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!2 = !{!3, !32, !41, !53}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 40, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
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
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 99, size: 32, align: 32, elements: !33)
!33 = !{!34, !35, !36, !37, !38, !39, !40}
!34 = !DIEnumerator(name: "IPPROTO_HOPOPTS", value: 0)
!35 = !DIEnumerator(name: "IPPROTO_ROUTING", value: 43)
!36 = !DIEnumerator(name: "IPPROTO_FRAGMENT", value: 44)
!37 = !DIEnumerator(name: "IPPROTO_ICMPV6", value: 58)
!38 = !DIEnumerator(name: "IPPROTO_NONE", value: 59)
!39 = !DIEnumerator(name: "IPPROTO_DSTOPTS", value: 60)
!40 = !DIEnumerator(name: "IPPROTO_MH", value: 135)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !42, line: 58, size: 32, align: 32, elements: !43)
!42 = !DIFile(filename: "/usr/include/linux/netfilter.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!43 = !{!44, !45, !46, !47, !48, !49, !50, !51, !52}
!44 = !DIEnumerator(name: "NFPROTO_UNSPEC", value: 0)
!45 = !DIEnumerator(name: "NFPROTO_INET", value: 1)
!46 = !DIEnumerator(name: "NFPROTO_IPV4", value: 2)
!47 = !DIEnumerator(name: "NFPROTO_ARP", value: 3)
!48 = !DIEnumerator(name: "NFPROTO_NETDEV", value: 5)
!49 = !DIEnumerator(name: "NFPROTO_BRIDGE", value: 7)
!50 = !DIEnumerator(name: "NFPROTO_IPV6", value: 10)
!51 = !DIEnumerator(name: "NFPROTO_DECNET", value: 12)
!52 = !DIEnumerator(name: "NFPROTO_NUMPROTO", value: 13)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !54, line: 24, size: 32, align: 32, elements: !55)
!54 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!55 = !{!56, !57, !58, !59, !60, !61, !62, !63, !64}
!56 = !DIEnumerator(name: "SOCK_STREAM", value: 1)
!57 = !DIEnumerator(name: "SOCK_DGRAM", value: 2)
!58 = !DIEnumerator(name: "SOCK_RAW", value: 3)
!59 = !DIEnumerator(name: "SOCK_RDM", value: 4)
!60 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5)
!61 = !DIEnumerator(name: "SOCK_DCCP", value: 6)
!62 = !DIEnumerator(name: "SOCK_PACKET", value: 10)
!63 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288)
!64 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048)
!65 = !{!66, !67, !118, !142, !143, !144, !153, !194, !200, !206, !226, !227}
!66 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipt_entry", file: !69, line: 102, size: 896, align: 64, elements: !70)
!69 = !DIFile(filename: "/usr/include/linux/netfilter_ipv4/ip_tables.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!70 = !{!71, !102, !103, !104, !105, !106, !114}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !68, file: !69, line: 103, baseType: !72, size: 672, align: 32)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipt_ip", file: !69, line: 67, size: 672, align: 32, elements: !73)
!73 = !{!74, !82, !83, !84, !85, !90, !91, !94, !95, !99, !101}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !72, file: !69, line: 69, baseType: !75, size: 32, align: 32)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !4, line: 31, size: 32, align: 32, elements: !76)
!76 = !{!77}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !75, file: !4, line: 33, baseType: !78, size: 32, align: 32)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !4, line: 30, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !80, line: 51, baseType: !81)
!80 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!81 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !72, file: !69, line: 69, baseType: !75, size: 32, align: 32, offset: 32)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "smsk", scope: !72, file: !69, line: 71, baseType: !75, size: 32, align: 32, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "dmsk", scope: !72, file: !69, line: 71, baseType: !75, size: 32, align: 32, offset: 96)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "iniface", scope: !72, file: !69, line: 72, baseType: !86, size: 128, align: 8, offset: 128)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 128, align: 8, elements: !88)
!87 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!88 = !{!89}
!89 = !DISubrange(count: 16)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "outiface", scope: !72, file: !69, line: 72, baseType: !86, size: 128, align: 8, offset: 256)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "iniface_mask", scope: !72, file: !69, line: 73, baseType: !92, size: 128, align: 8, offset: 384)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 128, align: 8, elements: !88)
!93 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "outiface_mask", scope: !72, file: !69, line: 73, baseType: !92, size: 128, align: 8, offset: 512)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !72, file: !69, line: 76, baseType: !96, size: 16, align: 16, offset: 640)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !97, line: 23, baseType: !98)
!97 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!98 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !72, file: !69, line: 79, baseType: !100, size: 8, align: 8, offset: 656)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !97, line: 20, baseType: !93)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "invflags", scope: !72, file: !69, line: 81, baseType: !100, size: 8, align: 8, offset: 664)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "nfcache", scope: !68, file: !69, line: 106, baseType: !81, size: 32, align: 32, offset: 672)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "target_offset", scope: !68, file: !69, line: 109, baseType: !96, size: 16, align: 16, offset: 704)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !68, file: !69, line: 111, baseType: !96, size: 16, align: 16, offset: 720)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "comefrom", scope: !68, file: !69, line: 114, baseType: !81, size: 32, align: 32, offset: 736)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !68, file: !69, line: 117, baseType: !107, size: 128, align: 64, offset: 768)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xt_counters", file: !108, line: 109, size: 128, align: 64, elements: !109)
!108 = !DIFile(filename: "/usr/include/linux/netfilter/x_tables.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!109 = !{!110, !113}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "pcnt", scope: !107, file: !108, line: 110, baseType: !111, size: 64, align: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !97, line: 30, baseType: !112)
!112 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "bcnt", scope: !107, file: !108, line: 110, baseType: !111, size: 64, align: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !68, file: !69, line: 120, baseType: !115, align: 8, offset: 896)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, align: 8, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 0)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64, align: 64)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xt_entry_match", file: !108, line: 10, size: 256, align: 64, elements: !120)
!120 = !{!121, !141}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !119, file: !108, line: 28, baseType: !122, size: 256, align: 64)
!122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !119, file: !108, line: 11, size: 256, align: 64, elements: !123)
!123 = !{!124, !133, !140}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !122, file: !108, line: 18, baseType: !125, size: 256, align: 16)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !122, file: !108, line: 12, size: 256, align: 16, elements: !126)
!126 = !{!127, !128, !132}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "match_size", scope: !125, file: !108, line: 13, baseType: !96, size: 16, align: 16)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !125, file: !108, line: 16, baseType: !129, size: 232, align: 8, offset: 16)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 232, align: 8, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 29)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !125, file: !108, line: 17, baseType: !100, size: 8, align: 8, offset: 248)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "kernel", scope: !122, file: !108, line: 24, baseType: !134, size: 128, align: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !122, file: !108, line: 19, size: 128, align: 64, elements: !135)
!135 = !{!136, !137}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "match_size", scope: !134, file: !108, line: 20, baseType: !96, size: 16, align: 16)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !134, file: !108, line: 23, baseType: !138, size: 64, align: 64, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64, align: 64)
!139 = !DICompositeType(tag: DW_TAG_structure_type, name: "xt_match", file: !108, line: 23, flags: DIFlagFwdDecl)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "match_size", scope: !122, file: !108, line: 27, baseType: !96, size: 16, align: 16)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !119, file: !108, line: 30, baseType: !115, align: 8, offset: 256)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !80, line: 49, baseType: !98)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipt_icmp", file: !69, line: 143, size: 32, align: 8, elements: !146)
!146 = !{!147, !148, !152}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !145, file: !69, line: 144, baseType: !100, size: 8, align: 8)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !145, file: !69, line: 145, baseType: !149, size: 16, align: 8, offset: 8)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 16, align: 8, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 2)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "invflags", scope: !145, file: !69, line: 146, baseType: !100, size: 8, align: 8, offset: 24)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64, align: 64)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6t_entry", file: !155, line: 106, size: 1344, align: 64, elements: !156)
!155 = !DIFile(filename: "/usr/include/linux/netfilter_ipv6/ip6_tables.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!156 = !{!157, !188, !189, !190, !191, !192, !193}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6", scope: !154, file: !155, line: 107, baseType: !158, size: 1088, align: 32)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6t_ip6", file: !155, line: 60, size: 1088, align: 32, elements: !159)
!159 = !{!160, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !158, file: !155, line: 62, baseType: !161, size: 128, align: 32)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !4, line: 211, size: 128, align: 32, elements: !162)
!162 = !{!163}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !161, file: !4, line: 220, baseType: !164, size: 128, align: 32)
!164 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !161, file: !4, line: 213, size: 128, align: 32, elements: !165)
!165 = !{!166, !169, !173}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !164, file: !4, line: 215, baseType: !167, size: 128, align: 8)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 128, align: 8, elements: !88)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !80, line: 48, baseType: !93)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !164, file: !4, line: 217, baseType: !170, size: 128, align: 16)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 128, align: 16, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 8)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !164, file: !4, line: 218, baseType: !174, size: 128, align: 32)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 128, align: 32, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 4)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !158, file: !155, line: 62, baseType: !161, size: 128, align: 32, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "smsk", scope: !158, file: !155, line: 64, baseType: !161, size: 128, align: 32, offset: 256)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "dmsk", scope: !158, file: !155, line: 64, baseType: !161, size: 128, align: 32, offset: 384)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "iniface", scope: !158, file: !155, line: 65, baseType: !86, size: 128, align: 8, offset: 512)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "outiface", scope: !158, file: !155, line: 65, baseType: !86, size: 128, align: 8, offset: 640)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "iniface_mask", scope: !158, file: !155, line: 66, baseType: !92, size: 128, align: 8, offset: 768)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "outiface_mask", scope: !158, file: !155, line: 66, baseType: !92, size: 128, align: 8, offset: 896)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !158, file: !155, line: 76, baseType: !96, size: 16, align: 16, offset: 1024)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "tos", scope: !158, file: !155, line: 78, baseType: !100, size: 8, align: 8, offset: 1040)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !158, file: !155, line: 81, baseType: !100, size: 8, align: 8, offset: 1048)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "invflags", scope: !158, file: !155, line: 83, baseType: !100, size: 8, align: 8, offset: 1056)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "nfcache", scope: !154, file: !155, line: 110, baseType: !81, size: 32, align: 32, offset: 1088)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "target_offset", scope: !154, file: !155, line: 113, baseType: !96, size: 16, align: 16, offset: 1120)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !154, file: !155, line: 115, baseType: !96, size: 16, align: 16, offset: 1136)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "comefrom", scope: !154, file: !155, line: 118, baseType: !81, size: 32, align: 32, offset: 1152)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !154, file: !155, line: 121, baseType: !107, size: 128, align: 64, offset: 1216)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !154, file: !155, line: 124, baseType: !115, align: 8, offset: 1344)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6t_icmp", file: !155, line: 183, size: 32, align: 8, elements: !196)
!196 = !{!197, !198, !199}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !195, file: !155, line: 184, baseType: !100, size: 8, align: 8)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !195, file: !155, line: 185, baseType: !149, size: 16, align: 8, offset: 8)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "invflags", scope: !195, file: !155, line: 186, baseType: !100, size: 8, align: 8, offset: 24)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !201, line: 85, baseType: !202)
!201 = !DIFile(filename: "/usr/include/signal.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{null, !205}
!205 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xt_set_info_match_v4", file: !208, line: 86, size: 384, align: 64, elements: !209)
!208 = !DIFile(filename: "/usr/include/linux/netfilter/xt_set.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!209 = !{!210, !218, !223, !224}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "match_set", scope: !207, file: !208, line: 87, baseType: !211, size: 32, align: 16)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xt_set_info", file: !208, line: 40, size: 32, align: 16, elements: !212)
!212 = !{!213, !216, !217}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !211, file: !208, line: 41, baseType: !214, size: 16, align: 16)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_set_id_t", file: !215, line: 225, baseType: !96)
!215 = !DIFile(filename: "/usr/include/linux/netfilter/ipset/ip_set.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!216 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !211, file: !208, line: 42, baseType: !100, size: 8, align: 8, offset: 16)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !211, file: !208, line: 43, baseType: !100, size: 8, align: 8, offset: 24)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "packets", scope: !207, file: !208, line: 88, baseType: !219, size: 128, align: 64, offset: 64)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_set_counter_match", file: !215, line: 265, size: 128, align: 64, elements: !220)
!220 = !{!221, !222}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !219, file: !215, line: 266, baseType: !111, size: 64, align: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !219, file: !215, line: 267, baseType: !100, size: 8, align: 8, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !207, file: !208, line: 89, baseType: !219, size: 128, align: 64, offset: 192)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !207, file: !208, line: 90, baseType: !225, size: 32, align: 32, offset: 320)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !97, line: 26, baseType: !81)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !228, line: 216, baseType: !66)
!228 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!229 = !{!230}
!230 = distinct !DIGlobalVariable(name: "garp_delay", scope: !0, file: !231, line: 150, type: !232, isLocal: false, isDefinition: true, variable: %struct._list** @garp_delay)
!231 = !DIFile(filename: "./../include/vrrp_if.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !233, line: 31, baseType: !234)
!233 = !DIFile(filename: "../../lib/list.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64, align: 64)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_list", file: !233, line: 39, size: 320, align: 64, elements: !236)
!236 = !{!237, !244, !245, !246, !250}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !235, file: !233, line: 40, baseType: !238, size: 64, align: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_element", file: !233, line: 33, size: 192, align: 64, elements: !240)
!240 = !{!241, !242, !243}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !239, file: !233, line: 34, baseType: !238, size: 64, align: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !239, file: !233, line: 35, baseType: !238, size: 64, align: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !239, file: !233, line: 36, baseType: !226, size: 64, align: 64, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !235, file: !233, line: 41, baseType: !238, size: 64, align: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !235, file: !233, line: 42, baseType: !81, size: 32, align: 32, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !235, file: !233, line: 43, baseType: !247, size: 64, align: 64, offset: 192)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64, align: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{null, !226}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !235, file: !233, line: 44, baseType: !251, size: 64, align: 64, offset: 256)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64, align: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{null, !254, !226}
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64, align: 64)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !256, line: 48, baseType: !257)
!256 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !258, line: 241, size: 1728, align: 64, elements: !259)
!258 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!259 = !{!260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !280, !281, !282, !283, !287, !288, !290, !294, !297, !299, !300, !301, !302, !303, !304, !305}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !257, file: !258, line: 242, baseType: !205, size: 32, align: 32)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !257, file: !258, line: 247, baseType: !142, size: 64, align: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !257, file: !258, line: 248, baseType: !142, size: 64, align: 64, offset: 128)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !257, file: !258, line: 249, baseType: !142, size: 64, align: 64, offset: 192)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !257, file: !258, line: 250, baseType: !142, size: 64, align: 64, offset: 256)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !257, file: !258, line: 251, baseType: !142, size: 64, align: 64, offset: 320)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !257, file: !258, line: 252, baseType: !142, size: 64, align: 64, offset: 384)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !257, file: !258, line: 253, baseType: !142, size: 64, align: 64, offset: 448)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !257, file: !258, line: 254, baseType: !142, size: 64, align: 64, offset: 512)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !257, file: !258, line: 256, baseType: !142, size: 64, align: 64, offset: 576)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !257, file: !258, line: 257, baseType: !142, size: 64, align: 64, offset: 640)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !257, file: !258, line: 258, baseType: !142, size: 64, align: 64, offset: 704)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !257, file: !258, line: 260, baseType: !273, size: 64, align: 64, offset: 768)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64, align: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !258, line: 156, size: 192, align: 64, elements: !275)
!275 = !{!276, !277, !279}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !274, file: !258, line: 157, baseType: !273, size: 64, align: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !274, file: !258, line: 158, baseType: !278, size: 64, align: 64, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64, align: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !274, file: !258, line: 162, baseType: !205, size: 32, align: 32, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !257, file: !258, line: 262, baseType: !278, size: 64, align: 64, offset: 832)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !257, file: !258, line: 264, baseType: !205, size: 32, align: 32, offset: 896)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !257, file: !258, line: 268, baseType: !205, size: 32, align: 32, offset: 928)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !257, file: !258, line: 270, baseType: !284, size: 64, align: 64, offset: 960)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !285, line: 131, baseType: !286)
!285 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!286 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !257, file: !258, line: 274, baseType: !98, size: 16, align: 16, offset: 1024)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !257, file: !258, line: 275, baseType: !289, size: 8, align: 8, offset: 1040)
!289 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !257, file: !258, line: 276, baseType: !291, size: 8, align: 8, offset: 1048)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 8, align: 8, elements: !292)
!292 = !{!293}
!293 = !DISubrange(count: 1)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !257, file: !258, line: 280, baseType: !295, size: 64, align: 64, offset: 1088)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64, align: 64)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !258, line: 150, baseType: null)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !257, file: !258, line: 289, baseType: !298, size: 64, align: 64, offset: 1152)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !285, line: 132, baseType: !286)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !257, file: !258, line: 297, baseType: !226, size: 64, align: 64, offset: 1216)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !257, file: !258, line: 298, baseType: !226, size: 64, align: 64, offset: 1280)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !257, file: !258, line: 299, baseType: !226, size: 64, align: 64, offset: 1344)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !257, file: !258, line: 300, baseType: !226, size: 64, align: 64, offset: 1408)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !257, file: !258, line: 302, baseType: !227, size: 64, align: 64, offset: 1472)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !257, file: !258, line: 303, baseType: !205, size: 32, align: 32, offset: 1536)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !257, file: !258, line: 305, baseType: !306, size: 160, align: 8, offset: 1568)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 160, align: 8, elements: !307)
!307 = !{!308}
!308 = !DISubrange(count: 20)
!309 = !{i32 2, !"Dwarf Version", i32 4}
!310 = !{i32 2, !"Debug Info Version", i32 3}
!311 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!312 = distinct !DISubprogram(name: "ip4tables_open", scope: !313, file: !313, line: 148, type: !314, isLocal: false, isDefinition: true, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !321)
!313 = !DIFile(filename: "vrrp_iptables_calls.c", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!314 = !DISubroutineType(types: !315)
!315 = !{!316, !319}
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64, align: 64)
!317 = !DICompositeType(tag: DW_TAG_structure_type, name: "xtc_handle", file: !318, line: 5, flags: DIFlagFwdDecl)
!318 = !DIFile(filename: "/usr/include/libiptc/xtcshared.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64, align: 64)
!320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!321 = !{}
!322 = !DILocalVariable(name: "tablename", arg: 1, scope: !312, file: !313, line: 148, type: !319)
!323 = !DIExpression()
!324 = !DILocation(line: 148, column: 49, scope: !312)
!325 = !DILocalVariable(name: "h", scope: !312, file: !313, line: 150, type: !316)
!326 = !DILocation(line: 150, column: 21, scope: !312)
!327 = !DILocation(line: 152, column: 26, scope: !328)
!328 = distinct !DILexicalBlock(scope: !312, file: !313, line: 152, column: 7)
!329 = !DILocation(line: 152, column: 14, scope: !328)
!330 = !DILocation(line: 152, column: 12, scope: !328)
!331 = !DILocation(line: 152, column: 7, scope: !312)
!332 = !DILocation(line: 153, column: 3, scope: !328)
!333 = !DILocation(line: 155, column: 9, scope: !312)
!334 = !DILocation(line: 155, column: 2, scope: !312)
!335 = !DILocation(line: 156, column: 1, scope: !312)
!336 = distinct !DISubprogram(name: "ip4tables_close", scope: !313, file: !313, line: 158, type: !337, isLocal: false, isDefinition: true, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !321)
!337 = !DISubroutineType(types: !338)
!338 = !{!205, !316, !205}
!339 = !DILocalVariable(name: "handle", arg: 1, scope: !336, file: !313, line: 158, type: !316)
!340 = !DILocation(line: 158, column: 42, scope: !336)
!341 = !DILocalVariable(name: "updated", arg: 2, scope: !336, file: !313, line: 158, type: !205)
!342 = !DILocation(line: 158, column: 54, scope: !336)
!343 = !DILocalVariable(name: "res", scope: !336, file: !313, line: 160, type: !205)
!344 = !DILocation(line: 160, column: 6, scope: !336)
!345 = !DILocalVariable(name: "sav_errno", scope: !336, file: !313, line: 161, type: !205)
!346 = !DILocation(line: 161, column: 6, scope: !336)
!347 = !DILocation(line: 163, column: 6, scope: !348)
!348 = distinct !DILexicalBlock(scope: !336, file: !313, line: 163, column: 6)
!349 = !DILocation(line: 163, column: 6, scope: !336)
!350 = !DILocation(line: 164, column: 30, scope: !351)
!351 = distinct !DILexicalBlock(scope: !352, file: !313, line: 164, column: 8)
!352 = distinct !DILexicalBlock(scope: !348, file: !313, line: 163, column: 15)
!353 = !DILocation(line: 164, column: 16, scope: !351)
!354 = !DILocation(line: 164, column: 14, scope: !351)
!355 = !DILocation(line: 164, column: 41, scope: !351)
!356 = !DILocation(line: 164, column: 8, scope: !352)
!357 = !DILocation(line: 166, column: 17, scope: !358)
!358 = distinct !DILexicalBlock(scope: !351, file: !313, line: 165, column: 3)
!359 = !DILocation(line: 166, column: 16, scope: !358)
!360 = !DILocation(line: 166, column: 14, scope: !358)
!361 = !DILocation(line: 167, column: 56, scope: !358)
!362 = !DILocation(line: 167, column: 76, scope: !358)
!363 = !DILocation(line: 167, column: 61, scope: !358)
!364 = !DILocation(line: 167, column: 4, scope: !365)
!365 = !DILexicalBlockFile(scope: !358, file: !313, discriminator: 1)
!366 = !DILocation(line: 168, column: 3, scope: !358)
!367 = !DILocation(line: 169, column: 2, scope: !352)
!368 = !DILocation(line: 171, column: 14, scope: !336)
!369 = !DILocation(line: 171, column: 2, scope: !336)
!370 = !DILocation(line: 173, column: 7, scope: !371)
!371 = distinct !DILexicalBlock(scope: !336, file: !313, line: 173, column: 7)
!372 = !DILocation(line: 173, column: 11, scope: !371)
!373 = !DILocation(line: 173, column: 7, scope: !336)
!374 = !DILocation(line: 174, column: 3, scope: !371)
!375 = !DILocation(line: 176, column: 12, scope: !371)
!376 = !DILocation(line: 176, column: 3, scope: !371)
!377 = !DILocation(line: 177, column: 1, scope: !336)
!378 = distinct !DISubprogram(name: "ip4tables_is_chain", scope: !313, file: !313, line: 179, type: !379, isLocal: false, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !321)
!379 = !DISubroutineType(types: !380)
!380 = !{!205, !316, !319}
!381 = !DILocalVariable(name: "handle", arg: 1, scope: !378, file: !313, line: 179, type: !316)
!382 = !DILocation(line: 179, column: 43, scope: !378)
!383 = !DILocalVariable(name: "chain_name", arg: 2, scope: !378, file: !313, line: 179, type: !319)
!384 = !DILocation(line: 179, column: 63, scope: !378)
!385 = !DILocation(line: 181, column: 23, scope: !378)
!386 = !DILocation(line: 181, column: 35, scope: !378)
!387 = !DILocation(line: 181, column: 9, scope: !378)
!388 = !DILocation(line: 181, column: 2, scope: !378)
!389 = distinct !DISubprogram(name: "ip4tables_process_entry", scope: !313, file: !313, line: 184, type: !390, isLocal: false, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !321)
!390 = !DISubroutineType(types: !391)
!391 = !{!205, !316, !319, !81, !319, !392, !392, !319, !319, !143, !168, !205, !428}
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64, align: 64)
!393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !394)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_address_t", file: !395, line: 73, baseType: !396)
!395 = !DIFile(filename: "./../include/vrrp_ipaddress.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ip_address", file: !395, line: 41, size: 704, align: 64, elements: !397)
!397 = !{!398, !407, !416, !477, !478, !479, !480, !481, !486, !487, !505, !506, !507}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "ifa", scope: !396, file: !395, line: 42, baseType: !399, size: 64, align: 32)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ifaddrmsg", file: !400, line: 7, size: 64, align: 32, elements: !401)
!400 = !DIFile(filename: "/usr/include/linux/if_addr.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!401 = !{!402, !403, !404, !405, !406}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_family", scope: !399, file: !400, line: 8, baseType: !100, size: 8, align: 8)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_prefixlen", scope: !399, file: !400, line: 9, baseType: !100, size: 8, align: 8, offset: 8)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_flags", scope: !399, file: !400, line: 10, baseType: !100, size: 8, align: 8, offset: 16)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_scope", scope: !399, file: !400, line: 11, baseType: !100, size: 8, align: 8, offset: 24)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_index", scope: !399, file: !400, line: 12, baseType: !225, size: 32, align: 32, offset: 32)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !396, file: !395, line: 50, baseType: !408, size: 128, align: 32, offset: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !396, file: !395, line: 44, size: 128, align: 32, elements: !409)
!409 = !{!410, !415}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "sin", scope: !408, file: !395, line: 48, baseType: !411, size: 64, align: 32)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !408, file: !395, line: 45, size: 64, align: 32, elements: !412)
!412 = !{!413, !414}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !411, file: !395, line: 46, baseType: !75, size: 32, align: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "sin_brd", scope: !411, file: !395, line: 47, baseType: !75, size: 32, align: 32, offset: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !408, file: !395, line: 49, baseType: !161, size: 128, align: 32)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "ifp", scope: !396, file: !395, line: 52, baseType: !417, size: 64, align: 64, offset: 192)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64, align: 64)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "interface_t", file: !231, line: 111, baseType: !419)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_interface", file: !231, line: 76, size: 1792, align: 64, elements: !420)
!420 = !{!421, !422, !424, !425, !426, !427, !429, !430, !431, !438, !439, !440, !441, !442, !443, !445, !446, !447, !448, !469, !470, !471, !472, !473, !474, !475, !476}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "ifname", scope: !419, file: !231, line: 77, baseType: !86, size: 128, align: 8)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !419, file: !231, line: 78, baseType: !423, size: 32, align: 32, offset: 128)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "ifindex_t", file: !231, line: 62, baseType: !79)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !419, file: !231, line: 79, baseType: !75, size: 32, align: 32, offset: 160)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !419, file: !231, line: 80, baseType: !161, size: 128, align: 32, offset: 192)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "ifi_flags", scope: !419, file: !231, line: 81, baseType: !81, size: 32, align: 32, offset: 320)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "linkbeat_use_polling", scope: !419, file: !231, line: 82, baseType: !428, size: 8, align: 8, offset: 352)
!428 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !419, file: !231, line: 83, baseType: !79, size: 32, align: 32, offset: 384)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "hw_type", scope: !419, file: !231, line: 84, baseType: !98, size: 16, align: 16, offset: 416)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr", scope: !419, file: !231, line: 85, baseType: !432, size: 256, align: 8, offset: 432)
!432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 256, align: 8, elements: !436)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !434, line: 33, baseType: !435)
!434 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !285, line: 30, baseType: !93)
!436 = !{!437}
!437 = !DISubrange(count: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr_bcast", scope: !419, file: !231, line: 86, baseType: !432, size: 256, align: 8, offset: 688)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr_len", scope: !419, file: !231, line: 87, baseType: !227, size: 64, align: 64, offset: 960)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "lb_type", scope: !419, file: !231, line: 88, baseType: !205, size: 32, align: 32, offset: 1024)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "vmac", scope: !419, file: !231, line: 90, baseType: !428, size: 8, align: 8, offset: 1056)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "base_ifindex", scope: !419, file: !231, line: 91, baseType: !423, size: 32, align: 32, offset: 1088)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "base_ifp", scope: !419, file: !231, line: 92, baseType: !444, size: 64, align: 64, offset: 1152)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64, align: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master_ifindex", scope: !419, file: !231, line: 94, baseType: !423, size: 32, align: 32, offset: 1216)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master_ifp", scope: !419, file: !231, line: 96, baseType: !444, size: 64, align: 64, offset: 1280)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master", scope: !419, file: !231, line: 97, baseType: !428, size: 8, align: 8, offset: 1344)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "garp_delay", scope: !419, file: !231, line: 100, baseType: !449, size: 64, align: 64, offset: 1408)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64, align: 64)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "garp_delay_t", file: !231, line: 73, baseType: !451)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_garp_delay", file: !231, line: 65, size: 704, align: 64, elements: !452)
!452 = !{!453, !463, !464, !465, !466, !467, !468}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "garp_interval", scope: !451, file: !231, line: 66, baseType: !454, size: 128, align: 64)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "timeval_t", file: !455, line: 31, baseType: !456)
!455 = !DIFile(filename: "../../lib/timer.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !457, line: 30, size: 128, align: 64, elements: !458)
!457 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!458 = !{!459, !461}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !456, file: !457, line: 32, baseType: !460, size: 64, align: 64)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !285, line: 139, baseType: !286)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !456, file: !457, line: 33, baseType: !462, size: 64, align: 64, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !285, line: 141, baseType: !286)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "have_garp_interval", scope: !451, file: !231, line: 67, baseType: !428, size: 8, align: 8, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "gna_interval", scope: !451, file: !231, line: 68, baseType: !454, size: 128, align: 64, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "have_gna_interval", scope: !451, file: !231, line: 69, baseType: !428, size: 8, align: 8, offset: 320)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "garp_next_time", scope: !451, file: !231, line: 70, baseType: !454, size: 128, align: 64, offset: 384)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "gna_next_time", scope: !451, file: !231, line: 71, baseType: !454, size: 128, align: 64, offset: 512)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "aggregation_group", scope: !451, file: !231, line: 72, baseType: !205, size: 32, align: 32, offset: 640)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "gna_router", scope: !419, file: !231, line: 101, baseType: !428, size: 8, align: 8, offset: 1472)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_config", scope: !419, file: !231, line: 102, baseType: !205, size: 32, align: 32, offset: 1504)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_ignore_value", scope: !419, file: !231, line: 103, baseType: !79, size: 32, align: 32, offset: 1536)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_filter_value", scope: !419, file: !231, line: 104, baseType: !79, size: 32, align: 32, offset: 1568)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "reset_promote_secondaries", scope: !419, file: !231, line: 105, baseType: !79, size: 32, align: 32, offset: 1600)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "rp_filter", scope: !419, file: !231, line: 107, baseType: !81, size: 32, align: 32, offset: 1632)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "promote_secondaries_already_set", scope: !419, file: !231, line: 109, baseType: !428, size: 8, align: 8, offset: 1664)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "tracking_vrrp", scope: !419, file: !231, line: 110, baseType: !232, size: 64, align: 64, offset: 1728)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !396, file: !395, line: 53, baseType: !142, size: 64, align: 64, offset: 256)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !396, file: !395, line: 55, baseType: !79, size: 32, align: 32, offset: 320)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "flagmask", scope: !396, file: !395, line: 56, baseType: !79, size: 32, align: 32, offset: 352)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "have_peer", scope: !396, file: !395, line: 61, baseType: !428, size: 8, align: 8, offset: 384)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !396, file: !395, line: 65, baseType: !482, size: 128, align: 32, offset: 416)
!482 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !396, file: !395, line: 62, size: 128, align: 32, elements: !483)
!483 = !{!484, !485}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !482, file: !395, line: 63, baseType: !75, size: 32, align: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !482, file: !395, line: 64, baseType: !161, size: 128, align: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "dont_track", scope: !396, file: !395, line: 66, baseType: !428, size: 8, align: 8, offset: 544)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "track_group", scope: !396, file: !395, line: 67, baseType: !488, size: 64, align: 64, offset: 576)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64, align: 64)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "static_track_group_t", file: !490, line: 39, baseType: !491)
!490 = !DIFile(filename: "./../include/vrrp_static_track.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_static_track_group", file: !490, line: 35, size: 192, align: 64, elements: !492)
!492 = !{!493, !494, !504}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !491, file: !490, line: 36, baseType: !142, size: 64, align: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !491, file: !490, line: 37, baseType: !495, size: 64, align: 64, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64, align: 64)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "vector_t", file: !497, line: 34, baseType: !498)
!497 = !DIFile(filename: "../../lib/vector.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vector", file: !497, line: 30, size: 128, align: 64, elements: !499)
!499 = !{!500, !501, !502}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !498, file: !497, line: 31, baseType: !81, size: 32, align: 32)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !498, file: !497, line: 32, baseType: !81, size: 32, align: 32, offset: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !498, file: !497, line: 33, baseType: !503, size: 64, align: 64, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64, align: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp_instances", scope: !491, file: !490, line: 38, baseType: !232, size: 64, align: 64, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !396, file: !395, line: 69, baseType: !428, size: 8, align: 8, offset: 640)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "iptable_rule_set", scope: !396, file: !395, line: 70, baseType: !428, size: 8, align: 8, offset: 648)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "garp_gna_pending", scope: !396, file: !395, line: 72, baseType: !428, size: 8, align: 8, offset: 656)
!508 = !DILocalVariable(name: "handle", arg: 1, scope: !389, file: !313, line: 184, type: !316)
!509 = !DILocation(line: 184, column: 49, scope: !389)
!510 = !DILocalVariable(name: "chain_name", arg: 2, scope: !389, file: !313, line: 184, type: !319)
!511 = !DILocation(line: 184, column: 69, scope: !389)
!512 = !DILocalVariable(name: "rulenum", arg: 3, scope: !389, file: !313, line: 184, type: !81)
!513 = !DILocation(line: 184, column: 94, scope: !389)
!514 = !DILocalVariable(name: "target_name", arg: 4, scope: !389, file: !313, line: 184, type: !319)
!515 = !DILocation(line: 184, column: 115, scope: !389)
!516 = !DILocalVariable(name: "src_ip_address", arg: 5, scope: !389, file: !313, line: 184, type: !392)
!517 = !DILocation(line: 184, column: 148, scope: !389)
!518 = !DILocalVariable(name: "dst_ip_address", arg: 6, scope: !389, file: !313, line: 184, type: !392)
!519 = !DILocation(line: 184, column: 184, scope: !389)
!520 = !DILocalVariable(name: "in_iface", arg: 7, scope: !389, file: !313, line: 184, type: !319)
!521 = !DILocation(line: 184, column: 212, scope: !389)
!522 = !DILocalVariable(name: "out_iface", arg: 8, scope: !389, file: !313, line: 184, type: !319)
!523 = !DILocation(line: 184, column: 234, scope: !389)
!524 = !DILocalVariable(name: "protocol", arg: 9, scope: !389, file: !313, line: 184, type: !143)
!525 = !DILocation(line: 184, column: 254, scope: !389)
!526 = !DILocalVariable(name: "type", arg: 10, scope: !389, file: !313, line: 184, type: !168)
!527 = !DILocation(line: 184, column: 272, scope: !389)
!528 = !DILocalVariable(name: "cmd", arg: 11, scope: !389, file: !313, line: 184, type: !205)
!529 = !DILocation(line: 184, column: 282, scope: !389)
!530 = !DILocalVariable(name: "force", arg: 12, scope: !389, file: !313, line: 184, type: !428)
!531 = !DILocation(line: 184, column: 292, scope: !389)
!532 = !DILocalVariable(name: "size", scope: !389, file: !313, line: 186, type: !227)
!533 = !DILocation(line: 186, column: 9, scope: !389)
!534 = !DILocalVariable(name: "fw", scope: !389, file: !313, line: 187, type: !67)
!535 = !DILocation(line: 187, column: 20, scope: !389)
!536 = !DILocalVariable(name: "target", scope: !389, file: !313, line: 188, type: !537)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64, align: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xt_entry_target", file: !108, line: 33, size: 256, align: 64, elements: !539)
!539 = !{!540, !557}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !538, file: !108, line: 51, baseType: !541, size: 256, align: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !538, file: !108, line: 34, size: 256, align: 64, elements: !542)
!542 = !{!543, !549, !556}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !541, file: !108, line: 41, baseType: !544, size: 256, align: 16)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !541, file: !108, line: 35, size: 256, align: 16, elements: !545)
!545 = !{!546, !547, !548}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "target_size", scope: !544, file: !108, line: 36, baseType: !96, size: 16, align: 16)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !544, file: !108, line: 39, baseType: !129, size: 232, align: 8, offset: 16)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !544, file: !108, line: 40, baseType: !100, size: 8, align: 8, offset: 248)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "kernel", scope: !541, file: !108, line: 47, baseType: !550, size: 128, align: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !541, file: !108, line: 42, size: 128, align: 64, elements: !551)
!551 = !{!552, !553}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "target_size", scope: !550, file: !108, line: 43, baseType: !96, size: 16, align: 16)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !550, file: !108, line: 46, baseType: !554, size: 64, align: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64, align: 64)
!555 = !DICompositeType(tag: DW_TAG_structure_type, name: "xt_target", file: !108, line: 46, flags: DIFlagFwdDecl)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "target_size", scope: !541, file: !108, line: 50, baseType: !96, size: 16, align: 16)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !538, file: !108, line: 53, baseType: !115, align: 8, offset: 256)
!558 = !DILocation(line: 188, column: 26, scope: !389)
!559 = !DILocalVariable(name: "match", scope: !389, file: !313, line: 189, type: !118)
!560 = !DILocation(line: 189, column: 25, scope: !389)
!561 = !DILocalVariable(name: "chain", scope: !389, file: !313, line: 190, type: !562)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "xt_chainlabel", file: !318, line: 4, baseType: !563)
!563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 256, align: 8, elements: !436)
!564 = !DILocation(line: 190, column: 16, scope: !389)
!565 = !DILocalVariable(name: "res", scope: !389, file: !313, line: 191, type: !205)
!566 = !DILocation(line: 191, column: 6, scope: !389)
!567 = !DILocalVariable(name: "sav_errno", scope: !389, file: !313, line: 192, type: !205)
!568 = !DILocation(line: 192, column: 6, scope: !389)
!569 = !DILocation(line: 196, column: 2, scope: !389)
!570 = !DILocation(line: 198, column: 7, scope: !389)
!571 = !DILocation(line: 201, column: 7, scope: !572)
!572 = distinct !DILexicalBlock(scope: !389, file: !313, line: 201, column: 7)
!573 = !DILocation(line: 201, column: 16, scope: !572)
!574 = !DILocation(line: 201, column: 7, scope: !389)
!575 = !DILocation(line: 202, column: 8, scope: !572)
!576 = !DILocation(line: 202, column: 3, scope: !572)
!577 = !DILocation(line: 204, column: 34, scope: !389)
!578 = !DILocation(line: 204, column: 27, scope: !389)
!579 = !DILocation(line: 204, column: 7, scope: !389)
!580 = !DILocation(line: 204, column: 5, scope: !389)
!581 = !DILocation(line: 206, column: 2, scope: !389)
!582 = !DILocation(line: 206, column: 6, scope: !389)
!583 = !DILocation(line: 206, column: 20, scope: !389)
!584 = !DILocation(line: 208, column: 7, scope: !585)
!585 = distinct !DILexicalBlock(scope: !389, file: !313, line: 208, column: 7)
!586 = !DILocation(line: 208, column: 22, scope: !585)
!587 = !DILocation(line: 208, column: 25, scope: !588)
!588 = !DILexicalBlockFile(scope: !585, file: !313, discriminator: 1)
!589 = !DILocation(line: 208, column: 41, scope: !588)
!590 = !DILocation(line: 208, column: 45, scope: !588)
!591 = !DILocation(line: 208, column: 56, scope: !588)
!592 = !DILocation(line: 208, column: 7, scope: !588)
!593 = !DILocation(line: 210, column: 11, scope: !594)
!594 = distinct !DILexicalBlock(scope: !585, file: !313, line: 209, column: 2)
!595 = !DILocation(line: 210, column: 15, scope: !594)
!596 = !DILocation(line: 210, column: 18, scope: !594)
!597 = !DILocation(line: 210, column: 3, scope: !594)
!598 = !DILocation(line: 210, column: 24, scope: !594)
!599 = !DILocation(line: 210, column: 40, scope: !594)
!600 = !DILocation(line: 210, column: 42, scope: !594)
!601 = !DILocation(line: 210, column: 46, scope: !594)
!602 = !DILocation(line: 211, column: 13, scope: !594)
!603 = !DILocation(line: 211, column: 17, scope: !594)
!604 = !DILocation(line: 211, column: 20, scope: !594)
!605 = !DILocation(line: 211, column: 3, scope: !594)
!606 = !DILocation(line: 212, column: 2, scope: !594)
!607 = !DILocation(line: 214, column: 7, scope: !608)
!608 = distinct !DILexicalBlock(scope: !389, file: !313, line: 214, column: 7)
!609 = !DILocation(line: 214, column: 22, scope: !608)
!610 = !DILocation(line: 214, column: 25, scope: !611)
!611 = !DILexicalBlockFile(scope: !608, file: !313, discriminator: 1)
!612 = !DILocation(line: 214, column: 41, scope: !611)
!613 = !DILocation(line: 214, column: 45, scope: !611)
!614 = !DILocation(line: 214, column: 56, scope: !611)
!615 = !DILocation(line: 214, column: 7, scope: !611)
!616 = !DILocation(line: 216, column: 11, scope: !617)
!617 = distinct !DILexicalBlock(scope: !608, file: !313, line: 215, column: 2)
!618 = !DILocation(line: 216, column: 15, scope: !617)
!619 = !DILocation(line: 216, column: 18, scope: !617)
!620 = !DILocation(line: 216, column: 3, scope: !617)
!621 = !DILocation(line: 216, column: 24, scope: !617)
!622 = !DILocation(line: 216, column: 40, scope: !617)
!623 = !DILocation(line: 216, column: 42, scope: !617)
!624 = !DILocation(line: 216, column: 46, scope: !617)
!625 = !DILocation(line: 217, column: 13, scope: !617)
!626 = !DILocation(line: 217, column: 17, scope: !617)
!627 = !DILocation(line: 217, column: 20, scope: !617)
!628 = !DILocation(line: 217, column: 3, scope: !617)
!629 = !DILocation(line: 218, column: 2, scope: !617)
!630 = !DILocation(line: 220, column: 6, scope: !631)
!631 = distinct !DILexicalBlock(scope: !389, file: !313, line: 220, column: 6)
!632 = !DILocation(line: 220, column: 6, scope: !389)
!633 = !DILocation(line: 221, column: 13, scope: !631)
!634 = !DILocation(line: 221, column: 17, scope: !631)
!635 = !DILocation(line: 221, column: 20, scope: !631)
!636 = !DILocation(line: 221, column: 29, scope: !631)
!637 = !DILocation(line: 221, column: 33, scope: !631)
!638 = !DILocation(line: 221, column: 36, scope: !631)
!639 = !DILocation(line: 221, column: 50, scope: !631)
!640 = !DILocation(line: 221, column: 3, scope: !631)
!641 = !DILocation(line: 222, column: 6, scope: !642)
!642 = distinct !DILexicalBlock(scope: !389, file: !313, line: 222, column: 6)
!643 = !DILocation(line: 222, column: 6, scope: !389)
!644 = !DILocation(line: 223, column: 13, scope: !642)
!645 = !DILocation(line: 223, column: 17, scope: !642)
!646 = !DILocation(line: 223, column: 20, scope: !642)
!647 = !DILocation(line: 223, column: 30, scope: !642)
!648 = !DILocation(line: 223, column: 34, scope: !642)
!649 = !DILocation(line: 223, column: 37, scope: !642)
!650 = !DILocation(line: 223, column: 52, scope: !642)
!651 = !DILocation(line: 223, column: 3, scope: !642)
!652 = !DILocation(line: 225, column: 7, scope: !653)
!653 = distinct !DILexicalBlock(scope: !389, file: !313, line: 225, column: 7)
!654 = !DILocation(line: 225, column: 16, scope: !653)
!655 = !DILocation(line: 225, column: 7, scope: !389)
!656 = !DILocation(line: 226, column: 18, scope: !657)
!657 = distinct !DILexicalBlock(scope: !653, file: !313, line: 225, column: 33)
!658 = !DILocation(line: 226, column: 3, scope: !657)
!659 = !DILocation(line: 226, column: 7, scope: !657)
!660 = !DILocation(line: 226, column: 10, scope: !657)
!661 = !DILocation(line: 226, column: 16, scope: !657)
!662 = !DILocation(line: 230, column: 8, scope: !663)
!663 = distinct !DILexicalBlock(scope: !657, file: !313, line: 230, column: 8)
!664 = !DILocation(line: 230, column: 17, scope: !663)
!665 = !DILocation(line: 230, column: 8, scope: !657)
!666 = !DILocation(line: 232, column: 44, scope: !667)
!667 = distinct !DILexicalBlock(scope: !663, file: !313, line: 231, column: 3)
!668 = !DILocation(line: 232, column: 37, scope: !667)
!669 = !DILocation(line: 232, column: 49, scope: !667)
!670 = !DILocation(line: 232, column: 53, scope: !667)
!671 = !DILocation(line: 232, column: 47, scope: !667)
!672 = !DILocation(line: 232, column: 12, scope: !667)
!673 = !DILocation(line: 232, column: 10, scope: !667)
!674 = !DILocation(line: 233, column: 4, scope: !667)
!675 = !DILocation(line: 233, column: 11, scope: !667)
!676 = !DILocation(line: 233, column: 13, scope: !667)
!677 = !DILocation(line: 233, column: 24, scope: !667)
!678 = !DILocation(line: 234, column: 4, scope: !667)
!679 = !DILocation(line: 234, column: 11, scope: !667)
!680 = !DILocation(line: 234, column: 13, scope: !667)
!681 = !DILocation(line: 234, column: 18, scope: !667)
!682 = !DILocation(line: 234, column: 27, scope: !667)
!683 = !DILocation(line: 235, column: 35, scope: !667)
!684 = !DILocation(line: 235, column: 39, scope: !667)
!685 = !DILocation(line: 235, column: 55, scope: !667)
!686 = !DILocation(line: 235, column: 62, scope: !667)
!687 = !DILocation(line: 235, column: 64, scope: !667)
!688 = !DILocation(line: 235, column: 53, scope: !667)
!689 = !DILocation(line: 235, column: 24, scope: !667)
!690 = !DILocation(line: 235, column: 4, scope: !667)
!691 = !DILocation(line: 235, column: 8, scope: !667)
!692 = !DILocation(line: 235, column: 22, scope: !667)
!693 = !DILocation(line: 236, column: 13, scope: !667)
!694 = !DILocation(line: 236, column: 20, scope: !667)
!695 = !DILocation(line: 236, column: 22, scope: !667)
!696 = !DILocation(line: 236, column: 27, scope: !667)
!697 = !DILocation(line: 236, column: 4, scope: !667)
!698 = !DILocalVariable(name: "icmpinfo", scope: !667, file: !313, line: 238, type: !144)
!699 = !DILocation(line: 238, column: 21, scope: !667)
!700 = !DILocation(line: 238, column: 52, scope: !667)
!701 = !DILocation(line: 238, column: 59, scope: !667)
!702 = !DILocation(line: 238, column: 32, scope: !667)
!703 = !DILocation(line: 239, column: 21, scope: !667)
!704 = !DILocation(line: 239, column: 4, scope: !667)
!705 = !DILocation(line: 239, column: 14, scope: !667)
!706 = !DILocation(line: 239, column: 19, scope: !667)
!707 = !DILocation(line: 240, column: 4, scope: !667)
!708 = !DILocation(line: 240, column: 14, scope: !667)
!709 = !DILocation(line: 240, column: 22, scope: !667)
!710 = !DILocation(line: 241, column: 4, scope: !667)
!711 = !DILocation(line: 241, column: 14, scope: !667)
!712 = !DILocation(line: 241, column: 22, scope: !667)
!713 = !DILocation(line: 242, column: 4, scope: !667)
!714 = !DILocation(line: 242, column: 14, scope: !667)
!715 = !DILocation(line: 242, column: 23, scope: !667)
!716 = !DILocation(line: 243, column: 3, scope: !667)
!717 = !DILocation(line: 244, column: 2, scope: !657)
!718 = !DILocation(line: 247, column: 30, scope: !389)
!719 = !DILocation(line: 247, column: 20, scope: !389)
!720 = !DILocation(line: 247, column: 2, scope: !389)
!721 = !DILocation(line: 247, column: 6, scope: !389)
!722 = !DILocation(line: 247, column: 18, scope: !389)
!723 = !DILocation(line: 248, column: 28, scope: !389)
!724 = !DILocation(line: 248, column: 11, scope: !389)
!725 = !DILocation(line: 248, column: 9, scope: !389)
!726 = !DILocation(line: 249, column: 2, scope: !389)
!727 = !DILocation(line: 249, column: 10, scope: !389)
!728 = !DILocation(line: 249, column: 12, scope: !389)
!729 = !DILocation(line: 249, column: 17, scope: !389)
!730 = !DILocation(line: 249, column: 29, scope: !389)
!731 = !DILocation(line: 250, column: 10, scope: !389)
!732 = !DILocation(line: 250, column: 18, scope: !389)
!733 = !DILocation(line: 250, column: 20, scope: !389)
!734 = !DILocation(line: 250, column: 25, scope: !389)
!735 = !DILocation(line: 250, column: 31, scope: !389)
!736 = !DILocation(line: 250, column: 2, scope: !389)
!737 = !DILocation(line: 252, column: 10, scope: !389)
!738 = !DILocation(line: 252, column: 17, scope: !389)
!739 = !DILocation(line: 252, column: 2, scope: !389)
!740 = !DILocation(line: 254, column: 6, scope: !741)
!741 = distinct !DILexicalBlock(scope: !389, file: !313, line: 254, column: 6)
!742 = !DILocation(line: 254, column: 10, scope: !741)
!743 = !DILocation(line: 254, column: 6, scope: !389)
!744 = !DILocation(line: 255, column: 27, scope: !745)
!745 = distinct !DILexicalBlock(scope: !741, file: !313, line: 254, column: 16)
!746 = !DILocation(line: 255, column: 31, scope: !745)
!747 = !DILocation(line: 255, column: 3, scope: !745)
!748 = !DILocalVariable(name: "matchmask", scope: !745, file: !313, line: 255, type: !749)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, align: 8, elements: !750)
!750 = !{!751}
!751 = !DISubrange(count: -1)
!752 = !DIExpression(DW_OP_deref)
!753 = !DILocation(line: 255, column: 17, scope: !745)
!754 = !DILocation(line: 256, column: 27, scope: !745)
!755 = !DILocation(line: 256, column: 31, scope: !745)
!756 = !DILocation(line: 256, column: 3, scope: !745)
!757 = !DILocation(line: 257, column: 27, scope: !745)
!758 = !DILocation(line: 257, column: 34, scope: !745)
!759 = !DILocation(line: 257, column: 49, scope: !745)
!760 = !DILocation(line: 257, column: 9, scope: !745)
!761 = !DILocation(line: 257, column: 7, scope: !745)
!762 = !DILocation(line: 258, column: 2, scope: !741)
!763 = !DILocation(line: 258, column: 2, scope: !745)
!764 = !DILocation(line: 259, column: 11, scope: !765)
!765 = distinct !DILexicalBlock(scope: !741, file: !313, line: 259, column: 11)
!766 = !DILocation(line: 259, column: 19, scope: !765)
!767 = !DILocation(line: 259, column: 11, scope: !741)
!768 = !DILocation(line: 260, column: 28, scope: !765)
!769 = !DILocation(line: 260, column: 35, scope: !765)
!770 = !DILocation(line: 260, column: 39, scope: !765)
!771 = !DILocation(line: 260, column: 9, scope: !765)
!772 = !DILocation(line: 260, column: 7, scope: !765)
!773 = !DILocation(line: 260, column: 3, scope: !765)
!774 = !DILocation(line: 262, column: 28, scope: !765)
!775 = !DILocation(line: 262, column: 35, scope: !765)
!776 = !DILocation(line: 262, column: 39, scope: !765)
!777 = !DILocation(line: 262, column: 48, scope: !765)
!778 = !DILocation(line: 262, column: 9, scope: !765)
!779 = !DILocation(line: 262, column: 7, scope: !765)
!780 = !DILocation(line: 264, column: 15, scope: !389)
!781 = !DILocation(line: 264, column: 14, scope: !389)
!782 = !DILocation(line: 264, column: 12, scope: !389)
!783 = !DILocation(line: 266, column: 8, scope: !389)
!784 = !DILocation(line: 266, column: 3, scope: !389)
!785 = !DILocation(line: 266, column: 18, scope: !389)
!786 = !DILocation(line: 268, column: 6, scope: !787)
!787 = distinct !DILexicalBlock(scope: !389, file: !313, line: 268, column: 6)
!788 = !DILocation(line: 268, column: 10, scope: !787)
!789 = !DILocation(line: 268, column: 15, scope: !787)
!790 = !DILocation(line: 268, column: 20, scope: !791)
!791 = !DILexicalBlockFile(scope: !787, file: !313, discriminator: 1)
!792 = !DILocation(line: 268, column: 26, scope: !791)
!793 = !DILocation(line: 268, column: 29, scope: !794)
!794 = !DILexicalBlockFile(scope: !787, file: !313, discriminator: 2)
!795 = !DILocation(line: 268, column: 39, scope: !794)
!796 = !DILocation(line: 268, column: 6, scope: !794)
!797 = !DILocation(line: 270, column: 80, scope: !798)
!798 = distinct !DILexicalBlock(scope: !787, file: !313, line: 269, column: 2)
!799 = !DILocation(line: 270, column: 87, scope: !798)
!800 = !DILocation(line: 270, column: 107, scope: !798)
!801 = !DILocation(line: 270, column: 92, scope: !798)
!802 = !DILocation(line: 270, column: 3, scope: !803)
!803 = !DILexicalBlockFile(scope: !798, file: !313, discriminator: 1)
!804 = !DILocation(line: 272, column: 10, scope: !798)
!805 = !DILocation(line: 272, column: 3, scope: !798)
!806 = !DILocation(line: 275, column: 2, scope: !389)
!807 = !DILocation(line: 276, column: 1, scope: !389)
!808 = distinct !DISubprogram(name: "set_iface", scope: !313, file: !313, line: 133, type: !809, isLocal: true, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !321)
!809 = !DISubroutineType(types: !810)
!810 = !{null, !142, !811, !319}
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, align: 64)
!812 = !DILocalVariable(name: "vianame", arg: 1, scope: !808, file: !313, line: 133, type: !142)
!813 = !DILocation(line: 133, column: 17, scope: !808)
!814 = !DILocalVariable(name: "mask", arg: 2, scope: !808, file: !313, line: 133, type: !811)
!815 = !DILocation(line: 133, column: 41, scope: !808)
!816 = !DILocalVariable(name: "iface", arg: 3, scope: !808, file: !313, line: 133, type: !319)
!817 = !DILocation(line: 133, column: 59, scope: !808)
!818 = !DILocalVariable(name: "vialen", scope: !808, file: !313, line: 135, type: !227)
!819 = !DILocation(line: 135, column: 9, scope: !808)
!820 = !DILocation(line: 135, column: 25, scope: !808)
!821 = !DILocation(line: 135, column: 18, scope: !808)
!822 = !DILocation(line: 137, column: 9, scope: !808)
!823 = !DILocation(line: 137, column: 2, scope: !808)
!824 = !DILocation(line: 138, column: 9, scope: !808)
!825 = !DILocation(line: 138, column: 2, scope: !808)
!826 = !DILocation(line: 140, column: 9, scope: !808)
!827 = !DILocation(line: 140, column: 18, scope: !808)
!828 = !DILocation(line: 140, column: 2, scope: !808)
!829 = !DILocation(line: 141, column: 7, scope: !830)
!830 = distinct !DILexicalBlock(scope: !808, file: !313, line: 141, column: 6)
!831 = !DILocation(line: 141, column: 6, scope: !808)
!832 = !DILocation(line: 142, column: 3, scope: !830)
!833 = !DILocation(line: 144, column: 9, scope: !808)
!834 = !DILocation(line: 144, column: 21, scope: !808)
!835 = !DILocation(line: 144, column: 28, scope: !808)
!836 = !DILocation(line: 144, column: 2, scope: !808)
!837 = !DILocation(line: 145, column: 1, scope: !808)
!838 = !DILocation(line: 145, column: 1, scope: !839)
!839 = !DILexicalBlockFile(scope: !808, file: !313, discriminator: 1)
!840 = distinct !DISubprogram(name: "ipt_get_target", scope: !69, file: !69, line: 219, type: !841, isLocal: true, isDefinition: true, scopeLine: 220, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !321)
!841 = !DISubroutineType(types: !842)
!842 = !{!537, !67}
!843 = !DILocalVariable(name: "e", arg: 1, scope: !840, file: !69, line: 219, type: !67)
!844 = !DILocation(line: 219, column: 34, scope: !840)
!845 = !DILocation(line: 221, column: 17, scope: !840)
!846 = !DILocation(line: 221, column: 9, scope: !840)
!847 = !DILocation(line: 221, column: 21, scope: !840)
!848 = !DILocation(line: 221, column: 24, scope: !840)
!849 = !DILocation(line: 221, column: 19, scope: !840)
!850 = !DILocation(line: 221, column: 2, scope: !840)
!851 = distinct !DISubprogram(name: "ip6tables_open", scope: !313, file: !313, line: 279, type: !314, isLocal: false, isDefinition: true, scopeLine: 280, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !321)
!852 = !DILocalVariable(name: "tablename", arg: 1, scope: !851, file: !313, line: 279, type: !319)
!853 = !DILocation(line: 279, column: 50, scope: !851)
!854 = !DILocalVariable(name: "h", scope: !851, file: !313, line: 281, type: !316)
!855 = !DILocation(line: 281, column: 22, scope: !851)
!856 = !DILocation(line: 283, column: 27, scope: !857)
!857 = distinct !DILexicalBlock(scope: !851, file: !313, line: 283, column: 7)
!858 = !DILocation(line: 283, column: 14, scope: !857)
!859 = !DILocation(line: 283, column: 12, scope: !857)
!860 = !DILocation(line: 283, column: 7, scope: !851)
!861 = !DILocation(line: 284, column: 3, scope: !857)
!862 = !DILocation(line: 286, column: 9, scope: !851)
!863 = !DILocation(line: 286, column: 2, scope: !851)
!864 = !DILocation(line: 287, column: 1, scope: !851)
!865 = distinct !DISubprogram(name: "ip6tables_close", scope: !313, file: !313, line: 289, type: !337, isLocal: false, isDefinition: true, scopeLine: 290, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !321)
!866 = !DILocalVariable(name: "handle", arg: 1, scope: !865, file: !313, line: 289, type: !316)
!867 = !DILocation(line: 289, column: 43, scope: !865)
!868 = !DILocalVariable(name: "updated", arg: 2, scope: !865, file: !313, line: 289, type: !205)
!869 = !DILocation(line: 289, column: 55, scope: !865)
!870 = !DILocalVariable(name: "res", scope: !865, file: !313, line: 291, type: !205)
!871 = !DILocation(line: 291, column: 6, scope: !865)
!872 = !DILocalVariable(name: "sav_errno", scope: !865, file: !313, line: 292, type: !205)
!873 = !DILocation(line: 292, column: 6, scope: !865)
!874 = !DILocation(line: 294, column: 6, scope: !875)
!875 = distinct !DILexicalBlock(scope: !865, file: !313, line: 294, column: 6)
!876 = !DILocation(line: 294, column: 6, scope: !865)
!877 = !DILocation(line: 295, column: 31, scope: !878)
!878 = distinct !DILexicalBlock(scope: !879, file: !313, line: 295, column: 8)
!879 = distinct !DILexicalBlock(scope: !875, file: !313, line: 294, column: 15)
!880 = !DILocation(line: 295, column: 16, scope: !878)
!881 = !DILocation(line: 295, column: 14, scope: !878)
!882 = !DILocation(line: 295, column: 42, scope: !878)
!883 = !DILocation(line: 295, column: 8, scope: !879)
!884 = !DILocation(line: 297, column: 17, scope: !885)
!885 = distinct !DILexicalBlock(scope: !878, file: !313, line: 296, column: 3)
!886 = !DILocation(line: 297, column: 16, scope: !885)
!887 = !DILocation(line: 297, column: 14, scope: !885)
!888 = !DILocation(line: 298, column: 56, scope: !885)
!889 = !DILocation(line: 298, column: 77, scope: !885)
!890 = !DILocation(line: 298, column: 61, scope: !885)
!891 = !DILocation(line: 298, column: 4, scope: !892)
!892 = !DILexicalBlockFile(scope: !885, file: !313, discriminator: 1)
!893 = !DILocation(line: 299, column: 3, scope: !885)
!894 = !DILocation(line: 300, column: 2, scope: !879)
!895 = !DILocation(line: 302, column: 15, scope: !865)
!896 = !DILocation(line: 302, column: 2, scope: !865)
!897 = !DILocation(line: 304, column: 7, scope: !898)
!898 = distinct !DILexicalBlock(scope: !865, file: !313, line: 304, column: 7)
!899 = !DILocation(line: 304, column: 11, scope: !898)
!900 = !DILocation(line: 304, column: 7, scope: !865)
!901 = !DILocation(line: 305, column: 3, scope: !898)
!902 = !DILocation(line: 307, column: 12, scope: !898)
!903 = !DILocation(line: 307, column: 3, scope: !898)
!904 = !DILocation(line: 308, column: 1, scope: !865)
!905 = distinct !DISubprogram(name: "ip6tables_is_chain", scope: !313, file: !313, line: 310, type: !379, isLocal: false, isDefinition: true, scopeLine: 311, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !321)
!906 = !DILocalVariable(name: "handle", arg: 1, scope: !905, file: !313, line: 310, type: !316)
!907 = !DILocation(line: 310, column: 44, scope: !905)
!908 = !DILocalVariable(name: "chain_name", arg: 2, scope: !905, file: !313, line: 310, type: !319)
!909 = !DILocation(line: 310, column: 64, scope: !905)
!910 = !DILocation(line: 312, column: 24, scope: !905)
!911 = !DILocation(line: 312, column: 36, scope: !905)
!912 = !DILocation(line: 312, column: 9, scope: !905)
!913 = !DILocation(line: 312, column: 2, scope: !905)
!914 = distinct !DISubprogram(name: "ip6tables_process_entry", scope: !313, file: !313, line: 315, type: !390, isLocal: false, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !321)
!915 = !DILocalVariable(name: "handle", arg: 1, scope: !914, file: !313, line: 315, type: !316)
!916 = !DILocation(line: 315, column: 50, scope: !914)
!917 = !DILocalVariable(name: "chain_name", arg: 2, scope: !914, file: !313, line: 315, type: !319)
!918 = !DILocation(line: 315, column: 70, scope: !914)
!919 = !DILocalVariable(name: "rulenum", arg: 3, scope: !914, file: !313, line: 315, type: !81)
!920 = !DILocation(line: 315, column: 95, scope: !914)
!921 = !DILocalVariable(name: "target_name", arg: 4, scope: !914, file: !313, line: 315, type: !319)
!922 = !DILocation(line: 315, column: 116, scope: !914)
!923 = !DILocalVariable(name: "src_ip_address", arg: 5, scope: !914, file: !313, line: 315, type: !392)
!924 = !DILocation(line: 315, column: 149, scope: !914)
!925 = !DILocalVariable(name: "dst_ip_address", arg: 6, scope: !914, file: !313, line: 315, type: !392)
!926 = !DILocation(line: 315, column: 185, scope: !914)
!927 = !DILocalVariable(name: "in_iface", arg: 7, scope: !914, file: !313, line: 315, type: !319)
!928 = !DILocation(line: 315, column: 213, scope: !914)
!929 = !DILocalVariable(name: "out_iface", arg: 8, scope: !914, file: !313, line: 315, type: !319)
!930 = !DILocation(line: 315, column: 235, scope: !914)
!931 = !DILocalVariable(name: "protocol", arg: 9, scope: !914, file: !313, line: 315, type: !143)
!932 = !DILocation(line: 315, column: 255, scope: !914)
!933 = !DILocalVariable(name: "type", arg: 10, scope: !914, file: !313, line: 315, type: !168)
!934 = !DILocation(line: 315, column: 273, scope: !914)
!935 = !DILocalVariable(name: "cmd", arg: 11, scope: !914, file: !313, line: 315, type: !205)
!936 = !DILocation(line: 315, column: 283, scope: !914)
!937 = !DILocalVariable(name: "force", arg: 12, scope: !914, file: !313, line: 315, type: !428)
!938 = !DILocation(line: 315, column: 293, scope: !914)
!939 = !DILocalVariable(name: "size", scope: !914, file: !313, line: 317, type: !227)
!940 = !DILocation(line: 317, column: 9, scope: !914)
!941 = !DILocalVariable(name: "fw", scope: !914, file: !313, line: 318, type: !153)
!942 = !DILocation(line: 318, column: 21, scope: !914)
!943 = !DILocalVariable(name: "target", scope: !914, file: !313, line: 319, type: !537)
!944 = !DILocation(line: 319, column: 26, scope: !914)
!945 = !DILocalVariable(name: "match", scope: !914, file: !313, line: 320, type: !118)
!946 = !DILocation(line: 320, column: 25, scope: !914)
!947 = !DILocalVariable(name: "chain", scope: !914, file: !313, line: 321, type: !562)
!948 = !DILocation(line: 321, column: 17, scope: !914)
!949 = !DILocalVariable(name: "res", scope: !914, file: !313, line: 322, type: !205)
!950 = !DILocation(line: 322, column: 6, scope: !914)
!951 = !DILocalVariable(name: "sav_errno", scope: !914, file: !313, line: 323, type: !205)
!952 = !DILocation(line: 323, column: 6, scope: !914)
!953 = !DILocation(line: 327, column: 2, scope: !914)
!954 = !DILocation(line: 329, column: 7, scope: !914)
!955 = !DILocation(line: 332, column: 7, scope: !956)
!956 = distinct !DILexicalBlock(scope: !914, file: !313, line: 332, column: 7)
!957 = !DILocation(line: 332, column: 16, scope: !956)
!958 = !DILocation(line: 332, column: 7, scope: !914)
!959 = !DILocation(line: 333, column: 8, scope: !956)
!960 = !DILocation(line: 333, column: 3, scope: !956)
!961 = !DILocation(line: 335, column: 35, scope: !914)
!962 = !DILocation(line: 335, column: 28, scope: !914)
!963 = !DILocation(line: 335, column: 7, scope: !914)
!964 = !DILocation(line: 335, column: 5, scope: !914)
!965 = !DILocation(line: 337, column: 2, scope: !914)
!966 = !DILocation(line: 337, column: 6, scope: !914)
!967 = !DILocation(line: 337, column: 20, scope: !914)
!968 = !DILocation(line: 339, column: 7, scope: !969)
!969 = distinct !DILexicalBlock(scope: !914, file: !313, line: 339, column: 7)
!970 = !DILocation(line: 339, column: 22, scope: !969)
!971 = !DILocation(line: 339, column: 25, scope: !972)
!972 = !DILexicalBlockFile(scope: !969, file: !313, discriminator: 1)
!973 = !DILocation(line: 339, column: 41, scope: !972)
!974 = !DILocation(line: 339, column: 45, scope: !972)
!975 = !DILocation(line: 339, column: 56, scope: !972)
!976 = !DILocation(line: 339, column: 7, scope: !972)
!977 = !DILocation(line: 340, column: 11, scope: !978)
!978 = distinct !DILexicalBlock(scope: !969, file: !313, line: 339, column: 70)
!979 = !DILocation(line: 340, column: 15, scope: !978)
!980 = !DILocation(line: 340, column: 20, scope: !978)
!981 = !DILocation(line: 340, column: 3, scope: !978)
!982 = !DILocation(line: 340, column: 26, scope: !978)
!983 = !DILocation(line: 340, column: 42, scope: !978)
!984 = !DILocation(line: 340, column: 44, scope: !978)
!985 = !DILocation(line: 341, column: 13, scope: !978)
!986 = !DILocation(line: 341, column: 17, scope: !978)
!987 = !DILocation(line: 341, column: 22, scope: !978)
!988 = !DILocation(line: 341, column: 3, scope: !978)
!989 = !DILocation(line: 342, column: 2, scope: !978)
!990 = !DILocation(line: 344, column: 7, scope: !991)
!991 = distinct !DILexicalBlock(scope: !914, file: !313, line: 344, column: 7)
!992 = !DILocation(line: 344, column: 22, scope: !991)
!993 = !DILocation(line: 344, column: 25, scope: !994)
!994 = !DILexicalBlockFile(scope: !991, file: !313, discriminator: 1)
!995 = !DILocation(line: 344, column: 41, scope: !994)
!996 = !DILocation(line: 344, column: 45, scope: !994)
!997 = !DILocation(line: 344, column: 56, scope: !994)
!998 = !DILocation(line: 344, column: 7, scope: !994)
!999 = !DILocation(line: 345, column: 11, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !991, file: !313, line: 344, column: 70)
!1001 = !DILocation(line: 345, column: 15, scope: !1000)
!1002 = !DILocation(line: 345, column: 20, scope: !1000)
!1003 = !DILocation(line: 345, column: 3, scope: !1000)
!1004 = !DILocation(line: 345, column: 26, scope: !1000)
!1005 = !DILocation(line: 345, column: 42, scope: !1000)
!1006 = !DILocation(line: 345, column: 44, scope: !1000)
!1007 = !DILocation(line: 346, column: 13, scope: !1000)
!1008 = !DILocation(line: 346, column: 17, scope: !1000)
!1009 = !DILocation(line: 346, column: 22, scope: !1000)
!1010 = !DILocation(line: 346, column: 3, scope: !1000)
!1011 = !DILocation(line: 347, column: 2, scope: !1000)
!1012 = !DILocation(line: 349, column: 6, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !914, file: !313, line: 349, column: 6)
!1014 = !DILocation(line: 349, column: 6, scope: !914)
!1015 = !DILocation(line: 350, column: 13, scope: !1013)
!1016 = !DILocation(line: 350, column: 17, scope: !1013)
!1017 = !DILocation(line: 350, column: 22, scope: !1013)
!1018 = !DILocation(line: 350, column: 31, scope: !1013)
!1019 = !DILocation(line: 350, column: 35, scope: !1013)
!1020 = !DILocation(line: 350, column: 40, scope: !1013)
!1021 = !DILocation(line: 350, column: 54, scope: !1013)
!1022 = !DILocation(line: 350, column: 3, scope: !1013)
!1023 = !DILocation(line: 351, column: 6, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !914, file: !313, line: 351, column: 6)
!1025 = !DILocation(line: 351, column: 6, scope: !914)
!1026 = !DILocation(line: 352, column: 13, scope: !1024)
!1027 = !DILocation(line: 352, column: 17, scope: !1024)
!1028 = !DILocation(line: 352, column: 22, scope: !1024)
!1029 = !DILocation(line: 352, column: 32, scope: !1024)
!1030 = !DILocation(line: 352, column: 36, scope: !1024)
!1031 = !DILocation(line: 352, column: 41, scope: !1024)
!1032 = !DILocation(line: 352, column: 56, scope: !1024)
!1033 = !DILocation(line: 352, column: 3, scope: !1024)
!1034 = !DILocation(line: 354, column: 7, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !914, file: !313, line: 354, column: 7)
!1036 = !DILocation(line: 354, column: 16, scope: !1035)
!1037 = !DILocation(line: 354, column: 7, scope: !914)
!1038 = !DILocation(line: 355, column: 20, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1035, file: !313, line: 354, column: 33)
!1040 = !DILocation(line: 355, column: 3, scope: !1039)
!1041 = !DILocation(line: 355, column: 7, scope: !1039)
!1042 = !DILocation(line: 355, column: 12, scope: !1039)
!1043 = !DILocation(line: 355, column: 18, scope: !1039)
!1044 = !DILocation(line: 357, column: 3, scope: !1039)
!1045 = !DILocation(line: 357, column: 7, scope: !1039)
!1046 = !DILocation(line: 357, column: 12, scope: !1039)
!1047 = !DILocation(line: 357, column: 18, scope: !1039)
!1048 = !DILocation(line: 359, column: 8, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1039, file: !313, line: 359, column: 8)
!1050 = !DILocation(line: 359, column: 17, scope: !1049)
!1051 = !DILocation(line: 359, column: 8, scope: !1039)
!1052 = !DILocation(line: 361, column: 44, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1049, file: !313, line: 360, column: 3)
!1054 = !DILocation(line: 361, column: 37, scope: !1053)
!1055 = !DILocation(line: 361, column: 49, scope: !1053)
!1056 = !DILocation(line: 361, column: 53, scope: !1053)
!1057 = !DILocation(line: 361, column: 47, scope: !1053)
!1058 = !DILocation(line: 361, column: 12, scope: !1053)
!1059 = !DILocation(line: 361, column: 10, scope: !1053)
!1060 = !DILocation(line: 362, column: 4, scope: !1053)
!1061 = !DILocation(line: 362, column: 11, scope: !1053)
!1062 = !DILocation(line: 362, column: 13, scope: !1053)
!1063 = !DILocation(line: 362, column: 24, scope: !1053)
!1064 = !DILocation(line: 363, column: 4, scope: !1053)
!1065 = !DILocation(line: 363, column: 11, scope: !1053)
!1066 = !DILocation(line: 363, column: 13, scope: !1053)
!1067 = !DILocation(line: 363, column: 18, scope: !1053)
!1068 = !DILocation(line: 363, column: 27, scope: !1053)
!1069 = !DILocation(line: 364, column: 35, scope: !1053)
!1070 = !DILocation(line: 364, column: 39, scope: !1053)
!1071 = !DILocation(line: 364, column: 55, scope: !1053)
!1072 = !DILocation(line: 364, column: 62, scope: !1053)
!1073 = !DILocation(line: 364, column: 64, scope: !1053)
!1074 = !DILocation(line: 364, column: 53, scope: !1053)
!1075 = !DILocation(line: 364, column: 24, scope: !1053)
!1076 = !DILocation(line: 364, column: 4, scope: !1053)
!1077 = !DILocation(line: 364, column: 8, scope: !1053)
!1078 = !DILocation(line: 364, column: 22, scope: !1053)
!1079 = !DILocation(line: 365, column: 13, scope: !1053)
!1080 = !DILocation(line: 365, column: 20, scope: !1053)
!1081 = !DILocation(line: 365, column: 22, scope: !1053)
!1082 = !DILocation(line: 365, column: 27, scope: !1053)
!1083 = !DILocation(line: 365, column: 4, scope: !1053)
!1084 = !DILocalVariable(name: "icmpinfo", scope: !1053, file: !313, line: 367, type: !194)
!1085 = !DILocation(line: 367, column: 22, scope: !1053)
!1086 = !DILocation(line: 367, column: 54, scope: !1053)
!1087 = !DILocation(line: 367, column: 61, scope: !1053)
!1088 = !DILocation(line: 367, column: 33, scope: !1053)
!1089 = !DILocation(line: 368, column: 21, scope: !1053)
!1090 = !DILocation(line: 368, column: 4, scope: !1053)
!1091 = !DILocation(line: 368, column: 14, scope: !1053)
!1092 = !DILocation(line: 368, column: 19, scope: !1053)
!1093 = !DILocation(line: 369, column: 4, scope: !1053)
!1094 = !DILocation(line: 369, column: 14, scope: !1053)
!1095 = !DILocation(line: 369, column: 22, scope: !1053)
!1096 = !DILocation(line: 370, column: 4, scope: !1053)
!1097 = !DILocation(line: 370, column: 14, scope: !1053)
!1098 = !DILocation(line: 370, column: 22, scope: !1053)
!1099 = !DILocation(line: 371, column: 4, scope: !1053)
!1100 = !DILocation(line: 371, column: 14, scope: !1053)
!1101 = !DILocation(line: 371, column: 23, scope: !1053)
!1102 = !DILocation(line: 372, column: 3, scope: !1053)
!1103 = !DILocation(line: 373, column: 2, scope: !1039)
!1104 = !DILocation(line: 376, column: 30, scope: !914)
!1105 = !DILocation(line: 376, column: 20, scope: !914)
!1106 = !DILocation(line: 376, column: 2, scope: !914)
!1107 = !DILocation(line: 376, column: 6, scope: !914)
!1108 = !DILocation(line: 376, column: 18, scope: !914)
!1109 = !DILocation(line: 377, column: 29, scope: !914)
!1110 = !DILocation(line: 377, column: 11, scope: !914)
!1111 = !DILocation(line: 377, column: 9, scope: !914)
!1112 = !DILocation(line: 378, column: 2, scope: !914)
!1113 = !DILocation(line: 378, column: 10, scope: !914)
!1114 = !DILocation(line: 378, column: 12, scope: !914)
!1115 = !DILocation(line: 378, column: 17, scope: !914)
!1116 = !DILocation(line: 378, column: 29, scope: !914)
!1117 = !DILocation(line: 379, column: 10, scope: !914)
!1118 = !DILocation(line: 379, column: 18, scope: !914)
!1119 = !DILocation(line: 379, column: 20, scope: !914)
!1120 = !DILocation(line: 379, column: 25, scope: !914)
!1121 = !DILocation(line: 379, column: 31, scope: !914)
!1122 = !DILocation(line: 379, column: 2, scope: !914)
!1123 = !DILocation(line: 381, column: 10, scope: !914)
!1124 = !DILocation(line: 381, column: 17, scope: !914)
!1125 = !DILocation(line: 381, column: 2, scope: !914)
!1126 = !DILocation(line: 384, column: 6, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !914, file: !313, line: 384, column: 6)
!1128 = !DILocation(line: 384, column: 10, scope: !1127)
!1129 = !DILocation(line: 384, column: 6, scope: !914)
!1130 = !DILocation(line: 385, column: 27, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1127, file: !313, line: 384, column: 16)
!1132 = !DILocation(line: 385, column: 31, scope: !1131)
!1133 = !DILocation(line: 385, column: 3, scope: !1131)
!1134 = !DILocalVariable(name: "matchmask", scope: !1131, file: !313, line: 385, type: !749)
!1135 = !DILocation(line: 385, column: 17, scope: !1131)
!1136 = !DILocation(line: 386, column: 27, scope: !1131)
!1137 = !DILocation(line: 386, column: 31, scope: !1131)
!1138 = !DILocation(line: 386, column: 3, scope: !1131)
!1139 = !DILocation(line: 387, column: 30, scope: !1131)
!1140 = !DILocation(line: 387, column: 37, scope: !1131)
!1141 = !DILocation(line: 387, column: 52, scope: !1131)
!1142 = !DILocation(line: 387, column: 9, scope: !1131)
!1143 = !DILocation(line: 387, column: 7, scope: !1131)
!1144 = !DILocation(line: 388, column: 2, scope: !1127)
!1145 = !DILocation(line: 388, column: 2, scope: !1131)
!1146 = !DILocation(line: 389, column: 11, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1127, file: !313, line: 389, column: 11)
!1148 = !DILocation(line: 389, column: 19, scope: !1147)
!1149 = !DILocation(line: 389, column: 11, scope: !1127)
!1150 = !DILocation(line: 390, column: 29, scope: !1147)
!1151 = !DILocation(line: 390, column: 36, scope: !1147)
!1152 = !DILocation(line: 390, column: 40, scope: !1147)
!1153 = !DILocation(line: 390, column: 9, scope: !1147)
!1154 = !DILocation(line: 390, column: 7, scope: !1147)
!1155 = !DILocation(line: 390, column: 3, scope: !1147)
!1156 = !DILocation(line: 392, column: 29, scope: !1147)
!1157 = !DILocation(line: 392, column: 36, scope: !1147)
!1158 = !DILocation(line: 392, column: 40, scope: !1147)
!1159 = !DILocation(line: 392, column: 49, scope: !1147)
!1160 = !DILocation(line: 392, column: 9, scope: !1147)
!1161 = !DILocation(line: 392, column: 7, scope: !1147)
!1162 = !DILocation(line: 394, column: 15, scope: !914)
!1163 = !DILocation(line: 394, column: 14, scope: !914)
!1164 = !DILocation(line: 394, column: 12, scope: !914)
!1165 = !DILocation(line: 396, column: 8, scope: !914)
!1166 = !DILocation(line: 396, column: 3, scope: !914)
!1167 = !DILocation(line: 396, column: 18, scope: !914)
!1168 = !DILocation(line: 398, column: 6, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !914, file: !313, line: 398, column: 6)
!1170 = !DILocation(line: 398, column: 10, scope: !1169)
!1171 = !DILocation(line: 398, column: 15, scope: !1169)
!1172 = !DILocation(line: 398, column: 20, scope: !1173)
!1173 = !DILexicalBlockFile(scope: !1169, file: !313, discriminator: 1)
!1174 = !DILocation(line: 398, column: 26, scope: !1173)
!1175 = !DILocation(line: 398, column: 29, scope: !1176)
!1176 = !DILexicalBlockFile(scope: !1169, file: !313, discriminator: 2)
!1177 = !DILocation(line: 398, column: 39, scope: !1176)
!1178 = !DILocation(line: 398, column: 6, scope: !1176)
!1179 = !DILocation(line: 400, column: 80, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1169, file: !313, line: 399, column: 2)
!1181 = !DILocation(line: 400, column: 87, scope: !1180)
!1182 = !DILocation(line: 400, column: 108, scope: !1180)
!1183 = !DILocation(line: 400, column: 92, scope: !1180)
!1184 = !DILocation(line: 400, column: 3, scope: !1185)
!1185 = !DILexicalBlockFile(scope: !1180, file: !313, discriminator: 1)
!1186 = !DILocation(line: 402, column: 10, scope: !1180)
!1187 = !DILocation(line: 402, column: 3, scope: !1180)
!1188 = !DILocation(line: 405, column: 2, scope: !914)
!1189 = !DILocation(line: 406, column: 1, scope: !914)
!1190 = distinct !DISubprogram(name: "ip6t_get_target", scope: !155, file: !155, line: 259, type: !1191, isLocal: true, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !321)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!537, !153}
!1193 = !DILocalVariable(name: "e", arg: 1, scope: !1190, file: !155, line: 259, type: !153)
!1194 = !DILocation(line: 259, column: 36, scope: !1190)
!1195 = !DILocation(line: 261, column: 17, scope: !1190)
!1196 = !DILocation(line: 261, column: 9, scope: !1190)
!1197 = !DILocation(line: 261, column: 21, scope: !1190)
!1198 = !DILocation(line: 261, column: 24, scope: !1190)
!1199 = !DILocation(line: 261, column: 19, scope: !1190)
!1200 = !DILocation(line: 261, column: 2, scope: !1190)
!1201 = distinct !DISubprogram(name: "load_xtables_module", scope: !313, file: !313, line: 444, type: !1202, isLocal: false, isDefinition: true, scopeLine: 449, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !321)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!428, !319, !319}
!1204 = !DILocalVariable(name: "module", arg: 1, scope: !1201, file: !313, line: 444, type: !319)
!1205 = !DILocation(line: 444, column: 33, scope: !1201)
!1206 = !DILocalVariable(name: "function", arg: 2, scope: !1201, file: !313, line: 448, type: !319)
!1207 = !DILocation(line: 448, column: 21, scope: !1201)
!1208 = !DILocalVariable(name: "act", scope: !1201, file: !313, line: 450, type: !1209)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1210, line: 24, size: 1216, align: 64, elements: !1211)
!1210 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigaction.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!1211 = !{!1212, !1291, !1298, !1299}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "__sigaction_handler", scope: !1209, file: !1210, line: 35, baseType: !1213, size: 64, align: 64)
!1213 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1209, file: !1210, line: 28, size: 64, align: 64, elements: !1214)
!1214 = !{!1215, !1216}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1213, file: !1210, line: 31, baseType: !200, size: 64, align: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !1213, file: !1210, line: 33, baseType: !1217, size: 64, align: 64)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64, align: 64)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{null, !205, !1220, !226}
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64, align: 64)
!1221 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !1222, line: 133, baseType: !1223)
!1222 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/siginfo.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1222, line: 62, size: 1024, align: 64, elements: !1224)
!1224 = !{!1225, !1226, !1227, !1228}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1223, file: !1222, line: 64, baseType: !205, size: 32, align: 32)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1223, file: !1222, line: 65, baseType: !205, size: 32, align: 32, offset: 32)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1223, file: !1222, line: 67, baseType: !205, size: 32, align: 32, offset: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1223, file: !1222, line: 132, baseType: !1229, size: 896, align: 64, offset: 128)
!1229 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1223, file: !1222, line: 69, size: 896, align: 64, elements: !1230)
!1230 = !{!1231, !1235, !1242, !1253, !1259, !1269, !1280, !1285}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !1229, file: !1222, line: 71, baseType: !1232, size: 896, align: 32)
!1232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 896, align: 32, elements: !1233)
!1233 = !{!1234}
!1234 = !DISubrange(count: 28)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1229, file: !1222, line: 78, baseType: !1236, size: 64, align: 32)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1229, file: !1222, line: 74, size: 64, align: 32, elements: !1237)
!1237 = !{!1238, !1240}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !1236, file: !1222, line: 76, baseType: !1239, size: 32, align: 32)
!1239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !285, line: 133, baseType: !205)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !1236, file: !1222, line: 77, baseType: !1241, size: 32, align: 32, offset: 32)
!1241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !285, line: 125, baseType: !81)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1229, file: !1222, line: 86, baseType: !1243, size: 128, align: 64)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1229, file: !1222, line: 81, size: 128, align: 64, elements: !1244)
!1244 = !{!1245, !1246, !1247}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "si_tid", scope: !1243, file: !1222, line: 83, baseType: !205, size: 32, align: 32)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "si_overrun", scope: !1243, file: !1222, line: 84, baseType: !205, size: 32, align: 32, offset: 32)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !1243, file: !1222, line: 85, baseType: !1248, size: 64, align: 64, offset: 64)
!1248 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1222, line: 36, baseType: !1249)
!1249 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1222, line: 32, size: 64, align: 64, elements: !1250)
!1250 = !{!1251, !1252}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1249, file: !1222, line: 34, baseType: !205, size: 32, align: 32)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1249, file: !1222, line: 35, baseType: !226, size: 64, align: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1229, file: !1222, line: 94, baseType: !1254, size: 128, align: 64)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1229, file: !1222, line: 89, size: 128, align: 64, elements: !1255)
!1255 = !{!1256, !1257, !1258}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !1254, file: !1222, line: 91, baseType: !1239, size: 32, align: 32)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !1254, file: !1222, line: 92, baseType: !1241, size: 32, align: 32, offset: 32)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !1254, file: !1222, line: 93, baseType: !1248, size: 64, align: 64, offset: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1229, file: !1222, line: 104, baseType: !1260, size: 256, align: 64)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1229, file: !1222, line: 97, size: 256, align: 64, elements: !1261)
!1261 = !{!1262, !1263, !1264, !1265, !1268}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !1260, file: !1222, line: 99, baseType: !1239, size: 32, align: 32)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !1260, file: !1222, line: 100, baseType: !1241, size: 32, align: 32, offset: 32)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !1260, file: !1222, line: 101, baseType: !205, size: 32, align: 32, offset: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "si_utime", scope: !1260, file: !1222, line: 102, baseType: !1266, size: 64, align: 64, offset: 128)
!1266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigchld_clock_t", file: !1222, line: 58, baseType: !1267)
!1267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !285, line: 135, baseType: !286)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "si_stime", scope: !1260, file: !1222, line: 103, baseType: !1266, size: 64, align: 64, offset: 192)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1229, file: !1222, line: 116, baseType: !1270, size: 256, align: 64)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1229, file: !1222, line: 107, size: 256, align: 64, elements: !1271)
!1271 = !{!1272, !1273, !1275}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !1270, file: !1222, line: 109, baseType: !226, size: 64, align: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_lsb", scope: !1270, file: !1222, line: 110, baseType: !1274, size: 16, align: 16, offset: 64)
!1274 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_bnd", scope: !1270, file: !1222, line: 115, baseType: !1276, size: 128, align: 64, offset: 128)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1270, file: !1222, line: 111, size: 128, align: 64, elements: !1277)
!1277 = !{!1278, !1279}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1276, file: !1222, line: 113, baseType: !226, size: 64, align: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1276, file: !1222, line: 114, baseType: !226, size: 64, align: 64, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1229, file: !1222, line: 123, baseType: !1281, size: 128, align: 64)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1229, file: !1222, line: 119, size: 128, align: 64, elements: !1282)
!1282 = !{!1283, !1284}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !1281, file: !1222, line: 121, baseType: !286, size: 64, align: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "si_fd", scope: !1281, file: !1222, line: 122, baseType: !205, size: 32, align: 32, offset: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1229, file: !1222, line: 131, baseType: !1286, size: 128, align: 64)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1229, file: !1222, line: 126, size: 128, align: 64, elements: !1287)
!1287 = !{!1288, !1289, !1290}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1286, file: !1222, line: 128, baseType: !226, size: 64, align: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1286, file: !1222, line: 129, baseType: !205, size: 32, align: 32, offset: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1286, file: !1222, line: 130, baseType: !81, size: 32, align: 32, offset: 96)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1209, file: !1210, line: 43, baseType: !1292, size: 1024, align: 64, offset: 64)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !1293, line: 30, baseType: !1294)
!1293 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigset.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1293, line: 27, size: 1024, align: 64, elements: !1295)
!1295 = !{!1296}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !1294, file: !1293, line: 29, baseType: !1297, size: 1024, align: 64)
!1297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 1024, align: 64, elements: !88)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1209, file: !1210, line: 46, baseType: !205, size: 32, align: 32, offset: 1088)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1209, file: !1210, line: 49, baseType: !1300, size: 64, align: 64, offset: 1152)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64, align: 64)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{null}
!1303 = !DILocation(line: 450, column: 19, scope: !1201)
!1304 = !DILocalVariable(name: "old_act", scope: !1201, file: !313, line: 450, type: !1209)
!1305 = !DILocation(line: 450, column: 24, scope: !1201)
!1306 = !DILocalVariable(name: "res", scope: !1201, file: !313, line: 451, type: !428)
!1307 = !DILocation(line: 451, column: 6, scope: !1201)
!1308 = !DILocation(line: 461, column: 5, scope: !1201)
!1309 = !DILocation(line: 461, column: 25, scope: !1201)
!1310 = !DILocation(line: 461, column: 16, scope: !1201)
!1311 = !DILocation(line: 462, column: 19, scope: !1201)
!1312 = !DILocation(line: 462, column: 2, scope: !1201)
!1313 = !DILocation(line: 463, column: 6, scope: !1201)
!1314 = !DILocation(line: 463, column: 15, scope: !1201)
!1315 = !DILocation(line: 465, column: 2, scope: !1201)
!1316 = !DILocation(line: 467, column: 21, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1201, file: !313, line: 467, column: 6)
!1318 = !DILocation(line: 467, column: 6, scope: !1317)
!1319 = !DILocation(line: 467, column: 6, scope: !1201)
!1320 = !DILocation(line: 468, column: 7, scope: !1317)
!1321 = !DILocation(line: 468, column: 3, scope: !1317)
!1322 = !DILocation(line: 470, column: 2, scope: !1201)
!1323 = !DILocation(line: 472, column: 9, scope: !1201)
!1324 = !DILocation(line: 472, column: 2, scope: !1201)
!1325 = distinct !DISubprogram(name: "ip4tables_add_rules", scope: !313, file: !313, line: 626, type: !1326, isLocal: false, isDefinition: true, scopeLine: 627, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !321)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!205, !316, !319, !81, !168, !168, !319, !319, !143, !168, !205, !428}
!1328 = !DILocalVariable(name: "handle", arg: 1, scope: !1325, file: !313, line: 626, type: !316)
!1329 = !DILocation(line: 626, column: 44, scope: !1325)
!1330 = !DILocalVariable(name: "chain_name", arg: 2, scope: !1325, file: !313, line: 626, type: !319)
!1331 = !DILocation(line: 626, column: 64, scope: !1325)
!1332 = !DILocalVariable(name: "rulenum", arg: 3, scope: !1325, file: !313, line: 626, type: !81)
!1333 = !DILocation(line: 626, column: 89, scope: !1325)
!1334 = !DILocalVariable(name: "dim", arg: 4, scope: !1325, file: !313, line: 626, type: !168)
!1335 = !DILocation(line: 626, column: 106, scope: !1325)
!1336 = !DILocalVariable(name: "src_dst", arg: 5, scope: !1325, file: !313, line: 626, type: !168)
!1337 = !DILocation(line: 626, column: 119, scope: !1325)
!1338 = !DILocalVariable(name: "target_name", arg: 6, scope: !1325, file: !313, line: 626, type: !319)
!1339 = !DILocation(line: 626, column: 140, scope: !1325)
!1340 = !DILocalVariable(name: "set_name", arg: 7, scope: !1325, file: !313, line: 626, type: !319)
!1341 = !DILocation(line: 626, column: 165, scope: !1325)
!1342 = !DILocalVariable(name: "protocol", arg: 8, scope: !1325, file: !313, line: 626, type: !143)
!1343 = !DILocation(line: 626, column: 184, scope: !1325)
!1344 = !DILocalVariable(name: "param", arg: 9, scope: !1325, file: !313, line: 626, type: !168)
!1345 = !DILocation(line: 626, column: 202, scope: !1325)
!1346 = !DILocalVariable(name: "cmd", arg: 10, scope: !1325, file: !313, line: 626, type: !205)
!1347 = !DILocation(line: 626, column: 213, scope: !1325)
!1348 = !DILocalVariable(name: "ignore_errors", arg: 11, scope: !1325, file: !313, line: 626, type: !428)
!1349 = !DILocation(line: 626, column: 223, scope: !1325)
!1350 = !DILocalVariable(name: "size", scope: !1325, file: !313, line: 628, type: !227)
!1351 = !DILocation(line: 628, column: 9, scope: !1325)
!1352 = !DILocalVariable(name: "fw", scope: !1325, file: !313, line: 629, type: !67)
!1353 = !DILocation(line: 629, column: 20, scope: !1325)
!1354 = !DILocalVariable(name: "target", scope: !1325, file: !313, line: 630, type: !537)
!1355 = !DILocation(line: 630, column: 26, scope: !1325)
!1356 = !DILocalVariable(name: "match", scope: !1325, file: !313, line: 631, type: !118)
!1357 = !DILocation(line: 631, column: 25, scope: !1325)
!1358 = !DILocalVariable(name: "setinfo", scope: !1325, file: !313, line: 633, type: !206)
!1359 = !DILocation(line: 633, column: 31, scope: !1325)
!1360 = !DILocalVariable(name: "chain", scope: !1325, file: !313, line: 641, type: !562)
!1361 = !DILocation(line: 641, column: 16, scope: !1325)
!1362 = !DILocalVariable(name: "res", scope: !1325, file: !313, line: 642, type: !205)
!1363 = !DILocation(line: 642, column: 6, scope: !1325)
!1364 = !DILocalVariable(name: "sav_errno", scope: !1325, file: !313, line: 643, type: !205)
!1365 = !DILocation(line: 643, column: 6, scope: !1325)
!1366 = !DILocation(line: 647, column: 2, scope: !1325)
!1367 = !DILocation(line: 649, column: 7, scope: !1325)
!1368 = !DILocation(line: 654, column: 6, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1325, file: !313, line: 654, column: 6)
!1370 = !DILocation(line: 654, column: 15, scope: !1369)
!1371 = !DILocation(line: 654, column: 6, scope: !1325)
!1372 = !DILocation(line: 655, column: 8, scope: !1369)
!1373 = !DILocation(line: 655, column: 3, scope: !1369)
!1374 = !DILocation(line: 657, column: 34, scope: !1325)
!1375 = !DILocation(line: 657, column: 27, scope: !1325)
!1376 = !DILocation(line: 657, column: 7, scope: !1325)
!1377 = !DILocation(line: 657, column: 5, scope: !1325)
!1378 = !DILocation(line: 659, column: 2, scope: !1325)
!1379 = !DILocation(line: 659, column: 6, scope: !1325)
!1380 = !DILocation(line: 659, column: 20, scope: !1325)
!1381 = !DILocation(line: 662, column: 42, scope: !1325)
!1382 = !DILocation(line: 662, column: 35, scope: !1325)
!1383 = !DILocation(line: 662, column: 47, scope: !1325)
!1384 = !DILocation(line: 662, column: 51, scope: !1325)
!1385 = !DILocation(line: 662, column: 45, scope: !1325)
!1386 = !DILocation(line: 662, column: 10, scope: !1325)
!1387 = !DILocation(line: 662, column: 8, scope: !1325)
!1388 = !DILocation(line: 663, column: 2, scope: !1325)
!1389 = !DILocation(line: 663, column: 9, scope: !1325)
!1390 = !DILocation(line: 663, column: 11, scope: !1325)
!1391 = !DILocation(line: 663, column: 22, scope: !1325)
!1392 = !DILocation(line: 665, column: 2, scope: !1325)
!1393 = !DILocation(line: 665, column: 9, scope: !1325)
!1394 = !DILocation(line: 665, column: 11, scope: !1325)
!1395 = !DILocation(line: 665, column: 16, scope: !1325)
!1396 = !DILocation(line: 665, column: 25, scope: !1325)
!1397 = !DILocation(line: 673, column: 33, scope: !1325)
!1398 = !DILocation(line: 673, column: 37, scope: !1325)
!1399 = !DILocation(line: 673, column: 53, scope: !1325)
!1400 = !DILocation(line: 673, column: 60, scope: !1325)
!1401 = !DILocation(line: 673, column: 62, scope: !1325)
!1402 = !DILocation(line: 673, column: 51, scope: !1325)
!1403 = !DILocation(line: 673, column: 22, scope: !1325)
!1404 = !DILocation(line: 673, column: 2, scope: !1325)
!1405 = !DILocation(line: 673, column: 6, scope: !1325)
!1406 = !DILocation(line: 673, column: 20, scope: !1325)
!1407 = !DILocation(line: 674, column: 9, scope: !1325)
!1408 = !DILocation(line: 674, column: 16, scope: !1325)
!1409 = !DILocation(line: 674, column: 18, scope: !1325)
!1410 = !DILocation(line: 674, column: 23, scope: !1325)
!1411 = !DILocation(line: 674, column: 2, scope: !1325)
!1412 = !DILocation(line: 677, column: 43, scope: !1325)
!1413 = !DILocation(line: 677, column: 50, scope: !1325)
!1414 = !DILocation(line: 677, column: 12, scope: !1325)
!1415 = !DILocation(line: 677, column: 10, scope: !1325)
!1416 = !DILocation(line: 685, column: 9, scope: !1325)
!1417 = !DILocation(line: 685, column: 2, scope: !1325)
!1418 = !DILocation(line: 687, column: 17, scope: !1325)
!1419 = !DILocation(line: 687, column: 28, scope: !1325)
!1420 = !DILocation(line: 687, column: 37, scope: !1325)
!1421 = !DILocation(line: 687, column: 62, scope: !1325)
!1422 = !DILocation(line: 687, column: 2, scope: !1325)
!1423 = !DILocation(line: 688, column: 6, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1325, file: !313, line: 688, column: 6)
!1425 = !DILocation(line: 688, column: 15, scope: !1424)
!1426 = !DILocation(line: 688, column: 25, scope: !1424)
!1427 = !DILocation(line: 688, column: 31, scope: !1424)
!1428 = !DILocation(line: 688, column: 6, scope: !1325)
!1429 = !DILocation(line: 689, column: 9, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1424, file: !313, line: 688, column: 51)
!1431 = !DILocation(line: 689, column: 4, scope: !1430)
!1432 = !DILocation(line: 689, column: 19, scope: !1430)
!1433 = !DILocation(line: 690, column: 3, scope: !1430)
!1434 = !DILocation(line: 693, column: 27, scope: !1325)
!1435 = !DILocation(line: 693, column: 2, scope: !1325)
!1436 = !DILocation(line: 693, column: 11, scope: !1325)
!1437 = !DILocation(line: 693, column: 21, scope: !1325)
!1438 = !DILocation(line: 693, column: 25, scope: !1325)
!1439 = !DILocation(line: 694, column: 29, scope: !1325)
!1440 = !DILocation(line: 694, column: 2, scope: !1325)
!1441 = !DILocation(line: 694, column: 11, scope: !1325)
!1442 = !DILocation(line: 694, column: 21, scope: !1325)
!1443 = !DILocation(line: 694, column: 27, scope: !1325)
!1444 = !DILocation(line: 696, column: 6, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1325, file: !313, line: 696, column: 6)
!1446 = !DILocation(line: 696, column: 15, scope: !1445)
!1447 = !DILocation(line: 696, column: 6, scope: !1325)
!1448 = !DILocation(line: 697, column: 18, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1445, file: !313, line: 696, column: 31)
!1450 = !DILocation(line: 697, column: 3, scope: !1449)
!1451 = !DILocation(line: 697, column: 7, scope: !1449)
!1452 = !DILocation(line: 697, column: 10, scope: !1449)
!1453 = !DILocation(line: 697, column: 16, scope: !1449)
!1454 = !DILocation(line: 701, column: 7, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1449, file: !313, line: 701, column: 7)
!1456 = !DILocation(line: 701, column: 16, scope: !1455)
!1457 = !DILocation(line: 701, column: 7, scope: !1449)
!1458 = !DILocation(line: 703, column: 44, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1455, file: !313, line: 702, column: 3)
!1460 = !DILocation(line: 703, column: 37, scope: !1459)
!1461 = !DILocation(line: 703, column: 49, scope: !1459)
!1462 = !DILocation(line: 703, column: 53, scope: !1459)
!1463 = !DILocation(line: 703, column: 47, scope: !1459)
!1464 = !DILocation(line: 703, column: 12, scope: !1459)
!1465 = !DILocation(line: 703, column: 10, scope: !1459)
!1466 = !DILocation(line: 704, column: 4, scope: !1459)
!1467 = !DILocation(line: 704, column: 11, scope: !1459)
!1468 = !DILocation(line: 704, column: 13, scope: !1459)
!1469 = !DILocation(line: 704, column: 24, scope: !1459)
!1470 = !DILocation(line: 705, column: 4, scope: !1459)
!1471 = !DILocation(line: 705, column: 11, scope: !1459)
!1472 = !DILocation(line: 705, column: 13, scope: !1459)
!1473 = !DILocation(line: 705, column: 18, scope: !1459)
!1474 = !DILocation(line: 705, column: 27, scope: !1459)
!1475 = !DILocation(line: 706, column: 35, scope: !1459)
!1476 = !DILocation(line: 706, column: 39, scope: !1459)
!1477 = !DILocation(line: 706, column: 55, scope: !1459)
!1478 = !DILocation(line: 706, column: 62, scope: !1459)
!1479 = !DILocation(line: 706, column: 64, scope: !1459)
!1480 = !DILocation(line: 706, column: 53, scope: !1459)
!1481 = !DILocation(line: 706, column: 24, scope: !1459)
!1482 = !DILocation(line: 706, column: 4, scope: !1459)
!1483 = !DILocation(line: 706, column: 8, scope: !1459)
!1484 = !DILocation(line: 706, column: 22, scope: !1459)
!1485 = !DILocation(line: 707, column: 11, scope: !1459)
!1486 = !DILocation(line: 707, column: 18, scope: !1459)
!1487 = !DILocation(line: 707, column: 20, scope: !1459)
!1488 = !DILocation(line: 707, column: 25, scope: !1459)
!1489 = !DILocation(line: 707, column: 4, scope: !1459)
!1490 = !DILocalVariable(name: "icmpinfo", scope: !1459, file: !313, line: 709, type: !144)
!1491 = !DILocation(line: 709, column: 21, scope: !1459)
!1492 = !DILocation(line: 709, column: 51, scope: !1459)
!1493 = !DILocation(line: 709, column: 58, scope: !1459)
!1494 = !DILocation(line: 709, column: 32, scope: !1459)
!1495 = !DILocation(line: 710, column: 21, scope: !1459)
!1496 = !DILocation(line: 710, column: 4, scope: !1459)
!1497 = !DILocation(line: 710, column: 14, scope: !1459)
!1498 = !DILocation(line: 710, column: 19, scope: !1459)
!1499 = !DILocation(line: 711, column: 4, scope: !1459)
!1500 = !DILocation(line: 711, column: 14, scope: !1459)
!1501 = !DILocation(line: 711, column: 22, scope: !1459)
!1502 = !DILocation(line: 712, column: 4, scope: !1459)
!1503 = !DILocation(line: 712, column: 14, scope: !1459)
!1504 = !DILocation(line: 712, column: 22, scope: !1459)
!1505 = !DILocation(line: 713, column: 4, scope: !1459)
!1506 = !DILocation(line: 713, column: 14, scope: !1459)
!1507 = !DILocation(line: 713, column: 23, scope: !1459)
!1508 = !DILocation(line: 714, column: 3, scope: !1459)
!1509 = !DILocation(line: 715, column: 2, scope: !1449)
!1510 = !DILocation(line: 718, column: 30, scope: !1325)
!1511 = !DILocation(line: 718, column: 20, scope: !1325)
!1512 = !DILocation(line: 718, column: 2, scope: !1325)
!1513 = !DILocation(line: 718, column: 6, scope: !1325)
!1514 = !DILocation(line: 718, column: 18, scope: !1325)
!1515 = !DILocation(line: 719, column: 26, scope: !1325)
!1516 = !DILocation(line: 719, column: 11, scope: !1325)
!1517 = !DILocation(line: 719, column: 9, scope: !1325)
!1518 = !DILocation(line: 720, column: 2, scope: !1325)
!1519 = !DILocation(line: 720, column: 10, scope: !1325)
!1520 = !DILocation(line: 720, column: 12, scope: !1325)
!1521 = !DILocation(line: 720, column: 17, scope: !1325)
!1522 = !DILocation(line: 720, column: 29, scope: !1325)
!1523 = !DILocation(line: 721, column: 9, scope: !1325)
!1524 = !DILocation(line: 721, column: 17, scope: !1325)
!1525 = !DILocation(line: 721, column: 19, scope: !1325)
!1526 = !DILocation(line: 721, column: 24, scope: !1325)
!1527 = !DILocation(line: 721, column: 30, scope: !1325)
!1528 = !DILocation(line: 721, column: 2, scope: !1325)
!1529 = !DILocation(line: 723, column: 9, scope: !1325)
!1530 = !DILocation(line: 723, column: 16, scope: !1325)
!1531 = !DILocation(line: 723, column: 2, scope: !1325)
!1532 = !DILocation(line: 726, column: 6, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1325, file: !313, line: 726, column: 6)
!1534 = !DILocation(line: 726, column: 10, scope: !1533)
!1535 = !DILocation(line: 726, column: 6, scope: !1325)
!1536 = !DILocation(line: 727, column: 27, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1533, file: !313, line: 726, column: 16)
!1538 = !DILocation(line: 727, column: 31, scope: !1537)
!1539 = !DILocation(line: 727, column: 3, scope: !1537)
!1540 = !DILocalVariable(name: "matchmask", scope: !1537, file: !313, line: 727, type: !749)
!1541 = !DILocation(line: 727, column: 17, scope: !1537)
!1542 = !DILocation(line: 728, column: 27, scope: !1537)
!1543 = !DILocation(line: 728, column: 31, scope: !1537)
!1544 = !DILocation(line: 728, column: 3, scope: !1537)
!1545 = !DILocation(line: 729, column: 27, scope: !1537)
!1546 = !DILocation(line: 729, column: 34, scope: !1537)
!1547 = !DILocation(line: 729, column: 49, scope: !1537)
!1548 = !DILocation(line: 729, column: 9, scope: !1537)
!1549 = !DILocation(line: 729, column: 7, scope: !1537)
!1550 = !DILocation(line: 730, column: 2, scope: !1533)
!1551 = !DILocation(line: 730, column: 2, scope: !1537)
!1552 = !DILocation(line: 731, column: 11, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1533, file: !313, line: 731, column: 11)
!1554 = !DILocation(line: 731, column: 19, scope: !1553)
!1555 = !DILocation(line: 731, column: 11, scope: !1533)
!1556 = !DILocation(line: 732, column: 27, scope: !1553)
!1557 = !DILocation(line: 732, column: 34, scope: !1553)
!1558 = !DILocation(line: 732, column: 38, scope: !1553)
!1559 = !DILocation(line: 732, column: 9, scope: !1553)
!1560 = !DILocation(line: 732, column: 7, scope: !1553)
!1561 = !DILocation(line: 732, column: 3, scope: !1553)
!1562 = !DILocation(line: 734, column: 27, scope: !1553)
!1563 = !DILocation(line: 734, column: 34, scope: !1553)
!1564 = !DILocation(line: 734, column: 38, scope: !1553)
!1565 = !DILocation(line: 734, column: 47, scope: !1553)
!1566 = !DILocation(line: 734, column: 9, scope: !1553)
!1567 = !DILocation(line: 734, column: 7, scope: !1553)
!1568 = !DILocation(line: 736, column: 15, scope: !1325)
!1569 = !DILocation(line: 736, column: 14, scope: !1325)
!1570 = !DILocation(line: 736, column: 12, scope: !1325)
!1571 = !DILocation(line: 738, column: 8, scope: !1325)
!1572 = !DILocation(line: 738, column: 3, scope: !1325)
!1573 = !DILocation(line: 738, column: 18, scope: !1325)
!1574 = !DILocation(line: 740, column: 6, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1325, file: !313, line: 740, column: 6)
!1576 = !DILocation(line: 740, column: 9, scope: !1575)
!1577 = !DILocation(line: 740, column: 6, scope: !1325)
!1578 = !DILocation(line: 742, column: 8, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !313, line: 742, column: 7)
!1580 = distinct !DILexicalBlock(scope: !1575, file: !313, line: 741, column: 2)
!1581 = !DILocation(line: 742, column: 7, scope: !1580)
!1582 = !DILocation(line: 743, column: 75, scope: !1579)
!1583 = !DILocation(line: 743, column: 82, scope: !1579)
!1584 = !DILocation(line: 743, column: 101, scope: !1579)
!1585 = !DILocation(line: 743, column: 87, scope: !1579)
!1586 = !DILocation(line: 743, column: 4, scope: !1587)
!1587 = !DILexicalBlockFile(scope: !1579, file: !313, discriminator: 1)
!1588 = !DILocation(line: 743, column: 4, scope: !1579)
!1589 = !DILocation(line: 745, column: 10, scope: !1580)
!1590 = !DILocation(line: 745, column: 3, scope: !1580)
!1591 = !DILocation(line: 748, column: 2, scope: !1325)
!1592 = !DILocation(line: 749, column: 1, scope: !1325)
!1593 = distinct !DISubprogram(name: "get_set_byname", scope: !313, file: !313, line: 563, type: !1594, isLocal: true, isDefinition: true, scopeLine: 564, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !321)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{null, !319, !1596, !81, !428}
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!1597 = !DILocalVariable(name: "setname", arg: 1, scope: !1593, file: !313, line: 563, type: !319)
!1598 = !DILocation(line: 563, column: 28, scope: !1593)
!1599 = !DILocalVariable(name: "info", arg: 2, scope: !1593, file: !313, line: 563, type: !1596)
!1600 = !DILocation(line: 563, column: 57, scope: !1593)
!1601 = !DILocalVariable(name: "family", arg: 3, scope: !1593, file: !313, line: 563, type: !81)
!1602 = !DILocation(line: 563, column: 72, scope: !1593)
!1603 = !DILocalVariable(name: "ignore_errors", arg: 4, scope: !1593, file: !313, line: 563, type: !428)
!1604 = !DILocation(line: 563, column: 84, scope: !1593)
!1605 = !DILocalVariable(name: "req", scope: !1593, file: !313, line: 566, type: !1606)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_set_req_get_set_family", file: !215, line: 290, size: 352, align: 32, elements: !1607)
!1607 = !{!1608, !1609, !1610, !1611}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1606, file: !215, line: 291, baseType: !81, size: 32, align: 32)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1606, file: !215, line: 292, baseType: !81, size: 32, align: 32, offset: 32)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !1606, file: !215, line: 293, baseType: !81, size: 32, align: 32, offset: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1606, file: !215, line: 294, baseType: !1612, size: 256, align: 16, offset: 96)
!1612 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "ip_set_name_index", file: !215, line: 274, size: 256, align: 16, elements: !1613)
!1613 = !{!1614, !1615}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1612, file: !215, line: 275, baseType: !563, size: 256, align: 8)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1612, file: !215, line: 276, baseType: !214, size: 16, align: 16)
!1616 = !DILocation(line: 566, column: 35, scope: !1593)
!1617 = !DILocalVariable(name: "size", scope: !1593, file: !313, line: 567, type: !1618)
!1618 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !1619, line: 33, baseType: !1620)
!1619 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!1620 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !285, line: 189, baseType: !81)
!1621 = !DILocation(line: 567, column: 12, scope: !1593)
!1622 = !DILocalVariable(name: "res", scope: !1593, file: !313, line: 568, type: !205)
!1623 = !DILocation(line: 568, column: 6, scope: !1593)
!1624 = !DILocalVariable(name: "sockfd", scope: !1593, file: !313, line: 572, type: !205)
!1625 = !DILocation(line: 572, column: 6, scope: !1593)
!1626 = !DILocalVariable(name: "version", scope: !1593, file: !313, line: 573, type: !81)
!1627 = !DILocation(line: 573, column: 15, scope: !1593)
!1628 = !DILocation(line: 575, column: 2, scope: !1593)
!1629 = !DILocation(line: 575, column: 8, scope: !1593)
!1630 = !DILocation(line: 575, column: 14, scope: !1593)
!1631 = !DILocation(line: 577, column: 11, scope: !1593)
!1632 = !DILocation(line: 577, column: 9, scope: !1593)
!1633 = !DILocation(line: 579, column: 16, scope: !1593)
!1634 = !DILocation(line: 579, column: 6, scope: !1593)
!1635 = !DILocation(line: 579, column: 14, scope: !1593)
!1636 = !DILocation(line: 580, column: 6, scope: !1593)
!1637 = !DILocation(line: 580, column: 9, scope: !1593)
!1638 = !DILocation(line: 581, column: 14, scope: !1593)
!1639 = !DILocation(line: 581, column: 18, scope: !1593)
!1640 = !DILocation(line: 581, column: 10, scope: !1593)
!1641 = !DILocation(line: 581, column: 24, scope: !1593)
!1642 = !DILocation(line: 581, column: 2, scope: !1593)
!1643 = !DILocation(line: 582, column: 6, scope: !1593)
!1644 = !DILocation(line: 582, column: 10, scope: !1593)
!1645 = !DILocation(line: 582, column: 2, scope: !1593)
!1646 = !DILocation(line: 582, column: 36, scope: !1593)
!1647 = !DILocation(line: 583, column: 19, scope: !1593)
!1648 = !DILocation(line: 583, column: 45, scope: !1593)
!1649 = !DILocation(line: 583, column: 8, scope: !1593)
!1650 = !DILocation(line: 583, column: 6, scope: !1593)
!1651 = !DILocation(line: 585, column: 6, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1593, file: !313, line: 585, column: 6)
!1653 = !DILocation(line: 585, column: 10, scope: !1652)
!1654 = !DILocation(line: 585, column: 15, scope: !1652)
!1655 = !DILocation(line: 585, column: 19, scope: !1656)
!1656 = !DILexicalBlockFile(scope: !1652, file: !313, discriminator: 1)
!1657 = !DILocation(line: 585, column: 18, scope: !1656)
!1658 = !DILocation(line: 585, column: 23, scope: !1656)
!1659 = !DILocation(line: 585, column: 6, scope: !1656)
!1660 = !DILocation(line: 589, column: 23, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1652, file: !313, line: 587, column: 2)
!1662 = !DILocation(line: 589, column: 32, scope: !1661)
!1663 = !DILocation(line: 589, column: 38, scope: !1661)
!1664 = !DILocation(line: 589, column: 46, scope: !1661)
!1665 = !DILocation(line: 589, column: 55, scope: !1661)
!1666 = !DILocation(line: 589, column: 3, scope: !1661)
!1667 = !DILocation(line: 591, column: 9, scope: !1661)
!1668 = !DILocation(line: 591, column: 3, scope: !1661)
!1669 = !DILocation(line: 592, column: 3, scope: !1661)
!1670 = !DILocation(line: 596, column: 8, scope: !1593)
!1671 = !DILocation(line: 596, column: 2, scope: !1593)
!1672 = !DILocation(line: 597, column: 6, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1593, file: !313, line: 597, column: 6)
!1674 = !DILocation(line: 597, column: 10, scope: !1673)
!1675 = !DILocation(line: 597, column: 6, scope: !1593)
!1676 = !DILocation(line: 598, column: 8, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !313, line: 598, column: 7)
!1678 = distinct !DILexicalBlock(scope: !1673, file: !313, line: 597, column: 16)
!1679 = !DILocation(line: 598, column: 7, scope: !1678)
!1680 = !DILocation(line: 600, column: 6, scope: !1677)
!1681 = !DILocation(line: 600, column: 5, scope: !1677)
!1682 = !DILocation(line: 599, column: 4, scope: !1677)
!1683 = !DILocation(line: 601, column: 2, scope: !1678)
!1684 = !DILocation(line: 602, column: 11, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1673, file: !313, line: 602, column: 11)
!1686 = !DILocation(line: 602, column: 16, scope: !1685)
!1687 = !DILocation(line: 602, column: 11, scope: !1673)
!1688 = !DILocation(line: 603, column: 8, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !313, line: 603, column: 7)
!1690 = distinct !DILexicalBlock(scope: !1685, file: !313, line: 602, column: 61)
!1691 = !DILocation(line: 603, column: 7, scope: !1690)
!1692 = !DILocation(line: 607, column: 13, scope: !1689)
!1693 = !DILocation(line: 607, column: 5, scope: !1689)
!1694 = !DILocation(line: 604, column: 4, scope: !1689)
!1695 = !DILocation(line: 608, column: 2, scope: !1690)
!1696 = !DILocation(line: 609, column: 15, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1685, file: !313, line: 609, column: 11)
!1698 = !DILocation(line: 609, column: 19, scope: !1697)
!1699 = !DILocation(line: 609, column: 11, scope: !1697)
!1700 = !DILocation(line: 609, column: 25, scope: !1697)
!1701 = !DILocation(line: 609, column: 11, scope: !1685)
!1702 = !DILocation(line: 610, column: 8, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1704, file: !313, line: 610, column: 7)
!1704 = distinct !DILexicalBlock(scope: !1697, file: !313, line: 609, column: 45)
!1705 = !DILocation(line: 610, column: 7, scope: !1704)
!1706 = !DILocation(line: 611, column: 50, scope: !1703)
!1707 = !DILocation(line: 611, column: 4, scope: !1703)
!1708 = !DILocation(line: 612, column: 2, scope: !1704)
!1709 = !DILocation(line: 613, column: 17, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1697, file: !313, line: 613, column: 11)
!1711 = !DILocation(line: 613, column: 27, scope: !1710)
!1712 = !DILocation(line: 613, column: 24, scope: !1710)
!1713 = !DILocation(line: 613, column: 34, scope: !1710)
!1714 = !DILocation(line: 614, column: 12, scope: !1710)
!1715 = !DILocation(line: 614, column: 19, scope: !1710)
!1716 = !DILocation(line: 613, column: 11, scope: !1717)
!1717 = !DILexicalBlockFile(scope: !1697, file: !313, discriminator: 1)
!1718 = !DILocation(line: 615, column: 8, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !313, line: 615, column: 7)
!1720 = distinct !DILexicalBlock(scope: !1710, file: !313, line: 614, column: 39)
!1721 = !DILocation(line: 615, column: 7, scope: !1720)
!1722 = !DILocation(line: 618, column: 11, scope: !1719)
!1723 = !DILocation(line: 619, column: 15, scope: !1719)
!1724 = !DILocation(line: 619, column: 22, scope: !1719)
!1725 = !DILocation(line: 619, column: 11, scope: !1719)
!1726 = !DILocation(line: 616, column: 4, scope: !1719)
!1727 = !DILocation(line: 620, column: 2, scope: !1720)
!1728 = !DILocation(line: 622, column: 21, scope: !1710)
!1729 = !DILocation(line: 622, column: 25, scope: !1710)
!1730 = !DILocation(line: 622, column: 3, scope: !1710)
!1731 = !DILocation(line: 622, column: 9, scope: !1710)
!1732 = !DILocation(line: 622, column: 15, scope: !1710)
!1733 = !DILocation(line: 624, column: 1, scope: !1593)
!1734 = distinct !DISubprogram(name: "ip6tables_add_rules", scope: !313, file: !313, line: 751, type: !1326, isLocal: false, isDefinition: true, scopeLine: 752, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !321)
!1735 = !DILocalVariable(name: "handle", arg: 1, scope: !1734, file: !313, line: 751, type: !316)
!1736 = !DILocation(line: 751, column: 45, scope: !1734)
!1737 = !DILocalVariable(name: "chain_name", arg: 2, scope: !1734, file: !313, line: 751, type: !319)
!1738 = !DILocation(line: 751, column: 65, scope: !1734)
!1739 = !DILocalVariable(name: "rulenum", arg: 3, scope: !1734, file: !313, line: 751, type: !81)
!1740 = !DILocation(line: 751, column: 90, scope: !1734)
!1741 = !DILocalVariable(name: "dim", arg: 4, scope: !1734, file: !313, line: 751, type: !168)
!1742 = !DILocation(line: 751, column: 107, scope: !1734)
!1743 = !DILocalVariable(name: "src_dst", arg: 5, scope: !1734, file: !313, line: 751, type: !168)
!1744 = !DILocation(line: 751, column: 120, scope: !1734)
!1745 = !DILocalVariable(name: "target_name", arg: 6, scope: !1734, file: !313, line: 751, type: !319)
!1746 = !DILocation(line: 751, column: 141, scope: !1734)
!1747 = !DILocalVariable(name: "set_name", arg: 7, scope: !1734, file: !313, line: 751, type: !319)
!1748 = !DILocation(line: 751, column: 166, scope: !1734)
!1749 = !DILocalVariable(name: "protocol", arg: 8, scope: !1734, file: !313, line: 751, type: !143)
!1750 = !DILocation(line: 751, column: 185, scope: !1734)
!1751 = !DILocalVariable(name: "param", arg: 9, scope: !1734, file: !313, line: 751, type: !168)
!1752 = !DILocation(line: 751, column: 203, scope: !1734)
!1753 = !DILocalVariable(name: "cmd", arg: 10, scope: !1734, file: !313, line: 751, type: !205)
!1754 = !DILocation(line: 751, column: 214, scope: !1734)
!1755 = !DILocalVariable(name: "ignore_errors", arg: 11, scope: !1734, file: !313, line: 751, type: !428)
!1756 = !DILocation(line: 751, column: 224, scope: !1734)
!1757 = !DILocalVariable(name: "size", scope: !1734, file: !313, line: 753, type: !227)
!1758 = !DILocation(line: 753, column: 9, scope: !1734)
!1759 = !DILocalVariable(name: "fw", scope: !1734, file: !313, line: 754, type: !153)
!1760 = !DILocation(line: 754, column: 21, scope: !1734)
!1761 = !DILocalVariable(name: "target", scope: !1734, file: !313, line: 755, type: !537)
!1762 = !DILocation(line: 755, column: 26, scope: !1734)
!1763 = !DILocalVariable(name: "match", scope: !1734, file: !313, line: 756, type: !118)
!1764 = !DILocation(line: 756, column: 25, scope: !1734)
!1765 = !DILocalVariable(name: "setinfo", scope: !1734, file: !313, line: 758, type: !206)
!1766 = !DILocation(line: 758, column: 31, scope: !1734)
!1767 = !DILocalVariable(name: "chain", scope: !1734, file: !313, line: 766, type: !562)
!1768 = !DILocation(line: 766, column: 17, scope: !1734)
!1769 = !DILocalVariable(name: "res", scope: !1734, file: !313, line: 767, type: !205)
!1770 = !DILocation(line: 767, column: 6, scope: !1734)
!1771 = !DILocalVariable(name: "sav_errno", scope: !1734, file: !313, line: 768, type: !205)
!1772 = !DILocation(line: 768, column: 6, scope: !1734)
!1773 = !DILocation(line: 772, column: 2, scope: !1734)
!1774 = !DILocation(line: 774, column: 7, scope: !1734)
!1775 = !DILocation(line: 779, column: 6, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1734, file: !313, line: 779, column: 6)
!1777 = !DILocation(line: 779, column: 15, scope: !1776)
!1778 = !DILocation(line: 779, column: 6, scope: !1734)
!1779 = !DILocation(line: 780, column: 8, scope: !1776)
!1780 = !DILocation(line: 780, column: 3, scope: !1776)
!1781 = !DILocation(line: 782, column: 35, scope: !1734)
!1782 = !DILocation(line: 782, column: 28, scope: !1734)
!1783 = !DILocation(line: 782, column: 7, scope: !1734)
!1784 = !DILocation(line: 782, column: 5, scope: !1734)
!1785 = !DILocation(line: 784, column: 2, scope: !1734)
!1786 = !DILocation(line: 784, column: 6, scope: !1734)
!1787 = !DILocation(line: 784, column: 20, scope: !1734)
!1788 = !DILocation(line: 787, column: 42, scope: !1734)
!1789 = !DILocation(line: 787, column: 35, scope: !1734)
!1790 = !DILocation(line: 787, column: 47, scope: !1734)
!1791 = !DILocation(line: 787, column: 51, scope: !1734)
!1792 = !DILocation(line: 787, column: 45, scope: !1734)
!1793 = !DILocation(line: 787, column: 10, scope: !1734)
!1794 = !DILocation(line: 787, column: 8, scope: !1734)
!1795 = !DILocation(line: 788, column: 2, scope: !1734)
!1796 = !DILocation(line: 788, column: 9, scope: !1734)
!1797 = !DILocation(line: 788, column: 11, scope: !1734)
!1798 = !DILocation(line: 788, column: 22, scope: !1734)
!1799 = !DILocation(line: 790, column: 2, scope: !1734)
!1800 = !DILocation(line: 790, column: 9, scope: !1734)
!1801 = !DILocation(line: 790, column: 11, scope: !1734)
!1802 = !DILocation(line: 790, column: 16, scope: !1734)
!1803 = !DILocation(line: 790, column: 25, scope: !1734)
!1804 = !DILocation(line: 798, column: 33, scope: !1734)
!1805 = !DILocation(line: 798, column: 37, scope: !1734)
!1806 = !DILocation(line: 798, column: 53, scope: !1734)
!1807 = !DILocation(line: 798, column: 60, scope: !1734)
!1808 = !DILocation(line: 798, column: 62, scope: !1734)
!1809 = !DILocation(line: 798, column: 51, scope: !1734)
!1810 = !DILocation(line: 798, column: 22, scope: !1734)
!1811 = !DILocation(line: 798, column: 2, scope: !1734)
!1812 = !DILocation(line: 798, column: 6, scope: !1734)
!1813 = !DILocation(line: 798, column: 20, scope: !1734)
!1814 = !DILocation(line: 799, column: 9, scope: !1734)
!1815 = !DILocation(line: 799, column: 16, scope: !1734)
!1816 = !DILocation(line: 799, column: 18, scope: !1734)
!1817 = !DILocation(line: 799, column: 23, scope: !1734)
!1818 = !DILocation(line: 799, column: 2, scope: !1734)
!1819 = !DILocation(line: 802, column: 43, scope: !1734)
!1820 = !DILocation(line: 802, column: 50, scope: !1734)
!1821 = !DILocation(line: 802, column: 12, scope: !1734)
!1822 = !DILocation(line: 802, column: 10, scope: !1734)
!1823 = !DILocation(line: 810, column: 9, scope: !1734)
!1824 = !DILocation(line: 810, column: 2, scope: !1734)
!1825 = !DILocation(line: 812, column: 18, scope: !1734)
!1826 = !DILocation(line: 812, column: 29, scope: !1734)
!1827 = !DILocation(line: 812, column: 38, scope: !1734)
!1828 = !DILocation(line: 812, column: 63, scope: !1734)
!1829 = !DILocation(line: 812, column: 2, scope: !1734)
!1830 = !DILocation(line: 813, column: 6, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1734, file: !313, line: 813, column: 6)
!1832 = !DILocation(line: 813, column: 15, scope: !1831)
!1833 = !DILocation(line: 813, column: 25, scope: !1831)
!1834 = !DILocation(line: 813, column: 31, scope: !1831)
!1835 = !DILocation(line: 813, column: 6, scope: !1734)
!1836 = !DILocation(line: 814, column: 9, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1831, file: !313, line: 813, column: 51)
!1838 = !DILocation(line: 814, column: 4, scope: !1837)
!1839 = !DILocation(line: 814, column: 19, scope: !1837)
!1840 = !DILocation(line: 815, column: 3, scope: !1837)
!1841 = !DILocation(line: 818, column: 27, scope: !1734)
!1842 = !DILocation(line: 818, column: 2, scope: !1734)
!1843 = !DILocation(line: 818, column: 11, scope: !1734)
!1844 = !DILocation(line: 818, column: 21, scope: !1734)
!1845 = !DILocation(line: 818, column: 25, scope: !1734)
!1846 = !DILocation(line: 819, column: 29, scope: !1734)
!1847 = !DILocation(line: 819, column: 2, scope: !1734)
!1848 = !DILocation(line: 819, column: 11, scope: !1734)
!1849 = !DILocation(line: 819, column: 21, scope: !1734)
!1850 = !DILocation(line: 819, column: 27, scope: !1734)
!1851 = !DILocation(line: 821, column: 6, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1734, file: !313, line: 821, column: 6)
!1853 = !DILocation(line: 821, column: 15, scope: !1852)
!1854 = !DILocation(line: 821, column: 6, scope: !1734)
!1855 = !DILocation(line: 822, column: 20, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1852, file: !313, line: 821, column: 31)
!1857 = !DILocation(line: 822, column: 3, scope: !1856)
!1858 = !DILocation(line: 822, column: 7, scope: !1856)
!1859 = !DILocation(line: 822, column: 12, scope: !1856)
!1860 = !DILocation(line: 822, column: 18, scope: !1856)
!1861 = !DILocation(line: 824, column: 3, scope: !1856)
!1862 = !DILocation(line: 824, column: 7, scope: !1856)
!1863 = !DILocation(line: 824, column: 12, scope: !1856)
!1864 = !DILocation(line: 824, column: 18, scope: !1856)
!1865 = !DILocation(line: 826, column: 7, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1856, file: !313, line: 826, column: 7)
!1867 = !DILocation(line: 826, column: 16, scope: !1866)
!1868 = !DILocation(line: 826, column: 7, scope: !1856)
!1869 = !DILocation(line: 828, column: 44, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1866, file: !313, line: 827, column: 3)
!1871 = !DILocation(line: 828, column: 37, scope: !1870)
!1872 = !DILocation(line: 828, column: 49, scope: !1870)
!1873 = !DILocation(line: 828, column: 53, scope: !1870)
!1874 = !DILocation(line: 828, column: 47, scope: !1870)
!1875 = !DILocation(line: 828, column: 12, scope: !1870)
!1876 = !DILocation(line: 828, column: 10, scope: !1870)
!1877 = !DILocation(line: 829, column: 4, scope: !1870)
!1878 = !DILocation(line: 829, column: 11, scope: !1870)
!1879 = !DILocation(line: 829, column: 13, scope: !1870)
!1880 = !DILocation(line: 829, column: 24, scope: !1870)
!1881 = !DILocation(line: 830, column: 4, scope: !1870)
!1882 = !DILocation(line: 830, column: 11, scope: !1870)
!1883 = !DILocation(line: 830, column: 13, scope: !1870)
!1884 = !DILocation(line: 830, column: 18, scope: !1870)
!1885 = !DILocation(line: 830, column: 27, scope: !1870)
!1886 = !DILocation(line: 831, column: 35, scope: !1870)
!1887 = !DILocation(line: 831, column: 39, scope: !1870)
!1888 = !DILocation(line: 831, column: 55, scope: !1870)
!1889 = !DILocation(line: 831, column: 62, scope: !1870)
!1890 = !DILocation(line: 831, column: 64, scope: !1870)
!1891 = !DILocation(line: 831, column: 53, scope: !1870)
!1892 = !DILocation(line: 831, column: 24, scope: !1870)
!1893 = !DILocation(line: 831, column: 4, scope: !1870)
!1894 = !DILocation(line: 831, column: 8, scope: !1870)
!1895 = !DILocation(line: 831, column: 22, scope: !1870)
!1896 = !DILocation(line: 832, column: 11, scope: !1870)
!1897 = !DILocation(line: 832, column: 18, scope: !1870)
!1898 = !DILocation(line: 832, column: 20, scope: !1870)
!1899 = !DILocation(line: 832, column: 25, scope: !1870)
!1900 = !DILocation(line: 832, column: 4, scope: !1870)
!1901 = !DILocalVariable(name: "icmpinfo", scope: !1870, file: !313, line: 834, type: !194)
!1902 = !DILocation(line: 834, column: 22, scope: !1870)
!1903 = !DILocation(line: 834, column: 53, scope: !1870)
!1904 = !DILocation(line: 834, column: 60, scope: !1870)
!1905 = !DILocation(line: 834, column: 33, scope: !1870)
!1906 = !DILocation(line: 835, column: 21, scope: !1870)
!1907 = !DILocation(line: 835, column: 4, scope: !1870)
!1908 = !DILocation(line: 835, column: 14, scope: !1870)
!1909 = !DILocation(line: 835, column: 19, scope: !1870)
!1910 = !DILocation(line: 836, column: 4, scope: !1870)
!1911 = !DILocation(line: 836, column: 14, scope: !1870)
!1912 = !DILocation(line: 836, column: 22, scope: !1870)
!1913 = !DILocation(line: 837, column: 4, scope: !1870)
!1914 = !DILocation(line: 837, column: 14, scope: !1870)
!1915 = !DILocation(line: 837, column: 22, scope: !1870)
!1916 = !DILocation(line: 838, column: 4, scope: !1870)
!1917 = !DILocation(line: 838, column: 14, scope: !1870)
!1918 = !DILocation(line: 838, column: 23, scope: !1870)
!1919 = !DILocation(line: 839, column: 3, scope: !1870)
!1920 = !DILocation(line: 840, column: 2, scope: !1856)
!1921 = !DILocation(line: 843, column: 30, scope: !1734)
!1922 = !DILocation(line: 843, column: 20, scope: !1734)
!1923 = !DILocation(line: 843, column: 2, scope: !1734)
!1924 = !DILocation(line: 843, column: 6, scope: !1734)
!1925 = !DILocation(line: 843, column: 18, scope: !1734)
!1926 = !DILocation(line: 844, column: 27, scope: !1734)
!1927 = !DILocation(line: 844, column: 11, scope: !1734)
!1928 = !DILocation(line: 844, column: 9, scope: !1734)
!1929 = !DILocation(line: 845, column: 2, scope: !1734)
!1930 = !DILocation(line: 845, column: 10, scope: !1734)
!1931 = !DILocation(line: 845, column: 12, scope: !1734)
!1932 = !DILocation(line: 845, column: 17, scope: !1734)
!1933 = !DILocation(line: 845, column: 29, scope: !1734)
!1934 = !DILocation(line: 846, column: 9, scope: !1734)
!1935 = !DILocation(line: 846, column: 17, scope: !1734)
!1936 = !DILocation(line: 846, column: 19, scope: !1734)
!1937 = !DILocation(line: 846, column: 24, scope: !1734)
!1938 = !DILocation(line: 846, column: 30, scope: !1734)
!1939 = !DILocation(line: 846, column: 2, scope: !1734)
!1940 = !DILocation(line: 848, column: 9, scope: !1734)
!1941 = !DILocation(line: 848, column: 16, scope: !1734)
!1942 = !DILocation(line: 848, column: 2, scope: !1734)
!1943 = !DILocation(line: 851, column: 6, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1734, file: !313, line: 851, column: 6)
!1945 = !DILocation(line: 851, column: 10, scope: !1944)
!1946 = !DILocation(line: 851, column: 6, scope: !1734)
!1947 = !DILocation(line: 852, column: 27, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1944, file: !313, line: 851, column: 16)
!1949 = !DILocation(line: 852, column: 31, scope: !1948)
!1950 = !DILocation(line: 852, column: 3, scope: !1948)
!1951 = !DILocalVariable(name: "matchmask", scope: !1948, file: !313, line: 852, type: !749)
!1952 = !DILocation(line: 852, column: 17, scope: !1948)
!1953 = !DILocation(line: 853, column: 27, scope: !1948)
!1954 = !DILocation(line: 853, column: 31, scope: !1948)
!1955 = !DILocation(line: 853, column: 3, scope: !1948)
!1956 = !DILocation(line: 854, column: 28, scope: !1948)
!1957 = !DILocation(line: 854, column: 35, scope: !1948)
!1958 = !DILocation(line: 854, column: 50, scope: !1948)
!1959 = !DILocation(line: 854, column: 9, scope: !1948)
!1960 = !DILocation(line: 854, column: 7, scope: !1948)
!1961 = !DILocation(line: 855, column: 2, scope: !1944)
!1962 = !DILocation(line: 855, column: 2, scope: !1948)
!1963 = !DILocation(line: 856, column: 11, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1944, file: !313, line: 856, column: 11)
!1965 = !DILocation(line: 856, column: 19, scope: !1964)
!1966 = !DILocation(line: 856, column: 11, scope: !1944)
!1967 = !DILocation(line: 857, column: 28, scope: !1964)
!1968 = !DILocation(line: 857, column: 35, scope: !1964)
!1969 = !DILocation(line: 857, column: 39, scope: !1964)
!1970 = !DILocation(line: 857, column: 9, scope: !1964)
!1971 = !DILocation(line: 857, column: 7, scope: !1964)
!1972 = !DILocation(line: 857, column: 3, scope: !1964)
!1973 = !DILocation(line: 859, column: 28, scope: !1964)
!1974 = !DILocation(line: 859, column: 35, scope: !1964)
!1975 = !DILocation(line: 859, column: 39, scope: !1964)
!1976 = !DILocation(line: 859, column: 48, scope: !1964)
!1977 = !DILocation(line: 859, column: 9, scope: !1964)
!1978 = !DILocation(line: 859, column: 7, scope: !1964)
!1979 = !DILocation(line: 861, column: 15, scope: !1734)
!1980 = !DILocation(line: 861, column: 14, scope: !1734)
!1981 = !DILocation(line: 861, column: 12, scope: !1734)
!1982 = !DILocation(line: 863, column: 8, scope: !1734)
!1983 = !DILocation(line: 863, column: 3, scope: !1734)
!1984 = !DILocation(line: 863, column: 18, scope: !1734)
!1985 = !DILocation(line: 865, column: 6, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1734, file: !313, line: 865, column: 6)
!1987 = !DILocation(line: 865, column: 9, scope: !1986)
!1988 = !DILocation(line: 865, column: 6, scope: !1734)
!1989 = !DILocation(line: 867, column: 8, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !313, line: 867, column: 7)
!1991 = distinct !DILexicalBlock(scope: !1986, file: !313, line: 866, column: 2)
!1992 = !DILocation(line: 867, column: 7, scope: !1991)
!1993 = !DILocation(line: 868, column: 76, scope: !1990)
!1994 = !DILocation(line: 868, column: 83, scope: !1990)
!1995 = !DILocation(line: 868, column: 103, scope: !1990)
!1996 = !DILocation(line: 868, column: 88, scope: !1990)
!1997 = !DILocation(line: 868, column: 4, scope: !1998)
!1998 = !DILexicalBlockFile(scope: !1990, file: !313, discriminator: 1)
!1999 = !DILocation(line: 868, column: 4, scope: !1990)
!2000 = !DILocation(line: 870, column: 10, scope: !1991)
!2001 = !DILocation(line: 870, column: 3, scope: !1991)
!2002 = !DILocation(line: 873, column: 2, scope: !1734)
!2003 = !DILocation(line: 874, column: 1, scope: !1734)
!2004 = distinct !DISubprogram(name: "get_version", scope: !313, file: !313, line: 503, type: !2005, isLocal: true, isDefinition: true, scopeLine: 504, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !321)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!205, !2007}
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!2008 = !DILocalVariable(name: "version", arg: 1, scope: !2004, file: !313, line: 503, type: !2007)
!2009 = !DILocation(line: 503, column: 27, scope: !2004)
!2010 = !DILocalVariable(name: "sockfd", scope: !2004, file: !313, line: 505, type: !205)
!2011 = !DILocation(line: 505, column: 6, scope: !2004)
!2012 = !DILocation(line: 505, column: 15, scope: !2004)
!2013 = !DILocalVariable(name: "req_version", scope: !2004, file: !313, line: 506, type: !2014)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_set_req_version", file: !215, line: 298, size: 64, align: 32, elements: !2015)
!2015 = !{!2016, !2017}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2014, file: !215, line: 299, baseType: !81, size: 32, align: 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2014, file: !215, line: 300, baseType: !81, size: 32, align: 32, offset: 32)
!2018 = !DILocation(line: 506, column: 28, scope: !2004)
!2019 = !DILocalVariable(name: "size", scope: !2004, file: !313, line: 507, type: !1618)
!2020 = !DILocation(line: 507, column: 12, scope: !2004)
!2021 = !DILocalVariable(name: "res", scope: !2004, file: !313, line: 508, type: !205)
!2022 = !DILocation(line: 508, column: 6, scope: !2004)
!2023 = !DILocation(line: 510, column: 6, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2004, file: !313, line: 510, column: 6)
!2025 = !DILocation(line: 510, column: 13, scope: !2024)
!2026 = !DILocation(line: 510, column: 6, scope: !2004)
!2027 = !DILocation(line: 511, column: 3, scope: !2024)
!2028 = !DILocation(line: 520, column: 14, scope: !2004)
!2029 = !DILocation(line: 520, column: 17, scope: !2004)
!2030 = !DILocation(line: 521, column: 19, scope: !2004)
!2031 = !DILocation(line: 521, column: 45, scope: !2004)
!2032 = !DILocation(line: 521, column: 8, scope: !2004)
!2033 = !DILocation(line: 521, column: 6, scope: !2004)
!2034 = !DILocation(line: 522, column: 6, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2004, file: !313, line: 522, column: 6)
!2036 = !DILocation(line: 522, column: 10, scope: !2035)
!2037 = !DILocation(line: 522, column: 6, scope: !2004)
!2038 = !DILocation(line: 523, column: 3, scope: !2035)
!2039 = !DILocation(line: 525, column: 25, scope: !2004)
!2040 = !DILocation(line: 525, column: 3, scope: !2004)
!2041 = !DILocation(line: 525, column: 11, scope: !2004)
!2042 = !DILocation(line: 527, column: 9, scope: !2004)
!2043 = !DILocation(line: 527, column: 2, scope: !2004)
!2044 = distinct !DISubprogram(name: "get_set_byname_only", scope: !313, file: !313, line: 531, type: !2045, isLocal: true, isDefinition: true, scopeLine: 533, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !321)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{null, !319, !1596, !205, !81, !428}
!2047 = !DILocalVariable(name: "setname", arg: 1, scope: !2044, file: !313, line: 531, type: !319)
!2048 = !DILocation(line: 531, column: 33, scope: !2044)
!2049 = !DILocalVariable(name: "info", arg: 2, scope: !2044, file: !313, line: 531, type: !1596)
!2050 = !DILocation(line: 531, column: 62, scope: !2044)
!2051 = !DILocalVariable(name: "sockfd", arg: 3, scope: !2044, file: !313, line: 532, type: !205)
!2052 = !DILocation(line: 532, column: 11, scope: !2044)
!2053 = !DILocalVariable(name: "version", arg: 4, scope: !2044, file: !313, line: 532, type: !81)
!2054 = !DILocation(line: 532, column: 32, scope: !2044)
!2055 = !DILocalVariable(name: "ignore_errors", arg: 5, scope: !2044, file: !313, line: 532, type: !428)
!2056 = !DILocation(line: 532, column: 45, scope: !2044)
!2057 = !DILocalVariable(name: "req", scope: !2044, file: !313, line: 534, type: !2058)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_set_req_get_set", file: !215, line: 280, size: 320, align: 32, elements: !2059)
!2059 = !{!2060, !2061, !2062}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2058, file: !215, line: 281, baseType: !81, size: 32, align: 32)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2058, file: !215, line: 282, baseType: !81, size: 32, align: 32, offset: 32)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2058, file: !215, line: 283, baseType: !1612, size: 256, align: 16, offset: 64)
!2063 = !DILocation(line: 534, column: 28, scope: !2044)
!2064 = !DILocation(line: 534, column: 34, scope: !2044)
!2065 = !DILocation(line: 534, column: 47, scope: !2044)
!2066 = !DILocalVariable(name: "size", scope: !2044, file: !313, line: 535, type: !1618)
!2067 = !DILocation(line: 535, column: 12, scope: !2044)
!2068 = !DILocalVariable(name: "res", scope: !2044, file: !313, line: 536, type: !205)
!2069 = !DILocation(line: 536, column: 6, scope: !2044)
!2070 = !DILocation(line: 538, column: 6, scope: !2044)
!2071 = !DILocation(line: 538, column: 9, scope: !2044)
!2072 = !DILocation(line: 539, column: 14, scope: !2044)
!2073 = !DILocation(line: 539, column: 18, scope: !2044)
!2074 = !DILocation(line: 539, column: 10, scope: !2044)
!2075 = !DILocation(line: 539, column: 24, scope: !2044)
!2076 = !DILocation(line: 539, column: 2, scope: !2044)
!2077 = !DILocation(line: 540, column: 6, scope: !2044)
!2078 = !DILocation(line: 540, column: 10, scope: !2044)
!2079 = !DILocation(line: 540, column: 2, scope: !2044)
!2080 = !DILocation(line: 540, column: 36, scope: !2044)
!2081 = !DILocation(line: 541, column: 19, scope: !2044)
!2082 = !DILocation(line: 541, column: 45, scope: !2044)
!2083 = !DILocation(line: 541, column: 8, scope: !2044)
!2084 = !DILocation(line: 541, column: 6, scope: !2044)
!2085 = !DILocation(line: 543, column: 6, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2044, file: !313, line: 543, column: 6)
!2087 = !DILocation(line: 543, column: 10, scope: !2086)
!2088 = !DILocation(line: 543, column: 6, scope: !2044)
!2089 = !DILocation(line: 544, column: 8, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !313, line: 544, column: 7)
!2091 = distinct !DILexicalBlock(scope: !2086, file: !313, line: 543, column: 16)
!2092 = !DILocation(line: 544, column: 7, scope: !2091)
!2093 = !DILocation(line: 546, column: 6, scope: !2090)
!2094 = !DILocation(line: 546, column: 5, scope: !2090)
!2095 = !DILocation(line: 545, column: 4, scope: !2090)
!2096 = !DILocation(line: 547, column: 2, scope: !2091)
!2097 = !DILocation(line: 548, column: 11, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2086, file: !313, line: 548, column: 11)
!2099 = !DILocation(line: 548, column: 16, scope: !2098)
!2100 = !DILocation(line: 548, column: 11, scope: !2086)
!2101 = !DILocation(line: 549, column: 8, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !313, line: 549, column: 7)
!2103 = distinct !DILexicalBlock(scope: !2098, file: !313, line: 548, column: 54)
!2104 = !DILocation(line: 549, column: 7, scope: !2103)
!2105 = !DILocation(line: 552, column: 48, scope: !2102)
!2106 = !DILocation(line: 552, column: 40, scope: !2102)
!2107 = !DILocation(line: 550, column: 4, scope: !2102)
!2108 = !DILocation(line: 553, column: 2, scope: !2103)
!2109 = !DILocation(line: 554, column: 15, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2098, file: !313, line: 554, column: 11)
!2111 = !DILocation(line: 554, column: 19, scope: !2110)
!2112 = !DILocation(line: 554, column: 11, scope: !2110)
!2113 = !DILocation(line: 554, column: 25, scope: !2110)
!2114 = !DILocation(line: 554, column: 11, scope: !2098)
!2115 = !DILocation(line: 555, column: 8, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !313, line: 555, column: 7)
!2117 = distinct !DILexicalBlock(scope: !2110, file: !313, line: 554, column: 45)
!2118 = !DILocation(line: 555, column: 7, scope: !2117)
!2119 = !DILocation(line: 556, column: 50, scope: !2116)
!2120 = !DILocation(line: 556, column: 4, scope: !2116)
!2121 = !DILocation(line: 557, column: 2, scope: !2117)
!2122 = !DILocation(line: 559, column: 21, scope: !2110)
!2123 = !DILocation(line: 559, column: 25, scope: !2110)
!2124 = !DILocation(line: 559, column: 3, scope: !2110)
!2125 = !DILocation(line: 559, column: 9, scope: !2110)
!2126 = !DILocation(line: 559, column: 15, scope: !2110)
!2127 = !DILocation(line: 560, column: 1, scope: !2044)
